# POC Execution Steps: Confidential Containers (Peer Pods, TDX) on IBM Cloud ROKS

How to use this file:
- Run each step on BOTH clusters (`conf-cluster` and `non-conf-cluster`) unless a step says otherwise.
- Every command is read-only, except the short-lived test pods in 1.9, which delete themselves.
- Each check lists what a good result looks like. Paste outputs back to me, and mask account IDs, IPs or tokens if you prefer.
- Never paste secret values. None of these commands print them.

---

## Step 1: Kubernetes cluster checkpoint

Goal: prove both clusters are healthy, reachable, have the right permissions, network and egress, and are ready for the kata runtime (Step 3), Trustee (Step 4) and service mesh (Step 7).

### 1.0 Set variables (once per cluster, per terminal)

```bash
export CLUSTER=<cluster-name-or-id>     # e.g. conf-cluster, then non-conf-cluster
export APP_NS=default                   # namespace where the apps will run (change if different)
export VPC_REGION=<region>              # e.g. eu-de (only used in 1.9 egress test)
```

### 1.1 CLI, login and plugins

```bash
ibmcloud --version
ibmcloud target
ibmcloud plugin list
kubectl version --client
```

Good: you are logged in to the correct account, region and resource group, and the plugins `container-service` (`oc`), `container-registry` (`cr`) and `vpc-infrastructure` (`is`) are listed.

If `vpc-infrastructure` is missing:

```bash
ibmcloud plugin install vpc-infrastructure -r "IBM Cloud"
```

### 1.2 Cluster status from the IBM Cloud side

```bash
ibmcloud oc cluster ls
ibmcloud oc cluster get --cluster $CLUSTER
ibmcloud oc worker-pool ls --cluster $CLUSTER
ibmcloud oc worker ls --cluster $CLUSTER
```

Good:
- Cluster state is `normal` and the master is `Ready`.
- Version is OpenShift 4.19.x.
- 2 workers, state `normal`, status `Ready`, in the expected zone(s).
- Note the cluster ID, VPC, zone(s), flavor and worker pool name.

### 1.3 Kubeconfig and context (avoid running on the wrong cluster)

```bash
ibmcloud oc cluster config --cluster $CLUSTER
kubectl config current-context
kubectl cluster-info
```

Good: the current context points at `$CLUSTER`. Add `--admin` to the first command if you need the admin certificate kubeconfig.

### 1.4 Permissions

```bash
kubectl auth can-i '*' '*'
kubectl auth can-i create runtimeclasses.node.k8s.io
kubectl auth can-i create customresourcedefinitions.apiextensions.k8s.io
kubectl auth can-i create subscriptions.operators.coreos.com --all-namespaces
kubectl auth can-i create secrets -n $APP_NS
```

Good: all `yes`. Cluster-admin is needed later for operators, `KataConfig`, `RuntimeClass` and the mesh.

### 1.5 Nodes

```bash
kubectl get nodes -o wide
kubectl get nodes -L node.kubernetes.io/instance-type -L topology.kubernetes.io/zone -L ibm-cloud.kubernetes.io/worker-pool-name
kubectl get nodes -o custom-columns='NAME:.metadata.name,READY:.status.conditions[?(@.type=="Ready")].status,MEM:.status.conditions[?(@.type=="MemoryPressure")].status,DISK:.status.conditions[?(@.type=="DiskPressure")].status,PID:.status.conditions[?(@.type=="PIDPressure")].status'
kubectl get nodes -o custom-columns='NAME:.metadata.name,TAINTS:.spec.taints[*].key'
```

Good:
- All nodes `Ready`; MEM, DISK and PID pressure are `False`.
- OS image is RHCOS and the container runtime is cri-o (diagram: RHCOS 9.6, cri-o 1.32).
- Instance type matches the expected flavor (e.g. `bx3d.8x40`), and zones are as planned.
- No unexpected taints. Note the node internal IPs.

### 1.6 OpenShift version and cluster operators

```bash
kubectl get clusterversion
kubectl get clusteroperators
```

Good: version 4.19.x. Operators are `Available=True`, `Degraded=False`. Some may look different on ROKS, so tell me about any that are `False`.

### 1.7 Control plane and workload health

```bash
kubectl get --raw='/readyz?verbose' | tail -3
kubectl get apiservices | grep -v True
kubectl get pods -A --field-selector=status.phase!=Running,status.phase!=Succeeded
kubectl get events -A --field-selector type=Warning --sort-by=.lastTimestamp | tail -20
```

