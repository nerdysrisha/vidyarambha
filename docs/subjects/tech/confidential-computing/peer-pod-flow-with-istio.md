# Confidential Peer Pod Flow (Admin Setup, Pod Creation, Data Path, Components, Diagram Notes)

Setup: OpenShift (ROKS) on IBM Cloud with Calico, worker node(s), OSC with kata-remote + cloud-api-adaptor, Istio mesh (Sail operator), peer pod VM (TDX CVM), external Trustee VSI, all in one VPC (network ACL + security groups).

**Key idea:** the peer pod is logically "the pod", but physically it is a separate VSI outside the cluster. The worker only holds an empty pod shell.

---

## Part 1: Admin work (done once, before any pod)

1. **Install the OSC operator** (OpenShift sandboxed containers).
   - Creates `osc-caa-ds` (cloud-api-adaptor) on the worker.
   - Configures peer pod settings (VPC, subnet, security group, VM image, TDX instance profile, API key secret).
2. **Create the KataConfig** (kata-remote).
   - Installs the **kata-remote shim** on the worker.
   - Creates the **RuntimeClass** `kata-remote`.
3. **Install Istio** (Sail operator + Istio CR).
   - `istiod` runs on a worker (control plane), not inside the VM.
   - The injection webhook (MutatingWebhookConfiguration) is active.
   - `istio-cni` is optional and unverified for the VM (confirm with IBM).
4. **Label the app namespace** with `istio-injection=enabled`.
5. **Set up the Trustee VSI** (outside the cluster, same VPC).
   - KBS, Attestation Service (AS) and RVPS are running.
   - **RVPS** holds the expected reference values (measured VM image, init data hash).
   - **KBS** holds the secrets (for example DB credentials) and the release policy.
6. **Prepare the peer pod VM image** (Kata agent, Attestation Agent, CDH, agent-protocol-forwarder). Register its measurements in RVPS. Add the sidecar images to RVPS reference values too.
7. **Network rules:**
   - Security groups and ACL allow UDP 4789 between worker and peer pod VM.
   - They allow HTTPS from the peer pod VM to the Trustee.
   - They allow istiod port 15012 from the VM (over the tunnel path).
8. **Monitoring/security agents** (Sysdig workload-protection agent, cloudlogs agent, agent-clustershield, Illumio if present) run on the worker. They see node and pod netns traffic, not inside the VM.

---

## Part 2: Pod creation (custom YAML)

Assumed YAML contents:
- `runtimeClassName: kata-remote`
- The **init data** annotation (KBS address/cert for AA and CDH config, plus the Kata agent policy).
- Your app container image, in a namespace labelled `istio-injection=enabled`.

Steps:

1. **You apply the YAML.** The Kubernetes API server receives it.
2. **Istio injection webhook** (served by `istiod` on :15017) sees the namespace label and adds `istio-init` and `istio-proxy` to the pod spec.
3. **Scheduler** places the pod on the worker node.
4. **kubelet** asks **CRI-O** to create the pod. Because of `kata-remote`, CRI-O calls the **kata-remote shim**.
5. **Calico** creates the **pod netns** on the worker, with `eth0`, the pod IP and the veth link to the node.
6. **kata-remote shim** asks **cloud-api-adaptor (osc-caa-ds)** to create the pod VM.
7. **cloud-api-adaptor** calls the **IBM VPC API**. A TDX confidential VM (VSI) is created in the VPC, with the **init data** passed to it. The VM gets its own NIC (VM `eth0`, VPC IP).
8. **cloud-api-adaptor builds the tunnel:**
   - `vxlan1` in the worker pod netns, `vxlan0` in the VM's pod netns, same pod IP.
   - A Linux traffic-control (`tc`) rule copies packets from worker `eth0` into `vxlan1`.
9. **cloud-api-adaptor** talks to the **agent-protocol-forwarder** in the VM, which passes commands to the **Kata agent**.
10. **Kata agent** sets up the pod netns inside the VM and enforces the agent policy from init data.
11. **Kata agent** pulls the images inside the VM and starts the containers:
    - `istio-init` runs first and sets iptables rules to redirect traffic to istio-proxy.
    - `istio-proxy` starts and connects to `istiod` on :15012 for config and its certificate.
    - Your **app container** starts.
12. Pod shows Running. The tunnel already exists, so requests just flow through it.

---

## Part 3: Live request (data path)

**A. Entry at the worker (client never hits the VM directly)**
1. Client sends the request to the **worker node `eth0`** (VPC subnet, private IP, NodePort). If a VPC Load Balancer is used, it forwards to the worker first.
2. **VPC security group and ACL** check it.
3. **Calico** translates the NodePort to the **ingress gateway pod** and applies network policy. (Sysdig / Illumio can see this hop.)

**B. Ingress gateway to the app's pod shell**
4. **Ingress gateway (Envoy)** receives it and routes to your app's Kubernetes **Service** (a virtual address).
5. **Calico** translates the Service to a real pod IP.
6. **Calico** carries the packet to the app pod's veth and into **pod netns `eth0`** on the worker. The worker pod is an empty shell, so this is the end of the road there.

**C. Tunnel to the VM**
7. The **`tc` redirect rule** copies the packet from `eth0` into **`vxlan1`**.
8. **`vxlan1`** wraps it in UDP 4789 and sends it out the **worker node `eth0`** across the VPC.
9. **VPC security groups and ACL** check it again.
10. **`vxlan0`** in the VM unwraps it into the **pod netns inside the VM**.

**D. Inside the confidential VM**
11. `vxlan0` --> pod netns --> **iptables rules (from istio-init)** --> **istio-proxy**.
12. **istio-proxy** ends mTLS and checks the AuthorizationPolicy.
13. **istio-proxy** passes plain data to your **app** on localhost, inside the TEE.

