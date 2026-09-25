# IBM Confidential Containers on OpenShift (ROKS) — Trustee + Hello World

This guide sets up a Confidential Containers (peer pod) demo on a Red Hat OpenShift cluster on IBM Cloud, with TDX attestation backed by a test Trustee. Source: [`ROKS_SETUP.md`](https://github.com/confidential-containers/cloud-api-adaptor/blob/main/src/cloud-api-adaptor/ibmcloud/ROKS_SETUP.md), reordered into deployment sequence.

> **Deployment order:** the Trustee has to exist *before* you deploy confidential-containers, because the deploy step needs the Trustee's endpoint to build `INITDATA`. So: **Part 1 — Trustee**, then **Part 2 — Cluster + CoCo + Hello World**.

## Pre-reqs

Before proceeding you will need to install:

1. [IBM Cloud CLI](https://cloud.ibm.com/docs/cli?topic=cli-install-ibmcloud-cli) and the `container-service` (`kubernetes-service`/`ks`) and `vpc-infrastructure` (`infrastructure-service`/`is`) plugins

> **Tip:** on Ubuntu:
> ```bash
> curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
> ibmcloud plugin install kubernetes-service
> ibmcloud plugin install vpc-infrastructure
> ```

2. [`jq`](https://stedolan.github.io/jq/download/)

> **Tip:** on Ubuntu:
> ```bash
> sudo apt-get install jq
> ```

3. [go](https://go.dev/doc/install)
4. `make`
5. the OpenShift [`oc` CLI](https://cloud.ibm.com/docs/openshift?topic=openshift-cli-install#install-kubectl-cli)
6. [helm](https://helm.sh/docs/intro/install/)

Set the following environment variables to the values for your setup (make sure your subnet has an attached public gateway):

```bash
export IBMCLOUD_API_KEY=
export VPC_ID=
export SUBNET_ID=
export COS_CRN=
```

Log in to `ibmcloud` in the region corresponding to your subnet, then set zone/region:

```bash
export ZONE="$(ibmcloud is subnet $SUBNET_ID -json | jq -r .zone.name)"
export REGION="$(ibmcloud is zone $ZONE -json | jq -r .region.name)"
```

If you have an existing OpenShift cluster, set this to its name; otherwise pick a name you'll create below:

```bash
export CLUSTER_NAME=kata-test-roks
```

---

## Part 1 — Deploy a Test Trustee

Sets up a simple [Trustee](https://github.com/confidential-containers/trustee) with an HTTP endpoint for testing TDX attestation.

### 1. Create a Ubuntu VSI

Create it in the same VPC as your (soon-to-exist) ROKS cluster:

```bash
ibmcloud is instance-create "$CLUSTER_NAME-trustee" "$VPC_ID" "$ZONE" "bx2-2x8" "$SUBNET_ID" --image "r014-85b1a9ec-369b-41d6-b921-39666d4139d1" --keys "$SSH_KEY_ID" --allow-ip-spoofing false
```

### 2. SSH in and install Docker + ORAS

> **Tip:** you can SSH to the private IP of the VSI from a pod or node in your ROKS cluster, since they're in the same VPC.

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

### 3. Deploy the Trustee services

```bash
git clone https://github.com/confidential-containers/trustee.git
cd trustee
openssl genpkey -algorithm ed25519 > kbs/config/private.key
openssl pkey -in kbs/config/private.key -pubout -out kbs/config/public.pub
sudo docker compose up -d
```

### 4. Configure an example key (for CDH testing later)

```bash
oras pull ghcr.io/confidential-containers/staged-images/kbs-client:latest
chmod +x kbs-client
cat > kbsres1_key1 << EOF
res1val1
EOF
./kbs-client --url http://127.0.0.1:8080 config --auth-private-key kbs/config/private.key set-resource --resource-file kbsres1_key1 --path default/kbsres1/key1
```

### 5. Note the Trustee endpoint

You'll need this in Part 2 when configuring `INITDATA`:

```bash
export KBS_SERVICE_ENDPOINT="http://$(ibmcloud is instance "$CLUSTER_NAME-trustee" --output JSON | jq -r '.network_interfaces[].primary_ip.address'):8080"
```

---

## Part 2 — Deploy Confidential Containers & Hello World Sample

### Set up an OpenShift cluster for PeerPod VMs

#### Create an OpenShift cluster

Skip this if you're using an existing cluster.

1. Create a ROKS cluster:

    ```bash
    ibmcloud ks cluster create vpc-gen2 --flavor bx2.4x16 --name "$CLUSTER_NAME" --subnet-id "$SUBNET_ID" --vpc-id "$VPC_ID" --zone "$ZONE" --operating-system RHCOS --workers 2 --version 4.17.14_openshift --disable-outbound-traffic-protection --cos-instance "$COS_CRN"
    ```

    > **Note:** update `--version` to the current default returned by `ibmcloud ks versions`, if different.

2. Wait until the cluster is completely up and running before proceeding.

3. Get the `kubeconfig`:

    ```bash
    ibmcloud ks cluster config --cluster "$CLUSTER_NAME" --admin
    ```

#### Configure an OpenShift cluster

By default your Red Hat OpenShift cluster will not work with the peer pod components.

1. Allow `cloud-api-adaptor` to update pod finalizers:

    ```yaml
    oc apply -n default -f - <<EOF
    apiVersion: rbac.authorization.k8s.io/v1
    kind: ClusterRole
    metadata:
      name: openshift-caa-finalizer-role
    rules:
    - apiGroups:
      - ""
      resources:
      - "pods/finalizers"
      verbs:
      - "update"
    ---
    apiVersion: rbac.authorization.k8s.io/v1
    kind: ClusterRoleBinding
    metadata:
      name: openshift-caa-finalizer-role-binding
    roleRef:
      apiGroup: rbac.authorization.k8s.io
      kind: ClusterRole
      name: openshift-caa-finalizer-role
    subjects:
    - kind: ServiceAccount
      name: cloud-api-adaptor
      namespace: confidential-containers-system
    EOF
    ```

2. Label worker nodes for `cloud-api-adaptor`:

    ```bash
    oc label nodes $(oc get nodes -o jsonpath={.items..metadata.name}) node.kubernetes.io/worker=
    ```

3. Give `kata-deploy` and `cloud-api-adaptor` privileged OpenShift SCC permission:

    > **Note:** if you previously used the cc-operator, the service account was `cc-operator-controller-manager`. With the helm-based install, the kata-deploy chart uses `kata-deploy-sa*` instead.
    >
    > **Warning:** the `kata-deploy` DaemonSet requires privileged access to install kata binaries on nodes. Without this, its pods will be blocked by OpenShift's default restricted SCC.

    ```bash
    oc create namespace confidential-containers-system
    oc project confidential-containers-system
    oc adm policy add-scc-to-user privileged -z kata-deploy-sa
    oc adm policy add-scc-to-user privileged -z kata-deploy-sa-cleanup
    oc adm policy add-scc-to-user privileged -z cloud-api-adaptor
    oc project default
    ```

### Upload a PeerPod VM Custom Image

A peer pod VM image needs to be available as a VPC custom image in IBM Cloud. For the full end-to-end demo with TDX attestation via Trustee, the image must be configured with the TDX attestation agent and kernel modules.

If you don't have a suitable image, build a TDX-enabled RHEL image:

```bash
# Run this command in directory src/cloud-api-adaptor
PODVM_DISTRO=rhel TEE_PLATFORM=tdx ACTIVATION_KEY=<key> ORG_ID=<org id> IMAGE_URL=<path to base kvm qcow2 image> make podvm-builder podvm-binaries podvm-image
```

Then upload the resulting image to IBM Cloud (from the root of the `cloud-api-adaptor` repo):

```bash
src/cloud-api-adaptor/ibmcloud/image/import.sh <built docker image>:<image tag> "$REGION" --pull never --os red-9-amd64
```

> **Tip:** no TDX image and can't build one? Import a prebuilt non-TDX demo image instead (no attestation):
> ```bash
> src/cloud-api-adaptor/ibmcloud/image/import.sh ghcr.io/confidential-containers/podvm-generic-ubuntu-amd64:latest "$REGION" --platform linux/amd64
> ```

The import script ends with `Image <image-name> with id <image-id> is available` — note the `image-id`, needed below.

> **Note:** if `import.sh` fails because the CLI hasn't been configured with the COS instance before, add the `--instance` argument. See [IMPORT_PODVM_TO_VPC.md](https://github.com/confidential-containers/cloud-api-adaptor/blob/main/src/cloud-api-adaptor/ibmcloud/IMPORT_PODVM_TO_VPC.md#running).

### Deploy the PeerPod Webhook

Follow the [webhook instructions in README.md](https://github.com/confidential-containers/cloud-api-adaptor/blob/main/src/cloud-api-adaptor/ibmcloud/README.md#deploy-peerpod-webhook) to deploy cert-manager and the peer-pods webhook.

### Deploy Confidential-containers

`caa-provisioner-cli` simplifies deploying confidential-containers + cloud-api-adaptor resources onto any cluster. Build an ibmcloud-ready version:

```bash
# Starting from root directory of the cloud-api-adaptor repository
pushd src/cloud-api-adaptor/test/tools
make BUILTIN_CLOUD_PROVIDERS="ibmcloud" all
popd
```

This creates `caa-provisioner-cli` in `src/cloud-api-adaptor/test/tools`. You'll also need a `.properties` file with your ibmcloud info.

Set the image/SSH key variables (the rest were set in Pre-reqs above):

```bash
export SSH_KEY_ID= # your ssh key id
export PODVM_IMAGE_ID= # the image id of the peerpod vm uploaded to ibmcloud
```

> **Tip:** you can use a [Trusted Profile](https://cloud.ibm.com/docs/account?topic=account-create-trusted-profile&interface=ui) for IAM instead of an API key — replace `APIKEY="$IBMCLOUD_API_KEY"` with `IAM_PROFILE_ID="the_id_of_your_trusted_profile"` below.

Generate the `.properties` file:

```bash
cat <<EOF > ~/peerpods-cluster.properties
APIKEY="$IBMCLOUD_API_KEY"
SSH_KEY_ID="$SSH_KEY_ID"
PODVM_IMAGE_ID="$PODVM_IMAGE_ID"
VPC_ID="$VPC_ID"
VPC_SUBNET_ID="$SUBNET_ID"
RESOURCE_GROUP_ID="$(ibmcloud is vpc "$VPC_ID" -json | jq -r .resource_group.id)"
ZONE="$(ibmcloud is subnet $SUBNET_ID -json | jq -r .zone.name)"
REGION="$(ibmcloud is zone $ZONE -json | jq -r .region.name)"
IBMCLOUD_PROVIDER="ibmcloud"
INSTANCE_PROFILE_NAME="bx2-2x8"
CAA_IMAGE_TAG="latest-amd64"
DISABLECVM="true"
CLUSTER_ID="$(ibmcloud oc cluster get --cluster ${CLUSTER_NAME} --output json | jq -r '.id')"
CONTAINER_RUNTIME="crio"
EOF
```

To run peer pods in confidential (TDX-enabled) VMs, flip `DISABLECVM` to `false` and use a TDX-capable instance profile:

```bash
sed -i ".bak" -e 's/DISABLECVM="true"/DISABLECVM="false"/' -e 's/bx2-2x8/bx3dc-2x10/' ~/peerpods-cluster.properties
```

> **Warning:** for attestation, you need `INITDATA="<your initdata>"` referencing a Trustee that can verify TDX evidence — this is the Trustee from **Part 1** above. Your peer pod VM image must also include the TDX attestation agent and kernel modules.

Build and set `INITDATA` using the Trustee endpoint from Part 1:

```bash
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

To use this Trustee for **all** peer pods in the cluster, add `INITDATA` to your properties file:

```bash
echo "INITDATA=\"$INITDATA\"" >> ~/peerpods-cluster.properties
```

Or configure it per-pod instead, via annotation:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
  annotations:
    io.katacontainers.config.hypervisor.cc_init_data: $INITDATA
spec:
  runtimeClassName: kata-remote
  ...
```

Now install confidential-containers and cloud-api-adaptor:

```bash
export CLOUD_PROVIDER=ibmcloud
export TEST_PROVISION_FILE="$HOME/peerpods-cluster.properties"
export TEST_TEARDOWN="no"
pushd src/cloud-api-adaptor/test/tools
./caa-provisioner-cli -action=install
popd
```

Confirm the deployment:

```bash
oc get pods -n confidential-containers-system
```

Expected output:

```text
NAME                                              READY   STATUS    RESTARTS   AGE
cloud-api-adaptor-daemonset-nt4h7                 1/1     Running   0          5m45s
cloud-api-adaptor-daemonset-txssq                 1/1     Running   0          5m45s
kata-deploy-7ncjq                                 1/1     Running   0          5m45s
kata-deploy-w5kfp                                 1/1     Running   0          5m45s
peerpodctrl-controller-manager-7d94b54bc9-266bw   2/2     Running   0          5m45s
```

### Run a Helloworld sample

Validate the setup:

```yaml
oc apply -n default -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/curl/curl.yaml
oc apply -n default -f - <<EOF
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

Verify pods, peer pod, and pod VM are up:

```bash
oc get pods -n default
oc get peerpod -n default
ibmcloud is instances | grep podvm
```

You should see 2 pods (`curl`, `helloworld`) but only **one** peer pod, since only `helloworld` runs in a peer pod. An IBM Cloud VM instance should also exist for it.

Verify the helloworld service is reachable from the curl pod:

```bash
export CURL_POD=$(oc get pod -n default -l app=curl -o jsonpath={.items..metadata.name})
export HELLO_IP=$(oc get pod -n default helloworld -o jsonpath={.status.podIP})
oc exec -n default -it $CURL_POD -c curl -- curl http://$HELLO_IP:5000/hello
```

Expected output:

```text
Hello version: v1, instance: helloworld
```

> **Note:** with a Trustee configured, you can also confirm attestation is working by curling the confidential data hub (CDH) from inside the helloworld pod. Using the same example key configured in Part 1:
> ```bash
> oc exec -n default -it helloworld -- bash
> curl http://127.0.0.1:8006/cdh/resource/default/kbsres1/key1
> ```
> Expected output: `res1val1`

### Uninstall and clean up

To clean up everything including the cluster, just delete the IBM Cloud cluster.

> **Note:** deleting the cluster might persist the podvm created by cloud-api-adaptor. Delete the Helloworld pod first.

Otherwise, to clean up individually:

1. Delete the Helloworld sample:

    ```bash
    oc delete -n default -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/curl/curl.yaml
    oc delete -n default pod helloworld
    ```

2. Uninstall the peer pod components:

    ```bash
    pushd src/cloud-api-adaptor/test/tools
    export CLOUD_PROVIDER=ibmcloud
    export TEST_PROVISION_FILE="$HOME/peerpods-cluster.properties"
    ./caa-provisioner-cli -action=uninstall
    popd
    ```
