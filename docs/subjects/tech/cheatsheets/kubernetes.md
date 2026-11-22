# Kubernetes Cheat Sheet — Azure AKS, Istio & AWS EKS

Quick-reference commands for working with multiple Azure subscriptions / AKS clusters, `kubectl`, Istio, and a few AWS EKS commands. Originally written Jan 2024, extended in 2025.

> **Note on sanitised values:** subscription IDs, tenant IDs, AWS account IDs, resource IDs and IPs are masked as `xxxxxxxx…` and keep only their **last 4 characters** so you can still tell them apart. In commands you copy-paste, `<PLACEHOLDERS>` mark values to substitute. `nerdyorg` is a dummy organisation name used throughout.

**Shell conventions:** commands are shown without the `PS C:\ws>` prompt. Blocks tagged `powershell` are PowerShell-specific; sample output is shown in separate `text` blocks.

---

## 1. Azure login & multi-subscription setup

Simplified access to Azure clusters when you have **multiple subscriptions on a single machine**.

### 1.1 Azure login

Log in with your domain credentials:

```bash
az login
```

### 1.2 List the subscriptions under the account

The list below shows the subscriptions allowed for your account (email) in the domain.

```bash
az account list -o table
```

```text
Name                               CloudName   SubscriptionId                        TenantId                              State    IsDefault
---------------------------------  ----------  ------------------------------------  ------------------------------------  -------  ---------
NerdyorgAzure (owner)              AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxa19d  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx21f8  Enabled  False
NerdyOrg Development Subscription  AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxfc9e  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NerdyOrg-Nigeria-SandBox           AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx007b  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NerdyOrg-Ghana-SandBox             AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxadea  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  True
NerdyOrg-Ghana-UAT                 AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx3164  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NerdyOrg-Nigeria-SIT               AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxa99e  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NerdyOrg-Nigeria-UAT               AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx0237  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NerdyOrg-Ghana-SIT                 AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx491d  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
NERDYORG-Connectivity-Prod-001     AzureCloud  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5b27  xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx5f02  Enabled  False
```

Pick the ones that host the public clusters. In this example there are two: **Nigeria** and **Ghana**.

### 1.3 Set the subscription

```bash
# Nigeria (sandbox)
az account set --subscription "<NIGERIA_SANDBOX_SUBSCRIPTION_ID>"   # ends ...007b

# Ghana (sandbox)
az account set --subscription "<GHANA_SANDBOX_SUBSCRIPTION_ID>"     # ends ...adea
```

### 1.4 Get the credentials and merge into the local kubeconfig

**Nigeria**

```powershell
az aks get-credentials --subscription "<NIGERIA_SANDBOX_SUBSCRIPTION_ID>" --resource-group NERDYORG-DEV-RG-NG --name Nerdyorg-Dev-Nigeria-AKS --context NerdyOrg-Nigeria-Sandbox
```

```text
A different object named clusterUser_NERDYORG-DEV-RG-NG_Nerdyorg-Dev-Nigeria-AKS already exists in your kubeconfig file.
Overwrite? (y/n): y
Merged "NerdyOrg-Nigeria-Sandbox" as current context in C:\Users\<user>\.kube\config
```

**Ghana**

```powershell
az aks get-credentials --subscription "<GHANA_SANDBOX_SUBSCRIPTION_ID>" --resource-group nerdyorg-dev-rg-gh --name nerdyorg-dev-ghana-aks --context NerdyOrg-Ghana-Sandbox
```

```text
Merged "NerdyOrg-Ghana-Sandbox" as current context in C:\Users\<user>\.kube\config
```

### 1.5 Check the contexts loaded

Notice that some contexts have **no default namespace** assigned yet.

```bash
kubectl config get-contexts
```

```text
CURRENT  NAME                      CLUSTER                   AUTHINFO                                                 NAMESPACE
*        NerdyOrg-Ghana-Sandbox    NerdyOrg-Ghana-Sandbox    clusterUser_nerdyorg-dev-rg-gh_nerdyorg-dev-ghana-aks
         NerdyOrg-Nigeria-Sandbox  NerdyOrg-Nigeria-Sandbox  clusterUser_NERDYORG-DEV-RG-NG_Nerdyorg-Dev-Nigeria-AKS
         Nerdyorg-Dev-Nigeria-AKS  Nerdyorg-Dev-Nigeria-AKS  clusterUser_NERDYORG-DEV-RG-NG_Nerdyorg-Dev-Nigeria-AKS  nerdyorg-dev-ng-intg-ns
         nerdyorg-dev-ghana-aks    nerdyorg-dev-ghana-aks    clusterUser_nerdyorg-dev-rg-gh_nerdyorg-dev-ghana-aks    nerdyorg-dev-gh-intg-ns
```

### 1.6 Assign a default namespace to each context

**Ghana**

```bash
# Use the context
kubectl config use-context NerdyOrg-Ghana-Sandbox

# Set the namespace
kubectl config set-context --current --namespace=nerdyorg-dev-gh-intg-ns
```

**Nigeria**

```bash
# Use the context
kubectl config use-context NerdyOrg-Nigeria-Sandbox

# Set the namespace
kubectl config set-context --current --namespace=nerdyorg-dev-ng-intg-ns
```

After setting, each context shows its namespace:

