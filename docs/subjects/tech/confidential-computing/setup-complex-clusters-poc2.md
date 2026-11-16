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
  --image=fr2.icr.io/env-conf-container-cr/my-python-app:latest \
  --overrides='{"spec":{"imagePullSecrets":[{"name":"fr2-icr-io-secret"}]}}' \
  --command -- python -c "$1"; }
```

DNS (in-cluster service resolution):

```bash
nettest "import socket;print(socket.gethostbyname('kubernetes.default.svc'))"
```

Egress to the container registry (expected status `401`, which proves reachability):

```bash
nettest "import http.client as h;c=h.HTTPSConnection('fr2.icr.io',timeout=5);c.request('GET','/v2/');print(c.getresponse().status)"
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
kubectl get secret fr2-icr-io-secret -n $APP_NS
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