**E. Getting the secret (separate path, starts inside the VM)**
14. **App** needs DB credentials and asks the **CDH** (local API).
15. **CDH** asks the **Attestation Agent**, which collects **TDX evidence from the chip**.
16. Evidence goes out via the **VM's own `eth0` (VPC NIC)**. It does NOT use `vxlan0`, the tunnel or the worker.
17. **VPC controls** check it: VM security group, ACL, Trustee security group.
18. Arrives at the **Trustee VSI `eth0`** --> **KBS**.
19. **KBS** hands the evidence to the **Attestation Service**, which compares it with **RVPS** reference values and policy.
20. If valid, **KBS** releases the secret, which returns the same way: Trustee `eth0` --> VPC controls --> VM `eth0` --> **Attestation Agent** --> **CDH** --> **app**.

**F. Reply**
21. **App** uses the credentials, processes the data and replies.
22. Reply path: **istio-proxy** --> `vxlan0` --> tunnel --> `vxlan1` --> worker pod netns `eth0` --> Calico --> ingress gateway --> worker `eth0` --> client.

**Not in the data path:**
- **kata-remote shim, cloud-api-adaptor, agent-protocol-forwarder, Kata agent:** only create, start and manage the VM.
- **istiod:** only gives config and certificates to istio-proxy (:15012).

---

## Part 4: Components explained (simple)

### On the worker node

**Node `eth0`**
- The worker's real network card, on the VPC subnet.
- Entry point for client traffic.
- Also the exit point for the VXLAN tunnel packets.
- Protected by VPC security groups and ACL.

**Calico (calico-node)**
- The cluster's network layer (CNI).
- Creates the pod netns, `eth0`, pod IP and veth for each pod.
- Translates NodePort and Service addresses to real pod IPs.
- Applies network policy.

**Pod netns (pod network namespace)**
- An isolated network "room" for one pod.
- Holds the interfaces (`eth0`, `vxlan1` on the worker).
- On the worker it is only a shell, no app runs there.
- Same idea exists inside the VM, with `vxlan0`.

**Pod `eth0` (worker side)**
- The pod's virtual network card, inside the pod netns.
- Holds the pod IP.
- Connected to the node through a veth pair.
- The `tc` rule picks packets up from here.

**veth**
- A virtual cable with two ends.
- One end on the node, the other is the pod's `eth0`.
- Created by Calico.
- Just carries packets, does no logic.

**Ingress gateway pod (Envoy)**
- Optional front door for mesh traffic.
- Runs in the `istio-ingress` namespace.
- Routes the call to your app's Service.
- Can start mTLS toward the sidecar.

**Kubernetes Service**
- A stable name and virtual IP in front of your app pods.
- Carries no packets itself.
- Calico (or kube-proxy) translates it to a real pod IP.
- "bank-app" was only a placeholder name.

**CRI-O**
- The container runtime on the worker.
- Called by kubelet to create pods.
- For `kata-remote` pods, hands over to the kata-remote shim.
- Normal pods use the regular runtime (runc).

**kata-remote shim (= kata-remote runtime)**
- Small program on the worker, one per peer pod.
- Implements the `kata-remote` RuntimeClass.
- Talks to cloud-api-adaptor (ttrpc over a Unix socket).
- Only manages the VM, no request packets pass through it.

**osc-caa-ds (CAA, cloud-api-adaptor)**
- DaemonSet from the OSC operator.
- Calls the IBM VPC API to create/delete the peer pod VSI.
- Builds the VXLAN tunnel and the `tc` redirect.
- Sends commands to the VM through agent-protocol-forwarder.

**`vxlan1` (worker side)**
- Tunnel end inside the worker pod netns.
- Wraps packets in UDP 4789 and sends them to the VM.
- Name is just a label, no special meaning.
- Created once at pod creation.

**`tc` redirect rule**
- Linux traffic-control rule (not iptables, not a firewall).
- Sits between worker `eth0` and `vxlan1` in the pod netns.
- Copies incoming packets into the tunnel.
- Made by cloud-api-adaptor.

**Sysdig / cloudlogs / Illumio (node-level agents)**
- Hook the host kernel and pod netns.
- See L3/L4 flows on the worker, even after VXLAN decap on the node side.
- Do not see syscalls or files inside the VM.
- Illumio deployment model is unconfirmed.

### In the peer pod VM (TDX CVM)

**Peer pod VSI (TDX CVM)**
- A separate VM in the VPC, outside the cluster.
- Logically "the pod", physically its own VSI.
- Guest memory is encrypted by the TDX chip.
- Created by cloud-api-adaptor via the VPC API.

**`vxlan0` (VM side)**
- Tunnel end inside the VM's pod netns.
- Unwraps the UDP 4789 packet.
- Holds the same pod IP as the worker shell.
- Not the same as the VM's own `eth0`.

**VM `eth0` (VPC NIC)**
- The VM's real network card on the VPC.
- Used for the secret path to the Trustee.
- Also carries the outer tunnel packets.
- Protected by the VM's security group and ACL.

**agent-protocol-forwarder**
- Runs in the VM.
- Receives commands from cloud-api-adaptor over TCP.
- Passes them to the Kata agent.
- Control path only.

**Kata agent**
- The VM's "manager".
- Sets up the pod netns, pulls images, starts and supervises containers.
- Enforces the agent policy from init data.
- Not in the data path, it never sees your payload.

**istio-init (init container)**
- Runs once before the app.
- Sets iptables rules to redirect traffic to istio-proxy.
- Needs NET_ADMIN.
- Exits after setup.

**istio-proxy (Envoy sidecar)**
- Data plane of the mesh, inside the VM.
- Ends mTLS, checks AuthorizationPolicy.
- Passes plain data to the app on localhost.
- Keeps one xDS stream to istiod on :15012.

**App container**
- Your confidential workload.
- Receives plaintext on localhost, inside the TEE.
- Does not hold secrets, asks CDH when needed.
- Replies back through istio-proxy.

**Confidential Data Hub (CDH)**
- Local secret API in the VM.
- The app (or workload) calls it.
- Uses the Attestation Agent for evidence.
- Returns the secret to the app.

**Attestation Agent (AA)**
- Collects TDX evidence from the chip.
- Sends it to the KBS over HTTPS.
- Uses the VM's own NIC.
- Does not use the tunnel or the worker.