```text
CURRENT  NAME                      CLUSTER                   AUTHINFO                                                 NAMESPACE
         NerdyOrg-Ghana-Sandbox    NerdyOrg-Ghana-Sandbox    clusterUser_nerdyorg-dev-rg-gh_nerdyorg-dev-ghana-aks    nerdyorg-dev-gh-intg-ns
*        NerdyOrg-Nigeria-Sandbox  NerdyOrg-Nigeria-Sandbox  clusterUser_NERDYORG-DEV-RG-NG_Nerdyorg-Dev-Nigeria-AKS  nerdyorg-dev-ng-intg-ns
         Nerdyorg-Dev-Nigeria-AKS  Nerdyorg-Dev-Nigeria-AKS  clusterUser_NERDYORG-DEV-RG-NG_Nerdyorg-Dev-Nigeria-AKS  nerdyorg-dev-ng-intg-ns
         nerdyorg-dev-ghana-aks    nerdyorg-dev-ghana-aks    clusterUser_nerdyorg-dev-rg-gh_nerdyorg-dev-ghana-aks    nerdyorg-dev-gh-intg-ns
```

### 1.7 Next time onwards — quick switch

Once the setup above is done, **all you need is one of these**:

```bash
kubectl config use-context NerdyOrg-Ghana-Sandbox
```

```bash
kubectl config use-context NerdyOrg-Nigeria-Sandbox
```

---

## 2. Azure CLI & AKS basics

Steps for Azure Kubernetes login and general `az` commands.

```bash
az --version                 # shows az CLI version and installed extensions
az account show -o jsonc     # shows account info, e.g. subscription id, tenant id
```

**List Azure DevOps projects** (requires the `azure-devops` extension — installed automatically, with consent, on first use):

```bash
az devops project list -o jsonc --organization https://dev.azure.com/nerdyorg/
az devops project list -o jsonc --organization https://dev.azure.com/nerdyorg-ip/
```

**Login with a device code** — prints a URL and a code; open the URL in a browser and enter the code. (Requires `az` to be installed.)

```bash
az login --use-device-code
```

**Install the Kubernetes CLI tools** (one-time activity; installs `kubectl` and `kubelogin`):

```bash
az aks install-cli
```

**Set the subscription** so the appropriate clusters can be accessed:

```bash
az account set --subscription <SUBSCRIPTION_ID>
```

**Fetch credentials** for the resource group + cluster, overwriting any existing local entry:

```bash
az aks get-credentials --resource-group NERDYORG-DEV-RG-NG --name Nerdyorg-Dev-Nigeria-AKS --overwrite-existing
```

**Convert the kubeconfig** to use the Azure CLI login (uses all the settings above):

```bash
kubelogin convert-kubeconfig -l azurecli
```

Quick check across everything you are logged into:

```bash
kubectl get deployments --all-namespaces=true   # all deployments in all namespaces
```

---

## 3. Environment access — DEV / SIT / UAT

Every environment follows the same pattern:

```text
az login → az account set → az aks get-credentials → kubelogin convert-kubeconfig → set default namespace
```

### 3.1 Environment reference table

| Env | Country | Subscription ends | Resource group | Cluster | Namespace |
|-----|---------|-------------------|----------------|---------|-----------|
| DEV | Nigeria | `...007b` | `NERDYORG-DEV-RG-NG` | `Nerdyorg-Dev-Nigeria-AKS` | `nerdyorg-dev-ng-intg-ns` |
| DEV | Ghana | `...adea` | `nerdyorg-dev-rg-gh` | `nerdyorg-dev-ghana-aks` | `nerdyorg-dev-gh-intg-ns` |
| SIT | Nigeria | `...a99e` | `nerdyorg-ng-sit-rg` | `nerdyorg-sit-nigeria-aks` | `nerdyorg-sit-ng-intg-ns` |
| SIT | Ghana | `...491d` | `nerdyorg-gh-sit-rg` | `nerdyorg-sit-ghana-aks` | `nerdyorg-sit-gh-intg-ns` |
| UAT | Nigeria | `...0237` | `nerdyorg-ng-uat-rg` | `nerdyorg-uat-nigeria-aks` | `nerdyorg-uat-ng-intg-ns` |
| UAT | Ghana | `...3164` | `nerdyorg-gh-uat-rg` | `nerdyorg-uat-ghana-aks` | `nerdyorg-uat-gh-intg-ns` |

> **IMPORTANT:** always make sure the namespace is switched to the environment's `*-intg-ns` before running Istio / `kubectl apply` commands. In DEV this is **pipeline driven**.

### 3.2 DEV

**Nigeria**

```bash
az account show
az login --scope https://management.core.windows.net//.default
az account set --subscription "<DEV_NG_SUBSCRIPTION_ID>"     # NerdyOrg subscription
az aks get-credentials --resource-group NERDYORG-DEV-RG-NG --name Nerdyorg-Dev-Nigeria-AKS --overwrite-existing
kubelogin convert-kubeconfig -l azurecli
kubectl config set-context --current --namespace="nerdyorg-dev-ng-intg-ns"
kubectl get deployments --all-namespaces=true
az account show
```

Extra DEV Nigeria queries:

```bash
# Node resource group of the cluster
az aks show --resource-group NERDYORG-DEV-RG-NG --name Nerdyorg-Dev-Nigeria-AKS --query nodeResourceGroup -o tsv

# Application Gateway SKU
az network application-gateway show --resource-group NERDYORG-DEV-RG-NG --name nerdyorg-ng-dev-appgateway --query "sku.name" -o tsv
```

**Ghana**

```bash
az account show
az login --scope https://management.core.windows.net//.default
az account set --subscription "<DEV_GH_SUBSCRIPTION_ID>"
az aks get-credentials --resource-group nerdyorg-dev-rg-gh --name nerdyorg-dev-ghana-aks --overwrite-existing
kubelogin convert-kubeconfig -l azurecli
kubectl config set-context --current --namespace="nerdyorg-dev-gh-intg-ns"
kubectl get deployments --all-namespaces=true
az account show
```

### 3.3 SIT

**Nigeria**

