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




---

## Step 2a: Build App 1 (runs in the CVM, talks to CDH)

Goal: a small Python API that runs as a peer pod, fetches a secret from CDH at `127.0.0.1:8006`, uses it, and exposes an API for other apps. It never returns or logs the secret.

How to use: paste the prompt below into a fresh Claude chat that has code execution or file access (or into Claude Code). Attach `api.json` if the tool can't clone from GitHub. The spec lives in the guest-components repo at `api-server-rest/openapi/api.json`.

### Prompt for App 1

```text
You are helping me build App 1 of a Confidential Containers POC. App 1 is a Python HTTP API that will run inside a Kata peer pod (an Intel TDX confidential VM) on IBM Cloud. Write production-quality, minimal code. Do not write Kubernetes manifests yet.

CONTEXT
- Inside the pod, the CoCo REST API server listens on http://127.0.0.1:8006. It proxies to the Confidential Data Hub (CDH) and Attestation Agent (AA). Its OpenAPI 3.1 spec is api-server-rest/openapi/api.json in https://github.com/confidential-containers/guest-components (clone it with --depth 1, or I will attach the file). Read the spec first and base the client on it. Endpoints: GET /cdh/resource/{repository}/{type}/{tag}, GET /aa/token, GET /aa/evidence, GET /aa/additional-evidence, POST /aa/aael, GET /info.
- The secret is at KBS resource path default/kbsres1/key1, which means GET /cdh/resource/default/kbsres1/key1. Treat the response as raw bytes. Check the spec for the content type and do not assume text or JSON.
- Inside the pod the app is wrapped by an Istio sidecar that handles mTLS, so the app itself speaks plain HTTP on 0.0.0.0:$PORT (default 8080).

CLIENT
- Generate a typed Python client from api.json (for example with openapi-python-client) into app/cdh_client/ and leave generated code untouched. Wrap it in app/cdh.py. If the generator cannot handle the 3.1 spec, hand-write a thin httpx client that matches the spec's paths and say so in the README.
- Use timeouts (connect 3s, total 10s), retry at most 2 times on connection errors only (never on 4xx), and sanitize errors.

API OF APP 1
- GET /healthz: 200 {"status":"ok"} (process alive, no CDH call).
- GET /readyz: 200 if GET {CDH_BASE_URL}/info succeeds, otherwise 503.
- GET /api/v1/status: returns {app, version, hostname, tdx_guest_flag, cdh_reachable, resource_path, secret_available}. tdx_guest_flag is true if "tdx_guest" appears in the flags line of /proc/cpuinfo (informational only, not a security proof). It must never include the secret or a fingerprint of it.
- POST /api/v1/compute: body {"message": "<string, 1 to 1024 chars>"}. Fetch the secret from CDH, compute HMAC-SHA256(secret, message), and return {request_id, result (hex), algorithm, resource, elapsed_ms}. The secret is never returned.
- Errors: 400 for invalid input; 502 {"error":"secret_unavailable","detail":"<sanitized>"} when CDH returns an error such as 403 or 404 (log the upstream status code only); 503 when CDH is unreachable.

SECRET HANDLING
- Cache the secret in memory for SECRET_TTL_SECONDS (default 300). Value 0 means fetch on every request, which I need for policy tests.
- Never log the secret, tokens, evidence, request bodies or response bodies. Log structured JSON to stdout with request_id, route, status and elapsed_ms.
- No hardcoded secrets. No mock logic in the production code path.

CONFIG (environment variables, all with defaults)
PORT=8080, CDH_BASE_URL=http://127.0.0.1:8006, KBS_RESOURCE_PATH=default/kbsres1/key1, SECRET_TTL_SECONDS=300, LOG_LEVEL=info.

STACK
FastAPI, uvicorn, httpx, pydantic. Pin all dependency versions. Python 3.12.

LOCAL TESTING
- Provide a separate dev-only mock CDH (mock_cdh/, a tiny FastAPI app on 127.0.0.1:8006 that serves GET /info and GET /cdh/resource/{repository}/{type}/{tag} with a dummy value and supports a mode that returns 403). It must not ship in the production image.
- Provide pytest tests (using the mock or respx) covering success, bad input, CDH 403, CDH unreachable, cache TTL 0 vs 300, and a test proving the secret never appears in responses or logs.

CONTAINER
- Multi-stage Dockerfile, linux/amd64, slim base image, non-root user (UID 10001), no dev dependencies, .dockerignore, HEALTHCHECK not required.
- Give me the build and push commands for useast.icr.io/env-conf-container-cr/app1-cvm-api:v1 using docker buildx with --platform linux/amd64.

OUTPUT
Give the full file tree, then the full content of every file, then a README with run, test, build and push commands. Ask me before assuming anything that the spec does not answer.
```

### 2a acceptance checks (run locally before pushing)

```bash
# terminal 1: mock CDH on 8006; terminal 2: App 1 on 8080
curl -s localhost:8080/healthz
curl -s localhost:8080/readyz
curl -s localhost:8080/api/v1/status
curl -s -X POST localhost:8080/api/v1/compute -H 'content-type: application/json' -d '{"message":"hello"}'
docker logs <container> | grep -c "<dummy secret value>"    # expect 0
docker image inspect app1-cvm-api:v1 --format '{{.Os}}/{{.Architecture}}'    # expect linux/amd64
docker run --rm app1-cvm-api:v1 id -u    # expect 10001
```

Then push and record the digest (re-run `ibmcloud cr login` first if needed):

```bash
docker buildx build --platform linux/amd64 -t useast.icr.io/env-conf-container-cr/app1-cvm-api:v1 --push .
ibmcloud cr image-digests --restrict env-conf-container-cr
```

### Step 2a exit criteria

- [ ] The client is generated from `api.json` (or the hand-written fallback is documented).
- [ ] All endpoints behave as specified against the mock CDH, and the tests pass.
- [ ] The secret never appears in responses or logs (checked).
- [ ] The image is `linux/amd64`, non-root, and pushed as `app1-cvm-api:v1`, with the digest recorded.

---

## Step 2b: Build App 2 (normal worker, web UI that calls App 1)

Goal: a small web app on a regular worker with a form and a button. Clicking it calls App 1's API and shows the result, and it explains failures in a way that helps the later negative tests (Step 10).

### Prompt for App 2

```text
You are helping me build App 2 of a Confidential Containers POC. App 2 is a small Python web app that runs as a normal pod on an OpenShift worker (not a confidential VM). A user types some text and clicks a button, and App 2 calls App 1, an API running in a confidential peer pod, and shows the result. Do not write Kubernetes manifests yet.

APP 1 CONTRACT (call it over plain HTTP; the Istio sidecars handle mTLS)
- GET /healthz, GET /readyz
- GET /api/v1/status returns {app, version, hostname, tdx_guest_flag, cdh_reachable, resource_path, secret_available}
- POST /api/v1/compute with body {"message": "<1 to 1024 chars>"} returns {request_id, result, algorithm, resource, elapsed_ms}
- Error responses from App 1: 400 invalid input; 502 {"error":"secret_unavailable","detail":"..."} when it cannot fetch its secret; 503 when its CDH is unreachable.

APP 2 BEHAVIOUR
- GET / renders a server-side HTML page with: a text input (max 1024 chars), a Run button, an "App 1 status" panel (from GET /api/v1/status on page load: reachable, tdx_guest_flag, secret_available, hostname) and a result panel.
- POST /run validates the input, calls POST /api/v1/compute on App 1, and renders the result (result hex, algorithm, elapsed_ms, request_id) plus App 2's own round-trip time.
- GET /healthz returns 200 {"status":"ok"} without calling App 1.
- Show a clear message for each failure case:
  * timeout or connection refused: "App 1 is not responding"
  * HTTP 403 with a body that starts with "RBAC: access denied": "Access denied by the service mesh policy"
  * HTTP 503 (including "no healthy upstream"): "App 1 unavailable (check sidecar, mTLS or readiness)"
  * HTTP 502 secret_unavailable: "App 1 could not obtain its secret (attestation or policy failure)"
  * HTTP 400: show App 1's validation message
  Always show the HTTP status and request_id in a small details line.

MESH AND OPERATIONS
- Forward these headers from the incoming request to App 1 when present, so traces connect: x-request-id, x-b3-traceid, x-b3-spanid, x-b3-parentspanid, x-b3-sampled, x-b3-flags, b3, traceparent, tracestate. Generate x-request-id if it is missing.
- Use httpx with timeouts (connect 3s, total APP1_TIMEOUT_SECONDS), and no automatic retries on POST.
- Config by environment variables with defaults: PORT=8080, APP1_BASE_URL=http://app1:8080, APP1_TIMEOUT_SECONDS=10, LOG_LEVEL=info.
- Structured JSON logs to stdout with request_id, route, upstream_status, elapsed_ms. Never log the user's input or App 1's result values.
- App 2 holds no secrets and never calls KBS, CDH or AA directly.

WEB SECURITY
- Jinja2 autoescaping on, no inline scripts, no external CDNs or fonts, no JavaScript framework (plain server-rendered HTML and a small static CSS file).
- CSRF protection for the POST form (double-submit cookie), a Content-Security-Policy of default-src 'self', X-Content-Type-Options: nosniff, and Cache-Control: no-store on responses containing results.

STACK
FastAPI, uvicorn, httpx, Jinja2, pydantic. Pin all dependency versions. Python 3.12.

TESTING
Provide pytest tests with respx mocking App 1 for success, each failure case above (including a 403 with "RBAC: access denied"), header forwarding, CSRF rejection, input validation (empty and over-length) and HTML escaping of reflected input. Also provide a docker-compose.yml for local development that runs App 2 against App 1 and a mock CDH, using the images and the mock from Step 2a.

CONTAINER
Multi-stage Dockerfile, linux/amd64, slim base image, non-root user (UID 10001), .dockerignore. Give me the build and push commands for useast.icr.io/env-conf-container-cr/app2-web-ui:v1 using docker buildx with --platform linux/amd64.

OUTPUT
Give the full file tree, then the full content of every file, then a README with run, test, build and push commands. Ask me before assuming anything the contract above does not answer.
```

### 2b acceptance checks (local, with App 1 + mock CDH running)

```bash
curl -s localhost:8081/healthz
curl -s -i localhost:8081/ | head -20                 # check CSP and nosniff headers
# open http://localhost:8081 in a browser, submit text, confirm the result panel
# stop the mock CDH or switch it to 403 mode, submit again, confirm the failure message
# stop App 1, submit again, confirm "App 1 is not responding"
docker image inspect app2-web-ui:v1 --format '{{.Os}}/{{.Architecture}}'    # expect linux/amd64
```

Push and record the digest:

```bash
docker buildx build --platform linux/amd64 -t useast.icr.io/env-conf-container-cr/app2-web-ui:v1 --push .
ibmcloud cr image-digests --restrict env-conf-container-cr
```

### Step 2b exit criteria

- [ ] The web page works end to end locally (form, result, status panel).
- [ ] Every failure case shows the expected message.
- [ ] CSRF, escaping and security headers verified, and tests pass.
- [ ] The image is `linux/amd64`, non-root, and pushed as `app2-web-ui:v1`, with the digest recorded.

### Values to record

| Item | App 1 | App 2 |
|---|---|---|
| Image | `useast.icr.io/env-conf-container-cr/app1-cvm-api:v1` | `useast.icr.io/env-conf-container-cr/app2-web-ui:v1` |
| Digest | | |
| Port | 8080 | 8080 |
| Key env vars | `CDH_BASE_URL`, `KBS_RESOURCE_PATH`, `SECRET_TTL_SECONDS` | `APP1_BASE_URL`, `APP1_TIMEOUT_SECONDS` |
| Runs on | peer pod (`kata-remote`) | normal worker |





---

## Step 3: Kata peer pod runtime (OpenShift sandboxed containers) on `conf-cluster`

Goal: install the OpenShift sandboxed containers operator, import the IBM peer pod image, configure the credentials and `peer-pods-cm`, enable `KataConfig`, and prove that a `kata-remote` pod creates a TDX VSI. This is IBM's "confidential containers" guide, reorganized with a check after every action.