**TDX chip / TEE boundary**
- Hardware that encrypts guest memory.
- Produces signed evidence about the VM.
- Host and cluster admin cannot read VM memory.
- Basis of trust for the secret release.

**Init data**
- Config bundle passed to the VM through a pod annotation.
- Holds KBS address/cert, AA/CDH config and the Kata agent policy.
- Its hash is part of the TDX measurement.
- Should match the value registered in RVPS.

### Control plane and Trustee

**istiod**
- Mesh control plane in `istio-system`, on a worker.
- Serves xDS config on :15012, acts as Mesh CA, runs the injection webhook (:15017).
- Gives istio-proxy its certificate.
- Not inside the VM or TEE.

**Injection webhook**
- Triggered by the `istio-injection=enabled` namespace label.
- Adds istio-init and istio-proxy to the pod spec.
- Runs before the pod is scheduled.
- Served by istiod.

**Sail operator / OSC operator**
- Sail operator: installs and manages Istio from the Istio CR.
- OSC operator: installs Kata, kata-remote and cloud-api-adaptor.
- Both are installed through OLM.
- Admin-time only, not in the request path.

**istio-cni**
- Optional DaemonSet that sets up traffic redirect on the node.
- Replaces the need for NET_ADMIN in istio-init.
- Whether it works for the redirect inside the VM is unverified.
- Confirm with IBM.

**VPC controls (SG / ACL)**
- Security groups and network ACL in the VPC.
- Checked at the worker, the VM and the Trustee.
- Control what can reach what (4789, HTTPS, 15012).
- Misconfiguration here breaks the tunnel or the secret path.

**Trustee platform (external VSI)**
- User-provided VSI in the same VPC.
- Holds KBS, AS and RVPS.
- Releases secrets only to verified VMs.
- Public access: corporate laptops only.

**KBS (Key Broker Service)**
- Receives attestation evidence.
- Holds the secrets and release policy.
- Releases the secret only if the AS says valid.
- Returns the secret along the same path.

**AS (Attestation Service)**
- Verifies the TEE evidence.
- Compares with RVPS reference values and checks policy.
- Gives the verdict to the KBS.
- Lives on the Trustee.

**RVPS (reference values)**
- Stores the "known good" measurements.
- Includes the guest OS image, sidecar images and init data hash.
- AS compares evidence against it.
- Must be updated when the VM image or sidecars change.

---


<br>

# ═══════════════════════════════════════════════════════════
# INSERT (Part 4): Istio components only
# ═══════════════════════════════════════════════════════════

---

### Istio / service mesh components

**Quick map**
- **Install-time:** Sail operator, Istio CR, IstioCNI CR.
- **Control plane (on a worker, namespace `istio-system`):** istiod (xDS, Mesh CA, injection webhook).
- **Entry:** ingress gateway (Envoy) and its Service.
- **Data plane (inside the peer pod VM):** istio-init and istio-proxy.
- **Rules you write:** PeerAuthentication, AuthorizationPolicy, RequestAuthentication, Gateway, VirtualService, DestinationRule, ServiceEntry.

---

**Sail operator (OSSM 3)**
- Operator installed through OLM (OperatorHub) in `openshift-operators`.
- Watches the **Istio CR** and creates/updates istiod from it.
- Handles upgrades of the Istio version.
- Admin-time only, never in the request path.

**Istio CR (cluster-scoped)**
- The "order form" that tells the Sail operator how to set up istiod.
- Holds the version, mesh settings and defaults.
- Operator then creates the istiod Deployment in `istio-system`.
- Cluster-scoped (no namespace).

**IstioCNI CR / istio-cni-node**
- IstioCNI CR tells the operator to deploy the **istio-cni agent** (DaemonSet, one per node, namespace `istio-cni`).
- Purpose: set up traffic redirect **without** needing NET_ADMIN in the pod's init container.
- Works on the **worker node**, hooking pod creation.
- **Unverified for peer pods:** the pod's real network is inside the VM, so confirm with IBM whether istio-cni or istio-init does the redirect there.

**istiod (control plane, Deployment in `istio-system`)**
- The "brain" of the mesh. Runs on a **worker node**, not in the VM or TEE.
- Three jobs in one: pushes config (xDS), issues certificates (Mesh CA), serves the injection webhook.
- **Ports:** `15012` (xDS + certificate requests, mTLS), `15017` (webhook), `15014` (monitoring).
- Each istio-proxy keeps **one long-lived gRPC stream** to it.
- Under cluster-admin control, so it is **not attested** by Trustee.

**Mesh CA (inside istiod)**
- Issues a **certificate per workload** (identity = SPIFFE ID of the service account).
- istio-proxy asks for it on startup, using the pod's service account token.
- Certificates are short-lived and renewed automatically.
- Used for mTLS between proxies; private key stays inside the proxy.

**Injection webhook (MutatingWebhookConfiguration)**
- Cluster-scoped object that points Kubernetes to istiod's webhook.
- Triggered when a pod is created in a namespace labelled `istio-injection=enabled`.
- **Adds** the `istio-init` and `istio-proxy` containers to the pod spec **before** the pod is scheduled.
- Works for `kata-remote` pods too, because it only edits the pod spec. The Kata agent then starts those containers in the VM.

**Namespace label `istio-injection=enabled`**
- The switch that turns injection on for a namespace.
- Can be turned off per pod with an annotation.
- Without it, no sidecar is added and the app is outside the mesh.
- Set by the admin, not by the app.

**Ingress gateway (Envoy Deployment, namespace `istio-ingress`)**
- The mesh's front door: an Envoy proxy running as a normal pod on the **worker**.
- Receives client traffic, applies Gateway/VirtualService rules, routes to your app's Service.
- Can start **mTLS** toward the app's sidecar.
- Optional, since you can also send traffic straight to the app.

**Ingress gateway Service (LoadBalancer / NodePort)**
- A Kubernetes Service in front of the gateway pod.
- On IBM Cloud it can create a **VPC Load Balancer**; without one, a **NodePort** on the worker.
- This is what the client actually calls first.
- Calico translates it to the gateway pod IP.