```bash
az account show
az login --scope https://management.core.windows.net//.default
az account set --subscription "<SIT_NG_SUBSCRIPTION_ID>"
az aks get-credentials --resource-group nerdyorg-ng-sit-rg --name nerdyorg-sit-nigeria-aks --overwrite-existing
kubelogin convert-kubeconfig -l azurecli
kubectl config set-context --current --namespace="nerdyorg-sit-ng-intg-ns"
kubectl get deployments --all-namespaces=true
az account show
```

**Ghana**

```bash
az account show
az login --scope https://management.core.windows.net//.default
az account set --subscription "<SIT_GH_SUBSCRIPTION_ID>"
az aks get-credentials --resource-group nerdyorg-gh-sit-rg --name nerdyorg-sit-ghana-aks --overwrite-existing
kubelogin convert-kubeconfig -l azurecli
kubectl config set-context --current --namespace="nerdyorg-sit-gh-intg-ns"
kubectl get deployments --all-namespaces=true
az account show
```

### 3.4 UAT

**Nigeria**

```bash
# Check which management group the subscription belongs to
az account management-group subscription show --name GroupName --subscription "<UAT_NG_SUBSCRIPTION_ID>"
az account show --subscription "<UAT_NG_SUBSCRIPTION_ID>"

az login                                   # as needed
az account show
az login --scope https://management.core.windows.net//.default
az account set --subscription "<UAT_NG_SUBSCRIPTION_ID>"
az aks get-credentials --resource-group nerdyorg-ng-uat-rg --name nerdyorg-uat-nigeria-aks --overwrite-existing
kubelogin convert-kubeconfig -l azurecli
kubectl config set-context --current --namespace="nerdyorg-uat-ng-intg-ns"
kubectl get deployments --all-namespaces=true
az account show
```

**Ghana**

```bash
az account set --subscription "<UAT_GH_SUBSCRIPTION_ID>"
az aks get-credentials --resource-group nerdyorg-gh-uat-rg --name nerdyorg-uat-ghana-aks --overwrite-existing
kubectl config set-context --current --namespace="nerdyorg-uat-gh-intg-ns"
```

**Investigate the cluster resource ID / delete operations (UAT Ghana):**

```bash
az login
az aks show --resource-group nerdyorg-gh-uat-rg --name nerdyorg-uat-ghana-aks --query id
```

```text
"/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx3164/resourcegroups/nerdyorg-gh-uat-rg/providers/Microsoft.ContainerService/managedClusters/nerdyorg-uat-ghana-aks"
```

```bash
# Find delete operations in the activity log (use the cluster resource ID from above)
az monitor activity-log list --resource-group nerdyorg-gh-uat-rg --resource-id "<AKS_RESOURCE_ID>" --query "[?contains(operationName.value, 'Delete')]" --output table
```

---

## 4. Private cluster access via jumpbox (SSH tunnel)

Used when the AKS API server is private (e.g. SIT Nigeria) and you must reach it through a jumpbox VM.

**Step 1 — get the cluster's API server FQDN:**

```bash
az aks show --resource-group nerdyorg-ng-sit-rg --name nerdyorg-sit-nigeria-aks --query "fqdn" -o tsv
```

```text
nerdyorg-sit-nigeria-aks-dns-xxxxxxxx.hcp.westeurope.azmk8s.io
```

**Step 2 — open an SSH tunnel** from local port `6443` to the API server through the jumpbox:

```bash
ssh -L 6443:nerdyorg-sit-nigeria-aks-dns-xxxxxxxx.hcp.westeurope.azmk8s.io:6443 nerdyuser@nerdyorg-ng-sit-vm-jumpbox-001
```

**Bastion helper commands:**

```bash
# List public IPs tagged as bastion IPs
az network public-ip list --query "[?tags.bastionPublicIp!=null].{Name:name, IP:ipAddress}" -o table

# Get the public IP resource ID used by a bastion host
az network bastion show --name <BastionName> --resource-group <ResourceGroup> --query "ipConfigurations[0].publicIpAddress.id" -o tsv
```

---

## 5. kubectl essentials

### 5.1 Contexts & namespaces

```bash
kubectl config current-context          # current context
kubectl config get-contexts             # list all contexts
kubectl config use-context <CONTEXT_NAME>
kubectl config view                     # view the local kubeconfig
```

**Switch / check the default namespace:**

```bash
kubectl config set-context --current --namespace="default"
kubectl config view --minify --output "jsonpath={..namespace}"    # show current namespace
```

**Create and list namespaces:**

```bash
kubectl create namespace intg-poc
kubectl get namespaces
kubectl get ns
```

### 5.2 Pods, deployments & logs

```bash
kubectl get deployments --all-namespaces=true     # all deployments, all namespaces
kubectl get pods --all-namespaces                 # all pods, all namespaces
kubectl get pods -n nerdyorg-dev-ng-intg-ns         # pods in a namespace
kubectl get deployment                            # deployments in current namespace
```

**Pod logs** (omit `-n` if your context is already in that namespace):

```bash
kubectl logs nerdyorg-ng-send-sms-otp-deployment-55cf484c56-s98hk -n nerdyorg-dev-ng-intg-ns
kubectl logs --tail=20 <POD_NAME> -n <NAMESPACE>      # last 20 lines
kubectl logs -f <POD_NAME> -n <NAMESPACE>             # stream / tail the logs
kubectl logs <POD_NAME> > pod-logs.txt                # write logs to a file
```

**Print environment variables of a pod:**

```bash
kubectl exec <POD_NAME> -- printenv
```

**Secrets under a namespace:**

```bash
kubectl get secrets -n nerdyorg-dev-ng-intg-ns
```

**Endpoints (IPs and ports) assigned to services:**

```bash
kubectl get endpoints -n nerdyorg-dev-ng-intg-ns
```

**Events in a namespace, oldest first:**

```bash
kubectl get events --sort-by=.metadata.creationTimestamp
```

### 5.3 Nodes & node pools

