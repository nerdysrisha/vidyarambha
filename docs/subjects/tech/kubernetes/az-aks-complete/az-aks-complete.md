> Azure Kubernetes

|                         |                 |
|-------------------------|-----------------|
| **Version**             | **1.0**         |
 
<span id="_Toc3117" class="anchor"></span>Table of Contents

[Table of Contents [2](#_Toc3117)](#_Toc3117)
 

**\**

# AKS 

Four dimensions for AKS

1.  Kube concepts

2.  Azure Kubernetes Services

3.  Azure DevOps

4.  Terraform

## Below are the Kubernetes concepts. 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image1.webp" style="width:4.80694in;height:2.51875in" />

## Below are the Azure Services. 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image2.webp" style="width:4.59028in;height:2.35347in" />

## Below is the Azure DevOps. 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image3.webp" style="width:4.37014in;height:4.81042in" />

## Below is the Terraform.

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image4.webp" style="width:4.12153in;height:4.61667in" />

## GitHub Link of artefacts

- [**<u>Azure AKS Kubernetes - Masterclass \| Azure DevOps, Terraform: </u>**](https://github.com/stacksimplify/azure-aks-kubernetes-masterclass)https://github.com/stacksimplify/azure-aks-kubernetes-masterclass

- **[<u>Azure DevOps for Kubernetes Workloads running on Azure AKS Cluster:</u>](https://github.com/stacksimplify/azure-devops-github-acr-aks-app1) **https://github.com/stacksimplify/azure-devops-github-acr-aks-app1

- [**<u>Provision Azure AKS Cluster using Terraform and Azure DevOps:</u>**](https://github.com/stacksimplify/azure-devops-aks-kubernetes-terraform-pipeline) <https://github.com/stacksimplify/azure-devops-aks-kubernetes-terraform-pipeline>

- [**<u>Docker Fundamentals: </u>**](https://github.com/stacksimplify/docker-fundamentals)https://github.com/stacksimplify/docker-fundamentals

- [**<u>Presentation with 250 Slides outlining the various architectures and designs we are going to do in this course: </u>**](https://github.com/stacksimplify/azure-aks-kubernetes-masterclass/tree/master/ppt-presentation)https://github.com/stacksimplify/azure-aks-kubernetes-masterclass/tree/master/ppt-presentation

## Docker Fundamentals

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image5.webp" style="width:7.67917in;height:3.84931in" />

## Kubernetes Fundamentals

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image6.webp" style="width:5.59444in;height:4.10347in" />

The above picture represents two approaches to how we can interact with Kubernetes. The first one is Imperative meaning, purely using the kubectl commands. The second one is Declarative, meaning using YAML files and then with Kubectl commands.

## AKS Storage Fundamentals (Azure Disks)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image7.webp" style="width:6.48403in;height:3.48125in" />

## AKS Storage Fundamentals (MySql DB) 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image8.webp" style="width:7.67917in;height:3.97153in" />

## AKS Storage Fundamentals (Azure Files) 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image9.webp" style="width:7.67917in;height:4.60347in" />

## Azure Standard Load Balancer 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image10.webp" style="width:7.67778in;height:4.89236in" />

## POD-Service-Public IP Configuration and comparison – 2 examples (One Ingress and One Service)

### Istio Service: Load Balancing \| Load Balancer

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image11.webp" style="width:7.6875in;height:2.62014in" />

### Istio Service: Public IP address

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image12.webp" style="width:7.68125in;height:3.13819in" />

### Istio Service / Ingress: Ingress

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image13.webp" style="width:7.68125in;height:2.37917in" />

### Sample (nginx) Service: Load Balancing \| Load Balancer

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image14.webp" style="width:7.68125in;height:2.31875in" />

### Sample (nginx) Service: Public IP Address

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image15.webp" style="width:7.68125in;height:2.37917in" />

### Sample (nginx) Service/Ingress: Service

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image16.webp" style="width:7.67222in;height:2.57778in" />

## Replica Sets

They maintain ‘fixed’ number replicas as specified.

It uses Labels and Selectors to maintain the same and ties all the things together.

Purpose is to maintain HA, Scalability and Reliability.

Important : This is either created explicitly if we want to do some tests etc, else, if we go with ‘deployment’ option then the replica set is automatically created behind the scenes.

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image17.webp" style="width:6.19861in;height:3.87083in" />

Below diagram shows that the PODs get automatically Load balanced using the Service

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image18.webp" style="width:5.96528in;height:4.28472in" />

### Key Points, when HPA/Deployment.yaml is used

- Initial State: Kubernetes starts with the number of replicas specified in the **Deployment** (Eg. 3 replicas in this a sample usecase).

- Autoscaling: The HPA will adjust the number of replicas dynamically based on the observed metrics (e.g., CPU utilization). If the load increases, it might scale up the number of replicas, and if the load decreases, it might scale down the number of replicas.

- Minimum and Maximum Boundaries: The HPA will only adjust the number of replicas within the specified range (1-10 in this example). It will not reduce the number of replicas below 1 or increase it above 10.

- When we define a **Deployment** in Kubernetes, Kubernetes **<u>automatically</u>** creates and manages an appropriate ReplicaSet behind the scenes. This ReplicaSet is responsible for maintaining the desired number of pod replicas as specified in the Deployment.

## Deployment

- This is higher abstraction on top of Replica sets, but with more features and controls

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image19.webp" style="width:7.68125in;height:4.41389in" />

## Service

- This is the Kubernetes object to expose multiple pods to other applications.

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image20.webp" style="width:7.67986in;height:3.99236in" />

### Service Type: Cluster IP

Below show how individual pods are accessible via Cluster IP

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image21.webp" style="width:3.30069in;height:1.98194in" />

### Service Type: Load Balancer

Below show how individual pods are accessible via Load Balancer.

When we choose this option, the cloud provider load balancer is involved automatically.

Refer 3.11 Azure Standard Load Balancer section above.

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image22.webp" style="width:4.69514in;height:2.68958in" />

### xxx

|     |
|-----|
|     |

## YAML Basics

- The extension of the file can be either .yml or .yaml

### Key Value Pairs

- Key Value Pair notations. This is basic and foundation structure

- <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image23.webp" style="width:3.10347in;height:1.4625in" />

### Dictionary/Map 

- Dictionary/Map. Higher level to KV Pair. Below we have two such dictionaries viz., customer and account

- <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image24.webp" style="width:3.72639in;height:2.42431in" />

### List or Arrays – Pattern 1

- We can annotate in pattern 1 the List or Arrays as shown for phoneNumbers and cardNumbers

- Below we have two such Lists viz., phoneNumbers and cardNumbers. Notice the spaces that are seen with periods when highlighted. Indentation is very important.

- <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image25.webp" style="width:3.59444in;height:3.62292in" />

### List or Array – Pattern 2

We can annotate the list in pattern 2 where beneficiaries is represented.

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image26.webp" style="width:5.5375in;height:4.06597in" />

### List or Array – with child List

We can annotate a child list as seen under customer viz., loans but having ‘list-of-type-and-amount’, that is repeated

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image27.webp" style="width:5.5in;height:5.47153in" />

### Pictorial representation 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image28.webp" style="width:5.5in;height:5.47153in" />

### Document separator

We can include multiple definitions instead of having multiple yaml files, into a single one.

This can be achieved using the ‘document separator’ <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image29.webp" style="width:5.40556in;height:6.05694in" />

### Comments – How to put them 

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image30.webp" style="width:6.11319in;height:7.00972in" />

##  YAML Declarative: Create a POD

###  Sample: Create a POD

- Create a simple YAML as below and execute a command to create a POD.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  labels:
    app: my-nginx-app
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80
    resources:
      requests:
        memory: "64Mi"
        cpu: "250m"
      limits:
        memory: "128Mi"
        cpu: "500m"
```

Command:

```bash
kubectl create -f nginx-pod.yml
```

###  Sample: Create a Service for the POD

- Create a simple YAML as below and execute a command to create a POD.

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-pod-service
spec:
  type: LoadBalancer
  selector:
    app: my-nginx-app
  ports:
    - name: http
      port: 80
      targetPort: 80
```

Command:

```bash
kubectl create -f nginx-pod-service.yml
```

###  Important Binding between POD and Service

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image31.webp" style="width:7.67917in;height:2.86806in" />

##  YAML Declarative: Create a ReplicaSet

###  Sample: Create a ReplicaSet

- Create a simple YAML as below and execute a command to create

```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: nginx-pod-replicaset
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-nginx-app
  template:
    metadata:
      name: nginx-pod
      labels:
        app: my-nginx-app
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
        resources:
          requests:
            memory: "64Mi"
            cpu: "250m"
          limits:
            memory: "128Mi"
            cpu: "500m"
```

###  Sample: Create a Service for ReplicaSet

- Create a simple YAML as below and execute a command to create

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image32.webp" style="width:7.6875in;height:3.74444in" />

###  Important Binding between RS and Service

- Create a simple YAML as below and execute a command to create

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image32.webp" style="width:7.6875in;height:3.74444in" />

##  YAML Declarative: Create a Deployment

###  Sample: Create a Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-pod-using-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-nginx-app
  template:
    metadata:
      name: nginx-pod
      labels:
        app: my-nginx-app
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
        resources:
          requests:
            memory: "64Mi"
            cpu: "250m"
          limits:
            memory: "128Mi"
            cpu: "500m"
```

###  Sample: Create a Service for Deployment

```yaml
apiVersion: v1
kind: Service
metadata:
  name: deployment-nginx-pod-service
spec:
  type: ClusterIP
  selector:
    app: my-nginx-app
  ports:
    - name: http
      port: 80
      targetPort: 80
```

## Azure Disks

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image33.webp" style="width:7.6875in;height:4.10278in" />

Highlights of using Azure Storage Disks

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image34.webp" style="width:7.67917in;height:3.5in" />

### Pictorial representation of PVC, PV and SC

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image35.webp" style="width:7.67917in;height:3.14167in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image36.jpeg" style="width:7.6875in;height:4.54653in" alt="No alternative text description for this image" />

### Azure Storage Classes

Below is a sample YAML to define a Storage class with possible values each of the lines can take. Usually we don’t need to create a Storage Class and always recommended to use the Azure Storage Classes that are predefined.

```yaml
allowVolumeExpansion: true | false
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  creationTimestamp: "2023-07-06T16:40:00Z"
  labels:
    addonmanager.kubernetes.io/mode: EnsureExists | Reconcile | Remove
    kubernetes.io/cluster-service: "true" | "false"
  name: managed
  resourceVersion: "370"
  uid: c4eb7c40-6e9e-4277-8324-15ca5e5a3fae
parameters:
  cachingmode: ReadOnly | ReadWrite | None
  kind: Managed | Shared | Dedicated
  storageaccounttype: Standard_LRS | StandardSSD_LRS | Premium_LRS | UltraSSD_LRS
provisioner: disk.csi.azure.com | kubernetes.io/azure-disk | kubernetes.io/aws-ebs | kubernetes.io/gce-pd
reclaimPolicy: Delete | Retain | Recycle
volumeBindingMode: WaitForFirstConsumer | Immediate
```

### Azure Disks

Xx

## Kubernetes Ingress Services

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image37.webp" style="width:6.90556in;height:3.67292in" />

For sample implementation refer the ‘kubernetes-cheat-sheet.sh’

## Kubernetes Domain name driven routing

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image38.webp" style="width:7.6875in;height:4.19722in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image39.webp" style="width:7.6875in;height:4.07014in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image40.webp" style="width:7.6875in;height:4.07014in" />

## Kubernetes Fundamentals (Requests and Limits)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image41.webp" style="width:6.08472in;height:3.13958in" />

Running same instance of an image (or two containers of same ‘kind’) not recommended. From Udemy Kaila course

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image42.webp" style="width:3.67292in;height:1.97639in" />

## Kubernetes Fundamentals (Namespaces and DNS)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image43.webp" style="width:7.67917in;height:4.00972in" />

## Kubernetes Fundamentals (Limit Range)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image44.webp" style="width:7.67917in;height:4.02847in" />

## Kubernetes Fundamentals (Virtual Nodes or Serverless)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image45.webp" style="width:7.67917in;height:3.37708in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image46.webp" style="width:7.67917in;height:4.04722in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image47.webp" style="width:7.67917in;height:4in" />

## Kubernetes Fundamentals (Container Registry)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image48.webp" style="width:7.67917in;height:4.07569in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image49.webp" style="width:7.67917in;height:4.10347in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image50.webp" style="width:7.6875in;height:4.12222in" />

## Kubernetes Fundamentals (Azure pipelines)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image51.webp" style="width:7.6875in;height:3.97083in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image52.webp" style="width:7.67917in;height:4.02847in" />

## Kubernetes Fundamentals (Pipelines)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image53.webp" style="width:7.67917in;height:3.78333in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image54.webp" style="width:7.63611in;height:4in" />

## Kubernetes Fundamentals (Customized pipeline)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image55.webp" style="width:7.67917in;height:3.94306in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image56.webp" style="width:7.67917in;height:4in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image57.webp" style="width:7.6875in;height:4.10278in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image58.webp" style="width:7.6875in;height:4.05625in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image59.webp" style="width:7.6875in;height:3.79861in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image60.webp" style="width:7.63611in;height:3.45486in" />

## Kubernetes Fundamentals (http app routing – add on)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image61.webp" style="width:7.67917in;height:4.09444in" />

## Kubernetes Fundamentals (Cluster Access)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image62.webp" style="width:7.67917in;height:3.97153in" />

## Kubernetes Fundamentals (Active Directory Authentication)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image63.webp" style="width:7.67917in;height:4.09444in" />

## Kubernetes Fundamentals (RBAC)

Must watch : <https://www.youtube.com/watch?v=MGCF6slXG0w>

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image64.webp" style="width:7.6875in;height:4.04653in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image65.webp" style="width:7.67917in;height:3.94306in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image66.webp" style="width:7.6875in;height:3.97917in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image67.webp" style="width:7.6875in;height:4.07014in" />

## Kubernetes Fundamentals (Auto Scaling)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image68.webp" style="width:7.6875in;height:4.38611in" />

## Kubernetes Fundamentals (Production grade cluster)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image69.webp" style="width:7.67917in;height:4.77361in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image70.webp" style="width:7.67917in;height:4.14167in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image71.webp" style="width:7.67917in;height:4.07569in" />

## Kubernetes Fundamentals (CLI Access)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image72.webp" style="width:7.67917in;height:4in" />

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image73.webp" style="width:7.63611in;height:4.09097in" />

#  Kubernetes Cluster Intro

## Kubernetes (AKS Architecture)

<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image74.webp" style="width:7.6875in;height:4.48056in" alt="Diagram Description automatically generated" />

#  Kubernetes on Docker - LINUX (Ubuntu) 

##  Setup Docker 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">sudo apt-get update &amp;&amp; sudo apt-get install -y docker.io</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image75.webp" style="width:7.67847in;height:1.475in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">docker --version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image76.webp" style="width:5.59375in;height:0.8125in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p># Check Docker service status</p>
<pre><code class="language-bash">systemctl status docker</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image77.webp" style="width:7.67778in;height:2.47361in" /></p></td>
</tr>
<tr>
<td><p>→If the docker is installed using the ‘snap’ then use below.</p>
<pre><code class="language-bash">snap services docker</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image78.webp" style="width:7.67778in;height:2.24236in" alt="{226E80AD-D296-47A4-A084-C134EAEB6844}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p># Confirm user is in docker group</p>
<p>groups $USER</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image79.webp" style="width:4.3125in;height:0.53125in" /></p></td>
</tr>
</tbody>
</table>

##  Setup Kubectl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>It downloads the latest stable version of kubectl, makes it executable, and moves it to /usr/local/bin so it’s available system-wide.</p>
<pre><code class="language-bash">curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" &amp;&amp; chmod +x kubectl &amp;&amp; sudo mv kubectl /usr/local/bin/</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image80.webp" style="width:7.68542in;height:1.34583in" /></p></td>
</tr>
<tr>
<td><p>→Or, alternate way is</p>
<pre><code class="language-bash">sudo snap install kubectl --classic</code></pre></td>
</tr>
</tbody>
</table>

###  Kube Config Location 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>It is important to understand about the Kube Config. This file contains the key information</p>
<pre><code class="language-bash">ls -l ~/.kube/config</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image81.webp" style="width:7.68611in;height:1.05347in" /></p></td>
</tr>
</tbody>
</table>

###  Kube Config View

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>When we download the kubectl it will not have any cluster bydefault bound to it. Meaning when we run something like kubectl get nodes, for the very first time when it is installed we get nothing.</p>
<p>There must be some binding happenning with the kubectl.</p>
<p>In my case I am placing these screenshots as below after certain steps have been done.</p>
<p>In my case I was using the KIND cluster, where I setup KIND Cluster and also created K8 Cluster using commands.</p>
<p>Such action then will automatically create a config which we see below.</p>
<pre><code class="language-bash">kubectl config view</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image82.webp" style="width:7.67986in;height:4.90486in" /></p></td>
</tr>
</tbody>
</table>

###  View the Configuration 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>We can view the configuration in detail by using the cat of the file. Notice there is the <strong>IP address of the control plane</strong>. Given it is running in local we can see 127.0.0.0 as server address.</p>
<p>When we have configured a remote server like AKS or EKS, we can see this different configuration.</p>
<pre><code class="language-bash">cat ~/.kube/config</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image83.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image84.webp" style="width:7.67153in;height:2.2375in" /></p></td>
</tr>
<tr>
<td><p>If we are using Docker Desktop (on windows) we get this file in below location usually and has similar information.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image85.webp" style="width:7.67778in;height:2.24306in" /></p></td>
</tr>
<tr>
<td><p>File Contents could be seen as below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image86.webp" style="width:5.65486in;height:3.41667in" /></p></td>
</tr>
</tbody>
</table>

##  Setup KIND - on Docker 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64 &amp;&amp; chmod +x ./kind &amp;&amp; sudo mv ./kind /usr/local/bin/kind</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image87.webp" style="width:7.67778in;height:1.22847in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash"># Validate kubectl installation
kubectl version --client
# Validate KIND installation
kind version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image88.webp" style="width:6.55208in;height:1.82292in" /></p></td>
</tr>
</tbody>
</table>

##  Add current user to docker group

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Add your user to the Docker group</p>
<pre><code class="language-bash">sudo usermod -aG docker $USER</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image89.webp" style="width:6.53125in;height:0.60417in" /></p></td>
</tr>
<tr>
<td><p>newgrp docker</p>
<p>newgrp docker switches your current shell session to the docker group without logging out.</p>
<p>It applies the group membership change immediately so you can access Docker without sudo.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image90.webp" style="width:7.68125in;height:1.37431in" /></p></td>
</tr>
</tbody>
</table>

##  Setup up Cluster (Using kind tool) - USED THIS OPTION - EASY WAY

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→As a prerequisite we need to have ‘kind’ tool installed for easier setup of kubernetes on docker.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image91.webp" style="width:7.67917in;height:2.13125in" alt="{AFC1FA68-7363-4D9A-9D55-270EA74F5825}" /></p>
<pre><code class="language-bash">curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.22.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind</code></pre></td>
</tr>
<tr>
<td><p>→In this option we use the downloaded tool as above.</p>
<p>→Create a config file as below. This will create one control plane and 2 data planes (worker nodes)</p>
<pre><code class="language-yaml">kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
  - role: control-plane
  - role: worker
  - role: worker</code></pre></td>
</tr>
<tr>
<td><p>On linux if we want a direct way.</p>
<pre><code class="language-bash">cd /home/sridhara/Downloads/k8cluster</code></pre>
<p>Or on personal laptop</p>
<pre><code class="language-yaml">cd /home/admin/Downloads/k8cluster
cat &lt;&lt;EOF &gt; kind-config-workers.yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
- role: worker
EOF</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image92.webp" style="width:7.68472in;height:3.22569in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">vim kind-config-workers.yaml
cat kind-config-workers.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image93.webp" style="width:4.54583in;height:1.70764in" /></p></td>
</tr>
<tr>
<td><p>→Apply after navigating to appropriate directory. Eg. Wherever it is created.</p>
<pre><code class="language-bash">cd /home/sridhara/Downloads/k8cluster
kind create cluster --name intg-ks --config ./kind-config-workers.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image94.webp" style="width:7.67778in;height:2.43194in" /></p></td>
</tr>
<tr>
<td><p>→Get Cluster Info</p>
<pre><code class="language-bash">kubectl cluster-info --context kind-intg-ks</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image95.webp" style="width:7.68403in;height:0.95139in" /></p></td>
</tr>
<tr>
<td><p>→Get Nodes</p>
<pre><code class="language-bash">kubectl get nodes</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image96.webp" style="width:5.17083in;height:0.89097in" /></p>
<pre><code class="language-bash">kubectl get nodes -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image97.webp" style="width:7.68542in;height:0.54236in" /></p></td>
</tr>
<tr>
<td><p>→Get pods</p>
<pre><code class="language-bash">kubectl get pods -A</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image98.webp" style="width:7.68472in;height:2.43333in" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces</p>
<pre><code class="language-bash">kubectl get ns</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image99.webp" style="width:4.5in;height:1.61458in" /></p></td>
</tr>
</tbody>
</table>

##  Mount Host Directory

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Inside the Linux directory mount a host directory so that we can runn the commands directly on the Ubuntu environment.</p>
<p>→Using the UI -- Naviagate to shared folders and add. Notice below I have added two. One is WS where my spring boot applications are placed.</p>
<p>→While add the shared folder, ensure it is checked with ‘auto mount’ option, so that whenever Machine is started, the folder gets auto-mounted.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image100.webp" style="width:7.68125in;height:4.38958in" /></p>
<pre><code class="language-bash">df -h</code></pre>
<p>The permission given to the mount directory should of ‘vboxsf’ group’.</p>
<p>Currently, it is given as root.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image101.webp" style="width:6.66667in;height:2.76042in" alt="Untitled" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image102.webp" style="width:7.67917in;height:2.85486in" /></p></td>
</tr>
</tbody>
</table>

##  Access Ubuntu Shell on Windows (Local Laptop)

|  |
|----|
| →We will need to access the Ubuntu VM to be accessed from host windows. This will be much easier to operate rather while being on Ubuntu. |

### Install / Start SSH Server inside Ubuntu 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Ensure <strong>ssh-server is installed,</strong> up and running</p>
<p><strong>→If not</strong> use below commands to setup</p>
<pre><code class="language-bash">sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image103.webp" style="width:7.68472in;height:3.1375in" /></p></td>
</tr>
</tbody>
</table>

###  Additional commands to validate 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">sudo systemctl is-active ssh
sudo systemctl is-enabled ssh
sudo netstat -tulpn | grep :22
ps aux | grep sshd</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image104.webp" style="width:7.67639in;height:1.79792in" /></p></td>
</tr>
</tbody>
</table>

###  Configure PortForwarding using VBoxManage

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below is on the banklaptop (HP)</p>
<pre><code class="language-bash">cd "C:\Program Files\Oracle\VirtualBox"
.\VBoxManage.exe list vms</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image105.webp" style="width:7.46875in;height:0.625in" /></p></td>
</tr>
<tr>
<td><p>→Below is on the personal laptop (Lenovo). Notice the ubuntu uuid.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image106.webp" style="width:5.90625in;height:2.375in" alt="{0B9B0BA8-14BC-4700-AC6B-B520610074A1}" /></p></td>
</tr>
</tbody>
</table>

#### Check State of VMs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We need to run modify commands (ahead) on stopped VMs.</p>
<p>→Notice the VMs that we have is stopped</p>
<pre><code class="language-bash">cd "C:\Program Files\Oracle\VirtualBox"
.\VBoxManage.exe list vms -l | findstr /C:"Name:" /C:"State:"</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image107.webp" style="width:7.67708in;height:1.06806in" /></p></td>
</tr>
<tr>
<td><p>→On personal laptop (Lenovo). Notice it is <strong>running</strong>.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image108.webp" style="width:7.68194in;height:1.21736in" alt="{1D66834D-0406-4FA0-AC78-743796273929}" /></p></td>
</tr>
</tbody>
</table>

#### Create a Portforwarding rule - On Stopped VM - Give custom name. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">cd "C:\Program Files\Oracle\VirtualBox"
.\VBoxManage.exe modifyvm "ubuntu" --natpf1 "ssh-sri,tcp,,2222,,22"</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image109.webp" style="width:7.67639in;height:0.64028in" /></p></td>
</tr>
<tr>
<td><p>Check on UI if this is reflected. Navigate to Network -- Click Port Forwarding --To view</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image110.webp" style="width:6.575in;height:3.75625in" /></p></td>
</tr>
<tr>
<td><p>Notice it is added</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image111.webp" style="width:7.68472in;height:4.43819in" /></p></td>
</tr>
</tbody>
</table>

###  Start the VM (Command line or UI) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">Command line
cd "C:\Program Files\Oracle\VirtualBox"
.\VBoxManage.exe startvm "ubuntu"</code></pre></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image112.webp" style="width:7.5625in;height:1.13542in" /></p></td>
</tr>
</tbody>
</table>

###  Increase the size of Disk 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Shut down the VM first.</p>
<pre><code class="language-bash">cd "C:\Program Files\Oracle\VirtualBox"
.\VBoxManage.exe list vms</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image113.webp" style="width:7.68333in;height:1.31181in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-plaintext">.\VBoxManage.exe modifyhd "C:\Users\sridhara\VirtualBox VMs\ubuntu\ubuntu.vdi" --resize 50000</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image114.webp" style="width:7.68264in;height:0.57847in" /></p></td>
</tr>
<tr>
<td><p>Once booted check the size.</p>
<pre><code class="language-bash">df -h</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image115.webp" style="width:7.68681in;height:2.15139in" /></p></td>
</tr>
<tr>
<td><p>Notice if it is not picked up run below commands</p>
<pre><code class="language-bash">sudo apt install -y cloud-guest-utils
sudo growpart /dev/sda 2
sudo resize2fs /dev/sda2
df -h</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image116.webp" style="width:7.68542in;height:4.18333in" /></p></td>
</tr>
</tbody>
</table>

###  Login to Ubuntu from Host using SSH 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">ssh sridhara@localhost -p 2222
Password: &lt;removed&gt;</code></pre>
<p>We will need to provide the username that we want to use to login and then also provide password subsequently.</p>
<p>This will add the host to ‘known hosts’</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image117.webp" style="width:7.68472in;height:5.30694in" /></p></td>
</tr>
</tbody>
</table>

###  Test using some commands

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image118.webp" style="width:7.68194in;height:2.64514in" /> |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image119.webp" style="width:7.67222in;height:2.93403in" /> |

##  Access Cluster

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>There are three ways to access the cluster</p>
<ol type="A">
<li><p>CLI</p></li>
<li><p>UI</p></li>
<li><p>API</p>
<p>We know the first two so below quick snippets show how to access the cluster using API</p></li>
</ol></td>
</tr>
<tr>
<td><p>Check the cluster port.</p>
<p>For instance here it is exposed on <strong>33579</strong>. Hence the api can be accessed on the same.</p>
<p>Get the cluster version</p>
<pre><code class="language-bash">docker ps
curl --insecure https://localhost:33579/version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image120.webp" style="width:7.67361in;height:2.53958in" /></p></td>
</tr>
</tbody>
</table>

###  Access ‘Controlled’ resources

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>We need to get some token or config mapping before accessing certain resources of k8.</p>
<p>For example accessing some resources like namespaces get forbidden. To access such resources, either we need a token or proxy.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image121.webp" style="width:7.67569in;height:1.66111in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">Via Proxy
kubectl proxy</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image122.webp" style="width:6in;height:0.71875in" /></p>
<p>In another terminal</p>
<pre><code class="language-bash">curl http://localhost:8001/api/v1/namespaces</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image123.webp" style="width:7.6875in;height:3.675in" /></p></td>
</tr>
</tbody>
</table>

###  Check location of Kubeconfig file 

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image81.webp" style="width:7.68611in;height:1.05347in" /> |

##  Changing Contexts

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>There will be cases, we will be adding ‘remote’ kubernetes cluster configuration in local.</p>
<p>For instance we may have already a local (eg. Linux kubernetes or windows kubernetes) and want to add a remote EKS or AKS cluster.</p>
<p>In such cases we will need to switch the context between local vs remote as needed.</p>
<p>Below commands show the context fetching and switching.</p></td>
</tr>
<tr>
<td><p>Fetch all the contexts.</p>
<pre><code class="language-bash">kubectl config get-contexts</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image124.webp" style="width:7.27083in;height:0.90625in" /></p></td>
</tr>
<tr>
<td><p>Switch the context.</p>
<pre><code class="language-bash">kubectl config get-contexts
kubectl config current-context
kubectl config use-context kind-intg-ks</code></pre>
<p>Kubectl get ns</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image125.webp" style="width:7.68056in;height:4.59583in" /></p></td>
</tr>
</tbody>
</table>

##  Delete Cluster 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kind delete cluster --name intg-ks</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image126.webp" style="width:7.67986in;height:1.01597in" /></p></td>
</tr>
</tbody>
</table>

#  Kubernetes on Docker Desktop – Windows 

##  UI Driven Kubernetes (Kubeadmin or KIND)

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→There are two ways to enable K8 on Docker Desktop.</p>
<p>→One is <strong>Kubeadmin</strong> (this has single node). Second is ‘KIND’, here we can choose number of worker nodes.</p>
<p>→Below step uses ‘KIND’ option.</p>
<p>→However, if we choose this option the images / pods etc are ephemeral and may die, upon restart etc.</p>
<p>→Choose the Explicit Command driven KIND tool option.</p>
<p>→Further, if we want KIND (Kubernetes In Docker), we have two options again</p>
<p>→One: UI Driven KIND (Only to test we will see this)</p>
<p>→Second: Command Line Driven KIND (We will use this option ahead)</p></td>
</tr>
</tbody>
</table>

###  Enable Kubernetes – Choose Kind option – Select Nodes – That’s it ! 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image127.webp" style="width:6.45139in;height:4.03194in" /></p></td>
</tr>
<tr>
<td><p>→If we choose the ‘KIND’ option, then kubernetes runs as ‘containers’ inside the docker.</p>
<p>→One container is dedicated as ‘control-plane’ (or master node)</p>
<p>→Another container is dedicated as ‘data-plane’ (or worker node)</p></td>
</tr>
</tbody>
</table>

###  Get Cluster Info – Nodes 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get nodes
kubectl cluster-info</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image128.webp" style="width:7.52361in;height:1.63264in" alt="{C3A63BFE-843F-43A9-B2D3-192EF35665A7}" /></p></td>
</tr>
<tr>
<td><p>→Below is docker desktop ‘containers’ ui, notice we have two containers dedicated as ‘control plane’ and ‘data plane’</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image129.webp" style="width:7.53264in;height:2.41389in" alt="{4D8A3349-BA93-48D4-B010-21CA52789738}" /></p></td>
</tr>
</tbody>
</table>

##  Command Line Driven KIND : Install KIND

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>winget install kind</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image130.webp" style="width:7.52639in;height:2.31181in" alt="{2D4ADFC1-56C1-4880-AAD6-FC578FFC1FA3}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kind version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image131.webp" style="width:3.84375in;height:1.05208in" alt="{05BA745B-ABB1-43C3-80B0-AAAD479F1059}" /></p></td>
</tr>
</tbody>
</table>

##  Setup up Cluster (Using kind tool)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→In this option we use the downloaded tool as above.</p>
<p>→Create a config file as below. This will create one control plane and 2 data planes (worker nodes)</p>
<pre><code class="language-yaml">kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
  - role: control-plane
  - role: worker
  - role: worker</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">cd C:\ws\k8basics\101basic-resources\kind-config-with-worker
kind create cluster --name intg-ks --config kind-config-workers.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image132.webp" style="width:7.52917in;height:3.42847in" alt="{22FA731D-6FC8-4C29-9B0F-5B2369932E7C}" /></p></td>
</tr>
<tr>
<td><p>→Get Cluster Info</p>
<pre><code class="language-bash">kubectl cluster-info --context kind-intg-ks</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image133.webp" style="width:7.5375in;height:1.01736in" alt="{7A520A28-2259-4808-8576-04EB1E261C1B}" /></p></td>
</tr>
<tr>
<td><p>→Get Nodes</p>
<pre><code class="language-bash">kubectl get nodes</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image134.webp" style="width:7.53403in;height:1.44931in" alt="{BB196FA5-575F-4422-88DC-17F673DAA6EF}" /></p>
<pre><code class="language-bash">kubectl get nodes -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image135.webp" style="width:7.53056in;height:0.55in" alt="{FAEA90AC-5D02-44F8-A7B9-3622986BDD40}" /></p></td>
</tr>
<tr>
<td><p>→Get pods</p>
<pre><code class="language-bash">kubectl get pods -A</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image136.webp" style="width:7.53333in;height:2.49583in" alt="{254C9B9B-B5D2-405F-818C-0017EEB70B1F}" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces</p>
<pre><code class="language-bash">kubectl get ns</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image137.webp" style="width:7.54167in;height:1.81875in" alt="{02DC8378-7E6F-4F5B-9F50-066CAFD63A76}" /></p></td>
</tr>
<tr>
<td><p>→Check resources that come as part of the vanila kubernetes. Notice the resources we commonly use like configmaps, pods, deployments, secrets etc.</p>
<pre><code class="language-bash">kubectl api-resources</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image138.webp" style="width:7.68403in;height:3.72083in" /></p></td>
</tr>
</tbody>
</table>

#  K8 - Basics ( NS / Pod / Depl/ DSet / Job / Cron / PV / PVC / Port Fwd)

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>Below commands are common for Linux and Windows driven KIND</p>
<p>However, all these are executed on Windows</p></td>
</tr>
</tbody>
</table>

##  Create Namespace

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Namespace
metadata:
  name: integrations</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">cd C:\ws\k8basics\101basic-resources
kubectl apply -f .\namespace.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image139.webp" style="width:7.33333in;height:1.13542in" alt="{6A76B42D-16ED-4194-9075-7224C127D068}" /></p></td>
</tr>
<tr>
<td><p>→Change Namespace or Switch Namespace</p>
<pre><code class="language-bash">kubectl config set-context --current --namespace="integrations"</code></pre></td>
</tr>
</tbody>
</table>

##  Create Pods

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  namespace: integrations
  labels:
    app: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\pod.yaml
kubectl get pods
kubectl get pods -n integrations -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image140.webp" style="width:7.52292in;height:1.5625in" alt="{319E1469-255E-45D3-8758-0AF32CF037CF}" /></p></td>
</tr>
<tr>
<td><p>→Get the logs of the pod container</p>
<pre><code class="language-bash">kubectl logs nginx-pod -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image141.webp" style="width:7.5375in;height:2.24583in" alt="{3818F0E1-639A-4FD0-997C-373AE1959EB6}" /></p></td>
</tr>
<tr>
<td><p>→Delete</p>
<pre><code class="language-bash">kubectl delete -f .\pod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image142.webp" style="width:6.91667in;height:0.73958in" alt="{2E1D8FC9-1A54-4958-B937-9CA7CB78F687}" /></p></td>
</tr>
</tbody>
</table>

##  Create Deployments 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Using Deployments is important as this option gives us ‘rolling updates’.</p>
<p>→Create a file</p>
<pre><code class="language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  namespace: integrations
  labels:
    app: nginx
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        imagePullPolicy: Always   # 👈 ensures fresh pull on every pod start
        ports:
        - containerPort: 80</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl create -f .\deployment.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image143.webp" style="width:7.54167in;height:3.34375in" alt="{8FA6FB31-7DBF-454A-AF31-12CB2F7AD5FC}" /></p></td>
</tr>
<tr>
<td><p>→View Deployments. Notice we have configured ‘2’ replicas and hence in the ‘ready’ state we see 2/2.</p>
<pre><code class="language-bash">kubectl get deployments</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image144.webp" style="width:6.47917in;height:1in" alt="{A6500699-C8DB-40F5-AF31-21A12BF3A208}" /></p></td>
</tr>
<tr>
<td><p>→Describe Deployments</p>
<pre><code class="language-bash">kubectl describe deployment nginx-deployment</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image145.webp" style="width:7.53333in;height:4.52639in" alt="{31EF890A-62A1-4842-A1BD-12B09EBDE703}" /></p></td>
</tr>
<tr>
<td><p>→Scale <strong>up or down</strong> the deployments.</p>
<p>→Just put the number we want and kube automatically adjust based on the current state.</p>
<pre><code class="language-bash">kubectl scale deployments/nginx-deployment --replicas=6</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image146.webp" style="width:7.53264in;height:2.15972in" alt="{5B5E96A5-CE43-4F8C-BF42-E8B010DC6E12}" /></p></td>
</tr>
<tr>
<td><p>→Check workload distribution</p>
<pre><code class="language-bash">kubectl get pods -n integrations -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image147.webp" style="width:7.52986in;height:1.12014in" alt="{B5234EB1-ACB3-42D5-ADF9-C5859351ED3A}" /></p></td>
</tr>
<tr>
<td><p>→Delete Deployments</p>
<pre><code class="language-bash">kubectl delete -f .\deployment.yaml</code></pre></td>
</tr>
</tbody>
</table>

##  Create Deamon Sets 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create this file. Upon applying K8s will create exactly 1 pod per worker node. If there are 2, exactly 2 pods gets created.</p>
<p>→If we want more then we need to create another deamon set along with node tainting.</p>
<pre><code class="language-yaml">apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: nginx-daemonset
  namespace: integrations
  labels:
    app: nginx
spec:
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.27
        ports:
        - containerPort: 80</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\deamonsets.yaml
kubectl get all
kubectl get pods -n integrations -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image148.webp" style="width:7.5375in;height:2.44375in" alt="{383A71C2-B77F-4D8A-8ABD-8E10C01B521E}" /></p>
<p>→Notice deamonset ensured that both the worker nodes that are in place have gotten one pod each.</p></td>
</tr>
<tr>
<td><p>→<strong><u>Purpose</u></strong> or Realworld Usecases or when this comes handy.</p>
<p>1. <strong>Node-level system agents</strong></p>
<p><strong>Logging agent</strong>s: e.g., fluentd, filebeat, logstash to collect logs from all nodes and ship them to Elasticsearch or Splunk.</p>
<p>Monitoring agents: e.g., node-exporter (Prometheus), Datadog agent, or New Relic Infra agent — each node runs an agent to expose metrics.</p>
<p>2. <strong>Networking components</strong></p>
<p><strong>CNI plugins</strong>: e.g., Calico, Flannel, Cilium — they need a pod on every node to handle pod networking.</p>
<p>Service mesh sidecar managers: sometimes use DaemonSets to inject or manage sidecars.</p>
<p>3. <strong>Storage management</strong></p>
<p><strong>Node disk/volume managers</strong>: e.g., Ceph, Portworx, OpenEBS — a DaemonSet ensures the storage driver/agent runs on every node with local disks.</p>
<p>4. Security and node hardening</p>
<p><strong>Security agents</strong>: e.g., Falco, Sysdig Secure, CrowdStrike agents — monitor syscalls or container activity across all nodes.</p>
<p>Anti-virus/malware scanning: scanning files or containers on every node.</p></td>
</tr>
<tr>
<td><p>→Delete the demonset</p>
<pre><code class="language-bash">kubectl delete -f .\deamonsets.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image149.webp" style="width:7.51042in;height:1.15625in" alt="{FC94DDA2-00AD-47F2-ACA0-F3DC864F2C52}" /></p></td>
</tr>
</tbody>
</table>

##  Create Job

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create file</p>
<pre><code class="language-yaml">apiVersion: batch/v1
kind: Job
metadata:
  name: hello-job
  namespace: integrations
spec:
  template:
    spec:
      containers:
      - name: hello
        image: busybox:latest
        command: ["echo", "hello world"]
      restartPolicy: Never
  backoffLimit: 2   # retries if it fails</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\job.yaml
kubectl get all
kubectl logs hello-job-wd8lw</code></pre>
<p>→Check the logs of the pod that gets created so that our command is executed</p>
<p>→Notice the hello world.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image150.webp" style="width:7.125in;height:2.65625in" alt="{511BB448-A779-40B7-8404-6BA5ABD08A8E}" /></p></td>
</tr>
<tr>
<td><p>→Delete the Job</p>
<pre><code class="language-bash">kubectl delete -f .\job.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image151.webp" style="width:6.65625in;height:1.46875in" alt="{9B2AFEB2-2ECB-47BF-AC7F-7B819EF8CC47}" /></p></td>
</tr>
<tr>
<td><p>→Purpose or Realworld Usecases.</p>
<p>1. <strong>Data processing / ETL tasks</strong></p>
<p>Run a Job to transform raw data into structured form (e.g., load data from S3 → clean it → push into a database).</p>
<p>Example: Spark or Hadoop jobs wrapped in Kubernetes Jobs.</p>
<p>2. <strong>Database migrations</strong></p>
<p>When deploying a new app version, run a Job that applies schema migrations (e.g., flyway, liquibase, or custom SQL scripts).</p>
<p>This ensures DB changes run exactly once, independent of your main app.</p>
<p>3. <strong>Batch image or file processing</strong></p>
<p>Convert images, encode videos, compress files, or scan files in bulk.</p>
<p>Example: upload triggers a Job to resize an image into multiple formats.</p>
<p>4. <strong>Report generation</strong></p>
<p>A Job that queries data and generates daily/weekly/monthly reports.</p>
<p>Output might be emailed, uploaded to storage, or pushed to dashboards.</p>
<p>5. <strong>Maintenance tasks</strong></p>
<p>Cleaning up old logs, pruning database records, or compacting storage.</p>
<p>Example: a Job runs nightly to delete expired sessions.</p>
<p>And for CronJobs (Jobs on a schedule):</p></td>
</tr>
</tbody>
</table>

##  Create Cron Jobs

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file</p>
<pre><code class="language-yaml">apiVersion: batch/v1
kind: CronJob
metadata:
  name: hello-cronjob
  namespace: integrations
spec:
  schedule: "*/1 * * * *"   # every 1 minute
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: hello
            image: busybox
            args:
            - /bin/sh
            - -c
            - echo "Hello World from CronJob!"
          restartPolicy: OnFailure</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\cronjob.yaml
kubectl get all</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image152.webp" style="width:7.52639in;height:1.45208in" alt="{0EC0F672-DD6E-4826-AC97-208BC6ADE8AC}" /></p></td>
</tr>
<tr>
<td><p>→Validate</p>
<pre><code class="language-bash">kubectl get cronjob -n integrations
kubectl describe cronjob hello-cronjob -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image153.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image154.webp" style="width:5.94167in;height:4.51389in" alt="{E48957DE-EAA9-48D8-A450-D5E7A5C16C4B}" /></p>
<pre><code class="language-bash">kubectl get jobs -n integrations</code></pre>
<p>Below are commands executed at different times like before 1 min or during or after 1 min</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image155.webp" style="width:7.21875in;height:2.26042in" alt="{E56F1AC1-99A9-4967-A2DF-109145629197}" /></p>
<p>→Below is after quite sometime.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image156.webp" style="width:7.36458in;height:1.65625in" alt="{5E768877-D55E-4814-B288-E5418AE8713D}" /></p>
<pre><code class="language-bash">kubectl get pods -n integrations -o wide
kubectl logs hello-cronjob-29280698-jd7pn</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image157.webp" style="width:7.53125in;height:1.06806in" alt="{34778789-3DB9-466E-A5C9-9E3256A66EF6}" /></p></td>
</tr>
<tr>
<td><p>→Delete the job</p>
<pre><code class="language-bash">kubectl delete -f .\cronjob.yaml</code></pre></td>
</tr>
<tr>
<td><p>1. <strong>Periodic tasks</strong></p>
<p>Backups (DB or file system).</p>
<p>Regular health checks or synthetic transactions.</p>
<p>Sending recurring notifications or invoices.</p></td>
</tr>
<tr>
<td><p>→Why busybox image?</p>
<p>We used busybox because:</p>
<p><strong>Tiny footprint</strong> → it’s a very small Linux image (~1 MB) designed for minimal tasks.</p>
<p><strong>Includes basic Unix tools</strong> → like sh, echo, ls, cat, etc. So it’s perfect for running simple shell commands in Kubernetes.</p>
<p><strong>Fast startup/teardown</strong> → great for short-lived workloads like Jobs or CronJobs.</p>
<p><strong>Common in examples &amp; testing</strong> → Kubernetes docs and tutorials often use it to demo Jobs, CronJobs, init containers, etc.</p></td>
</tr>
</tbody>
</table>

##  Create PV and PVC with Deployment

<table>
<colgroup>
<col style="width: 52%" />
<col style="width: 47%" />
</colgroup>
<tbody>
<tr>
<td><p>→Highlevel diagramatic understanding</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image158.webp" style="width:3.41667in;height:3.13889in" alt="{DA52F22A-368A-4219-9923-A2F92C35C31A}" /></p></td>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image159.webp" style="width:3.51597in;height:2.95417in" alt="{F017A4DC-A235-4AF0-9A58-A131D6C18076}" /></p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image160.webp" style="width:6.48264in;height:4.08611in" /></p></td>
</tr>
</tbody>
</table>

###  Create PV

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file for PV. Note that this resource is ‘<strong>CLUSTER’</strong> SCOPED.</p>
<pre><code class="language-yaml">apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-1gi
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  storageClassName: manual
  hostPath:
    path: "/data/pv-1gi"   # Path inside KIND node container</code></pre></td>
</tr>
<tr>
<td><p>→Apply and get PV details</p>
<pre><code class="language-bash">kubectl apply -f .\persistentvolume.yaml
kubectl get pv</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image161.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image162.webp" style="width:7.51875in;height:1.10069in" alt="{6F945E3C-FEE0-4BA7-83DF-7D56B7283824}" /></p></td>
</tr>
</tbody>
</table>

###  Create PVC

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file for PVC. Note this is ‘NAMESPACE’ SCOPED.</p>
<pre><code class="language-yaml">apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-1gi
  namespace: integrations
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
  storageClassName: manual</code></pre></td>
</tr>
<tr>
<td><p>→Apply and check the PV status. It is changed to Bound after applying.</p>
<pre><code class="language-bash">kubectl apply -f .\persistentvolumeclaim.yaml
kubectl get pvc
kubectl get pv</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image163.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image164.webp" style="width:7.54097in;height:1.5875in" alt="{0293969C-EE77-4828-B51E-103EA1B7DD67}" /></p></td>
</tr>
</tbody>
</table>

###  Create Deployment 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a deployment that uses this PVC. Create below file and apply</p>
<p>→IMPORTANT: Here we are using NODE AFFINITY. So that our pods are scheduled on specific node.</p>
<p>→THIS WAY WE CAN MONITOR THE LOGS for our testing.</p>
<p>→IN PRODUCTION IT WILL BE NFS DRIVEN LOGGIN.</p>
<p>→ensure the correct worker node in the configuration</p>
<pre><code class="language-bash">kubectl get nodes</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image165.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image166.webp" style="width:6.45833in;height:1.64583in" alt="{4599F0F6-119D-40C1-90F0-BC15ABA165A3}" /></p>
<pre><code class="language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      nodeSelector:
        kubernetes.io/hostname: intg-ks-worker2   # 👈 force schedule here
      containers:
      - name: nginx
        image: nginx:latest
        imagePullPolicy: Always
        ports:
        - containerPort: 80
        volumeMounts:
        - name: nginx-logs
          mountPath: /var/log/nginx   # logs go here, backed by PVC
      volumes:
      - name: nginx-logs
        persistentVolumeClaim:
          claimName: pvc-1gi</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\deployment-with-pvc.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image167.webp" style="width:7.52292in;height:2.51042in" alt="{CC20587C-844D-446D-AAFB-4C0CCF8154D4}" /></p></td>
</tr>
</tbody>
</table>

###  Portforward

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Portforward</p>
<pre><code class="language-bash">kubectl port-forward -n integrations pod/nginx-deployment-58f5976699-tx4wh 8080:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image168.webp" style="width:7.52569in;height:0.49375in" alt="{444441F6-0552-4DF9-BDC8-797E4383D0CB}" /></p></td>
</tr>
</tbody>
</table>

###  Access WebPage

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Access Web Page</p>
<p><a href="http://localhost:8080">http://localhost:8080</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image169.webp" style="width:7.53819in;height:2.23125in" alt="{8523896B-8DDD-4B69-A108-30A2F84C2131}" /></p></td>
</tr>
</tbody>
</table>

###  Access Pod Logs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Now that we have our logs being written to external location, let us test</p>
<p>→Access one of the Pods and tail the log file</p>
<pre><code class="language-bash">kubectl exec -it pod/nginx-deployment-58f5976699-tx4wh -n integrations -- /bin/sh
ls -l /var/log/nginx
tail -f /var/log/nginx/access.log</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image170.webp" style="width:7.52431in;height:1.71042in" alt="{B90290BD-8703-40B8-A1E2-0E7CA91DB2A8}" /></p></td>
</tr>
</tbody>
</table>

###  Additional invocations - Checking logs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→In another terminal execute few curls</p>
<pre><code class="language-bash">curl http://localhost:8080</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image171.webp" style="width:4.96875in;height:1.41667in" alt="{1E722982-C00C-438E-BBBB-2EAF9519CCFC}" /></p></td>
</tr>
<tr>
<td><p>→Notice additional log captured.</p>
<p>→Note that these logs are seen under the PODS.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image172.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image173.webp" style="width:7.52361in;height:2.19167in" alt="{4BC5F34E-3649-4A32-85B9-D108EE2FE294}" /></p></td>
</tr>
</tbody>
</table>

###  Access Worker Node Logs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Now that the logs are being shipped, though the location is shown as ‘inside the pod’, let us verify on the workernode.</p>
<p>→List the nodes. Here in this case we have the KIND with 2 worker nodes running as containers.</p>
<p>→given our deployment has affinity with ‘worker2’ we will be access the same.</p>
<pre><code class="language-bash">docker container ls -a
kubectl get pods -o wide
docker exec -it intg-ks-worker2 /bin/bash
ls -l /data/pv-1gi
tail -f /data/pv-1gi/access.log</code></pre>
<p>→Notice the last entry.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image174.webp" style="width:7.52847in;height:2.86806in" alt="{6BB16AD6-1275-41C3-B266-0E94043F4429}" /></p></td>
</tr>
</tbody>
</table>

###  Delete Pods - Portforward again 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Now let us validate by ‘deleting pods’ and see that if existing logs can be see as-is also</p>
<p>→Exit from all the terminals viz., portforwarding, pod IT terminal and workernode terminal</p>
<pre><code class="language-bash">kubectl delete pod -n integrations -l app=nginx
kubectl get all</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image175.webp" style="width:7.54167in;height:2.18403in" alt="{69944740-1C55-4B09-A1E9-7564AAF9E84D}" /></p></td>
</tr>
<tr>
<td><p>→Once the new pod comes back, portforward again as previous one will be terminated.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image176.webp" style="width:7.53542in;height:0.52153in" alt="{28AF573E-ECC3-4BE0-A3EC-A167080B80AA}" /></p></td>
</tr>
</tbody>
</table>

###  Access Pod and WorkerNode Logs - Post creation of new pods

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→In new terminal access the new pod again and tail the logs, where we can see the existing log entries as well</p>
<pre><code class="language-bash">kubectl exec -it pod/nginx-deployment-58f5976699-6fpqf -n integrations -- /bin/sh
ls -l /var/log/nginx
tail -f /var/log/nginx/access.log</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image177.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image178.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image179.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image180.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image181.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image182.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image183.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image184.webp" style="width:7.53889in;height:2.10347in" alt="{F3C5CEEB-6FF7-4507-AE25-A911B1985E4D}" /></p>
<p>→Check the worker2 node tailing as well. Notice here as well the entries persist.</p>
<pre><code class="language-bash">docker container ls -a
kubectl get pods -o wide
docker exec -it intg-ks-worker2 /bin/bash
ls -l /data/pv-1gi
tail -f /data/pv-1gi/access.log</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image185.webp" style="width:7.53819in;height:2.8875in" alt="{7A2E6BB6-E6AE-4CC8-8E50-C34E38D9D977}" /></p></td>
</tr>
</tbody>
</table>

###  Clean up the PV / PVC / Deployment 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get all
kubectl delete -f .\deployment-with-pvc.yaml
kubectl delete -f .\persistentvolumeclaim.yaml
kubectl delete -f .\persistentvolume.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image186.webp" style="width:7.52778in;height:4.03403in" alt="{C91A7AEF-1371-458F-B206-421495C3100D}" /></p></td>
</tr>
</tbody>
</table>

##  Create Service 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can create using 3 options viz., NodePort, ClusterIP and Loadbalancer. A typical service looks as below where there is a front-end trying to reach a backend via service.</p>
<p>--&gt; Below image is from CKA course and implementation is in sections below separately.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image187.webp" style="width:6.10069in;height:3.18125in" /></p></td>
</tr>
<tr>
<td><p>Types of Service</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image188.webp" style="width:7.6875in;height:2.24444in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Service with NodePort 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image189.webp" style="width:6.48958in;height:3.3125in" /></p></td>
</tr>
<tr>
<td><p>→Create a file</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Service
metadata:
  name: nginx-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: nginx
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80
    nodePort: 30080   # host-accessible port</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\pod.yaml
kubectl apply -f .\service.yaml
kubectl get svc</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image190.webp" style="width:6.58333in;height:0.70833in" alt="{5D646B8E-1C34-4FB5-AEAD-61ABE4DEDF65}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image191.webp" style="width:7.35417in;height:0.60417in" alt="{566EB911-6D91-48FB-AE6E-0A40596A730E}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image192.webp" style="width:7.41667in;height:1.04167in" alt="{EACB28CE-39D6-49D0-8AC0-EE90F385DA9D}" /></p></td>
</tr>
<tr>
<td><p>→Given we are running kubernetes on local setup (KIND), we will not have a DEDICATED node which inturn will have an IP for itself and a port for itself. Hence, we will use typical Portforward option to test.</p>
<p>→Port forward</p>
<pre><code class="language-bash">kubectl port-forward -n integrations service/nginx-service 8080:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image193.webp" style="width:7.53333in;height:0.62014in" alt="{BDF9F7E2-0294-4FD5-98A5-3EE71952E54A}" /></p></td>
</tr>
<tr>
<td><p>→Access</p>
<pre><code class="language-bash">curl http://localhost:8080</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image194.webp" style="width:6.38542in;height:2.45833in" alt="{94F1E9D5-AAF3-4DAB-A8F0-01B286730831}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image195.webp" style="width:7.53611in;height:2.36181in" alt="{FBC0284B-1DA2-4D1E-AF2C-74789C7A776E}" /></p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<pre><code class="language-bash">kubectl delete -f .\pod.yaml
kubectl delete -f .\service.yaml
kubectl get all</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image196.webp" style="width:7.53611in;height:2.05833in" alt="{65BBD1A8-D475-42F8-B8F9-CAFDAA2B1D27}" /></p></td>
</tr>
</tbody>
</table>

###  Service with Cluster IP

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→When we create a service using Cluster IP, an external user cannot access it. Important to note is, even if we do not mention, by ‘default’ it will be cluster ip.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image197.webp" style="width:3.10972in;height:1.75833in" /></p></td>
</tr>
<tr>
<td><p>→Create with Cluster IP.</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Service
metadata:
  name: nginx-service
  namespace: integrations
spec:
  type: ClusterIP   # 👈 only inside cluster
  selector:
    app: nginx
  ports:
  - protocol: TCP
    port: 80
    targetPort: 80</code></pre>
<p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\pod.yaml
kubectl apply -f .\service-clusterip.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image198.webp" style="width:7.54167in;height:2.51389in" alt="{B9A996C4-8722-48EF-9ADF-976532D75086}" /></p></td>
</tr>
<tr>
<td><p>→Port forward</p>
<pre><code class="language-bash">kubectl port-forward -n integrations service/nginx-service 8080:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image199.webp" style="width:7.53403in;height:0.95139in" alt="{7D658056-FB18-41B8-99EA-7974C2AFCC35}" /></p></td>
</tr>
<tr>
<td><p>→Access the curl</p>
<pre><code class="language-bash">curl http://localhost:8080</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image200.webp" style="width:7.54097in;height:2.85903in" alt="{26655636-525B-4228-86B7-6DEAAC9CEC67}" /></p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<pre><code class="language-bash">kubectl delete -f .\service.yaml
kubectl delete -f .\pod.yaml</code></pre></td>
</tr>
<tr>
<td><p>→We can create a service using simple command line as well instead of proper yaml for testing purposes.</p>
<pre><code class="language-bash">kubectl create service clusterip ping-svc --tcp=80:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image201.webp" style="width:7.68194in;height:0.96181in" /></p></td>
</tr>
</tbody>
</table>

###  3-tier-invocation (FE--Service--BE) - Manual assignment of endpoints

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below implemention is from CKA course.</p>
<p>→Let us create two pods</p>
<pre><code class="language-bash">kubectl get pods</code></pre>
<p>→Create backend pod using simple nginx.</p>
<pre><code class="language-bash">kubectl run backend-pod --image=nginx</code></pre>
<p>→Create fronend pod using simple ubuntu and put it to sleep for an hour or so for our interactions.</p>
<pre><code class="language-bash">kubectl run frontend-pod --image=ubuntu --command -- sleep 36000
kubectl get pods -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image202.webp" style="width:7.67986in;height:1.60764in" /></p>
<pre><code class="language-bash">kubectl get pods -o wide</code></pre>
<p>→Here capture the ‘backend private ip’ as it will be used ahead in terminal of fronend for a simple curl.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image203.webp" style="width:7.67431in;height:0.49514in" /></p></td>
</tr>
<tr>
<td><p>→Connect to fronend-pod to see if there is a connection between FE and BE. Install ‘curl’ if it is not available</p>
<pre><code class="language-bash">kubectl exec -it frontend-pod --bash
curl
apt-get update &amp;&amp; apt-get install curl -y</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image204.webp" style="width:7.68472in;height:1.82222in" /></p>
<p>→Once the curl is installed, let us fire a simple curl and see if BE gives some response. Given it is a simple nginx, it should give us some static content as shown in screenshot.</p>
<pre><code class="language-bash">curl 10.244.1.3</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image205.webp" style="width:7.67917in;height:5.17361in" /></p>
<p>→Upto to this we have done a simple communication between frontend and back without any service as below diagram.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image206.webp" style="width:2.05208in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Now let us introduce a service in between to see how it becomes beneficial.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image207.webp" style="width:3.10417in;height:3.5625in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have tested using the curl, let us create a simple service in between and add something called an endpoint</p>
<p>→Open a new terminal and ensure you are in the directory where the yamls are there.</p>
<pre><code class="nohighlight language-bash">cd /media/sf_ws/k8basics/cka
ls -l
kubectl get service
kubectl apply -f <strong>017a-service-for-single-backend</strong>.yaml
kubectl get service
kubectl describe service simple-be-service</code></pre>
<p>→Notice that when we described the service it does not have any ‘endpoints’ and the service itself will have an IP.</p>
<p>→In next step let us add an endpoint to the service.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image208.webp" style="width:7.68472in;height:6.70556in" /></p></td>
</tr>
<tr>
<td><p>→Add endpoint to service.</p>
<pre><code class="nohighlight language-bash">kubectl apply -f <strong>017b-endpoint-for-service</strong>.yaml
kubectl describe service simple-be-service</code></pre>
<p>→Notice that once we added an endpoint, the service now has one endpoint registered with it.</p>
<p>→It is hardcoded-for-sure and it is just to understand the topics corrects.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image209.webp" style="width:7.68472in;height:3.4375in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have an IP for ‘service’ and an ‘endpoint’ is attached, let us fire a curl now to ‘service-ip’ instead of directly to ‘BE-IP’. Notice once we fire using the ‘service ip’ we get a response as well.</p>
<pre><code class="language-bash">curl 10.96.253.110</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image210.webp" style="width:7.68333in;height:4.73056in" /></p></td>
</tr>
<tr>
<td><p>→Let us delete the service and endpoint automatically gets deleted</p>
<pre><code class="language-bash">kubectl delete service simple-be-service
kubectl get endpoints</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image211.webp" style="width:7.68264in;height:1.05972in" /></p></td>
</tr>
<tr>
<td><p>→Yaml for Service: <strong>017a-service-for-single-backend</strong>.yaml</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Service</mark>
<mark><strong>metadata</strong>:</mark></code></pre>
<p><mark><strong>name</strong>: simple-be-service #This is simple service that receives traffic on port 80 and sends to BE port 80.</mark></p>
<pre><code class="nohighlight language-yaml"><mark><strong>spec</strong>:</mark>
<mark><strong>ports</strong>:</mark>
<mark><strong>- port</strong>: 80</mark>
<mark><strong>targetPort</strong>: 80</mark></code></pre></td>
</tr>
<tr>
<td><p>→Yaml for endpoint : <strong>017b-endpoint-for-service</strong>.yaml</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Endpoints</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: simple-be-service</mark>
<mark><strong>subsets</strong>:</mark>
<mark><strong>- addresses</strong>:</mark>
<mark><strong>- ip</strong>: 10.244.1.3 #IP address must be same as the BE pod. This is hardcoded. Next time check the pod ip that is provisioned</mark>
<mark><strong>ports</strong>:</mark>
<mark><strong>- port</strong>: 80</mark></code></pre></td>
</tr>
</tbody>
</table>

###  3-tier-invocation (FE-Svc-BE) - With Selector and Automatic 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→YAML file. Highlighted below is important field that MUST be used in pod / deployment, so as to be recognized by the service.</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Service</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx-service</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>selector</strong>:</mark></code></pre>
<p><mark> <strong>app</strong>: backend-nginx-pods #This must be same as to be defined for the pod or deployment etc as an appropriate label.</mark></p>
<pre><code class="nohighlight language-yaml"><mark><strong>ports</strong>:</mark>
<mark><strong>- port</strong>: 80</mark>
<mark><strong>targetPort</strong>: 80</mark></code></pre></td>
</tr>
<tr>
<td><p>→In this approach, we are going to create ‘service’ that has a field called ‘selector’.</p>
<p>→This selector field will ensure that an appropriate backend ‘label’ is choosen.</p>
<p>→Below we have create a service, but currently no pods or no endpoints exists yetc. Note this carefully.</p>
<pre><code class="language-bash">kubectl apply -f 018-service-with-dynamic-backends-usinglabels.yaml
kubectl get svc
kubectl describe svc nginx-service</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image212.webp" style="width:7.68611in;height:3.36181in" /></p></td>
</tr>
<tr>
<td><p>→Check the current pods.</p>
<pre><code class="language-bash">kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image213.webp" style="width:7.09375in;height:0.72917in" /></p>
<p>→Now, let us create ‘two’ backendpods and assign ‘labels’ as needed by ‘our service’ yaml. Highlighted in yellow above.</p>
<pre><code class="language-bash">kubectl run backend-pod1 --image=nginx
kubectl run backend-pod2 --image=nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image214.webp" style="width:7.67917in;height:0.76528in" /></p>
<p>→Let us see if they are now part of the service yet? IT WILL NOT BE AS THERE ARE NO LABELS TO IT.</p>
<pre><code class="language-bash">kubectl get pods -o wide
kubectl describe svc nginx-service</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image215.webp" style="width:7.68681in;height:2.84653in" /></p></td>
</tr>
<tr>
<td><p>→Now let us add ‘labels’ to our existing pods and then check the service. Label name is highlighted just to compare with what we have assigned inside the service yaml in the beginning. It must be same. Notice now these two backends are part of the service.</p>
<pre><code class="nohighlight language-bash">kubectl label pod backend-pod1 app=<mark>backend-nginx-pods</mark>
kubectl label pod backend-pod2 app=<mark>backend-nginx-pods</mark></code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image216.webp" style="width:7.67917in;height:3.31806in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have the dynamic service that can have backendpods, let us bring in frontend and test from it.</p>
<pre><code class="language-bash">kubectl run frontend-pod --image=ubuntu --command -- sleep 36000</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image217.webp" style="width:7.68403in;height:0.26875in" /></p>
<pre><code class="language-bash">kubectl get pods -o wide
kubectl exec -it frontend-pod -- bash
apt-get update &amp;&amp; apt-get install curl -y</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image218.webp" style="width:7.67778in;height:1.47083in" /></p>
<p>→Then let us fire the curl using the ‘service’ ip. We already have this from our previous invocation and get the service ip.</p>
<pre><code class="language-bash">kubectl get svc</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image219.webp" style="width:7.68264in;height:0.63819in" /></p>
<pre><code class="language-bash">curl 10.96.66.238</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image220.webp" style="width:7.67917in;height:4.95278in" /></p>
<p>→Now let us fire using the service name instead of ip address</p>
<pre><code class="language-bash">curl nginx-service</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image221.webp" style="width:6.1875in;height:2.33333in" /></p></td>
</tr>
</tbody>
</table>

###  Load Balancer

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→ When a service is created using the type ‘Load Balancer’, k8s automatically creates a LB service on the <strong>cloud provider specific</strong> LB. This will NOT work on local setups like minikube or KIND etc.</p>
<p>→Apart from that, the service also creates NodePort which inturn be used by the LB Service.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image222.webp" style="width:6.60417in;height:3.5625in" /></p></td>
</tr>
<tr>
<td><p>→In this section practical implementation is not provided</p>
<p><mark>→PENDING FOR ACTUAL TEST IMPLEMENTATION WHEN A CLOUD PROVIDER (EG. AZURE / AWS) IS MADE AVAILABLE</mark></p>
<p><mark>→PENDING</mark></p></td>
</tr>
</tbody>
</table>

## Statefulsets

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→<strong>What a StatefulSet is</strong></p>
<p>Ensures stable, predictable pod names (app-0, app-1 …).</p>
<p>Each replica gets its own persistent volume (PVC).</p>
<p>Supports ordered, graceful startup and shutdown of pods.</p>
<p>Designed for stateful workloads (databases, queues, clustered apps).</p>
<p>→<strong>What a StatefulSet is not</strong></p>
<p>It does not replicate your data (e.g., MySQL replication must be set up separately).</p>
<p>It is not interchangeable like Deployments (each pod is unique).</p>
<p>It does not scale stateless apps efficiently — slower rolling updates.</p>
<p>→<strong>StatefulSet vs Deployment</strong></p>
<p>Deployment: pods are fungible/replaceable; random names; ephemeral; best for stateless apps (web servers, APIs).</p>
<p>StatefulSet: pods are sticky with identity; stable DNS; per-pod PVCs; best for stateful apps (databases, Kafka, etc.).</p>
<p>→<strong>When to use what</strong></p>
<p>✅ Use Deployment: stateless apps, replicas all the same, don’t care which pod serves traffic.</p>
<p>✅ Use StatefulSet: stateful apps, need persistent volumes, fixed pod identities, ordered startup (databases, distributed systems).</p></td>
</tr>
</tbody>
</table>

### Create Dedicated Namespace

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create below file</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Namespace
metadata:
  name: intg-mysql</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">cd C:\ws\k8basics\101basic-resources\statefulsets
kubectl apply -f .\namespace.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image223.webp" style="width:7.52847in;height:1.04931in" alt="{BC48E53A-DCA6-4732-82D8-D03F549B27D9}" /></p></td>
</tr>
<tr>
<td><p>→Check it is created</p>
<pre><code class="language-bash">kubectl get ns</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image224.webp" style="width:7.05208in;height:2.26042in" alt="{0E0A0866-B4F2-4E79-943F-C4EBCF08C43C}" /></p></td>
</tr>
</tbody>
</table>

### Create StatefulSet and Service

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create below file</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: v1</p>
<pre><code class="language-yaml">kind: Service
metadata:
  name: intg-mysql
  namespace: intg-mysql
  labels:
    app: intg-mysql
spec:
  ports:
    - port: 3306
      name: mysql
  clusterIP: None   # Headless Service
  selector:
    app: intg-mysql
---
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: intg-mysql
  namespace: intg-mysql
  labels:
    app: intg-mysql
spec:
  serviceName: intg-mysql
  replicas: 4
  selector:
    matchLabels:
      app: intg-mysql
  template:
    metadata:
      labels:
        app: intg-mysql
    spec:
      containers:
      - name: mysql
        image: mysql:8.0
        ports:
        - containerPort: 3306
          name: mysql
        env:
        - name: MYSQL_ROOT_PASSWORD
          value: "intgrootpw"
        - name: MYSQL_DATABASE
          value: "integdb"
        - name: MYSQL_USER
          value: "intguser"
        - name: MYSQL_PASSWORD
          value: "intgpw"
        volumeMounts:
        - name: intg-mysql-persistent-storage
          mountPath: /var/lib/mysql
  volumeClaimTemplates:
  - metadata:
      name: intg-mysql-persistent-storage
    spec:
      accessModes: ["ReadWriteOnce"]
      resources:
        requests:
          storage: 1Gi</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\mysql-statefulset.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image225.webp" style="width:7.52917in;height:3.37708in" alt="{1D4F9963-79B2-475A-9564-A393B0D909F0}" /></p></td>
</tr>
<tr>
<td><p>→Check the objects</p>
<pre><code class="language-bash">kubectl get all -n intg-mysql</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image226.webp" style="width:7.5375in;height:2.57639in" alt="{153FB350-31C2-4B8D-A9D5-DA2F4D8DADD8}" /></p>
<p>→Notice the naming of pods. It is starting with ‘0’ and then moving forward.</p>
<p>→In a typical applications the pods are named differently. Below are high level points.</p>
<p>→<strong>StatefulSet ensures stable identities for pods</strong></p>
<p>→Each pod gets a stable name with an ordinal index (-0, -1, -2, …).</p>
<p>→This allows each pod to have its own persistent storage (PVC) and network identity.</p>
<p>→<strong>Ordered creation and termination</strong></p>
<p>→Pods are created in order (0 → 1 → 2 → …) and terminated in reverse order.</p>
<p>→This is important for databases like MySQL so that replicas initialize correctly.</p>
<p>→<strong>Contrast with Deployment</strong></p>
<p>→Deployments create pods with random suffixes (like myapp-5d8f7b6d5b-xyz12) because pods are interchangeable.</p>
<p>→Deployments don’t guarantee stable storage or pod identity.</p></td>
</tr>
</tbody>
</table>

### Access the DB & CREATE OBJS from POD1

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl exec -it intg-mysql-0 -n intg-mysql -- mysql -u intguser -pintgpw integdb</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image227.webp" style="width:7.52431in;height:1.8875in" alt="{2B463AF9-E6C6-4BE2-B640-BEE3F2A18523}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

#### Create Database Objects 

<table style="width:99%;">
<colgroup>
<col style="width: 56%" />
<col style="width: 43%" />
</colgroup>
<tbody>
<tr>
<td><p>SHOW DATABASES;</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image228.webp" style="width:3.20833in;height:2.19792in" alt="{6EBB24F6-9E7E-4EB1-9554-41BC446875CB}" /></p></td>
<td><p>←Notic the DB we have configured in the yamls, which is created.</p></td>
</tr>
<tr>
<td><p>→Create a simple table</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image229.webp" style="width:4.15278in;height:1.69583in" alt="{18CC80BB-2EF7-4AC0-B445-97484128FB84}" /></p></td>
<td><p>USE integdb;</p>
<p>CREATE TABLE employees (</p>
<p>id INT AUTO_INCREMENT PRIMARY KEY,</p>
<p>name VARCHAR(50),</p>
<p>department VARCHAR(50),</p>
<p>salary DECIMAL(10,2)</p>
<p>);</p></td>
</tr>
<tr>
<td><p>→Insert some records</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image230.webp" style="width:4.16667in;height:1.175in" alt="{511D5E78-B175-4B71-BC4E-E2549119E19C}" /></p></td>
<td><p>INSERT INTO employees (name, department, salary) VALUES</p>
<p>('Alice', 'Engineering', 75000),</p>
<p>('Bob', 'HR', 50000),</p>
<p>('Charlie', 'Finance', 60000);</p></td>
</tr>
<tr>
<td><p>→Query the Tables and Data</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image231.webp" style="width:4.16389in;height:3.54792in" alt="{DF0F6749-0B05-4FFD-89EE-E12175BE0598}" /></p></td>
<td><p>SELECT * FROM employees;</p>
<p>SHOW TABLES;</p></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Access the DB & VIEW from POD2

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><mark>This need to be explored though as each pod has its own volume mount etc.</mark></p>
<p><mark>Same data cannot be accessed by other pod, I needed we need to do ‘replication’ etc.</mark></p></td>
</tr>
</tbody>
</table>

##  Config Maps

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→A ConfigMap in Kubernetes stores non-confidential configuration data as key-value pairs.<br />
It allows pods to consume configuration dynamically without rebuilding images.<br />
ConfigMaps can be mounted as files, environment variables, or command-line arguments inside containers.</p></td>
</tr>
<tr>
<td><p>→Create below file that has below objects.</p>
<p><strong>ConfigMap (hworld-config)</strong></p>
<p>Stores non-sensitive configuration data (dbhostname and dbport) for the application in key-value form.</p>
<p><strong>Deployment (hworld-deployment)</strong></p>
<p>Runs a single replica of the hworld container.</p>
<p>Injects the ConfigMap values as environment variables into the container. <mark>Highlighted below for ref.</mark></p>
<p>Applies security restrictions (non-root, read-only filesystem, no privilege escalation).</p>
<p>Mounts a temporary empty directory at /tmp for ephemeral storage.</p>
<p><strong>Service (hworld-service)</strong></p>
<p>Exposes the hworld Deployment as a NodePort on port 30080, allowing external access.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: v1</p>
<pre><code class="nohighlight language-yaml">kind: ConfigMap
metadata:
  name: hworld-config
  namespace: integrations
data:
  dbhostname: "db.example.com"
  dbport: "8080"
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: hworld-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hworld
  template:
    metadata:
      labels:
        app: hworld
    spec:
      containers:
        - name: hworld
          image: nerdysrisha/hworld056:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          <mark>envFrom:</mark>
<mark>            - configMapRef:</mark>
<mark>                name: hworld-config</mark>
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: hworld-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: hworld
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
<tr>
<td><p>→Here below are sequence of steps to execute to see the config map project.</p>
<p>→Screenshots are not captured.</p>
<pre><code class="language-bash">cd C:\ws\sboot\lab056
mvn clean package
docker build -t hworld056:latest .
docker tag hworld056:latest nerdysrisha/hworld056:latest
docker push nerdysrisha/hworld056:latest
kubectl delete -f deployment.yaml #if this exists get deleted
kubectl create namespace integrations
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
kubectl port-forward svc/hworld-service -n integrations 8080:8080
curl http://localhost:8080
kubectl get pods
kubectl exec -it hworld-deployment-5f4f8884ff-c65r7 -- env
kubectl edit configmap hworld-config -n integrations
kubectl rollout restart deployment hworld-deployment
kubectl exec -it hworld-deployment-5b897784cc-vxttk -- env</code></pre></td>
</tr>
</tbody>
</table>

##  Secrets

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create below files viz., two separate files.</p>
<pre><code class="language-bash">cd C:\ws\sboot\lab062
mvn clean package
docker build -t hworld062:latest .
docker tag hworld062:latest nerdysrisha/hworld062:latest
docker push nerdysrisha/hworld062:latest</code></pre></td>
</tr>
<tr>
<td><p>→Secret</p>
<pre><code class="nohighlight language-yaml">apiVersion: v1
kind: Secret
metadata:
  name: hworld-secret
  namespace: integrations
type: Opaque
stringData:
  <mark>dbhostname: "db.pista.com"</mark>
<mark>  dbport: "9000"</mark></code></pre></td>
</tr>
<tr>
<td><p>→Deployment &amp; Service</p>
<pre><code class="nohighlight language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: hworld-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hworld
  template:
    metadata:
      labels:
        app: hworld
    spec:
      containers:
        - name: hworld
          image: nerdysrisha/hworld062:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          <mark>envFrom:</mark>
<mark>            - secretRef:</mark>
<mark>                name: hworld-secret</mark>
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: hworld-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: hworld
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f secret-config.yaml # This need to be applied first
kubectl apply -f deployment.yaml
kubectl port-forward svc/hworld-service -n integrations 8080:8080
curl http://localhost:8080</code></pre></td>
</tr>
<tr>
<td><p>→View the environment variables. Notice the configuration has dbport and host. NOTICE THEY ARE IN PLAIN TEXT.</p>
<p>→THEY ARE NOT SECURED NATIVELY</p>
<pre><code class="language-bash">kubectl exec -it pod/hworld-deployment-ddc6479fd-l4cz8 -- env</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image232.webp" style="width:6.69792in;height:2.22917in" alt="{F4411331-1301-453A-BAA3-FCA0E6148458}" /></p></td>
</tr>
<tr>
<td><p>→Modify the secret value and rollout</p>
<pre><code class="language-bash">kubectl apply -f secret-config.yaml
kubectl rollout restart deployment hworld-deployment
kubectl port-forward svc/hworld-service -n integrations 8080:8080
curl http://localhost:8080
kubectl exec -it pod/hworld-deployment-xxxxxxx-- env</code></pre></td>
</tr>
<tr>
<td><p>→Clean up</p>
<pre><code class="language-bash">cd C:\ws\sboot\lab062
kubectl delete secret hworld-secret
kubectl delete -f deployment.yaml</code></pre></td>
</tr>
</tbody>
</table>

##  Resource Limits

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Execute these commands</p>
<pre><code class="language-bash">cd C:\ws\sboot\lab063
mvn clean package
#docker build -t hworld063:latest .
#docker run -p 8080:8080 hworld063:latest
#curl http://localhost:8080
docker tag hworld063:latest nerdysrisha/hworld063:latest
docker push nerdysrisha/hworld063:latest
kubectl create namespace integrations
kubectl config set-context --current --namespace=integrations</code></pre></td>
</tr>
<tr>
<td><p>→Create this file</p>
<pre><code class="nohighlight language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: hworld-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hworld
  template:
    metadata:
      labels:
        app: hworld
    spec:
      containers:
        - name: hworld
          image: nerdysrisha/hworld063:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          <mark>resources:</mark>
<mark>            requests:</mark>
<mark>              cpu: "100m"</mark>
<mark>              memory: "128Mi"</mark>
<mark>            limits:</mark>
<mark>              cpu: "500m"</mark>
<mark>              memory: "512Mi"</mark>
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: hworld-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: hworld
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f deployment.yaml
#kubectl get all
kubectl port-forward svc/hworld-service -n integrations 8080:8080
curl http://localhost:8080</code></pre></td>
</tr>
<tr>
<td><p>→Run this top command to see the values of cpu / memory.</p>
<p>→In order to run this it is important we have the metrics server up. Refer Section ahead ‘Observability’</p>
<p>→In that section metrics server is mentioned.</p>
<pre><code class="language-bash">kubectl top pod -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image233.webp" style="width:4.8125in;height:0.91667in" alt="{DC216BB8-59EF-4A58-8D6D-F6746E782EF3}" /></p>
<p>→ Your pod-level requests and limits are effective:</p>
<p>→Requests: 100m CPU, 128Mi memory → ensures scheduling works.</p>
<p>→Limits: 500m CPU, 512Mi memory → caps resource usage.</p>
<p>→Your app is well below limits, so no throttling or OOM killing is happening.</p>
<p>→ You can now monitor resource usage in real time with kubectl top pod or kubectl top node to detect if pods start hitting limits.</p></td>
</tr>
</tbody>
</table>

##  Readiness & Liveness - Deployment Yaml 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Typically K8s has native ability to restart pods etc, however we can have another layer of checks to detect and restart at application layer.</p>
<p>→To achieve this we can have deployment yamls injected with such possibilities.</p>
<p>→Pre-requisites is the spring boot application must have necessary dependencies and application.properties configured properly. Refer the application for app.properties, pom.xml mandatorily for clarity.</p>
<p>→Summary of difference.</p>
<p><strong>→What Native Kubernetes Does WITHOUT Health Checks:</strong></p>
<p>Only restarts containers if the process crashes (hard failure)</p>
<p>Considers pods "Ready" immediately after container starts</p>
<p>Routes traffic to pods regardless of actual application readiness</p>
<p><strong>→What Health Checks ADD:</strong></p>
<p>Detects application hangs &amp; degraded states where process runs but app is dead (soft failure)</p>
<p>Prevents traffic to pods until application-specific readiness is confirmed</p>
<p>Enables zero-downtime deployments by waiting for new pods to pass health checks</p>
<p>Provides application-aware monitoring beyond just process lifecycle</p>
<p><strong>Note</strong>: Without probes, Kubernetes only restarts on container exit, missing app-level issues, potentially serving traffic to unhealthy pods, and lacking startup readiness checks. Probes enhance reliability and availability for your Spring Boot app.</p>
<p>→IMPORTANT POINT: Given the configuration waits for 60 sec, give some time before doing kubectl get all command. It may show 0/1 ready if early check is done.</p>
<p>→Create following file. Note the highlighted part.</p></td>
</tr>
<tr>
<td><pre><code class="nohighlight language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: hworld-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hworld
  template:
    metadata:
      labels:
        app: hworld
    spec:
      containers:
        - name: hworld
          image: nerdysrisha/hworld064:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          resources:
            requests:
              cpu: "100m"
              memory: "128Mi"
            limits:
              cpu: "500m"
              memory: "512Mi"
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
          <mark>readinessProbe:</mark>
<mark>            httpGet:</mark>
<mark>              path: /actuator/health/readiness</mark>
              port: 8080
            initialDelaySeconds: 60
            periodSeconds: 20
            timeoutSeconds: 2
            failureThreshold: 3
          <mark>livenessProbe:</mark>
<mark>            httpGet:</mark>
<mark>              path: /actuator/health/liveness</mark>
              port: 8080
            initialDelaySeconds: 40
            periodSeconds: 20
            timeoutSeconds: 2
            failureThreshold: 3
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: hworld-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: hworld
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash">cd C:\ws\sboot\lab064
mvn clean package
docker build -t hworld064:latest .
docker tag hworld064:latest nerdysrisha/hworld064:latest
docker push nerdysrisha/hworld064:latest
kubectl create namespace integrations
kubectl config set-context --current --namespace=integrations
kubectl delete -f .\deployment.yaml
kubectl apply -f deployment.yaml
kubectl port-forward svc/hworld-service -n integrations 8080:8080</code></pre></td>
</tr>
<tr>
<td><p>→Checking the probes</p>
<pre><code class="language-bash">curl http://localhost:8080
curl http://localhost:8080/actuator/health/readiness
curl http://localhost:8080/actuator/health/liveness
curl http://localhost:8080/actuator/health</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image234.webp" style="width:4.69792in;height:1.61458in" alt="{0B60FA6E-26B1-4552-BC70-0E5B1F11C1FA}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image235.webp" style="width:6.01042in;height:2.875in" alt="{1E1388F1-1C34-4B15-B278-E68D0DE71329}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image236.webp" style="width:5.29167in;height:2.98958in" alt="{DF0E2113-7CD0-4260-AF19-E16ED208C88F}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image237.webp" style="width:5.875in;height:2.85417in" alt="{BE339382-F01D-4934-9D37-EC29FA6C7126}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

##  Tainting - Tolerations - Affinity 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Tainting and tolerations are important when we have workloads that must or must not go to a specific worker.</p>
<p>→To achieve this we need to ‘taint’ a node first then have the app’s deployment yaml mention about the ‘toleration’</p>
<p>→When it is apllied scheduler checks and decides where to put the pod.</p>
<p>→Taints and tolerations are useful when we want to control which workloads can or cannot run on a specific worker node.</p>
<p>→To use this, we first apply a taint to a node, and then define a matching toleration in the application’s Deployment YAML.</p>
<p>→When scheduling, Kubernetes checks these rules and decides the appropriate node for the pod.</p>
<p> </p></td>
</tr>
<tr>
<td><p>→USECASE</p>
<p>→A common use case for taints and tolerations is to reserve certain nodes for special workloads. For example, imagine intg-ks-worker is equipped with extra CPU and memory resources. You decide to dedicate this node to heavy analytics jobs so they don’t affect normal applications.</p>
<p>→ By applying a taint on intg-ks-worker, regular apps like your hworld service are automatically scheduled on intg-ks-worker2 (or other available nodes). Only the analytics workload, which has the matching toleration, will be allowed to run on intg-ks-worker.</p>
<p>→This ensures that critical or resource-intensive tasks are isolated and don’t compete with everyday applications.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image238.webp" style="width:5.32153in;height:3.48403in" /></p></td>
</tr>
<tr>
<td><p>→Create below file. Notice the highlighted part where ‘tolerance’ is mentioned. It is like a pass for the workernode that has been tainted/marked with certain key.</p>
<p>→This pass has the same key so scheduler allows this pod to go there.</p>
<pre><code class="nohighlight language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: analytics-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: analytics
  template:
    metadata:
      labels:
        app: analytics
    spec:
<mark>      tolerations:</mark>
<mark>        - key: "app-key"</mark>
<mark>          operator: "Equal"</mark>
<mark>          value: "analytics"</mark>
<mark>          effect: "NoSchedule"</mark>
      containers:
        - name: analytics
          image: nerdysrisha/analytics065:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          resources:
            requests:
              cpu: "500m"
              memory: "512Mi"
            limits:
              cpu: "2"
              memory: "2Gi"
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: analytics-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: analytics
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash">cd C:\ws\sboot\lab065
mvn clean package
docker build -t analytics065:latest .</code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl describe node intg-ks-worker | grep Taints</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image239.webp" style="width:4.03125in;height:0.9375in" alt="{DC20984C-BAC6-4874-93C1-43B3C3182156}" /></p>
<pre><code class="language-bash">kubectl taint nodes intg-ks-worker app-key=analytics:NoSchedule</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image240.webp" style="width:6.4375in;height:0.89583in" alt="{5C612B6A-4EC7-4ACD-BB75-5B75949F028F}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">docker tag analytics065:latest nerdysrisha/analytics065:latest
docker push nerdysrisha/analytics065:latest
kubectl create namespace integrations
kubectl config set-context --current --namespace=integrations
kubectl delete -f .\deployment.yaml
kubectl apply -f deployment.yaml
kubectl get all
kubectl port-forward svc/analytics-service -n integrations 8080:8080</code></pre></td>
</tr>
<tr>
<td><p>→Test the curl</p>
<pre><code class="language-bash">curl http://localhost:8080</code></pre></td>
</tr>
<tr>
<td><p>→Check pods and their node</p>
<pre><code class="language-bash">kubectl get pods -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image241.webp" style="width:7.52917in;height:0.87292in" alt="{C595984F-9E26-4414-9189-D23F078E16F4}" /></p></td>
</tr>
</tbody>
</table>

###  Node Affinity 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Suppose if we want to run a pod explicitely on a particular node.</p>
<p>→In such cases, we do not TAINT and we remove the configuration of ‘tolerations’ from yaml.</p>
<p>→Instead we add below snippet.</p>
<p>→Rest all steps remain same.</p>
<pre><code class="nohighlight language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
  name: analytics-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: analytics
  template:
    metadata:
      labels:
        app: analytics
    spec:
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
    <mark>        nodeSelectorTerms:</mark>
<mark>              - matchExpressions:</mark>
<mark>                  - key: "kubernetes.io/hostname"</mark>
<mark>                    operator: "In"</mark>
<mark>                    values:</mark>
<mark>                      - intg-ks-worker</mark>
      containers:
        - name: analytics
          image: nerdysrisha/analytics:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
          resources:
            requests:
              cpu: "500m"
              memory: "512Mi"
            limits:
              cpu: "2"
              memory: "2Gi"
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: analytics-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: analytics
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080</code></pre></td>
</tr>
</tbody>
</table>

##  HPA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Typical Requests flowing towards the pods</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image242.webp" style="width:5.64236in;height:3in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image243.webp" style="width:7.67778in;height:3.14653in" alt="{D7FB1920-0AEF-491D-BDCC-6E0C70460586}" /></p>
<p>HPA using below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image244.webp" style="width:7.67986in;height:0.89792in" alt="{331480BD-ADC2-4DBC-AF1E-BC77FA53813B}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image245.webp" style="width:7.67986in;height:3.25694in" alt="{D687F791-DBAC-463E-81C5-485F4E223CB6}" /></p></td>
</tr>
<tr>
<td><p><mark>→Before this step is done ensure metrics server is up. This is super important as pods will need to fetch metrics.</mark></p>
<p><mark>→Refer Metrics Server Section for necessary installation.</mark></p>
<pre><code class="language-bash">kubectl get pods -n kube-system | findstr metrics-server</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image246.webp" style="width:7.52847in;height:0.58194in" alt="{AE6CE15D-131D-4F4E-996C-52DE3DB6734E}" /></p></td>
</tr>
<tr>
<td><p>→Create below yaml</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: apps/v1</p>
<pre><code class="nohighlight language-yaml">kind: Deployment
metadata:
  name: hpaenabledhw-deployment
  namespace: integrations
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hpaenabledhw
  template:
    metadata:
      labels:
        app: hpaenabledhw
    spec:
      containers:
        - name: hpaenabledhw
          image: nerdysrisha/hpaenabledhw66:latest
          imagePullPolicy: Always
          ports:
            - containerPort: 8080
<mark>          resources:</mark>
<mark>            requests:</mark>
<mark>              cpu: "50m"</mark>
<mark>              memory: "128Mi"</mark>
<mark>            limits:</mark>
<mark>              cpu: "200m"</mark>
<mark>              memory: "256Mi"</mark>
          securityContext:
            runAsUser: 1000
            runAsGroup: 1000
            runAsNonRoot: true
            allowPrivilegeEscalation: false
            readOnlyRootFilesystem: true
          volumeMounts:
            - name: tmp-volume
              mountPath: /tmp
      volumes:
        - name: tmp-volume
          emptyDir: {}
---
apiVersion: v1
kind: Service
metadata:
  name: hpaenabledhw-service
  namespace: integrations
spec:
  type: NodePort
  selector:
    app: hpaenabledhw
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30080
---
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: hpaenabledhw-hpa
  namespace: integrations
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: hpaenabledhw-deployment
  minReplicas: 1
  maxReplicas: 5
  metrics:
    - type: Resource
      resource:
        name: cpu
        target:
          type: Utilization
          averageUtilization: 50</code></pre></td>
</tr>
<tr>
<td><p><mark>CONTINUE FROM EHRE.. HPA WORKING AS EXPECTED HAVE SEPARATE TERMINALS.</mark></p>
<p><mark>LOAD PUMPING IS EXCEEDING 800%. ADJUST COMMAND TO ACCOMMODATE JUST ENOUGH TO EXCEED WITH SOME TIMER INIT.</mark></p>
<p><mark>CONTINUE FROM YOUTUBE of brave browser on lenovo laptop not on coco-laptop</mark></p>
<p><a href="https://www.youtube.com/watch?v=W04brGNgxN4"><mark>https://www.youtube.com/watch?v=W04brGNgxN4</mark></a></p>
<p><mark>Continuing from CKA Udemy not from YOUTUBUE. Ignoring the yaml mentioned above, fresh yaml considered as below.</mark></p></td>
</tr>
<tr>
<td><p>→YAML</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: apps/v1</mark>
<mark><strong>kind</strong>: Deployment</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: php-apache</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>selector</strong>:</mark>
<mark><strong>matchLabels</strong>:</mark>
<mark><strong>run</strong>: php-apache</mark>
<mark><strong>template</strong>:</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>labels</strong>:</mark>
<mark><strong>run</strong>: php-apache</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: php-apache</mark>
<mark><strong>image</strong>: registry.k8s.io/hpa-example</mark>
<mark><strong>ports</strong>:</mark>
<mark><strong>- containerPort</strong>: 80</mark>
<mark><strong>resources</strong>:</mark>
<mark><strong>requests</strong>:</mark>
<mark><strong>cpu</strong>: 50m</mark>
<mark>---</mark>
<mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Service</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: php-apache</mark>
<mark><strong>labels</strong>:</mark>
<mark><strong>run</strong>: php-apache</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>ports</strong>:</mark>
<mark><strong>- port</strong>: 80</mark>
<mark><strong>selector</strong>:</mark>
<mark><strong>run</strong>: php-apache</mark></code></pre></td>
</tr>
<tr>
<td><p>→Apply the same</p>
<pre><code class="language-bash">kubectl apply -f 020-hpa-enabled-pod.yaml
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image247.webp" style="width:7.67569in;height:3.25in" /></p></td>
</tr>
<tr>
<td><p>→Ensure metrics server is capturing the cpu and memory</p>
<pre><code class="language-bash">kubectl top pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image248.webp" style="width:7.67986in;height:1in" /></p></td>
</tr>
<tr>
<td><p>→Capture the deployment name, so that in next step it can be used.</p>
<pre><code class="language-bash">kubectl get deployment</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image249.webp" style="width:7.68333in;height:0.83056in" /></p></td>
</tr>
<tr>
<td><p>→Create HPA using the deployment name as highlighted.</p>
<pre><code class="nohighlight language-bash">kubectl autoscale deployment <strong>php-apache</strong> --cpu-percent=50 --min=1 --max=3
kubectl get hpa</code></pre>
<p>→Give few mins and rerun as we can see ‘unknown’ and replicas are still 0.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image250.webp" style="width:7.67569in;height:1.16528in" /></p>
<p>→Notice now it is available.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image251.webp" style="width:7.67847in;height:1.23542in" /></p></td>
</tr>
<tr>
<td><p>→Now let us pump the load. Open second terminal so that we can have a watch.</p>
<p>→Terminal 1:</p>
<pre><code class="language-bash">kubectl get hpa php-apache --watch</code></pre>
<p>→Terminal 2:</p>
<p>kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image252.webp" style="width:7.67847in;height:2.54861in" /></p>
<p>→After some time, stop the right side load generator and notice the replicas going down. It takes around 4-5 mins as K8s does a graceful shutdown of pods.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image253.webp" style="width:7.68333in;height:1.38681in" /></p></td>
</tr>
<tr>
<td><p>→Important point. Note that for scaling up there is no delay. However, to scale down there is a delay of 5 mins.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image254.webp" style="width:7.68056in;height:1.69097in" /></p>
<p>→This can be controlled as well as shown in next block</p></td>
</tr>
<tr>
<td><p>→Yaml with stabilization window.</p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl create -f 021a-hpa-enabled-pod.yaml
kubectl create -f 021b-hpa-with-stabilization-window.yaml
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image255.webp" style="width:7.68125in;height:1.97569in" /></p></td>
</tr>
<tr>
<td><p>→Open two terminals</p>
<p>→Terminal 1</p>
<pre><code class="language-bash">kubectl get hpa cpu-hpa --watch</code></pre>
<p>→Terminal 2</p>
<p>kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image256.webp" style="width:7.67014in;height:3.26597in" /></p></td>
</tr>
<tr>
<td><p>→Notice the scaling down from 5 to 1 and notice the seconds as we have put just 10 seconds to scale down.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image257.webp" style="width:7.68056in;height:1.48958in" /></p></td>
</tr>
</tbody>
</table>

##  CONTINUE FROM YT

|                                                  |
|--------------------------------------------------|
| REFER THE YOUTUBE CHANNEL OF ABHISHEK VEERAMALLA |

## Harbor

|     |
|-----|
|     |

### NGINX Setup - To test Ubuntu to Host Bridging

|     |
|-----|
|     |

####  Virtual Box Settings

|  |
|----|
| →Given we will be doing a VMware driven setup, change the network settings from NAT to Bridged Adapter |
| ![](subjects/tech/kubernetes/az-aks-complete/img/media/image258.webp)![](subjects/tech/kubernetes/az-aks-complete/img/media/image259.webp)<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image260.webp" style="width:6.26875in;height:3.625in" alt="{009B134A-84B6-44BA-90E6-D931F4884163}" /> |

####  Setup Nginx for testing

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Update the ubuntu</p>
<pre><code class="language-bash">sudo apt update</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image261.webp" style="width:7.525in;height:1.37639in" alt="{1AB00FF9-C9BC-4D7E-AE2C-B8CA01D265CD}" /></p></td>
</tr>
<tr>
<td><p>→Install nginx</p>
<pre><code class="language-bash">sudo apt install nginx -y</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image262.webp" style="width:7.5375in;height:1.875in" alt="{CFCC5949-7F10-4B13-8052-8A12839B1C7F}" /></p>
<p>End of completion logs</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image263.webp" style="width:7.53125in;height:0.91389in" alt="{D93804F0-7978-4F21-A4FE-A80F93AC777F}" /></p></td>
</tr>
<tr>
<td><p>→Start the nginx and check its status</p>
<pre><code class="language-bash">sudo systemctl start nginx
sudo systemctl status nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image264.webp" style="width:7.53542in;height:2.53056in" alt="{4AD4E4D6-48F7-48F3-883A-AF287D39C0A7}" /></p></td>
</tr>
</tbody>
</table>

####  Allow nginx at Firewall or Disable FW (optional) 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Disable FW or Enable only nginx</p>
<pre><code class="language-bash">sudo ufw allow 'Nginx HTTP'
sudo ufw disable</code></pre></td>
</tr>
<tr>
<td><p>→Disable FW for local testing</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image265.webp" style="width:6.58333in;height:0.89583in" alt="{C709BA73-3CED-4680-BF74-27773E27DA58}" /></p></td>
</tr>
</tbody>
</table>

####  Find Ubuntu IP

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">ip a</code></pre>
<p>IF THE NETWORK IS ‘NAT’ - THIS WILL NOT WORK</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image266.webp" style="width:7.52639in;height:4.16042in" alt="{8D708FCA-BB34-4A57-AA55-58A931B971BB}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">ip a</code></pre>
<p>IF THE NETWORK IS ‘BRIDGED’ - THIS WILL WORK</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image267.webp" style="width:7.53889in;height:3.47917in" alt="{14C80BFE-AC4E-45E3-8040-053E0ECA726F}" /></p></td>
</tr>
</tbody>
</table>

####  Acess NGINX from host 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="http://192.168.1.13/">http://192.168.1.13/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image268.webp" style="width:7.52361in;height:2.23403in" alt="{2CBE251F-3F9E-4181-A165-2835AA5EF312}" /></p></td>
</tr>
</tbody>
</table>

####  Enable nginx for auto-start

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">sudo systemctl enable nginx</code></pre>
<p>→Incase if nginx is stopped or not working on reboot, execute above command</p></td>
</tr>
</tbody>
</table>

### PENDING HARBOR

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>START HARBOR</p>
<p>NOTHING STARTED</p>
<p>REQUIRED FOR IBM CONTAINER REGISTRY</p></td>
</tr>
</tbody>
</table>

## Docker Base Image - Selection 

<table>
<colgroup>
<col style="width: 45%" />
<col style="width: 54%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→ Note that there are two images that have different sizes.</p>
<p>→It is important to choose the right image to make it lighter</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image269.webp" style="width:7.52014in;height:2.59931in" alt="Image Comparision - Docker file Base Image" /></p></td>
</tr>
<tr>
<td><p>→The one that has <strong>smaller size</strong> is using this docker file</p>
<pre><code class="nohighlight language-plaintext"># Single stage - much simpler
FROM <strong>eclipse-temurin:22-jre-alpine</strong>
WORKDIR /app
COPY target/hworld-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080</code></pre></td>
<td><p>→The one that has <strong>higher size</strong> is using this docker file</p>
<pre><code class="nohighlight language-plaintext">FROM <strong>amazoncorretto:22</strong>
LABEL version="1.0"
EXPOSE 8080:8080
WORKDIR /app
COPY target/hworld-0.0.1-SNAPSHOT.jar /app/hworld-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "hworld-0.0.1-SNAPSHOT.jar"]</code></pre></td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
</tbody>
</table>

#  Advanced : Role/RoleBinding - ClusterRole/ClusterRoleBinding

|     |
|-----|
|     |

## Basics

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><strong>What is a Role:</strong></p>
<p>→It defines/provides a set of permissions. (Eg. List pods, create, delete objects etc)</p>
<p><strong>What is a Subject:</strong></p>
<p>→These can be users / group / service accounts.</p>
<p><strong>What is a RoleBinding:</strong></p>
<p>→The activity that ties a Role to a Subject, which is basically tying the permission defined in the role to subjects like Users.</p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Role 

|  |
|----|
| →A role is always ‘namespace scoped’ tes a role with a user/group/sa within a specific namespace. |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image270.webp" style="width:5.83333in;height:2.55208in" alt="{826D3C69-82F4-462A-AF9D-BD359E36C0E3}" /> |

##  Role/Role Binding & ClusterRole/ClusterRoleBinding 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Simple definition</p>
<table style="width:89%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 28%" />
<col style="width: 31%" />
</colgroup>
<tbody>
<tr>
<td>Namespace Scoped</td>
<td>Cluster Scoped</td>
<td>Brief Description</td>
</tr>
<tr>
<td>Roles</td>
<td>ClusterRoles</td>
<td>define permissions</td>
</tr>
<tr>
<td>RoleBindings</td>
<td>ClusterRoleBindings</td>
<td>glue identities to those roles</td>
</tr>
<tr>
<td>ServiceAccounts (namespaced)</td>
<td>Users/Groups</td>
<td>identities being bound or glued</td>
</tr>
</tbody>
</table></td>
</tr>
<tr>
<td><p>→Below is an image that depicts how this works</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image271.webp" style="width:5.75139in;height:5.02222in" alt="{15ADE8A9-E0C5-4086-8C78-618E8CBED681}" /></p>
<p>→Simpler interpretation for above diagram as below.</p></td>
</tr>
<tr>
<td><p>→A cluster has two RBAC scopes: namespace and entire cluster.</p>
<p>→Principals can be:</p>
<blockquote>
<p>→ServiceAccounts (always inside a namespace, in-cluster identities).</p>
<p>→Users/Groups (external identities, cluster-wide, but can be bound at namespace or cluster scope).</p>
</blockquote>
<p>→We have Roles (e.g., edit, namespace-scoped) and ClusterRoles (e.g., cluster-admin, cluster-scoped).</p>
<p>→We have RoleBindings (e.g., dev:editRB) and ClusterRoleBindings (e.g., cluster-admin-binding) that glue principals (users/groups/SAs) to roles.</p></td>
</tr>
</tbody>
</table>

###  List Roles and Cluster Roles 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below are the ‘roles’</p>
<pre><code class="language-plaintext">$ kubectl get roles --all-namespaces
NAMESPACE NAME CREATED AT
kube-public kubeadm:bootstrap-signer-clusterinfo 2025-08-28T10:59:37Z
kube-public system:controller:bootstrap-signer 2025-08-28T10:59:37Z
kube-system extension-apiserver-authentication-reader 2025-08-28T10:59:37Z
kube-system kube-proxy 2025-08-28T10:59:38Z
kube-system kubeadm:kubelet-config 2025-08-28T10:59:37Z
kube-system kubeadm:nodes-kubeadm-config 2025-08-28T10:59:37Z
kube-system system::leader-locking-kube-controller-manager 2025-08-28T10:59:37Z
kube-system system::leader-locking-kube-scheduler 2025-08-28T10:59:37Z
kube-system system:controller:bootstrap-signer 2025-08-28T10:59:37Z
kube-system system:controller:cloud-provider 2025-08-28T10:59:37Z
kube-system system:controller:token-cleaner 2025-08-28T10:59:37Z</code></pre></td>
</tr>
<tr>
<td><p>→Below are the <strong>clusterroles</strong></p>
<pre><code class="language-plaintext">$ kubectl get clusterroles
NAME CREATED AT
admin 2025-08-28T10:59:36Z
cluster-admin 2025-08-28T10:59:36Z
edit 2025-08-28T10:59:36Z
kindnet 2025-08-28T10:59:41Z
kubeadm:get-nodes 2025-08-28T10:59:37Z
local-path-provisioner-role 2025-08-28T10:59:42Z
system:aggregate-to-admin 2025-08-28T10:59:36Z
system:aggregate-to-edit 2025-08-28T10:59:36Z
system:aggregate-to-view 2025-08-28T10:59:36Z
system:auth-delegator 2025-08-28T10:59:36Z
system:basic-user 2025-08-28T10:59:36Z
system:certificates.k8s.io:certificatesigningrequests:nodeclient 2025-08-28T10:59:36Z
system:certificates.k8s.io:certificatesigningrequests:selfnodeclient 2025-08-28T10:59:36Z
system:certificates.k8s.io:kube-apiserver-client-approver 2025-08-28T10:59:36Z
system:certificates.k8s.io:kube-apiserver-client-kubelet-approver 2025-08-28T10:59:36Z
system:certificates.k8s.io:kubelet-serving-approver 2025-08-28T10:59:36Z
system:certificates.k8s.io:legacy-unknown-approver 2025-08-28T10:59:36Z
system:controller:attachdetach-controller 2025-08-28T10:59:36Z
system:controller:certificate-controller 2025-08-28T10:59:37Z
system:controller:clusterrole-aggregation-controller 2025-08-28T10:59:36Z
system:controller:cronjob-controller 2025-08-28T10:59:36Z
system:controller:daemon-set-controller 2025-08-28T10:59:36Z
system:controller:deployment-controller 2025-08-28T10:59:36Z
system:controller:disruption-controller 2025-08-28T10:59:36Z
system:controller:endpoint-controller 2025-08-28T10:59:36Z
system:controller:endpointslice-controller 2025-08-28T10:59:36Z
system:controller:endpointslicemirroring-controller 2025-08-28T10:59:36Z
system:controller:ephemeral-volume-controller 2025-08-28T10:59:37Z
system:controller:expand-controller 2025-08-28T10:59:37Z
system:controller:generic-garbage-collector 2025-08-28T10:59:37Z
system:controller:horizontal-pod-autoscaler 2025-08-28T10:59:37Z
system:controller:job-controller 2025-08-28T10:59:37Z
system:controller:legacy-service-account-token-cleaner 2025-08-28T10:59:37Z
system:controller:namespace-controller 2025-08-28T10:59:37Z
system:controller:node-controller 2025-08-28T10:59:37Z
system:controller:persistent-volume-binder 2025-08-28T10:59:37Z
system:controller:pod-garbage-collector 2025-08-28T10:59:37Z
system:controller:pv-protection-controller 2025-08-28T10:59:37Z
system:controller:pvc-protection-controller 2025-08-28T10:59:37Z
system:controller:replicaset-controller 2025-08-28T10:59:37Z
system:controller:replication-controller 2025-08-28T10:59:37Z
system:controller:resourcequota-controller 2025-08-28T10:59:37Z
system:controller:root-ca-cert-publisher 2025-08-28T10:59:37Z
system:controller:route-controller 2025-08-28T10:59:37Z
system:controller:service-account-controller 2025-08-28T10:59:37Z
system:controller:service-controller 2025-08-28T10:59:37Z
system:controller:statefulset-controller 2025-08-28T10:59:37Z
system:controller:ttl-after-finished-controller 2025-08-28T10:59:37Z
system:controller:ttl-controller 2025-08-28T10:59:37Z
system:controller:validatingadmissionpolicy-status-controller 2025-08-28T10:59:37Z
system:coredns 2025-08-28T10:59:38Z
system:discovery 2025-08-28T10:59:36Z
system:heapster 2025-08-28T10:59:36Z
system:kube-aggregator 2025-08-28T10:59:36Z
system:kube-controller-manager 2025-08-28T10:59:36Z
system:kube-dns 2025-08-28T10:59:36Z
system:kube-scheduler 2025-08-28T10:59:36Z
system:kubelet-api-admin 2025-08-28T10:59:36Z
system:monitoring 2025-08-28T10:59:36Z
system:node 2025-08-28T10:59:36Z
system:node-bootstrapper 2025-08-28T10:59:36Z
system:node-problem-detector 2025-08-28T10:59:36Z
system:node-proxier 2025-08-28T10:59:36Z
system:persistent-volume-provisioner 2025-08-28T10:59:36Z
system:public-info-viewer 2025-08-28T10:59:36Z
system:service-account-issuer-discovery 2025-08-28T10:59:36Z
system:volume-scheduler 2025-08-28T10:59:36Z
view 2025-08-28T10:59:36Z</code></pre></td>
</tr>
</tbody>
</table>

###  List RoleBindings and ClusterRoleBindings 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below is the command</p>
<pre><code class="language-bash">kubectl get rolebindings,clusterrolebindings -A -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image272.webp" style="width:7.52361in;height:1.18681in" alt="{8304BC7D-B3A6-45A0-86E9-3AA7DFDBBDFB}" /></p></td>
</tr>
</tbody>
</table>

###  Listing Principals (Service Accounts / Users) 

|     |
|-----|
|     |

###  Service Accounts

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Listing Service Accounts</p>
<pre><code class="language-bash">kubectl get serviceaccounts -A</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image273.webp" style="width:6.98958in;height:2.79167in" alt="{FD981128-D7B6-4DF0-B7BB-B84A48058826}" /></p></td>
</tr>
<tr>
<td><p>→Every namespace automatically has a default ServiceAccount created (e.g., default, integrations, kube-system, etc.).</p>
<p>→These ServiceAccounts are used by pods in that namespace if no other ServiceAccount is specified.</p>
<p>→The others you see (e.g., attachdetach-controller in kube-system) are system-managed ServiceAccounts used by Kubernetes controllers to run cluster control-plane jobs.</p>
<p>→The SECRETS column shows how many legacy secrets are attached; in Kubernetes 1.24+ secrets are no longer auto-created, so you see 0.</p></td>
</tr>
</tbody>
</table>

###  List User Identity (username) 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Listing user identity that is authorised</p>
<pre><code class="language-bash">kubectl auth whoami</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image274.webp" style="width:7.52083in;height:1.15833in" alt="{29C19EAC-D99C-4F29-A760-824C9B61DED3}" /></p>
<p>→Note: kubectl auth whoami shows the authenticated identity that the Kubernetes API server sees after verifying your credentials (e.g. the CN in a client certificate: kubernetes-admin).</p></td>
</tr>
</tbody>
</table>

###  List User Profile - Under Kubeconfig file

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can list number of user profile that are bound to K8s.</p>
<pre><code class="language-bash">kubectl config get-users</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image275.webp" style="width:4.08333in;height:0.90625in" alt="{73EEA1DD-C1D6-4F0C-B2C7-01CC801FD171}" /></p>
<p>→Note: kubectl config get-users shows the user entries in your kubeconfig file (local client identity labels, e.g. docker-desktop or ‘kind-intg-ks’).</p>
<p>→That’s just a name in your local config.</p></td>
</tr>
</tbody>
</table>

###  Whoami - Permissions - What can I do 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Listing permissions associated with the user who is using the ‘kubectl’</p>
<p>→Notice for current user, has FULL permissions marked as ‘*.*’</p>
<pre><code class="language-bash">kubectl auth can-i --list</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image276.webp" style="width:7.52569in;height:4.11875in" alt="{96876265-F3AC-4C1C-8A12-A091A134ADE0}" /></p></td>
</tr>
<tr>
<td><p>→Another simple auth listing for the user</p>
<pre><code class="language-bash">kubectl auth can-i get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image277.webp" style="width:3.3125in;height:1.26042in" alt="{87A78279-A55C-4DB6-989D-013229BBB1AF}" /></p></td>
</tr>
</tbody>
</table>

##  Create Role - SA - Role Binding (Detailed) Attempt 1 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="https://youtu.be/W04brGNgxN4?t=22507">https://youtu.be/W04brGNgxN4?t=22507</a></p></td>
</tr>
<tr>
<td><p>→Before proceeding to this section, ensure you understood the diagram / depiction mentioned in Role / Role Binding section above.</p>
<p>→Quick understand all these as diagram shown below.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image278.webp" style="width:7.68125in;height:4.12222in" /></p></td>
</tr>
<tr>
<td><p>→First we need to create a Role.</p>
<p>→Second we need to create a Service Account.</p>
<p>→Finally we need to create Role Binding.</p>
<p>→Checkpoint we need to check if Service Account can perform desired operations.</p></td>
</tr>
</tbody>
</table>

###  Create a namespace - Change / Switch Namespace

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create namespace. Eg. integrations</p>
<pre><code class="language-bash">kubectl get ns
kubectl create ns integrations</code></pre></td>
</tr>
</tbody>
</table>

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Switch / change the namespace whenever needed</p>
<pre><code class="language-bash">kubectl config set-context --current --namespace="integrations"</code></pre></td>
</tr>
</tbody>
</table>

###  List Service Accounts - Under created NS

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note that by default whenever we create a namespace a ‘service account’ gets created.</p>
<pre><code class="language-bash">kubectl get serviceaccounts -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image279.webp" style="width:6.45833in;height:0.76042in" alt="{F2DC6926-1897-44DB-9D8B-B0D3011ACAAC}" /></p></td>
</tr>
</tbody>
</table>

###  Check permissions for Namespace - Admin and Default 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Let us check who is the user logged in or in control now. Notice that it is ‘admin’, who will definitely have all the needed permissions.</p>
<pre><code class="language-bash">kubectl auth whoami</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image280.webp" style="width:5.4375in;height:1.09375in" alt="{338C4249-80C1-498C-BEA0-52A6D65FF4A9}" /></p>
<pre><code class="language-bash">kubectl auth can-i get pods -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image281.webp" style="width:5.98958in;height:0.80208in" alt="{5A02F64F-BF17-4A34-9A19-C1AA43E02683}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl auth can-i --list --as=system:serviceaccount:integrations:default -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image282.webp" style="width:7.52431in;height:3.21736in" alt="{B612FB8B-E2CF-4B77-93F1-177CDD95D189}" /></p>
<p>→Note: The default service account in the integrations namespace cannot perform actions like delete, update, patch, or manage resources (e.g., pods, deployments) beyond creating self-subject reviews and accessing specific non-resource URLs.</p></td>
</tr>
</tbody>
</table>

###  STEP1: Create a ROLE: integrations-mgr

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a simple role by name ‘integrations-mgr’.</p>
<p>→Important: Notice the ‘namespace’ that is being specified.</p>
<p>→Check if any role already exists previously</p>
<pre><code class="language-bash">kubectl get role integrations-mgr -n integrations -o yaml
cd /home/admin/Downloads/k8basics/roles-sa-bindings</code></pre>
<p>→Before running this ensure the indention is correct else we may get failures.</p>
<pre><code class="language-yaml">cat &lt;&lt;'EOF' &gt; integrations-mgr-role.yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
namespace: integrations
name: integrations-mgr
rules:
- apiGroups: [""]
resources: ["pods", "services", "configmaps", "secrets"]
verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]
- apiGroups: ["apps"]
resources: ["deployments", "statefulsets"]
verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]
EOF
ls -lrt</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image283.webp" style="width:7in;height:3.21875in" alt="{F00A0E5D-57D4-4235-96C6-02A407A91EF6}" /></p></td>
</tr>
<tr>
<td><p>→What can we configure in apiGroups is depicted in below table.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image284.webp" style="width:7.52431in;height:1.675in" alt="{5911FF15-E843-46D4-B120-B7F6C898A9C8}" /></p></td>
</tr>
<tr>
<td><p>→ Save the file (below is on ‘windows machine)</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image285.webp" style="width:4.79792in;height:3.39097in" alt="{07443082-CB9A-4366-8A84-13FBE1A1F069}" /></p></td>
</tr>
<tr>
<td><p>→Apply the file</p>
<pre><code class="language-bash">kubectl apply -f .\integrations-mgr-role.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image286.webp" style="width:7.35417in;height:0.4375in" alt="{1A365D06-F861-4660-8B7E-9549FAE6CF61}" /></p></td>
</tr>
</tbody>
</table>

###  Describe / Verify Role 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get role integrations-mgr -n integrations -o yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image287.webp" style="width:7.52292in;height:2.82083in" alt="{1DCD34E2-8571-448D-BC0F-B848970B89A0}" /></p></td>
</tr>
</tbody>
</table>

###  List Roles under namespace:integrations 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get role -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image288.webp" style="width:4.77083in;height:0.91667in" alt="{D8D6651E-7052-42BA-8F14-41526C8E76A6}" /></p></td>
</tr>
<tr>
<td><p>→Remember, ‘Role’ is ‘namespace’ specific.</p></td>
</tr>
</tbody>
</table>

###  STEP2: Create a SERVICEACCOUNT: integrations-mgr-sa

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a simple service account (SA) by name ‘integrations-mgr-sa’.</p>
<p>→Important: Notice the ‘namespace’ that is being specified.</p>
<pre><code class="language-yaml">cat &lt;&lt;'EOF' &gt; integrations-mgr-sa.yaml
apiVersion: v1
kind: ServiceAccount
metadata:
namespace: integrations
name: integrations-mgr-sa
EOF</code></pre></td>
</tr>
<tr>
<td><p>→ Save the file</p></td>
</tr>
<tr>
<td><p>→Apply the object</p>
<pre><code class="language-bash">kubectl apply -f integrations-mgr-sa.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image289.webp" style="width:7.53056in;height:3.64861in" alt="{CF0CD4CC-3A48-444A-A847-25EDBC399E8A}" /></p></td>
</tr>
</tbody>
</table>

###  Describe / Verify SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Once we created the SA, we can describe or verify the same.</p>
<pre><code class="language-bash">kubectl get serviceaccount integrations-mgr-sa -n integrations -o yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image290.webp" style="width:7.52361in;height:1.49653in" alt="{12CD0848-986C-4A2B-9FE8-906549C7814A}" /></p></td>
</tr>
<tr>
<td><p>→Note that any namespace will have an SA created automaitcally with the name ‘default’</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image291.webp" style="width:3.35417in;height:1.20833in" alt="{4096FD94-0BA0-4513-8C4E-C51C2B1E0CC6}" /></p></td>
</tr>
</tbody>
</table>

###  Check Permissions of newly create SA 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below we are verifying the permissions assigned to the SA that we created. Note that by ‘default’ no permissions will be given to this user. As an example we are checking ‘get pods’ action.</p>
<pre><code class="nohighlight language-bash">kubectl auth can-i <strong>get pods</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa
kubectl auth can-i get pods --as=integrations-mgr-sa -n integrations</code></pre>
<p>→We will get ‘NO’ as response.</p></td>
</tr>
</tbody>
</table>

###  STEP3: Create ROLEBINDING : integrations-mgr-binding

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Now that we have Role, ServiceAccount; we will need the binding to map both of them.</p>
<pre><code class="language-yaml">cat &lt;&lt;'EOF' &gt; integrations-mgr-rolebinding.yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
namespace: integrations
name: integrations-mgr-binding
subjects:
- kind: ServiceAccount
name: integrations-mgr-sa
namespace: integrations
roleRef:
kind: Role
name: integrations-mgr
apiGroup: rbac.authorization.k8s.io
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Save the file and apply</p>
<pre><code class="language-bash">kubectl apply -f integrations-mgr-rolebinding.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image292.webp" style="width:7.52569in;height:2.81528in" alt="{A8AC17B9-F07E-482B-9019-A21B8C5DB32E}" /></p></td>
</tr>
</tbody>
</table>

###  Describe / Verify Role Binding 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Describe</p>
<pre><code class="language-bash">kubectl get rolebinding integrations-mgr-binding -n integrations -o yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image293.webp" style="width:7.52847in;height:2.44097in" alt="{50C0EF3B-07A2-4E2F-B6EB-2946F76D0FE3}" /></p></td>
</tr>
<tr>
<td><p>→Check Namespace level rolebindings</p>
<pre><code class="language-bash">kubectl get rolebinding -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image294.webp" style="width:5.38542in;height:0.9375in" alt="{8DD5DC84-6DBB-4F0D-932A-B874C14FF8B3}" /></p>
<p>→Here the rolebinding name ‘integrations-mgr-binding’ is having the role ‘integrations-mgr’</p></td>
</tr>
</tbody>
</table>

###  View all three objects together 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→If we want to see all of the three together, we can use below custom command</p>
<pre><code class="language-bash">kubectl get rolebinding integrations-mgr-binding -n integrations -o custom-columns=NAME:.metadata.name,ROLE:.roleRef.name,SERVICEACCOUNT:.subjects[0].name</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image295.webp" style="width:7.52083in;height:0.73194in" alt="{8C871A85-7F9A-4547-98A0-E9BAF6618FC6}" /></p></td>
</tr>
</tbody>
</table>

###  STEP4: VERIFY - Execute getPods command. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here let us verify as per the Role configured, are we able to perform operations.</p>
<p>→Eg. In our role we have below rules.</p>
<p>→Eg. The SA can get pods, get deployments. <mark>SUCCESS</mark></p>
<p>→Eg. The SA cannot get hpa. - <mark>FAILURE</mark>.</p>
<pre><code class="language-yaml">rules:
- apiGroups: [""]
  resources: ["pods", "services", "configmaps", "secrets"]
  verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]
- apiGroups: ["apps"]
  resources: ["deployments", "statefulsets"]
  verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]</code></pre></td>
</tr>
<tr>
<td><pre><code class="nohighlight language-bash">PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get pods</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa
<mark>yes</mark>
PS C:\ws\k8basics&gt;
PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get deployments</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa
<mark>yes</mark>
PS C:\ws\k8basics&gt;
PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get hpa</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa
<mark>no</mark>
PS C:\ws\k8basics&gt;</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image296.webp" style="width:7.52222in;height:1.30833in" alt="{5667AA70-AB23-4E29-92A8-D0822F40D0D9}" /></p></td>
</tr>
<tr>
<td><p>→How to use the new SA (that has necessary role) to get the pods etc.</p>
<p>→Note that the regular kube config already has ‘admin’ already loaded so, any attempt of directly kubectl get pods would not result in errors.</p>
<p>→Hence we will use a typical curl approach.</p>
<p>→Get the token first</p>
<pre><code class="language-bash">TOKEN=&lt;removed&gt; create token integrations-mgr-sa -n integrations)
curl -k -H "Authorization: Bearer &lt;removed&gt; https://127.0.0.1:43731/api/v1/namespaces
curl -k -H "Authorization: Bearer &lt;removed&gt; https://127.0.0.1:43731/api/v1/namespaces/kube-system/pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image297.webp" style="width:7.52986in;height:3.77153in" alt="{C5A55BD9-4C7F-4861-8E96-5FA5D51012EC}" /></p></td>
</tr>
</tbody>
</table>

##  Create ClusterRole - Use Existing SA - ClusterRoleBinding 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Given the simple Role and role Bindings work ‘namespace’ level, we will use the ‘clusterrole’ &amp; ‘clusterrolebinding’ to have an effect across the cluster.</p>
<p>→ Here we will use the ‘existing SA’</p></td>
</tr>
</tbody>
</table>

###  Create ClusterRole 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl create clusterrole cluster-pod-reader --verb=get,list,watch --resource=pods
kubectl get clusterrole | grep 'reader'</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image298.webp" style="width:7.53056in;height:1.54722in" alt="{269DA78D-6F3E-43AF-BF45-A3CB0E1F39CE}" /></p>
<pre><code class="language-bash">kubectl describe clusterrole cluster-pod-reader</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image299.webp" style="width:7.26042in;height:1.72917in" alt="{8A01FDCA-72AC-4E67-9BDA-5C275463A01F}" /></p></td>
</tr>
</tbody>
</table>

###  Create ClusterRoleBinding 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below we will create ClusterRoleBinding, let us ensure the SA is properly captured.</p>
<p>→We will use the SA : system:serviceaccount:integrations:integrations-mgr-sa</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image300.webp" style="width:7.51806in;height:2.53194in" alt="{E83F2AAD-D5CB-451D-87D7-F789774DB282}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl create clusterrolebinding cluster-pod-reader-crb \
--clusterrole=cluster-pod-reader \
--user=system:serviceaccount:integrations:integrations-mgr-s
kubectl get clusterrolebinding | grep 'crb'</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image301.webp" style="width:7.53819in;height:0.72222in" alt="{97243A89-B9F9-4F4D-B6CA-5CD5D78D9311}" /></p>
<p>→Validate the binding</p>
<pre><code class="language-bash">kubectl describe clusterrolebinding cluster-pod-reader-crb</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image302.webp" style="width:7.53403in;height:2.09236in" alt="{BC6C260C-0513-4BC6-9743-15E83A4964EB}" /></p></td>
</tr>
</tbody>
</table>

###  Invoke API

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→First get a fresh token and then invoke curl on ‘kube-system’ namespace.</p>
<p>→Notice now we get the information unlike forbidden.</p>
<pre><code class="language-bash">TOKEN=&lt;removed&gt; create token integrations-mgr-sa -n integrations)
curl -k -H "Authorization: Bearer &lt;removed&gt; https://127.0.0.1:43731/api/v1/namespaces/kube-system/pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image303.webp" style="width:7.52569in;height:2.32639in" alt="{62709B7D-E8BD-44F3-B3FC-BC7B1FE91C70}" /></p></td>
</tr>
</tbody>
</table>

## Asymetric Encryptions

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→High level understanding of public and private keys</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image304.webp" style="width:4.47292in;height:3.77292in" /></p></td>
</tr>
</tbody>
</table>

## Authenticate Cluster Using Custom Certificates

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ In this section below, we will generate a simple X509 certificate and then bind to the cluster.</p>
<p>→Subsequently, we will use NEW certificate to authenticate to cluster and list pods etc.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image305.webp" style="width:6.60694in;height:4.38125in" alt="{8C5BA436-2E08-4096-BDC0-D3AD9FA1888F}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image306.webp" style="width:7.52222in;height:4.94444in" alt="{7E8413E1-13C3-4225-965E-C27383AB37C6}" /></p></td>
</tr>
</tbody>
</table>

### As-is 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl config get-contexts #(we should see just one)
kubectl config view --minify
kubectl get csr</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image307.webp" style="width:4.29444in;height:4.03472in" alt="{AD83D588-C369-4B58-B992-E22C320DDFC9}" /></p>
<p>→Note we are able to list the pods etc as well.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image308.webp" style="width:4.375in;height:0.77083in" alt="{6D8BC25B-B4EA-40AC-960F-F871D4526E25}" /></p></td>
</tr>
</tbody>
</table>

### Create Certificates

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">sudo mkdir /root/certificates
sudo -i
cd /root/certificates</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image309.webp" style="width:4.70833in;height:0.41667in" alt="{2C7847AB-EB37-41DC-8155-D36A1C7D9411}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image310.webp" style="width:3.47917in;height:1in" alt="{9016167E-B731-4514-8085-4BD1156B5A74}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">openssl genrsa -out nerdylabs.key 2048</code></pre>
<p>openssl req -new -key nerdylabs.key -out nerdylabs.csr -subj "/CN=nerdy/O=nerdylabs"</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image311.webp" style="width:7.52847in;height:2.20208in" alt="{D1399C13-3AA6-40B7-9826-1188D9F242E9}" /></p></td>
</tr>
<tr>
<td><p>→Decode and see the certificate</p>
<pre><code class="language-bash">cat nerdylabs.csr | base64 | tr -d '\n'</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image312.webp" style="width:7.53264in;height:1.49097in" alt="{CECE6FAC-4400-4A3A-A600-DC5B7780A0E0}" /></p></td>
</tr>
<tr>
<td><p>→Exit the ‘root’</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image313.webp" style="width:2.85417in;height:0.6875in" alt="{3166C605-8E33-41E9-A1E4-6BAF85F444A7}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Create CSR yaml

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a csr YAML and paste the decoded base64 contents as below.</p>
<pre><code class="language-bash">cd ~/Downloads/k8basics
ls -lrt
nano csr-requests.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image314.webp" style="width:7.54028in;height:2.08194in" alt="{D7777661-98A5-4ECB-802A-8F987111AA2E}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image315.webp" style="width:5.80208in;height:1.73958in" alt="{FE588022-616B-4984-934D-AB4969D0C3ED}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl apply -f csr-requests.yaml
kubectl get csr</code></pre></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image316.webp" style="width:7.52361in;height:1.14861in" alt="{95B46118-1933-44AE-940F-4F205F3C7692}" /></p></td>
</tr>
<tr>
<td><p>→Notice it is created but in ‘pending’ state</p></td>
</tr>
</tbody>
</table>

### Approve the CSR 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl certificate approve nerdylabs-csr</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image317.webp" style="width:7.525in;height:1.24722in" alt="{DBDFA1F6-D76A-4C95-8467-43CB05CC7DEA}" /></p></td>
</tr>
</tbody>
</table>

### Download the certificate

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get csr nerdylabs-csr -o jsonpath='{.status.certificate}' | base64 -d &gt; nerdylabs-csr.crt</code></pre>
<p>→<mark>Important</mark> to note that this certificate will be auto-expired after few hours. Download the same.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image318.webp" style="width:7.52153in;height:1.45764in" alt="{71A5EA05-B6F8-4C3F-9599-EAC1FAB3D169}" /></p></td>
</tr>
</tbody>
</table>

### Download Certificate - Binding Context 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get csr nerdylabs-csr -o jsonpath='{.status.certificate}' | base64 -d &gt; nerdylabs-csr.crt
sudo cp /root/certificates/nerdylabs.key ~/Downloads/k8basics/
ls -lrt</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image319.webp" style="width:7.525in;height:2.21042in" alt="{6F7FC03C-8650-4FFB-9857-61CB03DB9FAD}" /></p>
<pre><code class="language-bash">kubectl config set-credentials nerdylabs \
--client-certificate=$HOME/Downloads/k8basics/nerdylabs-csr.crt \
--client-key=$HOME/Downloads/k8basics/nerdylabs.key
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image320.webp" style="width:7.53472in;height:1.18403in" alt="{206D76EC-869C-4BE3-9C80-9EDCDD92F130}" /></p></td>
</tr>
<tr>
<td><p>→<mark>Important</mark> : Notice here despite having the certificates downloaded and setting the context we got error.</p>
<p>→What it means is now we are loacking necessary roles and binding.</p></td>
</tr>
</tbody>
</table>

### Create Role & Binding 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→For simplicity I have moved all the certificates etc to a new directory.</p>
<p>→Create a role yaml as below.</p>
<pre><code class="language-bash">nano role.yaml
ls -lrt
cat role.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image321.webp" style="width:3.42292in;height:2.85278in" alt="{6F5E9F88-9F65-452E-86D5-4D3417C84508}" /></p></td>
</tr>
<tr>
<td><p>→Change the context back to ‘admin’. Remember currently we switched the context to ‘nerdy’ which WILL NOT have authorization to create role and rolebinding.</p>
<p>→So we are switching back to admin, apply the role &amp; rolebinding and then we will switch back to our custom context.</p>
<pre><code class="language-bash">kubectl config use-context kind-intg-ks
kubectl apply -f role.yaml
nano rolebinding.yaml
kubectl apply -f rolebinding.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image322.webp" style="width:7.0625in;height:4.88542in" alt="{0C104543-DB29-42DE-B9B3-687D95245E7F}" /></p></td>
</tr>
</tbody>
</table>

### Get Resources - Pods 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl --context=nerdylabs-context get pods</code></pre>
<p>→This will fail because ‘integration namespaces is not bound in ‘role &amp; rolebinding’</p>
<pre><code class="language-bash">kubectl --context=nerdylabs-context -n default get pods</code></pre>
<p>→This will suceed as our role and rolebinding is mentioning ‘default’ namespace.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image323.webp" style="width:7.525in;height:1.12708in" alt="{45FE2D14-4D86-4202-89CF-81B6A4640132}" /></p></td>
</tr>
</tbody>
</table>

##  Configure AWS in Ubuntu - Mayssa Account 

|     |
|-----|
|     |

### Download aws cli 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">cd ~/Downloads/
ls -lrt
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
ls -lrt</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image324.webp" style="width:7.52292in;height:4.05625in" alt="{9C9C1079-2D2F-4809-ADAD-EF77D2E58479}" /></p></td>
</tr>
<tr>
<td><p><strong>AWS Commands</strong></p>
<pre><code class="language-bash">unzip awscliv2.zip
ls -lrt
sudo ./aws/install
aws --version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image325.webp" style="width:4.6875in;height:1.82292in" alt="{E2AA3134-4696-42B5-A165-FB7688D8CC64}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image326.webp" style="width:6.58333in;height:3.86458in" alt="{73DAB820-D582-4901-B662-62BC5D622D98}" /></p></td>
</tr>
</tbody>
</table>

### Configure AWS Account 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>🡪For the first time to access AWS via CLI, we need to execute below command.</p>
<p>🡪This is the recommended way by AWS, while we can still use the Access Key / Token etc.</p>
<pre><code class="nohighlight language-bash">aws configure sso
admin@Ubuntu:~/Downloads$ <strong>aws configure sso</strong>
SSO session name (Recommended): <strong>poc-coco-aws</strong>
SSO start URL [None]: <strong>https://d-93671b9731.awsapps.com/start/#</strong>
SSO region [None]: <strong>eu-west-1</strong>
SSO registration scopes [sso:account:access]: <strong>&lt;HIT ENTER&gt;</strong></code></pre>
<p>Attempting to open your default browser. If the browser does not open, open the following URL.</p>
<p>If you are unable to open the URL on this device, run this command again with the '--use-device-code' option.</p>
<p>https://oidc.eu-west-1.amazonaws.com/authorize?response_type=code&amp;client_id=jjCm25YGZL_YR869Fpje5WV1LXdlc3QtMQ&amp;redirect_uri=http%3A%2F%2F127.0.0.1%3A36441%2Foauth%2Fcallback&amp;state=f9a267a4-f0aa-4153-9ecd-b3259bdd12d6&amp;code_challenge_method=S256&amp;scopes=sso%3Aaccount%3Aaccess&amp;code_challenge=u-gbCYv1SLzlwy3WLjpZrqQy0-NyHyoL44-c7y9zdoE</p>
<p>The only AWS account available to you is: 908774804544</p>
<p>Using the account ID 908774804544</p>
<p>There are 2 roles available to you.</p>
<p>Using the role name "<strong>AWSAdministratorAccess</strong>"</p>
<p>Default client Region [None]: <strong>eu-west-1</strong></p>
<p>CLI default output format (json if not specified) [None]:</p>
<p>Profile name [AWSAdministratorAccess-908774804544]: <strong>sri-devops-coco-aws</strong></p>
<p>To use this profile, specify the profile name using --profile, as shown:</p>
<p><em>aws sts get-caller-identity --profile sri-devops-coco-aws</em></p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads$</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image327.webp" style="width:7.52708in;height:2.75069in" alt="{CA4D6113-210A-4143-8AAC-19B8F74BCA25}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">aws sts get-caller-identity --profile sri-devops-coco-aws</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image328.webp" style="width:7.67847in;height:1.29653in" alt="{9D9F367C-87DB-4BFA-8CC2-101510DF2226}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Login to AWS 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">aws sso login --profile sri-devops-coco-aws</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image329.webp" style="width:7.675in;height:2.41319in" alt="{C3D6346A-6841-4C8B-824A-3E2A51C5965C}" /></p></td>
</tr>
<tr>
<td><p>→Once we do the sso login we will be redirected to browser. If the session exists, it will be successful else it will prompt for fresh login</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image330.webp" style="width:7.68264in;height:1.24861in" alt="{2B87E803-9ABE-45CA-AEF9-DBF077DF904F}" /></p></td>
</tr>
</tbody>
</table>

### Some basic Commands

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">aws sso-admin list-instances --profile sri-devops-coco-aws
aws ec2 describe-instances --profile sri-devops-coco-aws</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image331.webp" style="width:7.21875in;height:3.14583in" alt="{F3462BA0-DAD9-4D36-A5D8-56CC77619BF7}" /></p></td>
</tr>
</tbody>
</table>

### List the profiles - Create second profile with name ‘default’ 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here we are creating a second profile by name ‘default’ as we want to test ‘coco-poc’ where all the scripts were using ‘default’ profile.</p>
<p>→Just to avoid errors, we will copy the previously created profile ‘sri-devops-coco-aws’ into ‘default’ using ‘awk’ command.</p>
<p>→Then we will use the default profile for scripts.</p></td>
</tr>
<tr>
<td><pre><code class="language-bash">aws configure list-profiles
cp ~/.aws/config ~/.aws/config.bak
cp ~/.aws/credentials ~/.aws/credentials.bak 2&gt;/dev/null
awk '/\[profile sri-devops-coco-aws\]/ {print "[default]"; f=1; next} /^\[/ &amp;&amp; f {f=0} f' ~/.aws/config &gt;&gt; ~/.aws/config</code></pre>
<p>→Below Cat will result in failure which is okay as we are using ‘sso’ driven login and not the ‘credentials’.</p>
<pre><code class="language-bash">cat ~/.aws/credentials
aws configure list-profiles
aws sso login --profile default
aws sts get-caller-identity --profile default</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image332.webp" style="width:4.90625in;height:0.71875in" alt="{B83517D2-3022-4336-BBC9-3FB864EF97D1}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image333.webp" style="width:7.16667in;height:2.59375in" alt="{A7184CE4-7D51-42AA-9E28-938D8C0723AF}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image334.webp" style="width:7.52292in;height:2.75208in" alt="{01690D02-0EB7-4FB0-B2C1-977706EE47C1}" /></p></td>
</tr>
</tbody>
</table>

## Create EKS cluster 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Given I already have certain scripts to create EKS cluster on my host, copying them to downloads of ubuntu.</p>
<p>→I already have bound the host folder under media.</p>
<pre><code class="language-bash">cd /media/sf_ws/nerdy-tech-docs/all-tech-docs/cocopoc/coco-scripts-bkup2
ls -lrt
cp /media/sf_ws/nerdy-tech-docs/all-tech-docs/cocopoc/coco-scripts-bkup2/2-aws-scripts-eks-normal.zip ~/Downloads/</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image335.webp" style="width:7.52292in;height:1.71458in" alt="{1DDCB1C4-3D02-48BC-86DE-0A53D0678C75}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to downloads and unzip the scripts zip</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image336.webp" style="width:7.54167in;height:6.43194in" alt="{76E97CA3-2C45-4197-A3D7-EC6172B6D3CC}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image337.webp" style="width:7.11458in;height:1.47917in" alt="{FC60283B-257C-456F-B5E5-281EA3E1279C}" /></p></td>
</tr>
<tr>
<td><p>→Once extracted we can delete it.</p></td>
</tr>
</tbody>
</table>

### CREATE SIMPLE CLUSTER EKS 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a simple EKS cluster</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image338.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
<tr>
<td><p>→Once created we can see the context and nodes as below.</p>
<p>→Note that this context was ‘explicitly added’ using below snippet of a script.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image339.webp" style="width:4.3875in;height:2.63403in" alt="{04868CEB-A008-4958-8F3D-3C33C20EC0ED}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image340.webp" style="width:7.67778in;height:0.81458in" alt="{23BE8860-6D11-48CB-A6DC-955706F245F4}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image341.webp" style="width:7.35417in;height:5.78125in" alt="{4E3A481D-FF1C-4FAA-950D-F19B91A8B3E8}" /></p></td>
</tr>
</tbody>
</table>

## KubeConfig - Overview with Multiple clusters. 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image342.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 23, 2026, 09_49_11 PM" /></p></td>
</tr>
<tr>
<td><p>→How does this config file comes into existence?</p>
<p>→ Note that by default this file does not exist.</p>
<p>→Below table shows for various cloud providers, the command that gets us the kubeconfig file available.</p>
<table style="width:98%;">
<colgroup>
<col style="width: 15%" />
<col style="width: 13%" />
<col style="width: 41%" />
<col style="width: 16%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Cloud</strong></th>
<th style="text-align: center;"><strong>Login / Configure</strong></th>
<th style="text-align: center;"><strong>Create / Merge kubeconfig</strong></th>
<th style="text-align: center;"><strong>Verify Context</strong></th>
<th style="text-align: center;"><strong>Access Cluster</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Amazon Web Services EKS</td>
<td style="text-align: left;">aws configure</td>
<td style="text-align: left;">aws eks update-kubeconfig --region &lt;region&gt; --name &lt;cluster&gt;</td>
<td rowspan="4" style="text-align: left;">kubectl config get-contexts</td>
<td rowspan="4" style="text-align: left;">kubectl get nodes</td>
</tr>
<tr>
<td style="text-align: left;">Microsoft AKS</td>
<td style="text-align: left;">az login</td>
<td style="text-align: left;">az aks get-credentials --resource-group &lt;rg&gt; --name &lt;cluster&gt;</td>
</tr>
<tr>
<td style="text-align: left;">IBM IKS</td>
<td style="text-align: left;">ibmcloud login</td>
<td style="text-align: left;">ibmcloud ks cluster config --cluster &lt;cluster-name-or-id&gt;</td>
</tr>
<tr>
<td style="text-align: left;">Google GKE</td>
<td style="text-align: left;">gcloud auth login</td>
<td style="text-align: left;">gcloud container clusters get-credentials &lt;cluster&gt; --region &lt;region&gt; --project &lt;project-id&gt;</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

### Location of Kube Config file

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">cd ~/.kube
ls -lrt
cat config</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image343.webp" style="width:7.52361in;height:4.91528in" alt="{6B826EAA-C25B-4DDF-8167-F023094C46EC}" /></p></td>
</tr>
</tbody>
</table>

### Post Creation of EKS and Adding it to local context. 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image341.webp" style="width:7.35417in;height:5.78125in" alt="{4E3A481D-FF1C-4FAA-950D-F19B91A8B3E8}" /></p></td>
</tr>
<tr>
<td><p>→Notice after adding additional cluster key items as below.</p>
<p>→Clusters</p>
<p>→Contexts</p>
<p>→Users</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image344.webp" style="width:7.51319in;height:8.92847in" /></p></td>
</tr>
</tbody>
</table>

### Custom Kubeconfig File

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can use a custom configuration for kubeconfig.</p>
<p>→The default ~/.kube/config is just the standard location.</p>
<p>→However, Kubernetes allows custom kubeconfig files because we may need to work with multiple clusters, users, or environments (dev/test/prod) without mixing them.</p>
<p>→Using --kubeconfig &lt;file&gt; lets us temporarily point kubectl to a completely different config (for example, a teammate’s cluster, a CI pipeline config, or an isolated prod config) without overwriting or merging into your default one.</p>
<p>→To demonstrate we are here copying the original config to a new file by name ‘config-tmp’</p>
<pre><code class="nohighlight language-bash">cd ~/.kube
ls -lrt
cp config config-tmp
ls -lrt
kubectl get nodes --kubeconfig <strong>config-tmp</strong></code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image345.webp" style="width:5.16667in;height:3.01042in" alt="{B2177220-DE49-4D63-957A-F4D1784AE4A5}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image346.webp" style="width:6.35417in;height:2.14583in" alt="{5FB52CBD-C738-4222-9833-3DF4A0F83AD6}" /></p></td>
</tr>
<tr>
<td><p>→Some additional inforation about tdx/non-tdx clusters of ibmcloud.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image347.webp" style="width:7.52083in;height:3.71875in" alt="{C972BA10-D3D0-42FD-9436-3F9D1E5BEBB5}" /></p></td>
</tr>
</tbody>
</table>

## Volumes

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→When a container is crashed or restarted its state is never saved, meaning any configuration it is supposed to have is destroyed upon its restart.</p>
<p>→Volumes come for help to retain the state whenever there is a restart of such containers.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image348.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 27, 2026, 06_26_00 PM" /></p></td>
</tr>
</tbody>
</table>

### Container with emptyDir 

|     |
|-----|
|     |

#### Using node disk

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image349.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 28, 2026, 06_22_09 AM" /></p></td>
</tr>
<tr>
<td><p>→First let us create a simple pod with ‘two’ containers without any volumes.</p>
<p>→This will be multi container pod.</p>
<pre><code class="nohighlight language-bash"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ nano simple-multi-containerpod.yaml</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</mark>
<mark>total 4</mark>
<mark>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod.yaml</mark>
<mark>pod/multi-container-pod-simple created</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                         READY   STATUS              RESTARTS       AGE</mark>
<mark>custom-pod                   1/1     Running             16 (38m ago)   20d</mark>
<mark>multi-container-pod-simple   0/2     ContainerCreating   0              6s</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                         READY   STATUS    RESTARTS       AGE</mark>
<mark>custom-pod                   1/1     Running   16 (38m ago)   20d</mark>
<mark>multi-container-pod-simple   2/2     Running   0              24s</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></code></pre>
<p>→Notice we have a pod with two containers running. Here is the manifest for that.</p>
<pre><code class="nohighlight language-yaml"><mark>apiVersion: v1</mark>
<mark>kind: Pod</mark>
<mark>metadata:</mark>
<mark>  name: multi-container-pod-simple</mark>
<mark>spec:</mark>
<mark> containers:</mark>
<mark> - name: busybox-container-1</mark>
<mark>   image: busybox</mark>
<mark>   command: ["sleep", "36000"]</mark>
<mark> - name: busybox-container-2</mark>
<mark>   image: busybox</mark>
<mark>   command: ["sleep", "36000"]</mark></code></pre></td>
</tr>
<tr>
<td><p>→Next we try to create a two container pod but with volumes in it.</p>
<p>→Create a yaml using below contents.</p>
<pre><code class="nohighlight language-yaml"><mark>apiVersion: v1</mark>
<mark>kind: Pod</mark>
<mark>metadata:</mark>
<mark>  name: multi-container-pod-with-shared-volume</mark>
<mark>spec:</mark>
<mark> volumes:</mark>
<mark> - name: nerdylabs-emptydir</mark>
<mark>   emptyDir: {}</mark>
<mark> containers:</mark>
<mark> - name: busybox-container-1</mark>
<mark>   image: busybox</mark>
<mark>   command: ["sleep", "36000"]</mark>
<mark>   volumeMounts:</mark>
<mark>   - name: nerdylabs-emptydir</mark>
<mark>     mountPath: /shared-folder</mark>
<mark> - name: busybox-container-2</mark>
<mark>   image: busybox</mark>
<mark>   command: ["sleep", "36000"]</mark>
<mark>   volumeMounts:</mark>
<mark>   - name: nerdylabs-emptydir</mark>
<mark>     mountPath: /shared-folder</mark></code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<pre><code class="nohighlight language-bash"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ nano simple-multi-containerpod-shared-volume.yaml</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod-shared-volume.yaml</mark>
<mark>pod/multi-container-pod-with-shared-volume created</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                                     READY   STATUS              RESTARTS       AGE</mark>
<mark>custom-pod                               1/1     Running             17 (25m ago)   20d</mark>
<mark>multi-container-pod-simple               2/2     Running             2 (25m ago)    22h</mark>
<mark>multi-container-pod-with-shared-volume   0/2     ContainerCreating   0              6s</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                                     READY   STATUS    RESTARTS       AGE</mark>
<mark>custom-pod                               1/1     Running   17 (26m ago)   20d</mark>
<mark>multi-container-pod-simple               2/2     Running   2 (26m ago)    22h</mark>
<mark>multi-container-pod-with-shared-volume   2/2     Running   0              29s</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></code></pre></td>
</tr>
<tr>
<td><p>→Let us describe it and see it</p>
<pre><code class="nohighlight language-plaintext"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl describe pod multi-container-pod-with-shared-volume</mark>
<mark>Name:             multi-container-pod-with-shared-volume</mark>
<mark>Namespace:        integrations</mark>
<mark>Priority:         0</mark>
<mark>Service Account:  default</mark>
<mark>Node:             intg-ks-worker/172.18.0.2</mark>
<mark>Start Time:       Mon, 29 Jun 2026 04:34:07 +0000</mark>
<mark>Labels:           &lt;none&gt;</mark>
<mark>Annotations:      &lt;none&gt;</mark>
<mark>Status:           Running</mark>
<mark>IP:               10.244.1.2</mark>
<mark>IPs:</mark>
<mark>  IP:  10.244.1.2</mark>
<mark>Containers:</mark>
<mark>  busybox-container-1:</mark>
<mark>    Container ID:  containerd://5b0439f8e28ae2ee8323845e13b1d37756482d41ea6c8b27f0eecc7c0b59e0b8</mark>
<mark>    Image:         busybox</mark>
<mark>    Image ID:      docker.io/library/busybox@sha256:fd8d9aa63ba2f0982b5304e1ee8d3b90a210bc1ffb5314d980eb6962f1a9715d</mark>
<mark>    Port:          &lt;none&gt;</mark>
<mark>    Host Port:     &lt;none&gt;</mark>
<mark>    Command:</mark>
<mark>      sleep</mark>
<mark>      36000</mark>
<mark>    State:          Running</mark>
<mark>      Started:      Mon, 29 Jun 2026 04:34:12 +0000</mark>
<mark>    Ready:          True</mark>
<mark>    Restart Count:  0</mark>
<mark>    Environment:    &lt;none&gt;</mark>
<mark>    Mounts:</mark>
<mark>      /shared-folder from nerdylabs-emptydir (rw)</mark>
<mark>      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-drvpp (ro)</mark>
<mark>  busybox-container-2:</mark>
<mark>    Container ID:  containerd://c8ef91fc4007bada1b5f08a388c97c64cdd2b32824fc372cf7ae21d1c0fe61a8</mark>
<mark>    Image:         busybox</mark>
<mark>    Image ID:      docker.io/library/busybox@sha256:fd8d9aa63ba2f0982b5304e1ee8d3b90a210bc1ffb5314d980eb6962f1a9715d</mark>
<mark>    Port:          &lt;none&gt;</mark>
<mark>    Host Port:     &lt;none&gt;</mark>
<mark>    Command:</mark>
<mark>      sleep</mark>
<mark>      36000</mark>
<mark>    State:          Running</mark>
<mark>      Started:      Mon, 29 Jun 2026 04:34:14 +0000</mark>
<mark>    Ready:          True</mark>
<mark>    Restart Count:  0</mark>
<mark>    Environment:    &lt;none&gt;</mark>
<mark>    Mounts:</mark>
<mark>      /shared-folder from nerdylabs-emptydir (rw)</mark>
<mark>      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-drvpp (ro)</mark>
<mark>Conditions:</mark>
<mark>  Type                        Status</mark>
<mark>  PodReadyToStartContainers   True</mark>
<mark>  Initialized                 True</mark>
<mark>  Ready                       True</mark>
<mark>  ContainersReady             True</mark>
<mark>  PodScheduled                True</mark>
<mark>Volumes:</mark>
<mark>  nerdylabs-emptydir:</mark>
<mark>    Type:       EmptyDir (a temporary directory that shares a pod's lifetime)</mark>
<mark>    Medium:    </mark>
<mark>    SizeLimit:  &lt;unset&gt;</mark>
<mark>  kube-api-access-drvpp:</mark>
<mark>    Type:                    Projected (a volume that contains injected data from multiple sources)</mark>
<mark>    TokenExpirationSeconds:  3607</mark>
<mark>    ConfigMapName:           kube-root-ca.crt</mark>
<mark>    Optional:                false</mark>
<mark>    DownwardAPI:             true</mark>
<mark>QoS Class:                   BestEffort</mark>
<mark>Node-Selectors:              &lt;none&gt;</mark>
<mark>Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s</mark>
<mark>                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s</mark>
<mark>Events:</mark>
<mark>  Type    Reason     Age    From               Message</mark>
<mark>  ----    ------     ----   ----               -------</mark>
<mark>  Normal  Scheduled  3m4s   default-scheduler  Successfully assigned integrations/multi-container-pod-with-shared-volume to intg-ks-worker</mark>
<mark>  Normal  Pulling    3m3s   kubelet            spec.containers{busybox-container-1}: Pulling image "busybox"</mark>
<mark>  Normal  Pulled     2m59s  kubelet            spec.containers{busybox-container-1}: Successfully pulled image "busybox" in 4.48s (4.48s including waiting)</mark>
<mark>  Normal  Created    2m59s  kubelet            spec.containers{busybox-container-1}: Created container busybox-container-1</mark>
<mark>  Normal  Started    2m59s  kubelet            spec.containers{busybox-container-1}: Started container busybox-container-1</mark>
<mark>  Normal  Pulling    2m59s  kubelet            spec.containers{busybox-container-2}: Pulling image "busybox"</mark>
<mark>  Normal  Pulled     2m57s  kubelet            spec.containers{busybox-container-2}: Successfully pulled image "busybox" in 1.237s (1.237s including waiting)</mark>
<mark>  Normal  Created    2m57s  kubelet            spec.containers{busybox-container-2}: Created container busybox-container-2</mark>
<mark>  Normal  Started    2m57s  kubelet            spec.containers{busybox-container-2}: Started container busybox-container-2</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></code></pre></td>
</tr>
<tr>
<td><p>→Now that we have created a pod with ‘two’ containers, let us get into first container and see the shared-volume and create simple file.</p>
<pre><code class="nohighlight language-plaintext"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ #Get into 'first container' of the pod</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume -c busybox-container-1 -- sh</mark>
<mark>/ #</mark>
<mark>/ #</mark>
<mark>/ #</mark>
<mark>/ # ls -lrt</mark>
<mark>total 52</mark>
<mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark>
<mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark>
<mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark>
<mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark>
<mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark>
<mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark>
<mark>drwxrwxrwx    2 root     root          4096 Jun 29 04:34 shared-folder</mark>
<mark>dr-xr-xr-x   13 root     root             0 Jun 29 04:34 sys</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 var</mark>
<mark>-rw-r--r--    1 root     root            37 Jun 29 04:34 product_uuid</mark>
<mark>-rw-r--r--    1 root     root             5 Jun 29 04:34 product_name</mark>
<mark>dr-xr-xr-x  347 root     root             0 Jun 29 04:34 proc</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 etc</mark>
<mark>drwxr-xr-x    5 root     root           360 Jun 29 04:34 dev</mark>
<mark>drwx------    1 root     root          4096 Jun 29 04:41 root</mark>
<mark>/ #</mark>
<mark>/ # cd shared-folder/</mark>
<mark>/shared-folder #</mark>
<mark>/shared-folder # touch tempfile.txt</mark>
<mark>/shared-folder #</mark>
<mark>/shared-folder # ls -lrt</mark>
<mark>total 0</mark>
<mark>-rw-r--r--    1 root     root             0 Jun 29 04:42 tempfile.txt</mark>
<mark>/shared-folder #</mark></code></pre>
<p><mark><br />
</mark></p></td>
</tr>
<tr>
<td><p>→Let us now see the same in another container. Notice below the volume is being shared by two containers.</p>
<pre><code class="nohighlight language-plaintext"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume -c busybox-container-2 -- sh</mark>
<mark>/ #</mark>
<mark>/ #</mark>
<mark>/ # ls -lrt</mark>
<mark>total 52</mark>
<mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark>
<mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark>
<mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark>
<mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark>
<mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark>
<mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark>
<mark>dr-xr-xr-x   13 root     root             0 Jun 29 04:34 sys</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 var</mark>
<mark>-rw-r--r--    1 root     root            37 Jun 29 04:34 product_uuid</mark>
<mark>-rw-r--r--    1 root     root             5 Jun 29 04:34 product_name</mark>
<mark>dr-xr-xr-x  350 root     root             0 Jun 29 04:34 proc</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 etc</mark>
<mark>drwxr-xr-x    5 root     root           360 Jun 29 04:34 dev</mark>
<mark>drwxrwxrwx    2 root     root          4096 Jun 29 04:42 shared-folder</mark>
<mark>drwx------    1 root     root          4096 Jun 29 04:44 root</mark>
<mark>/ # cd shared-folder/</mark>
<mark>/shared-folder #</mark>
<mark>/shared-folder # ls -lrt</mark>
<mark>total 0</mark>
<mark>-rw-r--r--    1 root     root             0 Jun 29 04:42 tempfile.txt</mark>
<mark>/shared-folder #</mark>
<mark>/shared-folder #</mark></code></pre></td>
</tr>
</tbody>
</table>

#### Using in memory

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here the key item to add is the medium</p>
<pre><code class="nohighlight language-plaintext"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; simple-multi-containerpod-in-memory.yaml &lt;&lt; 'EOF'</mark>
<mark>apiVersion: v1</mark>
<mark>kind: Pod</mark>
<mark>metadata:</mark>
<mark>  name: multi-container-pod-with-shared-volume-in-memory</mark>
<mark>  namespace: integrations</mark>
<mark>spec:</mark>
<mark>  volumes:</mark>
<mark>  - name: nerdylabs-emptydir</mark>
<mark>    emptyDir:</mark>
<mark>      medium: Memory</mark>
<mark>  containers:</mark>
<mark>  - name: busybox-container-1</mark>
<mark>    image: busybox</mark>
<mark>    command: ["sleep", "36000"]</mark>
<mark>    volumeMounts:</mark>
<mark>    - name: nerdylabs-emptydir</mark>
<mark>      mountPath: /shared-folder</mark>
<mark>  - name: busybox-container-2</mark>
<mark>    image: busybox</mark>
<mark>    command: ["sleep", "36000"]</mark>
<mark>    volumeMounts:</mark>
<mark>    - name: nerdylabs-emptydir</mark>
<mark>      mountPath: /shared-folder</mark>
<mark>EOF</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod-in-memory.yaml</mark>
<mark>pod/multi-container-pod-with-shared-volume-in-memory created</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                                               READY   STATUS    RESTARTS       AGE</mark>
<mark>custom-pod                                         1/1     Running   17 (47m ago)   21d</mark>
<mark>multi-container-pod-simple                         2/2     Running   2 (47m ago)    23h</mark>
<mark>multi-container-pod-with-shared-volume             2/2     Running   0              21m</mark>
<mark>multi-container-pod-with-shared-volume-in-memory   2/2     Running   0              10s</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></code></pre></td>
</tr>
<tr>
<td><p>→Let us see what happens inside the container.</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume-in-memory -c busybox-container-1 -- sh
/ #
/ #
/ #
/ # ls -lrt
total 48
drwxr-xr-x    4 root     root          4096 May 13 02:21 usr
drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp
lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib
drwxr-xr-x    2 root     root          4096 May 13 02:21 lib
drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home
drwxr-xr-x    2 root     root         12288 May 13 02:21 bin
dr-xr-xr-x   13 root     root             0 Jun 29 04:55 sys
drwxrwxrwt    2 root     root            40 Jun 29 04:55 shared-folder
drwxr-xr-x    1 root     root          4096 Jun 29 04:55 var
-rw-r--r--    1 root     root            37 Jun 29 04:55 product_uuid
-rw-r--r--    1 root     root             5 Jun 29 04:55 product_name
dr-xr-xr-x  352 root     root             0 Jun 29 04:55 proc
drwxr-xr-x    1 root     root          4096 Jun 29 04:55 etc
drwxr-xr-x    5 root     root           360 Jun 29 04:55 dev
drwx------    1 root     root          4096 Jun 29 04:57 root
/ # cd shared-folder/
/shared-folder #</code></pre></td>
</tr>
<tr>
<td><p>→Let us get into container and see the folder and also some cmds to see if it is memory driven</p>
<pre><code class="nohighlight language-plaintext"><mark>/shared-folder #</mark>
<mark>/shared-folder # cat /proc/mounts | grep shared-folder</mark>
<mark>tmpfs /shared-folder tmpfs rw,relatime,size=17805056k,inode64 0 0</mark>
<mark>/shared-folder #</mark>
<mark>/shared-folder # df -h | grep shared-folder</mark>
<mark>tmpfs                    17.0G         0     17.0G   0% /shared-folder</mark>
<mark>/shared-folder #</mark></code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>tmpfs confirms it's 100% in-memory.</p>
<p>The size=17805056k (~17GB) might look large but that's just the cap — it's not actually consuming 17GB of RAM right now. Notice df -h shows 0 used. It only consumes RAM as you actually write files into /shared-folder.</p>
<p>That 17GB cap is Kubernetes defaulting to half the node's total RAM when you don't set a sizeLimit. If you want to restrict it, add sizeLimit to your YAML:</p>
<pre><code class="language-yaml">yaml  volumes:
  - name: nerdylabs-emptydir
    emptyDir:
      medium: Memory
      sizeLimit: 256Mi   # cap it to 256MB</code></pre>
<p>So in summary:</p>
<p>✅ tmpfs = in-memory confirmed</p>
<p>✅ 0 used = no RAM consumed yet</p>
<p>⚠️ 17GB cap = fine, but consider setting sizeLimit in production to avoid a runaway process eating your node's RAM</p></td>
</tr>
</tbody>
</table>

### Container with hostpath 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image350.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 05_27_33 AM" /></p></td>
</tr>
<tr>
<td><p>→Create a simple yaml as below.</p>
<p>→Note that we are now using a path from host where we would like to store the data.</p>
<p>→<mark>When the pod dies data still remains. Important to note.</mark></p>
<pre><code class="language-yaml">cat &gt; simple-single-containerpod-hostpath.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: hostpath-demo-pod
spec:
  containers:
  - name: test-container
    image: busybox
    command: ["sh", "-c", "sleep 3600"]
    volumeMounts:
    - name: host-volume
      mountPath: /worker-node-data
  volumes:
  - name: host-volume
    hostPath:
      path: /var/demo-data
      type: DirectoryOrCreate
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml and exec into the host path. Highlighted is the path of ‘host’.</p>
<pre><code class="nohighlight language-plaintext"><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-single-containerpod-hostpath.yaml</mark>
<mark>pod/hostpath-demo-pod created</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark>
<mark>NAME                                               READY   STATUS    RESTARTS       AGE</mark>
<mark>custom-pod                                         1/1     Running   18 (30m ago)   21d</mark>
<mark>hostpath-demo-pod                                  1/1     Running   0              4s</mark>
<mark>multi-container-pod-simple                         2/2     Running   4 (30m ago)    46h</mark>
<mark>multi-container-pod-with-shared-volume             2/2     Running   2 (30m ago)    24h</mark>
<mark>multi-container-pod-with-shared-volume-in-memory   2/2     Running   2 (30m ago)    23h</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark>
<mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it hostpath-demo-pod -- sh</mark>
<mark>/ #</mark>
<mark>/ # ls -lrt</mark>
<mark>total 52</mark>
<mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark>
<mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark>
<mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark>
<mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark>
<mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark>
<mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark>
<mark>drwxr-xr-x    2 root     root          4096 Jun 30 04:39 worker-node-data</mark>
<mark>dr-xr-xr-x   13 root     root             0 Jun 30 04:39 sys</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 30 04:39 var</mark>
<mark>-rw-r--r--    1 root     root            37 Jun 30 04:39 product_uuid</mark>
<mark>-rw-r--r--    1 root     root             5 Jun 30 04:39 product_name</mark>
<mark>dr-xr-xr-x  356 root     root             0 Jun 30 04:39 proc</mark>
<mark>drwxr-xr-x    1 root     root          4096 Jun 30 04:39 etc</mark>
<mark>drwxr-xr-x    5 root     root           360 Jun 30 04:39 dev</mark>
<mark>drwx------    1 root     root          4096 Jun 30 04:45 root</mark>
<mark>/ #</mark>
<mark>/ #</mark></code></pre></td>
</tr>
</tbody>
</table>

###  Persistence volume (PV → PVC → POD)

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image351.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 06_01_35 AM" /> |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image352.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 06_07_03 AM" /> |
| →As part of the development usual processes, the first step is to create PVs followed by PVCs that will be referenced by PODs. |

####  PV & PVCs binding Conditions

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→What happens with PV and PVcs</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image353.webp" style="width:7.52153in;height:3.49722in" alt="{C6E08770-C36C-4523-ADB8-AB13EF8437FA}" /></p></td>
</tr>
</tbody>
</table>

####  Create PVs

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><p>→To understand better create ‘two’ PVs</p>
<pre><code class="language-yaml">cat &lt;&lt;EOF &gt; pv1.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: manual-pv-250mb
spec:
  storageClassName: manual
  capacity:
    storage: 250Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/data/250mb
EOF</code></pre></td>
<td style="text-align: left;"><p>cat &lt;&lt;EOF &gt; pv2.yaml</p>
<pre><code class="language-yaml">apiVersion: v1
kind: PersistentVolume
metadata:
  name: manual-pv-500mb
spec:
  storageClassName: manual
  capacity:
    storage: 500Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: /mnt/data/500mb
EOF</code></pre></td>
</tr>
<tr>
<td colspan="2"><p>→Validate creation</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt
total 24
-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml
-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml
-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml
-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
No resources found
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td colspan="2"><p>→Apply the yamls and validate creation. Notice the status, where both are available.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pv1.yaml
persistentvolume/manual-pv-250mb created
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pv2.yaml
persistentvolume/manual-pv-500mb created
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
manual-pv-250mb   250Mi      RWO            Retain           <mark>Available          </mark> manual         &lt;unset&gt;                          10s
manual-pv-500mb   500Mi      RWO            Retain           Available           manual         &lt;unset&gt;                          4s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

####  Create PVCs (without explicit PV reference)

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below we create a PVC without any explicit reference to PV that we previously created.</p>
<p>→This will force kubernetes to match a nearest ‘available’ PV and then bounds.</p>
<p>→We are cliaming just 200Mi (less than one of the PVs we created previously)</p>
<pre><code class="nohighlight language-yaml">cat &lt;&lt;EOF &gt; pvc1.yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: manual-pvc-200mb
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: <mark>200Mi</mark>
  storageClassName: manual
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Apply and check PV status.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt
total 28
-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml
-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml
-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml
-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml
-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pvc1.yaml
persistentvolumeclaim/manual-pvc-200mb created
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM                           STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
manual-pv-250mb   250Mi      RWO            Retain           <mark>Bound      </mark> integrations/manual-pvc-200mb   manual         &lt;unset&gt;                          19m
manual-pv-500mb   500Mi      RWO            Retain           Available                                   manual         &lt;unset&gt;                          19m
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME               STATUS   VOLUME            CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
manual-pvc-200mb   Bound    manual-pv-250mb   250Mi      RWO            manual         &lt;unset&gt;                 4m2s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→If you have noticed one PV is automatically bound.</p></td>
</tr>
</tbody>
</table>

####  Create POD

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Now that we have PV &amp; PVC, we create the POD</p>
<pre><code class="language-yaml"> cat &lt;&lt;EOF &gt; pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: test-pod
spec:
  containers:
    - name: app
      image: busybox
      command: ["sleep", "3600"]
      volumeMounts:
        - mountPath: "/data"
          name: mydata
  volumes:
    - name: mydata
      persistentVolumeClaim:
        claimName: manual-pvc-200mb
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt
total 32
-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml
-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml
-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml
-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml
-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml
-rw-rw-r-- 1 admin admin 309 Jul  1 05:03 pod.yaml
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pod.yaml
pod/test-pod created
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM                           STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
manual-pv-250mb   250Mi      RWO            Retain           Bound       integrations/manual-pvc-200mb   manual         &lt;unset&gt;                          27m
manual-pv-500mb   500Mi      RWO            Retain           Available                                   manual         &lt;unset&gt;                          27m
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME               STATUS   VOLUME            CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
manual-pvc-200mb   Bound    manual-pv-250mb   250Mi      RWO            manual         &lt;unset&gt;                 8m18s
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods
NAME                                               READY   STATUS    RESTARTS       AGE
custom-pod                                         1/1     Running   19 (71m ago)   23d
hostpath-demo-pod                                  1/1     Running   2 (11m ago)    24h
multi-container-pod-simple                         2/2     Running   6 (71m ago)    2d23h
multi-container-pod-with-shared-volume             2/2     Running   4 (71m ago)    2d
multi-container-pod-with-shared-volume-in-memory   2/2     Running   4 (71m ago)    2d
test-pod                                           1/1     Running   0              19s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p> </p></td>
</tr>
<tr>
<td><p>→What did we do above</p>
<p>In the pod.yaml, we created a Pod that uses the PVC (manual-pvc-200mb) as its storage source instead of directly using the PV. Then we mounted that storage inside the container at /data, so anything written there is stored persistently on the bound PV.</p></td>
</tr>
</tbody>
</table>

####  Cleanup

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>kubectl delete -f pod.yaml</p>
<pre><code class="language-bash">kubectl delete -f pvc1.yaml
kubectl delete -f pv1.yaml
kubectl delete -f pv2.yaml</code></pre></td>
</tr>
</tbody>
</table>

####  PV/PVC Provisioning (Static / Dynamic)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note: A PVC can stay in Pending (unbound) state if Kubernetes cannot find or create a matching PV.</p>
<p>PVC asks:</p>
<p>"I need 10Gi, RWO, storageClass=fast"</p>
<p>Kubernetes checks:</p>
<p>→ Existing PVs?</p>
<p>→ Dynamic provisioning possible?</p>
<p>If NO match:</p>
<pre><code class="language-plaintext">PVC = Pending</code></pre></td>
</tr>
<tr>
<td><p>→Storage Class: A StorageClass is the Kubernetes object that defines how storage should be created when a PVC asks for it. It mainly points to a provisioner (driver/plugin) and sets rules like reclaim policy, binding mode, expansion, etc.</p>
<p>→First let us see what all storage classes exists.</p>
<pre><code class="language-bash">dmin@Ubuntu:~$ kubectl get storageclass
NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d</code></pre>
<p>→Download the new local storage class. (Brief description in next box)</p>
<pre><code class="language-plaintext">admin@Ubuntu:~$ cd Downloads/k8basics/volumes/
admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt
total 32
-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml
-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml
-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml
-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml
-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml
-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml
-rw-rw-r-- 1 admin admin 309 Jul  1 05:03 pod.yaml</code></pre>
<p>→Download the new local storage class. (Using github url)</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ curl -O https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.31/deploy/local-path-storage.yaml
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  3824  100  3824    0     0  17398      0 --:--:-- --:--:-- --:--:-- 17461
admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt
total 36
-rw-rw-r-- 1 admin admin  246 Jun 28 05:40 simple-multi-containerpod.yaml
-rw-rw-r-- 1 admin admin  469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml
-rw-rw-r-- 1 admin admin  537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml
-rw-rw-r-- 1 admin admin  347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml
-rw-rw-r-- 1 admin admin  209 Jul  1 04:32 pv1.yaml
-rw-rw-r-- 1 admin admin  209 Jul  1 04:32 pv2.yaml
-rw-rw-r-- 1 admin admin  194 Jul  1 04:55 pvc1.yaml
-rw-rw-r-- 1 admin admin  309 Jul  1 05:03 pod.yaml
-rw-rw-r-- 1 admin admin 3824 Jul  4 09:43 <mark>local-path-storage.yaml</mark></code></pre>
<p>→Check what all objects it is going to create. Highlighted for ready reference.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat local-path-storage.yaml
apiVersion: v1
kind: <mark>Namespace</mark>
metadata:
  name: local-path-storage
---
apiVersion: v1
kind: <mark>ServiceAccount</mark>
metadata:
  name: local-path-provisioner-service-account
  namespace: local-path-storage
---
apiVersion: rbac.authorization.k8s.io/v1
kind: <mark>Role</mark>
metadata:
  name: local-path-provisioner-role
  namespace: local-path-storage
rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "list", "watch", "create", "patch", "update", "delete"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: <mark>ClusterRole</mark>
metadata:
  name: local-path-provisioner-role
rules:
  - apiGroups: [""]
    resources: ["nodes", "persistentvolumeclaims", "configmaps", "pods", "pods/log"]
    verbs: ["get", "list", "watch"]
  - apiGroups: [""]
    resources: ["persistentvolumes"]
    verbs: ["get", "list", "watch", "create", "patch", "update", "delete"]
  - apiGroups: [""]
    resources: ["events"]
    verbs: ["create", "patch"]
  - apiGroups: ["storage.k8s.io"]
    resources: ["storageclasses"]
    verbs: ["get", "list", "watch"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: <mark>RoleBinding</mark>
metadata:
  name: local-path-provisioner-bind
  namespace: local-path-storage
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: Role
  name: local-path-provisioner-role
subjects:
  - kind: ServiceAccount
    name: local-path-provisioner-service-account
    namespace: local-path-storage
---
apiVersion: rbac.authorization.k8s.io/v1
kind: <mark>ClusterRoleBinding</mark>
metadata:
  name: local-path-provisioner-bind
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: local-path-provisioner-role
subjects:
  - kind: ServiceAccount
    name: local-path-provisioner-service-account
    namespace: local-path-storage
---
apiVersion: apps/v1
kind: <mark>Deployment</mark>
metadata:
  name: local-path-provisioner
  namespace: local-path-storage
spec:
  replicas: 1
  selector:
    matchLabels:
      app: local-path-provisioner
  template:
    metadata:
      labels:
        app: local-path-provisioner
    spec:
      serviceAccountName: local-path-provisioner-service-account
      containers:
        - name: local-path-provisioner
          image: rancher/local-path-provisioner:v0.0.31
          imagePullPolicy: IfNotPresent
          command:
            - local-path-provisioner
            - --debug
            - start
            - --config
            - /etc/config/config.json
          volumeMounts:
            - name: config-volume
              mountPath: /etc/config/
          env:
            - name: POD_NAMESPACE
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
            - name: CONFIG_MOUNT_PATH
              value: /etc/config/
      volumes:
        - name: config-volume
          configMap:
            name: local-path-config
---
apiVersion: storage.k8s.io/v1
kind: <mark>StorageClass</mark>
metadata:
  name: local-path
provisioner: rancher.io/local-path
volumeBindingMode: WaitForFirstConsumer
reclaimPolicy: Delete
---
kind: <mark>ConfigMap</mark>
apiVersion: v1
metadata:
  name: local-path-config
  namespace: local-path-storage
data:
  config.json: |-
    {
            "nodePathMap":[
            {
                    "node":"DEFAULT_PATH_FOR_NON_LISTED_NODES",
                    "paths":["/opt/local-path-provisioner"]
            }
            ]
    }
  setup: |-
    #!/bin/sh
    set -eu
    mkdir -m 0777 -p "$VOL_DIR"
  teardown: |-
    #!/bin/sh
    set -eu
    rm -rf "$VOL_DIR"
  helperPod.yaml: |-
    apiVersion: v1
    kind: Pod
    metadata:
      name: helper-pod
    spec:
      priorityClassName: system-node-critical
      tolerations:
        - key: node.kubernetes.io/disk-pressure
          operator: Exists
          effect: NoSchedule
      containers:
      - name: helper-pod
        image: busybox
        imagePullPolicy: IfNotPresent
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→What does the downloaded storage class do. Briefly as below.</p>
<p>Namespace + ServiceAccount → creates an isolated space and identity for the provisioner.</p>
<p>RBAC (Role/ClusterRole + Bindings) → gives it permission to watch PVCs, create/delete PVs, read nodes, and emit events.</p>
<p>Deployment (local-path-provisioner) → runs the controller that listens for PVCs requesting local-path.</p>
<p>StorageClass (local-path) → tells Kubernetes: use rancher.io/local-path provisioner for dynamic PV creation.</p>
<p>ConfigMap (local-path-config) → defines where data is physically stored:</p>
<pre><code class="language-plaintext">/opt/local-path-provisioner
on each node.</code></pre>
<p>setup script → creates the directory when a volume is provisioned.</p>
<p>teardown script → removes it when PVC/PV is deleted (reclaimPolicy: Delete).</p>
<pre><code class="language-plaintext">Net result:
PVC (storageClass=local-path)
        ↓
Provisioner creates PV
        ↓</code></pre>
<p>Directory created on node:</p>
<pre><code class="language-plaintext">/opt/local-path-provisioner/&lt;volume&gt;</code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-storage.yaml
namespace/local-path-storage unchanged
serviceaccount/local-path-provisioner-service-account unchanged
role.rbac.authorization.k8s.io/local-path-provisioner-role created
clusterrole.rbac.authorization.k8s.io/local-path-provisioner-role configured
rolebinding.rbac.authorization.k8s.io/local-path-provisioner-bind created
clusterrolebinding.rbac.authorization.k8s.io/local-path-provisioner-bind unchanged
deployment.apps/local-path-provisioner configured
storageclass.storage.k8s.io/local-path created
configmap/local-path-config configured
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the storage class.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get storageclass
NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
<mark>local-path           rancher.io/local-path  </mark> Delete          WaitForFirstConsumer   false                  8s
standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Next is to create a PVC</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-pvc.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: local-path-pvc
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: local-path
  resources:
    requests:
      storage: 256Mi
EOF</code></pre>
<p>→Apply the pvc.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-pvc.yaml
persistentvolumeclaim/local-path-pvc created</code></pre>
<p>→Check if PVC is created. Notice the status is still shown as pending.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME             STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
local-path-pvc   <mark>Pending</mark>                                      local-path     &lt;unset&gt;                 4s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check if PV is created. Notice at this stage NO PV exists.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
No resources found
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Create a pod that references this PVC created above and automatically we can see the status being changed to ‘Bound’ and also a PV getting provisioned.</p>
<pre><code class="language-yaml">cat &gt; local-path-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: local-path-test-pod
spec:
  containers:
  - name: volume-test
    image: nginx
    ports:
    - containerPort: 80
    volumeMounts:
    - name: local-storage
      mountPath: /data
  volumes:
  - name: local-storage
    persistentVolumeClaim:
      claimName: local-path-pvc
EOF</code></pre>
<p>→Apply the YAML</p>
<pre><code class="language-bash">dmin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-pod.yaml
pod/local-path-test-pod created</code></pre>
<p>→Check the PVC status and notice it is bound now after applying.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
local-path-pvc   <mark>Bound    </mark>pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 7m18s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Notice the PV is also created.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          12s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Notice the pod created.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod
NAME                                               READY   STATUS    RESTARTS         AGE
custom-pod                                         1/1     Running   21 (4h29m ago)   26d
hostpath-demo-pod                                  1/1     Running   10 (27m ago)     4d5h
<mark>local-path-test-pod</mark>                                1/1     Running   0                4m19s
multi-container-pod-simple                         2/2     Running   10 (4h29m ago)   6d4h
multi-container-pod-with-shared-volume             2/2     Running   8 (4h29m ago)    5d5h
multi-container-pod-with-shared-volume-in-memory   2/2     Running   8 (4h29m ago)    5d5h
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→The flow will be like this.</p>
<p>Pod created → PVC consumed → StorageClass triggered → PV dynamically created → Pod starts</p></td>
</tr>
<tr>
<td><p>→How was this provisioned? It is because we have a provisioner pod running that is constantly monitoring for changes and it creates.</p>
<p>→This pod is running in a namespace that got created.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get ns
NAME                 STATUS   AGE
default              Active   26d
integrations         Active   26d
intg-poc             Active   23d
kube-node-lease      Active   26d
kube-public          Active   26d
kube-system          Active   26d
<mark>local-path-storage</mark>   Active   26d
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods -n <mark>local-path-storage</mark>
NAME                                      READY   STATUS    RESTARTS   AGE
local-path-provisioner-6548cc785f-rb4hg   1/1     Running   0          18m
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

#### Storage Class - Reclaim Policy 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image354.webp" style="width:7.13333in;height:4.75556in" /></p></td>
</tr>
<tr>
<td><p>→Given we already have a pod created prviously, let us try to delete it and then followed by delete the PVC.</p>
<p>→Then we will observe if PV also gets deleted. Note the highlighted text below where the condition is ‘delete’</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc
NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
local-path           rancher.io/local-path   <mark>Delete          </mark>WaitForFirstConsumer   false                  6h1m
standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          5h48m
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
local-path-pvc   Bound    pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 5h56m
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods
NAME                                               READY   STATUS    RESTARTS         AGE
custom-pod                                         1/1     Running   21 (10h ago)     26d
hostpath-demo-pod                                  1/1     Running   16 (8m12s ago)   4d11h
local-path-test-pod                                1/1     Running   0                5h49m
multi-container-pod-simple                         2/2     Running   12 (14m ago)     6d10h
multi-container-pod-with-shared-volume             2/2     Running   10 (14m ago)     5d11h
multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (14m ago)     5d10h
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-pod.yaml
pod "local-path-test-pod" deleted from integrations namespace
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE
local-path-pvc   Bound    pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 5h56m
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          5h49m
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→now let us delete the pvc and check the pv.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-pvc.yaml
persistentvolumeclaim "local-path-pvc" deleted from integrations namespace
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</code></pre>
<p>No resources found in integrations namespace.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get  pv
No resources found
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→In order to retain we need to have a storage class that has policy ‘retain’.</p>
<p>→Two important values here are ‘Retain’ &amp; ‘WaitForFirstConsumer’</p>
<p>→Until a pod starts referencing it the PV does not get created - Important to note.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-sc.yaml &lt;&lt; 'EOF'
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: local-path-retain
provisioner: rancher.io/local-path
reclaimPolicy: <mark>Retain</mark>
volumeBindingMode: <mark>WaitForFirstConsumer</mark>
allowVolumeExpansion: false
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Apply</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-sc.yaml
storageclass.storage.k8s.io/local-path-retain created
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the SC</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc
NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
local-path           rancher.io/local-path   Delete          WaitForFirstConsumer   false                  6h56m
<mark>local-path-retain</mark>    rancher.io/local-path   Retain          <mark>WaitForFirstConsumer  </mark> false                  9s
standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  27d</code></pre>
<p>→Create PVC that references the Storage Class.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-pvc.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: local-path-retain-pvc
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: <mark>local-path-retain</mark>
  resources:
    requests:
      storage: 256Mi
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Apply</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-pvc.yaml
persistentvolumeclaim/local-path-retain-pvc created
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the Status of PVC (Note it is pending)</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME                    STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE
local-path-retain-pvc   Pending                                      local-path-retain   &lt;unset&gt;                 5s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check PV. We will not have any PV as we have ‘waiting for consumer’ configuration.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
No resources found
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Create a pod yaml that references the PVC we created above.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: local-path-retain-pod
spec:
  containers:
  - name: app
    image: nginx
    volumeMounts:
    - name: app-storage
      mountPath: /data
  volumes:
  - name: app-storage
    persistentVolumeClaim:
      claimName: <mark>local-path-retain-pvc</mark>
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Create a pod</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-pod.yaml
pod/local-path-retain-pod created
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the PVC now and see the status.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME                    STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE
local-path-retain-pvc   <mark>Bound    </mark>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            local-path-retain   &lt;unset&gt;                 7m35s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the PV and we can see it is created.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Bound    integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          7s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Now that we have all created and bound / attached, let us try to delete one at at time in below sequence.</p>
<p>→Delete Pod → Delete PVC</p>
<p>→Delete pod</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-retain-pod.yaml
pod "local-path-retain-pod" deleted from integrations namespace</code></pre>
<p>→Check PVC &amp; PV (Both exists)</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME                    STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE
local-path-retain-pvc   Bound    pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            local-path-retain   &lt;unset&gt;                 12m
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           <mark>Bound    </mark>integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          4m40s</code></pre>
<p>→Delete PVC</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-retain-pvc.yaml
persistentvolumeclaim "local-path-retain-pvc" deleted from integrations namespace
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</code></pre>
<p>No resources found in integrations namespace.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the PV now, and we can see the state is ‘released’.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           <mark>Released  </mark> integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          5m6s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

### Access Modes 

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image355.webp" style="width:7.67986in;height:5.12014in" /> |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image356.webp" style="width:7.67986in;height:5.12014in" /> |

#### RWO

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here we will be testing the first mode.</p>
<p>→Check the pvc. Note nothing is there.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</code></pre>
<p>No resources found in integrations namespace.</p>
<p>→We will reuse the existing SC.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc
NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
local-path           rancher.io/local-path   Delete          WaitForFirstConsumer   false                  9h
local-path-retain    rancher.io/local-path   Retain          WaitForFirstConsumer   false                  130m
standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  27d
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Create a RWO PVC yaml</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pvc.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: rwo-pvc
spec:
  storageClassName: <mark>local-path-retain</mark>
  accessModes:
    - <mark>ReadWriteOnce</mark>
  resources:
    requests:
      storage: 1Gi
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Apply</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pvc.yaml
persistentvolumeclaim/rwo-pvc created
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the PVC and status is pending.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME      STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE
rwo-pvc   <mark>Pending</mark>                                      local-path-retain   &lt;unset&gt;                 3s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Check the PV.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Released   integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          122m</code></pre>
<p>→Create pod yaml and reference the pvc we created with mount path etc. .</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: rwo-test-pod
spec:
  containers:
  - name: app
    image: nginx
    volumeMounts:
    - name: rwo-storage
      mountPath: /app/data
  volumes:
  - name: rwo-storage
    persistentVolumeClaim:
      claimName: <mark>rwo-pvc</mark>
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre>
<p>→Apply the pod yaml and check the artifacts.</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pod.yaml
pod/rwo-test-pod created
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod
NAME                                               READY   STATUS    RESTARTS         AGE
custom-pod                                         1/1     Running   21 (13h ago)     26d
hostpath-demo-pod                                  1/1     Running   19 (12m ago)     4d14h
multi-container-pod-simple                         2/2     Running   12 (3h21m ago)   6d13h
multi-container-pod-with-shared-volume             2/2     Running   10 (3h21m ago)   5d14h
multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (3h21m ago)   5d14h
rwo-test-pod                                       1/1     Running   0                17s
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc
NAME      STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE
rwo-pvc   <mark>Bound    </mark>pvc-94ad8d90-1c40-4120-a55f-63e4463842f8   1Gi        RWO            local-path-retain   &lt;unset&gt;                 5m40s
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE
pvc-94ad8d90-1c40-4120-a55f-63e4463842f8   1Gi        RWO            Retain           <mark>Bound      </mark>integrations/rwo-pvc                 local-path-retain   &lt;unset&gt;                          4m3s
pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Released   integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          128m
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Now let us create another pod pointing to the same volume. Ensure we are having node selector label defined so that it goes to the same node.</p>
<p>→Get Nodes</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get nodes
NAME                    STATUS   ROLES           AGE   VERSION
intg-ks-control-plane   Ready    control-plane   27d   v1.29.2
intg-ks-worker          Ready    &lt;none&gt;          27d   v1.29.2
intg-ks-worker2         Ready    &lt;none&gt;          27d   v1.29.2</code></pre>
<p>→Get existing pod where we had a volume mount.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod rwo-test-pod -o wide
NAME           READY   STATUS    RESTARTS   AGE   IP           NODE             NOMINATED NODE   READINESS GATES
rwo-test-pod   1/1     Running   0          13m   10.244.1.8   intg-ks-worker   &lt;none&gt;           &lt;none&gt;</code></pre>
<p>→Create a new pod with explicit node selector and use the same pvc and volume mount.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pod-2.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: rwo-test-pod-2
spec:
  nodeSelector:
    kubernetes.io/hostname: intg-ks-worker
  containers:
  - name: app
    image: nginx
    volumeMounts:
    - name: rwo-storage
      mountPath: <mark>/app/data</mark>
  volumes:
  - name: rwo-storage
    persistentVolumeClaim:
      claimName: <mark>rwo-pvc</mark>
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pod-2.yaml
pod/rwo-test-pod-2 created
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods -o wide
NAME                                               READY   STATUS    RESTARTS         AGE     IP           NODE              NOMINATED NODE   READINESS GATES
custom-pod                                         1/1     Running   21 (13h ago)     26d     10.244.0.5   intg-ks-worker    &lt;none&gt;           &lt;none&gt;
hostpath-demo-pod                                  1/1     Running   19 (26m ago)     4d14h   10.244.0.4   intg-ks-worker    &lt;none&gt;           &lt;none&gt;
multi-container-pod-simple                         2/2     Running   12 (3h34m ago)   6d13h   10.244.2.2   intg-ks-worker2   &lt;none&gt;           &lt;none&gt;
multi-container-pod-with-shared-volume             2/2     Running   10 (3h34m ago)   5d14h   10.244.0.3   intg-ks-worker    &lt;none&gt;           &lt;none&gt;
multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (3h34m ago)   5d14h   10.244.2.4   intg-ks-worker2   &lt;none&gt;           &lt;none&gt;
rwo-test-pod                                       1/1     Running   0                14m     10.244.1.8   intg-ks-worker    &lt;none&gt;           &lt;none&gt;
rwo-test-pod-2                                     1/1     Running   0                11s     10.244.1.9   intg-ks-worker    &lt;none&gt;           &lt;none&gt;
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Access both the pods and see if we can see the volume. In first pod create a text file and see it is visible in pod2.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it rwo-test-pod -- sh
# #
#
# echo "Hello from Pod-1" &gt; /app/data/test.txt
# # ls -lrt /app/data
total 4
-rw-r--r-- 1 root root 17 Jul  4 19:22 test.txt
#
# exit
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it rwo-test-pod-2 -- sh
#
# ls -lrt /app/data
total 4
-rw-r--r-- 1 root root 17 Jul  4 19:22 test.txt
#
# cat /app/data/test.txt
Hello from Pod-1
#
# exit
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

### Config Maps - Store Nonsensitive Info

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image357.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Approaches to create the config maps.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image358.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
</tbody>
</table>

#### Create configmap with all data-types 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create a configmap that has all possible data types. Highlighted for reference.</p>
<pre><code class="nohighlight language-bash">cat &gt; sample-configmap-all-datatypes.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: ConfigMap
metadata:
  name: sample-config
  namespace: integrations
data:
  # ----------------------------------------------------
  # <mark>Simple Key-Value Pairs</mark>
  # ----------------------------------------------------
  APP_NAME: "Inventory-Service"
  APP_ENV: "development"
  LOG_LEVEL: "DEBUG"
  DB_HOST: "mysql.default.svc.cluster.local"
  DB_PORT: "3306"
  MAX_CONNECTIONS: "50"
  FEATURE_X_ENABLED: "true"
  # ----------------------------------------------------
  # <mark>Multi-line Text (Essay)</mark>
  # ----------------------------------------------------
  welcome-message.txt: |
    Welcome to the Inventory Service.
    This application demonstrates how ConfigMaps
    can store multi-line text files.
    Kubernetes stores every entry as a string,
    regardless of whether it represents JSON,
    YAML, XML, shell scripts or plain text.
    This content can later be mounted as a file
    inside a Pod.
  # ----------------------------------------------------
  # <mark>JSON</mark>
  # ----------------------------------------------------
  app-config.json: |
    {
      "application": "inventory",
      "version": "1.0.0",
      "logging": {
        "level": "INFO",
        "console": true
      },
      "database": {
        "host": "mysql",
        "port": 3306,
        "schema": "inventory"
      }
    }
  # ----------------------------------------------------
  # <mark>YAML</mark>
  # ----------------------------------------------------
  application.yaml: |
    server:
      port: 8080
    logging:
      level: INFO
    database:
      host: mysql
      port: 3306
  # ----------------------------------------------------
  # <mark>Java Properties</mark>
  # ----------------------------------------------------
  application.properties: |
    app.name=Inventory Service
    app.version=1.0
    server.port=8080
    logging.level=INFO
  # ----------------------------------------------------
  # <mark>Shell Script</mark>
  # ----------------------------------------------------
  startup.sh: |
    #!/bin/sh
    echo "Starting Application..."
    echo "Environment = $APP_ENV"
    exec sleep 3600
  # ----------------------------------------------------
  # <mark>SQL Script</mark>
  # ----------------------------------------------------
  init.sql: |
    CREATE TABLE employee (
      id INT PRIMARY KEY,
      name VARCHAR(100)
    );
    INSERT INTO employee VALUES
    (1,'Alice'),
    (2,'Bob');
  # ----------------------------------------------------
  # <mark>XML</mark>
  # ----------------------------------------------------
  settings.xml: |
    &lt;configuration&gt;
      &lt;logging&gt;INFO&lt;/logging&gt;
      &lt;database&gt;mysql&lt;/database&gt;
    &lt;/configuration&gt;
  # ----------------------------------------------------
  # <mark>INI File</mark>
  # ----------------------------------------------------
  app.ini: |
    [Application]
    Name=Inventory
    [Logging]
    Level=INFO
  # ----------------------------------------------------
  # <mark>NGINX Configuration</mark>
  # ----------------------------------------------------
  nginx.conf: |
    events {}
    http {
      server {
        listen 80;
        location / {
          return 200 "Hello from ConfigMap!";
        }
      }
    }
  # ----------------------------------------------------
  # <mark>Certificate (Example)</mark>
  # ----------------------------------------------------
  certificate.crt: |
    -----BEGIN CERTIFICATE-----
    MIIFakeCertificateForDemoOnly123456789
    -----END CERTIFICATE-----
EOF
admin@Ubuntu:~/Downloads/k8basics/configmaps$ ls -lrt
total 4
-rw-rw-r-- 1 admin admin 3412 Jul  5 05:52 sample-configmap-all-datatypes.yaml
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl apply -f sample-configmap-all-datatypes.yaml
configmap/sample-config created
admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl get cm
NAME               DATA   AGE
kube-root-ca.crt   1      27d
sample-config      17     5s
admin@Ubuntu:~/Downloads/k8basics/configmaps$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### SHORT CUTS CREATED FOR KUBECTL 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>nano ~/.bashrc</p>
<pre><code class="language-bash">#PASTE ALL THE CONTENTS AT THE BOTTOM OF THE FILE
# =====================================================
# Kubernetes Helper Functions
# =====================================================
k() {
    kubectl "$@"
}
pods() {
    kubectl get pods "$@"
}
deploy() {
    kubectl get deployments "$@"
}
svc() {
    kubectl get svc "$@"
}
nodes() {
    kubectl get nodes "$@"
}
ns() {
    kubectl get namespaces "$@"
}
pv() {
    kubectl get pv "$@"
}
pvc() {
    kubectl get pvc "$@"
}
sc() {
    kubectl get storageclass "$@"
}
cm() {
    kubectl get configmaps "$@"
}
secret() {
    kubectl get secrets "$@"
}
desc() {
    kubectl describe "$@"
}
logs() {
    kubectl logs "$@"
}
execit() {
    kubectl exec -it "$@"
}
#Save and exit:
Ctrl + O
Enter
Ctrl + X
source ~/.bashrc
##TESTING
pods
pods -A
pods -o wide
pv
pvc
sc
cm
nodes
deploy
svc</code></pre></td>
</tr>
</tbody>
</table>

#### Create pod that uses configmap 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image359.webp" style="width:5.39722in;height:3.59861in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have a configmap with all possible params, we will use a simple pod that has this particular config map injected.</p>
<p>→Note below in the pod yaml, we see ‘env’ being injected.</p>
<p>→Also note this is being injected in 4 diff ways.</p>
<pre><code class="language-yaml">cat &gt; pod-with-cm-injected.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: configmap-demo-pod
  namespace: integrations
spec:
  containers:
    - name: app
      image: busybox
      command: ["sleep", "3600"]
      # 1. Hardcoded Environment Variable
      env:
        - name: COURSE
          value: "Kubernetes ConfigMap Demo"
      # 2. Import a Single Key from ConfigMap
        - name: MY_DB_HOST
          valueFrom:
            configMapKeyRef:
              name: sample-config
              key: DB_HOST
      # 3. Import Entire ConfigMap as Environment Variables
      envFrom:
        - configMapRef:
            name: sample-config
      # 4. Mount Entire ConfigMap as Files
      volumeMounts:
        - name: config-volume
          mountPath: /etc/config
  volumes:
    - name: config-volume
      configMap:
        name: sample-config
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/configmaps$ ls -lrt
total 8
-rw-rw-r-- 1 admin admin 3417 Jul  5 06:04 sample-configmap-all-datatypes.yaml
-rw-rw-r-- 1 admin admin 1414 Jul  5 07:58 pod-with-cm-injected.yaml
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ k apply -f pod-with-cm-injected.yaml
pod/configmap-demo-pod created
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods
NAME                 READY   STATUS              RESTARTS   AGE
configmap-demo-pod   0/1     ContainerCreating   0          3s
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods
NAME                 READY   STATUS    RESTARTS   AGE
configmap-demo-pod   1/1     Running   0          24s
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$</code></pre></td>
</tr>
<tr>
<td><p>→Check the pod logs</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods
NAME                 READY   STATUS    RESTARTS   AGE
configmap-demo-pod   1/1     Running   0          4m32s
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ logs configmap-demo-pod
========== ALL ENV VARIABLES ==========
    return 200 "Hello from ConfigMap!";
    "console": true
    "host": "mysql",
    "level": "INFO",
    "port": 3306,
    "schema": "inventory"
    listen 80;
    location / {
    }
  "application": "inventory",
  "database": {
  "logging": {
  "version": "1.0.0",
  &lt;database&gt;mysql&lt;/database&gt;
  &lt;logging&gt;INFO&lt;/logging&gt;
  host: mysql
  id INT PRIMARY KEY,
  level: INFO
  name VARCHAR(100)
  port: 3306
  port: 8080
  server {
  }
  }
  },
(1,'Alice'),
(2,'Bob');
);
-----END CERTIFICATE-----
&lt;/configuration&gt;
APP_ENV=development
APP_NAME=Inventory-Service
DB_HOST=mysql.default.svc.cluster.local
DB_PORT=3306
FEATURE_X_ENABLED=true
HOME=/root
HOSTNAME=configmap-demo-pod
INSERT INTO employee VALUES
KUBERNETES_PORT=tcp://10.96.0.1:443
KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
KUBERNETES_PORT_443_TCP_PORT=443
KUBERNETES_PORT_443_TCP_PROTO=tcp
KUBERNETES_SERVICE_HOST=10.96.0.1
KUBERNETES_SERVICE_PORT=443
KUBERNETES_SERVICE_PORT_HTTPS=443
Kubernetes stores every entry as a string,
LOG_LEVEL=DEBUG
Level=INFO
MAX_CONNECTIONS=50
MIIFakeCertificateForDemoOnly123456789
MY_APP_NAME=Inventory-Service
MY_LOG_LEVEL=DEBUG
Name=Inventory
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
PWD=&lt;removed&gt;
SHLVL=1</code></pre>
<p>This application demonstrates how ConfigMaps</p>
<p>This content can later be mounted as a file</p>
<p>YAML, XML, shell scripts or plain text.</p>
<pre><code class="language-plaintext">[Logging]
app-config.json={
app.ini=[Application]
app.version=1.0
application.properties=app.name=Inventory Service
application.yaml=server:
can store multi-line text files.
certificate.crt=-----BEGIN CERTIFICATE-----
database:
echo "Environment = $APP_ENV"
echo "Starting Application..."
exec sleep 3600
http {
init.sql=CREATE TABLE employee (
inside a Pod.
logging.level=INFO
logging:
nginx.conf=events {}
regardless of whether it represents JSON,
server.port=8080
settings.xml=&lt;configuration&gt;
startup.sh=#!/bin/sh
welcome-message.txt=Welcome to the Inventory Service.
}
}
========== EXPLICIT ENV VARIABLES ==========
MY_APP_NAME=Inventory-Service
MY_LOG_LEVEL=DEBUG
========== CONFIGMAP MOUNT ==========
total 0
lrwxrwxrwx    1 root     root            14 Jul  5 07:58 APP_ENV -&gt; ..data/APP_ENV
lrwxrwxrwx    1 root     root            15 Jul  5 07:58 APP_NAME -&gt; ..data/APP_NAME
lrwxrwxrwx    1 root     root            14 Jul  5 07:58 DB_HOST -&gt; ..data/DB_HOST
lrwxrwxrwx    1 root     root            14 Jul  5 07:58 DB_PORT -&gt; ..data/DB_PORT
lrwxrwxrwx    1 root     root            24 Jul  5 07:58 FEATURE_X_ENABLED -&gt; ..data/FEATURE_X_ENABLED
lrwxrwxrwx    1 root     root            16 Jul  5 07:58 LOG_LEVEL -&gt; ..data/LOG_LEVEL
lrwxrwxrwx    1 root     root            22 Jul  5 07:58 MAX_CONNECTIONS -&gt; ..data/MAX_CONNECTIONS
lrwxrwxrwx    1 root     root            22 Jul  5 07:58 app-config.json -&gt; ..data/app-config.json
lrwxrwxrwx    1 root     root            14 Jul  5 07:58 app.ini -&gt; ..data/app.ini
lrwxrwxrwx    1 root     root            29 Jul  5 07:58 application.properties -&gt; ..data/application.properties
lrwxrwxrwx    1 root     root            23 Jul  5 07:58 application.yaml -&gt; ..data/application.yaml
lrwxrwxrwx    1 root     root            22 Jul  5 07:58 certificate.crt -&gt; ..data/certificate.crt
lrwxrwxrwx    1 root     root            15 Jul  5 07:58 init.sql -&gt; ..data/init.sql
lrwxrwxrwx    1 root     root            17 Jul  5 07:58 nginx.conf -&gt; ..data/nginx.conf
lrwxrwxrwx    1 root     root            19 Jul  5 07:58 settings.xml -&gt; ..data/settings.xml
lrwxrwxrwx    1 root     root            17 Jul  5 07:58 startup.sh -&gt; ..data/startup.sh
lrwxrwxrwx    1 root     root            26 Jul  5 07:58 welcome-message.txt -&gt; ..data/welcome-message.txt
========== JSON FILE ==========
{
  "application": "inventory",
  "version": "1.0.0",
  "logging": {
    "level": "INFO",
    "console": true
  },
  "database": {
    "host": "mysql",
    "port": 3306,
    "schema": "inventory"
  }
}
========== ESSAY FILE ==========</code></pre>
<p>Welcome to the Inventory Service.</p>
<p>This application demonstrates how ConfigMaps</p>
<p>can store multi-line text files.</p>
<p>Kubernetes stores every entry as a string,</p>
<p>regardless of whether it represents JSON,</p>
<p>YAML, XML, shell scripts or plain text.</p>
<p>This content can later be mounted as a file</p>
<pre><code class="language-bash">inside a Pod.
admin@Ubuntu:~/Downloads/k8basics/configmaps$</code></pre></td>
</tr>
<tr>
<td><p>→Now that we have a pod running let us also try an explicit access to it</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/configmaps$ k apply -f pod-with-cm-injected.yaml
pod/configmap-demo-pod created
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods
NAME                 READY   STATUS    RESTARTS   AGE
configmap-demo-pod   1/1     Running   0          8s
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ logs configmap-demo-pod
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl exec -it -n integrations configmap-demo-pod -- ls -l /etc/config
total 0
lrwxrwxrwx    1 root     root            14 Jul  5 09:53 APP_ENV -&gt; ..data/APP_ENV
lrwxrwxrwx    1 root     root            15 Jul  5 09:53 APP_NAME -&gt; ..data/APP_NAME
lrwxrwxrwx    1 root     root            14 Jul  5 09:53 DB_HOST -&gt; ..data/DB_HOST
lrwxrwxrwx    1 root     root            14 Jul  5 09:53 DB_PORT -&gt; ..data/DB_PORT
lrwxrwxrwx    1 root     root            24 Jul  5 09:53 FEATURE_X_ENABLED -&gt; ..data/FEATURE_X_ENABLED
lrwxrwxrwx    1 root     root            16 Jul  5 09:53 LOG_LEVEL -&gt; ..data/LOG_LEVEL
lrwxrwxrwx    1 root     root            22 Jul  5 09:53 MAX_CONNECTIONS -&gt; ..data/MAX_CONNECTIONS
lrwxrwxrwx    1 root     root            22 Jul  5 09:53 app-config.json -&gt; ..data/app-config.json
lrwxrwxrwx    1 root     root            14 Jul  5 09:53 app.ini -&gt; ..data/app.ini
lrwxrwxrwx    1 root     root            29 Jul  5 09:53 application.properties -&gt; ..data/application.properties
lrwxrwxrwx    1 root     root            23 Jul  5 09:53 application.yaml -&gt; ..data/application.yaml
lrwxrwxrwx    1 root     root            22 Jul  5 09:53 certificate.crt -&gt; ..data/certificate.crt
lrwxrwxrwx    1 root     root            15 Jul  5 09:53 init.sql -&gt; ..data/init.sql
lrwxrwxrwx    1 root     root            17 Jul  5 09:53 nginx.conf -&gt; ..data/nginx.conf
lrwxrwxrwx    1 root     root            19 Jul  5 09:53 settings.xml -&gt; ..data/settings.xml
lrwxrwxrwx    1 root     root            17 Jul  5 09:53 startup.sh -&gt; ..data/startup.sh
lrwxrwxrwx    1 root     root            26 Jul  5 09:53 welcome-message.txt -&gt; ..data/welcome-message.txt
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$ # Verify the hardcoded variable
kubectl exec -it -n integrations configmap-demo-pod -- printenv COURSE
Kubernetes ConfigMap Demo
admin@Ubuntu:~/Downloads/k8basics/configmaps$
admin@Ubuntu:~/Downloads/k8basics/configmaps$</code></pre></td>
</tr>
</tbody>
</table>

#### Comparision of PV / PVC vs Config map Volume

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image360.webp" style="width:7.52361in;height:2.78889in" alt="{04C12A7E-A960-45F8-A1B6-81C35FD2FCB3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: v1</p>
<pre><code class="nohighlight language-yaml">kind: Pod
metadata:
  name: pod-with-pvc
  namespace: integrations
spec:
  containers:
    - name: app
      image: busybox
      command: ["sh", "-c", "sleep 3600"]
      volumeMounts:
        - name: app-storage
          mountPath: /data
<mark>  volumes:</mark>
<mark>    - name: app-storage</mark>
<mark>      persistentVolumeClaim:</mark>
<mark>        claimName: rwo-pvc</mark></code></pre></td>
<td style="text-align: left;"><p>apiVersion: v1</p>
<pre><code class="nohighlight language-yaml">kind: Pod
metadata:
  name: pod-with-configmap
  namespace: integrations
spec:
  containers:
    - name: app
      image: busybox
      command: ["sh", "-c", "sleep 3600"]
      volumeMounts:
        - name: <mark>config-volume</mark>
          mountPath: /etc/config
<mark>  volumes:</mark>
<mark>    - name: config-volume</mark>
<mark>      configMap:</mark>
<mark>        name: sample-config</mark></code></pre></td>
</tr>
</tbody>
</table>

#### Immutable Config Map 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→What it implies is once the config map is defined and then applied; it cannot be changed.</p>
<pre><code class="nohighlight language-bash">cat &gt; immutable-configmap.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: ConfigMap
metadata:
  name: app-config-v1
  namespace: integrations
<mark>immutable: true</mark>
data:
  APP_NAME: "Inventory-Service"
  APP_ENV: "production"
  LOG_LEVEL: "INFO"
  DB_HOST: "mysql.default.svc.cluster.local"
EOF
kubectl apply -f immutable-configmap.yaml
kubectl get cm app-config-v1 -n integrations -o yaml
kubectl delete configmap app-config-v1 -n integrations
kubectl apply -f immutable-configmap.yaml</code></pre></td>
</tr>
</tbody>
</table>

## Insecure Pod

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→If we do not control the pod user access, there will be a possibility of container escape.</p>
<p>→As an eg, below we can see this pod can access host root.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/insecurepod$ cat &gt; insecure-hostpath-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: insecure-pod
  labels:
    purpose: security-lab
spec:
  containers:
  - name: insecure-container
    image: busybox
    command: ["sleep", "3600"]
    volumeMounts:
    - name: host-root
      mountPath: /host
  volumes:
  - name: host-root
    hostPath:
      <mark>path: /</mark>
      type: Directory
EOF
admin@Ubuntu:~/Downloads/k8basics/insecurepod$ ls -lrt
total 4
-rw-rw-r-- 1 admin admin 335 Jul  5 15:36 insecure-hostpath-pod.yaml
admin@Ubuntu:~/Downloads/k8basics/insecurepod$ k apply -f insecure-hostpath-pod.yaml
pod/insecure-pod created
admin@Ubuntu:~/Downloads/k8basics/insecurepod$</code></pre></td>
</tr>
<tr>
<td><p>→Now that we have deployed, let us see if we can reach the host.</p>
<p>→We will exec into the pod and try to access host details.</p>
<p>→Note that here the host is a docker container so we will get minimal details.</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/insecurepod$ kubectl exec -it insecure-pod -- sh
/ #
/ # hostname
insecure-pod
/ # cat /host/etc/hostname
intg-ks-worker2
/ # cat /host/etc/os-release
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
/ # ls /host/kind
README.txt    bin           kubeadm.conf  manifests     old-ipv4      old-ipv6      product_name  product_uuid  version
/ # cat /host/etc/resolv.conf
# Generated by Docker Engine.
# This file can be edited; Docker Engine will not make further changes once it
# has been modified.
nameserver 172.18.0.1
search home
options edns0 trust-ad ndots:0
# Based on host file: '/etc/resolv.conf' (internal resolver)
# ExtServers: [host(127.0.0.53)]
# Overrides: []
# Option ndots from: internal
/ # df -h /host
Filesystem                Size      Used Available Use% Mounted on
overlay                  64.8G     22.2G     39.3G  36% /host
/ #
/ # echo "test-from-pod" &gt; /host/tmp/prooffile.txt
/ #
/ # cat /host/tmp/prooffile.txt
test-from-pod
/ #
/ #
/ # id
uid=0(root) gid=0(root) groups=0(root),10(wheel)
/ #
/ #
/ #
/ # cd /host
/host #
/host # ls -lrt
total 56
drwxr-xr-x    2 root     root          4096 Dec  9  2023 home
drwxr-xr-x    2 root     root          4096 Dec  9  2023 boot
drwxr-xr-x    2 root     root          4096 Jan 30  2024 srv
lrwxrwxrwx    1 root     root             8 Jan 30  2024 sbin -&gt; usr/sbin
drwxr-xr-x    2 root     root          4096 Jan 30  2024 media
lrwxrwxrwx    1 root     root             9 Jan 30  2024 lib64 -&gt; usr/lib64
lrwxrwxrwx    1 root     root             7 Jan 30  2024 lib -&gt; usr/lib
lrwxrwxrwx    1 root     root             7 Jan 30  2024 bin -&gt; usr/bin
drwxr-xr-x    1 root     root          4096 Feb 12  2024 usr
drwx------    3 root     root          4096 Feb 12  2024 root
drwxr-xr-x   90 root     root          4096 Feb 12  2024 LICENSES
drwxr-xr-x    1 root     root          4096 Feb 14  2024 opt
drwxr-xr-x   11 root     root          4096 Jun  7 16:06 var
drwxr-xr-x    1 root     root          4096 Jul  1 05:03 mnt
dr-xr-xr-x   13 root     root             0 Jul  5 07:41 sys
dr-xr-xr-x  342 root     root             0 Jul  5 07:41 proc
drwxr-xr-x    1 root     root          4096 Jul  5 07:41 kind
drwxr-xr-x    1 root     root          4096 Jul  5 07:41 etc
drwxr-xr-x   16 root     root          4300 Jul  5 07:41 dev
drwxr-xr-x   11 root     root           240 Jul  5 07:41 run
drwxrwxrwt    2 root     root            60 Jul  5 15:42 tmp
/host #</code></pre></td>
</tr>
</tbody>
</table>

### Escape Pod upto Ubuntu Host.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Above pod is simple and can escape the container upto KIND cluster only.</p>
<p>→Below yaml pod can escape upto Ubuntu linux.</p>
<pre><code class="nohighlight language-plaintext">admin@Ubuntu:~/Downloads/k8basics/insecurepod$
admin@Ubuntu:~/Downloads/k8basics/insecurepod$ ls -lrt
total 4
-rw-rw-r-- 1 admin admin 335 Jul  5 15:36 insecure-hostpath-pod.yaml
admin@Ubuntu:~/Downloads/k8basics/insecurepod$
admin@Ubuntu:~/Downloads/k8basics/insecurepod$ cat &gt; privileged-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: privileged-pod
  labels:
    purpose: security-lab
spec:
  containers:
  - name: privileged-container
    image: busybox
    command: ["sleep", "3600"]
    securityContext:
      privileged: true
    volumeMounts:
    - name: host-root
      mountPath: /host
  volumes:
  - name: host-root
    hostPath:
      <mark>path: /</mark>
      type: Directory
EOF
kubectl apply -f privileged-pod.yaml
pod/privileged-pod created
admin@Ubuntu:~/Downloads/k8basics/insecurepod$ pods
NAME                 READY   STATUS    RESTARTS      AGE
configmap-demo-pod   1/1     Running   5 (57m ago)   5h57m
insecure-pod         1/1     Running   0             13m
privileged-pod       1/1     Running   0             4s
admin@Ubuntu:~/Downloads/k8basics/insecurepod$</code></pre></td>
</tr>
<tr>
<td><p>→Let us get into the pod and see what all we can do and what we cannot do. Given there are kernel level hardening, many of the activities are not possible to perform. Eg. Access ubuntu host file system.</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/insecurepod$ kubectl exec -it privileged-pod -- sh
/ #
/ # id
uid=0(root) gid=0(root) groups=0(root),10(wheel)
/ # cat /proc/self/status | grep Cap
CapInh: 0000000000000000
CapPrm: 000001ffffffffff
CapEff: 000001ffffffffff
CapBnd: 000001ffffffffff
CapAmb: 0000000000000000
/ #
&#32;
 #
/ # mount | grep cgroup
cgroup on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
cgroup on /host/sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
cgroup on /host/run/containerd/io.containerd.runtime.v2.task/k8s.io/59655acad5c62224d6cf2e3d162abb6bd760171422f84eb02c3dd45f9eea0f62/rootfs/sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
/ #
/ # ls /dev
autofs           loop13           null             tty11            tty36            tty60            ttyS27           vcs6
bsg              loop14           nvram            tty12            tty37            tty61            ttyS28           vcsa
btrfs-control    loop15           port             tty13            tty38            tty62            ttyS29           vcsa1
bus              loop16           ppp              tty14            tty39            tty63            ttyS3            vcsa2
core             loop17           psaux            tty15            tty4             tty7             ttyS30           vcsa3
cpu              loop18           ptmx             tty16            tty40            tty8             ttyS31           vcsa4
cpu_dma_latency  loop19           pts              tty17            tty41            tty9             ttyS4            vcsa5
cuse             loop2            random           tty18            tty42            ttyS0            ttyS5            vcsa6
dma_heap         loop20           rfkill           tty19            tty43            ttyS1            ttyS6            vcsu
dri              loop21           rtc0             tty2             tty44            ttyS10           ttyS7            vcsu1
ecryptfs         loop22           sda              tty20            tty45            ttyS11           ttyS8            vcsu2
fb0              loop23           sda1             tty21            tty46            ttyS12           ttyS9            vcsu3
fd               loop24           sda2             tty22            tty47            ttyS13           ttyprintk        vcsu4
full             loop25           sg0              tty23            tty48            ttyS14           udmabuf          vcsu5
fuse             loop26           sg1              tty24            tty49            ttyS15           uhid             vcsu6
hidraw0          loop3            shm              tty25            tty5             ttyS16           uinput           vfio
hpet             loop4            snapshot         tty26            tty50            ttyS17           urandom          vga_arbiter
hwrng            loop5            snd              tty27            tty51            ttyS18           userfaultfd      vhci
i2c-0            loop6            sr0              tty28            tty52            ttyS19           userio           vhost-net
input            loop7            stderr           tty29            tty53            ttyS2            vboxguest        vhost-vsock
kmsg             loop8            stdin            tty3             tty54            ttyS20           vboxuser         zero
loop-control     loop9            stdout           tty30            tty55            ttyS21           vcs              zfs
loop0            mapper           termination-log  tty31            tty56            ttyS22           vcs1
loop1            mcelog           tty              tty32            tty57            ttyS23           vcs2
loop10           mem              tty0             tty33            tty58            ttyS24           vcs3
loop11           mqueue           tty1             tty34            tty59            ttyS25           vcs4
loop12           net              tty10            tty35            tty6             ttyS26           vcs5
/ # fdisk -l 2&gt;/dev/null || cat /proc/partitions
Disk /dev/sda: 66.4G, 71306510336 bytes, 139270528 sectors
8635 cylinders, 256 heads, 63 sectors/track
Units: cylinders of 16128 * 512 = 8257536 bytes
Device  Boot StartCHS    EndCHS        StartLBA     EndLBA    Sectors  Size Id Type
/dev/sda1    0,0,2       1023,255,63          1  139270527  139270527 66.4G ee EFI GPT
/ #
/ #
/ # mkdir -p /mnt/test
/ # mount --bind /host /mnt/test
/ #
/ # lsmod
isofs 61440 1 - Live 0xffffffffc0c9c000
ipt_REJECT 12288 0 - Live 0xffffffffc0c9b000
nf_reject_ipv4 12288 1 ipt_REJECT, Live 0xffffffffc0c99000
xt_statistic 12288 9 - Live 0xffffffffc0c98000
xt_mark 12288 12 - Live 0xffffffffc0c97000
snd_seq_dummy 12288 0 - Live 0xffffffffc0c95000
snd_hrtimer 12288 1 - Live 0xffffffffc0c94000
xt_comment 12288 210 - Live 0xffffffffc0c84000
veth 45056 0 - Live 0xffffffffc0c8f000
nf_conntrack_netlink 57344 0 - Live 0xffffffffc0c86000
vboxsf 45056 1 - Live 0xffffffffc0c7f000
vboxguest 57344 5 vboxsf, Live 0xffffffffc0563000
xt_nat 12288 37 - Live 0xffffffffc0c7e000
xt_tcpudp 16384 24 - Live 0xffffffffc0c7d000
vboxvideo 36864 0 - Live 0xffffffffc0c79000
drm_vram_helper 24576 1 vboxvideo, Live 0xffffffffc0c76000
xt_conntrack 12288 60 - Live 0xffffffffc0c75000
xt_MASQUERADE 16384 12 - Live 0xffffffffc0c73000
xfrm_user 65536 1 - Live 0xffffffffc0c6a000
xfrm_algo 16384 1 xfrm_user, Live 0xffffffffc0c66000
xt_set 20480 0 - Live 0xffffffffc0c68000
ip_set 61440 1 xt_set, Live 0xffffffffc0c60000
nft_chain_nat 12288 27 - Live 0xffffffffc0c41000
nf_nat 61440 3 xt_nat,xt_MASQUERADE,nft_chain_nat, Live 0xffffffffc0c59000
nf_conntrack 192512 5 nf_conntrack_netlink,xt_nat,xt_conntrack,xt_MASQUERADE,nf_nat, Live 0xffffffffc0c44000
nf_defrag_ipv6 24576 1 nf_conntrack, Live 0xffffffffc0c42000
nf_defrag_ipv4 12288 1 nf_conntrack, Live 0xffffffffc0c40000
xt_addrtype 12288 13 - Live 0xffffffffc05fd000
nft_compat 20480 377 - Live 0xffffffffc0c3d000
nf_tables 385024 1103 nft_chain_nat,nft_compat, Live 0xffffffffc0c05000
qrtr 53248 2 - Live 0xffffffffc0c00000
snd_intel8x0 53248 1 - Live 0xffffffffc05f8000
snd_ac97_codec 196608 1 snd_intel8x0, Live 0xffffffffc05e5000
ac97_bus 12288 1 snd_ac97_codec, Live 0xffffffffc05c9000
snd_pcm 200704 2 snd_intel8x0,snd_ac97_codec, Live 0xffffffffc05cb000
snd_seq_midi 24576 0 - Live 0xffffffffc05c7000
snd_seq_midi_event 16384 1 snd_seq_midi, Live 0xffffffffc05be000
snd_rawmidi 57344 1 snd_seq_midi, Live 0xffffffffc05bf000
intel_rapl_msr 20480 0 - Live 0xffffffffc05a0000
intel_rapl_common 53248 1 intel_rapl_msr, Live 0xffffffffc05b9000
snd_seq 122880 9 snd_seq_dummy,snd_seq_midi,snd_seq_midi_event, Live 0xffffffffc05a8000
intel_uncore_frequency_common 20480 0 - Live 0xffffffffc05b6000
intel_pmc_core 135168 0 - Live 0xffffffffc05a2000
snd_seq_device 16384 3 snd_seq_midi,snd_rawmidi,snd_seq, Live 0xffffffffc059e000
pmt_telemetry 16384 1 intel_pmc_core, Live 0xffffffffc0597000
snd_timer 53248 3 snd_hrtimer,snd_pcm,snd_seq, Live 0xffffffffc0598000
pmt_discovery 20480 1 pmt_telemetry, Live 0xffffffffc0595000
pmt_class 20480 2 pmt_telemetry,pmt_discovery, Live 0xffffffffc0594000
intel_pmc_ssram_telemetry 16384 1 intel_pmc_core, Live 0xffffffffc0590000
intel_vsec 24576 2 pmt_telemetry,intel_pmc_ssram_telemetry, Live 0xffffffffc0592000
ghash_clmulni_intel 12288 0 - Live 0xffffffffc0591000
aesni_intel 98304 0 - Live 0xffffffffc0581000
snd 143360 11 snd_intel8x0,snd_ac97_codec,snd_pcm,snd_rawmidi,snd_seq,snd_seq_device,snd_timer, Live 0xffffffffc0573000
rapl 20480 0 - Live 0xffffffffc0571000
i2c_piix4 32768 0 - Live 0xffffffffc056e000
i2c_smbus 20480 1 i2c_piix4, Live 0xffffffffc0561000
soundcore 16384 1 snd, Live 0xffffffffc0569000
joydev 32768 0 - Live 0xffffffffc055e000
input_leds 12288 0 - Live 0xffffffffc055d000
mac_hid 12288 0 - Live 0xffffffffc055b000
serio_raw 20480 0 - Live 0xffffffffc0536000
binfmt_misc 24576 1 - Live 0xffffffffc0559000
sch_fq_codel 24576 2 - Live 0xffffffffc0555000
overlay 221184 39 - Live 0xffffffffc0538000
iptable_filter 12288 0 - Live 0xffffffffc0537000
ip6table_filter 12288 0 - Live 0xffffffffc052a000
ip6_tables 32768 1 ip6table_filter, Live 0xffffffffc0532000
br_netfilter 32768 0 - Live 0xffffffffc052c000
bridge 425984 1 br_netfilter, Live 0xffffffffc04f1000
stp 12288 1 bridge, Live 0xffffffffc04ee000
llc 16384 2 bridge,stp, Live 0xffffffffc04e8000
arp_tables 32768 0 - Live 0xffffffffc04ea000
vmwgfx 471040 5 - Live 0xffffffffc04b1000
drm_ttm_helper 16384 4 vboxvideo,drm_vram_helper,vmwgfx, Live 0xffffffffc04af000
efi_pstore 12288 0 - Live 0xffffffffc04ae000
ttm 126976 3 drm_vram_helper,vmwgfx,drm_ttm_helper, Live 0xffffffffc04a0000
msr 12288 0 - Live 0xffffffffc0486000
parport_pc 53248 0 - Live 0xffffffffc049a000
ppdev 24576 0 - Live 0xffffffffc0497000
lp 32768 0 - Live 0xffffffffc0493000
parport 73728 3 parport_pc,ppdev,lp, Live 0xffffffffc048b000
nfnetlink 20480 6 nf_conntrack_netlink,ip_set,nft_compat,nf_tables, Live 0xffffffffc0488000
dmi_sysfs 20480 0 - Live 0xffffffffc040f000
ip_tables 32768 1 iptable_filter, Live 0xffffffffc0481000
x_tables 65536 16 ipt_REJECT,xt_statistic,xt_mark,xt_comment,xt_nat,xt_tcpudp,xt_conntrack,xt_MASQUERADE,xt_set,xt_addrtype,nft_compat,iptable_filter,ip6table_filter,ip6_tables,arp_tables,ip_tables, Live 0xffffffffc047b000
autofs4 57344 8 - Live 0xffffffffc0475000
hid_generic 12288 0 - Live 0xffffffffc041a000
usbhid 77824 0 - Live 0xffffffffc046b000
hid 262144 2 hid_generic,usbhid, Live 0xffffffffc045a000
psmouse 217088 0 - Live 0xffffffffc0439000
video 77824 0 - Live 0xffffffffc0454000
vga16fb 32768 0 - Live 0xffffffffc0435000
e1000 180224 0 - Live 0xffffffffc041b000
ahci 49152 1 - Live 0xffffffffc0418000
vgastate 20480 1 vga16fb, Live 0xffffffffc0415000
libahci 53248 1 ahci, Live 0xffffffffc0410000
wmi 28672 1 video, Live 0xffffffffc040a000
pata_acpi 12288 0 - Live 0xffffffffc040d000
/ #
/ #
/ # cat /proc/1/root/etc/hostname 2&gt;/dev/null
privileged-pod
/ # ls -la /proc/1/root/ 2&gt;/dev/null
total 64
drwxr-xr-x    1 root     root          4096 Jul  5 15:54 .
drwxr-xr-x    1 root     root          4096 Jul  5 15:54 ..
drwxr-xr-x    2 root     root         12288 May 13 02:21 bin
drwxr-xr-x   15 root     root          4260 Jul  5 15:50 dev
drwxr-xr-x    1 root     root          4096 Jul  5 15:50 etc
drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home
drwxr-xr-x    1 root     root          4096 Jun  7 16:06 host
drwxr-xr-x    2 root     root          4096 May 13 02:21 lib
lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib
drwxr-xr-x    3 root     root          4096 Jul  5 15:54 mnt
dr-xr-xr-x  345 root     root             0 Jul  5 15:50 proc
-rw-r--r--    1 root     root             5 Jul  5 15:50 product_name
-rw-r--r--    1 root     root            37 Jul  5 15:50 product_uuid
drwx------    1 root     root          4096 Jul  5 15:52 root
dr-xr-xr-x   13 root     root             0 Jul  5 15:50 sys
drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp
drwxr-xr-x    4 root     root          4096 May 13 02:21 usr
drwxr-xr-x    1 root     root          4096 Jul  5 15:50 var
/ #
/ #</code></pre></td>
</tr>
<tr>
<td><p>→What We Achieved / Can Prove</p>
<p>Container escape from pod → node container is trivial with a bad hostPath config. Mounting / as a hostPath volume with no security restrictions let us read/write files outside the pod's own filesystem with zero effort.</p>
<p>Non-root vs root distinction proven irrelevant on its own. Even with uid=0(root) inside the container, that root was scoped to the container's namespace — it didn't automatically mean root on anything outside it. Isolation comes from namespaces/capabilities, not just UID.</p>
<p>privileged: true grants full capabilities. Confirmed via CapEff showing the full capability bitmask — this pod could do things (raw device access, arbitrary mounts, viewing all host devices) a normal pod cannot.</p>
<p>Kernel is shared, always. lsmod showed real VirtualBox guest kernel modules (vboxguest, vboxsf, vboxvideo) — proving containers never get their own kernel; they always run on whatever kernel the physical/virtual host provides. This is why kernel CVEs are container-escape-critical regardless of any other control.</p>
<p>cgroup v2 blocked the classic release_agent escape. We confirmed the technique's precondition (cgroup v1) didn't exist here — real evidence that modern kernel defaults have closed a historically well-known privilege escalation path.</p>
<p>We correctly identified the layered environment, distinguishing pod → KIND node container → Ubuntu VM → Windows host, using concrete fingerprints (hostname, /kind directory, Docker-generated resolv.conf) rather than assumption.</p>
<p>→What We Could NOT Prove / Did Not Achieve</p>
<p><mark>Did not escape to the Ubuntu VM's real filesystem.</mark> Everything we wrote or read (/host, /proc/1/root) stayed inside the KIND node's Docker container — confirmed by the /kind folder and Debian bookworm OS fingerprint present in both paths.</p>
<p>Did not achieve host-level code execution. Seeing kernel modules is passive visibility, not proof of write access or execution rights on the VM. We never tested or found a path (like an exposed Docker socket) that would let a command run as the real Docker daemon/VM user.</p>
<p>Did not reach Windows, and structurally cannot via this method. Windows sits behind a hypervisor (VirtualBox) boundary — a fundamentally different security boundary from container/namespace escapes. No container misconfiguration crosses that; it would require a separate hypervisor-level vulnerability class entirely.</p>
<p>The mount --bind command achieved nothing new — it remapped a path within our own container's existing mount namespace; it didn't cross any isolation boundary.</p></td>
</tr>
</tbody>
</table>

### Controlled - Pod 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below yaml will give us the pod to run in controlled access. Meaning, we will not have root access to the pod.</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; controlled-pod.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: controlled-pod
spec:
  securityContext:
    runAsUser: 1000
    runAsGroup: 2000
    fsGroup: 3000
  containers:
  - name: demo-container
    image: busybox:latest
    command: ["sleep", "36000"]
    volumeMounts:
    - name: host-root
      mountPath: /host
  volumes:
  - name: host-root
    hostPath:
      path: /
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f controlled-pod.yaml
pod/controlled-pod created
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Access the pod and sensitive files. We should get permission denied as the user is not root.</p>
<pre><code class="language-plaintext">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it controlled-pod -- sh
~ $
~ $ id
uid=1000 gid=2000 groups=2000,3000
~ $
~ $ cat /host/etc/shadow
cat: can't open '/host/etc/shadow': Permission denied
~ $
~ $</code></pre>
<p>What this proves</p>
<p>id confirms the securityContext worked as configured: uid=1000 gid=2000 groups=2000,3000 — no root anywhere in this identity, matching your YAML exactly.</p>
<p>cat /host/etc/shadow → Permission denied — this is the payoff. Same hostPath mount to /, same file, same path as your original insecure pod where you could read it freely as root. Now, standard Unix file permission checks (shadow is typically -rw-r----- owned by root:shadow) block UID 1000 from reading it.</p></td>
</tr>
<tr>
<td><p>→While it is blocked for certain areas, given the host path configured as “ / “ is still wide open and has the attack surface open.</p>
<p>→Take a look at below commands that would still work.</p>
<pre><code class="language-plaintext">~ $ cat /host/etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
_rpc:x:100:65534::/run/rpcbind:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
statd:x:101:65534::/var/lib/nfs:/usr/sbin/nologin
~ $
~ $
~ $ cat /host/etc/hosts
127.0.0.1   localhost
::1 localhost ip6-localhost ip6-loopback
fe00::  ip6-localnet
ff00::  ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
172.18.0.2  intg-ks-worker2
fc00:f853:ccd:e793::2   intg-ks-worker2
~ $
~ $
~ $ cat /host/etc/resolv.conf
# Generated by Docker Engine.
# This file can be edited; Docker Engine will not make further changes once it
# has been modified.
nameserver 172.18.0.1
search home
options edns0 trust-ad ndots:0
# Based on host file: '/etc/resolv.conf' (internal resolver)
# ExtServers: [host(127.0.0.53)]
# Overrides: []
# Option ndots from: internal
~ $
~ $ find /host/etc -readable -type f 2&gt;/dev/null
~ $
~ $ find /host -perm -o+w -type f 2&gt;/dev/null | head -50
/host/proc/sys/kernel/ns_last_pid
/host/proc/pressure/io
/host/proc/pressure/cpu
/host/proc/pressure/memory
/host/proc/1/task/1/attr/current
/host/proc/1/task/1/attr/exec
/host/proc/1/task/1/attr/fscreate
/host/proc/1/task/1/attr/keycreate
/host/proc/1/task/1/attr/sockcreate
/host/proc/1/task/1/attr/smack/current
/host/proc/1/task/1/attr/apparmor/current
/host/proc/1/task/1/attr/apparmor/exec
/host/proc/1/attr/current
/host/proc/1/attr/exec
/host/proc/1/attr/fscreate
/host/proc/1/attr/keycreate
/host/proc/1/attr/sockcreate
/host/proc/1/attr/smack/current
/host/proc/1/attr/apparmor/current
/host/proc/1/attr/apparmor/exec
/host/proc/1/timerslack_ns
/host/proc/106/task/106/attr/current
/host/proc/106/task/106/attr/exec
/host/proc/106/task/106/attr/fscreate
/host/proc/106/task/106/attr/keycreate
/host/proc/106/task/106/attr/sockcreate
/host/proc/106/task/106/attr/smack/current
/host/proc/106/task/106/attr/apparmor/current
/host/proc/106/task/106/attr/apparmor/exec
/host/proc/106/attr/current
/host/proc/106/attr/exec
/host/proc/106/attr/fscreate
/host/proc/106/attr/keycreate
/host/proc/106/attr/sockcreate
/host/proc/106/attr/smack/current
/host/proc/106/attr/apparmor/current
/host/proc/106/attr/apparmor/exec
/host/proc/106/timerslack_ns
/host/proc/124/task/124/attr/current
/host/proc/124/task/124/attr/exec
/host/proc/124/task/124/attr/fscreate
/host/proc/124/task/124/attr/keycreate
/host/proc/124/task/124/attr/sockcreate
/host/proc/124/task/124/attr/smack/current
/host/proc/124/task/124/attr/apparmor/current
/host/proc/124/task/124/attr/apparmor/exec
/host/proc/124/task/132/attr/current
/host/proc/124/task/132/attr/exec
/host/proc/124/task/132/attr/fscreate
/host/proc/124/task/132/attr/keycreate
~ $
 $ ls -ld /host/tmp
drwxrwxrwt    2 root     root            60 Jul 11 16:09 /host/tmp
~ $ touch /host/tmp/test-write-nonroot.txt &amp;&amp; echo "SUCCESS: wrote as non-root"
SUCCESS: wrote as non-root
~ $
~ $ cat /host/tmp/test-write-nonroot.txt
~ $
~ $ ls -lrt /host/tmp/
total 0
-rw-r--r--    1 1000     2000             0 Jul 11 16:10 test-write-nonroot.txt
~ $
~ $ find /host -group 2000 2&gt;/dev/null
/host/tmp/test-write-nonroot.txt
/host/proc/8811
/host/proc/8811/task
/host/proc/8811/task/8811
/host/proc/8811/task/8811/fd
/host/proc/8811/task/8811/fd/0
/host/proc/8811/task/8811/fd/1</code></pre></td>
</tr>
<tr>
<td><p>→Problems with above ‘wide open host paths’ - or Command Risks</p>
<table style="width:97%;">
<colgroup>
<col style="width: 6%" />
<col style="width: 24%" />
<col style="width: 23%" />
<col style="width: 43%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong>Command</strong></td>
<td style="text-align: left;"><strong>Result</strong></td>
<td style="text-align: left;"><strong>Risk</strong></td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">cat /host/etc/passwd</td>
<td style="text-align: left;">Full user/system account list readable</td>
<td style="text-align: left;">Reconnaissance — reveals every username, UID/GID mapping, and shell config on the host. Used to identify real vs. system accounts before targeting one.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">cat /host/etc/hosts</td>
<td style="text-align: left;">Internal hostnames/IPs exposed (intg-ks-worker2, 172.18.0.2)</td>
<td style="text-align: left;">Network topology leak — reveals internal cluster/node addressing, useful for lateral movement planning.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">cat /host/etc/resolv.conf</td>
<td style="text-align: left;">DNS resolver config exposed</td>
<td style="text-align: left;">Infrastructure fingerprinting — confirms Docker-managed DNS, internal search domains.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">find /host/etc -readable -type f</td>
<td style="text-align: left;">Empty output</td>
<td style="text-align: left;">Likely a find traversal quirk on /etc itself, not proof /etc is locked down (individual files inside were readable directly). Re-test with -perm instead of -readable.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">find /host -perm -o+w -type f</td>
<td style="text-align: left;">Long list, mostly under /proc</td>
<td style="text-align: left;">Mostly noise — /proc entries are pseudo-files, not real writable targets. Confirms scanning works; a real attacker filters these out and looks for hits under /etc, /var, /opt instead.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">ls -ld /host/tmp → drwxrwxrwt</td>
<td style="text-align: left;">Sticky bit set, world-writable</td>
<td style="text-align: left;">Expected/standard Linux behavior — sticky bit means only the file owner can delete their own files even in a shared writable dir. Not itself a vuln.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">touch /host/tmp/test-write-nonroot.txt → SUCCESS</td>
<td style="text-align: left;">File written to the real host filesystem</td>
<td style="text-align: left;">The key finding. Write access achieved as a non-root, unprivileged pod — purely due to the hostPath mount. If any host-side process reads/executes files from /tmp, this is a direct planting vector.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;">find /host -group 2000</td>
<td style="text-align: left;">Found own test file + some /proc PIDs</td>
<td style="text-align: left;">Confirms group-based access works both ways — anything the host assigns GID 2000 to becomes accessible. Harmless here, but risky on a host with misconfigured group ownership.</td>
</tr>
</tbody>
</table>
<h2 id="key-takeaway">Key Takeaway</h2>
<p>The read-only recon commands required no privilege — only the mount. The one write test succeeded despite non-root, again because of the mount, not despite any missing control.</p>
<p>runAsUser narrows the blast radius per-file. It does not close the underlying gap: the hostPath mount itself.</p></td>
</tr>
</tbody>
</table>

## Secrets

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image361.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Create Secret</p>
<pre><code class="language-plaintext">cat &gt; app-secret.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Secret
metadata:
  name: app-secret
  namespace: integrations
type: Opaque
stringData:
  username: admin
  password: &lt;removed&gt;
  api-key: &lt;removed&gt;
  connection-string: jdbc:mysql://mysql:3306/inventory
EOF
kubectl apply -f app-secret.yaml
admin@Ubuntu:~/Downloads/k8basics/volumes$ secret
NAME         TYPE     DATA   AGE
app-secret   Opaque   4      6s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

### Inject Secret as Env Variables 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a pod that consumes the secret via environment variables.</p>
<p>→Here we are defining ‘env’ with a name that has value from secret (name) using the key inside the secret.</p>
<pre><code class="nohighlight language-plaintext">cat &gt; pod-secret-env.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: secret-env-demo
  namespace: integrations
spec:
  containers:
  - name: app
    image: busybox
    command: ["sleep","3600"]
    <mark>env</mark>:
      - name: USERNAME
        valueFrom:
          secretKeyRef:
            name: app-secret
            key: username
      - name: PASSWORD
        valueFrom:
          secretKeyRef:
            name: app-secret
            key: password
      - name: API_KEY
        valueFrom:
          secretKeyRef:
            name: app-secret
            key: api-key
EOF
admin@Ubuntu:~/Downloads/k8basics/volumes$ k apply -f pod-secret-env.yaml
pod/secret-env-demo created
admin@Ubuntu:~/Downloads/k8basics/volumes$ pods
NAME                 READY   STATUS    RESTARTS         AGE
configmap-demo-pod   1/1     Running   24 (9m55s ago)   6d10h
controlled-pod       1/1     Running   0                4h9m
insecure-pod         1/1     Running   19 (9m49s ago)   6d4h
privileged-pod       1/1     Running   18 (9m38s ago)   6d4h
secret-env-demo      1/1     Running   0                6s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Get secrets stored in environment.</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-env-demo -- env | grep -E 'USERNAME|PASSWORD|API_KEY'
USERNAME=admin
PASSWORD=&lt;removed&gt;
API_KEY=&lt;removed&gt;
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
</tbody>
</table>

### Inject Secret as Volume Mount 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Here we are injecting the Kubernetes Secret as a mounted volume.</p>
<p>→ First, we define a volume named 'secret-volume'.</p>
<p>→ This volume is backed by the Secret named 'app-secret'.</p>
<p>→ Next, the container references this volume using 'volumeMounts' and mounts it at '/etc/secrets'.</p>
<p>→ Kubernetes automatically creates one file for each key in the Secret under '/etc/secrets'.</p>
<p>→ The content of each file is the corresponding Secret value.</p>
<p>→ The application can now read the Secret just like reading normal files from the filesystem.</p>
<pre><code class="nohighlight language-yaml">cat &gt; pod-secret-volume.yaml &lt;&lt; 'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: secret-volume-demo
  namespace: integrations
spec:
  containers:
  - name: app
    image: busybox
    command: ["sleep","3600"]
    <mark>volumeMounts:</mark>
<mark>    - name: secret-volume</mark>
<mark>      mountPath: /etc/secrets</mark>
<mark>      readOnly: true</mark>
<mark>  volumes:</mark>
<mark>  - name: secret-volume</mark>
<mark>    secret:&lt;removed&gt;
<mark>      secretName: app-secret</mark>
EOF</code></pre></td>
</tr>
<tr>
<td><p>→Apply the pod yaml</p>
<pre><code class="language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pod-secret-volume.yaml
pod/secret-volume-demo created
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ pods
NAME                 READY   STATUS    RESTARTS       AGE
configmap-demo-pod   1/1     Running   24 (15m ago)   6d10h
controlled-pod       1/1     Running   0              4h14m
insecure-pod         1/1     Running   19 (15m ago)   6d4h
privileged-pod       1/1     Running   18 (14m ago)   6d4h
secret-env-demo      1/1     Running   0              5m21s
secret-volume-demo   1/1     Running   0              32s
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→Fetch secrets from the pod</p>
<pre><code class="nohighlight language-bash">admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- ls -l /etc/secrets
total 0
lrwxrwxrwx    1 root     root            14 Jul 11 20:12 api-key -&gt; ..data/api-key
lrwxrwxrwx    1 root     root            24 Jul 11 20:12 connection-string -&gt; ..data/connection-string
lrwxrwxrwx    1 root     root            15 Jul 11 20:12 password -&gt; ..data/password
lrwxrwxrwx    1 root     root            15 Jul 11 20:12 username -&gt; ..data/username
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- cat /etc/secrets/password
<mark>P@ssw0rd123</mark>
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- cat /etc/secrets/api-key
<mark>1234567890abcdef</mark>
admin@Ubuntu:~/Downloads/k8basics/volumes$
admin@Ubuntu:~/Downloads/k8basics/volumes$</code></pre></td>
</tr>
<tr>
<td><p>→<mark>Important observations.</mark></p>
<p>→ Notice the files are displayed with an arrow (-&gt;); these are symbolic links (symlinks), not actual files.</p>
<p>→ The real Secret data is stored in a hidden directory called '..data'.</p>
<p>→ Each visible file (e.g., password, username) simply points to its corresponding file inside '..data'.</p>
<p>→ Kubernetes uses this symlink mechanism so that Secret updates can be applied atomically by switching the '..data' directory.</p>
<p>→ The application simply reads '/etc/secrets/password' without needing to know about the underlying symlinks.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image362.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
</tbody>
</table>

## Kubernetes Architecture - Big Picture 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image363.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Simplified</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image364.webp" style="width:6.72014in;height:4.48056in" /></p></td>
</tr>
<tr>
<td><p>→It is divided into two planes viz., Control Plane(master node) and Data Plane (worker node).</p>
<p>→Control Plane has components like: kube-apiserver, kubescheduler, coreDNS, etcd, kubeproxy, kube-controller-manager, cloud-controller-manager.</p>
<p>→Data Plane has components like: kubelet &amp; kube-proxy</p>
<p>→More brief explanation below against each component.</p>
<p>→Just to mention, all these components are simple binaries that are running on the host. Each having own purpose etc.</p></td>
</tr>
</tbody>
</table>

### Kube API Server (Master Node) 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image365.webp" style="width:5.03472in;height:2.54167in" alt="{EF67BF24-2E5C-4547-97B2-2BDCB2AC238C}" /></p></td>
</tr>
<tr>
<td><p>→High level purpose.</p>
<ul>
<li><p>User/Admin operations → kubectl apply, kubectl get pods → kubectl → kube-apiserver → cluster</p></li>
<li><p>CI/CD deployments → Jenkins/GitHub Actions/Argo CD deploys an app → CI/CD → kube-apiserver → cluster</p></li>
<li><p>Controllers → Deployment controller creates Pods → Controller → kube-apiserver → cluster</p></li>
<li><p>Worker nodes (kubelet) → Reports Pod status, requests Pod specs → kubelet ↔︎ kube-apiserver</p></li>
<li><p>Autoscalers/Operators → Scale or manage workloads → Operator/HPA → kube-apiserver</p></li>
<li><p>Authentication &amp; Authorization → Every API request is checked by the kube-apiserver before anything happens.</p></li>
</ul>
<p>Does NOT go through kube-apiserver:</p>
<ul>
<li><p>❌ User accessing an application (browser → Service → Pod)</p></li>
<li><p>❌ Pod-to-Pod communication</p></li>
<li><p>❌ Service-to-Service traffic</p></li>
</ul></td>
</tr>
</tbody>
</table>

### ETCD Server (Master Node)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image366.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>What etcd does:</p>
<ul>
<li><p>✅ Stores the cluster state (Pods, Deployments, Services, ConfigMaps, Secrets, Nodes, etc.).</p></li>
<li><p>✅ Stores the desired state (e.g., "run 3 replicas").</p></li>
<li><p>✅ Stores the current state (e.g., Pod/Node status).</p></li>
<li><p>✅ Only the kube-apiserver reads from and writes to etcd.</p></li>
<li><p>✅ Helps recover the cluster state after a control plane restart.</p></li>
<li><p>✅ when you define a Secret or ConfigMap and deploy a Pod, Kubernetes automatically pulls the data from etcd (via the API server) and injects it into the Pod as environment variables or mounted files; under no normal circumstances can an application directly access etcd.</p></li>
</ul>
<p>What etcd does NOT do:</p>
<ul>
<li><p>❌ Does not run application workloads or Pods.</p></li>
<li><p>❌ Does not route or carry application traffic.</p></li>
<li><p>❌ Does not schedule Pods onto nodes.</p></li>
<li><p>❌ Does not communicate directly with worker nodes (everything goes through the kube-apiserver).</p></li>
<li><p>❌ Does not participate in runtime Pod-to-Pod or user-to-application communication.</p></li>
<li><p>❌ Running application workloads or Pods.</p></li>
<li><p>❌ Being accessed by customer applications (e.g., Java apps) at runtime.</p></li>
</ul>
<p>Simple flow:<br />
kubectl apply → kube-apiserver → etcd stores state → Controllers/Scheduler (via kube-apiserver) make the cluster match that state.</p></td>
</tr>
</tbody>
</table>

### Scheduler (Master Node)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image367.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>What kube-scheduler does:</p>
<ul>
<li><p>✅ Watches for new Pods that don't have a node assigned.</p></li>
<li><p>✅ Chooses the best worker node based on CPU, memory, taints/tolerations, affinity, policies, etc.</p></li>
<li><p>✅ Assigns the Pod to the selected node (via the kube-apiserver).</p></li>
<li><p>✅ Schedules only once when the Pod is created (or needs rescheduling).</p></li>
</ul>
<p>What kube-scheduler does NOT do:</p>
<ul>
<li><p>❌ Does not create or start the Pod (the kubelet does that).</p></li>
<li><p>❌ Does not run application traffic.</p></li>
<li><p>❌ Does not continuously monitor or load-balance running Pods.</p></li>
<li><p>❌ Does not move running Pods between nodes automatically.</p></li>
<li><p>❌ Does not communicate directly with worker nodes (it works through the kube-apiserver).</p></li>
</ul>
<p>Simple flow:<br />
New Pod created → kube-scheduler picks the best node → kube-apiserver records the assignment → kubelet on that node starts the Pod.</p></td>
</tr>
</tbody>
</table>

### Controller Manager (Master Node)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image368.webp" style="width:7.67986in;height:2.98472in" /></p></td>
</tr>
<tr>
<td><p>What kube-controller-manager does:</p>
<ul>
<li><p>✅ Watches the cluster state via the kube-apiserver.</p></li>
<li><p>✅ Detects when the actual state differs from the desired state.</p></li>
<li><p>✅ Takes corrective action (creates, deletes, or replaces resources).</p></li>
<li><p>✅ Runs controllers like Deployment, ReplicaSet, Node, Job, and Namespace controllers.</p></li>
<li><p>✅ Continuously reconciles the cluster to the desired state.</p></li>
</ul>
<p>What kube-controller-manager does NOT do:</p>
<ul>
<li><p>❌ Does not decide which node a Pod runs on (the kube-scheduler does).</p></li>
<li><p>❌ Does not start or run Pods (the kubelet does).</p></li>
<li><p>❌ Does not store cluster state (that's etcd).</p></li>
<li><p>❌ Does not handle application traffic.</p></li>
<li><p>❌ Does not communicate directly with worker nodes (it works through the kube-apiserver).</p></li>
</ul>
<p>Simple flow:<br />
Deployment says 3 replicas → 1 Pod crashes → kube-controller-manager notices only 2 are running → creates a replacement Pod → kube-scheduler assigns a node → kubelet starts the Pod.</p></td>
</tr>
</tbody>
</table>

### Kubelet (Worker Node)

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image369.wmf" /></p></td>
</tr>
<tr>
<td><p>What kubelet does:</p>
<ul>
<li><p>✅ Runs on every worker node.</p></li>
<li><p>✅ Watches the kube-apiserver for Pods assigned to its node.</p></li>
<li><p>✅ Starts, stops, and monitors Pods using the container runtime (e.g., containerd).</p></li>
<li><p>✅ Reports Pod and Node health/status back to the kube-apiserver.</p></li>
<li><p>✅ Restarts containers if needed according to the Pod specification.</p></li>
</ul>
<p>What kubelet does NOT do:</p>
<ul>
<li><p>❌ Does not decide which node a Pod should run on (the kube-scheduler does).</p></li>
<li><p>❌ Does not store cluster state (that's etcd).</p></li>
<li><p>❌ Does not handle application traffic between Pods or Services.</p></li>
<li><p>❌ Does not communicate directly with etcd (it uses the kube-apiserver).</p></li>
<li><p>❌ Does not manage Pods on other worker nodes.</p></li>
</ul>
<p>Simple flow:<br />
kube-scheduler assigns a Pod to Node A → kubelet on Node A sees the assignment via the kube-apiserver → kubelet asks the container runtime to start the Pod → kubelet reports the Pod status back to the kube-apiserver.</p></td>
</tr>
</tbody>
</table>

### Kube Proxy (Control plane)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image370.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><h2 id="what-kube-proxy-does">→✅ What kube-proxy DOES</h2>
<ul>
<li><p>Runs on every Kubernetes node (typically as a DaemonSet).</p></li>
<li><p>Watches the API Server for changes to Services and EndpointSlices.</p></li>
<li><p>Creates and maintains iptables/IPVS rules on its local node.</p></li>
<li><p>Implements ClusterIP, NodePort, and (part of) LoadBalancer Service networking.</p></li>
<li><p>Performs load balancing by selecting one backend Pod from the available endpoints.</p></li>
<li><p>Uses DNAT (Destination NAT) to rewrite the destination from a Service IP to the selected Pod IP.</p></li>
<li><p>Maintains connection tracking, ensuring return traffic reaches the original client correctly.</p></li>
<li><p>Updates routing rules automatically when Pods are added, removed, or become unhealthy.</p></li>
<li><p>Operates independently on every node—there is no central kube-proxy.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### IP Tables

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image371.webp" style="width:6.61111in;height:4.40764in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>admin@Ubuntu:~$ # 1. Is kube-proxy running?</p>
<pre><code class="language-plaintext">kubectl -n kube-system get pods -l k8s-app=kube-proxy
NAME               READY   STATUS    RESTARTS       AGE
kube-proxy-fz82g   1/1     Running   32 (28m ago)   48d
kube-proxy-hl5vh   1/1     Running   31 (28m ago)   48d
kube-proxy-zrjlp   1/1     Running   31 (28m ago)   48d
admin@Ubuntu:~$ kubectl -n kube-system get configmap kube-proxy -o yaml | grep mode
    mode: iptables
admin@Ubuntu:~$ kubectl get nodes
NAME                    STATUS   ROLES           AGE   VERSION
intg-ks-control-plane   Ready    control-plane   48d   v1.29.2
intg-ks-worker          Ready    &lt;none&gt;          48d   v1.29.2
intg-ks-worker2         Ready    &lt;none&gt;          48d   v1.29.2
admin@Ubuntu:~$ docker ps --format "table {{.Names}}\t{{.Status}}"
NAMES                   STATUS
intg-ks-control-plane   Up 30 minutes
intg-ks-worker2         Up 30 minutes
intg-ks-worker          Up 30 minutes
admin@Ubuntu:~$ docker exec -it intg-ks-control-plane iptables-save | grep KUBE
:KUBE-IPTABLES-HINT - [0:0]
:KUBE-KUBELET-CANARY - [0:0]
:KUBE-PROXY-CANARY - [0:0]
:KUBE-EXTERNAL-SERVICES - [0:0]
:KUBE-FIREWALL - [0:0]
:KUBE-FORWARD - [0:0]
:KUBE-KUBELET-CANARY - [0:0]
:KUBE-NODEPORTS - [0:0]
:KUBE-PROXY-CANARY - [0:0]
:KUBE-PROXY-FIREWALL - [0:0]
:KUBE-SERVICES - [0:0]
-A INPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL
-A INPUT -m comment --comment "kubernetes health check service ports" -j KUBE-NODEPORTS
-A INPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes externally-visible service portals" -j KUBE-EXTERNAL-SERVICES
-A INPUT -j KUBE-FIREWALL
-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL
-A FORWARD -m comment --comment "kubernetes forwarding rules" -j KUBE-FORWARD
-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes service portals" -j KUBE-SERVICES
-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes externally-visible service portals" -j KUBE-EXTERNAL-SERVICES
-A OUTPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL
-A OUTPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes service portals" -j KUBE-SERVICES
-A OUTPUT -j KUBE-FIREWALL
-A KUBE-FIREWALL ! -s 127.0.0.0/8 -d 127.0.0.0/8 -m comment --comment "block incoming localnet connections" -m conntrack ! --ctstate RELATED,ESTABLISHED,DNAT -j DROP
-A KUBE-FORWARD -m conntrack --ctstate INVALID -j DROP
-A KUBE-FORWARD -m comment --comment "kubernetes forwarding rules" -m mark --mark 0x4000/0x4000 -j ACCEPT
-A KUBE-FORWARD -m comment --comment "kubernetes forwarding conntrack rule" -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
:KUBE-KUBELET-CANARY - [0:0]
:KUBE-MARK-MASQ - [0:0]
:KUBE-NODEPORTS - [0:0]
:KUBE-POSTROUTING - [0:0]
:KUBE-PROXY-CANARY - [0:0]
:KUBE-SEP-6E7XQMQ4RAYOWTTM - [0:0]
:KUBE-SEP-BKPAYHGQ3HGBC5MP - [0:0]
:KUBE-SEP-IT2ZTR26TO4XFPTO - [0:0]
:KUBE-SEP-N4G2XR5TDX7PQE7P - [0:0]
:KUBE-SEP-V2PECCYPB6X2GSCW - [0:0]
:KUBE-SEP-YIL6JZP7A3QYXJU2 - [0:0]
:KUBE-SEP-ZP3FB6NMPNCO4VBJ - [0:0]
:KUBE-SEP-ZXMNUKOKXUTL2MK2 - [0:0]
:KUBE-SERVICES - [0:0]
:KUBE-SVC-ERIFXISQEP7F7OF4 - [0:0]
:KUBE-SVC-JD5MR3NA4I4DYORP - [0:0]
:KUBE-SVC-NPX46M4PTMTKRN6Y - [0:0]
:KUBE-SVC-TCOU7JCQXEZGVUNU - [0:0]
:KUBE-SVC-Z4ANX4WAEWEBLCTM - [0:0]
-A PREROUTING -m comment --comment "kubernetes service portals" -j KUBE-SERVICES
-A OUTPUT -m comment --comment "kubernetes service portals" -j KUBE-SERVICES
-A POSTROUTING -m comment --comment "kubernetes postrouting rules" -j KUBE-POSTROUTING
-A KUBE-MARK-MASQ -j MARK --set-xmark 0x4000/0x4000
-A KUBE-POSTROUTING -m mark ! --mark 0x4000/0x4000 -j RETURN
-A KUBE-POSTROUTING -j MARK --set-xmark 0x4000/0x0
-A KUBE-POSTROUTING -m comment --comment "kubernetes service traffic requiring SNAT" -j MASQUERADE --random-fully
-A KUBE-SEP-6E7XQMQ4RAYOWTTM -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:dns" -j KUBE-MARK-MASQ
-A KUBE-SEP-6E7XQMQ4RAYOWTTM -p udp -m comment --comment "kube-system/kube-dns:dns" -m udp -j DNAT --to-destination 10.244.0.3:53
-A KUBE-SEP-BKPAYHGQ3HGBC5MP -s 10.244.1.2/32 -m comment --comment "kube-system/metrics-server:https" -j KUBE-MARK-MASQ
-A KUBE-SEP-BKPAYHGQ3HGBC5MP -p tcp -m comment --comment "kube-system/metrics-server:https" -m tcp -j DNAT --to-destination 10.244.1.2:10250
-A KUBE-SEP-IT2ZTR26TO4XFPTO -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:dns-tcp" -j KUBE-MARK-MASQ
-A KUBE-SEP-IT2ZTR26TO4XFPTO -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp" -m tcp -j DNAT --to-destination 10.244.0.2:53
-A KUBE-SEP-N4G2XR5TDX7PQE7P -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:metrics" -j KUBE-MARK-MASQ
-A KUBE-SEP-N4G2XR5TDX7PQE7P -p tcp -m comment --comment "kube-system/kube-dns:metrics" -m tcp -j DNAT --to-destination 10.244.0.2:9153
-A KUBE-SEP-V2PECCYPB6X2GSCW -s 172.18.0.2/32 -m comment --comment "default/kubernetes:https" -j KUBE-MARK-MASQ
-A KUBE-SEP-V2PECCYPB6X2GSCW -p tcp -m comment --comment "default/kubernetes:https" -m tcp -j DNAT --to-destination 172.18.0.2:6443
-A KUBE-SEP-YIL6JZP7A3QYXJU2 -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:dns" -j KUBE-MARK-MASQ
-A KUBE-SEP-YIL6JZP7A3QYXJU2 -p udp -m comment --comment "kube-system/kube-dns:dns" -m udp -j DNAT --to-destination 10.244.0.2:53
-A KUBE-SEP-ZP3FB6NMPNCO4VBJ -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:metrics" -j KUBE-MARK-MASQ
-A KUBE-SEP-ZP3FB6NMPNCO4VBJ -p tcp -m comment --comment "kube-system/kube-dns:metrics" -m tcp -j DNAT --to-destination 10.244.0.3:9153
-A KUBE-SEP-ZXMNUKOKXUTL2MK2 -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:dns-tcp" -j KUBE-MARK-MASQ
-A KUBE-SEP-ZXMNUKOKXUTL2MK2 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp" -m tcp -j DNAT --to-destination 10.244.0.3:53
-A KUBE-SERVICES -d 10.96.0.1/32 -p tcp -m comment --comment "default/kubernetes:https cluster IP" -m tcp --dport 443 -j KUBE-SVC-NPX46M4PTMTKRN6Y
-A KUBE-SERVICES -d 10.96.0.10/32 -p udp -m comment --comment "kube-system/kube-dns:dns cluster IP" -m udp --dport 53 -j KUBE-SVC-TCOU7JCQXEZGVUNU
-A KUBE-SERVICES -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp cluster IP" -m tcp --dport 53 -j KUBE-SVC-ERIFXISQEP7F7OF4
-A KUBE-SERVICES -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:metrics cluster IP" -m tcp --dport 9153 -j KUBE-SVC-JD5MR3NA4I4DYORP
-A KUBE-SERVICES -d 10.96.48.86/32 -p tcp -m comment --comment "kube-system/metrics-server:https cluster IP" -m tcp --dport 443 -j KUBE-SVC-Z4ANX4WAEWEBLCTM
-A KUBE-SERVICES -m comment --comment "kubernetes service nodeports; NOTE: this must be the last rule in this chain" -m addrtype --dst-type LOCAL -j KUBE-NODEPORTS
-A KUBE-SVC-ERIFXISQEP7F7OF4 ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp cluster IP" -m tcp --dport 53 -j KUBE-MARK-MASQ
-A KUBE-SVC-ERIFXISQEP7F7OF4 -m comment --comment "kube-system/kube-dns:dns-tcp -&gt; 10.244.0.2:53" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-IT2ZTR26TO4XFPTO
-A KUBE-SVC-ERIFXISQEP7F7OF4 -m comment --comment "kube-system/kube-dns:dns-tcp -&gt; 10.244.0.3:53" -j KUBE-SEP-ZXMNUKOKXUTL2MK2
-A KUBE-SVC-JD5MR3NA4I4DYORP ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:metrics cluster IP" -m tcp --dport 9153 -j KUBE-MARK-MASQ
-A KUBE-SVC-JD5MR3NA4I4DYORP -m comment --comment "kube-system/kube-dns:metrics -&gt; 10.244.0.2:9153" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-N4G2XR5TDX7PQE7P
-A KUBE-SVC-JD5MR3NA4I4DYORP -m comment --comment "kube-system/kube-dns:metrics -&gt; 10.244.0.3:9153" -j KUBE-SEP-ZP3FB6NMPNCO4VBJ
-A KUBE-SVC-NPX46M4PTMTKRN6Y ! -s 10.244.0.0/16 -d 10.96.0.1/32 -p tcp -m comment --comment "default/kubernetes:https cluster IP" -m tcp --dport 443 -j KUBE-MARK-MASQ
-A KUBE-SVC-NPX46M4PTMTKRN6Y -m comment --comment "default/kubernetes:https -&gt; 172.18.0.2:6443" -j KUBE-SEP-V2PECCYPB6X2GSCW
-A KUBE-SVC-TCOU7JCQXEZGVUNU ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p udp -m comment --comment "kube-system/kube-dns:dns cluster IP" -m udp --dport 53 -j KUBE-MARK-MASQ
-A KUBE-SVC-TCOU7JCQXEZGVUNU -m comment --comment "kube-system/kube-dns:dns -&gt; 10.244.0.2:53" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-YIL6JZP7A3QYXJU2
-A KUBE-SVC-TCOU7JCQXEZGVUNU -m comment --comment "kube-system/kube-dns:dns -&gt; 10.244.0.3:53" -j KUBE-SEP-6E7XQMQ4RAYOWTTM
-A KUBE-SVC-Z4ANX4WAEWEBLCTM ! -s 10.244.0.0/16 -d 10.96.48.86/32 -p tcp -m comment --comment "kube-system/metrics-server:https cluster IP" -m tcp --dport 443 -j KUBE-MARK-MASQ
-A KUBE-SVC-Z4ANX4WAEWEBLCTM -m comment --comment "kube-system/metrics-server:https -&gt; 10.244.1.2:10250" -j KUBE-SEP-BKPAYHGQ3HGBC5MP
admin@Ubuntu:~$</code></pre></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td><p>→List the proc</p>
<pre><code class="language-bash">ls -l /proc/sys/net/ipv4/    # Lists all IPv4 kernel networking parameters in long format (permissions, owner, etc.).</code></pre></td>
</tr>
</tbody>
</table>

### Sysctl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We know that one of the very iportant components of Linux is its ‘kernel’.</p>
<p>→This particular kernel can be tweaked by organizations to control its behaviour.</p>
<p>→These internal settings are often called ‘kernel paremeters’, which can be tweaked by admins.</p>
<p>→The easiest example to interact with ‘kernel parameters’ is ‘<strong>systctl’</strong>.</p>
<p>→This kernel parameters are exposed via /proc/sys and ‘sysctl’ utility can modify these.</p>
<p>→Eg. As below, where we can get some default values under this process. Notice both via ‘cat’ and via ‘sysctl’.</p>
<pre><code class="language-bash">admin@Ubuntu:/proc/sys$ ls -lrt
total 0
dr-xr-xr-x 1 root root 0 Aug  4 13:28 kernel
dr-xr-xr-x 1 root root 0 Aug  4 13:28 fs
dr-xr-xr-x 1 root root 0 Aug  4 13:28 net
dr-xr-xr-x 1 root root 0 Aug  4 13:28 vm
dr-xr-xr-x 1 root root 0 Aug  4 13:30 user
dr-xr-xr-x 1 root root 0 Aug  4 13:30 dev
dr-xr-xr-x 1 root root 0 Aug  4 13:30 debug
dr-xr-xr-x 1 root root 0 Aug  4 13:30 abi
admin@Ubuntu:/proc/sys$ cat /proc/sys/net/ipv4/ip_forward
1
admin@Ubuntu:/proc/sys$ sysctl net.ipv4.ip_forward
net.ipv4.ip_forward = 1
admin@Ubuntu:/proc/sys$
admin@Ubuntu:/proc/sys$</code></pre>
<p>→We can see there are many kernel parameters that can modified. Some of them are as below.</p>
<pre><code class="language-plaintext">admin@Ubuntu:/proc/sys$ ls -lrt net/ipv4
total 0
dr-xr-xr-x 1 root root 0 Aug  4 13:28 conf
-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_forward
-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_local_port_range
-rw-r--r-- 1 root root 0 Aug  4 13:29 ping_group_range
-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_unprivileged_port_start
-rw-r--r-- 1 root root 0 Aug  4 13:37 xfrm4_gc_thresh
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_wmem_min
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_rmem_min
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_mem
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_l3mdev_accept
-r--r--r-- 1 root root 0 Aug  4 13:37 udp_hash_entries
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_early_demux
-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_child_hash_entries</code></pre></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image372.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
</tbody>
</table>

#### Modifying parameters

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><strong>→Temporary modifications.</strong></p>
<p>→Now that we have seen the parameters that can be tweaked, it is important to note that there are ‘temp’ &amp; ‘permanent’ modifications.</p>
<p>→this is one parameter we can modify if we want more ‘page swapping’ onto disk instead of ‘RAM’ driven operations.</p>
<pre><code class="language-bash">admin@Ubuntu:/proc/sys$ sysctl vm.swappiness
vm.swappiness = 10
admin@Ubuntu:/proc/sys$</code></pre></td>
</tr>
<tr>
<td><p><strong>→Permanent modifications.</strong></p>
<p>→We can also make such changes permanent. Below is the the place where we ususally make changes.</p>
<pre><code class="language-bash">admin@Ubuntu:/proc/sys$ cat /etc/sysctl.conf
#
# /etc/sysctl.conf - Configuration file for setting system variables
# See /etc/sysctl.d/ for additional system variables.
# See sysctl.conf (5) for information.
#
#kernel.domainname = example.com
# Uncomment the following to stop low-level messages on console
#kernel.printk = 3 4 1 3
###################################################################
# Functions previously found in netbase
#
# Uncomment the next two lines to enable Spoof protection (reverse-path filter)
# Turn on Source Address Verification in all interfaces to
# prevent some spoofing attacks
#net.ipv4.conf.default.rp_filter=1
#net.ipv4.conf.all.rp_filter=1
# Uncomment the next line to enable TCP/IP SYN cookies
# See http://lwn.net/Articles/277146/
# Note: This may impact IPv6 TCP sessions too
#net.ipv4.tcp_syncookies=1
# Uncomment the next line to enable packet forwarding for IPv4
#net.ipv4.ip_forward=1
# Uncomment the next line to enable packet forwarding for IPv6
#  Enabling this option disables Stateless Address Autoconfiguration
#  based on Router Advertisements for this host
#net.ipv6.conf.all.forwarding=1
###################################################################
# Additional settings - these settings can improve the network
# security of the host and prevent against some network attacks
# including spoofing attacks and man in the middle attacks through
# redirection. Some network environments, however, require that these
# settings are disabled so review and enable them as needed.
#
# Do not accept ICMP redirects (prevent MITM attacks)
#net.ipv4.conf.all.accept_redirects = 0
#net.ipv4.conf.default.accept_redirects = 0
# _or_
# Accept ICMP redirects only for gateways listed in our default
# gateway list (enabled by default)
# net.ipv4.conf.all.secure_redirects = 1
#
# Do not send ICMP redirects (we are not a router)
#net.ipv4.conf.all.send_redirects = 0
#
# Log Martian Packets
#net.ipv4.conf.all.log_martians = 1
#
###################################################################
# Magic system request Key
# 0=disable, 1=enable all, &gt;1 bitmask of sysrq functions
# See https://www.kernel.org/doc/html/latest/admin-guide/sysrq.html
# for what other values do
#kernel.sysrq=438
# VirtualBox VM Optimizations
vm.swappiness=10
vm.dirty_background_ratio=5
vm.dirty_ratio=10
vm.vfs_cache_pressure=50
net.core.rmem_max=16777216
net.core.wmem_max=16777216
admin@Ubuntu:/proc/sys$</code></pre></td>
</tr>
<tr>
<td><p><strong>→Better place for permanent modification is directly affecting here.</strong></p>
<pre><code class="language-bash">admin@Ubuntu:/etc/sysctl.d$ ls
10-bufferbloat.conf       10-magic-sysrq.conf       10-zeropage.conf                      90-omnibus-gitlab-net.core.somaxconn.conf
10-console-messages.conf  10-map-count.conf         90-omnibus-gitlab-kernel.sem.conf     99-sysctl.conf
10-ipv6-privacy.conf      10-network-security.conf  90-omnibus-gitlab-kernel.shmall.conf  README.sysctl
10-kernel-hardening.conf  10-ptrace.conf            90-omnibus-gitlab-kernel.shmmax.conf
admin@Ubuntu:/etc/sysctl.d$
admin@Ubuntu:/etc/sysctl.d$ pwd
/etc/sysctl.d
admin@Ubuntu:/etc/sysctl.d$
admin@Ubuntu:/etc/sysctl.d$ cat 10-kernel-hardening.conf
# These settings are specific to hardening the kernel itself from attack
# from userspace, rather than protecting userspace from other malicious
# userspace things.
#
#
# When an attacker is trying to exploit the local kernel, it is often
# helpful to be able to examine where in memory the kernel, modules,
# and data structures live. As such, kernel addresses should be treated
# as sensitive information.
#
# Many files and interfaces contain these addresses (e.g. /proc/kallsyms,
# /proc/modules, etc), and this setting can censor the addresses. A value
# of "0" allows all users to see the kernel addresses. A value of "1"
# limits visibility to the root user, and "2" blocks even the root user.
kernel.kptr_restrict = 1
# Access to the kernel log buffer can be especially useful for an attacker
# attempting to exploit the local kernel, as kernel addresses and detailed
# call traces are frequently found in kernel oops messages. Setting
# dmesg_restrict to "0" allows all users to view the kernel log buffer,
# and setting it to "1" restricts access to those with CAP_SYSLOG.
#
# dmesg_restrict defaults to 1 via CONFIG_SECURITY_DMESG_RESTRICT, only
# uncomment the following line to disable.
# kernel.dmesg_restrict = 0
admin@Ubuntu:/etc/sysctl.d$</code></pre></td>
</tr>
</tbody>
</table>

#  Advanced: Enable DashBoard

|     |
|-----|
|     |

##  Apply GitHub Official Dashboard Yaml

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Apply the yaml that is provided by official kubernetes.</p>
<pre><code class="language-bash">kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image373.webp" style="width:7.52847in;height:1.91528in" alt="{6AE6A2CD-4D0D-4878-A439-C4306824729F}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

##  Check running pods of Dashboard

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get pods -n kubernetes-dashboard</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image374.webp" style="width:7.52431in;height:0.98611in" alt="{424CE2D2-08EF-45EF-B803-A2D79D62CA8A}" /></p></td>
</tr>
</tbody>
</table>

##  Create SA and CRB

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file with this content</p>
<pre><code class="language-yaml">apiVersion: v1
kind: ServiceAccount
metadata:
  name: dashboard-admin
  namespace: kubernetes-dashboard
automountServiceAccountToken: &lt;removed&gt;
---
apiVersion: v1
kind: Secret
metadata:
  name: dashboard-admin-secret
  namespace: kubernetes-dashboard
  annotations:
    kubernetes.io/service-account.name: dashboard-admin
type: kubernetes.io/service-account-token
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: dashboard-admin-binding
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: dashboard-admin
  namespace: kubernetes-dashboard</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\dashboard-admin-local.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image375.webp" style="width:7.41667in;height:1.28125in" alt="{ED0AF0CA-95D8-46C8-B39C-7A7C33D63FCD}" /></p></td>
</tr>
</tbody>
</table>

##  Fetch The Token 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We will fetch Token. Open a bash terminal so that grep can be run.</p>
<pre><code class="language-bash">kubectl -n kubernetes-dashboard describe secret dashboard-admin-secret | grep -E '^token' | awk '{print $2}'</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image376.webp" style="width:7.525in;height:1.9625in" alt="{8E68B9CE-4825-4D30-9586-8D08BACF4E61}" /></p></td>
</tr>
</tbody>
</table>

##  Start the proxy 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl proxy</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image377.webp" style="width:3.9375in;height:1.13542in" alt="{E6C1246E-8D69-4A60-85CE-A193F308E59C}" /></p></td>
</tr>
</tbody>
</table>

##  Access Dashboard

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Access the dashboard</p>
<p><a href="http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard://proxy/#/login"><u>http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login</u></a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image378.webp" style="width:7.52569in;height:3.52569in" alt="{6590E616-6ADB-43DA-AB7A-291960C29637}" /></p></td>
</tr>
<tr>
<td><p>→Paste the token</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image379.webp" style="width:7.53819in;height:1.89306in" alt="{B9EC9985-8FD8-44FF-AAD9-A11E20CF65FA}" /></p></td>
</tr>
<tr>
<td><p>→Access the dashboard</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image380.webp" style="width:7.54028in;height:4.39028in" alt="{EE98987F-D6CC-4C45-90F7-CA278761F2F7}" /></p></td>
</tr>
<tr>
<td><p>→Notice there are no pods</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image381.webp" style="width:7.53056in;height:2.76528in" alt="{23901786-1835-4690-B70B-21B08F24E8E2}" /></p></td>
</tr>
</tbody>
</table>

##  Spin up a pod - nginx 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a simple file</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  namespace: integrations
  labels:
    app: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">kubectl apply -f .\simple-nginx-pod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image382.webp" style="width:7.05208in;height:2.5in" alt="{D62D5284-F071-4992-851A-3874175AD6C3}" /></p></td>
</tr>
<tr>
<td><p>→Same can be seen on dashboard</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image383.webp" style="width:7.525in;height:1.76181in" alt="{A069CD38-9C34-452E-BFB3-9F48CF8A5198}" /></p></td>
</tr>
</tbody>
</table>

##  Access Nginx - Port forward

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Access the nginx</p>
<pre><code class="language-bash">kubectl port-forward pod/nginx-pod 8080:80 -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image384.webp" style="width:6.72917in;height:1.625in" alt="{A5591E02-3C1F-4BFF-9A30-55FE749FFC41}" /></p>
<p>→Below is the port forwarding where a temporary tunnel is opened and lives as long as the process is there.</p>
<p>→Once we disconnect the tunnel gets terminated.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image385.webp" style="width:7.52847in;height:1.60625in" alt="{8CD42DE8-933A-4254-AA85-68AE57208C0D}" /></p></td>
</tr>
<tr>
<td><p>→What happens when we do the port forwarding</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image386.webp" style="width:5in;height:5.46319in" alt="{A78BA7A4-1236-4F60-AD3C-1919EC84D876}" /></p>
<p>→Kubernetes opens a direct tunnel temporarily for local testing.</p></td>
</tr>
<tr>
<td><p>→On browser access <a href="http://localhost:8080">http://localhost:8080</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image387.webp" style="width:7.53264in;height:2.42222in" alt="{1752ED95-ACEB-4DCD-BF27-193203B618FE}" /></p></td>
</tr>
</tbody>
</table>

##  xxx

|     |
|-----|
|     |

#  CKA - Administration - Kubernetes (ZEAL VORA UDEMY)

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image388.webp" style="width:5.65972in;height:5.53194in" /> |
| →Refer prevous step to install kubernetes using KIND on local setup. |

## K8 Resource Types - Most common

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image389.webp" style="width:7.67569in;height:3.85833in" /></p></td>
</tr>
<tr>
<td><p>→Check resources that come as part of the vanila kubernetes. Notice the resources we commonly use like configmaps, pods, deployments, secrets etc.</p>
<pre><code class="language-bash">kubectl api-resources</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image138.webp" style="width:7.68403in;height:3.72083in" /></p></td>
</tr>
</tbody>
</table>

## What is a manifest

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image390.webp" style="width:7.67917in;height:3.60625in" /> |
| →Above picture compares the delcaration of manifest with a simple pod. |

### Where to get manifests 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to below link where we can find templates for each of the manifests. We can find template for every manifest that we want.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image391.webp" style="width:5.79931in;height:3.39583in" /></p>
<p><a href="https://kubernetes.io/docs/concepts/workloads/pods/">https://kubernetes.io/docs/concepts/workloads/pods/</a></p></td>
</tr>
<tr>
<td><p><a href="https://kubernetes.io/docs/concepts/configuration/secret/">https://kubernetes.io/docs/concepts/configuration/secret/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image392.webp" style="width:5.58611in;height:3.45347in" /></p></td>
</tr>
</tbody>
</table>

### Dry Run 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→This is useful when we want to run a command to see its validity and if it passes or not. For eg. We are running below a pod creation, without actually being created.</p>
<pre><code class="language-bash">kubectl run nginx2 --image=nginx --dry-run=client</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image393.webp" style="width:6.44306in;height:3.23681in" /></p></td>
</tr>
</tbody>
</table>

### Generate Yaml - Kubectl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→While creating a pod we can ask kubectl to generate the yaml output. This will help us understand what exactly it went through and configurations that will be in place.</p>
<pre><code class="language-bash">kubectl run nginx2 --image=nginx -o yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image394.webp" style="width:7.68264in;height:4.40069in" /></p>
<p>→Notice it is created as well.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image395.webp" style="width:7.26042in;height:3.39583in" /></p></td>
</tr>
<tr>
<td><p>→However, if we want to generate yaml ‘without’ actually creating the object, we use ‘with dryrun’</p>
<pre><code class="nohighlight language-bash">kubectl run nginx3 --image=nginx <strong>--dry-run=client</strong> -o yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image396.webp" style="width:7.68472in;height:4.51944in" /></p></td>
</tr>
<tr>
<td><p>→We will have much uses with such generated yamls to understand. Another extension could be writing it to a file</p>
<pre><code class="nohighlight language-bash">kubectl run nginx3 --image=nginx <strong>--dry-run=client</strong> -o yaml &gt; custompod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image397.webp" style="width:7.68125in;height:3.04722in" /></p></td>
</tr>
</tbody>
</table>

### Multi-Container Pod

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can have multiple containers ‘inside’ a single pod</p>
<pre><code class="language-bash">kubectl apply -f 001multi-continainer-pod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image398.webp" style="width:7.67778in;height:2.81111in" /></p></td>
</tr>
<tr>
<td><p>→Yaml looks a simple as like this</p>
<pre><code class="language-yaml">apiVersion: v1
kind: Pod
metadata:
name: multi-container-pod
spec:
containers:
- name: nginx-container
image: nginx
- name: redis-container
image: redis</code></pre></td>
</tr>
</tbody>
</table>

### Entering Multi-Container PODs

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→By default when we enter into a pod that has multiple containers using ‘exec’ command it enters the first pod. If we want to enter into a choice of ours, we need to explicitely mention. Below examples show.</p>
<p>→Notice that it has ‘defaulted’ to first container.</p>
<pre><code class="language-bash">kubectl get pods
kubectl exec -it multi-container-pod -- bash</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image399.webp" style="width:7.67708in;height:2.94514in" /></p></td>
</tr>
<tr>
<td><p>→If we want to enter into specific one, use something like below.</p>
<pre><code class="language-bash">kubectl exec -it multi-container-pod -c redis-container -- bash</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image400.webp" style="width:7.67847in;height:2.13264in" /></p></td>
</tr>
<tr>
<td><p>→Clean up the resources</p>
<pre><code class="language-bash">kubectl delete -f 001multi-continainer-pod.yaml</code></pre></td>
</tr>
</tbody>
</table>

##  Container - CMD and EntryPoints 

|  |
|----|
| →These two concepts are basic and will be used similarly for the PODs. Hence it is important to refresh the concept. |

###  Dockerfile - CMD Instruction

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below is a simple docker file and refreshing the concepts is important.</p>
<p>→If we run a simple ping as below it runs for 3 times and exits.</p>
<p>Imagine if we want the same thing to be done by a docker container, we add them to image. How it is added mentioend ahead.</p>
<pre><code class="language-bash">ping -c 3 google.com
docker ps
docker images</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image401.webp" style="width:7.68333in;height:2.96597in" /></p>
<p>→Let us put the ping command inside an image and test it. Basically the container upon starting will run this command and exits.</p>
<p>→The command goes inside the docker file as highlighted below. This is THE-MOST-SIMPLE-DOCKERFILE</p>
<pre><code class="nohighlight language-plaintext">FROM busybox:latest
<strong>CMD</strong> ["ping", "-c", "3", "google.com"]</code></pre></td>
</tr>
<tr>
<td><p>→Here we have a custom docker file with a <strong>custom name</strong>. We are building a simple image locally using the custom file. Notice the tag -<strong>-file</strong> used in the build command.</p>
<pre><code class="nohighlight language-bash">ls -lrt
cat <strong>002DockerFile</strong>
docker build --<strong>file</strong> 002DockerFile -t busybox:pingtest .
docker ps
docker images</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image402.webp" style="width:7.67153in;height:3.64167in" /></p></td>
</tr>
<tr>
<td><p>→Run the image to see it is working. Notice that the container gets stopped after the command has finished. Same can be seen in docker ps.</p>
<pre><code class="language-bash">docker run busybox:pingtest
docker ps -a</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image403.webp" style="width:7.67569in;height:1.78264in" /></p></td>
</tr>
</tbody>
</table>

###  Dockerfile - ENTRYPOINT Instruction 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→The Entrypoint is the first thing that gets run upon container start. This is being used in conjunction with the CMD.</p>
<p>→Eg. Below docker file runs “/bin/echo” command that prints two words viz., Hello and World</p>
<pre><code class="language-plaintext">FROM ubuntu
ENTRYPOINT ["/bin/echo"]
CMD ["Hello","World"]</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image404.webp" style="width:7.68264in;height:2.34028in" /></p>
<p>→Note that when we provide an argument to the docker run command then the CMD inside the docker file will be overriddent. We will see both as below. First direct run then overriding it</p>
<p>→Let us build it first</p>
<pre><code class="language-bash">docker build --file 003DockerFile -t ubuntu:greetings .
docker images</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image405.webp" style="width:7.67778in;height:3.80972in" /></p></td>
</tr>
<tr>
<td><p>→Direct invocation <strong>without</strong> passing any arguments</p>
<pre><code class="language-bash">docker run ubuntu:greetings</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image406.webp" style="width:7.68125in;height:1.11181in" /></p></td>
</tr>
<tr>
<td><p>→Now with <strong>with</strong> arguments in the command. Notice now in the output, what we passed as arguments get picked and relayed.</p>
<pre><code class="language-bash">docker run ubuntu:greetings Sambarvada and PistaSingh</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image407.webp" style="width:7.68333in;height:1.55694in" /></p></td>
</tr>
</tbody>
</table>

##  Pod - CMD and Args

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Similar to the docker we have the ‘command’ inline argument for kubectl as below.</p>
<p>kubectl run echo-pod --image=busybox:latest --command -- echo "Pista Singh is here"</p>
<pre><code class="language-bash">kubectl get pods
kubectl logs echo-pod
kubectl get pods
kubectl delete pod echo-pod</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image408.webp" style="width:7.68403in;height:2.89444in" /></p></td>
</tr>
<tr>
<td><p>→Note that,  above command is valid for a <strong>quick demo </strong>of passing a command-line argument to a pod. It does echo the string as intended.</p>
<p>→The <strong>crash loop</strong> happens because the pod exits immediately after echoing, and Kubernetes <strong>tries to restart</strong> it unless you specify --restart=Never.</p>
<p>→So for demo purposes, it's fine. Just not ideal for long-running or clean exit behavior.</p>
<p>→If we want more cleaner way use below command</p>
<pre><code class="language-bash">kubectl run echo-pod --image=busybox --restart=Never -- /bin/sh -c 'echo "Pista Singh is here"'</code></pre></td>
</tr>
<tr>
<td><p>→Let us see another command that does same thing.</p>
<p>kubectl run ping-pod --image=busybox:latest --command -- ping "-c" "5" "google.com"</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image409.webp" style="width:7.6875in;height:2.83125in" /></p>
<p>→However, note below observation between two of the command line arguments we sent.</p>
<p>→<strong>echo command:</strong></p>
<p>Executes instantly and exits immediately.</p>
<p>Without --restart=Never, Kubernetes sees the pod exit and assumes failure, triggering a CrashLoopBackOff.</p>
<p>→<strong>ping command:</strong></p>
<p>Runs for a few seconds (5 pings), then exits.</p>
<p>Kubernetes sees it as a successful run because it lasted long enough and exited cleanly.</p>
<p>So yes — echo is cleaner and faster, but too fast for Kubernetes to treat it as a success unless you explicitly tell it not to restart (--restart=Never).</p></td>
</tr>
</tbody>
</table>

###  Ping Pod - Using JSON array notation 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Naviage to directory</p>
<pre><code class="language-bash">cd /media/sf_ws/k8basics/cka
kubectl apply -f 004pingpod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image410.webp" style="width:6.23958in;height:1.35417in" /></p>
<p>→Array notation can be seen in the last line</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image411.webp" style="width:7.67917in;height:3.56806in" /></p></td>
</tr>
<tr>
<td><p>→Check the logs</p>
<pre><code class="language-bash">kubectl logs busybox-pingpod</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image412.webp" style="width:7.68472in;height:1.46181in" /></p></td>
</tr>
</tbody>
</table>

###  Ping Pod - Using Multi Line

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>cd /media/sf_ws/k8basics/cka</p>
<pre><code class="language-bash">kubectl apply -f 005pingpod-multiine.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image413.webp" style="width:7.6875in;height:4.51528in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image414.webp" style="width:3.80208in;height:2.01042in" /></p></td>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image415.webp" style="width:3.69792in;height:2.58333in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Another example comparision of Single line vs Multi-line</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image416.webp" style="width:7.68542in;height:2.42917in" /></p></td>
</tr>
</tbody>
</table>

### Generate YAML using dry run - Validate Command representation

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can see ‘how’ a command is generated by kubernetes. Use below sample or dry-run to generate and see how command is represented.</p>
<p>kubectl run custom-pod --image=busybox:latest --dry-run=client -o yaml --command -- echo "pista singh is here"</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image417.webp" style="width:7.67778in;height:1.84236in" /></p></td>
</tr>
</tbody>
</table>

### Important point - ENTRYPOINT (Dockerfile vs Deployment manifest)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image418.webp" style="width:7.68194in;height:1.02153in" /></p></td>
</tr>
<tr>
<td><p>→Eg. Dockerfile with Entry point defined. In such cases, K8 Deployment file need not be overridden.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image419.webp" style="width:4.88542in;height:1.28125in" /></p></td>
</tr>
<tr>
<td><p>Deployment.yaml</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image420.webp" style="width:4.76042in;height:4.05208in" /></p></td>
</tr>
</tbody>
</table>

##  K8 Resources documentation - CLI Approach 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can figure out about the documentation of various resources of K8 using CLI.</p>
<p>→Eg. Explaining about a pod. Below command details abou all the yaml fields and their brief description.</p>
<pre><code class="language-bash">kubectl explain pod</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image421.webp" style="width:7.67986in;height:4.67986in" /></p></td>
</tr>
<tr>
<td><p>→We can go / navigate to the depth we want. For eg, below is spec and spec.container</p>
<pre><code class="language-bash">kubectl explain pod.spec</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image422.webp" style="width:7.68611in;height:4.89792in" /></p></td>
</tr>
</tbody>
</table>

##  Expose Option 

|     |
|-----|
|     |

###  Docker Expose - Port

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→It is important to mention port of the application that developer expects to receive the traffic in Dockerfile.</p>
<p>→This way the devops team will be able to easily map the ports to hosts.</p>
<p>→If same is not mentioned, it would be difficult to map it, however it is OPTIONAL and INFORMATIONAL only.</p>
<p>→Very important that, the ‘export’ DOES NOT publish any port.</p>
<p>→However, it just <strong>informs</strong> docker about port that app is going to listen to.</p>
<pre><code class="language-bash">docker run -d --name nginx nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image423.webp" style="width:7.68264in;height:2.80625in" /></p></td>
</tr>
<tr>
<td><p>→Notice now the docker ps and the port can be seen as 80, <strong>which is at ‘tcp’ level.</strong></p>
<p>→How did Docker know about this port? It is because this is mentioned in the docker file.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image424.webp" style="width:7.68333in;height:0.90208in" /></p></td>
</tr>
<tr>
<td><p>→Let us validate by describing the manifest. Notice the highlighted section.</p>
<pre><code class="language-bash">docker inspect nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image425.webp" style="width:7.04167in;height:3.65625in" /></p></td>
</tr>
<tr>
<td><p>→Map the container port to host port, once we know the actual container port viz., like above.</p>
<p>→Here, we are mapping port 9090 to 80, meaning any traffic coming on port 9090 goes to 80 on the container.</p>
<pre><code class="language-bash">docker run -d --name nginx2 -p 9090:80 nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image426.webp" style="width:7.68611in;height:1.16042in" /></p></td>
</tr>
</tbody>
</table>

###  POD Expose- Port 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Similar to the container expose, in kubernetes also has similar concept. Let us check the documentation.</p>
<pre><code class="language-bash">kubectl explain pod.spec.containers</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image427.webp" style="width:7.67986in;height:2.09444in" /></p></td>
</tr>
<tr>
<td><p>→Same can be seen in Deployment yaml</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image428.webp" style="width:5.5in;height:2.15625in" /></p></td>
</tr>
</tbody>
</table>

##  Labels / Selectors 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→<em>Labels</em> are key/value pairs that are attached to <a href="https://kubernetes.io/docs/concepts/overview/working-with-objects/#kubernetes-objects">objects</a> such as Pods or any of the resources.</p>
<p>In AWS, the resources (Eg. VPC / Subnet/EC2/EKS/etc) have tags and serve same purpose.</p></td>
</tr>
<tr>
<td><p>→Let us create 3 pods</p>
<pre><code class="language-bash">kubectl run pod1 --image=nginx
kubectl run pod2 --image=nginx
kubectl run pod3 --image=nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image429.webp" style="width:5.9375in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Show labels. Note that we have not mentioned anything explicitely however, K8 has assigned automatically.</p>
<pre><code class="language-bash">kubectl get pods --show-labels</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image430.webp" style="width:5.60417in;height:2.52083in" /></p></td>
</tr>
<tr>
<td><p>→Describe the pod to see more details including the labels. Notice the labels has ‘run=pod1’</p>
<pre><code class="language-bash">kubectl describe pod pod1</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image431.webp" style="width:6.19792in;height:2.95833in" /></p></td>
</tr>
<tr>
<td><p>→Label the pods as per our choice. Eg. Giving a label with Environment</p>
<pre><code class="language-bash">kubectl label pod pod1 env=dev
kubectl label pod pod2 env=staging
kubectl label pod pod3 env=production</code></pre>
<p>→Notice labels being added.</p>
<p>Kubectl get pods --show-labels</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image432.webp" style="width:6.88542in;height:2.92708in" /></p></td>
</tr>
<tr>
<td><p>→Remove Labels, incase they are not needed.</p>
<pre><code class="language-bash">kubectl get pods --show-labels</code></pre>
<p>→Below command removes the label by name ‘env’, attached to pod1. The hiphen symbol signifies to unlabel.</p>
<pre><code class="language-bash">kubectl label pod pod1 env-</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image433.webp" style="width:7.61458in;height:4.0625in" /></p></td>
</tr>
</tbody>
</table>

##  Replica Set 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→This is the object tha maintains stable set of pods in the environment, ensure the configuration set in the replicat set is always maintained.</p>
<p>→There is no ‘command-driven’ creation of replica set.</p>
<p>→Currently YAML driven is supported.</p>
<p>→Note that it maintains ‘fixed’ set of pods unlike HPA, which is dynamic.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image434.webp" style="width:6.59931in;height:2.18542in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">ls -l
kubectl apply -f 006replicaset-with-label.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image435.webp" style="width:7.68611in;height:4.35208in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark><strong>apiVersion</strong>: apps/v1</mark></p>
<pre><code class="nohighlight language-yaml"><mark><strong>kind</strong>: ReplicaSet</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx-replicaset</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>replicas</strong>: 3</mark>
<mark><strong>selector</strong>:</mark>
<mark><strong>matchLabels</strong>:</mark>
<mark><strong>tier</strong>: nginx</mark>
<mark><strong>template</strong>:</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>labels</strong>:</mark>
<mark><strong>tier</strong>: nginx</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: nginx</mark>
<mark><strong>image</strong>: nginx:latest</mark></code></pre></td>
</tr>
<tr>
<td><p>→Here, we are creating a pod using the replicaset.</p>
<p>→The replica set has 3 as number of pods to be maintained at all times.</p>
<p>→How does it maintain? It uses the selector option where it matches with the label called ‘tier’.</p>
<p>→As long as it sees the label ‘tier’ and quantitiy of pods matching, it will stay that way.</p>
<p>→Sooner the pod count reduces or increases it matches with the label and adjusts the count.</p></td>
</tr>
<tr>
<td><p>→Notice below that when we query we get the count appropriately.</p>
<pre><code class="language-bash">kubectl get replicasets</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image436.webp" style="width:7.68542in;height:1.02153in" /></p></td>
</tr>
<tr>
<td><p>→Delete the pods and see them coming back due to ‘replicaset’ managing the same.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image437.webp" style="width:7.3125in;height:3.875in" /></p></td>
</tr>
</tbody>
</table>

### Challenges

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Challenge 1</p></td>
</tr>
<tr>
<td><p>→Another important point here any update to the configuration of replica set yaml file (Eg. Changing the ‘image itself’ does not have any impact. So it must be understood carefully that replica sets only maintains the fixed state of pods.</p>
<p>What it means, is, suppose there are 3 pods running with nginx. Then we made an update to replica set configuration by changing image from ‘nginx’ to ‘httpd’, then it accepts the configuration.</p>
<p>→However, the existing pods will have no effect and remain same with old configuration.</p>
<p>→When a new pod gets created (due to deletion etc), then only the new configuration gets affected.</p></td>
</tr>
<tr>
<td><p>→In order to have a correct way to handle such situations, it is better to ‘scale down’ the replica sets to zero, then update the replicaset with desired configuration etc.</p></td>
</tr>
<tr>
<td><p>Challenge 2</p></td>
</tr>
<tr>
<td><p>→There is no mechansim to rollback to any previou state.</p></td>
</tr>
<tr>
<td><p>Challenge 3</p></td>
</tr>
<tr>
<td><p>→Label collisons could happen in production.</p>
<p>→For instance if we defined a replica set that manages 3 pods that uses labels ‘test-app’. During the deployment an unrelated pod with same label already exists, then the replicaset may create an undesired consequence. For eg. It may delete or incorrect pods will be part of replica sets.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image438.webp" style="width:5.5375in;height:3.3in" /></p>
<p>→In such cases, it is always better to define multiple labels and not single one so that the ‘selector’ will have perfect match then only it starts affecting the pods.</p></td>
</tr>
</tbody>
</table>

##  Deployments

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Deployments are higher level of abstractions ‘over’ the replica sets.</p>
<p>→Basically, what it means is the limitations that we had previously in RS are addressed using the Deployments.</p>
<p>→We knew previously that RS cannot get the changes immediately and cannot do a rolling update.</p>
<p>→However, in Deployments, when created, by default under the hood creates a replica set.</p>
<p>→When a change is made to now Deployment, instead of deleting old ones directly, it creates a new version of it first.</p>
<p>→Once that is created, then only the old one is terminated.</p>
<p>→This feature is called ‘rolling update’</p></td>
</tr>
<tr>
<td><p>→Another important aspect of deployments is, apart from managing ‘replica sets’, it also manages ‘rolling updates’, ‘rollbacks’ and ‘versioning’.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image439.webp" style="width:5.38958in;height:3.04375in" /></p></td>
</tr>
<tr>
<td><p>→Creating a simple deployment using the command line</p>
<pre><code class="language-bash">kubectl create deployment nginx-deployment --image=nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image440.webp" style="width:7.68125in;height:1.75139in" /></p></td>
</tr>
<tr>
<td><p>→Notice the replica sets that is automatically created</p>
<pre><code class="language-bash">kubectl get rs</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image441.webp" style="width:7.68611in;height:1.00694in" /></p></td>
</tr>
<tr>
<td><p>→Generate a new deployment file via command line</p>
<pre><code class="language-bash">kubectl create deployment nginx-deployment --image=nginx --dry-run=client -o yaml &gt; 009deployment.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image442.webp" style="width:7.67431in;height:3.42361in" /></p></td>
</tr>
<tr>
<td><p>→Update the image and notice the results. Here we are updating the image that we used in previous command to ‘httpd:latest’</p>
<pre><code class="language-bash">kubectl set image deployment/nginx-deployment nginx=httpd:latest</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image443.webp" style="width:7.68264in;height:2.4625in" /></p></td>
</tr>
<tr>
<td><p>→Let us say if we have done few more times updated the image and can see the history of rollouts. However, this time when we are updating the image, we have annotated the rootcause, so that it can be viewed as well. This way when we want to revert, we can revert back to appropriate revision</p>
<pre><code class="language-bash">kubectl set image deployment/nginx-deployment nginx=httpd:latest</code></pre>
<p>kubectl annotate deployment/nginx-deployment kubernetes.io/change-cause="Updated nginx container to httpd:latest"</p>
<pre><code class="language-bash">kubectl rollout history deployment nginx-deployment</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image444.webp" style="width:7.68403in;height:2.25625in" /></p></td>
</tr>
<tr>
<td><p>→Revert to appropriate revision, for eg. 3. Notice that existing pod automatically gets terminated and mentioned revision is rolled back.</p>
<pre><code class="language-bash">kubectl rollout undo deployment nginx-deployment --to-revision=3</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image445.webp" style="width:7.68194in;height:2.85139in" /></p></td>
</tr>
<tr>
<td><p>→Notice the Replica sets as well, which will be coherent to number of of different deployments that were exeucted.</p>
<pre><code class="language-bash">kubectl get rs</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image446.webp" style="width:7.36458in;height:1.23958in" /></p></td>
</tr>
<tr>
<td><p>→Delete the deployments</p>
<pre><code class="language-bash">kubectl delete -f 009deployment.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image447.webp" style="width:7.59375in;height:2.66667in" /></p></td>
</tr>
<tr>
<td><p>→Distribution of workloads: K8 automatically distributes workloads to appropriate worker nodes. For eg, below deployment has 4 replicas and we can see it has automaitcally distributed 2 per workernode.</p>
<pre><code class="language-bash">cat 009deployment.yaml
kubectl apply -f 009deployment.yaml
kubectl get pods -o wide</code></pre>
<p>→Notice the NODE column where two pods are on intg-ks-worker and other two on intg-ks-worker2</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image448.webp" style="width:7.68125in;height:3.98819in" /></p></td>
</tr>
</tbody>
</table>

##  Node Selectors

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can schedule pods to specific worker nodes that are available. Notice currently the node does not have any label.</p>
<p><strong>Important</strong>: Assuming if we labeled the nodes and the pod manifest ‘does not have’ any selector, then pods won’t be scheduled.</p>
<pre><code class="language-bash">kubectl describe node intg-ks-worker</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image449.webp" style="width:7.68333in;height:3.30903in" /></p></td>
</tr>
<tr>
<td><p>→Add Label to both the nodes</p>
<pre><code class="language-bash">kubectl get nodes
kubectl label node intg-ks-worker workload_type=normal
kubectl label node intg-ks-worker2 workload_type=confidential</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image450.webp" style="width:7.68194in;height:1.84375in" /></p></td>
</tr>
<tr>
<td><p>→Filtering just the labels that we gave against both the nodes.</p>
<pre><code class="language-bash">kubectl get nodes -o custom-columns=NAME:.metadata.name,WORKLOAD_TYPE:.metadata.labels.workload_type</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image451.webp" style="width:7.6875in;height:0.59306in" /></p></td>
</tr>
<tr>
<td><p>→Deploy manifest that has node selector in it. Notice both the pods are being assigned to workernode 2 where we have defined the label as ‘<strong>confidential’</strong> previously.</p>
<pre><code class="language-bash">kubectl apply -f 010deployment-nodeselector.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image452.webp" style="width:7.67847in;height:2.08472in" /></p></td>
</tr>
<tr>
<td><p>→Once this is tested, remove the labels from the node. This is because, tests ahead may not have the nodeselector mentioned in the manifest and may fail.</p>
<pre><code class="language-bash">kubectl delete -f 010deployment-nodeselector.yaml
kubectl label node intg-ks-worker workload_type-
kubectl label node intg-ks-worker2 workload_type-</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image453.webp" style="width:7.68264in;height:1.7125in" /></p></td>
</tr>
</tbody>
</table>

##  Node Affinity 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→This is slighly advanced configuration vis-a-vis pods scheduling, where we can have a fine grained control on scheduling.</p>
<p>→For instance below are operators that can be used.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image454.webp" style="width:7.68056in;height:2.71458in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Affinity - Required 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below is an example of Node affinity yaml that is required. Meaning, the yaml has configuration that explicitely states that the labels that are available in the yaml, must exists in the Node, then only pods will be scheduled.</p>
<pre><code class="language-bash">kubectl apply -f 011createpod-nodeaffinity-required.yaml
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image455.webp" style="width:7.68264in;height:1.00694in" /></p></td>
</tr>
<tr>
<td><p>→Let us see what logs of the pod say. Notice at the end the message that it could not find the label.</p>
<p><em>“ Warning FailedScheduling 9s default-scheduler 0/3 nodes are available:”</em></p>
<pre><code class="language-bash">kubectl describe pod nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image456.webp" style="width:7.67778in;height:1.51806in" /></p>
<p>Truncated the big screenshot.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image457.webp" style="width:7.68542in;height:0.88889in" /></p></td>
</tr>
<tr>
<td><p>→Now Let us label one of the nodes ‘while pod is in pending state’. Notice once we label it, k8 automatically starts scheduling as one label has matched the node. Remember we are labelling just one node.</p>
<pre><code class="nohighlight language-bash">kubectl get nodes
kubectl label node <strong>intg-ks-worker2 disktype=ssd</strong>
kubectl get pods
kubectl logs nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image458.webp" style="width:5.73403in;height:4.3125in" /></p></td>
</tr>
<tr>
<td><p>→Let us check the labels of the node. Notice it is highlighted below as well .</p>
<pre><code class="language-bash">kubectl get nodes --show-labels</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image459.webp" style="width:7.68264in;height:0.77014in" /></p></td>
</tr>
<tr>
<td><p>→Unlabel the Node</p>
<pre><code class="language-bash">kubectl label node intg-ks-worker2 disktype-</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image460.webp" style="width:7.67431in;height:1.22361in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Pod</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>affinity</strong>:</mark>
<mark><strong>nodeAffinity</strong>:</mark>
<mark><strong>requiredDuringSchedulingIgnoredDuringExecution</strong>:</mark>
<mark><strong>nodeSelectorTerms</strong>:</mark>
<mark><strong>- matchExpressions</strong>:</mark>
<mark><strong>- key</strong>: disktype #These labels must be there on the workernodes</mark>
<mark><strong>operator</strong>: In</mark>
<mark><strong>values</strong>:</mark>
<mark>- ssd</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: nginx</mark>
<mark><strong>image</strong>: nginx</mark></code></pre></td>
</tr>
</tbody>
</table>

###  Affinity - Preferred 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→In case of this option, if the nodes are labeled appropriately then only they get scheduled. There is no strict validation here. Meaning, if it finds a match it schedules in ‘THAT’ particular node. Else, it continues to schedule as per availability of the nodes.</p>
<pre><code class="language-bash">kubectl apply -f 012createpod-nodeaffinity-preferred.yaml
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image461.webp" style="width:7.67708in;height:1.59306in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Pod</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>affinity</strong>:</mark>
<mark><strong>nodeAffinity</strong>:</mark>
<mark><strong>preferredDuringSchedulingIgnoredDuringExecution</strong>:</mark>
<mark><strong>- weight</strong>: 1</mark>
<mark><strong>preference</strong>:</mark>
<mark><strong>matchExpressions</strong>:</mark>
<mark><strong>- key</strong>: disktype #Here, even if labels do not exist, it will be scheduled. m</mark>
<mark><strong>operator</strong>: In</mark>
<mark><strong>values</strong>:</mark>
<mark>- ssd</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: nginx</mark>
<mark><strong>image</strong>: nginx</mark></code></pre></td>
</tr>
</tbody>
</table>

##  Requests and Limits 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→There are usually two challenges</p>
<ol type="1">
<li><p>A specific pod may consume more resources than anticpated affecting other pods.</p></li>
<li><p>A Pod may require specific amount of resources to run its code, where it already knows lower and upper thresholds.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image462.webp" style="width:5.39028in;height:2.13889in" /></p></li>
</ol></td>
</tr>
<tr>
<td><p>→Memory Sample Yaml and its description</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image463.webp" style="width:6.19028in;height:2.925in" /></p></td>
</tr>
<tr>
<td><p>CPU Sample Yaml and its description</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image464.webp" style="width:6.21667in;height:3.15486in" /></p></td>
</tr>
<tr>
<td><p>→Let us see worker node1 cpu limits before scheduling a pod that has limits</p>
<pre><code class="language-bash">kubectl describe node intg-ks-worker</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image465.webp" style="width:7.67431in;height:4.50625in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image466.webp" style="width:7.68333in;height:2.14167in" /></p></td>
</tr>
<tr>
<td><p>→After Scheduling the pod</p>
<pre><code class="language-bash">kubectl apply -f 013pod-with-limits.yaml
kubectl get pods -o wide
kubectl describe node intg-ks-worker</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image467.webp" style="width:7.67917in;height:1.30139in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image468.webp" style="width:7.68472in;height:2.29306in" /></p></td>
</tr>
</tbody>
</table>

##  Priority Class 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image469.webp" style="width:6.47917in;height:2.22917in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl create priorityclass high-priority --value=1000 --description="high priority"
kubectl create priorityclass low-priority --value=100 --description="low priority"</code></pre>
<p>→Once this is done apply the yamls. This has not be tested as we need to have super less speced node.</p>
<pre><code class="language-bash">kubectl apply -f 015pod-with-high-priority.yaml
kubectl apply -f 014pod-with-low-priority.yaml</code></pre></td>
</tr>
<tr>
<td><p>→Low Priority Yaml</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: apps/v1</mark>
<mark><strong>kind</strong>: Deployment</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: low-priority-deploy</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>replicas</strong>: 3</mark>
<mark><strong>selector</strong>:</mark>
<mark><strong>matchLabels</strong>:</mark>
<mark><strong>app</strong>: low-priority</mark>
<mark><strong>template</strong>:</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>labels</strong>:</mark>
<mark><strong>app</strong>: low-priority</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>priorityClassName</strong>: low-priority #Ensure this class is created first</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: busybox</mark>
<mark><strong>image</strong>: nginx</mark>
<mark><strong>resources</strong>:</mark>
<mark><strong>requests</strong>:</mark>
<mark><strong>memory</strong>: "50Mi"</mark>
<mark><strong>cpu</strong>: "30m"</mark></code></pre></td>
</tr>
<tr>
<td><p>→High Priority Yaml</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: apps/v1</mark>
<mark><strong>kind</strong>: Deployment</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: high-priority-deploy</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>replicas</strong>: 3</mark>
<mark><strong>selector</strong>:</mark>
<mark><strong>matchLabels</strong>:</mark>
<mark><strong>app</strong>: high-priority</mark>
<mark><strong>template</strong>:</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>labels</strong>:</mark>
<mark><strong>app</strong>: high-priority</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>priorityClassName</strong>: high-priority #Ensure this class is created first</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: busybox</mark>
<mark><strong>image</strong>: nginx</mark>
<mark><strong>resources</strong>:</mark>
<mark><strong>requests</strong>:</mark>
<mark><strong>memory</strong>: "50Mi"</mark>
<mark><strong>cpu</strong>: "30m"</mark></code></pre></td>
</tr>
</tbody>
</table>

##  Side Car Patterns - Ambassador/Adapter

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→<strong>Sidecar</strong> Pattern: A helper container runs alongside the main container in the same pod, handling auxiliary tasks like logging, proxying, or configuration updates.</p>
<p>→<strong>Ambassador</strong> Pattern: A specialized sidecar that acts as a proxy between the main container and external services, abstracting communication and managing network interactions.</p>
<p>→<strong>Adapter</strong> Pattern: Another form of sidecar that transforms data formats or protocols between the main container and external systems, enabling compatibility and integration.</p>
<p>→Both Ambassador and Adapter are subtypes of the Sidecar pattern, tailored for specific roles.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Ambassdor</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image470.webp" style="width:5.23958in;height:1.8125in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Adapter</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image471.webp" style="width:5.23958in;height:1.625in" /></p></td>
</tr>
</tbody>
</table>

##  Init Containers

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image472.webp" style="width:6.63542in;height:3.41667in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image473.webp" style="width:7.3125in;height:5.23958in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl apply -f 016pod-with-initcontainers.yaml
kubectl get pods -w</code></pre>
<p>→Notice below that before the actual pod gets initialized the other two init containers get started and then completed. Then only the nginx pod gets started.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image474.webp" style="width:7.68611in;height:1.61667in" /></p></td>
</tr>
<tr>
<td><p>→Notice the events that occurred on the pod</p>
<pre><code class="language-bash">kubectl describe pod nginx-pod</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image475.webp" style="width:7.68264in;height:1.4875in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: v1</mark>
<mark><strong>kind</strong>: Pod</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx-pod</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>containers</strong>:</mark>
<mark><strong>- name</strong>: app-container</mark>
<mark><strong>image</strong>: nginx</mark>
<mark><strong>initContainers</strong>:</mark>
<mark><strong>- name</strong>: check-google</mark>
<mark><strong>image</strong>: alpine/curl</mark>
<mark><strong>command</strong>: ["ping", "-c", "10", "google.com"]</mark>
<mark><strong>- name</strong>: check-kubernetes</mark>
<mark><strong>image</strong>: alpine/curl</mark>
<mark><strong>command</strong>: ["curl", "kubernetes.io"]</mark></code></pre></td>
</tr>
</tbody>
</table>

##  Service

|                                      |
|--------------------------------------|
| →Refer previously documented section |

##  Helm - Super High-level (Minimal documentation) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Helm is a package manager which deploys multiple components or object of kubernetes to cluster.</p>
<p>→In order to achieve the same, we need a ‘chart’ that has all the definitions of the package that we want to put in cluster and the ‘helm’ tool itself.</p>
<p>→Below image show a high-level understanding of HELM.</p>
<p>→There are number of publicly available ‘charts’ in public repository just like any basic codebase etc.</p>
<p>→Eg. We can find Charts like Jenkins / Wordpress/mysql/etc.</p>
<p>→For instance if we want to spinup ‘mysql’ in the cluster, we may need to go through multiple steps. Eg. Creation of docker image, pushing to a registry, creating a deployment file then followed by deployment etc.</p>
<p>→With the help of HELM all these steps could be simplified in ‘single-step’.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image476.webp" style="width:5.54722in;height:2.52847in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image477.webp" style="width:3.99931in;height:2.63194in" alt="{C424D291-7D55-4B28-BDE2-63CF050A227E}" /></p></td>
</tr>
<tr>
<td><p>Eg. MySQL</p>
<p>→We can find such images in this place: <a href="https://artifacthub.io/">https://artifacthub.io/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image478.webp" style="width:7.67083in;height:3.42014in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Install HELM 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">mkdir helm
cd helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
ls -l
chmod 700 get_helm.sh
./get_helm.sh
helm version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image479.webp" style="width:7.67708in;height:1.99306in" /></p></td>
</tr>
<tr>
<td><p>→On the personal laptop</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image480.webp" style="width:7.68194in;height:3.12014in" alt="{068E5D51-1329-4BF9-83F5-CAC59811D00B}" /></p></td>
</tr>
</tbody>
</table>

###  Deploy Nginx using HELM 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We have official helm charts on artifact hub and we will use the same. <a href="https://artifacthub.io/">https://artifacthub.io/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image481.webp" style="width:3.82014in;height:3.66944in" alt="{1557D24A-D4A3-4665-8C49-2CCD43D43162}" /></p>
<p>→For eg. Notice this screenshot.</p>
<p>→filter using the ‘official’ and desired package. Eg. Nginx</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image482.webp" style="width:7.68611in;height:5.14931in" alt="{8D630BF7-2AEF-437F-AC15-CE17C8619E0F}" /></p>
<p>→There is an option ‘<strong>Install’</strong>, click the same to get the list of commands for execution.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image483.webp" style="width:7.675in;height:2.53403in" /></p></td>
</tr>
<tr>
<td><p>→Notice the commands and we use the same.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image484.webp" style="width:5.72431in;height:3.85208in" /></p>
<p>→It also container vulnerabilities listed.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image485.webp" style="width:7.67986in;height:8.14028in" alt="{542B656C-0D30-4124-9A91-2C3E058CD3A0}" /></p></td>
</tr>
<tr>
<td><p>→If we want those artifacts from CNCF that are validated by them we can filter using the same.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image486.webp" style="width:7.68333in;height:5.28056in" alt="{F7E065FF-8ABB-48B6-85AC-ED94B13E4994}" /></p>
<p>→another Eg. Of Prometheus</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image487.webp" style="width:7.67847in;height:4.025in" alt="{4408D8BE-0006-46F9-95AD-27807C7D86B3}" /></p></td>
</tr>
<tr>
<td><p>→Commands</p>
<p>→Add bitnami repos that is trusted by many organizations that hosts a centralized repository for various deployments.</p>
<p>→This will be the first step to add the remote repo so that we can directly reference the charts in further commands.</p>
<pre><code class="language-bash">helm repo list</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image488.webp" style="width:7.68125in;height:1.28681in" alt="{3A323929-672F-4855-AE83-E934ADF0FBBD}" /></p>
<pre><code class="language-bash">helm repo add bitnami https://charts.bitnami.com/bitnami</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image489.webp" style="width:5.0625in;height:1.08333in" alt="{A1463D9F-5133-425E-A794-317DA426078D}" /></p>
<pre><code class="language-bash">helm install my-nginx bitnami/nginx --version 22.1.1</code></pre>
<p>→This one is <strong>optional</strong>, which downloads the chart locally, if we want to inspect etc.</p>
<pre><code class="language-bash">helm pull oci://registry-1.docker.io/bitnamicharts/nginx --version 22.1.1</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image490.webp" style="width:7.68056in;height:3.65139in" /></p></td>
</tr>
<tr>
<td><p>→Check all the resources.</p>
<p><strong><u>Important point to note</u></strong>: Given I am running in local, there is ‘no-external-ip’.</p>
<p>→If the context was ‘remote’ eg. EKS / AKS, we would have already gotten an external IP and a LB was also made available.</p>
<pre><code class="language-bash">kubectl get all</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image491.webp" style="width:7.6875in;height:2.32847in" /></p></td>
</tr>
</tbody>
</table>

###  Check the Template 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can check the template of nginx to understand what all configurations have been done.</p>
<p>→We can modify as needed as well.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image492.webp" style="width:7.67083in;height:3.22153in" /></p></td>
</tr>
</tbody>
</table>

###  Undeploy the Nginx using HELM 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can undeploy using below command</p>
<pre><code class="language-bash">helm uninstall my-nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image493.webp" style="width:6.69792in;height:2.39583in" /></p></td>
</tr>
</tbody>
</table>

###  Important Commands

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→This command lists the current charts in context that were used.</p>
<pre><code class="language-bash">helm list</code></pre>
<p>→This command lists the remote repo url that is used.</p>
<pre><code class="language-bash">helm repo list</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image494.webp" style="width:7.68611in;height:0.98819in" /></p></td>
</tr>
<tr>
<td><p>→This command outputs the template that will be used whenever install is run. Here we are using nginx.</p>
<pre><code class="language-bash">helm template bitnami/nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image495.webp" style="width:7.68542in;height:4.14167in" /></p></td>
</tr>
<tr>
<td><p>→Output the template to a yaml file</p>
<pre><code class="language-bash">helm template bitnami/nginx &gt; helm-nginx.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image496.webp" style="width:7.68681in;height:7.1875in" /></p></td>
</tr>
</tbody>
</table>

###  Deploy Nginx using Helm-yaml

|                                                                    |
|--------------------------------------------------------------------|
| Pending - This will be covered in the dedicated HELM documentation |

###  Detailed Documentat

|  |
|----|
| →There is a separate documentation that I have made for HELM as it requires detailed understanding about folder structure etc, followed by a packaging. |

##  Service Accounts and Role Binding 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→By default when a cluster is created, k8 creates number of service accounts.</p>
<p>→Whenever we create a namespace, k8 also creates a ‘default’ service account attached to it.</p>
<p>→Notice the second line where name of service account is ‘default’ as part of ‘integrations’ namespace.</p>
<p>→IMPORTANT: The default service accounts in each namespace <strong>get no permissions</strong> by default other than the default API discovery permissions that Kubernetes grants to all authenticated principals if role-based access control (RBAC) is enabled</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image497.webp" style="width:7.68403in;height:2.18819in" /></p></td>
</tr>
<tr>
<td><p>→Create a custom SA and use it in the pods</p>
<pre><code class="language-bash">kubectl create serviceaccount custom-sa
kubectl get sa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image498.webp" style="width:5.78125in;height:1.8125in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl apply -f 019-pod-with-custom-sa.yaml
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image499.webp" style="width:7.6875in;height:2.01597in" /></p></td>
</tr>
<tr>
<td><p>→Navigate into the pod and let us check the token that is created under the ‘serviceaccounts’ folder.</p>
<pre><code class="language-bash">kubectl exec -it custom-pod -- bash
cd /var/run/secrets/kubernetes.io/serviceaccount/
cat token</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image500.webp" style="width:7.68333in;height:1.96319in" /></p></td>
</tr>
<tr>
<td><p>→We can make use of this token and get cluster objects.</p>
<p>→Note that the hostname should be as shown as our curl is being fired to an endpoint that should be outside, which is k8.</p>
<pre><code class="language-bash">curl -k -H "Authorization: Bearer &lt;removed&gt; /var/run/secrets/kubernetes.io/serviceaccount/token)" https://kubernetes.default.svc/api/v1</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image501.webp" style="width:7.68264in;height:1.93889in" /></p></td>
</tr>
<tr>
<td><p>→Important:</p>
<p>By default:</p>
<ul>
<li><p>All service accounts (including what we created above) can access <strong>ONLY</strong> basic, non-sensitive API endpoints, like:</p>
<ul>
<li><p>/api</p></li>
<li><p>/api/v1</p></li>
<li><p>Discovery endpoints (to list available resources)</p></li>
</ul></li>
<li><p>These are considered read-only and safe for bootstrapping and introspection.</p></li>
</ul>
<p>→To understand better notice below we are trying to access some other apis using the same token and certificate.</p></td>
</tr>
<tr>
<td><pre><code class="language-bash">ls</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image502.webp" style="width:6.36458in;height:0.61458in" /></p>
<p>→Here we are trying to list the PODs under ‘default namespace using the token and certificate (mandatory).</p>
<pre><code class="language-bash">curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt \
-H "Authorization: Bearer &lt;removed&gt; /var/run/secrets/kubernetes.io/serviceaccount/token)" \
https://kubernetes.default.svc/api/v1/namespaces/default/pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image503.webp" style="width:7.68681in;height:1.62083in" /></p></td>
</tr>
<tr>
<td><p>→Another important aspect here is, when a pod is deployed and a namespace is ‘not’ defined automatically the ‘default’ service account gets assigned to the pod.</p></td>
</tr>
</tbody>
</table>

###  Managing Custom Service Account to Pod

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can create a custom service account as below.</p>
<pre><code class="language-bash">kubectl create serviceaccount custom-sa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image504.webp" style="width:6.73958in;height:1.9375in" alt="{E4C32F77-50BB-4141-94E7-E84486881CA6}" /></p></td>
</tr>
<tr>
<td><p>→Create a custom pod and add our newly created service account to it.</p>
<pre><code class="language-bash">kubectl run custom-pod --image=nginx --dry-run=client -o yaml &gt; custom-sa-pod.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image505.webp" style="width:7.525in;height:3.18056in" alt="{FE1214F7-3CF3-4616-8329-372B62207F50}" /></p></td>
</tr>
<tr>
<td><p>→Edit the file and add the line ‘serviceAccountName’ and add our newly created SA.</p>
<p>→Remove for now those lines that are not required and keep it simple as below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image506.webp" style="width:4.20833in;height:2.82292in" alt="{90DC1D12-0BEA-4D5A-A6D1-F854A9265E11}" /></p>
<p>→Describe the pod and we can see the custom service account is bound.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image507.webp" style="width:7.53472in;height:4.00764in" alt="{BEE7B143-7930-4265-98FD-779645A6DB84}" /></p></td>
</tr>
<tr>
<td><p>→Named Port: A named port in a Kubernetes Pod is simply a human-readable label assigned to a container port. Instead of referring to a port by number (e.g., 8080), other Kubernetes resources can refer to it by name (e.g., http).</p>
<pre><code class="language-yaml">Eg.
containers:
- name: app
image: my-app
ports:
- containerPort: 8080
name: http</code></pre>
<p>→Can be referred in a service as below.</p>
<pre><code class="language-yaml">spec:
ports:
- port: 80
targetPort: http</code></pre>
<h3 id="why-use-named-ports">→Why use named ports?</h3>
<ul>
<li><p>Readability: http or metrics is clearer than 8080 or 9090.</p></li>
<li><p>Maintainability: If the container's actual port changes (say from 8080 to 8000), you only update the Pod spec; resources referring to http don't need to change.</p></li>
<li><p>Consistency: Useful when multiple containers or workloads expose standard functions like http, https, or metrics.</p></li>
</ul></td>
</tr>
</tbody>
</table>

###  Role - Rolebinding to SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→As seen above, our service account (custom one) created does not have permissions to list the pod.</p>
<p>→In order to elevate the SA, we need to create some roles and bind them to SA.</p>
<p>→Below steps are simple ones to define a role and bind them to SA.</p>
<p>→Subsequently we can see if it is applied.</p>
<p>→Very important, the ‘role’ is ‘NAMESPACE’ scoped. Meaning when we define permissions it will be NAMESPACE SPECIFIC.</p></td>
</tr>
<tr>
<td><p>→Create a role</p>
<pre><code class="language-bash">kubectl apply -f 019a-pod-reader-role.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image508.webp" style="width:7.68264in;height:0.34375in" /></p>
<p>→Create a role-binding</p>
<pre><code class="language-bash">kubectl apply -f 019b-pod-reader-role-binding-to-sa.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image509.webp" style="width:7.68681in;height:0.32153in" /></p></td>
</tr>
<tr>
<td><p>→Rerun the command and we will not get the error.</p>
<pre><code class="language-bash">curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt \
-H "Authorization: Bearer &lt;removed&gt; /var/run/secrets/kubernetes.io/serviceaccount/token)" \
https://kubernetes.default.svc/api/v1/namespaces/default/pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image510.webp" style="width:7.67569in;height:1.48819in" /></p></td>
</tr>
<tr>
<td><p>→Yamls</p>
<pre><code class="nohighlight language-yaml"><mark># pod-reader-role.yaml</mark>
<mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark>
<mark><strong>kind</strong>: Role</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: pod-reader</mark>
<mark><strong>namespace</strong>: default</mark>
<mark><strong>rules</strong>:</mark>
<mark><strong>- apiGroups</strong>: [""]</mark>
<mark><strong>resources</strong>: ["pods"]</mark>
<mark><strong>verbs</strong>: ["get", "list", "watch"]</mark></code></pre></td>
</tr>
<tr>
<td><p>→Yamls</p>
<pre><code class="nohighlight language-yaml"><mark># pod-reader-binding.yaml</mark>
<mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark>
<mark><strong>kind</strong>: RoleBinding</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: pod-reader-binding</mark>
<mark><strong>namespace</strong>: default</mark>
<mark><strong>subjects</strong>:</mark>
<mark><strong>- kind</strong>: ServiceAccount</mark>
<mark><strong>name</strong>: custom-sa</mark>
<mark><strong>namespace</strong>: integrations</mark>
<mark><strong>roleRef</strong>:</mark>
<mark><strong>kind</strong>: Role</mark>
<mark><strong>name</strong>: pod-reader</mark>
<mark><strong>apiGroup</strong>: rbac.authorization.k8s.io</mark></code></pre></td>
</tr>
</tbody>
</table>

###  Cluster Role - ClusterRole Binding to SA 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note that the ‘role’ we created is specific to namespaces only. But if we want this to be applied to entire cluster then we need to define something called, cluster role and then do a ‘cluster role bindings’</p>
<pre><code class="language-bash">kubectl apply -f 019c-pod-reader-cluster-role.yaml
kubectl apply -f 019d-pod-reader-cluster-role-binding-to-sa.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image511.webp" style="width:7.67986in;height:1.59861in" /></p></td>
</tr>
<tr>
<td><p>→Listing pods from any other namespace as we have now given role and role binding to cluster level.</p>
<pre><code class="nohighlight language-bash">curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt -H "Authorization: Bearer &lt;removed&gt; /var/run/secrets/kubernetes.io/serviceaccount/token)" <a href="https://kubernetes.default.svc/api/v1/namespaces/kube-system/pods">https://kubernetes.default.svc/api/v1/namespaces/<strong>kube-system</strong>/pods</a></code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image512.webp" style="width:7.68403in;height:1.39931in" /></p></td>
</tr>
<tr>
<td><p>→Yamls. IMPORTANT: NOTICE HERE THERE IS NO NAMESPACE UNDER METADATA</p>
<pre><code class="nohighlight language-yaml"><mark># clusterrole.yaml</mark>
<mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark>
<mark><strong>kind</strong>: ClusterRole</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: pod-reader-global</mark>
<mark><strong>rules</strong>:</mark>
<mark><strong>- apiGroups</strong>: [""]</mark>
<mark><strong>resources</strong>: ["pods"]</mark>
<mark><strong>verbs</strong>: ["get", "list", "watch"]</mark></code></pre></td>
</tr>
<tr>
<td><p>→Yamls. IMPORTANT: NOTICE HERE THERE IS NO NAMESPACE UNDER METADATA</p>
<pre><code class="nohighlight language-yaml"><mark># clusterrolebinding.yaml</mark>
<mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark>
<mark><strong>kind</strong>: ClusterRoleBinding</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: pod-reader-global-binding</mark>
<mark><strong>subjects</strong>:</mark>
<mark><strong>- kind</strong>: ServiceAccount</mark>
<mark><strong>name</strong>: custom-sa</mark>
<mark><strong>namespace</strong>: integrations # your service account's namespace</mark>
<mark><strong>roleRef</strong>:</mark>
<mark><strong>kind</strong>: ClusterRole</mark>
<mark><strong>name</strong>: pod-reader-global</mark>
<mark><strong>apiGroup</strong>: rbac.authorization.k8s.io</mark></code></pre></td>
</tr>
</tbody>
</table>

##  Metrcis Server 

|                                                              |
|--------------------------------------------------------------|
| →Already covered above. Refer : 8.5.13Install metrics Server |

##  HPA 

|                          |
|--------------------------|
| →Refer previous sections |

##  VPA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image513.webp" style="width:7.68611in;height:4.225in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image514.webp" style="width:7.68472in;height:4.89097in" /></p></td>
</tr>
</tbody>
</table>

### Install using Helm 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td></td>
</tr>
<tr>
<td><p>→VPA is part of the Kubernetes Autoscaler project, but it’s not included in the core Kubernetes distribution. We need to manually install its components (CRDs and controllers) to use it.</p>
<p>→If we are working in a <strong>managed Kubernetes</strong> environment (like GKE, EKS, or AKS), some platforms offer VPA as a built-in feature or via easy integration.</p>
<p>→VPA is more complex and can conflict with HPA if not carefully managed, so it's offered as an optional add-on</p>
<p>→VPA is used for</p>
<blockquote>
<p>→Automatically adjusting CPU / Memory requests and limits for pods.</p>
<p>→Helping prevent resource over / under-provisioning.</p>
</blockquote>
<p>→This is useful when the workloads have ‘unpredictable’ or ‘changing’ resource needs.</p>
<p>→In simple sense, VPA ‘tunes’ pod size and HPA ‘scales’ pod count.</p>
<p>→Eg. An ML app starts small but grows in memory usage as models load. If we set ‘low memory limits’ initially, and when models grow, the pod may run into OOM. In such case we cannot go for HPA as this would again result in same issue. Hence, for such growing demands for PODs, VPA comes to resucue, where it adjusts the ‘memory’ requirements. Further, VPA can adjust CPU as well.</p></td>
</tr>
<tr>
<td><p>→Install CRD for VPA using HELM</p>
<pre><code class="language-bash">helm repo add fairwinds-stable https://charts.fairwinds.com/stable
helm repo list</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image515.webp" style="width:7.67778in;height:2.24097in" /></p></td>
</tr>
<tr>
<td><p>→Install the HPA</p>
<pre><code class="language-bash">helm install vpa fairwinds-stable/vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image516.webp" style="width:7.68542in;height:3.17708in" /></p></td>
</tr>
<tr>
<td><p>→Validate the installation by running ‘get vpa’. If it is installed, we will not get any error, but below message, which is valid.</p>
<pre><code class="language-bash">kubectl get vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image517.webp" style="width:5.35417in;height:0.91667in" /></p></td>
</tr>
<tr>
<td><p>→create the deployment and we can see two pods getting created. The other pods are part of VPA CRD that were created. Ideally they should be in different namespace, but I wrongly executed.</p>
<pre><code class="language-bash">kubectl create -f 022a-vpa-ready-nginx-deployment.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image518.webp" style="width:7.68542in;height:2.86042in" /></p></td>
</tr>
<tr>
<td><p>→Create the VPA configuration. Notice that the mode is set to ‘off’</p>
<pre><code class="language-bash">kubectl create -f 022b-vpa-for-nginx-deployment.yaml
kubectl get vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image519.webp" style="width:7.68611in;height:1.02361in" /></p></td>
</tr>
<tr>
<td><p>→Let us check the VPA as it also recommends what can be a better value for cpu and memory.</p>
<p><mark>THIS PART NOT CLEAR</mark></p>
<p>→Note that the update policy has update mode as off, so it does not touch the pods.</p>
<p>→The moment we change it to ‘auto’ it starts introspecting the pods and then it adjusts the limits of the pods.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image520.webp" style="width:6.63542in;height:6.69792in" /></p></td>
</tr>
<tr>
<td><p>→To test the same, let us open two windows one where we watch the pods and other terminal we modify the policy to ‘auto’.</p>
<p>→Edit the vpa as shown</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image521.webp" style="width:7.67431in;height:1.19792in" /></p></td>
</tr>
<tr>
<td><p>→Changed to ‘auto’ Save it. Esc + :wq!</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image522.webp" style="width:6.44792in;height:2.77083in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image523.webp" style="width:7.45833in;height:1.20833in" /></p></td>
</tr>
<tr>
<td><p>→After sometime notice on the right the pods gets terminated and new pods get created.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image524.webp" style="width:7.67778in;height:1.87917in" /></p></td>
</tr>
<tr>
<td><p>→Break the watch and get the pods. Notice now, they are just two</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image525.webp" style="width:6.89583in;height:1.41667in" /></p></td>
</tr>
<tr>
<td><p>→Remove all the deployments.</p>
<p><mark>--&gt; MORE UNDERSTANDING IS NEEDED AND ALSO TO BE TESTED PROPERLY once more.</mark></p></td>
</tr>
</tbody>
</table>

### Install using the AutoScaler from K8

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→There is already a repo that helps us install the VPA. <a href="https://github.com/kubernetes/autoscaler">https://github.com/kubernetes/autoscaler</a></p>
<p>→For our case we are interested in this : <a href="https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler">https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler</a></p>
<p>→Check if VPA is available or not. By default it will not be available.</p>
<pre><code class="language-bash">kubectl get vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image526.webp" style="width:4.625in;height:0.88542in" alt="{F7ED8EE0-C018-487A-81D1-8303E02601E6}" /></p>
<p>→Clone below repository to k8 environment.</p>
<p><a href="https://github.com/kubernetes/autoscaler.git">https://github.com/kubernetes/autoscaler.git</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image527.webp" style="width:7.52778in;height:3.92431in" alt="{F0EF140D-1FCA-4D99-9955-0ABFA3C97F8F}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to the ‘vertical-pod-autoscaler’ folder as below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image528.webp" style="width:6.52083in;height:7.14583in" alt="{F78DEB6A-89D5-44FB-AC9A-AC9AD76090B5}" /></p></td>
</tr>
<tr>
<td><p>→run the script</p>
<pre><code class="language-plaintext">/hack/vpa-up.sh</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image529.webp" style="width:7.53472in;height:6.38125in" alt="{60ED0CA3-ABF3-42FC-8427-88FC6B678328}" /></p></td>
</tr>
<tr>
<td><p>→Re-run below command and notice we are not getting the same error as previously we gotten.</p>
<pre><code class="language-bash">kubectl get vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image530.webp" style="width:6.52083in;height:1.11458in" alt="{4CB8F9DE-069C-4B87-A650-FCF902ED4C06}" /></p></td>
</tr>
<tr>
<td><p>→Create a yaml with this content</p>
<pre><code class="language-yaml">apiVersion: apps/v1
kind: Deployment
metadata:
name: nginx-deployment
spec:
replicas: 2
selector:
matchLabels:
app: nginx
template:
metadata:
labels:
app: nginx
spec:
containers:
- name: nginx
image: nginx:latest
resources:
requests:
cpu: "50m"
memory: "50Mi"</code></pre>
<p>→Save this file to a specific directory</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image531.webp" style="width:5.96875in;height:1.65625in" alt="{FE5A23A1-CBDE-4F09-A89A-0BA7CFA0299B}" /></p>
<p>→Create the deployment</p>
<pre><code class="language-bash">kubectl create deployment -f nginx-deployment.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image532.webp" style="width:7.13542in;height:3.22917in" alt="{7D34F8C4-7EAB-4AA1-BBD2-FA190A8D1540}" /></p></td>
</tr>
<tr>
<td><p>→Update modes of VPA</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image533.webp" style="width:5.8125in;height:2.44792in" alt="{709317BD-D72E-4D56-B684-498D239C8168}" /></p></td>
</tr>
<tr>
<td><p><strong>→STEP 1: Create VPA with updateMode to OFF</strong></p>
<p>→Save the contents of VPA to a file as below.</p>
<pre><code class="language-yaml">apiVersion: "autoscaling.k8s.io/v1"
kind: VerticalPodAutoscaler
metadata:
name: nginx-vpa
spec:
targetRef:
apiVersion: "apps/v1"
kind: Deployment
name: nginx-deployment
updatePolicy:
updateMode: "Off"</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image534.webp" style="width:5.63542in;height:4.80208in" alt="{A8B1EA13-F872-47D1-93DE-841F52B54D1E}" /></p></td>
</tr>
<tr>
<td><p>→Create the vpa and check the vpa. Notice that it takes the Memory and CPU to be updated, it takes a bit of time.</p>
<pre><code class="language-bash">kubectl create -f vpa.yaml
kubectl get vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image535.webp" style="width:5.90625in;height:1.72917in" alt="{67798CF3-6589-443C-A008-5EE7EFF702E1}" /></p>
<p>→After few mins</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image536.webp" style="width:5.35417in;height:0.96875in" alt="{F31D8235-11B4-487B-9E76-1746EE3C2F60}" /></p></td>
</tr>
<tr>
<td><p>→Check what recommendations does the VPA that has been configured gives us.</p>
<p>→Notice there are few recommendations being provided.</p>
<pre><code class="language-bash">kubectl describe vpa nginx-vpa</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image537.webp" style="width:6.27083in;height:7.45833in" alt="{3C15E57A-4FC2-4D58-B6D0-AFECD5C0DF9B}" /></p></td>
</tr>
<tr>
<td><p><strong>→STEP 2: Update VPA with updateMode to Auto</strong></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image538.webp" style="width:3.80208in;height:2.79167in" alt="{47232F05-1C36-4C67-B5EF-8A23597D4337}" /></p>
<p>→then re apply</p>
<pre><code class="language-bash">kubectl apply -f vpa.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image539.webp" style="width:7.53819in;height:1.04792in" alt="{47313FD2-A733-4891-A41E-B4DA0723FD51}" /></p></td>
</tr>
<tr>
<td><p>→Notice now the yaml that has ‘auto’ being updated.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image540.webp" style="width:7.53333in;height:5.58889in" alt="{CC29FD31-BAA6-4149-8F32-15101DD7BA6C}" /></p></td>
</tr>
<tr>
<td><p>→Describe a pod and we can see the requests is updated.</p>
<pre><code class="language-bash">kubectl describe pod nginx-deployment-7bf7f4549-2kmtn</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image541.webp" style="width:7.53333in;height:6.4125in" alt="{76532C65-E19D-4A88-AA50-6473F741B3AE}" /></p></td>
</tr>
<tr>
<td><p>→Delete the resources</p>
<pre><code class="language-bash">kubectl delete -f nginx-deployment.yaml
kubectl delete -f vpa.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image542.webp" style="width:7.53889in;height:0.91042in" alt="{9C58E2A7-C59B-4DE2-BE91-B0002EC2A598}" /></p></td>
</tr>
<tr>
<td><p>→Delete the VPA</p>
<pre><code class="language-plaintext">./hack/vpa-down.sh</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image543.webp" style="width:7.53611in;height:5.28542in" alt="{75D5C604-6D7E-4ACC-8953-8F44407517C8}" /></p></td>
</tr>
</tbody>
</table>

##  Gateway API (Advance version of Ingress Service) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Typical Ingress, mainly handles HTTP and HTTPS traffic and lacks advanced traffic management features vis-a-vis protocols like tcp / udp / grpc / etc.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image544.webp" style="width:7.47917in;height:2.47917in" /></p></td>
</tr>
<tr>
<td><p>→To overcome those problems and provide additional features like support to L4 and L7 protocols including TCP, UDP, HTTP, gRPC Gateway API can be used.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image545.webp" style="width:7.67708in;height:2.75in" /></p></td>
</tr>
<tr>
<td><p>→It has some additional features like Weighted traffic routing, where a particular service can get more traffic over other.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image546.webp" style="width:7.67917in;height:2.61181in" /></p></td>
</tr>
<tr>
<td><p>→Structrure of Gateway API</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Two important connections viz., DownStream and UpStream.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image548.webp" style="width:7.68611in;height:1.14375in" /></p></td>
</tr>
<tr>
<td><p>→TLS Termination Modes (Passthrough or Terminate)</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image549.webp" style="width:7.68056in;height:2.82153in" /></p></td>
</tr>
<tr>
<td><p>→TLS Comparisions</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image550.webp" style="width:7.68125in;height:4.50278in" /></p>
<p>→Protocol vs Mode support.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image551.webp" style="width:7.68542in;height:1.65069in" /></p></td>
</tr>
<tr>
<td><p>→We have many implementation controllers as defined at this page and we will in below practice ‘Nginx Gateway Fabric’: <a href="https://gateway-api.sigs.k8s.io/implementations/">https://gateway-api.sigs.k8s.io/implementations/</a></p>
<p>→If we are using something like EKS, then we would choose the appropriate one. Eg. Amazon Elastic Kubernetes Service Controller (4<sup>th</sup> option)</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image552.webp" style="width:5.83889in;height:4.69236in" /></p></td>
</tr>
<tr>
<td><p>→Install the Gateway API using below endpoints. Navigate to the K8 official documentation as : <a href="https://gateway-api.sigs.k8s.io/implementations/#nginx-gateway-fabric">https://gateway-api.sigs.k8s.io/implementations/#nginx-gateway-fabric</a></p>
<p>→Then followed by: <a href="https://github.com/nginx/nginx-gateway-fabric">https://github.com/nginx/nginx-gateway-fabric</a>. Click the install option.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image553.webp" style="width:7.68056in;height:4.93056in" /></p></td>
</tr>
<tr>
<td><p>→We get below page. : <a href="https://docs.nginx.com/nginx-gateway-fabric/install/">https://docs.nginx.com/nginx-gateway-fabric/install/</a></p>
<p>→Below example shows installation using ‘helm’. So, click the second box.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image554.webp" style="width:4.80347in;height:3.39236in" /></p></td>
</tr>
<tr>
<td><p>→We get this page : <a href="https://docs.nginx.com/nginx-gateway-fabric/install/helm/">https://docs.nginx.com/nginx-gateway-fabric/install/helm/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image555.webp" style="width:7.68125in;height:3.39444in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Create Gateway Class

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image556.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces and notice we have basic ones.</p>
<pre><code class="language-bash">kubectl get ns</code></pre></td>
</tr>
<tr>
<td><p>→Run below commands</p>
<pre><code class="language-bash">kubectl kustomize "https://github.com/nginx/nginx-gateway-fabric/config/crd/gateway-api/standard?ref=v2.2.0" | kubectl apply -f -
helm install ngf oci://ghcr.io/nginx/charts/nginx-gateway-fabric --create-namespace -n nginx-gateway
kubectl wait --timeout=5m -n nginx-gateway deployment/ngf-nginx-gateway-fabric --for=condition=Available</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image557.webp" style="width:7.675in;height:3.92361in" /></p></td>
</tr>
<tr>
<td><p>→Check the installation</p>
<pre><code class="nohighlight language-bash">kubectl get pods -n nginx-gateway
kubectl get crds | grep gateway.nginx.org
kubectl get <strong>gatewayclasses</strong>
kubectl get svc -n nginx-gateway</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image558.webp" style="width:7.58333in;height:2.84375in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image559.webp" style="width:7.68194in;height:0.70208in" /></p></td>
</tr>
</tbody>
</table>

###  Create Gateway 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image560.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Check the existing configuration</p>
<pre><code class="language-bash">kubectl get pods -n nginx-gateway
kubectl get gatewayclass
kubectl describe gatewayclass nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image561.webp" style="width:7.68264in;height:6.61181in" /></p></td>
</tr>
<tr>
<td><p>→Create the gateway. Navigate to the place where yaml is created.</p>
<pre><code class="language-bash">cd /media/sf_ws/k8basics/cka
kubectl apply -f 023a-gateway.yaml
kubectl get gateways</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image562.webp" style="width:7.68403in;height:3.05972in" /></p>
<p>→Here, given we are testing in local k8, we will not get any public address. If it is done on EKS / AKS etc, a public IP will be populated.</p></td>
</tr>
<tr>
<td><p>→It is important to check the gateway class name and it should match with what has been configured in previous step.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image563.webp" style="width:7.68056in;height:0.79514in" /></p></td>
</tr>
<tr>
<td><p>→YAML files</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1beta1</mark>
<mark><strong>kind</strong>: Gateway</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: nginx-gateway</mark>
<mark><strong>namespace</strong>: default</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>gatewayClassName</strong>: <strong>nginx</strong></mark>
<mark><strong>listeners</strong>:</mark>
<mark><strong>- name</strong>: http</mark>
<mark><strong>protocol</strong>: HTTP</mark>
<mark><strong>port</strong>: 80</mark></code></pre></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Create BE service

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Before we create route, we need to create a BE service. We will create a simple httpd service as below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image564.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl get pods
kubectl create deployment apache --image=httpd:latest --port=80
kubectl expose deployment apache --name=apache-service --port=80 --target-port=80 --type=ClusterIP
kubectl get pods
kubectl get svc</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image565.webp" style="width:7.68611in;height:1.99583in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Create Route 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image566.webp" /><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p>
<p>What we are going to do is, attaching the gateway and service for necessary routing.</p>
<p>Notice below we have a prentRef that is pointing to the Gateway associated and then the rules are simple ones like any request coming in gets routed to a backend service.</p></td>
</tr>
<tr>
<td><p>→YAML files</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1beta1</mark>
<mark><strong>kind</strong>: HTTPRoute</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: apache-route</mark>
<mark><strong>namespace</strong>: default</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>parentRefs</strong>:</mark>
<mark><strong>- name</strong>: nginx-gateway</mark>
<mark><strong>rules</strong>:</mark>
<mark><strong>- matches</strong>:</mark>
<mark><strong>- path</strong>:</mark>
<mark><strong>type</strong>: PathPrefix</mark>
<mark><strong>value</strong>: /</mark>
<mark><strong>backendRefs</strong>:</mark>
<mark><strong>- name</strong>: apache-service</mark>
<mark><strong>port</strong>: 80</mark></code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl create -f 023b-route.yaml
kubectl get httproute</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image567.webp" style="width:7.68472in;height:1.44861in" /></p></td>
</tr>
<tr>
<td><p>→Test the route. Below I tested inside the ubuntu machine as we need to do the portforwarding.</p>
<pre><code class="language-bash">kubectl get svc
kubectl port-forward svc/nginx-gateway-nginx 8080:80</code></pre>
<p>→In a different terminal</p>
<pre><code class="language-bash">curl http://localhost:8080/</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image568.webp" style="width:7.68611in;height:3.01111in" /></p></td>
</tr>
<tr>
<td><p>→Test 2: Using another POD to communicate, like from inside the pod but to another service.</p>
<p>→Here it is important to pass the ‘Host’ header else it will fail. Also notice the IP is of Service.</p>
<pre><code class="nohighlight language-bash">kubectl get pods -o wide
kubectl get svc
kubectl run curl --image=alpine/curl -- sleep 36000
kubectl exec -it curl -- sh
curl -H "Host: <strong>apache.example.com</strong>" http://10.96.126.194/</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image569.webp" style="width:7.67778in;height:4.15486in" /></p></td>
</tr>
</tbody>
</table>

###  TLS Configuration of Gateway API 

|     |
|-----|
|     |

####  TLS Configuration - Gateway API

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image570.webp" style="width:7.67986in;height:1.14167in" /></p></td>
</tr>
<tr>
<td><p>→As seen in above diagram, <strong>downstream</strong>: This is the connection between the client and the Gateway. <strong>upstream</strong>: This is the connection between the Gateway and backend resources</p></td>
</tr>
<tr>
<td><p>→Two important modes.</p>
<p>→When it is pass through mode the, termination occurs at POD. In such cases, the payload cannot be introspected and we may loose many features of the Gateway API component.</p>
<p>→When it is TLS Terminate mode, then it occurs at the Gateway API level, when introspection can happen and take advantage of various features.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image571.webp" style="width:7.6875in;height:2.77153in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image572.webp" style="width:2.67708in;height:1.16667in" /> <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image573.webp" style="width:2.69792in;height:1in" /></p></td>
</tr>
<tr>
<td><p>→More information aroud secrets can be found here.</p>
<p><a href="https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets">https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets</a></p>
<p>→A typical TLS Secret has below information to be provided, where the ‘.crt’ takes the public key details and ‘.key’ takes the private key details’.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image574.webp" style="width:6.08056in;height:3.03611in" /></p></td>
</tr>
<tr>
<td><p>→next question is where do we add this? We add it to the Gateway if we want Gateway API component to have TLS termination.</p>
<p><mark>→Once we configure we can see these details as shown below snippet. Below is the gateway that we have conifugred.</mark></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image575.webp" style="width:5.58333in;height:0.9375in" /></p></td>
</tr>
</tbody>
</table>

####  Modify the gateway yaml to add https 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="nohighlight language-bash"><mark>kubectl describe gateway nginx-gateway</mark></code></pre>
<p><mark>→Describe the gateway and check the current ‘spec’ section for listeners. Notice below it is only http.</mark></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image576.webp" style="width:5.01875in;height:3.88958in" /></p></td>
</tr>
<tr>
<td><p>→Edit the gateway configuration and add the additional listerners as shown.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image577.webp" style="width:7.125in;height:0.65625in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image578.webp" style="width:4.99444in;height:3.34792in" /></p></td>
</tr>
<tr>
<td><p>→After adding and saving same can be seen now.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image579.webp" style="width:5.64167in;height:5.23264in" /></p></td>
</tr>
</tbody>
</table>

####  Create TLS Certificate / Key using Open SSL 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout tls.key -out tls.crt -subj "/CN=example.internal/O=example-org"</code></pre>
<p>→we will get two files generate one is public key and other one is private key.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image580.webp" style="width:7.68542in;height:3.38264in" /></p></td>
</tr>
</tbody>
</table>

####  Create the Secret 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl create secret tls example-tls --cert=tls.crt --key=tls.key -n default</code></pre>
<p>→Create a secret and reference the created public and private key as shown.</p>
<p>→Important to note is ‘secret type’ here should be ‘tls’ as there are other types like opaque etc.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image581.webp" style="width:7.67917in;height:1.44306in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

####  Create a BE and expose as service 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl create deployment nginx --image=nginx:latest --port=80
kubectl expose deployment nginx --name=nginx-service --port=80 --target-port=80 --type=ClusterIP
kubectl get pods -o wide
kubectl get svc</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image582.webp" style="width:7.68333in;height:2.13611in" /></p></td>
</tr>
</tbody>
</table>

####  Remove any existing Gateway and Routes 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get gateway
kubectl get httproute
kubectl delete gateway nginx-gateway
kubectl delete httproute apache-route
kubectl get pods
kubectl get deployments
kubectl delete deployment apache
kubectl get pods</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image583.webp" style="width:5.78889in;height:4.44097in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

####  Create Gateway and http route

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl create -f 024a-gateway-https.yaml
kubectl create -f 024b-tlsroute.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image584.webp" style="width:7.68611in;height:2.46181in" /></p></td>
</tr>
<tr>
<td><p>→YAML for Gateway</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1</mark>
<mark><strong>kind</strong>: Gateway</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: my-tls-gateway</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>gatewayClassName</strong>: nginx</mark>
<mark><strong>listeners</strong>:</mark>
<mark><strong>- name</strong>: https</mark>
<mark><strong>protocol</strong>: HTTPS</mark>
<mark><strong>port</strong>: 443</mark>
<mark><strong>tls</strong>:</mark>
<mark><strong>mode</strong>: Terminate</mark>
<mark><strong>certificateRefs</strong>:</mark>
<mark><strong>- kind</strong>: Secret</mark>
<mark><strong>name</strong>: example-tls</mark></code></pre></td>
</tr>
<tr>
<td><p>→YAML for http route</p>
<pre><code class="nohighlight language-yaml"><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1</mark>
<mark><strong>kind</strong>: HTTPRoute</mark>
<mark><strong>metadata</strong>:</mark>
<mark><strong>name</strong>: tls-route</mark>
<mark><strong>spec</strong>:</mark>
<mark><strong>parentRefs</strong>:</mark>
<mark><strong>- name</strong>: my-tls-gateway</mark>
<mark><strong>rules</strong>:</mark>
<mark><strong>- matches</strong>:</mark>
<mark><strong>- path</strong>:</mark>
<mark><strong>type</strong>: PathPrefix</mark>
<mark><strong>value</strong>: /</mark>
<mark><strong>backendRefs</strong>:</mark>
<mark><strong>- name</strong>: nginx-service</mark>
<mark><strong>port</strong>: 80</mark></code></pre></td>
</tr>
</tbody>
</table>

####  Expose the gateway on node port and test curl - WILL FAIL 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl expose pod my-tls-gateway-nginx-5664476b78-ktjlp \
--name=my-tls-gateway-nodeport \
--type=NodePort \
--port=443 \
--target-port=443
kubectl get svc my-tls-gateway-nodeport
kubectl get nodes -o wide
curl -k https://172.18.0.2:30112</code></pre>
<p>Notice above curl will result in failure as the certificate configure has domain name.</p>
<p>We can configure a host-name variable in local and we can by pass this error locally.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image585.webp" style="width:7.67083in;height:1.44097in" /></p></td>
</tr>
</tbody>
</table>

####  Modify the host file to cater the domain name as per the certificate

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">sudo cat /etc/hosts
echo "172.18.0.2 example.com" | sudo tee -a /etc/hosts
sudo cat /etc/hosts</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image586.webp" style="width:7.68333in;height:3.73264in" /></p></td>
</tr>
</tbody>
</table>

####  Test curl using the domain name on HTTPS

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">curl -k https://example.com:30112 --resolve example.com:30112:172.18.0.2</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image587.webp" style="width:7.67569in;height:3.15764in" /></p></td>
</tr>
<tr>
<td><p>Above command we are telling :</p>
<p>• Use as the host-name (so it matches your TLS certificate).</p>
<pre><code class="language-plaintext">• Connect to on port (your NodePort).</code></pre>
<p>• Skip DNS lookup — instead of asking your system or network how to reach , it uses the IP you gave it directly.</p>
<p>This is super useful when:</p>
<pre><code class="language-plaintext">• You're testing locally.
• You haven't set up DNS.</code></pre>
<p>• You want to simulate a real domain name.</p></td>
</tr>
<tr>
<td><p>Or simply use below</p>
<pre><code class="language-bash">curl -k https://example.com:30112</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image588.webp" style="width:7.68333in;height:4.73194in" /></p></td>
</tr>
</tbody>
</table>

## Custom Resource Definitions (CRD) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We have by default many resources defined natively by kubernetes. Eg as below.</p>
<p>→Notice the Name and Kind that are used. Usually, all these are self sufficient. However, sometimes we may need to include additional features etc.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image589.webp" style="width:7.52847in;height:1.47917in" alt="{40B2C448-8723-4D77-98F7-E9EBBBF670E8}" /></p></td>
</tr>
<tr>
<td><p>→Below image shows various resources that are by default available viz., Pod/Deployment/ConfigMaps etc.</p>
<p>→Suppose if we want a Database to be created by simple configurations we can define our own resource definition which can now be called as CRD.</p>
<p>→Once it is defined the user can simple use it and create the database or for that matter any ‘resource’ a project requires.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image590.webp" style="width:6.29167in;height:2.9375in" alt="{6F9A65BB-17B7-4909-91E1-1CEA5C3AB613}" /></p></td>
</tr>
<tr>
<td><p>→Notice in <strong>a fresh cluster</strong> we cannot see any CRDs</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image591.webp" style="width:2.89583in;height:0.71875in" alt="{27C12E79-56FB-40A8-8244-1418AC1D75D2}" /></p>
<p>→However, when certain libraries or packages are loaded onto the K8, we can see them as below.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image592.webp" style="width:4.71875in;height:3.98958in" alt="{1921BCBE-F889-41C3-9C65-F3EB7B43D824}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Create Custom Definition 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a yaml with the kind:CustomResourceDefinition</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image593.webp" style="width:4.9375in;height:5.76042in" alt="{49A0D83C-C369-4FAB-9300-9B8C4BE87B51}" /></p>
<p>→Create</p>
<pre><code class="language-bash">nano crd-db.yaml
cat crd-db.yaml
kubectl get crd</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image594.webp" style="width:6.9375in;height:6.66667in" alt="{0B4EADE8-36C4-461F-8589-6112F7F550C0}" /></p>
<pre><code class="language-yaml">apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
name: databases.labs.internal
spec:
group: labs.internal
names:
kind: Database
listKind: DatabaseList
plural: databases
singular: database
scope: Namespaced
versions:
- name: v1
served: true
storage: true
schema:
openAPIV3Schema:
type: object
properties:
spec:
type: object
properties:
name:
type: string
replicas:
type: integer</code></pre>
<p>→Check if this is available under api-resources</p>
<pre><code class="language-bash">kubectl api-resources | grep ‘data’</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image595.webp" style="width:7.53056in;height:0.71736in" alt="{30DFD54C-89C1-43A6-962F-C6936799C056}" /></p></td>
</tr>
</tbody>
</table>

### Create Custom Objects

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create custom object using a dedicated yaml</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image596.webp" style="width:4.5in;height:1.65625in" alt="{7519F315-0B0B-49B0-B3CF-CA25AABFCD48}" /></p>
<pre><code class="language-yaml">apiVersion: labs.internal/v1
kind: Database
metadata:
name: my-database
spec:
name: test-db
replicas: 3</code></pre>
<p>→Apply the yaml and notice that just like other commands ‘kubectl get pods’ we are able to fire a ‘get’ on ‘crd called database’.</p>
<pre><code class="language-bash">kubectl create -f db.yaml
kubectl get database
kubectl describe database my-database</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image597.webp" style="width:5.76042in;height:1.58333in" alt="{ACEFB20A-2568-48FC-BA74-4F1FA9508D65}" /></p>
<p>→Describe the resource and check the yaml</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image598.webp" style="width:6.98958in;height:3.15625in" alt="{44F37997-5804-40C5-ACC3-79C5595A842B}" /></p>
<p>→Here important to note is an actual ‘database’ is not created. In order to get an actual database, ‘Custom Controllers’ are to be implemented.</p>
<p>→These Custom Controllers track at least one Kubernetes resource type.</p>
<p>→These objects have a specific field that represents the desired state.</p>
<p>→A typical controller once in place would keep monitoring ‘that particular’ resource and then act upon it by creating an ‘actual database.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image599.webp" style="width:6.41667in;height:1.70833in" alt="{5C593CBC-1A2C-485D-BCFA-919925638976}" /></p>
<p>→Delete CRD</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image600.webp" style="width:6.78125in;height:0.72917in" alt="{003834FA-7F61-4EE8-993C-B6B4556CDEAF}" /></p></td>
</tr>
</tbody>
</table>

###  HELM - CRDs

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Many times what happens is the Helm charts that are open-sourced, contain certain CRDs.</p>
<h3 id="helm-charts-and-crds-simple-summary">Helm Charts and CRDs – Simple Summary</h3>
<ul>
<li><p>A Helm chart is like an installer package for a Kubernetes application. It contains everything needed to deploy the app (Deployments, Services, ConfigMaps, etc.).</p></li>
<li><p>Some applications (like Argo CD, Cert-Manager, Prometheus Operator) also need Custom Resource Definitions (CRDs). A CRD teaches Kubernetes about a new resource type that it doesn't know by default.</p></li>
<li><p>Example: Kubernetes knows about Pod and Service, but it does not know what an Application resource is. Argo CD installs an Application CRD so you can create objects like:</p></li>
<li><p>kind: Application</p></li>
<li><p>Fresh cluster: The CRD does not exist, so the Helm chart should install it automatically. This makes installation easy.</p></li>
<li><p>Existing/production cluster: The CRD may already exist because another team or a previous installation already created it. Reinstalling or upgrading the CRD could change its schema or interfere with existing custom resources.</p>
<p>Therefore, Helm charts provide an option like:</p>
<pre><code class="language-plaintext">--set crds.install=false</code></pre>
<p>which means "Install the application, but don't touch the CRDs because they are already managed separately."</p>
<p>Simple analogy:<br />
Installing a Helm chart is like installing a software package. The CRD is like creating a shared database schema. On a brand-new system, the installer creates the schema automatically. On a production system, the DBA may already manage that schema, so the installer is told to skip that step to avoid unintended changes.</p></li>
</ul></td>
</tr>
<tr>
<td><p>→Example only. Did not install anything. It is only to show how to skip the CRDs.</p>
<p>Checking the Standard Approach</p>
<pre><code class="language-bash">helm repo add argo https://argoproj.github.io/argo-helm
helm install my-argo-cd argo/argo-cd --version 7.8.23 --skip-crds --dry-run
helm install my-argo-cd argo/argo-cd --version 7.8.23 --skip-crds --dry-run | grep CustomResourceDefinition</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image601.webp" style="width:7.52986in;height:0.42292in" alt="{09AFCC31-5667-476E-9B97-9A95FF297BF6}" /></p>
<p>Skipping the CRDs</p>
<pre><code class="language-bash">helm install my-argo-cd argo/argo-cd --version 7.8.23 --set crds.install=false --dry-run | grep CustomResourceDefinition
helm template my-argo-cd argo/argo-cd --set crds.install=false --version 7.8.23 &gt; argo-no-crd.yaml</code></pre></td>
</tr>
</tbody>
</table>

## Security - Authentication 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→In order to access Kubernetes cluster, we must authenticate, like any other tool or setup.</p>
<p>→There are multiple ways to authenticate into Kubernetes, like all other providers or cloud.</p>
<p>→The common one is Username and Password.</p>
<p>→We can access them using Access Key and Secret Keys, which is another method of access.</p>
<p>→Important aspect of Kubernetes is the user accounts are not managed natively or locally.</p>
<p>→What it means is a new user cannot be created randomly just like that in Kubernetes like in an AD or a DB etc.</p>
<p>→Common methods of authentications used are as below.</p>
<blockquote>
<p>→Client Certificates.</p>
<p>→Static Token Authentication.</p>
<p>→Service Account Tokens.</p>
</blockquote>
<p>→Documentation link : <a href="https://kubernetes.io/docs/reference/access-authn-authz/authentication/">https://kubernetes.io/docs/reference/access-authn-authz/authentication/</a></p></td>
</tr>
<tr>
<td><p>→Normal users cannot be added to a cluster through an api call</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image602.webp" style="width:7.52986in;height:4.28958in" alt="{DC9F644F-0251-4E9B-AF3F-F5AB8DF139F7}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image603.webp" style="width:5.91667in;height:2.03125in" alt="{B7711D03-3553-4D97-BC57-1DFC94D26D21}" /></p></td>
</tr>
</tbody>
</table>

### Authentication: Eg. Static Token Testing

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><mark>→These are not implemented and above commands are just to show the process that is behind.</mark></p></td>
</tr>
<tr>
<td><p>→Let us test very basic access to K8 using some ‘static Tokens’, stored locally in K8.</p>
<p>→Authentication is ‘who are you’?</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image604.webp" style="width:7.51944in;height:1.80764in" alt="{D073A44D-19E5-4040-97F6-B632BE1B8454}" /></p></td>
</tr>
<tr>
<td><p>→Before we proceed let us try with a dummy token (JWT) and hit our KIND api-server-endpoints.</p>
<p>→First let us see which port our api server is listening on. Remember we are on KIND, meaning on local Docker, so the regular port of 6443 will not be there.</p>
<p>→To know the correct port use below two commands.</p>
<pre><code class="language-bash">kubectl config view --minify
kubectl cluster-info</code></pre>
<p>→Then fire this curl to see the response of failure or 403</p>
<pre><code class="language-bash">curl -k -H "Authorization: Bearer &lt;removed&gt; https://127.0.0.1:43731/version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image605.webp" style="width:7.52361in;height:5.69236in" alt="{AE7532A0-6F89-4517-BACB-A537EC196A1F}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Authorization: 

<removed>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Authorization is ‘who all you can do’</p>
<p>→Notice below that the typical KIND cluster has full rights. This is because we are using ‘admin’ certificates</p>
<pre><code class="language-bash">kubectl auth can-I --list</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image606.webp" style="width:7.52431in;height:4.18056in" alt="{1DFD797F-9C2F-482D-AE76-41DB12E52F84}" /></p></td>
</tr>
</tbody>
</table>

####  Modes 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→There are three Auth Modes. <a href="https://kubernetes.io/docs/reference/access-authn-authz/authorization/">https://kubernetes.io/docs/reference/access-authn-authz/authorization/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image607.webp" style="width:7.53889in;height:5.99444in" alt="{8B564606-20F1-49F6-A926-CFC0EC156A44}" /></p></td>
</tr>
<tr>
<td><p>→In a local cluster we can see as below. As said above, in production we only use RBAC.</p>
<pre><code class="language-bash">kubectl -n kube-system get pod -l component=kube-apiserver -o yaml | grep authorization-mode</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image608.webp" style="width:7.52986in;height:0.38958in" alt="{94D58631-19E4-415C-A2FD-72F0FC46ACD6}" /></p>
<p>→ What it means is the KIND cluster uses RBAC authorization, meaning every API request is checked against roles and bindings to determine if it's allowed.</p>
<p>→The Node authorizer is an additional built-in permission system used only for kubelets (nodes); if neither Node nor RBAC allows a request, it is denied</p></td>
</tr>
</tbody>
</table>

##  RBAC

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Let us understand the basic work flow before anything.</p>
<p>→Below table shows, we will have set of users and set of permissions.</p>
<p>→In order to have proper RBAC, they both need to be bound mentioning, ‘<strong>which’</strong> user has ‘<strong>what’</strong> permissions.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image609.webp" style="width:7.61458in;height:3.3125in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

##  Setup OIDC Provider (KeyCloak) & RBAC Binding (PENDING) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>PENDING</p>
<p>A minimal setup would be:</p>
<ol type="1">
<li><p>Ubuntu VM</p>
<ol type="1">
<li><p>Install a Kubernetes cluster (e.g., kubeadm, k3s, or kind).</p></li>
<li><p>Run an OIDC Identity Provider (the easiest self-hosted option is Keycloak, typically in Docker or directly on the VM).</p></li>
</ol></li>
<li><p>Configure Kubernetes API Server</p>
<ol type="1">
<li><p>Enable OIDC flags such as:</p>
<ol type="1">
<li><p>--oidc-issuer-url</p></li>
<li><p>--oidc-client-id</p></li>
<li><p>--oidc-username-claim</p></li>
<li><p>--oidc-groups-claim (optional but useful)</p></li>
</ol></li>
</ol></li>
<li><p>Create Users/Groups in the IdP</p>
<ol type="1">
<li><p>Example:</p>
<ol type="1">
<li><p>User: alice</p></li>
<li><p>Group: developers</p></li>
</ol></li>
</ol></li>
<li><p>Configure RBAC in Kubernetes</p>
<ol type="1">
<li><p>Create a Role or ClusterRole.</p></li>
<li><p>Create a RoleBinding or ClusterRoleBinding that grants permissions to the OIDC user or group (e.g., developers).</p></li>
</ol></li>
<li><p>Client (your laptop)</p>
<ol type="1">
<li><p>Obtain an OIDC ID token from the IdP (or use a kubectl OIDC plugin such as kubelogin).</p></li>
<li><p>Configure kubectl to present that token when talking to the Kubernetes API server.</p></li>
</ol></li>
</ol>
<h3 id="components-youll-need">Components you'll need</h3>
<ul>
<li><p>✅ Kubernetes cluster</p></li>
<li><p>✅ OIDC Identity Provider (e.g., Keycloak)</p></li>
<li><p>✅ Kubernetes API server configured for OIDC</p></li>
<li><p>✅ RBAC objects (Roles + RoleBindings)</p></li>
<li><p>✅ kubectl configured with an OIDC token</p></li>
</ul>
<p>This setup closely mirrors how many production environments work, where Kubernetes delegates authentication to an external IdP and handles authorization through RBAC.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image610.webp" style="width:7.52708in;height:6.12708in" alt="{97136C76-2460-4D99-BE92-17A33A465870}" /></p></td>
</tr>
<tr>
<td><p>→Briefly how it looks after integrating with oidc</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image611.webp" style="width:6.67708in;height:7.26042in" alt="{D0F25EAE-7C27-48D2-ACAA-F4255362B101}" /></p>
<p>C:\ws\k8basics\oidc integration\oidc-integration-keycloak-sequence.txt</p></td>
</tr>
<tr>
<td><p>→As is current setup</p>
<p>C:\ws\k8basics\oidc integration\without-oidc-integration-as-is-sequence.txt</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image612.webp" style="width:6.12292in;height:8.92917in" alt="{D2ECF149-B99B-46F9-976B-5D775BBB1315}" /></p></td>
</tr>
</tbody>
</table>

### xxx

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note that before IDP binding we will have full control over the K8. Eg. Below</p>
<pre><code class="language-bash">kubectl auth can-i create deployments
kubectl auth can-i get pods
kubectl auth can-i delete pods
kubectl auth can-i create deployments
kubectl auth can-i list secrets</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image613.webp" style="width:6.83333in;height:2.08333in" alt="{857DE596-464A-4049-84E0-E6446C2822B3}" /></p></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |

#  CKS - Security - Kubernetes 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>To Start with, when an simple EC2 intance is spinned up and left with ‘allow all’ ACL, we see something like below attacks.</p>
<p>These were the ‘brute forces’</p></td>
</tr>
<tr>
<td><p>These are like below brute-forces.</p>
<ol type="1">
<li><p>SSH Brut-Force (guessing ssh login creds).</p></li>
<li><p>RDP Brute Force (Guess passwords).</p></li>
<li><p>DB Brute Force (Guess Credentials).</p></li>
<li><p>FTP Brute Force.</p></li>
<li><p>DoS.</p></li>
<li><p>Port Scanning.</p></li>
<li><p>Dictionary attacks.</p></li>
</ol></td>
</tr>
<tr>
<td><p>This is what the open all loos like.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image614.webp" style="width:6.40556in;height:4.27083in" /></p></td>
</tr>
</tbody>
</table>

## CIS Benchmarks for K8

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image615.webp" style="width:7.67986in;height:5.12014in" /> |

## xxx

|     |
|-----|
|     |

## xxx

|     |
|-----|
|     |

## xxx

|     |
|-----|
|     |

# SECURITY FRAMEWORK - MUST STUDY

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>Module 1: Container &amp; Isolation Fundamentals</p>
<p>Namespaces (Linux) — kernel feature that isolates process views (PID, network, mount, UTS, IPC, user) between containers.</p>
<p>Cgroups — kernel feature that limits/accounts for resource usage (CPU, memory, I/O) per container.</p>
<p>Container runtime architecture — how containerd/CRI-O/Docker sit between kubelet and the OS kernel.</p>
<p>Container escape — techniques where a process breaks out of its namespace/cgroup isolation to access the host (e.g., via misconfigured mounts, kernel exploits, privileged mode).</p>
<p>Capabilities (Linux) — fine-grained root privileges (e.g., NET_ADMIN, SYS_ADMIN) that can be dropped/added per container; over-granted capabilities are a common escape vector.</p>
<p>Seccomp profiles — restrict which syscalls a container can make to the kernel.</p>
<p>AppArmor / SELinux — mandatory access control frameworks that confine what a container process can do on the host.</p>
<p>gVisor / Kata Containers — sandboxed/microVM-based runtimes providing stronger isolation than standard namespaces.</p>
<p>Module 2: Kubernetes Architecture Security</p>
<p>Control plane components — API server, etcd, scheduler, controller-manager, and their individual attack surfaces.</p>
<p>etcd security — encryption at rest, TLS, and access control for the cluster's key-value store (holds secrets in plaintext by default).</p>
<p>kubelet security — securing the node agent's API (anonymous auth, read-only port risks).</p>
<p>API server authentication &amp; authorization — X.509 certs, bearer tokens, OIDC, webhook auth, and RBAC/ABAC/Node authorization modes.</p>
<p>Admission controllers — validating/mutating webhooks that enforce policy before objects are persisted (e.g., PodSecurity, OPA Gatekeeper, Kyverno).</p>
<p>RBAC (Role-Based Access Control) — Roles/ClusterRoles/Bindings that define who can do what; common misconfig source (overly broad cluster-admin grants).</p>
<p>Module 3: Workload/Pod Security</p>
<p>Pod Security Standards (Privileged/Baseline/Restricted) — Kubernetes-native policy tiers replacing deprecated PodSecurityPolicy.</p>
<p>SecurityContext settings — runAsNonRoot, readOnlyRootFilesystem, allowPrivilegeEscalation, privileged flag.</p>
<p>hostPath / hostNetwork / hostPID risks — mounting host resources into pods, a major escape and lateral-movement vector.</p>
<p>Init containers &amp; sidecars — security implications of extra containers sharing pod context.</p>
<p>Resource quotas &amp; limits — preventing DoS via resource exhaustion (noisy neighbor / cryptomining abuse).</p>
<p>Module 4: Network Security</p>
<p>Network Policies — Kubernetes-native firewalling between pods (default allow-all is a key risk).</p>
<p>CNI plugin security — differences in enforcement across Calico, Cilium, Weave, etc.</p>
<p>Service Mesh (Istio/Linkerd) — mTLS between services, traffic encryption, and mesh-level authZ policies.</p>
<p>Ingress/Egress control — securing entry points (Ingress controllers) and restricting outbound traffic to prevent exfiltration.</p>
<p>DNS security (CoreDNS) — cache poisoning, spoofing risks within cluster DNS.</p>
<p>Module 5: Secrets &amp; Identity Management</p>
<p>Kubernetes Secrets limitations — base64 ≠ encryption; need encryption-at-rest config.</p>
<p>External secrets managers — Vault, AWS Secrets Manager, Azure Key Vault integration patterns.</p>
<p>Service Accounts &amp; token projection — how workloads authenticate to the API server; risks of default SA token automounting.</p>
<p>Workload Identity Federation — IRSA (EKS), Azure AD Workload Identity (AKS), Workload Identity (GKE) — mapping K8s SAs to cloud IAM roles without static keys.</p>
<p>mTLS / SPIFFE/SPIRE — cryptographic workload identity standards for zero-trust service-to-service auth.</p>
<p>Module 6: Supply Chain Security</p>
<p>Image scanning — vulnerability detection in container images (Trivy, Grype, Clair).</p>
<p>Image signing &amp; verification — Sigstore/Cosign, Notary for ensuring image provenance/integrity.</p>
<p>SBOM (Software Bill of Materials) — inventory of components inside an image for vulnerability/license tracking.</p>
<p>Admission-time image policy — enforcing "only signed/scanned images from trusted registries" via policy engines.</p>
<p>Base image hardening — distroless/minimal images to reduce attack surface.</p>
<p>CI/CD pipeline security — securing build systems (GitHub Actions, Jenkins) that produce and push images.</p>
<p>Module 7: Runtime Security &amp; Detection</p>
<p>Runtime threat detection — Falco, Tetragon — behavioral monitoring for anomalous syscalls/process activity.</p>
<p>Audit logging — Kubernetes API server audit logs for forensic visibility.</p>
<p>Intrusion/lateral movement detection — identifying privilege escalation, pod-to-node breakout, crypto-mining patterns.</p>
<p>Drift detection — catching runtime deviations from declared desired state (GitOps security angle).</p>
<p>Module 8: Cluster &amp; Node Hardening</p>
<p>CIS Benchmarks for Kubernetes — industry-standard hardening checklist (also has cloud-specific variants for EKS/AKS/GKE).</p>
<p>kube-bench / kube-hunter — automated tools to test CIS compliance and simulate attacker recon respectively.</p>
<p>Node OS hardening — minimizing attack surface on worker nodes (unnecessary packages, SSH access controls).</p>
<p>Upgrade &amp; patch management — staying current on K8s version CVEs (control plane + kubelet + CNI + runtime).</p>
<p>Module 9: Cloud Provider–Specific Security (Managed K8s)</p>
<p>EKS-specific — IAM Roles for Service Accounts (IRSA), VPC CNI security groups per pod, AWS-managed control plane trust boundary.</p>
<p>AKS-specific — Azure AD integration, Azure Policy for AKS, Confidential Containers option.</p>
<p>GKE-specific — Workload Identity, Binary Authorization, Shielded GKE Nodes, Autopilot's stricter defaults.</p>
<p>Shared responsibility model — understanding what the cloud provider secures (control plane) vs. what you must secure (workloads, RBAC, network policy, nodes in self-managed node groups).</p>
<p>Cloud IAM ↔︎ Kubernetes RBAC mapping — a very common misconfiguration/privilege-escalation bridge point.</p>
<p>Module 10: Policy-as-Code &amp; Compliance</p>
<p>OPA (Open Policy Agent) / Gatekeeper — general-purpose policy engine for admission control.</p>
<p>Kyverno — Kubernetes-native policy engine (YAML-based, easier adoption).</p>
<p>Compliance frameworks — mapping controls to PCI-DSS, SOC2, NIST, ISO 27001 for K8s environments.</p>
<p>Module 11: Threat Modeling &amp; Attack Frameworks</p>
<p>MITRE ATT&amp;CK for Containers — dedicated matrix of container/K8s-specific adversary tactics and techniques.</p>
<p>The 4C's of Cloud Native Security — Cloud, Cluster, Container, Code — a layered mental model for defense-in-depth.</p>
<p>Common attack paths — e.g., exposed Dashboard → API server compromise → privilege escalation → etcd access → full cluster takeover.</p>
<p>Module 12: Incident Response &amp; Resilience</p>
<p>Forensics in ephemeral environments — capturing evidence before pods are rescheduled/destroyed.</p>
<p>Backup &amp; recovery security — etcd snapshots, Velero — ensuring backups aren't an attacker's easy target.</p>
<p>Chaos/security testing — red-teaming clusters, pentesting managed K8s within cloud provider rules of engagement.</p></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |

# Setting up Kubernetes - Kubeadm

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→First get two VMs ready one for control plane and other for data plane.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image616.webp" style="width:7.09375in;height:3.65625in" alt="{D21A5341-294E-453B-999E-6B3CCD164A7C}" /></p></td>
</tr>
</tbody>
</table>

## CONTROL PLANE (MASTER NODE)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Start the CP and check the hostname details. Also note the ip address details as we will be using the 10 series.</p>
<pre><code class="nohighlight language-plaintext">admin@k8cp:~/Desktop$ hostnamectl
 Static hostname: k8cp
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: a4b78e76ff96438a896bf4bd1b23756f
         Boot ID: 903b9d764438439582d8c4df0dbe30b6
  Virtualization: oracle
Operating System: Ubuntu 24.04.2 LTS
          Kernel: Linux 6.17.0-35-generic
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
Firmware Version: VirtualBox
   Firmware Date: Fri 2006-12-01
    Firmware Age: 19y 8month 1w
admin@k8cp:~/Desktop$
# CONTROL PLANE NODE IP
1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever
2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:b8:36:fb brd ff:ff:ff:ff:ff:ff
    inet <mark>192.168.1.16/24</mark> brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 3393sec preferred_lft 3393sec
    inet6 fe80::a00:27ff:feb8:36fb/64 scope link
       valid_lft forever preferred_lft forever
# DATA PLANE NODE IP
1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever
2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:1a:ca:e9 brd ff:ff:ff:ff:ff:ff
    inet <mark>192.168.1.17/24</mark> brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 3063sec preferred_lft 3063sec
    inet6 fe80::a00:27ff:fe1a:cae9/64 scope link
       valid_lft forever preferred_lft forever</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 0 - (Recommended) Disable swap
# Kubernetes requires swap to be disabled before kubeadm init.
############################################################
swapoff -a
sudo sed -i '/swap/s/^/#/' /etc/fstab</code></pre>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 1 - Prepare Linux kernel for Kubernetes networking
############################################################
admin@k8cp:~/Downloads$ mkdir cpscripts
admin@k8cp:~/Downloads$ cd cpscripts
admin@k8cp:~/Downloads/cpscripts$
# Load the overlay filesystem module (used by container runtimes).
cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF
admin@k8cp:~/Downloads/cpscripts$ ls -lrt /etc/modules-load.d/
total 8
-rw-r--r-- 1 root root 119 Mar 31  2024 cups-filters.conf
lrwxrwxrwx 1 root root  10 Jun  5 15:36 modules.conf -&gt; ../modules
-rw-r--r-- 1 root root  21 Aug  8 19:36 containerd.conf
admin@k8cp:~/Downloads/cpscripts$
# Load the modules immediately without rebooting.
sudo modprobe overlay
sudo modprobe br_netfilter
# Enable kernel networking features required by Kubernetes.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
admin@k8cp:~/Downloads/cpscripts$ # Enable kernel networking features required by Kubernetes.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ ls -lrt /etc/sysctl.d/
total 56
-rw-r--r-- 1 root root  798 Mar 24  2024 README.sysctl
-rw-r--r-- 1 root root  506 Mar 31  2024 10-zeropage.conf
-rw-r--r-- 1 root root 1292 Mar 31  2024 10-ptrace.conf
-rw-r--r-- 1 root root  158 Mar 31  2024 10-network-security.conf
-rw-r--r-- 1 root root  164 Mar 31  2024 10-map-count.conf
-rw-r--r-- 1 root root 1184 Mar 31  2024 10-magic-sysrq.conf
-rw-r--r-- 1 root root 1229 Mar 31  2024 10-kernel-hardening.conf
-rw-r--r-- 1 root root  490 Mar 31  2024 10-ipv6-privacy.conf
-rw-r--r-- 1 root root   77 Mar 31  2024 10-console-messages.conf
-rw-r--r-- 1 root root  481 Sep 26  2024 10-bufferbloat.conf
lrwxrwxrwx 1 root root   61 Jun 13  2025 90-omnibus-gitlab-kernel.shmmax.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.shmmax.conf
lrwxrwxrwx 1 root root   61 Jun 13  2025 90-omnibus-gitlab-kernel.shmall.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.shmall.conf
lrwxrwxrwx 1 root root   58 Jun 13  2025 90-omnibus-gitlab-kernel.sem.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.sem.conf
lrwxrwxrwx 1 root root   66 Jun 13  2025 90-omnibus-gitlab-net.core.somaxconn.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-net.core.somaxconn.conf
lrwxrwxrwx 1 root root   14 Jun  5 15:36 99-sysctl.conf -&gt; ../sysctl.conf
-rw-r--r-- 1 root root  120 Aug  8 19:38 99-kubernetes-cri.conf
admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p># Apply kernel parameter changes immediately.</p>
<p> </p>
<pre><code class="language-plaintext">sudo sysctl --system
admin@k8cp:~/Downloads/cpscripts$ sudo sysctl --system
* Applying /usr/lib/sysctl.d/10-apparmor.conf ...
* Applying /etc/sysctl.d/10-bufferbloat.conf ...
* Applying /etc/sysctl.d/10-console-messages.conf ...
* Applying /etc/sysctl.d/10-ipv6-privacy.conf ...
* Applying /etc/sysctl.d/10-kernel-hardening.conf ...
* Applying /etc/sysctl.d/10-magic-sysrq.conf ...
* Applying /etc/sysctl.d/10-map-count.conf ...
* Applying /etc/sysctl.d/10-network-security.conf ...
* Applying /etc/sysctl.d/10-ptrace.conf ...
* Applying /etc/sysctl.d/10-zeropage.conf ...
* Applying /usr/lib/sysctl.d/30-tracker.conf ...
* Applying /usr/lib/sysctl.d/50-bubblewrap.conf ...
* Applying /usr/lib/sysctl.d/50-pid-max.conf ...
* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf ...
sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf": No such file or directory
* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf ...
sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf": No such file or directory
* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf ...
sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf": No such file or directory
* Applying /etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf ...
sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf": No such file or directory
* Applying /etc/sysctl.d/99-kubernetes-cri.conf ...
* Applying /usr/lib/sysctl.d/99-protect-links.conf ...
* Applying /etc/sysctl.d/99-sysctl.conf ...
* Applying /etc/sysctl.conf ...
kernel.apparmor_restrict_unprivileged_userns = 1
net.core.default_qdisc = fq_codel
kernel.printk = 4 4 1 7
net.ipv6.conf.all.use_tempaddr = 2
net.ipv6.conf.default.use_tempaddr = 2
kernel.kptr_restrict = 1
kernel.sysrq = 176
vm.max_map_count = 1048576
net.ipv4.conf.default.rp_filter = 2
net.ipv4.conf.all.rp_filter = 2
kernel.yama.ptrace_scope = 1
vm.mmap_min_addr = 65536
fs.inotify.max_user_watches = 65536
kernel.unprivileged_userns_clone = 1
kernel.pid_max = 4194304
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
fs.protected_fifos = 1
fs.protected_hardlinks = 1
fs.protected_regular = 2
fs.protected_symlinks = 1
vm.swappiness = 10
vm.dirty_background_ratio = 5
vm.dirty_ratio = 10
vm.vfs_cache_pressure = 50
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
vm.swappiness = 10
vm.dirty_background_ratio = 5
vm.dirty_ratio = 10
vm.vfs_cache_pressure = 50
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 2 - Install and configure containerd
############################################################
# Install the container runtime.
sudo apt-get update
sudo apt-get install -y containerd
# Generate the default containerd configuration.
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml &gt; /dev/null
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
grep SystemdCgroup /etc/containerd/config.toml
admin@k8cp:~/Downloads/cpscripts$ grep SystemdCgroup /etc/containerd/config.toml
            SystemdCgroup = true
admin@k8cp:~/Downloads/cpscripts$
sudo systemctl restart containerd
sudo systemctl status containerd --no-pager
admin@k8cp:~/Downloads/cpscripts$ sudo systemctl restart containerd
sudo systemctl status containerd --no-pager
● containerd.service - containerd container runtime
     Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-08-08 19:47:28 UTC; 21ms ago
       Docs: https://containerd.io
    Process: 5065 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)
   Main PID: 5066 (containerd)
      Tasks: 7
     Memory: 15.7M (peak: 18.0M)
        CPU: 81ms
     CGroup: /system.slice/containerd.service
             └─5066 /usr/bin/containerd</code></pre>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243114055Z" level=info msg="Start recovering state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243158594Z" level=info msg="Start event monitor"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243164109Z" level=info msg="Start cni network conf syncer for default"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243167584Z" level=info msg="Start streaming server"</p>
<pre><code class="language-plaintext">Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243172733Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</code></pre>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243177033Z" level=info msg="runtime interface starting up..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243180114Z" level=info msg="starting plugins..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243190821Z" level=info msg="Synchronizing NRI (plugin) with curr…ime state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243454994Z" level=info msg="containerd successfully booted in 0.034456s"</p>
<p>Aug 08 19:47:28 k8cp systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>Hint: Some lines were ellipsized, use -l to show in full.</p>
<pre><code class="language-bash">admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 3 - Configure kernel networking (redundant but harmless)
############################################################
&#32;
# Enable bridge packet forwarding for Kubernetes networking.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
# Reload kernel parameters.
sudo sysctl --system</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 4 - Add Kubernetes package repository
############################################################
sudo apt-get update
# Install prerequisites.
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
sudo mkdir -p /etc/apt/keyrings
# Import Kubernetes repository signing key.
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key \
| sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add the Kubernetes package repository.
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' \
| sudo tee /etc/apt/sources.list.d/kubernetes.list
admin@k8cp:~/Downloads/cpscripts$ cat /etc/apt/sources.list.d/kubernetes.list
deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /
admin@k8cp:~/Downloads/cpscripts$ ls -l /etc/apt/keyrings/kubernetes-apt-keyring.gpg
-rw-r--r-- 1 root root 1200 Aug  8 19:54 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
admin@k8cp:~/Downloads/cpscripts$
&#32;
sudo apt-get update
apt-cache madison kubeadm
# Validate the installation so far.
# Confirm hostname, machine-id, OS info
hostnamectl
# Confirm kernel modules loaded
lsmod | grep -E "overlay|br_netfilter"
# Confirm sysctl values applied
sudo sysctl net.bridge.bridge-nf-call-iptables net.ipv4.ip_forward net.bridge.bridge-nf-call-ip6tables
# Confirm containerd is running with correct cgroup driver
sudo systemctl status containerd --no-pager
grep SystemdCgroup /etc/containerd/config.toml
# Confirm Kubernetes repo is configured correctly
cat /etc/apt/sources.list.d/kubernetes.list
ls -l /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Confirm kubeadm packages are available from the repo
apt-cache madison kubeadm | head -5
# Confirm swap is off
free -h
cat /etc/fstab | grep -i swap
&#32;
 Static hostname: k8cp
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: a4b78e76ff96438a896bf4bd1b23756f
         Boot ID: 903b9d764438439582d8c4df0dbe30b6
  Virtualization: oracle
Operating System: Ubuntu 24.04.2 LTS
          Kernel: Linux 6.17.0-35-generic
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
Firmware Version: VirtualBox
   Firmware Date: Fri 2006-12-01
    Firmware Age: 19y 8month 1w
br_netfilter           32768  0
bridge                425984  1 br_netfilter
overlay               221184  0
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
● containerd.service - containerd container runtime
     Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)
     Active: active (running) since Sat 2026-08-08 19:47:28 UTC; 11min ago
       Docs: https://containerd.io
    Process: 5065 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)
   Main PID: 5066 (containerd)
      Tasks: 7
     Memory: 14.2M (peak: 18.0M)
        CPU: 1.423s
     CGroup: /system.slice/containerd.service
             └─5066 /usr/bin/containerd</code></pre>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243114055Z" level=info msg="Start recovering state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243158594Z" level=info msg="Start event monitor"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243164109Z" level=info msg="Start cni network conf syncer for default"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243167584Z" level=info msg="Start streaming server"</p>
<pre><code class="language-plaintext">Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243172733Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</code></pre>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243177033Z" level=info msg="runtime interface starting up..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243180114Z" level=info msg="starting plugins..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243190821Z" level=info msg="Synchronizing NRI (plugin) with curr…ime state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243454994Z" level=info msg="containerd successfully booted in 0.034456s"</p>
<p>Aug 08 19:47:28 k8cp systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>Hint: Some lines were ellipsized, use -l to show in full.</p>
<pre><code class="language-bash">            SystemdCgroup = true
deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /
-rw-r--r-- 1 root root 1200 Aug  8 19:54 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
   kubeadm | 1.32.13-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages
   kubeadm | 1.32.12-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages
   kubeadm | 1.32.11-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages
   kubeadm | 1.32.10-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages
   kubeadm | 1.32.9-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages
               total        used        free      shared  buff/cache   available
Mem:            16Gi       1.2Gi        13Gi        38Mi       2.1Gi        15Gi
Swap:             0B          0B          0B
admin@k8cp:~/Downloads/cpscripts$</code></pre>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 5 - Install Kubernetes components
############################################################
&#32;
# Refresh package information.
sudo apt-get update
&#32;
# Verify available kubeadm versions.
sudo apt-cache madison kubeadm
&#32;
# Install Kubernetes binaries.
#
# kubeadm  -&gt; Creates and manages the cluster.
# kubelet  -&gt; Agent running on every node.
# kubectl  -&gt; CLI used to manage the cluster.
# cri-tools -&gt; Utilities for interacting with the container runtime.
sudo apt-get install -y \
kubelet=1.32.0-1.1 \
kubeadm=1.32.0-1.1 \
kubectl=1.32.0-1.1 \
cri-tools=1.32.0-1.1
    admin@k8cp:~/Downloads/cpscripts$ sudo apt-get install -y \
    kubelet=1.32.0-1.1 \
    kubeadm=1.32.0-1.1 \
    kubectl=1.32.0-1.1 \
    cri-tools=1.32.0-1.1
    Reading package lists... Done
    Building dependency tree... Done
    Reading state information... Done
    The following additional packages will be installed:
    conntrack kubernetes-cni
    The following NEW packages will be installed:
    conntrack cri-tools kubeadm kubectl kubelet kubernetes-cni
    0 upgraded, 6 newly installed, 0 to remove and 116 not upgraded.
    Need to get 92.7 MB of archives.
    After this operation, 338 MB of additional disk space will be used.
    Get:2 http://archive.ubuntu.com/ubuntu noble/main amd64 conntrack amd64 1:1.4.8-1ubuntu1 [37.9 kB]
    Get:1 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  cri-tools 1.32.0-1.1 [16.3 MB]
    Get:3 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubeadm 1.32.0-1.1 [12.2 MB]
    Get:4 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubectl 1.32.0-1.1 [11.3 MB]
    Get:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubernetes-cni 1.6.0-1.1 [37.8 MB]
    Get:6 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubelet 1.32.0-1.1 [15.2 MB]
    Fetched 92.7 MB in 6s (16.7 MB/s)
    Selecting previously unselected package conntrack.
    (Reading database ... 197479 files and directories currently installed.)
    Preparing to unpack .../0-conntrack_1%3a1.4.8-1ubuntu1_amd64.deb ...
    Unpacking conntrack (1:1.4.8-1ubuntu1) ...
    Selecting previously unselected package cri-tools.
    Preparing to unpack .../1-cri-tools_1.32.0-1.1_amd64.deb ...
    Unpacking cri-tools (1.32.0-1.1) ...
    Selecting previously unselected package kubeadm.
    Preparing to unpack .../2-kubeadm_1.32.0-1.1_amd64.deb ...
    Unpacking kubeadm (1.32.0-1.1) ...
    Selecting previously unselected package kubectl.
    Preparing to unpack .../3-kubectl_1.32.0-1.1_amd64.deb ...
    Unpacking kubectl (1.32.0-1.1) ...
    Selecting previously unselected package kubernetes-cni.
    Preparing to unpack .../4-kubernetes-cni_1.6.0-1.1_amd64.deb ...
    Unpacking kubernetes-cni (1.6.0-1.1) ...
    Selecting previously unselected package kubelet.
    Preparing to unpack .../5-kubelet_1.32.0-1.1_amd64.deb ...
    Unpacking kubelet (1.32.0-1.1) ...
    Setting up conntrack (1:1.4.8-1ubuntu1) ...
    Setting up kubectl (1.32.0-1.1) ...
    Setting up cri-tools (1.32.0-1.1) ...
    Setting up kubernetes-cni (1.6.0-1.1) ...
    Setting up kubeadm (1.32.0-1.1) ...
    Setting up kubelet (1.32.0-1.1) ...
    Processing triggers for man-db (2.12.0-4build2) ...
    admin@k8cp:~/Downloads/cpscripts$
# Prevent accidental upgrades.
sudo apt-mark hold kubelet kubeadm kubectl
    admin@k8cp:~/Downloads/cpscripts$ sudo apt-mark hold kubelet kubeadm kubectl
    kubelet set on hold.
    kubeadm set on hold.
    kubectl set on hold.
    admin@k8cp:~/Downloads/cpscripts$
# Enable kubelet service.
systemctl enable --now kubelet</code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash"># validate the installation so far.
kubeadm version
kubelet --version
kubectl version --client
crictl --version
apt-mark showhold
systemctl is-enabled kubelet
systemctl status kubelet --no-pager
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ kubeadm version
kubeadm version: &amp;version.Info{Major:"1", Minor:"32", GitVersion:"v1.32.0", GitCommit:"70d3cc986aa8221cd1dfb1121852688902d3bf53", GitTreeState:"clean", BuildDate:"2024-12-11T18:04:20Z", GoVersion:"go1.23.3", Compiler:"gc", Platform:"linux/amd64"}
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ kubelet --version
Kubernetes v1.32.0
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ kubectl version --client
Client Version: v1.32.0
Kustomize Version: v5.5.0
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ crictl --version
crictl version v1.32.0
admin@k8cp:~/Downloads/cpscripts$
admin@k8cp:~/Downloads/cpscripts$ apt-mark showhold
kubeadm
kubectl
kubelet
admin@k8cp:~/Downloads/cpscripts$ systemctl is-enabled kubelet
enabled
admin@k8cp:~/Downloads/cpscripts$ systemctl status kubelet --no-pager
● kubelet.service - kubelet: The Kubernetes Node Agent
     Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)
    Drop-In: /usr/lib/systemd/system/kubelet.service.d
             └─10-kubeadm.conf
     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-08-08 20:11:59 UTC; 6s ago
       Docs: https://kubernetes.io/docs/
    Process: 7015 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
   Main PID: 7015 (code=exited, status=1/FAILURE)
        CPU: 62ms
admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="nohighlight language-bash"># STEP 6 - Bootstrap the Kubernetes control plane
############################################################
# Initialize the Kubernetes cluster.
#
# This creates:
# - API Server
# - etcd
# - Controller Manager
# - Scheduler
# - Certificates
# - Bootstrap tokens
#
# It also prints the "kubeadm join" command for worker nodes.
# Your VMs sit on the 192.168.1.0/24 LAN, so we picked 10.244.0.0/16 for
# the pod network to keep it completely separate from your real network — avoiding any routing
# conflicts between pod IPs and node/gateway IPs. That's why the
# kubeadm init command uses --pod-network-cidr=10.244.0.0/16 instead of a range overlapping your LAN.
sudo kubeadm init --pod-network-cidr=<mark>10.244.0.0/16</mark> --kubernetes-version=1.32.0
    # LAST FEW LINES
    [bootstrap-token] Configured RBAC rules to allow the csrapprover controller automatically approve CSRs from a Node Bootstrap Token
    [bootstrap-token] Configured RBAC rules to allow certificate rotation for all node client certificates in the cluster
    [bootstrap-token] Creating the "cluster-info" ConfigMap in the "kube-public" namespace
    [kubelet-finalize] Updating "/etc/kubernetes/kubelet.conf" to point to a rotatable kubelet client certificate and key
    [addons] Applied essential addon: CoreDNS
    [addons] Applied essential addon: kube-proxy
    Your Kubernetes control-plane has initialized successfully!
    To start using your cluster, you need to run the following as a regular user:
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    Alternatively, if you are the root user, you can run:
    export KUBECONFIG=/etc/kubernetes/admin.conf
    You should now deploy a pod network to the cluster.
    Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
    https://kubernetes.io/docs/concepts/cluster-administration/addons/
    Then you can join any number of worker nodes by running the following on each as root:
    kubeadm join 192.168.1.16:6443 --token 7dxh7y.u88505c4x574c9ju \
        --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440
    admin@k8cp:~/Downloads/cpscripts$
# VALIDATION CHECKS
# Confirm the core control-plane static pod manifests exist
sudo ls /etc/kubernetes/manifests/
# Confirm the admin kubeconfig was generated
sudo ls -l /etc/kubernetes/admin.conf
# Confirm etcd, API server, controller-manager, scheduler containers are running
sudo crictl ps
# Confirm control-plane component health via containerd
sudo crictl ps -a | grep -E "etcd|kube-apiserver|kube-controller|kube-scheduler"
# Check kubelet is now running properly (not crash-looping anymore)
sudo systemctl status kubelet --no-pager
# Confirm the bootstrap token and join info were created
sudo kubeadm token list
    admin@k8cp:~/Downloads/cpscripts$ sudo ls /etc/kubernetes/manifests/
    etcd.yaml  kube-apiserver.yaml  kube-controller-manager.yaml  kube-scheduler.yaml
    admin@k8cp:~/Downloads/cpscripts$ sudo ls -l /etc/kubernetes/admin.conf
    -rw------- 1 root root 5652 Aug  8 20:17 /etc/kubernetes/admin.conf
    admin@k8cp:~/Downloads/cpscripts$ sudo crictl ps
    WARN[0000] Config "/etc/crictl.yaml" does not exist, trying next: "/usr/bin/crictl.yaml"
    WARN[0000] runtime connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.
    WARN[0000] Image connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.
    CONTAINER           IMAGE               CREATED             STATE               NAME                      ATTEMPT             POD ID              POD                            NAMESPACE
    d5e19ad87791a       040f9f8aac8cd       3 minutes ago       Running             kube-proxy                0                   4c76c8ab7b5da       kube-proxy-lfthl               kube-system
    76eaf8bad42e0       8cab3d2a8bd0f       3 minutes ago       Running             kube-controller-manager   0                   6dc61d04c67c5       kube-controller-manager-k8cp   kube-system
    e9089d7bce500       a389e107f4ff1       3 minutes ago       Running             kube-scheduler            0                   98fe2b1dd7d31       kube-scheduler-k8cp            kube-system
    f672ab275bb23       a9e7e6b294baf       3 minutes ago       Running             etcd                      0                   f041fb56cf3f0       etcd-k8cp                      kube-system
    8fd95159ba956       c2e17b8d0f4a3       3 minutes ago       Running             kube-apiserver            0                   28c4a8c06f472       kube-apiserver-k8cp            kube-system
    admin@k8cp:~/Downloads/cpscripts$ sudo crictl ps -a | grep -E "etcd|kube-apiserver|kube-controller|kube-scheduler"
    WARN[0000] Config "/etc/crictl.yaml" does not exist, trying next: "/usr/bin/crictl.yaml"
    WARN[0000] runtime connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.
    WARN[0000] Image connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.
    76eaf8bad42e0       8cab3d2a8bd0f       4 minutes ago       Running             kube-controller-manager   0                   6dc61d04c67c5       kube-controller-manager-k8cp   kube-system
    e9089d7bce500       a389e107f4ff1       4 minutes ago       Running             kube-scheduler            0                   98fe2b1dd7d31       kube-scheduler-k8cp            kube-system
    f672ab275bb23       a9e7e6b294baf       4 minutes ago       Running             etcd                      0                   f041fb56cf3f0       etcd-k8cp                      kube-system
    8fd95159ba956       c2e17b8d0f4a3       4 minutes ago       Running             kube-apiserver            0                   28c4a8c06f472       kube-apiserver-k8cp            kube-system
    admin@k8cp:~/Downloads/cpscripts$ sudo systemctl status kubelet --no-pager
    ● kubelet.service - kubelet: The Kubernetes Node Agent
        Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)
        Drop-In: /usr/lib/systemd/system/kubelet.service.d
                └─10-kubeadm.conf
        Active: active (running) since Sat 2026-08-08 20:17:26 UTC; 4min 4s ago
        Docs: https://kubernetes.io/docs/
    Main PID: 7931 (kubelet)
        Tasks: 12 (limit: 20767)
        Memory: 34.6M (peak: 35.3M)
            CPU: 10.367s
        CGroup: /system.slice/kubelet.service
                └─7931 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.con…
    Aug 08 20:20:42 k8cp kubelet[7931]: E0808 20:20:42.523676    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:20:47 k8cp kubelet[7931]: E0808 20:20:47.525411    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:20:52 k8cp kubelet[7931]: E0808 20:20:52.528346    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:20:57 k8cp kubelet[7931]: E0808 20:20:57.529777    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:02 k8cp kubelet[7931]: E0808 20:21:02.534559    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:07 k8cp kubelet[7931]: E0808 20:21:07.536073    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:12 k8cp kubelet[7931]: E0808 20:21:12.538215    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:17 k8cp kubelet[7931]: E0808 20:21:17.539503    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:22 k8cp kubelet[7931]: E0808 20:21:22.541818    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Aug 08 20:21:27 k8cp kubelet[7931]: E0808 20:21:27.545868    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"
    Hint: Some lines were ellipsized, use -l to show in full.
    admin@k8cp:~/Downloads/cpscripts$ sudo kubeadm token list
    TOKEN                     TTL         EXPIRES                USAGES                   DESCRIPTION                                                EXTRA GROUPS
    7dxh7y.u88505c4x574c9ju   23h         2026-08-09T20:17:25Z   authentication,signing   The default bootstrap token generated by 'kubeadm init'.   system:bootstrappers:kubeadm:default-node-token
    admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 7 - Configure kubectl
############################################################
# Allow the current user to manage the cluster.
&#32;
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
    admin@k8cp:~/Downloads/cpscripts$ mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    kubectl get nodes
    NAME   STATUS     ROLES           AGE    VERSION
    k8cp   NotReady   control-plane   6m1s   v1.32.0
    admin@k8cp:~/Downloads/cpscripts$
# The not ready is expected.</code></pre>
<p> </p></td>
</tr>
<tr>
<td><pre><code class="language-bash">############################################################
# STEP 8 - Remove the control-plane taint (single-node lab) -- OPTIONAL - NOT EXECUTED
############################################################
# By default, workloads are NOT scheduled on the control plane.
# Remove the taint so this node can also run application pods.
#
# Skip this step if you will add separate worker nodes.
kubectl taint nodes --all node-role.kubernetes.io/control-plane-</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="nohighlight language-bash"># STEP 9 - Install a CNI plugin (Calico)
############################################################
# Kubernetes networking does not work until a CNI plugin is installed.
&#32;
# Install the Calico operator.
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml
# Install the Calico networking components.
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml
<mark># Patch with our own custom IP range as we have initialized using this. Else it will fail. IMPORTANT.</mark>
kubectl patch installation default --type merge -p '{"spec":{"calicoNetwork":{"ipPools":[{"cidr":"<mark>10.244.0.0/16</mark>","encapsulation":"VXLANCrossSubnet","natOutgoing":"Enabled","nodeSelector":"all()"}]}}}'
    admin@k8cp:~/Downloads/cpscripts$ kubectl patch installation default --type merge -p '{"spec":{"calicoNetwork":{"ipPools":[{"cidr":"10.244.0.0/16","encapsulation":"VXLANCrossSubnet","natOutgoing":"Enabled","nodeSelector":"all()"}]}}}'
    installation.operator.tigera.io/default patched
    admin@k8cp:~/Downloads/cpscripts$
kubectl get tigerastatus
    admin@k8cp:~/Downloads/cpscripts$ kubectl get tigerastatus
    NAME        AVAILABLE   PROGRESSING   DEGRADED   SINCE
    apiserver   False       True          False      6m1s
    calico                                True
    ippools     True        False         False      11s
    admin@k8cp:~/Downloads/cpscripts$
kubectl get pods -n calico-system
    admin@k8cp:~/Downloads/cpscripts$ kubectl get pods -n calico-system
    NAME                                       READY   STATUS              RESTARTS   AGE
    calico-kube-controllers-697dcb9bb7-8dwkb   0/1     Pending             0          27s
    calico-node-gkvph                          0/1     Init:1/2            0          27s
    calico-typha-77f8575c68-l7dv6              1/1     Running             0          27s
    csi-node-driver-d9qzs                      0/2     ContainerCreating   0          27s
    admin@k8cp:~/Downloads/cpscripts$
kubectl get nodes
    admin@k8cp:~/Downloads/cpscripts$ kubectl get nodes
    NAME   STATUS   ROLES           AGE   VERSION
    k8cp   Ready    control-plane   17m   v1.32.0
    admin@k8cp:~/Downloads/cpscripts$
kubectl get pods -n calico-system
    admin@k8cp:~/Downloads/cpscripts$ kubectl get pods -n calico-system
    NAME                                       READY   STATUS    RESTARTS   AGE
    calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   0          2m27s
    calico-node-c4n77                          1/1     Running   0          86s
    calico-typha-77f8575c68-l7dv6              1/1     Running   0          2m27s
    csi-node-driver-d9qzs                      2/2     Running   0          2m27s
    admin@k8cp:~/Downloads/cpscripts$
    admin@k8cp:~/Downloads/cpscripts$</code></pre>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>admin@k8cp:~/Downloads/cpscripts$ ip address</p>
<pre><code class="language-plaintext">1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever
2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:b8:36:fb brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.16/24 brd 192.168.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 299sec preferred_lft 299sec
    inet6 fe80::a00:27ff:feb8:36fb/64 scope link
       valid_lft forever preferred_lft forever
3: vxlan.calico: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 66:05:66:55:b7:4d brd ff:ff:ff:ff:ff:ff
    inet 10.244.178.64/32 scope global vxlan.calico
       valid_lft forever preferred_lft forever
    inet6 fe80::6405:66ff:fe55:b74d/64 scope link
       valid_lft forever preferred_lft forever
6: calife13f3ff4dd@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-8f0ee6e7-89c5-b2db-00e9-f448c9629e37
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
7: cali577b45b1157@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-93c06c56-2f1c-fc1f-7dbd-843015aad778
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
8: cali679cc9748d5@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-112bbd6e-cc85-65ae-0c46-53268bcb907b
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
9: calice24b7e2eed@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-2e7ac7dc-cacd-2fad-83f6-4cfcc00071eb
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
10: calid4621b62375@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-d9ac66e7-77ba-932a-5540-85edc2c715d5
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
11: cali73d58d6a0ce@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-7592bcbb-220f-9c0f-a391-594f1bdee48d
    inet6 fe80::ecee:eeff:feee:eeee/64 scope link
       valid_lft forever preferred_lft forever
admin@k8cp:~/Downloads/cpscripts$</code></pre></td>
</tr>
</tbody>
</table>

## DATA PLANE (WORKER NODE)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→This is the second ubuntu that we are working on.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image617.webp" style="width:7.52708in;height:3.05347in" alt="{881C557F-740E-457B-B390-BBC9CA09AF48}" /></p></td>
</tr>
<tr>
<td><p>→Clean up any existing traces.</p>
<pre><code class="language-bash">sudo snap remove --purge docker
sudo snap remove --purge kubectl
sudo rm -f /usr/local/bin/kind
sudo apt purge -y minikube
sudo apt autoremove -y
sudo rm -rf ~/.kube ~/.minikube ~/snap/docker
sudo apt clean
admin@k8dp1:~/Desktop$ hostnamectl
 Static hostname: k8dp1
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 11db4b66c0d743c59c80f612fd457cf9
         Boot ID: d73d0d9684364cd99f7f9feb43c452e6
  Virtualization: oracle
Operating System: Ubuntu 24.04.2 LTS
          Kernel: Linux 6.17.0-35-generic
    Architecture: x86-64
 Hardware Vendor: innotek GmbH
  Hardware Model: VirtualBox
Firmware Version: VirtualBox
   Firmware Date: Fri 2006-12-01
    Firmware Age: 19y 8month 1w 1d
admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># WORKER NODE SETUP
#
# Run Steps 1-3 on the WORKER node.
# Step 4 joins this machine to the control-plane node.
############################################################
############################################################
# STEP 0 - Disable swap
############################################################
# Kubernetes requires swap to be disabled.
sudo swapoff -a
# Check that no swap is active.
free -h
# If /etc/fstab contains a swap entry, comment it out so
# swap does not come back after reboot.
sudo sed -i '/swap/s/^/#/' /etc/fstab
cat /etc/fstab | grep -i swap
    admin@k8dp1:~/Desktop$ sudo swapoff -a
    [sudo] password for admin:
    admin@k8dp1:~/Desktop$ free -h
                total        used        free      shared  buff/cache   available
    Mem:            16Gi       1.1Gi        14Gi        38Mi       2.0Gi        15Gi
    Swap:             0B          0B          0B
    admin@k8dp1:~/Desktop$ which docker kind kubectl kubeadm minikube 2&gt;/dev/null
    snap list | grep -iE "docker|kube"
    dpkg -l | grep -iE "docker|containerd|kind|kube"
    admin@k8dp1:~/Desktop$
    admin@k8dp1:~/Desktop$ sudo sed -i '/swap/s/^/#/' /etc/fstab
    cat /etc/fstab | grep -i swap
    admin@k8dp1:~/Desktop$
    admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-plaintext">############################################################
# STEP 1 - Prepare Linux kernel for Kubernetes networking
############################################################
# Load kernel modules required by the container runtime
# and Kubernetes networking.
cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF
&#32;
    admin@k8dp1:~/Desktop$ ls -lrt /etc/modules-load.d/
    total 8
    -rw-r--r-- 1 root root 119 Mar 31  2024 cups-filters.conf
    lrwxrwxrwx 1 root root  10 Jun  5 15:36 modules.conf -&gt; ../modules
    -rw-r--r-- 1 root root  21 Aug  9 06:56 containerd.conf
    admin@k8dp1:~/Desktop$
# Load the modules immediately.
sudo modprobe overlay
sudo modprobe br_netfilter
# Enable packet forwarding and bridge networking.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
# Apply the kernel parameters immediately.
sudo sysctl --system
&#32;
    admin@k8dp1:~/Desktop$ sudo sysctl --system
    * Applying /usr/lib/sysctl.d/10-apparmor.conf ...
    * Applying /etc/sysctl.d/10-bufferbloat.conf ...
    * Applying /etc/sysctl.d/10-console-messages.conf ...
    * Applying /etc/sysctl.d/10-ipv6-privacy.conf ...
    * Applying /etc/sysctl.d/10-kernel-hardening.conf ...
    * Applying /etc/sysctl.d/10-magic-sysrq.conf ...
    * Applying /etc/sysctl.d/10-map-count.conf ...
    * Applying /etc/sysctl.d/10-network-security.conf ...
    * Applying /etc/sysctl.d/10-ptrace.conf ...
    * Applying /etc/sysctl.d/10-zeropage.conf ...
    * Applying /usr/lib/sysctl.d/30-tracker.conf ...
    * Applying /usr/lib/sysctl.d/50-bubblewrap.conf ...
    * Applying /usr/lib/sysctl.d/50-pid-max.conf ...
    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf ...
    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf": No such file or directory
    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf ...
    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf": No such file or directory
    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf ...
    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf": No such file or directory
    * Applying /etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf ...
    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf": No such file or directory
    * Applying /etc/sysctl.d/99-kubernetes-cri.conf ...
    * Applying /usr/lib/sysctl.d/99-protect-links.conf ...
    * Applying /etc/sysctl.d/99-sysctl.conf ...
    * Applying /etc/sysctl.conf ...
    kernel.apparmor_restrict_unprivileged_userns = 1
    net.core.default_qdisc = fq_codel
    kernel.printk = 4 4 1 7
    net.ipv6.conf.all.use_tempaddr = 2
    net.ipv6.conf.default.use_tempaddr = 2
    kernel.kptr_restrict = 1
    kernel.sysrq = 176
    vm.max_map_count = 1048576
    net.ipv4.conf.default.rp_filter = 2
    net.ipv4.conf.all.rp_filter = 2
    kernel.yama.ptrace_scope = 1
    vm.mmap_min_addr = 65536
    fs.inotify.max_user_watches = 65536
    kernel.unprivileged_userns_clone = 1
    kernel.pid_max = 4194304
    net.bridge.bridge-nf-call-iptables = 1
    net.ipv4.ip_forward = 1
    net.bridge.bridge-nf-call-ip6tables = 1
    fs.protected_fifos = 1
    fs.protected_hardlinks = 1
    fs.protected_regular = 2
    fs.protected_symlinks = 1
    vm.swappiness = 10
    vm.dirty_background_ratio = 5
    vm.dirty_ratio = 10
    vm.vfs_cache_pressure = 50
    net.core.rmem_max = 16777216
    net.core.wmem_max = 16777216
    vm.swappiness = 10
    vm.dirty_background_ratio = 5
    vm.dirty_ratio = 10
    vm.vfs_cache_pressure = 50
    net.core.rmem_max = 16777216
    net.core.wmem_max = 16777216
    admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 2 - Install and configure containerd
############################################################
# Install containerd, the container runtime used by Kubernetes.
sudo apt-get update
sudo apt-get install -y containerd
# Create containerd configuration directory.
sudo mkdir -p /etc/containerd
# Generate the default containerd configuration.
sudo containerd config default | sudo tee /etc/containerd/config.toml &gt; /dev/null
# Edit the containerd configuration.
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
grep SystemdCgroup /etc/containerd/config.toml
# Restart containerd with the new configuration.
sudo systemctl restart containerd
# Make sure containerd starts automatically after reboot.
sudo systemctl enable containerd
sudo systemctl status containerd --no-pager
    admin@k8dp1:~/Desktop$
    sudo systemctl status containerd --no-pager
    ● containerd.service - containerd container runtime
        Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)
        Active: active (running) since Sun 2026-08-09 07:03:13 UTC; 8s ago
        Docs: https://containerd.io
    Main PID: 5383 (containerd)
        Tasks: 8
        Memory: 13.6M (peak: 16.8M)
            CPU: 87ms
        CGroup: /system.slice/containerd.service
                └─5383 /usr/bin/containerd
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761601751Z" level=info msg="Start cni network conf syncer for default"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761779171Z" level=info msg="Start streaming server"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761829183Z" level=info msg="Registered namespace \"k8s.io\" with NRI"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761991029Z" level=info msg="runtime interface starting up..."
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762045641Z" level=info msg="starting plugins..."
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762094481Z" level=info msg="Synchronizing NRI (plugin) with cur…ime state"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761428043Z" level=info msg=serving... address=/run/containerd/c…sock.ttrpc
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762438726Z" level=info msg=serving... address=/run/containerd/c…inerd.sock
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.764257642Z" level=info msg="containerd successfully booted in 0.035193s"
    Aug 09 07:03:13 k8dp1 systemd[1]: Started containerd.service - containerd container runtime.
    Hint: Some lines were ellipsized, use -l to show in full.
    admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p> </p>
<p> </p>
<pre><code class="language-bash">############################################################
# STEP 3 - Install Kubernetes components
############################################################
# Update package information and install prerequisites.
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
# Create the keyring directory if it doesn't already exist.
sudo mkdir -p /etc/apt/keyrings
# Add the Kubernetes repository signing key.
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key \
  | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add the Kubernetes v1.32 package repository.
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' \
  | sudo tee /etc/apt/sources.list.d/kubernetes.list
# Refresh package information.
sudo apt-get update
# Check which kubeadm versions are available.
apt-cache madison kubeadm
# Install the same Kubernetes version used by the control plane.
sudo apt-get install -y \
  kubelet=1.32.0-1.1 \
  kubeadm=1.32.0-1.1 \
  kubectl=1.32.0-1.1 \
  cri-tools=1.32.0-1.1
# Prevent automatic Kubernetes package upgrades.
sudo apt-mark hold kubelet kubeadm kubectl
# Enable kubelet.
# It will remain waiting until kubeadm join connects this node
# to the control plane.
sudo systemctl enable --now kubelet
    # Verify the installation. Last few lines only.
    Unpacking kubelet (1.32.0-1.1) …
    Setting up conntrack (1:1.4.8-1ubuntu1) ...
    Setting up kubectl (1.32.0-1.1) ...
    Setting up cri-tools (1.32.0-1.1) ...
    Setting up kubernetes-cni (1.6.0-1.1) ...
    Setting up kubeadm (1.32.0-1.1) ...
    Setting up kubelet (1.32.0-1.1) ...
    Processing triggers for man-db (2.12.0-4build2) ...
    kubelet set on hold.
    kubeadm set on hold.
    kubectl set on hold.
    admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td><p>→Now that worker node is up, let us validate it.</p>
<pre><code class="nohighlight language-plaintext">admin@k8dp1:~/Desktop$
kubeadm version
kubelet --version
kubectl version --client
crictl --version
apt-mark showhold
systemctl is-enabled kubelet
systemctl status kubelet --no-pager
systemctl status containerd --no-pager
hostnamectl
lsmod | grep -E "overlay|br_netfilter"
sudo sysctl net.bridge.bridge-nf-call-iptables net.ipv4.ip_forward net.bridge.bridge-nf-call-ip6tables
free -h
    kubeadm version: &amp;version.Info{Major:"1", Minor:"32", GitVersion:"v1.32.0", GitCommit:"70d3cc986aa8221cd1dfb1121852688902d3bf53", GitTreeState:"clean", BuildDate:"2024-12-11T18:04:20Z", GoVersion:"go1.23.3", Compiler:"gc", Platform:"linux/amd64"}
    Kubernetes v1.32.0
    Client Version: v1.32.0
    Kustomize Version: v5.5.0
    crictl version v1.32.0
    kubeadm
    kubectl
    kubelet
    enabled
    ● kubelet.service - kubelet: The Kubernetes Node Agent
        Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)
        Drop-In: /usr/lib/systemd/system/kubelet.service.d
                └─10-kubeadm.conf
        <mark>Active: activating (auto-restart) (Result: exit-code)</mark> since Sun 2026-08-09 07:18:32 UTC; 519ms ago
        Docs: https://kubernetes.io/docs/
        Process: 7365 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)
    Main PID: 7365 (code=exited, status=1/FAILURE)
            CPU: 77ms
    ● containerd.service - containerd container runtime
        Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)
        Active: active (running) since Sun 2026-08-09 07:03:13 UTC; 15min ago
        Docs: https://containerd.io
    Main PID: 5383 (containerd)
        Tasks: 8
        Memory: 14.1M (peak: 16.8M)
            CPU: 924ms
        CGroup: /system.slice/containerd.service
                └─5383 /usr/bin/containerd
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761779171Z" level=info msg="Start streaming server"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761829183Z" level=info msg="Registered namespace \"k8s.io\" with NRI"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761991029Z" level=info msg="runtime interface starting up..."
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762045641Z" level=info msg="starting plugins..."
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762094481Z" level=info msg="Synchronizing NRI (plugin) with cur…ime state"
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761428043Z" level=info msg=serving... address=/run/containerd/c…sock.ttrpc
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762438726Z" level=info msg=serving... address=/run/containerd/c…inerd.sock
    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.764257642Z" level=info msg="containerd successfully booted in 0.035193s"
    Aug 09 07:03:13 k8dp1 systemd[1]: Started containerd.service - containerd container runtime.
    Aug 09 07:06:15 k8dp1 containerd[5383]: time="2026-08-09T07:06:15.682679143Z" level=error msg=failed to reload cni configuration after rec…
    Hint: Some lines were ellipsized, use -l to show in full.
    Static hostname: k8dp1
        Icon name: computer-vm
            Chassis: vm 🖴
        Machine ID: 11db4b66c0d743c59c80f612fd457cf9
            Boot ID: d73d0d9684364cd99f7f9feb43c452e6
    Virtualization: oracle
    Operating System: Ubuntu 24.04.2 LTS
            Kernel: Linux 6.17.0-35-generic
        Architecture: x86-64
    Hardware Vendor: innotek GmbH
    Hardware Model: VirtualBox
    Firmware Version: VirtualBox
    Firmware Date: Fri 2006-12-01
        Firmware Age: 19y 8month 1w 1d
    br_netfilter           32768  0
    bridge                425984  1 br_netfilter
    overlay               221184  0
    net.bridge.bridge-nf-call-iptables = 1
    net.ipv4.ip_forward = 1
    net.bridge.bridge-nf-call-ip6tables = 1
                total        used        free      shared  buff/cache   available
    Mem:            16Gi       1.2Gi        13Gi        38Mi       2.8Gi        15Gi
    Swap:             0B          0B          0B
    admin@k8dp1:~/Desktop$</code></pre>
<p>→Notice above highlighted item. : One thing that looks "off" is kubelet showing <mark>activating</mark> (auto-restart) with exit-code failure — but this is completely expected, exactly like we saw on k8cp before kubeadm init. kubelet won't fully start until it's joined to a cluster (Step 4). It'll keep restart-looping harmlessly until then.</p></td>
</tr>
<tr>
<td><p>→Get fresh token from the CONTROL PLANE AND JOIN THE WORKERNODE.</p>
<pre><code class="language-bash">############################################################
# STEP 4 - Join the worker to the Kubernetes cluster. FIRST GET A FRESH TOKEN FROM THE CONTROL-PLANE NODE.
############################################################
# IMPORTANT: get fresh token from the control-plane node before running the join command on the worker node. The token expires after 24 hours.
# if we are setting up in quick succession, we can use the same token for multiple worker nodes, but if we wait more than 24 hours, we need to generate a new token on the control-plane node.
#CONTROL PLANE NODE
kubectl get nodes
sudo kubeadm token create --print-join-command
    admin@k8cp:~/Desktop$ kubectl get nodes
    NAME   STATUS   ROLES           AGE   VERSION
    k8cp   Ready    control-plane   10h   v1.32.0
    admin@k8cp:~/Desktop$ sudo kubeadm token create --print-join-command
    [sudo] password for admin:
    kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440
    admin@k8cp:~/Desktop$
sudo kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440
    admin@k8dp1:~/Desktop$ sudo kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440
    [preflight] Running pre-flight checks
    [preflight] Reading configuration from the "kubeadm-config" ConfigMap in namespace "kube-system"...
    [preflight] Use 'kubeadm init phase upload-config --config your-config.yaml' to re-upload it.
    [kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"
    [kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"
    [kubelet-start] Starting the kubelet
    [kubelet-check] Waiting for a healthy kubelet at http://127.0.0.1:10248/healthz. This can take up to 4m0s
    [kubelet-check] The kubelet is healthy after 509.088489ms
    [kubelet-start] Waiting for the kubelet to perform the TLS Bootstrap
    This node has joined the cluster:
    * Certificate signing request was sent to apiserver and a response was received.
    * The Kubelet was informed of the new secure connection details.
    Run 'kubectl get nodes' on the control-plane to see this node join the cluster.
    admin@k8dp1:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 5 - Verify the worker
#
# Switch back to the CONTROL-PLANE node for this step.
############################################################
# Check all nodes in the cluster.
kubectl get nodes
    admin@k8cp:~/Desktop$ kubectl get nodes
    NAME    STATUS   ROLES           AGE   VERSION
    k8cp    Ready    control-plane   11h   v1.32.0
    k8dp1   Ready    &lt;none&gt;          71s   v1.32.0
    admin@k8cp:~/Desktop$</code></pre></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

## DEPLOY Nginx App

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="nohighlight language-bash"># STEP 6 - DEPLOY A POD AND CHECK THE STATUS. USE FOR NOW CONTROL PLANE TO RUN CMDS AS IT HAS KUBECTL INSTALLED.
############################################################
kubectl run nginx --image=nginx
kubectl get pods -o wide
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$ kubectl run nginx --image=nginx
    kubectl get pods -o wide
    pod/nginx created
    NAME    READY   STATUS              RESTARTS   AGE   IP       NODE    NOMINATED NODE   READINESS GATES
    nginx   0/1     ContainerCreating   0          0s    &lt;none&gt;   k8dp1   &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$ kubectl get pods -o wide
    NAME    READY   STATUS              RESTARTS   AGE   IP       NODE    NOMINATED NODE   READINESS GATES
    nginx   0/1     ContainerCreating   0          9s    &lt;none&gt;   k8dp1   &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$ kubectl get pods -o wide
    NAME    READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
    nginx   1/1     Running   0          26s   <mark>10.244.245.67</mark>   k8dp1   &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Exec into the pod and test a curl.</p>
<pre><code class="nohighlight language-bash">kubectl exec -it nginx -- bash
curl <mark>10.244.245.67</mark></code></pre>
<blockquote>
<pre><code class="nohighlight language-bash">admin@k8cp:~/Desktop$
admin@k8cp:~/Desktop$ kubectl exec -it nginx -- bash
root@nginx:/#
root@nginx:/# curl <mark>10.244.245.67</mark>
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Welcome to nginx!&lt;/title&gt;
&lt;style&gt;
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
&lt;/style&gt;</code></pre>
</blockquote>
<p>→Expose a service and access it. Just to test the proxy working etc.</p>
<pre><code class="language-bash">kubectl expose pod nginx --port=80 --target-port=80 --name=nginx-svc
kubectl get svc nginx-svc</code></pre>
<blockquote>
<pre><code class="language-plaintext">admin@k8cp:~/Desktop$ kubectl expose pod nginx --port=80 --target-port=80 --name=nginx-svc
kubectl get svc nginx-svc
service/nginx-svc exposed
NAME        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
nginx-svc   ClusterIP   10.99.42.147   &lt;none&gt;        80/TCP    1s
admin@k8cp:~/Desktop$
admin@k8cp:~/Desktop$ curl 10.99.42.147
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Welcome to nginx!&lt;/title&gt;
&lt;style&gt;
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;Welcome to nginx!&lt;/h1&gt;</code></pre>
<p>&lt;p&gt;If you see this page, nginx is successfully installed and working.</p>
<p>Further configuration is required for the web server, reverse proxy,</p>
<p>API gateway, load balancer, content cache, or other features.&lt;/p&gt;</p>
<pre><code class="language-plaintext">&lt;p&gt;For online documentation and support please refer to
&lt;a href="https://nginx.org/"&gt;nginx.org&lt;/a&gt;.&lt;br/&gt;
To engage with the community please visit
&lt;a href="https://community.nginx.org/"&gt;community.nginx.org&lt;/a&gt;.&lt;br/&gt;
For enterprise grade support, professional services, additional
security features and capabilities please refer to
&lt;a href="https://f5.com/nginx"&gt;f5.com/nginx&lt;/a&gt;.&lt;/p&gt;
&lt;p&gt;&lt;em&gt;Thank you for using nginx.&lt;/em&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
admin@k8cp:~/Desktop$</code></pre>
</blockquote></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Delete the pod</p>
<pre><code class="language-bash">admin@k8cp:~/Desktop$ kubectl delete pod nginx
kubectl delete svc nginx-svc
pod "nginx" deleted
service "nginx-svc" deleted
admin@k8cp:~/Desktop$</code></pre></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |

# Setting up K8 - Manual 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image618.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>PS C:\ws&gt; kubectl --kubeconfig="C:\Users\Sridhara\.kube\localkubeconfig" get nodes</p>
<pre><code class="language-bash">NAME    STATUS   ROLES           AGE   VERSION
k8cp    Ready    control-plane   9d    v1.32.0
k8dp1   Ready    &lt;none&gt;          8d    v1.32.0
PS C:\ws&gt; $env:KUBECONFIG="C:\Users\Sridhara\.kube\localkubeconfig"
PS C:\ws&gt; kubectl get nodes
NAME    STATUS   ROLES           AGE   VERSION
k8cp    Ready    control-plane   9d    v1.32.0
k8dp1   Ready    &lt;none&gt;          8d    v1.32.0
PS C:\ws&gt;</code></pre>
<p>→I have already copied to windows host the files to above location. We can now directly access it.</p>
<p>→Just that everytime a new session is taken, run the kubeconfig line.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>export KUBECONFIG="/c/Users/Sridhara/.kube/localkubeconfig"</p>
<p>$env:KUBECONFIG="C:\Users\Sridhara\.kube\localkubeconfig"^C</p>
<p> </p>
<p>→GITBASH AND POWERSHELL</p></td>
</tr>
</tbody>
</table>

#  Advanced : INGRESS 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Why do we need Ingress? Imagine below scenario</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image619.webp" style="width:3.95486in;height:2.12847in" /></p></td>
</tr>
<tr>
<td><p>→What is the ideal solution</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image620.webp" style="width:4.26528in;height:1.69306in" /></p></td>
</tr>
<tr>
<td><p>→Reference diagram</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image621.webp" style="width:4.95833in;height:1.88403in" /></p></td>
</tr>
</tbody>
</table>

##  SETUP INGRESS - KUBERNETES VANILA 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Let us setup k8 vanila ingress controller, which will will dynamically route to two of the backend services that we will be spinning up.</p>
<p>→As an example we are taking two backend services viz., ing1 and ing2.</p>
<p>→Refer Labs: C:\ws\sboot\lab057 and C:\ws\sboot\lab058, respectively.</p>
<p>→Ensure these two labs are running in kubernetes.</p>
<p>→Appropriate steps to run them on kubernetes is inside the projects.</p>
<p>→Important to note that ingress controller ‘also’ creates a loadbalancer. However, in local we won’t be able to test the same and we must port forward to access the ingress.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image622.webp" style="width:5.60069in;height:2.38611in" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image623.webp" style="width:5.81528in;height:3.95694in" /></p></td>
</tr>
</tbody>
</table>

###  Spin up 2 Backend Services - On Intelij

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to below two folders and execute all the commands listed in the file.</p>
<p>→C:\ws\sboot\lab057 &amp; C:\ws\sboot\lab058</p>
<p>→File: commands-docker.sh</p>
<p>→Once both the services are up on kubernetes, we see below.</p>
<p>Simplified as below and the highlighted last lines are together and not different commands. So copy together and run.</p>
<pre><code class="nohighlight language-bash">cd c:\ws\sboot\<strong>lab057</strong></code></pre>
<p><strong>#If it is mounted on Linux then as below.</strong></p>
<p><strong>cd /media/sf_ws/sboot/lab057</strong></p>
<pre><code class="nohighlight language-bash">ssh sridhara@localhost -p 2222 #We will need to have 3 terminals so use
mvn clean package
docker build -t ing1:latest .
docker tag ing1:latest nerdysrisha/ing1:latest
docker push nerdysrisha/ing1:latest
kubectl create namespace integrations
kubectl delete -f deployment.yaml
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
<em><strong>kubectl wait --for=condition=Ready pod -l app=ing1 -n integrations --timeout=300s; kubectl port-forward svc/ing1-service -n integrations 8081:8081</strong></em>
cd c:\ws\sboot\<strong>lab058</strong></code></pre>
<p><strong>cd /media/sf_ws/sboot/lab058</strong></p>
<pre><code class="nohighlight language-bash">mvn clean package
docker build -t ing2:latest .
docker tag ing2:latest nerdysrisha/ing2:latest
docker push nerdysrisha/ing2:latest
kubectl create namespace integrations
kubectl delete -f deployment.yaml
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
<em><strong>kubectl wait --for=condition=Ready pod -l app=ing2 -n integrations --timeout=300s; kubectl port-forward svc/ing2-service -n integrations 8082:8082</strong></em></code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image624.webp" style="width:5.20556in;height:3.16944in" alt="{F4BE2051-EB4D-42C0-900E-032E3BB302C4}" /></p></td>
</tr>
<tr>
<td><p>→Get pods that shows the worker nodes as well</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image625.webp" style="width:7.52778in;height:0.91528in" alt="{9A6E29F9-C7DE-4C74-8E51-571085AFA6AF}" /></p></td>
</tr>
</tbody>
</table>

###  Install Ingress Controller 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a namespace and install the Ingress Controller</p>
<pre><code class="language-bash">kubectl create namespace ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image626.webp" style="width:7.54167in;height:3.55139in" alt="{925C604E-04DB-44EF-8D03-649A975777DF}" /></p></td>
</tr>
<tr>
<td><p>→Check Ingress Controller Pod has come up</p>
<pre><code class="language-bash">kubectl get pods -n ingress-nginx -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image627.webp" style="width:7.53194in;height:0.70069in" alt="{7FA0C3BD-E28C-41F8-961F-71A5D9096C5B}" /></p></td>
</tr>
<tr>
<td><p>→Check the service</p>
<pre><code class="language-bash">kubectl get svc -n ingress-nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image628.webp" style="width:7.53264in;height:0.86806in" alt="{0216D19E-D961-4B4B-B86C-6C18186A868A}" /></p></td>
</tr>
<tr>
<td><p>→Additionally validate if all is good run below command as well</p>
<pre><code class="language-bash">kubectl get validatingwebhookconfiguration ingress-nginx-admission</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image629.webp" style="width:6.875in;height:1.17708in" alt="{064CDB6C-7E6E-4022-A578-89D8B4869B64}" /></p></td>
</tr>
<tr>
<td><p>→Validate the inner class is present</p>
<pre><code class="language-bash">kubectl get ingressclass</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image630.webp" style="width:6.36458in;height:1.23958in" alt="{3ADEAD77-BB9A-443B-B2C2-3427B9D0BAD1}" /></p></td>
</tr>
<tr>
<td><p>→Validate the deployment of ingress controller</p>
<pre><code class="language-bash">kubectl get deployment -n ingress-nginx</code></pre>
<p><mark>HERE HERE HERE SETTING UP INGRESS ON LINUX BOX</mark></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image631.webp" style="width:7.53611in;height:1.04028in" alt="{D216B3BE-F726-4731-B0BD-66E6ECF6A8CA}" /></p></td>
</tr>
<tr>
<td><p>→Validate the logs of Ingress Controller</p>
<pre><code class="language-bash">kubectl logs -n ingress-nginx deploy/ingress-nginx-controller</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image632.webp" style="width:7.53056in;height:3.83194in" alt="{876DB517-9E60-4241-986C-6248982E519E}" /></p></td>
</tr>
</tbody>
</table>

###  Create Ingress Service (or simply routing rules configuration) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create this file. This is the place where routing rules are configured.</p>
<p>→Example: For this path go to this service and For that path go to that service.</p>
<p>→<strong>Note</strong>: The namespace is critical here. Ingress resources are namespace-scoped, meaning an Ingress can only reference Service objects that exist in the same namespace. If the Ingress and the target Service are in different namespaces, routing will fail. This will be different for ISTIO. Shown ahead.</p>
<pre><code class="language-yaml">apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: hworld-ingress
  namespace: integrations
spec:
  ingressClassName: nginx
  rules:
    - http:
        paths:
          - path: /ing1
            pathType: Prefix
            backend:
              service:
                name: ing1-service
                port:
                  number: 8081
          - path: /ing2
            pathType: Prefix
            backend:
              service:
                name: ing2-service
                port:
                  number: 8082</code></pre></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<pre><code class="language-bash">cd c:\ws\k8basics\101basic-resources
kubectl delete -f ingress.yaml #(If already existing)
kubectl apply -f ingress.yaml
kubectl get ingress -n integrations
kubectl describe ingress hworld-ingress -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image633.webp" style="width:7.53958in;height:3.71181in" alt="{4CE4FE04-15F8-4592-8D5A-2604EB86DF0E}" /></p>
<p><mark>Rerun the get ingress to see the IP Address assigned … is this required? What happens it does not come??</mark></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image634.webp" style="width:5.04167in;height:1.13542in" alt="{6FB39282-E1BA-46A5-9FEB-933E8EC0F6C1}" /></p></td>
</tr>
<tr>
<td><p>→PortForward</p>
<pre><code class="language-bash">kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 8080:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image635.webp" style="width:7.53611in;height:0.68472in" alt="{0D63F1CC-5C62-4859-B9A0-B9A439DF6A52}" /></p></td>
</tr>
<tr>
<td><p>→Test using the curl</p>
<p>→NOTICE: the port is not 8081 or 8082, but the port of ingress, which is 8080</p>
<pre><code class="language-bash">Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)
$ curl http://localhost:8080/ing2
Hello World from Ingress two. Path /ing2
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)
$ curl http://localhost:8080/ing1
Hello World from Ingress one. Path /ing1
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)
$</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image636.webp" style="width:5.59375in;height:1.96875in" alt="{612ACCDF-3BBC-4099-AA3A-F5174ADCED7C}" /></p></td>
</tr>
<tr>
<td><p>→Clean up ingress and leave the services as-is, given we will be doing ‘istio ahed’</p>
<pre><code class="language-bash">kubectl delete ingress hworld-ingress -n integrations
kubectl delete namespace ingress-nginx</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image637.webp" style="width:7.53333in;height:4.30208in" alt="{BEE949DC-B556-462A-8615-DD3F9F21F7D1}" /></p></td>
</tr>
</tbody>
</table>

###  Keep Backend Services - Running

|                                                                        |
|------------------------------------------------------------------------|
| → Leave the BE services running as they will be needed for ISTIO ahead |
|                                                                        |

##  SETUP INGRESS - ISTIO SERVICE MESH 

###  High-level Istio Architecture

<table>
<colgroup>
<col style="width: 64%" />
<col style="width: 35%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image638.webp" style="width:4.64931in;height:3.29931in" alt="{2B7889F2-4933-42E2-810E-0E643787DE0E}" /></p></td>
<td><p>→Ensure any existing ingress configurations are removed. Refer above section for cleanup.</p>
<p>→Istio has two planes viz., Data Plane and Control Plane.</p>
<p>→Data Plane where the actual proxies reside that monitors the entire traffic.</p>
<p>→Data Plane where the entire istio gets managed.</p></td>
</tr>
</tbody>
</table>

###  High-level Diagramatic representation 

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image639.webp" style="width:6.03681in;height:7.33194in" /> |

###  Download IstioCtl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Download zip from:</p>
<p><a href="https://github.com/istio/istio/releases/download/1.27.0/istio-1.27.0-win.zip?utm_source=chatgpt.com">https://github.com/istio/istio/releases/download/1.27.0/istio-1.27.0-win.zip</a></p>
<p>→Extract to a location.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image640.webp" style="width:7.36458in;height:2.125in" alt="{427CE3D3-D740-4270-AC5E-AC84681290E9}" /></p></td>
</tr>
<tr>
<td><p>→Set Environment variable. Notice the path upto ‘bin’.</p>
<p>→This is the place where the exe file is placed.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image641.webp" style="width:3.34028in;height:3.24167in" alt="{C08F6820-F0EA-4EEC-A27A-453A96532C9F}" /></p></td>
</tr>
<tr>
<td><p>→Check the version of ‘istioctl’.</p>
<p>→Note that we are not yet having ‘istio pods’ in the cluster and hence the message.</p>
<pre><code class="language-bash">istioctl version</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image642.webp" style="width:7.52708in;height:1.07014in" alt="{0AFDBB50-2873-4386-948F-E5E6898B19C2}" /></p></td>
</tr>
<tr>
<td><p>→When ISTIO-IS-INSTALLED etc, we get below. Capture this screenshot after installation</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image643.webp" style="width:4.19792in;height:1.14583in" alt="{8EE5E9C1-0C26-42EB-BB0D-359EFE55025A}" /></p></td>
</tr>
</tbody>
</table>

###  Install ISTIO Control plane 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→This deploys Istio control plane (istiod) and Istio ingress gateway.</p>
<pre><code class="language-bash">istioctl install --set profile=demo -y</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image644.webp" style="width:5.72292in;height:3.30486in" alt="{1B1AD80C-5A26-4437-8B67-E316D26BCADC}" /></p></td>
</tr>
<tr>
<td><p>→What did it do?</p>
<p>→istioctl.exe runs locally (from the zip you downloaded).</p>
<p>→That command applies Istio manifests into your Kubernetes cluster (your Docker Desktop, AKS, EKS, etc.).</p>
<p>→It creates the istio-system namespace and deploys Istio control plane components (like istiod, ingress/egress gateways, webhooks).</p>
<p>·</p></td>
</tr>
</tbody>
</table>

###  Validate Istio installation 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Once we run, we get ton of things loaded onto the kubernetes cluster.</p>
<pre><code class="language-bash">kubectl get ns #(we will get a new namespace)
kubectl get pods -n istio-system
kubectl get svc -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image645.webp" style="width:7.51667in;height:2.2125in" alt="{68D96622-9942-4D92-BF2B-4F56AE534375}" /></p></td>
</tr>
<tr>
<td><p>→Brief understanding</p>
<p>istiod → Istio control plane (manages configs, sidecar injection, routing, etc.)</p>
<p>istio-ingressgateway → Handles incoming traffic (equivalent to NGINX ingress controller before).</p>
<p>istio-egressgateway → (Optional) handles controlled outbound traffic to external services.</p>
<p>And your istio-ingressgateway is exposed as a LoadBalancer with <mark>EXTERNAL-IP 172.18.0.3</mark> — exactly like the NGINX ingress controller was earlier.</p></td>
</tr>
</tbody>
</table>

###  Label the Integration Namespace 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Label the Namespace of Integration annotating that it is Istio enabled</p>
<p>→IMPORTANT: This command enables automatic Istio sidecar injection in the integrations namespace, so pods there get an <strong>Envoy proxy</strong> added for traffic routing, security, and observability.<br />
→You only need to label namespaces where workloads should be part of the Istio service mesh.<br />
→If you don’t, pods run normally but won’t benefit from Istio’s features.<br />
→Other namespaces can be labeled if you want them managed by Istio too.</p></td>
</tr>
<tr>
<td><p>→Check the pods of integrations namespace where the pods that are showing ‘ready’ has 1/1.</p>
<p>→Meaning they have just ‘one’ container running inside the pod.</p>
<pre><code class="language-bash">kubectl get pods -n integrations -o wide</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image646.webp" style="width:7.53403in;height:0.92986in" alt="{F95B1737-C830-4DF3-AE85-758FAB5AC5CE}" /></p>
<pre><code class="language-bash">kubectl label namespace integrations istio-injection=enabled</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image647.webp" style="width:7.52778in;height:0.53264in" alt="{989F4EB2-233E-4122-958B-5B995C9289C6}" /></p></td>
</tr>
<tr>
<td><p>→Below command shows all namespaces with their labels;</p>
<p>→NOTICE, only integrations has istio-injection=enabled, meaning pods there will get an Istio sidecar.<br />
→The other namespaces have only the default metadata label, so they run outside the Istio mesh.</p>
<pre><code class="language-bash">kubectl get namespace --show-labels</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image648.webp" style="width:7.53681in;height:1.65694in" alt="{34192006-B933-40A2-A8C2-F30FA77FCF29}" /></p></td>
</tr>
<tr>
<td><p>→Describe the namespace to see more details</p>
<pre><code class="language-bash">kubectl describe ns integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image649.webp" style="width:7.0625in;height:1.94792in" alt="{07700AD6-E30F-4342-8116-D4CF6375A2E6}" /></p></td>
</tr>
</tbody>
</table>

###  Rollout or Restart the deployments 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→OPTION 1 - Rollout the applications again</p>
<pre><code class="language-bash">kubectl rollout restart deployment ing1-deployment -n integrations
kubectl rollout restart deployment ing2-deployment -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image650.webp" style="width:5.54931in;height:2.97569in" alt="{C2D7E86C-343A-4533-A251-6DB697972DC7}" /></p>
<p>→Notice the pods ‘after rollout’.</p></td>
</tr>
<tr>
<td><p>→<strong>OPTION 2</strong> - Delete the deployment and apply again. But this will need to be done against all the pods explicitely etc. Hence, in this document ‘rollout’ option is choosen with ‘namespace’.</p>
<pre><code class="language-bash">kubectl delete -f .\deployment.yaml
kubectl apply -f .\deployment.yaml</code></pre></td>
</tr>
</tbody>
</table>

###  Create Gateway 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create this file</p>
<pre><code class="language-yaml">apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  name: intg-services-gateway
  namespace: istio-system  # Centralized management in istio-system namespace
spec:
  selector:
    istio: ingressgateway  # Uses the default Istio ingress gateway pod
  servers:
  - port:
      number: 80           # Listens on port 80 for HTTP traffic
      name: http
      protocol: HTTP
    hosts:
    - "*"                  # Accepts traffic for all hosts (wildcard)</code></pre></td>
</tr>
<tr>
<td><p>→Apply</p>
<pre><code class="language-bash">cd c:\ws\k8basics\101basic-resources\istio
kubectl delete -f .\gateway.yaml #if exists
kubectl apply -f .\gateway.yaml
kubectl get gateways --all-namespaces</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image651.webp" style="width:7.53056in;height:1.97639in" alt="{AD6AB821-C2F5-4956-9A32-BE3626CEA257}" /></p></td>
</tr>
</tbody>
</table>

###  Create Virtual Service (Routing Rules) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Create this file</p>
<pre><code class="language-yaml">apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  name: intg-services-virtualservice
  namespace: istio-system  # Centralized with gateway in same namespace
spec:
  hosts:
  - "*"                    # Applies to all hosts
  gateways:
  - intg-services-gateway  # References gateway in same namespace (no prefix needed)
  http:
  - match:
    - uri:
        prefix: /ing1     # Routes requests with /ing1 path prefix
    route:
    - destination:
        host: ing1-service.integrations.svc.cluster.local  # Target service in integrations namespace
        port:
          number: 8081    # Target port of the service
  - match:
    - uri:
        prefix: /ing2     # Routes requests with /ing2 path prefix
    route:
    - destination:
        host: ing2-service.integrations.svc.cluster.local  # Target service in integrations namespace
        port:
          number: 8082    # Target port of the service</code></pre></td>
</tr>
<tr>
<td><pre><code class="language-bash">kubectl delete -f virtualservice.yaml
kubectl apply -f virtualservice.yaml
kubectl get virtualservices --all-namespaces</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image652.webp" style="width:7.53542in;height:1.49028in" alt="{35F116ED-FC1C-4788-B754-E183519972DA}" /></p></td>
</tr>
</tbody>
</table>

###  Validate the GW / Virtual Services created 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Execute below to validate</p>
<pre><code class="language-bash">kubectl get gateways --all-namespaces
kubectl get virtualservice --all-namespaces
kubectl get pods -n integrations -o wide
kubectl describe pod ing1-deployment-xxxxxxxx -n integrations | findstr istio-proxy
kubectl get svc istio-ingressgateway -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image653.webp" style="width:7.51597in;height:2.08958in" alt="{CBEABAC0-1F86-43EB-ADF9-69A1DD01C195}" /></p></td>
</tr>
<tr>
<td><p><strong>Gateway</strong>: Entry point for traffic into the cluster, defines ports and protocols for external access</p>
<p><strong>VirtualService</strong>: Routing rules that direct incoming traffic to specific services based on paths/hosts</p>
<p><strong>Pods</strong>: Application instances running with both main container and Istio sidecar (2/2 ready)</p>
<p><strong>Sidecar</strong>: Istio's envoy proxy container that handles traffic interception and management</p>
<p><strong>Ingress Gateway</strong>: Istio's load balancer that receives external traffic and forwards to internal services</p>
<p><strong>External IP</strong>: Shows as pending because KIND doesn't provide external LB (use port-forward or node IP)</p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Validate all resources - ns:istio-system 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Notice the resources that get created under the istio-system</p>
<pre><code class="language-bash">kubectl get all -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image654.webp" style="width:7.52153in;height:2.1875in" alt="{C68B66F6-1295-410D-BFD5-477B5799D167}" /></p></td>
</tr>
</tbody>
</table>

###  Validate Side Car

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Describe one pod and display ‘containers’ inside it.</p>
<pre><code class="language-bash">kubectl get pods
kubectl get pod ing1-deployment-bb6c6bb5f-k85rj -n integrations -o jsonpath='{.spec.containers[*].name}'
kubectl describe pod ing1-deployment-bb6c6bb5f-k85rj -n integrations | grep -A10 "Containers:"
kubectl exec ing1-deployment-bb6c6bb5f-k85rj -n integrations -c istio-proxy -- curl -s localhost:15000/stats | head -5</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image655.webp" style="width:5.75625in;height:5.37778in" alt="{BF9410D1-EEB4-418F-9CF4-8BE9AC6245D0}" /></p></td>
</tr>
<tr>
<td><p>→ Run a Curl to test about the istio-proxy</p>
<pre><code class="language-bash">kubectl exec ing1-deployment-5fc8bfd8cf-vms26 -n integrations -c istio-proxy -- curl -s localhost:15000/stats | head -5</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image656.webp" style="width:7.53472in;height:0.83819in" alt="{1C2C7DA0-EE8C-4FC5-A7A5-2CFA1840FC20}" /></p>
<p><strong>Evidence</strong>:</p>
<p>cluster_manager.cds.version_text - Shows the sidecar is connected to Istio control plane (istiod)</p>
<p>listener_manager.lds.version_text - Proves Envoy proxy is receiving configuration updates</p>
<p>cluster.xds-grpc - Confirms communication with Istiod's gRPC service</p>
<p><strong>The command worked because:</strong></p>
<p>The -c istio-proxy container exists and is running</p>
<p>Envoy proxy is listening on port 15000</p>
<p>The sidecar is fully functional and managing traffic</p></td>
</tr>
</tbody>
</table>

###  Portforward

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Port forward</p>
<p><mark></mark></p>
<pre><code class="language-bash">kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image657.webp" style="width:7.53056in;height:0.88819in" alt="{52096CF2-E354-4586-A8C2-59DB18421E91}" /></p></td>
</tr>
</tbody>
</table>

###  Test both services 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→invoke curls</p>
<pre><code class="language-bash">curl http://localhost:8080/ing1
curl http://localhost:8080/ing2</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image658.webp" style="width:4.41667in;height:1.82292in" alt="{69849CFC-7BF9-4AED-9753-FADC0256AA4D}" /></p></td>
</tr>
</tbody>
</table>

###  Summary 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→What did we achieve</p>
<p>→ Installed Istio ✅</p>
<p>→Enabled sidecar injection ✅</p>
<p>→Deployed your Gateway + VirtualService ✅</p>
<p>→Verified pods with istio-proxy ✅</p>
<p>→Reached your app via Istio ingress ✅</p></td>
</tr>
</tbody>
</table>

##  Create Egress - ISTIO EGRESS

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Egress configurations directory</p>
<p>→We will be creating four resources</p>
<p>→ServiceEntry – Registers httpbin.org as an external service so workloads inside the mesh are allowed to send HTTP traffic outside.</p>
<p>→Gateway – Defines the egress gateway listener on port 80 to control outbound HTTP traffic to external hosts.</p>
<p>→VirtualService (route-through-egress) – Forces traffic destined for httpbin.org through the Istio egress gateway instead of going directly.</p>
<p>→DestinationRule – Configures connection pool and traffic policies for traffic routed through the egress gateway.</p>
<p>→VirtualService (direct-through-egress) – Specifies how the egress gateway itself forwards traffic from inside the mesh to httpbin.org.</p>
<pre><code class="language-bash">cd C:\ws\k8basics\101basic-resources\istio\egress</code></pre></td>
</tr>
</tbody>
</table>

###  Create SE - GW - VS 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create a file with below entities.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p># 1. ServiceEntry - allow external HTTP traffic</p>
<pre><code class="language-yaml">apiVersion: networking.istio.io/v1alpha3
kind: ServiceEntry
metadata:
  name: allow-egress-http
  namespace: istio-system
spec:
  hosts:
  - "httpbin.org"
  ports:
  - number: 80
    name: http
    protocol: HTTP
  resolution: DNS
  location: MESH_EXTERNAL
---
# 2. Gateway - configure egress gateway for HTTP
apiVersion: networking.istio.io/v1alpha3
kind: Gateway
metadata:
  name: egress-gateway
  namespace: istio-system
spec:
  selector:
    istio: egressgateway
  servers:
  - port:
      number: 80
      name: http
      protocol: HTTP
    hosts:
    - "httpbin.org"
---
# 3. VirtualService - route traffic via egress gateway
apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  name: route-through-egress
  namespace: istio-system
spec:
  hosts:
  - "httpbin.org"
  gateways:
  - mesh
  - egress-gateway
  http:
  - match:
    - port: 80
    route:
    - destination:
        host: istio-egressgateway.istio-system.svc.cluster.local
        port:
          number: 80
---
# 4. DestinationRule for egress gateway (HTTP does not need TLS)
apiVersion: networking.istio.io/v1beta1
kind: DestinationRule
metadata:
  name: dr-egressgateway-http
  namespace: istio-system
spec:
  host: istio-egressgateway.istio-system.svc.cluster.local
  trafficPolicy:
    connectionPool:
      tcp:
        maxConnections: 100
      http:
        http1MaxPendingRequests: 100
        maxRequestsPerConnection: 100
---
# 5. Second VirtualService for Gateway itself
apiVersion: networking.istio.io/v1alpha3
kind: VirtualService
metadata:
  name: direct-through-egress
  namespace: istio-system
spec:
  hosts:
  - "httpbin.org"
  gateways:
  - egress-gateway
  http:
  - route:
    - destination:
        host: httpbin.org
        port:
          number: 80</code></pre></td>
</tr>
<tr>
<td><p>→Save, Apply and view</p>
<pre><code class="language-bash">cd C:\ws\k8basics\101basic-resources\istio\egress
kubectl delete -f .\egress-configuration.yaml
kubectl apply -f .\egress-configuration.yaml
kubectl get serviceentry,gateway,virtualservice -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image659.webp" style="width:7.52847in;height:3.28194in" alt="{261AEF3C-797E-4530-8FBC-F79FFA15DD5C}" /></p></td>
</tr>
<tr>
<td><p>→Describe</p>
<pre><code class="language-bash">kubectl describe gateway egress-gateway -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image660.webp" style="width:7.53889in;height:3.66181in" alt="{731923BF-2095-4059-8CF4-8C3EF10A3E07}" /></p></td>
</tr>
</tbody>
</table>

###  List the Pods of istio-system 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get pods -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image661.webp" style="width:7.52847in;height:1.22222in" alt="{C90EBA60-C13D-4CD5-8BEE-B9708845950D}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

###  Monitor the egress POD Logs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl logs -f -n istio-system deploy/istio-egressgateway -c istio-proxy</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image662.webp" style="width:7.52431in;height:2.3875in" alt="{6B38A570-4E9A-44F0-AD7E-5BAFF683F452}" /></p></td>
</tr>
<tr>
<td><p>→This is the place where the traffic exits from</p></td>
</tr>
</tbody>
</table>

###  Spin up the Integration Pod - Egress Application 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Run below commands</p>
<pre><code class="language-bash">cd c:\ws\sboot\lab059
mvn clean package
docker build -t egress-intg1:latest .
docker tag egress-intg1:latest nerdysrisha/egress-intg1:latest
docker push nerdysrisha/egress-intg1:latest
kubectl create namespace integrations
kubectl delete -f deployment.yaml
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
kubectl wait --for=condition=Ready pod -l app=egress-intg1 -n integrations --timeout=300s</code></pre></td>
</tr>
</tbody>
</table>

###  List the Integraton Resources

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get all -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image663.webp" style="width:5.41806in;height:4.18264in" alt="{ACB4925E-12D7-4C1E-8C50-A7650C15D0ED}" /></p></td>
</tr>
<tr>
<td><p>→From the ‘egress’ pod in integrations namespace, the traffic will exit.</p>
<p>→Notice the port that we will be exposing.</p></td>
</tr>
</tbody>
</table>

###  Port-forward the applications

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl port-forward svc/egress-intg1-service -n integrations 8083:8083</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image664.webp" style="width:7.44792in;height:1.41667in" alt="{26DB0BB3-E68A-4FC9-8752-F58018D05768}" /></p></td>
</tr>
</tbody>
</table>

###  Invoke curl 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">curl http://localhost:8083/egress/intg1</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image665.webp" style="width:5.79167in;height:2.14583in" alt="{50E4E4C6-6DEA-4033-8F36-09741638F632}" /></p></td>
</tr>
</tbody>
</table>

###  Monitor the egress POD Logs (ISTIO)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl logs -f -n istio-system deploy/istio-egressgateway -c istio-proxy</code></pre>
<p>→Notice the last entry that got added.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image666.webp" style="width:7.52431in;height:0.825in" alt="{6A29AEA7-30AA-40D4-A997-DC7750A548A8}" /></p></td>
</tr>
</tbody>
</table>

###  Monitor Spring Boot App Logs

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl get pods
kubectl logs egress-intg1-deployment-687f6fbc6f-q6zqm</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image667.webp" style="width:6.21875in;height:1.45833in" alt="{3D9C97E4-9F5F-4E99-AFDB-A9DD1944A61A}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image668.webp" style="width:5.67361in;height:2.43264in" alt="{F2A38381-DCFA-4554-BCC7-0247D16FE130}" /></p>
<p>→Notice the last entries we got the response printed</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image669.webp" style="width:6.23611in;height:3.23472in" alt="{864C97A1-96D2-4C2C-8B94-DFCDFFAB72AB}" /></p></td>
</tr>
</tbody>
</table>

###  Summary of Traffic Channelling (Full Chain) 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-plaintext">[Pod] egress-intg1 (ns: integrations)
│
│ (traffic intercepted by Istio sidecar)
▼
[Sidecar Proxy] Envoy in egress-intg1 pod
│
│ (routing rules applied)
│
├─ uses [ServiceEntry] allow-httpbin-http
│ hosts: ["httpbin.org"]
│
└─ uses [VirtualService] route-httpbin-through-egress
gateways: ["mesh","egress-httpbin-gateway"]
destination: istio-egressgateway.svc.cluster.local:80
│
▼
[Service] ClusterIP: istio-egressgateway (ns: istio-system)
│
│ (forwarded to pod)
▼
[Pod] istio-egressgateway-5d95556c76-nsg96 (ns: istio-system)
│
│ (applies Gateway rules)
├─ [Gateway] egress-httpbin-gateway
│ port: 80, hosts: ["httpbin.org"]
│
│ (applies outbound routing)
├─ [VirtualService] direct-httpbin-from-egress
│ destination: httpbin.org:80
│
└─ [DestinationRule] dr-egressgateway-http
trafficPolicy: connectionPool, etc.
│
▼</code></pre>
<p>[External DNS Resolution] httpbin.org → 34.238.12.187, 44.195.242.49, ...</p>
<pre><code class="language-plaintext">│
▼
[Internet Endpoint] httpbin.org</code></pre></td>
</tr>
</tbody>
</table>

##  Inter-pod Communication 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below project show how inter-pod communication works.</p>
<p>→These is more of configurations where in the deployment yamls necessary settings exists.</p>
<p>→To achieve this we will have two projects / apps viz., Job and Customer.</p>
<p>→The Job app simply gives ‘job name’ and customerapp when invoked, inturn calls Job internally.</p>
<p>→Run the JOB app</p>
<pre><code class="language-bash">cd c:\ws\sboot\lab061
mvn clean package
docker build -t job:latest .
docker network create pod2pod-intg-network #If already exists say the same
docker run --name job-service --network pod2pod-intg-network -p 8082:8082 job:latest
docker tag job:latest nerdysrisha/job:latest
docker push nerdysrisha/job:latest
kubectl create namespace integrations
kubectl delete -f deployment.yaml
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
kubectl port-forward svc/job-service -n integrations 8082:8082</code></pre>
<p>→Run the CUSTOMER app</p>
<pre><code class="language-bash">cd c:\ws\sboot\lab060
mvn clean package
docker build -t customer:latest .
docker network create pod2pod-intg-network #If already exists say the same
docker run --name customer-service --network pod2pod-intg-network -p 8081:8081 -e JOB_SERVICE_URL=http://job-service:8082 customer:latest
docker tag customer:latest nerdysrisha/customer:latest
docker push nerdysrisha/customer:latest
kubectl create namespace integrations
kubectl delete -f deployment.yaml
kubectl config set-context --current --namespace=integrations
kubectl apply -f deployment.yaml
kubectl port-forward svc/customer-service -n integrations 8081:8081</code></pre></td>
</tr>
</tbody>
</table>

### Architecture 

|  |
|----|
| →Here we are invoking customer service which is inturn going to call ‘job’ pod. |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image670.webp" style="width:5.88472in;height:4.21042in" /> |

### What special about Pod-2-Pod communication

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>What makes pod-to-pod communication special in Kubernetes?</p>
<p><strong>→Flat network model</strong></p>
<p>Every pod gets its own IP address.</p>
<p>Unlike Docker bridge networking (where you map host ports), in Kubernetes all pods can talk to each other directly by IP — no NAT, no port mapping.</p>
<p><strong>→DNS service discovery</strong></p>
<p>You don’t need to know pod IPs (they change when pods restart).</p>
<p>You access other pods by Service name (job-service), which Kubernetes resolves via built-in DNS.</p>
<p><strong>→Uniformity across the cluster</strong></p>
<p>Whether pods are on the same node or on different nodes, communication is seamless.</p>
<p>Kubernetes networking ensures customer → job works the same way everywhere.</p>
<p><strong>→Foundation for higher-level patterns</strong></p>
<p>Pod-to-pod communication is the building block for:</p>
<p>Microservices talking to each other</p>
<p>Service Meshes (Istio/Linkerd) adding observability, retries, mTLS</p>
<p>Scaling: multiple job pods behind a Service, with round-robin load balancing</p>
<p>Network policies (who can talk to whom, like firewall rules inside the cluster)</p></td>
</tr>
</tbody>
</table>

### Accessing Pod Level and Invoking endpionts

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Below commands show how we can invoke the JOB Service froma another TEMP POD.</p>
<p>→Here, we will use a temporary container (Eg. Busybox) to test the job service directly.</p>
<pre><code class="language-bash">kubectl get pods -n integrations -o wide
kubectl get svc -n integrations
kubectl run tmp-shell --rm -it --image=busybox:1.36 -n integrations -- sh
job-service.integrations.svc.cluster.local
wget -qO- http://job-service:8082/job/details</code></pre></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image671.webp" style="width:7.52153in;height:2.14167in" alt="{71F9E114-DC71-4CE2-A81C-C563EC0F4749}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image672.webp" style="width:6.29792in;height:4.64931in" alt="{2E0678F8-A75F-42C0-916E-24B06E93D97C}" /></p></td>
</tr>
</tbody>
</table>

##  ISTIO - TELEMETRY (OBSERVABILITY) 

|  |
|----|
| Observability stack (Prometheus, Grafana, Jaeger, Kiali) → separate, optional add-ons that collect & visualize telemetry from Envoy + Istiod. |
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image673.webp" style="width:4.20903in;height:4.19861in" alt="{249373B5-E0A0-4D1A-ACC5-53F256A54A57}" /> |

### List Add Ons 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note that we have already installed Istio previously and when we installed istio, it also brings all ‘add-ons’ .</p>
<p>→Below command lists all the ‘add-ons’</p>
<pre><code class="language-bash">dir C:\run\istio-1.27.0\samples\addons</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image674.webp" style="width:5.21875in;height:3.22917in" alt="{F507F6BE-7639-400A-BB07-8F0B98A6C9AD}" /></p></td>
</tr>
</tbody>
</table>

### Install Prometheus

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl apply -f C:\run\istio-1.27.0\samples\addons\prometheus.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image675.webp" style="width:7.03125in;height:1.34375in" alt="{6E9E1E1A-53C4-481F-B79D-2CF062D1DBFA}" /></p></td>
</tr>
<tr>
<td><p>→Check the pods</p>
<pre><code class="language-bash">kubectl get pods -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image676.webp" style="width:5.64583in;height:1.10417in" alt="{7E397714-E7E0-459A-B39C-43E7A0A1349D}" /></p></td>
</tr>
</tbody>
</table>

### Install Grafana

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl apply -f C:\run\istio-1.27.0\samples\addons\grafana.yaml</code></pre>
<p>→Check the pods</p>
<pre><code class="language-bash">kubectl get pods -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image677.webp" style="width:6.77083in;height:2.70833in" /></p></td>
</tr>
</tbody>
</table>

### Install Jaeger

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl apply -f C:\run\istio-1.27.0\samples\addons\jaeger.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image678.webp" style="width:6.95833in;height:0.85417in" alt="{2DE2300E-B718-4F39-ABFE-EEFC8EEA2A7A}" /></p></td>
</tr>
<tr>
<td><p>→Check Pods</p>
<pre><code class="language-bash">kubectl get pods -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image679.webp" style="width:5.60417in;height:1.46875in" alt="{2FA8E9AF-5C21-407B-839E-A8385E6B2BF5}" /></p></td>
</tr>
</tbody>
</table>

### Install Kiali 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><pre><code class="language-bash">kubectl apply -f C:\run\istio-1.27.0\samples\addons\kiali.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image680.webp" style="width:6.82292in;height:3.04167in" alt="{F8989461-4E06-47B4-8216-E4A4C165FEA5}" /></p></td>
</tr>
<tr>
<td><p>→Check Pods</p>
<pre><code class="language-bash">kubectl get pods -n istio-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image681.webp" style="width:6.54167in;height:1.55208in" alt="{EED01320-4A54-48E1-99E7-9D8BCC0731A6}" /></p></td>
</tr>
</tbody>
</table>

### Port Forward all the 4 observability tools 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td></td>
</tr>
<tr>
<td><pre><code class="language-bash"># Grafana
kubectl -n istio-system port-forward svc/grafana 3000:3000</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image682.webp" style="width:6.11458in;height:0.77083in" alt="{90A94E84-BC96-44CC-B659-0162AD1F0078}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash"># Prometheus. In my system 9090 is already in use.
kubectl -n istio-system port-forward svc/prometheus 9091:9090</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image683.webp" style="width:6.15625in;height:0.78125in" alt="{FF800632-C993-45BE-8463-A01EC545D129}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash"># Jaeger
kubectl -n istio-system port-forward svc/tracing 16686:80</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image684.webp" style="width:5.08333in;height:0.86458in" alt="{ADE9047F-3BFB-42F5-AC27-A1E04B3C3540}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">#Kiali
kubectl -n istio-system port-forward svc/kiali 20001:20001</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image685.webp" style="width:5.1875in;height:0.8125in" alt="{20917906-D831-4E27-B916-15BC7BD18783}" /></p></td>
</tr>
</tbody>
</table>

### Access Kiali 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Access the endpoint</p>
<p>http://localhost:20001</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image686.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
</tbody>
</table>

### Access Prometheus 

|  |
|----|
| [http://localhost:9091/<img src="subjects/tech/kubernetes/az-aks-complete/img/media/image687.webp" style="width:7.52431in;height:2.17986in" alt="{94B02F3C-395B-4F2B-A1BE-F9A4452B9EF3}" />](http://localhost:9091/) |

### Access Grafana

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="http://localhost:3000/">http://localhost:3000/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image688.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
</tbody>
</table>

### Access Jaeger 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="http://localhost:16686/">http://localhost:16686/</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image689.webp" style="width:7.52014in;height:3.43472in" alt="{7FDF69A8-20DE-40AF-8E2D-28F7D2300A29}" /></p></td>
</tr>
</tbody>
</table>

### Port-forward existing service and Invoke curl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Notice that the exsting pods (under namespace) they are already istio enabled</p>
<p>→It is important that we need to have some services running and ISTIO-ENABLED.</p>
<pre><code class="language-bash">kubectl get svc</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image690.webp" style="width:7.52639in;height:1.65833in" alt="{93A19E3E-D2DF-4B54-82D5-81C991707A61}" /></p>
<pre><code class="language-bash">kubectl port-forward svc/customer-service 8081:8081</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image691.webp" style="width:7.11458in;height:1.08333in" alt="{52747FBE-C3BB-49A9-9FC9-0007C98AEFFD}" /></p></td>
</tr>
<tr>
<td><pre><code class="language-bash">curl http://localhost:8081/customer/details</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image692.webp" style="width:7.54028in;height:2.61389in" alt="{25744344-1D7A-43DB-96B4-7A75B3141E28}" /></p></td>
</tr>
</tbody>
</table>

### Check Graphs 

|     |
|-----|
|     |

#### Kiali

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image693.webp" style="width:7.67986in;height:4.8in" /> |

#### Jaeger

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><mark>HERE THE INVOCATIONS ARE NOT REACHING TROUBLESHOOTING NEEDED.</mark></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image694.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
</tbody>
</table>

#### Prometheus

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Search istio_requests_total</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image695.webp" style="width:7.51667in;height:2.98889in" alt="{585B102A-67B1-4878-969F-BED04022C2FD}" /></p></td>
</tr>
</tbody>
</table>

#### Grafana

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Dashboards →Expand Istio →click Istio Mesh Dashboard</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image696.webp" style="width:7.52292in;height:3.58333in" alt="{6B6B90AE-E650-4C17-84A8-4A6D914F4E60}" /></p></td>
</tr>
<tr>
<td><p>→Notice the graph</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image697.webp" style="width:7.52708in;height:3.68333in" alt="{4641918B-CD53-4728-8210-8E1678EE41AF}" /></p></td>
</tr>
</tbody>
</table>

### Install metrics Server 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Suppose we want to see the cpu and memory usage of each pods/nodes, we will need to install something called Metrics Server.</p>
<p>→check the ‘top’ command on the pods. Notice that it shows ‘metrics api is not available’</p>
<pre><code class="language-bash">kubectl top pods -A</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image698.webp" style="width:3.22917in;height:1.13542in" alt="{965F367C-723C-4750-A2E3-1D69C8A68ABC}" /></p>
<pre><code class="language-bash">kubectl top nodes</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image699.webp" style="width:3.02083in;height:0.71875in" alt="{22F63FD5-8B08-40E8-9B6D-9D858B45C5C6}" /></p></td>
</tr>
<tr>
<td><p>→Apply this</p>
<pre><code class="language-bash">kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image700.webp" style="width:7.53056in;height:1.34306in" alt="{2A8C64AA-760C-4F86-BB58-848398E09392}" /></p></td>
</tr>
<tr>
<td><p>→Second time installed screenshot.</p>
<pre><code class="language-bash">kubectl get pods -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image701.webp" style="width:6.77153in;height:2.92778in" /></p></td>
</tr>
<tr>
<td><p>→Get pods, we may get errors or pods not initializing. Check Metrics Server is running or not.</p>
<pre><code class="language-bash">kubectl get pods -n kube-system | findstr metrics-server</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image702.webp" style="width:6.40625in;height:0.79167in" alt="{4DD2989C-A7E2-45FD-9124-364ADD62068A}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image246.webp" style="width:7.53681in;height:0.58264in" alt="{AE6CE15D-131D-4F4E-996C-52DE3DB6734E}" /></p>
<p>→Describe the pod</p>
<pre><code class="language-bash">kubectl describe pod metrics-server-75b5d87c9d-6rwkq -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image703.webp" style="width:6.69792in;height:0.85417in" alt="{CBD0C499-D515-419E-A279-57EFF5A28257}" /></p>
<p>Notice at the end of the describe logs</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image704.webp" style="width:7.53403in;height:0.575in" alt="{C7280D52-8B6A-41F2-A5A3-6F02312F5E66}" /></p>
<p>→Check the logs as well we can see errors</p>
<pre><code class="language-bash">kubectl logs metrics-server-75b5d87c9d-6rwkq -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image705.webp" style="width:7.53403in;height:1.14792in" alt="{0B08EBD4-6F93-4BFC-9C4A-02663C9D10DD}" /></p></td>
</tr>
<tr>
<td><p>→<strong>Uninstall the metrics server, if needed</strong></p>
<pre><code class="language-bash">kubectl delete -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml</code></pre></td>
</tr>
<tr>
<td><p>→Incase of any ERRORS of starting etc. Follow below approach. Check the pod events and logs of the pod. In this case there was a TLS error that we are fixing with ‘insecure mode’</p>
<pre><code class="language-bash">kubectl describe pod -n kube-system metrics-server-845d86dc79-wth7f
kubectl logs -n kube-system metrics-server-845d86dc79-wth7f</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image706.webp" style="width:7.53333in;height:3.00347in" alt="{2C4AEC23-089B-4C17-9EC3-1759DC4A55A5}" /></p></td>
</tr>
<tr>
<td><p>→Extract the current metrics server yaml and write to a local file</p>
<p>→Edit the configuration and add below line and save.</p>
<pre><code class="language-bash">kubectl get deployment metrics-server -n kube-system -o yaml &gt; metrics-server.yaml
nano metrics-server.yaml
- --kubelet-insecure-tls</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image707.webp" style="width:7.53611in;height:0.72222in" alt="{9872FA78-11D6-43D8-B652-00023CEEE119}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image708.webp" style="width:6.96875in;height:5.47917in" alt="{3244BA3F-F000-4040-89A5-F31C10A3FB5D}" /></p></td>
</tr>
<tr>
<td><p>→Once it is saved apply</p>
<pre><code class="language-bash">kubectl apply -f metrics-server.yaml
kubectl get pods -n kube-system -w</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image709.webp" style="width:7.53472in;height:3.40972in" alt="{2A96BC4F-D9C2-4A82-B854-DBCB53F9A563}" /></p>
<p>→Notice after sometime the pod comes up running</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image710.webp" style="width:7.04167in;height:2.86458in" alt="{B31A294C-5DEF-4BD6-BCA6-07FFDE0655DF}" /></p></td>
</tr>
<tr>
<td><p>→Rerun the top commands as below.</p>
<pre><code class="language-bash">kubectl top pods
kubectl top nodes
kubectl top pods -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image711.webp" style="width:7.05208in;height:4.33333in" alt="{8855543D-F6B6-41F5-B891-FB3A60DF820C}" /></p></td>
</tr>
<tr>
<td><p>→There are alternative methods in below sections as well.</p></td>
</tr>
</tbody>
</table>

####  Modify using ‘patch’ directly’ (easy way) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can modify directly without editing.</p>
<pre><code class="language-bash">kubectl -n kube-system patch deployment metrics-server --type='json' -p='[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
kubectl get pods -n kube-system | grep metrics-server</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image712.webp" style="width:7.68611in;height:0.65556in" /></p></td>
</tr>
<tr>
<td><p>→After modifying we can see all the pods under the kube-system</p>
<pre><code class="language-bash">kubectl get pods -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image713.webp" style="width:7.67639in;height:3.06389in" /></p></td>
</tr>
</tbody>
</table>

####  Modify the deployment of metrics-server and edit (alternative) 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→</p>
<pre><code class="language-bash">kubectl edit deployment metrics-server -n kube-system</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image714.webp" style="width:5.21875in;height:0.48958in" alt="{34C69730-F46F-4025-B14F-B475D01673AC}" /></p></td>
</tr>
<tr>
<td><p>→</p>
<p>Update with these</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image715.webp" style="width:5.72917in;height:2.08333in" alt="{C658B876-DD40-42EE-8CC5-88FC2311191F}" /></p>
<p>→These four</p>
<pre><code class="language-yaml">spec:
containers:
- name: metrics-server
- args:
- --kubelet-insecure-tls
- --kubelet-preferred-address-types=InternalIP</code></pre>
<p>→Save it after modifying</p>
<p><mark>Note: For production, don’t use --kubelet-insecure-tls. Instead, generate proper kubelet certificates with IP SANs.</mark></p></td>
</tr>
<tr>
<td><p>→Once saved Pod will get auto-created. Notice the last one</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image716.webp" style="width:6.48958in;height:2.48958in" alt="{43E33C5F-2A67-465E-9B83-A1E9FA7225EF}" /></p></td>
</tr>
<tr>
<td><p>→Check the metrics of Node</p>
<pre><code class="language-bash">kubectl top node</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image717.webp" style="width:5.59375in;height:1.19792in" alt="{B6F8ECCE-19BF-41C2-A7C2-1D4DB9FAD03F}" /></p></td>
</tr>
<tr>
<td><p>→Check integrations namespace pods status</p>
<pre><code class="language-bash">kubectl top pod -n integrations</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image718.webp" style="width:5.52083in;height:0.92708in" alt="{395481CC-3AA4-4CF4-9A38-9C95793B5BFF}" /></p></td>
</tr>
</tbody>
</table>

## Pipeline

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>• mTLS (Mutual TLS) everywhere → Encrypts pod-to-pod traffic and authenticates workloads.</p>
<p>• • PeerAuthentication + DestinationRule → Enforce strict mTLS instead of permissive.</p>
<p>• • AuthorizationPolicy → Define fine-grained, identity-based access controls between services.</p>
<p>• • NetworkPolicies (K8s) + Istio Authorization → Combine to lock down pod-to-pod traffic.</p>
<p>• • HTTPS / TLS termination at IngressGateway → Ensure external traffic is secured before entering mesh.</p>
<p>• • Egress Control + ServiceEntry → Restrict and audit outbound calls (e.g., only allow approved external APIs).</p>
<p>• • RBAC for Istio CRDs → Control who can modify VirtualServices, Gateways, etc. in Kubernetes.</p>
<p>• • Telemetry &amp; Audit (Prometheus, Jaeger, Kiali) → Monitor traffic, detect anomalies, and audit policy enforcement.</p>
<p>• • Rate Limiting &amp; Quotas → Prevent abuse or accidental traffic storms.</p>
<p>• • WAF / External Auth integration (JWT, OIDC) → Validate tokens, integrate with identity providers at the ingress.</p>
<p>•</p></td>
</tr>
<tr>
<td><p>→Accidental Deletion of Pods - Safeguarding</p>
<p>Options</p>
<p>Finalizers, admission controllers, rbac, pod disruption budges</p></td>
</tr>
</tbody>
</table>

### xxx

|     |
|-----|
|     |

#  Advanced: Harbor Setup

<table>
<colgroup>
<col style="width: 69%" />
<col style="width: 30%" />
</colgroup>
<tbody>
<tr>
<td><p>→Download Harbor</p>
<p><a href="https://github.com/goharbor/harbor/releases">https://github.com/goharbor/harbor/releases</a></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image719.webp" style="width:4.94861in;height:3.33056in" alt="{8676DCBF-7BB3-4B4C-8BF0-951CAD9BB67A}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image720.webp" style="width:5.19097in;height:0.53958in" alt="{A9037AEB-72D6-4E4B-B7EE-EA271572CB7E}" /></p></td>
<td><p>← Select the “<a href="https://github.com/goharbor/harbor/releases/download/v2.13.2/harbor-offline-installer-v2.13.2.tgz">harbor-offline-installer-v2.13.2.tgz</a>” to download the same.</p></td>
</tr>
</tbody>
</table>

## Extract the installer

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Extract the downloaded installer to another folder.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image721.webp" style="width:7.52639in;height:3.17639in" alt="{F9AB8005-FFF2-4A4D-AA15-686C1A43E285}" /></p></td>
</tr>
</tbody>
</table>

## Make Copy of harbor.yml

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Open Powershell and navigate to that folder in ‘BASH TERMINAL’</p>
<pre><code class="language-bash">cd /c/run/harbor-offline-installer-v2.13.2</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image722.webp" style="width:7.52361in;height:1.225in" alt="{2F19BCAC-9F6B-44AC-AD0E-1AF4D1CEDBBD}" /></p>
<p>→List</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image723.webp" style="width:7.53889in;height:0.75694in" alt="{53F982C3-3E2D-4EB4-AE0B-4104E0C58EC6}" /></p>
<pre><code class="language-bash">cp harbor.yml.tmpl harbor.yml</code></pre>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image724.webp" style="width:7.54028in;height:1.19514in" alt="{84EB6DC0-75D5-4EA4-8E67-6B1BE78F5B76}" /></p></td>
</tr>
</tbody>
</table>

## Edit the file 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Change the lines as shown</p>
<p>notepad harbor.yml</p>
<p>→localhost</p>
<p>→80</p>
<p>→Harbor12345</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image725.webp" style="width:4.6875in;height:3.19792in" alt="{9E8824EA-F1AE-41C9-89F5-0F552767F9E0}" /></p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image726.webp" style="width:3.73958in;height:0.82292in" alt="{8EAD6F9A-C035-4B72-B5B6-5CF8F035A68A}" /></p></td>
</tr>
</tbody>
</table>

## Install the Harbor - Ensure Docker Desktop is Up

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Open powershell and list the files.</p>
<p>→Run the install.sh using ‘wsl’. Remember these are bash files so we need to use ‘WSL’ to spin up Harbor.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image727.webp" style="width:6.08333in;height:3.80208in" alt="{35059FAA-124E-4C89-A5FD-3A339D9CBF52}" /></p></td>
</tr>
<tr>
<td><p><mark>NOT WORKING</mark></p>
<p><mark>LET US TRY THE LINUX IMPLEMENTATION OF HARBOR AND EXPOSE THE VM OUTSIDE THEN ACCESS IT FROM DOCKER DESKTOP.</mark></p></td>
</tr>
</tbody>
</table>

##  Step 1 - Download Binaries

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 1 - Download Kubernetes server and etcd binaries
############################################################
&#32;
#Run the Kubernetes server + etcd downloads on the control-plane node.
#Run the Kubernetes node binaries on the worker node.
#Control Plane
# Create a directory to store the binaries.
sudo mkdir -p /root/binaries
# Move into the binaries directory.
cd /root/binaries
# Download the Kubernetes server binaries.
#
# This archive contains components such as:
# - kube-apiserver
# - kube-controller-manager
# - kube-scheduler
# - kubectl
# - kubelet
# etc.
sudo wget https://dl.k8s.io/v1.32.1/kubernetes-server-linux-amd64.tar.gz
# Extract the Kubernetes binaries.
sudo tar -xzvf kubernetes-server-linux-amd64.tar.gz
# Inspect the available Kubernetes server binaries.
ls -lh /root/binaries/kubernetes/server/bin/
############################################################
# Download etcd
############################################################
# Download etcd.
#
# etcd is Kubernetes' distributed key-value store.
# The Kubernetes API server will use it to persist cluster state.
sudo wget https://github.com/etcd-io/etcd/releases/download/v3.5.18/etcd-v3.5.18-linux-amd64.tar.gz
# Extract etcd.
sudo tar -xzvf etcd-v3.5.18-linux-amd64.tar.gz
# Verify the extracted directory.
ls -lh /root/binaries/etcd-v3.5.18-linux-amd64/
Worker Node
############################################################
# STEP 1 - Download Kubernetes node binaries
############################################################
# Create a directory to store the binaries.
sudo mkdir -p /root/binaries
# Move into the binaries directory.
cd /root/binaries
# Download the Kubernetes node binaries.
sudo wget https://dl.k8s.io/v1.32.1/kubernetes-node-linux-amd64.tar.gz
# Extract the binaries.
sudo tar -xzvf kubernetes-node-linux-amd64.tar.gz
# Inspect the available node binaries.
ls -lh /root/binaries/kubernetes/node/bin/
STEP 2 — Create the Kubernetes Certificate Authority
# This creates the root CA that will eventually sign certificates for Kubernetes components.</code></pre></td>
</tr>
</tbody>
</table>

##  Step 2 - Setup CA

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 2 - Create Kubernetes Certificate Authority
############################################################
# Create a directory to store Kubernetes certificates and keys.
sudo mkdir -p /root/certificates
# Move into the certificate directory.
cd /root/certificates
############################################################
# Generate the CA private key
############################################################
# Generate a 2048-bit RSA private key for the Kubernetes CA.
#
# IMPORTANT:
# This private key is extremely sensitive.
# It is used to sign certificates for Kubernetes components.
sudo openssl genrsa -out ca.key 2048
############################################################
# Create the CA Certificate Signing Request
############################################################
# Create a CSR using the CA private key.
sudo openssl req -new \
  -key ca.key \
  -subj "/CN=KUBERNETES-CA" \
  -out ca.csr
############################################################
# Self-sign the CA certificate
############################################################
# Self-sign the CSR to create the root CA certificate.
#
# The CA certificate will be valid for approximately 1000 days.
sudo openssl x509 -req \
  -in ca.csr \
  -signkey ca.key \
  -out ca.crt \
  -days 1000
############################################################
# Inspect the CA certificate
############################################################
# Display the certificate contents.
sudo openssl x509 -in ca.crt -text -noout
############################################################
# Remove the temporary CSR
############################################################
# The CSR is no longer required after creating the certificate.
sudo rm -f ca.csr
#STEP 3 — Configure etcd
#This is being done on the control-plane node.
#The important concept here is: etcd is the database of the Kubernetes cluster. The API server will communicate with etcd over HTTPS using certificates.</code></pre></td>
</tr>
</tbody>
</table>

##  Step 3 - Configure etcd

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 3 - Configure etcd
############################################################
# Set the IP address of this control-plane server.
#
# IMPORTANT:
# Replace this with the ACTUAL IP address of your master VM.
#
# Example:
# SERVER_IP=192.168.56.10
#
# Do NOT use the example public IP from the original document.
export SERVER_IP="YOUR_CONTROL_PLANE_IP"
# Verify the value.
echo $SERVER_IP
#Generate etcd certificates
############################################################
# STEP 3.1 - Generate etcd TLS certificates
############################################################
# Move to the certificate directory.
cd /root/certificates
# Generate the etcd private key.
sudo openssl genrsa -out etcd.key 2048
# Creates a brand new 2048-bit RSA private key, saved as etcd.key
# This key belongs to etcd only — it's how etcd will prove its identity later (never shared, never leaves the box)
############################################################
# Create etcd certificate configuration
############################################################
# The Subject Alternative Names (SANs) identify the IP addresses
# for which this certificate is valid.
cat &lt;&lt;EOF | sudo tee etcd.cnf
[req]
req_extensions = v3_req
distinguished_name = req_distinguished_name
[req_distinguished_name]
[v3_req]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
subjectAltName = @alt_names
[alt_names]
IP.1 = ${SERVER_IP}
IP.2 = 127.0.0.1
EOF
&#32;
# Not a cert command — just writes a text config file to disk
# Defines subjectAltName (SAN) = ${SERVER_IP} and 127.0.0.1
# This is the list of addresses the cert will actually be valid for — needed because TLS checks SAN, not just the CN, during connection
############################################################
# Create etcd Certificate Signing Request
############################################################
sudo openssl req -new \
  -key etcd.key \
  -subj "/CN=etcd" \
  -out etcd.csr \
  -config etcd.cnf
#Uses etcd.key (already created) to generate a request, not a new key
#-subj "/CN=etcd" → declares the identity: "I am etcd"
#-config etcd.cnf → pulls in the SAN list we just wrote above
#Output etcd.csr = "here's my public key + claimed identity + valid addresses, please sign this" — sent to the CA
############################################################
# Sign the etcd certificate using our Kubernetes CA
############################################################
sudo openssl x509 -req \
  -in etcd.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out etcd.crt \
  -extensions v3_req \
  -extfile etcd.cnf \
  -days 1000
#Takes etcd.csr, signs it using the CA's own ca.crt + ca.key
#-CAcreateserial → generates a serial number file to track this cert
#-extensions v3_req -extfile etcd.cnf → re-applies the SAN info onto the final cert (CSRs don't auto-carry extensions into the signed cert, so this step is required)
#Output etcd.crt = the final CA-signed certificate — this is what etcd will actually present during TLS handshakes
############################################################
# STEP 3.2 - Install etcd certificates
############################################################
# Create etcd's configuration/certificate directory.
sudo mkdir -p /etc/etcd
# Copy the etcd certificate, private key and CA certificate.
sudo cp etcd.crt etcd.key ca.crt /etc/etcd/
# Verify the files.
sudo ls -lh /etc/etcd/
Install etcd binaries
############################################################
# STEP 3.3 - Install etcd binaries
############################################################
# Move into the extracted etcd directory.
cd /root/binaries/etcd-v3.5.18-linux-amd64/
# Copy etcd and etcdctl into the system PATH.
sudo cp etcd etcdctl /usr/local/bin/
# Verify installation.
etcd --version
etcdctl version
Create etcd systemd service
############################################################
# STEP 3.4 - Create etcd systemd service
############################################################
# Create a systemd service so etcd runs as a background service
# and automatically starts after reboot.
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/etcd.service
[Unit]
Description=etcd
Documentation=https://etcd.io/docs/
[Service]
ExecStart=/usr/local/bin/etcd \\
  --name master-1 \\
  --cert-file=/etc/etcd/etcd.crt \\
  --key-file=/etc/etcd/etcd.key \\
  --peer-cert-file=/etc/etcd/etcd.crt \\
  --peer-key-file=/etc/etcd/etcd.key \\
  --trusted-ca-file=/etc/etcd/ca.crt \\
  --peer-trusted-ca-file=/etc/etcd/ca.crt \\
  --peer-client-cert-auth \\
  --client-cert-auth \\
  --initial-advertise-peer-urls=https://${SERVER_IP}:2380 \\
  --listen-peer-urls=https://${SERVER_IP}:2380 \\
  --listen-client-urls=https://${SERVER_IP}:2379,https://127.0.0.1:2379 \\
  --advertise-client-urls=https://${SERVER_IP}:2379 \\
  --initial-cluster-token=&lt;removed&gt; \\
  --initial-cluster=master-1=https://${SERVER_IP}:2380 \\
  --initial-cluster-state=new \\
  --data-dir=/var/lib/etcd
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
#Big picture: key → CSR → CA signs → install. Same 4-step dance we repeat for every component (apiserver, kubelet, scheduler, etc.), just swapping the CN/SAN each time.
############################################################
# STEP 3.5 - Start etcd
############################################################
# Reload systemd so it sees the new service.
sudo systemctl daemon-reload
# Enable etcd so it starts automatically after reboot.
sudo systemctl enable etcd
# Start etcd.
sudo systemctl start etcd
# Check service status.
sudo systemctl status etcd
############################################################
# STEP 3.6 - Verify etcd
############################################################
# Write a test key/value into etcd.
#
# ETCDCTL_API=3 tells etcdctl to use the v3 API.
# Put &amp; Read the value back from etcd.</code></pre>
<p>ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/ca.crt --cert=/etc/etcd/etcd.crt --key=/etc/etcd/etcd.key put course "kplabs cka course is awesome"</p>
<pre><code class="language-plaintext">ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/ca.crt --cert=/etc/etcd/etcd.crt --key=/etc/etcd/etcd.key get course</code></pre></td>
</tr>
</tbody>
</table>

##  Step 4 - Configure API Server

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 4 - Configure Kubernetes API Server
############################################################
# The API server is the front door of Kubernetes.
# Move into the Kubernetes server binaries.
cd /root/binaries/kubernetes/server/bin/
# Copy kube-apiserver into the system PATH.
sudo cp kube-apiserver /usr/local/bin/
# Verify the binary.
kube-apiserver --version
# Verify that SERVER_IP is still defined.
echo $SERVER_IP
#Important: SERVER_IP is a shell variable. If you open a new terminal later, it may disappear. For this lab, either re-export it or make it persistent.
############################################################
# STEP 4.1 - Create API server certificate configuration
############################################################
# Move to the certificate directory.
cd /root/certificates
# Create the certificate configuration.
#
# The SANs are important because clients may access the API server
# using different DNS names or IP addresses.
cat &lt;&lt;EOF | sudo tee api.conf
[req]
req_extensions = v3_req
distinguished_name = req_distinguished_name
[req_distinguished_name]
[v3_req]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
subjectAltName = @alt_names
[alt_names]
DNS.1 = kubernetes
DNS.2 = kubernetes.default
DNS.3 = kubernetes.default.svc
DNS.4 = kubernetes.default.svc.cluster.local
IP.1 = 127.0.0.1
IP.2 = ${SERVER_IP}
IP.3 = 10.32.0.1
EOF
############################################################
# STEP 4.2 - Generate API server TLS certificate
############################################################
# Generate the API server private key.
sudo openssl genrsa -out kube-api.key 2048
# Create the API server CSR.
sudo openssl req -new \
  -key kube-api.key \
  -subj "/CN=kube-apiserver" \
  -out kube-api.csr \
  -config api.conf
# Sign the API server certificate using our Kubernetes CA.
sudo openssl x509 -req \
  -in kube-api.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out kube-api.crt \
  -extensions v3_req \
  -extfile api.conf \
  -days 1000
############################################################
# STEP 4.3 - Generate service-account keys
############################################################
# Generate the private key used for service-account signing.
sudo openssl genrsa -out service-account.key 2048
# Create a CSR.
sudo openssl req -new \
  -key service-account.key \
  -subj "/CN=service-accounts" \
  -out service-account.csr
# Sign the service-account certificate using the Kubernetes CA.
sudo openssl x509 -req \
  -in service-account.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out service-account.crt \
  -days 100
############################################################
# STEP 4.4 - Install Kubernetes certificates
############################################################
# Create the directory where Kubernetes component certificates
# and configuration will be stored.
sudo mkdir -p /var/lib/kubernetes
# Copy the certificates and keys required by the API server.
sudo cp \
  etcd.crt \
  etcd.key \
  ca.crt \
  kube-api.key \
  kube-api.crt \
  service-account.crt \
  service-account.key \
  /var/lib/kubernetes/
# Verify the files.
sudo ls -lh /var/lib/kubernetes/
############################################################
# STEP 4.5 - Configure encryption at rest
############################################################
# Generate a random 32-byte encryption key.
#
# Kubernetes will use this to encrypt Secret objects before
# storing them in etcd.
ENCRYPTION_KEY=$(head -c 32 /dev/urandom | base64)
# Create the encryption configuration.
#
# IMPORTANT:
# YAML indentation must be preserved exactly.
cat &lt;&lt;EOF | sudo tee /var/lib/kubernetes/encryption-at-rest.yaml
apiVersion: apiserver.config.k8s.io/v1
kind: EncryptionConfiguration
resources:
  - resources:
      - secrets
    providers:
      - aescbc:
          keys:
            - name: key1
              secret: &lt;removed&gt;
      - identity: {}
EOF
# Inspect the file.
sudo cat /var/lib/kubernetes/encryption-at-rest.yaml
############################################################
# STEP 4.6 - Create kube-apiserver systemd service
############################################################
# Create the systemd service for the Kubernetes API server.
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-apiserver.service
[Unit]
Description=Kubernetes API Server
Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
[Service]
ExecStart=/usr/local/bin/kube-apiserver \\
  --advertise-address=${SERVER_IP} \\
  --allow-privileged=true \\
  --authorization-mode=Node,RBAC \\
  --client-ca-file=/var/lib/kubernetes/ca.crt \\
  --enable-admission-plugins=NamespaceLifecycle,NodeRestriction,LimitRanger,ServiceAccount,DefaultStorageClass,ResourceQuota \\
  --enable-bootstrap-token-auth=true \\
  --etcd-cafile=/var/lib/kubernetes/ca.crt \\
  --etcd-certfile=/var/lib/kubernetes/etcd.crt \\
  --etcd-keyfile=/var/lib/kubernetes/etcd.key \\
  --etcd-servers=https://127.0.0.1:2379 \\
  --kubelet-client-certificate=/var/lib/kubernetes/kube-api.crt \\
  --kubelet-client-key=/var/lib/kubernetes/kube-api.key \\
  --service-account-key-file=/var/lib/kubernetes/service-account.crt \\
  --service-account-signing-key-file=/var/lib/kubernetes/service-account.key \\
  --service-account-issuer=https://${SERVER_IP}:6443 \\
  --service-cluster-ip-range=10.32.0.0/24 \\
  --tls-cert-file=/var/lib/kubernetes/kube-api.crt \\
  --tls-private-key-file=/var/lib/kubernetes/kube-api.key \\
  --requestheader-client-ca-file=/var/lib/kubernetes/ca.crt \\
  --service-node-port-range=30000-32767 \\
  --audit-log-maxage=30 \\
  --audit-log-maxbackup=3 \\
  --audit-log-maxsize=100 \\
  --audit-log-path=/var/log/kube-api-audit.log \\
  --bind-address=0.0.0.0 \\
  --event-ttl=1h \\
  --encryption-provider-config=/var/lib/kubernetes/encryption-at-rest.yaml \\
  --v=2
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
############################################################
# STEP 4.7 - Start kube-apiserver
############################################################
# Reload systemd to recognize the new service.
sudo systemctl daemon-reload
# Enable the API server to start automatically after reboot.
sudo systemctl enable kube-apiserver
# Start the API server.
sudo systemctl start kube-apiserver
# Check its status.
sudo systemctl status kube-apiserver
One important learning point
#At this stage, you should not expect kubectl get nodes to work yet.
#We currently built:
#                    +------------------+
#                    |  kube-apiserver  |
#                    +--------+---------+
#                             |
#                             | HTTPS
#                             v
#                    +------------------+
#                    |       etcd       |
#                    +------------------+</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Brief summary of Service Account Keys vs Api server keys.</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image728.webp" style="width:6.17917in;height:5.81458in" alt="{FC283634-538A-45B8-85F8-0A15D61DA7D0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Comparision</p>
<p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image729.webp" style="width:5.75069in;height:3.70347in" alt="{F6BF513F-0C6F-4E12-A14E-EFD5295D6D41}" /></p>
<p>TLS certificate/key : = API server's NETWORK identity</p>
<p>Service-account key pair: = Pods/ServiceAccounts' AUTHENTICATION identity</p></td>
</tr>
</tbody>
</table>

##  Step 5 - Configure Controller Manager

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>#Run this on the Control Plane node.</p>
<pre><code class="language-bash">############################################################
# STEP 5 - Configure Kubernetes Controller Manager
############################################################
# Move to the certificate directory.
cd /root/certificates
############################################################
# STEP 5.1 - Generate Controller Manager certificate
############################################################
# Generate the private key for the controller manager.
sudo openssl genrsa -out kube-controller-manager.key 2048
# Create a CSR identifying the controller manager.
sudo openssl req -new \
  -key kube-controller-manager.key \
  -subj "/CN=system:kube-controller-manager" \
  -out kube-controller-manager.csr
# Sign the certificate using our Kubernetes CA.
sudo openssl x509 -req \
  -in kube-controller-manager.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out kube-controller-manager.crt \
  -days 1000
############################################################
# STEP 5.2 - Install kubectl
############################################################
# Copy kubectl from the Kubernetes server binaries.
sudo cp /root/binaries/kubernetes/server/bin/kubectl /usr/local/bin/
# Verify kubectl.
kubectl version --client
############################################################
# STEP 5.3 - Generate Controller Manager kubeconfig
############################################################
# Create the kubeconfig's cluster entry.
#
# This tells the controller manager where the API server is
# and which CA should be trusted.
kubectl config set-cluster kubernetes-from-scratch \
  --certificate-authority=/root/certificates/ca.crt \
  --embed-certs=true \
  --server=https://127.0.0.1:6443 \
  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig
# Configure the controller manager's identity.
kubectl config set-credentials system:kube-controller-manager \
  --client-certificate=/root/certificates/kube-controller-manager.crt \
  --client-key=/root/certificates/kube-controller-manager.key \
  --embed-certs=true \
  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig
# Create a context connecting the cluster and controller manager identity.
kubectl config set-context default \
  --cluster=kubernetes-from-scratch \
  --user=system:kube-controller-manager \
  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig
# Select the context.
kubectl config use-context default \
  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig
############################################################
# STEP 5.4 - Copy Controller Manager files
############################################################
# Copy the controller manager certificate, key and kubeconfig.
# The CA private key is also required because the controller
# manager signs certificates for cluster components.
sudo cp \
  kube-controller-manager.crt \
  kube-controller-manager.key \
  kube-controller-manager.kubeconfig \
  ca.key \
  /var/lib/kubernetes/
############################################################
# STEP 5.5 - Install Controller Manager binary
############################################################
sudo cp \
  /root/binaries/kubernetes/server/bin/kube-controller-manager \
  /usr/local/bin/
# Verify the binary.
kube-controller-manager --version
############################################################
# STEP 5.6 - Create Controller Manager systemd service
############################################################
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-controller-manager.service
[Unit]
Description=Kubernetes Controller Manager
Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-controller-manager/
[Service]
ExecStart=/usr/local/bin/kube-controller-manager \\
  --bind-address=0.0.0.0 \\
  --service-cluster-ip-range=10.32.0.0/24 \\
  --cluster-cidr=10.200.0.0/16 \\
  --kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\
  --authentication-kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\
  --authorization-kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\
  --leader-elect=true \\
  --cluster-signing-cert-file=/var/lib/kubernetes/ca.crt \\
  --cluster-signing-key-file=/var/lib/kubernetes/ca.key \\
  --root-ca-file=/var/lib/kubernetes/ca.crt \\
  --service-account-private-key-file=/var/lib/kubernetes/service-account.key \\
  --use-service-account-credentials=true \\
  --v=2
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
############################################################
# STEP 5.7 - Start Controller Manager
############################################################
# Reload systemd so it recognizes the new service.
sudo systemctl daemon-reload
# Enable the service to start automatically after reboot.
sudo systemctl enable kube-controller-manager
# Start the controller manager.
sudo systemctl start kube-controller-manager
# Check its status.
sudo systemctl status kube-controller-manager</code></pre></td>
</tr>
</tbody>
</table>

##  Step 6 - Configure Kubernetes Scheduler

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>#Run this on the Control Plane node.</p>
<pre><code class="language-bash">############################################################
# STEP 6 - Configure Kubernetes Scheduler
############################################################
# Move to the certificate directory.
cd /root/certificates
############################################################
# STEP 6.1 - Generate Scheduler certificate
############################################################
# Generate the scheduler private key.
sudo openssl genrsa -out kube-scheduler.key 2048
# Create the scheduler CSR.
sudo openssl req -new \
  -key kube-scheduler.key \
  -subj "/CN=system:kube-scheduler" \
  -out kube-scheduler.csr
# Sign the scheduler certificate using the Kubernetes CA.
sudo openssl x509 -req \
  -in kube-scheduler.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out kube-scheduler.crt \
  -days 1000
############################################################
# STEP 6.2 - Generate Scheduler kubeconfig
############################################################
# Configure the Kubernetes cluster and API server.
kubectl config set-cluster kubernetes-from-scratch \
  --certificate-authority=/root/certificates/ca.crt \
  --embed-certs=true \
  --server=https://127.0.0.1:6443 \
  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig
# Configure the scheduler identity.
kubectl config set-credentials system:kube-scheduler \
  --client-certificate=/root/certificates/kube-scheduler.crt \
  --client-key=/root/certificates/kube-scheduler.key \
  --embed-certs=true \
  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig
# Create a context for the scheduler.
kubectl config set-context default \
  --cluster=kubernetes-from-scratch \
  --user=system:kube-scheduler \
  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig
# Select the context.
kubectl config use-context default \
  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig
############################################################
# STEP 6.3 - Copy Scheduler kubeconfig
############################################################
sudo cp \
  /root/certificates/kube-scheduler.kubeconfig \
  /var/lib/kubernetes/
############################################################
# STEP 6.4 - Install Scheduler binary
############################################################
sudo cp \
  /root/binaries/kubernetes/server/bin/kube-scheduler \
  /usr/local/bin/
# Verify the binary.
kube-scheduler --version
############################################################
# STEP 6.5 - Create Scheduler systemd service
############################################################
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-scheduler.service
[Unit]
Description=Kubernetes Scheduler
Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-scheduler/
[Service]
ExecStart=/usr/local/bin/kube-scheduler \\
  --kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\
  --authentication-kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\
  --authorization-kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\
  --bind-address=127.0.0.1 \\
  --leader-elect=true
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
############################################################
# STEP 6.6 - Start Scheduler
############################################################
sudo systemctl daemon-reload
sudo systemctl enable kube-scheduler
sudo systemctl start kube-scheduler
sudo systemctl status kube-scheduler</code></pre></td>
</tr>
</tbody>
</table>

##  Step 7 - Configure Certificate / Validate Clsuter

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">#Run this on the Control Plane node.
############################################################
# STEP 7 - Validate Kubernetes Cluster
############################################################
# Move to the certificate directory.
cd /root/certificates
############################################################
# STEP 7.1 - Generate Administrator certificate
############################################################
# Generate the administrator private key.
sudo openssl genrsa -out admin.key 2048
# Create an administrator CSR.
#
# system:masters gives this identity cluster-admin-level access.
sudo openssl req -new \
  -key admin.key \
  -subj "/CN=admin/O=system:masters" \
  -out admin.csr
# Sign the administrator certificate using the Kubernetes CA.
sudo openssl x509 -req \
  -in admin.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out admin.crt \
  -days 1000
############################################################
# STEP 7.2 - Generate Administrator kubeconfig
############################################################
# Configure the Kubernetes cluster.
kubectl config set-cluster kubernetes-from-scratch \
  --certificate-authority=/root/certificates/ca.crt \
  --embed-certs=true \
  --server=https://127.0.0.1:6443 \
  --kubeconfig=/root/certificates/admin.kubeconfig
# Configure the administrator identity.
kubectl config set-credentials admin \
  --client-certificate=/root/certificates/admin.crt \
  --client-key=/root/certificates/admin.key \
  --embed-certs=true \
  --kubeconfig=/root/certificates/admin.kubeconfig
# Create the administrator context.
kubectl config set-context default \
  --cluster=kubernetes-from-scratch \
  --user=admin \
  --kubeconfig=/root/certificates/admin.kubeconfig
# Select the administrator context.
kubectl config use-context default \
  --kubeconfig=/root/certificates/admin.kubeconfig
############################################################
# STEP 7.3 - Verify Kubernetes components
############################################################
# Query the Kubernetes component status using the admin kubeconfig.
kubectl get componentstatuses \
  --kubeconfig=/root/certificates/admin.kubeconfig
############################################################
# Configure kubectl for the current user
############################################################
# Create the kubectl configuration directory.
mkdir -p ~/.kube
# Copy the administrator kubeconfig.
cp /root/certificates/admin.kubeconfig ~/.kube/config
# Verify access to the API server.
kubectl get componentstatuses
############################################################
# STEP 7.4 - Verify Kubernetes object creation
############################################################
# Create a test namespace.
kubectl create namespace kplabs
# Create a test Secret.
kubectl create secret generic prod-secret \
  --from-literal=username=admin \
  --from-literal=password='YOUR_TEST_PASSWORD'
# Verify that the Secret exists.
kubectl get secret -n default</code></pre></td>
</tr>
</tbody>
</table>

##  Step 8 - Configure Worker Node

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 8 - Configure Worker Node
############################################################
&#32;
#This section switches between Worker Node and Control Plane Node as indicated.
#Worker Node — Container Runtime
############################################################
# STEP 8.1 - Configure containerd on Worker Node
############################################################
# Load kernel modules required by containerd and Kubernetes networking.
cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF
# Load the modules immediately.
sudo modprobe overlay
sudo modprobe br_netfilter
# Configure Kubernetes networking requirements.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
# Apply the settings.
sudo sysctl --system
############################################################
# Install containerd
############################################################
sudo apt-get update
sudo apt-get install -y containerd
# Create containerd configuration directory.
sudo mkdir -p /etc/containerd
# Generate the default containerd configuration.
sudo containerd config default \
  | sudo tee /etc/containerd/config.toml &gt; /dev/null
# Configure systemd as the cgroup driver.
sudo sed -i \
  's/SystemdCgroup = false/SystemdCgroup = true/' \
  /etc/containerd/config.toml
# Restart containerd.
sudo systemctl restart containerd
# Verify containerd.
sudo systemctl status containerd
############################################################
# Configure additional kernel networking settings
############################################################
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sudo sysctl --system
############################################################
# Install worker prerequisites
############################################################
# socat, conntrack and ipset are required by Kubernetes
# networking/node components.
sudo apt-get install -y socat conntrack ipset
# Enable IPv4 forwarding.
sudo sysctl -w net.ipv4.conf.all.forwarding=1
Worker Node — Install Kubernetes Node Binaries
############################################################
# STEP 8.2 - Install Kubernetes worker binaries
############################################################
cd /root/binaries/kubernetes/node/bin/
# Install:
#
# kubelet    -&gt; Kubernetes node agent
# kube-proxy -&gt; Implements Kubernetes Service networking
# kubectl    -&gt; Kubernetes CLI
sudo cp kube-proxy kubectl kubelet /usr/local/bin/
# Verify the binaries.
kubelet --version
kube-proxy --version
kubectl version --client</code></pre></td>
</tr>
</tbody>
</table>

##  Step 9 - Generate worker node Certificates

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 9 - Generate Worker Node certificates
# Run on CONTROL PLANE
############################################################
cd /root/certificates
############################################################
# Set Worker Node identity
############################################################
# Replace these with your actual worker hostname and IP.
WORKER_HOSTNAME="worker"
WORKER_IP="YOUR_WORKER_IP"
echo $WORKER_HOSTNAME
echo $WORKER_IP
############################################################
# STEP 9.1 - Create Worker certificate configuration
############################################################
cat &lt;&lt;EOF | sudo tee openssl-worker.cnf
[req]
req_extensions = v3_req
distinguished_name = req_distinguished_name
[req_distinguished_name]
[v3_req]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
subjectAltName = @alt_names
[alt_names]
DNS.1 = ${WORKER_HOSTNAME}
IP.1 = ${WORKER_IP}
EOF
############################################################
# STEP 9.2 - Generate Worker certificate
############################################################
# Generate the worker private key.
sudo openssl genrsa -out worker.key 2048
# Create the worker CSR.
sudo openssl req -new \
  -key worker.key \
  -subj "/CN=system:node:${WORKER_HOSTNAME}/O=system:nodes" \
  -out worker.csr \
  -config openssl-worker.cnf
# Sign the worker certificate using the Kubernetes CA.
sudo openssl x509 -req \
  -in worker.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out worker.crt \
  -extensions v3_req \
  -extfile openssl-worker.cnf \
  -days 1000
############################################################
# STEP 9.3 - Generate kube-proxy certificate
############################################################
# Generate kube-proxy private key.
sudo openssl genrsa -out kube-proxy.key 2048
# Create kube-proxy CSR.
sudo openssl req -new \
  -key kube-proxy.key \
  -subj "/CN=system:kube-proxy" \
  -out kube-proxy.csr
# Sign kube-proxy certificate using the Kubernetes CA.
sudo openssl x509 -req \
  -in kube-proxy.csr \
  -CA ca.crt \
  -CAkey ca.key \
  -CAcreateserial \
  -out kube-proxy.crt \
  -days 1000</code></pre></td>
</tr>
</tbody>
</table>

##  Step 10 - Copy Certificates

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">############################################################
# STEP 10 — Copy Worker Certificates
# Run on CONTROL PLANE
############################################################
#The original material gives both a manual and SCP approach. Below is the SCP approach, while avoiding putting a real password into the commands.
#Worker Node
############################################################
# STEP 10.1 - Temporarily enable SSH password authentication
############################################################
# This is used only so the control plane can copy certificates
# to the worker using SCP.
sudo sed -i \
  's/#\s*PasswordAuthentication\s.*$/PasswordAuthentication yes/; s/^PasswordAuthentication\s*no$/PasswordAuthentication yes/' \
  /etc/ssh/sshd_config
sudo systemctl restart ssh
############################################################
# Create a temporary user for certificate transfer
############################################################
sudo useradd -m zeal
# Set a password when prompted.
sudo passwd zeal
Control Plane
############################################################
# STEP 10.2 - Copy certificates from Control Plane to Worker
############################################################
# Replace YOUR_WORKER_IP with the actual worker IP.
scp \
  /root/certificates/kube-proxy.crt \
  /root/certificates/kube-proxy.key \
  /root/certificates/worker.crt \
  /root/certificates/worker.key \
  /root/certificates/ca.crt \
  zeal@YOUR_WORKER_IP:/tmp/
Worker Node
############################################################
# STEP 10.3 - Move certificates into the certificate directory
############################################################
# Create the certificate directory.
sudo mkdir -p /root/certificates
# Move the transferred certificates.
sudo mv \
  /tmp/kube-proxy.crt \
  /tmp/kube-proxy.key \
  /tmp/worker.crt \
  /tmp/worker.key \
  /tmp/ca.crt \
  /root/certificates/</code></pre></td>
</tr>
</tbody>
</table>

##  Step 11 - Configure Certificates 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">#Run on Worker Node.
############################################################
# STEP 11 - Configure Worker Certificates
            # Install Worker certificates
############################################################
# Create Kubernetes configuration directory.
sudo mkdir -p /var/lib/kubernetes
# Copy the CA certificate.
sudo cp /root/certificates/ca.crt /var/lib/kubernetes/
############################################################
# Create kubelet directory
############################################################
sudo mkdir -p /var/lib/kubelet
# Copy worker and kube-proxy certificates/keys.
sudo cp \
  /root/certificates/worker.crt \
  /root/certificates/worker.key \
  /root/certificates/kube-proxy.crt \
  /root/certificates/kube-proxy.key \
  /var/lib/kubelet/</code></pre></td>
</tr>
</tbody>
</table>

##  Step 12 - Configure Kubelet

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 12 — Configure Kubelet
############################################################
#Run on Worker Node.
############################################################
# STEP 12.1 - Create kubelet configuration
############################################################
cat &lt;&lt;EOF | sudo tee /var/lib/kubelet/kubelet-config.yaml
kind: KubeletConfiguration
apiVersion: kubelet.config.k8s.io/v1beta1
authentication:
  anonymous:
    enabled: false
  webhook:
    enabled: true
  x509:
    clientCAFile: "/var/lib/kubernetes/ca.crt"
authorization:&lt;removed&gt;
  mode: Webhook
clusterDomain: "cluster.local"
clusterDNS:
  - "10.32.0.10"
runtimeRequestTimeout: "15m"
cgroupDriver: systemd
EOF
############################################################
# STEP 12.2 - Create kubelet systemd service
############################################################
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kubelet.service
[Unit]
Description=Kubernetes Kubelet
Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/
After=containerd.service
Requires=containerd.service
[Service]
ExecStart=/usr/local/bin/kubelet \\
  --config=/var/lib/kubelet/kubelet-config.yaml \\
  --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock \\
  --kubeconfig=/var/lib/kubelet/kubeconfig \\
  --v=2
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
############################################################
# STEP 12.3 - Generate Kubelet kubeconfig
############################################################
cd /var/lib/kubelet
# Copy the CA certificate locally so kubectl can embed it.
sudo cp /var/lib/kubernetes/ca.crt .
# Set the API server address.
#
# Replace with the actual Control Plane IP.
export SERVER_IP="YOUR_CONTROL_PLANE_IP"
echo $SERVER_IP
# Configure the Kubernetes cluster.
kubectl config set-cluster kubernetes-from-scratch \
  --certificate-authority=/var/lib/kubelet/ca.crt \
  --embed-certs=true \
  --server=https://${SERVER_IP}:6443 \
  --kubeconfig=/var/lib/kubelet/worker.kubeconfig
# Configure the worker node identity.
kubectl config set-credentials system:node:worker \
  --client-certificate=/var/lib/kubelet/worker.crt \
  --client-key=/var/lib/kubelet/worker.key \
  --embed-certs=true \
  --kubeconfig=/var/lib/kubelet/worker.kubeconfig
# Create the worker context.
kubectl config set-context default \
  --cluster=kubernetes-from-scratch \
  --user=system:node:worker \
  --kubeconfig=/var/lib/kubelet/worker.kubeconfig
# Select the worker context.
kubectl config use-context default \
  --kubeconfig=/var/lib/kubelet/worker.kubeconfig
# Place the kubeconfig where the kubelet service expects it.
sudo mv \
  /var/lib/kubelet/worker.kubeconfig \
  /var/lib/kubelet/kubeconfig</code></pre></td>
</tr>
</tbody>
</table>

##  Step 13 - Configure Kube Proxy

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 13 — Configure kube-proxy
############################################################
#Run on Worker Node.
############################################################
# STEP 13.1 - Create kube-proxy directory
############################################################
sudo mkdir -p /var/lib/kube-proxy
############################################################
# STEP 13.2 - Generate kube-proxy kubeconfig
############################################################
cd /var/lib/kube-proxy
# API server address.
export SERVER_IP="YOUR_CONTROL_PLANE_IP"
echo $SERVER_IP
# Configure the Kubernetes cluster.
kubectl config set-cluster kubernetes-from-scratch \
  --certificate-authority=/var/lib/kubernetes/ca.crt \
  --embed-certs=true \
  --server=https://${SERVER_IP}:6443 \
  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig
# Configure kube-proxy identity.
kubectl config set-credentials system:kube-proxy \
  --client-certificate=/var/lib/kubelet/kube-proxy.crt \
  --client-key=/var/lib/kubelet/kube-proxy.key \
  --embed-certs=true \
  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig
# Create kube-proxy context.
kubectl config set-context default \
  --cluster=kubernetes-from-scratch \
  --user=system:kube-proxy \
  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig
# Select the context.
kubectl config use-context default \
  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig
# Move it to the location expected by kube-proxy.
sudo mv \
  /var/lib/kube-proxy/kube-proxy.kubeconfig \
  /var/lib/kube-proxy/kubeconfig
############################################################
# STEP 13.3 - Create kube-proxy configuration
############################################################
cat &lt;&lt;EOF | sudo tee /var/lib/kube-proxy/kube-proxy-config.yaml
kind: KubeProxyConfiguration
apiVersion: kubeproxy.config.k8s.io/v1alpha1
clientConnection:
  kubeconfig: "/var/lib/kube-proxy/kubeconfig"
mode: "iptables"
clusterCIDR: "10.200.0.0/16"
EOF
############################################################
# STEP 13.4 - Create kube-proxy systemd service
############################################################
cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-proxy.service
[Unit]
Description=Kubernetes Kube Proxy
Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-proxy/
[Service]
ExecStart=/usr/local/bin/kube-proxy \\
  --config=/var/lib/kube-proxy/kube-proxy-config.yaml
Restart=on-failure
RestartSec=5
[Install]
WantedBy=multi-user.target
EOF
############################################################
# STEP 13.5 - Start Worker Node services
############################################################
# Reload systemd to recognize the new services.
sudo systemctl daemon-reload
# Start kubelet.
sudo systemctl start kubelet
# Start kube-proxy.
sudo systemctl start kube-proxy
# Check kubelet status.
sudo systemctl status kubelet
# Check kube-proxy status.
sudo systemctl status kube-proxy
# Enable both services to start automatically after reboot.
sudo systemctl enable kubelet
sudo systemctl enable kube-proxy</code></pre></td>
</tr>
</tbody>
</table>

##  Step 14 - Verify worker node

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">############################################################
# STEP 14 - Verify Worker Node
############################################################
#Run this on the Control Plane node.
# List all Kubernetes nodes registered with the API server.
kubectl get nodes</code></pre></td>
</tr>
</tbody>
</table>

##  Step 15 - Configure Kubernetes Networking 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">############################################################
# STEP 15 - Configure Kubernetes Networking
############################################################
# Purpose: install the CNI plugins on the worker and then deploy Calico from the control plane.</code></pre>
<p><strong><mark>#  ON Worker Node</mark></strong></p>
<pre><code class="language-bash"># Download the standard CNI plugins.
# These provide the networking binaries that Kubernetes/CNI will use.
cd /tmp
wget https://github.com/containernetworking/plugins/releases/download/v1.6.2/cni-plugins-linux-amd64-v1.6.2.tgz
############################################################
# Create CNI directories
############################################################
# /etc/cni/net.d  -&gt; CNI network configuration
# /opt/cni/bin    -&gt; CNI plugin binaries
# /var/run/kubernetes -&gt; Kubernetes runtime files
sudo mkdir -p \
  /etc/cni/net.d \
  /opt/cni/bin \
  /var/run/kubernetes
############################################################
# Extract CNI plugins
############################################################
# Move the downloaded archive to the CNI binary directory.
sudo mv cni-plugins-linux-amd64-v1.6.2.tgz /opt/cni/bin/
# Move into the CNI binary directory.
cd /opt/cni/bin
# Extract the CNI plugins.
sudo tar -xzvf cni-plugins-linux-amd64-v1.6.2.tgz</code></pre>
<p><strong><mark>#Control Plane Node</mark></strong></p>
<pre><code class="language-bash">############################################################
# Deploy Calico
############################################################
# Deploy the Calico operator.
#
# Calico will provide the actual Kubernetes pod networking.
kubectl create -f \
  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml
# Deploy Calico's configuration/custom resources.
kubectl create -f \
  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml
# Give Calico a few minutes to initialize.
# If the worker remains NotReady, check/restart kubelet on the worker.
# Worker Node — if the worker remains NotReady
############################################################
# Restart kubelet if the worker remains NotReady
############################################################
sudo systemctl restart kubelet
Control Plane Node — verification
############################################################
# Verify cluster networking
############################################################
# Check whether the worker has become Ready.
kubectl get nodes
# Create a test nginx Pod.
kubectl run nginx --image=nginx
# Check Pod status.
kubectl get pods
#The course notes that Calico may take 3–5 minutes to settle, and a Pod can temporarily show #an error after restarting kubelet before eventually becoming Running.
############################################################
# Test communication with the nginx Pod
############################################################
# Execute a command inside the nginx container.
kubectl exec nginx -- ls
# The course then modifies /etc/hosts on the host as part of
# this networking exercise.
sudo nano /etc/hosts
# Add the worker mapping shown in your course, using YOUR
# worker IP rather than blindly copying the example:
#
# YOUR_WORKER_IP worker
# Test Pod exec again.
kubectl exec nginx -- ls</code></pre></td>
</tr>
</tbody>
</table>

##  Step 16 - Configure API Server & Kublet RBAC

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">############################################################
# STEP 16 - Configure API Server → Kubelet RBAC
############################################################
#Purpose: explicitly grant the API server permission to access kubelet resources such as node proxy, stats, logs, specs and metrics.
#Run on the Control Plane.
# Create a ClusterRole granting the API server access to
# selected kubelet/node subresources.
cat &lt;&lt;EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  annotations:
    rbac.authorization.kubernetes.io/autoupdate: "true"
  labels:
    kubernetes.io/bootstrapping: rbac-defaults
  name: system:kube-apiserver-to-kubelet
rules:
  - apiGroups:
      - ""
    resources:
      - nodes/proxy
      - nodes/stats
      - nodes/log
      - nodes/spec
      - nodes/metrics
    verbs:
      - "*"
EOF
############################################################
# Bind the ClusterRole to the kube-apiserver identity
############################################################
cat &lt;&lt;EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: system:kube-apiserver
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: system:kube-apiserver-to-kubelet
subjects:
  - apiGroup: rbac.authorization.k8s.io
    kind: User
    name: kube-apiserver
EOF
############################################################
# Test Pod execution again
############################################################</code></pre>
<p>Kubectl exec nginx -- ls</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

##  Step 17 - Configure Kubernetes DNS

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 17 - Configure Kubernetes DNS
############################################################
#Purpose: test cluster DNS first, then deploy CoreDNS.
#Control Plane Node
# Check basic cluster/API connectivity.
kubectl cluster-info
############################################################
# Create a temporary BusyBox Pod for DNS testing
############################################################
kubectl run busybox \
  --image=busybox:1.28 \
  --command -- \
  sleep 3600
# Open a shell inside the BusyBox Pod.
kubectl exec -it busybox -- sh
# Inside the BusyBox shell:
#
# Test DNS resolution.
nslookup google.com
# Test basic network connectivity.
ping 8.8.8.8
# Exit the BusyBox shell when finished.
exit
############################################################
# Install CoreDNS
############################################################
# Download the CoreDNS manifest used by the course.
wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/master/Domain%206%20-%20Cluster%20Architecture%2C%20Installation%20%26%20Configuration/coredns.yaml
# Create the CoreDNS resources.
kubectl create -f coredns.yaml
############################################################
# Verify CoreDNS
############################################################
# Check the DNS-related Pods.
kubectl get pods -n kube-system
# Test DNS again from BusyBox.
kubectl exec -it busybox -- sh
# Inside the container:
nslookup google.com
# Exit when finished.
exit</code></pre></td>
</tr>
</tbody>
</table>

##  Step 18 - Configure Kubelet preferred address type

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 18 - Configure kubelet preferred address type
############################################################
#STEP 18 — Configure Kubelet Preferred Address Type
#Purpose: this is a troubleshooting/configuration exercise showing how the API server chooses the address through which it communicates with kubelet.**
#Control Plane Node
# Remove the worker entry from /etc/hosts.
#
# This intentionally removes hostname-based resolution so we can
# test how the API server discovers/uses the worker address.
sudo nano /etc/hosts
############################################################
# Test connectivity to the nginx Pod
############################################################
kubectl exec -it nginx -- ls
############################################################
# Inspect the worker node
############################################################
kubectl describe node worker
############################################################
# Modify kube-apiserver configuration
############################################################
sudo nano /etc/systemd/system/kube-apiserver.service</code></pre>
<p>Add this flag to the API server:</p>
<pre><code class="language-bash"># Tell the API server to prefer the worker's InternalIP
# when communicating with kubelet.
--kubelet-preferred-address-types=InternalIP
############################################################
# Reload and restart the API server
############################################################
sudo systemctl daemon-reload
sudo systemctl restart kube-apiserver
# The course notes that the API server may take 2–3 minutes
# to become fully available again.
Verify
############################################################
# Verify kubelet connectivity
############################################################
kubectl exec -it nginx -- ls</code></pre></td>
</tr>
</tbody>
</table>

##  Step 19 - Breakdown / Failure Testing

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 19 — Breakdown / Failure Testing
############################################################
#This section is primarily a learning exercise, not additional cluster configuration.
#The idea is to deliberately stop individual Kubernetes components and observe what breaks and what continues working.
&#32;
#Control Plane
############################################################
# STEP 19.1 - Test kube-scheduler failure
############################################################
# Create a Pod before stopping the scheduler.
kubectl run nginx-before --image=nginx
# Stop the scheduler.
sudo systemctl stop kube-scheduler
# Confirm it is stopped.
sudo systemctl status kube-scheduler
# Try creating another Pod.
kubectl run nginx-after --image=nginx
# Check Pod status.
kubectl get pods
# Inspect the Pod created before scheduler failure.
kubectl describe pod nginx-before
############################################################
# Bring scheduler back
############################################################
sudo systemctl start kube-scheduler
# Verify the Pods again.
kubectl get pods</code></pre>
<p>Concept being demonstrated: the scheduler is responsible for deciding which node a newly created Pod should run on.</p>
<pre><code class="language-bash">19.2 Test kubelet failure
Worker Node
############################################################
# STEP 19.2 - Test kubelet failure
############################################################
# Stop kubelet on the Worker Node.
sudo systemctl stop kubelet
# Verify that kubelet is stopped.
sudo systemctl status kubelet
Control Plane Node
############################################################
# Test Pod creation while worker kubelet is down
############################################################
kubectl run kubelet --image=nginx
kubectl get pods
Worker Node
############################################################
# Bring kubelet back
############################################################
sudo systemctl start kubelet
Control Plane Node
############################################################
# Verify cluster state
############################################################
kubectl get pods
#The course is demonstrating the distinction between the Kubernetes API accepting an object and the node's kubelet actually being able to run/manage containers.
19.3 Test Controller Manager failure
Control Plane Node
############################################################
# STEP 19.3 - Test kube-controller-manager failure
############################################################
# Create a namespace before stopping the controller manager.
kubectl create namespace namespace-1
# Verify its ServiceAccount.
kubectl get sa -n namespace-1
# Stop the controller manager.
sudo systemctl stop kube-controller-manager
# Verify that it is stopped.
sudo systemctl status kube-controller-manager
# Create another namespace while controller manager is down.
kubectl create namespace namespace-2
# Check the ServiceAccounts.
kubectl get sa -n namespace-2
############################################################
# Bring controller manager back
############################################################
sudo systemctl start kube-controller-manager
# Verify namespaces.
kubectl get namespace
# Verify the ServiceAccount for namespace-2.
kubectl get sa -n namespace-2</code></pre></td>
</tr>
</tbody>
</table>

##  Step 20 - ETCD Backup and Restore

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p> </p>
<pre><code class="language-bash">############################################################
# STEP 20 - etcd Backup and Restore Exercise
############################################################
#This section is an etcd backup/restore exercise. It is somewhat separate from your running single-node etcd configuration, but it demonstrates a critical Kubernetes administration operation: backing up the cluster's persistent state. The course material uses a separate etcd setup for this exercise.
#Common setup on the etcd servers
# Create directories for certificates and binaries.
sudo mkdir -p /root/certificates
sudo mkdir -p /root/binaries
############################################################
# Install required utilities
############################################################
# NOTE:
# The course material uses yum because this exercise was written
# for a yum-based environment.
#
# On your Ubuntu VMs, use apt instead if you actually execute
# this exercise.
#
# This section is primarily preserved as course material.  The course then downloads etcd v3.4.0, creates an etcd CA/certificate, configures an etcd systemd service, and starts it.
#
# If you are actually executing this on your Ubuntu Kubernetes VMs, don't blindly run the yum commands or replace your existing etcd installation with v3.4.0; this part of the course is a separate backup/restore exercise.
Server 1 — create test data and backup
############################################################
# STEP 20.1 - Create test data in etcd
############################################################
# Store a test key/value.
ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/etcd/ca.crt \
  --cert=/etc/etcd/etcd.crt \
  --key=/etc/etcd/etcd.key \
  put course "kplabs cka course is awesome"
# Verify the value.
ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/etcd/ca.crt \
  --cert=/etc/etcd/etcd.crt \
  --key=/etc/etcd/etcd.key \
  get course
############################################################
# Take an etcd snapshot
############################################################
# Save a backup of the etcd database.
ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/etcd/ca.crt \
  --cert=/etc/etcd/etcd.crt \
  --key=/etc/etcd/etcd.key \
  snapshot save /tmp/snapshot.db
# Inspect the snapshot.
etcdctl --write-out=table snapshot status /tmp/snapshot.db
Server 2 — restore exercise
############################################################
# STEP 20.2 - Transfer snapshot to Server 2
############################################################
# The course creates a temporary user for file transfer.
sudo useradd -m zeal
# Set a temporary password when prompted.
sudo passwd zeal
############################################################
# Temporarily enable SSH password authentication
############################################################
sudo nano /etc/ssh/sshd_config
# Set:
#
# PasswordAuthentication yes
sudo systemctl restart ssh
Server 1:
############################################################
# Copy the etcd snapshot to Server 2
############################################################
scp /tmp/snapshot.db zeal@SERVER2-IP:/tmp
Server 2:
############################################################
# Restore the etcd snapshot
############################################################
cd /tmp
ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/etcd/ca.crt \
  --cert=/etc/etcd/etcd.crt \
  --key=/etc/etcd/etcd.key \
  snapshot restore snapshot.db
############################################################
# Stop etcd before replacing its data directory
############################################################
sudo systemctl stop etcd
# WARNING:
# This removes the existing etcd data from this exercise server.
sudo rm -rf /var/lib/etcd/*
############################################################
# Replace the etcd data with restored snapshot data
############################################################
sudo mv /tmp/default.etcd/* /var/lib/etcd
############################################################
# Start etcd again
############################################################
sudo systemctl start etcd
############################################################
# Verify restored data
############################################################
ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/etcd/ca.crt \
  --cert=/etc/etcd/etcd.crt \
  --key=/etc/etcd/etcd.key \
  get course</code></pre></td>
</tr>
</tbody>
</table>

##  Step 21 - Understanding Network Policy Structure

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 21 — Understand NetworkPolicy Structure
############################################################
#This final section is conceptual/practice-oriented: you're learning the structure of a Kubernetes NetworkPolicy, then creating and deleting one.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: demo-network-policy
spec:
  # Apply this policy to Pods having:
  # env=production
  podSelector:
    matchLabels:
      env: production
  # This policy controls both incoming and outgoing traffic.
  policyTypes:
    - Ingress
    - Egress
  # Allow incoming traffic from Pods labelled:
  # env=security
  ingress:
    - from:
        - podSelector:
            matchLabels:
              env: security
  # Allow outgoing traffic to 8.8.8.8.
  egress:
    - to:
        - ipBlock:
            cidr: 8.8.8.8/32
Save that as:
first-netpol.yaml
Then:
############################################################
# Create the NetworkPolicy
############################################################
kubectl create -f first-netpol.yaml
############################################################
# Inspect the NetworkPolicy
############################################################
kubectl describe netpol demo-network-policy
############################################################
# Delete the NetworkPolicy after the exercise
############################################################
kubectl delete -f first-netpol.yaml</code></pre>
<p>The key structure to remember from this exercise is:</p>
<pre><code class="language-plaintext">NetworkPolicy
   |
   +-- podSelector      -&gt; WHICH pods does this policy apply to?
   |
   +-- policyTypes      -&gt; Ingress / Egress
   |
   +-- ingress.from     -&gt; WHO can connect in?
   |
   +-- egress.to        -&gt; WHERE can traffic go?</code></pre></td>
</tr>
</tbody>
</table>

##  Step 22 - Network Policies - Implementation

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image730.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 22 — Practical: Network Policies
############################################################
#Purpose: hands-on practice with NetworkPolicy behavior: default deny, allow rules, pod selectors, namespace selectors, and IP-based egress.
#Example 1 — Base/default-deny policy
&#32;
# Example 1: Apply the policy to ALL pods in the namespace.
# Because Ingress and Egress are listed, both directions become isolated.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-1
spec:
  podSelector: {}
  policyTypes:
    - Ingress
    - Egress
# Create a test Pod.
kubectl run test-pod --image=alpine/curl -- sleep 36000
# Verify the Pod.
kubectl get pods
# Open a shell inside the Pod.
kubectl exec -it test-pod -- sh
# Inside the Pod, test connectivity.
ping google.com
# Exit the Pod shell.
exit
# Apply the NetworkPolicy.
kubectl create -f example-1.yaml
# List NetworkPolicies.
kubectl get netpol
# Inspect the policy.
kubectl describe netpol example-1
# Test connectivity again.
kubectl exec -it test-pod -- sh
# Inside the Pod, test external connectivity.
ping google.com
# Exit.
exit
# Remove the policy.
kubectl delete -f example-1.yaml
Example 2 — Allow all ingress
# Example 2:
# Apply the policy to all Pods.
# Empty ingress rule means ingress is explicitly allowed.
# Egress remains isolated because Egress is also listed in policyTypes.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-2
spec:
  podSelector: {}
  ingress:
    - {}
  policyTypes:
    - Ingress
    - Egress
# Create the policy.
kubectl create -f example-2.yaml
# Inspect the policy.
kubectl describe netpol example-2
# Create another Pod in the default namespace.
kubectl run random-pod --image=alpine/curl -- sleep 36000
kubectl get pods -o wide
# Test communication to test-pod.
kubectl exec -it random-pod -- sh
ping &lt;IP-OF-TEST-POD&gt;
exit
# Create a separate namespace.
kubectl create ns testing
# Create another Pod in that namespace.
kubectl run random-pod -n testing --image=alpine/curl -- sleep 36000
kubectl get pods -n testing
# Test communication from another namespace.
kubectl exec -it random-pod -n testing -- sh
ping &lt;IP-OF-TEST-POD&gt;
exit
Example 3 — Select specific Pods
# Example 3:
# This policy applies ONLY to Pods labelled role=suspicious.
# Both ingress and egress are isolated for those selected Pods.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-3
spec:
  podSelector:
    matchLabels:
      role: suspicious
  policyTypes:
    - Ingress
    - Egress
# Create the policy.
kubectl create -f example-3.yaml
# Create a Pod.
kubectl run suspicious-pod --image=alpine/curl -- sleep 36000
# Give the Pod the label targeted by the policy.
kubectl label pod suspicious-pod role=suspicious
# Test connectivity from the selected Pod.
kubectl exec -it suspicious-pod -- sh
ping google.com
exit
Example 4 — Allow ingress from selected Pods
# Example 4:
# Apply this policy to Pods labelled role=database.
# Only Pods labelled role=app are allowed to connect IN.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-4
spec:
  podSelector:
    matchLabels:
      role: database
  ingress:
    - from:
        - podSelector:
            matchLabels:
              role: app
  policyTypes:
    - Ingress
# Create the policy.
kubectl create -f example-4.yaml
# Create application and database Pods.
kubectl run app-pod --image=alpine/curl -- sleep 36000
kubectl run database-pod --image=alpine/curl -- sleep 36000
kubectl get pods -o wide
# Initially test from the unlabelled app Pod.
kubectl exec -it test-pod -- sh
ping &lt;DB-POD-IP&gt;
exit
# Label app-pod so it matches the NetworkPolicy.
kubectl label pod app-pod role=app
# Test again from the allowed Pod.
kubectl exec -it app-pod -- sh
ping &lt;DB-POD-IP&gt;
exit
# Remove the policy.
kubectl delete -f example-4.yaml
Example 5 — Allow traffic from a namespace
# Example 5:
# The policy lives in the production namespace.
# It applies to all Pods in production.
# Ingress is allowed from Pods in the security namespace.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-5
  namespace: production
spec:
  podSelector: {}
  ingress:
    - from:
        - namespaceSelector:
            matchLabels:
              kubernetes.io/metadata.name: security
  policyTypes:
    - Ingress
# Create the namespaces.
kubectl create ns production
kubectl create ns security
# Inspect namespace labels.
kubectl get ns --show-labels
# Create Pods in each namespace.
kubectl run prod-pod -n production --image=alpine/curl -- sleep 36000
kubectl run security-pod -n security --image=alpine/curl -- sleep 36000
# Test connectivity from security -&gt; production.
kubectl exec -it security-pod -n security -- sh
ping &lt;Prod-POD-IP-Of-Production-namespace&gt;
exit
# Apply the NetworkPolicy.
kubectl create -f example-5.yaml
Example 6 — Allow egress to an IP
# Example 6:
# Apply the policy to all Pods in production.
# Egress is allowed to 8.8.8.8/32.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-6
  namespace: production
spec:
  podSelector: {}
  egress:
    - to:
        - ipBlock:
            cidr: 8.8.8.8/32
  policyTypes:
    - Egress
# Create the policy.
kubectl create -f example-6.yaml
# Test egress from the production Pod.
kubectl exec -it prod-pod -n production -- sh
ping 8.8.8.8
exit
# Remove the policy.
kubectl delete -f example-6.yaml
# Clean up test resources.
kubectl delete pods --all
kubectl delete pod security-pod -n security
kubectl delete pod prod-pod -n production
kubectl delete pods --all -n testing
kubectl delete ns testing
kubectl delete ns production
kubectl delete ns security</code></pre></td>
</tr>
</tbody>
</table>

### POD TO POD - Network Policy - Self Tested

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→POD TO POD NETWORK POLICY ENFORCEMENTS. EG.</p>
<pre><code class="nohighlight language-bash">kubectl get pods -A -o wide
    admin@k8cp:~/Desktop$ kubectl get pods -A -o wide
    NAMESPACE          NAME                                       READY   STATUS    RESTARTS       AGE     IP              NODE    NOMINATED NODE   READINESS GATES
    calico-apiserver   calico-apiserver-66485d5db4-2slzb          1/1     Running   4 (18m ago)    3d22h   10.244.178.92   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-apiserver   calico-apiserver-66485d5db4-gjbkm          1/1     Running   4 (18m ago)    3d22h   10.244.178.93   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   4 (18m ago)    3d22h   10.244.178.90   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-node-c4n77                          1/1     Running   5 (10m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-node-pr74q                          1/1     Running   3 (18m ago)    3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;
    calico-system      calico-typha-77f8575c68-l7dv6              1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      csi-node-driver-d9qzs                      2/2     Running   8 (18m ago)    3d22h   10.244.178.94   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      csi-node-driver-js8zv                      2/2     Running   6 (18m ago)    3d11h   10.244.245.69   k8dp1   &lt;none&gt;           &lt;none&gt;
    kube-system        coredns-668d6bf9bc-k4jr2                   1/1     Running   4 (18m ago)    3d22h   10.244.178.89   k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        coredns-668d6bf9bc-pbn5j                   1/1     Running   4 (18m ago)    3d22h   10.244.178.91   k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        etcd-k8cp                                  1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-apiserver-k8cp                        1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-controller-manager-k8cp               1/1     Running   12 (11m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-proxy-lfthl                           1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-proxy-x62pg                           1/1     Running   3 (18m ago)    3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;
    kube-system        kube-scheduler-k8cp                        1/1     Running   13 (11m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    tigera-operator    tigera-operator-7d68577dc5-hpkqk           1/1     Running   11 (16m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
#We running Calico, so NetworkPolicy enforcement is available.
#Next, let's see which Calico mode/configuration you're running, because that affects what we can inspect underneath.
kubectl get felixconfiguration default -o yaml
    admin@k8cp:~/Desktop$ kubectl get felixconfiguration default -o yaml
    apiVersion: projectcalico.org/v3
    kind: FelixConfiguration
    metadata:
    annotations:
        operator.tigera.io/bpfEnabled: "false"
    creationTimestamp: "2026-08-08T20:32:20Z"
    generation: 1
    name: default
    resourceVersion: "2391"
    uid: 415bc064-208f-474f-a72f-f6852c81284f
    spec:
    bpfConnectTimeLoadBalancing: TCP
    bpfEnabled: false
    bpfHostNetworkedNATWithoutCTLB: Enabled
    bpfLogLevel: ""
    floatingIPs: Disabled
    healthPort: 9099
    logSeverityScreen: Info
    nftablesMode: Disabled
    reportingInterval: 0s
    vxlanVNI: 4096
    admin@k8cp:~/Desktop$
#This confirms Calico is using its non-eBPF dataplane here (bpfEnabled: false), so for our experiments we can later inspect the Linux networking rules Calico installs.
#Next, let's establish a baseline before applying any NetworkPolicy.
kubectl get ns
    admin@k8cp:~/Desktop$ kubectl get ns
    NAME               STATUS   AGE
    calico-apiserver   Active   3d22h
    calico-system      Active   3d22h
    default            Active   3d22h
    kube-node-lease    Active   3d22h
    kube-public        Active   3d22h
    kube-system        Active   3d22h
    tigera-operator    Active   3d22h
    admin@k8cp:~/Desktop$
kubectl get networkpolicy -n default
    admin@k8cp:~/Desktop$ kubectl get networkpolicy -n default
    No resources found in default namespace.
    admin@k8cp:~/Desktop$
#no NetworkPolicy is currently applied in default, so traffic should be unrestricted by NetworkPolicy.
#Next, let's create two tiny test Pods (client and server) so we can observe the behavior ourselves:
kubectl run server --image=nginx --restart=Never
kubectl run client --image=curlimages/curl --restart=Never -- sleep 3600
kubectl get pods -o wide
    NAME     READY   STATUS    RESTARTS   AGE    IP              NODE    NOMINATED NODE   READINESS GATES
    client   1/1     Running   0          66s    10.244.245.71   k8dp1   &lt;none&gt;           &lt;none&gt;
    server   1/1     Running   0          115s   10.244.245.70   k8dp1   &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$
# Test baseline connectivity: client should be able to reach the server Pod on nginx port 80.
kubectl exec client -- curl -s --connect-timeout 3 http://10.244.245.70
    admin@k8cp:~/Desktop$ # Test baseline connectivity: client should be able to reach the server Pod on nginx port 80.
    kubectl exec client -- curl -s --connect-timeout 3 http://10.244.245.70
    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Welcome to nginx!&lt;/title&gt;
&#32;
# Create an ingress NetworkPolicy that selects the server Pod and allows NO ingress traffic.
kubectl apply -f - &lt;&lt;'EOF'
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: <mark>deny-server-ingress</mark>
spec:
  podSelector:
    matchLabels:
      run: server
  policyTypes:
    - Ingress
EOF
&#32;
# Test the same client → server traffic again; it should now time out because server ingress is denied.
kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70
    admin@k8cp:~/Desktop$ # Test the same client → server traffic again; it should now time out because server ingress is denied.
    kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70
    command terminated with exit code 28
    admin@k8cp:~/Desktop$
#Exit code 28 = curl timed out, confirming the NetworkPolicy is actively blocking ingress to server.
#Next, let's inspect the policy we just created:
# Inspect the NetworkPolicy and verify which Pod it selects and what traffic type it isolates.
kubectl describe networkpolicy deny-server-ingress
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$ # Inspect the NetworkPolicy and verify which Pod it selects and what traffic type it isolates.
    kubectl describe networkpolicy deny-server-ingress
    Name:         deny-server-ingress
    Namespace:    default
    Created on:   2026-08-12 18:51:13 +0000 UTC
    Labels:       &lt;none&gt;
    Annotations:  &lt;none&gt;
    Spec:
    PodSelector:     run=server
    Allowing ingress traffic:
        &lt;none&gt; (Selected pods are isolated for ingress connectivity)
    Not affecting egress traffic
    Policy Types: Ingress
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$
    admin@k8cp:~/Desktop$
#This confirms an important NetworkPolicy rule:
#Once a Pod is selected by an Ingress policy, ingress becomes default-deny unless explicitly allowed. Egress remains untouched.
#Next, let's prove the policy is only affecting the server Pod, not the client:
# Test client → its own network namespace; this should still work because the policy selects only server.
kubectl exec client -- sh -c 'echo client-is-alive'
    admin@k8cp:~/Desktop$ # Test client → its own network namespace; this should still work because the policy selects only server.
    kubectl exec client -- sh -c 'echo client-is-alive'
    client-is-alive
    admin@k8cp:~/Desktop$
#that confirms the policy is selectively isolating only the server Pod. The client itself is unaffected.
#Next, let's explicitly allow only client → server ingress using Pod labels:
# Replace deny-all ingress with an allow rule: only Pods labeled run=client can reach server on TCP/80.
kubectl apply -f - &lt;&lt;'EOF'
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: <mark>allow-client-to-server</mark>
spec:
  podSelector:
    matchLabels:
      run: server
  policyTypes:
    - Ingress
  ingress:
    - from:
        - podSelector:
            matchLabels:
              run: client
      ports:
        - protocol: TCP
          port: 80
EOF
networkpolicy.networking.k8s.io/allow-client-to-server created
admin@k8cp:~/Desktop$
#Check the network policies that are created.
admin@k8cp:~/Desktop$ kubectl get networkpolicy -n default
NAME                     POD-SELECTOR   AGE
allow-client-to-server   run=server     17m
deny-server-ingress      run=server     21m
admin@k8cp:~/Desktop$
kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70
    admin@k8cp:~/Desktop$ # Test the newly allowed path: client → server on TCP/80 should work again.
    kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70
    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Welcome to nginx!&lt;/title&gt;
    &lt;style&gt;
    html { color-scheme: light dark; }
    body { width: 35em; margin: 0 auto;
    font-family: Tahoma, Verdana, Arial, sans-serif; }
    &lt;/style&gt;
    &lt;/head&gt;
    &lt;body&gt;
    &lt;h1&gt;Welcome to nginx!&lt;/h1&gt;
&#32;
#we've now demonstrated the basic allow-list behavior:
#client → server:80 ✅ allowed.
#Let's test that the rule is actually restricted to TCP/80. Since nginx listens on 80, first we'll inspect the server's listening ports:
kubectl exec server -- sh -c 'cat /proc/net/tcp'
    admin@k8cp:~/Desktop$ # Check which TCP ports the server Pod is actually listening on.
    kubectl exec server -- sh -c 'cat /proc/net/tcp'
    sl  local_address rem_address   st tx_queue rx_queue tr tm-&gt;when retrnsmt   uid  timeout inode
    0: 00000000:0050 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 44970 1 0000000000000000 100 0 0 10 0
    admin@k8cp:~/Desktop$
#0050 is hexadecimal for port 80, and state 0A means LISTEN. So nginx is listening exactly where we expected.
#Next, let's inspect the actual NetworkPolicy rules Calico has programmed underneath:
admin@k8cp:~/Desktop$ # Find the Calico node running on k8dp1, then inspect its relevant policy programming/logical state.
kubectl get pods -n calico-system -l k8s-app=calico-node -o wide
NAME                READY   STATUS    RESTARTS      AGE     IP             NODE    NOMINATED NODE   READINESS GATES
calico-node-c4n77   1/1     Running   5 (22m ago)   3d22h   192.168.1.16   k8cp    &lt;none&gt;           &lt;none&gt;
calico-node-pr74q   1/1     Running   3 (31m ago)   3d11h   192.168.1.17   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~/Desktop$
#both Pods are on k8dp1, and Calico's node agent there is calico-node-pr74q. This is the node where we should inspect the enforcement path.
#What we've proven
                    BEFORE POLICY
client ─────────────────────────────→ server:80
                  ✅ ALLOWED
              deny-server-ingress
                         ↓
client ─────────────────────────────→ server:80
                  ❌ BLOCKED
                  curl exit 28
             allow-client-to-server
                         ↓
client ─────────────────────────────→ server:80
                  ✅ ALLOWED</code></pre></td>
</tr>
<tr>
<td><p>→Clean up</p>
<pre><code class="language-bash"># Delete the NetworkPolicies created during the Pod-level experiment.
kubectl delete networkpolicy deny-server-ingress allow-client-to-server -n default
# Delete the test Pods.
kubectl delete pod client server -n default</code></pre></td>
</tr>
</tbody>
</table>

### NS to NS - Network Policy - Self Created

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p># Create two namespaces: one for the client and one for the server.</p>
<pre><code class="language-bash">kubectl create namespace client-ns
kubectl create namespace server-ns
# Create an nginx server in server-ns and a curl client in client-ns.
kubectl run server -n server-ns --image=nginx --restart=Never
kubectl run client -n client-ns --image=curlimages/curl --restart=Never -- sleep 3600
    admin@k8cp:~/Desktop$ kubectl get pods -A -o wide
    NAMESPACE          NAME                                       READY   STATUS    RESTARTS        AGE     IP              NODE    NOMINATED NODE   READINESS GATES
    calico-apiserver   calico-apiserver-66485d5db4-2slzb          1/1     Running   4 (57m ago)     3d22h   10.244.178.92   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-apiserver   calico-apiserver-66485d5db4-gjbkm          1/1     Running   4 (57m ago)     3d22h   10.244.178.93   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   4 (57m ago)     3d22h   10.244.178.90   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-node-c4n77                          1/1     Running   6 (16m ago)     3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      calico-node-pr74q                          1/1     Running   3 (57m ago)     3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;
    calico-system      calico-typha-77f8575c68-l7dv6              1/1     Running   5 (16m ago)     3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      csi-node-driver-d9qzs                      2/2     Running   8 (57m ago)     3d22h   10.244.178.94   k8cp    &lt;none&gt;           &lt;none&gt;
    calico-system      csi-node-driver-js8zv                      2/2     Running   6 (57m ago)     3d11h   10.244.245.69   k8dp1   &lt;none&gt;           &lt;none&gt;
    client-ns          client                                     1/1     Running   0               2m1s    10.244.245.73   k8dp1   &lt;none&gt;           &lt;none&gt;
    kube-system        coredns-668d6bf9bc-k4jr2                   1/1     Running   4 (57m ago)     3d23h   10.244.178.89   k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        coredns-668d6bf9bc-pbn5j                   1/1     Running   4 (57m ago)     3d23h   10.244.178.91   k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        etcd-k8cp                                  1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-apiserver-k8cp                        1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-controller-manager-k8cp               1/1     Running   17 (2m3s ago)   3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-proxy-lfthl                           1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    kube-system        kube-proxy-x62pg                           1/1     Running   3 (57m ago)     3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;
    kube-system        kube-scheduler-k8cp                        1/1     Running   18 (2m3s ago)   3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    server-ns          server                                     1/1     Running   0               2m2s    10.244.245.72   k8dp1   &lt;none&gt;           &lt;none&gt;
    tigera-operator    tigera-operator-7d68577dc5-hpkqk           1/1     Running   15 (2m3s ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~/Desktop$
# Test baseline cross-namespace connectivity: client-ns → server-ns should currently be allowed.
kubectl exec -n client-ns client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.72
    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Welcome to nginx!&lt;/title&gt;
# Apply an ingress policy to server-ns that allows traffic only from Pods in the same namespace.
kubectl apply -f - &lt;&lt;'EOF'
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-same-namespace
  namespace: server-ns
spec:
  podSelector:
    matchLabels:
      run: server
  policyTypes:
    - Ingress
  ingress:
    - from:
        - podSelector: {}
      ports:
        - protocol: TCP
          port: 80
EOF
admin@k8cp:~/Desktop$ # Show the NetworkPolicy we created for the namespace-level experiment.
kubectl get networkpolicy -n server-ns
NAME                   POD-SELECTOR   AGE
allow-same-namespace   run=server     4m10s
admin@k8cp:~/Desktop$
admin@k8cp:~/Desktop$
admin@k8cp:~/Desktop$ # Test cross-namespace traffic: client-ns → server-ns should now be blocked because only same-namespace Pods are allowed.
kubectl exec -n client-ns client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.72
command terminated with exit code 28
admin@k8cp:~/Desktop$
#We've now proven the namespace-level restriction: client-ns → server-ns is blocked because the policy only permits Pods from server-ns itself.</code></pre>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Clean up</p>
<pre><code class="language-bash"># Delete the namespace-level NetworkPolicy and the test Pods.
kubectl delete networkpolicy allow-same-namespace -n server-ns
kubectl delete pod client -n client-ns
kubectl delete pod server -n server-ns
# Delete the temporary namespaces.
kubectl delete namespace client-ns server-ns</code></pre></td>
</tr>
</tbody>
</table>

### IP Block 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→this is not widely used. Can be used when explicitely internet traffic is required to be blocked.</p>
<pre><code class="nohighlight language-bash"># Create a temporary Pod for testing Pod → external IP traffic.
kubectl run external-client --image=curlimages/curl --restart=Never -- sleep 3600
&#32;
admin@k8cp:~$ # Verify the test Pod is running before testing external connectivity.
kubectl get pod external-client -o wide
NAME              READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
external-client   1/1     Running   0          16s   10.244.245.75   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Test baseline Pod → external connectivity; this should return a response if internet access is available.
kubectl exec external-client -- curl -I -s --connect-timeout 5 --max-time 10 https://example.com
&#32;
HTTP/2 200
date: Thu, 13 Aug 2026 14:41:12 GMT
content-type: text/html
server: cloudflare
last-modified: Wed, 12 Aug 2026 20:15:57 GMT
allow: GET, HEAD
accept-ranges: bytes
age: 10329
cf-cache-status: HIT
cf-ray: a2a87ab71eb4055d-LIS
admin@k8cp:~$
#baseline confirmed: Pod → external internet works.
# Apply an egress policy that allows the Pod to reach only 93.184.216.34/32 (example.com).
kubectl apply -f - &lt;&lt;'EOF'
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: allow-example-only
spec:
  podSelector:
    matchLabels:
      run: external-client
  policyTypes:
    - <mark>Egress</mark>
  egress:
    - to:
        - ipBlock:
            cidr: 93.184.216.34/32
      ports:
        - protocol: TCP
          port: 443
EOF
admin@k8cp:~$ k get netpol
NAME                 POD-SELECTOR          AGE
allow-example-only   run=external-client   22s
admin@k8cp:~$
admin@k8cp:~$ # Test the allowed destination: external-client → example.com should still work.
kubectl exec external-client -- curl -I -s --connect-timeout 5 --max-time 10 https://example.com
command terminated with exit code 28
admin@k8cp:~$
#enough to prove the main ipBlock point, with one important wording correction:
#✅ Baseline: Pod could reach the internet.
#✅ After Egress ipBlock policy: traffic became restricted, and example.com timed out.
#⚠️ The failure does not prove that 93.184.216.34 itself was blocked; DNS was also blocked by the policy, so the hostname could no longer resolve.
#So your takeaway is:
#ipBlock can restrict Pod egress to specific IP/CIDR ranges; once an Egress policy selects a Pod, only explicitly allowed destinations/ports are permitted.
#That's the core concept we wanted to demonstrate.</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Clean up</p>
<pre><code class="language-bash"># Remove the final ipBlock test policy and temporary Pod.
kubectl delete networkpolicy allow-example-only --ignore-not-found
kubectl delete pod external-client --ignore-not-found</code></pre></td>
</tr>
</tbody>
</table>

### Example 1 → Default deny: Ingress + Egress

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># NetworkPolicy Examples
############################################################
#Example 1 → Default deny: Ingress + Egress
#Example 2 → Allow all Ingress, deny Egress
#Example 3 → Select specific Pods using podSelector
#Example 4 → Pod → Pod using podSelector
#Example 5 → Namespace → Namespace using namespaceSelector
#Example 6 → IP/CIDR filtering using ipBlock
############################################################
# Example 1 — Default Deny Ingress + Egress
############################################################
&#32;
# Create a NetworkPolicy that selects ALL Pods and denies both ingress and egress.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-1
spec:
  podSelector: {}
  policyTypes:
    - Ingress
    - Egress
EOF
admin@k8cp:~$ k get netpol
NAME        POD-SELECTOR   AGE
example-1   &lt;none&gt;         8s
admin@k8cp:~$
# Create a test Pod.
kubectl run test-pod --image=alpine/curl -- sleep 36000
# Verify the Pod.
kubectl get pods
NAME       READY   STATUS    RESTARTS   AGE
test-pod   1/1     Running   0          6s
admin@k8cp:~$
&#32;
kubectl exec -it test-pod -- sh
#Inside the Pod:
# Test external connectivity.
ping google.com
# Test HTTP connectivity.
curl https://google.com
# Verify the NetworkPolicy.
kubectl get netpol
kubectl describe netpol example-1
# Create a second Pod that will act as the ingress client. This way we can test 'ingress' connectivity also fails.
kubectl run client-pod --image=alpine/curl -- sleep 36000
# Get both Pod IPs so we know the destination.
kubectl get pods -o wide
admin@k8cp:~$ kubectl get pods -o wide
NAME         READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
client-pod   1/1     Running   0          29s   10.244.245.77   k8dp1   &lt;none&gt;           &lt;none&gt;
test-pod     1/1     Running   0          65m   10.244.245.76   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Test ingress into test-pod from client-pod.
kubectl exec client-pod -- ping -c 3 10.244.245.76
admin@k8cp:~$ # Test ingress into test-pod from client-pod.
kubectl exec client-pod -- ping -c 3 10.244.245.76
PING 10.244.245.76 (10.244.245.76): 56 data bytes
--- 10.244.245.76 ping statistics ---
3 packets transmitted, 0 packets received, 100% packet loss
command terminated with exit code 1
admin@k8cp:~$
# Remove Example 1 before moving to the next experiment.
kubectl delete networkpolicy example-1
&#32;
networkpolicy.networking.k8s.io "example-1" deleted
admin@k8cp:~$
# After removing, let us do ping test again to verify that connectivity is restored. Notice now it works.
admin@k8cp:~$ kubectl exec client-pod -- ping -c 3 10.244.245.76
PING 10.244.245.76 (10.244.245.76): 56 data bytes
64 bytes from 10.244.245.76: seq=0 ttl=63 time=0.437 ms
64 bytes from 10.244.245.76: seq=1 ttl=63 time=0.097 ms
64 bytes from 10.244.245.76: seq=2 ttl=63 time=0.102 ms
--- 10.244.245.76 ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max = 0.097/0.212/0.437 ms</code></pre></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Clean up</p></td>
</tr>
</tbody>
</table>

### Example 2 → Allow all Ingress, deny Egress

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 2 — Allow All Ingress, Deny Egress
############################################################</code></pre>
<p>→Note that inorder to test ‘ingress’ we need to actually do it from different namespace.</p>
<p>→This is because the policy under the namespace will disallow ‘egress’, so all pods will get that policy and while inside the pod we cannot reach anything out.</p>
<pre><code class="language-bash"># Select ALL Pods, allow all ingress, but leave egress denied.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-2
spec:
  podSelector: {}
  ingress:
    - {}
  policyTypes:
    - Ingress
    - Egress
EOF
# Verify the NetworkPolicy.
kubectl get netpol
admin@k8cp:~$ k get netpol
NAME        POD-SELECTOR   AGE
example-2   &lt;none&gt;         6s
admin@k8cp:~$
kubectl describe netpol example-2
admin@k8cp:~$ kubectl describe netpol example-2
Name:         example-2
Namespace:    default
Created on:   2026-08-13 17:57:02 +0000 UTC
Labels:       &lt;none&gt;
Annotations:  &lt;none&gt;
Spec:
  PodSelector:     &lt;none&gt; (Allowing the specific traffic to all pods in this namespace)
  Allowing ingress traffic:
    To Port: &lt;any&gt; (traffic allowed to all ports)
    From: &lt;any&gt; (traffic not restricted by source)
  Allowing egress traffic:
    &lt;none&gt; (Selected pods are isolated for egress connectivity)
  Policy Types: Ingress, Egress
admin@k8cp:~$
# Create another Pod in the default namespace.
kubectl run random-pod --image=alpine/curl -- sleep 36000
# Get Pod IPs.
kubectl get pods -o wide
admin@k8cp:~$ kubectl get pods -o wide
NAME         READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
random-pod   1/1     Running   0          21s   10.244.245.78   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Open a shell in random-pod to test access to test-pod.
kubectl exec -it random-pod -- sh
#Inside:
# Replace &lt;IP-OF-TEST-POD&gt; with the IP shown by kubectl get pods -o wide.
ping 10.244.245.78
    admin@k8cp:~$ kubectl exec -it random-pod -- sh
    / # ping 10.244.245.78
    PING 10.244.245.78 (10.244.245.78): 56 data bytes
    64 bytes from 10.244.245.78: seq=0 ttl=64 time=0.069 ms
    64 bytes from 10.244.245.78: seq=1 ttl=64 time=0.226 ms
    64 bytes from 10.244.245.78: seq=2 ttl=64 time=0.063 ms
    ^C
    --- 10.244.245.78 ping statistics ---
    3 packets transmitted, 3 packets received, 0% packet loss
    round-trip min/avg/max = 0.063/0.119/0.226 ms
    / # exit
    admin@k8cp:~$
    admin@k8cp:~$ kubectl exec -it random-pod -- sh
    / #
    / # ping www.google.com
    ping: bad address 'www.google.com'
    / #
    exit
kubectl run client-pod --image=alpine/curl -- sleep 36000
kubectl exec -it client-pod -- sh
admin@k8cp:~$ kubectl run client-pod --image=alpine/curl -- sleep 36000
pod/client-pod created
admin@k8cp:~$
#Exec into pod and test egress to random-pod. This should fail because the NetworkPolicy denies egress.
admin@k8cp:~$ kubectl exec -it client-pod -- sh
/ # ping 10.244.245.78
PING 10.244.245.78 (10.244.245.78): 56 data bytes
^C
--- 10.244.245.78 ping statistics ---
11 packets transmitted, 0 packets received, 100% packet loss
/ # exit
command terminated with exit code 1
admin@k8cp:~$
admin@k8cp:~$ pods
NAME         READY   STATUS    RESTARTS   AGE
client-pod   1/1     Running   0          7m1s
random-pod   1/1     Running   0          18m
admin@k8cp:~$
#Now to test the 'ingress', we will create a new namespace and a pod in that namespace to test cross-namespace access.
# Create a separate namespace for cross-namespace testing.
kubectl create namespace testing
# Create a Pod in the testing namespace.
kubectl run random-pod-in-ns-testing -n testing --image=alpine/curl -- sleep 36000
# Check the Pod and its IP.
kubectl get pods -n testing -o wide
# Test access from the testing namespace.
kubectl exec -it random-pod-in-ns-testing -n testing -- sh
#Inside:
# Replace &lt;IP-OF-TEST-POD&gt; with the default-namespace test-pod IP.
ping 10.244.245.78
    admin@k8cp:~$ kubectl exec -it random-pod-in-ns-testing -n testing -- sh
    / #
    / # ping 10.244.245.78
    PING 10.244.245.78 (10.244.245.78): 56 data bytes
    64 bytes from 10.244.245.78: seq=0 ttl=63 time=0.260 ms
    64 bytes from 10.244.245.78: seq=1 ttl=63 time=0.145 ms
    64 bytes from 10.244.245.78: seq=2 ttl=63 time=0.095 ms
    64 bytes from 10.244.245.78: seq=3 ttl=63 time=0.096 ms
    ^C
    --- 10.244.245.78 ping statistics ---
    4 packets transmitted, 4 packets received, 0% packet loss
    round-trip min/avg/max = 0.095/0.149/0.260 ms
    / #
# Remove Example 2 before continuing.
kubectl delete networkpolicy example-2
# Remove the temporary testing namespace.
kubectl delete namespace testing
k delete pods client-pod random-pod</code></pre></td>
</tr>
</tbody>
</table>

### Example 3 → Select specific Pods using podSelector

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 3 — Select Specific Pods
############################################################
# Unlike the previous namespace-wide policy, this policy isolates ONLY Pods labeled role=suspicious;
# other Pods in the namespace remain unaffected, while the selected Pod has both ingress and egress denied.
# Only Pods labeled role=suspicious will be isolated.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-3
spec:
  podSelector:
    matchLabels:
      role: suspicious
  policyTypes:
    - Ingress
    - Egress
EOF
# Create a Pod that will initially NOT be selected by the policy.
kubectl run suspicious-pod --image=alpine/curl -- sleep 36000
admin@k8cp:~$ kubectl run suspicious-pod --image=alpine/curl -- sleep 36000
pod/suspicious-pod created
admin@k8cp:~$ pods -o wide
NAME             READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
suspicious-pod   1/1     Running   0          5s    10.244.245.81   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
admin@k8cp:~$
# Add the label that causes the NetworkPolicy to select this Pod.
kubectl label pod suspicious-pod role=suspicious
# Verify the label.
kubectl get pod suspicious-pod --show-labels
# Enter the selected Pod and test egress.
kubectl exec -it suspicious-pod -- sh
#Inside:
# This should fail because the selected Pod has no egress allow rule.
ping google.com
#let us try to run a pod that is not selected by the policy and test connectivity to the internet. This should succeed because the pod is not affected by the NetworkPolicy.
#Here we don't have any labels on the pod, so it should not be selected by the policy and should have egress access to the internet.
kubectl run random-pod  --image=alpine/curl -- sleep 36000
kubectl exec -it random-pod -- sh
&#32;
    / # ping google.com
    PING google.com (216.58.205.78): 56 data bytes
    64 bytes from 216.58.205.78: seq=0 ttl=116 time=24.698 ms
    64 bytes from 216.58.205.78: seq=1 ttl=116 time=26.057 ms
    64 bytes from 216.58.205.78: seq=2 ttl=116 time=19.290 ms
    64 bytes from 216.58.205.78: seq=3 ttl=116 time=18.760 ms
    64 bytes from 216.58.205.78: seq=4 ttl=116 time=19.532 ms
    64 bytes from 216.58.205.78: seq=5 ttl=116 time=20.371 ms
    ^C
    --- google.com ping statistics ---
    6 packets transmitted, 6 packets received, 0% packet loss
    round-trip min/avg/max = 18.760/21.451/26.057 ms
    / #
# Remove Example 3.
kubectl delete networkpolicy example-3
# Remove the test Pod.
kubectl delete pod suspicious-pod random-pod</code></pre></td>
</tr>
</tbody>
</table>

### Example 4 → Pod → Pod using podSelector

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 4 — Pod-to-Pod Using podSelector
############################################################
# 1. Policy: protect Pods labeled role=database; only role=app can reach TCP/80.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-4
spec:
  podSelector:
    matchLabels:
      role: database
  ingress:
    - from:
        - podSelector:
            matchLabels:
              role: app
      ports:
        - protocol: TCP
          port: 80
  policyTypes:
    - Ingress
EOF
# 2. Create the client Pod; keep it alive for testing.
kubectl run app-pod --image=alpine/curl -- sleep 36000
# 3. Create nginx normally so TCP/80 is actually listening.
kubectl run database-pod --image=nginx --restart=Never
# 4. Label the database so example-4 actually selects it.
kubectl label pod database-pod role=database
# 5. Get the database IP.
kubectl get pods -o wide
NAME           READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
app-pod        1/1     Running   0          10s   10.244.245.87   k8dp1   &lt;none&gt;           &lt;none&gt;
database-pod   1/1     Running   0          10s   10.244.245.88   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Client is NOT role=app, so access to the protected database should fail.
kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88
    admin@k8cp:~$ kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88
    curl: (28) Connection timed out after 3003 milliseconds
    command terminated with exit code 28
    admin@k8cp:~$
# Label the client as an approved source.
kubectl label pod app-pod role=app
# Now role=app → role=database on TCP/80 should succeed.
kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88
    admin@k8cp:~$ kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88
    % Total    % Received % Xferd  Average Speed  Time    Time    Time   Current
                                    Dload  Upload  Total   Spent   Left   Speed
    100    896 100    896   0      0  58516      0                              0
    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Welcome to nginx!&lt;/title&gt;
&#32;
&#32;
# Remove Example 4.
kubectl delete networkpolicy example-4
# Remove the test Pods.
kubectl delete pod app-pod database-pod</code></pre></td>
</tr>
</tbody>
</table>

### Example 5 → Namespace → Namespace using namespaceSelector

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 5 — Namespace-to-Namespace Using namespaceSelector
############################################################
# Create the two namespaces used in this experiment.
kubectl create namespace production
kubectl create namespace security
# Verify the namespace labels used by the NetworkPolicy selector.
kubectl get namespaces --show-labels
# Allow only Pods from the security namespace to reach production Pods on TCP/80.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-5
  namespace: production
spec:
  podSelector: {}
  ingress:
    - from:
        - namespaceSelector:
            matchLabels:
              kubernetes.io/metadata.name: security
      ports:
        - protocol: TCP
          port: 80
  policyTypes:
    - Ingress
EOF
# Create the nginx destination Pod in production.
kubectl run prod-pod  -n production --image=nginx --restart=Never
# Create the client Pod in security.
kubectl run security-pod  -n security --image=alpine/curl --restart=Never  -- sleep 36000
# Get the production Pod IP.
kubectl get pod prod-pod -n production -o wide
NAME       READY   STATUS    RESTARTS   AGE     IP              NODE    NOMINATED NODE   READINESS GATES
prod-pod   1/1     Running   0          2m36s   10.244.245.90   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Test security → production; this should PASS because security is explicitly allowed.
kubectl exec security-pod -n security -- curl --connect-timeout 3 http://10.244.245.90
    admin@k8cp:~$ kubectl exec security-pod -n security -- curl --connect-timeout 3 http://10.244.245.90
    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Welcome to nginx!&lt;/title&gt;
#Then let's prove the namespace restriction with another namespace:
# Create an untrusted namespace and client for the negative test.
kubectl create namespace testing
kubectl run testing-pod  -n testing   --image=alpine/curl   --restart=Never   -- sleep 36000
# Test testing → production; this should FAIL because testing is not allowed.
kubectl exec testing-pod -n testing -- curl --connect-timeout 3 http://10.244.245.90
    admin@k8cp:~$ kubectl exec testing-pod -n testing -- curl --connect-timeout 3 http://10.244.245.90
    E0813 20:06:35.008243   54043 websocket.go:296] Unknown stream id 1, discarding message
    curl: (28) Connection timed out after 3002 milliseconds
    command terminated with exit code 28
    admin@k8cp:~$
#What we're proving:
security namespace ──→ production   ✅
testing namespace  ──→ production   ❌
# Remove Example 5 NetworkPolicy.
kubectl delete networkpolicy example-5 -n production
# Remove the test namespaces and all Pods inside them.
kubectl delete namespace production
kubectl delete namespace security
kubectl delete namespace testing</code></pre></td>
</tr>
</tbody>
</table>

### Example 6 → IP/CIDR filtering using ipBlock

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 6 — Egress to a Specific External IP/CIDR
############################################################
# Create the production namespace for the IP/CIDR test.
kubectl create namespace production
# Allow production Pods to send TCP/443 traffic ONLY to 93.184.216.34/32. ### this was in the poc steps. Ignored here.
# Allow production Pods to reach ONLY Cloudflare's public IP 1.1.1.1 on TCP/443.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: example-6
  namespace: production
spec:
  podSelector: {}
  egress:
    - to:
        - ipBlock:
            cidr: 1.1.1.1/32
      ports:
        - protocol: TCP
          port: 443
  policyTypes:
    - Egress
EOF
# Create a test Pod in production.
kubectl run prod-pod   -n production   --image=alpine/curl   --restart=Never   -- sleep 36000
# Verify the Pod is running and note its IP.
kubectl get pod prod-pod -n production -o wide
    admin@k8cp:~$ kubectl get pod prod-pod -n production -o wide
    NAME       READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
    prod-pod   1/1     Running   0          5s    10.244.245.93   k8dp1   &lt;none&gt;           &lt;none&gt;
    admin@k8cp:~$
# Test the explicitly allowed external IP; this should PASS.
# kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://93.184.216.34    #This was in PoC steps. Ignored here.
# This should PASS because 1.1.1.1/32 is explicitly allowed.
kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://1.1.1.1
    admin@k8cp:~$ kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://1.1.1.1
    HTTP/2 301
    date: Thu, 13 Aug 2026 20:14:33 GMT
    location: https://one.one.one.one/
    server: cloudflare
    cf-ray: a2aa63012e0de6de-LIS
    admin@k8cp:~$
&#32;
# This should FAIL because 8.8.8.8/32 is not allowed by the policy.
kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://8.8.8.8
    admin@k8cp:~$ kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://8.8.8.8
    command terminated with exit code 28
    admin@k8cp:~$
1.1.1.1:443 → ✅ allowed
8.8.8.8:443 → ❌ blocked
# Remove Example 6 and everything inside the production namespace.
kubectl delete namespace production --ignore-not-found
# Remove any leftover test Pods from the default namespace.
kubectl delete pods --all --ignore-not-found
# Remove any temporary namespaces that may still exist.
kubectl delete namespace testing --ignore-not-found
kubectl delete namespace security --ignore-not-found</code></pre></td>
</tr>
</tbody>
</table>

##  Step 23 - Network Policies - Except/Port/Protocol

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-yaml"># STEP 23 — Network Policies: except, Port and Protocol
############################################################
#Purpose: practice more specific NetworkPolicy matching using CIDR exclusions and port/protocol restrictions.
Example 1 — except
# Allow ingress from 172.17.0.0/16
# EXCEPT traffic originating from 172.17.1.0/24.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: except
spec:
  podSelector:
    matchLabels:
      role: database
  ingress:
    - from:
        - ipBlock:
            cidr: 172.17.0.0/16
            except:
              - 172.17.1.0/24
  policyTypes:
    - Ingress
# Apply the policy.
kubectl create -f except.yaml
Example 2 — Port and protocol
# Apply the policy to Pods labelled role=db.
# Allow egress to 10.0.0.0/24.
# Restrict that traffic to TCP ports 32000 through 32768.
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: multi-port-egress
  namespace: default
spec:
  podSelector:
    matchLabels:
      role: db
  policyTypes:
    - Egress
  egress:
    - to:
        - ipBlock:
            cidr: 10.0.0.0/24
      ports:
        - protocol: TCP
          port: 32000
          endPort: 32768
# Apply the policy.
kubectl create -f port-proto.yaml</code></pre></td>
</tr>
</tbody>
</table>

### Example 1

<table style="width:99%;">
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image731.webp" style="width:3.66181in;height:3.99236in" alt="{DEAEE761-C2FE-46B8-A912-5160EDA286AF}" /></p></td>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image732.webp" style="width:3.65278in;height:3.8375in" alt="{FCF7CC7E-3741-4022-B68A-E1E6EE37D9B3}" /></p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image733.webp" style="width:4.67708in;height:2.80208in" alt="{4CF23AA8-F51F-434D-B6A4-3BFA8F7B57ED}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>#Example 1 — ipBlock with except</p>
<pre><code class="language-bash">#Goal: Protect a database Pod and allow TCP/80 from the 10.244.0.0/16 Pod network except one /24. We'll put one client in the excluded /24 and another in the allowed /24.
#First, run this setup:
############################################################
# Example 1 — ipBlock with "except"
#
# Goal:
#   Allow database access from the Pod network 10.244.0.0/16
#   EXCEPT traffic coming from 10.244.245.0/24.
#
# In this test:
#   10.244.178.0/24 → should be ALLOWED
#   10.244.245.0/24 → should be BLOCKED
#
# Your cluster currently has:
#   k8cp  → Pods in 10.244.178.x
#   k8dp1 → Pods in 10.244.245.x
############################################################
&#32;
# Create the database Pod. Nginx listens on TCP/80, giving us a real service to test.
kubectl run database-pod  --image=nginx   --restart=Never
# Create the client on k8cp node. Notice the --overrides to force the Pod onto a specific node.
# Its Pod IP should come from the 10.244.178.x range.
kubectl run allowed-client   --image=alpine/curl   --restart=Never   --overrides='{"spec":{"nodeName":"k8cp"}}'   -- sleep 36000
# Create the client on k8dp1 node. Notice the --overrides to force the Pod onto a specific node.
# Its Pod IP should come from the 10.244.245.x range.
kubectl run excluded-client   --image=alpine/curl   --restart=Never   --overrides='{"spec":{"nodeName":"k8dp1"}}'   -- sleep 36000
admin@k8cp:~$ pods -o wide
NAME              READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES
allowed-client    1/1     Running   0          25s   10.244.178.107   k8cp    &lt;none&gt;           &lt;none&gt;
database-pod      1/1     Running   0          25s   10.244.245.95    k8dp1   &lt;none&gt;           &lt;none&gt;
excluded-client   1/1     Running   0          25s   10.244.245.96    k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
&#32;
############################################################
# Baseline test — no restriction yet.
# Before applying the policy, prove that both clients can reach the database:
############################################################
# Both clients should currently be able to reach nginx. Notice we are 'exec' into the allowed-client pod.
# Show only the HTTP status code from the allowed-client.
kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
# Notice we are 'exec' into the excluded-client pod.
# Show only the HTTP status code from the excluded-client.
kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
#Now apply the actual except policy:
############################################################
# Apply the ipBlock + except policy
############################################################
# Select the database Pod and allow TCP/80 from the entire
# Pod network EXCEPT the 10.244.245.0/24 subnet.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: database-except-example
spec:
  podSelector:
    matchLabels:
      role: database
  ingress:
    - from:
        - ipBlock:
            cidr: 10.244.0.0/16
            except:
              - 10.244.245.0/24
      ports:
        - protocol: TCP
          port: 80
  policyTypes:
    - Ingress
EOF
# Label the database so the NetworkPolicy selects it.
kubectl label pod database-pod role=database
# Verify the policy.
kubectl describe networkpolicy database-except-example</code></pre>
<p>Now the actual demonstration:</p>
<pre><code class="language-bash">############################################################
# Test the "except" behavior
############################################################
# 10.244.178.x is inside 10.244.0.0/16
# but NOT inside the excluded 10.244.245.0/24.
# Therefore this should PASS.
kubectl exec allowed-client -- curl --connect-timeout 3 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n' --connect-timeout 3 --max-time 5 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
# 10.244.245.x is inside the excluded /24.
# Therefore this should FAIL.
kubectl exec excluded-client -- curl --connect-timeout 3 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n' --connect-timeout 3 --max-time 5 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')
&#32;
&#32;
#The concept you're demonstrating is:
10.244.0.0/16
│
├── 10.244.178.0/24  → ✅ allowed
│
├── 10.244.245.0/24  → ❌ excluded
│
└── everything else  → ✅ allowed</code></pre></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Cleanup — Example 1
############################################################
# Remove the NetworkPolicy.
kubectl delete networkpolicy database-except-example --ignore-not-found
# Remove all Pods created for this example.
kubectl delete pod database-pod allowed-client excluded-client --ignore-not-found
# Verify the default namespace is clean.
kubectl get pods
kubectl get networkpolicy</code></pre></td>
</tr>
</tbody>
</table>

### Example 2

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Example 2 — Egress TCP Port Range
#
# Goal:
#   Allow the client Pod to send TCP traffic to ports
#   32000 through 32768 on the database Pod.
#
#   TCP/32000 → ✅ allowed
#   TCP/31000 → ❌ blocked
############################################################
#Example 2 — TCP Port Range
#Here I would not use nginx, because nginx normally listens on 80 and we want to demonstrate a range such as 32000–32768.
#We'll create a simple Python HTTP server listening on 32000, then allow the range 32000–32768.
# Create the server Pod.
# Python will provide a real TCP listener on port 32000.
kubectl run port-server --image=python:3.12-alpine  --restart=Never  --command -- python -m http.server 32000 --bind 0.0.0.0
# Create the client Pod.
kubectl run port-client --image=alpine/curl --restart=Never -- sleep 36000
# Get the server IP.
kubectl get pods -o wide
admin@k8cp:~$ pods -o wide
NAME          READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES
port-client   1/1     Running   0          14s   10.244.245.98   k8dp1   &lt;none&gt;           &lt;none&gt;
port-server   1/1     Running   0          14s   10.244.245.97   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:~$
# Verify that the server is actually listening on TCP/32000.
kubectl exec port-server -- sh -c 'cat /proc/net/tcp'
admin@k8cp:~$ kubectl exec port-server -- sh -c 'cat /proc/net/tcp'
  sl  local_address rem_address   st tx_queue rx_queue tr tm-&gt;when retrnsmt   uid  timeout inode
   0: 00000000:7D00 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 108259 1 0000000000000000 100 0 0 10 0
admin@k8cp:~$
#Now apply the policy:
############################################################
# Apply the TCP port-range Egress policy
############################################################
# Select port-client and allow it to send TCP traffic only
# to 32000–32768 on the port-server.
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: port-range-example
spec:
  podSelector:
    matchLabels:
      run: port-client
  policyTypes:
    - Egress
  egress:
    - to:
        - podSelector:
            matchLabels:
              run: port-server
      ports:
        - protocol: TCP
          port: 32000
          endPort: 32768
EOF
# Verify the policy.
kubectl describe networkpolicy port-range-example
#Now test inside vs outside the allowed range:
############################################################
# Test the allowed port
############################################################
# TCP/32000 is inside the 32000–32768 range.
# This should PASS.
kubectl exec port-client -- curl --connect-timeout 3 http://$(kubectl get pod port-server -o jsonpath='{.status.podIP}'):32000
#For the negative test, we need something actually listening outside the range. So let's add a second listener on 31000:
############################################################
# Create a second server listening outside the allowed range
############################################################
kubectl run outside-server --image=python:3.12-alpine  --restart=Never --command -- python -m http.server 31000 --bind 0.0.0.0
&#32;
# This should FAIL because TCP/31000 is outside 32000–32768.
kubectl exec port-client -- curl --connect-timeout 3 http://$(kubectl get pod outside-server -o jsonpath='{.status.podIP}'):31000
#What Example 2 proves
port-client
    │
    ├── TCP/32000  → ✅ allowed
    ├── TCP/32500  → ✅ allowed
    ├── TCP/32768  → ✅ allowed
    │
    └── TCP/31000  → ❌ blocked
#So you're demonstrating that NetworkPolicy can restrict traffic not just by Pod/namespace/IP, but also by a specific TCP port range.
&#32;
############################################################
# Cleanup — remove both examples and all test Pods
############################################################
kubectl delete networkpolicy database-except-example --ignore-not-found
kubectl delete networkpolicy port-range-example --ignore-not-found
kubectl delete pod database-pod allowed-client excluded-client port-server port-client outside-server --ignore-not-found</code></pre></td>
</tr>
</tbody>
</table>

## Static Pods - In CP under manifests 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># Static Pod — Simple kubeadm Demonstration
#
# IMPORTANT:
# Run these commands on the CONTROL-PLANE node.
#
# This works because kubeadm configures the kubelet to watch:
#     /etc/kubernetes/manifests
#
# Any Pod manifest placed there is automatically started by
# the kubelet WITHOUT going through the Kubernetes scheduler.
#
# Real production use:
# Static Pods are commonly used by self-managed Kubernetes
# control planes for components such as:
#   - kube-apiserver
#   - kube-controller-manager
#   - kube-scheduler
#   - etcd
#
# Managed Kubernetes services normally do not give customers
# filesystem access to their control-plane nodes.
############################################################
# 1. Run on the CONTROL-PLANE node.
#    Go to the kubeadm Static Pod manifest directory.
cd /etc/kubernetes/manifests
# 2. Create a Static Pod manifest.
#    sudo is required because this directory is owned by root.
sudo sh -c 'cat &lt;&lt;'\''EOF'\'' &gt; /etc/kubernetes/manifests/static-test-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: static-test-pod
spec:
  containers:
    - name: nginx
      image: nginx:latest
      ports:
        - containerPort: 80
EOF'
# 3. DO NOT run "kubectl apply".
#    The kubelet automatically detects the new YAML and starts
#    the Static Pod.
#
#    Verify that the Pod has appeared.
kubectl get pods -o wide
# 4. Confirm that Kubernetes identifies it as a Static Pod.
#    The Pod name will normally contain the node hostname, e.g.:
#
#    static-test-pod-k8cp
#
#    because the Pod is managed directly by the kubelet on k8cp.
kubectl get pods -o wide
# 5. Remove the Static Pod by deleting its manifest.
#    Again, do NOT use "kubectl delete pod".
sudo rm -f /etc/kubernetes/manifests/static-test-pod.yaml
# 6. The kubelet notices that the manifest disappeared and
#    automatically removes the Static Pod.
kubectl get pods -o wide</code></pre></td>
</tr>
</tbody>
</table>

##  Step 24 - Taints and tolerations

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image734.webp" style="width:6.52639in;height:4.35139in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="nohighlight language-bash"># Taint &amp; Toleration — Complete Demonstration
#
# Cluster:
#
#   k8cp  = Control Plane
#           Tainted with NoSchedule
#
#   k8dp1 = Worker
#           No control-plane taint
#
# Concept:
#
#   TAINT on NODE
#       ↓
#   "Ordinary Pods cannot schedule here"
#
#   TOLERATION on POD
#       ↓
#   "This Pod is allowed to schedule here"
#
# IMPORTANT:
# A toleration does NOT force a Pod onto the tainted node.
# Therefore, in the second test we also use nodeSelector to
# explicitly select k8cp.
############################################################
############################################################
# 1. Check the current nodes.
#
# Run this from your normal kubectl/admin shell.
############################################################
kubectl get nodes -o wide
############################################################
# 2. Check the taints on both nodes.
#
# k8cp should show:
#
#   node-role.kubernetes.io/control-plane:NoSchedule
#
# k8dp1 should normally have no taint.
############################################################
kubectl describe node k8cp | grep -i Taints
kubectl describe node k8dp1 | grep -i Taints
admin@k8cp:~$ kubectl describe node k8cp | grep -i Taints
Taints:             <mark>node-role.kubernetes.io/control-plane</mark>:NoSchedule
admin@k8cp:~$ kubectl describe node k8dp1 | grep -i Taints
Taints:             &lt;none&gt;
admin@k8cp:~$
############################################################
# 3. Check the labels on the control-plane node.
# Here we are using this for ref only and does not have any connection with tainting.
# We will use the standard control-plane label later with
# nodeSelector to deliberately place a tolerated Pod there.
############################################################
kubectl get node k8cp --show-labels
    admin@k8cp:/etc/kubernetes/manifests$ kubectl get node k8cp --show-labels
    NAME   STATUS   ROLES           AGE     VERSION   LABELS
    k8cp   Ready    control-plane   5d15h   v1.32.0   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=k8cp,kubernetes.io/os=linux,<mark>node-role.kubernetes.io/control-plane=</mark>,node.kubernetes.io/exclude-from-external-load-balancers=
    admin@k8cp:/etc/kubernetes/manifests$
    admin@k8cp:/etc/kubernetes/manifests$
############################################################
# 4. TEST 1 — Ordinary Pod
#
# This Pod has NO toleration.
#
# Because k8cp has a NoSchedule taint, the scheduler cannot
# place this Pod on k8cp.
#
# It should therefore be scheduled onto k8dp1.
############################################################
kubectl run normal-pod --image=nginx --restart=Never
############################################################
# 5. See where the Pod was scheduled.
#
# Expected:
#
#   normal-pod    ...    k8dp1
############################################################
kubectl get pod normal-pod -o wide
admin@k8cp:/etc/kubernetes/manifests$ pods -o wide
NAME         READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES
normal-pod   1/1     Running   0          5s    10.244.245.100   k8dp1   &lt;none&gt;           &lt;none&gt;
admin@k8cp:/etc/kubernetes/manifests$
############################################################
# 6. Confirm the Pod has no tolerations.
############################################################
# The purpose of the command was simply to show you what tolerations the Pod currently has and prove that the normal Pod does not tolerate the control-plane taint.
kubectl get pod normal-pod -o jsonpath='{.spec.tolerations}'; echo
admin@k8cp:/etc/kubernetes/manifests$ kubectl get pod normal-pod -o jsonpath='{.spec.tolerations}'; echo
[{"effect":"NoExecute","key":"node.kubernetes.io/not-ready","operator":"Exists","tolerationSeconds":300},{"effect":"NoExecute","key":"node.kubernetes.io/unreachable","operator":"Exists","tolerationSeconds":300}]
admin@k8cp:/etc/kubernetes/manifests$
############################################################
# 7. TEST 2 — Tolerated Pod
#
# This Pod has a toleration matching the control-plane taint:
#
#   key    = node-role.kubernetes.io/control-plane
#   effect = NoSchedule
#
# This means the Pod is ALLOWED to run on k8cp.
#
# The nodeSelector is used because toleration alone does NOT
# force the Pod onto k8cp.
############################################################
cat &lt;&lt;'EOF' | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: tolerated-pod
spec:
  nodeSelector:
    node-role.kubernetes.io/control-plane: ""
  tolerations:
    - key: <mark>node-role.kubernetes.io/control-plane</mark>
      operator: Exists
      effect: NoSchedule
  containers:
    - name: nginx
      image: nginx:latest
EOF
############################################################
# 8. Check where the tolerated Pod was scheduled.
#
# Expected:
#
#   tolerated-pod    ...    k8cp
#
# The toleration allows the Pod through the taint, while the
# nodeSelector tells the scheduler specifically to use k8cp.
############################################################
pods -o wide
admin@k8cp:/etc/kubernetes/manifests$ pods -o wide
NAME            READY   STATUS    RESTARTS   AGE     IP               NODE    NOMINATED NODE   READINESS GATES
normal-pod      1/1     Running   0          3m44s   10.244.245.100   k8dp1   &lt;none&gt;           &lt;none&gt;
tolerated-pod   1/1     Running   0          4s      10.244.178.109   k8cp    &lt;none&gt;           &lt;none&gt;
admin@k8cp:/etc/kubernetes/manifests$
############################################################
# 9. Compare both Pods side-by-side.
#
# normal-pod     → k8dp1
# tolerated-pod  → k8cp
############################################################
kubectl get pods -o wide
############################################################
# 10. Inspect the toleration on the second Pod.
############################################################
kubectl describe pod tolerated-pod | grep -A5 -i Tolerations
############################################################
# 11. Final verification — show the control-plane taint again.
#
# Notice that WE NEVER REMOVED THE TAINT.
#
# The taint is still protecting k8cp.
# The tolerated Pod simply has permission to pass it.
############################################################
kubectl describe node k8cp | grep -i Taints
############################################################
# 12. Cleanup the demonstration Pods.
############################################################
# Remove both Pods created for the taint/toleration demonstration.
kubectl delete pod normal-pod tolerated-pod --ignore-not-found</code></pre>
<p> </p></td>
</tr>
</tbody>
</table>

##  Admission Controllers. 

|     |
|-----|
|     |

##  Step 25 - CRD - PENDING - MATERIAL NOT FOUND

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 25 — Custom Resource Definition
############################################################
#Course material status: file not found.
# No course commands were provided for this section.
# Do not invent/replace the missing material here.</code></pre></td>
</tr>
</tbody>
</table>

##  Step 26 - Editing existing K8 Resources 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p># ============================================================</p>
<pre><code class="language-bash"># STEP 1 - Verify the cluster
# ============================================================
kubectl get nodes
# Expected:
# NAME    STATUS   ROLES           AGE     VERSION
# k8cp    Ready    control-plane   ...     v1.32.0
# k8dp1   Ready    &lt;none&gt;          ...     v1.32.0
# ============================================================
# STEP 2 - Create a test Pod
# ============================================================
# Create the Pod on k8dp1 so we can easily identify where it runs.
kubectl run test-pod  --image=nginx  --labels=app=test-pod   --overrides='{"spec":{"nodeSelector":{"kubernetes.io/hostname":"k8dp1"}}}'
# Verify the Pod and its initial label.
kubectl get pod test-pod -o wide --show-labels
# Expected to see something similar to:
# NAME       READY   STATUS    ...   NODE    ...   LABELS
# test-pod   1/1     Running   ...   k8dp1  ...   app=test-pod
# ============================================================
# STEP 3 - Inspect the existing Pod
# ============================================================
# View the complete Pod definition before making changes.
kubectl get pod test-pod -o yaml
# JSON representation can also be viewed if required:
kubectl get pod test-pod -o json
# ============================================================
# STEP 4 - kubectl edit (REFERENCE ONLY)
# ============================================================
# This is the interactive approach. It opens the Pod manifest
# in your configured editor and allows you to modify the YAML.
kubectl edit pod test-pod
# We will NOT use edit for this POC.
# The following steps use kubectl patch instead.
# ============================================================
# STEP 5 - Add a label using kubectl patch
# ============================================================
# Add a new label:
#   environment=dev
kubectl patch pod test-pod  -p '{"metadata":{"labels":{"environment":"dev"}}}'
# Verify the label was added.
kubectl get pod test-pod --show-labels
# Expected:
# app=test-pod
# environment=dev
# ============================================================
# STEP 6 - Modify an existing label
# ============================================================
# Change:
#   app=test-pod
#
# To:
#   app=dev-pod
kubectl patch pod test-pod   -p '{"metadata":{"labels":{"app":"dev-pod"}}}'
# Verify the change.
kubectl get pod test-pod --show-labels
# Expected:
# app=dev-pod
# environment=dev
# ============================================================
# STEP 7 - Remove a label
# ============================================================
# Remove the environment label by setting its value to null.
kubectl patch pod test-pod \
  -p '{"metadata":{"labels":{"environment":null}}}'
# Verify the label has been removed.
kubectl get pod test-pod --show-labels
# Expected:
# app=dev-pod
# ============================================================
# STEP 8 - Check the labels directly in YAML
# ============================================================
# Confirm the final label configuration under metadata.labels.
kubectl get pod test-pod -o yaml
# Look for:
#
# metadata:
#   labels:
#     app: dev-pod
# ============================================================
# STEP 9 - Check the current container image
# ============================================================
kubectl get pod test-pod  -o jsonpath='{.spec.containers[0].image}{"\n"}'
# Expected:
# nginx
# ============================================================
# STEP 10 - Modify the container image
# ============================================================
# Change the nginx image from:
#   nginx
#
# To:
#   nginx:1.27
kubectl patch pod test-pod   -p '{"spec":{"containers":[{"name":"test-pod","image":"nginx:1.27"}]}}'
# Verify the new image.
kubectl get pod test-pod   -o jsonpath='{.spec.containers[0].image}{"\n"}'
# Expected:
# nginx:1.27
# ============================================================
# STEP 11 - Verify the Pod after modifications
# ============================================================
kubectl get pod test-pod -o wide --show-labels
kubectl describe pod test-pod
kubectl get pod test-pod -o yaml
# ============================================================
# STEP 12 - Quick patch reference
# ============================================================
# Add a label:
kubectl patch pod test-pod   -p '{"metadata":{"labels":{"environment":"dev"}}}'
# Modify an existing label:
kubectl patch pod test-pod   -p '{"metadata":{"labels":{"app":"dev-pod"}}}'
# Remove a label:
kubectl patch pod test-pod   -p '{"metadata":{"labels":{"environment":null}}}'
# Modify the container image:
kubectl patch pod test-pod   -p '{"spec":{"containers":[{"name":"test-pod","image":"nginx:1.27"}]}}'
# Verify labels:
kubectl get pod test-pod --show-labels
# Verify image:
kubectl get pod test-pod   -o jsonpath='{.spec.containers[0].image}{"\n"}'
# Inspect complete resource:
kubectl get pod test-pod -o yaml
# ============================================================
# CLEANUP
# ============================================================
# Delete the test Pod created for this POC.
kubectl delete pod test-pod</code></pre>
<p> </p></td>
</tr>
</tbody>
</table>

##  Step 27 - Capacity / Allocatable

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 27 — Node Capacity, Allocatable &amp; Resource Requests
############################################################
# Purpose:
# Understand the difference between:
#
#   Capacity   -&gt; Total resources available on the node
#   Allocatable -&gt; Resources Kubernetes makes available for Pods
#   Requests   -&gt; Resources reserved/requested by Pods
#
# We will inspect the node first, then look at the Pods and
# their CPU/memory requests.
############################################################
# STEP 27.1 — Inspect Node Capacity and Allocatable
############################################################
# Replace &lt;node-name&gt; with your node, for example:
#   k8cp
#   k8dp1
kubectl describe node k8cp
kubectl describe node k8dp1
    admin@k8cp:~$ kubectl describe node k8cp
    Name:               k8cp
    Roles:              control-plane
    Labels:             beta.kubernetes.io/arch=amd64
                        beta.kubernetes.io/os=linux
                        kubernetes.io/arch=amd64
                        kubernetes.io/hostname=k8cp
                        kubernetes.io/os=linux
                        node-role.kubernetes.io/control-plane=
                        node.kubernetes.io/exclude-from-external-load-balancers=
    Annotations:        csi.volume.kubernetes.io/nodeid: {"csi.tigera.io":"k8cp"}
                        kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock
                        node.alpha.kubernetes.io/ttl: 0
                        projectcalico.org/IPv4Address: 192.168.1.16/24
                        projectcalico.org/IPv4VXLANTunnelAddr: 10.244.178.64
                        volumes.kubernetes.io/controller-managed-attach-detach: true
    CreationTimestamp:  Sat, 08 Aug 2026 20:17:23 +0000
    Taints:             node-role.kubernetes.io/control-plane:NoSchedule
    Unschedulable:      false
    Lease:
    HolderIdentity:  k8cp
    AcquireTime:     &lt;unset&gt;
    RenewTime:       Sun, 16 Aug 2026 19:34:11 +0000
    Conditions:
    Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
    ----                 ------  -----------------                 ------------------                ------                       -------
    NetworkUnavailable   False   Sun, 16 Aug 2026 19:29:45 +0000   Sun, 16 Aug 2026 19:29:45 +0000   CalicoIsUp                   Calico is running on this node
    MemoryPressure       False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available
    DiskPressure         False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure
    PIDPressure          False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available
    Ready                True    Sun, 16 Aug 2026 19:30:34 +0000   Wed, 12 Aug 2026 19:21:28 +0000   KubeletReady                 kubelet is posting ready status
    Addresses:
    InternalIP:  192.168.1.16
    Hostname:    k8cp
    Capacity:
    cpu:                2
    ephemeral-storage:  67960152Ki
    hugepages-2Mi:      0
    memory:             17805056Ki
    pods:               110
    Allocatable:
    cpu:                2
    ephemeral-storage:  62632075980
    hugepages-2Mi:      0
    memory:             17702656Ki
    pods:               110
    System Info:
    Machine ID:                 a4b78e76ff96438a896bf4bd1b23756f
    System UUID:                ccb11fda-380b-994e-ae59-6e1e2cf5fbb3
    Boot ID:                    06458632-cc96-4dec-b49f-2bfe27c90c01
    Kernel Version:             6.17.0-35-generic
    OS Image:                   Ubuntu 24.04.2 LTS
    Operating System:           linux
    Architecture:               amd64
    Container Runtime Version:  containerd://2.2.1
    Kubelet Version:            v1.32.0
    Kube-Proxy Version:         v1.32.0
    PodCIDR:                      10.244.0.0/24
    PodCIDRs:                     10.244.0.0/24
    Non-terminated Pods:          (14 in total)
    Namespace                   Name                                        CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age
    ---------                   ----                                        ------------  ----------  ---------------  -------------  ---
    calico-apiserver            calico-apiserver-66485d5db4-2slzb           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    calico-apiserver            calico-apiserver-66485d5db4-gjbkm           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    calico-system               calico-kube-controllers-697dcb9bb7-8dwkb    0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    calico-system               calico-node-c4n77                           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    calico-system               calico-typha-77f8575c68-l7dv6               0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    calico-system               csi-node-driver-d9qzs                       0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    kube-system                 coredns-668d6bf9bc-k4jr2                    100m (5%)     0 (0%)      70Mi (0%)        170Mi (0%)     7d23h
    kube-system                 coredns-668d6bf9bc-pbn5j                    100m (5%)     0 (0%)      70Mi (0%)        170Mi (0%)     7d23h
    kube-system                 etcd-k8cp                                   100m (5%)     0 (0%)      100Mi (0%)       0 (0%)         7d23h
    kube-system                 kube-apiserver-k8cp                         250m (12%)    0 (0%)      0 (0%)           0 (0%)         7d23h
    kube-system                 kube-controller-manager-k8cp                200m (10%)    0 (0%)      0 (0%)           0 (0%)         7d23h
    kube-system                 kube-proxy-lfthl                            0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    kube-system                 kube-scheduler-k8cp                         100m (5%)     0 (0%)      0 (0%)           0 (0%)         7d23h
    tigera-operator             tigera-operator-7d68577dc5-hpkqk            0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h
    Allocated resources:
    (Total limits may be over 100 percent, i.e., overcommitted.)
    Resource           Requests    Limits
    --------           --------    ------
    cpu                850m (42%)  0 (0%)
    memory             240Mi (1%)  340Mi (1%)
    ephemeral-storage  0 (0%)      0 (0%)
    hugepages-2Mi      0 (0%)      0 (0%)
    Events:
    Type     Reason                   Age                    From             Message
    ----     ------                   ----                   ----             -------
    Normal   Starting                 4m51s                  kube-proxy
    Normal   Starting                 42h                    kube-proxy
    Normal   RegisteredNode           2d5h                   node-controller  Node k8cp event: Registered Node k8cp in Controller
    Normal   RegisteredNode           2d5h                   node-controller  Node k8cp event: Registered Node k8cp in Controller
    Normal   Starting                 42h                    kubelet          Starting kubelet.
    Warning  InvalidDiskCapacity      42h                    kubelet          invalid capacity 0 on image filesystem
    Normal   NodeAllocatableEnforced  42h                    kubelet          Updated Node Allocatable limit across pods
    Normal   NodeHasSufficientMemory  42h (x8 over 42h)      kubelet          Node k8cp status is now: NodeHasSufficientMemory
    Normal   NodeHasNoDiskPressure    42h (x8 over 42h)      kubelet          Node k8cp status is now: NodeHasNoDiskPressure
    Normal   NodeHasSufficientPID     42h (x7 over 42h)      kubelet          Node k8cp status is now: NodeHasSufficientPID
    Warning  Rebooted                 42h                    kubelet          Node k8cp has been rebooted, boot id: 90eb3153-935e-4341-9fd1-95e3a41f8b5c
    Normal   RegisteredNode           42h                    node-controller  Node k8cp event: Registered Node k8cp in Controller
    Normal   Starting                 5m37s                  kubelet          Starting kubelet.
    Warning  InvalidDiskCapacity      5m37s                  kubelet          invalid capacity 0 on image filesystem
    Normal   NodeHasSufficientMemory  5m36s (x8 over 5m37s)  kubelet          Node k8cp status is now: NodeHasSufficientMemory
    Normal   NodeHasNoDiskPressure    5m36s (x8 over 5m37s)  kubelet          Node k8cp status is now: NodeHasNoDiskPressure
    Normal   NodeHasSufficientPID     5m36s (x7 over 5m37s)  kubelet          Node k8cp status is now: NodeHasSufficientPID
    Normal   NodeAllocatableEnforced  5m36s                  kubelet          Updated Node Allocatable limit across pods
    Warning  Rebooted                 5m5s                   kubelet          Node k8cp has been rebooted, boot id: 06458632-cc96-4dec-b49f-2bfe27c90c01
    Normal   RegisteredNode           4m49s                  node-controller  Node k8cp event: Registered Node k8cp in Controller
    admin@k8cp:~$
    admin@k8cp:~$ kubectl describe node k8dp1
    Name:               k8dp1
    Roles:              &lt;none&gt;
    Labels:             beta.kubernetes.io/arch=amd64
                        beta.kubernetes.io/os=linux
                        kubernetes.io/arch=amd64
                        kubernetes.io/hostname=k8dp1
                        kubernetes.io/os=linux
    Annotations:        csi.volume.kubernetes.io/nodeid: {"csi.tigera.io":"k8dp1"}
                        kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock
                        node.alpha.kubernetes.io/ttl: 0
                        projectcalico.org/IPv4Address: 192.168.1.17/24
                        projectcalico.org/IPv4VXLANTunnelAddr: 10.244.245.64
                        volumes.kubernetes.io/controller-managed-attach-detach: true
    CreationTimestamp:  Sun, 09 Aug 2026 07:25:18 +0000
    Taints:             &lt;none&gt;
    Unschedulable:      false
    Lease:
    HolderIdentity:  k8dp1
    AcquireTime:     &lt;unset&gt;
    RenewTime:       Sun, 16 Aug 2026 19:35:22 +0000
    Conditions:
    Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message
    ----                 ------  -----------------                 ------------------                ------                       -------
    NetworkUnavailable   False   Sun, 16 Aug 2026 19:29:40 +0000   Sun, 16 Aug 2026 19:29:40 +0000   CalicoIsUp                   Calico is running on this node
    MemoryPressure       False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available
    DiskPressure         False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure
    PIDPressure          False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available
    Ready                True    Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletReady                 kubelet is posting ready status
    Addresses:
    InternalIP:  192.168.1.17
    Hostname:    k8dp1
    Capacity:
    cpu:                2
    ephemeral-storage:  67960152Ki
    hugepages-2Mi:      0
    memory:             17805032Ki
    pods:               110
    Allocatable:
    cpu:                2
    ephemeral-storage:  62632075980
    hugepages-2Mi:      0
    memory:             17702632Ki
    pods:               110
    System Info:
    Machine ID:                 11db4b66c0d743c59c80f612fd457cf9
    System UUID:                768ec7cb-54fa-d44e-8fff-63139906de9b
    Boot ID:                    873059b5-2543-4e12-bf09-c50e9a54454c
    Kernel Version:             6.17.0-35-generic
    OS Image:                   Ubuntu 24.04.2 LTS
    Operating System:           linux
    Architecture:               amd64
    Container Runtime Version:  containerd://2.2.1
    Kubelet Version:            v1.32.0
    Kube-Proxy Version:         v1.32.0
    PodCIDR:                      10.244.1.0/24
    PodCIDRs:                     10.244.1.0/24
    Non-terminated Pods:          (3 in total)
    Namespace                   Name                     CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age
    ---------                   ----                     ------------  ----------  ---------------  -------------  ---
    calico-system               calico-node-pr74q        0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h
    calico-system               csi-node-driver-js8zv    0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h
    kube-system                 kube-proxy-x62pg         0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h
    Allocated resources:
    (Total limits may be over 100 percent, i.e., overcommitted.)
    Resource           Requests  Limits
    --------           --------  ------
    cpu                0 (0%)    0 (0%)
    memory             0 (0%)    0 (0%)
    ephemeral-storage  0 (0%)    0 (0%)
    hugepages-2Mi      0 (0%)    0 (0%)
    Events:
    Type     Reason                   Age                    From             Message
    ----     ------                   ----                   ----             -------
    Normal   Starting                 6m3s                   kube-proxy
    Normal   Starting                 42h                    kube-proxy
    Normal   RegisteredNode           2d5h                   node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller
    Normal   RegisteredNode           2d5h                   node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller
    Normal   Starting                 42h                    kubelet          Starting kubelet.
    Warning  InvalidDiskCapacity      42h                    kubelet          invalid capacity 0 on image filesystem
    Normal   NodeAllocatableEnforced  42h                    kubelet          Updated Node Allocatable limit across pods
    Normal   NodeHasSufficientPID     42h (x7 over 42h)      kubelet          Node k8dp1 status is now: NodeHasSufficientPID
    Normal   NodeHasSufficientMemory  42h (x8 over 42h)      kubelet          Node k8dp1 status is now: NodeHasSufficientMemory
    Normal   NodeHasNoDiskPressure    42h (x8 over 42h)      kubelet          Node k8dp1 status is now: NodeHasNoDiskPressure
    Warning  Rebooted                 42h                    kubelet          Node k8dp1 has been rebooted, boot id: 5b22c7a4-5823-44fe-b4a5-ee44f53c9001
    Normal   RegisteredNode           42h                    node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller
    Normal   Starting                 6m56s                  kubelet          Starting kubelet.
    Warning  InvalidDiskCapacity      6m56s                  kubelet          invalid capacity 0 on image filesystem
    Normal   NodeAllocatableEnforced  6m55s                  kubelet          Updated Node Allocatable limit across pods
    Normal   NodeHasSufficientPID     6m49s (x7 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasSufficientPID
    Normal   NodeHasSufficientMemory  6m42s (x8 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasSufficientMemory
    Normal   NodeHasNoDiskPressure    6m42s (x8 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasNoDiskPressure
    Warning  Rebooted                 6m18s                  kubelet          Node k8dp1 has been rebooted, boot id: 873059b5-2543-4e12-bf09-c50e9a54454c
    Normal   RegisteredNode           6m                     node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller
    admin@k8cp:~$
# Capacity = total resources detected on the node.
#
# Allocatable = resources Kubernetes considers available for
# scheduling Pods after reserving resources for the system and
# Kubernetes components.
############################################################
# STEP 27.2 — Check Resource Usage on the Node
############################################################
# If Metrics Server is available in your cluster, this shows
# the CURRENT actual CPU and memory usage.
kubectl top node k8cp
# Example:
#
# NAME    CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%
# k8dp1   250m         12%    800Mi           20%
#
# IMPORTANT:
# 'kubectl top' shows actual/current usage.
#
# 'Requests' and 'Allocatable' are scheduling concepts and
# are different from actual CPU/memory consumption.
############################################################
# STEP 27.3 — List Pods Running in the Cluster
############################################################
# List Pods across all namespaces.
kubectl get pods -A -o wide
# -A / --all-namespaces = include Pods from every namespace
# -o wide               = also show node placement and other details
############################################################
# STEP 27.4 — Display Pod CPU and Memory Requests
############################################################
# Display the CPU and memory requests for each Pod.
#
# This example looks at the first container in each Pod.
kubectl get pods -A \
  -o custom-columns="NAMESPACE:.metadata.namespace,POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"
# Example output:
#
# NAMESPACE   POD             CPU_REQUEST   MEMORY_REQUEST
# default     nginx           100m          128Mi
# kube-system coredns         100m          70Mi
#
# A blank value means that the first container does not have
# an explicit request configured.
############################################################
# STEP 27.5 — Inspect Requests for Pods on ONE Node
############################################################
# The previous command shows Pods across the whole cluster.
# To understand one node specifically, first identify the Pods
# scheduled there.
kubectl get pods -A -o wide --field-selector spec.nodeName=&lt;node-name&gt;
# Example:
#
# kubectl get pods -A -o wide --field-selector spec.nodeName=k8dp1
############################################################
# STEP 27.6 — Understand Requests vs Actual Usage
############################################################
# Requests are what the Kubernetes scheduler uses when deciding
# whether a Pod can fit on a node.
#
# Example:
#
# Node Allocatable CPU = 4 CPU
#
# Pod A requests = 500m
# Pod B requests = 1 CPU
# Pod C requests = 500m
#
# Total requested = 2 CPU
#
# Kubernetes considers approximately 2 CPU of the node's
# allocatable CPU already committed to those Pods, regardless
# of whether the containers are currently using all of it.
#
# Actual CPU consumption can be checked with:
#
# kubectl top node &lt;node-name&gt;
# kubectl top pod -A
############################################################
# STEP 27.7 — Inspect the Node's Allocated Resources
############################################################
# At the bottom of 'kubectl describe node', Kubernetes provides
# an "Allocated resources" section.
#
# Run:
kubectl describe node &lt;node-name&gt;
# Look for:
#
# Allocated resources:
#   (Total limits may be over 100 percent, i.e., overcommitted.)
#   Resource           Requests      Limits
#   --------           --------      ------
#   cpu                ...           ...
#   memory             ...           ...
#
# This section summarizes the CPU and memory requested/limited
# by Pods scheduled on the node.
############################################################
# STEP 27.8 — Useful Comparison
############################################################
# Think of the relationship as:
#
# Capacity
#    |
#    +---- System/Kubernetes reservations
#    |
#    v
# Allocatable
#    |
#    +---- Pod resource requests
#    |
#    v
# Available scheduling capacity
#
#
# IMPORTANT:
#
# Capacity != Allocatable
# Allocatable != Actual Usage
# Requests != Actual Usage
#
# Capacity:
#   What the node physically provides.
#
# Allocatable:
#   What Kubernetes makes available for scheduling Pods.
#
# Requests:
#   What Pods ask Kubernetes to reserve for scheduling purposes.
#
# Actual Usage:
#   What the workloads are actually consuming at runtime.
############################################################
# STEP 27.9 — Final Quick Checks
############################################################
# Node capacity + allocatable + allocated resources:
kubectl describe node &lt;node-name&gt;
# Actual node CPU/memory usage:
kubectl top node &lt;node-name&gt;
# Pods running on the node:
kubectl get pods -A -o wide \
  --field-selector spec.nodeName=&lt;node-name&gt;
# Actual Pod CPU/memory usage:
kubectl top pod -A
# Pod CPU/memory requests:
kubectl get pods -A \
  -o custom-columns="NAMESPACE:.metadata.namespace,POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"</code></pre></td>
</tr>
</tbody>
</table>

##  Step 28 - Requests and Limits

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 28 — Exercise: Requests and Limits
############################################################
# Purpose:
# Practice how CPU/memory REQUESTS affect scheduling and how
# CPU/memory LIMITS define the maximum resources a container
# is allowed to consume.
#
# Key concepts:
#
#   Requests -&gt; used by the scheduler when placing a Pod.
#   Limits   -&gt; maximum resource consumption for the container.
#
# IMPORTANT:
# A Pod can only be scheduled if its REQUESTS can fit within
# the node's available ALLOCATABLE resources.
#
# For this exercise, we will:
#   1. Inspect the node
#   2. Create a Pod that should fit
#   3. Create a Pod with larger requests
#   4. Create a very small Pod
#   5. Inspect the results
#   6. Use an Alpine curl Pod for additional testing
#   7. Clean everything up
############################################################
# STEP 28.1 — Inspect the Node Before the Exercise
############################################################
# First identify your nodes.
kubectl get nodes
# Inspect the node you want to use for the exercise.
# Replace &lt;node-name&gt; with your worker, for example k8dp1.
kubectl describe node &lt;node-name&gt;
# Pay particular attention to:
#
# Capacity:
#   cpu:
#   memory:
#
# Allocatable:
#   cpu:
#   memory:
#
# Allocated resources:
#   cpu
#   memory
#
# The scheduler evaluates Pod REQUESTS against the node's
# available allocatable resources.
############################################################
# STEP 28.2 — Create Pod 1: FIT POD
############################################################
# Create a Pod with relatively small resource requests.
#
# Requests:
#   CPU    = 198m
#   Memory = 854Mi
#
# Limits:
#   CPU    = 198m
#   Memory = 854Mi
#
# Because requests and limits are identical here, the container
# cannot request more than the amount it requested.
cat &gt; pod-1.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: fit-pod
spec:
  containers:
    - name: successful-container
      image: nginx
      resources:
        requests:
          memory: "854Mi"
          cpu: "198m"
        limits:
          memory: "854Mi"
          cpu: "198m"
EOF
# Create the Pod.
kubectl create -f pod-1.yaml
# Check whether it was scheduled successfully.
kubectl get pod fit-pod -o wide
# Expected:
#
# NAME      READY   STATUS    ...
# fit-pod   1/1     Running   ...
#
# If it remains Pending, inspect why:
kubectl describe pod fit-pod
# Look at the Events section at the bottom.
#
# The exact result depends on the resources currently available
# on your node.
############################################################
# STEP 28.3 — Inspect Pod 1 Resource Configuration
############################################################
# Confirm the requests and limits configured on the Pod.
kubectl get pod fit-pod \
  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory,CPU_LIMIT:.spec.containers[0].resources.limits.cpu,MEMORY_LIMIT:.spec.containers[0].resources.limits.memory"
# Expected:
#
# POD       CPU_REQUEST   MEMORY_REQUEST   CPU_LIMIT   MEMORY_LIMIT
# fit-pod   198m          854Mi            198m        854Mi
############################################################
# STEP 28.4 — Remove Pod 1 Before Continuing
############################################################
# Remove the Pod so that its requested resources are no longer
# part of the node's current allocation.
kubectl delete -f pod-1.yaml
############################################################
# STEP 28.5 — Create Pod 2: LARGER REQUEST
############################################################
# This Pod requests:
#
#   CPU    = 200m
#   Memory = 500Mi
#
# Limits:
#
#   CPU    = 200m
#   Memory = 854Mi
#
# The important point is that scheduling is based on REQUESTS,
# not LIMITS.
#
# Therefore the scheduler evaluates:
#
#   CPU request    = 200m
#   Memory request = 500Mi
#
# against the node's available allocatable resources.
cat &gt; pod-2.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: unfit-pod
spec:
  containers:
    - name: successful-container
      image: nginx
      resources:
        requests:
          memory: "500Mi"
          cpu: "200m"
        limits:
          memory: "854Mi"
          cpu: "200m"
EOF
# Create the Pod.
kubectl create -f pod-2.yaml
# Check its status.
kubectl get pod unfit-pod -o wide
# IMPORTANT:
# Do not assume this Pod will be Pending just because it is
# called "unfit-pod".
#
# Whether it fits depends on the CURRENT available resources
# and requests of the node at the time you run the exercise.
############################################################
# STEP 28.6 — If Pod 2 Is Pending, Investigate
############################################################
# Describe the Pod and inspect the Events section.
kubectl describe pod unfit-pod
# A typical scheduling failure may contain something similar to:
#
#   Insufficient cpu
#
# or:
#
#   Insufficient memory
#
# This is the important part of the exercise:
#
# The scheduler rejected the Pod because its REQUESTS could not
# be satisfied by a suitable node.
############################################################
# STEP 28.7 — Compare Pod Requests with Node Allocation
############################################################
kubectl describe node &lt;node-name&gt;
# Look at:
#
#   Allocatable:
#
# and:
#
#   Allocated resources:
#
# Remember:
#
# Allocatable = resources available for Kubernetes workloads.
#
# Requests = resources already requested by scheduled Pods.
#
# The scheduler uses these values when deciding placement.
############################################################
# STEP 28.8 — Remove Pod 2
############################################################
kubectl delete -f pod-2.yaml
############################################################
# STEP 28.9 — Create Pod 3: VERY SMALL REQUESTS
############################################################
# This Pod requests almost no resources:
#
#   CPU    = 1m
#   Memory = 1Mi
#
# This demonstrates how a Pod with very small requests can
# consume very little of the node's scheduling capacity.
cat &gt; pod-3.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: tmp-pod
spec:
  containers:
    - name: successful-container
      image: nginx
      resources:
        requests:
          memory: "1Mi"
          cpu: "1m"
EOF
# Create the Pod.
kubectl create -f pod-3.yaml
# Check its status and node placement.
kubectl get pod tmp-pod -o wide
# Inspect the configured request.
kubectl get pod tmp-pod \
  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"
# Expected:
#
# POD      CPU_REQUEST   MEMORY_REQUEST
# tmp-pod  1m            1Mi
############################################################
# STEP 28.10 — Observe the Node Again
############################################################
kubectl describe node &lt;node-name&gt;
# Compare the Allocated resources before and after creating
# tmp-pod.
#
# You should see the Pod's small request reflected in the
# node's allocated CPU/memory requests.
############################################################
# STEP 28.11 — Remove Pod 3
############################################################
kubectl delete -f pod-3.yaml
############################################################
# STEP 28.12 — Create an Alpine curl Pod
############################################################
# Create a long-running temporary Pod that can be used for
# connectivity/testing exercises.
kubectl run curl-pod \
  --image=alpine/curl \
  --command -- \
  sleep 36000
# Verify:
kubectl get pod curl-pod -o wide
# Once Running, you can enter the Pod:
kubectl exec -it curl-pod -- sh
# Inside the container you can test connectivity, for example:
#
# curl http://&lt;service-name&gt;:&lt;port&gt;
#
# Exit the container with:
exit
############################################################
# STEP 28.13 — Requests vs Limits — Important Observation
############################################################
# Example:
#
# resources:
#   requests:
#     cpu: "200m"
#     memory: "500Mi"
#   limits:
#     cpu: "500m"
#     memory: "1Gi"
#
#
# REQUESTS:
#   The scheduler uses 200m CPU and 500Mi memory when deciding
#   whether the Pod can fit on a node.
#
# LIMITS:
#   The container can use up to 500m CPU and 1Gi memory,
#   subject to Kubernetes resource enforcement.
#
# Therefore:
#
#   requests != limits
#
# A Pod can request a small amount but have a higher limit.
############################################################
# STEP 28.14 — Useful Verification Commands
############################################################
# Check all Pods and where they are running:
kubectl get pods -A -o wide
# Check node capacity and allocatable resources:
kubectl describe node &lt;node-name&gt;
# Check actual node resource usage, if Metrics Server exists:
kubectl top node &lt;node-name&gt;
# Check actual Pod resource usage:
kubectl top pod -A
# Check a Pod's requests and limits:
kubectl get pod &lt;pod-name&gt; \
  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory,CPU_LIMIT:.spec.containers[0].resources.limits.cpu,MEMORY_LIMIT:.spec.containers[0].resources.limits.memory"
############################################################
# STEP 28.15 — Key Takeaways
############################################################
# 1. Requests are primarily used by the scheduler.
#
# 2. Limits define the maximum resource consumption allowed
#    for a container.
#
# 3. A Pod can be Pending because its REQUESTS cannot fit on
#    any suitable node.
#
# 4. The scheduler does NOT use current CPU/memory usage as the
#    primary basis for fitting a Pod.
#
# 5. Actual usage can be different from the configured request.
#
# 6. A container can have:
#
#      requests &lt; limits
#
#    which is a very common configuration.
#
# 7. If requests and limits are equal, the container has the
#    same requested and maximum resource value.
############################################################
# CLEANUP
############################################################
# Remove the test Pods if they still exist.
kubectl delete pod fit-pod --ignore-not-found
kubectl delete pod unfit-pod --ignore-not-found
kubectl delete pod tmp-pod --ignore-not-found
kubectl delete pod curl-pod --ignore-not-found
# Remove the temporary YAML files created during the exercise.
rm -f pod-1.yaml pod-2.yaml pod-3.yaml
# Final verification:
kubectl get pods -A -o wide</code></pre></td>
</tr>
</tbody>
</table>

##  Step 29 - JSON Path

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 29 — JSONPath
############################################################
#Purpose: learn how to extract specific fields from Kubernetes JSON output using JSONPath.**
# Create two test Pods.
kubectl run pod-1 --image=nginx
kubectl run pod-2 --image=httpd
# Get the complete JSON representation.
kubectl get pods -o json
# Save it to a file for inspection.
kubectl get pods -o json &gt; outputs.json
JSONPath expressions
# Root object
$
# Kind
$.kind
# Metadata
$.metadata
# List of objects
$.items
# First item
$.items[0]
# All items
$.items[*]
# Metadata of all items
$.items[*].metadata
# Names of all Pods
$.items[*].metadata.name
# Containers
$.items[*].spec.containers
# Images of all containers
$.items[*].spec.containers[*].image
# Pod IPs
$.items[*].status.podIP
Using JSONPath with kubectl
# Extract Pod names.
kubectl get pods -o jsonpath="{$.items[*].metadata.name}"
# Extract Pod IPs.
kubectl get pods -o jsonpath="{$.items[*].status.podIP}"
Using range / end
# Print each Pod IP on its own line.
kubectl get pods -o jsonpath='{range .items[*]}{.status.podIP}{"\n"}{end}'
# Print Pod name and IP together.
kubectl get pods -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.podIP}{"\n"}{end}'</code></pre></td>
</tr>
</tbody>
</table>

##  TLS

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>$env:KUBECONFIG="C:\Users\Sridhara\.kube\localkubeconfig"</p>
<pre><code class="language-bash">export KUBECONFIG="/c/Users/Sridhara/.kube/localkubeconfig"
############################################################
# STEP 31 — Ingress Controller with TLS
############################################################
# Purpose: This POC demonstrates how an Ingress Controller routes
# external HTTP/HTTPS traffic to a Kubernetes Service and how TLS
# is configured using a Kubernetes TLS Secret.
#
# Domain: nerdylabs.internal
#
# Request flow:
# Client -&gt; Ingress Controller -&gt; Ingress -&gt; Service -&gt; Pod
############################################################
# STEP 31.1 — Create a Dedicated Namespace
############################################################
# Keep all resources for this POC isolated from other workloads
# in the local cluster.
kubectl create namespace ingress-poc
kubectl get namespace ingress-poc
############################################################
# STEP 31.2 — Create the Application Pod
############################################################
# Create the nginx Pod that will act as the backend application.
# The Pod itself does not need to know anything about Ingress or TLS.
kubectl run nerdylabs-app   --image=nginx   --namespace=ingress-poc
kubectl get pod -n ingress-poc -o wide
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $ kubectl get pod -n ingress-poc -o wide
    NAME            READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES
    nerdylabs-app   1/1     Running   0          13s   10.244.245.114   k8dp1   &lt;none&gt;           &lt;none&gt;
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
############################################################
# STEP 31.3 — Create the Application Service
############################################################
# Create a ClusterIP Service to provide a stable internal endpoint
# for the application Pod. The Service listens on port 80 and
# forwards traffic to port 80 on nerdylabs-app.
kubectl expose pod nerdylabs-app   --name=nerdylabs-service   --port=80   --target-port=80   --namespace=ingress-poc
kubectl get service -n ingress-poc
kubectl describe service nerdylabs-service   -n ingress-poc
&#32;
    PS C:\ws&gt; kubectl expose pod nerdylabs-app   --name=nerdylabs-service   --port=80   --target-port=80   --namespace=ingress-poc
    service/nerdylabs-service exposed
    PS C:\ws&gt;
&#32;
    PS C:\ws&gt; kubectl get service -n ingress-poc
    NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
    nerdylabs-service   ClusterIP   10.97.82.162   &lt;none&gt;        80/TCP    0s
    PS C:\ws&gt;
    PS C:\ws&gt; kubectl describe service nerdylabs-service   -n ingress-poc
    Name:                     nerdylabs-service
    Namespace:                ingress-poc
    Labels:                   run=nerdylabs-app
    Annotations:              &lt;none&gt;
    Selector:                 run=nerdylabs-app
    Type:                     ClusterIP
    IP Family Policy:         SingleStack
    IP Families:              IPv4
    IP:                       10.97.82.162
    IPs:                      10.97.82.162
    Port:                     &lt;unset&gt;  80/TCP
    TargetPort:               80/TCP
    Endpoints:                10.244.245.106:80
    Session Affinity:         None
    Internal Traffic Policy:  Cluster
    Events:                   &lt;none&gt;
    PS C:\ws&gt;
# Verify that the Service has a backend endpoint.
kubectl get endpoints nerdylabs-service   -n ingress-poc
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $ kubectl get endpoints nerdylabs-service   -n ingress-poc
    NAME                ENDPOINTS           AGE
    nerdylabs-service   10.244.245.114:80   7h23m
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
############################################################
# STEP 31.4 — Test the Service Before Ingress using a THROW AWAY POD
############################################################
&#32;
kubectl run curl-test --image=curlimages/curl --restart=Never --namespace=ingress-poc --rm -it --command -- curl -s http://nerdylabs-service
# You should receive the nginx welcome page HTML.
&#32;
############################################################
# STEP 31.5 — Install NGINX Ingress Controller
############################################################
# Install the NGINX Ingress Controller. The controller watches
# Kubernetes Ingress resources and configures NGINX to route
# incoming HTTP/HTTPS traffic to Services.
kubectl create -f   https://raw.githubusercontent.com/zealvora/certified-kubernetes-security-specialist/refs/heads/main/domain-1-cluster-setup/nginx-controller.yaml
kubectl get pods -n ingress-nginx
        PS C:\ws&gt; kubectl get pods -n ingress-nginx
        NAME                                       READY   STATUS              RESTARTS     AGE
        ingress-nginx-admission-create-knbqx       0/1     Completed           0            10s
        ingress-nginx-admission-patch-xjnjd        0/1     Completed           1 (2s ago)   10s
        ingress-nginx-controller-d8c96cf68-6j7gw   0/1     ContainerCreating   0            10s
        PS C:\ws&gt; kubectl get pods -n ingress-nginx
        NAME                                       READY   STATUS      RESTARTS   AGE
        ingress-nginx-admission-create-knbqx       0/1     Completed   0          45s
        ingress-nginx-admission-patch-xjnjd        0/1     Completed   1          45s
        ingress-nginx-controller-d8c96cf68-6j7gw   0/1     Running     0          45s
        PS C:\ws&gt;
&#32;
############################################################
# STEP 31.6 — Inspect the Ingress Controller Service
############################################################
# The controller Service exposes HTTP and HTTPS, potentially
# through NodePorts. We need the actual HTTPS NodePort for testing.
# Notice the ingress is exposed through a NodePort. The port associated with 443 is the HTTPS NodePort.
kubectl get service -n ingress-nginx
  PS C:\ws&gt; kubectl get service -n ingress-nginx
  NAME                                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                      AGE
  ingress-nginx-controller             NodePort    10.97.185.85     &lt;none&gt;        80:31630/TCP,443:32482/TCP   85s
  ingress-nginx-controller-admission   ClusterIP   10.101.115.208   &lt;none&gt;        443/TCP                      85s
  PS C:\ws&gt;
kubectl describe service ingress-nginx-controller   -n ingress-nginx
# Look for ports similar to:
#
# 80:xxxxx/TCP
# 443:xxxxx/TCP
#
# The port associated with 443 is the HTTPS NodePort.
# Do not assume a fixed NodePort number.
############################################################
# STEP 31.7 — Identify the Node IP
############################################################
# The request will enter the cluster through a node IP and the
# HTTPS NodePort exposed by the Ingress Controller.
kubectl get nodes -o wide
PS C:\ws&gt; kubectl get nodes -o wide
NAME    STATUS   ROLES           AGE   VERSION   INTERNAL-IP    EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
k8cp    Ready    control-plane   9d    v1.32.0   192.168.1.16   &lt;none&gt;        Ubuntu 24.04.2 LTS   6.17.0-35-generic   containerd://2.2.1
k8dp1   Ready    &lt;none&gt;          9d    v1.32.0   192.168.1.17   &lt;none&gt;        Ubuntu 24.04.2 LTS   7.0.0-28-generic    containerd://2.2.1
PS C:\ws&gt;
# Use the InternalIP of a node that is reachable from your laptop.
#
# Example:
#
# NODE_IP=192.168.1.16
############################################################
# STEP 31.8 — Test the Ingress Controller Before Application TLS
############################################################
# Test the HTTPS NodePort directly. The -k option allows curl to
# continue even if the controller's default certificate is untrusted.
#Ensure both nodes are in ready state. In my case, I am using the second node IP
#Also my connection was flaky, so I had to run the curl command multiple times to get a response.
kubectl get nodes
curl -kv https://192.168.1.17:32482/
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers
$ kubectl get nodes
NAME    STATUS   ROLES           AGE   VERSION
k8cp    Ready    control-plane   9d    v1.32.0
k8dp1   Ready    &lt;none&gt;          9d    v1.32.0
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers
$ curl -kv https://192.168.1.17:32482/
*   Trying 192.168.1.17:32482...
* schannel: disabled automatic use of client certificate</code></pre>
<p>* schannel: using IP address, SNI is not supported by OS.</p>
<pre><code class="language-bash">* Connected to 192.168.1.17 (192.168.1.17) port 32482
* using HTTP/1.x
&gt; GET / HTTP/1.1
&gt; Host: 192.168.1.17:32482
&gt; User-Agent: curl/8.12.1
&gt; Accept: */*
&gt;
* schannel: remote party requests renegotiation
* schannel: renegotiating SSL/TLS connection
* schannel: SSL/TLS connection renegotiated
* schannel: remote party requests renegotiation
* schannel: renegotiating SSL/TLS connection
* schannel: SSL/TLS connection renegotiated
&lt; HTTP/1.1 404 Not Found
&lt; Date: Tue, 18 Aug 2026 10:55:31 GMT
&lt; Content-Type: text/html
&lt; Content-Length: 146
&lt; Connection: keep-alive
&lt; Strict-Transport-Security: max-age=31536000; includeSubDomains
&lt;
&lt;html&gt;
&lt;head&gt;&lt;title&gt;404 Not Found&lt;/title&gt;&lt;/head&gt;
&lt;body&gt;
&lt;center&gt;&lt;h1&gt;404 Not Found&lt;/h1&gt;&lt;/center&gt;
&lt;hr&gt;&lt;center&gt;nginx&lt;/center&gt;
&lt;/body&gt;
&lt;/html&gt;
* Connection #0 to host 192.168.1.17 left intact
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers
$
# At this stage we are only proving that the Ingress Controller
# itself is reachable. nerdylabs.internal has not been configured yet.
############################################################
# STEP 31.9 — Create TLS Working Directory
############################################################
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics (main)
$ mkdir tlsintg
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics (main)
$ cd tlsintg
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
$ pwd
/c/ws/k8basics/tlsintg
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
$
&#32;
############################################################
# STEP 31.10 — Create a Self-Signed TLS Certificate
############################################################
# Create a private key and self-signed certificate for
# nerdylabs.internal. This is suitable for a lab but will not be
# trusted automatically by normal browsers or curl.
#I DID NOT USE THIS CMD
openssl req  -x509   -nodes   -days 365   -newkey rsa:2048   -keyout nerdylabs.key   -out nerdylabs.crt   -subj "/CN=nerdylabs.internal/O=NerdyLabs"
#USED BELOW CMD AS ABOVE WAS NOT WORKING ON POWERSHELL AND ALSO GITBASH</code></pre>
<p>MSYS_NO_PATHCONV=1 openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nerdylabs.key -out nerdylabs.crt -subj "/CN=nerdylabs.internal/O=NerdyLabs"</p>
<pre><code class="language-bash">Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
$ MSYS_NO_PATHCONV=1 openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nerdylabs.key -out nerdylabs.crt -subj "/CN=nerdylabs.internal/O=NerdyLabs"
.....+..+......+++++++++++++++++++++++++++++++++++++++*.....+++++++++++++++++++++++++++++++++++++++*.....+.+........+...+....+........+.......+...........+....+......+.....+....+......+....................+.......+..+...+......+.+......+.........+.....+.+........+.....................++++++
.......+....+...+.................+.+..+.+.....+.+...........+.......+...+.....+...+.......+++++++++++++++++++++++++++++++++++++++*.+...+....+........+...+++++++++++++++++++++++++++++++++++++++*..+.....++++++
-----
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
$ ls -lrt
total 8
-rw-r--r-- 1 Sridhara 197610 1732 Aug 18 16:58 nerdylabs.key
-rw-r--r-- 1 Sridhara 197610 1212 Aug 18 16:58 nerdylabs.crt
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
$
# Verify the certificate:
openssl x509 \
  -in nerdylabs.crt \
  -noout \
  -subject \
  -issuer \
  -dates
&#32;
    subject=CN=nerdylabs.internal, O=NerdyLabs
    issuer=CN=nerdylabs.internal, O=NerdyLabs
    notBefore=Aug 18 15:58:58 2026 GMT
    notAfter=Aug 18 15:58:58 2027 GMT
&#32;
############################################################
# STEP 31.11 — Create Kubernetes TLS Secret
############################################################
# Store the certificate and private key in a Kubernetes TLS Secret.
# The Ingress will reference this Secret when terminating TLS.
kubectl create secret tls nerdylabs-tls \
  --cert=nerdylabs.crt \
  --key=nerdylabs.key \
  --namespace=ingress-poc
kubectl get secret nerdylabs-tls -n ingress-poc
kubectl describe secret nerdylabs-tls -n ingress-poc
# Expected Secret type:
#
# kubernetes.io/tls
############################################################
# STEP 31.12 — Create the Ingress with TLS
############################################################
# Create an Ingress for nerdylabs.internal. Requests to "/" are
# forwarded to nerdylabs-service on port 80. TLS uses the
# nerdylabs-tls Secret.
kubectl create ingress nerdylabs-ingress \
  --class=nginx \
  --rule="nerdylabs.internal/*=nerdylabs-service:80,tls=nerdylabs-tls" \
  --namespace=ingress-poc
kubectl get ingress -n ingress-poc
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $ kubectl get ingress -n ingress-poc
    NAME                CLASS   HOSTS                ADDRESS        PORTS     AGE
    nerdylabs-ingress   nginx   nerdylabs.internal   10.97.185.85   80, 443   43m
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
kubectl describe ingress nerdylabs-ingress   -n ingress-poc
    $ kubectl describe ingress nerdylabs-ingress   -n ingress-poc
    Name:             nerdylabs-ingress
    Labels:           &lt;none&gt;
    Namespace:        ingress-poc
    Address:
    Ingress Class:    nginx
    Default backend:  &lt;default&gt;
    TLS:
    nerdylabs-tls terminates nerdylabs.internal
    Rules:
    Host                Path  Backends
    ----                ----  --------
    nerdylabs.internal
                        /   nerdylabs-service:80 ()
    Annotations:          &lt;none&gt;
    Events:
    Type    Reason  Age   From                      Message
    ----    ------  ----  ----                      -------
    Normal  Sync    25s   nginx-ingress-controller  Scheduled for sync
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
############################################################
# STEP 31.13 — Inspect the Ingress YAML
############################################################
# Inspect the generated resource and verify the host, backend and
# TLS configuration.
kubectl get ingress nerdylabs-ingress -n ingress-poc -o yaml
# You should see the equivalent configuration:
#
# Host:
#   nerdylabs.internal
#
# Backend:
#   nerdylabs-service:80
#
# TLS Secret:&lt;removed&gt;
#   nerdylabs-tls
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
    kubectl get ingress nerdylabs-ingress -n ingress-poc -o yaml
    apiVersion: networking.k8s.io/v1
    kind: Ingress
    metadata:
    creationTimestamp: "2026-08-18T16:03:46Z"
    generation: 1
    name: nerdylabs-ingress
    namespace: ingress-poc
    resourceVersion: "188433"
    uid: 66f8ac9e-104c-49a6-9601-282b9be4ad7d
    spec:
    ingressClassName: nginx
    rules:
    - host: nerdylabs.internal
        http:
        paths:
        - backend:
            service:
                name: nerdylabs-service
                port:
                number: 80
            path: /
            pathType: Prefix
    tls:
    - hosts:
        - nerdylabs.internal
        secretName: nerdylabs-tls
    status:
    loadBalancer:
        ingress:
        - ip: 10.97.185.85
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $
############################################################
# STEP 31.14 — Configure Local DNS Resolution
############################################################
# nerdylabs.internal is a lab-only domain, so map it to the
# Kubernetes node IP in /etc/hosts.
#I am using here the windows hosts file to add the entry for nerdylabs.internal. You can use the below command to add the entry in windows hosts file.
# Notice at the last line the entry gets added vis-a-vis the worker node ip.
powershell.exe -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command \"Add-Content -Path C:\Windows\System32\drivers\etc\hosts -Value ''192.168.1.17 nerdylabs.internal''\"'"
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $ powershell.exe -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command \"Add-Content -Path C:\Windows\System32\drivers\etc\hosts -Value ''192.168.1.17 nerdylabs.internal''\"'"
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
    $ cat c:/windows/system32/drivers/etc/hosts
    # Copyright (c) 1993-2009 Microsoft Corp.
    #
    # This is a sample HOSTS file used by Microsoft TCP/IP for Windows.
    #
    # This file contains the mappings of IP addresses to host names. Each
    # entry should be kept on an individual line. The IP address should
    # be placed in the first column followed by the corresponding host name.
    # The IP address and the host name should be separated by at least one
    # space.
    #
    # Additionally, comments (such as these) may be inserted on individual
    # lines or following the machine name denoted by a '#' symbol.
    #
    # For example:
    #
    #      102.54.94.97     rhino.acme.com          # source server
    #       38.25.63.10     x.acme.com              # x client host
    # localhost name resolution is handled within DNS itself.
    #       127.0.0.1       localhost
    #       ::1             localhost
    # Added by Docker Desktop
    192.168.1.7 host.docker.internal
    192.168.1.7 gateway.docker.internal
    # To allow the same kube context to work on the host and the container:
    127.0.0.1 kubernetes.docker.internal
    # End of section
    192.168.1.17 nerdylabs.internal
    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
############################################################
# STEP 31.15 — Test HTTPS Through the Ingress
############################################################
# Replace &lt;HTTPS-NODEPORT&gt; with the HTTPS NodePort discovered
# from the ingress-nginx-controller Service.
curl -kv   https://nerdylabs.internal:&lt;HTTPS-NODEPORT&gt;/
curl -kv https://nerdylabs.internal:32482/
        Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
        $ curl -kv https://nerdylabs.internal:32482/
        * Host nerdylabs.internal:32482 was resolved.
        * IPv6: (none)
        * IPv4: 192.168.1.17
        *   Trying 192.168.1.17:32482...
        * schannel: disabled automatic use of client certificate
        * Connected to nerdylabs.internal (192.168.1.17) port 32482
        * using HTTP/1.x
        &gt; GET / HTTP/1.1
        &gt; Host: nerdylabs.internal:32482
        &gt; User-Agent: curl/8.12.1
        &gt; Accept: */*
        &gt;
        * schannel: remote party requests renegotiation
        * schannel: renegotiating SSL/TLS connection
        * schannel: SSL/TLS connection renegotiated
        * schannel: remote party requests renegotiation
        * schannel: renegotiating SSL/TLS connection
        * schannel: SSL/TLS connection renegotiated
        &lt; HTTP/1.1 200 OK
        &lt; Date: Tue, 18 Aug 2026 16:49:20 GMT
        &lt; Content-Type: text/html
        &lt; Content-Length: 896
        &lt; Connection: keep-alive
        &lt; Last-Modified: Wed, 15 Jul 2026 16:03:14 GMT
        &lt; ETag: "6a57af42-380"
        &lt; Accept-Ranges: bytes
        &lt; Strict-Transport-Security: max-age=31536000; includeSubDomains
        &lt;
        &lt;!DOCTYPE html&gt;
        &lt;html&gt;
        &lt;head&gt;
        &lt;title&gt;Welcome to nginx!&lt;/title&gt;
        &lt;style&gt;
        html { color-scheme: light dark; }
        body { width: 35em; margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif; }
        &lt;/style&gt;
        &lt;/head&gt;
        &lt;body&gt;
        &lt;h1&gt;Welcome to nginx!&lt;/h1&gt;
        &lt;p&gt;If you see this page, nginx is successfully installed and working.
        Further configuration is required for the web server, reverse proxy,
        API gateway, load balancer, content cache, or other features.&lt;/p&gt;
        &lt;p&gt;For online documentation and support please refer to
        &lt;a href="https://nginx.org/"&gt;nginx.org&lt;/a&gt;.&lt;br/&gt;
        To engage with the community please visit
        &lt;a href="https://community.nginx.org/"&gt;community.nginx.org&lt;/a&gt;.&lt;br/&gt;
        For enterprise grade support, professional services, additional
        security features and capabilities please refer to
        &lt;a href="https://f5.com/nginx"&gt;f5.com/nginx&lt;/a&gt;.&lt;/p&gt;
        &lt;p&gt;&lt;em&gt;Thank you for using nginx.&lt;/em&gt;&lt;/p&gt;
        &lt;/body&gt;
        &lt;/html&gt;
        * Connection #0 to host nerdylabs.internal left intact
        Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)
        $
# The -k option is required because the certificate is self-signed.
#
# The request should match nerdylabs.internal and be routed by the
# Ingress Controller to nerdylabs-service and then nerdylabs-app.
############################################################
# STEP 31.16 — Verify the Certificate Presented by Ingress
############################################################
# Inspect the certificate presented by the Ingress Controller.
# -servername is important because it sends the TLS SNI hostname.
openssl s_client \
  -connect nerdylabs.internal:32482 \
  -servername nerdylabs.internal \
  &lt;/dev/null 2&gt;/dev/null | \
  openssl x509 \
  -noout \
  -subject \
  -issuer \
  -dates
# Verify that the certificate belongs to nerdylabs.internal.
    subject=CN=nerdylabs.internal, O=NerdyLabs
    issuer=CN=nerdylabs.internal, O=NerdyLabs
    notBefore=Aug 18 15:58:58 2026 GMT
    notAfter=Aug 18 15:58:58 2027 GMT
############################################################
# STEP 31.17 — Test the Complete Request Path
############################################################
# At this point the request path is:
#
# Client
#   |
#   | HTTPS
#   v
# Node IP : HTTPS NodePort
#   |
#   v
# NGINX Ingress Controller
#   |
#   | TLS termination
#   v
# nerdylabs-ingress
#   |
#   v
# nerdylabs-service:80
#   |
#   v
# nerdylabs-app:80
#   |
#   v
# nginx
curl -k   https://nerdylabs.internal:32482/
# Will return the nginx welcome page HTML.
############################################################
# STEP 31.18 — Useful Troubleshooting Commands
############################################################
# Check the application Pod:
kubectl get pod nerdylabs-app \
  -n ingress-poc \
  -o wide
# Check the Service:
kubectl get service nerdylabs-service \
  -n ingress-poc
# Check Service endpoints:
kubectl get endpoints nerdylabs-service \
  -n ingress-poc
# Check the Ingress:
kubectl get ingress \
  -n ingress-poc
kubectl describe ingress nerdylabs-ingress \
  -n ingress-poc
# Check the Ingress Controller:
kubectl get pods \
  -n ingress-nginx
kubectl get service \
  -n ingress-nginx
# Check controller logs if the request does not reach the backend:
kubectl logs \
  -n ingress-nginx \
  -l app.kubernetes.io/component=controller \
  --tail=100
############################################################
# STEP 31.19 — Verify the TLS Secret
############################################################
# Confirm that Kubernetes recognizes nerdylabs-tls as a TLS Secret.
kubectl get secret nerdylabs-tls \
  -n ingress-poc \
  -o jsonpath='{.type}{"\n"}'
# Expected:
#
# kubernetes.io/tls
############################################################
# STEP 31.20 — Key Takeaways
############################################################
# The Service provides internal access to nerdylabs-app. The
# Ingress defines the HTTP/HTTPS routing rules, while the NGINX
# Ingress Controller actually processes those rules.
# nerdylabs-tls contains the certificate and private key. The
# Ingress references that Secret, allowing the Ingress Controller
# to terminate TLS before forwarding normal HTTP traffic to the
# backend Service.
# The complete flow is:
#
#Windows hosts file
#      ↓
#nerdylabs.internal → 192.168.1.17
#      ↓
#NodePort 32482
#      ↓
#NGINX Ingress Controller
#      ↓
#TLS termination
#      ↓
#Ingress: nerdylabs.internal
#      ↓
#nerdylabs-service:80
#      ↓
#nginx Pod
#      ↓
#HTTP 200 OK
############################################################
# STEP 31.21 — CLEANUP
############################################################
&#32;
# Delete the Ingress:
kubectl delete ingress nerdylabs-ingress  -n ingress-poc --ignore-not-found
kubectl delete secret nerdylabs-tls -n ingress-poc --ignore-not-found
kubectl delete service nerdylabs-service -n ingress-poc --ignore-not-found
kubectl delete pod nerdylabs-app -n ingress-poc --ignore-not-found
kubectl delete namespace ingress-poc   --ignore-not-found
kubectl delete -f  https://raw.githubusercontent.com/zealvora/certified-kubernetes-security-specialist/refs/heads/main/domain-1-cluster-setup/nginx-controller.yaml
cd c:/ws/k8basics/tlsintg
rm -f *.*</code></pre>
<p> </p></td>
</tr>
</tbody>
</table>

##  Containerd - CRI on Separate VM 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image735.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 30 — Configuring cri-dockerd
############################################################
# Purpose: This POC demonstrates how Kubernetes can use Docker
# through cri-dockerd as its Container Runtime Interface (CRI).
#
# IMPORTANT: cri-dockerd is an alternative to containerd.
# This exercise should be performed on a separate VM/lab node or
# a disposable cluster. Do NOT add cri-dockerd to your existing
# containerd-based k8cp/k8dp1 cluster.
#
# Architecture:
#
# Kubernetes
#     |
#     v
# kubelet
#     |
#     v
# cri-dockerd
#     |
#     v
# Docker Engine
#     |
#     v
# Containers
#Check the current container runtime for the existing cluster:
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers
$ kubectl get nodes -o custom-columns='NAME:.metadata.name,CRI:.status.nodeInfo.containerRuntimeVersion'
NAME    CRI
k8cp    containerd://2.2.1
k8dp1   containerd://2.2.1
Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers
$
############################################################
# STEP 30.1 — Confirm This Is the Correct Lab Machine
############################################################
# Before changing the container runtime, confirm that this is
# the disposable VM intended for the cri-dockerd exercise.
hostname
uname -a
# If this machine is already running the Kubernetes cluster you
# want to keep, STOP here. This exercise is intended for a
# separate/disposable environment.
############################################################
# STEP 30.2 — Install Docker and Required Packages
############################################################
# Update Ubuntu package metadata and install Docker Engine from
# the Ubuntu repository. Go is included because it is useful for
# building cri-dockerd if required.
sudo apt update
sudo apt install -y   docker.io   golang-go
# Enable and start Docker:
sudo systemctl enable --now docker
# Verify Docker:
sudo systemctl status docker --no-pager
docker --version
# Verify that Docker can actually run a container:
sudo docker run --rm hello-world
# This confirms that the Docker Engine itself is functioning
# before introducing cri-dockerd.
############################################################
# STEP 30.3 — Install cri-dockerd
############################################################
# Download the cri-dockerd Debian package. This example uses the
# amd64 Ubuntu package from the Mirantis cri-dockerd release.
wget \
  https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.17/cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb
# Verify the downloaded file:
ls -lh cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb
# Install cri-dockerd:
sudo dpkg -i \
  cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb
# If dpkg reports missing dependencies, repair them with:
sudo apt-get install -f -y
# Verify the binary:
cri-dockerd --version
# Check the service:
sudo systemctl status cri-docker --no-pager
# Enable the service at boot:
sudo systemctl enable cri-docker
# Start the service:
sudo systemctl start cri-docker
# Verify again:
sudo systemctl status cri-docker --no-pager
############################################################
# STEP 30.4 — Verify the cri-dockerd CRI Socket
############################################################
# cri-dockerd exposes a CRI socket that kubelet and kubeadm can
# use to communicate with the Docker runtime.
ls -l /var/run/cri-dockerd.sock
# Verify the service is listening and running:
sudo systemctl is-active cri-docker
# Expected:
#
# active
# The socket used by kubeadm in this POC is:
#
# unix:///var/run/cri-dockerd.sock
############################################################
# STEP 30.5 — Configure Kernel Parameters
############################################################
# Kubernetes networking requires packet forwarding and bridge
# traffic processing. Configure these parameters persistently.
cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
# Apply the configuration:
sudo sysctl --system
# Verify the important values:
sysctl net.ipv4.ip_forward
sysctl net.bridge.bridge-nf-call-iptables
sysctl net.bridge.bridge-nf-call-ip6tables
############################################################
# STEP 30.6 — Load Required Kernel Modules
############################################################
# overlay is used by container storage and br_netfilter allows
# bridged network traffic to be processed by the relevant
# networking/filtering mechanisms.
sudo modprobe overlay
sudo modprobe br_netfilter
# Verify:
lsmod | grep -E 'overlay|br_netfilter'
############################################################
# STEP 30.7 — Make Kernel Modules Persistent
############################################################
# Ensure the modules are loaded automatically after reboot.
cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/kubernetes.conf
overlay
br_netfilter
EOF
############################################################
# STEP 30.8 — Install Kubernetes Repository Prerequisites
############################################################
# Install the packages required to configure the Kubernetes
# package repository.
sudo apt-get update
sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gpg
############################################################
# STEP 30.9 — Configure the Kubernetes Repository
############################################################
# Create the keyring directory if it does not already exist.
sudo mkdir -p /etc/apt/keyrings
# Download and install the Kubernetes repository signing key.
curl -fsSL \
  https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key | \
  sudo gpg --dearmor \
  -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Configure the Kubernetes v1.32 repository.
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' | \
  sudo tee /etc/apt/sources.list.d/kubernetes.list
# Update package metadata:
sudo apt-get update
############################################################
# STEP 30.10 — Install Kubernetes Components
############################################################
# Install kubeadm, kubelet, kubectl and the CRI tooling.
#
# The exact package version may differ depending on repository
# availability. Check available versions if the specified version
# is not found.
apt-cache policy kubeadm kubelet kubectl cri-tools
# Install the course version:
sudo apt-get install -y \
  kubelet=1.32.0-1.1 \
  kubeadm=1.32.0-1.1 \
  kubectl=1.32.0-1.1 \
  cri-tools=1.32.0-1.1
# Verify:
kubeadm version
kubectl version --client
crictl --version
# Prevent the Kubernetes packages from being automatically
# upgraded during this controlled lab.
sudo apt-mark hold \
  kubelet \
  kubeadm \
  kubectl
# Enable kubelet. It may repeatedly restart before kubeadm
# initializes the cluster; that is normal at this stage.
sudo systemctl enable kubelet
sudo systemctl status kubelet --no-pager
############################################################
# STEP 30.11 — Configure crictl for cri-dockerd
############################################################
# crictl is a useful troubleshooting tool for inspecting the CRI.
# Point it explicitly at the cri-dockerd socket.
sudo crictl config \
  --runtime-endpoint=unix:///var/run/cri-dockerd.sock \
  --image-endpoint=unix:///var/run/cri-dockerd.sock
# Verify the configuration:
sudo crictl info
# A successful response confirms that crictl can communicate
# with cri-dockerd through the CRI socket.
############################################################
# STEP 30.12 — Verify Docker and cri-dockerd Together
############################################################
# Verify Docker:
sudo systemctl is-active docker
# Verify cri-dockerd:
sudo systemctl is-active cri-docker
# Verify the CRI socket:
sudo crictl info
# All three checks should succeed before continuing to kubeadm.
############################################################
# STEP 30.13 — Initialize the Kubernetes Control Plane
############################################################
# IMPORTANT:
# kubeadm init creates a new Kubernetes cluster.
#
# This command is NOT for your existing k8cp/k8dp1 cluster.
# Run it only on the disposable cri-dockerd lab machine.
sudo kubeadm init \
  --pod-network-cidr=192.168.0.0/16 \
  --kubernetes-version=1.32.0 \
  --cri-socket=unix:///var/run/cri-dockerd.sock
# The --cri-socket option is the key part of this exercise.
# It explicitly tells kubeadm to use cri-dockerd instead of
# containerd.
# IMPORTANT:
# Save the kubeadm join command printed at the end if you plan
# to add worker nodes later.
############################################################
# STEP 30.14 — Configure kubectl for the Current User
############################################################
# Configure kubectl to use the administrator kubeconfig created
# by kubeadm.
mkdir -p "$HOME/.kube"
sudo cp -i \
  /etc/kubernetes/admin.conf \
  "$HOME/.kube/config"
sudo chown \
  "$(id -u):$(id -g)" \
  "$HOME/.kube/config"
# Verify:
kubectl get nodes
# At this point the control-plane node may be NotReady because
# a CNI/network plugin has not yet been installed.
############################################################
# STEP 30.15 — Verify the Node's Container Runtime
############################################################
# Confirm that Kubernetes reports cri-dockerd as the runtime.
kubectl get nodes -o wide
kubectl describe node "$(hostname)" | grep -i \
  "Container Runtime"
# You should see a runtime associated with cri-dockerd/Docker.
# This is an important checkpoint because it confirms that the
# Kubernetes node is using the intended container runtime.
############################################################
# STEP 30.16 — Remove the Control-Plane Taint
############################################################
# In a single-node lab, remove the default control-plane taint so
# that normal application Pods can also run on the control plane.
kubectl taint nodes --all \
  node-role.kubernetes.io/control-plane-
# Verify:
kubectl describe node "$(hostname)" | grep -i Taints
# For this lab, the control-plane node should now have no taint.
############################################################
# STEP 30.17 — Install Calico
############################################################
# Kubernetes needs a CNI plugin before normal Pod networking works.
# Install Calico for this lab cluster.
kubectl create -f \
  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml
# Install the Calico configuration:
kubectl create -f \
  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml
# Watch the Calico components:
kubectl get pods -A -w
# Press Ctrl+C after the important networking components become
# Ready.
############################################################
# STEP 30.18 — Verify the Cluster
############################################################
# Check node status:
kubectl get nodes -o wide
# The node should eventually become Ready.
# Check all system Pods:
kubectl get pods -A
# Check the container runtime directly:
sudo crictl info
############################################################
# STEP 30.19 — Create a Test Application
############################################################
# Create a simple nginx Pod to confirm that Kubernetes can create
# workloads through cri-dockerd and Docker.
kubectl run nerdylabs-app \
  --image=nginx
# Check the Pod:
kubectl get pod nerdylabs-app -o wide
# Check which node is running it:
kubectl get pod nerdylabs-app \
  -o custom-columns="NAME:.metadata.name,NODE:.spec.nodeName,STATUS:.status.phase"
# The Pod should eventually reach Running.
############################################################
# STEP 30.20 — Verify the Container Through the CRI
############################################################
# List Kubernetes containers known to the CRI:
sudo crictl ps
# List all containers, including stopped ones:
sudo crictl ps -a
# List images known to the CRI:
sudo crictl images
# This provides a useful view from the CRI layer rather than
# using kubectl.
############################################################
# STEP 30.21 — Verify the Docker Layer
############################################################
# cri-dockerd translates CRI requests into Docker operations.
# Inspect the Docker container list as an additional exercise.
sudo docker ps
# You should see containers associated with the Kubernetes
# workloads and system components.
# IMPORTANT:
# Docker is the container engine, while cri-dockerd is the CRI
# adapter that allows kubelet/Kubernetes to communicate with Docker.
############################################################
# STEP 30.22 — Failure Testing: Stop cri-dockerd
############################################################
# This is deliberately a failure exercise. We will stop the CRI
# adapter and observe how Kubernetes reacts.
sudo systemctl stop cri-docker
# Confirm that it is stopped:
sudo systemctl is-active cri-docker
# Expected:
#
# inactive
############################################################
# STEP 30.23 — Attempt to Create Another Pod
############################################################
# Try to create another workload while the CRI adapter is down.
kubectl run nerdylabs-failure-test \
  --image=nginx
# Check the Pod:
kubectl get pod nerdylabs-failure-test -o wide
# The Pod may remain Pending or fail to start because kubelet
# cannot communicate with the container runtime.
############################################################
# STEP 30.24 — Inspect the Pod Events
############################################################
# Inspect the Pod for scheduling/runtime-related errors.
kubectl describe pod nerdylabs-failure-test
# Look at the Events section near the bottom.
#
# You should see errors related to communication with the
# container runtime or cri-dockerd.
############################################################
# STEP 30.25 — Inspect Kubelet Logs
############################################################
# kubelet depends on the CRI socket to create and manage
# containers. Inspect its logs while cri-dockerd is stopped.
sudo journalctl \
  -u kubelet \
  --since "10 minutes ago" \
  --no-pager
# Search specifically for runtime-related messages:
sudo journalctl \
  -u kubelet \
  --since "10 minutes ago" \
  --no-pager | \
  grep -Ei "cri|runtime|docker|container"
############################################################
# STEP 30.26 — Inspect cri-dockerd Logs
############################################################
# Check the cri-dockerd service logs as well.
sudo journalctl \
  -u cri-docker \
  --since "10 minutes ago" \
  --no-pager
############################################################
# STEP 30.27 — Restore cri-dockerd
############################################################
# Restore the CRI adapter.
sudo systemctl start cri-docker
# Verify:
sudo systemctl is-active cri-docker
# Expected:
#
# active
############################################################
# STEP 30.28 — Verify the CRI After Recovery
############################################################
# Confirm that the CRI socket is responding again.
sudo crictl info
# Check kubelet:
sudo systemctl status kubelet --no-pager
# Check the cluster:
kubectl get nodes
# Check the Pods:
kubectl get pods -A
############################################################
# STEP 30.29 — Check the Previously Failed Pod
############################################################
# The failed test Pod may recover depending on its current state.
# Inspect it again.
kubectl get pod nerdylabs-failure-test -o wide
kubectl describe pod nerdylabs-failure-test
# If necessary, delete the failed test Pod and recreate it:
kubectl delete pod nerdylabs-failure-test \
  --ignore-not-found
kubectl run nerdylabs-recovery-test \
  --image=nginx
# Verify:
kubectl get pod nerdylabs-recovery-test -o wide
############################################################
# STEP 30.30 — Final Runtime Verification
############################################################
# Confirm the Kubernetes node and runtime are healthy.
kubectl get nodes -o wide
# Confirm the runtime reported by the node:
kubectl describe node "$(hostname)" | grep -i \
  "Container Runtime"
# Confirm cri-dockerd:
sudo systemctl is-active cri-docker
# Confirm Docker:
sudo systemctl is-active docker
# Confirm CRI access:
sudo crictl info
# Confirm running containers:
sudo crictl ps
# Confirm Docker containers:
sudo docker ps
############################################################
# STEP 30.31 — Key Takeaways
############################################################
# containerd and cri-dockerd are alternative container-runtime
# paths for Kubernetes. In this POC, kubelet communicates with
# cri-dockerd through the CRI socket, and cri-dockerd communicates
# with Docker Engine.
# The important runtime path is:
#
# kubelet
#    |
#    v
# cri-dockerd
#    |
#    v
# Docker Engine
#
# The --cri-socket option passed to kubeadm is what explicitly
# selects cri-dockerd during cluster initialization.
# Stopping cri-dockerd demonstrates an important operational
# dependency: kubelet can remain running, but it cannot create
# or manage containers while the CRI endpoint is unavailable.
############################################################
# STEP 30.32 — CLEANUP APPLICATION TEST PODS
############################################################
# Remove the application Pods created during this POC.
kubectl delete pod nerdylabs-app \
  --ignore-not-found
kubectl delete pod nerdylabs-failure-test \
  --ignore-not-found
kubectl delete pod nerdylabs-recovery-test \
  --ignore-not-found
############################################################
# STEP 30.33 — Optional: Stop Kubernetes Services
############################################################
# If this is a disposable VM and you are finished with the
# cri-dockerd exercise, you can stop the Kubernetes services.
sudo systemctl disable --now kubelet
sudo systemctl disable --now cri-docker
sudo systemctl disable --now docker
############################################################
# STEP 30.34 — OPTIONAL: Remove the cri-dockerd Package
############################################################
# Only perform this section if you want to return the VM to a
# non-cri-dockerd state.
sudo dpkg -r cri-dockerd
# Verify:
cri-dockerd --version
############################################################
# STEP 30.35 — OPTIONAL: Remove the Kubernetes Packages
############################################################
# Only do this on a disposable lab VM. Do not run these commands
# on a cluster you intend to keep.
sudo apt-mark unhold \
  kubelet \
  kubeadm \
  kubectl
sudo apt remove -y \
  kubelet \
  kubeadm \
  kubectl \
  cri-tools
############################################################
# STEP 30.36 — OPTIONAL: Remove the Kubernetes Repository
############################################################
# Remove the Kubernetes repository configuration if this VM will
# no longer be used for Kubernetes.
sudo rm -f \
  /etc/apt/sources.list.d/kubernetes.list
sudo rm -f \
  /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo apt update
############################################################
# STEP 30.37 — OPTIONAL: Remove cri-dockerd Configuration
############################################################
# Remove the custom kernel configuration created specifically
# for this exercise.
sudo rm -f \
  /etc/sysctl.d/99-kubernetes-cri.conf
sudo rm -f \
  /etc/modules-load.d/kubernetes.conf
# Reload sysctl configuration:
sudo sysctl --system
############################################################
# STEP 30.38 — IMPORTANT LAB NOTE
############################################################
# This POC intentionally uses cri-dockerd to demonstrate the
# Docker-based CRI path. Modern Kubernetes installations commonly
# use containerd or another CRI implementation directly.
#
# Do not interpret this exercise as a recommendation to replace
# containerd in your existing cluster. The purpose is to understand
# the CRI architecture and how kubelet interacts with a runtime.</code></pre></td>
</tr>
</tbody>
</table>

## Events

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image736.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 32 — Kubernetes Events
############################################################
# Purpose: Understand how Kubernetes Events help troubleshoot what
# is happening to Pods, Nodes and other Kubernetes resources.
#
# Events are useful for answering questions such as:
# - Why is my Pod Pending?
# - Why did a container restart?
# - Why couldn't an image be pulled?
# - Why was a Pod scheduled on a particular node?
#
# Events are primarily a troubleshooting aid and are not a
# replacement for application or component logs.
############################################################
# STEP 32.1 — View Events in the Current Namespace
############################################################
# Display Events from the current namespace.
kubectl get events
# Events are typically shown with information such as:
# LAST SEEN, TYPE, REASON, OBJECT and MESSAGE.
############################################################
# STEP 32.2 — View Events in All Namespaces
############################################################
# Useful when troubleshooting cluster-level issues or when you
# do not know which namespace generated the Event.
kubectl get events -A
############################################################
# STEP 32.3 — Sort Events by Time
############################################################
# Sorting by creation time makes the Event history easier to
# follow chronologically.
kubectl get events \
  --sort-by='.metadata.creationTimestamp'
############################################################
# STEP 32.4 — Inspect Events for a Specific Pod
############################################################
# Create a simple test Pod.
kubectl run events-test \
  --image=nginx
# Inspect the Pod.
kubectl get pod events-test
# Display Events associated with this Pod.
kubectl describe pod events-test
# Look at the Events section at the bottom of the output.
#
# Typical Events may include:
#
# Scheduled
# Pulling
# Pulled
# Created
# Started
############################################################
# STEP 32.5 — Generate a Warning Event
############################################################
# Create a Pod using an image that does not exist.
# This deliberately creates a troubleshooting scenario.
kubectl run events-failure \
  --image=nginx:this-image-does-not-exist
# Check the Pod status.
kubectl get pod events-failure
# Inspect its Events.
kubectl describe pod events-failure
# You should see Warning Events related to image pulling,
# such as ErrImagePull or ImagePullBackOff.
# You can also retrieve the Events directly:
kubectl get events \
  --field-selector involvedObject.name=events-failure
############################################################
# STEP 32.6 — Filter Warning Events
############################################################
# Display only Warning Events in the current namespace.
kubectl get events \
  --field-selector type=Warning
# This is particularly useful during troubleshooting because
# normal informational Events can otherwise produce a lot of
# output.
############################################################
# STEP 32.7 — Filter Events by Reason
############################################################
# Filter Events based on their Reason.
kubectl get events \
  --field-selector reason=Failed
# This demonstrates that Events can be filtered rather than
# manually searching through the entire Event list.
############################################################
# STEP 32.8 — Inspect Events Across the Cluster
############################################################
# Sort Events from all namespaces chronologically.
kubectl get events -A \
  --sort-by='.metadata.creationTimestamp'
# This is a useful first command when you encounter a
# cluster-wide problem and do not yet know which component
# is responsible.
############################################################
# STEP 32.9 — Understand Event Types
############################################################
# Kubernetes Events commonly have two types:
# Normal
#   Indicates an expected or informational occurrence.
#
# Warning
#   Indicates something that may require investigation.
kubectl get events \
  -A \
  --field-selector type=Warning
############################################################
# STEP 32.10 — Compare Events with Logs
############################################################
# Events tell you what Kubernetes observed or reported about
# a resource. Logs provide detailed output from the application
# or Kubernetes component itself.
# Inspect the application Pod:
kubectl logs events-test
# Inspect its Events:
kubectl describe pod events-test
# Think of the distinction as:
#
# Events -&gt; Kubernetes-level activity and troubleshooting clues
# Logs   -&gt; Detailed output produced by a container/component
############################################################
# STEP 32.11 — Useful Event Commands
############################################################
# Current namespace:
kubectl get events
# All namespaces:
kubectl get events -A
# Sort chronologically:
kubectl get events \
  --sort-by='.metadata.creationTimestamp'
# Warning Events only:
kubectl get events \
  --field-selector type=Warning
# Events for a specific Pod:
kubectl get events \
  --field-selector involvedObject.name=events-test
# Events for a specific Pod with chronological ordering:
kubectl get events \
  --field-selector involvedObject.name=events-test \
  --sort-by='.metadata.creationTimestamp'
############################################################
# STEP 32.12 — Cleanup
############################################################
# Remove the Pods created for this Event exercise.
kubectl delete pod events-test \
  --ignore-not-found
kubectl delete pod events-failure \
  --ignore-not-found
############################################################
# STEP 32.13 — Key Takeaway
############################################################
# Events provide a timeline of important Kubernetes activity
# around resources. When troubleshooting, a good starting point
# is often:
#
# kubectl get events -A --sort-by='.metadata.creationTimestamp'
#
# Then narrow the investigation using:
#
# kubectl describe &lt;resource&gt;
# kubectl get events --field-selector ...
# kubectl logs &lt;pod&gt;
#
# Events give you the "what happened" clues; logs usually provide
# the deeper "why it happened" details.</code></pre></td>
</tr>
</tbody>
</table>

## Logs

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image737.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<pre><code class="language-bash"># STEP 32 — Kubernetes Events
############################################################
# Purpose: Understand how Kubernetes Events help troubleshoot what
# is happening to Pods, Nodes and other Kubernetes resources.
#
# Events are useful for answering questions such as:
# - Why is my Pod Pending?
# - Why did a container restart?
# - Why couldn't an image be pulled?
# - Why was a Pod scheduled on a particular node?
#
# Events are primarily a troubleshooting aid and are not a
# replacement for application or component logs.
############################################################
# STEP 32.1 — View Events in the Current Namespace
############################################################
# Display Events from the current namespace.
kubectl get events
# Events are typically shown with information such as:
# LAST SEEN, TYPE, REASON, OBJECT and MESSAGE.
############################################################
# STEP 32.2 — View Events in All Namespaces
############################################################
# Useful when troubleshooting cluster-level issues or when you
# do not know which namespace generated the Event.
kubectl get events -A
############################################################
# STEP 32.3 — Sort Events by Time
############################################################
# Sorting by creation time makes the Event history easier to
# follow chronologically.
kubectl get events \
  --sort-by='.metadata.creationTimestamp'
############################################################
# STEP 32.4 — Inspect Events for a Specific Pod
############################################################
# Create a simple test Pod.
kubectl run events-test \
  --image=nginx
# Inspect the Pod.
kubectl get pod events-test
# Display Events associated with this Pod.
kubectl describe pod events-test
# Look at the Events section at the bottom of the output.
#
# Typical Events may include:
#
# Scheduled
# Pulling
# Pulled
# Created
# Started
############################################################
# STEP 32.5 — Generate a Warning Event
############################################################
# Create a Pod using an image that does not exist.
# This deliberately creates a troubleshooting scenario.
kubectl run events-failure \
  --image=nginx:this-image-does-not-exist
# Check the Pod status.
kubectl get pod events-failure
# Inspect its Events.
kubectl describe pod events-failure
# You should see Warning Events related to image pulling,
# such as ErrImagePull or ImagePullBackOff.
# You can also retrieve the Events directly:
kubectl get events \
  --field-selector involvedObject.name=events-failure
############################################################
# STEP 32.6 — Filter Warning Events
############################################################
# Display only Warning Events in the current namespace.
kubectl get events \
  --field-selector type=Warning
# This is particularly useful during troubleshooting because
# normal informational Events can otherwise produce a lot of
# output.
############################################################
# STEP 32.7 — Filter Events by Reason
############################################################
# Filter Events based on their Reason.
kubectl get events \
  --field-selector reason=Failed
# This demonstrates that Events can be filtered rather than
# manually searching through the entire Event list.
############################################################
# STEP 32.8 — Inspect Events Across the Cluster
############################################################
# Sort Events from all namespaces chronologically.
kubectl get events -A \
  --sort-by='.metadata.creationTimestamp'
# This is a useful first command when you encounter a
# cluster-wide problem and do not yet know which component
# is responsible.
############################################################
# STEP 32.9 — Understand Event Types
############################################################
# Kubernetes Events commonly have two types:
# Normal
#   Indicates an expected or informational occurrence.
#
# Warning
#   Indicates something that may require investigation.
kubectl get events \
  -A \
  --field-selector type=Warning
############################################################
# STEP 32.10 — Compare Events with Logs
############################################################
# Events tell you what Kubernetes observed or reported about
# a resource. Logs provide detailed output from the application
# or Kubernetes component itself.
# Inspect the application Pod:
kubectl logs events-test
# Inspect its Events:
kubectl describe pod events-test
# Think of the distinction as:
#
# Events -&gt; Kubernetes-level activity and troubleshooting clues
# Logs   -&gt; Detailed output produced by a container/component
############################################################
# STEP 32.11 — Useful Event Commands
############################################################
# Current namespace:
kubectl get events
# All namespaces:
kubectl get events -A
# Sort chronologically:
kubectl get events \
  --sort-by='.metadata.creationTimestamp'
# Warning Events only:
kubectl get events \
  --field-selector type=Warning
# Events for a specific Pod:
kubectl get events \
  --field-selector involvedObject.name=events-test
# Events for a specific Pod with chronological ordering:
kubectl get events \
  --field-selector involvedObject.name=events-test \
  --sort-by='.metadata.creationTimestamp'
############################################################
# STEP 32.12 — Cleanup
############################################################
# Remove the Pods created for this Event exercise.
kubectl delete pod events-test \
  --ignore-not-found
kubectl delete pod events-failure \
  --ignore-not-found
############################################################
# STEP 32.13 — Key Takeaway
############################################################
# Events provide a timeline of important Kubernetes activity
# around resources. When troubleshooting, a good starting point
# is often:
#
# kubectl get events -A --sort-by='.metadata.creationTimestamp'
#
# Then narrow the investigation using:
#
# kubectl describe &lt;resource&gt;
# kubectl get events --field-selector ...
# kubectl logs &lt;pod&gt;
#
# Events give you the "what happened" clues; logs usually provide
# the deeper "why it happened" details.
############################
# 1. Check if traditional log files exist (non-systemd systems)
ls -la /var/log/kube-*.log
# 2. View traditional API server logs (if using file-based logging)
cat /var/log/kube-apiserver.log
# 3. View traditional scheduler logs
cat /var/log/kube-scheduler.log
# 4. View traditional controller-manager logs
cat /var/log/kube-controller-manager.log
# 5. View traditional kubelet logs on worker nodes
cat /var/log/kubelet.log
# 6. View traditional kube-proxy logs
cat /var/log/kube-proxy.log
# 7. Check if systemd/journald is being used instead (most modern distros)
systemctl status kubelet | grep -i "active"
# 8. View ALL kubelet logs from last hour (journald)
journalctl -u kubelet --since "1 hour ago"
# 9. View kubelet logs from a specific time range</code></pre>
<p>journalctl -u kubelet --since "2026-08-24 04:00:00" --until "2026-08-24 05:00:00"</p>
<pre><code class="language-bash"># 10. View last 100 kubelet logs (most recent)
journalctl -u kubelet -n 100
# 11. View ALL component logs from last 30 minutes (kubelet, containerd, docker)</code></pre>
<p>journalctl -u kubelet -u containerd --since "30 minutes ago"</p>
<pre><code class="language-bash"># 12. View ONLY errors/failures from kubelet logs</code></pre>
<p>journalctl -u kubelet -p err --since "1 hour ago"</p>
<pre><code class="language-bash"># 13. View ONLY warnings and errors from all system services
journalctl -p warning..emerg -n 50
# 14. Search for specific pod/container failures in logs
journalctl -u kubelet --since "1 hour ago" | grep -i "failed\|error\|crash"
# 15. View logs with timestamps and priority levels clearly shown</code></pre>
<p>journalctl -u kubelet -o verbose --since "10 minutes ago"</p>
<pre><code class="language-bash"># 16. View logs for container runtime issues (image pulls, OOM)</code></pre>
<p>journalctl -u containerd -p err --since "1 hour ago"</p>
<pre><code class="language-bash"># 17. View boot-time logs to check node startup issues
journalctl -b -u kubelet
# 18. Follow live logs from ALL control plane components (if using systemd)
journalctl -u kubelet -u containerd -f
# 19. View logs with grep filter for eviction decisions
journalctl -u kubelet --since "1 day ago" | grep -i "evict"
# 20. View logs for API server connectivity issues
journalctl -u kubelet --since "1 hour ago" | grep -i "api\|connection\|timeout"</code></pre></td>
</tr>
</tbody>
</table>

## Life cycle of Pods

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image738.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>######################################################################</p>
<pre><code class="language-bash"># STEP 33 — Pod Lifecycle: Phases, States and Troubleshooting
######################################################################
# Purpose: Understand the Kubernetes Pod lifecycle by deliberately
# creating Pods that demonstrate Pending, Running, Succeeded and
# Failed phases, along with intermediate conditions such as
# ContainerCreating, ErrImagePull and ImagePullBackOff.
#
# IMPORTANT:
# Pod phases are only:
#
#   Pending
#   Running
#   Succeeded
#   Failed
#
# Status values such as ContainerCreating, ErrImagePull and
# ImagePullBackOff are not additional Pod phases. They provide
# more detail about what is happening to the Pod/container.
######################################################################
# STEP 33.1 — Check the Cluster Before Starting
######################################################################
# Confirm that both nodes are available.
kubectl get nodes -o wide
# Check existing Pods so that the output from this exercise is easy
# to identify.
kubectl get pods -A
######################################################################
# STEP 33.2 — Pending Phase: Insufficient Resources
######################################################################
# Create a Pod that requests an intentionally unrealistic amount of
# CPU and memory. On a small local cluster, the scheduler should not
# find a node with enough allocatable resources, leaving the Pod
# in the Pending phase.
cat &gt; pending-pod.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: lifecycle-pending
spec:
  containers:
    - name: lifecycle-container
      image: nginx
      resources:
        requests:
          memory: "100Gi"
          cpu: "100"
EOF
# Create the Pod:
kubectl create -f pending-pod.yaml
# Check its phase:
kubectl get pod lifecycle-pending
# More useful view showing the node assignment and IP:
kubectl get pod lifecycle-pending -o wide
# The Pod should remain Pending because its resource request is far
# greater than what your local nodes can provide.
# IMPORTANT:
# "Pending" means the Pod has been accepted by Kubernetes but is not
# yet running. One common reason is that the scheduler cannot find
# a suitable node.
######################################################################
# STEP 33.3 — Investigate Why the Pod Is Pending
######################################################################
# Describe the Pod and look at the Events section at the bottom.
kubectl describe pod lifecycle-pending
# You should see scheduling-related Events explaining why the Pod
# cannot be placed.
# Filter Events specifically for this Pod:
kubectl get events \
  --field-selector involvedObject.name=lifecycle-pending \
  --sort-by='.metadata.creationTimestamp'
# This is an important troubleshooting pattern:
#
# kubectl get pod
#       |
#       +-- What is the current status?
#
# kubectl describe pod
#       |
#       +-- Why is it in that status?
#
# Events
#       |
#       +-- What did Kubernetes observe while processing the Pod?
######################################################################
# STEP 33.4 — Delete the Pending Pod
######################################################################
# Remove the intentionally unschedulable Pod before continuing.
kubectl delete pod lifecycle-pending
rm -f pending-pod.yaml
######################################################################
# STEP 33.5 — Running Phase
######################################################################
# Create a normal long-running nginx Pod.
kubectl run lifecycle-running \
  --image=nginx
# Check the Pod:
kubectl get pod lifecycle-running
# Check the Pod with node information:
kubectl get pod lifecycle-running -o wide
# The expected phase is:
# Running
# A Pod enters the Running phase once it has been assigned to a node
# and at least one of its containers is running.
######################################################################
# STEP 33.6 — Watch the Pod Lifecycle
######################################################################
# Delete the Pod so that we can recreate it while watching its
# transition.
kubectl delete pod lifecycle-running
# Watch Pods while creating another one.
kubectl get pods -w
# In another terminal, create the Pod:
kubectl run lifecycle-running \
  --image=nginx
# You may briefly observe statuses such as:
#
# Pending
# ContainerCreating
# Running
#
# ContainerCreating is an intermediate status displayed while the
# container runtime is creating/starting the container.
#
# IMPORTANT:
# ContainerCreating is NOT a Pod phase. The Pod phase remains
# Pending until the Pod transitions to Running.
######################################################################
# STEP 33.7 — Inspect the Running Pod
######################################################################
# Stop watching with Ctrl+C and inspect the Pod.
kubectl get pod lifecycle-running -o wide
kubectl describe pod lifecycle-running
# Look at the Conditions and Events sections.
#
# You can see details such as scheduling, image pulling, container
# creation and container startup.
######################################################################
# STEP 33.8 — Succeeded Phase
######################################################################
# Create a short-lived Pod that executes a command and exits
# successfully.
cat &gt; succeeded-pod.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: Pod
metadata:
  name: lifecycle-succeeded
spec:
  restartPolicy: Never
  containers:
    - name: lifecycle-container
      image: busybox
      command: ["sh", "-c", "echo 'Hello, Kubernetes lifecycle!'; exit 0"]
EOF
# Create the Pod:
kubectl create -f succeeded-pod.yaml
# Check its status:
kubectl get pod lifecycle-succeeded
# The Pod should eventually show:
# Completed
# The actual Pod phase is:
# Succeeded
# "Completed" is commonly displayed in the STATUS column by
# kubectl; the underlying Pod phase is Succeeded.
######################################################################
# STEP 33.9 — Inspect the Successful Pod
######################################################################
# Inspect the Pod:
kubectl describe pod lifecycle-succeeded
# View the container output:
kubectl logs lifecycle-succeeded
# The container exited with code 0, meaning successful completion.
# Because restartPolicy is Never, Kubernetes does not restart the
# container after it successfully exits.
######################################################################
# STEP 33.10 — Failed Phase
######################################################################
# Create a Pod whose container deliberately exits with a non-zero
# exit code.
kubectl run lifecycle-failed \
  --image=busybox \
  --restart=Never \
  -- /bin/sh -c "echo 'Intentional failure'; exit 1"
# Check the Pod:
kubectl get pod lifecycle-failed
# The Pod should eventually show:
# Error
# The underlying Pod phase should be:
# Failed
# A non-zero exit code indicates that the container terminated
# unsuccessfully.
######################################################################
# STEP 33.11 — Investigate the Failed Pod
######################################################################
# Inspect the Pod:
kubectl describe pod lifecycle-failed
# Check the container logs:
kubectl logs lifecycle-failed
# Look specifically at the container termination information:
kubectl get pod lifecycle-failed \
  -o jsonpath='{.status.containerStatuses[*].state.terminated.reason}{"\n"}'
# Display the exit code:
kubectl get pod lifecycle-failed \
  -o jsonpath='{.status.containerStatuses[*].state.terminated.exitCode}{"\n"}'
######################################################################
# STEP 33.12 — ImagePullBackOff / ErrImagePull
######################################################################
# Create a Pod using an image tag that does not exist.
kubectl run lifecycle-image-failure \
  --image=nginx:this-image-does-not-exist
# Check the Pod:
kubectl get pod lifecycle-image-failure
# Depending on timing, you may observe statuses such as:
#
# ErrImagePull
# ImagePullBackOff
#
# These indicate that Kubernetes is unable to obtain the requested
# container image.
#
# IMPORTANT:
# ErrImagePull and ImagePullBackOff are NOT Pod phases.
#
# The Pod itself will generally remain in the Pending phase while
# Kubernetes is unable to start the container.
######################################################################
# STEP 33.13 — Understand ImagePullBackOff
######################################################################
# Describe the Pod:
kubectl describe pod lifecycle-image-failure
# Look at the Events section.
# You should see information about the failed image pull.
# ImagePullBackOff means Kubernetes is retrying the image pull with
# an increasing delay between attempts.
# This is different from ErrImagePull:
#
# ErrImagePull
#   -&gt; The image pull attempt failed.
#
# ImagePullBackOff
#   -&gt; Kubernetes is backing off before trying the image pull again.
######################################################################
# STEP 33.14 — ContainerCreating
######################################################################
# Create another normal Pod and immediately inspect it.
kubectl run lifecycle-creating \
  --image=nginx
# Immediately check:
kubectl get pod lifecycle-creating
# Depending on how quickly your local cluster starts the container,
# you may briefly see:
#
# ContainerCreating
#
# This is a transient status and may disappear very quickly.
# Watch the Pod:
kubectl get pod lifecycle-creating -w
# Eventually it should become:
# Running
# Again, ContainerCreating is not a separate Pod phase. It describes
# what the container is currently doing while the Pod is still
# progressing toward Running.
######################################################################
# STEP 33.15 — Compare All the Pods
######################################################################
# Display all Pods created in this exercise:
kubectl get pods
# A typical final result will look conceptually like:
#
# lifecycle-succeeded        0/1   Completed
# lifecycle-failed           0/1   Error
# lifecycle-image-failure    0/1   ImagePullBackOff
# lifecycle-creating         1/1   Running
#
# The important point is that the STATUS column gives you a
# human-friendly view, while the Pod's actual phase is one of:
#
# Pending
# Running
# Succeeded
# Failed
######################################################################
# STEP 33.16 — Inspect the Actual Pod Phase
######################################################################
# Kubernetes stores the Pod phase under:
#
# .status.phase
# Check the phase of the successful Pod:
kubectl get pod lifecycle-succeeded \
  -o jsonpath='{.status.phase}{"\n"}'
# Check the failed Pod:
kubectl get pod lifecycle-failed \
  -o jsonpath='{.status.phase}{"\n"}'
# Check the image failure Pod:
kubectl get pod lifecycle-image-failure \
  -o jsonpath='{.status.phase}{"\n"}'
# This is a useful demonstration that the kubectl STATUS column
# and the actual Pod phase are related but are not the same thing.
######################################################################
# STEP 33.17 — Inspect Pod Conditions
######################################################################
# Pod phases provide a high-level summary. Conditions provide more
# detailed information about the Pod's state.
kubectl get pod lifecycle-creating \
  -o jsonpath='{.status.conditions[*]}'
# A cleaner view:
kubectl describe pod lifecycle-creating
# Pay attention to conditions such as:
#
# PodScheduled
# Initialized
# ContainersReady
# Ready
#
# These conditions provide additional detail beyond the four
# high-level Pod phases.
######################################################################
# STEP 33.18 — Lifecycle Troubleshooting Pattern
######################################################################
# When a Pod is not behaving as expected, use this sequence:
kubectl get pod &lt;pod-name&gt;
# First determine the current high-level status.
kubectl get pod &lt;pod-name&gt; -o wide
# Then inspect the detailed Pod information and Events.
kubectl describe pod &lt;pod-name&gt;
# Then inspect application/container output where applicable.
kubectl logs &lt;pod-name&gt;
# Finally, inspect the actual Pod phase if you need to distinguish
# the high-level lifecycle phase from the STATUS column.
kubectl get pod &lt;pod-name&gt; \
  -o jsonpath='{.status.phase}{"\n"}'
######################################################################
# STEP 33.19 — Useful Lifecycle Summary
######################################################################
# Pod PHASES:
#
# Pending
#   Pod accepted but not yet running.
#   Examples: waiting for scheduling, image pulling, container setup.
#
# Running
#   Pod is assigned to a node and at least one container is running.
#
# Succeeded
#   All containers terminated successfully.
#
# Failed
#   All containers terminated and at least one terminated unsuccessfully
#   or the Pod otherwise failed according to Kubernetes lifecycle rules.
#
#
# COMMON STATUS / REASONS:
#
# ContainerCreating
#   Container runtime is creating the container.
#
# ErrImagePull
#   Kubernetes failed to pull the requested image.
#
# ImagePullBackOff
#   Kubernetes is backing off and will retry the image pull.
#
# Running
#   Container is running.
#
# Completed
#   Common kubectl STATUS representation when the Pod phase is Succeeded.
#
# Error
#   Common kubectl STATUS representation associated with a failed
#   container/Pod.
######################################################################
# STEP 33.20 — Cleanup
######################################################################
# Delete all Pods created for this lifecycle exercise.
kubectl delete pod \
  lifecycle-succeeded \
  lifecycle-failed \
  lifecycle-image-failure \
  lifecycle-creating \
  --ignore-not-found
# Remove the temporary YAML file:
rm -f succeeded-pod.yaml
######################################################################
# STEP 33.21 — Final Takeaway
######################################################################
# Think about the lifecycle in two layers:
#
# HIGH-LEVEL POD PHASE
#
#     Pending
#        |
#        | scheduling / image pull / container creation
#        v
#     Running
#       / \
#      /   \
#     v     v
# Succeeded Failed
#
#
# UNDERLYING / INTERMEDIATE DETAILS
#
# Pending
#   ├── Waiting for scheduling
#   ├── ContainerCreating
#   ├── ErrImagePull
#   └── ImagePullBackOff
#
# Running
#   ├── ContainersReady
#   └── Ready
#
# Succeeded
#   └── Completed
#
# Failed
#   └── Error / non-zero container exit
#
# The key lesson is:
#
# PHASE = high-level lifecycle state
# STATUS/REASON/CONDITION = additional detail about what is happening
#
# When troubleshooting, start with:
#
# kubectl get pod &lt;pod-name&gt;
# kubectl describe pod &lt;pod-name&gt;
# kubectl get events --field-selector involvedObject.name=&lt;pod-name&gt;
# kubectl logs &lt;pod-name&gt;</code></pre></td>
</tr>
</tbody>
</table>

## Restart Policy

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/az-aks-complete/img/media/image739.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>| Policy        | Exit code `0` (success) | Exit code `!= 0` (failure) |</p>
<pre><code class="language-bash">| ------------- | ----------------------- | -------------------------- |
| **Always**    | 🔄 Restart              | 🔄 Restart                 |
| **OnFailure** | 🛑 Stop                 | 🔄 Restart                 |
| **Never**     | 🛑 Stop                 | 🛑 Stop                    |
######################################################################
# STEP 34 — Restart Policies: Always, OnFailure and Never
######################################################################
#
# Purpose: Understand how Kubernetes handles a container after it exits
# under the three supported Pod restart policies.
#
# IMPORTANT:
#   Always    -&gt; Restart after BOTH success (exit 0) and failure (≠0)
#   OnFailure -&gt; Restart ONLY after failure (exit ≠0)
#   Never     -&gt; Never restart after either success or failure
#
# NOTE:
#   `kubectl run` uses restartPolicy=Always by default.
#
######################################################################
######################################################################
# STEP 34.1 — Check the Cluster Before Starting
######################################################################
# Confirm that the cluster is reachable and nodes are available.
kubectl get nodes -o wide
######################################################################
# STEP 34.2 — ALWAYS: Restart After a Successful Exit
######################################################################
# Create a Pod whose container exits successfully.
kubectl run always-success --image=busybox -- sh -c 'echo "Hello Kubernetes"; exit 0'
# Watch the Pod; it will repeatedly restart even though the command succeeds.
kubectl get pod always-success -w
# Check how many times the container has restarted.
kubectl get pod always-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
# Check the container's current state and previous termination information.
kubectl describe pod always-success
######################################################################
# STEP 34.3 — ALWAYS: Restart After a Failure
######################################################################
# Create a Pod whose container exits with a non-zero exit code.
kubectl run always-failure --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'
# Watch the Pod repeatedly restart after the failed container exits.
kubectl get pod always-failure -w
# Check the restart count.
kubectl get pod always-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
# Inspect the previous container termination reason and exit code.
kubectl get pod always-failure -o jsonpath='{.status.containerStatuses[0].lastState.terminated.reason}{"\n"}{.status.containerStatuses[0].lastState.terminated.exitCode}{"\n"}'
######################################################################
# STEP 34.4 — NEVER: Do Not Restart After a Failure
######################################################################
# Create a Pod that fails and explicitly uses restartPolicy=Never.
kubectl run never-failure --restart=Never --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'
# Check the final Pod phase; it should become Failed.
kubectl get pod never-failure
# Inspect the Pod phase directly.
kubectl get pod never-failure -o jsonpath='{.status.phase}{"\n"}'
# Confirm that the container was not restarted.
kubectl get pod never-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
######################################################################
# STEP 34.5 — NEVER: Do Not Restart After a Successful Exit
######################################################################
# Create a Pod that exits successfully and never restarts.
kubectl run never-success --restart=Never --image=busybox -- sh -c 'echo "Job completed successfully"; exit 0'
# Check the final Pod phase; it should become Succeeded.
kubectl get pod never-success
# Verify the Pod completed successfully.
kubectl get pod never-success -o jsonpath='{.status.phase}{"\n"}'
# Verify that the container was not restarted.
kubectl get pod never-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
######################################################################
# STEP 34.6 — ONFAILURE: Restart After a Failure
######################################################################
# Create a Pod that fails with a non-zero exit code.
kubectl run onfailure-failure --restart=OnFailure --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'
# Watch the Pod; the container should restart after each failure.
kubectl get pod onfailure-failure -w
# Check the number of container restarts.
kubectl get pod onfailure-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
# Inspect the previous failed container and its exit code.
kubectl get pod onfailure-failure -o jsonpath='{.status.containerStatuses[0].lastState.terminated.exitCode}{"\n"}'
######################################################################
# STEP 34.7 — ONFAILURE: Do NOT Restart After Success
######################################################################
# Create a Pod that exits successfully using OnFailure.
kubectl run onfailure-success --restart=OnFailure --image=busybox -- sh -c 'echo "Hello Kubernetes"; exit 0'
# Check the Pod; it should become Succeeded instead of restarting.
kubectl get pod onfailure-success
# Verify that the Pod phase is Succeeded.
kubectl get pod onfailure-success -o jsonpath='{.status.phase}{"\n"}'
# Verify that no container restart occurred.
kubectl get pod onfailure-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'
######################################################################
# STEP 34.8 — Compare All Three Policies
######################################################################
# Display the Pods created in this exercise.
kubectl get pods
# Show restart counts for the test Pods.
kubectl get pods -o custom-columns='NAME:.metadata.name,PHASE:.status.phase,RESTARTS:.status.containerStatuses[0].restartCount'
# Inspect the restart policy configured on each Pod.
kubectl get pods -o custom-columns='NAME:.metadata.name,RESTART-POLICY:.spec.restartPolicy'
######################################################################
# STEP 34.9 — Inspect Events and Restart Backoff
######################################################################
# View recent events related to the failing restart tests.
kubectl get events --sort-by='.lastTimestamp'
# Inspect the failing Always Pod and observe restart/backoff information.
kubectl describe pod always-failure
# Inspect the failing OnFailure Pod and observe restart/backoff information.
kubectl describe pod onfailure-failure
######################################################################
# STEP 34.10 — Inspect Container Logs
######################################################################
# Show logs from the current container instance.
kubectl logs always-failure
# Show logs from the previous terminated container instance.
kubectl logs always-failure --previous
# Show logs from the previous failed OnFailure container instance.
kubectl logs onfailure-failure --previous
######################################################################
# STEP 34.11 — Generate a Manifest with restartPolicy
######################################################################
# Generate a Pod manifest without creating the Pod.
kubectl run restart-policy-demo --restart=OnFailure --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'
# Generate a Never-restart Pod manifest.
kubectl run restart-policy-never --restart=Never --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'
# Generate an Always-restart Pod manifest.
kubectl run restart-policy-always --restart=Always --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'
######################################################################
# STEP 34.12 — Verify the Restart Policy in YAML
######################################################################
# Display the configured restartPolicy for an existing Pod.
kubectl get pod onfailure-success -o yaml
# Display only the restartPolicy field.
kubectl get pod onfailure-success -o jsonpath='{.spec.restartPolicy}{"\n"}'
######################################################################
# STEP 34.13 — Clean Up the Restart Policy Test Pods
######################################################################
# Delete all Pods created during this exercise.
kubectl delete pod always-success always-failure never-failure never-success onfailure-failure onfailure-success
# Confirm that the test Pods have been removed.
kubectl get pods
############################</code></pre></td>
</tr>
</tbody>
</table>

## Troubleshooting - Events & Logs

|     |
|-----|
|     |

## Version compatibility 

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image740.webp" style="width:7.67986in;height:5.12014in" /> |

## Draining a Node

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image741.webp" style="width:7.68056in;height:7.01944in" /> |

## Taint based evictions

|  |
|----|
| <img src="subjects/tech/kubernetes/az-aks-complete/img/media/image742.webp" style="width:7.68056in;height:7.01944in" /> |

## Immutable Config Map 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>######################################################################</p>
<pre><code class="language-bash"># STEP 35 — Configure Nginx to Accept ONLY TLS 1.3
######################################################################
#
# Purpose:
#   Configure the Nginx server in `secure-web` to reject TLS 1.2
#   and accept only TLS 1.3.
#
######################################################################
######################################################################
# STEP 35.1 — Setup Environment
######################################################################
wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/refs/heads/master/Exercises/script-cm-deploy.sh
chmod +x script-cm-deploy.sh
./script-cm-deploy.sh
# Expect: secure-web Deployment, Service, TLS Secret and ConfigMap created.
######################################################################
# STEP 35.2 — Inspect the Existing Configuration
######################################################################
kubectl get deployment secure-web
kubectl get configmap nginx-config-v1 -o yaml
# Expect: Nginx configuration should currently allow TLS 1.2 and TLS 1.3.
######################################################################
# STEP 35.3 — Modify the ConfigMap
######################################################################
kubectl get configmap nginx-config-v1 -o yaml &gt; configmap.yaml
sed -i 's/TLSv1.2 TLSv1.3/TLSv1.3/' configmap.yaml
kubectl apply -f configmap.yaml
# Expect: ConfigMap should now contain only `ssl_protocols TLSv1.3;`.
######################################################################
# STEP 35.4 — Restart the Deployment
######################################################################
kubectl rollout restart deployment secure-web
kubectl rollout status deployment secure-web
# Expect: New secure-web Pods should become Ready.
######################################################################
# STEP 35.5 — Test TLS 1.2 and TLS 1.3
######################################################################
# Terminal 1:
kubectl port-forward service/secure-web-svc 8443:443
# Terminal 2 — TLS 1.2 should fail:
openssl s_client -connect 127.0.0.1:8443 -servername secure-web.local -tls1_2 &lt;/dev/null
# Terminal 2 — TLS 1.3 should succeed:
openssl s_client -connect 127.0.0.1:8443 -servername secure-web.local -tls1_3 &lt;/dev/null
# Expect:
#   TLS 1.2 -&gt; handshake failure
#   TLS 1.3 -&gt; successful TLSv1.3 connection
######################################################################
# STEP 35.6 — Cleanup
######################################################################
kubectl delete deployment secure-web
kubectl delete service secure-web-svc
kubectl delete secret tls-secret
kubectl delete configmap nginx-config-v1
rm -f configmap.yaml script-cm-deploy.sh</code></pre></td>
</tr>
</tbody>
</table>

## PVC

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>######################################################################</p>
<pre><code class="language-bash"># STEP 36 — Rebind an Existing PersistentVolume to a New PVC
######################################################################
#
# Purpose:
#   Recover a deleted MariaDB Deployment by creating a new PVC that
#   binds to the existing retained PV `mariadb-retained-pv`.
#
# Requirement:
#   The MariaDB Pod must start successfully and contain:
#
#       /var/lib/mysql/initial.txt
#
######################################################################
######################################################################
# STEP 36.1 — Check Prerequisites
######################################################################
kubectl get storageclass
kubectl get pv mariadb-retained-pv -o wide
# Expect: Local Path Provisioner StorageClass exists and the PV is Available/Released.
######################################################################
# STEP 36.2 — Setup Environment
######################################################################
wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/refs/heads/master/Exercises/script-mariadb.sh
chmod +x script-mariadb.sh
./script-mariadb.sh
# Expect: `mariadb-deployment.yaml` should be created and the required
# namespace/PV setup should be present.
######################################################################
# STEP 36.3 — Remove the Old PVC Reference from the PV
######################################################################
kubectl patch pv mariadb-retained-pv --type=json -p='[{"op":"remove","path":"/spec/claimRef"}]'
# Expect: the PV should become Available and no longer reference the
# deleted/old MariaDB PVC.
kubectl get pv mariadb-retained-pv
######################################################################
# STEP 36.4 — Create a PVC Bound to the Existing PV
######################################################################
cat &gt; pvc.yaml &lt;&lt;'EOF'
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mariadb
  namespace: mariadb
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 250Mi
  storageClassName: local-path
  volumeName: mariadb-retained-pv
EOF
kubectl apply -f pvc.yaml
# Expect: the PVC should become Bound to `mariadb-retained-pv`.
kubectl get pvc -n mariadb
######################################################################
# STEP 36.5 — Recreate the MariaDB Deployment
######################################################################
kubectl apply -f mariadb-deployment.yaml
# Expect: MariaDB Pod should be created and eventually become Running.
kubectl get pods -n mariadb -w
######################################################################
# STEP 36.6 — Verify the Existing Data
######################################################################
kubectl exec -n mariadb deploy/mariadb -- ls -l /var/lib/mysql/initial.txt
# Expect: `/var/lib/mysql/initial.txt` should exist.
######################################################################
# STEP 36.7 — Verify PV/PVC Binding
######################################################################
kubectl get pv mariadb-retained-pv
kubectl get pvc mariadb -n mariadb
# Expect:
#   PV  -&gt; Bound
#   PVC -&gt; Bound
#   PVC -&gt; mariadb-retained-pv
######################################################################
# STEP 36.8 — Cleanup
######################################################################
kubectl delete namespace mariadb
kubectl delete pv mariadb-retained-pv
sudo rm -rf /opt/local-path-provisioner/mariadb
rm -f mariadb-deployment.yaml script-mariadb.sh pvc.yaml
######################################################################
# END OF STEP 36
######################################################################</code></pre></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |
