# Confidential Peer Pod Flow (Admin Setup, Pod Creation, Data Path)

Setup: OpenShift on IBM Cloud (Calico), one worker node, OSC with kata-remote + cloud-api-adaptor, Istio mesh, peer pod VM (TDX CVM), external Trustee VSI, all in one VPC.

---

## Quick glossary (layman)

| Name | What it is |
|---|---|
| **Pod netns** | The isolated network "room" of the pod. Holds the interfaces. |
| **eth0 (worker, in pod netns)** | The pod's virtual network card with the pod IP. |
| **kata-remote shim** | Small program on the worker that CRI-O calls to run the pod with the `kata-remote` runtime. |
| **osc-caa-ds (cloud-api-adaptor)** | Talks to the IBM VPC API to create the VM, and builds the VXLAN tunnel. |
| **agent-protocol-forwarder** | Runs in the VM, receives commands from cloud-api-adaptor and passes them to the Kata agent. |
| **Kata agent** | The VM's "manager". Starts and supervises the containers inside the VM. |
| **istio-init / istio-proxy** | Init container that sets traffic redirect rules / the Envoy sidecar. |
| **CDH** | Confidential Data Hub. Local API your app calls for secrets. |
| **Attestation Agent (AA)** | Collects TDX proof (evidence) from the chip. |
| **KBS / AS / RVPS** | On the Trustee: Key Broker Service (releases secrets) / Attestation Service (checks proof) / reference values (what "good" looks like). |

---

## Part 1: Admin work (done once, before any pod)

1. **Install the OSC operator** (OpenShift sandboxed containers).
   - Creates `osc-caa-ds` (cloud-api-adaptor) on the worker.
   - Configures the peer pod settings (VPC, subnet, security group, VM image, instance profile for TDX, API key secret).
2. **Create the KataConfig** (kata-remote).
   - Installs the **kata-remote shim** on the worker.
   - Creates the **RuntimeClass** `kata-remote`.
3. **Install Istio** (Sail operator + Istio CR).
   - `istiod` runs on a worker (control plane).
   - The injection webhook (MutatingWebhookConfiguration) is active.
   - `istio-cni` is set up if used (confirm with IBM how it behaves with peer pods).
4. **Label the app namespace** with `istio-injection=enabled`.
5. **Set up the Trustee VSI** (outside the cluster, same VPC).
   - KBS, Attestation Service and RVPS are running.
   - **RVPS** holds the expected reference values (measured VM image, init data hash).
   - **KBS** holds the secrets (for example DB credentials) and the policy for who can get them.
6. **Prepare the peer pod VM image** (with Kata agent, Attestation Agent, CDH, agent-protocol-forwarder). Its measurements are registered in RVPS.
7. **Network rules:**
   - VPC security groups and ACL allow UDP 4789 between worker and peer pod VM.
   - They allow HTTPS from the peer pod VM to the Trustee.
   - They allow istiod port 15012 from the VM, over the tunnel path.
8. **Monitoring/security agents** (Sysdig, cloudlogs, Illumio if present) run on the worker. They see node and pod netns traffic, not inside the VM.

---

## Part 2: Pod creation (custom YAML)

Assumed YAML contents:
- `runtimeClassName: kata-remote`
- The **init data** annotation (carries KBS address/cert for AA and CDH config, and the Kata agent policy).
- Your app container image, in a namespace labelled `istio-injection=enabled`.

Steps:

1. **You apply the YAML.** The Kubernetes API server receives it.
2. **Istio injection webhook** (served by `istiod`) sees the namespace label and adds `istio-init` and `istio-proxy` to the pod spec.
3. **Scheduler** places the pod on the worker node.
4. **kubelet** asks **CRI-O** to create the pod. Because of `kata-remote`, CRI-O calls the **kata-remote shim**.
5. **Calico** creates the **pod netns** on the worker, with `eth0`, the pod IP and the veth link to the node.
6. **kata-remote shim** asks **cloud-api-adaptor (osc-caa-ds)** to create the pod VM.
7. **cloud-api-adaptor** calls the **IBM VPC API**. A TDX confidential VM (VSI) is created in the VPC, with the **init data** passed to it. Its own NIC (the VM's `eth0`) gets a VPC IP.
8. **cloud-api-adaptor builds the tunnel:**
   - `vxlan1` in the worker pod netns, `vxlan0` in the VM's pod netns, using the same pod IP.
   - A Linux traffic-control (`tc`) rule copies packets from worker `eth0` into `vxlan1`.
9. **cloud-api-adaptor** talks to the **agent-protocol-forwarder** in the VM, which passes commands to the **Kata agent**.
10. **Kata agent** sets up the pod netns inside the VM and checks the agent policy from init data.
11. **Kata agent** pulls the images inside the VM and starts the containers:
    - `istio-init` runs first and sets iptables redirect rules to send traffic to istio-proxy.
    - `istio-proxy` starts and connects to `istiod` on 15012 to get config and its certificate.
    - Your **app container** starts.
12. Pod shows as Running. From now on the tunnel already exists, so requests just flow through it.

---

## Part 3: Live request (data path)

**A. Entry at the worker**
1. Client sends the request to the **worker node `eth0`** (VPC subnet, private IP, NodePort).
2. **VPC security group and ACL** check it.
3. **Calico** on the node translates the NodePort to the **ingress gateway pod** and applies network policy.

**B. Ingress gateway to the app's pod shell**
4. **Ingress gateway (Envoy)** receives it and routes to your app's Kubernetes **Service** (a virtual address).
5. **Calico** translates the Service to a real pod IP.
6. **Calico** carries the packet to the app pod's veth and into **pod netns `eth0`** on the worker. The worker pod is just an empty shell, so this is the end of the road there.

**C. Tunnel to the VM**
7. The **`tc` redirect rule** copies the packet from `eth0` into **`vxlan1`**.
8. **`vxlan1`** wraps it in UDP 4789 and sends it out the **worker node `eth0`** across the VPC.
9. **VPC security groups and ACL** check it again.
10. **`vxlan0`** in the VM unwraps it into the **pod netns inside the VM**.

**D. Inside the confidential VM**
11. `vxlan0` --> pod netns --> **iptables rules (set by istio-init)** --> **istio-proxy**.
12. **istio-proxy** ends mTLS and checks the AuthorizationPolicy.
13. **istio-proxy** passes plain data to your **app** on localhost, inside the TEE.

**E. Getting the secret**
14. **App** needs DB credentials and asks the **CDH** (local API).
15. **CDH** asks the **Attestation Agent**, which collects **TDX evidence from the chip**.
16. Evidence goes out via the **VM's own `eth0` (VPC NIC)**. It does NOT use `vxlan0`, the tunnel or the worker.
17. **VPC controls** check it: VM security group, ACL, Trustee security group.
18. Arrives at the **Trustee VSI `eth0`** --> **KBS**.
19. **KBS** passes the evidence to the **Attestation Service**, which compares with **RVPS** reference values and policy.
20. If valid, **KBS** releases the secret, which returns the same way: Trustee `eth0` --> VPC controls --> VM `eth0` --> **Attestation Agent** --> **CDH** --> **app**.

**F. Reply**
21. **App** uses the credentials, processes the data and replies.
22. Reply path: **istio-proxy** --> `vxlan0` --> tunnel --> `vxlan1` --> worker pod netns `eth0` --> Calico --> ingress gateway --> worker `eth0` --> client.

---

## Not in the data path

- **kata-remote shim, cloud-api-adaptor, agent-protocol-forwarder, Kata agent:** only create, start and manage the VM. Request packets never pass through them.
- **istiod:** only gives config and certificates to istio-proxy (port 15012).

---

## To confirm with IBM / Red Hat

- Red Hat's peer pod networking docs describe OpenShift SDN / OVN-Kubernetes, not Calico. The tunnel logic should be the same, but confirm the Calico part.
- How `istio-cni` (if used) behaves with peer pods.
- Whether CDH or the Attestation Agent talks to the KBS in your version (order of components stays the same).
- Exactly what is in your init data and how its hash is registered in RVPS.