```bash
kubectl get no                                   # all nodes
kubectl get no -o wide                           # all nodes with details
kubectl describe no aks-agentpool-xxxx9792-vmss000003   # one particular node
```

**Azure side — resource groups, clusters, node pools:**

```bash
az group list --output table                                   # all resource groups

az aks list --resource-group NERDYORG-DEV-RG-NG --output table   # clusters in a resource group

az aks nodepool list --resource-group <RESOURCE_GROUP> --cluster-name <CLUSTER_NAME> --output table
az aks nodepool list --resource-group <RESOURCE_GROUP> --cluster-name <CLUSTER_NAME> --output json
az aks nodepool show --resource-group <RESOURCE_GROUP> --cluster-name <CLUSTER_NAME> --name <NODEPOOL_NAME> --output table

# Example
az aks nodepool list --resource-group NERDYORG-DEV-RG-NG --cluster-name Nerdyorg-Dev-Nigeria-AKS --output table

# VM scale set names behind the node pools
az aks show --resource-group NERDYORG-DEV-RG-NG --name Nerdyorg-Dev-Nigeria-AKS --query "agentPoolProfiles[].virtualMachineScaleSets[].name" -o tsv
```

**Account / subscription information:**

```bash
az account show     # current account; subscription id is under "id", tenant id under "tenantId"
az account list     # all subscriptions available to the account
```

### 5.4 Manifests (declarative)

```bash
# Apply all manifest files (yaml) in the folder 'kube-manifests'
# (the folder must sit next to where the command is executed)
kubectl apply -f kube-manifests

# Remove everything that was created from those manifests
kubectl delete -f kube-manifests/
```

### 5.5 Debugging kubectl itself

Show the calls `kubectl` makes to the API server (higher number = more detail):

```bash
kubectl get pods --v=7
kubectl get nodes --v=7
```

### 5.6 Exec into a pod & read YAML

```bash
kubectl exec -it nginx-pod -- /bin/bash       # open a shell in the container
kubectl exec -it nginx-pod -- ls              # run a single command
kubectl exec -it nginx-pod -- env             # environment variables of the container

kubectl get pod nginx-pod -o yaml             # pod config as YAML
kubectl get svc nginx-pod-svc -o yaml         # service config as YAML
```

---

## 6. Istio — VirtualServices, DestinationRules & ingress

### 6.1 VirtualService & DestinationRule