Good:
- `/readyz` ends with `readyz check passed`.
- `grep -v True` prints only the header line.
- No non-running pods, or only known, explainable ones.
- Warning events are old or harmless.

### 1.8 Networking: CNI, CIDRs, policies

```bash
kubectl get pods -A | grep -i calico
kubectl get network.config.openshift.io cluster -o jsonpath='{.spec.clusterNetwork}{"\n"}{.spec.serviceNetwork}{"\n"}{.status.networkType}{"\n"}'
kubectl get ippools.crd.projectcalico.org
kubectl get networkpolicy -A
```

Good:
- Calico pods are `Running` on every node.
- Note the pod CIDR and service CIDR. They must not overlap with the VPC subnets or anything the Trustee VSI can reach.
- Note any existing NetworkPolicies. They can block the later sidecar and peer pod traffic.

### 1.9 DNS, registry and egress tests from inside the cluster

Define a throwaway test helper. It uses your already-pushed image, so it needs no new pulls. If `python` isn't found, change it to `python3`.

```bash
nettest() { kubectl run nettest-$RANDOM -n "$APP_NS" --rm -i --restart=Never \
  --image=useast.icr.io/env-conf-container-cr/my-python-app:latest \
  --overrides='{"spec":{"imagePullSecrets":[{"name":"useast-icr-io-secret"}]}}' \
  --command -- python -c "$1"; }
```

DNS (in-cluster service resolution):

```bash
nettest "import socket;print(socket.gethostbyname('kubernetes.default.svc'))"
```

Egress to the container registry (expected status `401`, which proves reachability):

```bash
nettest "import http.client as h;c=h.HTTPSConnection('useast.icr.io',timeout=5);c.request('GET','/v2/');print(c.getresponse().status)"
```

Egress to IBM Cloud IAM and the VPC API. CAA will call these from the worker in Step 3. Any HTTP status means reachable; a timeout or DNS error means blocked. In a dedicated or on-prem environment the VPC endpoint may differ, so use the one IBM gives you.

```bash
nettest "import http.client as h;c=h.HTTPSConnection('iam.cloud.ibm.com',timeout=5);c.request('GET','/');print(c.getresponse().status)"
nettest "import http.client as h;c=h.HTTPSConnection('$VPC_REGION.iaas.cloud.ibm.com',timeout=5);c.request('GET','/');print(c.getresponse().status)"
```

Good: DNS returns a service IP, and each egress test prints an HTTP status without an exception.

### 1.10 Registry pull readiness (per cluster, in the app namespace)

```bash
kubectl get ns $APP_NS
kubectl get secret useast-icr-io-secret -n $APP_NS
kubectl get sa default -n $APP_NS -o jsonpath='{.imagePullSecrets}{"\n"}'
```

Good:
- The namespace exists and the pull secret exists in it.
- The `default` service account may or may not list the secret. Either way, pods must reference `imagePullSecrets` explicitly (as in the earlier pull test).
- If the secret is missing in `$APP_NS`, copy it there before Step 8.

### 1.11 Operator availability and existing objects (pre-checks for Steps 3 and 7)

```bash
kubectl get catalogsource -n openshift-marketplace
kubectl get packagemanifests -n openshift-marketplace | grep -i -E "sandboxed|servicemesh|sail"
kubectl get subscriptions.operators.coreos.com -A
kubectl get csv -A
kubectl get runtimeclass
kubectl get mutatingwebhookconfigurations
kubectl get scc
```

Good:
- Catalog sources are `READY`.
- The sandboxed containers operator and the Service Mesh 3 operator appear in the package manifests (exact names may vary).
- Note any existing operators, especially anything Istio or Kata related.
- `kubectl get runtimeclass` has no `kata-remote` yet on a clean cluster. Note anything already present.
- The webhook list shows what already intercepts pods, which matters for sidecar injection later.

### 1.12 VPC-level checks (run once, using the VPC the clusters use)

```bash
ibmcloud is vpcs
ibmcloud is subnets
ibmcloud is public-gateways
ibmcloud is security-groups
ibmcloud is network-acls
```

Then drill into the ones your cluster uses. Replace the IDs with values from the lists above:

```bash
ibmcloud is subnet <SUBNET_ID>
ibmcloud is security-group-rules <WORKER_SG_ID>
ibmcloud is network-acl <ACL_ID>
```

Optional, informational only (Step 0 confirms the TDX profile with IBM):

```bash
ibmcloud is instance-profiles | grep -i -E "tdx|confidential"
```

