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