**istio-init (init container, inside the VM)**
- Runs once before the app, then exits.
- Writes **iptables rules** in the pod's network namespace:
  - Inbound traffic goes to port `15006` (istio-proxy).
  - Outbound traffic goes to port `15001` (istio-proxy).
- Needs `NET_ADMIN` (unless istio-cni does this job).
- This is why packets arriving at `vxlan0` end up at istio-proxy and not the app.

**istio-proxy (Envoy sidecar, inside the VM)**
- The **data plane**: all app traffic in and out passes through it.
- Ends **mTLS**, checks AuthorizationPolicy, then passes plain data to the app on localhost.
- Runs `pilot-agent` which talks to istiod and manages certificates.
- **Ports:** `15006` (inbound), `15001` (outbound), `15021` (health), `15090` (metrics), `15020` (merged metrics/agent).
- Sends telemetry (metrics, logs, traces) to your backend, not to istiod.

**PeerAuthentication**
- Sets the **mTLS mode** for a namespace or workload.
- `STRICT` = only mTLS accepted, plain traffic rejected.
- `PERMISSIVE` = accepts both (used during migration).
- Applied by istiod to the proxies as config.

**AuthorizationPolicy**
- Allow/deny rules checked by istio-proxy for each request.
- Can match caller identity, namespace, method, path, port.
- Actions: ALLOW, DENY, AUDIT.
- Default-deny is possible by creating an empty ALLOW policy.

**RequestAuthentication**
- Tells the proxy how to validate **end-user JWT tokens** (issuer, keys).
- Only checks tokens that are present; pair with AuthorizationPolicy to require them.
- Works at the proxy of the called app.
- Separate from workload identity (that is mTLS).

**Gateway / VirtualService**
- **Gateway:** which ports and hosts the ingress gateway listens on (and TLS settings).
- **VirtualService:** how requests are routed (paths, headers, canary splits, timeouts, retries, fault injection).
- Both are read by istiod and pushed to the right proxies.
- Drive the ingress-gateway-to-app routing.

**DestinationRule**
- Rules for traffic **to** a service: load balancing, connection pool limits, circuit breaking (outlier detection), TLS mode.
- Defines subsets (for example v1 and v2) used by VirtualService.
- Applied on the calling proxy.
- Used for rate and connection caps.

**ServiceEntry (egress control)**
- Registers **external destinations** (for example the DB host) in the mesh.
- With outbound policy set to "registry only", calls to anything not registered are blocked.
- Lets you apply policy and telemetry to external calls.
- Note: the secret path to the Trustee (VM `eth0`, HTTPS) is not mesh traffic unless you route it through the sidecar.

---

### How the Istio pieces hand over (peer pod view)
1. **Admin:** Sail operator --> Istio CR --> istiod (and IstioCNI CR --> istio-cni-node).
2. **Pod creation:** injection webhook (istiod) adds istio-init + istio-proxy --> Kata agent starts them in the VM.
3. **Startup:** istio-init sets iptables --> istio-proxy connects to istiod `:15012` over the tunnel path --> gets config and certificate.
4. **Request:** client --> ingress gateway Service --> ingress gateway (Envoy) --> tunnel --> VM `vxlan0` --> iptables --> istio-proxy (`15006`) --> app.
5. **Outbound from the app:** app --> iptables --> istio-proxy (`15001`) --> destination.

### Things to confirm with IBM / Red Hat
- istio-init vs istio-cni for the redirect inside the VM.
- istio-proxy reaching istiod `:15012` from the VM (security groups and tunnel path).
- Sidecar images are part of the measured image and registered in RVPS.
- Port numbers above are Istio defaults; check your OSSM 3 version.




## Part 5: Notes from the diagram

### Legend
- Red solid arrow: client request path (1 to 7).
- Green solid arrow: attestation / secret path (A to D).
- Purple dashed arrow: mesh config (xDS + certs).
- Red dashed arrow: VXLAN 4789 tunnel (carries client path).
- Dashed outline: new, not deployed, or unverified.
- Colour boxes: red = OpenShift cluster boundary; blue = worker node / calico / ibm-observe; green = peer pod VSI, OSC namespace, Trustee; purple = service mesh (control + data plane); orange = VPC controls, LB, Sysdig, Illumio; teal = Attestation Agent.
- Peer pod VSI = logically the pod, physically a separate VSI outside the cluster, created by osc-caa-ds via the VPC API.

### Client request path: it hits the WORKER node first, never the VM directly
- Client calls the app address from the corporate network.
- VPC Load Balancer forwards to a worker node (NodePort / LB target).
- Worker eth0, then Calico: DNAT to the service, policy (Sysdig / Illumio can see this hop).
- Optional ingress gateway pod, then the pod netns on the worker (veth + VXLAN endpoint).
- VXLAN 4789 tunnel carries the packets out of the cluster into the peer pod VSI.
- istio-proxy (data plane) terminates mTLS and enforces AuthorizationPolicy.
- App container receives plaintext on localhost, inside the TEE.

### Secret path (separate, starts inside the VM)
- App asks the Confidential Data Hub for a secret (local API).
- CDH asks the Attestation Agent, which collects TDX evidence.
- Agent sends evidence to KBS over HTTPS from the VM's own VPC NIC (SG + ACL apply).
- KBS checks with AS (RVPS values) and returns the secret if valid.

### Where the mesh sits, and what to verify
- **Control plane:** istiod in namespace `istio-system`, on a worker node (Sail operator + Istio CR).
- **Data plane:** istio-proxy + istio-init inside each peer pod VM (a separate VSI, outside the cluster).
- **Cluster-scoped objects:** Istio, IstioCNI and KataConfig CRs, RuntimeClass, MutatingWebhookConfig.
- Client traffic reaches the worker node first, then the VM over VXLAN (confirm with IBM).