Namespaces per environment are listed in [section 3.1](#31-environment-reference-table). Replace `<NAMESPACE>` accordingly.

```bash
# --- Destination rules ---
kubectl get destinationrules -n <NAMESPACE>
kubectl describe destinationrule nerdyorg-ng-get-bank-beneficiary -n <NAMESPACE>
kubectl apply -f your-destinationrule.yaml

# --- Virtual service ---
kubectl get virtualservice nerdyorg-intg-virtual-service -n <NAMESPACE>
kubectl describe virtualservice nerdyorg-intg-virtual-service -n <NAMESPACE>
kubectl apply -f your-virtual-service.yaml
```

**Examples (Nigeria):**

```bash
kubectl get virtualservice nerdyorg-intg-virtual-service -n nerdyorg-dev-ng-intg-ns    # DEV
kubectl get virtualservice nerdyorg-intg-virtual-service -n nerdyorg-sit-ng-intg-ns    # SIT
kubectl get virtualservice nerdyorg-intg-virtual-service -n nerdyorg-uat-ng-intg-ns    # UAT
```

**Get the VirtualService `Resource Version`** (PowerShell only):

```powershell
kubectl describe virtualservice nerdyorg-intg-virtual-service -n nerdyorg-dev-ng-intg-ns | Select-String "Resource Version" | ForEach-Object { $_ -match "Resource Version:\s+(\d+)" ; $matches[1] }
```

Swap `nerdyorg-dev-ng-intg-ns` for the `sit` / `uat` namespace to check other environments.

### 6.2 Ingress gateway checks

```bash
# Switch the default namespace to istio-system
kubectl config set-context --current --namespace=istio-system

# Pods of the ingress gateway
kubectl get pods -l app=istio-ingressgateway -o wide
kubectl get pods -l app=istio-ingressgateway -o wide -n istio-system     # if context is NOT in istio-system

# Logs of an ingress gateway pod
kubectl logs istio-ingressgateway-d94b4444b-v7chb -n istio-system

# Stream the logs
kubectl logs -f istio-ingressgateway-d94b4444b-v7chb

# Write the logs to a file so they can be viewed separately
kubectl logs istio-ingressgateway-d94b4444b-7c7g8 > ingress-gateway.log
```

### 6.3 `istioctl` *(work in progress)*

> `istioctl` must be installed first — download from the [Istio 1.20.3 release page](https://github.com/istio/istio/releases/tag/1.20.3) (Windows build). Make sure the subscription and namespace context are set before running these.

```bash
istioctl proxy-status
istioctl pc route istio-ingressgateway-d94b4444b-v7chb.istio-system.istio-system
```

---

## 7. Temporary containers & debug pods

Throw-away pods are handy for testing connectivity from *inside* the cluster.

**`curl` shell — pod is deleted when you exit:**

```bash
kubectl run -it --rm aks-ssh --image=curlimages/curl -- sh
```

**Alpine in a specific namespace — pod is deleted when you exit:**

```bash
kubectl run -it --rm temp-pod --namespace=integrations --image=alpine -- sh
```

**Long-lived temp pod** (stays alive until you delete it):

```bash
kubectl run temp-pod --namespace=integrations --image=alpine --restart=Never -- sh -c "tail -f /dev/null"

# Open a shell in it
kubectl exec -it temp-pod --namespace=integrations -- /bin/sh
```

**Debian-based images** (no `curl` / `openssl` by default):

```bash
kubectl run -it --rm openssl-curl --image=debian:latest -- sh
# inside the pod:
apt-get update && apt-get install -y openssl
```

```bash
kubectl run -it --rm aks-ssh --image=debian

# if the above fails (older kubectl):
kubectl run -it --rm aks-ssh --image=debian --generator=run-pod/v1

# install curl on start-up, then drop into bash
kubectl run -it --rm aks-ssh --image=debian:latest -- bash -c "apt-get update && apt-get install -y curl && bash"
```

**BusyBox** — shell without `curl`, but with more built-in utilities than most images:

```bash
kubectl run -it --rm aks-ssh --image=busybox -- sh
```

**Kafka client** — list topics on a Kafka broker from inside the cluster:

```bash
kubectl run -it --rm kafka-client --image=confluentinc/cp-kafka:latest -- bash
# inside the shell (press Enter if no prompt appears):
kafka-topics --bootstrap-server 10.x.x.121:9092 --list
```

```text
ACC-HUB-ERROR-Q
ACCOUNTING-EVENT
```

*(output trimmed — the real list has many topics)*

**Find the cluster's outbound public IP:**

```bash
kubectl config set-context --current --namespace="default"
kubectl run -i --tty --rm debug --image=busybox --restart=Never -- sh
# inside the pod:
wget -qO- http://httpbin.org/ip
```

```json
{
  "origin": "x.x.x.48"
}
```

---

## 8. Hands-on: nginx, ReplicaSet & Deployment

### 8.1 Run nginx directly from Docker Hub (imperative)

Pulls the `nginx` image and deploys a pod directly onto the cluster. This is called an **imperative** deployment.

```bash
kubectl run nginx --image nginx

kubectl config get-contexts               # contexts, showing namespace
kubectl describe pod nginx                # events that occurred on the pod

kubectl run -it --rm aks-ssh --image=debian    # temp shell; removed on exit

kubectl delete pod nginx                  # delete the pod by name
```

### 8.2 Single pod + LoadBalancer service

> Exposing a single pod through a service is a **one-to-one** relation — not recommended.

```bash
kubectl config set-context --current --namespace="intg-poc"
kubectl run nginx-pod --image nginx

# Expose the pod with a LoadBalancer service
kubectl expose pod nginx-pod --type=LoadBalancer --port=80 --name=nginx-pod-svc
kubectl get svc

# View the YAML configuration of the pod
kubectl get pods nginx-pod -o yaml

# Clean up
kubectl delete service nginx-pod-svc
```

### 8.3 ReplicaSet

> Requires a YAML file that defines the ReplicaSet. Exposing a ReplicaSet is a **many-to-one** relation — good.

```bash
# Create
kubectl create -f nginx-replicaset-dockerhub.yml

# Expose with a LoadBalancer service
kubectl expose rs nginx-rs --type=LoadBalancer --port=80 --target-port=8080 --name=nginx-rs-service

# Update: change the yml, then replace
kubectl replace -f nginx-replicaset-dockerhub.yml

# View as YAML
kubectl get rs nginx-rs -n intg-poc -o yaml

# Delete
kubectl delete rs nginx-rs
```

### 8.4 Deployment

`kubectl create deployment` creates a **Deployment**, which automatically creates a **ReplicaSet** and a **Pod** (1 by default). A **Service is *not* created automatically** — expose it explicitly.

```bash
# Create
kubectl create deployment nginx-deployment --image=nginx

# Scale up to 5 pods
kubectl scale --replicas=5 deployment/nginx-deployment

# Expose externally (public IP)
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80 --target-port=80 --name=nginx-deployment-svc

# Delete the deployment (this does NOT delete the service)
kubectl delete deployment nginx-deployment

# Delete the service
kubectl delete service nginx-deployment-svc
```

**Chaining commands:**

```bash
# Create the deployment with 5 replicas
kubectl create deployment nginx-deployment --image=nginx --replicas=5

# Create the deployment, 5 replicas, and expose as a service in one shot
kubectl create deployment nginx-deployment --image=nginx --replicas=5 && kubectl expose deployment nginx-deployment --port=80 --target-port=80 --name=nginx-service --type=ClusterIP
```

### 8.5 Update, roll out, roll back

1. Create a deployment with a particular image version.
2. Set a new image version on the existing image name (`nginx`).
3. Check the rollout status.

```bash
kubectl create deployment nginx-deployment --image=nginx:stable-alpine3.19-perl
kubectl set image deployment nginx-deployment nginx=nginx:stable-alpine3.19-otel --record=true
kubectl rollout status deployment nginx-deployment

# Rollout history
kubectl rollout history deployment nginx-deployment

# Roll back (undo the last change)
kubectl rollout undo deployment nginx-deployment
```

---

## 9. Spring Boot → Docker → AKS

End-to-end "hello world": generate a Spring Boot app, containerise it, push to Azure Container Registry (ACR) and deploy on AKS.

### 9.1 Generate & build the project

```bash
# Download a Spring Boot starter project
curl https://start.spring.io/starter.zip -d dependencies=web -d type=maven-project -d groupId=com.nerdyorg -d artifactId=hworld -d name=hworld -d packageName=com.nerdyorg.hworld -d javaVersion=17 -o hworld.zip
```

```powershell
# Unzip (PowerShell)
Expand-Archive -Path hworld.zip -DestinationPath hworld
```

Add this controller class (the endpoint will be `/api/hello`):

```java
package com.nerdyorg.hworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloWorldController {

    @GetMapping("/hello")
    public String sayHello() {
        return "hello world";
    }
}
```

Build and run locally:

```powershell
cd C:\ws\Tutorials\Kubernetes\aks\basic-sboot-hworld\1-hworld\
mvn clean package

java -jar target/hworld-0.0.1-SNAPSHOT.jar
# test: http://localhost:8080/api/hello  — then stop the app before the next step
```

### 9.2 Build the Docker image

> Needs a `Dockerfile` in the project (see your Docker cheat sheet) and Docker running.

```bash
docker build -t hworld:latest .
docker run -p 8080:8080 hworld:latest

# in another terminal
docker container list
# test: http://localhost:8080/api/hello  — then stop the container
```

### 9.3 Push the image to Azure Container Registry

> The Docker daemon must be running. You **must** log in to ACR first.

```bash
# List the ACRs in a resource group
az acr list --resource-group NERDYORG-DEV-RG-NG --output table

# Log in to the ACR
az acr login --name NerdyorgDevNGImages

# Tag and push
docker images
docker tag hworld:latest nerdyorgdevngimages.azurecr.io/hworld:latest
docker images
docker push nerdyorgdevngimages.azurecr.io/hworld:latest

# Verify the repository exists
az acr repository list --name NerdyorgDevNGImages --output table
```

```powershell
# ...or filter (PowerShell)
az acr repository list --name NerdyorgDevNGImages --output table | Select-String 'hworld'
```

### 9.4 Deploy on AKS

> Needs a `Deployment.yaml` (see your Kubernetes manifests cheat sheet).

```powershell
# Switch to the right namespace, then create the deployment
kubectl config set-context --current --namespace="intg-poc"
kubectl create -f .\Deployment.yaml
kubectl get all
```

Check in the browser using the service's external IP: `http://<EXTERNAL_IP>:80`

### 9.5 Clean up

```powershell
# Delete the deployment
kubectl delete -f .\Deployment.yaml

# Delete the image from ACR
az acr repository delete --name NerdyorgDevNGImages --image hworld:latest
```

---

## 10. Helm & Application Gateway

### 10.1 Install Helm (Windows)

```powershell
# Download
Invoke-WebRequest -Uri https://get.helm.sh/helm-v3.11.2-windows-amd64.zip -OutFile helm.zip

# Extract
Expand-Archive -Path helm.zip -DestinationPath . -Force
```

Then add the extracted folder to your Windows `PATH`. *(Spring Boot → AKS using Helm: steps not yet completed.)*

### 10.2 Application Gateway (AppGW) — listener → backend binding

Components involved when a service is exposed through the Application Gateway (names are auto-generated by the ingress controller; `<hash>` is a generated 32-character id):

| # | Component | Example name pattern | Linked to |
|---|-----------|----------------------|-----------|
| 1 | Listener | `fl-<hash>` *(starts with `fl`)* | Routing rule `rr-<hash>` |
| 2 | Backend pool | `pool-<namespace>-<service>-8443-bp-8443` | Routing rule `rr-<hash>` |
| 3 | Health probe | `pb-<namespace>-<service>--<hash>` | Backend settings `bp-…` |
| 4 | Routing rule | `rr-<hash>` | Listener `fl-<hash>` |
| 5 | Backend settings | `bp-<namespace>-<service>--<hash>` | Health probe `pb-…` |

**What each does**

- **Listener** — entry point where traffic is first received.
- **Backend pool** — the backend servers traffic is sent to after the listener.
- **Health probe** — makes sure only healthy backend instances receive traffic.
- **Routing rule** — connects the listener with the backend pool and defines how requests are routed.
- **Backend settings** — communication settings the gateway uses when talking to backend instances.

**Traffic order:** Listener → Routing rule → Backend pool (using Backend settings, checked by the Health probe).

**Order of creation:**

1. **Backend pool** — defines where the gateway sends traffic.
2. **HTTP (backend) settings** — define how the gateway talks to the backends.
3. **Health probe** — ensures only healthy backends receive traffic.
4. **Listener** — defines where and how the gateway listens for incoming traffic.
5. **Routing rule** — links the listener to the backend pool.

---

## 11. AWS — networking & EC2

> These commands were run from PowerShell, but are standard AWS CLI and work in any shell. Account ID, VPC, subnet, security group and instance IDs are masked (last 4 kept).

### 11.1 Security groups

```bash
aws ec2 describe-security-groups --query "SecurityGroups[*].{ID:GroupId,Name:GroupName}" --output table
```

```text
------------------------------------------------------------------------------
|                           DescribeSecurityGroups                           |
+-----------------------+----------------------------------------------------+
|          ID           |                       Name                         |
+-----------------------+----------------------------------------------------+
|  sg-xxxxxxxxxxxxxfab3 |  default                                           |
|  sg-xxxxxxxxxxxxx9625 |  eks-cluster-sg-nerdyorg-eks-cluster-xxxxxx9636  |
|  sg-xxxxxxxxxxxxx35ed |  default                                           |
|  sg-xxxxxxxxxxxxxa91e |  launch-wizard-1                                   |
+-----------------------+----------------------------------------------------+
```

### 11.2 VPCs

```bash
aws ec2 describe-vpcs --query "Vpcs[*].{VPC_ID:VpcId,CIDR: CidrBlock}" --output table
```

```text
--------------------------------------------
|               DescribeVpcs               |
+----------------+-------------------------+
|      CIDR      |         VPC_ID          |
+----------------+-------------------------+
|  172.31.0.0/16 |  vpc-xxxxxxxxxxxxx8cd7  |
|  10.0.0.0/16   |  vpc-xxxxxxxxxxxxx7612  |
+----------------+-------------------------+
```

**VPC tags** (shows whether a VPC was provisioned by Crossplane):

```bash
aws ec2 describe-vpcs --query "Vpcs[*].{VPC_ID:VpcId,Tags:Tags}" --output json
```

```json
[
    { "VPC_ID": "vpc-xxxxxxxxxxxxx8cd7", "Tags": null },
    {
        "VPC_ID": "vpc-xxxxxxxxxxxxx7612",
        "Tags": [
            { "Key": "crossplane-kind", "Value": "vpc.ec2.aws.upbound.io" },
            { "Key": "crossplane-name", "Value": "nerdyorg-vpc" },
            { "Key": "crossplane-providerconfig", "Value": "default" }
        ]
    }
]
```

### 11.3 Subnets

**Subnets of a given VPC:**

```bash
aws ec2 describe-subnets --filters Name=vpc-id,Values=<VPC_ID> --query "Subnets[*].{SubnetId:SubnetId,CidrBlock:CidrBlock}" --output table
```

```text
---------------------------------------------
|              DescribeSubnets              |
+--------------+----------------------------+
|   CidrBlock  |         SubnetId           |
+--------------+----------------------------+
|  10.0.1.0/24 |  subnet-xxxxxxxxxxxxx5a69  |
|  10.0.2.0/24 |  subnet-xxxxxxxxxxxxx5e9c  |
+--------------+----------------------------+
```

**All subnets with tags:**

```bash
aws ec2 describe-subnets --query "Subnets[*].{SubnetId:SubnetId,CidrBlock:CidrBlock,Tags:Tags}" --output json
```

*(Crossplane-created subnets carry `crossplane-kind`, `crossplane-name` and `crossplane-providerconfig` tags; default-VPC subnets have `"Tags": null`.)*

### 11.4 EC2 instances

**Which instances live in a VPC:**

```bash
aws ec2 describe-instances --filters Name=vpc-id,Values=<VPC_ID> --query "Reservations[*].Instances[*].{InstanceId:InstanceId,State:State.Name,SubnetId:SubnetId}" --output table
```

```text
----------------------------------------------------------------
|                       DescribeInstances                      |
+----------------------+----------+----------------------------+
|      InstanceId      |  State   |         SubnetId           |
+----------------------+----------+----------------------------+
|  i-xxxxxxxxxxxxx8644 |  running |  subnet-xxxxxxxxxxxxx5a69  |
+----------------------+----------+----------------------------+
```

**Details of one instance** (tags, IAM role, platform, AMI):

```bash
aws ec2 describe-instances --instance-ids <INSTANCE_ID> --query "Reservations[*].Instances[*].{InstanceId:InstanceId,Tags:Tags,IAMRole:IamInstanceProfile,Platform:Platform,AMI:ImageId}" --output json
```

**What is the AMI?**

```bash
aws ec2 describe-images --image-ids <AMI_ID> --query "Images[*].{Name:Name,Description:Description,Owner:OwnerId}" --output table
```

```text
---------------------------------------------------------------------------------------
|                                   DescribeImages                                    |
+-------------+-----------------------------------------------------------------------+
|  Description|  Canonical, Ubuntu, 24.04, amd64 noble image                          |
|  Name       |  ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250610   |
|  Owner      |  099720109477                                                         |
+-------------+-----------------------------------------------------------------------+
```

**List all instance IDs:**

```bash
aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output json
```

**Status of specific instances:**

```bash
aws ec2 describe-instances --instance-ids <INSTANCE_ID_1> <INSTANCE_ID_2> --query "Reservations[*].Instances[*].{InstanceId:InstanceId,State:State.Name}" --output table
```

**Names and statuses of all machines:**

```bash
aws ec2 describe-instances --query "Reservations[*].Instances[*].{InstanceId:InstanceId,State:State.Name,Name:Tags[?Key=='Name']|[0].Value}" --output table
```

```text
----------------------------------------------------------
|                    DescribeInstances                   |
+---------------------+-------------------+--------------+
|     InstanceId      |       Name        |    State     |
+---------------------+-------------------+--------------+
|  i-xxxxxxxxxxxxx9574|  nerdyorg1      |  terminated  |
|  i-xxxxxxxxxxxxx8644|  nerdyorg-eks1  |  running     |
+---------------------+-------------------+--------------+
```

**Rename (re-tag) an instance:**

```bash
aws ec2 create-tags --resources <INSTANCE_ID> --tags Key=Name,Value=nerdyorg-eks1
```

**Terminate an instance** ⚠️ *irreversible*:

```bash
aws ec2 terminate-instances --instance-ids <INSTANCE_ID>
```

```json
{
    "TerminatingInstances": [
        {
            "InstanceId": "i-xxxxxxxxxxxxx9574",
            "CurrentState": { "Code": 48, "Name": "terminated" },
            "PreviousState": { "Code": 80, "Name": "stopped" }
        }
    ]
}
```

---

## 12. AWS — EKS cluster, node groups & Crossplane

### 12.1 Clusters & node groups

```bash
aws eks list-clusters --output text
```

```text
CLUSTERS        nerdyorg-eks-cluster
```

```bash
aws eks list-nodegroups --cluster-name nerdyorg-eks-cluster --output text
```

```text
NODEGROUPS      nerdyorg-nodegroup
```

**Node group details:**

```bash
aws eks describe-nodegroup --cluster-name nerdyorg-eks-cluster --nodegroup-name nerdyorg-nodegroup --query "nodegroup.{Name:nodegroupName,Status:status,InstanceTypes:instanceTypes,DesiredSize:scalingConfig.desiredSize}" --output table
```

```text
---------------------------------------------------
|                DescribeNodegroup                |
+--------------+------------------------+---------+
|  DesiredSize |         Name           | Status  |
+--------------+------------------------+---------+
|  1           |  nerdyorg-nodegroup  |  ACTIVE |
+--------------+------------------------+---------+
||                 InstanceTypes                 ||
|+-----------------------------------------------+|
||  t3.micro                                     ||
|+-----------------------------------------------+|
```

### 12.2 Was it provisioned by Crossplane?

Check the cluster tags — `crossplane-*` tags reveal the provisioning tool:

```bash
aws eks describe-cluster --name nerdyorg-eks-cluster --query "cluster.tags" --output json
```

```json
{
    "crossplane-providerconfig": "default",
    "owner": "nerdyorg-user",
    "crossplane-kind": "cluster.eks.aws.upbound.io",
    "crossplane-name": "nerdyorg-eks-cluster",
    "environment": "dev"
}
```

### 12.3 Worker-node auto scaling group

```bash
aws autoscaling describe-auto-scaling-groups --auto-scaling-group-names <ASG_NAME> --query "AutoScalingGroups[*].Tags" --output json
```

The tags returned include (trimmed):

```json
[
    [
        { "ResourceId": "eks-nerdyorg-nodegroup-<id>", "ResourceType": "auto-scaling-group", "Key": "eks:cluster-name", "Value": "nerdyorg-eks-cluster", "PropagateAtLaunch": true },
        { "ResourceId": "eks-nerdyorg-nodegroup-<id>", "ResourceType": "auto-scaling-group", "Key": "eks:nodegroup-name", "Value": "nerdyorg-nodegroup", "PropagateAtLaunch": true },
        { "ResourceId": "eks-nerdyorg-nodegroup-<id>", "ResourceType": "auto-scaling-group", "Key": "k8s.io/cluster-autoscaler/enabled", "Value": "true", "PropagateAtLaunch": true }
    ]
]
```

### 12.4 Switch `kubectl` to the EKS cluster

```bash
kubectl config use-context arn:aws:eks:eu-north-1:xxxxxxxx2920:cluster/nerdyorg-eks-cluster
kubectl get nodes
```

```text
NAME                                        STATUS   ROLES    AGE   VERSION
ip-10-0-1-110.eu-north-1.compute.internal   Ready    <none>   41h   v1.29.15-eks-473151a
```

### 12.5 Worker node details

```bash
kubectl describe node ip-10-0-1-110.eu-north-1.compute.internal
```

Key parts of the output (trimmed):

```text
Name:               ip-10-0-1-110.eu-north-1.compute.internal
Roles:              <none>
Labels:             beta.kubernetes.io/instance-type=t3.micro
                    eks.amazonaws.com/capacityType=ON_DEMAND
                    eks.amazonaws.com/nodegroup=nerdyorg-nodegroup
                    topology.kubernetes.io/region=eu-north-1
                    topology.kubernetes.io/zone=eu-north-1b
Taints:             <none>
Unschedulable:      false
Conditions:
  Type             Status  Reason                       Message
  ----             ------  ------                       -------
  MemoryPressure   False   KubeletHasSufficientMemory   kubelet has sufficient memory available
  DiskPressure     False   KubeletHasNoDiskPressure     kubelet has no disk pressure
  PIDPressure      False   KubeletHasSufficientPID      kubelet has sufficient PID available
  Ready            True    KubeletReady                 kubelet is posting ready status
Addresses:
  InternalIP:   10.0.1.110
  ExternalIP:   x.x.x.85
Capacity:
  cpu:     2
  memory:  950028Ki
  pods:    4
System Info:
  Machine ID:                 xxxxxxxxxxxxxxxxxxxxxxxxxxxx7c3a
  System UUID:                xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx7c3a
  OS Image:                   Amazon Linux 2
  Container Runtime Version:  containerd://1.7.27
  Kubelet Version:            v1.29.15-eks-473151a
ProviderID:                   aws:///eu-north-1b/i-xxxxxxxxxxxxx8644
Non-terminated Pods:          (4 in total)
  Namespace    Name                        CPU Requests  Memory Requests
  ---------    ----                        ------------  ---------------
  kube-system  aws-node-jgd5p              50m (2%)      0 (0%)
  kube-system  coredns-5b675669bb-r6ngx    100m (5%)     70Mi (13%)
  kube-system  coredns-5b675669bb-sc4q7    100m (5%)     70Mi (13%)
  kube-system  kube-proxy-xd75d            100m (5%)     0 (0%)
```

**All pods running on a given worker node:**

```bash
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=ip-10-0-1-110.eu-north-1.compute.internal
```

```text
NAMESPACE     NAME                       READY   STATUS    RESTARTS   AGE   IP           NODE
kube-system   aws-node-jgd5p             2/2     Running   0          41h   10.0.1.110   ip-10-0-1-110.eu-north-1.compute.internal
kube-system   coredns-5b675669bb-r6ngx   1/1     Running   0          46h   10.0.1.101   ip-10-0-1-110.eu-north-1.compute.internal
kube-system   coredns-5b675669bb-sc4q7   1/1     Running   0          46h   10.0.1.61    ip-10-0-1-110.eu-north-1.compute.internal
kube-system   kube-proxy-xd75d           1/1     Running   0          41h   10.0.1.110   ip-10-0-1-110.eu-north-1.compute.internal
```

### 12.6 IAM role lookup

Find a role by name (here the Crossplane EKS cluster role):

```bash
aws iam list-roles --query "Roles[?contains(RoleName, 'CrossplaneEKSClusterRole')]" --output json
```

```json
[
    {
        "Path": "/",
        "RoleName": "CrossplaneEKSClusterRole",
        "RoleId": "AROAS2N56HYEKE5LVBLIG",
        "Arn": "arn:aws:iam::xxxxxxxx2920:role/CrossplaneEKSClusterRole",
        "CreateDate": "2025-06-23T19:10:43+00:00",
        "AssumeRolePolicyDocument": {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Effect": "Allow",
                    "Principal": { "Service": [ "ec2.amazonaws.com", "eks.amazonaws.com" ] },
                    "Action": "sts:AssumeRole"
                }
            ]
        },
        "Description": "IAM role for Crossplane to manage EKS cluster resources - Allows the cluster Kubernetes control plane to manage AWS resources on your behalf.",
        "MaxSessionDuration": 3600
    }
]
```