Good:
- Note the VPC ID, subnet IDs and CIDRs, available IPs, security group ID(s), ACL ID and zone(s).
- Egress works either via a public gateway on the subnet or via private endpoints.
- Later steps need these rules: worker <-> peer pod VSI on UDP 4789, VSI <-> worker on TCP 15150, and Trustee reachable on the KBS port.

### 1.13 Capacity

```bash
kubectl top nodes
kubectl describe nodes | grep -A8 "Allocated resources"
```

Good: enough free CPU and memory on each worker for the operators, mesh control plane and CAA. `kubectl top` needs metrics to be available.

---

### Values to record (needed as inputs for Steps 3 and 4)

| Item | conf-cluster | non-conf-cluster |
|---|---|---|
| Cluster ID | | |
| OpenShift version | | |
| Zone(s) | | |
| Worker flavor and count | | |
| Worker internal IPs | | |
| Pod CIDR | | |
| Service CIDR | | |
| VPC ID | | |
| Subnet ID and CIDR | | |
| Worker security group ID | | |
| Network ACL ID | | |
| Egress method (public gateway / private) | | |
| App namespace | | |
| Operators visible (sandboxed, Service Mesh 3) | | |

### Step 1 exit criteria

- [ ] Both clusters `normal`, all nodes `Ready`, no degraded operators.
- [ ] kubectl context verified for each cluster, and cluster-admin is available.
- [ ] Calico healthy, CIDRs recorded, no blocking NetworkPolicies.
- [ ] DNS and egress tests pass (ICR, IAM, VPC API).
- [ ] Pull secret present in the app namespace on both clusters.
- [ ] Sandboxed containers and Service Mesh 3 operators visible in OperatorHub.
- [ ] VPC, subnet, SG and ACL values recorded.



---

## Step 2: Container registry checkpoint

Goal: prove the image registry is ready for the POC. The image is stored, tagged and pinned by digest, a scoped pull-only credential exists on both clusters, and the pull path works from the confidential cluster.

Already done earlier: namespace `env-conf-container-cr` in `eu-useast` (`useast.icr.io`), `my-python-app:latest` pushed, and a plain pod pull on `non-conf-cluster` using `useast-icr-io-secret`. This step turns that into a repeatable, pinned and least-privilege setup.

### 2.0 Set variables

```bash
export CR_HOST=useast.icr.io
export CR_NS=env-conf-container-cr
export IMG=my-python-app
```

`CLUSTER` and `APP_NS` come from Step 1.0.

### 2.1 Registry region, plan and namespace

```bash
ibmcloud cr info
ibmcloud cr plan
ibmcloud cr quota
ibmcloud cr namespace-list
```

Good:
- Region is `eu-useast` and the registry is `useast.icr.io`. The private endpoint is `private.useast.icr.io`.
- `env-conf-container-cr` is in the namespace list.
- Plan and quota leave headroom for storage and pull traffic.

### 2.2 Image present: tags, digest and architecture

```bash
ibmcloud cr image-list --restrict $CR_NS
ibmcloud cr image-digests --restrict $CR_NS
ibmcloud cr image-inspect $CR_HOST/$CR_NS/$IMG:latest
docker image inspect $IMG:latest --format '{{.Os}}/{{.Architecture}}'
```

Good:
- The image shows in the list with a digest (`sha256:...`).
- The architecture is `linux/amd64`. TDX hosts are x86, so an `arm64` image built on Apple Silicon will not run in the peer pod.

### 2.3 Add a version tag and record the digest (for pinning later)

```bash
ibmcloud cr image-tag $CR_HOST/$CR_NS/$IMG:latest $CR_HOST/$CR_NS/$IMG:v1
ibmcloud cr image-digests --restrict $CR_NS
```

Record the digest. Tags can move, so Steps 5 and 6 (reference values and policy) will use the digest form:

```
useast.icr.io/env-conf-container-cr/my-python-app@sha256:<digest>
```

### 2.4 Vulnerability scan (optional)

```bash
ibmcloud cr vulnerability-assessment $CR_HOST/$CR_NS/$IMG:v1
```

Good: the scan completes. Note any critical findings, since this is a bank-style POC.

### 2.5 Review the credential the clusters use today

```bash
ibmcloud iam service-ids
ibmcloud iam service-policies <SERVICE_ID_NAME_OR_ID>
kubectl get secret useast-icr-io-secret -n $APP_NS
```

Good: you know which identity backs `useast-icr-io-secret` and how wide its access is. IBM-created cluster credentials often have read access to registry namespaces beyond this POC. The worker node can read pod pull secrets, so the confidential cluster should use a scoped pull-only credential (2.6).

