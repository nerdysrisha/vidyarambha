Let me check what CDH "yaml" exists in the repo, so the prompt points at the right file.

No blocking questions. One correction to your note: the CDH REST spec is JSON, not YAML. It is `api-server-rest/openapi/api.json` in the guest-components repo (OpenAPI 3.1). It defines `GET /cdh/resource/{repository}/{type}/{tag}`, `GET /aa/token`, `GET /aa/evidence`, `GET /aa/additional-evidence`, `POST /aa/aael` and `GET /info`. The prompt below uses it.

`````markdown
# POC Prompt: Confidential Containers (Peer Pods, TDX) on IBM Cloud ROKS with Red Hat Service Mesh

## Who I am and how I want you to work
- I'm implementing this POC in a client environment: a dedicated IBM Cloud (on-prem hosted, IBM-operated virtualization stack).
- Give me ONE command at a time with a ONE-line description, then wait for my output.
- If something is version- or deployment-dependent, check the repos/docs online first, or ask me.
- Never ask me to paste secrets (tokens, registry creds, keys). Use commands that print only names, sizes or hostnames.
- Separate what is verified in code/docs from what is IBM-specific and must be confirmed with IBM.

## Environment (fill or confirm)
- IBM Cloud VPC, Red Hat OpenShift on IBM Cloud (ROKS), OpenShift 4.19, Calico CNI, 2 workers (bx3d.8x40, RHCOS 9.6).
- Two clusters: `conf-cluster` (peer pods) and `non-conf-cluster` (plain workloads). I use kubectl.
- Registry: IBM Container Registry, region eu-fr2 (`fr2.icr.io`), namespace `env-conf-container-cr`.
  Pull secret in cluster: `fr2-icr-io-secret` (covers `fr2.icr.io` and `private.fr2.icr.io`).
  DONE: image `my-python-app:latest` pushed and pulled successfully as a plain pod on `non-conf-cluster`.
- Peer pod CVM = TDX VSI created by CAA via the VPC API. Workers are normal (non-TDX) ROKS nodes.
- Trustee (KBS + AS + RVPS) runs on a separate user-provided VSI in the same VPC.
- Service mesh: Red Hat OpenShift Service Mesh 3 (Sail Operator; `Istio` + `IstioCNI` resources), sidecar mode (not ambient).

## Architecture decisions already made
- Peer pods (per-pod CVM), NOT a confidential worker node. No TDX worker flavor was found for ROKS, and nested virtualization is not possible in a TDX guest.
- Trust model: the worker, hypervisor operator (IBM) and cluster admin are untrusted for confidentiality. Istio is visibility and defense in depth, not the confidentiality boundary.
- Image pulled inside the CVM. `imagePullSecrets` is still required in the pod spec, but the worker can see the credential, so use a pull-only scoped credential and signed/encrypted images.
- Default KBS resource policy allows any non-sample TEE to read any resource. It MUST be replaced.
- Admin calls to KBS use a bearer JWT verified against KBS's configured public keys.

## Reference flow (validated against Trustee main, guest-components, cloud-api-adaptor)
- App calls `GET http://127.0.0.1:8006/cdh/resource/<repo>/<type>/<tag>` on api-server-rest, which calls CDH (ttRPC), which calls AA `GetToken(kbs)`.
- AA runs the KBS handshake: `POST /kbs/v0/auth` (version must be exactly 0.4.0), nonce challenge, TDX quote (configfs-tsm), then `POST /kbs/v0/attest`.
- KBS forwards to AS, which runs the TDX verifier, then the Rego policy (which calls RVPS via `query_reference_value`), then signs an EAR JWT.
- CDH calls `GET /kbs/v0/resource/...` with `Authorization: Bearer <JWT>`. KBS checks the token, then the resource policy, then returns a JWE that CDH decrypts with the tee keypair from AA.
- Pod network (default): all pod traffic, including VM-to-Trustee and VM-to-istiod, goes VM -> VXLAN (UDP 4789) -> worker -> VPC. `ext-network-via-podvm` changes this.
- CAA talks to `agent-protocol-forwarder` in the VM over mTLS on port 15150.

## POC steps (do in order; each has a goal and a done-check)

**Step 0: Confirm with IBM (parallel, written answers)**
- Goal: lock the unknowns. TDX profile names and zones in my environment; host-side quote generation and PCCS/PCS reachability; initdata binding (MRCONFIGID vs RTMR3); whether `istio-init` works in the peer pod VM and how the sidecar reaches istiod :15012; whether `ext-network-via-podvm` is wanted.
- Done when: I have written answers.