**Verify with IBM / Red Hat before relying on this:**
- Sidecar injection into kata-remote pods; istio-init vs istio-cni inside the VM.
- istio-proxy reaches istiod on :15012 over the tunnel; VM SG blocks direct inbound.
- Sidecar images are in the measured image and RVPS reference values.
- Attestation egress leaves via the VM's own VPC NIC; SG and ACL allow it.
- Illumio deployment model (not found in ibm-observe); Sysdig sees node flows only.
- The mesh adds mTLS, AuthZ and telemetry; it does not replace runtime threat detection.

### What the Istio mesh captures and enforces on this peer pod (and what it does not)

**1. Captured by istio-proxy (telemetry)**
- *Input (inbound to the app):* caller identity (SPIFFE ID / service account); method, host, path, response code, bytes in.
- *Output (outbound from the app):* destination service, response code, latency; bytes out, TCP connections, retries.
- *Signals:* request rate, error rate, p50/p95/p99 latency, access logs, traces (if enabled), sent to your backend.

**2. Security enforced**
- mTLS (PeerAuthentication STRICT): payload is unreadable on the node, the VXLAN tunnel and the VPC path.
- Workload identity: a cert per service account, issued by the istiod CA.
- AuthorizationPolicy: ALLOW / DENY / AUDIT by caller identity, namespace, method, path and port.
- RequestAuthentication: validates end-user JWTs.
- Egress control: only registered destinations (ServiceEntry).

**3. Traffic control (throttling, resilience)**
- Rate limiting: local or global through Envoy config (EnvoyFilter or an external rate-limit service).
- Connection caps: DestinationRule connectionPool (max connections, pending requests).
- Circuit breaking: outlierDetection ejects failing endpoints.
- Timeouts, retries, fault injection (VirtualService).
- Canary / traffic split, header-based routing.

**4. Attacks: helps vs does NOT cover**
- *Helps with:* spoofed or unauthorised callers (no valid cert); sniffing between node, VPC and VM; lateral movement (default-deny policies); request floods (rate and connection limits); calls to unapproved external destinations.
- *Does NOT cover:* syscalls, files, malware in the container (Sysdig); container escape, kernel exploits, SQLi / XSS (WAF); non-meshed traffic; a malicious admin changing istiod policy.

**Feedback to the control plane:** istio-proxy keeps one xDS gRPC stream to istiod :15012 (config and certs in; ACK/NACK, cert requests and status out). Request metrics do not go there.

**Trust note:** istiod is under cluster-admin control, so mesh policy and identity are not attested. Treat the mesh as visibility and defense in depth, not the confidentiality boundary.

### Other labels in the diagram
- Worker node agents (Sysdig, cloudlogs): see L3/L4 flows after VXLAN decap on the node, but no syscalls or files in the VM.
- RHEL guest OS image: measured; add the sidecar to RVPS.
- TDX chip / TEE boundary: guest memory is encrypted.
- Node stack in the diagram: RHCOS 9.6, cri-o 1.32, OpenShift 4.19, Calico CNI.

---

## To confirm with IBM / Red Hat

- Red Hat's peer pod networking docs describe OpenShift SDN / OVN-Kubernetes, not Calico. The tunnel logic should be the same, but confirm the Calico part.
- How `istio-cni` (if used) behaves with peer pods.
- Whether CDH or the Attestation Agent talks to the KBS in your version (order of components stays the same).
- Exactly what is in your init data and how its hash is registered in RVPS.



<br>

# ═══════════════════════════════════════════════════════════
# ADDITIONS: Illumio, Sysdig, and how they differ from Istio
# ═══════════════════════════════════════════════════════════

---

## Part 6: Illumio (microsegmentation / "who can talk to whom")

### What it does
- Controls **which workloads are allowed to talk to which**, using labels (role, app, environment, location) instead of IP addresses.
- Works as an **allow-list firewall** (default deny, then allow only what you permit).
- Shows a **traffic map**: which workload talked to which, on what port, allowed or blocked.
- Limits lateral movement: if one pod or server is hacked, it can't freely reach the others.
- Works at **L3/L4 only** (IP, port, protocol). It does not read the content of requests.

### Main pieces (architecture level)
- **PCE (Policy Compute Engine) = the "master/brain".**
  - Central server (Illumio SaaS or self-hosted).
  - Stores the labels, the rules, and the traffic data.
  - Works out which rules each workload needs, then sends them down.
  - Admins use its UI / API to write policy.
- **VEN (Virtual Enforcement Node) = the agent on normal servers/VMs.**
  - Small agent on the host.
  - Talks to the PCE, does not make policy decisions itself.
- **C-VEN (Containerized VEN) = the agent for Kubernetes/OpenShift.**
  - Runs as a **pod (DaemonSet)**, one on every node.
  - Gives visibility and enforcement for the node and the pods on it.
- **Kubelink = the Kubernetes connector.**
  - A Deployment, one per cluster.
  - Listens to the Kubernetes API server for pods, services, namespaces and labels.
  - Reports them to the PCE so the PCE knows what exists in the cluster.
  - Newer versions have **CLAS (Cluster Local Actor Store)**: Kubelink sits between C-VENs and PCE, handing policy down to C-VENs and passing flow data up.

### Where it is installed
- **PCE:** outside the cluster (SaaS or own servers).
- **Kubelink:** inside the cluster, as a Deployment.
- **C-VEN:** inside the cluster, on **every worker node**, as a privileged DaemonSet.
- **Not inside the peer pod VM** unless someone installs a VEN there (not in your diagram, confirm).

### How it is configured
- Install with **Helm chart** (or YAML on OpenShift).
- **Pairing profile** in the PCE gives an activation code/key so C-VENs and Kubelink can join the PCE.
- A Kubernetes **secret** holds the pairing key and PCE address.
- **Labels** are assigned to namespaces / workloads using container workload profiles or annotations.
- **Rules** are written in the PCE (for example "app=bank-app may talk to app=db on port 5432").
- On OpenShift, extra prep is needed (unique machine ID, labels, pairing profile, SCC permissions).

### How it enforces and what it taps
- C-VEN programs the **Linux firewall on the node (iptables / ipsets)** based on PCE rules.
- It watches **connection flows** on the node and pod networking (source, destination, port, allowed/blocked).
- It does **not** read payloads, files or processes.