### 2.6 Create a scoped pull-only credential for the POC

Create a service ID that has Reader on this one registry namespace:

```bash
ibmcloud iam service-id-create coco-poc-icr-pull -d "Pull-only for CoCo POC"
ibmcloud iam service-policy-create coco-poc-icr-pull --roles Reader --service-name container-registry --resource-type namespace --resource $CR_NS
```

Create an API key and write it to a local file (it is shown only once, and don't paste it in chat):

```bash
ibmcloud iam service-api-key-create coco-poc-icr-pull-key coco-poc-icr-pull -d "CoCo POC pull key" --file ./coco-poc-icr-key.json
chmod 600 ./coco-poc-icr-key.json
```

Create the pull secret in `$APP_NS`. Repeat this on both clusters by switching context first (1.3):

```bash
kubectl create secret docker-registry coco-icr-pull -n $APP_NS \
  --docker-server=$CR_HOST \
  --docker-username=iamapikey \
  --docker-password="$(jq -r .apikey ./coco-poc-icr-key.json)"
```

When the secret exists on both clusters, remove the key file or move it into your vault:

```bash
shred -u ./coco-poc-icr-key.json || rm -P ./coco-poc-icr-key.json
```

Good:
- `ibmcloud iam service-policies coco-poc-icr-pull` shows only Reader on namespace `env-conf-container-cr`.
- `kubectl get secret coco-icr-pull -n $APP_NS` exists on both clusters.

If you will use the private endpoint, create a second secret with `--docker-server=private.useast.icr.io`, or give your pod spec both.

### 2.7 Pull test on the confidential cluster (plain pod, new secret, pinned tag)

Switch to `conf-cluster` (1.3), then:

```bash
kubectl run pulltest-v1 -n $APP_NS --image=$CR_HOST/$CR_NS/$IMG:v1 \
  --overrides='{"spec":{"imagePullSecrets":[{"name":"coco-icr-pull"}]}}'
kubectl get pod pulltest-v1 -n $APP_NS
kubectl describe pod pulltest-v1 -n $APP_NS | tail -15
```

Good: the pod reaches `Running` or `Completed`, and the events show the image pulled successfully.

Clean up:

```bash
kubectl delete pod pulltest-v1 -n $APP_NS
```

Repeat 2.7 on `non-conf-cluster` if you want both proven with the new secret.

### 2.8 Registry reachability for the peer pod VM path

By default the peer pod VM's traffic, including its image pulls, goes through VXLAN to the worker and out via the worker's egress. So the worker network must reach the registry. This was tested in 1.9. For the private endpoint, re-define the `nettest` helper from 1.9 in this terminal if needed, then:

```bash
nettest "import http.client as h;c=h.HTTPSConnection('private.useast.icr.io',timeout=5);c.request('GET','/v2/');print(c.getresponse().status)"
```

Good: status `401` means reachable. A timeout means the private endpoint is not reachable from this network, so use the public hostname in image references.

### 2.9 Image naming for the POC (no commands, decide now)

| Image | Repository path | Runs as | Tag policy |
|---|---|---|---|
| App 1 (CVM, calls CDH) | `useast.icr.io/env-conf-container-cr/app1-cvm-api` | peer pod (`kata-remote`) | version tag plus digest pin |
| App 2 (web UI) | `useast.icr.io/env-conf-container-cr/app2-web-ui` | normal worker pod | version tag |
| Test image | `useast.icr.io/env-conf-container-cr/my-python-app` | plain pod | `v1` |

Rename if you prefer. The names are used in Steps 8 and 9.

---

### Values to record

| Item | Value |
|---|---|
| Registry host and region | |
| Namespace | |
| Image digest (`my-python-app:v1`) | |
| Image architecture | |
| Pull secret name | |
| Pull credential scope (service ID, role, namespace) | |
| Public / private endpoint used for pulls | |

### Step 2 exit criteria

- [ ] Image is in `env-conf-container-cr` with a `v1` tag and a recorded digest.
- [ ] Image architecture is `linux/amd64`.
- [ ] A pull-only IAM credential is scoped to this one registry namespace.
- [ ] The `coco-icr-pull` secret exists in the app namespace on both clusters, and the key file is removed.
- [ ] A plain-pod pull works on `conf-cluster` with the new secret.
- [ ] Registry reachability from the cluster network is confirmed (public and/or private).
- [ ] The image naming plan for App 1 and App 2 is agreed.