**Step 1: Kubernetes clusters**
- Goal: `conf-cluster` and `non-conf-cluster` healthy, with VPC, subnets, SGs and ACLs documented.
- Done when: `kubectl get nodes` is Ready on both and the network layout is noted.

**Step 2: Container registry**
- Goal: images stored in ICR and pullable. ALREADY DONE for the plain image; repeat the pull secret check in the `conf-cluster` namespace I will use.
- Done when: the secret exists in the target namespace on both clusters.

**Step 3: Kata / peer pod runtime on `conf-cluster`**
- Goal: OpenShift sandboxed containers operator, `KataConfig`, RuntimeClass `kata-remote`, CAA (`osc-caa-ds`) configured with VPC, subnet, SG, pod VM image and the TDX instance profile.
- Done when: a test peer pod (`runtimeClassName: kata-remote`) starts and a TDX VSI appears in the VPC.

**Step 4: Trustee**
- Goal: KBS, AS and RVPS on the external VSI over HTTPS. KBS trusts the AS token-signer chain. AS can reach Intel PCS or an internal PCCS. Admin JWT auth configured. SG/ACL allow the worker IPs (or VM IPs) to the KBS port.
- Done when: KBS answers HTTPS from the cluster network and the admin API works.

**Step 5: Pod VM image and initdata**
- Goal: KBS URL and cert delivered via kernel cmdline or initdata (`aa.toml`, `cdh.toml`), kata agent `policy.rego`, initdata hash bound to TDX. Collect real measurements and load RVPS reference values (`mr_td`, `rtmr_1`, `rtmr_2`, `xfam`, etc.).
- Done when: a peer pod attestation succeeds against my reference values and fails with a wrong one.

**Step 6: Policies and secret**
- Goal: write a real AS policy and replace the default KBS resource policy. Upload secret `default/kbsres1/key1`.
- Done when: allowed pod gets the secret; a pod with a wrong measurement gets 403.

**Step 7: Red Hat Service Mesh 3**
- Goal: install the operator, create `Istio` and `IstioCNI`, enable injection for the app namespace, STRICT mTLS and AuthorizationPolicy, optional ingress gateway (prefer TLS passthrough so plaintext stays inside the TEE).
- Done when: a sidecar injects into a peer pod, gets certs from istiod, and `istio-init` rules work inside the VM.

**Step 8: App 1 (runs as peer pod in the CVM)**
- Goal: Python API service. It calls CDH through the CoCo REST API on `http://127.0.0.1:8006`. I will generate the client stubs from the OpenAPI spec `api-server-rest/openapi/api.json` in the guest-components repo (endpoints: `/cdh/resource/{repository}/{type}/{tag}`, `/aa/token`, `/aa/evidence`, `/aa/additional-evidence`, `/aa/aael`, `/info`). The ttRPC protos in `protos/confidential-data-hub/api.proto` are the alternative. App 1 exposes its own API for other apps, and must never log or return the raw secret to untrusted callers.
- Build, push to ICR, record the image digest.
- Done when: it runs as a peer pod and returns a result derived from the KBS secret.

**Step 9: App 2 (runs on a normal worker)**
- Goal: Python web UI (input in, output out) on a regular runtime. It calls App 1 through the mesh (Service + mTLS + AuthorizationPolicy).
- Done when: clicking the button in App 2 reaches App 1 and shows the result.

**Step 10: End-to-end and negative tests**
- Goal: prove the full path and the denial paths.
- Tests: wrong measurement; non-TDX runtime; modified image; mesh AuthorizationPolicy deny; KBS unreachable; expired token (401 and retry).
- Done when: success and every failure behave as designed, with evidence captured.

**Step 11: Hardening and handoff**
- Goal: pin images by digest, scoped pull-only registry credential, HTTPS everywhere, document trust boundaries (what the mesh does and does NOT protect), and write the runbook.
- Done when: a short architecture and risk note is written.

## Known open items
- Step 0 answers from IBM.
- Whether Red Hat Service Mesh sidecars are supported inside peer pods (no Red Hat doc found).
- Exact TDX profile names and zone availability.

## Where I am now
- (Fill in which steps are done and what output or errors I have.)
`````

Fill in the last line each time you start a new session, so I know where you are.