### How data flows to the master (PCE)
- **C-VEN --> PCE** (directly, or via Kubelink in CLAS mode):
  - Heartbeats and status.
  - **Flow summaries** (who talked to whom).
  - Workload info and firewall state.
- **PCE --> C-VEN:** the computed rules (push when policy changes).
- **Kubelink --> PCE:** cluster inventory (pods, services, labels, namespaces).
- All over **HTTPS/TLS** to the PCE (typically ports 8443 and 8444, verify for your PCE version and firewall rules).
- If the PCE is unreachable, C-VENs keep enforcing the last known rules (degraded mode).

### In your peer pod setup (what to confirm with IBM / Illumio)
- C-VEN sits on the **worker**, so it can see and control traffic reaching the worker and the pod netns.
- Once traffic is wrapped in **VXLAN (UDP 4789)** it may look like plain "worker to VM" traffic.
- It cannot see or control what happens **inside the VM** (pod-to-pod, VM-to-Trustee) unless a VEN is also installed there.
- In your diagram Illumio is "not found in ibm-observe", so the deployment model is still unconfirmed.

---

## Part 7: Sysdig (runtime threat detection / "what is happening inside")

### What it does
- Watches **what workloads actually do**: processes started, files opened, network connections, system calls.
- **Detects threats at runtime** using rules (based on open-source **Falco**), for example "shell started inside a container", "sensitive file read", "crypto-miner behaviour".
- **Vulnerability scanning** of images and hosts.
- **Compliance and misconfiguration checks** (CIS benchmarks, Kubernetes posture, KSPM).
- **Alerts and forensics** (can record activity around an event) and basic response actions.
- On IBM Cloud this is sold as **IBM Cloud Workload Protection**, built on Sysdig.

### Main pieces (architecture level)
- **Sysdig backend (the "master")** = SaaS (in IBM Cloud, a regional instance).
  - Stores events, runs the UI, holds the policies and rules.
  - Sends policies/rules down to agents.
- **Agent / Host Shield (workload-protection-agent, DaemonSet)**
  - One per node.
  - Hooks the **host kernel** with a kernel module or **eBPF probe** to see system calls.
  - Runs the detection rules locally.
- **Cluster Shield (agent-clustershield, cluster-level Deployment)**
  - Talks to the **Kubernetes API**.
  - Does admission control, Kubernetes audit events, cluster posture (KSPM) and cluster scanning.
- **Node Analyzer (older/alternative components)**
  - Host scanner, image analyzer, benchmark runner.
- **cloudlogs-agent** in your diagram is a separate IBM logging agent (collects logs), not Sysdig security.

### Where it is installed
- **Agent/Host Shield:** every worker node (DaemonSet, privileged, host access).
- **Cluster Shield:** inside the cluster, one deployment.
- **Backend:** outside, managed SaaS.
- **Not inside the peer pod VM** (diagram note: agents see node and pod netns flows, no syscalls or files in the VM).

### How it is configured
- Installed with **Helm / operator**, in its own namespace (here `ibm-observe`).
- Needs an **access key** and the **collector endpoint** of the Sysdig instance, plus a **cluster name**.
- Choose the probe type (kernel module or eBPF) and which features to switch on (runtime, scanning, KSPM, admission).
- **Policies and Falco rules are set in the Sysdig UI**, then synced down to agents.

### How data flows to the master
- **Agent --> collector:** events, metrics and security findings over **TLS, outbound** (port 6443 to the collector, 443 to the API endpoints).
- **Cluster Shield --> backend:** posture data, audit events, scan results.
- **Backend --> agent:** policy and rule updates.
- Everything is **outbound from the cluster**; no inbound ports are needed to the nodes.

### In your peer pod setup (what to confirm with IBM)
- A normal container's syscalls pass through the **host kernel**, which the agent hooks.
- With kata-remote, your app runs **inside the VM's own kernel**, so the worker agent **cannot see syscalls, files or processes of your app**.
- It still sees **node-level flows** and the empty pod shell, plus the worker's own processes.
- To see inside the VM you would need an agent **in the VM image**, which also has to be measured and added to RVPS.

---

## Part 8: Fundamental differences: Illumio vs Sysdig vs Istio

### One-line summary
- **Illumio:** "**Who may connect** to whom?" (network firewall rules by label)
- **Sysdig:** "**What is the workload doing**, and is it malicious?" (runtime behaviour)
- **Istio:** "**How do apps talk**, securely and reliably?" (identity, mTLS, request-level rules)

### Side-by-side

| | **Illumio** | **Sysdig** | **Istio** |
|---|---|---|---|
| Main job | Microsegmentation | Runtime threat detection, vuln + compliance | Service mesh: mTLS, authz, traffic control |
| Layer | L3/L4 (IP, port) | Kernel / process / file / syscall | L7 (HTTP/gRPC) + L4 |
| Where it runs | Agent on node (iptables) | Agent on node (kernel/eBPF) | Sidecar next to each app, here **inside the VM** |
| Master | PCE | Sysdig backend | istiod |
| Sees inside the VM? | No (without VEN in VM) | No (without agent in VM) | **Yes** (istio-proxy runs in the VM) |
| Encrypts traffic? | No | No | **Yes** (mTLS) |
| Identity used | Labels / workload | Container / process | Certificate per service account (SPIFFE) |

### What each one DOES NOT do

**Illumio does not:**
- Read request content (no URL, header, method or payload checks).
- Detect malware, suspicious processes or file changes.
- Encrypt traffic (it only allows or blocks).
- Do retries, timeouts, rate limiting or canary routing.
- Prove the workload is trustworthy (no attestation).

**Sysdig does not:**
- Block or allow network connections between workloads by policy (it detects and alerts, with limited response actions).
- Encrypt traffic or give workloads identity.
- Understand HTTP routes or apply request-level authorisation.
- See inside the confidential VM from the worker node.
- Protect against a malicious cluster admin (it is run by the same cluster owner).