Source and versions (from IBM's guide):
- OpenShift sandboxed containers operator **1.10.3**, supported on OpenShift 4.16 to 4.19.
- Peer pod image: RHEL 9.6 based, with TDX driver code and a kbs client baked in.
- TDX instance profile used in the guide: `bx3dc-2x10`.
- The IBM guide uses `ibmcloud ks` and `oc`. `ibmcloud oc` is the same plugin, and `kubectl` works for every `oc` command here.

### 3.0 Set variables (once per terminal)

```bash
export CLUSTER_NAME=conf-cluster
export CLUSTER_ID=<cluster-id>
export VPC_ID=<vpc-id>                      # required: used by the commands in 3.7
export ZONE=<zone>                          # e.g. eu-de-1
export SUBNET_ID=<subnet-id>
export RESOURCE_GROUP=<resource-group>
export OSC_NS=openshift-sandboxed-containers-operator
export PODVM_IMAGE_NAME=<lowercase-image-name>   # image names don't support capitals
```

Take the IDs from your Step 1 "values to record" table. Make sure `kubectl config current-context` points at `conf-cluster`.

### 3.1 Prerequisite checks

IBM's prerequisites: the cluster is in a region that supports TDX VSIs, the cluster has a public interface or you have VPN access, the cluster security group `kube-<CLUSTER_ID>` exists, and OperatorHub is enabled.

```bash
ibmcloud is instance-profiles | grep -i bx3dc
ibmcloud ks cluster get --cluster $CLUSTER_NAME
ibmcloud ks security-group ls --cluster $CLUSTER_NAME
kubectl get operatorhub cluster -o jsonpath='{.spec.disableAllDefaultSources}{"\n"}'
kubectl get packagemanifests -n openshift-marketplace | grep -i sandboxed
```

Good:
- `bx3dc-*` profiles are listed. These are the TDX-capable profiles (the guide uses `bx3dc-2x10`). If nothing is listed, stop: TDX isn't offered to you in this region or environment.
- The cluster is `normal`, and has a public endpoint or you reach it over VPN.
- A security group of type `cluster` named `kube-<CLUSTER_ID>` is listed. Note its ID.
- `disableAllDefaultSources` prints `false` (or empty), and the sandboxed containers package appears.

### 3.2 Install the operator (OperatorHub)

1. Open the cluster in the IBM Cloud dashboard, click **OpenShift web console**, then **Operators -> OperatorHub**.
2. Search for **OpenShift sandboxed containers Operator** and open the tile.
3. Click **Install**. IBM's guide says this gives the supported and stable version 1.10.3. Compare with Red Hat's Operator Update Information Checker for your OpenShift version.
4. Keep the defaults on the **Install Operator** page and click **Install**. The operator goes into `openshift-sandboxed-containers-operator`.

Check 3.2:

```bash
kubectl get subscription -n $OSC_NS
kubectl get csv -n $OSC_NS
kubectl get pods -n $OSC_NS
kubectl get crd | grep -i kataconfig
```

Good: the CSV phase is `Succeeded` and the version matches what IBM supports (1.10.3 at the time of the guide), the controller manager pod is `Running`, and the `KataConfig` CRD exists.

### 3.3 CLI setup (skip what you already have)

You are already logged in from Step 1. For reference, IBM's guide does this:

```bash
ibmcloud login --apikey API_KEY -g RESOURCE_GROUP
ibmcloud ks cluster ls
ibmcloud ks cluster config --cluster CLUSTER_ID --admin --endpoint link
kubectl get nodes
kubectl config set-context --current --namespace=$OSC_NS
```

`--endpoint link` uses the private link endpoint. Use it only if you connect over VPN or private connectivity. The `is` CLI plugin was installed in Step 1.1.

Good: `kubectl get nodes` lists both workers `Ready` on `conf-cluster`.

### 3.4 Import the peer pod image

The operator needs a special OS image (RHEL 9.6 with the software to start a container inside a confidential VM) in your IBM Cloud account.

```bash
ibmcloud is image-create "$PODVM_IMAGE_NAME" --file cos://us-south/podvm-image/rhel9-podvm-latest.qcow2 --os-name red-9-amd64
```

Wait for the image to become available (repeat until the status is `available`):

```bash
ibmcloud is image $PODVM_IMAGE_NAME
```

Record the image ID:

```bash
export PODVM_IMAGE_ID=$(ibmcloud is image $PODVM_IMAGE_NAME --output JSON | jq -r .id)
echo $PODVM_IMAGE_ID
```

Good: the status is `available` and the ID prints. Repeat the import when IBM publishes a new image version. This image is what Step 5 measures for the reference values, so record its name, ID and import date.

### 3.5 Create the credential Cloud API Adapter (CAA) uses to create VSIs

Use an API key for testing, or a trusted profile if you use Secrets Manager or want to avoid a long-lived key. The credential is stored in the cluster (3.7), so keep its permissions minimal.

Option A: API key. Write it to a file so it isn't printed on screen:

```bash
ibmcloud iam api-key-create peerpods-poc-key -d "CoCo POC peer pods" --file ./peerpods-apikey.json
chmod 600 ./peerpods-apikey.json
export IBMCLOUD_API_KEY=$(jq -r .apikey ./peerpods-apikey.json)
```

Option B: trusted profile (IBM's steps a to e):

```bash
ibmcloud iam trusted-profile-create PROFILE_NAME --description "CoCo POC peer pods"
ibmcloud iam trusted-profile-rule-create PROFILE_NAME_OR_ID --name RULE_NAME --type Profile-CR --conditions claim:namespace,operator:EQUALS,value:$OSC_NS --cr-type ROKS_SA
ibmcloud iam trusted-profile-policy-create PROFILE_NAME_OR_ID --roles Editor,Writer --service-name is
ibmcloud iam trusted-profile-policy-create PROFILE_NAME_OR_ID --roles Viewer --resource-type resource-group --resource RESOURCE_GROUP_ID
ibmcloud iam trusted-profile-policy-create PROFILE_NAME_OR_ID --roles Viewer --service-name containers-kubernetes [--resource-group-id RESOURCE_GROUP_ID]
```

(Rule: pods in `$OSC_NS` may use the profile. Policy 1: create VSIs. Policy 2: Viewer on the resource group, so CAA can create VSIs there. Policy 3: Viewer on the Kubernetes service, so CAA can look up the cluster security group at startup.)

Check 3.5:

```bash
ibmcloud iam api-keys | grep -i peerpods-poc-key
ibmcloud iam trusted-profile PROFILE_NAME_OR_ID
ibmcloud iam trusted-profile-policies PROFILE_NAME_OR_ID
ibmcloud iam trusted-profile-rules PROFILE_NAME_OR_ID
```

Good: the key exists (Option A), or the profile shows one rule for `$OSC_NS` and the three policies (Option B). If a subcommand name differs in your CLI version, check `ibmcloud iam --help`.

Set `export IBMCLOUD_TRUSTED_PROFILE_ID=<profile-id>` for Option B.

### 3.6 SSH key (optional, test clusters only)

A key helps you debug a peer pod VSI that won't start. Skip it in production, where it widens the attack surface.

```bash
ibmcloud is keys
export SSH_KEY_ID=<key-id>
```

Good: the key is listed and `SSH_KEY_ID` is set. If you skip the key, remove the `IBMCLOUD_SSH_KEY_ID` line in 3.7.

### 3.7 Create the configuration objects

Work in a scratch directory and save the variables in a script so you can reload them:

```bash
mkdir -p ~/coco-poc/peerpods && cd ~/coco-poc/peerpods
cat > env-vars.sh <<'EOF'
export IBMCLOUD_API_KEY=<your API key>                 # remove if using a trusted profile
export IBMCLOUD_TRUSTED_PROFILE_ID=<trusted profile ID> # remove if using an API key
export CLUSTER_NAME=<cluster-name>
export PODVM_IMAGE_ID=<PodVM image ID>
export SSH_KEY_ID=<SSH key ID>                          # remove if you skipped 3.6
export VPC_ID=<VPC ID>                                  # IBM marks it optional, but the commands below use it
EOF
chmod 600 env-vars.sh
. ./env-vars.sh
```

Do not commit `env-vars.sh`, `peer-pods-secret.yaml` or any key file to git.

**1. Feature gates ConfigMap**

```bash
cat > feature-gates.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: osc-feature-gates
  namespace: $OSC_NS
data:
  deploymentMode: "DaemonSetFallback"   # or DaemonSet to force it
  confidential: "true"
  layeredImageDeployment: "false"
EOF
kubectl apply --dry-run=server -f feature-gates.yaml && kubectl apply -f feature-gates.yaml
```

**2. Credentials Secret**

```bash
cat > peer-pods-secret.yaml <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: peer-pods-secret
  namespace: $OSC_NS
type: Opaque
stringData:
  # either IBMCLOUD_API_KEY or IBMCLOUD_IAM_PROFILE_ID must be set;
  # if both are set, the API key is used
  IBMCLOUD_API_KEY: "$IBMCLOUD_API_KEY"
  IBMCLOUD_IAM_ENDPOINT: "https://iam.cloud.ibm.com/identity/token"
  IBMCLOUD_IAM_PROFILE_ID: "$IBMCLOUD_TRUSTED_PROFILE_ID"
EOF
kubectl apply --dry-run=server -f peer-pods-secret.yaml && kubectl apply -f peer-pods-secret.yaml
shred -u peer-pods-secret.yaml 2>/dev/null || rm -P peer-pods-secret.yaml
```

The Secret is readable by anyone with secret access in `$OSC_NS`, and the worker can see it. That is one more reason to use a trusted profile or a tightly scoped key.

**3. Peer pods ConfigMap**

```bash
cat > peer-pods-cm.yaml <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: peer-pods-cm
  namespace: $OSC_NS
data:
  CLOUD_PROVIDER: "ibmcloud"
  IBMCLOUD_PODVM_IMAGE_ID: "$PODVM_IMAGE_ID"
  IBMCLOUD_PODVM_INSTANCE_PROFILE_LIST: "bx3dc-2x10"
  IBMCLOUD_PODVM_INSTANCE_PROFILE_NAME: "bx3dc-2x10"
  IBMCLOUD_RESOURCE_GROUP_ID: "$(ibmcloud is vpc "$VPC_ID" -json | jq -r .resource_group.id)"
  IBMCLOUD_SSH_KEY_ID: "$SSH_KEY_ID"
  IBMCLOUD_VPC_ID: "$VPC_ID"
  IBMCLOUD_VPC_SG_ID: "$(ibmcloud ks security-group ls --cluster $CLUSTER_NAME -json | jq -r '.[] | select(.type == "cluster") | .id')"
  CLOUD_CONFIG_VERIFY: "false"
  CRI_RUNTIME_ENDPOINT: "/run/cri-runtime/containerd.sock"
  ENABLE_CLOUD_PROVIDER_EXTERNAL_PLUGIN: "false"
  VXLAN_PORT: ""
  TUNNEL_TYPE: ""
  INITDATA: ""
  PEERPODS_LIMIT_PER_NODE: "10"
EOF
grep -E "IMAGE_ID|RESOURCE_GROUP_ID|VPC_ID|VPC_SG_ID" peer-pods-cm.yaml
```

Check the generated values before applying. The four lines must show non-empty IDs. Empty values mean one of the lookup commands or variables failed.

```bash
kubectl apply --dry-run=server -f peer-pods-cm.yaml && kubectl apply -f peer-pods-cm.yaml
```

Notes on this ConfigMap (confirm the starred items with IBM):
- `IBMCLOUD_VPC_SG_ID` is the cluster security group `kube-<CLUSTER_ID>` (the peer pod VSIs are attached to it).
- `INITDATA` stays empty until Step 4 provides a Trustee.
- (*) `CLOUD_CONFIG_VERIFY: "false"` is IBM's example value. Ask what it controls before using it outside the POC.
- (*) `CRI_RUNTIME_ENDPOINT` points at a containerd socket in IBM's guide, while your nodes report cri-o. Keep IBM's value unless IBM says otherwise, and tell me if pods fail to start.
- `PEERPODS_LIMIT_PER_NODE` caps peer pod VSIs per worker (default 10). Each peer pod costs the worker about 250m CPU and 120Mi memory for the pod shell.

**4. KataConfig**

```bash
cat > kata-runtime-settings.yaml <<EOF
apiVersion: kataconfiguration.openshift.io/v1
kind: KataConfig
metadata:
  name: kata-runtime-settings
  namespace: $OSC_NS
spec:
  enablePeerPods: true
  logLevel: info
 #checkNodeEligibility: true
 #kataConfigPoolSelector:
 #  matchLabels:
 #    <label_key>: '<label_value>'
EOF
kubectl apply --dry-run=server -f kata-runtime-settings.yaml && kubectl apply -f kata-runtime-settings.yaml
```

Check 3.7 (objects exist):

```bash
kubectl get cm osc-feature-gates peer-pods-cm -n $OSC_NS
kubectl get secret peer-pods-secret -n $OSC_NS
kubectl get kataconfig -n $OSC_NS
```

### 3.8 Watch the Kata install and reboot the workers

Watch the node labels move through the states (every 30 to 60 seconds):

```bash
kubectl get nodes --output yaml | egrep "kata-ds-rpm-install|ibm-cloud.kubernetes.io/worker-id"
kubectl get kataconfig -n $OSC_NS
kubectl get pods -n $OSC_NS
```

States: `waiting_to_install`, `installing`, `installed`, `waiting_for_reboot`, `waiting_to_uninstall`, `uninstalling`, `uninstalled`.

When a node shows `waiting_for_reboot`, reboot the workers **one at a time**. Do the next only when the previous is `Ready` again:

```bash
kubectl get nodes -L ibm-cloud.kubernetes.io/worker-id
kubectl drain <node> --ignore-daemonsets --delete-emptydir-data
ibmcloud ks worker reboot --cluster $CLUSTER_NAME --worker <worker-id>
kubectl get nodes -w
kubectl uncordon <node>
```

If the `worker reboot` subcommand is not available for your cluster type, check `ibmcloud ks worker --help` or reboot from the console.

Check 3.8:

```bash
kubectl get nodes --output yaml | egrep "kata-ds-rpm-install"
kubectl get runtimeclass kata-remote
kubectl get ds osc-caa-ds -n $OSC_NS
kubectl get pods -n $OSC_NS -o wide
kubectl logs ds/osc-caa-ds -n $OSC_NS --tail=30
```

Good:
- Every worker shows `installed`, and the `KataConfig` is complete.
- The `kata-remote` RuntimeClass exists.
- `osc-caa-ds` has one pod per worker, all `Running`, and the logs have no repeating errors (credential or VPC API failures show here).

### 3.9 Check peer pod capacity

```bash
kubectl get nodes -o json | jq -r '[.items[] | select (.status.allocatable["kata.peerpods.io/vm"] != null)| .status.allocatable["kata.peerpods.io/vm"] | tonumber] | add'
kubectl get pods -A -o json | jq '.items[] | select(.spec.runtimeClassName == "kata-remote") | "\(.metadata.namespace)/\(.metadata.name)"' | wc -l
```

Good: the first command prints the total peer pod slots (10 per worker by default, so 20 with two workers). The second prints the number of `kata-remote` pods now running (0 at first).

To raise the limit later:

```bash
kubectl -n $OSC_NS patch cm peer-pods-cm --type merge -p '{"data":{"PEERPODS_LIMIT_PER_NODE":"24"}}'
kubectl -n $OSC_NS rollout restart daemonset/osc-caa-ds
```

### 3.10 Smoke test: a peer pod starts and a TDX VSI appears

This test needs no Trustee. The attestation call comes in Step 4.

Option A: IBM's example. The VM must pull from `docker.io`:

```bash
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: helloworld
    version: v1
  name: helloworld
spec:
  containers:
  - name: helloworld
    image: docker.io/istio/examples-helloworld-v1:1.0
    ports:
    - containerPort: 5000
  runtimeClassName: kata-remote
EOF
```

Option B (recommended): your own image from ICR, which also proves the registry path from the peer pod. Use a namespace without mesh injection (Step 7), or set `sidecar.istio.io/inject: "false"` as a label:

```bash
kubectl apply -f - <<EOF
apiVersion: v1
kind: Pod
metadata:
  name: peerpod-smoke
  namespace: $APP_NS
  labels:
    sidecar.istio.io/inject: "false"
spec:
  runtimeClassName: kata-remote
  imagePullSecrets:
  - name: coco-icr-pull
  containers:
  - name: app
    image: fr2.icr.io/env-conf-container-cr/my-python-app:v1
EOF
```

Check 3.10:

```bash
kubectl get pods -A | grep -E "helloworld|peerpod-smoke"
kubectl describe pod peerpod-smoke -n $APP_NS | tail -25
kubectl logs ds/osc-caa-ds -n $OSC_NS --tail=50
ibmcloud is instances --output JSON | jq -r '.[] | select(.profile.name=="bx3dc-2x10") | "\(.name)  \(.status)  \(.zone.name)"'
```

(Use `helloworld` instead of `peerpod-smoke -n $APP_NS` for Option A.)

Good:
- The pod reaches `Running`.
- A new VSI with profile `bx3dc-2x10` appears and goes from `starting` to `running`, in your VPC.
- The CAA logs show the VSI being created, with no credential or quota errors.

Delete the smoke pod when done. This also deletes its VSI:

```bash
kubectl delete pod peerpod-smoke -n $APP_NS
ibmcloud is instances | grep -i -E "podvm|peer"
```

Good: the VSI disappears (confirm within a few minutes, to avoid being billed for leftovers).

### 3.11 Troubleshooting

| Symptom | Where to look |
|---|---|
| Pod `Pending` or `ContainerCreating` for long | `kubectl describe pod`, then CAA logs: `kubectl logs ds/osc-caa-ds -n $OSC_NS` |
| CAA logs show IAM or VPC API errors | Credential and policies (3.5), IAM endpoint reachability from the worker (Step 1.9), resource group and VPC IDs in `peer-pods-cm` |
| VSI created but stuck `starting` | VSI logs in the console, the image ID (3.4), the profile and zone, and the SSH key if you set one |
| No slots for peer pods | `PEERPODS_LIMIT_PER_NODE` (3.9) |
| Operator problems | `kubectl logs deploy/controller-manager -n $OSC_NS` (the pod name is `controller-manager-<id>`) |

### 3.12 Removal order (important: wrong order leaves VSIs that you are billed for)

1. Delete every workload using `kata-remote`. This deletes its VSIs.

```bash
kubectl get pods -A -o json | jq '.items[] | select(.spec.runtimeClassName == "kata-remote") | "\(.metadata.namespace)/\(.metadata.name)"'
kubectl delete pod <name> -n <namespace>
```

2. Delete `KataConfig`, which removes Kata from the workers. Watch the labels until `waiting_for_reboot`, then reboot the workers one at a time. Wait until the deletion finishes before continuing. Do not continue if the `KataConfig` fails to delete.

```bash
kubectl delete kataconfig kata-runtime-settings -n $OSC_NS
```

3. Delete the ConfigMaps (`peer-pods-cm`, `osc-feature-gates`) and the `peer-pods-secret`. If you break the credentials or ConfigMaps first, CAA can't call the VPC API and you must remove VSIs by hand.
4. Uninstall the operator in OperatorHub, check that `$OSC_NS` is empty, then delete the namespace.

### Values to record (Step 3)

| Item | Value |
|---|---|
| Operator version | |
| Peer pod image name, ID, import date | |
| TDX instance profile | `bx3dc-2x10` (confirm) |
| Credential type and name | |
| `kube-<CLUSTER_ID>` security group ID | |
| `PEERPODS_LIMIT_PER_NODE` and total slots | |
| Open questions for IBM (CRI endpoint, `CLOUD_CONFIG_VERIFY`) | |

### Step 3 exit criteria

- [ ] Operator CSV `Succeeded`, `KataConfig` complete, and all workers `installed`.
- [ ] `kata-remote` RuntimeClass exists, and `osc-caa-ds` runs on every worker with clean logs.
- [ ] A smoke pod reaches `Running` and a `bx3dc-2x10` VSI is created, then removed when the pod is deleted.
- [ ] Registry pull from the peer pod works (Option B).
- [ ] Credentials are scoped and the temporary files are removed.

---

## Step 4: Trustee (KBS + Attestation Service + RVPS) on a VSI

Goal: run a Trustee in the same VPC, load a test secret (`default/kbsres1/key1`), point the peer pods at it with INITDATA, and prove that a peer pod can fetch the secret through CDH.

### Is IBM's Trustee setup the same as setting up from the Trustee GitHub repo?

Yes, it is the same. IBM's "Deploy a test Trustee" runs `git clone https://github.com/confidential-containers/trustee.git` and `docker compose up -d`, which is the repo's own docker compose deployment. IBM adds the VSI creation and the INITDATA wiring on top. What you should know about that compose deployment (I read it in the repo):

| Topic | What the compose setup does |
|---|---|
| Services | `kbs` (port 8080), `as` (gRPC 50004), `rvps` (gRPC 50003), and a one-shot `setup` container that generates keys and exits |
| Transport | `insecure_http = true`, so KBS speaks plain HTTP. Test only. In production, use HTTPS |
| Images | Prebuilt `ghcr.io/confidential-containers/staged-images/*:latest`. These move, so record digests |
| Admin auth | `setup` generates an Ed25519 key and a 10-year admin JWT in `kbs/config/docker-compose/admin-token`. `kbs-client --admin-token-file` uses it |
| Attestation token signing | A generated CA and a 90-day token certificate. Tokens live 5 minutes (`duration_min: 5`). KBS trusts the generated CA |
| Reference values | RVPS starts **empty** |
| Resource policy | The built-in default allows any non-`sample` TEE to read any resource |
| TDX collateral | The compose AS config has no TDX verifier settings, so the verifier default applies: Intel PCS at `https://api.trustedservices.intel.com/sgx/certification/v4/`. The Trustee VSI needs HTTPS egress to it, or you configure a PCCS |
| Published ports | Compose also publishes 50003 and 50004 on all interfaces. Only 8080 needs to be reachable from the cluster |
| Other options | The repo also has a Helm chart (`deployment/helm-chart`) for Kubernetes. IBM's guide doesn't use it |

Because RVPS is empty and the default policy is permissive, IBM's end-to-end test succeeds even though your image measurements aren't checked yet. A successful fetch proves the evidence path and the channel, not strong attestation. Step 5 (reference values) and Step 6 (policies) turn that on. The repo ships `affirming.rego`, which releases a resource only when the AS returns an `affirming` result.

### 4.0 Set variables

```bash
export CLUSTER_NAME=conf-cluster
export VPC_ID=<vpc-id>
export ZONE=<zone>
export SUBNET_ID=<subnet-id>
export SSH_KEY_ID=<ssh-key-id>
export OSC_NS=openshift-sandboxed-containers-operator
```

### 4.1 Prepare the network rules for the Trustee VSI

IBM's guide doesn't mention security groups, but the Trustee needs: inbound 8080 from the cluster (workers and peer pod VSIs share the `kube-<CLUSTER_ID>` group), inbound 22 for you, and outbound internet (apt, Docker, ghcr.io, and Intel PCS on 443).

```bash
KUBE_SG=$(ibmcloud ks security-group ls --cluster $CLUSTER_NAME -json | jq -r '.[] | select(.type == "cluster") | .id')
ibmcloud is security-group-create trustee-sg $VPC_ID
ibmcloud is security-group-rule-add trustee-sg inbound tcp --port-min 8080 --port-max 8080 --remote $KUBE_SG
ibmcloud is security-group-rule-add trustee-sg inbound tcp --port-min 22 --port-max 22 --remote <your-admin-cidr-or-sg>
ibmcloud is security-group-rule-add trustee-sg outbound all --remote 0.0.0.0/0
```

(Outbound `all` is a POC shortcut. Tighten it later.)

Check 4.1:

```bash
ibmcloud is security-group trustee-sg
ibmcloud is public-gateways
```

Good: three rules exist (8080 from the kube SG, 22, outbound all). The subnet has a public gateway, or another way to reach the internet (needed for package, image and Intel PCS access). In a restricted or on-prem environment, ask IBM which mirrors or proxies to use.

### 4.2 Create the Trustee VSI

IBM's guide hard-codes an Ubuntu image ID (`r014-85b1...`). Image IDs differ per region, so look up the one for your zone:

```bash
ibmcloud is images | grep -i ubuntu
export UBUNTU_IMAGE_ID=<id of an ubuntu amd64 image in your region>
```

Create the VSI. I added `--security-groups`, so check `ibmcloud is instance-create --help` if it errors:

```bash
ibmcloud is instance-create "$CLUSTER_NAME-trustee" "$VPC_ID" "$ZONE" "bx2-2x8" "$SUBNET_ID" \
  --image "$UBUNTU_IMAGE_ID" --keys "$SSH_KEY_ID" --allow-ip-spoofing false --security-groups trustee-sg
```

Check 4.2:

```bash
ibmcloud is instance "$CLUSTER_NAME-trustee" --output JSON | jq -r '.status, (.network_interfaces[].primary_ip.address)'
```

Good: the status is `running`, and the private IP prints. Record it as `TRUSTEE_IP`.

### 4.3 Install Docker and oras on the VSI

SSH to the private IP. IBM's tip: you can reach it from a pod or node in the cluster, since it is in the same VPC.

```bash
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo snap install oras --classic
```

Check 4.3:

```bash
docker --version
docker compose version
oras version
curl -sI https://ghcr.io | head -1
curl -s -o /dev/null -w "%{http_code}\n" https://api.trustedservices.intel.com/sgx/certification/v4/
```

Good: versions print, `ghcr.io` answers, and the Intel PCS URL returns an HTTP code (any HTTP code means reachable; a timeout means the AS can't fetch TDX collateral later).

### 4.4 Deploy Trustee from the GitHub repo

```bash
git clone https://github.com/confidential-containers/trustee.git
cd trustee
git rev-parse HEAD
sudo docker compose up -d
```

`git clone` takes the default branch. Record the commit from `git rev-parse HEAD`. The KBS protocol version must match the attestation agent in the peer pod image (the code I read requires exactly 0.4.0). If `/auth` fails later with a version error, the Trustee version and the peer pod image are out of step, so ask IBM which Trustee version their image expects.

Check 4.4:

```bash
sudo docker compose ps -a
sudo docker compose logs setup | tail -5
sudo docker compose logs kbs --tail=20
sudo docker compose logs as --tail=20
ls kbs/config/docker-compose
sudo ss -ltnp | grep -E ":8080|:50003|:50004"
```

Good:
- `kbs`, `as` and `rvps` are `Up`. `setup` shows `Exited (0)`.
- `ls` shows `private.key`, `public.pub`, `admin-token`, `ca-cert.pem`, `token.key` and `token-cert-chain.pem`.
- Ports 8080, 50003 and 50004 are listening.
- The `kbs` logs show it started and connected to `as` without errors.

Record the image digests, because `latest` moves:

```bash
sudo docker compose images
sudo docker inspect --format '{{index .RepoDigests 0}}' ghcr.io/confidential-containers/staged-images/kbs-grpc-as:latest
```

Test the KBS API locally. A JSON challenge containing a `nonce` proves KBS is up. The response must come with a `kbs-session-id` cookie:

```bash
curl -si -X POST http://127.0.0.1:8080/kbs/v0/auth -H 'Content-Type: application/json' \
  -d '{"version":"0.4.0","tee":"tdx","extra-params":{}}' | head -12
```

Good: `HTTP/1.1 200` with `set-cookie: kbs-session-id=...` and a nonce in the body. A 4xx still proves reachability, so tell me the body if you see one.

Protect the admin material. `setup` leaves `admin-token` world-readable (mode 644), and `private.key` is the key behind the admin identity:

```bash
chmod 600 kbs/config/docker-compose/admin-token kbs/config/docker-compose/private.key
```

### 4.5 Load the test secret

```bash
oras pull ghcr.io/confidential-containers/staged-images/kbs-client:latest
chmod +x kbs-client
cat > kbsres1_key1 << EOF
res1val1
EOF
./kbs-client --url http://127.0.0.1:8080 config --admin-token-file kbs/config/docker-compose/admin-token set-resource --resource-file kbsres1_key1 --path default/kbsres1/key1
```

Check 4.5:

```bash
find kbs/data -type f | head -20
```

Good: the `set-resource` command returns without an error, and the stored resource file shows under `kbs/data` (the storage layout may differ by version, so tell me what the `find` shows if you don't see `kbsres1`). Delete the plain text test file afterwards: `shred -u kbsres1_key1`.

### 4.6 Check the network path from the cluster

Run from your machine with the `conf-cluster` context. Set `TRUSTEE_IP` first:

```bash
export TRUSTEE_IP=<trustee private IP>
nettest() { kubectl run nettest-$RANDOM -n "$APP_NS" --rm -i --restart=Never \
  --image=fr2.icr.io/env-conf-container-cr/my-python-app:v1 \
  --overrides='{"spec":{"imagePullSecrets":[{"name":"coco-icr-pull"}]}}' \
  --command -- python -c "$1"; }
nettest "import http.client as h;c=h.HTTPConnection('$TRUSTEE_IP',8080,timeout=5);c.request('GET','/');print(c.getresponse().status)"
nettest "import socket;s=socket.socket();s.settimeout(5);print('50003 open' if s.connect_ex(('$TRUSTEE_IP',50003))==0 else '50003 closed')"
```

Good:
- The first command prints an HTTP status (any status means 8080 is reachable from the cluster).
- The second prints `50003 closed` (or times out). The AS and RVPS ports must not be reachable from the cluster.

If 8080 is blocked, fix `trustee-sg` (4.1) and the ACLs from Step 1.12.

### 4.7 Create INITDATA and wire it into peer pods

```bash
export KBS_SERVICE_ENDPOINT="http://$(ibmcloud is instance "$CLUSTER_NAME-trustee" --output JSON | jq -r '.network_interfaces[].primary_ip.address'):8080"
export INITDATA=$(cat <<EOF | gzip | base64 -w0
algorithm = "sha256"
version = "0.1.0"

[data]
"aa.toml" = '''
[token_configs]
[token_configs.coco_as]
url = "$KBS_SERVICE_ENDPOINT"

[token_configs.kbs]
url = "$KBS_SERVICE_ENDPOINT"
'''

"cdh.toml"  = '''
socket = 'unix:///run/confidential-containers/cdh.sock'
credentials = []

[kbc]
name = "cc_kbc"
url = "$KBS_SERVICE_ENDPOINT"
'''
EOF
)
```

Check the value decodes to what you expect (the content holds only URLs, no secrets):

```bash
echo "$KBS_SERVICE_ENDPOINT"
echo "$INITDATA" | base64 -d | gunzip
```

Good: the endpoint shows the right IP, and the decoded text shows the URLs in `aa.toml` and `cdh.toml`.

Choose how to apply it:

Option A: for all peer pods in the cluster, put it in `peer-pods-cm` and restart CAA. (IBM's Trustee page mentions a `peerpods-cluster.properties` file. That belongs to a different install method. With the operator install from Step 3, use the ConfigMap.)

```bash
kubectl -n $OSC_NS patch cm peer-pods-cm --type merge -p "{\"data\":{\"INITDATA\":\"$INITDATA\"}}"
kubectl -n $OSC_NS rollout restart daemonset/osc-caa-ds
kubectl -n $OSC_NS rollout status daemonset/osc-caa-ds
kubectl get pods -n $OSC_NS
```

Good: the `osc-caa-ds` pods show a fresh `AGE`. If a pod did not restart, delete it so it is re-created.

Option B (recommended while testing): per pod, with an annotation. It is safer when you test a new Trustee, because one bad INITDATA can't break every peer pod:

```yaml
metadata:
  annotations:
    io.katacontainers.config.hypervisor.cc_init_data: <the INITDATA value>
```

The annotation name `io.katacontainers.config.hypervisor.cc_init_data` is the one in the Trustee page and in the Cloud API Adaptor code. IBM's Step 7 text shows `io.katacontainers.config.runtime.cc_init_data`, which looks like a typo. Use the `hypervisor` one.

### 4.8 End-to-end test: fetch the secret from inside a peer pod

Use Option B annotation for this pod. Pick a namespace without mesh injection, or use the label shown:

```bash
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: attest-test
  namespace: $APP_NS
  labels:
    sidecar.istio.io/inject: "false"
  annotations:
    io.katacontainers.config.hypervisor.cc_init_data: "$INITDATA"
spec:
  runtimeClassName: kata-remote
  imagePullSecrets:
  - name: coco-icr-pull
  containers:
  - name: app
    image: fr2.icr.io/env-conf-container-cr/my-python-app:v1
EOF
kubectl get pod attest-test -n $APP_NS -w
```

When it is `Running`, call CDH from inside the pod (this is the same call App 1 will make):

```bash
kubectl exec -it attest-test -n $APP_NS -- sh -c 'curl -s http://127.0.0.1:8006/cdh/resource/default/kbsres1/key1; echo'
```

If `curl` isn't in the image, use Python (this image has it):

```bash
kubectl exec attest-test -n $APP_NS -- python -c "import urllib.request as u;print(u.urlopen('http://127.0.0.1:8006/cdh/resource/default/kbsres1/key1').read())"
```

Good: it prints `res1val1`. If `kubectl exec` is denied, the kata agent policy in the image or initdata is blocking exec. Tell me the error.

On the Trustee VSI, confirm the attestation traffic arrived:

```bash
cd ~/trustee
sudo docker compose logs kbs --since 10m | tail -30
sudo docker compose logs as --since 10m | tail -30
```

Good: the KBS logs show the auth, attest and resource requests for this pod, and the AS logs show a TDX evidence verification (they may show warnings about missing reference values, which is expected while RVPS is empty).

Optional: look at what the AS concluded. The token's payload shows the result (`ear.status`, trust vector). Print only the token, **never the `tee_keypair` field**:

```bash
kubectl exec attest-test -n $APP_NS -- python -c "import urllib.request as u,json;print(json.loads(u.urlopen('http://127.0.0.1:8006/aa/token?token_type=kbs').read())['token'])" | cut -d. -f2 | tr '_-' '/+' | base64 -d 2>/dev/null | jq .
```

Good: you see claims such as the TEE type and status. Expect something other than `affirming` for now, since there are no reference values. That gap is what Steps 5 and 6 close. The token lives for 5 minutes and holds no secret, but don't paste the `tee_keypair`.

Clean up:

```bash
kubectl delete pod attest-test -n $APP_NS
ibmcloud is instances | grep -i -E "podvm|peer"
```

Good: the peer pod VSI is gone.

### 4.9 Hardening backlog (do in Steps 5 and 6)

| Item | Why |
|---|---|
| HTTPS for KBS (`insecure_http = false` with a cert, and the cert in the initdata) | Plain HTTP exposes the attestation exchange to the network and the worker |
| Reference values in RVPS from your measured peer pod image | Without them nothing is checked |
| Replace the default resource policy (for example start with `affirming.rego`, then per-resource rules) | The default releases any resource to any non-sample TEE |
| PCCS or a controlled Intel PCS path | The AS needs TDX collateral |
| Rotate and store the admin key and token safely | The compose token is valid for 10 years |
| Close ports 50003 and 50004 to everything except localhost | Compose publishes them on all interfaces |
| Pin the repo commit and image digests, and back up `kbs/data` and `kbs/config/docker-compose` | Reproducibility and recovery |

Applying a policy later (from the repo README), for reference:

```bash
./kbs-client --url http://127.0.0.1:8080 config --admin-token-file kbs/config/docker-compose/admin-token set-resource-policy --policy-file kbs/sample_policies/affirming.rego
```

### 4.10 Teardown

```bash
# on the Trustee VSI
cd ~/trustee && sudo docker compose down
# from your machine
ibmcloud is instance-delete "$CLUSTER_NAME-trustee"
ibmcloud is security-group-delete trustee-sg
```

Note that `docker compose down` doesn't remove the key and data directories. Delete `kbs/data` and `kbs/config/docker-compose` keys on purpose if you need a clean start.

### Values to record (Step 4)

| Item | Value |
|---|---|
| Trustee VSI name, ID, private IP | |
| Ubuntu image ID and profile | |
| Trustee repo commit | |
| Image digests (kbs, as, rvps) | |
| KBS endpoint used in INITDATA | |
| INITDATA applied via (cluster ConfigMap or per-pod annotation) | |
| Security group and rules | |
| Result of the attestation test, and the `ear.status` seen | |

### Step 4 exit criteria

- [ ] Trustee VSI is running with `trustee-sg`, and 8080 is reachable from the cluster but 50003 and 50004 are not.
- [ ] `docker compose ps` shows `kbs`, `as` and `rvps` up, and `setup` exited 0.
- [ ] The test secret `default/kbsres1/key1` is loaded.
- [ ] INITDATA decodes correctly and is applied (ConfigMap or annotation).
- [ ] A peer pod returns `res1val1` from `127.0.0.1:8006`, and the KBS and AS logs show the request.
- [ ] Repo commit, image digests, and the known gaps (empty RVPS, permissive policy, HTTP) are recorded for Steps 5 and 6.







---

## Step 5: Pod VM image, initdata and reference values

Goal: deliver the KBS URL and certificate to the peer pod through initdata, set a kata agent policy, collect the real TDX measurements from a pod you trust, load them into RVPS, and prove that attestation passes with the right values and fails with a wrong one.

Done when: a peer pod attestation succeeds against your reference values and fails with a wrong one.

### What I verified in the repos (so you know what this step rests on)

| Topic | What the code and docs say |
|---|---|
| Reference values | RVPS keeps named values. The default TDX policy reads `mr_td`, `xfam`, `rtmr_1` and `rtmr_2`, and optionally `tdvfkernel` and `tdvfkernelparams`. A value is a list, and a claim passes if it matches any entry |
| `sample` provenance | The only extractor that works without signed provenance. It does not verify any signature and is meant for tests and demos. Values expire after 12 months by default. For production, use signed provenance (CoRIM or SWID) |
| Other checks in the default TDX policy | Not from RVPS: TDX tee type and Intel vendor ID, `tcb_status == "UpToDate"`, `collateral_expiration_status == "0"`, and debug off |
| Not checked by default | `rtmr_0` and `rtmr_3`. RTMR3 holds runtime events (the initdata digest event, for example), so don't pin it yet |
| Two kinds of failure | A measurement that doesn't match RVPS gives a token with a non-affirming status (no HTTP error). A broken evidence signature, report data or initdata binding makes the AS fail the request, so no token is issued |
| Initdata binding on TDX | The AS accepts it if `mr_config_id` is non-zero and equals the initdata digest. If `mr_config_id` is all zero, the AA records an `InitData` event in RTMR3 and the AS requires exactly one such event |
| Initdata is not secret | The host can read it. It is integrity-protected only |
| Pod VM default kata policy | The IBM/CAA peer pod image ships `allow-all.rego` and copies it to `/run/peerpod/policy.rego`. That is why `kubectl exec` worked in Step 4 |
| Tokens | The AS signs a token that carries the TDX claims and, when initdata is verified, `init_data` and `init_data_claims` |

### 5.0 Prerequisites and variables

- Step 4 works: a peer pod returned the test secret.
- You are on the Trustee VSI for the `kbs-client` commands, and on your workstation (with the `conf-cluster` context) for the `kubectl` commands.
- `jq` and `openssl` are installed on both. On the Trustee VSI: `sudo apt-get install -y jq`.

```bash
export TRUSTEE_IP=<trustee private IP>
export APP_NS=<your-app-namespace>        # a namespace WITHOUT Istio injection for this step
export OSC_NS=openshift-sandboxed-containers-operator
```

On the Trustee VSI (from `~/trustee`), define a helper once per terminal. It uses HTTPS, which you enable in 5.2:

```bash
cd ~/trustee
kbsc() { ./kbs-client --url "https://$TRUSTEE_IP:8080" --cert-file kbs/config/docker-compose/https.crt "$@"; }
export ADM="--admin-token-file kbs/config/docker-compose/admin-token"
```

Good: `kbsc --help` prints the usage.

### 5.1 What is bound where

| Item | Where it is set | How it is protected or checked |
|---|---|---|
| Peer pod image (kernel, initrd, rootfs, firmware) | Step 3 (`PODVM_IMAGE_ID`) | Measured into `mr_td`, `rtmr_1`, `rtmr_2`. Checked against RVPS |
| KBS URL and certificate | Initdata `aa.toml` and `cdh.toml` | The initdata digest is bound to the TD (`mr_config_id` or an RTMR3 event) |
| Kata agent policy | Initdata `policy.rego` | Same binding. The policy is enforced by the kata agent inside the VM |
| VM size, host firmware | IBM | Reflected in `mr_td` and possibly `rtmr_0` |
| Runtime events (initdata, image pulls) | Guest | RTMR3 (not pinned in this POC) |

Use initdata for the KBS URL and certificate, which is what IBM's guide and the CAA docs do. The older kernel command line route (`agent.aa_kbc_params`) I did not verify for your image, so skip it.

### 5.2 Enable HTTPS on KBS (self-signed, with the Trustee IP in the certificate)

Why now: initdata will carry the certificate, so create it before you build the initdata. Plain HTTP exposes the attestation exchange to the network and the worker.

On the Trustee VSI:

```bash
cd ~/trustee
cat > https.conf <<EOF
[req]
distinguished_name = dn
x509_extensions = v3
prompt = no
[dn]
CN = trustee
[v3]
subjectAltName = IP:$TRUSTEE_IP
EOF
openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
  -keyout kbs/config/docker-compose/https.key \
  -out kbs/config/docker-compose/https.crt -config https.conf
chmod 600 kbs/config/docker-compose/https.key
openssl x509 -in kbs/config/docker-compose/https.crt -noout -subject -ext subjectAltName -enddate
```

Good: the SAN shows `IP Address:<TRUSTEE_IP>` and the expiry is a year out (note it).

Edit the KBS config (the compose file mounts `kbs/config/docker-compose` into the container as `/opt/confidential-containers/kbs/user-keys`):

```bash
cp kbs/config/docker-compose/kbs-config.toml ~/kbs-config.toml.bak
sed -i 's|^insecure_http = true|insecure_http = false\nprivate_key = "/opt/confidential-containers/kbs/user-keys/https.key"\ncertificate = "/opt/confidential-containers/kbs/user-keys/https.crt"|' kbs/config/docker-compose/kbs-config.toml
sed -n 1,8p kbs/config/docker-compose/kbs-config.toml
sudo docker compose restart kbs
```

Check 5.2:

```bash
sudo docker compose ps
sudo docker compose logs kbs --tail=15
curl -s -o /dev/null -w "https: %{http_code}\n" --cacert kbs/config/docker-compose/https.crt https://$TRUSTEE_IP:8080/kbs/v0/auth
curl -s -o /dev/null -w "http: %{http_code}\n" --max-time 5 http://$TRUSTEE_IP:8080/kbs/v0/auth
kbsc config $ADM get-reference-value --id mr_td
```

Good:
- The config shows `insecure_http = false` with the two paths, and `kbs` is `Up` (if the logs show a permission error on the key, relax its mode to `640` and restart).
- The HTTPS call returns an HTTP code (a 4xx for a GET is fine). The plain HTTP call fails or errors, which shows HTTP is off.
- `get-reference-value` returns an error or an empty result now (nothing is loaded yet), but it must connect over TLS.

Important: from now on every peer pod needs the HTTPS URL and the certificate in its initdata (5.3). Pods still carrying the Step 4 HTTP initdata cannot reach KBS.

### 5.3 Build the initdata

**Kata agent policy.** The POC uses the policy files shipped with the CAA project, with one security fix:
- `SetPolicyRequest := true` lets the host replace the policy after boot. Set it to `false`.
- Exec is off by default in this file. For the POC variant turn it on, so you can use `kubectl exec`. Switch to the locked variant before any real use.

```bash
curl -fsSL -o policy-base.rego https://raw.githubusercontent.com/confidential-containers/cloud-api-adaptor/main/src/cloud-api-adaptor/podvm/files/etc/kata-opa/allow-all-except-exec-process.rego
sed 's/default SetPolicyRequest := true/default SetPolicyRequest := false/' policy-base.rego > policy-locked.rego
sed 's/default ExecProcessRequest := false/default ExecProcessRequest := true/' policy-locked.rego > policy-poc.rego
grep -n -E "SetPolicyRequest|ExecProcessRequest|ReadStreamRequest" policy-poc.rego policy-locked.rego
```

Good: `policy-poc.rego` has Exec `true`, SetPolicy `false`. `policy-locked.rego` has both `false`.

Limits of this policy: it still allows any container to be created (`CreateContainerRequest := true`). A per-workload policy that restricts the image, command and mounts is generated with Kata's `genpolicy` tool (see https://github.com/kata-containers/kata-containers/blob/main/docs/how-to/how-to-use-the-kata-agent-policy.md). That is the production route.

**Initdata file.** This puts the certificate in both config files and the policy inline. I recommend `sha384` (the CAA and Trustee docs use it, and 48 bytes matches the TDX register size). IBM's guide uses `sha256`. Pick one and use it everywhere. If the AS later reports an initdata mismatch, switch and test again.

```bash
export KBS_URL="https://$TRUSTEE_IP:8080"
export KBS_CERT="$(cat kbs/config/docker-compose/https.crt)"
export POLICY="$(cat policy-poc.rego)"
cat > initdata.toml <<EOF
algorithm = "sha384"
version = "0.1.0"

[data]
"aa.toml" = '''
[token_configs]
[token_configs.coco_as]
url = "$KBS_URL"

[token_configs.kbs]
url = "$KBS_URL"
cert = """
$KBS_CERT
"""
'''

"cdh.toml" = '''
socket = 'unix:///run/confidential-containers/cdh.sock'
credentials = []

[kbc]
name = "cc_kbc"
url = "$KBS_URL"
kbs_cert = """
$KBS_CERT
"""
'''

"policy.rego" = '''
$POLICY
'''
EOF
python3 -c "import tomllib;d=tomllib.load(open('initdata.toml','rb'));print(list(d['data'].keys()))"
sha384sum initdata.toml
export INITDATA=$(gzip -c initdata.toml | base64 -w0)
echo ${#INITDATA}
```

Notes: the `coco_as` entry follows IBM's example, and it has no certificate option. The CDH flow in this POC uses the `kbs` entry. Keep `initdata.toml` in git.

Good:
- The Python check prints `['aa.toml', 'cdh.toml', 'policy.rego']`, which proves the TOML parses.
- The SHA-384 prints. Record it as the **initdata digest** (needed in 6.1).
- The encoded length prints. Peer pod annotations have size limits, so tell me if the pod is rejected.

Apply it per pod through the annotation (as in 4.8), using the `hypervisor` annotation name. For the whole cluster, patch `peer-pods-cm` and restart CAA (4.7). Do the per-pod route first.

### 5.4 Launch a reference pod and collect its measurements

This trusts the pod you launch (trust on first use), so do it in a controlled moment, with the IBM image you intend to use and the final initdata.

```bash
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: golden-ref
  namespace: $APP_NS
  labels:
    sidecar.istio.io/inject: "false"
  annotations:
    io.katacontainers.config.hypervisor.cc_init_data: "$INITDATA"
spec:
  runtimeClassName: kata-remote
  imagePullSecrets:
  - name: coco-icr-pull
  containers:
  - name: app
    image: fr2.icr.io/env-conf-container-cr/my-python-app:v1
EOF
kubectl get pod golden-ref -n $APP_NS -w
```

When it is `Running`, fetch the attestation token. Only the token is printed, never the `tee_keypair`:

```bash
kubectl exec golden-ref -n $APP_NS -- python -c "import urllib.request as u,json;print(json.loads(u.urlopen('http://127.0.0.1:8006/aa/token?token_type=kbs',timeout=60).read())['token'])" > golden.jwt
python3 - <<'PY' > golden-claims.json
import base64, json
p = open("golden.jwt").read().strip().split(".")[1]
p += "=" * (-len(p) % 4)
print(json.dumps(json.loads(base64.urlsafe_b64decode(p)), indent=2))
PY
jq '.submods.cpu0 | del(."ear.veraison.annotated-evidence")' golden-claims.json
```

(This decode handles base64 padding. Use it instead of the one-liner in 4.8 if that one failed.)

Extract the values:

```bash
TDX=$(jq -c '[.. | objects | select(has("quote"))][0]' golden-claims.json)
echo "$TDX" | jq '{tcb_status, collateral_expiration_status, debug: (.td_attributes.debug // .quote.body.td_attributes), mr_td: .quote.body.mr_td, xfam: .quote.body.xfam, rtmr_0: .quote.body.rtmr_0, rtmr_1: .quote.body.rtmr_1, rtmr_2: .quote.body.rtmr_2, rtmr_3: .quote.body.rtmr_3, mr_config_id: .quote.body.mr_config_id}'
jq '[.. | objects | select(has("init_data_claims"))][0] | {init_data, init_data_claims}' golden-claims.json | head -40
```

Good: you see the claims. Check these:
- `tcb_status` is `UpToDate` and `collateral_expiration_status` is `"0"`. If not, the default policy can't affirm the hardware even with correct values. See the decision in 5.6.
- `mr_config_id`: non-zero means the host bound your initdata (compare it with the SHA-384 from 5.3). All zero means the binding is through an RTMR3 event.
- The status of the first command is probably not `affirming` yet, because RVPS is empty.

Stability test. Launch two more reference pods (delete and recreate `golden-ref` under new names), and compare which registers stay identical:

```bash
for f in golden-claims*.json; do echo "== $f"; jq -c '[.. | objects | select(has("quote"))][0].quote.body | {mr_td, xfam, rtmr_0, rtmr_1, rtmr_2, rtmr_3}' $f; done
```

Good: `mr_td`, `xfam`, `rtmr_1` and `rtmr_2` are identical across launches. If `rtmr_0` differs by VM size or launch, that is why it isn't pinned. If RTMR1 or RTMR2 changes between launches, tell me, because pinning would break.

Ask IBM for their official expected values (or release notes) for the image you imported, and cross-check them. IBM updating the host firmware will change `mr_td`, so plan to hold more than one value (5.5).

### 5.5 Load the reference values into RVPS

From the extracted claims (still on a machine that has `golden-claims.json`; copy the file to the Trustee VSI if needed, since it contains no secrets):

```bash
TDX=$(jq -c '[.. | objects | select(has("quote"))][0]' golden-claims.json)
MR_TD=$(echo "$TDX" | jq -r .quote.body.mr_td)
XFAM=$(echo "$TDX" | jq -r .quote.body.xfam)
RTMR_1=$(echo "$TDX" | jq -r .quote.body.rtmr_1)
RTMR_2=$(echo "$TDX" | jq -r .quote.body.rtmr_2)
for v in MR_TD XFAM RTMR_1 RTMR_2; do echo "$v=${!v}"; done
```

Good: four non-empty hex strings print (no `null`).

Register them (each call stores the value as a one-element list):

```bash
kbsc config $ADM set-sample-reference-value mr_td "$MR_TD"
kbsc config $ADM set-sample-reference-value xfam "$XFAM"
kbsc config $ADM set-sample-reference-value rtmr_1 "$RTMR_1"
kbsc config $ADM set-sample-reference-value rtmr_2 "$RTMR_2"
```

Check 5.5:

```bash
for n in mr_td xfam rtmr_1 rtmr_2; do echo "== $n"; kbsc config $ADM get-reference-value --id $n; done
ls -R kbs/data/reference-values | head
```

Good: each name returns its value (and an expiry about 12 months out), and files exist under `kbs/data/reference-values`.

To accept more than one value for a name (for example, during an IBM firmware change), use a provenance file with a list per name:

```bash
cat > rv-prov.json <<EOF
{"mr_td": ["$MR_TD", "<second accepted mr_td>"]}
EOF
kbsc config $ADM set-reference-value --type sample --provenance-file rv-prov.json
```

Optional, for a stricter boot chain check: add `tdvfkernel` and `tdvfkernelparams` (the digests of the `File(kernel)` and `LOADED_IMAGE::LoadOptions` events under `uefi_event_logs`). The default policy then moves the executables result from 4 to 3. Skip it for now.

### 5.6 Positive test: attestation succeeds with your values

Re-launch a pod (a fresh one, not `golden-ref`) with the same initdata and fetch its token again:

```bash
kubectl delete pod golden-ref -n $APP_NS
# re-run the pod manifest from 5.4 under the name check-ok, then:
kubectl exec check-ok -n $APP_NS -- python -c "import urllib.request as u,json;print(json.loads(u.urlopen('http://127.0.0.1:8006/aa/token?token_type=kbs',timeout=60).read())['token'])" > ok.jwt
python3 - <<'PY' | jq '.submods.cpu0 | del(."ear.veraison.annotated-evidence")'
import base64, json
p = open("ok.jwt").read().strip().split(".")[1]
p += "=" * (-len(p) % 4)
print(json.dumps(json.loads(base64.urlsafe_b64decode(p))))
PY
```

Good: `ear.status` is `affirming`. In the trust vector, `hardware` is 2, `executables` is 3 or 4, and `configuration` is 2.

If it is not affirming, read the vector. The defaults mean failure: executables 33, hardware 97, configuration 36.

| Vector entry | What failed |
|---|---|
| `hardware` | `mr_td` mismatch, or `tcb_status` not `UpToDate`, or collateral expired |
| `executables` | `rtmr_1` or `rtmr_2` mismatch |
| `configuration` | Debug is on, or `xfam` mismatch |

Decision if `tcb_status` is not `UpToDate`: either ask IBM about the platform TCB level, or accept an explicit set of statuses in your own policy (6.1, `allowed_tcb_status`), and record that as a risk. Don't do it silently.

### 5.7 Negative test: attestation fails with a wrong value

Step 4's resource policy is still the permissive default, so a wrong measurement still gets a token and the secret. This step shows the failed measurement in the token, and then makes it a hard failure with a built-in policy.

Save the current values, then break one (`rtmr_2` set to 96 zeros):

```bash
for n in mr_td xfam rtmr_1 rtmr_2; do kbsc config $ADM get-reference-value --id $n; done > rv-backup.txt
kbsc config $ADM set-sample-reference-value rtmr_2 "$(printf '0%.0s' {1..96})"
kbsc config $ADM get-reference-value --id rtmr_2
```

Launch a new pod (`check-bad`) with the same manifest, fetch its token as in 5.6, and decode it.

Good: `ear.status` is `warning` or worse, and the `executables` entry is 33. The pod still received the token, because a measurement mismatch is not an error.

Now enforce it. The repo has a built-in policy that releases resources only for an affirming token:

```bash
kbsc config $ADM set-resource-policy --affirming
```

Test the fetch from the bad pod (the helper `getres` is defined in 6.4; for now use this one-liner):

```bash
kubectl exec check-bad -n $APP_NS -- python -c "import urllib.request as u,urllib.error as e
try: print('HTTP 200', len(u.urlopen('http://127.0.0.1:8006/cdh/resource/default/kbsres1/key1',timeout=60).read()))
except e.HTTPError as x: print('HTTP', x.code, x.read()[:200])"
```

Good: it does not return the secret. Confirm on the Trustee VSI that the KBS logged a denial:

```bash
sudo docker compose logs kbs --since 10m | grep -i -E "403|forbidden|policy" | tail
```

Restore the good value and re-test:

```bash
kbsc config $ADM set-sample-reference-value rtmr_2 "$RTMR_2"
kubectl delete pod check-bad -n $APP_NS
# launch check-ok2 with the same manifest, then run the same fetch
```

Good: the fetch now succeeds with HTTP 200, so the same pod configuration passes with the right value and fails with the wrong one. That meets this step's "done when".

Clean up: `kubectl delete pod check-ok check-ok2 check-bad -n $APP_NS --ignore-not-found`, and check `ibmcloud is instances | grep -i -E "podvm|peer"` shows no leftovers.

### 5.8 Notes and open points (confirm with IBM)

- Whether the IBM host sets `mr_config_id`. This decides how initdata is pinned in 6.1.
- Whether `sha256` or `sha384` initdata binds correctly on the IBM platform. 5.3 tells you what to watch for in the AS logs.
- The platform's `tcb_status`, and how IBM handles TCB updates.
- IBM's published values for the peer pod image, and a notice process for firmware or image changes.
- You pinned no RTMR3 value. Runtime events (image pulls, and the sidecar from Step 7) land there.

### Values to record (Step 5)

| Item | Value |
|---|---|
| Initdata SHA-384 (and algorithm used) | |
| `mr_td`, `xfam`, `rtmr_1`, `rtmr_2` | |
| `mr_config_id` (zero or not) | |
| `tcb_status`, `collateral_expiration_status` | |
| Reference value expiry date | |
| KBS certificate expiry date | |
| Stable across launches (yes/no, which registers) | |

### Step 5 exit criteria

- [ ] KBS serves HTTPS only, and the certificate (with the Trustee IP) is in the initdata.
- [ ] Initdata carries `aa.toml`, `cdh.toml` and a kata policy with `SetPolicyRequest := false`, and its digest is recorded.
- [ ] Reference values for `mr_td`, `xfam`, `rtmr_1` and `rtmr_2` are in RVPS, and they were stable across launches.
- [ ] A reference pod gets an `affirming` token.
- [ ] With a wrong `rtmr_2` the token is not affirming, and with `--affirming` the secret fetch is denied. With the right value it works again.

---

## Step 6: Policies and secret

Goal: replace the permissive defaults with real policies: a custom attestation (AS) policy for TDX, and a KBS resource policy that releases one named resource only to an affirming TDX attestation. Upload the real secret `default/kbsres1/key1`.

Done when: an allowed pod gets the secret, and a pod with a wrong measurement gets a 403.

### What I verified

| Topic | What the code says |
|---|---|
| Two policy layers | The AS policy turns evidence into a trust vector and a status. The KBS resource policy decides what a given status may read |
| AS policy upload | `kbs-client config set-attestation-policy --type rego --id <id> --policy-file <file>` |
| Default AS policy ID | The built-in policy is stored as `default_cpu`. The AS builds the policy ID as `<selected id>_<tee class>`, with `default` as the selected id when none is given and `cpu` as the class for TDX |
| Starting point | The default policy file is `attestation-service/src/ear_token/ear_default_policy_cpu.rego` in the Trustee repo |
| Resource policy upload | `set-resource-policy --policy-file <file>`, or built-ins `--affirming`, `--deny-all`, `--allow-all`, `--default` |
| Resource policy input | Token claims as `input` (for example `input.submods.cpu0["ear.status"]`). `data.plugin` is `"resource"` for resource requests, and `data["resource-path"]` is a three-item list like `["default","kbsres1","key1"]` |
| HTTP codes | A policy deny returns 403. A missing token returns 401 |

### 6.0 Prerequisites

- Step 5 complete: reference values loaded, a pod gets an `affirming` token, and `kbsc` and `$ADM` from 5.0 are defined.
- A copy of the current default AS policy, for rollback and as a base:

```bash
cd ~/trustee
curl -fsSL -o as-policy-default.rego https://raw.githubusercontent.com/confidential-containers/trustee/main/attestation-service/src/ear_token/ear_default_policy_cpu.rego
wc -l as-policy-default.rego
```

Good: the file downloads (it is a few hundred lines).

### 6.1 Write the attestation policy (TDX only)

This keeps the structure of the default policy (same defaults and the same `trust_claims` block) and keeps only the TDX logic. It requires the firmware, boot chain, configuration and, optionally, the initdata digest.

Decide two things first:
- `allowed_tcb_status`: start with `{"UpToDate"}`. If 5.4 showed another status and IBM accepts it, add it here explicitly and document why.
- The initdata line: enable it only if 5.4 showed a **non-zero** `mr_config_id` that equals your SHA-384 digest. If `mr_config_id` is all zero, leave it commented and tell me, because the initdata then needs a different rule (the AS verifies the RTMR3 binding, and I would write the rule against the `init_data_claims` shape in your golden token).

```bash
cat > as-policy-tdx.rego <<'EOF'
package policy
import rego.v1

default executables := 33
default hardware := 97
default configuration := 36
default file_system := 0
default instance_identity := 0
default runtime_opaque := 0
default storage_opaque := 0
default sourced_data := 0

trust_claims := {
	"executables": executables,
	"hardware": hardware,
	"configuration": configuration,
	"file-system": file_system,
	"instance-identity": instance_identity,
	"runtime-opaque": runtime_opaque,
	"storage-opaque": storage_opaque,
	"sourced-data": sourced_data,
}

# Accepted platform TCB statuses. Widen only with a written reason.
allowed_tcb_status := {"UpToDate"}

# Boot chain (kernel, initrd, command line) matches the reference values.
executables := 3 if {
	input.tdx
	input.tdx.quote.body.rtmr_1 in query_reference_value("rtmr_1")
	input.tdx.quote.body.rtmr_2 in query_reference_value("rtmr_2")
}

# Genuine TDX, expected firmware, acceptable TCB level, fresh collateral.
hardware := 2 if {
	input.tdx
	input.tdx.quote.header.tee_type == "81000000"
	input.tdx.quote.header.vendor_id == "939a7233f79c4ca9940a0db3957f0607"
	input.tdx.quote.body.mr_td in query_reference_value("mr_td")
	input.tdx.tcb_status in allowed_tcb_status
	input.tdx.collateral_expiration_status == "0"
}

# Debug off, expected XFAM, and (optional) the exact initdata (KBS cert + kata policy).
configuration := 2 if {
	input.tdx
	input.tdx.td_attributes.debug == false
	input.tdx.quote.body.xfam in query_reference_value("xfam")
	# Uncomment ONLY if mr_config_id is non-zero (see 6.1 text):
	# input.init_data in query_reference_value("init_data")
}
EOF
```

If you enabled the initdata line, register its reference value now. It is the `mr_config_id` hex from 5.4 (the AS exposes it as the `init_data` claim for TDX):

```bash
MRCFG=$(echo "$TDX" | jq -r .quote.body.mr_config_id)
kbsc config $ADM set-sample-reference-value init_data "$MRCFG"
kbsc config $ADM get-reference-value --id init_data
```

Good: `get-reference-value` shows the value, and it equals the SHA-384 from 5.3.

Upload the policy (the ID `default_cpu` replaces the built-in TDX/CPU policy):

```bash
kbsc config $ADM set-attestation-policy --type rego --id default_cpu --policy-file as-policy-tdx.rego
sudo docker compose logs as --tail=15
```

Check 6.1: launch a pod (`check-p1`) with the unchanged initdata, get its token (as in 5.6), and decode it.

Good: `ear.status` is `affirming` with `hardware` 2, `executables` 3 and `configuration` 2. If the policy fails to parse, the AS logs show a policy error, and nothing else changes until a valid policy exists. To roll back: 6.6.

I'm fairly sure about the policy ID (`default_cpu`) from the code, but the proof is behavioural, and the initdata test in 6.4 (T3) shows the custom policy is really active.

### 6.2 Write the KBS resource policy

It releases only `default/kbsres1/key1`, only for the `resource` plugin, only when the attestation is `affirming` and comes from TDX evidence (this also excludes the `sample` TEE).

```bash
cat > kbs-resource-policy.rego <<'EOF'
package policy
import rego.v1

default allow := false

plugin := data.plugin

cpu := input.submods.cpu0

allowed_resources := {["default", "kbsres1", "key1"]}

allow if {
	plugin == "resource"
	data["resource-path"] in allowed_resources
	cpu["ear.status"] == "affirming"
	cpu["ear.veraison.annotated-evidence"].tdx
}
EOF
kbsc config $ADM set-resource-policy --policy-file kbs-resource-policy.rego
sudo docker compose logs kbs --tail=10
```

Good: the upload returns without an error. A pod with the correct configuration still gets the secret (6.4 T1).

Later hardening ideas (not needed now): add a per-workload rule that also pins the initdata claim, so each workload can read only its own resources, and split resources by repository (for example `default/app1/...`).

### 6.3 Upload the real secret

Generate a random secret. Don't reuse the `res1val1` test value. It is also the key App 1 uses for its HMAC:

```bash
openssl rand -base64 32 > key1.txt
chmod 600 key1.txt
sha256sum key1.txt | cut -c1-16          # note this fingerprint: it lets you check retrieval without printing the secret
kbsc config $ADM set-resource --path default/kbsres1/key1 --resource-file key1.txt
```

A second secret outside the allowlist, to prove denial in T4:

```bash
echo "not-for-this-workload" > other.txt
kbsc config $ADM set-resource --path default/kbsres1/other --resource-file other.txt
find kbs/data -type f | grep -i kbsres1
```

Check 6.3: both resource files exist under `kbs/data`. Store a copy of `key1.txt` in your vault, then delete the local files:

```bash
shred -u key1.txt other.txt 2>/dev/null || rm -P key1.txt other.txt
```

Note: with this storage backend the KBS keeps resources as plain files in `kbs/data/kbs-storage`. Protect the Trustee VSI (disk encryption, SSH access, the security group). The repo docs describe other backends (`kbs/docs/resource_storage_backend.md`, and `kbs/docs/vault_kv.md` for Vault).

### 6.4 Tests

A helper that fetches a resource from inside a pod without printing the secret (run on your workstation, with the `conf-cluster` context):

```bash
getres() { kubectl exec -i "$1" -n $APP_NS -- python - "$2" <<'PY'
import sys, urllib.request, urllib.error, hashlib
p = sys.argv[1]
try:
    d = urllib.request.urlopen("http://127.0.0.1:8006/cdh/resource/" + p, timeout=90).read()
    print("HTTP 200 sha256[:16]:", hashlib.sha256(d).hexdigest()[:16], "len:", len(d))
except urllib.error.HTTPError as e:
    print("HTTP", e.code, e.read()[:300])
PY
}
```

Every test pod uses the manifest from 5.4 under a new name, with the annotation set from the initdata you want to test.

**T1: allowed pod gets the secret.** Pod `t1` with the correct initdata.

```bash
getres t1 default/kbsres1/key1
```

Good: `HTTP 200`, and the `sha256[:16]` equals the fingerprint you noted in 6.3.

**T2: wrong measurement gives 403.** Break `rtmr_2` as in 5.7, launch `t2`, then:

```bash
kbsc config $ADM set-sample-reference-value rtmr_2 "$(printf '0%.0s' {1..96})"   # on the Trustee VSI
getres t2 default/kbsres1/key1
kbsc config $ADM set-sample-reference-value rtmr_2 "$RTMR_2"                     # restore
```

Good: `HTTP 403` (or an error body that names the KBS denial), and the KBS logs show the deny. After the restore, `t1`-style pods succeed again.

**T3: modified initdata gives 403 (needs the initdata line from 6.1).** Change one character in `policy-poc.rego` (for example flip `ExecProcessRequest` to `false`), rebuild `INITDATA` as in 5.3, launch `t3` with that annotation:

```bash
getres t3 default/kbsres1/key1
```

Good: `HTTP 403`. The hardware digest of the initdata differs from the pinned reference, so `configuration` fails and the status is not affirming. This also proves that your custom AS policy is the one in force, since the old default policy doesn't check initdata. If you instead see an error before any token (not a 403), the initdata binding itself failed, which also blocks the pod, so read the AS logs. Restore the initdata afterwards.

**T4: resource outside the allowlist gives 403.** From the good pod `t1`:

```bash
getres t1 default/kbsres1/other
```

Good: `HTTP 403`, even though the pod is fully attested.

**T5 (optional): a client with no TDX evidence is refused.** On the Trustee VSI:

```bash
kbsc get-resource --path default/kbsres1/key1
```

Good: the request fails (no secret). This only exercises the sample attester if your AS build includes it. If it errors earlier for another reason, tell me what it says.

Read the logs for each test to confirm what you saw:

```bash
sudo docker compose logs kbs --since 15m | grep -i -E "attest|resource|403|forbidden|policy" | tail -30
sudo docker compose logs as --since 15m | tail -30
```

Clean up the test pods and check for leftover VSIs:

```bash
kubectl delete pod t1 t2 t3 -n $APP_NS --ignore-not-found
ibmcloud is instances | grep -i -E "podvm|peer"
```

### 6.5 Operating the policies

- Keep `as-policy-tdx.rego`, `kbs-resource-policy.rego`, `initdata.toml` and the policy files in git. There is no `get-policy` command in `kbs-client`, so the source files are the record.
- Change process: edit, upload, then re-run T1 to T4 before you rely on it.
- When IBM changes the host firmware or the peer pod image: collect new values (5.4), add them next to the old ones with the provenance file (5.5), roll the pods, and then remove the old values.
- Reference values expire after 12 months, and the KBS certificate after the days you chose in 5.2. Put both in your calendar.
- Admin access: the admin JWT is long-lived and sits in `admin-token`. Restrict who can read it, and rotate it with the key pair in `kbs/config/docker-compose`.

### 6.6 Rollback

```bash
# back to the built-in resource policy
kbsc config $ADM set-resource-policy --default
# back to the repo's default attestation policy
kbsc config $ADM set-attestation-policy --type rego --id default_cpu --policy-file as-policy-default.rego
```

Don't use `--allow-all` except for a short, isolated debug.

### 6.7 Notes and open points

- The `default_cpu` policy ID is inferred from the code. If a test shows the old behaviour, check the AS logs and tell me.
- I wrote the Rego by following the default policy's structure and I haven't executed it, so the AS and KBS logs are the first check after each upload. If the engine rejects the `in` check on the set of arrays in the KBS policy, I'll rewrite it with an explicit comparison.
- Whether the 403 reaches your app unchanged through CDH and the REST API server. T2 to T4 print what you actually get.
- The POC kata policy still allows any container. Generate per-workload policies with `genpolicy` for production.

### Values to record (Step 6)

| Item | Value |
|---|---|
| AS policy file, ID and git commit | |
| `allowed_tcb_status` and the reason | |
| Initdata pinned (yes/no) and why | |
| KBS resource policy file and git commit | |
| Secret path and fingerprint (first 16 hex of SHA-256) | |
| Results of T1 to T5 (status codes) | |

### Step 6 exit criteria

- [ ] The custom AS policy is uploaded, and a correctly configured pod is `affirming`.
- [ ] The KBS resource policy is uploaded and allows only `default/kbsres1/key1` for affirming TDX attestations.
- [ ] The real secret is uploaded, its fingerprint is recorded, and the local copies are deleted.
- [ ] T1 passes (secret retrieved, fingerprint matches), and T2, T3 and T4 return 403.
- [ ] Rollback commands are tested or at least documented, and the policy files are in git.












---

## Step 7: Red Hat OpenShift Service Mesh 3 (OSSM 3) installation on `conf-cluster`

Goal: install Red Hat OpenShift Service Mesh 3 from OperatorHub (sidecar mode), deploy the Istio control plane, the Istio CNI plugin and an ingress gateway, enroll the app namespace, and then prove that a sidecar works inside a peer pod. Every action has a check so you can confirm the previous command went well.

Numbering follows the master POC plan (Step 7 = service mesh). Renumber it if you add it after Step 2.

Docs version used: Red Hat OpenShift Service Mesh **3.2** (the supported-platforms page names release 3.2.9). Pin or compare it with the version IBM and Red Hat recommend.

### Reference links (official)

| Topic | Link |
|---|---|
| OSSM 3.2 documentation home | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2 |
| Installing guide (index) | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing |
| 1. Supported platforms and configurations | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-supported-platforms-configurations |
| 2. Installing OpenShift Service Mesh (operator, Istio, IstioCNI, discovery selectors, gateways, HA) | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-installing-service-mesh |
| 3. Sidecar injection (labels, revisions, IstioRevisionTag) | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-sidecar-injection |
| 6. cert-manager and istio-csr (your own CA) | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-cert-manager |
| 8. Multiple control planes on one cluster | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-deploying-multiple-service-meshes-on-single-cluster |
| 10. Istioctl tool | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-istioctl-tool |
| 11. Enabling mutual TLS | https://docs.redhat.com/en/documentation/red_hat_openshift_service_mesh/3.2/html/installing/ossm-enabling-mtls |
| Operator lifecycle and support policy | https://access.redhat.com/support/policy/updates/openshift_operators |
| Certified OpenShift CNI plugins (Calico question) | https://access.redhat.com/articles/5436171 |
| Sample ingress gateway manifest (Sail Operator) | https://raw.githubusercontent.com/istio-ecosystem/sail-operator/main/chart/samples/ingress-gateway.yaml |
| Sail Operator upstream repo | https://github.com/istio-ecosystem/sail-operator |
| Istio: sidecar injection troubleshooting | https://istio.io/latest/docs/ops/common-problems/injection/ |
| IBM: Setting up a Network Load Balancer for VPC (ROKS) | https://cloud.ibm.com/docs/openshift?topic=openshift-setup_vpc_nlb |
| IBM: Private VPC NLB (ROKS) | https://cloud.ibm.com/docs/openshift?topic=openshift-setup_vpc_nlb_pp |
| IBM: About Ingress on ROKS (Route, HAProxy router) | https://cloud.ibm.com/docs/openshift?topic=openshift-ingress-about-roks4 |

### What gets installed and where

| Component | Kind / namespace | Notes |
|---|---|---|
| Service Mesh 3 Operator | OLM Subscription, `openshift-operators` | Installed from OperatorHub, cluster-wide |
| Istio control plane (`istiod`) | `Istio` resource named `default`, namespace `istio-system` | Created from the `Istio` CR by the operator |
| Istio CNI plugin | `IstioCNI` resource named `default`, namespace `istio-cni` | DaemonSet on every worker |
| Ingress gateway | Deployment + Service, namespace `istio-ingress` | The operator does not deploy gateways; you do, with gateway injection |
| App namespace | Labels `istio-injection=enabled`, `istio-discovery=enabled` | Sidecars are injected at pod creation |

### Read first: caveats from the docs and from my analysis

1. **Platform support:** The 3.2 supported-platforms page lists OpenShift Container Platform, OpenShift Dedicated, ARO and ROSA. It does not name ROKS (IBM Cloud). Ask IBM and Red Hat in writing whether OSSM 3 is supported on your ROKS 4.19 cluster.
2. **CNI:** The doc lists OpenShift-SDN, OVN-Kubernetes and third-party CNIs that are certified by Red Hat and validated by Service Mesh. Your cluster uses Calico, so confirm it is covered (see the certified CNI list link above).
3. **Support scope:** The doc says supported configurations do not integrate external services such as virtual machines, and that `EnvoyFilter` is not supported except where documented. A peer pod is a pod from Kubernetes' point of view, but it runs in a VM, so ask whether that scenario is supported. Avoid `EnvoyFilter` for rate limiting.
4. **Sidecar mode only:** Ambient mode uses a node-level ztunnel on the worker, outside the TEE, so it can't protect traffic inside the CVM.
5. **IstioCNI and peer pods (my analysis, not in the docs):** The docs make `IstioCNI` a prerequisite for injection. With CNI enabled, sidecar injection normally uses an `istio-validation` init container instead of `istio-init`, and the CNI plugin sets the redirect rules in the pod's network namespace on the worker. In a peer pod the sidecar and app run in the VM, so those rules may not exist where they are needed. Section 7.11 is a gate test for this, and the result decides the next move with IBM and Red Hat.
6. **Single cluster mesh:** App 1 (peer pod) and App 2 must be in the same cluster to be in the same mesh. Install the mesh on `conf-cluster` and run App 2 there on the normal runtime.
7. **OSSM 2:** Don't run OSSM 2 and OSSM 3 in the same cluster (doc warning). 7.1 checks for it.

### 7.0 Set variables and confirm the cluster

```bash
export CLUSTER=conf-cluster
export APP_NS=<your-app-namespace>        # same as Step 1
export GW_NS=istio-ingress
export CR_HOST=useast.icr.io CR_NS=env-conf-container-cr IMG=my-python-app
ibmcloud oc cluster config --cluster $CLUSTER
kubectl config current-context
```

Good: the current context points at `conf-cluster`. Everything below runs there. The docs use `oc`; every `kubectl` command here is equivalent.

### 7.1 Pre-checks

```bash
kubectl get clusterversion
kubectl auth can-i '*' '*'
kubectl get crd | grep -i -E "maistra|servicemeshcontrolplane"
kubectl get crd | grep -i -E "istio.io|sailoperator.io"
kubectl get catalogsource -n openshift-marketplace
kubectl get packagemanifests -n openshift-marketplace | grep -i servicemesh
```

Good:
- OpenShift is 4.19.x (the doc requires 4.14 or later for the operator) and `can-i` returns `yes`.
- No `maistra` or `servicemeshcontrolplane` CRDs, so there is no OSSM 2.
- No existing Istio or Sail CRDs. If there are, stop and tell me what exists, because OSSM needs a clean scope.
- Catalog sources are `READY`, and a Service Mesh 3 package appears. Note its exact name.

Find the channels and default channel (replace `servicemeshoperator3` if your package name differs):

```bash
kubectl get packagemanifest servicemeshoperator3 -n openshift-marketplace -o jsonpath='{.status.defaultChannel}{"\n"}{.status.channels[*].name}{"\n"}'
```

Good: you see `stable` and version channels such as `stable-3.2`.

### 7.2 Install the operator from OperatorHub (console)

On OCP 4.19 this is **Operators -> OperatorHub**. Newer consoles call it **Ecosystem -> Software Catalog**, which is the wording in the doc.

1. Search for **Red Hat OpenShift Service Mesh 3** and select the Red Hat provided operator.
2. A prompt about community operators may appear (the doc mentions it). Read it and click **Continue** only if the operator is the Red Hat one.
3. Click **Install**, then choose:
   - **Installation Mode:** All namespaces on the cluster (installs in `openshift-operators`).
   - **Update channel:** `stable-3.2` to pin the minor version for the POC (the doc says `stable` installs the latest stable, and `stable-<version>` pins a version).
   - **Approval:** Automatic, as the doc recommends. Choose Manual if you want to control upgrades during the POC.
4. Click **Install**.

Optional CLI equivalent, not from the doc (use the package name and channel from 7.1):

```bash
cat <<'EOF' | kubectl apply -f -
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: servicemeshoperator3
  namespace: openshift-operators
spec:
  channel: stable-3.2
  installPlanApproval: Automatic
  name: servicemeshoperator3
  source: redhat-operators
  sourceNamespace: openshift-marketplace
EOF
```

Check 7.2: the operator is installed.

```bash
kubectl get subscription -n openshift-operators
kubectl get installplan -n openshift-operators
kubectl get csv -n openshift-operators | grep -i servicemesh
kubectl get pods -n openshift-operators
kubectl get crd | grep -E "sailoperator.io"
```

Good:
- The CSV phase is `Succeeded`. The doc's console check is **Installed Operators -> Succeeded**.
- The install plan shows `Complete` (or `Approved`).
- The operator pod is `Running`.
- The CRDs include `istios`, `istiocnis`, `istiorevisions` and `ztunnels` under `sailoperator.io`, plus `istio.io` groups such as `networking.istio.io` and `security.istio.io`.

### 7.3 Create the namespaces

```bash
kubectl create namespace istio-system
kubectl create namespace istio-cni
kubectl get ns istio-system istio-cni
```

Good: both namespaces are `Active`. (The doc creates them as projects, which is the same thing.)

### 7.4 Create the Istio resource (control plane)

Console path (the doc's procedure, which pre-fills the OpenShift-specific settings): **Operators -> Installed Operators**, select project `istio-system`, open the Service Mesh Operator, click **Istio -> Create Istio**, keep the name `default`, namespace `istio-system`, and click **Create**.

Then save what the console generated, so it is in your repo:

```bash
kubectl get istio default -o yaml > istio-default.yaml
```

Check 7.4:

```bash
kubectl get istio
kubectl get istiorevisions
kubectl get pods -n istio-system
kubectl get svc -n istio-system
kubectl get mutatingwebhookconfigurations | grep -i istio
kubectl logs deploy/istiod -n istio-system --tail=20
```

Good:
- `Istio` shows `READY`, status `Healthy` (the doc's check is `State: Healthy`) and a version of 1.24 or similar.
- The `IstioRevision` is named `default` (this decides the injection labels in 7.9). If it is not `default`, see "Other revision names" in 7.9.
- The `istiod` pod is `1/1 Running`.
- The `istiod` service exposes the xDS and CA ports (15012 is the one the sidecars in the VM will use).
- An `istio-sidecar-injector` mutating webhook exists.
- The logs show no repeated errors.

### 7.5 Scope the mesh with discovery selectors (recommended)

Why: by default the control plane discovers every namespace. Scoping keeps proxies' config small and limits the mesh to your namespaces. The doc says discovery selectors are not a security boundary.

```bash
kubectl label namespace istio-system istio-discovery=enabled
kubectl label namespace $GW_NS istio-discovery=enabled --overwrite 2>/dev/null || true
kubectl label namespace $APP_NS istio-discovery=enabled
```

Patch the `Istio` resource (this adds the doc's `discoverySelectors` section):

```bash
kubectl patch istio default --type merge -p '{"spec":{"values":{"meshConfig":{"discoverySelectors":[{"matchLabels":{"istio-discovery":"enabled"}}]}}}}'
```

Check 7.5:

```bash
kubectl get istio default -o jsonpath='{.spec.values.meshConfig.discoverySelectors}{"\n"}'
kubectl get istio
kubectl get ns -l istio-discovery=enabled
```

Good: the selector prints back, `Istio` returns to `Healthy`, and the labeled namespaces are listed. `$GW_NS` may not exist yet (created in 7.8). Re-run the `label` for it after 7.8.

### 7.6 Create the IstioCNI resource

Console path (the doc): **Installed Operators**, select project `istio-cni`, Service Mesh Operator, **IstioCNI -> Create IstioCNI**, name must be `default`, then **Create**.

CLI equivalent:

```bash
cat <<'EOF' | kubectl apply -f -
apiVersion: sailoperator.io/v1
kind: IstioCNI
metadata:
  name: default
spec:
  namespace: istio-cni
EOF
```

Check 7.6:

```bash
kubectl get istiocni
kubectl get ds -n istio-cni
kubectl get pods -n istio-cni -o wide
kubectl logs -n istio-cni ds/istio-cni-node --tail=20
```

Good:
- `IstioCNI` shows `Healthy` (the doc's check is `State: Healthy`).
- The DaemonSet desired equals ready (2 workers = 2 pods), `Running` on each node.
- The logs show no repeated errors.

### 7.7 Optional: control plane high availability (two `istiod` replicas)

You have two workers, so two replicas is reasonable. The doc's replica count method:

```bash
kubectl patch istio default --type merge -p '{"spec":{"values":{"pilot":{"autoscaleEnabled":false,"replicaCount":2}}}}'
kubectl get pods -n istio-system -l app=istiod
```

Good: two `istiod` pods are `Running`. The doc also describes autoscaling with `autoscaleMin` and `autoscaleMax`.

### 7.8 Ingress gateway (gateway injection)

The doc says the operator does not deploy gateways, and recommends a namespace separate from the control plane.

```bash
kubectl create namespace $GW_NS
kubectl label namespace $GW_NS istio-injection=enabled istio-discovery=enabled
kubectl get ns $GW_NS --show-labels
```

Download the sample (the doc applies it straight from `main`). Pin or review it before applying:

```bash
curl -fsSL -o ingress-gateway.yaml https://raw.githubusercontent.com/istio-ecosystem/sail-operator/main/chart/samples/ingress-gateway.yaml
grep -n -E "kind:|type:|name:|image:" ingress-gateway.yaml
```

Good: it defines a Deployment and a Service named `istio-ingressgateway` with image `auto` (the injector fills it in). Note the Service `type`.

Choose how to expose it. You can do both, but pick one first.

Option A: OpenShift Route, as in the doc (uses the VPC load balancer that ROKS already created for the cluster's HAProxy router):

```bash
kubectl apply -n $GW_NS -f ingress-gateway.yaml
oc expose service istio-ingressgateway -n $GW_NS
```

Option B: dedicated VPC Network Load Balancer, which matches your diagram (`LoadBalancer Service` in front of the gateway). Edit `ingress-gateway.yaml` before applying: set the Service `type: LoadBalancer` and add the IBM annotation shown below. For a private load balancer, follow the IBM private NLB doc linked above.

```yaml
metadata:
  annotations:
    service.kubernetes.io/ibm-load-balancer-cloud-provider-enable-features: "nlb"
```

```bash
kubectl apply -n $GW_NS -f ingress-gateway.yaml
```

Optional (from the doc): autoscaling and a disruption budget for the gateway. Create `gw-ha.yaml` with the following and apply it:

```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: ingressgatewayhpa
  namespace: istio-ingress
  labels: {istio: ingressgateway, release: istio}
spec:
  minReplicas: 2
  maxReplicas: 5
  metrics:
  - type: Resource
    resource:
      name: cpu
      target: {type: Utilization, averageUtilization: 80}
  scaleTargetRef: {apiVersion: apps/v1, kind: Deployment, name: istio-ingressgateway}
---
apiVersion: policy/v1
kind: PodDisruptionBudget
metadata:
  name: ingressgatewaypdb
  namespace: istio-ingress
  labels: {istio: ingressgateway, release: istio}
spec:
  minAvailable: 1
  selector:
    matchLabels: {istio: ingressgateway}
```

```bash
kubectl apply -f gw-ha.yaml
```

Check 7.8:

```bash
kubectl get pods -n $GW_NS -o wide
kubectl get svc -n $GW_NS
kubectl get route -n $GW_NS
kubectl logs deploy/istio-ingressgateway -n $GW_NS --tail=20
ibmcloud is load-balancers
```

Good:
- The gateway pod is `1/1 Running` (the gateway is the proxy itself, so it shows `1/1`). The logs show Envoy became ready and received config from `istiod`.
- Option A: a Route exists with a host. Option B: the Service gets an `EXTERNAL-IP` or hostname, and `ibmcloud is load-balancers` shows the new VPC load balancer as `online` and `active`.
- Reach test (no routes exist yet, so a 404 is the expected result and it proves the gateway answered):

```bash
GW_HOST=$(kubectl get route istio-ingressgateway -n $GW_NS -o jsonpath='{.spec.host}' 2>/dev/null || kubectl get svc istio-ingressgateway -n $GW_NS -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
curl -sI http://$GW_HOST | head -5
```

Good: an HTTP response (usually `404`) with a `server: istio-envoy` header. A timeout means the load balancer security group or ACL is blocking traffic. Check the SG and ACL from Step 1.12.

Now that `$GW_NS` exists, if you skipped it in 7.5, re-run `kubectl label namespace $GW_NS istio-discovery=enabled --overwrite`.

### 7.9 Enroll the app namespace and prove injection (normal runtime first)

Revision name check. The default labels below only work if the revision is called `default`:

```bash
kubectl get istiorevisions
```

Label the app namespace:

```bash
kubectl label namespace $APP_NS istio-injection=enabled istio-discovery=enabled --overwrite
kubectl get ns $APP_NS --show-labels
```

Other revision names: if the revision is not `default`, either use `istio.io/rev=<revision>` instead of `istio-injection=enabled`, or create an `IstioRevisionTag` named `default` that targets your `Istio` resource (doc section 3.4). Note that if both labels are present, `istio-injection` wins.

Deploy a throwaway test workload (normal runtime) with your image and pull secret:

```bash
kubectl create deployment mesh-test --image=$CR_HOST/$CR_NS/$IMG:v1 -n $APP_NS
kubectl patch deployment mesh-test -n $APP_NS -p '{"spec":{"template":{"spec":{"imagePullSecrets":[{"name":"coco-icr-pull"}]}}}}'
kubectl rollout status deployment/mesh-test -n $APP_NS --timeout=180s
```

Check 7.9:

```bash
kubectl get pods -n $APP_NS -l app=mesh-test
POD=$(kubectl get pod -n $APP_NS -l app=mesh-test -o jsonpath='{.items[0].metadata.name}')
kubectl get pod $POD -n $APP_NS -o jsonpath='{.spec.containers[*].name}{"\n"}{.spec.initContainers[*].name}{"\n"}'
kubectl logs $POD -n $APP_NS -c istio-proxy --tail=15
kubectl exec $POD -n $APP_NS -c istio-proxy -- curl -s -o /dev/null -w "%{http_code}\n" localhost:15021/healthz/ready
```

Good:
- The pod is `2/2 Running` (the doc's check for successful injection).
- Containers include your app and `istio-proxy`.
- **Write down the init container name.** With IstioCNI enabled it is normally `istio-validation`. If you see `istio-init`, tell me.
- The `istio-proxy` logs show it started and connected to `istiod`.
- The readiness call prints `200`.

If it stays `1/1`, the webhook did not inject. Check the namespace labels, the revision name, and the `istio-sidecar-injector` webhook, then see the Istio injection troubleshooting link above. Remember that injection only happens at pod creation, so run `kubectl rollout restart deployment/mesh-test -n $APP_NS` after changing labels.

### 7.10 Enable strict mTLS for the app namespace

Doc reference: chapter 11.2 (namespace) and 11.3 (whole mesh). Use the namespace scope now. Don't make it mesh-wide until the gateway and external callers are decided.

Confirm the API version first:

```bash
kubectl api-resources --api-group=security.istio.io
```

If `PeerAuthentication` shows version `v1`, use it as below. Otherwise change it to `v1beta1`.

```bash
cat <<EOF | kubectl apply -f -
apiVersion: security.istio.io/v1
kind: PeerAuthentication
metadata:
  name: default
  namespace: $APP_NS
spec:
  mtls:
    mode: STRICT
EOF
kubectl get peerauthentication -n $APP_NS
```

Check 7.10 (needs a meshed workload that listens on a port; use App 1 or App 2 once deployed, or set `SVC` and `PORT` for any meshed service):

```bash
export SVC=<service-name> PORT=<service-port>
kubectl run plain-test -n default --rm -i --restart=Never --image=$CR_HOST/$CR_NS/$IMG:v1 \
  --overrides='{"spec":{"imagePullSecrets":[{"name":"useast-icr-io-secret"}]}}' \
  --command -- python -c "import http.client as h;c=h.HTTPConnection('$SVC.$APP_NS.svc',$PORT,timeout=5);c.request('GET','/');print(c.getresponse().status)"
```

Good: from the non-meshed `default` namespace the call fails with a connection reset or similar (plain text is rejected). The same call from a pod in `$APP_NS` with a sidecar succeeds. Repeat this when App 1 is deployed. You can also validate encryption visually with Kiali (doc section 11.4).

### 7.11 GATE: sidecar inside a peer pod (run after Step 3 provides `kata-remote`)

This is the part that no Red Hat doc covers. Do not deploy App 1 until it passes or you have an agreed workaround.

```bash
kubectl get runtimeclass kata-remote
```

Create the test peer pod. The namespace already has injection enabled:

```bash
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: peerpod-mesh-test
  namespace: $APP_NS
  labels:
    app: peerpod-mesh-test
spec:
  runtimeClassName: kata-remote
  imagePullSecrets:
  - name: coco-icr-pull
  containers:
  - name: app
    image: $CR_HOST/$CR_NS/$IMG:v1
EOF
```

Observe:

```bash
kubectl get pod peerpod-mesh-test -n $APP_NS -o wide -w
kubectl get pod peerpod-mesh-test -n $APP_NS -o jsonpath='{.spec.containers[*].name}{"\n"}{.spec.initContainers[*].name}{"\n"}'
kubectl describe pod peerpod-mesh-test -n $APP_NS | tail -30
kubectl logs peerpod-mesh-test -n $APP_NS -c istio-proxy --tail=30
kubectl logs peerpod-mesh-test -n $APP_NS -c istio-validation 2>&1 | tail -20
kubectl logs peerpod-mesh-test -n $APP_NS -c istio-init 2>&1 | tail -20
ibmcloud is instances | grep -i -E "podvm|peer|$APP_NS"
```

(The `istio-validation` and `istio-init` logs: one of them will say the container does not exist. That is expected.)

Decision table:

| Observation | Meaning | Next step |
|---|---|---|
| `2/2 Running`, `istio-proxy` ready, and traffic from another meshed pod shows up in the sidecar (see below) | Redirect works inside the VM | Proceed to Steps 8 and 9 |
| `Init:Error` or `Init:CrashLoopBackOff` on `istio-validation` | CNI mode: the rules are not where the validator expects them in the VM | Raise with IBM and Red Hat. Options to ask about: `istio-init` mode for peer pods (needs a SCC that allows NET_ADMIN) or another interception approach |
| `2/2 Running` but traffic is not intercepted (no sidecar logs for inbound requests) | Pod starts but redirect rules are missing | Same as above |
| `istio-proxy` is not ready, logs show connection failures to `istiod:15012` | Network path from the VM to `istiod` is blocked | Check the VXLAN and egress path, SG, ACL, and any NetworkPolicy (Steps 1.8, 1.12) |
| Pod stuck `Pending` or `ContainerCreating` | Not a mesh issue (CAA, VPC API, image or profile) | Debug in Step 3 |

Prove interception. First enable access logs for the namespace (standard Istio Telemetry API, not from the Red Hat doc):

```bash
cat <<EOF | kubectl apply -f -
apiVersion: telemetry.istio.io/v1
kind: Telemetry
metadata:
  name: access-logs
  namespace: $APP_NS
spec:
  accessLogging:
  - providers:
    - name: envoy
EOF
```

Then call the peer pod from the meshed `mesh-test` pod (set `PEER_IP` from `kubectl get pod peerpod-mesh-test -o wide`, and `PORT` to a port your test image listens on) and check the logs:

```bash
PEER_IP=$(kubectl get pod peerpod-mesh-test -n $APP_NS -o jsonpath='{.status.podIP}')
kubectl exec deploy/mesh-test -n $APP_NS -c mesh-test -- python -c "import http.client as h;c=h.HTTPConnection('$PEER_IP',$PORT,timeout=5);c.request('GET','/');print(c.getresponse().status)"
kubectl logs peerpod-mesh-test -n $APP_NS -c istio-proxy --tail=10
```

Good: the peer pod's `istio-proxy` logs show the inbound request. Note that `kubectl exec` into peer pods may be blocked by the kata agent policy in your initdata, so use logs there.

Clean up the test pod when done:

```bash
kubectl delete pod peerpod-mesh-test -n $APP_NS
kubectl delete telemetry access-logs -n $APP_NS
```

### 7.12 Baseline AuthorizationPolicy (apply after Steps 8 and 9 create the apps)

Template that allows only App 2's identity to call App 1. It assumes App 1 pods carry the label `app: app1`, App 2 runs as service account `app2`, and the default trust domain `cluster.local` (confirm with `kubectl get istio default -o jsonpath='{.spec.values.meshConfig.trustDomain}'`; empty means the default).

```bash
cat <<EOF | kubectl apply -f -
apiVersion: security.istio.io/v1
kind: AuthorizationPolicy
metadata:
  name: app1-allow-app2
  namespace: $APP_NS
spec:
  selector:
    matchLabels:
      app: app1
  action: ALLOW
  rules:
  - from:
    - source:
        principals: ["cluster.local/ns/$APP_NS/sa/app2"]
    to:
    - operation:
        methods: ["GET", "POST"]
        paths: ["/healthz", "/readyz", "/api/v1/*"]
EOF
kubectl get authorizationpolicy -n $APP_NS
```

Good: App 2 still reaches App 1. A call from any other pod (for example `mesh-test`) gets `403 RBAC: access denied`, which App 2's UI maps to "Access denied by the service mesh policy". Check the health probes still pass after applying it.

### 7.13 Rollback (if you need to remove the mesh)

```bash
kubectl label namespace $APP_NS istio-injection- istio-discovery-
kubectl rollout restart deployment -n $APP_NS
kubectl delete deployment mesh-test -n $APP_NS
kubectl delete peerauthentication default -n $APP_NS
kubectl delete namespace $GW_NS
kubectl delete istiocni default
kubectl delete istio default
kubectl delete namespace istio-cni istio-system
```

Then uninstall the operator in OperatorHub (**Installed Operators -> Uninstall**) and confirm:

```bash
kubectl get csv -n openshift-operators | grep -i servicemesh
kubectl get crd | grep -E "sailoperator.io|istio.io"
```

Good: no CSV is left. The CRDs may remain, and removing them is a separate decision, since it deletes any remaining Istio custom resources.

### Values to record

| Item | Value |
|---|---|
| Operator channel and CSV version | |
| Istio version and revision name | |
| Istio resource name / namespace | `default` / `istio-system` |
| IstioCNI namespace | `istio-cni` |
| Gateway namespace and exposure option (Route or NLB) | |
| Gateway hostname or LB name | |
| Discovery selector label | `istio-discovery=enabled` |
| App namespace and injection label | |
| Init container seen on normal pod (`istio-validation` or `istio-init`) | |
| Result of the 7.11 peer pod gate | |
| Written answers from IBM / Red Hat on ROKS, Calico and peer pod support | |

### Step 7 exit criteria

- [ ] Operator CSV is `Succeeded`, and the `Istio` and `IstioCNI` resources are `Healthy`.
- [ ] `istiod` is running, the injector webhook exists, and `istio-cni-node` runs on every worker.
- [ ] Discovery selectors are applied and the right namespaces are labeled.
- [ ] The ingress gateway is running and answers through the Route or VPC load balancer (HTTP response with `server: istio-envoy`).
- [ ] A normal pod in the app namespace shows `2/2` with `istio-proxy`, readiness `200`.
- [ ] Strict mTLS rejects plain text from a non-meshed namespace.
- [ ] The 7.11 peer pod gate is documented as pass, or fail with an agreed workaround from IBM and Red Hat.
- [ ] Written answers on ROKS, Calico and peer pod support are recorded.