**Istio does not:**
- Detect malicious syscalls, files or malware in the container (that is Sysdig's job).
- Cover **non-meshed** traffic (anything not going through istio-proxy).
- Stop container escape, kernel exploits, SQLi / XSS (needs WAF and runtime tools).
- Provide host-level firewalling like Illumio (it works at the proxy, not on the whole host).
- Protect against a malicious admin who changes istiod policy (istiod is under cluster-admin control and is not attested).

### What none of the three do
- None of them is the **confidentiality boundary**. That comes from the **TDX chip + attestation (Trustee: KBS, AS, RVPS)**.
- None of them proves to the app or the Trustee that the VM is genuine and unmodified.
- Treat them as **visibility and defence in depth** around the confidential VM, not as protection from the cluster admin or cloud operator.

### Who covers what (quick view)
- **Stop unwanted connections between workloads:** Illumio (network), Istio (identity + request level).
- **Hide traffic from sniffing between node, VPC and VM:** Istio mTLS.
- **Spot a hacked container behaving badly:** Sysdig.
- **Fix rate, retries, canary:** Istio.
- **Prove the VM is genuine before releasing secrets:** TDX + attestation (Trustee).




<br>

# ═══════════════════════════════════════════════════════════
# ADDITIONS: CDH, AA and Trustee (KBS, AS, RVPS, client-tool)
# ═══════════════════════════════════════════════════════════

---

## Part 9: The attestation and secret components

### Big picture (matches the small diagram)
- **Guest side (inside the confidential VM):** CDH and AA, which talk to each other locally.
- **Trustee side (external VSI):** KBS (front door), AS (checks the proof), RVPS (known-good values).
- **client-tool (admin side):** used by the owner to configure the KBS (upload secrets, set policies, set reference values).
- **Two arrows go from the guest to the KBS:**
  - **AA --> KBS: "attests guest"** (sends the TDX proof).
  - **CDH --> KBS: "requests resource"** (asks for the secret).
- **Inside Trustee:** KBS --> AS ("validates evidence"), and RVPS --> AS ("provides reference values").
- **Who plays which role:** AA + CDH = the **attester** (the one proving itself), AS = the **verifier** (the one checking), KBS = the **relying party** (the one releasing secrets).
- **Project split:** AA and CDH come from the *guest-components* project, KBS/AS/RVPS from the *Trustee* project.

---

### Confidential Data Hub (CDH), inside the VM
**What it does**
- The **local "secrets desk"** for your app and for the Kata agent.
- Your app asks it for a secret, it fetches the secret from the KBS and hands it back.
- Also handles: unsealing sealed secrets, decrypting encrypted container images, mounting encrypted storage (secure mount).

**Where it runs**
- Inside the peer pod VM (TEE), as a guest component started with the VM image.

**Ports / endpoints (typical, verify in your image)**
- **Local only, never exposed outside the VM.**
- Local API for the app: HTTP on `127.0.0.1:8006` (for example `/cdh/resource/<repo>/<type>/<tag>`) via the API server, or a ttrpc Unix socket used by the Kata agent.
- **Outbound:** to the KBS, default **TCP 8080** (HTTP, or HTTPS if you put TLS in front), on the VM's own VPC NIC.

**How it gets its settings**
- From the **init data** (cdh config, with the KBS address and certificate) or from VM kernel parameters.

**Sensitive data: how it is stored**
- Secret is received **encrypted** (to a one-time key that only this TEE holds).
- CDH decrypts it **in memory inside the TEE**. TDX memory is hardware-encrypted, so the host cannot read it.
- It is not written to disk unless the app does that itself.

---

### Attestation Agent (AA), inside the VM
**What it does**
- Collects **TDX evidence** (the "quote") from the chip.
- Does the attestation conversation with the KBS and gets an attestation token.
- Can also record **runtime measurements** (extend the measurement log, for example for init data).

**Where it runs**
- Inside the peer pod VM, next to CDH. CDH uses it.

**Ports / endpoints (typical)**
- **Local only:** ttrpc Unix socket, or REST on `127.0.0.1:8006` (for example `/aa/token`, `/aa/evidence`).
- **Outbound to KBS:** `/kbs/v0/auth` and `/kbs/v0/attest` on **TCP 8080**.
- Talks to the TDX hardware through the **guest TDX device** (`/dev/tdx_guest`), not the network.

**Sensitive data: how it is stored**
- Holds a **temporary key pair** created for each session (in memory only).
- Evidence is not secret by itself, but it is signed by hardware, so it cannot be faked.

---

### Key Broker Service (KBS), on the Trustee
**What it does**
- The **front door** of the Trustee. Guests only ever talk to the KBS.
- Runs the **attestation conversation** with the guest.
- **Holds the secrets** and releases one only if the proof is valid and the resource policy allows it.
- Admins use it (via client-tool) to upload secrets and set policies.

**Where it runs**
- On the Trustee VSI, same VPC. Deployed with Docker Compose, Kubernetes (KBS operator) or as a service.

**Ports / endpoints**
- **TCP 8080** (default, HTTP; use TLS/HTTPS in production).
- **Guest endpoints:**
  - `POST /kbs/v0/auth` (start, the KBS sends back a challenge).
  - `POST /kbs/v0/attest` (guest sends evidence).
  - `GET /kbs/v0/resource/<repo>/<type>/<tag>` (get the secret).
- **Admin endpoints:** for secrets and policies, protected by an **admin key pair**.
- **To AS and RVPS:** gRPC if they are separate processes (typically **50004** for AS, **50003** for RVPS, verify), or built in.

**Sensitive data: how it is stored**
- **Secrets** (DB credentials etc.) live in the KBS **resource repository**:
  - Default: files on the Trustee disk (local file system, folder per repo/type/tag).
  - Optional: external backends (vault / KMS style plugins).
- At rest, they are only as safe as **that VSI's disk and access controls**, so encrypt the disk, restrict access and back up carefully.
- In transit: secret is **encrypted to the guest's one-time key**, so even if the network is sniffed it cannot be read.
- Also keeps the **admin public key** and the **policies**.

---

### Attestation Service (AS), on the Trustee
**What it does**
- The **verifier**: **this is where the attestation report is actually checked.**
- Checks the evidence is genuine and compares it with the reference values.
- Returns a signed **attestation token** (claims such as "TDX, measurements OK") to the KBS.

**Where it runs**
- On the Trustee VSI, either built into the KBS process or as a separate service.

**Ports / endpoints**
- Separate mode: gRPC, typically **50004** (verify).
- Built-in mode: no separate port, called inside the KBS.
- **Outbound:** may need to fetch Intel certificate/collateral data (PCS/PCCS) to verify TDX quotes, so the Trustee needs that access or a local PCCS cache.

**Sensitive data: how it is stored**
- Holds the **attestation policy** (rules) and its **token-signing key**.
- Does not store your application secrets.

**How the check works**
1. **Signature check:** is the quote signed by a genuine Intel TDX chip (certificate chain and collateral)?
2. **Freshness:** does it contain the **challenge** from the KBS (stops replay)?
3. **Binding:** does it contain the hash of the guest's one-time public key (so the secret goes only to this TEE)?
4. **Measurements:** do the values (VM image, firmware, kernel, init data) match RVPS?
5. **Policy:** do the claims pass the attestation policy?
6. If yes, it issues a signed token. If not, it says no.

---

### Reference Value Provider Service (RVPS), on the Trustee
**What it does**
- Keeps the **"known good" values** (expected measurements) that the AS compares evidence against.
- Receives new values from the owner (for example after building a new VM image), then provides them to the AS.

**Where it runs**
- On the Trustee VSI, inside or beside the AS.

**Ports / endpoints**
- Separate mode: gRPC, typically **50003** (verify).
- Reference values are registered via the **client-tool through the KBS** (admin path).

**Sensitive data: how it is stored**
- Not secret, but **integrity is critical**: if someone changes these values, a bad VM could pass.
- Stored locally on the Trustee (file-based store by default).
- Protect it with admin keys and access control.

---

### client-tool (kbs-client), admin side
**What it does**
- Command-line tool for the **owner/admin** to configure the Trustee.
- Uploads **secrets** to the KBS.
- Sets the **attestation policy** and **resource policy** (who may get which secret).
- Registers **reference values** (RVPS).
- Can also act as a test guest (get a token / resource) to check the setup.

**Where it runs**
- On an admin machine (laptop or jump host), **not** in the VM and not in the cluster.

**Ports / endpoints**
- Calls the KBS admin endpoints on **TCP 8080** (HTTPS in production).

**Sensitive data: how it is stored**
- Uses an **admin private key** to authenticate. Keep it off shared machines.
- Secrets pass through it when uploading, so treat the machine as sensitive.

---

### Who stores what (quick view)

| Item | Stored where | How | Who can read it |
|---|---|---|---|
| App secrets (DB creds) | KBS resource repository, Trustee VSI | Files on disk (default), optional external store | Trustee admins, KBS |
| Admin private key | Admin machine | Key file | Admin only |
| Admin public key | KBS | Config | KBS |
| Attestation policy | AS (set via KBS) | Policy file (Rego) | Trustee admins |
| Resource policy | KBS | Policy file (Rego) | Trustee admins |
| Reference values | RVPS, Trustee | Local file store | Trustee admins |
| One-time session key | Guest (AA/CDH) | Memory only (TDX encrypted) | Inside the TEE only |
| Secret after delivery | Guest memory (CDH, then app) | Plain in TEE memory | Inside the TEE only |
| TDX evidence | Created on demand by AA | Not stored, sent to KBS | KBS and AS |

---

### Where and how the attestation report is checked (step by step)
1. **App --> CDH:** "I need the DB secret."
2. **CDH --> AA:** "Prove who we are."
3. **AA --> KBS:** sends the start request (`/auth`) with the TEE type and a **one-time public key**.
4. **KBS --> AA:** returns a **challenge** (a random nonce).
5. **AA --> TDX chip:** asks for a **quote** that includes the nonce and the hash of the one-time public key.
6. **AA --> KBS:** sends the evidence (`/attest`).
7. **KBS --> AS:** "validate this evidence."
8. **AS** checks signature, freshness, key binding, measurements (from **RVPS**) and the attestation policy.
9. **AS --> KBS:** signed token with the verified claims (or a rejection).
10. **CDH --> KBS:** asks for the resource (`/resource/...`).
11. **KBS** checks the **resource policy** against the token claims. If allowed, it **encrypts the secret to the one-time public key** and sends it.
12. **CDH** decrypts inside the TEE and hands it to the **app**.

**Key point:** the check happens **on the Trustee (AS)**, not in the VM, not on the worker, and not by the app.

---

### Ports summary (typical defaults, verify for your install)

| From | To | Port | Purpose |
|---|---|---|---|
| App | CDH (local) | 127.0.0.1:8006 or Unix socket | Ask for secret |
| CDH | AA (local) | Unix socket (ttrpc) | Get evidence/token |
| AA / CDH | KBS | TCP 8080 | Attest, get resource |
| KBS | AS (if separate) | gRPC, 50004 | Validate evidence |
| KBS / AS | RVPS (if separate) | gRPC, 50003 | Reference values |
| client-tool | KBS | TCP 8080 | Admin config |
| AS | Intel PCS / PCCS | HTTPS 443 (or local PCCS) | TDX collateral |

**VPC rules needed:** VM security group outbound to Trustee 8080, Trustee security group inbound 8080 from the peer pod VM subnet, admin access to 8080 only from allowed machines.

---

### Things to confirm with IBM / Red Hat
- Exact port numbers and whether AS/RVPS are built into the KBS or separate in your Trustee build.
- Whether the KBS is behind **HTTPS** in your setup (HTTP is common in demos, not for production).
- How the Trustee gets TDX collateral (Intel PCS vs a local PCCS) from inside your VPC.
- Whether the **init data hash** and the sidecar images are registered in RVPS.
- How the Trustee VSI disk is encrypted and who has admin access.
- Whether your CDH/AA version uses the REST port or only the Unix sockets.