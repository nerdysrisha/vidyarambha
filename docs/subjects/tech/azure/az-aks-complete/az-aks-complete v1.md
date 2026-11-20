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

<img src="subjects/tech/azure/az-aks-complete/img/media/image1.webp" style="width:4.80694in;height:2.51875in" />

## Below are the Azure Services. 

<img src="subjects/tech/azure/az-aks-complete/img/media/image2.webp" style="width:4.59028in;height:2.35347in" />

## Below is the Azure DevOps. 

<img src="subjects/tech/azure/az-aks-complete/img/media/image3.webp" style="width:4.37014in;height:4.81042in" />

## Below is the Terraform.

<img src="subjects/tech/azure/az-aks-complete/img/media/image4.webp" style="width:4.12153in;height:4.61667in" />

## GitHub Link of artefacts

- [**<u>Azure AKS Kubernetes - Masterclass \| Azure DevOps, Terraform: </u>**](https://github.com/stacksimplify/azure-aks-kubernetes-masterclass)https://github.com/stacksimplify/azure-aks-kubernetes-masterclass

- **[<u>Azure DevOps for Kubernetes Workloads running on Azure AKS Cluster:</u>](https://github.com/stacksimplify/azure-devops-github-acr-aks-app1) **https://github.com/stacksimplify/azure-devops-github-acr-aks-app1

- [**<u>Provision Azure AKS Cluster using Terraform and Azure DevOps:</u>**](https://github.com/stacksimplify/azure-devops-aks-kubernetes-terraform-pipeline) <https://github.com/stacksimplify/azure-devops-aks-kubernetes-terraform-pipeline>

- [**<u>Docker Fundamentals: </u>**](https://github.com/stacksimplify/docker-fundamentals)https://github.com/stacksimplify/docker-fundamentals

- [**<u>Presentation with 250 Slides outlining the various architectures and designs we are going to do in this course: </u>**](https://github.com/stacksimplify/azure-aks-kubernetes-masterclass/tree/master/ppt-presentation)https://github.com/stacksimplify/azure-aks-kubernetes-masterclass/tree/master/ppt-presentation

## Docker Fundamentals

<img src="subjects/tech/azure/az-aks-complete/img/media/image5.webp" style="width:7.67917in;height:3.84931in" />

## Kubernetes Fundamentals

<img src="subjects/tech/azure/az-aks-complete/img/media/image6.webp" style="width:5.59444in;height:4.10347in" />

The above picture represents two approaches to how we can interact with Kubernetes. The first one is Imperative meaning, purely using the kubectl commands. The second one is Declarative, meaning using YAML files and then with Kubectl commands.

## AKS Storage Fundamentals (Azure Disks)

<img src="subjects/tech/azure/az-aks-complete/img/media/image7.webp" style="width:6.48403in;height:3.48125in" />

## AKS Storage Fundamentals (MySql DB) 

<img src="subjects/tech/azure/az-aks-complete/img/media/image8.webp" style="width:7.67917in;height:3.97153in" />

## AKS Storage Fundamentals (Azure Files) 

<img src="subjects/tech/azure/az-aks-complete/img/media/image9.webp" style="width:7.67917in;height:4.60347in" />

## Azure Standard Load Balancer 

<img src="subjects/tech/azure/az-aks-complete/img/media/image10.webp" style="width:7.67778in;height:4.89236in" />

## POD-Service-Public IP Configuration and comparison – 2 examples (One Ingress and One Service)

### Istio Service: Load Balancing \| Load Balancer

<img src="subjects/tech/azure/az-aks-complete/img/media/image11.webp" style="width:7.6875in;height:2.62014in" />

### Istio Service: Public IP address

<img src="subjects/tech/azure/az-aks-complete/img/media/image12.webp" style="width:7.68125in;height:3.13819in" />

### Istio Service / Ingress: Ingress

<img src="subjects/tech/azure/az-aks-complete/img/media/image13.webp" style="width:7.68125in;height:2.37917in" />

### Sample (nginx) Service: Load Balancing \| Load Balancer

<img src="subjects/tech/azure/az-aks-complete/img/media/image14.webp" style="width:7.68125in;height:2.31875in" />

### Sample (nginx) Service: Public IP Address

<img src="subjects/tech/azure/az-aks-complete/img/media/image15.webp" style="width:7.68125in;height:2.37917in" />

### Sample (nginx) Service/Ingress: Service

<img src="subjects/tech/azure/az-aks-complete/img/media/image16.webp" style="width:7.67222in;height:2.57778in" />

## Replica Sets

They maintain ‘fixed’ number replicas as specified.

It uses Labels and Selectors to maintain the same and ties all the things together.

Purpose is to maintain HA, Scalability and Reliability.

Important : This is either created explicitly if we want to do some tests etc, else, if we go with ‘deployment’ option then the replica set is automatically created behind the scenes.

<img src="subjects/tech/azure/az-aks-complete/img/media/image17.webp" style="width:6.19861in;height:3.87083in" />

Below diagram shows that the PODs get automatically Load balanced using the Service

<img src="subjects/tech/azure/az-aks-complete/img/media/image18.webp" style="width:5.96528in;height:4.28472in" />

### Key Points, when HPA/Deployment.yaml is used

- Initial State: Kubernetes starts with the number of replicas specified in the **Deployment** (Eg. 3 replicas in this a sample usecase).

- Autoscaling: The HPA will adjust the number of replicas dynamically based on the observed metrics (e.g., CPU utilization). If the load increases, it might scale up the number of replicas, and if the load decreases, it might scale down the number of replicas.

- Minimum and Maximum Boundaries: The HPA will only adjust the number of replicas within the specified range (1-10 in this example). It will not reduce the number of replicas below 1 or increase it above 10.

- When we define a **Deployment** in Kubernetes, Kubernetes **<u>automatically</u>** creates and manages an appropriate ReplicaSet behind the scenes. This ReplicaSet is responsible for maintaining the desired number of pod replicas as specified in the Deployment.

## Deployment

- This is higher abstraction on top of Replica sets, but with more features and controls

<img src="subjects/tech/azure/az-aks-complete/img/media/image19.webp" style="width:7.68125in;height:4.41389in" />

## Service

- This is the Kubernetes object to expose multiple pods to other applications.

<img src="subjects/tech/azure/az-aks-complete/img/media/image20.webp" style="width:7.67986in;height:3.99236in" />

### Service Type: Cluster IP

Below show how individual pods are accessible via Cluster IP

<img src="subjects/tech/azure/az-aks-complete/img/media/image21.webp" style="width:3.30069in;height:1.98194in" />

### Service Type: Load Balancer

Below show how individual pods are accessible via Load Balancer.

When we choose this option, the cloud provider load balancer is involved automatically.

Refer 3.11 Azure Standard Load Balancer section above.

<img src="subjects/tech/azure/az-aks-complete/img/media/image22.webp" style="width:4.69514in;height:2.68958in" />

### xxx

|     |
|-----|
|     |

## YAML Basics

- The extension of the file can be either .yml or .yaml

### Key Value Pairs

- Key Value Pair notations. This is basic and foundation structure

- <img src="subjects/tech/azure/az-aks-complete/img/media/image23.webp" style="width:3.10347in;height:1.4625in" />

### Dictionary/Map 

- Dictionary/Map. Higher level to KV Pair. Below we have two such dictionaries viz., customer and account

- <img src="subjects/tech/azure/az-aks-complete/img/media/image24.webp" style="width:3.72639in;height:2.42431in" />

### List or Arrays – Pattern 1

- We can annotate in pattern 1 the List or Arrays as shown for phoneNumbers and cardNumbers

- Below we have two such Lists viz., phoneNumbers and cardNumbers. Notice the spaces that are seen with periods when highlighted. Indentation is very important.

- <img src="subjects/tech/azure/az-aks-complete/img/media/image25.webp" style="width:3.59444in;height:3.62292in" />

### List or Array – Pattern 2

We can annotate the list in pattern 2 where beneficiaries is represented.

<img src="subjects/tech/azure/az-aks-complete/img/media/image26.webp" style="width:5.5375in;height:4.06597in" />

### List or Array – with child List

We can annotate a child list as seen under customer viz., loans but having ‘list-of-type-and-amount’, that is repeated

<img src="subjects/tech/azure/az-aks-complete/img/media/image27.webp" style="width:5.5in;height:5.47153in" />

### Pictorial representation 

<img src="subjects/tech/azure/az-aks-complete/img/media/image28.webp" style="width:5.5in;height:5.47153in" />

### Document separator

We can include multiple definitions instead of having multiple yaml files, into a single one.

This can be achieved using the ‘document separator’ <img src="subjects/tech/azure/az-aks-complete/img/media/image29.webp" style="width:5.40556in;height:6.05694in" />

### Comments – How to put them 

<img src="subjects/tech/azure/az-aks-complete/img/media/image30.webp" style="width:6.11319in;height:7.00972in" />

##  YAML Declarative: Create a POD

###  Sample: Create a POD

- Create a simple YAML as below and execute a command to create a POD.

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

Command: kubectl create -f nginx-pod.yml

###  Sample: Create a Service for the POD

- Create a simple YAML as below and execute a command to create a POD.

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

Command: kubectl create -f nginx-pod-service.yml

###  Important Binding between POD and Service

<img src="subjects/tech/azure/az-aks-complete/img/media/image31.webp" style="width:7.67917in;height:2.86806in" />

##  YAML Declarative: Create a ReplicaSet

###  Sample: Create a ReplicaSet

- Create a simple YAML as below and execute a command to create

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

###  Sample: Create a Service for ReplicaSet

- Create a simple YAML as below and execute a command to create

<img src="subjects/tech/azure/az-aks-complete/img/media/image32.webp" style="width:7.6875in;height:3.74444in" />

###  Important Binding between RS and Service

- Create a simple YAML as below and execute a command to create

<img src="subjects/tech/azure/az-aks-complete/img/media/image32.webp" style="width:7.6875in;height:3.74444in" />

##  YAML Declarative: Create a Deployment

###  Sample: Create a Deployment

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

###  Sample: Create a Service for Deployment

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

## Azure Disks

<img src="subjects/tech/azure/az-aks-complete/img/media/image33.webp" style="width:7.6875in;height:4.10278in" />

Highlights of using Azure Storage Disks

<img src="subjects/tech/azure/az-aks-complete/img/media/image34.webp" style="width:7.67917in;height:3.5in" />

### Pictorial representation of PVC, PV and SC

<img src="subjects/tech/azure/az-aks-complete/img/media/image35.webp" style="width:7.67917in;height:3.14167in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image36.jpeg" style="width:7.6875in;height:4.54653in" alt="No alternative text description for this image" />

### Azure Storage Classes

Below is a sample YAML to define a Storage class with possible values each of the lines can take. Usually we don’t need to create a Storage Class and always recommended to use the Azure Storage Classes that are predefined.

allowVolumeExpansion: true \| false

apiVersion: storage.k8s.io/v1

kind: StorageClass

metadata:

  creationTimestamp: "2023-07-06T16:40:00Z"

  labels:

    addonmanager.kubernetes.io/mode: EnsureExists \| Reconcile \| Remove

    kubernetes.io/cluster-service: "true" \| "false"

  name: managed

  resourceVersion: "370"

  uid: c4eb7c40-6e9e-4277-8324-15ca5e5a3fae

parameters:

  cachingmode: ReadOnly \| ReadWrite \| None

  kind: Managed \| Shared \| Dedicated

  storageaccounttype: Standard_LRS \| StandardSSD_LRS \| Premium_LRS \| UltraSSD_LRS

provisioner: disk.csi.azure.com \| kubernetes.io/azure-disk \| kubernetes.io/aws-ebs \| kubernetes.io/gce-pd

reclaimPolicy: Delete \| Retain \| Recycle

volumeBindingMode: WaitForFirstConsumer \| Immediate

### Azure Disks

Xx

## Kubernetes Ingress Services

<img src="subjects/tech/azure/az-aks-complete/img/media/image37.webp" style="width:6.90556in;height:3.67292in" />

For sample implementation refer the ‘kubernetes-cheat-sheet.sh’

## Kubernetes Domain name driven routing

<img src="subjects/tech/azure/az-aks-complete/img/media/image38.webp" style="width:7.6875in;height:4.19722in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image39.webp" style="width:7.6875in;height:4.07014in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image40.webp" style="width:7.6875in;height:4.07014in" />

## Kubernetes Fundamentals (Requests and Limits)

<img src="subjects/tech/azure/az-aks-complete/img/media/image41.webp" style="width:6.08472in;height:3.13958in" />

Running same instance of an image (or two containers of same ‘kind’) not recommended. From Udemy Kaila course

<img src="subjects/tech/azure/az-aks-complete/img/media/image42.webp" style="width:3.67292in;height:1.97639in" />

## Kubernetes Fundamentals (Namespaces and DNS)

<img src="subjects/tech/azure/az-aks-complete/img/media/image43.webp" style="width:7.67917in;height:4.00972in" />

## Kubernetes Fundamentals (Limit Range)

<img src="subjects/tech/azure/az-aks-complete/img/media/image44.webp" style="width:7.67917in;height:4.02847in" />

## Kubernetes Fundamentals (Virtual Nodes or Serverless)

<img src="subjects/tech/azure/az-aks-complete/img/media/image45.webp" style="width:7.67917in;height:3.37708in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image46.webp" style="width:7.67917in;height:4.04722in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image47.webp" style="width:7.67917in;height:4in" />

## Kubernetes Fundamentals (Container Registry)

<img src="subjects/tech/azure/az-aks-complete/img/media/image48.webp" style="width:7.67917in;height:4.07569in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image49.webp" style="width:7.67917in;height:4.10347in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image50.webp" style="width:7.6875in;height:4.12222in" />

## Kubernetes Fundamentals (Azure pipelines)

<img src="subjects/tech/azure/az-aks-complete/img/media/image51.webp" style="width:7.6875in;height:3.97083in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image52.webp" style="width:7.67917in;height:4.02847in" />

## Kubernetes Fundamentals (Pipelines)

<img src="subjects/tech/azure/az-aks-complete/img/media/image53.webp" style="width:7.67917in;height:3.78333in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image54.webp" style="width:7.63611in;height:4in" />

## Kubernetes Fundamentals (Customized pipeline)

<img src="subjects/tech/azure/az-aks-complete/img/media/image55.webp" style="width:7.67917in;height:3.94306in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image56.webp" style="width:7.67917in;height:4in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image57.webp" style="width:7.6875in;height:4.10278in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image58.webp" style="width:7.6875in;height:4.05625in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image59.webp" style="width:7.6875in;height:3.79861in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image60.webp" style="width:7.63611in;height:3.45486in" />

## Kubernetes Fundamentals (http app routing – add on)

<img src="subjects/tech/azure/az-aks-complete/img/media/image61.webp" style="width:7.67917in;height:4.09444in" />

## Kubernetes Fundamentals (Cluster Access)

<img src="subjects/tech/azure/az-aks-complete/img/media/image62.webp" style="width:7.67917in;height:3.97153in" />

## Kubernetes Fundamentals (Active Directory Authentication)

<img src="subjects/tech/azure/az-aks-complete/img/media/image63.webp" style="width:7.67917in;height:4.09444in" />

## Kubernetes Fundamentals (RBAC)

Must watch : <https://www.youtube.com/watch?v=MGCF6slXG0w>

<img src="subjects/tech/azure/az-aks-complete/img/media/image64.webp" style="width:7.6875in;height:4.04653in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image65.webp" style="width:7.67917in;height:3.94306in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image66.webp" style="width:7.6875in;height:3.97917in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image67.webp" style="width:7.6875in;height:4.07014in" />

## Kubernetes Fundamentals (Auto Scaling)

<img src="subjects/tech/azure/az-aks-complete/img/media/image68.webp" style="width:7.6875in;height:4.38611in" />

## Kubernetes Fundamentals (Production grade cluster)

<img src="subjects/tech/azure/az-aks-complete/img/media/image69.webp" style="width:7.67917in;height:4.77361in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image70.webp" style="width:7.67917in;height:4.14167in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image71.webp" style="width:7.67917in;height:4.07569in" />

## Kubernetes Fundamentals (CLI Access)

<img src="subjects/tech/azure/az-aks-complete/img/media/image72.webp" style="width:7.67917in;height:4in" />

<img src="subjects/tech/azure/az-aks-complete/img/media/image73.webp" style="width:7.63611in;height:4.09097in" />

#  Kubernetes Cluster Intro

## Kubernetes (AKS Architecture)

<img src="subjects/tech/azure/az-aks-complete/img/media/image74.webp" style="width:7.6875in;height:4.48056in" alt="Diagram Description automatically generated" />

#  Kubernetes on Docker - LINUX (Ubuntu) 

##  Setup Docker 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>sudo apt-get update &amp;&amp; sudo apt-get install -y docker.io</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image75.webp" style="width:7.67847in;height:1.475in" /></p></td>
</tr>
<tr>
<td><p>docker --version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image76.webp" style="width:5.59375in;height:0.8125in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p># Check Docker service status</p>
<p>systemctl status docker</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image77.webp" style="width:7.67778in;height:2.47361in" /></p></td>
</tr>
<tr>
<td><p>→If the docker is installed using the ‘snap’ then use below.</p>
<p>snap services docker</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image78.webp" style="width:7.67778in;height:2.24236in" alt="{226E80AD-D296-47A4-A084-C134EAEB6844}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p># Confirm user is in docker group</p>
<p>groups $USER</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image79.webp" style="width:4.3125in;height:0.53125in" /></p></td>
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
<p>curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" &amp;&amp; chmod +x kubectl &amp;&amp; sudo mv kubectl /usr/local/bin/</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image80.webp" style="width:7.68542in;height:1.34583in" /></p></td>
</tr>
<tr>
<td><p>→Or, alternate way is</p>
<p>sudo snap install kubectl --classic</p></td>
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
<p>ls -l ~/.kube/config</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image81.webp" style="width:7.68611in;height:1.05347in" /></p></td>
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
<p>kubectl config view</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image82.webp" style="width:7.67986in;height:4.90486in" /></p></td>
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
<p>cat ~/.kube/config</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image83.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image84.webp" style="width:7.67153in;height:2.2375in" /></p></td>
</tr>
<tr>
<td><p>If we are using Docker Desktop (on windows) we get this file in below location usually and has similar information.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image85.webp" style="width:7.67778in;height:2.24306in" /></p></td>
</tr>
<tr>
<td><p>File Contents could be seen as below.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image86.webp" style="width:5.65486in;height:3.41667in" /></p></td>
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
<td><p>curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64 &amp;&amp; chmod +x ./kind &amp;&amp; sudo mv ./kind /usr/local/bin/kind</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image87.webp" style="width:7.67778in;height:1.22847in" /></p></td>
</tr>
<tr>
<td><p># Validate kubectl installation</p>
<p>kubectl version --client</p>
<p># Validate KIND installation</p>
<p>kind version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image88.webp" style="width:6.55208in;height:1.82292in" /></p></td>
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
<p>sudo usermod -aG docker $USER</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image89.webp" style="width:6.53125in;height:0.60417in" /></p></td>
</tr>
<tr>
<td><p>newgrp docker</p>
<p>newgrp docker switches your current shell session to the docker group without logging out.</p>
<p>It applies the group membership change immediately so you can access Docker without sudo.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image90.webp" style="width:7.68125in;height:1.37431in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image91.webp" style="width:7.67917in;height:2.13125in" alt="{AFC1FA68-7363-4D9A-9D55-270EA74F5825}" /></p>
<p>curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.22.0/kind-linux-amd64</p>
<p>chmod +x ./kind</p>
<p>sudo mv ./kind /usr/local/bin/kind</p></td>
</tr>
<tr>
<td><p>→In this option we use the downloaded tool as above.</p>
<p>→Create a config file as below. This will create one control plane and 2 data planes (worker nodes)</p>
<p>kind: Cluster</p>
<p>apiVersion: kind.x-k8s.io/v1alpha4</p>
<p>nodes:</p>
<p>  - role: control-plane</p>
<p>  - role: worker</p>
<p>  - role: worker</p></td>
</tr>
<tr>
<td><p>On linux if we want a direct way.</p>
<p>cd /home/sridhara/Downloads/k8cluster</p>
<p>Or on personal laptop</p>
<p>cd /home/admin/Downloads/k8cluster</p>
<p>cat &lt;&lt;EOF &gt; kind-config-workers.yaml</p>
<p>kind: Cluster</p>
<p>apiVersion: kind.x-k8s.io/v1alpha4</p>
<p>nodes:</p>
<p>- role: control-plane</p>
<p>- role: worker</p>
<p>- role: worker</p>
<p>EOF</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image92.webp" style="width:7.68472in;height:3.22569in" /></p></td>
</tr>
<tr>
<td><p>vim kind-config-workers.yaml</p>
<p>cat kind-config-workers.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image93.webp" style="width:4.54583in;height:1.70764in" /></p></td>
</tr>
<tr>
<td><p>→Apply after navigating to appropriate directory. Eg. Wherever it is created.</p>
<p>cd /home/sridhara/Downloads/k8cluster</p>
<p>kind create cluster --name intg-ks --config ./kind-config-workers.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image94.webp" style="width:7.67778in;height:2.43194in" /></p></td>
</tr>
<tr>
<td><p>→Get Cluster Info</p>
<p>kubectl cluster-info --context kind-intg-ks</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image95.webp" style="width:7.68403in;height:0.95139in" /></p></td>
</tr>
<tr>
<td><p>→Get Nodes</p>
<p>kubectl get nodes</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image96.webp" style="width:5.17083in;height:0.89097in" /></p>
<p>kubectl get nodes -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image97.webp" style="width:7.68542in;height:0.54236in" /></p></td>
</tr>
<tr>
<td><p>→Get pods</p>
<p>kubectl get pods -A</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image98.webp" style="width:7.68472in;height:2.43333in" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces</p>
<p>kubectl get ns</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image99.webp" style="width:4.5in;height:1.61458in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image100.webp" style="width:7.68125in;height:4.38958in" /></p>
<p>df -h</p>
<p>The permission given to the mount directory should of ‘vboxsf’ group’.</p>
<p>Currently, it is given as root.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image101.webp" style="width:6.66667in;height:2.76042in" alt="Untitled" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image102.webp" style="width:7.67917in;height:2.85486in" /></p></td>
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
<p>sudo apt install openssh-server</p>
<p>sudo systemctl enable ssh</p>
<p>sudo systemctl start ssh</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image103.webp" style="width:7.68472in;height:3.1375in" /></p></td>
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
<td><p>sudo systemctl is-active ssh</p>
<p>sudo systemctl is-enabled ssh</p>
<p>sudo netstat -tulpn | grep :22</p>
<p>ps aux | grep sshd</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image104.webp" style="width:7.67639in;height:1.79792in" /></p></td>
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
<p>cd "C:\Program Files\Oracle\VirtualBox"</p>
<p>.\VBoxManage.exe list vms</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image105.webp" style="width:7.46875in;height:0.625in" /></p></td>
</tr>
<tr>
<td><p>→Below is on the personal laptop (Lenovo). Notice the ubuntu uuid.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image106.webp" style="width:5.90625in;height:2.375in" alt="{0B9B0BA8-14BC-4700-AC6B-B520610074A1}" /></p></td>
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
<p>cd "C:\Program Files\Oracle\VirtualBox"</p>
<p>.\VBoxManage.exe list vms -l | findstr /C:"Name:" /C:"State:"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image107.webp" style="width:7.67708in;height:1.06806in" /></p></td>
</tr>
<tr>
<td><p>→On personal laptop (Lenovo). Notice it is <strong>running</strong>.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image108.webp" style="width:7.68194in;height:1.21736in" alt="{1D66834D-0406-4FA0-AC78-743796273929}" /></p></td>
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
<td><p>cd "C:\Program Files\Oracle\VirtualBox"</p>
<p>.\VBoxManage.exe modifyvm "ubuntu" --natpf1 "ssh-sri,tcp,,2222,,22"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image109.webp" style="width:7.67639in;height:0.64028in" /></p></td>
</tr>
<tr>
<td><p>Check on UI if this is reflected. Navigate to Network -- Click Port Forwarding --To view</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image110.webp" style="width:6.575in;height:3.75625in" /></p></td>
</tr>
<tr>
<td><p>Notice it is added</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image111.webp" style="width:7.68472in;height:4.43819in" /></p></td>
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
<td><p>Command line</p>
<p>cd "C:\Program Files\Oracle\VirtualBox"</p>
<p>.\VBoxManage.exe startvm "ubuntu"</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image112.webp" style="width:7.5625in;height:1.13542in" /></p></td>
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
<p>cd "C:\Program Files\Oracle\VirtualBox"</p>
<p>.\VBoxManage.exe list vms</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image113.webp" style="width:7.68333in;height:1.31181in" /></p></td>
</tr>
<tr>
<td><p>.\VBoxManage.exe modifyhd "C:\Users\sridhara\VirtualBox VMs\ubuntu\ubuntu.vdi" --resize 50000</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image114.webp" style="width:7.68264in;height:0.57847in" /></p></td>
</tr>
<tr>
<td><p>Once booted check the size.</p>
<p>df -h</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image115.webp" style="width:7.68681in;height:2.15139in" /></p></td>
</tr>
<tr>
<td><p>Notice if it is not picked up run below commands</p>
<p>sudo apt install -y cloud-guest-utils</p>
<p>sudo growpart /dev/sda 2</p>
<p>sudo resize2fs /dev/sda2</p>
<p>df -h</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image116.webp" style="width:7.68542in;height:4.18333in" /></p></td>
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
<td><p>ssh sridhara@localhost -p 2222</p>
<p>Password: <removed>
<p>We will need to provide the username that we want to use to login and then also provide password subsequently.</p>
<p>This will add the host to ‘known hosts’</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image117.webp" style="width:7.68472in;height:5.30694in" /></p></td>
</tr>
</tbody>
</table>

###  Test using some commands

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image118.webp" style="width:7.68194in;height:2.64514in" /> |
| <img src="subjects/tech/azure/az-aks-complete/img/media/image119.webp" style="width:7.67222in;height:2.93403in" /> |

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
<p>docker ps</p>
<p>curl --insecure https://localhost:33579/version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image120.webp" style="width:7.67361in;height:2.53958in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image121.webp" style="width:7.67569in;height:1.66111in" /></p></td>
</tr>
<tr>
<td><p>Via Proxy</p>
<p>kubectl proxy</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image122.webp" style="width:6in;height:0.71875in" /></p>
<p>In another terminal</p>
<p>curl http://localhost:8001/api/v1/namespaces</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image123.webp" style="width:7.6875in;height:3.675in" /></p></td>
</tr>
</tbody>
</table>

###  Check location of Kubeconfig file 

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image81.webp" style="width:7.68611in;height:1.05347in" /> |

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
<p>kubectl config get-contexts</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image124.webp" style="width:7.27083in;height:0.90625in" /></p></td>
</tr>
<tr>
<td><p>Switch the context.</p>
<p>kubectl config get-contexts</p>
<p>kubectl config current-context</p>
<p>kubectl config use-context kind-intg-ks</p>
<p>Kubectl get ns</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image125.webp" style="width:7.68056in;height:4.59583in" /></p></td>
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
<td><p>kind delete cluster --name intg-ks</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image126.webp" style="width:7.67986in;height:1.01597in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image127.webp" style="width:6.45139in;height:4.03194in" /></p></td>
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
<td><p>kubectl get nodes</p>
<p>kubectl cluster-info</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image128.webp" style="width:7.52361in;height:1.63264in" alt="{C3A63BFE-843F-43A9-B2D3-192EF35665A7}" /></p></td>
</tr>
<tr>
<td><p>→Below is docker desktop ‘containers’ ui, notice we have two containers dedicated as ‘control plane’ and ‘data plane’</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image129.webp" style="width:7.53264in;height:2.41389in" alt="{4D8A3349-BA93-48D4-B010-21CA52789738}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image130.webp" style="width:7.52639in;height:2.31181in" alt="{2D4ADFC1-56C1-4880-AAD6-FC578FFC1FA3}" /></p></td>
</tr>
<tr>
<td><p>kind version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image131.webp" style="width:3.84375in;height:1.05208in" alt="{05BA745B-ABB1-43C3-80B0-AAAD479F1059}" /></p></td>
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
<p>kind: Cluster</p>
<p>apiVersion: kind.x-k8s.io/v1alpha4</p>
<p>nodes:</p>
<p>  - role: control-plane</p>
<p>  - role: worker</p>
<p>  - role: worker</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>cd C:\ws\k8basics\101basic-resources\kind-config-with-worker</p>
<p>kind create cluster --name intg-ks --config kind-config-workers.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image132.webp" style="width:7.52917in;height:3.42847in" alt="{22FA731D-6FC8-4C29-9B0F-5B2369932E7C}" /></p></td>
</tr>
<tr>
<td><p>→Get Cluster Info</p>
<p>kubectl cluster-info --context kind-intg-ks</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image133.webp" style="width:7.5375in;height:1.01736in" alt="{7A520A28-2259-4808-8576-04EB1E261C1B}" /></p></td>
</tr>
<tr>
<td><p>→Get Nodes</p>
<p>kubectl get nodes</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image134.webp" style="width:7.53403in;height:1.44931in" alt="{BB196FA5-575F-4422-88DC-17F673DAA6EF}" /></p>
<p>kubectl get nodes -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image135.webp" style="width:7.53056in;height:0.55in" alt="{FAEA90AC-5D02-44F8-A7B9-3622986BDD40}" /></p></td>
</tr>
<tr>
<td><p>→Get pods</p>
<p>kubectl get pods -A</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image136.webp" style="width:7.53333in;height:2.49583in" alt="{254C9B9B-B5D2-405F-818C-0017EEB70B1F}" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces</p>
<p>kubectl get ns</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image137.webp" style="width:7.54167in;height:1.81875in" alt="{02DC8378-7E6F-4F5B-9F50-066CAFD63A76}" /></p></td>
</tr>
<tr>
<td><p>→Check resources that come as part of the vanila kubernetes. Notice the resources we commonly use like configmaps, pods, deployments, secrets etc.</p>
<p>kubectl api-resources</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image138.webp" style="width:7.68403in;height:3.72083in" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: Namespace</p>
<p>metadata:</p>
<p>  name: integrations</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>cd C:\ws\k8basics\101basic-resources</p>
<p>kubectl apply -f .\namespace.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image139.webp" style="width:7.33333in;height:1.13542in" alt="{6A76B42D-16ED-4194-9075-7224C127D068}" /></p></td>
</tr>
<tr>
<td><p>→Change Namespace or Switch Namespace</p>
<p>kubectl config set-context --current --namespace="integrations"</p></td>
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
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: nginx-pod</p>
<p>  namespace: integrations</p>
<p>  labels:</p>
<p>    app: nginx</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: nginx</p>
<p>    image: nginx:latest</p>
<p>    ports:</p>
<p>    - containerPort: 80</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\pod.yaml</p>
<p>kubectl get pods</p>
<p>kubectl get pods -n integrations -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image140.webp" style="width:7.52292in;height:1.5625in" alt="{319E1469-255E-45D3-8758-0AF32CF037CF}" /></p></td>
</tr>
<tr>
<td><p>→Get the logs of the pod container</p>
<p>kubectl logs nginx-pod -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image141.webp" style="width:7.5375in;height:2.24583in" alt="{3818F0E1-639A-4FD0-997C-373AE1959EB6}" /></p></td>
</tr>
<tr>
<td><p>→Delete</p>
<p>kubectl delete -f .\pod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image142.webp" style="width:6.91667in;height:0.73958in" alt="{2E1D8FC9-1A54-4958-B937-9CA7CB78F687}" /></p></td>
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
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: nginx-deployment</p>
<p>  namespace: integrations</p>
<p>  labels:</p>
<p>    app: nginx</p>
<p>spec:</p>
<p>  replicas: 2</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: nginx</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: nginx</p>
<p>    spec:</p>
<p>      containers:</p>
<p>      - name: nginx</p>
<p>        image: nginx:latest</p>
<p>        imagePullPolicy: Always   # 👈 ensures fresh pull on every pod start</p>
<p>        ports:</p>
<p>        - containerPort: 80</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl create -f .\deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image143.webp" style="width:7.54167in;height:3.34375in" alt="{8FA6FB31-7DBF-454A-AF31-12CB2F7AD5FC}" /></p></td>
</tr>
<tr>
<td><p>→View Deployments. Notice we have configured ‘2’ replicas and hence in the ‘ready’ state we see 2/2.</p>
<p>kubectl get deployments</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image144.webp" style="width:6.47917in;height:1in" alt="{A6500699-C8DB-40F5-AF31-21A12BF3A208}" /></p></td>
</tr>
<tr>
<td><p>→Describe Deployments</p>
<p>kubectl describe deployment nginx-deployment</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image145.webp" style="width:7.53333in;height:4.52639in" alt="{31EF890A-62A1-4842-A1BD-12B09EBDE703}" /></p></td>
</tr>
<tr>
<td><p>→Scale <strong>up or down</strong> the deployments.</p>
<p>→Just put the number we want and kube automatically adjust based on the current state.</p>
<p>kubectl scale deployments/nginx-deployment --replicas=6</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image146.webp" style="width:7.53264in;height:2.15972in" alt="{5B5E96A5-CE43-4F8C-BF42-E8B010DC6E12}" /></p></td>
</tr>
<tr>
<td><p>→Check workload distribution</p>
<p>kubectl get pods -n integrations -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image147.webp" style="width:7.52986in;height:1.12014in" alt="{B5234EB1-ACB3-42D5-ADF9-C5859351ED3A}" /></p></td>
</tr>
<tr>
<td><p>→Delete Deployments</p>
<p>kubectl delete -f .\deployment.yaml</p></td>
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
<p>apiVersion: apps/v1</p>
<p>kind: DaemonSet</p>
<p>metadata:</p>
<p>  name: nginx-daemonset</p>
<p>  namespace: integrations</p>
<p>  labels:</p>
<p>    app: nginx</p>
<p>spec:</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: nginx</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: nginx</p>
<p>    spec:</p>
<p>      containers:</p>
<p>      - name: nginx</p>
<p>        image: nginx:1.27</p>
<p>        ports:</p>
<p>        - containerPort: 80</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\deamonsets.yaml</p>
<p>kubectl get all</p>
<p>kubectl get pods -n integrations -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image148.webp" style="width:7.5375in;height:2.44375in" alt="{383A71C2-B77F-4D8A-8ABD-8E10C01B521E}" /></p>
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
<p>kubectl delete -f .\deamonsets.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image149.webp" style="width:7.51042in;height:1.15625in" alt="{FC94DDA2-00AD-47F2-ACA0-F3DC864F2C52}" /></p></td>
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
<p>apiVersion: batch/v1</p>
<p>kind: Job</p>
<p>metadata:</p>
<p>  name: hello-job</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  template:</p>
<p>    spec:</p>
<p>      containers:</p>
<p>      - name: hello</p>
<p>        image: busybox:latest</p>
<p>        command: ["echo", "hello world"]</p>
<p>      restartPolicy: Never</p>
<p>  backoffLimit: 2   # retries if it fails</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\job.yaml</p>
<p>kubectl get all</p>
<p>kubectl logs hello-job-wd8lw</p>
<p>→Check the logs of the pod that gets created so that our command is executed</p>
<p>→Notice the hello world.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image150.webp" style="width:7.125in;height:2.65625in" alt="{511BB448-A779-40B7-8404-6BA5ABD08A8E}" /></p></td>
</tr>
<tr>
<td><p>→Delete the Job</p>
<p>kubectl delete -f .\job.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image151.webp" style="width:6.65625in;height:1.46875in" alt="{9B2AFEB2-2ECB-47BF-AC7F-7B819EF8CC47}" /></p></td>
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
<p>apiVersion: batch/v1</p>
<p>kind: CronJob</p>
<p>metadata:</p>
<p>  name: hello-cronjob</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  schedule: "*/1 * * * *"   # every 1 minute</p>
<p>  jobTemplate:</p>
<p>    spec:</p>
<p>      template:</p>
<p>        spec:</p>
<p>          containers:</p>
<p>          - name: hello</p>
<p>            image: busybox</p>
<p>            args:</p>
<p>            - /bin/sh</p>
<p>            - -c</p>
<p>            - echo "Hello World from CronJob!"</p>
<p>          restartPolicy: OnFailure</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\cronjob.yaml</p>
<p>kubectl get all</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image152.webp" style="width:7.52639in;height:1.45208in" alt="{0EC0F672-DD6E-4826-AC97-208BC6ADE8AC}" /></p></td>
</tr>
<tr>
<td><p>→Validate</p>
<p>kubectl get cronjob -n integrations</p>
<p>kubectl describe cronjob hello-cronjob -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image153.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image154.webp" style="width:5.94167in;height:4.51389in" alt="{E48957DE-EAA9-48D8-A450-D5E7A5C16C4B}" /></p>
<p>kubectl get jobs -n integrations</p>
<p>Below are commands executed at different times like before 1 min or during or after 1 min</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image155.webp" style="width:7.21875in;height:2.26042in" alt="{E56F1AC1-99A9-4967-A2DF-109145629197}" /></p>
<p>→Below is after quite sometime.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image156.webp" style="width:7.36458in;height:1.65625in" alt="{5E768877-D55E-4814-B288-E5418AE8713D}" /></p>
<p>kubectl get pods -n integrations -o wide</p>
<p>kubectl logs hello-cronjob-29280698-jd7pn</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image157.webp" style="width:7.53125in;height:1.06806in" alt="{34778789-3DB9-466E-A5C9-9E3256A66EF6}" /></p></td>
</tr>
<tr>
<td><p>→Delete the job</p>
<p>kubectl delete -f .\cronjob.yaml</p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image158.webp" style="width:3.41667in;height:3.13889in" alt="{DA52F22A-368A-4219-9923-A2F92C35C31A}" /></p></td>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image159.webp" style="width:3.51597in;height:2.95417in" alt="{F017A4DC-A235-4AF0-9A58-A131D6C18076}" /></p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/azure/az-aks-complete/img/media/image160.webp" style="width:6.48264in;height:4.08611in" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: PersistentVolume</p>
<p>metadata:</p>
<p>  name: pv-1gi</p>
<p>spec:</p>
<p>  capacity:</p>
<p>    storage: 1Gi</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  persistentVolumeReclaimPolicy: Retain</p>
<p>  storageClassName: manual</p>
<p>  hostPath:</p>
<p>    path: "/data/pv-1gi"   # Path inside KIND node container</p></td>
</tr>
<tr>
<td><p>→Apply and get PV details</p>
<p>kubectl apply -f .\persistentvolume.yaml</p>
<p>kubectl get pv</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image161.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image162.webp" style="width:7.51875in;height:1.10069in" alt="{6F945E3C-FEE0-4BA7-83DF-7D56B7283824}" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: pvc-1gi</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: 1Gi</p>
<p>  storageClassName: manual</p></td>
</tr>
<tr>
<td><p>→Apply and check the PV status. It is changed to Bound after applying.</p>
<p>kubectl apply -f .\persistentvolumeclaim.yaml</p>
<p>kubectl get pvc</p>
<p>kubectl get pv</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image163.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image164.webp" style="width:7.54097in;height:1.5875in" alt="{0293969C-EE77-4828-B51E-103EA1B7DD67}" /></p></td>
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
<p>kubectl get nodes</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image165.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image166.webp" style="width:6.45833in;height:1.64583in" alt="{4599F0F6-119D-40C1-90F0-BC15ABA165A3}" /></p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: nginx-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: nginx</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: nginx</p>
<p>    spec:</p>
<p>      nodeSelector:</p>
<p>        kubernetes.io/hostname: intg-ks-worker2   # 👈 force schedule here</p>
<p>      containers:</p>
<p>      - name: nginx</p>
<p>        image: nginx:latest</p>
<p>        imagePullPolicy: Always</p>
<p>        ports:</p>
<p>        - containerPort: 80</p>
<p>        volumeMounts:</p>
<p>        - name: nginx-logs</p>
<p>          mountPath: /var/log/nginx   # logs go here, backed by PVC</p>
<p>      volumes:</p>
<p>      - name: nginx-logs</p>
<p>        persistentVolumeClaim:</p>
<p>          claimName: pvc-1gi</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\deployment-with-pvc.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image167.webp" style="width:7.52292in;height:2.51042in" alt="{CC20587C-844D-446D-AAFB-4C0CCF8154D4}" /></p></td>
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
<p>kubectl port-forward -n integrations pod/nginx-deployment-58f5976699-tx4wh 8080:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image168.webp" style="width:7.52569in;height:0.49375in" alt="{444441F6-0552-4DF9-BDC8-797E4383D0CB}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image169.webp" style="width:7.53819in;height:2.23125in" alt="{8523896B-8DDD-4B69-A108-30A2F84C2131}" /></p></td>
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
<p>kubectl exec -it pod/nginx-deployment-58f5976699-tx4wh -n integrations -- /bin/sh</p>
<p>ls -l /var/log/nginx</p>
<p>tail -f /var/log/nginx/access.log</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image170.webp" style="width:7.52431in;height:1.71042in" alt="{B90290BD-8703-40B8-A1E2-0E7CA91DB2A8}" /></p></td>
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
<p>curl http://localhost:8080</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image171.webp" style="width:4.96875in;height:1.41667in" alt="{1E722982-C00C-438E-BBBB-2EAF9519CCFC}" /></p></td>
</tr>
<tr>
<td><p>→Notice additional log captured.</p>
<p>→Note that these logs are seen under the PODS.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image172.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image173.webp" style="width:7.52361in;height:2.19167in" alt="{4BC5F34E-3649-4A32-85B9-D108EE2FE294}" /></p></td>
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
<p>docker container ls -a</p>
<p>kubectl get pods -o wide</p>
<p>docker exec -it intg-ks-worker2 /bin/bash</p>
<p>ls -l /data/pv-1gi</p>
<p>tail -f /data/pv-1gi/access.log</p>
<p>→Notice the last entry.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image174.webp" style="width:7.52847in;height:2.86806in" alt="{6BB16AD6-1275-41C3-B266-0E94043F4429}" /></p></td>
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
<p>kubectl delete pod -n integrations -l app=nginx</p>
<p>kubectl get all</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image175.webp" style="width:7.54167in;height:2.18403in" alt="{69944740-1C55-4B09-A1E9-7564AAF9E84D}" /></p></td>
</tr>
<tr>
<td><p>→Once the new pod comes back, portforward again as previous one will be terminated.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image176.webp" style="width:7.53542in;height:0.52153in" alt="{28AF573E-ECC3-4BE0-A3EC-A167080B80AA}" /></p></td>
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
<p>kubectl exec -it pod/nginx-deployment-58f5976699-6fpqf -n integrations -- /bin/sh</p>
<p>ls -l /var/log/nginx</p>
<p>tail -f /var/log/nginx/access.log</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image177.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image178.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image179.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image180.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image181.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image182.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image183.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image184.webp" style="width:7.53889in;height:2.10347in" alt="{F3C5CEEB-6FF7-4507-AE25-A911B1985E4D}" /></p>
<p>→Check the worker2 node tailing as well. Notice here as well the entries persist.</p>
<p>docker container ls -a</p>
<p>kubectl get pods -o wide</p>
<p>docker exec -it intg-ks-worker2 /bin/bash</p>
<p>ls -l /data/pv-1gi</p>
<p>tail -f /data/pv-1gi/access.log</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image185.webp" style="width:7.53819in;height:2.8875in" alt="{7A2E6BB6-E6AE-4CC8-8E50-C34E38D9D977}" /></p></td>
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
<td><p>kubectl get all</p>
<p>kubectl delete -f .\deployment-with-pvc.yaml</p>
<p>kubectl delete -f .\persistentvolumeclaim.yaml</p>
<p>kubectl delete -f .\persistentvolume.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image186.webp" style="width:7.52778in;height:4.03403in" alt="{C91A7AEF-1371-458F-B206-421495C3100D}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image187.webp" style="width:6.10069in;height:3.18125in" /></p></td>
</tr>
<tr>
<td><p>Types of Service</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image188.webp" style="width:7.6875in;height:2.24444in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image189.webp" style="width:6.48958in;height:3.3125in" /></p></td>
</tr>
<tr>
<td><p>→Create a file</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: nginx-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: nginx</p>
<p>  ports:</p>
<p>  - protocol: TCP</p>
<p>    port: 80</p>
<p>    targetPort: 80</p>
<p>    nodePort: 30080   # host-accessible port</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\pod.yaml</p>
<p>kubectl apply -f .\service.yaml</p>
<p>kubectl get svc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image190.webp" style="width:6.58333in;height:0.70833in" alt="{5D646B8E-1C34-4FB5-AEAD-61ABE4DEDF65}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image191.webp" style="width:7.35417in;height:0.60417in" alt="{566EB911-6D91-48FB-AE6E-0A40596A730E}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image192.webp" style="width:7.41667in;height:1.04167in" alt="{EACB28CE-39D6-49D0-8AC0-EE90F385DA9D}" /></p></td>
</tr>
<tr>
<td><p>→Given we are running kubernetes on local setup (KIND), we will not have a DEDICATED node which inturn will have an IP for itself and a port for itself. Hence, we will use typical Portforward option to test.</p>
<p>→Port forward</p>
<p>kubectl port-forward -n integrations service/nginx-service 8080:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image193.webp" style="width:7.53333in;height:0.62014in" alt="{BDF9F7E2-0294-4FD5-98A5-3EE71952E54A}" /></p></td>
</tr>
<tr>
<td><p>→Access</p>
<p>curl http://localhost:8080</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image194.webp" style="width:6.38542in;height:2.45833in" alt="{94F1E9D5-AAF3-4DAB-A8F0-01B286730831}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image195.webp" style="width:7.53611in;height:2.36181in" alt="{FBC0284B-1DA2-4D1E-AF2C-74789C7A776E}" /></p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<p>kubectl delete -f .\pod.yaml</p>
<p>kubectl delete -f .\service.yaml</p>
<p>kubectl get all</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image196.webp" style="width:7.53611in;height:2.05833in" alt="{65BBD1A8-D475-42F8-B8F9-CAFDAA2B1D27}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image197.webp" style="width:3.10972in;height:1.75833in" /></p></td>
</tr>
<tr>
<td><p>→Create with Cluster IP.</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: nginx-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: ClusterIP   # 👈 only inside cluster</p>
<p>  selector:</p>
<p>    app: nginx</p>
<p>  ports:</p>
<p>  - protocol: TCP</p>
<p>    port: 80</p>
<p>    targetPort: 80</p>
<p>→Apply</p>
<p>kubectl apply -f .\pod.yaml</p>
<p>kubectl apply -f .\service-clusterip.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image198.webp" style="width:7.54167in;height:2.51389in" alt="{B9A996C4-8722-48EF-9ADF-976532D75086}" /></p></td>
</tr>
<tr>
<td><p>→Port forward</p>
<p>kubectl port-forward -n integrations service/nginx-service 8080:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image199.webp" style="width:7.53403in;height:0.95139in" alt="{7D658056-FB18-41B8-99EA-7974C2AFCC35}" /></p></td>
</tr>
<tr>
<td><p>→Access the curl</p>
<p>curl <a href="http://localhost:8080">http://localhost:8080</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image200.webp" style="width:7.54097in;height:2.85903in" alt="{26655636-525B-4228-86B7-6DEAAC9CEC67}" /></p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<p>kubectl delete -f .\service.yaml</p>
<p>kubectl delete -f .\pod.yaml</p></td>
</tr>
<tr>
<td><p>→We can create a service using simple command line as well instead of proper yaml for testing purposes.</p>
<p>kubectl create service clusterip ping-svc --tcp=80:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image201.webp" style="width:7.68194in;height:0.96181in" /></p></td>
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
<p>kubectl get pods</p>
<p>→Create backend pod using simple nginx.</p>
<p>kubectl run backend-pod --image=nginx</p>
<p>→Create fronend pod using simple ubuntu and put it to sleep for an hour or so for our interactions.</p>
<p>kubectl run frontend-pod --image=ubuntu --command -- sleep 36000</p>
<p>kubectl get pods -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image202.webp" style="width:7.67986in;height:1.60764in" /></p>
<p>kubectl get pods -o wide</p>
<p>→Here capture the ‘backend private ip’ as it will be used ahead in terminal of fronend for a simple curl.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image203.webp" style="width:7.67431in;height:0.49514in" /></p></td>
</tr>
<tr>
<td><p>→Connect to fronend-pod to see if there is a connection between FE and BE. Install ‘curl’ if it is not available</p>
<p>kubectl exec -it frontend-pod --bash</p>
<p>curl</p>
<p>apt-get update &amp;&amp; apt-get install curl -y</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image204.webp" style="width:7.68472in;height:1.82222in" /></p>
<p>→Once the curl is installed, let us fire a simple curl and see if BE gives some response. Given it is a simple nginx, it should give us some static content as shown in screenshot.</p>
<p>curl 10.244.1.3</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image205.webp" style="width:7.67917in;height:5.17361in" /></p>
<p>→Upto to this we have done a simple communication between frontend and back without any service as below diagram.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image206.webp" style="width:2.05208in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Now let us introduce a service in between to see how it becomes beneficial.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image207.webp" style="width:3.10417in;height:3.5625in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have tested using the curl, let us create a simple service in between and add something called an endpoint</p>
<p>→Open a new terminal and ensure you are in the directory where the yamls are there.</p>
<p>cd /media/sf_ws/k8basics/cka</p>
<p>ls -l</p>
<p>kubectl get service</p>
<p>kubectl apply -f <strong>017a-service-for-single-backend</strong>.yaml</p>
<p>kubectl get service</p>
<p>kubectl describe service simple-be-service</p>
<p>→Notice that when we described the service it does not have any ‘endpoints’ and the service itself will have an IP.</p>
<p>→In next step let us add an endpoint to the service.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image208.webp" style="width:7.68472in;height:6.70556in" /></p></td>
</tr>
<tr>
<td><p>→Add endpoint to service.</p>
<p>kubectl apply -f <strong>017b-endpoint-for-service</strong>.yaml</p>
<p>kubectl describe service simple-be-service</p>
<p>→Notice that once we added an endpoint, the service now has one endpoint registered with it.</p>
<p>→It is hardcoded-for-sure and it is just to understand the topics corrects.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image209.webp" style="width:7.68472in;height:3.4375in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have an IP for ‘service’ and an ‘endpoint’ is attached, let us fire a curl now to ‘service-ip’ instead of directly to ‘BE-IP’. Notice once we fire using the ‘service ip’ we get a response as well.</p>
<p>curl 10.96.253.110</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image210.webp" style="width:7.68333in;height:4.73056in" /></p></td>
</tr>
<tr>
<td><p>→Let us delete the service and endpoint automatically gets deleted</p>
<p>kubectl delete service simple-be-service</p>
<p>kubectl get endpoints</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image211.webp" style="width:7.68264in;height:1.05972in" /></p></td>
</tr>
<tr>
<td><p>→Yaml for Service: <strong>017a-service-for-single-backend</strong>.yaml</p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Service</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: simple-be-service #This is simple service that receives traffic on port 80 and sends to BE port 80.</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>ports</strong>:</mark></p>
<p><mark><strong>- port</strong>: 80</mark></p>
<p><mark><strong>targetPort</strong>: 80</mark></p></td>
</tr>
<tr>
<td><p>→Yaml for endpoint : <strong>017b-endpoint-for-service</strong>.yaml</p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Endpoints</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: simple-be-service</mark></p>
<p><mark><strong>subsets</strong>:</mark></p>
<p><mark><strong>- addresses</strong>:</mark></p>
<p><mark><strong>- ip</strong>: 10.244.1.3 #IP address must be same as the BE pod. This is hardcoded. Next time check the pod ip that is provisioned</mark></p>
<p><mark><strong>ports</strong>:</mark></p>
<p><mark><strong>- port</strong>: 80</mark></p></td>
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
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Service</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx-service</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark> <strong>app</strong>: backend-nginx-pods #This must be same as to be defined for the pod or deployment etc as an appropriate label.</mark></p>
<p><mark><strong>ports</strong>:</mark></p>
<p><mark><strong>- port</strong>: 80</mark></p>
<p><mark><strong>targetPort</strong>: 80</mark></p></td>
</tr>
<tr>
<td><p>→In this approach, we are going to create ‘service’ that has a field called ‘selector’.</p>
<p>→This selector field will ensure that an appropriate backend ‘label’ is choosen.</p>
<p>→Below we have create a service, but currently no pods or no endpoints exists yetc. Note this carefully.</p>
<p>kubectl apply -f 018-service-with-dynamic-backends-usinglabels.yaml</p>
<p>kubectl get svc</p>
<p>kubectl describe svc nginx-service</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image212.webp" style="width:7.68611in;height:3.36181in" /></p></td>
</tr>
<tr>
<td><p>→Check the current pods.</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image213.webp" style="width:7.09375in;height:0.72917in" /></p>
<p>→Now, let us create ‘two’ backendpods and assign ‘labels’ as needed by ‘our service’ yaml. Highlighted in yellow above.</p>
<p>kubectl run backend-pod1 --image=nginx</p>
<p>kubectl run backend-pod2 --image=nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image214.webp" style="width:7.67917in;height:0.76528in" /></p>
<p>→Let us see if they are now part of the service yet? IT WILL NOT BE AS THERE ARE NO LABELS TO IT.</p>
<p>kubectl get pods -o wide</p>
<p>kubectl describe svc nginx-service</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image215.webp" style="width:7.68681in;height:2.84653in" /></p></td>
</tr>
<tr>
<td><p>→Now let us add ‘labels’ to our existing pods and then check the service. Label name is highlighted just to compare with what we have assigned inside the service yaml in the beginning. It must be same. Notice now these two backends are part of the service.</p>
<p>kubectl label pod backend-pod1 app=<mark>backend-nginx-pods</mark></p>
<p>kubectl label pod backend-pod2 app=<mark>backend-nginx-pods</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image216.webp" style="width:7.67917in;height:3.31806in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have the dynamic service that can have backendpods, let us bring in frontend and test from it.</p>
<p>kubectl run frontend-pod --image=ubuntu --command -- sleep 36000</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image217.webp" style="width:7.68403in;height:0.26875in" /></p>
<p>kubectl get pods -o wide</p>
<p>kubectl exec -it frontend-pod -- bash</p>
<p>apt-get update &amp;&amp; apt-get install curl -y</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image218.webp" style="width:7.67778in;height:1.47083in" /></p>
<p>→Then let us fire the curl using the ‘service’ ip. We already have this from our previous invocation and get the service ip.</p>
<p>kubectl get svc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image219.webp" style="width:7.68264in;height:0.63819in" /></p>
<p>curl 10.96.66.238</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image220.webp" style="width:7.67917in;height:4.95278in" /></p>
<p>→Now let us fire using the service name instead of ip address</p>
<p>curl nginx-service</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image221.webp" style="width:6.1875in;height:2.33333in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image222.webp" style="width:6.60417in;height:3.5625in" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: Namespace</p>
<p>metadata:</p>
<p>  name: intg-mysql</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>cd C:\ws\k8basics\101basic-resources\statefulsets</p>
<p>kubectl apply -f .\namespace.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image223.webp" style="width:7.52847in;height:1.04931in" alt="{BC48E53A-DCA6-4732-82D8-D03F549B27D9}" /></p></td>
</tr>
<tr>
<td><p>→Check it is created</p>
<p>kubectl get ns</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image224.webp" style="width:7.05208in;height:2.26042in" alt="{0E0A0866-B4F2-4E79-943F-C4EBCF08C43C}" /></p></td>
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
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: intg-mysql</p>
<p>  namespace: intg-mysql  </p>
<p>  labels:</p>
<p>    app: intg-mysql</p>
<p>spec:</p>
<p>  ports:    </p>
<p>    - port: 3306</p>
<p>      name: mysql</p>
<p>  clusterIP: None   # Headless Service</p>
<p>  selector:</p>
<p>    app: intg-mysql</p>
<p>---</p>
<p>apiVersion: apps/v1</p>
<p>kind: StatefulSet</p>
<p>metadata:</p>
<p>  name: intg-mysql</p>
<p>  namespace: intg-mysql  </p>
<p>  labels:</p>
<p>    app: intg-mysql</p>
<p>spec:</p>
<p>  serviceName: intg-mysql</p>
<p>  replicas: 4</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: intg-mysql</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: intg-mysql</p>
<p>    spec:</p>
<p>      containers:</p>
<p>      - name: mysql</p>
<p>        image: mysql:8.0</p>
<p>        ports:</p>
<p>        - containerPort: 3306</p>
<p>          name: mysql</p>
<p>        env:</p>
<p>        - name: MYSQL_ROOT_PASSWORD</p>
<p>          value: "intgrootpw"</p>
<p>        - name: MYSQL_DATABASE</p>
<p>          value: "integdb"</p>
<p>        - name: MYSQL_USER</p>
<p>          value: "intguser"</p>
<p>        - name: MYSQL_PASSWORD</p>
<p>          value: "intgpw"</p>
<p>        volumeMounts:</p>
<p>        - name: intg-mysql-persistent-storage</p>
<p>          mountPath: /var/lib/mysql</p>
<p>  volumeClaimTemplates:</p>
<p>  - metadata:</p>
<p>      name: intg-mysql-persistent-storage</p>
<p>    spec:</p>
<p>      accessModes: ["ReadWriteOnce"]</p>
<p>      resources:</p>
<p>        requests:</p>
<p>          storage: 1Gi</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\mysql-statefulset.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image225.webp" style="width:7.52917in;height:3.37708in" alt="{1D4F9963-79B2-475A-9564-A393B0D909F0}" /></p></td>
</tr>
<tr>
<td><p>→Check the objects</p>
<p>kubectl get all -n intg-mysql</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image226.webp" style="width:7.5375in;height:2.57639in" alt="{153FB350-31C2-4B8D-A9D5-DA2F4D8DADD8}" /></p>
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
<td><p>kubectl exec -it intg-mysql-0 -n intg-mysql -- mysql -u intguser -pintgpw integdb</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image227.webp" style="width:7.52431in;height:1.8875in" alt="{2B463AF9-E6C6-4BE2-B640-BEE3F2A18523}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image228.webp" style="width:3.20833in;height:2.19792in" alt="{6EBB24F6-9E7E-4EB1-9554-41BC446875CB}" /></p></td>
<td><p>←Notic the DB we have configured in the yamls, which is created.</p></td>
</tr>
<tr>
<td><p>→Create a simple table</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image229.webp" style="width:4.15278in;height:1.69583in" alt="{18CC80BB-2EF7-4AC0-B445-97484128FB84}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image230.webp" style="width:4.16667in;height:1.175in" alt="{511D5E78-B175-4B71-BC4E-E2549119E19C}" /></p></td>
<td><p>INSERT INTO employees (name, department, salary) VALUES</p>
<p>('Alice', 'Engineering', 75000),</p>
<p>('Bob', 'HR', 50000),</p>
<p>('Charlie', 'Finance', 60000);</p></td>
</tr>
<tr>
<td><p>→Query the Tables and Data</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image231.webp" style="width:4.16389in;height:3.54792in" alt="{DF0F6749-0B05-4FFD-89EE-E12175BE0598}" /></p></td>
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
<p>kind: ConfigMap</p>
<p>metadata:</p>
<p>  name: hworld-config</p>
<p>  namespace: integrations</p>
<p>data:</p>
<p>  dbhostname: "db.example.com"</p>
<p>  dbport: "8080"</p>
<p>---</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: hworld-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: hworld</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: hworld</p>
<p>    spec:</p>
<p>      containers:</p>
<p>        - name: hworld</p>
<p>          image: nerdysrisha/hworld056:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          <mark>envFrom:</mark></p>
<p><mark>            - configMapRef:</mark></p>
<p><mark>                name: hworld-config</mark></p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: hworld-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: hworld</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
</tr>
<tr>
<td><p>→Here below are sequence of steps to execute to see the config map project.</p>
<p>→Screenshots are not captured.</p>
<p>cd C:\ws\sboot\lab056</p>
<p>mvn clean package</p>
<p>docker build -t hworld056:latest .</p>
<p>docker tag hworld056:latest nerdysrisha/hworld056:latest<br />
docker push nerdysrisha/hworld056:latest</p>
<p>kubectl delete -f deployment.yaml #if this exists get deleted<br />
kubectl create namespace integrations</p>
<p>kubectl config set-context --current --namespace=integrations</p>
<p>kubectl apply -f deployment.yaml</p>
<p>kubectl port-forward svc/hworld-service -n integrations 8080:8080</p>
<p>curl http://localhost:8080</p>
<p>kubectl get pods</p>
<p>kubectl exec -it hworld-deployment-5f4f8884ff-c65r7 -- env</p>
<p>kubectl edit configmap hworld-config -n integrations</p>
<p>kubectl rollout restart deployment hworld-deployment</p>
<p>kubectl exec -it hworld-deployment-5b897784cc-vxttk -- env</p></td>
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
<p>cd C:\ws\sboot\lab062<br />
mvn clean package</p>
<p>docker build -t hworld062:latest .</p>
<p>docker tag hworld062:latest nerdysrisha/hworld062:latest</p>
<p>docker push nerdysrisha/hworld062:latest</p></td>
</tr>
<tr>
<td><p>→Secret</p>
<p>apiVersion: v1</p>
<p>kind: Secret</p>
<p>metadata:</p>
<p>  name: hworld-secret</p>
<p>  namespace: integrations</p>
<p>type: Opaque</p>
<p>stringData:</p>
<p>  <mark>dbhostname: "db.pista.com"</mark></p>
<p><mark>  dbport: "9000"</mark></p></td>
</tr>
<tr>
<td><p>→Deployment &amp; Service</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: hworld-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: hworld</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: hworld</p>
<p>    spec:</p>
<p>      containers:</p>
<p>        - name: hworld</p>
<p>          image: nerdysrisha/hworld062:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          <mark>envFrom:</mark></p>
<p><mark>            - secretRef:</mark></p>
<p><mark>                name: hworld-secret</mark></p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: hworld-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: hworld</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f secret-config.yaml # This need to be applied first</p>
<p>kubectl apply -f deployment.yaml</p>
<p>kubectl port-forward svc/hworld-service -n integrations 8080:8080</p>
<p>curl http://localhost:8080</p></td>
</tr>
<tr>
<td><p>→View the environment variables. Notice the configuration has dbport and host. NOTICE THEY ARE IN PLAIN TEXT.</p>
<p>→THEY ARE NOT SECURED NATIVELY</p>
<p>kubectl exec -it pod/hworld-deployment-ddc6479fd-l4cz8 -- env</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image232.webp" style="width:6.69792in;height:2.22917in" alt="{F4411331-1301-453A-BAA3-FCA0E6148458}" /></p></td>
</tr>
<tr>
<td><p>→Modify the secret value and rollout</p>
<p>kubectl apply -f secret-config.yaml</p>
<p>kubectl rollout restart deployment hworld-deployment</p>
<p>kubectl port-forward svc/hworld-service -n integrations 8080:8080</p>
<p>curl http://localhost:8080</p>
<p>kubectl exec -it pod/hworld-deployment-xxxxxxx-- env</p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<p>cd C:\ws\sboot\lab062</p>
<p>kubectl delete secret hworld-secret<br />
kubectl delete -f deployment.yaml</p></td>
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
<p>cd C:\ws\sboot\lab063<br />
mvn clean package</p>
<p>#docker build -t hworld063:latest .<br />
#docker run -p 8080:8080 hworld063:latest<br />
#curl http://localhost:8080<br />
docker tag hworld063:latest nerdysrisha/hworld063:latest<br />
docker push nerdysrisha/hworld063:latest<br />
kubectl create namespace integrations<br />
kubectl config set-context --current --namespace=integrations</p></td>
</tr>
<tr>
<td><p>→Create this file</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: hworld-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: hworld</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: hworld</p>
<p>    spec:</p>
<p>      containers:</p>
<p>        - name: hworld</p>
<p>          image: nerdysrisha/hworld063:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          <mark>resources:</mark></p>
<p><mark>            requests:</mark></p>
<p><mark>              cpu: "100m"</mark></p>
<p><mark>              memory: "128Mi"</mark></p>
<p><mark>            limits:</mark></p>
<p><mark>              cpu: "500m"</mark></p>
<p><mark>              memory: "512Mi"</mark></p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: hworld-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: hworld</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f deployment.yaml<br />
#kubectl get all<br />
kubectl port-forward svc/hworld-service -n integrations 8080:8080<br />
curl <a href="http://localhost:8080">http://localhost:8080</a></p></td>
</tr>
<tr>
<td><p>→Run this top command to see the values of cpu / memory.</p>
<p>→In order to run this it is important we have the metrics server up. Refer Section ahead ‘Observability’</p>
<p>→In that section metrics server is mentioned.</p>
<p>kubectl top pod -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image233.webp" style="width:4.8125in;height:0.91667in" alt="{DC216BB8-59EF-4A58-8D6D-F6746E782EF3}" /></p>
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
<td><p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: hworld-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: hworld</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: hworld</p>
<p>    spec:</p>
<p>      containers:</p>
<p>        - name: hworld</p>
<p>          image: nerdysrisha/hworld064:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          resources:</p>
<p>            requests:</p>
<p>              cpu: "100m"</p>
<p>              memory: "128Mi"</p>
<p>            limits:</p>
<p>              cpu: "500m"</p>
<p>              memory: "512Mi"</p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>          <mark>readinessProbe:</mark></p>
<p><mark>            httpGet:</mark></p>
<p><mark>              path: /actuator/health/readiness</mark></p>
<p>              port: 8080</p>
<p>            initialDelaySeconds: 60</p>
<p>            periodSeconds: 20</p>
<p>            timeoutSeconds: 2</p>
<p>            failureThreshold: 3</p>
<p>          <mark>livenessProbe:</mark></p>
<p><mark>            httpGet:</mark></p>
<p><mark>              path: /actuator/health/liveness</mark></p>
<p>              port: 8080</p>
<p>            initialDelaySeconds: 40</p>
<p>            periodSeconds: 20</p>
<p>            timeoutSeconds: 2</p>
<p>            failureThreshold: 3</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: hworld-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: hworld</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
</tr>
<tr>
<td><p>cd C:\ws\sboot\lab064<br />
mvn clean package</p>
<p>docker build -t hworld064:latest .</p>
<p>docker tag hworld064:latest nerdysrisha/hworld064:latest<br />
docker push nerdysrisha/hworld064:latest<br />
kubectl create namespace integrations<br />
kubectl config set-context --current --namespace=integrations<br />
kubectl delete -f .\deployment.yaml<br />
kubectl apply -f deployment.yaml</p>
<p>kubectl port-forward svc/hworld-service -n integrations 8080:8080</p></td>
</tr>
<tr>
<td><p>→Checking the probes</p>
<p>curl http://localhost:8080<br />
curl http://localhost:8080/actuator/health/readiness<br />
curl http://localhost:8080/actuator/health/liveness<br />
curl <a href="http://localhost:8080/actuator/health">http://localhost:8080/actuator/health</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image234.webp" style="width:4.69792in;height:1.61458in" alt="{0B60FA6E-26B1-4552-BC70-0E5B1F11C1FA}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image235.webp" style="width:6.01042in;height:2.875in" alt="{1E1388F1-1C34-4B15-B278-E68D0DE71329}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image236.webp" style="width:5.29167in;height:2.98958in" alt="{DF0E2113-7CD0-4260-AF19-E16ED208C88F}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image237.webp" style="width:5.875in;height:2.85417in" alt="{BE339382-F01D-4934-9D37-EC29FA6C7126}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image238.webp" style="width:5.32153in;height:3.48403in" /></p></td>
</tr>
<tr>
<td><p>→Create below file. Notice the highlighted part where ‘tolerance’ is mentioned. It is like a pass for the workernode that has been tainted/marked with certain key.</p>
<p>→This pass has the same key so scheduler allows this pod to go there.</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: analytics-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: analytics</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: analytics</p>
<p>    spec:</p>
<p><mark>      tolerations:</mark></p>
<p><mark>        - key: "app-key"</mark></p>
<p><mark>          operator: "Equal"</mark></p>
<p><mark>          value: "analytics"</mark></p>
<p><mark>          effect: "NoSchedule"</mark></p>
<p>      containers:</p>
<p>        - name: analytics</p>
<p>          image: nerdysrisha/analytics065:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          resources:</p>
<p>            requests:</p>
<p>              cpu: "500m"</p>
<p>              memory: "512Mi"</p>
<p>            limits:</p>
<p>              cpu: "2"</p>
<p>              memory: "2Gi"</p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: analytics-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: analytics</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
</tr>
<tr>
<td><p>cd C:\ws\sboot\lab065<br />
mvn clean package</p>
<p>docker build -t analytics065:latest .</p></td>
</tr>
<tr>
<td><p>kubectl describe node intg-ks-worker | grep Taints</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image239.webp" style="width:4.03125in;height:0.9375in" alt="{DC20984C-BAC6-4874-93C1-43B3C3182156}" /></p>
<p>kubectl taint nodes intg-ks-worker app-key=analytics:NoSchedule</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image240.webp" style="width:6.4375in;height:0.89583in" alt="{5C612B6A-4EC7-4ACD-BB75-5B75949F028F}" /></p></td>
</tr>
<tr>
<td><p>docker tag analytics065:latest nerdysrisha/analytics065:latest<br />
docker push nerdysrisha/analytics065:latest<br />
kubectl create namespace integrations<br />
kubectl config set-context --current --namespace=integrations<br />
kubectl delete -f .\deployment.yaml<br />
kubectl apply -f deployment.yaml<br />
kubectl get all<br />
kubectl port-forward svc/analytics-service -n integrations 8080:8080</p></td>
</tr>
<tr>
<td><p>→Test the curl</p>
<p>curl http://localhost:8080</p></td>
</tr>
<tr>
<td><p>→Check pods and their node</p>
<p>kubectl get pods -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image241.webp" style="width:7.52917in;height:0.87292in" alt="{C595984F-9E26-4414-9189-D23F078E16F4}" /></p></td>
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
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: analytics-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: analytics</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: analytics</p>
<p>    spec:</p>
<p>      affinity:</p>
<p>        nodeAffinity:</p>
<p>          requiredDuringSchedulingIgnoredDuringExecution:</p>
<p>    <mark>        nodeSelectorTerms:</mark></p>
<p><mark>              - matchExpressions:</mark></p>
<p><mark>                  - key: "kubernetes.io/hostname"</mark></p>
<p><mark>                    operator: "In"</mark></p>
<p><mark>                    values:</mark></p>
<p><mark>                      - intg-ks-worker</mark></p>
<p>      containers:</p>
<p>        - name: analytics</p>
<p>          image: nerdysrisha/analytics:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p>          resources:</p>
<p>            requests:</p>
<p>              cpu: "500m"</p>
<p>              memory: "512Mi"</p>
<p>            limits:</p>
<p>              cpu: "2"</p>
<p>              memory: "2Gi"</p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: analytics-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: analytics</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image242.webp" style="width:5.64236in;height:3in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image243.webp" style="width:7.67778in;height:3.14653in" alt="{D7FB1920-0AEF-491D-BDCC-6E0C70460586}" /></p>
<p>HPA using below.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image244.webp" style="width:7.67986in;height:0.89792in" alt="{331480BD-ADC2-4DBC-AF1E-BC77FA53813B}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image245.webp" style="width:7.67986in;height:3.25694in" alt="{D687F791-DBAC-463E-81C5-485F4E223CB6}" /></p></td>
</tr>
<tr>
<td><p><mark>→Before this step is done ensure metrics server is up. This is super important as pods will need to fetch metrics.</mark></p>
<p><mark>→Refer Metrics Server Section for necessary installation.</mark></p>
<p>kubectl get pods -n kube-system | findstr metrics-server</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image246.webp" style="width:7.52847in;height:0.58194in" alt="{AE6CE15D-131D-4F4E-996C-52DE3DB6734E}" /></p></td>
</tr>
<tr>
<td><p>→Create below yaml</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: hpaenabledhw-deployment</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: hpaenabledhw</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: hpaenabledhw</p>
<p>    spec:</p>
<p>      containers:</p>
<p>        - name: hpaenabledhw</p>
<p>          image: nerdysrisha/hpaenabledhw66:latest</p>
<p>          imagePullPolicy: Always</p>
<p>          ports:</p>
<p>            - containerPort: 8080</p>
<p><mark>          resources:</mark></p>
<p><mark>            requests:</mark></p>
<p><mark>              cpu: "50m"</mark></p>
<p><mark>              memory: "128Mi"</mark></p>
<p><mark>            limits:</mark></p>
<p><mark>              cpu: "200m"</mark></p>
<p><mark>              memory: "256Mi"</mark></p>
<p>          securityContext:</p>
<p>            runAsUser: 1000</p>
<p>            runAsGroup: 1000</p>
<p>            runAsNonRoot: true</p>
<p>            allowPrivilegeEscalation: false</p>
<p>            readOnlyRootFilesystem: true</p>
<p>          volumeMounts:</p>
<p>            - name: tmp-volume</p>
<p>              mountPath: /tmp</p>
<p>      volumes:</p>
<p>        - name: tmp-volume</p>
<p>          emptyDir: {}</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Service</p>
<p>metadata:</p>
<p>  name: hpaenabledhw-service</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  type: NodePort</p>
<p>  selector:</p>
<p>    app: hpaenabledhw</p>
<p>  ports:</p>
<p>    - protocol: TCP</p>
<p>      port: 8080</p>
<p>      targetPort: 8080</p>
<p>      nodePort: 30080</p>
<p>---</p>
<p>apiVersion: autoscaling/v2</p>
<p>kind: HorizontalPodAutoscaler</p>
<p>metadata:</p>
<p>  name: hpaenabledhw-hpa</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  scaleTargetRef:</p>
<p>    apiVersion: apps/v1</p>
<p>    kind: Deployment</p>
<p>    name: hpaenabledhw-deployment</p>
<p>  minReplicas: 1</p>
<p>  maxReplicas: 5</p>
<p>  metrics:</p>
<p>    - type: Resource</p>
<p>      resource:</p>
<p>        name: cpu</p>
<p>        target:</p>
<p>          type: Utilization</p>
<p>          averageUtilization: 50</p></td>
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
<p><mark><strong>apiVersion</strong>: apps/v1</mark></p>
<p><mark><strong>kind</strong>: Deployment</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: php-apache</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark><strong>matchLabels</strong>:</mark></p>
<p><mark><strong>run</strong>: php-apache</mark></p>
<p><mark><strong>template</strong>:</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>labels</strong>:</mark></p>
<p><mark><strong>run</strong>: php-apache</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: php-apache</mark></p>
<p><mark><strong>image</strong>: registry.k8s.io/hpa-example</mark></p>
<p><mark><strong>ports</strong>:</mark></p>
<p><mark><strong>- containerPort</strong>: 80</mark></p>
<p><mark><strong>resources</strong>:</mark></p>
<p><mark><strong>requests</strong>:</mark></p>
<p><mark><strong>cpu</strong>: 50m</mark></p>
<p><mark>---</mark></p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Service</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: php-apache</mark></p>
<p><mark><strong>labels</strong>:</mark></p>
<p><mark><strong>run</strong>: php-apache</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>ports</strong>:</mark></p>
<p><mark><strong>- port</strong>: 80</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark><strong>run</strong>: php-apache</mark></p></td>
</tr>
<tr>
<td><p>→Apply the same</p>
<p>kubectl apply -f 020-hpa-enabled-pod.yaml</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image247.webp" style="width:7.67569in;height:3.25in" /></p></td>
</tr>
<tr>
<td><p>→Ensure metrics server is capturing the cpu and memory</p>
<p>kubectl top pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image248.webp" style="width:7.67986in;height:1in" /></p></td>
</tr>
<tr>
<td><p>→Capture the deployment name, so that in next step it can be used.</p>
<p>kubectl get deployment</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image249.webp" style="width:7.68333in;height:0.83056in" /></p></td>
</tr>
<tr>
<td><p>→Create HPA using the deployment name as highlighted.</p>
<p>kubectl autoscale deployment <strong>php-apache</strong> --cpu-percent=50 --min=1 --max=3</p>
<p>kubectl get hpa</p>
<p>→Give few mins and rerun as we can see ‘unknown’ and replicas are still 0.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image250.webp" style="width:7.67569in;height:1.16528in" /></p>
<p>→Notice now it is available.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image251.webp" style="width:7.67847in;height:1.23542in" /></p></td>
</tr>
<tr>
<td><p>→Now let us pump the load. Open second terminal so that we can have a watch.</p>
<p>→Terminal 1:</p>
<p>kubectl get hpa php-apache --watch</p>
<p>→Terminal 2:</p>
<p>kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image252.webp" style="width:7.67847in;height:2.54861in" /></p>
<p>→After some time, stop the right side load generator and notice the replicas going down. It takes around 4-5 mins as K8s does a graceful shutdown of pods.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image253.webp" style="width:7.68333in;height:1.38681in" /></p></td>
</tr>
<tr>
<td><p>→Important point. Note that for scaling up there is no delay. However, to scale down there is a delay of 5 mins.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image254.webp" style="width:7.68056in;height:1.69097in" /></p>
<p>→This can be controlled as well as shown in next block</p></td>
</tr>
<tr>
<td><p>→Yaml with stabilization window.</p></td>
</tr>
<tr>
<td><p>kubectl create -f 021a-hpa-enabled-pod.yaml</p>
<p>kubectl create -f 021b-hpa-with-stabilization-window.yaml</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image255.webp" style="width:7.68125in;height:1.97569in" /></p></td>
</tr>
<tr>
<td><p>→Open two terminals</p>
<p>→Terminal 1</p>
<p>kubectl get hpa cpu-hpa --watch</p>
<p>→Terminal 2</p>
<p>kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image256.webp" style="width:7.67014in;height:3.26597in" /></p></td>
</tr>
<tr>
<td><p>→Notice the scaling down from 5 to 1 and notice the seconds as we have put just 10 seconds to scale down.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image257.webp" style="width:7.68056in;height:1.48958in" /></p></td>
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
| ![](subjects/tech/azure/az-aks-complete/img/media/image258.webp)![](subjects/tech/azure/az-aks-complete/img/media/image259.webp)<img src="subjects/tech/azure/az-aks-complete/img/media/image260.webp" style="width:6.26875in;height:3.625in" alt="{009B134A-84B6-44BA-90E6-D931F4884163}" /> |

####  Setup Nginx for testing

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Update the ubuntu</p>
<p>sudo apt update</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image261.webp" style="width:7.525in;height:1.37639in" alt="{1AB00FF9-C9BC-4D7E-AE2C-B8CA01D265CD}" /></p></td>
</tr>
<tr>
<td><p>→Install nginx</p>
<p>sudo apt install nginx -y</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image262.webp" style="width:7.5375in;height:1.875in" alt="{CFCC5949-7F10-4B13-8052-8A12839B1C7F}" /></p>
<p>End of completion logs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image263.webp" style="width:7.53125in;height:0.91389in" alt="{D93804F0-7978-4F21-A4FE-A80F93AC777F}" /></p></td>
</tr>
<tr>
<td><p>→Start the nginx and check its status</p>
<p>sudo systemctl start nginx</p>
<p>sudo systemctl status nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image264.webp" style="width:7.53542in;height:2.53056in" alt="{4AD4E4D6-48F7-48F3-883A-AF287D39C0A7}" /></p></td>
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
<p>sudo ufw allow 'Nginx HTTP'</p>
<p>sudo ufw disable</p></td>
</tr>
<tr>
<td><p>→Disable FW for local testing</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image265.webp" style="width:6.58333in;height:0.89583in" alt="{C709BA73-3CED-4680-BF74-27773E27DA58}" /></p></td>
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
<td><p>ip a</p>
<p>IF THE NETWORK IS ‘NAT’ - THIS WILL NOT WORK</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image266.webp" style="width:7.52639in;height:4.16042in" alt="{8D708FCA-BB34-4A57-AA55-58A931B971BB}" /></p></td>
</tr>
<tr>
<td><p>ip a</p>
<p>IF THE NETWORK IS ‘BRIDGED’ - THIS WILL WORK</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image267.webp" style="width:7.53889in;height:3.47917in" alt="{14C80BFE-AC4E-45E3-8040-053E0ECA726F}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image268.webp" style="width:7.52361in;height:2.23403in" alt="{2CBE251F-3F9E-4181-A165-2835AA5EF312}" /></p></td>
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
<td><p>sudo systemctl enable nginx</p>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image269.webp" style="width:7.52014in;height:2.59931in" alt="Image Comparision - Docker file Base Image" /></p></td>
</tr>
<tr>
<td><p>→The one that has <strong>smaller size</strong> is using this docker file</p>
<p># Single stage - much simpler</p>
<p>FROM <strong>eclipse-temurin:22-jre-alpine</strong></p>
<p>WORKDIR /app</p>
<p>COPY target/hworld-0.0.1-SNAPSHOT.jar app.jar</p>
<p>ENTRYPOINT ["java", "-jar", "app.jar"]</p>
<p>EXPOSE 8080</p></td>
<td><p>→The one that has <strong>higher size</strong> is using this docker file</p>
<p>FROM <strong>amazoncorretto:22</strong></p>
<p>LABEL version="1.0"</p>
<p>EXPOSE 8080:8080</p>
<p>WORKDIR /app</p>
<p>COPY target/hworld-0.0.1-SNAPSHOT.jar /app/hworld-0.0.1-SNAPSHOT.jar</p>
<p>ENTRYPOINT ["java", "-jar", "hworld-0.0.1-SNAPSHOT.jar"]</p></td>
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
| <img src="subjects/tech/azure/az-aks-complete/img/media/image270.webp" style="width:5.83333in;height:2.55208in" alt="{826D3C69-82F4-462A-AF9D-BD359E36C0E3}" /> |

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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image271.webp" style="width:5.75139in;height:5.02222in" alt="{15ADE8A9-E0C5-4086-8C78-618E8CBED681}" /></p>
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
<p>$ kubectl get roles --all-namespaces</p>
<p>NAMESPACE NAME CREATED AT</p>
<p>kube-public kubeadm:bootstrap-signer-clusterinfo 2025-08-28T10:59:37Z</p>
<p>kube-public system:controller:bootstrap-signer 2025-08-28T10:59:37Z</p>
<p>kube-system extension-apiserver-authentication-reader 2025-08-28T10:59:37Z</p>
<p>kube-system kube-proxy 2025-08-28T10:59:38Z</p>
<p>kube-system kubeadm:kubelet-config 2025-08-28T10:59:37Z</p>
<p>kube-system kubeadm:nodes-kubeadm-config 2025-08-28T10:59:37Z</p>
<p>kube-system system::leader-locking-kube-controller-manager 2025-08-28T10:59:37Z</p>
<p>kube-system system::leader-locking-kube-scheduler 2025-08-28T10:59:37Z</p>
<p>kube-system system:controller:bootstrap-signer 2025-08-28T10:59:37Z</p>
<p>kube-system system:controller:cloud-provider 2025-08-28T10:59:37Z</p>
<p>kube-system system:controller:token-cleaner 2025-08-28T10:59:37Z</p></td>
</tr>
<tr>
<td><p>→Below are the <strong>clusterroles</strong></p>
<p>$ kubectl get clusterroles</p>
<p>NAME CREATED AT</p>
<p>admin 2025-08-28T10:59:36Z</p>
<p>cluster-admin 2025-08-28T10:59:36Z</p>
<p>edit 2025-08-28T10:59:36Z</p>
<p>kindnet 2025-08-28T10:59:41Z</p>
<p>kubeadm:get-nodes 2025-08-28T10:59:37Z</p>
<p>local-path-provisioner-role 2025-08-28T10:59:42Z</p>
<p>system:aggregate-to-admin 2025-08-28T10:59:36Z</p>
<p>system:aggregate-to-edit 2025-08-28T10:59:36Z</p>
<p>system:aggregate-to-view 2025-08-28T10:59:36Z</p>
<p>system:auth-delegator 2025-08-28T10:59:36Z</p>
<p>system:basic-user 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:certificatesigningrequests:nodeclient 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:certificatesigningrequests:selfnodeclient 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:kube-apiserver-client-approver 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:kube-apiserver-client-kubelet-approver 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:kubelet-serving-approver 2025-08-28T10:59:36Z</p>
<p>system:certificates.k8s.io:legacy-unknown-approver 2025-08-28T10:59:36Z</p>
<p>system:controller:attachdetach-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:certificate-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:clusterrole-aggregation-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:cronjob-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:daemon-set-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:deployment-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:disruption-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:endpoint-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:endpointslice-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:endpointslicemirroring-controller 2025-08-28T10:59:36Z</p>
<p>system:controller:ephemeral-volume-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:expand-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:generic-garbage-collector 2025-08-28T10:59:37Z</p>
<p>system:controller:horizontal-pod-autoscaler 2025-08-28T10:59:37Z</p>
<p>system:controller:job-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:legacy-service-account-token-cleaner 2025-08-28T10:59:37Z</p>
<p>system:controller:namespace-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:node-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:persistent-volume-binder 2025-08-28T10:59:37Z</p>
<p>system:controller:pod-garbage-collector 2025-08-28T10:59:37Z</p>
<p>system:controller:pv-protection-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:pvc-protection-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:replicaset-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:replication-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:resourcequota-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:root-ca-cert-publisher 2025-08-28T10:59:37Z</p>
<p>system:controller:route-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:service-account-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:service-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:statefulset-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:ttl-after-finished-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:ttl-controller 2025-08-28T10:59:37Z</p>
<p>system:controller:validatingadmissionpolicy-status-controller 2025-08-28T10:59:37Z</p>
<p>system:coredns 2025-08-28T10:59:38Z</p>
<p>system:discovery 2025-08-28T10:59:36Z</p>
<p>system:heapster 2025-08-28T10:59:36Z</p>
<p>system:kube-aggregator 2025-08-28T10:59:36Z</p>
<p>system:kube-controller-manager 2025-08-28T10:59:36Z</p>
<p>system:kube-dns 2025-08-28T10:59:36Z</p>
<p>system:kube-scheduler 2025-08-28T10:59:36Z</p>
<p>system:kubelet-api-admin 2025-08-28T10:59:36Z</p>
<p>system:monitoring 2025-08-28T10:59:36Z</p>
<p>system:node 2025-08-28T10:59:36Z</p>
<p>system:node-bootstrapper 2025-08-28T10:59:36Z</p>
<p>system:node-problem-detector 2025-08-28T10:59:36Z</p>
<p>system:node-proxier 2025-08-28T10:59:36Z</p>
<p>system:persistent-volume-provisioner 2025-08-28T10:59:36Z</p>
<p>system:public-info-viewer 2025-08-28T10:59:36Z</p>
<p>system:service-account-issuer-discovery 2025-08-28T10:59:36Z</p>
<p>system:volume-scheduler 2025-08-28T10:59:36Z</p>
<p>view 2025-08-28T10:59:36Z</p></td>
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
<p>kubectl get rolebindings,clusterrolebindings -A -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image272.webp" style="width:7.52361in;height:1.18681in" alt="{8304BC7D-B3A6-45A0-86E9-3AA7DFDBBDFB}" /></p></td>
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
<p>kubectl get serviceaccounts -A</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image273.webp" style="width:6.98958in;height:2.79167in" alt="{FD981128-D7B6-4DF0-B7BB-B84A48058826}" /></p></td>
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
<p>kubectl auth whoami</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image274.webp" style="width:7.52083in;height:1.15833in" alt="{29C19EAC-D99C-4F29-A760-824C9B61DED3}" /></p>
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
<p>kubectl config get-users</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image275.webp" style="width:4.08333in;height:0.90625in" alt="{73EEA1DD-C1D6-4F0C-B2C7-01CC801FD171}" /></p>
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
<p>kubectl auth can-i --list</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image276.webp" style="width:7.52569in;height:4.11875in" alt="{96876265-F3AC-4C1C-8A12-A091A134ADE0}" /></p></td>
</tr>
<tr>
<td><p>→Another simple auth listing for the user</p>
<p>kubectl auth can-i get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image277.webp" style="width:3.3125in;height:1.26042in" alt="{87A78279-A55C-4DB6-989D-013229BBB1AF}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image278.webp" style="width:7.68125in;height:4.12222in" /></p></td>
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
<p>kubectl get ns</p>
<p>kubectl create ns integrations</p></td>
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
<p>kubectl config set-context --current --namespace="integrations"</p></td>
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
<p>kubectl get serviceaccounts -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image279.webp" style="width:6.45833in;height:0.76042in" alt="{F2DC6926-1897-44DB-9D8B-B0D3011ACAAC}" /></p></td>
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
<p>kubectl auth whoami</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image280.webp" style="width:5.4375in;height:1.09375in" alt="{338C4249-80C1-498C-BEA0-52A6D65FF4A9}" /></p>
<p>kubectl auth can-i get pods -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image281.webp" style="width:5.98958in;height:0.80208in" alt="{5A02F64F-BF17-4A34-9A19-C1AA43E02683}" /></p></td>
</tr>
<tr>
<td><p>kubectl auth can-i --list --as=system:serviceaccount:integrations:default -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image282.webp" style="width:7.52431in;height:3.21736in" alt="{B612FB8B-E2CF-4B77-93F1-177CDD95D189}" /></p>
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
<p>kubectl get role integrations-mgr -n integrations -o yaml</p>
<p>cd /home/admin/Downloads/k8basics/roles-sa-bindings</p>
<p>→Before running this ensure the indention is correct else we may get failures.</p>
<p>cat &lt;&lt;'EOF' &gt; integrations-mgr-role.yaml<br />
apiVersion: rbac.authorization.k8s.io/v1<br />
kind: Role<br />
metadata:<br />
namespace: integrations<br />
name: integrations-mgr<br />
rules:<br />
- apiGroups: [""]<br />
resources: ["pods", "services", "configmaps", "secrets"]<br />
verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]<br />
- apiGroups: ["apps"]<br />
resources: ["deployments", "statefulsets"]<br />
verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]<br />
EOF</p>
<p>ls -lrt</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image283.webp" style="width:7in;height:3.21875in" alt="{F00A0E5D-57D4-4235-96C6-02A407A91EF6}" /></p></td>
</tr>
<tr>
<td><p>→What can we configure in apiGroups is depicted in below table.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image284.webp" style="width:7.52431in;height:1.675in" alt="{5911FF15-E843-46D4-B120-B7F6C898A9C8}" /></p></td>
</tr>
<tr>
<td><p>→ Save the file (below is on ‘windows machine)</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image285.webp" style="width:4.79792in;height:3.39097in" alt="{07443082-CB9A-4366-8A84-13FBE1A1F069}" /></p></td>
</tr>
<tr>
<td><p>→Apply the file</p>
<p>kubectl apply -f .\integrations-mgr-role.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image286.webp" style="width:7.35417in;height:0.4375in" alt="{1A365D06-F861-4660-8B7E-9549FAE6CF61}" /></p></td>
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
<td><p>kubectl get role integrations-mgr -n integrations -o yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image287.webp" style="width:7.52292in;height:2.82083in" alt="{1DCD34E2-8571-448D-BC0F-B848970B89A0}" /></p></td>
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
<td><p>kubectl get role -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image288.webp" style="width:4.77083in;height:0.91667in" alt="{D8D6651E-7052-42BA-8F14-41526C8E76A6}" /></p></td>
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
<p>cat &lt;&lt;'EOF' &gt; integrations-mgr-sa.yaml</p>
<p>apiVersion: v1</p>
<p>kind: ServiceAccount</p>
<p>metadata:</p>
<p>namespace: integrations</p>
<p>name: integrations-mgr-sa</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→ Save the file</p></td>
</tr>
<tr>
<td><p>→Apply the object</p>
<p>kubectl apply -f integrations-mgr-sa.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image289.webp" style="width:7.53056in;height:3.64861in" alt="{CF0CD4CC-3A48-444A-A847-25EDBC399E8A}" /></p></td>
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
<p>kubectl get serviceaccount integrations-mgr-sa -n integrations -o yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image290.webp" style="width:7.52361in;height:1.49653in" alt="{12CD0848-986C-4A2B-9FE8-906549C7814A}" /></p></td>
</tr>
<tr>
<td><p>→Note that any namespace will have an SA created automaitcally with the name ‘default’</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image291.webp" style="width:3.35417in;height:1.20833in" alt="{4096FD94-0BA0-4513-8C4E-C51C2B1E0CC6}" /></p></td>
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
<p>kubectl auth can-i <strong>get pods</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa</p>
<p>kubectl auth can-i get pods --as=integrations-mgr-sa -n integrations</p>
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
<p>cat &lt;&lt;'EOF' &gt; integrations-mgr-rolebinding.yaml</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: RoleBinding</p>
<p>metadata:</p>
<p>namespace: integrations</p>
<p>name: integrations-mgr-binding</p>
<p>subjects:</p>
<p>- kind: ServiceAccount</p>
<p>name: integrations-mgr-sa</p>
<p>namespace: integrations</p>
<p>roleRef:</p>
<p>kind: Role</p>
<p>name: integrations-mgr</p>
<p>apiGroup: rbac.authorization.k8s.io</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Save the file and apply</p>
<p>kubectl apply -f integrations-mgr-rolebinding.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image292.webp" style="width:7.52569in;height:2.81528in" alt="{A8AC17B9-F07E-482B-9019-A21B8C5DB32E}" /></p></td>
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
<p>kubectl get rolebinding integrations-mgr-binding -n integrations -o yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image293.webp" style="width:7.52847in;height:2.44097in" alt="{50C0EF3B-07A2-4E2F-B6EB-2946F76D0FE3}" /></p></td>
</tr>
<tr>
<td><p>→Check Namespace level rolebindings</p>
<p>kubectl get rolebinding -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image294.webp" style="width:5.38542in;height:0.9375in" alt="{8DD5DC84-6DBB-4F0D-932A-B874C14FF8B3}" /></p>
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
<p>kubectl get rolebinding integrations-mgr-binding -n integrations -o custom-columns=NAME:.metadata.name,ROLE:.roleRef.name,SERVICEACCOUNT:.subjects[0].name</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image295.webp" style="width:7.52083in;height:0.73194in" alt="{8C871A85-7F9A-4547-98A0-E9BAF6618FC6}" /></p></td>
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
<p>rules:</p>
<p>- apiGroups: [""]</p>
<p>  resources: ["pods", "services", "configmaps", "secrets"]</p>
<p>  verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]</p>
<p>- apiGroups: ["apps"]</p>
<p>  resources: ["deployments", "statefulsets"]</p>
<p>  verbs: ["get", "list", "watch", "create", "update", "patch", "delete"]</p></td>
</tr>
<tr>
<td><p>PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get pods</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa</p>
<p><mark>yes</mark></p>
<p>PS C:\ws\k8basics&gt;</p>
<p>PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get deployments</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa</p>
<p><mark>yes</mark></p>
<p>PS C:\ws\k8basics&gt;</p>
<p>PS C:\ws\k8basics&gt; kubectl auth can-i <strong>get hpa</strong> -n integrations --as=system:serviceaccount:integrations:integrations-mgr-sa</p>
<p><mark>no</mark></p>
<p>PS C:\ws\k8basics&gt;</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image296.webp" style="width:7.52222in;height:1.30833in" alt="{5667AA70-AB23-4E29-92A8-D0822F40D0D9}" /></p></td>
</tr>
<tr>
<td><p>→How to use the new SA (that has necessary role) to get the pods etc.</p>
<p>→Note that the regular kube config already has ‘admin’ already loaded so, any attempt of directly kubectl get pods would not result in errors.</p>
<p>→Hence we will use a typical curl approach.</p>
<p>→Get the token first</p>
<p>TOKEN=<removed> create token integrations-mgr-sa -n integrations)</p>
<p>curl -k -H "Authorization: Bearer <removed> https://127.0.0.1:43731/api/v1/namespaces</p>
<p>curl -k -H "Authorization: Bearer <removed> https://127.0.0.1:43731/api/v1/namespaces/kube-system/pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image297.webp" style="width:7.52986in;height:3.77153in" alt="{C5A55BD9-4C7F-4861-8E96-5FA5D51012EC}" /></p></td>
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
<td><p>kubectl create clusterrole cluster-pod-reader --verb=get,list,watch --resource=pods</p>
<p>kubectl get clusterrole | grep 'reader'</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image298.webp" style="width:7.53056in;height:1.54722in" alt="{269DA78D-6F3E-43AF-BF45-A3CB0E1F39CE}" /></p>
<p>kubectl describe clusterrole cluster-pod-reader</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image299.webp" style="width:7.26042in;height:1.72917in" alt="{8A01FDCA-72AC-4E67-9BDA-5C275463A01F}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image300.webp" style="width:7.51806in;height:2.53194in" alt="{E83F2AAD-D5CB-451D-87D7-F789774DB282}" /></p></td>
</tr>
<tr>
<td><p>kubectl create clusterrolebinding cluster-pod-reader-crb \<br />
--clusterrole=cluster-pod-reader \<br />
--user=system:serviceaccount:integrations:integrations-mgr-s</p>
<p>kubectl get clusterrolebinding | grep 'crb'</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image301.webp" style="width:7.53819in;height:0.72222in" alt="{97243A89-B9F9-4F4D-B6CA-5CD5D78D9311}" /></p>
<p>→Validate the binding</p>
<p>kubectl describe clusterrolebinding cluster-pod-reader-crb</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image302.webp" style="width:7.53403in;height:2.09236in" alt="{BC6C260C-0513-4BC6-9743-15E83A4964EB}" /></p></td>
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
<p>TOKEN=<removed> create token integrations-mgr-sa -n integrations)</p>
<p>curl -k -H "Authorization: Bearer <removed> https://127.0.0.1:43731/api/v1/namespaces/kube-system/pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image303.webp" style="width:7.52569in;height:2.32639in" alt="{62709B7D-E8BD-44F3-B3FC-BC7B1FE91C70}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image304.webp" style="width:4.47292in;height:3.77292in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image305.webp" style="width:6.60694in;height:4.38125in" alt="{8C5BA436-2E08-4096-BDC0-D3AD9FA1888F}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image306.webp" style="width:7.52222in;height:4.94444in" alt="{7E8413E1-13C3-4225-965E-C27383AB37C6}" /></p></td>
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
<td><p>kubectl config get-contexts #(we should see just one)</p>
<p>kubectl config view --minify</p>
<p>kubectl get csr</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image307.webp" style="width:4.29444in;height:4.03472in" alt="{AD83D588-C369-4B58-B992-E22C320DDFC9}" /></p>
<p>→Note we are able to list the pods etc as well.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image308.webp" style="width:4.375in;height:0.77083in" alt="{6D8BC25B-B4EA-40AC-960F-F871D4526E25}" /></p></td>
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
<td><p>sudo mkdir /root/certificates</p>
<p>sudo -i</p>
<p>cd /root/certificates</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image309.webp" style="width:4.70833in;height:0.41667in" alt="{2C7847AB-EB37-41DC-8155-D36A1C7D9411}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image310.webp" style="width:3.47917in;height:1in" alt="{9016167E-B731-4514-8085-4BD1156B5A74}" /></p></td>
</tr>
<tr>
<td><p>openssl genrsa -out nerdylabs.key 2048</p>
<p>openssl req -new -key nerdylabs.key -out nerdylabs.csr -subj "/CN=nerdy/O=nerdylabs"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image311.webp" style="width:7.52847in;height:2.20208in" alt="{D1399C13-3AA6-40B7-9826-1188D9F242E9}" /></p></td>
</tr>
<tr>
<td><p>→Decode and see the certificate</p>
<p>cat nerdylabs.csr | base64 | tr -d '\n'</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image312.webp" style="width:7.53264in;height:1.49097in" alt="{CECE6FAC-4400-4A3A-A600-DC5B7780A0E0}" /></p></td>
</tr>
<tr>
<td><p>→Exit the ‘root’</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image313.webp" style="width:2.85417in;height:0.6875in" alt="{3166C605-8E33-41E9-A1E4-6BAF85F444A7}" /></p></td>
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
<p>cd ~/Downloads/k8basics</p>
<p>ls -lrt</p>
<p>nano csr-requests.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image314.webp" style="width:7.54028in;height:2.08194in" alt="{D7777661-98A5-4ECB-802A-8F987111AA2E}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image315.webp" style="width:5.80208in;height:1.73958in" alt="{FE588022-616B-4984-934D-AB4969D0C3ED}" /></p></td>
</tr>
<tr>
<td><p>kubectl apply -f csr-requests.yaml</p>
<p>kubectl get csr</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image316.webp" style="width:7.52361in;height:1.14861in" alt="{95B46118-1933-44AE-940F-4F205F3C7692}" /></p></td>
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
<td><p>kubectl certificate approve nerdylabs-csr</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image317.webp" style="width:7.525in;height:1.24722in" alt="{DBDFA1F6-D76A-4C95-8467-43CB05CC7DEA}" /></p></td>
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
<td><p>kubectl get csr nerdylabs-csr -o jsonpath='{.status.certificate}' | base64 -d &gt; nerdylabs-csr.crt</p>
<p>→<mark>Important</mark> to note that this certificate will be auto-expired after few hours. Download the same.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image318.webp" style="width:7.52153in;height:1.45764in" alt="{71A5EA05-B6F8-4C3F-9599-EAC1FAB3D169}" /></p></td>
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
<td><p>kubectl get csr nerdylabs-csr -o jsonpath='{.status.certificate}' | base64 -d &gt; nerdylabs-csr.crt</p>
<p>sudo cp /root/certificates/nerdylabs.key ~/Downloads/k8basics/</p>
<p>ls -lrt</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image319.webp" style="width:7.525in;height:2.21042in" alt="{6F7FC03C-8650-4FFB-9857-61CB03DB9FAD}" /></p>
<p>kubectl config set-credentials nerdylabs \</p>
<p>--client-certificate=$HOME/Downloads/k8basics/nerdylabs-csr.crt \</p>
<p>--client-key=$HOME/Downloads/k8basics/nerdylabs.key</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image320.webp" style="width:7.53472in;height:1.18403in" alt="{206D76EC-869C-4BE3-9C80-9EDCDD92F130}" /></p></td>
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
<p>nano role.yaml</p>
<p>ls -lrt</p>
<p>cat role.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image321.webp" style="width:3.42292in;height:2.85278in" alt="{6F5E9F88-9F65-452E-86D5-4D3417C84508}" /></p></td>
</tr>
<tr>
<td><p>→Change the context back to ‘admin’. Remember currently we switched the context to ‘nerdy’ which WILL NOT have authorization to create role and rolebinding.</p>
<p>→So we are switching back to admin, apply the role &amp; rolebinding and then we will switch back to our custom context.</p>
<p>kubectl config use-context kind-intg-ks</p>
<p>kubectl apply -f role.yaml</p>
<p>nano rolebinding.yaml</p>
<p>kubectl apply -f rolebinding.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image322.webp" style="width:7.0625in;height:4.88542in" alt="{0C104543-DB29-42DE-B9B3-687D95245E7F}" /></p></td>
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
<td><p>kubectl --context=nerdylabs-context get pods</p>
<p>→This will fail because ‘integration namespaces is not bound in ‘role &amp; rolebinding’</p>
<p>kubectl --context=nerdylabs-context -n default get pods</p>
<p>→This will suceed as our role and rolebinding is mentioning ‘default’ namespace.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image323.webp" style="width:7.525in;height:1.12708in" alt="{45FE2D14-4D86-4202-89CF-81B6A4640132}" /></p></td>
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
<td><p>cd ~/Downloads/</p>
<p>ls -lrt</p>
<p>curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"</p>
<p>ls -lrt</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image324.webp" style="width:7.52292in;height:4.05625in" alt="{9C9C1079-2D2F-4809-ADAD-EF77D2E58479}" /></p></td>
</tr>
<tr>
<td><p><strong>AWS Commands</strong></p>
<p>unzip awscliv2.zip</p>
<p>ls -lrt</p>
<p>sudo ./aws/install</p>
<p>aws --version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image325.webp" style="width:4.6875in;height:1.82292in" alt="{E2AA3134-4696-42B5-A165-FB7688D8CC64}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image326.webp" style="width:6.58333in;height:3.86458in" alt="{73DAB820-D582-4901-B662-62BC5D622D98}" /></p></td>
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
<p>aws configure sso</p>
<p>admin@Ubuntu:~/Downloads$ <strong>aws configure sso</strong></p>
<p>SSO session name (Recommended): <strong>poc-coco-aws</strong></p>
<p>SSO start URL [None]: <strong>https://d-93671b9731.awsapps.com/start/#</strong></p>
<p>SSO region [None]: <strong>eu-west-1</strong></p>
<p>SSO registration scopes [sso:account:access]: <strong>&lt;HIT ENTER&gt;</strong></p>
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
<p>admin@Ubuntu:~/Downloads$</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image327.webp" style="width:7.52708in;height:2.75069in" alt="{CA4D6113-210A-4143-8AAC-19B8F74BCA25}" /></p></td>
</tr>
<tr>
<td><p>aws sts get-caller-identity --profile sri-devops-coco-aws</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image328.webp" style="width:7.67847in;height:1.29653in" alt="{9D9F367C-87DB-4BFA-8CC2-101510DF2226}" /></p></td>
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
<td><p>aws sso login --profile sri-devops-coco-aws</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image329.webp" style="width:7.675in;height:2.41319in" alt="{C3D6346A-6841-4C8B-824A-3E2A51C5965C}" /></p></td>
</tr>
<tr>
<td><p>→Once we do the sso login we will be redirected to browser. If the session exists, it will be successful else it will prompt for fresh login</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image330.webp" style="width:7.68264in;height:1.24861in" alt="{2B87E803-9ABE-45CA-AEF9-DBF077DF904F}" /></p></td>
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
<td><p>aws sso-admin list-instances --profile sri-devops-coco-aws</p>
<p>aws ec2 describe-instances --profile sri-devops-coco-aws</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image331.webp" style="width:7.21875in;height:3.14583in" alt="{F3462BA0-DAD9-4D36-A5D8-56CC77619BF7}" /></p></td>
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
<td><p>aws configure list-profiles</p>
<p>cp ~/.aws/config ~/.aws/config.bak</p>
<p>cp ~/.aws/credentials ~/.aws/credentials.bak 2&gt;/dev/null</p>
<p>awk '/\[profile sri-devops-coco-aws\]/ {print "[default]"; f=1; next} /^\[/ &amp;&amp; f {f=0} f' ~/.aws/config &gt;&gt; ~/.aws/config</p>
<p>→Below Cat will result in failure which is okay as we are using ‘sso’ driven login and not the ‘credentials’.</p>
<p>cat ~/.aws/credentials</p>
<p>aws configure list-profiles</p>
<p>aws sso login --profile default</p>
<p>aws sts get-caller-identity --profile default</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image332.webp" style="width:4.90625in;height:0.71875in" alt="{B83517D2-3022-4336-BBC9-3FB864EF97D1}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image333.webp" style="width:7.16667in;height:2.59375in" alt="{A7184CE4-7D51-42AA-9E28-938D8C0723AF}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image334.webp" style="width:7.52292in;height:2.75208in" alt="{01690D02-0EB7-4FB0-B2C1-977706EE47C1}" /></p></td>
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
<p>cd /media/sf_ws/nerdy-tech-docs/all-tech-docs/cocopoc/coco-scripts-bkup2</p>
<p>ls -lrt</p>
<p>cp /media/sf_ws/nerdy-tech-docs/all-tech-docs/cocopoc/coco-scripts-bkup2/2-aws-scripts-eks-normal.zip ~/Downloads/</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image335.webp" style="width:7.52292in;height:1.71458in" alt="{1DDCB1C4-3D02-48BC-86DE-0A53D0678C75}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to downloads and unzip the scripts zip</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image336.webp" style="width:7.54167in;height:6.43194in" alt="{76E97CA3-2C45-4197-A3D7-EC6172B6D3CC}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image337.webp" style="width:7.11458in;height:1.47917in" alt="{FC60283B-257C-456F-B5E5-281EA3E1279C}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image338.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
<tr>
<td><p>→Once created we can see the context and nodes as below.</p>
<p>→Note that this context was ‘explicitly added’ using below snippet of a script.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image339.webp" style="width:4.3875in;height:2.63403in" alt="{04868CEB-A008-4958-8F3D-3C33C20EC0ED}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image340.webp" style="width:7.67778in;height:0.81458in" alt="{23BE8860-6D11-48CB-A6DC-955706F245F4}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image341.webp" style="width:7.35417in;height:5.78125in" alt="{4E3A481D-FF1C-4FAA-950D-F19B91A8B3E8}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image342.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 23, 2026, 09_49_11 PM" /></p></td>
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
<td><p>cd ~/.kube</p>
<p>ls -lrt</p>
<p>cat config</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image343.webp" style="width:7.52361in;height:4.91528in" alt="{6B826EAA-C25B-4DDF-8167-F023094C46EC}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image341.webp" style="width:7.35417in;height:5.78125in" alt="{4E3A481D-FF1C-4FAA-950D-F19B91A8B3E8}" /></p></td>
</tr>
<tr>
<td><p>→Notice after adding additional cluster key items as below.</p>
<p>→Clusters</p>
<p>→Contexts</p>
<p>→Users</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image344.webp" style="width:7.51319in;height:8.92847in" /></p></td>
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
<p>cd ~/.kube</p>
<p>ls -lrt</p>
<p>cp config config-tmp</p>
<p>ls -lrt</p>
<p>kubectl get nodes --kubeconfig <strong>config-tmp</strong></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image345.webp" style="width:5.16667in;height:3.01042in" alt="{B2177220-DE49-4D63-957A-F4D1784AE4A5}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image346.webp" style="width:6.35417in;height:2.14583in" alt="{5FB52CBD-C738-4222-9833-3DF4A0F83AD6}" /></p></td>
</tr>
<tr>
<td><p>→Some additional inforation about tdx/non-tdx clusters of ibmcloud.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image347.webp" style="width:7.52083in;height:3.71875in" alt="{C972BA10-D3D0-42FD-9436-3F9D1E5BEBB5}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image348.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 27, 2026, 06_26_00 PM" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image349.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 28, 2026, 06_22_09 AM" /></p></td>
</tr>
<tr>
<td><p>→First let us create a simple pod with ‘two’ containers without any volumes.</p>
<p>→This will be multi container pod.</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ nano simple-multi-containerpod.yaml</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</mark></p>
<p><mark>total 4</mark></p>
<p><mark>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod.yaml</mark></p>
<p><mark>pod/multi-container-pod-simple created</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                         READY   STATUS              RESTARTS       AGE</mark></p>
<p><mark>custom-pod                   1/1     Running             16 (38m ago)   20d</mark></p>
<p><mark>multi-container-pod-simple   0/2     ContainerCreating   0              6s</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                         READY   STATUS    RESTARTS       AGE</mark></p>
<p><mark>custom-pod                   1/1     Running   16 (38m ago)   20d</mark></p>
<p><mark>multi-container-pod-simple   2/2     Running   0              24s</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p>→Notice we have a pod with two containers running. Here is the manifest for that.</p>
<p><mark>apiVersion: v1</mark></p>
<p><mark>kind: Pod</mark></p>
<p><mark>metadata:</mark></p>
<p><mark>  name: multi-container-pod-simple</mark></p>
<p><mark>spec:</mark></p>
<p><mark> containers:</mark></p>
<p><mark> - name: busybox-container-1</mark></p>
<p><mark>   image: busybox</mark></p>
<p><mark>   command: ["sleep", "36000"]</mark></p>
<p><mark> - name: busybox-container-2</mark></p>
<p><mark>   image: busybox</mark></p>
<p><mark>   command: ["sleep", "36000"]</mark></p></td>
</tr>
<tr>
<td><p>→Next we try to create a two container pod but with volumes in it.</p>
<p>→Create a yaml using below contents.</p>
<p><mark>apiVersion: v1</mark></p>
<p><mark>kind: Pod</mark></p>
<p><mark>metadata:</mark></p>
<p><mark>  name: multi-container-pod-with-shared-volume</mark></p>
<p><mark>spec:</mark></p>
<p><mark> volumes:</mark></p>
<p><mark> - name: nerdylabs-emptydir</mark></p>
<p><mark>   emptyDir: {}</mark></p>
<p><mark> containers:</mark></p>
<p><mark> - name: busybox-container-1</mark></p>
<p><mark>   image: busybox</mark></p>
<p><mark>   command: ["sleep", "36000"]</mark></p>
<p><mark>   volumeMounts:</mark></p>
<p><mark>   - name: nerdylabs-emptydir</mark></p>
<p><mark>     mountPath: /shared-folder</mark></p>
<p><mark> - name: busybox-container-2</mark></p>
<p><mark>   image: busybox</mark></p>
<p><mark>   command: ["sleep", "36000"]</mark></p>
<p><mark>   volumeMounts:</mark></p>
<p><mark>   - name: nerdylabs-emptydir</mark></p>
<p><mark>     mountPath: /shared-folder</mark></p></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ nano simple-multi-containerpod-shared-volume.yaml</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod-shared-volume.yaml</mark></p>
<p><mark>pod/multi-container-pod-with-shared-volume created</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                                     READY   STATUS              RESTARTS       AGE</mark></p>
<p><mark>custom-pod                               1/1     Running             17 (25m ago)   20d</mark></p>
<p><mark>multi-container-pod-simple               2/2     Running             2 (25m ago)    22h</mark></p>
<p><mark>multi-container-pod-with-shared-volume   0/2     ContainerCreating   0              6s</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                                     READY   STATUS    RESTARTS       AGE</mark></p>
<p><mark>custom-pod                               1/1     Running   17 (26m ago)   20d</mark></p>
<p><mark>multi-container-pod-simple               2/2     Running   2 (26m ago)    22h</mark></p>
<p><mark>multi-container-pod-with-shared-volume   2/2     Running   0              29s</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p></td>
</tr>
<tr>
<td><p>→Let us describe it and see it</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl describe pod multi-container-pod-with-shared-volume</mark></p>
<p><mark>Name:             multi-container-pod-with-shared-volume</mark></p>
<p><mark>Namespace:        integrations</mark></p>
<p><mark>Priority:         0</mark></p>
<p><mark>Service Account:  default</mark></p>
<p><mark>Node:             intg-ks-worker/172.18.0.2</mark></p>
<p><mark>Start Time:       Mon, 29 Jun 2026 04:34:07 +0000</mark></p>
<p><mark>Labels:           &lt;none&gt;</mark></p>
<p><mark>Annotations:      &lt;none&gt;</mark></p>
<p><mark>Status:           Running</mark></p>
<p><mark>IP:               10.244.1.2</mark></p>
<p><mark>IPs:</mark></p>
<p><mark>  IP:  10.244.1.2</mark></p>
<p><mark>Containers:</mark></p>
<p><mark>  busybox-container-1:</mark></p>
<p><mark>    Container ID:  containerd://5b0439f8e28ae2ee8323845e13b1d37756482d41ea6c8b27f0eecc7c0b59e0b8</mark></p>
<p><mark>    Image:         busybox</mark></p>
<p><mark>    Image ID:      docker.io/library/busybox@sha256:fd8d9aa63ba2f0982b5304e1ee8d3b90a210bc1ffb5314d980eb6962f1a9715d</mark></p>
<p><mark>    Port:          &lt;none&gt;</mark></p>
<p><mark>    Host Port:     &lt;none&gt;</mark></p>
<p><mark>    Command:</mark></p>
<p><mark>      sleep</mark></p>
<p><mark>      36000</mark></p>
<p><mark>    State:          Running</mark></p>
<p><mark>      Started:      Mon, 29 Jun 2026 04:34:12 +0000</mark></p>
<p><mark>    Ready:          True</mark></p>
<p><mark>    Restart Count:  0</mark></p>
<p><mark>    Environment:    &lt;none&gt;</mark></p>
<p><mark>    Mounts:</mark></p>
<p><mark>      /shared-folder from nerdylabs-emptydir (rw)</mark></p>
<p><mark>      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-drvpp (ro)</mark></p>
<p><mark>  busybox-container-2:</mark></p>
<p><mark>    Container ID:  containerd://c8ef91fc4007bada1b5f08a388c97c64cdd2b32824fc372cf7ae21d1c0fe61a8</mark></p>
<p><mark>    Image:         busybox</mark></p>
<p><mark>    Image ID:      docker.io/library/busybox@sha256:fd8d9aa63ba2f0982b5304e1ee8d3b90a210bc1ffb5314d980eb6962f1a9715d</mark></p>
<p><mark>    Port:          &lt;none&gt;</mark></p>
<p><mark>    Host Port:     &lt;none&gt;</mark></p>
<p><mark>    Command:</mark></p>
<p><mark>      sleep</mark></p>
<p><mark>      36000</mark></p>
<p><mark>    State:          Running</mark></p>
<p><mark>      Started:      Mon, 29 Jun 2026 04:34:14 +0000</mark></p>
<p><mark>    Ready:          True</mark></p>
<p><mark>    Restart Count:  0</mark></p>
<p><mark>    Environment:    &lt;none&gt;</mark></p>
<p><mark>    Mounts:</mark></p>
<p><mark>      /shared-folder from nerdylabs-emptydir (rw)</mark></p>
<p><mark>      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-drvpp (ro)</mark></p>
<p><mark>Conditions:</mark></p>
<p><mark>  Type                        Status</mark></p>
<p><mark>  PodReadyToStartContainers   True</mark></p>
<p><mark>  Initialized                 True</mark></p>
<p><mark>  Ready                       True</mark></p>
<p><mark>  ContainersReady             True</mark></p>
<p><mark>  PodScheduled                True</mark></p>
<p><mark>Volumes:</mark></p>
<p><mark>  nerdylabs-emptydir:</mark></p>
<p><mark>    Type:       EmptyDir (a temporary directory that shares a pod's lifetime)</mark></p>
<p><mark>    Medium:    </mark></p>
<p><mark>    SizeLimit:  &lt;unset&gt;</mark></p>
<p><mark>  kube-api-access-drvpp:</mark></p>
<p><mark>    Type:                    Projected (a volume that contains injected data from multiple sources)</mark></p>
<p><mark>    TokenExpirationSeconds:  3607</mark></p>
<p><mark>    ConfigMapName:           kube-root-ca.crt</mark></p>
<p><mark>    Optional:                false</mark></p>
<p><mark>    DownwardAPI:             true</mark></p>
<p><mark>QoS Class:                   BestEffort</mark></p>
<p><mark>Node-Selectors:              &lt;none&gt;</mark></p>
<p><mark>Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s</mark></p>
<p><mark>                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s</mark></p>
<p><mark>Events:</mark></p>
<p><mark>  Type    Reason     Age    From               Message</mark></p>
<p><mark>  ----    ------     ----   ----               -------</mark></p>
<p><mark>  Normal  Scheduled  3m4s   default-scheduler  Successfully assigned integrations/multi-container-pod-with-shared-volume to intg-ks-worker</mark></p>
<p><mark>  Normal  Pulling    3m3s   kubelet            spec.containers{busybox-container-1}: Pulling image "busybox"</mark></p>
<p><mark>  Normal  Pulled     2m59s  kubelet            spec.containers{busybox-container-1}: Successfully pulled image "busybox" in 4.48s (4.48s including waiting)</mark></p>
<p><mark>  Normal  Created    2m59s  kubelet            spec.containers{busybox-container-1}: Created container busybox-container-1</mark></p>
<p><mark>  Normal  Started    2m59s  kubelet            spec.containers{busybox-container-1}: Started container busybox-container-1</mark></p>
<p><mark>  Normal  Pulling    2m59s  kubelet            spec.containers{busybox-container-2}: Pulling image "busybox"</mark></p>
<p><mark>  Normal  Pulled     2m57s  kubelet            spec.containers{busybox-container-2}: Successfully pulled image "busybox" in 1.237s (1.237s including waiting)</mark></p>
<p><mark>  Normal  Created    2m57s  kubelet            spec.containers{busybox-container-2}: Created container busybox-container-2</mark></p>
<p><mark>  Normal  Started    2m57s  kubelet            spec.containers{busybox-container-2}: Started container busybox-container-2</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p></td>
</tr>
<tr>
<td><p>→Now that we have created a pod with ‘two’ containers, let us get into first container and see the shared-volume and create simple file.</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ #Get into 'first container' of the pod</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume -c busybox-container-1 -- sh</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ # ls -lrt</mark></p>
<p><mark>total 52</mark></p>
<p><mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark></p>
<p><mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark></p>
<p><mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark></p>
<p><mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark></p>
<p><mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark></p>
<p><mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark></p>
<p><mark>drwxrwxrwx    2 root     root          4096 Jun 29 04:34 shared-folder</mark></p>
<p><mark>dr-xr-xr-x   13 root     root             0 Jun 29 04:34 sys</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 var</mark></p>
<p><mark>-rw-r--r--    1 root     root            37 Jun 29 04:34 product_uuid</mark></p>
<p><mark>-rw-r--r--    1 root     root             5 Jun 29 04:34 product_name</mark></p>
<p><mark>dr-xr-xr-x  347 root     root             0 Jun 29 04:34 proc</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 etc</mark></p>
<p><mark>drwxr-xr-x    5 root     root           360 Jun 29 04:34 dev</mark></p>
<p><mark>drwx------    1 root     root          4096 Jun 29 04:41 root</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ # cd shared-folder/</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder # touch tempfile.txt</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder # ls -lrt</mark></p>
<p><mark>total 0</mark></p>
<p><mark>-rw-r--r--    1 root     root             0 Jun 29 04:42 tempfile.txt</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark><br />
</mark></p></td>
</tr>
<tr>
<td><p>→Let us now see the same in another container. Notice below the volume is being shared by two containers.</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume -c busybox-container-2 -- sh</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ # ls -lrt</mark></p>
<p><mark>total 52</mark></p>
<p><mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark></p>
<p><mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark></p>
<p><mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark></p>
<p><mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark></p>
<p><mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark></p>
<p><mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark></p>
<p><mark>dr-xr-xr-x   13 root     root             0 Jun 29 04:34 sys</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 var</mark></p>
<p><mark>-rw-r--r--    1 root     root            37 Jun 29 04:34 product_uuid</mark></p>
<p><mark>-rw-r--r--    1 root     root             5 Jun 29 04:34 product_name</mark></p>
<p><mark>dr-xr-xr-x  350 root     root             0 Jun 29 04:34 proc</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 29 04:34 etc</mark></p>
<p><mark>drwxr-xr-x    5 root     root           360 Jun 29 04:34 dev</mark></p>
<p><mark>drwxrwxrwx    2 root     root          4096 Jun 29 04:42 shared-folder</mark></p>
<p><mark>drwx------    1 root     root          4096 Jun 29 04:44 root</mark></p>
<p><mark>/ # cd shared-folder/</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder # ls -lrt</mark></p>
<p><mark>total 0</mark></p>
<p><mark>-rw-r--r--    1 root     root             0 Jun 29 04:42 tempfile.txt</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder #</mark></p></td>
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
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; simple-multi-containerpod-in-memory.yaml &lt;&lt; 'EOF'</mark></p>
<p><mark>apiVersion: v1</mark></p>
<p><mark>kind: Pod</mark></p>
<p><mark>metadata:</mark></p>
<p><mark>  name: multi-container-pod-with-shared-volume-in-memory</mark></p>
<p><mark>  namespace: integrations</mark></p>
<p><mark>spec:</mark></p>
<p><mark>  volumes:</mark></p>
<p><mark>  - name: nerdylabs-emptydir</mark></p>
<p><mark>    emptyDir:</mark></p>
<p><mark>      medium: Memory</mark></p>
<p><mark>  containers:</mark></p>
<p><mark>  - name: busybox-container-1</mark></p>
<p><mark>    image: busybox</mark></p>
<p><mark>    command: ["sleep", "36000"]</mark></p>
<p><mark>    volumeMounts:</mark></p>
<p><mark>    - name: nerdylabs-emptydir</mark></p>
<p><mark>      mountPath: /shared-folder</mark></p>
<p><mark>  - name: busybox-container-2</mark></p>
<p><mark>    image: busybox</mark></p>
<p><mark>    command: ["sleep", "36000"]</mark></p>
<p><mark>    volumeMounts:</mark></p>
<p><mark>    - name: nerdylabs-emptydir</mark></p>
<p><mark>      mountPath: /shared-folder</mark></p>
<p><mark>EOF</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-multi-containerpod-in-memory.yaml</mark></p>
<p><mark>pod/multi-container-pod-with-shared-volume-in-memory created</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                                               READY   STATUS    RESTARTS       AGE</mark></p>
<p><mark>custom-pod                                         1/1     Running   17 (47m ago)   21d</mark></p>
<p><mark>multi-container-pod-simple                         2/2     Running   2 (47m ago)    23h</mark></p>
<p><mark>multi-container-pod-with-shared-volume             2/2     Running   0              21m</mark></p>
<p><mark>multi-container-pod-with-shared-volume-in-memory   2/2     Running   0              10s</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p></td>
</tr>
<tr>
<td><p>→Let us see what happens inside the container.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it multi-container-pod-with-shared-volume-in-memory -c busybox-container-1 -- sh</p>
<p>/ #</p>
<p>/ #</p>
<p>/ #</p>
<p>/ # ls -lrt</p>
<p>total 48</p>
<p>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</p>
<p>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</p>
<p>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</p>
<p>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</p>
<p>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</p>
<p>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</p>
<p>dr-xr-xr-x   13 root     root             0 Jun 29 04:55 sys</p>
<p>drwxrwxrwt    2 root     root            40 Jun 29 04:55 shared-folder</p>
<p>drwxr-xr-x    1 root     root          4096 Jun 29 04:55 var</p>
<p>-rw-r--r--    1 root     root            37 Jun 29 04:55 product_uuid</p>
<p>-rw-r--r--    1 root     root             5 Jun 29 04:55 product_name</p>
<p>dr-xr-xr-x  352 root     root             0 Jun 29 04:55 proc</p>
<p>drwxr-xr-x    1 root     root          4096 Jun 29 04:55 etc</p>
<p>drwxr-xr-x    5 root     root           360 Jun 29 04:55 dev</p>
<p>drwx------    1 root     root          4096 Jun 29 04:57 root</p>
<p>/ # cd shared-folder/</p>
<p>/shared-folder #</p></td>
</tr>
<tr>
<td><p>→Let us get into container and see the folder and also some cmds to see if it is memory driven</p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder # cat /proc/mounts | grep shared-folder</mark></p>
<p><mark>tmpfs /shared-folder tmpfs rw,relatime,size=17805056k,inode64 0 0</mark></p>
<p><mark>/shared-folder #</mark></p>
<p><mark>/shared-folder # df -h | grep shared-folder</mark></p>
<p><mark>tmpfs                    17.0G         0     17.0G   0% /shared-folder</mark></p>
<p><mark>/shared-folder #</mark></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>tmpfs confirms it's 100% in-memory.</p>
<p>The size=17805056k (~17GB) might look large but that's just the cap — it's not actually consuming 17GB of RAM right now. Notice df -h shows 0 used. It only consumes RAM as you actually write files into /shared-folder.</p>
<p>That 17GB cap is Kubernetes defaulting to half the node's total RAM when you don't set a sizeLimit. If you want to restrict it, add sizeLimit to your YAML:</p>
<p>yaml  volumes:</p>
<p>  - name: nerdylabs-emptydir</p>
<p>    emptyDir:</p>
<p>      medium: Memory</p>
<p>      sizeLimit: 256Mi   # cap it to 256MB</p>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image350.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 05_27_33 AM" /></p></td>
</tr>
<tr>
<td><p>→Create a simple yaml as below.</p>
<p>→Note that we are now using a path from host where we would like to store the data.</p>
<p>→<mark>When the pod dies data still remains. Important to note.</mark></p>
<p>cat &gt; simple-single-containerpod-hostpath.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: hostpath-demo-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: test-container</p>
<p>    image: busybox</p>
<p>    command: ["sh", "-c", "sleep 3600"]</p>
<p>    volumeMounts:</p>
<p>    - name: host-volume</p>
<p>      mountPath: /worker-node-data</p>
<p>  volumes:</p>
<p>  - name: host-volume</p>
<p>    hostPath:</p>
<p>      path: /var/demo-data</p>
<p>      type: DirectoryOrCreate</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Apply the yaml and exec into the host path. Highlighted is the path of ‘host’.</p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f simple-single-containerpod-hostpath.yaml</mark></p>
<p><mark>pod/hostpath-demo-pod created</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</mark></p>
<p><mark>NAME                                               READY   STATUS    RESTARTS       AGE</mark></p>
<p><mark>custom-pod                                         1/1     Running   18 (30m ago)   21d</mark></p>
<p><mark>hostpath-demo-pod                                  1/1     Running   0              4s</mark></p>
<p><mark>multi-container-pod-simple                         2/2     Running   4 (30m ago)    46h</mark></p>
<p><mark>multi-container-pod-with-shared-volume             2/2     Running   2 (30m ago)    24h</mark></p>
<p><mark>multi-container-pod-with-shared-volume-in-memory   2/2     Running   2 (30m ago)    23h</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$</mark></p>
<p><mark>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it hostpath-demo-pod -- sh</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ # ls -lrt</mark></p>
<p><mark>total 52</mark></p>
<p><mark>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</mark></p>
<p><mark>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</mark></p>
<p><mark>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</mark></p>
<p><mark>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</mark></p>
<p><mark>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</mark></p>
<p><mark>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</mark></p>
<p><mark>drwxr-xr-x    2 root     root          4096 Jun 30 04:39 worker-node-data</mark></p>
<p><mark>dr-xr-xr-x   13 root     root             0 Jun 30 04:39 sys</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 30 04:39 var</mark></p>
<p><mark>-rw-r--r--    1 root     root            37 Jun 30 04:39 product_uuid</mark></p>
<p><mark>-rw-r--r--    1 root     root             5 Jun 30 04:39 product_name</mark></p>
<p><mark>dr-xr-xr-x  356 root     root             0 Jun 30 04:39 proc</mark></p>
<p><mark>drwxr-xr-x    1 root     root          4096 Jun 30 04:39 etc</mark></p>
<p><mark>drwxr-xr-x    5 root     root           360 Jun 30 04:39 dev</mark></p>
<p><mark>drwx------    1 root     root          4096 Jun 30 04:45 root</mark></p>
<p><mark>/ #</mark></p>
<p><mark>/ #</mark></p></td>
</tr>
</tbody>
</table>

###  Persistence volume (PV → PVC → POD)

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image351.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 06_01_35 AM" /> |
| <img src="subjects/tech/azure/az-aks-complete/img/media/image352.webp" style="width:7.52014in;height:5.01319in" alt="ChatGPT Image Jun 30, 2026, 06_07_03 AM" /> |
| →As part of the development usual processes, the first step is to create PVs followed by PVCs that will be referenced by PODs. |

####  PV & PVCs binding Conditions

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→What happens with PV and PVcs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image353.webp" style="width:7.52153in;height:3.49722in" alt="{C6E08770-C36C-4523-ADB8-AB13EF8437FA}" /></p></td>
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
<p>cat &lt;&lt;EOF &gt; pv1.yaml</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolume</p>
<p>metadata:</p>
<p>  name: manual-pv-250mb</p>
<p>spec:</p>
<p>  storageClassName: manual</p>
<p>  capacity:</p>
<p>    storage: 250Mi</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  hostPath:</p>
<p>    path: /mnt/data/250mb</p>
<p>EOF</p></td>
<td style="text-align: left;"><p>cat &lt;&lt;EOF &gt; pv2.yaml</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolume</p>
<p>metadata:</p>
<p>  name: manual-pv-500mb</p>
<p>spec:</p>
<p>  storageClassName: manual</p>
<p>  capacity:</p>
<p>    storage: 500Mi</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  hostPath:</p>
<p>    path: /mnt/data/500mb</p>
<p>EOF</p></td>
</tr>
<tr>
<td colspan="2"><p>→Validate creation</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</p>
<p>total 24</p>
<p>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</p>
<p>-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml</p>
<p>-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml</p>
<p>-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>No resources found</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td colspan="2"><p>→Apply the yamls and validate creation. Notice the status, where both are available.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pv1.yaml</p>
<p>persistentvolume/manual-pv-250mb created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pv2.yaml</p>
<p>persistentvolume/manual-pv-500mb created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>manual-pv-250mb   250Mi      RWO            Retain           <mark>Available          </mark> manual         &lt;unset&gt;                          10s</p>
<p>manual-pv-500mb   500Mi      RWO            Retain           Available           manual         &lt;unset&gt;                          4s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<p>cat &lt;&lt;EOF &gt; pvc1.yaml</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: manual-pvc-200mb</p>
<p>spec:</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: <mark>200Mi</mark></p>
<p>  storageClassName: manual</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Apply and check PV status.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</p>
<p>total 28</p>
<p>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</p>
<p>-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml</p>
<p>-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml</p>
<p>-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml</p>
<p>-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pvc1.yaml</p>
<p>persistentvolumeclaim/manual-pvc-200mb created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM                           STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>manual-pv-250mb   250Mi      RWO            Retain           <mark>Bound      </mark> integrations/manual-pvc-200mb   manual         &lt;unset&gt;                          19m</p>
<p>manual-pv-500mb   500Mi      RWO            Retain           Available                                   manual         &lt;unset&gt;                          19m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME               STATUS   VOLUME            CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>manual-pvc-200mb   Bound    manual-pv-250mb   250Mi      RWO            manual         &lt;unset&gt;                 4m2s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<p> cat &lt;&lt;EOF &gt; pod.yaml</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: test-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: app</p>
<p>      image: busybox</p>
<p>      command: ["sleep", "3600"]</p>
<p>      volumeMounts:</p>
<p>        - mountPath: "/data"</p>
<p>          name: mydata</p>
<p>  volumes:</p>
<p>    - name: mydata</p>
<p>      persistentVolumeClaim:</p>
<p>        claimName: manual-pvc-200mb</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</p>
<p>total 32</p>
<p>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</p>
<p>-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml</p>
<p>-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml</p>
<p>-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml</p>
<p>-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 309 Jul  1 05:03 pod.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pod.yaml</p>
<p>pod/test-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME              CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM                           STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>manual-pv-250mb   250Mi      RWO            Retain           Bound       integrations/manual-pvc-200mb   manual         &lt;unset&gt;                          27m</p>
<p>manual-pv-500mb   500Mi      RWO            Retain           Available                                   manual         &lt;unset&gt;                          27m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME               STATUS   VOLUME            CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>manual-pvc-200mb   Bound    manual-pv-250mb   250Mi      RWO            manual         &lt;unset&gt;                 8m18s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</p>
<p>NAME                                               READY   STATUS    RESTARTS       AGE</p>
<p>custom-pod                                         1/1     Running   19 (71m ago)   23d</p>
<p>hostpath-demo-pod                                  1/1     Running   2 (11m ago)    24h</p>
<p>multi-container-pod-simple                         2/2     Running   6 (71m ago)    2d23h</p>
<p>multi-container-pod-with-shared-volume             2/2     Running   4 (71m ago)    2d</p>
<p>multi-container-pod-with-shared-volume-in-memory   2/2     Running   4 (71m ago)    2d</p>
<p>test-pod                                           1/1     Running   0              19s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
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
<p>kubectl delete -f pvc1.yaml</p>
<p>kubectl delete -f pv1.yaml</p>
<p>kubectl delete -f pv2.yaml</p></td>
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
<p>PVC = Pending</p></td>
</tr>
<tr>
<td><p>→Storage Class: A StorageClass is the Kubernetes object that defines how storage should be created when a PVC asks for it. It mainly points to a provisioner (driver/plugin) and sets rules like reclaim policy, binding mode, expansion, etc.</p>
<p>→First let us see what all storage classes exists.</p>
<p>dmin@Ubuntu:~$ kubectl get storageclass</p>
<p>NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE</p>
<p>standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d</p>
<p>→Download the new local storage class. (Brief description in next box)</p>
<p>admin@Ubuntu:~$ cd Downloads/k8basics/volumes/</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</p>
<p>total 32</p>
<p>-rw-rw-r-- 1 admin admin 246 Jun 28 05:40 simple-multi-containerpod.yaml</p>
<p>-rw-rw-r-- 1 admin admin 469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml</p>
<p>-rw-rw-r-- 1 admin admin 537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml</p>
<p>-rw-rw-r-- 1 admin admin 347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 209 Jul  1 04:32 pv2.yaml</p>
<p>-rw-rw-r-- 1 admin admin 194 Jul  1 04:55 pvc1.yaml</p>
<p>-rw-rw-r-- 1 admin admin 309 Jul  1 05:03 pod.yaml</p>
<p>→Download the new local storage class. (Using github url)</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ curl -O https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.31/deploy/local-path-storage.yaml</p>
<p>  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current</p>
<p>                                 Dload  Upload   Total   Spent    Left  Speed</p>
<p>100  3824  100  3824    0     0  17398      0 --:--:-- --:--:-- --:--:-- 17461</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ ls -lrt</p>
<p>total 36</p>
<p>-rw-rw-r-- 1 admin admin  246 Jun 28 05:40 simple-multi-containerpod.yaml</p>
<p>-rw-rw-r-- 1 admin admin  469 Jun 29 04:33 simple-multi-containerpod-shared-volume.yaml</p>
<p>-rw-rw-r-- 1 admin admin  537 Jun 29 04:55 simple-multi-containerpod-in-memory.yaml</p>
<p>-rw-rw-r-- 1 admin admin  347 Jun 30 04:35 simple-single-containerpod-hostpath.yaml</p>
<p>-rw-rw-r-- 1 admin admin  209 Jul  1 04:32 pv1.yaml</p>
<p>-rw-rw-r-- 1 admin admin  209 Jul  1 04:32 pv2.yaml</p>
<p>-rw-rw-r-- 1 admin admin  194 Jul  1 04:55 pvc1.yaml</p>
<p>-rw-rw-r-- 1 admin admin  309 Jul  1 05:03 pod.yaml</p>
<p>-rw-rw-r-- 1 admin admin 3824 Jul  4 09:43 <mark>local-path-storage.yaml</mark></p>
<p>→Check what all objects it is going to create. Highlighted for ready reference.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat local-path-storage.yaml</p>
<p>apiVersion: v1</p>
<p>kind: <mark>Namespace</mark></p>
<p>metadata:</p>
<p>  name: local-path-storage</p>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: <mark>ServiceAccount</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner-service-account</p>
<p>  namespace: local-path-storage</p>
<p>---</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: <mark>Role</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner-role</p>
<p>  namespace: local-path-storage</p>
<p>rules:</p>
<p>  - apiGroups: [""]</p>
<p>    resources: ["pods"]</p>
<p>    verbs: ["get", "list", "watch", "create", "patch", "update", "delete"]</p>
<p>---</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: <mark>ClusterRole</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner-role</p>
<p>rules:</p>
<p>  - apiGroups: [""]</p>
<p>    resources: ["nodes", "persistentvolumeclaims", "configmaps", "pods", "pods/log"]</p>
<p>    verbs: ["get", "list", "watch"]</p>
<p>  - apiGroups: [""]</p>
<p>    resources: ["persistentvolumes"]</p>
<p>    verbs: ["get", "list", "watch", "create", "patch", "update", "delete"]</p>
<p>  - apiGroups: [""]</p>
<p>    resources: ["events"]</p>
<p>    verbs: ["create", "patch"]</p>
<p>  - apiGroups: ["storage.k8s.io"]</p>
<p>    resources: ["storageclasses"]</p>
<p>    verbs: ["get", "list", "watch"]</p>
<p>---</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: <mark>RoleBinding</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner-bind</p>
<p>  namespace: local-path-storage</p>
<p>roleRef:</p>
<p>  apiGroup: rbac.authorization.k8s.io</p>
<p>  kind: Role</p>
<p>  name: local-path-provisioner-role</p>
<p>subjects:</p>
<p>  - kind: ServiceAccount</p>
<p>    name: local-path-provisioner-service-account</p>
<p>    namespace: local-path-storage</p>
<p>---</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: <mark>ClusterRoleBinding</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner-bind</p>
<p>roleRef:</p>
<p>  apiGroup: rbac.authorization.k8s.io</p>
<p>  kind: ClusterRole</p>
<p>  name: local-path-provisioner-role</p>
<p>subjects:</p>
<p>  - kind: ServiceAccount</p>
<p>    name: local-path-provisioner-service-account</p>
<p>    namespace: local-path-storage</p>
<p>---</p>
<p>apiVersion: apps/v1</p>
<p>kind: <mark>Deployment</mark></p>
<p>metadata:</p>
<p>  name: local-path-provisioner</p>
<p>  namespace: local-path-storage</p>
<p>spec:</p>
<p>  replicas: 1</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: local-path-provisioner</p>
<p>  template:</p>
<p>    metadata:</p>
<p>      labels:</p>
<p>        app: local-path-provisioner</p>
<p>    spec:</p>
<p>      serviceAccountName: local-path-provisioner-service-account</p>
<p>      containers:</p>
<p>        - name: local-path-provisioner</p>
<p>          image: rancher/local-path-provisioner:v0.0.31</p>
<p>          imagePullPolicy: IfNotPresent</p>
<p>          command:</p>
<p>            - local-path-provisioner</p>
<p>            - --debug</p>
<p>            - start</p>
<p>            - --config</p>
<p>            - /etc/config/config.json</p>
<p>          volumeMounts:</p>
<p>            - name: config-volume</p>
<p>              mountPath: /etc/config/</p>
<p>          env:</p>
<p>            - name: POD_NAMESPACE</p>
<p>              valueFrom:</p>
<p>                fieldRef:</p>
<p>                  fieldPath: metadata.namespace</p>
<p>            - name: CONFIG_MOUNT_PATH</p>
<p>              value: /etc/config/</p>
<p>      volumes:</p>
<p>        - name: config-volume</p>
<p>          configMap:</p>
<p>            name: local-path-config</p>
<p>---</p>
<p>apiVersion: storage.k8s.io/v1</p>
<p>kind: <mark>StorageClass</mark></p>
<p>metadata:</p>
<p>  name: local-path</p>
<p>provisioner: rancher.io/local-path</p>
<p>volumeBindingMode: WaitForFirstConsumer</p>
<p>reclaimPolicy: Delete</p>
<p>---</p>
<p>kind: <mark>ConfigMap</mark></p>
<p>apiVersion: v1</p>
<p>metadata:</p>
<p>  name: local-path-config</p>
<p>  namespace: local-path-storage</p>
<p>data:</p>
<p>  config.json: |-</p>
<p>    {</p>
<p>            "nodePathMap":[</p>
<p>            {</p>
<p>                    "node":"DEFAULT_PATH_FOR_NON_LISTED_NODES",</p>
<p>                    "paths":["/opt/local-path-provisioner"]</p>
<p>            }</p>
<p>            ]</p>
<p>    }</p>
<p>  setup: |-</p>
<p>    #!/bin/sh</p>
<p>    set -eu</p>
<p>    mkdir -m 0777 -p "$VOL_DIR"</p>
<p>  teardown: |-</p>
<p>    #!/bin/sh</p>
<p>    set -eu</p>
<p>    rm -rf "$VOL_DIR"</p>
<p>  helperPod.yaml: |-</p>
<p>    apiVersion: v1</p>
<p>    kind: Pod</p>
<p>    metadata:</p>
<p>      name: helper-pod</p>
<p>    spec:</p>
<p>      priorityClassName: system-node-critical</p>
<p>      tolerations:</p>
<p>        - key: node.kubernetes.io/disk-pressure</p>
<p>          operator: Exists</p>
<p>          effect: NoSchedule</p>
<p>      containers:</p>
<p>      - name: helper-pod</p>
<p>        image: busybox</p>
<p>        imagePullPolicy: IfNotPresent</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→What does the downloaded storage class do. Briefly as below.</p>
<p>Namespace + ServiceAccount → creates an isolated space and identity for the provisioner.</p>
<p>RBAC (Role/ClusterRole + Bindings) → gives it permission to watch PVCs, create/delete PVs, read nodes, and emit events.</p>
<p>Deployment (local-path-provisioner) → runs the controller that listens for PVCs requesting local-path.</p>
<p>StorageClass (local-path) → tells Kubernetes: use rancher.io/local-path provisioner for dynamic PV creation.</p>
<p>ConfigMap (local-path-config) → defines where data is physically stored:</p>
<p>/opt/local-path-provisioner</p>
<p>on each node.</p>
<p>setup script → creates the directory when a volume is provisioned.</p>
<p>teardown script → removes it when PVC/PV is deleted (reclaimPolicy: Delete).</p>
<p>Net result:</p>
<p>PVC (storageClass=local-path)</p>
<p>        ↓</p>
<p>Provisioner creates PV</p>
<p>        ↓</p>
<p>Directory created on node:</p>
<p>/opt/local-path-provisioner/&lt;volume&gt;</p></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-storage.yaml</p>
<p>namespace/local-path-storage unchanged</p>
<p>serviceaccount/local-path-provisioner-service-account unchanged</p>
<p>role.rbac.authorization.k8s.io/local-path-provisioner-role created</p>
<p>clusterrole.rbac.authorization.k8s.io/local-path-provisioner-role configured</p>
<p>rolebinding.rbac.authorization.k8s.io/local-path-provisioner-bind created</p>
<p>clusterrolebinding.rbac.authorization.k8s.io/local-path-provisioner-bind unchanged</p>
<p>deployment.apps/local-path-provisioner configured</p>
<p>storageclass.storage.k8s.io/local-path created</p>
<p>configmap/local-path-config configured</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the storage class.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get storageclass</p>
<p>NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE</p>
<p><mark>local-path           rancher.io/local-path  </mark> Delete          WaitForFirstConsumer   false                  8s</p>
<p>standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Next is to create a PVC</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-pvc.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: local-path-pvc</p>
<p>spec:</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  storageClassName: local-path</p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: 256Mi</p>
<p>EOF</p>
<p>→Apply the pvc.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-pvc.yaml</p>
<p>persistentvolumeclaim/local-path-pvc created</p>
<p>→Check if PVC is created. Notice the status is still shown as pending.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME             STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-pvc   <mark>Pending</mark>                                      local-path     &lt;unset&gt;                 4s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check if PV is created. Notice at this stage NO PV exists.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>No resources found</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Create a pod that references this PVC created above and automatically we can see the status being changed to ‘Bound’ and also a PV getting provisioned.</p>
<p>cat &gt; local-path-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: local-path-test-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: volume-test</p>
<p>    image: nginx</p>
<p>    ports:</p>
<p>    - containerPort: 80</p>
<p>    volumeMounts:</p>
<p>    - name: local-storage</p>
<p>      mountPath: /data</p>
<p>  volumes:</p>
<p>  - name: local-storage</p>
<p>    persistentVolumeClaim:</p>
<p>      claimName: local-path-pvc</p>
<p>EOF</p>
<p>→Apply the YAML</p>
<p>dmin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-pod.yaml</p>
<p>pod/local-path-test-pod created</p>
<p>→Check the PVC status and notice it is bound now after applying.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-pvc   <mark>Bound    </mark>pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 7m18s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Notice the PV is also created.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          12s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Notice the pod created.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod</p>
<p>NAME                                               READY   STATUS    RESTARTS         AGE</p>
<p>custom-pod                                         1/1     Running   21 (4h29m ago)   26d</p>
<p>hostpath-demo-pod                                  1/1     Running   10 (27m ago)     4d5h</p>
<p><mark>local-path-test-pod</mark>                                1/1     Running   0                4m19s</p>
<p>multi-container-pod-simple                         2/2     Running   10 (4h29m ago)   6d4h</p>
<p>multi-container-pod-with-shared-volume             2/2     Running   8 (4h29m ago)    5d5h</p>
<p>multi-container-pod-with-shared-volume-in-memory   2/2     Running   8 (4h29m ago)    5d5h</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→The flow will be like this.</p>
<p>Pod created → PVC consumed → StorageClass triggered → PV dynamically created → Pod starts</p></td>
</tr>
<tr>
<td><p>→How was this provisioned? It is because we have a provisioner pod running that is constantly monitoring for changes and it creates.</p>
<p>→This pod is running in a namespace that got created.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get ns</p>
<p>NAME                 STATUS   AGE</p>
<p>default              Active   26d</p>
<p>integrations         Active   26d</p>
<p>intg-poc             Active   23d</p>
<p>kube-node-lease      Active   26d</p>
<p>kube-public          Active   26d</p>
<p>kube-system          Active   26d</p>
<p><mark>local-path-storage</mark>   Active   26d</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods -n <mark>local-path-storage</mark></p>
<p>NAME                                      READY   STATUS    RESTARTS   AGE</p>
<p>local-path-provisioner-6548cc785f-rb4hg   1/1     Running   0          18m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image354.webp" style="width:7.13333in;height:4.75556in" /></p></td>
</tr>
<tr>
<td><p>→Given we already have a pod created prviously, let us try to delete it and then followed by delete the PVC.</p>
<p>→Then we will observe if PV also gets deleted. Note the highlighted text below where the condition is ‘delete’</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc</p>
<p>NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE</p>
<p>local-path           rancher.io/local-path   <mark>Delete          </mark>WaitForFirstConsumer   false                  6h1m</p>
<p>standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  26d</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          5h48m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-pvc   Bound    pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 5h56m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods</p>
<p>NAME                                               READY   STATUS    RESTARTS         AGE</p>
<p>custom-pod                                         1/1     Running   21 (10h ago)     26d</p>
<p>hostpath-demo-pod                                  1/1     Running   16 (8m12s ago)   4d11h</p>
<p>local-path-test-pod                                1/1     Running   0                5h49m</p>
<p>multi-container-pod-simple                         2/2     Running   12 (14m ago)     6d10h</p>
<p>multi-container-pod-with-shared-volume             2/2     Running   10 (14m ago)     5d11h</p>
<p>multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (14m ago)     5d10h</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-pod.yaml</p>
<p>pod "local-path-test-pod" deleted from integrations namespace</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME             STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-pvc   Bound    pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            local-path     &lt;unset&gt;                 5h56m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                         STORAGECLASS   VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-09fccb76-d72a-467b-9a49-51c77b658339   256Mi      RWO            Delete           Bound    integrations/local-path-pvc   local-path     &lt;unset&gt;                          5h49m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→now let us delete the pvc and check the pv.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-pvc.yaml</p>
<p>persistentvolumeclaim "local-path-pvc" deleted from integrations namespace</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>No resources found in integrations namespace.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get  pv</p>
<p>No resources found</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→In order to retain we need to have a storage class that has policy ‘retain’.</p>
<p>→Two important values here are ‘Retain’ &amp; ‘WaitForFirstConsumer’</p>
<p>→Until a pod starts referencing it the PV does not get created - Important to note.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-sc.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: storage.k8s.io/v1</p>
<p>kind: StorageClass</p>
<p>metadata:</p>
<p>  name: local-path-retain</p>
<p>provisioner: rancher.io/local-path</p>
<p>reclaimPolicy: <mark>Retain</mark></p>
<p>volumeBindingMode: <mark>WaitForFirstConsumer</mark></p>
<p>allowVolumeExpansion: false</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Apply</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-sc.yaml</p>
<p>storageclass.storage.k8s.io/local-path-retain created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the SC</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc</p>
<p>NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE</p>
<p>local-path           rancher.io/local-path   Delete          WaitForFirstConsumer   false                  6h56m</p>
<p><mark>local-path-retain</mark>    rancher.io/local-path   Retain          <mark>WaitForFirstConsumer  </mark> false                  9s</p>
<p>standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  27d</p>
<p>→Create PVC that references the Storage Class.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-pvc.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: local-path-retain-pvc</p>
<p>spec:</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  storageClassName: <mark>local-path-retain</mark></p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: 256Mi</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Apply</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-pvc.yaml</p>
<p>persistentvolumeclaim/local-path-retain-pvc created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the Status of PVC (Note it is pending)</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME                    STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-retain-pvc   Pending                                      local-path-retain   &lt;unset&gt;                 5s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check PV. We will not have any PV as we have ‘waiting for consumer’ configuration.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>No resources found</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Create a pod yaml that references the PVC we created above.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; local-path-retain-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: local-path-retain-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: app</p>
<p>    image: nginx</p>
<p>    volumeMounts:</p>
<p>    - name: app-storage</p>
<p>      mountPath: /data</p>
<p>  volumes:</p>
<p>  - name: app-storage</p>
<p>    persistentVolumeClaim:</p>
<p>      claimName: <mark>local-path-retain-pvc</mark></p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Create a pod</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f local-path-retain-pod.yaml</p>
<p>pod/local-path-retain-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the PVC now and see the status.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME                    STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-retain-pvc   <mark>Bound    </mark>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            local-path-retain   &lt;unset&gt;                 7m35s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the PV and we can see it is created.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Bound    integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          7s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Now that we have all created and bound / attached, let us try to delete one at at time in below sequence.</p>
<p>→Delete Pod → Delete PVC</p>
<p>→Delete pod</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-retain-pod.yaml</p>
<p>pod "local-path-retain-pod" deleted from integrations namespace</p>
<p>→Check PVC &amp; PV (Both exists)</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME                    STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE</p>
<p>local-path-retain-pvc   Bound    pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            local-path-retain   &lt;unset&gt;                 12m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           <mark>Bound    </mark>integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          4m40s</p>
<p>→Delete PVC</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl delete -f local-path-retain-pvc.yaml</p>
<p>persistentvolumeclaim "local-path-retain-pvc" deleted from integrations namespace</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>No resources found in integrations namespace.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the PV now, and we can see the state is ‘released’.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           <mark>Released  </mark> integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          5m6s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
</tbody>
</table>

### Access Modes 

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image355.webp" style="width:7.67986in;height:5.12014in" /> |
| <img src="subjects/tech/azure/az-aks-complete/img/media/image356.webp" style="width:7.67986in;height:5.12014in" /> |

#### RWO

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here we will be testing the first mode.</p>
<p>→Check the pvc. Note nothing is there.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>No resources found in integrations namespace.</p>
<p>→We will reuse the existing SC.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get sc</p>
<p>NAME                 PROVISIONER             RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE</p>
<p>local-path           rancher.io/local-path   Delete          WaitForFirstConsumer   false                  9h</p>
<p>local-path-retain    rancher.io/local-path   Retain          WaitForFirstConsumer   false                  130m</p>
<p>standard (default)   rancher.io/local-path   Delete          WaitForFirstConsumer   false                  27d</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Create a RWO PVC yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pvc.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: rwo-pvc</p>
<p>spec:</p>
<p>  storageClassName: <mark>local-path-retain</mark></p>
<p>  accessModes:</p>
<p>    - <mark>ReadWriteOnce</mark></p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: 1Gi</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Apply</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pvc.yaml</p>
<p>persistentvolumeclaim/rwo-pvc created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the PVC and status is pending.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME      STATUS    VOLUME   CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE</p>
<p>rwo-pvc   <mark>Pending</mark>                                      local-path-retain   &lt;unset&gt;                 3s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Check the PV.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Released   integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          122m</p>
<p>→Create pod yaml and reference the pvc we created with mount path etc. .</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: rwo-test-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: app</p>
<p>    image: nginx</p>
<p>    volumeMounts:</p>
<p>    - name: rwo-storage</p>
<p>      mountPath: /app/data</p>
<p>  volumes:</p>
<p>  - name: rwo-storage</p>
<p>    persistentVolumeClaim:</p>
<p>      claimName: <mark>rwo-pvc</mark></p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>→Apply the pod yaml and check the artifacts.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pod.yaml</p>
<p>pod/rwo-test-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod</p>
<p>NAME                                               READY   STATUS    RESTARTS         AGE</p>
<p>custom-pod                                         1/1     Running   21 (13h ago)     26d</p>
<p>hostpath-demo-pod                                  1/1     Running   19 (12m ago)     4d14h</p>
<p>multi-container-pod-simple                         2/2     Running   12 (3h21m ago)   6d13h</p>
<p>multi-container-pod-with-shared-volume             2/2     Running   10 (3h21m ago)   5d14h</p>
<p>multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (3h21m ago)   5d14h</p>
<p>rwo-test-pod                                       1/1     Running   0                17s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pvc</p>
<p>NAME      STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS        VOLUMEATTRIBUTESCLASS   AGE</p>
<p>rwo-pvc   <mark>Bound    </mark>pvc-94ad8d90-1c40-4120-a55f-63e4463842f8   1Gi        RWO            local-path-retain   &lt;unset&gt;                 5m40s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pv</p>
<p>NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS     CLAIM                                STORAGECLASS        VOLUMEATTRIBUTESCLASS   REASON   AGE</p>
<p>pvc-94ad8d90-1c40-4120-a55f-63e4463842f8   1Gi        RWO            Retain           <mark>Bound      </mark>integrations/rwo-pvc                 local-path-retain   &lt;unset&gt;                          4m3s</p>
<p>pvc-c8d8a731-9144-42bf-bdf1-2f92e29389ad   256Mi      RWO            Retain           Released   integrations/local-path-retain-pvc   local-path-retain   &lt;unset&gt;                          128m</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Now let us create another pod pointing to the same volume. Ensure we are having node selector label defined so that it goes to the same node.</p>
<p>→Get Nodes</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get nodes</p>
<p>NAME                    STATUS   ROLES           AGE   VERSION</p>
<p>intg-ks-control-plane   Ready    control-plane   27d   v1.29.2</p>
<p>intg-ks-worker          Ready    &lt;none&gt;          27d   v1.29.2</p>
<p>intg-ks-worker2         Ready    &lt;none&gt;          27d   v1.29.2</p>
<p>→Get existing pod where we had a volume mount.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pod rwo-test-pod -o wide</p>
<p>NAME           READY   STATUS    RESTARTS   AGE   IP           NODE             NOMINATED NODE   READINESS GATES</p>
<p>rwo-test-pod   1/1     Running   0          13m   10.244.1.8   intg-ks-worker   &lt;none&gt;           &lt;none&gt;</p>
<p>→Create a new pod with explicit node selector and use the same pvc and volume mount.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; rwo-pod-2.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: rwo-test-pod-2</p>
<p>spec:</p>
<p>  nodeSelector:</p>
<p>    kubernetes.io/hostname: intg-ks-worker</p>
<p>  containers:</p>
<p>  - name: app</p>
<p>    image: nginx</p>
<p>    volumeMounts:</p>
<p>    - name: rwo-storage</p>
<p>      mountPath: <mark>/app/data</mark></p>
<p>  volumes:</p>
<p>  - name: rwo-storage</p>
<p>    persistentVolumeClaim:</p>
<p>      claimName: <mark>rwo-pvc</mark></p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f rwo-pod-2.yaml</p>
<p>pod/rwo-test-pod-2 created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl get pods -o wide</p>
<p>NAME                                               READY   STATUS    RESTARTS         AGE     IP           NODE              NOMINATED NODE   READINESS GATES</p>
<p>custom-pod                                         1/1     Running   21 (13h ago)     26d     10.244.0.5   intg-ks-worker    &lt;none&gt;           &lt;none&gt;</p>
<p>hostpath-demo-pod                                  1/1     Running   19 (26m ago)     4d14h   10.244.0.4   intg-ks-worker    &lt;none&gt;           &lt;none&gt;</p>
<p>multi-container-pod-simple                         2/2     Running   12 (3h34m ago)   6d13h   10.244.2.2   intg-ks-worker2   &lt;none&gt;           &lt;none&gt;</p>
<p>multi-container-pod-with-shared-volume             2/2     Running   10 (3h34m ago)   5d14h   10.244.0.3   intg-ks-worker    &lt;none&gt;           &lt;none&gt;</p>
<p>multi-container-pod-with-shared-volume-in-memory   2/2     Running   10 (3h34m ago)   5d14h   10.244.2.4   intg-ks-worker2   &lt;none&gt;           &lt;none&gt;</p>
<p>rwo-test-pod                                       1/1     Running   0                14m     10.244.1.8   intg-ks-worker    &lt;none&gt;           &lt;none&gt;</p>
<p>rwo-test-pod-2                                     1/1     Running   0                11s     10.244.1.9   intg-ks-worker    &lt;none&gt;           &lt;none&gt;</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Access both the pods and see if we can see the volume. In first pod create a text file and see it is visible in pod2.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it rwo-test-pod -- sh</p>
<p># #</p>
<p>#</p>
<p># echo "Hello from Pod-1" &gt; /app/data/test.txt</p>
<p># # ls -lrt /app/data</p>
<p>total 4</p>
<p>-rw-r--r-- 1 root root 17 Jul  4 19:22 test.txt</p>
<p>#</p>
<p># exit</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it rwo-test-pod-2 -- sh</p>
<p>#</p>
<p># ls -lrt /app/data</p>
<p>total 4</p>
<p>-rw-r--r-- 1 root root 17 Jul  4 19:22 test.txt</p>
<p>#</p>
<p># cat /app/data/test.txt</p>
<p>Hello from Pod-1</p>
<p>#</p>
<p># exit</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image357.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Approaches to create the config maps.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image358.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<p>cat &gt; sample-configmap-all-datatypes.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: ConfigMap</p>
<p>metadata:</p>
<p>  name: sample-config</p>
<p>  namespace: integrations</p>
<p>data:</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>Simple Key-Value Pairs</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  APP_NAME: "Inventory-Service"</p>
<p>  APP_ENV: "development"</p>
<p>  LOG_LEVEL: "DEBUG"</p>
<p>  DB_HOST: "mysql.default.svc.cluster.local"</p>
<p>  DB_PORT: "3306"</p>
<p>  MAX_CONNECTIONS: "50"</p>
<p>  FEATURE_X_ENABLED: "true"</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>Multi-line Text (Essay)</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  welcome-message.txt: |</p>
<p>    Welcome to the Inventory Service.</p>
<p>    This application demonstrates how ConfigMaps</p>
<p>    can store multi-line text files.</p>
<p>    Kubernetes stores every entry as a string,</p>
<p>    regardless of whether it represents JSON,</p>
<p>    YAML, XML, shell scripts or plain text.</p>
<p>    This content can later be mounted as a file</p>
<p>    inside a Pod.</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>JSON</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  app-config.json: |</p>
<p>    {</p>
<p>      "application": "inventory",</p>
<p>      "version": "1.0.0",</p>
<p>      "logging": {</p>
<p>        "level": "INFO",</p>
<p>        "console": true</p>
<p>      },</p>
<p>      "database": {</p>
<p>        "host": "mysql",</p>
<p>        "port": 3306,</p>
<p>        "schema": "inventory"</p>
<p>      }</p>
<p>    }</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>YAML</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  application.yaml: |</p>
<p>    server:</p>
<p>      port: 8080</p>
<p>    logging:</p>
<p>      level: INFO</p>
<p>    database:</p>
<p>      host: mysql</p>
<p>      port: 3306</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>Java Properties</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  application.properties: |</p>
<p>    app.name=Inventory Service</p>
<p>    app.version=1.0</p>
<p>    server.port=8080</p>
<p>    logging.level=INFO</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>Shell Script</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  startup.sh: |</p>
<p>    #!/bin/sh</p>
<p>    echo "Starting Application..."</p>
<p>    echo "Environment = $APP_ENV"</p>
<p>    exec sleep 3600</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>SQL Script</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  init.sql: |</p>
<p>    CREATE TABLE employee (</p>
<p>      id INT PRIMARY KEY,</p>
<p>      name VARCHAR(100)</p>
<p>    );</p>
<p>    INSERT INTO employee VALUES</p>
<p>    (1,'Alice'),</p>
<p>    (2,'Bob');</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>XML</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  settings.xml: |</p>
<p>    &lt;configuration&gt;</p>
<p>      &lt;logging&gt;INFO&lt;/logging&gt;</p>
<p>      &lt;database&gt;mysql&lt;/database&gt;</p>
<p>    &lt;/configuration&gt;</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>INI File</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  app.ini: |</p>
<p>    [Application]</p>
<p>    Name=Inventory</p>
<p>    [Logging]</p>
<p>    Level=INFO</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>NGINX Configuration</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  nginx.conf: |</p>
<p>    events {}</p>
<p>    http {</p>
<p>      server {</p>
<p>        listen 80;</p>
<p>        location / {</p>
<p>          return 200 "Hello from ConfigMap!";</p>
<p>        }</p>
<p>      }</p>
<p>    }</p>
<p>  # ----------------------------------------------------</p>
<p>  # <mark>Certificate (Example)</mark></p>
<p>  # ----------------------------------------------------</p>
<p>  certificate.crt: |</p>
<p>    -----BEGIN CERTIFICATE-----</p>
<p>    MIIFakeCertificateForDemoOnly123456789</p>
<p>    -----END CERTIFICATE-----</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ ls -lrt</p>
<p>total 4</p>
<p>-rw-rw-r-- 1 admin admin 3412 Jul  5 05:52 sample-configmap-all-datatypes.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl apply -f sample-configmap-all-datatypes.yaml</p>
<p>configmap/sample-config created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl get cm</p>
<p>NAME               DATA   AGE</p>
<p>kube-root-ca.crt   1      27d</p>
<p>sample-config      17     5s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p></td>
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
<p>#PASTE ALL THE CONTENTS AT THE BOTTOM OF THE FILE</p>
<p># =====================================================</p>
<p># Kubernetes Helper Functions</p>
<p># =====================================================</p>
<p>k() {</p>
<p>    kubectl "$@"</p>
<p>}</p>
<p>pods() {</p>
<p>    kubectl get pods "$@"</p>
<p>}</p>
<p>deploy() {</p>
<p>    kubectl get deployments "$@"</p>
<p>}</p>
<p>svc() {</p>
<p>    kubectl get svc "$@"</p>
<p>}</p>
<p>nodes() {</p>
<p>    kubectl get nodes "$@"</p>
<p>}</p>
<p>ns() {</p>
<p>    kubectl get namespaces "$@"</p>
<p>}</p>
<p>pv() {</p>
<p>    kubectl get pv "$@"</p>
<p>}</p>
<p>pvc() {</p>
<p>    kubectl get pvc "$@"</p>
<p>}</p>
<p>sc() {</p>
<p>    kubectl get storageclass "$@"</p>
<p>}</p>
<p>cm() {</p>
<p>    kubectl get configmaps "$@"</p>
<p>}</p>
<p>secret() {</p>
<p>    kubectl get secrets "$@"</p>
<p>}</p>
<p>desc() {</p>
<p>    kubectl describe "$@"</p>
<p>}</p>
<p>logs() {</p>
<p>    kubectl logs "$@"</p>
<p>}</p>
<p>execit() {</p>
<p>    kubectl exec -it "$@"</p>
<p>}</p>
<p>#Save and exit:</p>
<p>Ctrl + O</p>
<p>Enter</p>
<p>Ctrl + X</p>
<p>source ~/.bashrc</p>
<p>##TESTING</p>
<p>pods</p>
<p>pods -A</p>
<p>pods -o wide</p>
<p>pv</p>
<p>pvc</p>
<p>sc</p>
<p>cm</p>
<p>nodes</p>
<p>deploy</p>
<p>svc</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image359.webp" style="width:5.39722in;height:3.59861in" /></p></td>
</tr>
<tr>
<td><p>→Now that we have a configmap with all possible params, we will use a simple pod that has this particular config map injected.</p>
<p>→Note below in the pod yaml, we see ‘env’ being injected.</p>
<p>→Also note this is being injected in 4 diff ways.</p>
<p>cat &gt; pod-with-cm-injected.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: configmap-demo-pod</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: app</p>
<p>      image: busybox</p>
<p>      command: ["sleep", "3600"]</p>
<p>      # 1. Hardcoded Environment Variable</p>
<p>      env:</p>
<p>        - name: COURSE</p>
<p>          value: "Kubernetes ConfigMap Demo"</p>
<p>      # 2. Import a Single Key from ConfigMap</p>
<p>        - name: MY_DB_HOST</p>
<p>          valueFrom:</p>
<p>            configMapKeyRef:</p>
<p>              name: sample-config</p>
<p>              key: DB_HOST</p>
<p>      # 3. Import Entire ConfigMap as Environment Variables</p>
<p>      envFrom:</p>
<p>        - configMapRef:</p>
<p>            name: sample-config</p>
<p>      # 4. Mount Entire ConfigMap as Files</p>
<p>      volumeMounts:</p>
<p>        - name: config-volume</p>
<p>          mountPath: /etc/config</p>
<p>  volumes:</p>
<p>    - name: config-volume</p>
<p>      configMap:</p>
<p>        name: sample-config</p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ ls -lrt</p>
<p>total 8</p>
<p>-rw-rw-r-- 1 admin admin 3417 Jul  5 06:04 sample-configmap-all-datatypes.yaml</p>
<p>-rw-rw-r-- 1 admin admin 1414 Jul  5 07:58 pod-with-cm-injected.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ k apply -f pod-with-cm-injected.yaml</p>
<p>pod/configmap-demo-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods</p>
<p>NAME                 READY   STATUS              RESTARTS   AGE</p>
<p>configmap-demo-pod   0/1     ContainerCreating   0          3s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS   AGE</p>
<p>configmap-demo-pod   1/1     Running   0          24s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p></td>
</tr>
<tr>
<td><p>→Check the pod logs</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS   AGE</p>
<p>configmap-demo-pod   1/1     Running   0          4m32s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ logs configmap-demo-pod</p>
<p>========== ALL ENV VARIABLES ==========</p>
<p>    return 200 "Hello from ConfigMap!";</p>
<p>    "console": true</p>
<p>    "host": "mysql",</p>
<p>    "level": "INFO",</p>
<p>    "port": 3306,</p>
<p>    "schema": "inventory"</p>
<p>    listen 80;</p>
<p>    location / {</p>
<p>    }</p>
<p>  "application": "inventory",</p>
<p>  "database": {</p>
<p>  "logging": {</p>
<p>  "version": "1.0.0",</p>
<p>  &lt;database&gt;mysql&lt;/database&gt;</p>
<p>  &lt;logging&gt;INFO&lt;/logging&gt;</p>
<p>  host: mysql</p>
<p>  id INT PRIMARY KEY,</p>
<p>  level: INFO</p>
<p>  name VARCHAR(100)</p>
<p>  port: 3306</p>
<p>  port: 8080</p>
<p>  server {</p>
<p>  }</p>
<p>  }</p>
<p>  },</p>
<p>(1,'Alice'),</p>
<p>(2,'Bob');</p>
<p>);</p>
<p>-----END CERTIFICATE-----</p>
<p>&lt;/configuration&gt;</p>
<p>APP_ENV=development</p>
<p>APP_NAME=Inventory-Service</p>
<p>DB_HOST=mysql.default.svc.cluster.local</p>
<p>DB_PORT=3306</p>
<p>FEATURE_X_ENABLED=true</p>
<p>HOME=/root</p>
<p>HOSTNAME=configmap-demo-pod</p>
<p>INSERT INTO employee VALUES</p>
<p>KUBERNETES_PORT=tcp://10.96.0.1:443</p>
<p>KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443</p>
<p>KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1</p>
<p>KUBERNETES_PORT_443_TCP_PORT=443</p>
<p>KUBERNETES_PORT_443_TCP_PROTO=tcp</p>
<p>KUBERNETES_SERVICE_HOST=10.96.0.1</p>
<p>KUBERNETES_SERVICE_PORT=443</p>
<p>KUBERNETES_SERVICE_PORT_HTTPS=443</p>
<p>Kubernetes stores every entry as a string,</p>
<p>LOG_LEVEL=DEBUG</p>
<p>Level=INFO</p>
<p>MAX_CONNECTIONS=50</p>
<p>MIIFakeCertificateForDemoOnly123456789</p>
<p>MY_APP_NAME=Inventory-Service</p>
<p>MY_LOG_LEVEL=DEBUG</p>
<p>Name=Inventory</p>
<p>PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin</p>
<p>PWD=<removed>
<p>SHLVL=1</p>
<p>This application demonstrates how ConfigMaps</p>
<p>This content can later be mounted as a file</p>
<p>YAML, XML, shell scripts or plain text.</p>
<p>[Logging]</p>
<p>app-config.json={</p>
<p>app.ini=[Application]</p>
<p>app.version=1.0</p>
<p>application.properties=app.name=Inventory Service</p>
<p>application.yaml=server:</p>
<p>can store multi-line text files.</p>
<p>certificate.crt=-----BEGIN CERTIFICATE-----</p>
<p>database:</p>
<p>echo "Environment = $APP_ENV"</p>
<p>echo "Starting Application..."</p>
<p>exec sleep 3600</p>
<p>http {</p>
<p>init.sql=CREATE TABLE employee (</p>
<p>inside a Pod.</p>
<p>logging.level=INFO</p>
<p>logging:</p>
<p>nginx.conf=events {}</p>
<p>regardless of whether it represents JSON,</p>
<p>server.port=8080</p>
<p>settings.xml=&lt;configuration&gt;</p>
<p>startup.sh=#!/bin/sh</p>
<p>welcome-message.txt=Welcome to the Inventory Service.</p>
<p>}</p>
<p>}</p>
<p>========== EXPLICIT ENV VARIABLES ==========</p>
<p>MY_APP_NAME=Inventory-Service</p>
<p>MY_LOG_LEVEL=DEBUG</p>
<p>========== CONFIGMAP MOUNT ==========</p>
<p>total 0</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 07:58 APP_ENV -&gt; ..data/APP_ENV</p>
<p>lrwxrwxrwx    1 root     root            15 Jul  5 07:58 APP_NAME -&gt; ..data/APP_NAME</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 07:58 DB_HOST -&gt; ..data/DB_HOST</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 07:58 DB_PORT -&gt; ..data/DB_PORT</p>
<p>lrwxrwxrwx    1 root     root            24 Jul  5 07:58 FEATURE_X_ENABLED -&gt; ..data/FEATURE_X_ENABLED</p>
<p>lrwxrwxrwx    1 root     root            16 Jul  5 07:58 LOG_LEVEL -&gt; ..data/LOG_LEVEL</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 07:58 MAX_CONNECTIONS -&gt; ..data/MAX_CONNECTIONS</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 07:58 app-config.json -&gt; ..data/app-config.json</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 07:58 app.ini -&gt; ..data/app.ini</p>
<p>lrwxrwxrwx    1 root     root            29 Jul  5 07:58 application.properties -&gt; ..data/application.properties</p>
<p>lrwxrwxrwx    1 root     root            23 Jul  5 07:58 application.yaml -&gt; ..data/application.yaml</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 07:58 certificate.crt -&gt; ..data/certificate.crt</p>
<p>lrwxrwxrwx    1 root     root            15 Jul  5 07:58 init.sql -&gt; ..data/init.sql</p>
<p>lrwxrwxrwx    1 root     root            17 Jul  5 07:58 nginx.conf -&gt; ..data/nginx.conf</p>
<p>lrwxrwxrwx    1 root     root            19 Jul  5 07:58 settings.xml -&gt; ..data/settings.xml</p>
<p>lrwxrwxrwx    1 root     root            17 Jul  5 07:58 startup.sh -&gt; ..data/startup.sh</p>
<p>lrwxrwxrwx    1 root     root            26 Jul  5 07:58 welcome-message.txt -&gt; ..data/welcome-message.txt</p>
<p>========== JSON FILE ==========</p>
<p>{</p>
<p>  "application": "inventory",</p>
<p>  "version": "1.0.0",</p>
<p>  "logging": {</p>
<p>    "level": "INFO",</p>
<p>    "console": true</p>
<p>  },</p>
<p>  "database": {</p>
<p>    "host": "mysql",</p>
<p>    "port": 3306,</p>
<p>    "schema": "inventory"</p>
<p>  }</p>
<p>}</p>
<p>========== ESSAY FILE ==========</p>
<p>Welcome to the Inventory Service.</p>
<p>This application demonstrates how ConfigMaps</p>
<p>can store multi-line text files.</p>
<p>Kubernetes stores every entry as a string,</p>
<p>regardless of whether it represents JSON,</p>
<p>YAML, XML, shell scripts or plain text.</p>
<p>This content can later be mounted as a file</p>
<p>inside a Pod.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p></td>
</tr>
<tr>
<td><p>→Now that we have a pod running let us also try an explicit access to it</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ k apply -f pod-with-cm-injected.yaml</p>
<p>pod/configmap-demo-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS   AGE</p>
<p>configmap-demo-pod   1/1     Running   0          8s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ logs configmap-demo-pod</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ kubectl exec -it -n integrations configmap-demo-pod -- ls -l /etc/config</p>
<p>total 0</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 09:53 APP_ENV -&gt; ..data/APP_ENV</p>
<p>lrwxrwxrwx    1 root     root            15 Jul  5 09:53 APP_NAME -&gt; ..data/APP_NAME</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 09:53 DB_HOST -&gt; ..data/DB_HOST</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 09:53 DB_PORT -&gt; ..data/DB_PORT</p>
<p>lrwxrwxrwx    1 root     root            24 Jul  5 09:53 FEATURE_X_ENABLED -&gt; ..data/FEATURE_X_ENABLED</p>
<p>lrwxrwxrwx    1 root     root            16 Jul  5 09:53 LOG_LEVEL -&gt; ..data/LOG_LEVEL</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 09:53 MAX_CONNECTIONS -&gt; ..data/MAX_CONNECTIONS</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 09:53 app-config.json -&gt; ..data/app-config.json</p>
<p>lrwxrwxrwx    1 root     root            14 Jul  5 09:53 app.ini -&gt; ..data/app.ini</p>
<p>lrwxrwxrwx    1 root     root            29 Jul  5 09:53 application.properties -&gt; ..data/application.properties</p>
<p>lrwxrwxrwx    1 root     root            23 Jul  5 09:53 application.yaml -&gt; ..data/application.yaml</p>
<p>lrwxrwxrwx    1 root     root            22 Jul  5 09:53 certificate.crt -&gt; ..data/certificate.crt</p>
<p>lrwxrwxrwx    1 root     root            15 Jul  5 09:53 init.sql -&gt; ..data/init.sql</p>
<p>lrwxrwxrwx    1 root     root            17 Jul  5 09:53 nginx.conf -&gt; ..data/nginx.conf</p>
<p>lrwxrwxrwx    1 root     root            19 Jul  5 09:53 settings.xml -&gt; ..data/settings.xml</p>
<p>lrwxrwxrwx    1 root     root            17 Jul  5 09:53 startup.sh -&gt; ..data/startup.sh</p>
<p>lrwxrwxrwx    1 root     root            26 Jul  5 09:53 welcome-message.txt -&gt; ..data/welcome-message.txt</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$ # Verify the hardcoded variable</p>
<p>kubectl exec -it -n integrations configmap-demo-pod -- printenv COURSE</p>
<p>Kubernetes ConfigMap Demo</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/configmaps$</p></td>
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
<td colspan="2"><p><img src="subjects/tech/azure/az-aks-complete/img/media/image360.webp" style="width:7.52361in;height:2.78889in" alt="{04C12A7E-A960-45F8-A1B6-81C35FD2FCB3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: pod-with-pvc</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: app</p>
<p>      image: busybox</p>
<p>      command: ["sh", "-c", "sleep 3600"]</p>
<p>      volumeMounts:</p>
<p>        - name: app-storage</p>
<p>          mountPath: /data</p>
<p><mark>  volumes:</mark></p>
<p><mark>    - name: app-storage</mark></p>
<p><mark>      persistentVolumeClaim:</mark></p>
<p><mark>        claimName: rwo-pvc</mark></p></td>
<td style="text-align: left;"><p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: pod-with-configmap</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: app</p>
<p>      image: busybox</p>
<p>      command: ["sh", "-c", "sleep 3600"]</p>
<p>      volumeMounts:</p>
<p>        - name: <mark>config-volume</mark></p>
<p>          mountPath: /etc/config</p>
<p><mark>  volumes:</mark></p>
<p><mark>    - name: config-volume</mark></p>
<p><mark>      configMap:</mark></p>
<p><mark>        name: sample-config</mark></p></td>
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
<p>cat &gt; immutable-configmap.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: ConfigMap</p>
<p>metadata:</p>
<p>  name: app-config-v1</p>
<p>  namespace: integrations</p>
<p><mark>immutable: true</mark></p>
<p>data:</p>
<p>  APP_NAME: "Inventory-Service"</p>
<p>  APP_ENV: "production"</p>
<p>  LOG_LEVEL: "INFO"</p>
<p>  DB_HOST: "mysql.default.svc.cluster.local"</p>
<p>EOF</p>
<p>kubectl apply -f immutable-configmap.yaml</p>
<p>kubectl get cm app-config-v1 -n integrations -o yaml</p>
<p>kubectl delete configmap app-config-v1 -n integrations</p>
<p>kubectl apply -f immutable-configmap.yaml</p></td>
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
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ cat &gt; insecure-hostpath-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: insecure-pod</p>
<p>  labels:</p>
<p>    purpose: security-lab</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: insecure-container</p>
<p>    image: busybox</p>
<p>    command: ["sleep", "3600"]</p>
<p>    volumeMounts:</p>
<p>    - name: host-root</p>
<p>      mountPath: /host</p>
<p>  volumes:</p>
<p>  - name: host-root</p>
<p>    hostPath:</p>
<p>      <mark>path: /</mark></p>
<p>      type: Directory</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ ls -lrt</p>
<p>total 4</p>
<p>-rw-rw-r-- 1 admin admin 335 Jul  5 15:36 insecure-hostpath-pod.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ k apply -f insecure-hostpath-pod.yaml</p>
<p>pod/insecure-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$</p></td>
</tr>
<tr>
<td><p>→Now that we have deployed, let us see if we can reach the host.</p>
<p>→We will exec into the pod and try to access host details.</p>
<p>→Note that here the host is a docker container so we will get minimal details.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ kubectl exec -it insecure-pod -- sh</p>
<p>/ #</p>
<p>/ # hostname</p>
<p>insecure-pod</p>
<p>/ # cat /host/etc/hostname</p>
<p>intg-ks-worker2</p>
<p>/ # cat /host/etc/os-release</p>
<p>PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"</p>
<p>NAME="Debian GNU/Linux"</p>
<p>VERSION_ID="12"</p>
<p>VERSION="12 (bookworm)"</p>
<p>VERSION_CODENAME=bookworm</p>
<p>ID=debian</p>
<p>HOME_URL="https://www.debian.org/"</p>
<p>SUPPORT_URL="https://www.debian.org/support"</p>
<p>BUG_REPORT_URL="https://bugs.debian.org/"</p>
<p>/ # ls /host/kind</p>
<p>README.txt    bin           kubeadm.conf  manifests     old-ipv4      old-ipv6      product_name  product_uuid  version</p>
<p>/ # cat /host/etc/resolv.conf</p>
<p># Generated by Docker Engine.</p>
<p># This file can be edited; Docker Engine will not make further changes once it</p>
<p># has been modified.</p>
<p>nameserver 172.18.0.1</p>
<p>search home</p>
<p>options edns0 trust-ad ndots:0</p>
<p># Based on host file: '/etc/resolv.conf' (internal resolver)</p>
<p># ExtServers: [host(127.0.0.53)]</p>
<p># Overrides: []</p>
<p># Option ndots from: internal</p>
<p>/ # df -h /host</p>
<p>Filesystem                Size      Used Available Use% Mounted on</p>
<p>overlay                  64.8G     22.2G     39.3G  36% /host</p>
<p>/ #</p>
<p>/ # echo "test-from-pod" &gt; /host/tmp/prooffile.txt</p>
<p>/ #</p>
<p>/ # cat /host/tmp/prooffile.txt</p>
<p>test-from-pod</p>
<p>/ #</p>
<p>/ #</p>
<p>/ # id</p>
<p>uid=0(root) gid=0(root) groups=0(root),10(wheel)</p>
<p>/ #</p>
<p>/ #</p>
<p>/ #</p>
<p>/ # cd /host</p>
<p>/host #</p>
<p>/host # ls -lrt</p>
<p>total 56</p>
<p>drwxr-xr-x    2 root     root          4096 Dec  9  2023 home</p>
<p>drwxr-xr-x    2 root     root          4096 Dec  9  2023 boot</p>
<p>drwxr-xr-x    2 root     root          4096 Jan 30  2024 srv</p>
<p>lrwxrwxrwx    1 root     root             8 Jan 30  2024 sbin -&gt; usr/sbin</p>
<p>drwxr-xr-x    2 root     root          4096 Jan 30  2024 media</p>
<p>lrwxrwxrwx    1 root     root             9 Jan 30  2024 lib64 -&gt; usr/lib64</p>
<p>lrwxrwxrwx    1 root     root             7 Jan 30  2024 lib -&gt; usr/lib</p>
<p>lrwxrwxrwx    1 root     root             7 Jan 30  2024 bin -&gt; usr/bin</p>
<p>drwxr-xr-x    1 root     root          4096 Feb 12  2024 usr</p>
<p>drwx------    3 root     root          4096 Feb 12  2024 root</p>
<p>drwxr-xr-x   90 root     root          4096 Feb 12  2024 LICENSES</p>
<p>drwxr-xr-x    1 root     root          4096 Feb 14  2024 opt</p>
<p>drwxr-xr-x   11 root     root          4096 Jun  7 16:06 var</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  1 05:03 mnt</p>
<p>dr-xr-xr-x   13 root     root             0 Jul  5 07:41 sys</p>
<p>dr-xr-xr-x  342 root     root             0 Jul  5 07:41 proc</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 07:41 kind</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 07:41 etc</p>
<p>drwxr-xr-x   16 root     root          4300 Jul  5 07:41 dev</p>
<p>drwxr-xr-x   11 root     root           240 Jul  5 07:41 run</p>
<p>drwxrwxrwt    2 root     root            60 Jul  5 15:42 tmp</p>
<p>/host #</p></td>
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
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ ls -lrt</p>
<p>total 4</p>
<p>-rw-rw-r-- 1 admin admin 335 Jul  5 15:36 insecure-hostpath-pod.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ cat &gt; privileged-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: privileged-pod</p>
<p>  labels:</p>
<p>    purpose: security-lab</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: privileged-container</p>
<p>    image: busybox</p>
<p>    command: ["sleep", "3600"]</p>
<p>    securityContext:</p>
<p>      privileged: true</p>
<p>    volumeMounts:</p>
<p>    - name: host-root</p>
<p>      mountPath: /host</p>
<p>  volumes:</p>
<p>  - name: host-root</p>
<p>    hostPath:</p>
<p>      <mark>path: /</mark></p>
<p>      type: Directory</p>
<p>EOF</p>
<p>kubectl apply -f privileged-pod.yaml</p>
<p>pod/privileged-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS      AGE</p>
<p>configmap-demo-pod   1/1     Running   5 (57m ago)   5h57m</p>
<p>insecure-pod         1/1     Running   0             13m</p>
<p>privileged-pod       1/1     Running   0             4s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$</p></td>
</tr>
<tr>
<td><p>→Let us get into the pod and see what all we can do and what we cannot do. Given there are kernel level hardening, many of the activities are not possible to perform. Eg. Access ubuntu host file system.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/insecurepod$ kubectl exec -it privileged-pod -- sh</p>
<p>/ #</p>
<p>/ # id</p>
<p>uid=0(root) gid=0(root) groups=0(root),10(wheel)</p>
<p>/ # cat /proc/self/status | grep Cap</p>
<p>CapInh: 0000000000000000</p>
<p>CapPrm: 000001ffffffffff</p>
<p>CapEff: 000001ffffffffff</p>
<p>CapBnd: 000001ffffffffff</p>
<p>CapAmb: 0000000000000000</p>
<p>/ #</p>
<p> </p>
<p> #</p>
<p>/ # mount | grep cgroup</p>
<p>cgroup on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)</p>
<p>cgroup on /host/sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)</p>
<p>cgroup on /host/run/containerd/io.containerd.runtime.v2.task/k8s.io/59655acad5c62224d6cf2e3d162abb6bd760171422f84eb02c3dd45f9eea0f62/rootfs/sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)</p>
<p>/ #</p>
<p>/ # ls /dev</p>
<p>autofs           loop13           null             tty11            tty36            tty60            ttyS27           vcs6</p>
<p>bsg              loop14           nvram            tty12            tty37            tty61            ttyS28           vcsa</p>
<p>btrfs-control    loop15           port             tty13            tty38            tty62            ttyS29           vcsa1</p>
<p>bus              loop16           ppp              tty14            tty39            tty63            ttyS3            vcsa2</p>
<p>core             loop17           psaux            tty15            tty4             tty7             ttyS30           vcsa3</p>
<p>cpu              loop18           ptmx             tty16            tty40            tty8             ttyS31           vcsa4</p>
<p>cpu_dma_latency  loop19           pts              tty17            tty41            tty9             ttyS4            vcsa5</p>
<p>cuse             loop2            random           tty18            tty42            ttyS0            ttyS5            vcsa6</p>
<p>dma_heap         loop20           rfkill           tty19            tty43            ttyS1            ttyS6            vcsu</p>
<p>dri              loop21           rtc0             tty2             tty44            ttyS10           ttyS7            vcsu1</p>
<p>ecryptfs         loop22           sda              tty20            tty45            ttyS11           ttyS8            vcsu2</p>
<p>fb0              loop23           sda1             tty21            tty46            ttyS12           ttyS9            vcsu3</p>
<p>fd               loop24           sda2             tty22            tty47            ttyS13           ttyprintk        vcsu4</p>
<p>full             loop25           sg0              tty23            tty48            ttyS14           udmabuf          vcsu5</p>
<p>fuse             loop26           sg1              tty24            tty49            ttyS15           uhid             vcsu6</p>
<p>hidraw0          loop3            shm              tty25            tty5             ttyS16           uinput           vfio</p>
<p>hpet             loop4            snapshot         tty26            tty50            ttyS17           urandom          vga_arbiter</p>
<p>hwrng            loop5            snd              tty27            tty51            ttyS18           userfaultfd      vhci</p>
<p>i2c-0            loop6            sr0              tty28            tty52            ttyS19           userio           vhost-net</p>
<p>input            loop7            stderr           tty29            tty53            ttyS2            vboxguest        vhost-vsock</p>
<p>kmsg             loop8            stdin            tty3             tty54            ttyS20           vboxuser         zero</p>
<p>loop-control     loop9            stdout           tty30            tty55            ttyS21           vcs              zfs</p>
<p>loop0            mapper           termination-log  tty31            tty56            ttyS22           vcs1</p>
<p>loop1            mcelog           tty              tty32            tty57            ttyS23           vcs2</p>
<p>loop10           mem              tty0             tty33            tty58            ttyS24           vcs3</p>
<p>loop11           mqueue           tty1             tty34            tty59            ttyS25           vcs4</p>
<p>loop12           net              tty10            tty35            tty6             ttyS26           vcs5</p>
<p>/ # fdisk -l 2&gt;/dev/null || cat /proc/partitions</p>
<p>Disk /dev/sda: 66.4G, 71306510336 bytes, 139270528 sectors</p>
<p>8635 cylinders, 256 heads, 63 sectors/track</p>
<p>Units: cylinders of 16128 * 512 = 8257536 bytes</p>
<p>Device  Boot StartCHS    EndCHS        StartLBA     EndLBA    Sectors  Size Id Type</p>
<p>/dev/sda1    0,0,2       1023,255,63          1  139270527  139270527 66.4G ee EFI GPT</p>
<p>/ #</p>
<p>/ #</p>
<p>/ # mkdir -p /mnt/test</p>
<p>/ # mount --bind /host /mnt/test</p>
<p>/ #</p>
<p>/ # lsmod</p>
<p>isofs 61440 1 - Live 0xffffffffc0c9c000</p>
<p>ipt_REJECT 12288 0 - Live 0xffffffffc0c9b000</p>
<p>nf_reject_ipv4 12288 1 ipt_REJECT, Live 0xffffffffc0c99000</p>
<p>xt_statistic 12288 9 - Live 0xffffffffc0c98000</p>
<p>xt_mark 12288 12 - Live 0xffffffffc0c97000</p>
<p>snd_seq_dummy 12288 0 - Live 0xffffffffc0c95000</p>
<p>snd_hrtimer 12288 1 - Live 0xffffffffc0c94000</p>
<p>xt_comment 12288 210 - Live 0xffffffffc0c84000</p>
<p>veth 45056 0 - Live 0xffffffffc0c8f000</p>
<p>nf_conntrack_netlink 57344 0 - Live 0xffffffffc0c86000</p>
<p>vboxsf 45056 1 - Live 0xffffffffc0c7f000</p>
<p>vboxguest 57344 5 vboxsf, Live 0xffffffffc0563000</p>
<p>xt_nat 12288 37 - Live 0xffffffffc0c7e000</p>
<p>xt_tcpudp 16384 24 - Live 0xffffffffc0c7d000</p>
<p>vboxvideo 36864 0 - Live 0xffffffffc0c79000</p>
<p>drm_vram_helper 24576 1 vboxvideo, Live 0xffffffffc0c76000</p>
<p>xt_conntrack 12288 60 - Live 0xffffffffc0c75000</p>
<p>xt_MASQUERADE 16384 12 - Live 0xffffffffc0c73000</p>
<p>xfrm_user 65536 1 - Live 0xffffffffc0c6a000</p>
<p>xfrm_algo 16384 1 xfrm_user, Live 0xffffffffc0c66000</p>
<p>xt_set 20480 0 - Live 0xffffffffc0c68000</p>
<p>ip_set 61440 1 xt_set, Live 0xffffffffc0c60000</p>
<p>nft_chain_nat 12288 27 - Live 0xffffffffc0c41000</p>
<p>nf_nat 61440 3 xt_nat,xt_MASQUERADE,nft_chain_nat, Live 0xffffffffc0c59000</p>
<p>nf_conntrack 192512 5 nf_conntrack_netlink,xt_nat,xt_conntrack,xt_MASQUERADE,nf_nat, Live 0xffffffffc0c44000</p>
<p>nf_defrag_ipv6 24576 1 nf_conntrack, Live 0xffffffffc0c42000</p>
<p>nf_defrag_ipv4 12288 1 nf_conntrack, Live 0xffffffffc0c40000</p>
<p>xt_addrtype 12288 13 - Live 0xffffffffc05fd000</p>
<p>nft_compat 20480 377 - Live 0xffffffffc0c3d000</p>
<p>nf_tables 385024 1103 nft_chain_nat,nft_compat, Live 0xffffffffc0c05000</p>
<p>qrtr 53248 2 - Live 0xffffffffc0c00000</p>
<p>snd_intel8x0 53248 1 - Live 0xffffffffc05f8000</p>
<p>snd_ac97_codec 196608 1 snd_intel8x0, Live 0xffffffffc05e5000</p>
<p>ac97_bus 12288 1 snd_ac97_codec, Live 0xffffffffc05c9000</p>
<p>snd_pcm 200704 2 snd_intel8x0,snd_ac97_codec, Live 0xffffffffc05cb000</p>
<p>snd_seq_midi 24576 0 - Live 0xffffffffc05c7000</p>
<p>snd_seq_midi_event 16384 1 snd_seq_midi, Live 0xffffffffc05be000</p>
<p>snd_rawmidi 57344 1 snd_seq_midi, Live 0xffffffffc05bf000</p>
<p>intel_rapl_msr 20480 0 - Live 0xffffffffc05a0000</p>
<p>intel_rapl_common 53248 1 intel_rapl_msr, Live 0xffffffffc05b9000</p>
<p>snd_seq 122880 9 snd_seq_dummy,snd_seq_midi,snd_seq_midi_event, Live 0xffffffffc05a8000</p>
<p>intel_uncore_frequency_common 20480 0 - Live 0xffffffffc05b6000</p>
<p>intel_pmc_core 135168 0 - Live 0xffffffffc05a2000</p>
<p>snd_seq_device 16384 3 snd_seq_midi,snd_rawmidi,snd_seq, Live 0xffffffffc059e000</p>
<p>pmt_telemetry 16384 1 intel_pmc_core, Live 0xffffffffc0597000</p>
<p>snd_timer 53248 3 snd_hrtimer,snd_pcm,snd_seq, Live 0xffffffffc0598000</p>
<p>pmt_discovery 20480 1 pmt_telemetry, Live 0xffffffffc0595000</p>
<p>pmt_class 20480 2 pmt_telemetry,pmt_discovery, Live 0xffffffffc0594000</p>
<p>intel_pmc_ssram_telemetry 16384 1 intel_pmc_core, Live 0xffffffffc0590000</p>
<p>intel_vsec 24576 2 pmt_telemetry,intel_pmc_ssram_telemetry, Live 0xffffffffc0592000</p>
<p>ghash_clmulni_intel 12288 0 - Live 0xffffffffc0591000</p>
<p>aesni_intel 98304 0 - Live 0xffffffffc0581000</p>
<p>snd 143360 11 snd_intel8x0,snd_ac97_codec,snd_pcm,snd_rawmidi,snd_seq,snd_seq_device,snd_timer, Live 0xffffffffc0573000</p>
<p>rapl 20480 0 - Live 0xffffffffc0571000</p>
<p>i2c_piix4 32768 0 - Live 0xffffffffc056e000</p>
<p>i2c_smbus 20480 1 i2c_piix4, Live 0xffffffffc0561000</p>
<p>soundcore 16384 1 snd, Live 0xffffffffc0569000</p>
<p>joydev 32768 0 - Live 0xffffffffc055e000</p>
<p>input_leds 12288 0 - Live 0xffffffffc055d000</p>
<p>mac_hid 12288 0 - Live 0xffffffffc055b000</p>
<p>serio_raw 20480 0 - Live 0xffffffffc0536000</p>
<p>binfmt_misc 24576 1 - Live 0xffffffffc0559000</p>
<p>sch_fq_codel 24576 2 - Live 0xffffffffc0555000</p>
<p>overlay 221184 39 - Live 0xffffffffc0538000</p>
<p>iptable_filter 12288 0 - Live 0xffffffffc0537000</p>
<p>ip6table_filter 12288 0 - Live 0xffffffffc052a000</p>
<p>ip6_tables 32768 1 ip6table_filter, Live 0xffffffffc0532000</p>
<p>br_netfilter 32768 0 - Live 0xffffffffc052c000</p>
<p>bridge 425984 1 br_netfilter, Live 0xffffffffc04f1000</p>
<p>stp 12288 1 bridge, Live 0xffffffffc04ee000</p>
<p>llc 16384 2 bridge,stp, Live 0xffffffffc04e8000</p>
<p>arp_tables 32768 0 - Live 0xffffffffc04ea000</p>
<p>vmwgfx 471040 5 - Live 0xffffffffc04b1000</p>
<p>drm_ttm_helper 16384 4 vboxvideo,drm_vram_helper,vmwgfx, Live 0xffffffffc04af000</p>
<p>efi_pstore 12288 0 - Live 0xffffffffc04ae000</p>
<p>ttm 126976 3 drm_vram_helper,vmwgfx,drm_ttm_helper, Live 0xffffffffc04a0000</p>
<p>msr 12288 0 - Live 0xffffffffc0486000</p>
<p>parport_pc 53248 0 - Live 0xffffffffc049a000</p>
<p>ppdev 24576 0 - Live 0xffffffffc0497000</p>
<p>lp 32768 0 - Live 0xffffffffc0493000</p>
<p>parport 73728 3 parport_pc,ppdev,lp, Live 0xffffffffc048b000</p>
<p>nfnetlink 20480 6 nf_conntrack_netlink,ip_set,nft_compat,nf_tables, Live 0xffffffffc0488000</p>
<p>dmi_sysfs 20480 0 - Live 0xffffffffc040f000</p>
<p>ip_tables 32768 1 iptable_filter, Live 0xffffffffc0481000</p>
<p>x_tables 65536 16 ipt_REJECT,xt_statistic,xt_mark,xt_comment,xt_nat,xt_tcpudp,xt_conntrack,xt_MASQUERADE,xt_set,xt_addrtype,nft_compat,iptable_filter,ip6table_filter,ip6_tables,arp_tables,ip_tables, Live 0xffffffffc047b000</p>
<p>autofs4 57344 8 - Live 0xffffffffc0475000</p>
<p>hid_generic 12288 0 - Live 0xffffffffc041a000</p>
<p>usbhid 77824 0 - Live 0xffffffffc046b000</p>
<p>hid 262144 2 hid_generic,usbhid, Live 0xffffffffc045a000</p>
<p>psmouse 217088 0 - Live 0xffffffffc0439000</p>
<p>video 77824 0 - Live 0xffffffffc0454000</p>
<p>vga16fb 32768 0 - Live 0xffffffffc0435000</p>
<p>e1000 180224 0 - Live 0xffffffffc041b000</p>
<p>ahci 49152 1 - Live 0xffffffffc0418000</p>
<p>vgastate 20480 1 vga16fb, Live 0xffffffffc0415000</p>
<p>libahci 53248 1 ahci, Live 0xffffffffc0410000</p>
<p>wmi 28672 1 video, Live 0xffffffffc040a000</p>
<p>pata_acpi 12288 0 - Live 0xffffffffc040d000</p>
<p>/ #</p>
<p>/ #</p>
<p>/ # cat /proc/1/root/etc/hostname 2&gt;/dev/null</p>
<p>privileged-pod</p>
<p>/ # ls -la /proc/1/root/ 2&gt;/dev/null</p>
<p>total 64</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 15:54 .</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 15:54 ..</p>
<p>drwxr-xr-x    2 root     root         12288 May 13 02:21 bin</p>
<p>drwxr-xr-x   15 root     root          4260 Jul  5 15:50 dev</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 15:50 etc</p>
<p>drwxr-xr-x    2 nobody   nobody        4096 May 13 02:21 home</p>
<p>drwxr-xr-x    1 root     root          4096 Jun  7 16:06 host</p>
<p>drwxr-xr-x    2 root     root          4096 May 13 02:21 lib</p>
<p>lrwxrwxrwx    1 root     root             3 May 13 02:21 lib64 -&gt; lib</p>
<p>drwxr-xr-x    3 root     root          4096 Jul  5 15:54 mnt</p>
<p>dr-xr-xr-x  345 root     root             0 Jul  5 15:50 proc</p>
<p>-rw-r--r--    1 root     root             5 Jul  5 15:50 product_name</p>
<p>-rw-r--r--    1 root     root            37 Jul  5 15:50 product_uuid</p>
<p>drwx------    1 root     root          4096 Jul  5 15:52 root</p>
<p>dr-xr-xr-x   13 root     root             0 Jul  5 15:50 sys</p>
<p>drwxrwxrwt    2 root     root          4096 May 13 02:21 tmp</p>
<p>drwxr-xr-x    4 root     root          4096 May 13 02:21 usr</p>
<p>drwxr-xr-x    1 root     root          4096 Jul  5 15:50 var</p>
<p>/ #</p>
<p>/ #</p></td>
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
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ cat &gt; controlled-pod.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: controlled-pod</p>
<p>spec:</p>
<p>  securityContext:</p>
<p>    runAsUser: 1000</p>
<p>    runAsGroup: 2000</p>
<p>    fsGroup: 3000</p>
<p>  containers:</p>
<p>  - name: demo-container</p>
<p>    image: busybox:latest</p>
<p>    command: ["sleep", "36000"]</p>
<p>    volumeMounts:</p>
<p>    - name: host-root</p>
<p>      mountPath: /host</p>
<p>  volumes:</p>
<p>  - name: host-root</p>
<p>    hostPath:</p>
<p>      path: /</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f controlled-pod.yaml</p>
<p>pod/controlled-pod created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Access the pod and sensitive files. We should get permission denied as the user is not root.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it controlled-pod -- sh</p>
<p>~ $</p>
<p>~ $ id</p>
<p>uid=1000 gid=2000 groups=2000,3000</p>
<p>~ $</p>
<p>~ $ cat /host/etc/shadow</p>
<p>cat: can't open '/host/etc/shadow': Permission denied</p>
<p>~ $</p>
<p>~ $</p>
<p>What this proves</p>
<p>id confirms the securityContext worked as configured: uid=1000 gid=2000 groups=2000,3000 — no root anywhere in this identity, matching your YAML exactly.</p>
<p>cat /host/etc/shadow → Permission denied — this is the payoff. Same hostPath mount to /, same file, same path as your original insecure pod where you could read it freely as root. Now, standard Unix file permission checks (shadow is typically -rw-r----- owned by root:shadow) block UID 1000 from reading it.</p></td>
</tr>
<tr>
<td><p>→While it is blocked for certain areas, given the host path configured as “ / “ is still wide open and has the attack surface open.</p>
<p>→Take a look at below commands that would still work.</p>
<p>~ $ cat /host/etc/passwd</p>
<p>root:x:0:0:root:/root:/bin/bash</p>
<p>daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin</p>
<p>bin:x:2:2:bin:/bin:/usr/sbin/nologin</p>
<p>sys:x:3:3:sys:/dev:/usr/sbin/nologin</p>
<p>sync:x:4:65534:sync:/bin:/bin/sync</p>
<p>games:x:5:60:games:/usr/games:/usr/sbin/nologin</p>
<p>man:x:6:12:man:/var/cache/man:/usr/sbin/nologin</p>
<p>lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin</p>
<p>mail:x:8:8:mail:/var/mail:/usr/sbin/nologin</p>
<p>news:x:9:9:news:/var/spool/news:/usr/sbin/nologin</p>
<p>uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin</p>
<p>proxy:x:13:13:proxy:/bin:/usr/sbin/nologin</p>
<p>www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin</p>
<p>backup:x:34:34:backup:/var/backups:/usr/sbin/nologin</p>
<p>list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin</p>
<p>irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin</p>
<p>_apt:x:42:65534::/nonexistent:/usr/sbin/nologin</p>
<p>nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin</p>
<p>_rpc:x:100:65534::/run/rpcbind:/usr/sbin/nologin</p>
<p>systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin</p>
<p>statd:x:101:65534::/var/lib/nfs:/usr/sbin/nologin</p>
<p>~ $</p>
<p>~ $</p>
<p>~ $ cat /host/etc/hosts</p>
<p>127.0.0.1   localhost</p>
<p>::1 localhost ip6-localhost ip6-loopback</p>
<p>fe00::  ip6-localnet</p>
<p>ff00::  ip6-mcastprefix</p>
<p>ff02::1 ip6-allnodes</p>
<p>ff02::2 ip6-allrouters</p>
<p>172.18.0.2  intg-ks-worker2</p>
<p>fc00:f853:ccd:e793::2   intg-ks-worker2</p>
<p>~ $</p>
<p>~ $</p>
<p>~ $ cat /host/etc/resolv.conf</p>
<p># Generated by Docker Engine.</p>
<p># This file can be edited; Docker Engine will not make further changes once it</p>
<p># has been modified.</p>
<p>nameserver 172.18.0.1</p>
<p>search home</p>
<p>options edns0 trust-ad ndots:0</p>
<p># Based on host file: '/etc/resolv.conf' (internal resolver)</p>
<p># ExtServers: [host(127.0.0.53)]</p>
<p># Overrides: []</p>
<p># Option ndots from: internal</p>
<p>~ $</p>
<p>~ $ find /host/etc -readable -type f 2&gt;/dev/null</p>
<p>~ $</p>
<p>~ $ find /host -perm -o+w -type f 2&gt;/dev/null | head -50</p>
<p>/host/proc/sys/kernel/ns_last_pid</p>
<p>/host/proc/pressure/io</p>
<p>/host/proc/pressure/cpu</p>
<p>/host/proc/pressure/memory</p>
<p>/host/proc/1/task/1/attr/current</p>
<p>/host/proc/1/task/1/attr/exec</p>
<p>/host/proc/1/task/1/attr/fscreate</p>
<p>/host/proc/1/task/1/attr/keycreate</p>
<p>/host/proc/1/task/1/attr/sockcreate</p>
<p>/host/proc/1/task/1/attr/smack/current</p>
<p>/host/proc/1/task/1/attr/apparmor/current</p>
<p>/host/proc/1/task/1/attr/apparmor/exec</p>
<p>/host/proc/1/attr/current</p>
<p>/host/proc/1/attr/exec</p>
<p>/host/proc/1/attr/fscreate</p>
<p>/host/proc/1/attr/keycreate</p>
<p>/host/proc/1/attr/sockcreate</p>
<p>/host/proc/1/attr/smack/current</p>
<p>/host/proc/1/attr/apparmor/current</p>
<p>/host/proc/1/attr/apparmor/exec</p>
<p>/host/proc/1/timerslack_ns</p>
<p>/host/proc/106/task/106/attr/current</p>
<p>/host/proc/106/task/106/attr/exec</p>
<p>/host/proc/106/task/106/attr/fscreate</p>
<p>/host/proc/106/task/106/attr/keycreate</p>
<p>/host/proc/106/task/106/attr/sockcreate</p>
<p>/host/proc/106/task/106/attr/smack/current</p>
<p>/host/proc/106/task/106/attr/apparmor/current</p>
<p>/host/proc/106/task/106/attr/apparmor/exec</p>
<p>/host/proc/106/attr/current</p>
<p>/host/proc/106/attr/exec</p>
<p>/host/proc/106/attr/fscreate</p>
<p>/host/proc/106/attr/keycreate</p>
<p>/host/proc/106/attr/sockcreate</p>
<p>/host/proc/106/attr/smack/current</p>
<p>/host/proc/106/attr/apparmor/current</p>
<p>/host/proc/106/attr/apparmor/exec</p>
<p>/host/proc/106/timerslack_ns</p>
<p>/host/proc/124/task/124/attr/current</p>
<p>/host/proc/124/task/124/attr/exec</p>
<p>/host/proc/124/task/124/attr/fscreate</p>
<p>/host/proc/124/task/124/attr/keycreate</p>
<p>/host/proc/124/task/124/attr/sockcreate</p>
<p>/host/proc/124/task/124/attr/smack/current</p>
<p>/host/proc/124/task/124/attr/apparmor/current</p>
<p>/host/proc/124/task/124/attr/apparmor/exec</p>
<p>/host/proc/124/task/132/attr/current</p>
<p>/host/proc/124/task/132/attr/exec</p>
<p>/host/proc/124/task/132/attr/fscreate</p>
<p>/host/proc/124/task/132/attr/keycreate</p>
<p>~ $</p>
<p> $ ls -ld /host/tmp</p>
<p>drwxrwxrwt    2 root     root            60 Jul 11 16:09 /host/tmp</p>
<p>~ $ touch /host/tmp/test-write-nonroot.txt &amp;&amp; echo "SUCCESS: wrote as non-root"</p>
<p>SUCCESS: wrote as non-root</p>
<p>~ $</p>
<p>~ $ cat /host/tmp/test-write-nonroot.txt</p>
<p>~ $</p>
<p>~ $ ls -lrt /host/tmp/</p>
<p>total 0</p>
<p>-rw-r--r--    1 1000     2000             0 Jul 11 16:10 test-write-nonroot.txt</p>
<p>~ $</p>
<p>~ $ find /host -group 2000 2&gt;/dev/null</p>
<p>/host/tmp/test-write-nonroot.txt</p>
<p>/host/proc/8811</p>
<p>/host/proc/8811/task</p>
<p>/host/proc/8811/task/8811</p>
<p>/host/proc/8811/task/8811/fd</p>
<p>/host/proc/8811/task/8811/fd/0</p>
<p>/host/proc/8811/task/8811/fd/1</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image361.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Create Secret</p>
<p>cat &gt; app-secret.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Secret</p>
<p>metadata:</p>
<p>  name: app-secret</p>
<p>  namespace: integrations</p>
<p>type: Opaque</p>
<p>stringData:</p>
<p>  username: admin</p>
<p>  password: <removed>
<p>  api-key: <removed>
<p>  connection-string: jdbc:mysql://mysql:3306/inventory</p>
<p>EOF</p>
<p>kubectl apply -f app-secret.yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ secret</p>
<p>NAME         TYPE     DATA   AGE</p>
<p>app-secret   Opaque   4      6s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<p>cat &gt; pod-secret-env.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: secret-env-demo</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: app</p>
<p>    image: busybox</p>
<p>    command: ["sleep","3600"]</p>
<p>    <mark>env</mark>:</p>
<p>      - name: USERNAME</p>
<p>        valueFrom:</p>
<p>          secretKeyRef:</p>
<p>            name: app-secret</p>
<p>            key: username</p>
<p>      - name: PASSWORD</p>
<p>        valueFrom:</p>
<p>          secretKeyRef:</p>
<p>            name: app-secret</p>
<p>            key: password</p>
<p>      - name: API_KEY</p>
<p>        valueFrom:</p>
<p>          secretKeyRef:</p>
<p>            name: app-secret</p>
<p>            key: api-key</p>
<p>EOF</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ k apply -f pod-secret-env.yaml</p>
<p>pod/secret-env-demo created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS         AGE</p>
<p>configmap-demo-pod   1/1     Running   24 (9m55s ago)   6d10h</p>
<p>controlled-pod       1/1     Running   0                4h9m</p>
<p>insecure-pod         1/1     Running   19 (9m49s ago)   6d4h</p>
<p>privileged-pod       1/1     Running   18 (9m38s ago)   6d4h</p>
<p>secret-env-demo      1/1     Running   0                6s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Get secrets stored in environment.</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-env-demo -- env | grep -E 'USERNAME|PASSWORD|API_KEY'</p>
<p>USERNAME=admin</p>
<p>PASSWORD=<removed>
<p>API_KEY=<removed>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<p>cat &gt; pod-secret-volume.yaml &lt;&lt; 'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: secret-volume-demo</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: app</p>
<p>    image: busybox</p>
<p>    command: ["sleep","3600"]</p>
<p>    <mark>volumeMounts:</mark></p>
<p><mark>    - name: secret-volume</mark></p>
<p><mark>      mountPath: /etc/secrets</mark></p>
<p><mark>      readOnly: true</mark></p>
<p><mark>  volumes:</mark></p>
<p><mark>  - name: secret-volume</mark></p>
<p><mark>    secret:<removed>
<p><mark>      secretName: app-secret</mark></p>
<p>EOF</p></td>
</tr>
<tr>
<td><p>→Apply the pod yaml</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl apply -f pod-secret-volume.yaml</p>
<p>pod/secret-volume-demo created</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ pods</p>
<p>NAME                 READY   STATUS    RESTARTS       AGE</p>
<p>configmap-demo-pod   1/1     Running   24 (15m ago)   6d10h</p>
<p>controlled-pod       1/1     Running   0              4h14m</p>
<p>insecure-pod         1/1     Running   19 (15m ago)   6d4h</p>
<p>privileged-pod       1/1     Running   18 (14m ago)   6d4h</p>
<p>secret-env-demo      1/1     Running   0              5m21s</p>
<p>secret-volume-demo   1/1     Running   0              32s</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
</tr>
<tr>
<td><p>→Fetch secrets from the pod</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- ls -l /etc/secrets</p>
<p>total 0</p>
<p>lrwxrwxrwx    1 root     root            14 Jul 11 20:12 api-key -&gt; ..data/api-key</p>
<p>lrwxrwxrwx    1 root     root            24 Jul 11 20:12 connection-string -&gt; ..data/connection-string</p>
<p>lrwxrwxrwx    1 root     root            15 Jul 11 20:12 password -&gt; ..data/password</p>
<p>lrwxrwxrwx    1 root     root            15 Jul 11 20:12 username -&gt; ..data/username</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- cat /etc/secrets/password</p>
<p><mark>P@ssw0rd123</mark></p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$ kubectl exec -it -n integrations secret-volume-demo -- cat /etc/secrets/api-key</p>
<p><mark>1234567890abcdef</mark></p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p>
<p>admin@Ubuntu:~/Downloads/k8basics/volumes$</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image362.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image363.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td><p>→Simplified</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image364.webp" style="width:6.72014in;height:4.48056in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image365.webp" style="width:5.03472in;height:2.54167in" alt="{EF67BF24-2E5C-4547-97B2-2BDCB2AC238C}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image366.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image367.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image368.webp" style="width:7.67986in;height:2.98472in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image369.wmf" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image370.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image371.webp" style="width:6.61111in;height:4.40764in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>admin@Ubuntu:~$ # 1. Is kube-proxy running?</p>
<p>kubectl -n kube-system get pods -l k8s-app=kube-proxy</p>
<p>NAME               READY   STATUS    RESTARTS       AGE</p>
<p>kube-proxy-fz82g   1/1     Running   32 (28m ago)   48d</p>
<p>kube-proxy-hl5vh   1/1     Running   31 (28m ago)   48d</p>
<p>kube-proxy-zrjlp   1/1     Running   31 (28m ago)   48d</p>
<p>admin@Ubuntu:~$ kubectl -n kube-system get configmap kube-proxy -o yaml | grep mode</p>
<p>    mode: iptables</p>
<p>admin@Ubuntu:~$ kubectl get nodes</p>
<p>NAME                    STATUS   ROLES           AGE   VERSION</p>
<p>intg-ks-control-plane   Ready    control-plane   48d   v1.29.2</p>
<p>intg-ks-worker          Ready    &lt;none&gt;          48d   v1.29.2</p>
<p>intg-ks-worker2         Ready    &lt;none&gt;          48d   v1.29.2</p>
<p>admin@Ubuntu:~$ docker ps --format "table {{.Names}}\t{{.Status}}"</p>
<p>NAMES                   STATUS</p>
<p>intg-ks-control-plane   Up 30 minutes</p>
<p>intg-ks-worker2         Up 30 minutes</p>
<p>intg-ks-worker          Up 30 minutes</p>
<p>admin@Ubuntu:~$ docker exec -it intg-ks-control-plane iptables-save | grep KUBE</p>
<p>:KUBE-IPTABLES-HINT - [0:0]</p>
<p>:KUBE-KUBELET-CANARY - [0:0]</p>
<p>:KUBE-PROXY-CANARY - [0:0]</p>
<p>:KUBE-EXTERNAL-SERVICES - [0:0]</p>
<p>:KUBE-FIREWALL - [0:0]</p>
<p>:KUBE-FORWARD - [0:0]</p>
<p>:KUBE-KUBELET-CANARY - [0:0]</p>
<p>:KUBE-NODEPORTS - [0:0]</p>
<p>:KUBE-PROXY-CANARY - [0:0]</p>
<p>:KUBE-PROXY-FIREWALL - [0:0]</p>
<p>:KUBE-SERVICES - [0:0]</p>
<p>-A INPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL</p>
<p>-A INPUT -m comment --comment "kubernetes health check service ports" -j KUBE-NODEPORTS</p>
<p>-A INPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes externally-visible service portals" -j KUBE-EXTERNAL-SERVICES</p>
<p>-A INPUT -j KUBE-FIREWALL</p>
<p>-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL</p>
<p>-A FORWARD -m comment --comment "kubernetes forwarding rules" -j KUBE-FORWARD</p>
<p>-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes service portals" -j KUBE-SERVICES</p>
<p>-A FORWARD -m conntrack --ctstate NEW -m comment --comment "kubernetes externally-visible service portals" -j KUBE-EXTERNAL-SERVICES</p>
<p>-A OUTPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes load balancer firewall" -j KUBE-PROXY-FIREWALL</p>
<p>-A OUTPUT -m conntrack --ctstate NEW -m comment --comment "kubernetes service portals" -j KUBE-SERVICES</p>
<p>-A OUTPUT -j KUBE-FIREWALL</p>
<p>-A KUBE-FIREWALL ! -s 127.0.0.0/8 -d 127.0.0.0/8 -m comment --comment "block incoming localnet connections" -m conntrack ! --ctstate RELATED,ESTABLISHED,DNAT -j DROP</p>
<p>-A KUBE-FORWARD -m conntrack --ctstate INVALID -j DROP</p>
<p>-A KUBE-FORWARD -m comment --comment "kubernetes forwarding rules" -m mark --mark 0x4000/0x4000 -j ACCEPT</p>
<p>-A KUBE-FORWARD -m comment --comment "kubernetes forwarding conntrack rule" -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT</p>
<p>:KUBE-KUBELET-CANARY - [0:0]</p>
<p>:KUBE-MARK-MASQ - [0:0]</p>
<p>:KUBE-NODEPORTS - [0:0]</p>
<p>:KUBE-POSTROUTING - [0:0]</p>
<p>:KUBE-PROXY-CANARY - [0:0]</p>
<p>:KUBE-SEP-6E7XQMQ4RAYOWTTM - [0:0]</p>
<p>:KUBE-SEP-BKPAYHGQ3HGBC5MP - [0:0]</p>
<p>:KUBE-SEP-IT2ZTR26TO4XFPTO - [0:0]</p>
<p>:KUBE-SEP-N4G2XR5TDX7PQE7P - [0:0]</p>
<p>:KUBE-SEP-V2PECCYPB6X2GSCW - [0:0]</p>
<p>:KUBE-SEP-YIL6JZP7A3QYXJU2 - [0:0]</p>
<p>:KUBE-SEP-ZP3FB6NMPNCO4VBJ - [0:0]</p>
<p>:KUBE-SEP-ZXMNUKOKXUTL2MK2 - [0:0]</p>
<p>:KUBE-SERVICES - [0:0]</p>
<p>:KUBE-SVC-ERIFXISQEP7F7OF4 - [0:0]</p>
<p>:KUBE-SVC-JD5MR3NA4I4DYORP - [0:0]</p>
<p>:KUBE-SVC-NPX46M4PTMTKRN6Y - [0:0]</p>
<p>:KUBE-SVC-TCOU7JCQXEZGVUNU - [0:0]</p>
<p>:KUBE-SVC-Z4ANX4WAEWEBLCTM - [0:0]</p>
<p>-A PREROUTING -m comment --comment "kubernetes service portals" -j KUBE-SERVICES</p>
<p>-A OUTPUT -m comment --comment "kubernetes service portals" -j KUBE-SERVICES</p>
<p>-A POSTROUTING -m comment --comment "kubernetes postrouting rules" -j KUBE-POSTROUTING</p>
<p>-A KUBE-MARK-MASQ -j MARK --set-xmark 0x4000/0x4000</p>
<p>-A KUBE-POSTROUTING -m mark ! --mark 0x4000/0x4000 -j RETURN</p>
<p>-A KUBE-POSTROUTING -j MARK --set-xmark 0x4000/0x0</p>
<p>-A KUBE-POSTROUTING -m comment --comment "kubernetes service traffic requiring SNAT" -j MASQUERADE --random-fully</p>
<p>-A KUBE-SEP-6E7XQMQ4RAYOWTTM -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:dns" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-6E7XQMQ4RAYOWTTM -p udp -m comment --comment "kube-system/kube-dns:dns" -m udp -j DNAT --to-destination 10.244.0.3:53</p>
<p>-A KUBE-SEP-BKPAYHGQ3HGBC5MP -s 10.244.1.2/32 -m comment --comment "kube-system/metrics-server:https" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-BKPAYHGQ3HGBC5MP -p tcp -m comment --comment "kube-system/metrics-server:https" -m tcp -j DNAT --to-destination 10.244.1.2:10250</p>
<p>-A KUBE-SEP-IT2ZTR26TO4XFPTO -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:dns-tcp" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-IT2ZTR26TO4XFPTO -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp" -m tcp -j DNAT --to-destination 10.244.0.2:53</p>
<p>-A KUBE-SEP-N4G2XR5TDX7PQE7P -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:metrics" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-N4G2XR5TDX7PQE7P -p tcp -m comment --comment "kube-system/kube-dns:metrics" -m tcp -j DNAT --to-destination 10.244.0.2:9153</p>
<p>-A KUBE-SEP-V2PECCYPB6X2GSCW -s 172.18.0.2/32 -m comment --comment "default/kubernetes:https" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-V2PECCYPB6X2GSCW -p tcp -m comment --comment "default/kubernetes:https" -m tcp -j DNAT --to-destination 172.18.0.2:6443</p>
<p>-A KUBE-SEP-YIL6JZP7A3QYXJU2 -s 10.244.0.2/32 -m comment --comment "kube-system/kube-dns:dns" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-YIL6JZP7A3QYXJU2 -p udp -m comment --comment "kube-system/kube-dns:dns" -m udp -j DNAT --to-destination 10.244.0.2:53</p>
<p>-A KUBE-SEP-ZP3FB6NMPNCO4VBJ -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:metrics" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-ZP3FB6NMPNCO4VBJ -p tcp -m comment --comment "kube-system/kube-dns:metrics" -m tcp -j DNAT --to-destination 10.244.0.3:9153</p>
<p>-A KUBE-SEP-ZXMNUKOKXUTL2MK2 -s 10.244.0.3/32 -m comment --comment "kube-system/kube-dns:dns-tcp" -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SEP-ZXMNUKOKXUTL2MK2 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp" -m tcp -j DNAT --to-destination 10.244.0.3:53</p>
<p>-A KUBE-SERVICES -d 10.96.0.1/32 -p tcp -m comment --comment "default/kubernetes:https cluster IP" -m tcp --dport 443 -j KUBE-SVC-NPX46M4PTMTKRN6Y</p>
<p>-A KUBE-SERVICES -d 10.96.0.10/32 -p udp -m comment --comment "kube-system/kube-dns:dns cluster IP" -m udp --dport 53 -j KUBE-SVC-TCOU7JCQXEZGVUNU</p>
<p>-A KUBE-SERVICES -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp cluster IP" -m tcp --dport 53 -j KUBE-SVC-ERIFXISQEP7F7OF4</p>
<p>-A KUBE-SERVICES -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:metrics cluster IP" -m tcp --dport 9153 -j KUBE-SVC-JD5MR3NA4I4DYORP</p>
<p>-A KUBE-SERVICES -d 10.96.48.86/32 -p tcp -m comment --comment "kube-system/metrics-server:https cluster IP" -m tcp --dport 443 -j KUBE-SVC-Z4ANX4WAEWEBLCTM</p>
<p>-A KUBE-SERVICES -m comment --comment "kubernetes service nodeports; NOTE: this must be the last rule in this chain" -m addrtype --dst-type LOCAL -j KUBE-NODEPORTS</p>
<p>-A KUBE-SVC-ERIFXISQEP7F7OF4 ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:dns-tcp cluster IP" -m tcp --dport 53 -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SVC-ERIFXISQEP7F7OF4 -m comment --comment "kube-system/kube-dns:dns-tcp -&gt; 10.244.0.2:53" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-IT2ZTR26TO4XFPTO</p>
<p>-A KUBE-SVC-ERIFXISQEP7F7OF4 -m comment --comment "kube-system/kube-dns:dns-tcp -&gt; 10.244.0.3:53" -j KUBE-SEP-ZXMNUKOKXUTL2MK2</p>
<p>-A KUBE-SVC-JD5MR3NA4I4DYORP ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p tcp -m comment --comment "kube-system/kube-dns:metrics cluster IP" -m tcp --dport 9153 -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SVC-JD5MR3NA4I4DYORP -m comment --comment "kube-system/kube-dns:metrics -&gt; 10.244.0.2:9153" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-N4G2XR5TDX7PQE7P</p>
<p>-A KUBE-SVC-JD5MR3NA4I4DYORP -m comment --comment "kube-system/kube-dns:metrics -&gt; 10.244.0.3:9153" -j KUBE-SEP-ZP3FB6NMPNCO4VBJ</p>
<p>-A KUBE-SVC-NPX46M4PTMTKRN6Y ! -s 10.244.0.0/16 -d 10.96.0.1/32 -p tcp -m comment --comment "default/kubernetes:https cluster IP" -m tcp --dport 443 -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SVC-NPX46M4PTMTKRN6Y -m comment --comment "default/kubernetes:https -&gt; 172.18.0.2:6443" -j KUBE-SEP-V2PECCYPB6X2GSCW</p>
<p>-A KUBE-SVC-TCOU7JCQXEZGVUNU ! -s 10.244.0.0/16 -d 10.96.0.10/32 -p udp -m comment --comment "kube-system/kube-dns:dns cluster IP" -m udp --dport 53 -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SVC-TCOU7JCQXEZGVUNU -m comment --comment "kube-system/kube-dns:dns -&gt; 10.244.0.2:53" -m statistic --mode random --probability 0.50000000000 -j KUBE-SEP-YIL6JZP7A3QYXJU2</p>
<p>-A KUBE-SVC-TCOU7JCQXEZGVUNU -m comment --comment "kube-system/kube-dns:dns -&gt; 10.244.0.3:53" -j KUBE-SEP-6E7XQMQ4RAYOWTTM</p>
<p>-A KUBE-SVC-Z4ANX4WAEWEBLCTM ! -s 10.244.0.0/16 -d 10.96.48.86/32 -p tcp -m comment --comment "kube-system/metrics-server:https cluster IP" -m tcp --dport 443 -j KUBE-MARK-MASQ</p>
<p>-A KUBE-SVC-Z4ANX4WAEWEBLCTM -m comment --comment "kube-system/metrics-server:https -&gt; 10.244.1.2:10250" -j KUBE-SEP-BKPAYHGQ3HGBC5MP</p>
<p>admin@Ubuntu:~$</p></td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td><p>→List the proc</p>
<p>ls -l /proc/sys/net/ipv4/    # Lists all IPv4 kernel networking parameters in long format (permissions, owner, etc.).</p></td>
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
<p>admin@Ubuntu:/proc/sys$ ls -lrt</p>
<p>total 0</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:28 kernel</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:28 fs</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:28 net</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:28 vm</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:30 user</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:30 dev</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:30 debug</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:30 abi</p>
<p>admin@Ubuntu:/proc/sys$ cat /proc/sys/net/ipv4/ip_forward</p>
<p>1</p>
<p>admin@Ubuntu:/proc/sys$ sysctl net.ipv4.ip_forward</p>
<p>net.ipv4.ip_forward = 1</p>
<p>admin@Ubuntu:/proc/sys$</p>
<p>admin@Ubuntu:/proc/sys$</p>
<p>→We can see there are many kernel parameters that can modified. Some of them are as below.</p>
<p>admin@Ubuntu:/proc/sys$ ls -lrt net/ipv4</p>
<p>total 0</p>
<p>dr-xr-xr-x 1 root root 0 Aug  4 13:28 conf</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_forward</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_local_port_range</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:29 ping_group_range</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:29 ip_unprivileged_port_start</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 xfrm4_gc_thresh</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_wmem_min</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_rmem_min</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_mem</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_l3mdev_accept</p>
<p>-r--r--r-- 1 root root 0 Aug  4 13:37 udp_hash_entries</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_early_demux</p>
<p>-rw-r--r-- 1 root root 0 Aug  4 13:37 udp_child_hash_entries</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image372.webp" style="width:7.67986in;height:5.12014in" /></p></td>
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
<p>admin@Ubuntu:/proc/sys$ sysctl vm.swappiness</p>
<p>vm.swappiness = 10</p>
<p>admin@Ubuntu:/proc/sys$</p></td>
</tr>
<tr>
<td><p><strong>→Permanent modifications.</strong></p>
<p>→We can also make such changes permanent. Below is the the place where we ususally make changes.</p>
<p>admin@Ubuntu:/proc/sys$ cat /etc/sysctl.conf</p>
<p>#</p>
<p># /etc/sysctl.conf - Configuration file for setting system variables</p>
<p># See /etc/sysctl.d/ for additional system variables.</p>
<p># See sysctl.conf (5) for information.</p>
<p>#</p>
<p>#kernel.domainname = example.com</p>
<p># Uncomment the following to stop low-level messages on console</p>
<p>#kernel.printk = 3 4 1 3</p>
<p>###################################################################</p>
<p># Functions previously found in netbase</p>
<p>#</p>
<p># Uncomment the next two lines to enable Spoof protection (reverse-path filter)</p>
<p># Turn on Source Address Verification in all interfaces to</p>
<p># prevent some spoofing attacks</p>
<p>#net.ipv4.conf.default.rp_filter=1</p>
<p>#net.ipv4.conf.all.rp_filter=1</p>
<p># Uncomment the next line to enable TCP/IP SYN cookies</p>
<p># See http://lwn.net/Articles/277146/</p>
<p># Note: This may impact IPv6 TCP sessions too</p>
<p>#net.ipv4.tcp_syncookies=1</p>
<p># Uncomment the next line to enable packet forwarding for IPv4</p>
<p>#net.ipv4.ip_forward=1</p>
<p># Uncomment the next line to enable packet forwarding for IPv6</p>
<p>#  Enabling this option disables Stateless Address Autoconfiguration</p>
<p>#  based on Router Advertisements for this host</p>
<p>#net.ipv6.conf.all.forwarding=1</p>
<p>###################################################################</p>
<p># Additional settings - these settings can improve the network</p>
<p># security of the host and prevent against some network attacks</p>
<p># including spoofing attacks and man in the middle attacks through</p>
<p># redirection. Some network environments, however, require that these</p>
<p># settings are disabled so review and enable them as needed.</p>
<p>#</p>
<p># Do not accept ICMP redirects (prevent MITM attacks)</p>
<p>#net.ipv4.conf.all.accept_redirects = 0</p>
<p>#net.ipv4.conf.default.accept_redirects = 0</p>
<p># _or_</p>
<p># Accept ICMP redirects only for gateways listed in our default</p>
<p># gateway list (enabled by default)</p>
<p># net.ipv4.conf.all.secure_redirects = 1</p>
<p>#</p>
<p># Do not send ICMP redirects (we are not a router)</p>
<p>#net.ipv4.conf.all.send_redirects = 0</p>
<p>#</p>
<p># Log Martian Packets</p>
<p>#net.ipv4.conf.all.log_martians = 1</p>
<p>#</p>
<p>###################################################################</p>
<p># Magic system request Key</p>
<p># 0=disable, 1=enable all, &gt;1 bitmask of sysrq functions</p>
<p># See https://www.kernel.org/doc/html/latest/admin-guide/sysrq.html</p>
<p># for what other values do</p>
<p>#kernel.sysrq=438</p>
<p># VirtualBox VM Optimizations</p>
<p>vm.swappiness=10</p>
<p>vm.dirty_background_ratio=5</p>
<p>vm.dirty_ratio=10</p>
<p>vm.vfs_cache_pressure=50</p>
<p>net.core.rmem_max=16777216</p>
<p>net.core.wmem_max=16777216</p>
<p>admin@Ubuntu:/proc/sys$</p></td>
</tr>
<tr>
<td><p><strong>→Better place for permanent modification is directly affecting here.</strong></p>
<p>admin@Ubuntu:/etc/sysctl.d$ ls</p>
<p>10-bufferbloat.conf       10-magic-sysrq.conf       10-zeropage.conf                      90-omnibus-gitlab-net.core.somaxconn.conf</p>
<p>10-console-messages.conf  10-map-count.conf         90-omnibus-gitlab-kernel.sem.conf     99-sysctl.conf</p>
<p>10-ipv6-privacy.conf      10-network-security.conf  90-omnibus-gitlab-kernel.shmall.conf  README.sysctl</p>
<p>10-kernel-hardening.conf  10-ptrace.conf            90-omnibus-gitlab-kernel.shmmax.conf</p>
<p>admin@Ubuntu:/etc/sysctl.d$</p>
<p>admin@Ubuntu:/etc/sysctl.d$ pwd</p>
<p>/etc/sysctl.d</p>
<p>admin@Ubuntu:/etc/sysctl.d$</p>
<p>admin@Ubuntu:/etc/sysctl.d$ cat 10-kernel-hardening.conf</p>
<p># These settings are specific to hardening the kernel itself from attack</p>
<p># from userspace, rather than protecting userspace from other malicious</p>
<p># userspace things.</p>
<p>#</p>
<p>#</p>
<p># When an attacker is trying to exploit the local kernel, it is often</p>
<p># helpful to be able to examine where in memory the kernel, modules,</p>
<p># and data structures live. As such, kernel addresses should be treated</p>
<p># as sensitive information.</p>
<p>#</p>
<p># Many files and interfaces contain these addresses (e.g. /proc/kallsyms,</p>
<p># /proc/modules, etc), and this setting can censor the addresses. A value</p>
<p># of "0" allows all users to see the kernel addresses. A value of "1"</p>
<p># limits visibility to the root user, and "2" blocks even the root user.</p>
<p>kernel.kptr_restrict = 1</p>
<p># Access to the kernel log buffer can be especially useful for an attacker</p>
<p># attempting to exploit the local kernel, as kernel addresses and detailed</p>
<p># call traces are frequently found in kernel oops messages. Setting</p>
<p># dmesg_restrict to "0" allows all users to view the kernel log buffer,</p>
<p># and setting it to "1" restricts access to those with CAP_SYSLOG.</p>
<p>#</p>
<p># dmesg_restrict defaults to 1 via CONFIG_SECURITY_DMESG_RESTRICT, only</p>
<p># uncomment the following line to disable.</p>
<p># kernel.dmesg_restrict = 0</p>
<p>admin@Ubuntu:/etc/sysctl.d$</p></td>
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
<p>kubectl apply -f <a href="https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/">https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/</a>recommended.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image373.webp" style="width:7.52847in;height:1.91528in" alt="{6AE6A2CD-4D0D-4878-A439-C4306824729F}" /></p></td>
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
<td><p>kubectl get pods -n kubernetes-dashboard</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image374.webp" style="width:7.52431in;height:0.98611in" alt="{424CE2D2-08EF-45EF-B803-A2D79D62CA8A}" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: ServiceAccount</p>
<p>metadata:</p>
<p>  name: dashboard-admin</p>
<p>  namespace: kubernetes-dashboard</p>
<p>automountServiceAccountToken: <removed>
<p>---</p>
<p>apiVersion: v1</p>
<p>kind: Secret</p>
<p>metadata:</p>
<p>  name: dashboard-admin-secret</p>
<p>  namespace: kubernetes-dashboard</p>
<p>  annotations:</p>
<p>    kubernetes.io/service-account.name: dashboard-admin</p>
<p>type: kubernetes.io/service-account-token</p>
<p>---</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: ClusterRoleBinding</p>
<p>metadata:</p>
<p>  name: dashboard-admin-binding</p>
<p>roleRef:</p>
<p>  apiGroup: rbac.authorization.k8s.io</p>
<p>  kind: ClusterRole</p>
<p>  name: cluster-admin</p>
<p>subjects:</p>
<p>- kind: ServiceAccount</p>
<p>  name: dashboard-admin</p>
<p>  namespace: kubernetes-dashboard</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\dashboard-admin-local.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image375.webp" style="width:7.41667in;height:1.28125in" alt="{ED0AF0CA-95D8-46C8-B39C-7A7C33D63FCD}" /></p></td>
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
<p>kubectl -n kubernetes-dashboard describe secret dashboard-admin-secret | grep -E '^token' | awk '{print $2}'</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image376.webp" style="width:7.525in;height:1.9625in" alt="{8E68B9CE-4825-4D30-9586-8D08BACF4E61}" /></p></td>
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
<td><p>kubectl proxy</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image377.webp" style="width:3.9375in;height:1.13542in" alt="{E6C1246E-8D69-4A60-85CE-A193F308E59C}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image378.webp" style="width:7.52569in;height:3.52569in" alt="{6590E616-6ADB-43DA-AB7A-291960C29637}" /></p></td>
</tr>
<tr>
<td><p>→Paste the token</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image379.webp" style="width:7.53819in;height:1.89306in" alt="{B9EC9985-8FD8-44FF-AAD9-A11E20CF65FA}" /></p></td>
</tr>
<tr>
<td><p>→Access the dashboard</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image380.webp" style="width:7.54028in;height:4.39028in" alt="{EE98987F-D6CC-4C45-90F7-CA278761F2F7}" /></p></td>
</tr>
<tr>
<td><p>→Notice there are no pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image381.webp" style="width:7.53056in;height:2.76528in" alt="{23901786-1835-4690-B70B-21B08F24E8E2}" /></p></td>
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
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: nginx-pod</p>
<p>  namespace: integrations</p>
<p>  labels:</p>
<p>    app: nginx</p>
<p>spec:</p>
<p>  containers:</p>
<p>  - name: nginx</p>
<p>    image: nginx:latest</p>
<p>    ports:</p>
<p>    - containerPort: 80</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>kubectl apply -f .\simple-nginx-pod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image382.webp" style="width:7.05208in;height:2.5in" alt="{D62D5284-F071-4992-851A-3874175AD6C3}" /></p></td>
</tr>
<tr>
<td><p>→Same can be seen on dashboard</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image383.webp" style="width:7.525in;height:1.76181in" alt="{A069CD38-9C34-452E-BFB3-9F48CF8A5198}" /></p></td>
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
<p>kubectl port-forward pod/nginx-pod 8080:80 -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image384.webp" style="width:6.72917in;height:1.625in" alt="{A5591E02-3C1F-4BFF-9A30-55FE749FFC41}" /></p>
<p>→Below is the port forwarding where a temporary tunnel is opened and lives as long as the process is there.</p>
<p>→Once we disconnect the tunnel gets terminated.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image385.webp" style="width:7.52847in;height:1.60625in" alt="{8CD42DE8-933A-4254-AA85-68AE57208C0D}" /></p></td>
</tr>
<tr>
<td><p>→What happens when we do the port forwarding</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image386.webp" style="width:5in;height:5.46319in" alt="{A78BA7A4-1236-4F60-AD3C-1919EC84D876}" /></p>
<p>→Kubernetes opens a direct tunnel temporarily for local testing.</p></td>
</tr>
<tr>
<td><p>→On browser access <a href="http://localhost:8080">http://localhost:8080</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image387.webp" style="width:7.53264in;height:2.42222in" alt="{1752ED95-ACEB-4DCD-BF27-193203B618FE}" /></p></td>
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
| <img src="subjects/tech/azure/az-aks-complete/img/media/image388.webp" style="width:5.65972in;height:5.53194in" /> |
| →Refer prevous step to install kubernetes using KIND on local setup. |

## K8 Resource Types - Most common

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image389.webp" style="width:7.67569in;height:3.85833in" /></p></td>
</tr>
<tr>
<td><p>→Check resources that come as part of the vanila kubernetes. Notice the resources we commonly use like configmaps, pods, deployments, secrets etc.</p>
<p>kubectl api-resources</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image138.webp" style="width:7.68403in;height:3.72083in" /></p></td>
</tr>
</tbody>
</table>

## What is a manifest

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image390.webp" style="width:7.67917in;height:3.60625in" /> |
| →Above picture compares the delcaration of manifest with a simple pod. |

### Where to get manifests 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to below link where we can find templates for each of the manifests. We can find template for every manifest that we want.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image391.webp" style="width:5.79931in;height:3.39583in" /></p>
<p><a href="https://kubernetes.io/docs/concepts/workloads/pods/">https://kubernetes.io/docs/concepts/workloads/pods/</a></p></td>
</tr>
<tr>
<td><p><a href="https://kubernetes.io/docs/concepts/configuration/secret/">https://kubernetes.io/docs/concepts/configuration/secret/</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image392.webp" style="width:5.58611in;height:3.45347in" /></p></td>
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
<p>kubectl run nginx2 --image=nginx --dry-run=client</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image393.webp" style="width:6.44306in;height:3.23681in" /></p></td>
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
<p>kubectl run nginx2 --image=nginx -o yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image394.webp" style="width:7.68264in;height:4.40069in" /></p>
<p>→Notice it is created as well.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image395.webp" style="width:7.26042in;height:3.39583in" /></p></td>
</tr>
<tr>
<td><p>→However, if we want to generate yaml ‘without’ actually creating the object, we use ‘with dryrun’</p>
<p>kubectl run nginx3 --image=nginx <strong>--dry-run=client</strong> -o yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image396.webp" style="width:7.68472in;height:4.51944in" /></p></td>
</tr>
<tr>
<td><p>→We will have much uses with such generated yamls to understand. Another extension could be writing it to a file</p>
<p>kubectl run nginx3 --image=nginx <strong>--dry-run=client</strong> -o yaml &gt; custompod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image397.webp" style="width:7.68125in;height:3.04722in" /></p></td>
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
<p>kubectl apply -f 001multi-continainer-pod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image398.webp" style="width:7.67778in;height:2.81111in" /></p></td>
</tr>
<tr>
<td><p>→Yaml looks a simple as like this</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>name: multi-container-pod</p>
<p>spec:</p>
<p>containers:</p>
<p>- name: nginx-container</p>
<p>image: nginx</p>
<p>- name: redis-container</p>
<p>image: redis</p></td>
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
<p>kubectl get pods</p>
<p>kubectl exec -it multi-container-pod -- bash</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image399.webp" style="width:7.67708in;height:2.94514in" /></p></td>
</tr>
<tr>
<td><p>→If we want to enter into specific one, use something like below.</p>
<p>kubectl exec -it multi-container-pod -c redis-container -- bash</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image400.webp" style="width:7.67847in;height:2.13264in" /></p></td>
</tr>
<tr>
<td><p>→Clean up the resources</p>
<p>kubectl delete -f 001multi-continainer-pod.yaml</p></td>
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
<p>ping -c 3 google.com</p>
<p>docker ps</p>
<p>docker images</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image401.webp" style="width:7.68333in;height:2.96597in" /></p>
<p>→Let us put the ping command inside an image and test it. Basically the container upon starting will run this command and exits.</p>
<p>→The command goes inside the docker file as highlighted below. This is THE-MOST-SIMPLE-DOCKERFILE</p>
<p>FROM busybox:latest</p>
<p><strong>CMD</strong> ["ping", "-c", "3", "google.com"]</p></td>
</tr>
<tr>
<td><p>→Here we have a custom docker file with a <strong>custom name</strong>. We are building a simple image locally using the custom file. Notice the tag -<strong>-file</strong> used in the build command.</p>
<p>ls -lrt</p>
<p>cat <strong>002DockerFile</strong></p>
<p>docker build --<strong>file</strong> 002DockerFile -t busybox:pingtest .</p>
<p>docker ps</p>
<p>docker images</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image402.webp" style="width:7.67153in;height:3.64167in" /></p></td>
</tr>
<tr>
<td><p>→Run the image to see it is working. Notice that the container gets stopped after the command has finished. Same can be seen in docker ps.</p>
<p>docker run busybox:pingtest</p>
<p>docker ps -a</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image403.webp" style="width:7.67569in;height:1.78264in" /></p></td>
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
<p>FROM ubuntu</p>
<p>ENTRYPOINT ["/bin/echo"]</p>
<p>CMD ["Hello","World"]</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image404.webp" style="width:7.68264in;height:2.34028in" /></p>
<p>→Note that when we provide an argument to the docker run command then the CMD inside the docker file will be overriddent. We will see both as below. First direct run then overriding it</p>
<p>→Let us build it first</p>
<p>docker build --file 003DockerFile -t ubuntu:greetings .</p>
<p>docker images</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image405.webp" style="width:7.67778in;height:3.80972in" /></p></td>
</tr>
<tr>
<td><p>→Direct invocation <strong>without</strong> passing any arguments</p>
<p>docker run ubuntu:greetings</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image406.webp" style="width:7.68125in;height:1.11181in" /></p></td>
</tr>
<tr>
<td><p>→Now with <strong>with</strong> arguments in the command. Notice now in the output, what we passed as arguments get picked and relayed.</p>
<p>docker run ubuntu:greetings Sambarvada and PistaSingh</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image407.webp" style="width:7.68333in;height:1.55694in" /></p></td>
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
<p>kubectl get pods</p>
<p>kubectl logs echo-pod</p>
<p>kubectl get pods</p>
<p>kubectl delete pod echo-pod</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image408.webp" style="width:7.68403in;height:2.89444in" /></p></td>
</tr>
<tr>
<td><p>→Note that,  above command is valid for a <strong>quick demo </strong>of passing a command-line argument to a pod. It does echo the string as intended.</p>
<p>→The <strong>crash loop</strong> happens because the pod exits immediately after echoing, and Kubernetes <strong>tries to restart</strong> it unless you specify --restart=Never.</p>
<p>→So for demo purposes, it's fine. Just not ideal for long-running or clean exit behavior.</p>
<p>→If we want more cleaner way use below command</p>
<p>kubectl run echo-pod --image=busybox --restart=Never -- /bin/sh -c 'echo "Pista Singh is here"'</p></td>
</tr>
<tr>
<td><p>→Let us see another command that does same thing.</p>
<p>kubectl run ping-pod --image=busybox:latest --command -- ping "-c" "5" "google.com"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image409.webp" style="width:7.6875in;height:2.83125in" /></p>
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
<p>cd /media/sf_ws/k8basics/cka</p>
<p>kubectl apply -f 004pingpod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image410.webp" style="width:6.23958in;height:1.35417in" /></p>
<p>→Array notation can be seen in the last line</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image411.webp" style="width:7.67917in;height:3.56806in" /></p></td>
</tr>
<tr>
<td><p>→Check the logs</p>
<p>kubectl logs busybox-pingpod</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image412.webp" style="width:7.68472in;height:1.46181in" /></p></td>
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
<p>kubectl apply -f 005pingpod-multiine.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image413.webp" style="width:7.6875in;height:4.51528in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image414.webp" style="width:3.80208in;height:2.01042in" /></p></td>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image415.webp" style="width:3.69792in;height:2.58333in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Another example comparision of Single line vs Multi-line</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image416.webp" style="width:7.68542in;height:2.42917in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image417.webp" style="width:7.67778in;height:1.84236in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image418.webp" style="width:7.68194in;height:1.02153in" /></p></td>
</tr>
<tr>
<td><p>→Eg. Dockerfile with Entry point defined. In such cases, K8 Deployment file need not be overridden.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image419.webp" style="width:4.88542in;height:1.28125in" /></p></td>
</tr>
<tr>
<td><p>Deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image420.webp" style="width:4.76042in;height:4.05208in" /></p></td>
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
<p>kubectl explain pod</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image421.webp" style="width:7.67986in;height:4.67986in" /></p></td>
</tr>
<tr>
<td><p>→We can go / navigate to the depth we want. For eg, below is spec and spec.container</p>
<p>kubectl explain pod.spec</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image422.webp" style="width:7.68611in;height:4.89792in" /></p></td>
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
<p>docker run -d --name nginx nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image423.webp" style="width:7.68264in;height:2.80625in" /></p></td>
</tr>
<tr>
<td><p>→Notice now the docker ps and the port can be seen as 80, <strong>which is at ‘tcp’ level.</strong></p>
<p>→How did Docker know about this port? It is because this is mentioned in the docker file.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image424.webp" style="width:7.68333in;height:0.90208in" /></p></td>
</tr>
<tr>
<td><p>→Let us validate by describing the manifest. Notice the highlighted section.</p>
<p>docker inspect nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image425.webp" style="width:7.04167in;height:3.65625in" /></p></td>
</tr>
<tr>
<td><p>→Map the container port to host port, once we know the actual container port viz., like above.</p>
<p>→Here, we are mapping port 9090 to 80, meaning any traffic coming on port 9090 goes to 80 on the container.</p>
<p>docker run -d --name nginx2 -p 9090:80 nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image426.webp" style="width:7.68611in;height:1.16042in" /></p></td>
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
<p>kubectl explain pod.spec.containers</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image427.webp" style="width:7.67986in;height:2.09444in" /></p></td>
</tr>
<tr>
<td><p>→Same can be seen in Deployment yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image428.webp" style="width:5.5in;height:2.15625in" /></p></td>
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
<p>kubectl run pod1 --image=nginx</p>
<p>kubectl run pod2 --image=nginx</p>
<p>kubectl run pod3 --image=nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image429.webp" style="width:5.9375in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Show labels. Note that we have not mentioned anything explicitely however, K8 has assigned automatically.</p>
<p>kubectl get pods --show-labels</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image430.webp" style="width:5.60417in;height:2.52083in" /></p></td>
</tr>
<tr>
<td><p>→Describe the pod to see more details including the labels. Notice the labels has ‘run=pod1’</p>
<p>kubectl describe pod pod1</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image431.webp" style="width:6.19792in;height:2.95833in" /></p></td>
</tr>
<tr>
<td><p>→Label the pods as per our choice. Eg. Giving a label with Environment</p>
<p>kubectl label pod pod1 env=dev</p>
<p>kubectl label pod pod2 env=staging</p>
<p>kubectl label pod pod3 env=production</p>
<p>→Notice labels being added.</p>
<p>Kubectl get pods --show-labels</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image432.webp" style="width:6.88542in;height:2.92708in" /></p></td>
</tr>
<tr>
<td><p>→Remove Labels, incase they are not needed.</p>
<p>kubectl get pods --show-labels</p>
<p>→Below command removes the label by name ‘env’, attached to pod1. The hiphen symbol signifies to unlabel.</p>
<p>kubectl label pod pod1 env-</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image433.webp" style="width:7.61458in;height:4.0625in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image434.webp" style="width:6.59931in;height:2.18542in" /></p></td>
</tr>
<tr>
<td><p>ls -l</p>
<p>kubectl apply -f 006replicaset-with-label.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image435.webp" style="width:7.68611in;height:4.35208in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark><strong>apiVersion</strong>: apps/v1</mark></p>
<p><mark><strong>kind</strong>: ReplicaSet</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx-replicaset</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>replicas</strong>: 3</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark><strong>matchLabels</strong>:</mark></p>
<p><mark><strong>tier</strong>: nginx</mark></p>
<p><mark><strong>template</strong>:</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>labels</strong>:</mark></p>
<p><mark><strong>tier</strong>: nginx</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: nginx</mark></p>
<p><mark><strong>image</strong>: nginx:latest</mark></p></td>
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
<p>kubectl get replicasets</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image436.webp" style="width:7.68542in;height:1.02153in" /></p></td>
</tr>
<tr>
<td><p>→Delete the pods and see them coming back due to ‘replicaset’ managing the same.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image437.webp" style="width:7.3125in;height:3.875in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image438.webp" style="width:5.5375in;height:3.3in" /></p>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image439.webp" style="width:5.38958in;height:3.04375in" /></p></td>
</tr>
<tr>
<td><p>→Creating a simple deployment using the command line</p>
<p>kubectl create deployment nginx-deployment --image=nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image440.webp" style="width:7.68125in;height:1.75139in" /></p></td>
</tr>
<tr>
<td><p>→Notice the replica sets that is automatically created</p>
<p>kubectl get rs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image441.webp" style="width:7.68611in;height:1.00694in" /></p></td>
</tr>
<tr>
<td><p>→Generate a new deployment file via command line</p>
<p>kubectl create deployment nginx-deployment --image=nginx --dry-run=client -o yaml &gt; 009deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image442.webp" style="width:7.67431in;height:3.42361in" /></p></td>
</tr>
<tr>
<td><p>→Update the image and notice the results. Here we are updating the image that we used in previous command to ‘httpd:latest’</p>
<p>kubectl set image deployment/nginx-deployment nginx=httpd:latest</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image443.webp" style="width:7.68264in;height:2.4625in" /></p></td>
</tr>
<tr>
<td><p>→Let us say if we have done few more times updated the image and can see the history of rollouts. However, this time when we are updating the image, we have annotated the rootcause, so that it can be viewed as well. This way when we want to revert, we can revert back to appropriate revision</p>
<p>kubectl set image deployment/nginx-deployment nginx=httpd:latest</p>
<p>kubectl annotate deployment/nginx-deployment kubernetes.io/change-cause="Updated nginx container to httpd:latest"</p>
<p>kubectl rollout history deployment nginx-deployment</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image444.webp" style="width:7.68403in;height:2.25625in" /></p></td>
</tr>
<tr>
<td><p>→Revert to appropriate revision, for eg. 3. Notice that existing pod automatically gets terminated and mentioned revision is rolled back.</p>
<p>kubectl rollout undo deployment nginx-deployment --to-revision=3</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image445.webp" style="width:7.68194in;height:2.85139in" /></p></td>
</tr>
<tr>
<td><p>→Notice the Replica sets as well, which will be coherent to number of of different deployments that were exeucted.</p>
<p>kubectl get rs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image446.webp" style="width:7.36458in;height:1.23958in" /></p></td>
</tr>
<tr>
<td><p>→Delete the deployments</p>
<p>kubectl delete -f 009deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image447.webp" style="width:7.59375in;height:2.66667in" /></p></td>
</tr>
<tr>
<td><p>→Distribution of workloads: K8 automatically distributes workloads to appropriate worker nodes. For eg, below deployment has 4 replicas and we can see it has automaitcally distributed 2 per workernode.</p>
<p>cat 009deployment.yaml</p>
<p>kubectl apply -f 009deployment.yaml</p>
<p>kubectl get pods -o wide</p>
<p>→Notice the NODE column where two pods are on intg-ks-worker and other two on intg-ks-worker2</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image448.webp" style="width:7.68125in;height:3.98819in" /></p></td>
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
<p>kubectl describe node intg-ks-worker</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image449.webp" style="width:7.68333in;height:3.30903in" /></p></td>
</tr>
<tr>
<td><p>→Add Label to both the nodes</p>
<p>kubectl get nodes</p>
<p>kubectl label node intg-ks-worker workload_type=normal</p>
<p>kubectl label node intg-ks-worker2 workload_type=confidential</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image450.webp" style="width:7.68194in;height:1.84375in" /></p></td>
</tr>
<tr>
<td><p>→Filtering just the labels that we gave against both the nodes.</p>
<p>kubectl get nodes -o custom-columns=NAME:.metadata.name,WORKLOAD_TYPE:.metadata.labels.workload_type</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image451.webp" style="width:7.6875in;height:0.59306in" /></p></td>
</tr>
<tr>
<td><p>→Deploy manifest that has node selector in it. Notice both the pods are being assigned to workernode 2 where we have defined the label as ‘<strong>confidential’</strong> previously.</p>
<p>kubectl apply -f 010deployment-nodeselector.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image452.webp" style="width:7.67847in;height:2.08472in" /></p></td>
</tr>
<tr>
<td><p>→Once this is tested, remove the labels from the node. This is because, tests ahead may not have the nodeselector mentioned in the manifest and may fail.</p>
<p>kubectl delete -f 010deployment-nodeselector.yaml</p>
<p>kubectl label node intg-ks-worker workload_type-</p>
<p>kubectl label node intg-ks-worker2 workload_type-</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image453.webp" style="width:7.68264in;height:1.7125in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image454.webp" style="width:7.68056in;height:2.71458in" /></p></td>
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
<p>kubectl apply -f 011createpod-nodeaffinity-required.yaml</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image455.webp" style="width:7.68264in;height:1.00694in" /></p></td>
</tr>
<tr>
<td><p>→Let us see what logs of the pod say. Notice at the end the message that it could not find the label.</p>
<p><em>“ Warning FailedScheduling 9s default-scheduler 0/3 nodes are available:”</em></p>
<p>kubectl describe pod nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image456.webp" style="width:7.67778in;height:1.51806in" /></p>
<p>Truncated the big screenshot.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image457.webp" style="width:7.68542in;height:0.88889in" /></p></td>
</tr>
<tr>
<td><p>→Now Let us label one of the nodes ‘while pod is in pending state’. Notice once we label it, k8 automatically starts scheduling as one label has matched the node. Remember we are labelling just one node.</p>
<p>kubectl get nodes</p>
<p>kubectl label node <strong>intg-ks-worker2 disktype=ssd</strong></p>
<p>kubectl get pods</p>
<p>kubectl logs nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image458.webp" style="width:5.73403in;height:4.3125in" /></p></td>
</tr>
<tr>
<td><p>→Let us check the labels of the node. Notice it is highlighted below as well .</p>
<p>kubectl get nodes --show-labels</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image459.webp" style="width:7.68264in;height:0.77014in" /></p></td>
</tr>
<tr>
<td><p>→Unlabel the Node</p>
<p>kubectl label node intg-ks-worker2 disktype-</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image460.webp" style="width:7.67431in;height:1.22361in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Pod</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>affinity</strong>:</mark></p>
<p><mark><strong>nodeAffinity</strong>:</mark></p>
<p><mark><strong>requiredDuringSchedulingIgnoredDuringExecution</strong>:</mark></p>
<p><mark><strong>nodeSelectorTerms</strong>:</mark></p>
<p><mark><strong>- matchExpressions</strong>:</mark></p>
<p><mark><strong>- key</strong>: disktype #These labels must be there on the workernodes</mark></p>
<p><mark><strong>operator</strong>: In</mark></p>
<p><mark><strong>values</strong>:</mark></p>
<p><mark>- ssd</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: nginx</mark></p>
<p><mark><strong>image</strong>: nginx</mark></p></td>
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
<p>kubectl apply -f 012createpod-nodeaffinity-preferred.yaml</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image461.webp" style="width:7.67708in;height:1.59306in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Pod</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>affinity</strong>:</mark></p>
<p><mark><strong>nodeAffinity</strong>:</mark></p>
<p><mark><strong>preferredDuringSchedulingIgnoredDuringExecution</strong>:</mark></p>
<p><mark><strong>- weight</strong>: 1</mark></p>
<p><mark><strong>preference</strong>:</mark></p>
<p><mark><strong>matchExpressions</strong>:</mark></p>
<p><mark><strong>- key</strong>: disktype #Here, even if labels do not exist, it will be scheduled. m</mark></p>
<p><mark><strong>operator</strong>: In</mark></p>
<p><mark><strong>values</strong>:</mark></p>
<p><mark>- ssd</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: nginx</mark></p>
<p><mark><strong>image</strong>: nginx</mark></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image462.webp" style="width:5.39028in;height:2.13889in" /></p></li>
</ol></td>
</tr>
<tr>
<td><p>→Memory Sample Yaml and its description</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image463.webp" style="width:6.19028in;height:2.925in" /></p></td>
</tr>
<tr>
<td><p>CPU Sample Yaml and its description</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image464.webp" style="width:6.21667in;height:3.15486in" /></p></td>
</tr>
<tr>
<td><p>→Let us see worker node1 cpu limits before scheduling a pod that has limits</p>
<p>kubectl describe node intg-ks-worker</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image465.webp" style="width:7.67431in;height:4.50625in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image466.webp" style="width:7.68333in;height:2.14167in" /></p></td>
</tr>
<tr>
<td><p>→After Scheduling the pod</p>
<p>kubectl apply -f 013pod-with-limits.yaml</p>
<p>kubectl get pods -o wide</p>
<p>kubectl describe node intg-ks-worker</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image467.webp" style="width:7.67917in;height:1.30139in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image468.webp" style="width:7.68472in;height:2.29306in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image469.webp" style="width:6.47917in;height:2.22917in" /></p></td>
</tr>
<tr>
<td><p>kubectl create priorityclass high-priority --value=1000 --description="high priority"</p>
<p>kubectl create priorityclass low-priority --value=100 --description="low priority"</p>
<p>→Once this is done apply the yamls. This has not be tested as we need to have super less speced node.</p>
<p>kubectl apply -f 015pod-with-high-priority.yaml</p>
<p>kubectl apply -f 014pod-with-low-priority.yaml</p></td>
</tr>
<tr>
<td><p>→Low Priority Yaml</p>
<p><mark><strong>apiVersion</strong>: apps/v1</mark></p>
<p><mark><strong>kind</strong>: Deployment</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: low-priority-deploy</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>replicas</strong>: 3</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark><strong>matchLabels</strong>:</mark></p>
<p><mark><strong>app</strong>: low-priority</mark></p>
<p><mark><strong>template</strong>:</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>labels</strong>:</mark></p>
<p><mark><strong>app</strong>: low-priority</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>priorityClassName</strong>: low-priority #Ensure this class is created first</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: busybox</mark></p>
<p><mark><strong>image</strong>: nginx</mark></p>
<p><mark><strong>resources</strong>:</mark></p>
<p><mark><strong>requests</strong>:</mark></p>
<p><mark><strong>memory</strong>: "50Mi"</mark></p>
<p><mark><strong>cpu</strong>: "30m"</mark></p></td>
</tr>
<tr>
<td><p>→High Priority Yaml</p>
<p><mark><strong>apiVersion</strong>: apps/v1</mark></p>
<p><mark><strong>kind</strong>: Deployment</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: high-priority-deploy</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>replicas</strong>: 3</mark></p>
<p><mark><strong>selector</strong>:</mark></p>
<p><mark><strong>matchLabels</strong>:</mark></p>
<p><mark><strong>app</strong>: high-priority</mark></p>
<p><mark><strong>template</strong>:</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>labels</strong>:</mark></p>
<p><mark><strong>app</strong>: high-priority</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>priorityClassName</strong>: high-priority #Ensure this class is created first</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: busybox</mark></p>
<p><mark><strong>image</strong>: nginx</mark></p>
<p><mark><strong>resources</strong>:</mark></p>
<p><mark><strong>requests</strong>:</mark></p>
<p><mark><strong>memory</strong>: "50Mi"</mark></p>
<p><mark><strong>cpu</strong>: "30m"</mark></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image470.webp" style="width:5.23958in;height:1.8125in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Adapter</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image471.webp" style="width:5.23958in;height:1.625in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image472.webp" style="width:6.63542in;height:3.41667in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image473.webp" style="width:7.3125in;height:5.23958in" /></p></td>
</tr>
<tr>
<td><p>kubectl apply -f 016pod-with-initcontainers.yaml</p>
<p>kubectl get pods -w</p>
<p>→Notice below that before the actual pod gets initialized the other two init containers get started and then completed. Then only the nginx pod gets started.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image474.webp" style="width:7.68611in;height:1.61667in" /></p></td>
</tr>
<tr>
<td><p>→Notice the events that occurred on the pod</p>
<p>kubectl describe pod nginx-pod</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image475.webp" style="width:7.68264in;height:1.4875in" /></p></td>
</tr>
<tr>
<td><p>→Yaml file</p>
<p><mark><strong>apiVersion</strong>: v1</mark></p>
<p><mark><strong>kind</strong>: Pod</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx-pod</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>containers</strong>:</mark></p>
<p><mark><strong>- name</strong>: app-container</mark></p>
<p><mark><strong>image</strong>: nginx</mark></p>
<p><mark><strong>initContainers</strong>:</mark></p>
<p><mark><strong>- name</strong>: check-google</mark></p>
<p><mark><strong>image</strong>: alpine/curl</mark></p>
<p><mark><strong>command</strong>: ["ping", "-c", "10", "google.com"]</mark></p>
<p><mark><strong>- name</strong>: check-kubernetes</mark></p>
<p><mark><strong>image</strong>: alpine/curl</mark></p>
<p><mark><strong>command</strong>: ["curl", "kubernetes.io"]</mark></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image476.webp" style="width:5.54722in;height:2.52847in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image477.webp" style="width:3.99931in;height:2.63194in" alt="{C424D291-7D55-4B28-BDE2-63CF050A227E}" /></p></td>
</tr>
<tr>
<td><p>Eg. MySQL</p>
<p>→We can find such images in this place: <a href="https://artifacthub.io/">https://artifacthub.io/</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image478.webp" style="width:7.67083in;height:3.42014in" /></p></td>
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
<td><p>mkdir helm</p>
<p>cd helm</p>
<p>curl -fsSL -o get_helm.sh <a href="https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3">https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3</a></p>
<p>ls -l</p>
<p>chmod 700 get_helm.sh</p>
<p>./get_helm.sh</p>
<p>helm version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image479.webp" style="width:7.67708in;height:1.99306in" /></p></td>
</tr>
<tr>
<td><p>→On the personal laptop</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image480.webp" style="width:7.68194in;height:3.12014in" alt="{068E5D51-1329-4BF9-83F5-CAC59811D00B}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image481.webp" style="width:3.82014in;height:3.66944in" alt="{1557D24A-D4A3-4665-8C49-2CCD43D43162}" /></p>
<p>→For eg. Notice this screenshot.</p>
<p>→filter using the ‘official’ and desired package. Eg. Nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image482.webp" style="width:7.68611in;height:5.14931in" alt="{8D630BF7-2AEF-437F-AC15-CE17C8619E0F}" /></p>
<p>→There is an option ‘<strong>Install’</strong>, click the same to get the list of commands for execution.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image483.webp" style="width:7.675in;height:2.53403in" /></p></td>
</tr>
<tr>
<td><p>→Notice the commands and we use the same.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image484.webp" style="width:5.72431in;height:3.85208in" /></p>
<p>→It also container vulnerabilities listed.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image485.webp" style="width:7.67986in;height:8.14028in" alt="{542B656C-0D30-4124-9A91-2C3E058CD3A0}" /></p></td>
</tr>
<tr>
<td><p>→If we want those artifacts from CNCF that are validated by them we can filter using the same.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image486.webp" style="width:7.68333in;height:5.28056in" alt="{F7E065FF-8ABB-48B6-85AC-ED94B13E4994}" /></p>
<p>→another Eg. Of Prometheus</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image487.webp" style="width:7.67847in;height:4.025in" alt="{4408D8BE-0006-46F9-95AD-27807C7D86B3}" /></p></td>
</tr>
<tr>
<td><p>→Commands</p>
<p>→Add bitnami repos that is trusted by many organizations that hosts a centralized repository for various deployments.</p>
<p>→This will be the first step to add the remote repo so that we can directly reference the charts in further commands.</p>
<p>helm repo list</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image488.webp" style="width:7.68125in;height:1.28681in" alt="{3A323929-672F-4855-AE83-E934ADF0FBBD}" /></p>
<p>helm repo add bitnami <a href="https://charts.bitnami.com/bitnami">https://charts.bitnami.com/bitnami</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image489.webp" style="width:5.0625in;height:1.08333in" alt="{A1463D9F-5133-425E-A794-317DA426078D}" /></p>
<p>helm install my-nginx bitnami/nginx --version 22.1.1</p>
<p>→This one is <strong>optional</strong>, which downloads the chart locally, if we want to inspect etc.</p>
<p>helm pull oci://registry-1.docker.io/bitnamicharts/nginx --version 22.1.1</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image490.webp" style="width:7.68056in;height:3.65139in" /></p></td>
</tr>
<tr>
<td><p>→Check all the resources.</p>
<p><strong><u>Important point to note</u></strong>: Given I am running in local, there is ‘no-external-ip’.</p>
<p>→If the context was ‘remote’ eg. EKS / AKS, we would have already gotten an external IP and a LB was also made available.</p>
<p>kubectl get all</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image491.webp" style="width:7.6875in;height:2.32847in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image492.webp" style="width:7.67083in;height:3.22153in" /></p></td>
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
<p>helm uninstall my-nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image493.webp" style="width:6.69792in;height:2.39583in" /></p></td>
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
<p>helm list</p>
<p>→This command lists the remote repo url that is used.</p>
<p>helm repo list</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image494.webp" style="width:7.68611in;height:0.98819in" /></p></td>
</tr>
<tr>
<td><p>→This command outputs the template that will be used whenever install is run. Here we are using nginx.</p>
<p>helm template bitnami/nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image495.webp" style="width:7.68542in;height:4.14167in" /></p></td>
</tr>
<tr>
<td><p>→Output the template to a yaml file</p>
<p>helm template bitnami/nginx &gt; helm-nginx.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image496.webp" style="width:7.68681in;height:7.1875in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image497.webp" style="width:7.68403in;height:2.18819in" /></p></td>
</tr>
<tr>
<td><p>→Create a custom SA and use it in the pods</p>
<p>kubectl create serviceaccount custom-sa</p>
<p>kubectl get sa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image498.webp" style="width:5.78125in;height:1.8125in" /></p></td>
</tr>
<tr>
<td><p>kubectl apply -f 019-pod-with-custom-sa.yaml</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image499.webp" style="width:7.6875in;height:2.01597in" /></p></td>
</tr>
<tr>
<td><p>→Navigate into the pod and let us check the token that is created under the ‘serviceaccounts’ folder.</p>
<p>kubectl exec -it custom-pod -- bash</p>
<p>cd /var/run/secrets/kubernetes.io/serviceaccount/</p>
<p>cat token</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image500.webp" style="width:7.68333in;height:1.96319in" /></p></td>
</tr>
<tr>
<td><p>→We can make use of this token and get cluster objects.</p>
<p>→Note that the hostname should be as shown as our curl is being fired to an endpoint that should be outside, which is k8.</p>
<p>curl -k -H "Authorization: Bearer <removed> /var/run/secrets/kubernetes.io/serviceaccount/token)" <a href="https://kubernetes.default.svc/api/v1">https://kubernetes.default.svc/api/v1</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image501.webp" style="width:7.68264in;height:1.93889in" /></p></td>
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
<td><p>ls</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image502.webp" style="width:6.36458in;height:0.61458in" /></p>
<p>→Here we are trying to list the PODs under ‘default namespace using the token and certificate (mandatory).</p>
<p>curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt \</p>
<p>-H "Authorization: Bearer <removed> /var/run/secrets/kubernetes.io/serviceaccount/token)" \</p>
<p>https://kubernetes.default.svc/api/v1/namespaces/default/pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image503.webp" style="width:7.68681in;height:1.62083in" /></p></td>
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
<p>kubectl create serviceaccount custom-sa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image504.webp" style="width:6.73958in;height:1.9375in" alt="{E4C32F77-50BB-4141-94E7-E84486881CA6}" /></p></td>
</tr>
<tr>
<td><p>→Create a custom pod and add our newly created service account to it.</p>
<p>kubectl run custom-pod --image=nginx --dry-run=client -o yaml &gt; custom-sa-pod.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image505.webp" style="width:7.525in;height:3.18056in" alt="{FE1214F7-3CF3-4616-8329-372B62207F50}" /></p></td>
</tr>
<tr>
<td><p>→Edit the file and add the line ‘serviceAccountName’ and add our newly created SA.</p>
<p>→Remove for now those lines that are not required and keep it simple as below.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image506.webp" style="width:4.20833in;height:2.82292in" alt="{90DC1D12-0BEA-4D5A-A6D1-F854A9265E11}" /></p>
<p>→Describe the pod and we can see the custom service account is bound.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image507.webp" style="width:7.53472in;height:4.00764in" alt="{BEE7B143-7930-4265-98FD-779645A6DB84}" /></p></td>
</tr>
<tr>
<td><p>→Named Port: A named port in a Kubernetes Pod is simply a human-readable label assigned to a container port. Instead of referring to a port by number (e.g., 8080), other Kubernetes resources can refer to it by name (e.g., http).</p>
<p>Eg.</p>
<p>containers:<br />
- name: app<br />
image: my-app<br />
ports:<br />
- containerPort: 8080<br />
name: http</p>
<p>→Can be referred in a service as below.</p>
<p>spec:<br />
ports:<br />
- port: 80<br />
targetPort: http</p>
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
<p>kubectl apply -f 019a-pod-reader-role.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image508.webp" style="width:7.68264in;height:0.34375in" /></p>
<p>→Create a role-binding</p>
<p>kubectl apply -f 019b-pod-reader-role-binding-to-sa.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image509.webp" style="width:7.68681in;height:0.32153in" /></p></td>
</tr>
<tr>
<td><p>→Rerun the command and we will not get the error.</p>
<p>curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt \</p>
<p>-H "Authorization: Bearer <removed> /var/run/secrets/kubernetes.io/serviceaccount/token)" \</p>
<p>https://kubernetes.default.svc/api/v1/namespaces/default/pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image510.webp" style="width:7.67569in;height:1.48819in" /></p></td>
</tr>
<tr>
<td><p>→Yamls</p>
<p><mark># pod-reader-role.yaml</mark></p>
<p><mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: Role</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: pod-reader</mark></p>
<p><mark><strong>namespace</strong>: default</mark></p>
<p><mark><strong>rules</strong>:</mark></p>
<p><mark><strong>- apiGroups</strong>: [""]</mark></p>
<p><mark><strong>resources</strong>: ["pods"]</mark></p>
<p><mark><strong>verbs</strong>: ["get", "list", "watch"]</mark></p></td>
</tr>
<tr>
<td><p>→Yamls</p>
<p><mark># pod-reader-binding.yaml</mark></p>
<p><mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: RoleBinding</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: pod-reader-binding</mark></p>
<p><mark><strong>namespace</strong>: default</mark></p>
<p><mark><strong>subjects</strong>:</mark></p>
<p><mark><strong>- kind</strong>: ServiceAccount</mark></p>
<p><mark><strong>name</strong>: custom-sa</mark></p>
<p><mark><strong>namespace</strong>: integrations</mark></p>
<p><mark><strong>roleRef</strong>:</mark></p>
<p><mark><strong>kind</strong>: Role</mark></p>
<p><mark><strong>name</strong>: pod-reader</mark></p>
<p><mark><strong>apiGroup</strong>: rbac.authorization.k8s.io</mark></p></td>
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
<p>kubectl apply -f 019c-pod-reader-cluster-role.yaml</p>
<p>kubectl apply -f 019d-pod-reader-cluster-role-binding-to-sa.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image511.webp" style="width:7.67986in;height:1.59861in" /></p></td>
</tr>
<tr>
<td><p>→Listing pods from any other namespace as we have now given role and role binding to cluster level.</p>
<p>curl --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt -H "Authorization: Bearer <removed> /var/run/secrets/kubernetes.io/serviceaccount/token)" <a href="https://kubernetes.default.svc/api/v1/namespaces/kube-system/pods">https://kubernetes.default.svc/api/v1/namespaces/<strong>kube-system</strong>/pods</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image512.webp" style="width:7.68403in;height:1.39931in" /></p></td>
</tr>
<tr>
<td><p>→Yamls. IMPORTANT: NOTICE HERE THERE IS NO NAMESPACE UNDER METADATA</p>
<p><mark># clusterrole.yaml</mark></p>
<p><mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: ClusterRole</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: pod-reader-global</mark></p>
<p><mark><strong>rules</strong>:</mark></p>
<p><mark><strong>- apiGroups</strong>: [""]</mark></p>
<p><mark><strong>resources</strong>: ["pods"]</mark></p>
<p><mark><strong>verbs</strong>: ["get", "list", "watch"]</mark></p></td>
</tr>
<tr>
<td><p>→Yamls. IMPORTANT: NOTICE HERE THERE IS NO NAMESPACE UNDER METADATA</p>
<p><mark># clusterrolebinding.yaml</mark></p>
<p><mark><strong>apiVersion</strong>: rbac.authorization.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: ClusterRoleBinding</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: pod-reader-global-binding</mark></p>
<p><mark><strong>subjects</strong>:</mark></p>
<p><mark><strong>- kind</strong>: ServiceAccount</mark></p>
<p><mark><strong>name</strong>: custom-sa</mark></p>
<p><mark><strong>namespace</strong>: integrations # your service account's namespace</mark></p>
<p><mark><strong>roleRef</strong>:</mark></p>
<p><mark><strong>kind</strong>: ClusterRole</mark></p>
<p><mark><strong>name</strong>: pod-reader-global</mark></p>
<p><mark><strong>apiGroup</strong>: rbac.authorization.k8s.io</mark></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image513.webp" style="width:7.68611in;height:4.225in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image514.webp" style="width:7.68472in;height:4.89097in" /></p></td>
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
<p>helm repo add fairwinds-stable <a href="https://charts.fairwinds.com/stable">https://charts.fairwinds.com/stable</a></p>
<p>helm repo list</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image515.webp" style="width:7.67778in;height:2.24097in" /></p></td>
</tr>
<tr>
<td><p>→Install the HPA</p>
<p>helm install vpa fairwinds-stable/vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image516.webp" style="width:7.68542in;height:3.17708in" /></p></td>
</tr>
<tr>
<td><p>→Validate the installation by running ‘get vpa’. If it is installed, we will not get any error, but below message, which is valid.</p>
<p>kubectl get vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image517.webp" style="width:5.35417in;height:0.91667in" /></p></td>
</tr>
<tr>
<td><p>→create the deployment and we can see two pods getting created. The other pods are part of VPA CRD that were created. Ideally they should be in different namespace, but I wrongly executed.</p>
<p>kubectl create -f 022a-vpa-ready-nginx-deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image518.webp" style="width:7.68542in;height:2.86042in" /></p></td>
</tr>
<tr>
<td><p>→Create the VPA configuration. Notice that the mode is set to ‘off’</p>
<p>kubectl create -f 022b-vpa-for-nginx-deployment.yaml</p>
<p>kubectl get vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image519.webp" style="width:7.68611in;height:1.02361in" /></p></td>
</tr>
<tr>
<td><p>→Let us check the VPA as it also recommends what can be a better value for cpu and memory.</p>
<p><mark>THIS PART NOT CLEAR</mark></p>
<p>→Note that the update policy has update mode as off, so it does not touch the pods.</p>
<p>→The moment we change it to ‘auto’ it starts introspecting the pods and then it adjusts the limits of the pods.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image520.webp" style="width:6.63542in;height:6.69792in" /></p></td>
</tr>
<tr>
<td><p>→To test the same, let us open two windows one where we watch the pods and other terminal we modify the policy to ‘auto’.</p>
<p>→Edit the vpa as shown</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image521.webp" style="width:7.67431in;height:1.19792in" /></p></td>
</tr>
<tr>
<td><p>→Changed to ‘auto’ Save it. Esc + :wq!</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image522.webp" style="width:6.44792in;height:2.77083in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image523.webp" style="width:7.45833in;height:1.20833in" /></p></td>
</tr>
<tr>
<td><p>→After sometime notice on the right the pods gets terminated and new pods get created.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image524.webp" style="width:7.67778in;height:1.87917in" /></p></td>
</tr>
<tr>
<td><p>→Break the watch and get the pods. Notice now, they are just two</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image525.webp" style="width:6.89583in;height:1.41667in" /></p></td>
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
<p>kubectl get vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image526.webp" style="width:4.625in;height:0.88542in" alt="{F7ED8EE0-C018-487A-81D1-8303E02601E6}" /></p>
<p>→Clone below repository to k8 environment.</p>
<p><a href="https://github.com/kubernetes/autoscaler.git">https://github.com/kubernetes/autoscaler.git</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image527.webp" style="width:7.52778in;height:3.92431in" alt="{F0EF140D-1FCA-4D99-9955-0ABFA3C97F8F}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to the ‘vertical-pod-autoscaler’ folder as below.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image528.webp" style="width:6.52083in;height:7.14583in" alt="{F78DEB6A-89D5-44FB-AC9A-AC9AD76090B5}" /></p></td>
</tr>
<tr>
<td><p>→run the script</p>
<p>/hack/vpa-up.sh</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image529.webp" style="width:7.53472in;height:6.38125in" alt="{60ED0CA3-ABF3-42FC-8427-88FC6B678328}" /></p></td>
</tr>
<tr>
<td><p>→Re-run below command and notice we are not getting the same error as previously we gotten.</p>
<p>kubectl get vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image530.webp" style="width:6.52083in;height:1.11458in" alt="{4CB8F9DE-069C-4B87-A650-FCF902ED4C06}" /></p></td>
</tr>
<tr>
<td><p>→Create a yaml with this content</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>name: nginx-deployment</p>
<p>spec:</p>
<p>replicas: 2</p>
<p>selector:</p>
<p>matchLabels:</p>
<p>app: nginx</p>
<p>template:</p>
<p>metadata:</p>
<p>labels:</p>
<p>app: nginx</p>
<p>spec:</p>
<p>containers:</p>
<p>- name: nginx</p>
<p>image: nginx:latest</p>
<p>resources:</p>
<p>requests:</p>
<p>cpu: "50m"</p>
<p>memory: "50Mi"</p>
<p>→Save this file to a specific directory</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image531.webp" style="width:5.96875in;height:1.65625in" alt="{FE5A23A1-CBDE-4F09-A89A-0BA7CFA0299B}" /></p>
<p>→Create the deployment</p>
<p>kubectl create deployment -f nginx-deployment.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image532.webp" style="width:7.13542in;height:3.22917in" alt="{7D34F8C4-7EAB-4AA1-BBD2-FA190A8D1540}" /></p></td>
</tr>
<tr>
<td><p>→Update modes of VPA</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image533.webp" style="width:5.8125in;height:2.44792in" alt="{709317BD-D72E-4D56-B684-498D239C8168}" /></p></td>
</tr>
<tr>
<td><p><strong>→STEP 1: Create VPA with updateMode to OFF</strong></p>
<p>→Save the contents of VPA to a file as below.</p>
<p>apiVersion: "autoscaling.k8s.io/v1"</p>
<p>kind: VerticalPodAutoscaler</p>
<p>metadata:</p>
<p>name: nginx-vpa</p>
<p>spec:</p>
<p>targetRef:</p>
<p>apiVersion: "apps/v1"</p>
<p>kind: Deployment</p>
<p>name: nginx-deployment</p>
<p>updatePolicy:</p>
<p>updateMode: "Off"</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image534.webp" style="width:5.63542in;height:4.80208in" alt="{A8B1EA13-F872-47D1-93DE-841F52B54D1E}" /></p></td>
</tr>
<tr>
<td><p>→Create the vpa and check the vpa. Notice that it takes the Memory and CPU to be updated, it takes a bit of time.</p>
<p>kubectl create -f vpa.yaml</p>
<p>kubectl get vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image535.webp" style="width:5.90625in;height:1.72917in" alt="{67798CF3-6589-443C-A008-5EE7EFF702E1}" /></p>
<p>→After few mins</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image536.webp" style="width:5.35417in;height:0.96875in" alt="{F31D8235-11B4-487B-9E76-1746EE3C2F60}" /></p></td>
</tr>
<tr>
<td><p>→Check what recommendations does the VPA that has been configured gives us.</p>
<p>→Notice there are few recommendations being provided.</p>
<p>kubectl describe vpa nginx-vpa</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image537.webp" style="width:6.27083in;height:7.45833in" alt="{3C15E57A-4FC2-4D58-B6D0-AFECD5C0DF9B}" /></p></td>
</tr>
<tr>
<td><p><strong>→STEP 2: Update VPA with updateMode to Auto</strong></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image538.webp" style="width:3.80208in;height:2.79167in" alt="{47232F05-1C36-4C67-B5EF-8A23597D4337}" /></p>
<p>→then re apply</p>
<p>kubectl apply -f vpa.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image539.webp" style="width:7.53819in;height:1.04792in" alt="{47313FD2-A733-4891-A41E-B4DA0723FD51}" /></p></td>
</tr>
<tr>
<td><p>→Notice now the yaml that has ‘auto’ being updated.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image540.webp" style="width:7.53333in;height:5.58889in" alt="{CC29FD31-BAA6-4149-8F32-15101DD7BA6C}" /></p></td>
</tr>
<tr>
<td><p>→Describe a pod and we can see the requests is updated.</p>
<p>kubectl describe pod nginx-deployment-7bf7f4549-2kmtn</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image541.webp" style="width:7.53333in;height:6.4125in" alt="{76532C65-E19D-4A88-AA50-6473F741B3AE}" /></p></td>
</tr>
<tr>
<td><p>→Delete the resources</p>
<p>kubectl delete -f nginx-deployment.yaml</p>
<p>kubectl delete -f vpa.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image542.webp" style="width:7.53889in;height:0.91042in" alt="{9C58E2A7-C59B-4DE2-BE91-B0002EC2A598}" /></p></td>
</tr>
<tr>
<td><p>→Delete the VPA</p>
<p>./hack/vpa-down.sh</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image543.webp" style="width:7.53611in;height:5.28542in" alt="{75D5C604-6D7E-4ACC-8953-8F44407517C8}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image544.webp" style="width:7.47917in;height:2.47917in" /></p></td>
</tr>
<tr>
<td><p>→To overcome those problems and provide additional features like support to L4 and L7 protocols including TCP, UDP, HTTP, gRPC Gateway API can be used.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image545.webp" style="width:7.67708in;height:2.75in" /></p></td>
</tr>
<tr>
<td><p>→It has some additional features like Weighted traffic routing, where a particular service can get more traffic over other.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image546.webp" style="width:7.67917in;height:2.61181in" /></p></td>
</tr>
<tr>
<td><p>→Structrure of Gateway API</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Two important connections viz., DownStream and UpStream.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image548.webp" style="width:7.68611in;height:1.14375in" /></p></td>
</tr>
<tr>
<td><p>→TLS Termination Modes (Passthrough or Terminate)</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image549.webp" style="width:7.68056in;height:2.82153in" /></p></td>
</tr>
<tr>
<td><p>→TLS Comparisions</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image550.webp" style="width:7.68125in;height:4.50278in" /></p>
<p>→Protocol vs Mode support.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image551.webp" style="width:7.68542in;height:1.65069in" /></p></td>
</tr>
<tr>
<td><p>→We have many implementation controllers as defined at this page and we will in below practice ‘Nginx Gateway Fabric’: <a href="https://gateway-api.sigs.k8s.io/implementations/">https://gateway-api.sigs.k8s.io/implementations/</a></p>
<p>→If we are using something like EKS, then we would choose the appropriate one. Eg. Amazon Elastic Kubernetes Service Controller (4<sup>th</sup> option)</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image552.webp" style="width:5.83889in;height:4.69236in" /></p></td>
</tr>
<tr>
<td><p>→Install the Gateway API using below endpoints. Navigate to the K8 official documentation as : <a href="https://gateway-api.sigs.k8s.io/implementations/#nginx-gateway-fabric">https://gateway-api.sigs.k8s.io/implementations/#nginx-gateway-fabric</a></p>
<p>→Then followed by: <a href="https://github.com/nginx/nginx-gateway-fabric">https://github.com/nginx/nginx-gateway-fabric</a>. Click the install option.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image553.webp" style="width:7.68056in;height:4.93056in" /></p></td>
</tr>
<tr>
<td><p>→We get below page. : <a href="https://docs.nginx.com/nginx-gateway-fabric/install/">https://docs.nginx.com/nginx-gateway-fabric/install/</a></p>
<p>→Below example shows installation using ‘helm’. So, click the second box.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image554.webp" style="width:4.80347in;height:3.39236in" /></p></td>
</tr>
<tr>
<td><p>→We get this page : <a href="https://docs.nginx.com/nginx-gateway-fabric/install/helm/">https://docs.nginx.com/nginx-gateway-fabric/install/helm/</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image555.webp" style="width:7.68125in;height:3.39444in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image556.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Get Namespaces and notice we have basic ones.</p>
<p>kubectl get ns</p></td>
</tr>
<tr>
<td><p>→Run below commands</p>
<p>kubectl kustomize "https://github.com/nginx/nginx-gateway-fabric/config/crd/gateway-api/standard?ref=v2.2.0" | kubectl apply -f -</p>
<p>helm install ngf oci://ghcr.io/nginx/charts/nginx-gateway-fabric --create-namespace -n nginx-gateway</p>
<p>kubectl wait --timeout=5m -n nginx-gateway deployment/ngf-nginx-gateway-fabric --for=condition=Available</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image557.webp" style="width:7.675in;height:3.92361in" /></p></td>
</tr>
<tr>
<td><p>→Check the installation</p>
<p>kubectl get pods -n nginx-gateway</p>
<p>kubectl get crds | grep gateway.nginx.org</p>
<p>kubectl get <strong>gatewayclasses</strong></p>
<p>kubectl get svc -n nginx-gateway</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image558.webp" style="width:7.58333in;height:2.84375in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image559.webp" style="width:7.68194in;height:0.70208in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image560.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>→Check the existing configuration</p>
<p>kubectl get pods -n nginx-gateway</p>
<p>kubectl get gatewayclass</p>
<p>kubectl describe gatewayclass nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image561.webp" style="width:7.68264in;height:6.61181in" /></p></td>
</tr>
<tr>
<td><p>→Create the gateway. Navigate to the place where yaml is created.</p>
<p>cd /media/sf_ws/k8basics/cka</p>
<p>kubectl apply -f 023a-gateway.yaml</p>
<p>kubectl get gateways</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image562.webp" style="width:7.68403in;height:3.05972in" /></p>
<p>→Here, given we are testing in local k8, we will not get any public address. If it is done on EKS / AKS etc, a public IP will be populated.</p></td>
</tr>
<tr>
<td><p>→It is important to check the gateway class name and it should match with what has been configured in previous step.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image563.webp" style="width:7.68056in;height:0.79514in" /></p></td>
</tr>
<tr>
<td><p>→YAML files</p>
<p><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1beta1</mark></p>
<p><mark><strong>kind</strong>: Gateway</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: nginx-gateway</mark></p>
<p><mark><strong>namespace</strong>: default</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>gatewayClassName</strong>: <strong>nginx</strong></mark></p>
<p><mark><strong>listeners</strong>:</mark></p>
<p><mark><strong>- name</strong>: http</mark></p>
<p><mark><strong>protocol</strong>: HTTP</mark></p>
<p><mark><strong>port</strong>: 80</mark></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image564.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p></td>
</tr>
<tr>
<td><p>kubectl get pods</p>
<p>kubectl create deployment apache --image=httpd:latest --port=80</p>
<p>kubectl expose deployment apache --name=apache-service --port=80 --target-port=80 --type=ClusterIP</p>
<p>kubectl get pods</p>
<p>kubectl get svc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image565.webp" style="width:7.68611in;height:1.99583in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image566.webp" /><img src="subjects/tech/azure/az-aks-complete/img/media/image547.webp" style="width:6.25in;height:2.82292in" /></p>
<p>What we are going to do is, attaching the gateway and service for necessary routing.</p>
<p>Notice below we have a prentRef that is pointing to the Gateway associated and then the rules are simple ones like any request coming in gets routed to a backend service.</p></td>
</tr>
<tr>
<td><p>→YAML files</p>
<p><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1beta1</mark></p>
<p><mark><strong>kind</strong>: HTTPRoute</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: apache-route</mark></p>
<p><mark><strong>namespace</strong>: default</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>parentRefs</strong>:</mark></p>
<p><mark><strong>- name</strong>: nginx-gateway</mark></p>
<p><mark><strong>rules</strong>:</mark></p>
<p><mark><strong>- matches</strong>:</mark></p>
<p><mark><strong>- path</strong>:</mark></p>
<p><mark><strong>type</strong>: PathPrefix</mark></p>
<p><mark><strong>value</strong>: /</mark></p>
<p><mark><strong>backendRefs</strong>:</mark></p>
<p><mark><strong>- name</strong>: apache-service</mark></p>
<p><mark><strong>port</strong>: 80</mark></p></td>
</tr>
<tr>
<td><p>kubectl create -f 023b-route.yaml</p>
<p>kubectl get httproute</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image567.webp" style="width:7.68472in;height:1.44861in" /></p></td>
</tr>
<tr>
<td><p>→Test the route. Below I tested inside the ubuntu machine as we need to do the portforwarding.</p>
<p>kubectl get svc</p>
<p>kubectl port-forward svc/nginx-gateway-nginx 8080:80</p>
<p>→In a different terminal</p>
<p>curl http://localhost:8080/</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image568.webp" style="width:7.68611in;height:3.01111in" /></p></td>
</tr>
<tr>
<td><p>→Test 2: Using another POD to communicate, like from inside the pod but to another service.</p>
<p>→Here it is important to pass the ‘Host’ header else it will fail. Also notice the IP is of Service.</p>
<p>kubectl get pods -o wide</p>
<p>kubectl get svc</p>
<p>kubectl run curl --image=alpine/curl -- sleep 36000</p>
<p>kubectl exec -it curl -- sh</p>
<p>curl -H "Host: <strong>apache.example.com</strong>" <a href="http://10.96.126.194/">http://10.96.126.194/</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image569.webp" style="width:7.67778in;height:4.15486in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image570.webp" style="width:7.67986in;height:1.14167in" /></p></td>
</tr>
<tr>
<td><p>→As seen in above diagram, <strong>downstream</strong>: This is the connection between the client and the Gateway. <strong>upstream</strong>: This is the connection between the Gateway and backend resources</p></td>
</tr>
<tr>
<td><p>→Two important modes.</p>
<p>→When it is pass through mode the, termination occurs at POD. In such cases, the payload cannot be introspected and we may loose many features of the Gateway API component.</p>
<p>→When it is TLS Terminate mode, then it occurs at the Gateway API level, when introspection can happen and take advantage of various features.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image571.webp" style="width:7.6875in;height:2.77153in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image572.webp" style="width:2.67708in;height:1.16667in" /> <img src="subjects/tech/azure/az-aks-complete/img/media/image573.webp" style="width:2.69792in;height:1in" /></p></td>
</tr>
<tr>
<td><p>→More information aroud secrets can be found here.</p>
<p><a href="https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets">https://kubernetes.io/docs/concepts/configuration/secret/#tls-secrets</a></p>
<p>→A typical TLS Secret has below information to be provided, where the ‘.crt’ takes the public key details and ‘.key’ takes the private key details’.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image574.webp" style="width:6.08056in;height:3.03611in" /></p></td>
</tr>
<tr>
<td><p>→next question is where do we add this? We add it to the Gateway if we want Gateway API component to have TLS termination.</p>
<p><mark>→Once we configure we can see these details as shown below snippet. Below is the gateway that we have conifugred.</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image575.webp" style="width:5.58333in;height:0.9375in" /></p></td>
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
<td><p><mark>kubectl describe gateway nginx-gateway</mark></p>
<p><mark>→Describe the gateway and check the current ‘spec’ section for listeners. Notice below it is only http.</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image576.webp" style="width:5.01875in;height:3.88958in" /></p></td>
</tr>
<tr>
<td><p>→Edit the gateway configuration and add the additional listerners as shown.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image577.webp" style="width:7.125in;height:0.65625in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image578.webp" style="width:4.99444in;height:3.34792in" /></p></td>
</tr>
<tr>
<td><p>→After adding and saving same can be seen now.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image579.webp" style="width:5.64167in;height:5.23264in" /></p></td>
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
<td><p>openssl req -x509 -nodes -days 365 -newkey rsa:2048 \</p>
<p>-keyout tls.key -out tls.crt -subj "/CN=example.internal/O=example-org"</p>
<p>→we will get two files generate one is public key and other one is private key.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image580.webp" style="width:7.68542in;height:3.38264in" /></p></td>
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
<td><p>kubectl create secret tls example-tls --cert=tls.crt --key=tls.key -n default</p>
<p>→Create a secret and reference the created public and private key as shown.</p>
<p>→Important to note is ‘secret type’ here should be ‘tls’ as there are other types like opaque etc.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image581.webp" style="width:7.67917in;height:1.44306in" /></p></td>
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
<td><p>kubectl create deployment nginx --image=nginx:latest --port=80</p>
<p>kubectl expose deployment nginx --name=nginx-service --port=80 --target-port=80 --type=ClusterIP</p>
<p>kubectl get pods -o wide</p>
<p>kubectl get svc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image582.webp" style="width:7.68333in;height:2.13611in" /></p></td>
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
<td><p>kubectl get gateway</p>
<p>kubectl get httproute</p>
<p>kubectl delete gateway nginx-gateway</p>
<p>kubectl delete httproute apache-route</p>
<p>kubectl get pods</p>
<p>kubectl get deployments</p>
<p>kubectl delete deployment apache</p>
<p>kubectl get pods</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image583.webp" style="width:5.78889in;height:4.44097in" /></p></td>
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
<td><p>kubectl create -f 024a-gateway-https.yaml</p>
<p>kubectl create -f 024b-tlsroute.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image584.webp" style="width:7.68611in;height:2.46181in" /></p></td>
</tr>
<tr>
<td><p>→YAML for Gateway</p>
<p><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: Gateway</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: my-tls-gateway</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>gatewayClassName</strong>: nginx</mark></p>
<p><mark><strong>listeners</strong>:</mark></p>
<p><mark><strong>- name</strong>: https</mark></p>
<p><mark><strong>protocol</strong>: HTTPS</mark></p>
<p><mark><strong>port</strong>: 443</mark></p>
<p><mark><strong>tls</strong>:</mark></p>
<p><mark><strong>mode</strong>: Terminate</mark></p>
<p><mark><strong>certificateRefs</strong>:</mark></p>
<p><mark><strong>- kind</strong>: Secret</mark></p>
<p><mark><strong>name</strong>: example-tls</mark></p></td>
</tr>
<tr>
<td><p>→YAML for http route</p>
<p><mark><strong>apiVersion</strong>: gateway.networking.k8s.io/v1</mark></p>
<p><mark><strong>kind</strong>: HTTPRoute</mark></p>
<p><mark><strong>metadata</strong>:</mark></p>
<p><mark><strong>name</strong>: tls-route</mark></p>
<p><mark><strong>spec</strong>:</mark></p>
<p><mark><strong>parentRefs</strong>:</mark></p>
<p><mark><strong>- name</strong>: my-tls-gateway</mark></p>
<p><mark><strong>rules</strong>:</mark></p>
<p><mark><strong>- matches</strong>:</mark></p>
<p><mark><strong>- path</strong>:</mark></p>
<p><mark><strong>type</strong>: PathPrefix</mark></p>
<p><mark><strong>value</strong>: /</mark></p>
<p><mark><strong>backendRefs</strong>:</mark></p>
<p><mark><strong>- name</strong>: nginx-service</mark></p>
<p><mark><strong>port</strong>: 80</mark></p></td>
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
<td><p>kubectl expose pod my-tls-gateway-nginx-5664476b78-ktjlp \</p>
<p>--name=my-tls-gateway-nodeport \</p>
<p>--type=NodePort \</p>
<p>--port=443 \</p>
<p>--target-port=443</p>
<p>kubectl get svc my-tls-gateway-nodeport</p>
<p>kubectl get nodes -o wide</p>
<p>curl -k https://172.18.0.2:30112</p>
<p>Notice above curl will result in failure as the certificate configure has domain name.</p>
<p>We can configure a host-name variable in local and we can by pass this error locally.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image585.webp" style="width:7.67083in;height:1.44097in" /></p></td>
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
<td><p>sudo cat /etc/hosts</p>
<p>echo "172.18.0.2 example.com" | sudo tee -a /etc/hosts</p>
<p>sudo cat /etc/hosts</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image586.webp" style="width:7.68333in;height:3.73264in" /></p></td>
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
<td><p>curl -k https://example.com:30112 --resolve example.com:30112:172.18.0.2</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image587.webp" style="width:7.67569in;height:3.15764in" /></p></td>
</tr>
<tr>
<td><p>Above command we are telling :</p>
<p>• Use as the host-name (so it matches your TLS certificate).</p>
<p>• Connect to on port (your NodePort).</p>
<p>• Skip DNS lookup — instead of asking your system or network how to reach , it uses the IP you gave it directly.</p>
<p>This is super useful when:</p>
<p>• You're testing locally.</p>
<p>• You haven't set up DNS.</p>
<p>• You want to simulate a real domain name.</p></td>
</tr>
<tr>
<td><p>Or simply use below</p>
<p>curl -k https://example.com:30112</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image588.webp" style="width:7.68333in;height:4.73194in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image589.webp" style="width:7.52847in;height:1.47917in" alt="{40B2C448-8723-4D77-98F7-E9EBBBF670E8}" /></p></td>
</tr>
<tr>
<td><p>→Below image shows various resources that are by default available viz., Pod/Deployment/ConfigMaps etc.</p>
<p>→Suppose if we want a Database to be created by simple configurations we can define our own resource definition which can now be called as CRD.</p>
<p>→Once it is defined the user can simple use it and create the database or for that matter any ‘resource’ a project requires.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image590.webp" style="width:6.29167in;height:2.9375in" alt="{6F9A65BB-17B7-4909-91E1-1CEA5C3AB613}" /></p></td>
</tr>
<tr>
<td><p>→Notice in <strong>a fresh cluster</strong> we cannot see any CRDs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image591.webp" style="width:2.89583in;height:0.71875in" alt="{27C12E79-56FB-40A8-8244-1418AC1D75D2}" /></p>
<p>→However, when certain libraries or packages are loaded onto the K8, we can see them as below.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image592.webp" style="width:4.71875in;height:3.98958in" alt="{1921BCBE-F889-41C3-9C65-F3EB7B43D824}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image593.webp" style="width:4.9375in;height:5.76042in" alt="{49A0D83C-C369-4FAB-9300-9B8C4BE87B51}" /></p>
<p>→Create</p>
<p>nano crd-db.yaml</p>
<p>cat crd-db.yaml</p>
<p>kubectl get crd</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image594.webp" style="width:6.9375in;height:6.66667in" alt="{0B4EADE8-36C4-461F-8589-6112F7F550C0}" /></p>
<p>apiVersion: apiextensions.k8s.io/v1</p>
<p>kind: CustomResourceDefinition</p>
<p>metadata:</p>
<p>name: databases.labs.internal</p>
<p>spec:</p>
<p>group: labs.internal</p>
<p>names:</p>
<p>kind: Database</p>
<p>listKind: DatabaseList</p>
<p>plural: databases</p>
<p>singular: database</p>
<p>scope: Namespaced</p>
<p>versions:</p>
<p>- name: v1</p>
<p>served: true</p>
<p>storage: true</p>
<p>schema:</p>
<p>openAPIV3Schema:</p>
<p>type: object</p>
<p>properties:</p>
<p>spec:</p>
<p>type: object</p>
<p>properties:</p>
<p>name:</p>
<p>type: string</p>
<p>replicas:</p>
<p>type: integer</p>
<p>→Check if this is available under api-resources</p>
<p>kubectl api-resources | grep ‘data’</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image595.webp" style="width:7.53056in;height:0.71736in" alt="{30DFD54C-89C1-43A6-962F-C6936799C056}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image596.webp" style="width:4.5in;height:1.65625in" alt="{7519F315-0B0B-49B0-B3CF-CA25AABFCD48}" /></p>
<p>apiVersion: labs.internal/v1</p>
<p>kind: Database</p>
<p>metadata:</p>
<p>name: my-database</p>
<p>spec:</p>
<p>name: test-db</p>
<p>replicas: 3</p>
<p>→Apply the yaml and notice that just like other commands ‘kubectl get pods’ we are able to fire a ‘get’ on ‘crd called database’.</p>
<p>kubectl create -f db.yaml</p>
<p>kubectl get database</p>
<p>kubectl describe database my-database</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image597.webp" style="width:5.76042in;height:1.58333in" alt="{ACEFB20A-2568-48FC-BA74-4F1FA9508D65}" /></p>
<p>→Describe the resource and check the yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image598.webp" style="width:6.98958in;height:3.15625in" alt="{44F37997-5804-40C5-ACC3-79C5595A842B}" /></p>
<p>→Here important to note is an actual ‘database’ is not created. In order to get an actual database, ‘Custom Controllers’ are to be implemented.</p>
<p>→These Custom Controllers track at least one Kubernetes resource type.</p>
<p>→These objects have a specific field that represents the desired state.</p>
<p>→A typical controller once in place would keep monitoring ‘that particular’ resource and then act upon it by creating an ‘actual database.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image599.webp" style="width:6.41667in;height:1.70833in" alt="{5C593CBC-1A2C-485D-BCFA-919925638976}" /></p>
<p>→Delete CRD</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image600.webp" style="width:6.78125in;height:0.72917in" alt="{003834FA-7F61-4EE8-993C-B6B4556CDEAF}" /></p></td>
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
<p>--set crds.install=false</p>
<p>which means "Install the application, but don't touch the CRDs because they are already managed separately."</p>
<p>Simple analogy:<br />
Installing a Helm chart is like installing a software package. The CRD is like creating a shared database schema. On a brand-new system, the installer creates the schema automatically. On a production system, the DBA may already manage that schema, so the installer is told to skip that step to avoid unintended changes.</p></li>
</ul></td>
</tr>
<tr>
<td><p>→Example only. Did not install anything. It is only to show how to skip the CRDs.</p>
<p>Checking the Standard Approach</p>
<p>helm repo add argo https://argoproj.github.io/argo-helm</p>
<p>helm install my-argo-cd argo/argo-cd --version 7.8.23 --skip-crds --dry-run</p>
<p>helm install my-argo-cd argo/argo-cd --version 7.8.23 --skip-crds --dry-run | grep CustomResourceDefinition</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image601.webp" style="width:7.52986in;height:0.42292in" alt="{09AFCC31-5667-476E-9B97-9A95FF297BF6}" /></p>
<p>Skipping the CRDs</p>
<p>helm install my-argo-cd argo/argo-cd --version 7.8.23 --set crds.install=false --dry-run | grep CustomResourceDefinition</p>
<p>helm template my-argo-cd argo/argo-cd --set crds.install=false --version 7.8.23 &gt; argo-no-crd.yaml</p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image602.webp" style="width:7.52986in;height:4.28958in" alt="{DC9F644F-0251-4E9B-AF3F-F5AB8DF139F7}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image603.webp" style="width:5.91667in;height:2.03125in" alt="{B7711D03-3553-4D97-BC57-1DFC94D26D21}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image604.webp" style="width:7.51944in;height:1.80764in" alt="{D073A44D-19E5-4040-97F6-B632BE1B8454}" /></p></td>
</tr>
<tr>
<td><p>→Before we proceed let us try with a dummy token (JWT) and hit our KIND api-server-endpoints.</p>
<p>→First let us see which port our api server is listening on. Remember we are on KIND, meaning on local Docker, so the regular port of 6443 will not be there.</p>
<p>→To know the correct port use below two commands.</p>
<p>kubectl config view --minify</p>
<p>kubectl cluster-info</p>
<p>→Then fire this curl to see the response of failure or 403</p>
<p>curl -k -H "Authorization: Bearer <removed> https://127.0.0.1:43731/version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image605.webp" style="width:7.52361in;height:5.69236in" alt="{AE7532A0-6F89-4517-BACB-A537EC196A1F}" /></p></td>
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
<p>kubectl auth can-I --list</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image606.webp" style="width:7.52431in;height:4.18056in" alt="{1DFD797F-9C2F-482D-AE76-41DB12E52F84}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image607.webp" style="width:7.53889in;height:5.99444in" alt="{8B564606-20F1-49F6-A926-CFC0EC156A44}" /></p></td>
</tr>
<tr>
<td><p>→In a local cluster we can see as below. As said above, in production we only use RBAC.</p>
<p>kubectl -n kube-system get pod -l component=kube-apiserver -o yaml | grep authorization-mode</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image608.webp" style="width:7.52986in;height:0.38958in" alt="{94D58631-19E4-415C-A2FD-72F0FC46ACD6}" /></p>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image609.webp" style="width:7.61458in;height:3.3125in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image610.webp" style="width:7.52708in;height:6.12708in" alt="{97136C76-2460-4D99-BE92-17A33A465870}" /></p></td>
</tr>
<tr>
<td><p>→Briefly how it looks after integrating with oidc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image611.webp" style="width:6.67708in;height:7.26042in" alt="{D0F25EAE-7C27-48D2-ACAA-F4255362B101}" /></p>
<p>C:\ws\k8basics\oidc integration\oidc-integration-keycloak-sequence.txt</p></td>
</tr>
<tr>
<td><p>→As is current setup</p>
<p>C:\ws\k8basics\oidc integration\without-oidc-integration-as-is-sequence.txt</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image612.webp" style="width:6.12292in;height:8.92917in" alt="{D2ECF149-B99B-46F9-976B-5D775BBB1315}" /></p></td>
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
<p>kubectl auth can-i create deployments</p>
<p>kubectl auth can-i get pods</p>
<p>kubectl auth can-i delete pods</p>
<p>kubectl auth can-i create deployments</p>
<p>kubectl auth can-i list secrets</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image613.webp" style="width:6.83333in;height:2.08333in" alt="{857DE596-464A-4049-84E0-E6446C2822B3}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image614.webp" style="width:6.40556in;height:4.27083in" /></p></td>
</tr>
</tbody>
</table>

## CIS Benchmarks for K8

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image615.webp" style="width:7.67986in;height:5.12014in" /> |

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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image616.webp" style="width:7.09375in;height:3.65625in" alt="{D21A5341-294E-453B-999E-6B3CCD164A7C}" /></p></td>
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
<p>admin@k8cp:~/Desktop$ hostnamectl</p>
<p> Static hostname: k8cp</p>
<p>       Icon name: computer-vm</p>
<p>         Chassis: vm 🖴</p>
<p>      Machine ID: a4b78e76ff96438a896bf4bd1b23756f</p>
<p>         Boot ID: 903b9d764438439582d8c4df0dbe30b6</p>
<p>  Virtualization: oracle</p>
<p>Operating System: Ubuntu 24.04.2 LTS              </p>
<p>          Kernel: Linux 6.17.0-35-generic</p>
<p>    Architecture: x86-64</p>
<p> Hardware Vendor: innotek GmbH</p>
<p>  Hardware Model: VirtualBox</p>
<p>Firmware Version: VirtualBox</p>
<p>   Firmware Date: Fri 2006-12-01</p>
<p>    Firmware Age: 19y 8month 1w                  </p>
<p>admin@k8cp:~/Desktop$</p>
<p># CONTROL PLANE NODE IP</p>
<p>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000</p>
<p>    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00</p>
<p>    inet 127.0.0.1/8 scope host lo</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>    inet6 ::1/128 scope host noprefixroute</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000</p>
<p>    link/ether 08:00:27:b8:36:fb brd ff:ff:ff:ff:ff:ff</p>
<p>    inet <mark>192.168.1.16/24</mark> brd 192.168.1.255 scope global dynamic noprefixroute enp0s3</p>
<p>       valid_lft 3393sec preferred_lft 3393sec</p>
<p>    inet6 fe80::a00:27ff:feb8:36fb/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p># DATA PLANE NODE IP</p>
<p>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000</p>
<p>    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00</p>
<p>    inet 127.0.0.1/8 scope host lo</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>    inet6 ::1/128 scope host noprefixroute</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000</p>
<p>    link/ether 08:00:27:1a:ca:e9 brd ff:ff:ff:ff:ff:ff</p>
<p>    inet <mark>192.168.1.17/24</mark> brd 192.168.1.255 scope global dynamic noprefixroute enp0s3</p>
<p>       valid_lft 3063sec preferred_lft 3063sec</p>
<p>    inet6 fe80::a00:27ff:fe1a:cae9/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 0 - (Recommended) Disable swap</p>
<p># Kubernetes requires swap to be disabled before kubeadm init.</p>
<p>############################################################</p>
<p>swapoff -a</p>
<p>sudo sed -i '/swap/s/^/#/' /etc/fstab</p>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 1 - Prepare Linux kernel for Kubernetes networking</p>
<p>############################################################</p>
<p>admin@k8cp:~/Downloads$ mkdir cpscripts</p>
<p>admin@k8cp:~/Downloads$ cd cpscripts</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p># Load the overlay filesystem module (used by container runtimes).</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf</p>
<p>overlay</p>
<p>br_netfilter</p>
<p>EOF</p>
<p>admin@k8cp:~/Downloads/cpscripts$ ls -lrt /etc/modules-load.d/</p>
<p>total 8</p>
<p>-rw-r--r-- 1 root root 119 Mar 31  2024 cups-filters.conf</p>
<p>lrwxrwxrwx 1 root root  10 Jun  5 15:36 modules.conf -&gt; ../modules</p>
<p>-rw-r--r-- 1 root root  21 Aug  8 19:36 containerd.conf</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p># Load the modules immediately without rebooting.</p>
<p>sudo modprobe overlay</p>
<p>sudo modprobe br_netfilter</p>
<p># Enable kernel networking features required by Kubernetes.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>net.bridge.bridge-nf-call-iptables  = 1</p>
<p>net.ipv4.ip_forward                 = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>EOF</p>
<p>admin@k8cp:~/Downloads/cpscripts$ # Enable kernel networking features required by Kubernetes.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>net.bridge.bridge-nf-call-iptables  = 1</p>
<p>net.ipv4.ip_forward                 = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>EOF</p>
<p>net.bridge.bridge-nf-call-iptables  = 1</p>
<p>net.ipv4.ip_forward                 = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ ls -lrt /etc/sysctl.d/</p>
<p>total 56</p>
<p>-rw-r--r-- 1 root root  798 Mar 24  2024 README.sysctl</p>
<p>-rw-r--r-- 1 root root  506 Mar 31  2024 10-zeropage.conf</p>
<p>-rw-r--r-- 1 root root 1292 Mar 31  2024 10-ptrace.conf</p>
<p>-rw-r--r-- 1 root root  158 Mar 31  2024 10-network-security.conf</p>
<p>-rw-r--r-- 1 root root  164 Mar 31  2024 10-map-count.conf</p>
<p>-rw-r--r-- 1 root root 1184 Mar 31  2024 10-magic-sysrq.conf</p>
<p>-rw-r--r-- 1 root root 1229 Mar 31  2024 10-kernel-hardening.conf</p>
<p>-rw-r--r-- 1 root root  490 Mar 31  2024 10-ipv6-privacy.conf</p>
<p>-rw-r--r-- 1 root root   77 Mar 31  2024 10-console-messages.conf</p>
<p>-rw-r--r-- 1 root root  481 Sep 26  2024 10-bufferbloat.conf</p>
<p>lrwxrwxrwx 1 root root   61 Jun 13  2025 90-omnibus-gitlab-kernel.shmmax.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.shmmax.conf</p>
<p>lrwxrwxrwx 1 root root   61 Jun 13  2025 90-omnibus-gitlab-kernel.shmall.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.shmall.conf</p>
<p>lrwxrwxrwx 1 root root   58 Jun 13  2025 90-omnibus-gitlab-kernel.sem.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-kernel.sem.conf</p>
<p>lrwxrwxrwx 1 root root   66 Jun 13  2025 90-omnibus-gitlab-net.core.somaxconn.conf -&gt; /opt/gitlab/embedded/etc/90-omnibus-gitlab-net.core.somaxconn.conf</p>
<p>lrwxrwxrwx 1 root root   14 Jun  5 15:36 99-sysctl.conf -&gt; ../sysctl.conf</p>
<p>-rw-r--r-- 1 root root  120 Aug  8 19:38 99-kubernetes-cri.conf</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p># Apply kernel parameter changes immediately.</p>
<p> </p>
<p>sudo sysctl --system</p>
<p>admin@k8cp:~/Downloads/cpscripts$ sudo sysctl --system</p>
<p>* Applying /usr/lib/sysctl.d/10-apparmor.conf ...</p>
<p>* Applying /etc/sysctl.d/10-bufferbloat.conf ...</p>
<p>* Applying /etc/sysctl.d/10-console-messages.conf ...</p>
<p>* Applying /etc/sysctl.d/10-ipv6-privacy.conf ...</p>
<p>* Applying /etc/sysctl.d/10-kernel-hardening.conf ...</p>
<p>* Applying /etc/sysctl.d/10-magic-sysrq.conf ...</p>
<p>* Applying /etc/sysctl.d/10-map-count.conf ...</p>
<p>* Applying /etc/sysctl.d/10-network-security.conf ...</p>
<p>* Applying /etc/sysctl.d/10-ptrace.conf ...</p>
<p>* Applying /etc/sysctl.d/10-zeropage.conf ...</p>
<p>* Applying /usr/lib/sysctl.d/30-tracker.conf ...</p>
<p>* Applying /usr/lib/sysctl.d/50-bubblewrap.conf ...</p>
<p>* Applying /usr/lib/sysctl.d/50-pid-max.conf ...</p>
<p>* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf ...</p>
<p>sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf": No such file or directory</p>
<p>* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf ...</p>
<p>sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf": No such file or directory</p>
<p>* Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf ...</p>
<p>sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf": No such file or directory</p>
<p>* Applying /etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf ...</p>
<p>sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf": No such file or directory</p>
<p>* Applying /etc/sysctl.d/99-kubernetes-cri.conf ...</p>
<p>* Applying /usr/lib/sysctl.d/99-protect-links.conf ...</p>
<p>* Applying /etc/sysctl.d/99-sysctl.conf ...</p>
<p>* Applying /etc/sysctl.conf ...</p>
<p>kernel.apparmor_restrict_unprivileged_userns = 1</p>
<p>net.core.default_qdisc = fq_codel</p>
<p>kernel.printk = 4 4 1 7</p>
<p>net.ipv6.conf.all.use_tempaddr = 2</p>
<p>net.ipv6.conf.default.use_tempaddr = 2</p>
<p>kernel.kptr_restrict = 1</p>
<p>kernel.sysrq = 176</p>
<p>vm.max_map_count = 1048576</p>
<p>net.ipv4.conf.default.rp_filter = 2</p>
<p>net.ipv4.conf.all.rp_filter = 2</p>
<p>kernel.yama.ptrace_scope = 1</p>
<p>vm.mmap_min_addr = 65536</p>
<p>fs.inotify.max_user_watches = 65536</p>
<p>kernel.unprivileged_userns_clone = 1</p>
<p>kernel.pid_max = 4194304</p>
<p>net.bridge.bridge-nf-call-iptables = 1</p>
<p>net.ipv4.ip_forward = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>fs.protected_fifos = 1</p>
<p>fs.protected_hardlinks = 1</p>
<p>fs.protected_regular = 2</p>
<p>fs.protected_symlinks = 1</p>
<p>vm.swappiness = 10</p>
<p>vm.dirty_background_ratio = 5</p>
<p>vm.dirty_ratio = 10</p>
<p>vm.vfs_cache_pressure = 50</p>
<p>net.core.rmem_max = 16777216</p>
<p>net.core.wmem_max = 16777216</p>
<p>vm.swappiness = 10</p>
<p>vm.dirty_background_ratio = 5</p>
<p>vm.dirty_ratio = 10</p>
<p>vm.vfs_cache_pressure = 50</p>
<p>net.core.rmem_max = 16777216</p>
<p>net.core.wmem_max = 16777216</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 2 - Install and configure containerd</p>
<p>############################################################</p>
<p># Install the container runtime.</p>
<p>sudo apt-get update</p>
<p>sudo apt-get install -y containerd</p>
<p># Generate the default containerd configuration.</p>
<p>sudo mkdir -p /etc/containerd</p>
<p>containerd config default | sudo tee /etc/containerd/config.toml &gt; /dev/null</p>
<p>sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml</p>
<p>grep SystemdCgroup /etc/containerd/config.toml</p>
<p>admin@k8cp:~/Downloads/cpscripts$ grep SystemdCgroup /etc/containerd/config.toml</p>
<p>            SystemdCgroup = true</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>sudo systemctl restart containerd</p>
<p>sudo systemctl status containerd --no-pager</p>
<p>admin@k8cp:~/Downloads/cpscripts$ sudo systemctl restart containerd</p>
<p>sudo systemctl status containerd --no-pager</p>
<p>● containerd.service - containerd container runtime</p>
<p>     Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)</p>
<p>     Active: active (running) since Sat 2026-08-08 19:47:28 UTC; 21ms ago</p>
<p>       Docs: https://containerd.io</p>
<p>    Process: 5065 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)</p>
<p>   Main PID: 5066 (containerd)</p>
<p>      Tasks: 7</p>
<p>     Memory: 15.7M (peak: 18.0M)</p>
<p>        CPU: 81ms</p>
<p>     CGroup: /system.slice/containerd.service</p>
<p>             └─5066 /usr/bin/containerd</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243114055Z" level=info msg="Start recovering state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243158594Z" level=info msg="Start event monitor"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243164109Z" level=info msg="Start cni network conf syncer for default"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243167584Z" level=info msg="Start streaming server"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243172733Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243177033Z" level=info msg="runtime interface starting up..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243180114Z" level=info msg="starting plugins..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243190821Z" level=info msg="Synchronizing NRI (plugin) with curr…ime state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243454994Z" level=info msg="containerd successfully booted in 0.034456s"</p>
<p>Aug 08 19:47:28 k8cp systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>Hint: Some lines were ellipsized, use -l to show in full.</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 3 - Configure kernel networking (redundant but harmless)</p>
<p>############################################################</p>
<p> </p>
<p># Enable bridge packet forwarding for Kubernetes networking.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/k8s.conf</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>net.bridge.bridge-nf-call-iptables = 1</p>
<p>EOF</p>
<p># Reload kernel parameters.</p>
<p>sudo sysctl --system</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 4 - Add Kubernetes package repository</p>
<p>############################################################</p>
<p>sudo apt-get update</p>
<p># Install prerequisites.</p>
<p>sudo apt-get install -y apt-transport-https ca-certificates curl gpg</p>
<p>sudo mkdir -p /etc/apt/keyrings</p>
<p># Import Kubernetes repository signing key.</p>
<p>curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key \</p>
<p>| sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p># Add the Kubernetes package repository.</p>
<p>echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' \</p>
<p>| sudo tee /etc/apt/sources.list.d/kubernetes.list</p>
<p>admin@k8cp:~/Downloads/cpscripts$ cat /etc/apt/sources.list.d/kubernetes.list</p>
<p>deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /</p>
<p>admin@k8cp:~/Downloads/cpscripts$ ls -l /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p>-rw-r--r-- 1 root root 1200 Aug  8 19:54 /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p> </p>
<p>sudo apt-get update</p>
<p>apt-cache madison kubeadm</p>
<p># Validate the installation so far.</p>
<p># Confirm hostname, machine-id, OS info</p>
<p>hostnamectl</p>
<p># Confirm kernel modules loaded</p>
<p>lsmod | grep -E "overlay|br_netfilter"</p>
<p># Confirm sysctl values applied</p>
<p>sudo sysctl net.bridge.bridge-nf-call-iptables net.ipv4.ip_forward net.bridge.bridge-nf-call-ip6tables</p>
<p># Confirm containerd is running with correct cgroup driver</p>
<p>sudo systemctl status containerd --no-pager</p>
<p>grep SystemdCgroup /etc/containerd/config.toml</p>
<p># Confirm Kubernetes repo is configured correctly</p>
<p>cat /etc/apt/sources.list.d/kubernetes.list</p>
<p>ls -l /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p># Confirm kubeadm packages are available from the repo</p>
<p>apt-cache madison kubeadm | head -5</p>
<p># Confirm swap is off</p>
<p>free -h</p>
<p>cat /etc/fstab | grep -i swap</p>
<p> </p>
<p> Static hostname: k8cp</p>
<p>       Icon name: computer-vm</p>
<p>         Chassis: vm 🖴</p>
<p>      Machine ID: a4b78e76ff96438a896bf4bd1b23756f</p>
<p>         Boot ID: 903b9d764438439582d8c4df0dbe30b6</p>
<p>  Virtualization: oracle</p>
<p>Operating System: Ubuntu 24.04.2 LTS              </p>
<p>          Kernel: Linux 6.17.0-35-generic</p>
<p>    Architecture: x86-64</p>
<p> Hardware Vendor: innotek GmbH</p>
<p>  Hardware Model: VirtualBox</p>
<p>Firmware Version: VirtualBox</p>
<p>   Firmware Date: Fri 2006-12-01</p>
<p>    Firmware Age: 19y 8month 1w                  </p>
<p>br_netfilter           32768  0</p>
<p>bridge                425984  1 br_netfilter</p>
<p>overlay               221184  0</p>
<p>net.bridge.bridge-nf-call-iptables = 1</p>
<p>net.ipv4.ip_forward = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>● containerd.service - containerd container runtime</p>
<p>     Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)</p>
<p>     Active: active (running) since Sat 2026-08-08 19:47:28 UTC; 11min ago</p>
<p>       Docs: https://containerd.io</p>
<p>    Process: 5065 ExecStartPre=/sbin/modprobe overlay (code=exited, status=0/SUCCESS)</p>
<p>   Main PID: 5066 (containerd)</p>
<p>      Tasks: 7</p>
<p>     Memory: 14.2M (peak: 18.0M)</p>
<p>        CPU: 1.423s</p>
<p>     CGroup: /system.slice/containerd.service</p>
<p>             └─5066 /usr/bin/containerd</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243114055Z" level=info msg="Start recovering state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243158594Z" level=info msg="Start event monitor"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243164109Z" level=info msg="Start cni network conf syncer for default"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243167584Z" level=info msg="Start streaming server"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243172733Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243177033Z" level=info msg="runtime interface starting up..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243180114Z" level=info msg="starting plugins..."</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243190821Z" level=info msg="Synchronizing NRI (plugin) with curr…ime state"</p>
<p>Aug 08 19:47:28 k8cp containerd[5066]: time="2026-08-08T19:47:28.243454994Z" level=info msg="containerd successfully booted in 0.034456s"</p>
<p>Aug 08 19:47:28 k8cp systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>Hint: Some lines were ellipsized, use -l to show in full.</p>
<p>            SystemdCgroup = true</p>
<p>deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /</p>
<p>-rw-r--r-- 1 root root 1200 Aug  8 19:54 /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p>   kubeadm | 1.32.13-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages</p>
<p>   kubeadm | 1.32.12-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages</p>
<p>   kubeadm | 1.32.11-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages</p>
<p>   kubeadm | 1.32.10-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages</p>
<p>   kubeadm | 1.32.9-1.1 | https://pkgs.k8s.io/core:/stable:/v1.32/deb  Packages</p>
<p>               total        used        free      shared  buff/cache   available</p>
<p>Mem:            16Gi       1.2Gi        13Gi        38Mi       2.1Gi        15Gi</p>
<p>Swap:             0B          0B          0B</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 5 - Install Kubernetes components</p>
<p>############################################################</p>
<p> </p>
<p># Refresh package information.</p>
<p>sudo apt-get update</p>
<p> </p>
<p># Verify available kubeadm versions.</p>
<p>sudo apt-cache madison kubeadm</p>
<p> </p>
<p># Install Kubernetes binaries.</p>
<p>#</p>
<p># kubeadm  -&gt; Creates and manages the cluster.</p>
<p># kubelet  -&gt; Agent running on every node.</p>
<p># kubectl  -&gt; CLI used to manage the cluster.</p>
<p># cri-tools -&gt; Utilities for interacting with the container runtime.</p>
<p>sudo apt-get install -y \</p>
<p>kubelet=1.32.0-1.1 \</p>
<p>kubeadm=1.32.0-1.1 \</p>
<p>kubectl=1.32.0-1.1 \</p>
<p>cri-tools=1.32.0-1.1</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo apt-get install -y \</p>
<p>    kubelet=1.32.0-1.1 \</p>
<p>    kubeadm=1.32.0-1.1 \</p>
<p>    kubectl=1.32.0-1.1 \</p>
<p>    cri-tools=1.32.0-1.1</p>
<p>    Reading package lists... Done</p>
<p>    Building dependency tree... Done</p>
<p>    Reading state information... Done</p>
<p>    The following additional packages will be installed:</p>
<p>    conntrack kubernetes-cni</p>
<p>    The following NEW packages will be installed:</p>
<p>    conntrack cri-tools kubeadm kubectl kubelet kubernetes-cni</p>
<p>    0 upgraded, 6 newly installed, 0 to remove and 116 not upgraded.</p>
<p>    Need to get 92.7 MB of archives.</p>
<p>    After this operation, 338 MB of additional disk space will be used.</p>
<p>    Get:2 http://archive.ubuntu.com/ubuntu noble/main amd64 conntrack amd64 1:1.4.8-1ubuntu1 [37.9 kB]</p>
<p>    Get:1 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  cri-tools 1.32.0-1.1 [16.3 MB]</p>
<p>    Get:3 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubeadm 1.32.0-1.1 [12.2 MB]</p>
<p>    Get:4 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubectl 1.32.0-1.1 [11.3 MB]</p>
<p>    Get:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubernetes-cni 1.6.0-1.1 [37.8 MB]</p>
<p>    Get:6 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.32/deb  kubelet 1.32.0-1.1 [15.2 MB]</p>
<p>    Fetched 92.7 MB in 6s (16.7 MB/s)  </p>
<p>    Selecting previously unselected package conntrack.</p>
<p>    (Reading database ... 197479 files and directories currently installed.)</p>
<p>    Preparing to unpack .../0-conntrack_1%3a1.4.8-1ubuntu1_amd64.deb ...</p>
<p>    Unpacking conntrack (1:1.4.8-1ubuntu1) ...</p>
<p>    Selecting previously unselected package cri-tools.</p>
<p>    Preparing to unpack .../1-cri-tools_1.32.0-1.1_amd64.deb ...</p>
<p>    Unpacking cri-tools (1.32.0-1.1) ...</p>
<p>    Selecting previously unselected package kubeadm.</p>
<p>    Preparing to unpack .../2-kubeadm_1.32.0-1.1_amd64.deb ...</p>
<p>    Unpacking kubeadm (1.32.0-1.1) ...</p>
<p>    Selecting previously unselected package kubectl.</p>
<p>    Preparing to unpack .../3-kubectl_1.32.0-1.1_amd64.deb ...</p>
<p>    Unpacking kubectl (1.32.0-1.1) ...</p>
<p>    Selecting previously unselected package kubernetes-cni.</p>
<p>    Preparing to unpack .../4-kubernetes-cni_1.6.0-1.1_amd64.deb ...</p>
<p>    Unpacking kubernetes-cni (1.6.0-1.1) ...</p>
<p>    Selecting previously unselected package kubelet.</p>
<p>    Preparing to unpack .../5-kubelet_1.32.0-1.1_amd64.deb ...</p>
<p>    Unpacking kubelet (1.32.0-1.1) ...</p>
<p>    Setting up conntrack (1:1.4.8-1ubuntu1) ...</p>
<p>    Setting up kubectl (1.32.0-1.1) ...</p>
<p>    Setting up cri-tools (1.32.0-1.1) ...</p>
<p>    Setting up kubernetes-cni (1.6.0-1.1) ...</p>
<p>    Setting up kubeadm (1.32.0-1.1) ...</p>
<p>    Setting up kubelet (1.32.0-1.1) ...</p>
<p>    Processing triggers for man-db (2.12.0-4build2) ...</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p># Prevent accidental upgrades.</p>
<p>sudo apt-mark hold kubelet kubeadm kubectl</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo apt-mark hold kubelet kubeadm kubectl</p>
<p>    kubelet set on hold.</p>
<p>    kubeadm set on hold.</p>
<p>    kubectl set on hold.</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p># Enable kubelet service.</p>
<p>systemctl enable --now kubelet</p></td>
</tr>
<tr>
<td><p># validate the installation so far.</p>
<p>kubeadm version</p>
<p>kubelet --version</p>
<p>kubectl version --client</p>
<p>crictl --version</p>
<p>apt-mark showhold</p>
<p>systemctl is-enabled kubelet</p>
<p>systemctl status kubelet --no-pager</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ kubeadm version</p>
<p>kubeadm version: &amp;version.Info{Major:"1", Minor:"32", GitVersion:"v1.32.0", GitCommit:"70d3cc986aa8221cd1dfb1121852688902d3bf53", GitTreeState:"clean", BuildDate:"2024-12-11T18:04:20Z", GoVersion:"go1.23.3", Compiler:"gc", Platform:"linux/amd64"}</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ kubelet --version</p>
<p>Kubernetes v1.32.0</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ kubectl version --client</p>
<p>Client Version: v1.32.0</p>
<p>Kustomize Version: v5.5.0</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ crictl --version</p>
<p>crictl version v1.32.0</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p>
<p>admin@k8cp:~/Downloads/cpscripts$ apt-mark showhold</p>
<p>kubeadm</p>
<p>kubectl</p>
<p>kubelet</p>
<p>admin@k8cp:~/Downloads/cpscripts$ systemctl is-enabled kubelet</p>
<p>enabled</p>
<p>admin@k8cp:~/Downloads/cpscripts$ systemctl status kubelet --no-pager</p>
<p>● kubelet.service - kubelet: The Kubernetes Node Agent</p>
<p>     Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)</p>
<p>    Drop-In: /usr/lib/systemd/system/kubelet.service.d</p>
<p>             └─10-kubeadm.conf</p>
<p>     Active: activating (auto-restart) (Result: exit-code) since Sat 2026-08-08 20:11:59 UTC; 6s ago</p>
<p>       Docs: https://kubernetes.io/docs/</p>
<p>    Process: 7015 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)</p>
<p>   Main PID: 7015 (code=exited, status=1/FAILURE)</p>
<p>        CPU: 62ms</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 6 - Bootstrap the Kubernetes control plane</p>
<p>############################################################</p>
<p># Initialize the Kubernetes cluster.</p>
<p>#</p>
<p># This creates:</p>
<p># - API Server</p>
<p># - etcd</p>
<p># - Controller Manager</p>
<p># - Scheduler</p>
<p># - Certificates</p>
<p># - Bootstrap tokens</p>
<p>#</p>
<p># It also prints the "kubeadm join" command for worker nodes.</p>
<p># Your VMs sit on the 192.168.1.0/24 LAN, so we picked 10.244.0.0/16 for</p>
<p># the pod network to keep it completely separate from your real network — avoiding any routing</p>
<p># conflicts between pod IPs and node/gateway IPs. That's why the</p>
<p># kubeadm init command uses --pod-network-cidr=10.244.0.0/16 instead of a range overlapping your LAN.</p>
<p>sudo kubeadm init --pod-network-cidr=<mark>10.244.0.0/16</mark> --kubernetes-version=1.32.0</p>
<p>    # LAST FEW LINES</p>
<p>    [bootstrap-token] Configured RBAC rules to allow the csrapprover controller automatically approve CSRs from a Node Bootstrap Token</p>
<p>    [bootstrap-token] Configured RBAC rules to allow certificate rotation for all node client certificates in the cluster</p>
<p>    [bootstrap-token] Creating the "cluster-info" ConfigMap in the "kube-public" namespace</p>
<p>    [kubelet-finalize] Updating "/etc/kubernetes/kubelet.conf" to point to a rotatable kubelet client certificate and key</p>
<p>    [addons] Applied essential addon: CoreDNS</p>
<p>    [addons] Applied essential addon: kube-proxy</p>
<p>    Your Kubernetes control-plane has initialized successfully!</p>
<p>    To start using your cluster, you need to run the following as a regular user:</p>
<p>    mkdir -p $HOME/.kube</p>
<p>    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config</p>
<p>    sudo chown $(id -u):$(id -g) $HOME/.kube/config</p>
<p>    Alternatively, if you are the root user, you can run:</p>
<p>    export KUBECONFIG=/etc/kubernetes/admin.conf</p>
<p>    You should now deploy a pod network to the cluster.</p>
<p>    Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:</p>
<p>    https://kubernetes.io/docs/concepts/cluster-administration/addons/</p>
<p>    Then you can join any number of worker nodes by running the following on each as root:</p>
<p>    kubeadm join 192.168.1.16:6443 --token 7dxh7y.u88505c4x574c9ju \</p>
<p>        --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p># VALIDATION CHECKS</p>
<p># Confirm the core control-plane static pod manifests exist</p>
<p>sudo ls /etc/kubernetes/manifests/</p>
<p># Confirm the admin kubeconfig was generated</p>
<p>sudo ls -l /etc/kubernetes/admin.conf</p>
<p># Confirm etcd, API server, controller-manager, scheduler containers are running</p>
<p>sudo crictl ps</p>
<p># Confirm control-plane component health via containerd</p>
<p>sudo crictl ps -a | grep -E "etcd|kube-apiserver|kube-controller|kube-scheduler"</p>
<p># Check kubelet is now running properly (not crash-looping anymore)</p>
<p>sudo systemctl status kubelet --no-pager</p>
<p># Confirm the bootstrap token and join info were created</p>
<p>sudo kubeadm token list</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo ls /etc/kubernetes/manifests/</p>
<p>    etcd.yaml  kube-apiserver.yaml  kube-controller-manager.yaml  kube-scheduler.yaml</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo ls -l /etc/kubernetes/admin.conf</p>
<p>    -rw------- 1 root root 5652 Aug  8 20:17 /etc/kubernetes/admin.conf</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo crictl ps</p>
<p>    WARN[0000] Config "/etc/crictl.yaml" does not exist, trying next: "/usr/bin/crictl.yaml"</p>
<p>    WARN[0000] runtime connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.</p>
<p>    WARN[0000] Image connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.</p>
<p>    CONTAINER           IMAGE               CREATED             STATE               NAME                      ATTEMPT             POD ID              POD                            NAMESPACE</p>
<p>    d5e19ad87791a       040f9f8aac8cd       3 minutes ago       Running             kube-proxy                0                   4c76c8ab7b5da       kube-proxy-lfthl               kube-system</p>
<p>    76eaf8bad42e0       8cab3d2a8bd0f       3 minutes ago       Running             kube-controller-manager   0                   6dc61d04c67c5       kube-controller-manager-k8cp   kube-system</p>
<p>    e9089d7bce500       a389e107f4ff1       3 minutes ago       Running             kube-scheduler            0                   98fe2b1dd7d31       kube-scheduler-k8cp            kube-system</p>
<p>    f672ab275bb23       a9e7e6b294baf       3 minutes ago       Running             etcd                      0                   f041fb56cf3f0       etcd-k8cp                      kube-system</p>
<p>    8fd95159ba956       c2e17b8d0f4a3       3 minutes ago       Running             kube-apiserver            0                   28c4a8c06f472       kube-apiserver-k8cp            kube-system</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo crictl ps -a | grep -E "etcd|kube-apiserver|kube-controller|kube-scheduler"</p>
<p>    WARN[0000] Config "/etc/crictl.yaml" does not exist, trying next: "/usr/bin/crictl.yaml"</p>
<p>    WARN[0000] runtime connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.</p>
<p>    WARN[0000] Image connect using default endpoints: [unix:///run/containerd/containerd.sock unix:///run/crio/crio.sock unix:///var/run/cri-dockerd.sock]. As the default settings are now deprecated, you should set the endpoint instead.</p>
<p>    76eaf8bad42e0       8cab3d2a8bd0f       4 minutes ago       Running             kube-controller-manager   0                   6dc61d04c67c5       kube-controller-manager-k8cp   kube-system</p>
<p>    e9089d7bce500       a389e107f4ff1       4 minutes ago       Running             kube-scheduler            0                   98fe2b1dd7d31       kube-scheduler-k8cp            kube-system</p>
<p>    f672ab275bb23       a9e7e6b294baf       4 minutes ago       Running             etcd                      0                   f041fb56cf3f0       etcd-k8cp                      kube-system</p>
<p>    8fd95159ba956       c2e17b8d0f4a3       4 minutes ago       Running             kube-apiserver            0                   28c4a8c06f472       kube-apiserver-k8cp            kube-system</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo systemctl status kubelet --no-pager</p>
<p>    ● kubelet.service - kubelet: The Kubernetes Node Agent</p>
<p>        Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)</p>
<p>        Drop-In: /usr/lib/systemd/system/kubelet.service.d</p>
<p>                └─10-kubeadm.conf</p>
<p>        Active: active (running) since Sat 2026-08-08 20:17:26 UTC; 4min 4s ago</p>
<p>        Docs: https://kubernetes.io/docs/</p>
<p>    Main PID: 7931 (kubelet)</p>
<p>        Tasks: 12 (limit: 20767)</p>
<p>        Memory: 34.6M (peak: 35.3M)</p>
<p>            CPU: 10.367s</p>
<p>        CGroup: /system.slice/kubelet.service</p>
<p>                └─7931 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.con…</p>
<p>    Aug 08 20:20:42 k8cp kubelet[7931]: E0808 20:20:42.523676    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:20:47 k8cp kubelet[7931]: E0808 20:20:47.525411    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:20:52 k8cp kubelet[7931]: E0808 20:20:52.528346    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:20:57 k8cp kubelet[7931]: E0808 20:20:57.529777    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:02 k8cp kubelet[7931]: E0808 20:21:02.534559    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:07 k8cp kubelet[7931]: E0808 20:21:07.536073    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:12 k8cp kubelet[7931]: E0808 20:21:12.538215    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:17 k8cp kubelet[7931]: E0808 20:21:17.539503    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:22 k8cp kubelet[7931]: E0808 20:21:22.541818    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Aug 08 20:21:27 k8cp kubelet[7931]: E0808 20:21:27.545868    7931 kubelet.go:3008] "Container runtime network not ready" networkR…itialized"</p>
<p>    Hint: Some lines were ellipsized, use -l to show in full.</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ sudo kubeadm token list</p>
<p>    TOKEN                     TTL         EXPIRES                USAGES                   DESCRIPTION                                                EXTRA GROUPS</p>
<p>    7dxh7y.u88505c4x574c9ju   23h         2026-08-09T20:17:25Z   authentication,signing   The default bootstrap token generated by 'kubeadm init'.   system:bootstrappers:kubeadm:default-node-token</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 7 - Configure kubectl</p>
<p>############################################################</p>
<p># Allow the current user to manage the cluster.</p>
<p> </p>
<p>mkdir -p $HOME/.kube</p>
<p>sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config</p>
<p>sudo chown $(id -u):$(id -g) $HOME/.kube/config</p>
<p>kubectl get nodes</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ mkdir -p $HOME/.kube</p>
<p>    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config</p>
<p>    sudo chown $(id -u):$(id -g) $HOME/.kube/config</p>
<p>    kubectl get nodes</p>
<p>    NAME   STATUS     ROLES           AGE    VERSION</p>
<p>    k8cp   NotReady   control-plane   6m1s   v1.32.0</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p># The not ready is expected.</p>
<p> </p></td>
</tr>
<tr>
<td><p>############################################################</p>
<p># STEP 8 - Remove the control-plane taint (single-node lab) -- OPTIONAL - NOT EXECUTED</p>
<p>############################################################</p>
<p># By default, workloads are NOT scheduled on the control plane.</p>
<p># Remove the taint so this node can also run application pods.</p>
<p>#</p>
<p># Skip this step if you will add separate worker nodes.</p>
<p>kubectl taint nodes --all node-role.kubernetes.io/control-plane-</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 9 - Install a CNI plugin (Calico)</p>
<p>############################################################</p>
<p># Kubernetes networking does not work until a CNI plugin is installed.</p>
<p> </p>
<p># Install the Calico operator.</p>
<p>kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml</p>
<p># Install the Calico networking components.</p>
<p>kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml</p>
<p><mark># Patch with our own custom IP range as we have initialized using this. Else it will fail. IMPORTANT.</mark></p>
<p>kubectl patch installation default --type merge -p '{"spec":{"calicoNetwork":{"ipPools":[{"cidr":"<mark>10.244.0.0/16</mark>","encapsulation":"VXLANCrossSubnet","natOutgoing":"Enabled","nodeSelector":"all()"}]}}}'</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ kubectl patch installation default --type merge -p '{"spec":{"calicoNetwork":{"ipPools":[{"cidr":"10.244.0.0/16","encapsulation":"VXLANCrossSubnet","natOutgoing":"Enabled","nodeSelector":"all()"}]}}}'</p>
<p>    installation.operator.tigera.io/default patched</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p>kubectl get tigerastatus</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ kubectl get tigerastatus</p>
<p>    NAME        AVAILABLE   PROGRESSING   DEGRADED   SINCE</p>
<p>    apiserver   False       True          False      6m1s</p>
<p>    calico                                True      </p>
<p>    ippools     True        False         False      11s</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p>kubectl get pods -n calico-system</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ kubectl get pods -n calico-system</p>
<p>    NAME                                       READY   STATUS              RESTARTS   AGE</p>
<p>    calico-kube-controllers-697dcb9bb7-8dwkb   0/1     Pending             0          27s</p>
<p>    calico-node-gkvph                          0/1     Init:1/2            0          27s</p>
<p>    calico-typha-77f8575c68-l7dv6              1/1     Running             0          27s</p>
<p>    csi-node-driver-d9qzs                      0/2     ContainerCreating   0          27s</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p>kubectl get nodes</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ kubectl get nodes</p>
<p>    NAME   STATUS   ROLES           AGE   VERSION</p>
<p>    k8cp   Ready    control-plane   17m   v1.32.0</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p>kubectl get pods -n calico-system</p>
<p>    admin@k8cp:~/Downloads/cpscripts$ kubectl get pods -n calico-system</p>
<p>    NAME                                       READY   STATUS    RESTARTS   AGE</p>
<p>    calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   0          2m27s</p>
<p>    calico-node-c4n77                          1/1     Running   0          86s</p>
<p>    calico-typha-77f8575c68-l7dv6              1/1     Running   0          2m27s</p>
<p>    csi-node-driver-d9qzs                      2/2     Running   0          2m27s</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p>    admin@k8cp:~/Downloads/cpscripts$</p>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>admin@k8cp:~/Downloads/cpscripts$ ip address</p>
<p>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000</p>
<p>    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00</p>
<p>    inet 127.0.0.1/8 scope host lo</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>    inet6 ::1/128 scope host noprefixroute</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>2: enp0s3: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_codel state UP group default qlen 1000</p>
<p>    link/ether 08:00:27:b8:36:fb brd ff:ff:ff:ff:ff:ff</p>
<p>    inet 192.168.1.16/24 brd 192.168.1.255 scope global dynamic noprefixroute enp0s3</p>
<p>       valid_lft 299sec preferred_lft 299sec</p>
<p>    inet6 fe80::a00:27ff:feb8:36fb/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>3: vxlan.calico: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UNKNOWN group default qlen 1000</p>
<p>    link/ether 66:05:66:55:b7:4d brd ff:ff:ff:ff:ff:ff</p>
<p>    inet 10.244.178.64/32 scope global vxlan.calico</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>    inet6 fe80::6405:66ff:fe55:b74d/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>6: calife13f3ff4dd@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-8f0ee6e7-89c5-b2db-00e9-f448c9629e37</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>7: cali577b45b1157@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-93c06c56-2f1c-fc1f-7dbd-843015aad778</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>8: cali679cc9748d5@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-112bbd6e-cc85-65ae-0c46-53268bcb907b</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>9: calice24b7e2eed@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-2e7ac7dc-cacd-2fad-83f6-4cfcc00071eb</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>10: calid4621b62375@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-d9ac66e7-77ba-932a-5540-85edc2c715d5</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>11: cali73d58d6a0ce@if2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1450 qdisc noqueue state UP group default qlen 1000</p>
<p>    link/ether ee:ee:ee:ee:ee:ee brd ff:ff:ff:ff:ff:ff link-netns cni-7592bcbb-220f-9c0f-a391-594f1bdee48d</p>
<p>    inet6 fe80::ecee:eeff:feee:eeee/64 scope link</p>
<p>       valid_lft forever preferred_lft forever</p>
<p>admin@k8cp:~/Downloads/cpscripts$</p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image617.webp" style="width:7.52708in;height:3.05347in" alt="{881C557F-740E-457B-B390-BBC9CA09AF48}" /></p></td>
</tr>
<tr>
<td><p>→Clean up any existing traces.</p>
<p>sudo snap remove --purge docker</p>
<p>sudo snap remove --purge kubectl</p>
<p>sudo rm -f /usr/local/bin/kind</p>
<p>sudo apt purge -y minikube</p>
<p>sudo apt autoremove -y</p>
<p>sudo rm -rf ~/.kube ~/.minikube ~/snap/docker</p>
<p>sudo apt clean</p>
<p>admin@k8dp1:~/Desktop$ hostnamectl</p>
<p> Static hostname: k8dp1</p>
<p>       Icon name: computer-vm</p>
<p>         Chassis: vm 🖴</p>
<p>      Machine ID: 11db4b66c0d743c59c80f612fd457cf9</p>
<p>         Boot ID: d73d0d9684364cd99f7f9feb43c452e6</p>
<p>  Virtualization: oracle</p>
<p>Operating System: Ubuntu 24.04.2 LTS              </p>
<p>          Kernel: Linux 6.17.0-35-generic</p>
<p>    Architecture: x86-64</p>
<p> Hardware Vendor: innotek GmbH</p>
<p>  Hardware Model: VirtualBox</p>
<p>Firmware Version: VirtualBox</p>
<p>   Firmware Date: Fri 2006-12-01</p>
<p>    Firmware Age: 19y 8month 1w 1d                </p>
<p>admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># WORKER NODE SETUP</p>
<p>#</p>
<p># Run Steps 1-3 on the WORKER node.</p>
<p># Step 4 joins this machine to the control-plane node.</p>
<p>############################################################</p>
<p>############################################################</p>
<p># STEP 0 - Disable swap</p>
<p>############################################################</p>
<p># Kubernetes requires swap to be disabled.</p>
<p>sudo swapoff -a</p>
<p># Check that no swap is active.</p>
<p>free -h</p>
<p># If /etc/fstab contains a swap entry, comment it out so</p>
<p># swap does not come back after reboot.</p>
<p>sudo sed -i '/swap/s/^/#/' /etc/fstab</p>
<p>cat /etc/fstab | grep -i swap</p>
<p>    admin@k8dp1:~/Desktop$ sudo swapoff -a</p>
<p>    [sudo] password for admin:</p>
<p>    admin@k8dp1:~/Desktop$ free -h</p>
<p>                total        used        free      shared  buff/cache   available</p>
<p>    Mem:            16Gi       1.1Gi        14Gi        38Mi       2.0Gi        15Gi</p>
<p>    Swap:             0B          0B          0B</p>
<p>    admin@k8dp1:~/Desktop$ which docker kind kubectl kubeadm minikube 2&gt;/dev/null</p>
<p>    snap list | grep -iE "docker|kube"</p>
<p>    dpkg -l | grep -iE "docker|containerd|kind|kube"</p>
<p>    admin@k8dp1:~/Desktop$</p>
<p>    admin@k8dp1:~/Desktop$ sudo sed -i '/swap/s/^/#/' /etc/fstab</p>
<p>    cat /etc/fstab | grep -i swap</p>
<p>    admin@k8dp1:~/Desktop$</p>
<p>    admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p> </p>
<p>############################################################</p>
<p># STEP 1 - Prepare Linux kernel for Kubernetes networking</p>
<p>############################################################</p>
<p># Load kernel modules required by the container runtime</p>
<p># and Kubernetes networking.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf</p>
<p>overlay</p>
<p>br_netfilter</p>
<p>EOF</p>
<p>   </p>
<p>    admin@k8dp1:~/Desktop$ ls -lrt /etc/modules-load.d/</p>
<p>    total 8</p>
<p>    -rw-r--r-- 1 root root 119 Mar 31  2024 cups-filters.conf</p>
<p>    lrwxrwxrwx 1 root root  10 Jun  5 15:36 modules.conf -&gt; ../modules</p>
<p>    -rw-r--r-- 1 root root  21 Aug  9 06:56 containerd.conf</p>
<p>    admin@k8dp1:~/Desktop$</p>
<p># Load the modules immediately.</p>
<p>sudo modprobe overlay</p>
<p>sudo modprobe br_netfilter</p>
<p># Enable packet forwarding and bridge networking.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>net.bridge.bridge-nf-call-iptables  = 1</p>
<p>net.ipv4.ip_forward                 = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>EOF</p>
<p># Apply the kernel parameters immediately.</p>
<p>sudo sysctl --system</p>
<p>   </p>
<p>    admin@k8dp1:~/Desktop$ sudo sysctl --system</p>
<p>    * Applying /usr/lib/sysctl.d/10-apparmor.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-bufferbloat.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-console-messages.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-ipv6-privacy.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-kernel-hardening.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-magic-sysrq.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-map-count.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-network-security.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-ptrace.conf ...</p>
<p>    * Applying /etc/sysctl.d/10-zeropage.conf ...</p>
<p>    * Applying /usr/lib/sysctl.d/30-tracker.conf ...</p>
<p>    * Applying /usr/lib/sysctl.d/50-bubblewrap.conf ...</p>
<p>    * Applying /usr/lib/sysctl.d/50-pid-max.conf ...</p>
<p>    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf ...</p>
<p>    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.sem.conf": No such file or directory</p>
<p>    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf ...</p>
<p>    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmall.conf": No such file or directory</p>
<p>    * Applying /etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf ...</p>
<p>    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-kernel.shmmax.conf": No such file or directory</p>
<p>    * Applying /etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf ...</p>
<p>    sysctl: cannot open "/etc/sysctl.d/90-omnibus-gitlab-net.core.somaxconn.conf": No such file or directory</p>
<p>    * Applying /etc/sysctl.d/99-kubernetes-cri.conf ...</p>
<p>    * Applying /usr/lib/sysctl.d/99-protect-links.conf ...</p>
<p>    * Applying /etc/sysctl.d/99-sysctl.conf ...</p>
<p>    * Applying /etc/sysctl.conf ...</p>
<p>    kernel.apparmor_restrict_unprivileged_userns = 1</p>
<p>    net.core.default_qdisc = fq_codel</p>
<p>    kernel.printk = 4 4 1 7</p>
<p>    net.ipv6.conf.all.use_tempaddr = 2</p>
<p>    net.ipv6.conf.default.use_tempaddr = 2</p>
<p>    kernel.kptr_restrict = 1</p>
<p>    kernel.sysrq = 176</p>
<p>    vm.max_map_count = 1048576</p>
<p>    net.ipv4.conf.default.rp_filter = 2</p>
<p>    net.ipv4.conf.all.rp_filter = 2</p>
<p>    kernel.yama.ptrace_scope = 1</p>
<p>    vm.mmap_min_addr = 65536</p>
<p>    fs.inotify.max_user_watches = 65536</p>
<p>    kernel.unprivileged_userns_clone = 1</p>
<p>    kernel.pid_max = 4194304</p>
<p>    net.bridge.bridge-nf-call-iptables = 1</p>
<p>    net.ipv4.ip_forward = 1</p>
<p>    net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>    fs.protected_fifos = 1</p>
<p>    fs.protected_hardlinks = 1</p>
<p>    fs.protected_regular = 2</p>
<p>    fs.protected_symlinks = 1</p>
<p>    vm.swappiness = 10</p>
<p>    vm.dirty_background_ratio = 5</p>
<p>    vm.dirty_ratio = 10</p>
<p>    vm.vfs_cache_pressure = 50</p>
<p>    net.core.rmem_max = 16777216</p>
<p>    net.core.wmem_max = 16777216</p>
<p>    vm.swappiness = 10</p>
<p>    vm.dirty_background_ratio = 5</p>
<p>    vm.dirty_ratio = 10</p>
<p>    vm.vfs_cache_pressure = 50</p>
<p>    net.core.rmem_max = 16777216</p>
<p>    net.core.wmem_max = 16777216</p>
<p>    admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 2 - Install and configure containerd</p>
<p>############################################################</p>
<p># Install containerd, the container runtime used by Kubernetes.</p>
<p>sudo apt-get update</p>
<p>sudo apt-get install -y containerd</p>
<p># Create containerd configuration directory.</p>
<p>sudo mkdir -p /etc/containerd</p>
<p># Generate the default containerd configuration.</p>
<p>sudo containerd config default | sudo tee /etc/containerd/config.toml &gt; /dev/null</p>
<p># Edit the containerd configuration.</p>
<p>sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml</p>
<p>grep SystemdCgroup /etc/containerd/config.toml</p>
<p># Restart containerd with the new configuration.</p>
<p>sudo systemctl restart containerd</p>
<p># Make sure containerd starts automatically after reboot.</p>
<p>sudo systemctl enable containerd</p>
<p>sudo systemctl status containerd --no-pager</p>
<p>    admin@k8dp1:~/Desktop$</p>
<p>    sudo systemctl status containerd --no-pager</p>
<p>    ● containerd.service - containerd container runtime</p>
<p>        Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)</p>
<p>        Active: active (running) since Sun 2026-08-09 07:03:13 UTC; 8s ago</p>
<p>        Docs: https://containerd.io</p>
<p>    Main PID: 5383 (containerd)</p>
<p>        Tasks: 8</p>
<p>        Memory: 13.6M (peak: 16.8M)</p>
<p>            CPU: 87ms</p>
<p>        CGroup: /system.slice/containerd.service</p>
<p>                └─5383 /usr/bin/containerd</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761601751Z" level=info msg="Start cni network conf syncer for default"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761779171Z" level=info msg="Start streaming server"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761829183Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761991029Z" level=info msg="runtime interface starting up..."</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762045641Z" level=info msg="starting plugins..."</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762094481Z" level=info msg="Synchronizing NRI (plugin) with cur…ime state"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761428043Z" level=info msg=serving... address=/run/containerd/c…sock.ttrpc</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762438726Z" level=info msg=serving... address=/run/containerd/c…inerd.sock</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.764257642Z" level=info msg="containerd successfully booted in 0.035193s"</p>
<p>    Aug 09 07:03:13 k8dp1 systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>    Hint: Some lines were ellipsized, use -l to show in full.</p>
<p>    admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p> </p>
<p> </p>
<p>############################################################</p>
<p># STEP 3 - Install Kubernetes components</p>
<p>############################################################</p>
<p># Update package information and install prerequisites.</p>
<p>sudo apt-get update</p>
<p>sudo apt-get install -y apt-transport-https ca-certificates curl gpg</p>
<p># Create the keyring directory if it doesn't already exist.</p>
<p>sudo mkdir -p /etc/apt/keyrings</p>
<p># Add the Kubernetes repository signing key.</p>
<p>curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key \</p>
<p>  | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p># Add the Kubernetes v1.32 package repository.</p>
<p>echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' \</p>
<p>  | sudo tee /etc/apt/sources.list.d/kubernetes.list</p>
<p># Refresh package information.</p>
<p>sudo apt-get update</p>
<p># Check which kubeadm versions are available.</p>
<p>apt-cache madison kubeadm</p>
<p># Install the same Kubernetes version used by the control plane.</p>
<p>sudo apt-get install -y \</p>
<p>  kubelet=1.32.0-1.1 \</p>
<p>  kubeadm=1.32.0-1.1 \</p>
<p>  kubectl=1.32.0-1.1 \</p>
<p>  cri-tools=1.32.0-1.1</p>
<p># Prevent automatic Kubernetes package upgrades.</p>
<p>sudo apt-mark hold kubelet kubeadm kubectl</p>
<p># Enable kubelet.</p>
<p># It will remain waiting until kubeadm join connects this node</p>
<p># to the control plane.</p>
<p>sudo systemctl enable --now kubelet</p>
<p>    # Verify the installation. Last few lines only.</p>
<p>    Unpacking kubelet (1.32.0-1.1) …</p>
<p>    Setting up conntrack (1:1.4.8-1ubuntu1) ...</p>
<p>    Setting up kubectl (1.32.0-1.1) ...</p>
<p>    Setting up cri-tools (1.32.0-1.1) ...</p>
<p>    Setting up kubernetes-cni (1.6.0-1.1) ...</p>
<p>    Setting up kubeadm (1.32.0-1.1) ...</p>
<p>    Setting up kubelet (1.32.0-1.1) ...</p>
<p>    Processing triggers for man-db (2.12.0-4build2) ...</p>
<p>    kubelet set on hold.</p>
<p>    kubeadm set on hold.</p>
<p>    kubectl set on hold.</p>
<p>    admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td><p>→Now that worker node is up, let us validate it.</p>
<p>admin@k8dp1:~/Desktop$</p>
<p>kubeadm version</p>
<p>kubelet --version</p>
<p>kubectl version --client</p>
<p>crictl --version</p>
<p>apt-mark showhold</p>
<p>systemctl is-enabled kubelet</p>
<p>systemctl status kubelet --no-pager</p>
<p>systemctl status containerd --no-pager</p>
<p>hostnamectl</p>
<p>lsmod | grep -E "overlay|br_netfilter"</p>
<p>sudo sysctl net.bridge.bridge-nf-call-iptables net.ipv4.ip_forward net.bridge.bridge-nf-call-ip6tables</p>
<p>free -h</p>
<p>    kubeadm version: &amp;version.Info{Major:"1", Minor:"32", GitVersion:"v1.32.0", GitCommit:"70d3cc986aa8221cd1dfb1121852688902d3bf53", GitTreeState:"clean", BuildDate:"2024-12-11T18:04:20Z", GoVersion:"go1.23.3", Compiler:"gc", Platform:"linux/amd64"}</p>
<p>    Kubernetes v1.32.0</p>
<p>    Client Version: v1.32.0</p>
<p>    Kustomize Version: v5.5.0</p>
<p>    crictl version v1.32.0</p>
<p>    kubeadm</p>
<p>    kubectl</p>
<p>    kubelet</p>
<p>    enabled</p>
<p>    ● kubelet.service - kubelet: The Kubernetes Node Agent</p>
<p>        Loaded: loaded (/usr/lib/systemd/system/kubelet.service; enabled; preset: enabled)</p>
<p>        Drop-In: /usr/lib/systemd/system/kubelet.service.d</p>
<p>                └─10-kubeadm.conf</p>
<p>        <mark>Active: activating (auto-restart) (Result: exit-code)</mark> since Sun 2026-08-09 07:18:32 UTC; 519ms ago</p>
<p>        Docs: https://kubernetes.io/docs/</p>
<p>        Process: 7365 ExecStart=/usr/bin/kubelet $KUBELET_KUBECONFIG_ARGS $KUBELET_CONFIG_ARGS $KUBELET_KUBEADM_ARGS $KUBELET_EXTRA_ARGS (code=exited, status=1/FAILURE)</p>
<p>    Main PID: 7365 (code=exited, status=1/FAILURE)</p>
<p>            CPU: 77ms</p>
<p>    ● containerd.service - containerd container runtime</p>
<p>        Loaded: loaded (/usr/lib/systemd/system/containerd.service; enabled; preset: enabled)</p>
<p>        Active: active (running) since Sun 2026-08-09 07:03:13 UTC; 15min ago</p>
<p>        Docs: https://containerd.io</p>
<p>    Main PID: 5383 (containerd)</p>
<p>        Tasks: 8</p>
<p>        Memory: 14.1M (peak: 16.8M)</p>
<p>            CPU: 924ms</p>
<p>        CGroup: /system.slice/containerd.service</p>
<p>                └─5383 /usr/bin/containerd</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761779171Z" level=info msg="Start streaming server"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761829183Z" level=info msg="Registered namespace \"k8s.io\" with NRI"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761991029Z" level=info msg="runtime interface starting up..."</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762045641Z" level=info msg="starting plugins..."</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762094481Z" level=info msg="Synchronizing NRI (plugin) with cur…ime state"</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.761428043Z" level=info msg=serving... address=/run/containerd/c…sock.ttrpc</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.762438726Z" level=info msg=serving... address=/run/containerd/c…inerd.sock</p>
<p>    Aug 09 07:03:13 k8dp1 containerd[5383]: time="2026-08-09T07:03:13.764257642Z" level=info msg="containerd successfully booted in 0.035193s"</p>
<p>    Aug 09 07:03:13 k8dp1 systemd[1]: Started containerd.service - containerd container runtime.</p>
<p>    Aug 09 07:06:15 k8dp1 containerd[5383]: time="2026-08-09T07:06:15.682679143Z" level=error msg=failed to reload cni configuration after rec…</p>
<p>    Hint: Some lines were ellipsized, use -l to show in full.</p>
<p>    Static hostname: k8dp1</p>
<p>        Icon name: computer-vm</p>
<p>            Chassis: vm 🖴</p>
<p>        Machine ID: 11db4b66c0d743c59c80f612fd457cf9</p>
<p>            Boot ID: d73d0d9684364cd99f7f9feb43c452e6</p>
<p>    Virtualization: oracle</p>
<p>    Operating System: Ubuntu 24.04.2 LTS              </p>
<p>            Kernel: Linux 6.17.0-35-generic</p>
<p>        Architecture: x86-64</p>
<p>    Hardware Vendor: innotek GmbH</p>
<p>    Hardware Model: VirtualBox</p>
<p>    Firmware Version: VirtualBox</p>
<p>    Firmware Date: Fri 2006-12-01</p>
<p>        Firmware Age: 19y 8month 1w 1d                </p>
<p>    br_netfilter           32768  0</p>
<p>    bridge                425984  1 br_netfilter</p>
<p>    overlay               221184  0</p>
<p>    net.bridge.bridge-nf-call-iptables = 1</p>
<p>    net.ipv4.ip_forward = 1</p>
<p>    net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>                total        used        free      shared  buff/cache   available</p>
<p>    Mem:            16Gi       1.2Gi        13Gi        38Mi       2.8Gi        15Gi</p>
<p>    Swap:             0B          0B          0B</p>
<p>    admin@k8dp1:~/Desktop$</p>
<p>→Notice above highlighted item. : One thing that looks "off" is kubelet showing <mark>activating</mark> (auto-restart) with exit-code failure — but this is completely expected, exactly like we saw on k8cp before kubeadm init. kubelet won't fully start until it's joined to a cluster (Step 4). It'll keep restart-looping harmlessly until then.</p></td>
</tr>
<tr>
<td><p>→Get fresh token from the CONTROL PLANE AND JOIN THE WORKERNODE.</p>
<p>############################################################</p>
<p># STEP 4 - Join the worker to the Kubernetes cluster. FIRST GET A FRESH TOKEN FROM THE CONTROL-PLANE NODE.</p>
<p>############################################################</p>
<p># IMPORTANT: get fresh token from the control-plane node before running the join command on the worker node. The token expires after 24 hours.</p>
<p># if we are setting up in quick succession, we can use the same token for multiple worker nodes, but if we wait more than 24 hours, we need to generate a new token on the control-plane node.</p>
<p>#CONTROL PLANE NODE</p>
<p>kubectl get nodes</p>
<p>sudo kubeadm token create --print-join-command</p>
<p>    admin@k8cp:~/Desktop$ kubectl get nodes</p>
<p>    NAME   STATUS   ROLES           AGE   VERSION</p>
<p>    k8cp   Ready    control-plane   10h   v1.32.0</p>
<p>    admin@k8cp:~/Desktop$ sudo kubeadm token create --print-join-command</p>
<p>    [sudo] password for admin:</p>
<p>    kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>sudo kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440</p>
<p>    admin@k8dp1:~/Desktop$ sudo kubeadm join 192.168.1.16:6443 --token 8v1u0j.mltimbuxjcqth9wp --discovery-token-ca-cert-hash sha256:203e628d2b0016b4155fcc678f0480f8fb5a5f24e214ff2a89fb49d4214bb440</p>
<p>    [preflight] Running pre-flight checks</p>
<p>    [preflight] Reading configuration from the "kubeadm-config" ConfigMap in namespace "kube-system"...</p>
<p>    [preflight] Use 'kubeadm init phase upload-config --config your-config.yaml' to re-upload it.</p>
<p>    [kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"</p>
<p>    [kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"</p>
<p>    [kubelet-start] Starting the kubelet</p>
<p>    [kubelet-check] Waiting for a healthy kubelet at http://127.0.0.1:10248/healthz. This can take up to 4m0s</p>
<p>    [kubelet-check] The kubelet is healthy after 509.088489ms</p>
<p>    [kubelet-start] Waiting for the kubelet to perform the TLS Bootstrap</p>
<p>    This node has joined the cluster:</p>
<p>    * Certificate signing request was sent to apiserver and a response was received.</p>
<p>    * The Kubelet was informed of the new secure connection details.</p>
<p>    Run 'kubectl get nodes' on the control-plane to see this node join the cluster.</p>
<p>    admin@k8dp1:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 5 - Verify the worker</p>
<p>#</p>
<p># Switch back to the CONTROL-PLANE node for this step.</p>
<p>############################################################</p>
<p># Check all nodes in the cluster.</p>
<p>kubectl get nodes</p>
<p>    admin@k8cp:~/Desktop$ kubectl get nodes</p>
<p>    NAME    STATUS   ROLES           AGE   VERSION</p>
<p>    k8cp    Ready    control-plane   11h   v1.32.0</p>
<p>    k8dp1   Ready    &lt;none&gt;          71s   v1.32.0</p>
<p>    admin@k8cp:~/Desktop$</p></td>
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
<p># STEP 6 - DEPLOY A POD AND CHECK THE STATUS. USE FOR NOW CONTROL PLANE TO RUN CMDS AS IT HAS KUBECTL INSTALLED.</p>
<p>############################################################</p>
<p>kubectl run nginx --image=nginx</p>
<p>kubectl get pods -o wide</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$ kubectl run nginx --image=nginx</p>
<p>    kubectl get pods -o wide</p>
<p>    pod/nginx created</p>
<p>    NAME    READY   STATUS              RESTARTS   AGE   IP       NODE    NOMINATED NODE   READINESS GATES</p>
<p>    nginx   0/1     ContainerCreating   0          0s    &lt;none&gt;   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$ kubectl get pods -o wide</p>
<p>    NAME    READY   STATUS              RESTARTS   AGE   IP       NODE    NOMINATED NODE   READINESS GATES</p>
<p>    nginx   0/1     ContainerCreating   0          9s    &lt;none&gt;   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$ kubectl get pods -o wide</p>
<p>    NAME    READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>    nginx   1/1     Running   0          26s   <mark>10.244.245.67</mark>   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Exec into the pod and test a curl.</p>
<p>kubectl exec -it nginx -- bash</p>
<p>curl <mark>10.244.245.67</mark></p>
<blockquote>
<p>admin@k8cp:~/Desktop$</p>
<p>admin@k8cp:~/Desktop$ kubectl exec -it nginx -- bash</p>
<p>root@nginx:/#</p>
<p>root@nginx:/# curl <mark>10.244.245.67</mark></p>
<p>&lt;!DOCTYPE html&gt;</p>
<p>&lt;html&gt;</p>
<p>&lt;head&gt;</p>
<p>&lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>&lt;style&gt;</p>
<p>html { color-scheme: light dark; }</p>
<p>body { width: 35em; margin: 0 auto;</p>
<p>font-family: Tahoma, Verdana, Arial, sans-serif; }</p>
<p>&lt;/style&gt;</p>
</blockquote>
<p>→Expose a service and access it. Just to test the proxy working etc.</p>
<p>kubectl expose pod nginx --port=80 --target-port=80 --name=nginx-svc</p>
<p>kubectl get svc nginx-svc</p>
<blockquote>
<p>admin@k8cp:~/Desktop$ kubectl expose pod nginx --port=80 --target-port=80 --name=nginx-svc</p>
<p>kubectl get svc nginx-svc</p>
<p>service/nginx-svc exposed</p>
<p>NAME        TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE</p>
<p>nginx-svc   ClusterIP   10.99.42.147   &lt;none&gt;        80/TCP    1s</p>
<p>admin@k8cp:~/Desktop$</p>
<p>admin@k8cp:~/Desktop$ curl 10.99.42.147</p>
<p>&lt;!DOCTYPE html&gt;</p>
<p>&lt;html&gt;</p>
<p>&lt;head&gt;</p>
<p>&lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>&lt;style&gt;</p>
<p>html { color-scheme: light dark; }</p>
<p>body { width: 35em; margin: 0 auto;</p>
<p>font-family: Tahoma, Verdana, Arial, sans-serif; }</p>
<p>&lt;/style&gt;</p>
<p>&lt;/head&gt;</p>
<p>&lt;body&gt;</p>
<p>&lt;h1&gt;Welcome to nginx!&lt;/h1&gt;</p>
<p>&lt;p&gt;If you see this page, nginx is successfully installed and working.</p>
<p>Further configuration is required for the web server, reverse proxy,</p>
<p>API gateway, load balancer, content cache, or other features.&lt;/p&gt;</p>
<p>&lt;p&gt;For online documentation and support please refer to</p>
<p>&lt;a href="https://nginx.org/"&gt;nginx.org&lt;/a&gt;.&lt;br/&gt;</p>
<p>To engage with the community please visit</p>
<p>&lt;a href="https://community.nginx.org/"&gt;community.nginx.org&lt;/a&gt;.&lt;br/&gt;</p>
<p>For enterprise grade support, professional services, additional</p>
<p>security features and capabilities please refer to</p>
<p>&lt;a href="https://f5.com/nginx"&gt;f5.com/nginx&lt;/a&gt;.&lt;/p&gt;</p>
<p>&lt;p&gt;&lt;em&gt;Thank you for using nginx.&lt;/em&gt;&lt;/p&gt;</p>
<p>&lt;/body&gt;</p>
<p>&lt;/html&gt;</p>
<p>admin@k8cp:~/Desktop$</p>
</blockquote></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Delete the pod</p>
<p>admin@k8cp:~/Desktop$ kubectl delete pod nginx</p>
<p>kubectl delete svc nginx-svc</p>
<p>pod "nginx" deleted</p>
<p>service "nginx-svc" deleted</p>
<p>admin@k8cp:~/Desktop$</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image618.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>PS C:\ws&gt; kubectl --kubeconfig="C:\Users\Sridhara\.kube\localkubeconfig" get nodes</p>
<p>NAME    STATUS   ROLES           AGE   VERSION</p>
<p>k8cp    Ready    control-plane   9d    v1.32.0</p>
<p>k8dp1   Ready    &lt;none&gt;          8d    v1.32.0</p>
<p>PS C:\ws&gt; $env:KUBECONFIG="C:\Users\Sridhara\.kube\localkubeconfig"</p>
<p>PS C:\ws&gt; kubectl get nodes</p>
<p>NAME    STATUS   ROLES           AGE   VERSION</p>
<p>k8cp    Ready    control-plane   9d    v1.32.0</p>
<p>k8dp1   Ready    &lt;none&gt;          8d    v1.32.0</p>
<p>PS C:\ws&gt;</p>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image619.webp" style="width:3.95486in;height:2.12847in" /></p></td>
</tr>
<tr>
<td><p>→What is the ideal solution</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image620.webp" style="width:4.26528in;height:1.69306in" /></p></td>
</tr>
<tr>
<td><p>→Reference diagram</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image621.webp" style="width:4.95833in;height:1.88403in" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image622.webp" style="width:5.60069in;height:2.38611in" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image623.webp" style="width:5.81528in;height:3.95694in" /></p></td>
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
<p>cd c:\ws\sboot\<strong>lab057</strong></p>
<p><strong>#If it is mounted on Linux then as below.</strong></p>
<p><strong>cd /media/sf_ws/sboot/lab057</strong></p>
<p>ssh sridhara@localhost -p 2222 #We will need to have 3 terminals so use</p>
<p>mvn clean package</p>
<p>docker build -t ing1:latest .</p>
<p>docker tag ing1:latest nerdysrisha/ing1:latest</p>
<p>docker push nerdysrisha/ing1:latest</p>
<p>kubectl create namespace integrations</p>
<p>kubectl delete -f deployment.yaml</p>
<p>kubectl config set-context --current --namespace=integrations</p>
<p>kubectl apply -f deployment.yaml</p>
<p><em><strong>kubectl wait --for=condition=Ready pod -l app=ing1 -n integrations --timeout=300s; kubectl port-forward svc/ing1-service -n integrations 8081:8081</strong></em></p>
<p>cd c:\ws\sboot\<strong>lab058</strong></p>
<p><strong>cd /media/sf_ws/sboot/lab058</strong></p>
<p>mvn clean package</p>
<p>docker build -t ing2:latest .</p>
<p>docker tag ing2:latest nerdysrisha/ing2:latest</p>
<p>docker push nerdysrisha/ing2:latest</p>
<p>kubectl create namespace integrations</p>
<p>kubectl delete -f deployment.yaml</p>
<p>kubectl config set-context --current --namespace=integrations</p>
<p>kubectl apply -f deployment.yaml</p>
<p><em><strong>kubectl wait --for=condition=Ready pod -l app=ing2 -n integrations --timeout=300s; kubectl port-forward svc/ing2-service -n integrations 8082:8082</strong></em></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image624.webp" style="width:5.20556in;height:3.16944in" alt="{F4BE2051-EB4D-42C0-900E-032E3BB302C4}" /></p></td>
</tr>
<tr>
<td><p>→Get pods that shows the worker nodes as well</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image625.webp" style="width:7.52778in;height:0.91528in" alt="{9A6E29F9-C7DE-4C74-8E51-571085AFA6AF}" /></p></td>
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
<p>kubectl create namespace ingress-nginx</p>
<p>kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image626.webp" style="width:7.54167in;height:3.55139in" alt="{925C604E-04DB-44EF-8D03-649A975777DF}" /></p></td>
</tr>
<tr>
<td><p>→Check Ingress Controller Pod has come up</p>
<p>kubectl get pods -n ingress-nginx -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image627.webp" style="width:7.53194in;height:0.70069in" alt="{7FA0C3BD-E28C-41F8-961F-71A5D9096C5B}" /></p></td>
</tr>
<tr>
<td><p>→Check the service</p>
<p>kubectl get svc -n ingress-nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image628.webp" style="width:7.53264in;height:0.86806in" alt="{0216D19E-D961-4B4B-B86C-6C18186A868A}" /></p></td>
</tr>
<tr>
<td><p>→Additionally validate if all is good run below command as well</p>
<p>kubectl get validatingwebhookconfiguration ingress-nginx-admission</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image629.webp" style="width:6.875in;height:1.17708in" alt="{064CDB6C-7E6E-4022-A578-89D8B4869B64}" /></p></td>
</tr>
<tr>
<td><p>→Validate the inner class is present</p>
<p>kubectl get ingressclass</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image630.webp" style="width:6.36458in;height:1.23958in" alt="{3ADEAD77-BB9A-443B-B2C2-3427B9D0BAD1}" /></p></td>
</tr>
<tr>
<td><p>→Validate the deployment of ingress controller</p>
<p>kubectl get deployment -n ingress-nginx</p>
<p><mark>HERE HERE HERE SETTING UP INGRESS ON LINUX BOX</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image631.webp" style="width:7.53611in;height:1.04028in" alt="{D216B3BE-F726-4731-B0BD-66E6ECF6A8CA}" /></p></td>
</tr>
<tr>
<td><p>→Validate the logs of Ingress Controller</p>
<p>kubectl logs -n ingress-nginx deploy/ingress-nginx-controller</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image632.webp" style="width:7.53056in;height:3.83194in" alt="{876DB517-9E60-4241-986C-6248982E519E}" /></p></td>
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
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: Ingress</p>
<p>metadata:</p>
<p>  name: hworld-ingress</p>
<p>  namespace: integrations</p>
<p>spec:</p>
<p>  ingressClassName: nginx</p>
<p>  rules:</p>
<p>    - http:</p>
<p>        paths:</p>
<p>          - path: /ing1</p>
<p>            pathType: Prefix</p>
<p>            backend:</p>
<p>              service:</p>
<p>                name: ing1-service</p>
<p>                port:</p>
<p>                  number: 8081</p>
<p>          - path: /ing2</p>
<p>            pathType: Prefix</p>
<p>            backend:</p>
<p>              service:</p>
<p>                name: ing2-service</p>
<p>                port:</p>
<p>                  number: 8082</p></td>
</tr>
<tr>
<td><p>→Apply the yaml</p>
<p>cd c:\ws\k8basics\101basic-resources</p>
<p>kubectl delete -f ingress.yaml #(If already existing)</p>
<p>kubectl apply -f ingress.yaml</p>
<p>kubectl get ingress -n integrations</p>
<p>kubectl describe ingress hworld-ingress -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image633.webp" style="width:7.53958in;height:3.71181in" alt="{4CE4FE04-15F8-4592-8D5A-2604EB86DF0E}" /></p>
<p><mark>Rerun the get ingress to see the IP Address assigned … is this required? What happens it does not come??</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image634.webp" style="width:5.04167in;height:1.13542in" alt="{6FB39282-E1BA-46A5-9FEB-933E8EC0F6C1}" /></p></td>
</tr>
<tr>
<td><p>→PortForward</p>
<p>kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 8080:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image635.webp" style="width:7.53611in;height:0.68472in" alt="{0D63F1CC-5C62-4859-B9A0-B9A439DF6A52}" /></p></td>
</tr>
<tr>
<td><p>→Test using the curl</p>
<p>→NOTICE: the port is not 8081 or 8082, but the port of ingress, which is 8080</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)</p>
<p>$ curl http://localhost:8080/ing2</p>
<p>Hello World from Ingress two. Path /ing2</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)</p>
<p>$ curl http://localhost:8080/ing1</p>
<p>Hello World from Ingress one. Path /ing1</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/sboot (main)</p>
<p>$</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image636.webp" style="width:5.59375in;height:1.96875in" alt="{612ACCDF-3BBC-4099-AA3A-F5174ADCED7C}" /></p></td>
</tr>
<tr>
<td><p>→Clean up ingress and leave the services as-is, given we will be doing ‘istio ahed’</p>
<p>kubectl delete ingress hworld-ingress -n integrations</p>
<p>kubectl delete namespace ingress-nginx</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image637.webp" style="width:7.53333in;height:4.30208in" alt="{BEE949DC-B556-462A-8615-DD3F9F21F7D1}" /></p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image638.webp" style="width:4.64931in;height:3.29931in" alt="{2B7889F2-4933-42E2-810E-0E643787DE0E}" /></p></td>
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
| <img src="subjects/tech/azure/az-aks-complete/img/media/image639.webp" style="width:6.03681in;height:7.33194in" /> |

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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image640.webp" style="width:7.36458in;height:2.125in" alt="{427CE3D3-D740-4270-AC5E-AC84681290E9}" /></p></td>
</tr>
<tr>
<td><p>→Set Environment variable. Notice the path upto ‘bin’.</p>
<p>→This is the place where the exe file is placed.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image641.webp" style="width:3.34028in;height:3.24167in" alt="{C08F6820-F0EA-4EEC-A27A-453A96532C9F}" /></p></td>
</tr>
<tr>
<td><p>→Check the version of ‘istioctl’.</p>
<p>→Note that we are not yet having ‘istio pods’ in the cluster and hence the message.</p>
<p>istioctl version</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image642.webp" style="width:7.52708in;height:1.07014in" alt="{0AFDBB50-2873-4386-948F-E5E6898B19C2}" /></p></td>
</tr>
<tr>
<td><p>→When ISTIO-IS-INSTALLED etc, we get below. Capture this screenshot after installation</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image643.webp" style="width:4.19792in;height:1.14583in" alt="{8EE5E9C1-0C26-42EB-BB0D-359EFE55025A}" /></p></td>
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
<p>istioctl install --set profile=demo -y</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image644.webp" style="width:5.72292in;height:3.30486in" alt="{1B1AD80C-5A26-4437-8B67-E316D26BCADC}" /></p></td>
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
<p>kubectl get ns #(we will get a new namespace)</p>
<p>kubectl get pods -n istio-system</p>
<p>kubectl get svc -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image645.webp" style="width:7.51667in;height:2.2125in" alt="{68D96622-9942-4D92-BF2B-4F56AE534375}" /></p></td>
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
<p>kubectl get pods -n integrations -o wide</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image646.webp" style="width:7.53403in;height:0.92986in" alt="{F95B1737-C830-4DF3-AE85-758FAB5AC5CE}" /></p>
<p>kubectl label namespace integrations istio-injection=enabled</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image647.webp" style="width:7.52778in;height:0.53264in" alt="{989F4EB2-233E-4122-958B-5B995C9289C6}" /></p></td>
</tr>
<tr>
<td><p>→Below command shows all namespaces with their labels;</p>
<p>→NOTICE, only integrations has istio-injection=enabled, meaning pods there will get an Istio sidecar.<br />
→The other namespaces have only the default metadata label, so they run outside the Istio mesh.</p>
<p>kubectl get namespace --show-labels</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image648.webp" style="width:7.53681in;height:1.65694in" alt="{34192006-B933-40A2-A8C2-F30FA77FCF29}" /></p></td>
</tr>
<tr>
<td><p>→Describe the namespace to see more details</p>
<p>kubectl describe ns integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image649.webp" style="width:7.0625in;height:1.94792in" alt="{07700AD6-E30F-4342-8116-D4CF6375A2E6}" /></p></td>
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
<p>kubectl rollout restart deployment ing1-deployment -n integrations</p>
<p>kubectl rollout restart deployment ing2-deployment -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image650.webp" style="width:5.54931in;height:2.97569in" alt="{C2D7E86C-343A-4533-A251-6DB697972DC7}" /></p>
<p>→Notice the pods ‘after rollout’.</p></td>
</tr>
<tr>
<td><p>→<strong>OPTION 2</strong> - Delete the deployment and apply again. But this will need to be done against all the pods explicitely etc. Hence, in this document ‘rollout’ option is choosen with ‘namespace’.</p>
<p>kubectl delete -f .\deployment.yaml</p>
<p>kubectl apply -f .\deployment.yaml</p></td>
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
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: Gateway</p>
<p>metadata:</p>
<p>  name: intg-services-gateway</p>
<p>  namespace: istio-system  # Centralized management in istio-system namespace</p>
<p>spec:</p>
<p>  selector:</p>
<p>    istio: ingressgateway  # Uses the default Istio ingress gateway pod</p>
<p>  servers:</p>
<p>  - port:</p>
<p>      number: 80           # Listens on port 80 for HTTP traffic</p>
<p>      name: http</p>
<p>      protocol: HTTP</p>
<p>    hosts:</p>
<p>    - "*"                  # Accepts traffic for all hosts (wildcard)</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p>cd c:\ws\k8basics\101basic-resources\istio</p>
<p>kubectl delete -f .\gateway.yaml #if exists</p>
<p>kubectl apply -f .\gateway.yaml</p>
<p>kubectl get gateways --all-namespaces</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image651.webp" style="width:7.53056in;height:1.97639in" alt="{AD6AB821-C2F5-4956-9A32-BE3626CEA257}" /></p></td>
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
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: VirtualService</p>
<p>metadata:</p>
<p>  name: intg-services-virtualservice</p>
<p>  namespace: istio-system  # Centralized with gateway in same namespace</p>
<p>spec:</p>
<p>  hosts:</p>
<p>  - "*"                    # Applies to all hosts</p>
<p>  gateways:</p>
<p>  - intg-services-gateway  # References gateway in same namespace (no prefix needed)</p>
<p>  http:</p>
<p>  - match:</p>
<p>    - uri:</p>
<p>        prefix: /ing1     # Routes requests with /ing1 path prefix</p>
<p>    route:</p>
<p>    - destination:</p>
<p>        host: ing1-service.integrations.svc.cluster.local  # Target service in integrations namespace</p>
<p>        port:</p>
<p>          number: 8081    # Target port of the service</p>
<p>  - match:</p>
<p>    - uri:</p>
<p>        prefix: /ing2     # Routes requests with /ing2 path prefix  </p>
<p>    route:</p>
<p>    - destination:</p>
<p>        host: ing2-service.integrations.svc.cluster.local  # Target service in integrations namespace</p>
<p>        port:</p>
<p>          number: 8082    # Target port of the service</p></td>
</tr>
<tr>
<td><p>kubectl delete -f virtualservice.yaml</p>
<p>kubectl apply -f virtualservice.yaml</p>
<p>kubectl get virtualservices --all-namespaces</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image652.webp" style="width:7.53542in;height:1.49028in" alt="{35F116ED-FC1C-4788-B754-E183519972DA}" /></p></td>
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
<p>kubectl get gateways --all-namespaces</p>
<p>kubectl get virtualservice --all-namespaces</p>
<p>kubectl get pods -n integrations -o wide</p>
<p>kubectl describe pod ing1-deployment-xxxxxxxx -n integrations | findstr istio-proxy</p>
<p>kubectl get svc istio-ingressgateway -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image653.webp" style="width:7.51597in;height:2.08958in" alt="{CBEABAC0-1F86-43EB-ADF9-69A1DD01C195}" /></p></td>
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
<p>kubectl get all -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image654.webp" style="width:7.52153in;height:2.1875in" alt="{C68B66F6-1295-410D-BFD5-477B5799D167}" /></p></td>
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
<p>kubectl get pods</p>
<p>kubectl get pod ing1-deployment-bb6c6bb5f-k85rj -n integrations -o jsonpath='{.spec.containers[*].name}'</p>
<p>kubectl describe pod ing1-deployment-bb6c6bb5f-k85rj -n integrations | grep -A10 "Containers:"</p>
<p>kubectl exec ing1-deployment-bb6c6bb5f-k85rj -n integrations -c istio-proxy -- curl -s localhost:15000/stats | head -5</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image655.webp" style="width:5.75625in;height:5.37778in" alt="{BF9410D1-EEB4-418F-9CF4-8BE9AC6245D0}" /></p></td>
</tr>
<tr>
<td><p>→ Run a Curl to test about the istio-proxy</p>
<p>kubectl exec ing1-deployment-5fc8bfd8cf-vms26 -n integrations -c istio-proxy -- curl -s localhost:15000/stats | head -5</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image656.webp" style="width:7.53472in;height:0.83819in" alt="{1C2C7DA0-EE8C-4FC5-A7A5-2CFA1840FC20}" /></p>
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
<p>kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image657.webp" style="width:7.53056in;height:0.88819in" alt="{52096CF2-E354-4586-A8C2-59DB18421E91}" /></p></td>
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
<p>curl <a href="http://localhost:8080/ing1">http://localhost:8080/ing1</a></p>
<p>curl <a href="http://localhost:8080/ing2">http://localhost:8080/ing2</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image658.webp" style="width:4.41667in;height:1.82292in" alt="{69849CFC-7BF9-4AED-9753-FADC0256AA4D}" /></p></td>
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
<p>cd C:\ws\k8basics\101basic-resources\istio\egress</p></td>
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
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: ServiceEntry</p>
<p>metadata:</p>
<p>  name: allow-egress-http</p>
<p>  namespace: istio-system</p>
<p>spec:</p>
<p>  hosts:</p>
<p>  - "httpbin.org"</p>
<p>  ports:</p>
<p>  - number: 80</p>
<p>    name: http</p>
<p>    protocol: HTTP</p>
<p>  resolution: DNS</p>
<p>  location: MESH_EXTERNAL</p>
<p>---</p>
<p># 2. Gateway - configure egress gateway for HTTP</p>
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: Gateway</p>
<p>metadata:</p>
<p>  name: egress-gateway</p>
<p>  namespace: istio-system</p>
<p>spec:</p>
<p>  selector:</p>
<p>    istio: egressgateway</p>
<p>  servers:</p>
<p>  - port:</p>
<p>      number: 80</p>
<p>      name: http</p>
<p>      protocol: HTTP</p>
<p>    hosts:</p>
<p>    - "httpbin.org"</p>
<p>---</p>
<p># 3. VirtualService - route traffic via egress gateway</p>
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: VirtualService</p>
<p>metadata:</p>
<p>  name: route-through-egress</p>
<p>  namespace: istio-system</p>
<p>spec:</p>
<p>  hosts:</p>
<p>  - "httpbin.org"</p>
<p>  gateways:</p>
<p>  - mesh</p>
<p>  - egress-gateway</p>
<p>  http:</p>
<p>  - match:</p>
<p>    - port: 80</p>
<p>    route:</p>
<p>    - destination:</p>
<p>        host: istio-egressgateway.istio-system.svc.cluster.local</p>
<p>        port:</p>
<p>          number: 80</p>
<p>---</p>
<p># 4. DestinationRule for egress gateway (HTTP does not need TLS)</p>
<p>apiVersion: networking.istio.io/v1beta1</p>
<p>kind: DestinationRule</p>
<p>metadata:</p>
<p>  name: dr-egressgateway-http</p>
<p>  namespace: istio-system</p>
<p>spec:</p>
<p>  host: istio-egressgateway.istio-system.svc.cluster.local</p>
<p>  trafficPolicy:</p>
<p>    connectionPool:</p>
<p>      tcp:</p>
<p>        maxConnections: 100</p>
<p>      http:</p>
<p>        http1MaxPendingRequests: 100</p>
<p>        maxRequestsPerConnection: 100</p>
<p>---</p>
<p># 5. Second VirtualService for Gateway itself</p>
<p>apiVersion: networking.istio.io/v1alpha3</p>
<p>kind: VirtualService</p>
<p>metadata:</p>
<p>  name: direct-through-egress</p>
<p>  namespace: istio-system</p>
<p>spec:</p>
<p>  hosts:</p>
<p>  - "httpbin.org"</p>
<p>  gateways:</p>
<p>  - egress-gateway</p>
<p>  http:</p>
<p>  - route:</p>
<p>    - destination:</p>
<p>        host: httpbin.org</p>
<p>        port:</p>
<p>          number: 80</p></td>
</tr>
<tr>
<td><p>→Save, Apply and view</p>
<p>cd C:\ws\k8basics\101basic-resources\istio\egress</p>
<p>kubectl delete -f .\egress-configuration.yaml</p>
<p>kubectl apply -f .\egress-configuration.yaml</p>
<p>kubectl get serviceentry,gateway,virtualservice -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image659.webp" style="width:7.52847in;height:3.28194in" alt="{261AEF3C-797E-4530-8FBC-F79FFA15DD5C}" /></p></td>
</tr>
<tr>
<td><p>→Describe</p>
<p>kubectl describe gateway egress-gateway -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image660.webp" style="width:7.53889in;height:3.66181in" alt="{731923BF-2095-4059-8CF4-8C3EF10A3E07}" /></p></td>
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
<td><p>kubectl get pods -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image661.webp" style="width:7.52847in;height:1.22222in" alt="{C90EBA60-C13D-4CD5-8BEE-B9708845950D}" /></p></td>
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
<td><p>kubectl logs -f -n istio-system deploy/istio-egressgateway -c istio-proxy</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image662.webp" style="width:7.52431in;height:2.3875in" alt="{6B38A570-4E9A-44F0-AD7E-5BAFF683F452}" /></p></td>
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
<p>cd c:\ws\sboot\lab059</p>
<p>mvn clean package</p>
<p>docker build -t egress-intg1:latest .</p>
<p>docker tag egress-intg1:latest nerdysrisha/egress-intg1:latest<br />
docker push nerdysrisha/egress-intg1:latest<br />
kubectl create namespace integrations<br />
kubectl delete -f deployment.yaml<br />
kubectl config set-context --current --namespace=integrations<br />
kubectl apply -f deployment.yaml</p>
<p>kubectl wait --for=condition=Ready pod -l app=egress-intg1 -n integrations --timeout=300s</p></td>
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
<td><p>kubectl get all -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image663.webp" style="width:5.41806in;height:4.18264in" alt="{ACB4925E-12D7-4C1E-8C50-A7650C15D0ED}" /></p></td>
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
<td><p>kubectl port-forward svc/egress-intg1-service -n integrations 8083:8083</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image664.webp" style="width:7.44792in;height:1.41667in" alt="{26DB0BB3-E68A-4FC9-8752-F58018D05768}" /></p></td>
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
<td><p>curl http://localhost:8083/egress/intg1</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image665.webp" style="width:5.79167in;height:2.14583in" alt="{50E4E4C6-6DEA-4033-8F36-09741638F632}" /></p></td>
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
<td><p>kubectl logs -f -n istio-system deploy/istio-egressgateway -c istio-proxy</p>
<p>→Notice the last entry that got added.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image666.webp" style="width:7.52431in;height:0.825in" alt="{6A29AEA7-30AA-40D4-A997-DC7750A548A8}" /></p></td>
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
<td><p>kubectl get pods</p>
<p>kubectl logs egress-intg1-deployment-687f6fbc6f-q6zqm</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image667.webp" style="width:6.21875in;height:1.45833in" alt="{3D9C97E4-9F5F-4E99-AFDB-A9DD1944A61A}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image668.webp" style="width:5.67361in;height:2.43264in" alt="{F2A38381-DCFA-4554-BCC7-0247D16FE130}" /></p>
<p>→Notice the last entries we got the response printed</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image669.webp" style="width:6.23611in;height:3.23472in" alt="{864C97A1-96D2-4C2C-8B94-DFCDFFAB72AB}" /></p></td>
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
<td><p>[Pod] egress-intg1 (ns: integrations)</p>
<p>│</p>
<p>│ (traffic intercepted by Istio sidecar)</p>
<p>▼</p>
<p>[Sidecar Proxy] Envoy in egress-intg1 pod</p>
<p>│</p>
<p>│ (routing rules applied)</p>
<p>│</p>
<p>├─ uses [ServiceEntry] allow-httpbin-http</p>
<p>│ hosts: ["httpbin.org"]</p>
<p>│</p>
<p>└─ uses [VirtualService] route-httpbin-through-egress</p>
<p>gateways: ["mesh","egress-httpbin-gateway"]</p>
<p>destination: istio-egressgateway.svc.cluster.local:80</p>
<p>│</p>
<p>▼</p>
<p>[Service] ClusterIP: istio-egressgateway (ns: istio-system)</p>
<p>│</p>
<p>│ (forwarded to pod)</p>
<p>▼</p>
<p>[Pod] istio-egressgateway-5d95556c76-nsg96 (ns: istio-system)</p>
<p>│</p>
<p>│ (applies Gateway rules)</p>
<p>├─ [Gateway] egress-httpbin-gateway</p>
<p>│ port: 80, hosts: ["httpbin.org"]</p>
<p>│</p>
<p>│ (applies outbound routing)</p>
<p>├─ [VirtualService] direct-httpbin-from-egress</p>
<p>│ destination: httpbin.org:80</p>
<p>│</p>
<p>└─ [DestinationRule] dr-egressgateway-http</p>
<p>trafficPolicy: connectionPool, etc.</p>
<p>│</p>
<p>▼</p>
<p>[External DNS Resolution] httpbin.org → 34.238.12.187, 44.195.242.49, ...</p>
<p>│</p>
<p>▼</p>
<p>[Internet Endpoint] httpbin.org</p></td>
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
<p>cd c:\ws\sboot\lab061<br />
mvn clean package</p>
<p>docker build -t job:latest .</p>
<p>docker network create pod2pod-intg-network #If already exists say the same</p>
<p>docker run --name job-service --network pod2pod-intg-network -p 8082:8082 job:latest</p>
<p>docker tag job:latest nerdysrisha/job:latest<br />
docker push nerdysrisha/job:latest<br />
kubectl create namespace integrations<br />
kubectl delete -f deployment.yaml<br />
kubectl config set-context --current --namespace=integrations<br />
kubectl apply -f deployment.yaml</p>
<p>kubectl port-forward svc/job-service -n integrations 8082:8082</p>
<p>→Run the CUSTOMER app</p>
<p>cd c:\ws\sboot\lab060<br />
mvn clean package</p>
<p>docker build -t customer:latest .</p>
<p>docker network create pod2pod-intg-network #If already exists say the same<br />
docker run --name customer-service --network pod2pod-intg-network -p 8081:8081 -e JOB_SERVICE_URL=http://job-service:8082 customer:latest</p>
<p>docker tag customer:latest nerdysrisha/customer:latest<br />
docker push nerdysrisha/customer:latest<br />
kubectl create namespace integrations<br />
kubectl delete -f deployment.yaml<br />
kubectl config set-context --current --namespace=integrations<br />
kubectl apply -f deployment.yaml</p>
<p>kubectl port-forward svc/customer-service -n integrations 8081:8081</p></td>
</tr>
</tbody>
</table>

### Architecture 

|  |
|----|
| →Here we are invoking customer service which is inturn going to call ‘job’ pod. |
| <img src="subjects/tech/azure/az-aks-complete/img/media/image670.webp" style="width:5.88472in;height:4.21042in" /> |

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
<p>kubectl get pods -n integrations -o wide</p>
<p>kubectl get svc -n integrations</p>
<p>kubectl run tmp-shell --rm -it --image=busybox:1.36 -n integrations -- sh</p>
<p>job-service.integrations.svc.cluster.local</p>
<p>wget -qO- http://job-service:8082/job/details</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image671.webp" style="width:7.52153in;height:2.14167in" alt="{71F9E114-DC71-4CE2-A81C-C563EC0F4749}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image672.webp" style="width:6.29792in;height:4.64931in" alt="{2E0678F8-A75F-42C0-916E-24B06E93D97C}" /></p></td>
</tr>
</tbody>
</table>

##  ISTIO - TELEMETRY (OBSERVABILITY) 

|  |
|----|
| Observability stack (Prometheus, Grafana, Jaeger, Kiali) → separate, optional add-ons that collect & visualize telemetry from Envoy + Istiod. |
| <img src="subjects/tech/azure/az-aks-complete/img/media/image673.webp" style="width:4.20903in;height:4.19861in" alt="{249373B5-E0A0-4D1A-ACC5-53F256A54A57}" /> |

### List Add Ons 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Note that we have already installed Istio previously and when we installed istio, it also brings all ‘add-ons’ .</p>
<p>→Below command lists all the ‘add-ons’</p>
<p>dir C:\run\istio-1.27.0\samples\addons</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image674.webp" style="width:5.21875in;height:3.22917in" alt="{F507F6BE-7639-400A-BB07-8F0B98A6C9AD}" /></p></td>
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
<td><p>kubectl apply -f C:\run\istio-1.27.0\samples\addons\prometheus.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image675.webp" style="width:7.03125in;height:1.34375in" alt="{6E9E1E1A-53C4-481F-B79D-2CF062D1DBFA}" /></p></td>
</tr>
<tr>
<td><p>→Check the pods</p>
<p>kubectl get pods -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image676.webp" style="width:5.64583in;height:1.10417in" alt="{7E397714-E7E0-459A-B39C-43E7A0A1349D}" /></p></td>
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
<td><p>kubectl apply -f C:\run\istio-1.27.0\samples\addons\grafana.yaml</p>
<p>→Check the pods</p>
<p>kubectl get pods -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image677.webp" style="width:6.77083in;height:2.70833in" /></p></td>
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
<td><p>kubectl apply -f C:\run\istio-1.27.0\samples\addons\jaeger.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image678.webp" style="width:6.95833in;height:0.85417in" alt="{2DE2300E-B718-4F39-ABFE-EEFC8EEA2A7A}" /></p></td>
</tr>
<tr>
<td><p>→Check Pods</p>
<p>kubectl get pods -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image679.webp" style="width:5.60417in;height:1.46875in" alt="{2FA8E9AF-5C21-407B-839E-A8385E6B2BF5}" /></p></td>
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
<td><p>kubectl apply -f C:\run\istio-1.27.0\samples\addons\kiali.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image680.webp" style="width:6.82292in;height:3.04167in" alt="{F8989461-4E06-47B4-8216-E4A4C165FEA5}" /></p></td>
</tr>
<tr>
<td><p>→Check Pods</p>
<p>kubectl get pods -n istio-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image681.webp" style="width:6.54167in;height:1.55208in" alt="{EED01320-4A54-48E1-99E7-9D8BCC0731A6}" /></p></td>
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
<td><p># Grafana</p>
<p>kubectl -n istio-system port-forward svc/grafana 3000:3000</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image682.webp" style="width:6.11458in;height:0.77083in" alt="{90A94E84-BC96-44CC-B659-0162AD1F0078}" /></p></td>
</tr>
<tr>
<td><p># Prometheus. In my system 9090 is already in use.</p>
<p>kubectl -n istio-system port-forward svc/prometheus 9091:9090</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image683.webp" style="width:6.15625in;height:0.78125in" alt="{FF800632-C993-45BE-8463-A01EC545D129}" /></p></td>
</tr>
<tr>
<td><p># Jaeger</p>
<p>kubectl -n istio-system port-forward svc/tracing 16686:80</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image684.webp" style="width:5.08333in;height:0.86458in" alt="{ADE9047F-3BFB-42F5-AC27-A1E04B3C3540}" /></p></td>
</tr>
<tr>
<td><p>#Kiali</p>
<p>kubectl -n istio-system port-forward svc/kiali 20001:20001</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image685.webp" style="width:5.1875in;height:0.8125in" alt="{20917906-D831-4E27-B916-15BC7BD18783}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image686.webp" style="width:7.67986in;height:4.8in" /></p></td>
</tr>
</tbody>
</table>

### Access Prometheus 

|  |
|----|
| [http://localhost:9091/<img src="subjects/tech/azure/az-aks-complete/img/media/image687.webp" style="width:7.52431in;height:2.17986in" alt="{94B02F3C-395B-4F2B-A1BE-F9A4452B9EF3}" />](http://localhost:9091/) |

### Access Grafana

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="http://localhost:3000/">http://localhost:3000/</a></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image688.webp" style="width:7.67986in;height:4.8in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image689.webp" style="width:7.52014in;height:3.43472in" alt="{7FDF69A8-20DE-40AF-8E2D-28F7D2300A29}" /></p></td>
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
<p>kubectl get svc</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image690.webp" style="width:7.52639in;height:1.65833in" alt="{93A19E3E-D2DF-4B54-82D5-81C991707A61}" /></p>
<p>kubectl port-forward svc/customer-service 8081:8081</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image691.webp" style="width:7.11458in;height:1.08333in" alt="{52747FBE-C3BB-49A9-9FC9-0007C98AEFFD}" /></p></td>
</tr>
<tr>
<td><p>curl http://localhost:8081/customer/details</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image692.webp" style="width:7.54028in;height:2.61389in" alt="{25744344-1D7A-43DB-96B4-7A75B3141E28}" /></p></td>
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
| <img src="subjects/tech/azure/az-aks-complete/img/media/image693.webp" style="width:7.67986in;height:4.8in" /> |

#### Jaeger

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><mark>HERE THE INVOCATIONS ARE NOT REACHING TROUBLESHOOTING NEEDED.</mark></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image694.webp" style="width:7.67986in;height:4.8in" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image695.webp" style="width:7.51667in;height:2.98889in" alt="{585B102A-67B1-4878-969F-BED04022C2FD}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image696.webp" style="width:7.52292in;height:3.58333in" alt="{6B6B90AE-E650-4C17-84A8-4A6D914F4E60}" /></p></td>
</tr>
<tr>
<td><p>→Notice the graph</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image697.webp" style="width:7.52708in;height:3.68333in" alt="{4641918B-CD53-4728-8210-8E1678EE41AF}" /></p></td>
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
<p>kubectl top pods -A</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image698.webp" style="width:3.22917in;height:1.13542in" alt="{965F367C-723C-4750-A2E3-1D69C8A68ABC}" /></p>
<p>kubectl top nodes</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image699.webp" style="width:3.02083in;height:0.71875in" alt="{22F63FD5-8B08-40E8-9B6D-9D858B45C5C6}" /></p></td>
</tr>
<tr>
<td><p>→Apply this</p>
<p>kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image700.webp" style="width:7.53056in;height:1.34306in" alt="{2A8C64AA-760C-4F86-BB58-848398E09392}" /></p></td>
</tr>
<tr>
<td><p>→Second time installed screenshot.</p>
<p>kubectl get pods -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image701.webp" style="width:6.77153in;height:2.92778in" /></p></td>
</tr>
<tr>
<td><p>→Get pods, we may get errors or pods not initializing. Check Metrics Server is running or not.</p>
<p>kubectl get pods -n kube-system | findstr metrics-server</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image702.webp" style="width:6.40625in;height:0.79167in" alt="{4DD2989C-A7E2-45FD-9124-364ADD62068A}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image246.webp" style="width:7.53681in;height:0.58264in" alt="{AE6CE15D-131D-4F4E-996C-52DE3DB6734E}" /></p>
<p>→Describe the pod</p>
<p>kubectl describe pod metrics-server-75b5d87c9d-6rwkq -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image703.webp" style="width:6.69792in;height:0.85417in" alt="{CBD0C499-D515-419E-A279-57EFF5A28257}" /></p>
<p>Notice at the end of the describe logs</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image704.webp" style="width:7.53403in;height:0.575in" alt="{C7280D52-8B6A-41F2-A5A3-6F02312F5E66}" /></p>
<p>→Check the logs as well we can see errors</p>
<p>kubectl logs metrics-server-75b5d87c9d-6rwkq -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image705.webp" style="width:7.53403in;height:1.14792in" alt="{0B08EBD4-6F93-4BFC-9C4A-02663C9D10DD}" /></p></td>
</tr>
<tr>
<td><p>→<strong>Uninstall the metrics server, if needed</strong></p>
<p>kubectl delete -f <a href="https://github.com/kubernetes-sigs/metrics">https://github.com/kubernetes-sigs/metrics</a>-server/releases/latest/download/components.yaml</p></td>
</tr>
<tr>
<td><p>→Incase of any ERRORS of starting etc. Follow below approach. Check the pod events and logs of the pod. In this case there was a TLS error that we are fixing with ‘insecure mode’</p>
<p>kubectl describe pod -n kube-system metrics-server-845d86dc79-wth7f</p>
<p>kubectl logs -n kube-system metrics-server-845d86dc79-wth7f</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image706.webp" style="width:7.53333in;height:3.00347in" alt="{2C4AEC23-089B-4C17-9EC3-1759DC4A55A5}" /></p></td>
</tr>
<tr>
<td><p>→Extract the current metrics server yaml and write to a local file</p>
<p>→Edit the configuration and add below line and save.</p>
<p>kubectl get deployment metrics-server -n kube-system -o yaml &gt; metrics-server.yaml</p>
<p>nano metrics-server.yaml</p>
<p>- --kubelet-insecure-tls</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image707.webp" style="width:7.53611in;height:0.72222in" alt="{9872FA78-11D6-43D8-B652-00023CEEE119}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image708.webp" style="width:6.96875in;height:5.47917in" alt="{3244BA3F-F000-4040-89A5-F31C10A3FB5D}" /></p></td>
</tr>
<tr>
<td><p>→Once it is saved apply</p>
<p>kubectl apply -f metrics-server.yaml</p>
<p>kubectl get pods -n kube-system -w</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image709.webp" style="width:7.53472in;height:3.40972in" alt="{2A96BC4F-D9C2-4A82-B854-DBCB53F9A563}" /></p>
<p>→Notice after sometime the pod comes up running</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image710.webp" style="width:7.04167in;height:2.86458in" alt="{B31A294C-5DEF-4BD6-BCA6-07FFDE0655DF}" /></p></td>
</tr>
<tr>
<td><p>→Rerun the top commands as below.</p>
<p>kubectl top pods</p>
<p>kubectl top nodes</p>
<p>kubectl top pods -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image711.webp" style="width:7.05208in;height:4.33333in" alt="{8855543D-F6B6-41F5-B891-FB3A60DF820C}" /></p></td>
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
<p>kubectl -n kube-system patch deployment metrics-server --type='json' -p='[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'</p>
<p>kubectl get pods -n kube-system | grep metrics-server</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image712.webp" style="width:7.68611in;height:0.65556in" /></p></td>
</tr>
<tr>
<td><p>→After modifying we can see all the pods under the kube-system</p>
<p>kubectl get pods -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image713.webp" style="width:7.67639in;height:3.06389in" /></p></td>
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
<p>kubectl edit deployment metrics-server -n kube-system</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image714.webp" style="width:5.21875in;height:0.48958in" alt="{34C69730-F46F-4025-B14F-B475D01673AC}" /></p></td>
</tr>
<tr>
<td><p>→</p>
<p>Update with these</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image715.webp" style="width:5.72917in;height:2.08333in" alt="{C658B876-DD40-42EE-8CC5-88FC2311191F}" /></p>
<p>→These four</p>
<p>spec:</p>
<p>containers:</p>
<p>- name: metrics-server</p>
<p>- args:</p>
<p>- --kubelet-insecure-tls</p>
<p>- --kubelet-preferred-address-types=InternalIP</p>
<p>→Save it after modifying</p>
<p><mark>Note: For production, don’t use --kubelet-insecure-tls. Instead, generate proper kubelet certificates with IP SANs.</mark></p></td>
</tr>
<tr>
<td><p>→Once saved Pod will get auto-created. Notice the last one</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image716.webp" style="width:6.48958in;height:2.48958in" alt="{43E33C5F-2A67-465E-9B83-A1E9FA7225EF}" /></p></td>
</tr>
<tr>
<td><p>→Check the metrics of Node</p>
<p>kubectl top node</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image717.webp" style="width:5.59375in;height:1.19792in" alt="{B6F8ECCE-19BF-41C2-A7C2-1D4DB9FAD03F}" /></p></td>
</tr>
<tr>
<td><p>→Check integrations namespace pods status</p>
<p>kubectl top pod -n integrations</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image718.webp" style="width:5.52083in;height:0.92708in" alt="{395481CC-3AA4-4CF4-9A38-9C95793B5BFF}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image719.webp" style="width:4.94861in;height:3.33056in" alt="{8676DCBF-7BB3-4B4C-8BF0-951CAD9BB67A}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image720.webp" style="width:5.19097in;height:0.53958in" alt="{A9037AEB-72D6-4E4B-B7EE-EA271572CB7E}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image721.webp" style="width:7.52639in;height:3.17639in" alt="{F9AB8005-FFF2-4A4D-AA15-686C1A43E285}" /></p></td>
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
<p>cd /c/run/harbor-offline-installer-v2.13.2</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image722.webp" style="width:7.52361in;height:1.225in" alt="{2F19BCAC-9F6B-44AC-AD0E-1AF4D1CEDBBD}" /></p>
<p>→List</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image723.webp" style="width:7.53889in;height:0.75694in" alt="{53F982C3-3E2D-4EB4-AE0B-4104E0C58EC6}" /></p>
<p>cp harbor.yml.tmpl harbor.yml</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image724.webp" style="width:7.54028in;height:1.19514in" alt="{84EB6DC0-75D5-4EA4-8E67-6B1BE78F5B76}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image725.webp" style="width:4.6875in;height:3.19792in" alt="{9E8824EA-F1AE-41C9-89F5-0F552767F9E0}" /></p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image726.webp" style="width:3.73958in;height:0.82292in" alt="{8EAD6F9A-C035-4B72-B5B6-5CF8F035A68A}" /></p></td>
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
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image727.webp" style="width:6.08333in;height:3.80208in" alt="{35059FAA-124E-4C89-A5FD-3A339D9CBF52}" /></p></td>
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
<p># STEP 1 - Download Kubernetes server and etcd binaries</p>
<p>############################################################</p>
<p> </p>
<p>#Run the Kubernetes server + etcd downloads on the control-plane node.</p>
<p>#Run the Kubernetes node binaries on the worker node.</p>
<p>#Control Plane</p>
<p># Create a directory to store the binaries.</p>
<p>sudo mkdir -p /root/binaries</p>
<p># Move into the binaries directory.</p>
<p>cd /root/binaries</p>
<p># Download the Kubernetes server binaries.</p>
<p>#</p>
<p># This archive contains components such as:</p>
<p># - kube-apiserver</p>
<p># - kube-controller-manager</p>
<p># - kube-scheduler</p>
<p># - kubectl</p>
<p># - kubelet</p>
<p># etc.</p>
<p>sudo wget https://dl.k8s.io/v1.32.1/kubernetes-server-linux-amd64.tar.gz</p>
<p># Extract the Kubernetes binaries.</p>
<p>sudo tar -xzvf kubernetes-server-linux-amd64.tar.gz</p>
<p># Inspect the available Kubernetes server binaries.</p>
<p>ls -lh /root/binaries/kubernetes/server/bin/</p>
<p>############################################################</p>
<p># Download etcd</p>
<p>############################################################</p>
<p># Download etcd.</p>
<p>#</p>
<p># etcd is Kubernetes' distributed key-value store.</p>
<p># The Kubernetes API server will use it to persist cluster state.</p>
<p>sudo wget https://github.com/etcd-io/etcd/releases/download/v3.5.18/etcd-v3.5.18-linux-amd64.tar.gz</p>
<p># Extract etcd.</p>
<p>sudo tar -xzvf etcd-v3.5.18-linux-amd64.tar.gz</p>
<p># Verify the extracted directory.</p>
<p>ls -lh /root/binaries/etcd-v3.5.18-linux-amd64/</p>
<p>Worker Node</p>
<p>############################################################</p>
<p># STEP 1 - Download Kubernetes node binaries</p>
<p>############################################################</p>
<p># Create a directory to store the binaries.</p>
<p>sudo mkdir -p /root/binaries</p>
<p># Move into the binaries directory.</p>
<p>cd /root/binaries</p>
<p># Download the Kubernetes node binaries.</p>
<p>sudo wget https://dl.k8s.io/v1.32.1/kubernetes-node-linux-amd64.tar.gz</p>
<p># Extract the binaries.</p>
<p>sudo tar -xzvf kubernetes-node-linux-amd64.tar.gz</p>
<p># Inspect the available node binaries.</p>
<p>ls -lh /root/binaries/kubernetes/node/bin/</p>
<p>STEP 2 — Create the Kubernetes Certificate Authority</p>
<p># This creates the root CA that will eventually sign certificates for Kubernetes components.</p></td>
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
<p># STEP 2 - Create Kubernetes Certificate Authority</p>
<p>############################################################</p>
<p># Create a directory to store Kubernetes certificates and keys.</p>
<p>sudo mkdir -p /root/certificates</p>
<p># Move into the certificate directory.</p>
<p>cd /root/certificates</p>
<p>############################################################</p>
<p># Generate the CA private key</p>
<p>############################################################</p>
<p># Generate a 2048-bit RSA private key for the Kubernetes CA.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># This private key is extremely sensitive.</p>
<p># It is used to sign certificates for Kubernetes components.</p>
<p>sudo openssl genrsa -out ca.key 2048</p>
<p>############################################################</p>
<p># Create the CA Certificate Signing Request</p>
<p>############################################################</p>
<p># Create a CSR using the CA private key.</p>
<p>sudo openssl req -new \</p>
<p>  -key ca.key \</p>
<p>  -subj "/CN=KUBERNETES-CA" \</p>
<p>  -out ca.csr</p>
<p>############################################################</p>
<p># Self-sign the CA certificate</p>
<p>############################################################</p>
<p># Self-sign the CSR to create the root CA certificate.</p>
<p>#</p>
<p># The CA certificate will be valid for approximately 1000 days.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in ca.csr \</p>
<p>  -signkey ca.key \</p>
<p>  -out ca.crt \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># Inspect the CA certificate</p>
<p>############################################################</p>
<p># Display the certificate contents.</p>
<p>sudo openssl x509 -in ca.crt -text -noout</p>
<p>############################################################</p>
<p># Remove the temporary CSR</p>
<p>############################################################</p>
<p># The CSR is no longer required after creating the certificate.</p>
<p>sudo rm -f ca.csr</p>
<p>#STEP 3 — Configure etcd</p>
<p>#This is being done on the control-plane node.</p>
<p>#The important concept here is: etcd is the database of the Kubernetes cluster. The API server will communicate with etcd over HTTPS using certificates.</p></td>
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
<p># STEP 3 - Configure etcd</p>
<p>############################################################</p>
<p># Set the IP address of this control-plane server.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># Replace this with the ACTUAL IP address of your master VM.</p>
<p>#</p>
<p># Example:</p>
<p># SERVER_IP=192.168.56.10</p>
<p>#</p>
<p># Do NOT use the example public IP from the original document.</p>
<p>export SERVER_IP="YOUR_CONTROL_PLANE_IP"</p>
<p># Verify the value.</p>
<p>echo $SERVER_IP</p>
<p>#Generate etcd certificates</p>
<p>############################################################</p>
<p># STEP 3.1 - Generate etcd TLS certificates</p>
<p>############################################################</p>
<p># Move to the certificate directory.</p>
<p>cd /root/certificates</p>
<p># Generate the etcd private key.</p>
<p>sudo openssl genrsa -out etcd.key 2048</p>
<p># Creates a brand new 2048-bit RSA private key, saved as etcd.key</p>
<p># This key belongs to etcd only — it's how etcd will prove its identity later (never shared, never leaves the box)</p>
<p>############################################################</p>
<p># Create etcd certificate configuration</p>
<p>############################################################</p>
<p># The Subject Alternative Names (SANs) identify the IP addresses</p>
<p># for which this certificate is valid.</p>
<p>cat &lt;&lt;EOF | sudo tee etcd.cnf</p>
<p>[req]</p>
<p>req_extensions = v3_req</p>
<p>distinguished_name = req_distinguished_name</p>
<p>[req_distinguished_name]</p>
<p>[v3_req]</p>
<p>basicConstraints = CA:FALSE</p>
<p>keyUsage = nonRepudiation, digitalSignature, keyEncipherment</p>
<p>subjectAltName = @alt_names</p>
<p>[alt_names]</p>
<p>IP.1 = ${SERVER_IP}</p>
<p>IP.2 = 127.0.0.1</p>
<p>EOF</p>
<p> </p>
<p># Not a cert command — just writes a text config file to disk</p>
<p># Defines subjectAltName (SAN) = ${SERVER_IP} and 127.0.0.1</p>
<p># This is the list of addresses the cert will actually be valid for — needed because TLS checks SAN, not just the CN, during connection</p>
<p>############################################################</p>
<p># Create etcd Certificate Signing Request</p>
<p>############################################################</p>
<p>sudo openssl req -new \</p>
<p>  -key etcd.key \</p>
<p>  -subj "/CN=etcd" \</p>
<p>  -out etcd.csr \</p>
<p>  -config etcd.cnf</p>
<p>#Uses etcd.key (already created) to generate a request, not a new key</p>
<p>#-subj "/CN=etcd" → declares the identity: "I am etcd"</p>
<p>#-config etcd.cnf → pulls in the SAN list we just wrote above</p>
<p>#Output etcd.csr = "here's my public key + claimed identity + valid addresses, please sign this" — sent to the CA</p>
<p>############################################################</p>
<p># Sign the etcd certificate using our Kubernetes CA</p>
<p>############################################################</p>
<p>sudo openssl x509 -req \</p>
<p>  -in etcd.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out etcd.crt \</p>
<p>  -extensions v3_req \</p>
<p>  -extfile etcd.cnf \</p>
<p>  -days 1000</p>
<p>#Takes etcd.csr, signs it using the CA's own ca.crt + ca.key</p>
<p>#-CAcreateserial → generates a serial number file to track this cert</p>
<p>#-extensions v3_req -extfile etcd.cnf → re-applies the SAN info onto the final cert (CSRs don't auto-carry extensions into the signed cert, so this step is required)</p>
<p>#Output etcd.crt = the final CA-signed certificate — this is what etcd will actually present during TLS handshakes</p>
<p>############################################################</p>
<p># STEP 3.2 - Install etcd certificates</p>
<p>############################################################</p>
<p># Create etcd's configuration/certificate directory.</p>
<p>sudo mkdir -p /etc/etcd</p>
<p># Copy the etcd certificate, private key and CA certificate.</p>
<p>sudo cp etcd.crt etcd.key ca.crt /etc/etcd/</p>
<p># Verify the files.</p>
<p>sudo ls -lh /etc/etcd/</p>
<p>Install etcd binaries</p>
<p>############################################################</p>
<p># STEP 3.3 - Install etcd binaries</p>
<p>############################################################</p>
<p># Move into the extracted etcd directory.</p>
<p>cd /root/binaries/etcd-v3.5.18-linux-amd64/</p>
<p># Copy etcd and etcdctl into the system PATH.</p>
<p>sudo cp etcd etcdctl /usr/local/bin/</p>
<p># Verify installation.</p>
<p>etcd --version</p>
<p>etcdctl version</p>
<p>Create etcd systemd service</p>
<p>############################################################</p>
<p># STEP 3.4 - Create etcd systemd service</p>
<p>############################################################</p>
<p># Create a systemd service so etcd runs as a background service</p>
<p># and automatically starts after reboot.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/etcd.service</p>
<p>[Unit]</p>
<p>Description=etcd</p>
<p>Documentation=https://etcd.io/docs/</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/etcd \\</p>
<p>  --name master-1 \\</p>
<p>  --cert-file=/etc/etcd/etcd.crt \\</p>
<p>  --key-file=/etc/etcd/etcd.key \\</p>
<p>  --peer-cert-file=/etc/etcd/etcd.crt \\</p>
<p>  --peer-key-file=/etc/etcd/etcd.key \\</p>
<p>  --trusted-ca-file=/etc/etcd/ca.crt \\</p>
<p>  --peer-trusted-ca-file=/etc/etcd/ca.crt \\</p>
<p>  --peer-client-cert-auth \\</p>
<p>  --client-cert-auth \\</p>
<p>  --initial-advertise-peer-urls=https://${SERVER_IP}:2380 \\</p>
<p>  --listen-peer-urls=https://${SERVER_IP}:2380 \\</p>
<p>  --listen-client-urls=https://${SERVER_IP}:2379,https://127.0.0.1:2379 \\</p>
<p>  --advertise-client-urls=https://${SERVER_IP}:2379 \\</p>
<p>  --initial-cluster-token=<removed> \\</p>
<p>  --initial-cluster=master-1=https://${SERVER_IP}:2380 \\</p>
<p>  --initial-cluster-state=new \\</p>
<p>  --data-dir=/var/lib/etcd</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>#Big picture: key → CSR → CA signs → install. Same 4-step dance we repeat for every component (apiserver, kubelet, scheduler, etc.), just swapping the CN/SAN each time.</p>
<p>############################################################</p>
<p># STEP 3.5 - Start etcd</p>
<p>############################################################</p>
<p># Reload systemd so it sees the new service.</p>
<p>sudo systemctl daemon-reload</p>
<p># Enable etcd so it starts automatically after reboot.</p>
<p>sudo systemctl enable etcd</p>
<p># Start etcd.</p>
<p>sudo systemctl start etcd</p>
<p># Check service status.</p>
<p>sudo systemctl status etcd</p>
<p>############################################################</p>
<p># STEP 3.6 - Verify etcd</p>
<p>############################################################</p>
<p># Write a test key/value into etcd.</p>
<p>#</p>
<p># ETCDCTL_API=3 tells etcdctl to use the v3 API.</p>
<p># Put &amp; Read the value back from etcd.</p>
<p>ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/ca.crt --cert=/etc/etcd/etcd.crt --key=/etc/etcd/etcd.key put course "kplabs cka course is awesome"</p>
<p>ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/ca.crt --cert=/etc/etcd/etcd.crt --key=/etc/etcd/etcd.key get course</p></td>
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
<p># STEP 4 - Configure Kubernetes API Server</p>
<p>############################################################</p>
<p># The API server is the front door of Kubernetes.</p>
<p># Move into the Kubernetes server binaries.</p>
<p>cd /root/binaries/kubernetes/server/bin/</p>
<p># Copy kube-apiserver into the system PATH.</p>
<p>sudo cp kube-apiserver /usr/local/bin/</p>
<p># Verify the binary.</p>
<p>kube-apiserver --version</p>
<p># Verify that SERVER_IP is still defined.</p>
<p>echo $SERVER_IP</p>
<p>#Important: SERVER_IP is a shell variable. If you open a new terminal later, it may disappear. For this lab, either re-export it or make it persistent.</p>
<p>############################################################</p>
<p># STEP 4.1 - Create API server certificate configuration</p>
<p>############################################################</p>
<p># Move to the certificate directory.</p>
<p>cd /root/certificates</p>
<p># Create the certificate configuration.</p>
<p>#</p>
<p># The SANs are important because clients may access the API server</p>
<p># using different DNS names or IP addresses.</p>
<p>cat &lt;&lt;EOF | sudo tee api.conf</p>
<p>[req]</p>
<p>req_extensions = v3_req</p>
<p>distinguished_name = req_distinguished_name</p>
<p>[req_distinguished_name]</p>
<p>[v3_req]</p>
<p>basicConstraints = CA:FALSE</p>
<p>keyUsage = nonRepudiation, digitalSignature, keyEncipherment</p>
<p>subjectAltName = @alt_names</p>
<p>[alt_names]</p>
<p>DNS.1 = kubernetes</p>
<p>DNS.2 = kubernetes.default</p>
<p>DNS.3 = kubernetes.default.svc</p>
<p>DNS.4 = kubernetes.default.svc.cluster.local</p>
<p>IP.1 = 127.0.0.1</p>
<p>IP.2 = ${SERVER_IP}</p>
<p>IP.3 = 10.32.0.1</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 4.2 - Generate API server TLS certificate</p>
<p>############################################################</p>
<p># Generate the API server private key.</p>
<p>sudo openssl genrsa -out kube-api.key 2048</p>
<p># Create the API server CSR.</p>
<p>sudo openssl req -new \</p>
<p>  -key kube-api.key \</p>
<p>  -subj "/CN=kube-apiserver" \</p>
<p>  -out kube-api.csr \</p>
<p>  -config api.conf</p>
<p># Sign the API server certificate using our Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in kube-api.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out kube-api.crt \</p>
<p>  -extensions v3_req \</p>
<p>  -extfile api.conf \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># STEP 4.3 - Generate service-account keys</p>
<p>############################################################</p>
<p># Generate the private key used for service-account signing.</p>
<p>sudo openssl genrsa -out service-account.key 2048</p>
<p># Create a CSR.</p>
<p>sudo openssl req -new \</p>
<p>  -key service-account.key \</p>
<p>  -subj "/CN=service-accounts" \</p>
<p>  -out service-account.csr</p>
<p># Sign the service-account certificate using the Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in service-account.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out service-account.crt \</p>
<p>  -days 100</p>
<p>############################################################</p>
<p># STEP 4.4 - Install Kubernetes certificates</p>
<p>############################################################</p>
<p># Create the directory where Kubernetes component certificates</p>
<p># and configuration will be stored.</p>
<p>sudo mkdir -p /var/lib/kubernetes</p>
<p># Copy the certificates and keys required by the API server.</p>
<p>sudo cp \</p>
<p>  etcd.crt \</p>
<p>  etcd.key \</p>
<p>  ca.crt \</p>
<p>  kube-api.key \</p>
<p>  kube-api.crt \</p>
<p>  service-account.crt \</p>
<p>  service-account.key \</p>
<p>  /var/lib/kubernetes/</p>
<p># Verify the files.</p>
<p>sudo ls -lh /var/lib/kubernetes/</p>
<p>############################################################</p>
<p># STEP 4.5 - Configure encryption at rest</p>
<p>############################################################</p>
<p># Generate a random 32-byte encryption key.</p>
<p>#</p>
<p># Kubernetes will use this to encrypt Secret objects before</p>
<p># storing them in etcd.</p>
<p>ENCRYPTION_KEY=$(head -c 32 /dev/urandom | base64)</p>
<p># Create the encryption configuration.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># YAML indentation must be preserved exactly.</p>
<p>cat &lt;&lt;EOF | sudo tee /var/lib/kubernetes/encryption-at-rest.yaml</p>
<p>apiVersion: apiserver.config.k8s.io/v1</p>
<p>kind: EncryptionConfiguration</p>
<p>resources:</p>
<p>  - resources:</p>
<p>      - secrets</p>
<p>    providers:</p>
<p>      - aescbc:</p>
<p>          keys:</p>
<p>            - name: key1</p>
<p>              secret: <removed>
<p>      - identity: {}</p>
<p>EOF</p>
<p># Inspect the file.</p>
<p>sudo cat /var/lib/kubernetes/encryption-at-rest.yaml</p>
<p>############################################################</p>
<p># STEP 4.6 - Create kube-apiserver systemd service</p>
<p>############################################################</p>
<p># Create the systemd service for the Kubernetes API server.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-apiserver.service</p>
<p>[Unit]</p>
<p>Description=Kubernetes API Server</p>
<p>Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/kube-apiserver \\</p>
<p>  --advertise-address=${SERVER_IP} \\</p>
<p>  --allow-privileged=true \\</p>
<p>  --authorization-mode=Node,RBAC \\</p>
<p>  --client-ca-file=/var/lib/kubernetes/ca.crt \\</p>
<p>  --enable-admission-plugins=NamespaceLifecycle,NodeRestriction,LimitRanger,ServiceAccount,DefaultStorageClass,ResourceQuota \\</p>
<p>  --enable-bootstrap-token-auth=true \\</p>
<p>  --etcd-cafile=/var/lib/kubernetes/ca.crt \\</p>
<p>  --etcd-certfile=/var/lib/kubernetes/etcd.crt \\</p>
<p>  --etcd-keyfile=/var/lib/kubernetes/etcd.key \\</p>
<p>  --etcd-servers=https://127.0.0.1:2379 \\</p>
<p>  --kubelet-client-certificate=/var/lib/kubernetes/kube-api.crt \\</p>
<p>  --kubelet-client-key=/var/lib/kubernetes/kube-api.key \\</p>
<p>  --service-account-key-file=/var/lib/kubernetes/service-account.crt \\</p>
<p>  --service-account-signing-key-file=/var/lib/kubernetes/service-account.key \\</p>
<p>  --service-account-issuer=https://${SERVER_IP}:6443 \\</p>
<p>  --service-cluster-ip-range=10.32.0.0/24 \\</p>
<p>  --tls-cert-file=/var/lib/kubernetes/kube-api.crt \\</p>
<p>  --tls-private-key-file=/var/lib/kubernetes/kube-api.key \\</p>
<p>  --requestheader-client-ca-file=/var/lib/kubernetes/ca.crt \\</p>
<p>  --service-node-port-range=30000-32767 \\</p>
<p>  --audit-log-maxage=30 \\</p>
<p>  --audit-log-maxbackup=3 \\</p>
<p>  --audit-log-maxsize=100 \\</p>
<p>  --audit-log-path=/var/log/kube-api-audit.log \\</p>
<p>  --bind-address=0.0.0.0 \\</p>
<p>  --event-ttl=1h \\</p>
<p>  --encryption-provider-config=/var/lib/kubernetes/encryption-at-rest.yaml \\</p>
<p>  --v=2</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 4.7 - Start kube-apiserver</p>
<p>############################################################</p>
<p># Reload systemd to recognize the new service.</p>
<p>sudo systemctl daemon-reload</p>
<p># Enable the API server to start automatically after reboot.</p>
<p>sudo systemctl enable kube-apiserver</p>
<p># Start the API server.</p>
<p>sudo systemctl start kube-apiserver</p>
<p># Check its status.</p>
<p>sudo systemctl status kube-apiserver</p>
<p>One important learning point</p>
<p>#At this stage, you should not expect kubectl get nodes to work yet.</p>
<p>#We currently built:</p>
<p>#                    +------------------+</p>
<p>#                    |  kube-apiserver  |</p>
<p>#                    +--------+---------+</p>
<p>#                             |</p>
<p>#                             | HTTPS</p>
<p>#                             v</p>
<p>#                    +------------------+</p>
<p>#                    |       etcd       |</p>
<p>#                    +------------------+</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Brief summary of Service Account Keys vs Api server keys.</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image728.webp" style="width:6.17917in;height:5.81458in" alt="{FC283634-538A-45B8-85F8-0A15D61DA7D0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Comparision</p>
<p><img src="subjects/tech/azure/az-aks-complete/img/media/image729.webp" style="width:5.75069in;height:3.70347in" alt="{F6BF513F-0C6F-4E12-A14E-EFD5295D6D41}" /></p>
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
<p>############################################################</p>
<p># STEP 5 - Configure Kubernetes Controller Manager</p>
<p>############################################################</p>
<p># Move to the certificate directory.</p>
<p>cd /root/certificates</p>
<p>############################################################</p>
<p># STEP 5.1 - Generate Controller Manager certificate</p>
<p>############################################################</p>
<p># Generate the private key for the controller manager.</p>
<p>sudo openssl genrsa -out kube-controller-manager.key 2048</p>
<p># Create a CSR identifying the controller manager.</p>
<p>sudo openssl req -new \</p>
<p>  -key kube-controller-manager.key \</p>
<p>  -subj "/CN=system:kube-controller-manager" \</p>
<p>  -out kube-controller-manager.csr</p>
<p># Sign the certificate using our Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in kube-controller-manager.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out kube-controller-manager.crt \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># STEP 5.2 - Install kubectl</p>
<p>############################################################</p>
<p># Copy kubectl from the Kubernetes server binaries.</p>
<p>sudo cp /root/binaries/kubernetes/server/bin/kubectl /usr/local/bin/</p>
<p># Verify kubectl.</p>
<p>kubectl version --client</p>
<p>############################################################</p>
<p># STEP 5.3 - Generate Controller Manager kubeconfig</p>
<p>############################################################</p>
<p># Create the kubeconfig's cluster entry.</p>
<p>#</p>
<p># This tells the controller manager where the API server is</p>
<p># and which CA should be trusted.</p>
<p>kubectl config set-cluster kubernetes-from-scratch \</p>
<p>  --certificate-authority=/root/certificates/ca.crt \</p>
<p>  --embed-certs=true \</p>
<p>  --server=https://127.0.0.1:6443 \</p>
<p>  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig</p>
<p># Configure the controller manager's identity.</p>
<p>kubectl config set-credentials system:kube-controller-manager \</p>
<p>  --client-certificate=/root/certificates/kube-controller-manager.crt \</p>
<p>  --client-key=/root/certificates/kube-controller-manager.key \</p>
<p>  --embed-certs=true \</p>
<p>  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig</p>
<p># Create a context connecting the cluster and controller manager identity.</p>
<p>kubectl config set-context default \</p>
<p>  --cluster=kubernetes-from-scratch \</p>
<p>  --user=system:kube-controller-manager \</p>
<p>  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig</p>
<p># Select the context.</p>
<p>kubectl config use-context default \</p>
<p>  --kubeconfig=/root/certificates/kube-controller-manager.kubeconfig</p>
<p>############################################################</p>
<p># STEP 5.4 - Copy Controller Manager files</p>
<p>############################################################</p>
<p># Copy the controller manager certificate, key and kubeconfig.</p>
<p># The CA private key is also required because the controller</p>
<p># manager signs certificates for cluster components.</p>
<p>sudo cp \</p>
<p>  kube-controller-manager.crt \</p>
<p>  kube-controller-manager.key \</p>
<p>  kube-controller-manager.kubeconfig \</p>
<p>  ca.key \</p>
<p>  /var/lib/kubernetes/</p>
<p>############################################################</p>
<p># STEP 5.5 - Install Controller Manager binary</p>
<p>############################################################</p>
<p>sudo cp \</p>
<p>  /root/binaries/kubernetes/server/bin/kube-controller-manager \</p>
<p>  /usr/local/bin/</p>
<p># Verify the binary.</p>
<p>kube-controller-manager --version</p>
<p>############################################################</p>
<p># STEP 5.6 - Create Controller Manager systemd service</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-controller-manager.service</p>
<p>[Unit]</p>
<p>Description=Kubernetes Controller Manager</p>
<p>Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-controller-manager/</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/kube-controller-manager \\</p>
<p>  --bind-address=0.0.0.0 \\</p>
<p>  --service-cluster-ip-range=10.32.0.0/24 \\</p>
<p>  --cluster-cidr=10.200.0.0/16 \\</p>
<p>  --kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\</p>
<p>  --authentication-kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\</p>
<p>  --authorization-kubeconfig=/var/lib/kubernetes/kube-controller-manager.kubeconfig \\</p>
<p>  --leader-elect=true \\</p>
<p>  --cluster-signing-cert-file=/var/lib/kubernetes/ca.crt \\</p>
<p>  --cluster-signing-key-file=/var/lib/kubernetes/ca.key \\</p>
<p>  --root-ca-file=/var/lib/kubernetes/ca.crt \\</p>
<p>  --service-account-private-key-file=/var/lib/kubernetes/service-account.key \\</p>
<p>  --use-service-account-credentials=true \\</p>
<p>  --v=2</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 5.7 - Start Controller Manager</p>
<p>############################################################</p>
<p># Reload systemd so it recognizes the new service.</p>
<p>sudo systemctl daemon-reload</p>
<p># Enable the service to start automatically after reboot.</p>
<p>sudo systemctl enable kube-controller-manager</p>
<p># Start the controller manager.</p>
<p>sudo systemctl start kube-controller-manager</p>
<p># Check its status.</p>
<p>sudo systemctl status kube-controller-manager</p></td>
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
<p>############################################################</p>
<p># STEP 6 - Configure Kubernetes Scheduler</p>
<p>############################################################</p>
<p># Move to the certificate directory.</p>
<p>cd /root/certificates</p>
<p>############################################################</p>
<p># STEP 6.1 - Generate Scheduler certificate</p>
<p>############################################################</p>
<p># Generate the scheduler private key.</p>
<p>sudo openssl genrsa -out kube-scheduler.key 2048</p>
<p># Create the scheduler CSR.</p>
<p>sudo openssl req -new \</p>
<p>  -key kube-scheduler.key \</p>
<p>  -subj "/CN=system:kube-scheduler" \</p>
<p>  -out kube-scheduler.csr</p>
<p># Sign the scheduler certificate using the Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in kube-scheduler.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out kube-scheduler.crt \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># STEP 6.2 - Generate Scheduler kubeconfig</p>
<p>############################################################</p>
<p># Configure the Kubernetes cluster and API server.</p>
<p>kubectl config set-cluster kubernetes-from-scratch \</p>
<p>  --certificate-authority=/root/certificates/ca.crt \</p>
<p>  --embed-certs=true \</p>
<p>  --server=https://127.0.0.1:6443 \</p>
<p>  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig</p>
<p># Configure the scheduler identity.</p>
<p>kubectl config set-credentials system:kube-scheduler \</p>
<p>  --client-certificate=/root/certificates/kube-scheduler.crt \</p>
<p>  --client-key=/root/certificates/kube-scheduler.key \</p>
<p>  --embed-certs=true \</p>
<p>  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig</p>
<p># Create a context for the scheduler.</p>
<p>kubectl config set-context default \</p>
<p>  --cluster=kubernetes-from-scratch \</p>
<p>  --user=system:kube-scheduler \</p>
<p>  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig</p>
<p># Select the context.</p>
<p>kubectl config use-context default \</p>
<p>  --kubeconfig=/root/certificates/kube-scheduler.kubeconfig</p>
<p>############################################################</p>
<p># STEP 6.3 - Copy Scheduler kubeconfig</p>
<p>############################################################</p>
<p>sudo cp \</p>
<p>  /root/certificates/kube-scheduler.kubeconfig \</p>
<p>  /var/lib/kubernetes/</p>
<p>############################################################</p>
<p># STEP 6.4 - Install Scheduler binary</p>
<p>############################################################</p>
<p>sudo cp \</p>
<p>  /root/binaries/kubernetes/server/bin/kube-scheduler \</p>
<p>  /usr/local/bin/</p>
<p># Verify the binary.</p>
<p>kube-scheduler --version</p>
<p>############################################################</p>
<p># STEP 6.5 - Create Scheduler systemd service</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-scheduler.service</p>
<p>[Unit]</p>
<p>Description=Kubernetes Scheduler</p>
<p>Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-scheduler/</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/kube-scheduler \\</p>
<p>  --kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\</p>
<p>  --authentication-kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\</p>
<p>  --authorization-kubeconfig=/var/lib/kubernetes/kube-scheduler.kubeconfig \\</p>
<p>  --bind-address=127.0.0.1 \\</p>
<p>  --leader-elect=true</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 6.6 - Start Scheduler</p>
<p>############################################################</p>
<p>sudo systemctl daemon-reload</p>
<p>sudo systemctl enable kube-scheduler</p>
<p>sudo systemctl start kube-scheduler</p>
<p>sudo systemctl status kube-scheduler</p></td>
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
<p>#Run this on the Control Plane node.</p>
<p>############################################################</p>
<p># STEP 7 - Validate Kubernetes Cluster</p>
<p>############################################################</p>
<p># Move to the certificate directory.</p>
<p>cd /root/certificates</p>
<p>############################################################</p>
<p># STEP 7.1 - Generate Administrator certificate</p>
<p>############################################################</p>
<p># Generate the administrator private key.</p>
<p>sudo openssl genrsa -out admin.key 2048</p>
<p># Create an administrator CSR.</p>
<p>#</p>
<p># system:masters gives this identity cluster-admin-level access.</p>
<p>sudo openssl req -new \</p>
<p>  -key admin.key \</p>
<p>  -subj "/CN=admin/O=system:masters" \</p>
<p>  -out admin.csr</p>
<p># Sign the administrator certificate using the Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in admin.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out admin.crt \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># STEP 7.2 - Generate Administrator kubeconfig</p>
<p>############################################################</p>
<p># Configure the Kubernetes cluster.</p>
<p>kubectl config set-cluster kubernetes-from-scratch \</p>
<p>  --certificate-authority=/root/certificates/ca.crt \</p>
<p>  --embed-certs=true \</p>
<p>  --server=https://127.0.0.1:6443 \</p>
<p>  --kubeconfig=/root/certificates/admin.kubeconfig</p>
<p># Configure the administrator identity.</p>
<p>kubectl config set-credentials admin \</p>
<p>  --client-certificate=/root/certificates/admin.crt \</p>
<p>  --client-key=/root/certificates/admin.key \</p>
<p>  --embed-certs=true \</p>
<p>  --kubeconfig=/root/certificates/admin.kubeconfig</p>
<p># Create the administrator context.</p>
<p>kubectl config set-context default \</p>
<p>  --cluster=kubernetes-from-scratch \</p>
<p>  --user=admin \</p>
<p>  --kubeconfig=/root/certificates/admin.kubeconfig</p>
<p># Select the administrator context.</p>
<p>kubectl config use-context default \</p>
<p>  --kubeconfig=/root/certificates/admin.kubeconfig</p>
<p>############################################################</p>
<p># STEP 7.3 - Verify Kubernetes components</p>
<p>############################################################</p>
<p># Query the Kubernetes component status using the admin kubeconfig.</p>
<p>kubectl get componentstatuses \</p>
<p>  --kubeconfig=/root/certificates/admin.kubeconfig</p>
<p>############################################################</p>
<p># Configure kubectl for the current user</p>
<p>############################################################</p>
<p># Create the kubectl configuration directory.</p>
<p>mkdir -p ~/.kube</p>
<p># Copy the administrator kubeconfig.</p>
<p>cp /root/certificates/admin.kubeconfig ~/.kube/config</p>
<p># Verify access to the API server.</p>
<p>kubectl get componentstatuses</p>
<p>############################################################</p>
<p># STEP 7.4 - Verify Kubernetes object creation</p>
<p>############################################################</p>
<p># Create a test namespace.</p>
<p>kubectl create namespace kplabs</p>
<p># Create a test Secret.</p>
<p>kubectl create secret generic prod-secret \</p>
<p>  --from-literal=username=admin \</p>
<p>  --from-literal=password='YOUR_TEST_PASSWORD'</p>
<p># Verify that the Secret exists.</p>
<p>kubectl get secret -n default</p></td>
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
<p># STEP 8 - Configure Worker Node</p>
<p>############################################################</p>
<p> </p>
<p>#This section switches between Worker Node and Control Plane Node as indicated.</p>
<p>#Worker Node — Container Runtime</p>
<p>############################################################</p>
<p># STEP 8.1 - Configure containerd on Worker Node</p>
<p>############################################################</p>
<p># Load kernel modules required by containerd and Kubernetes networking.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/containerd.conf</p>
<p>overlay</p>
<p>br_netfilter</p>
<p>EOF</p>
<p># Load the modules immediately.</p>
<p>sudo modprobe overlay</p>
<p>sudo modprobe br_netfilter</p>
<p># Configure Kubernetes networking requirements.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>net.bridge.bridge-nf-call-iptables  = 1</p>
<p>net.ipv4.ip_forward                 = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>EOF</p>
<p># Apply the settings.</p>
<p>sudo sysctl --system</p>
<p>############################################################</p>
<p># Install containerd</p>
<p>############################################################</p>
<p>sudo apt-get update</p>
<p>sudo apt-get install -y containerd</p>
<p># Create containerd configuration directory.</p>
<p>sudo mkdir -p /etc/containerd</p>
<p># Generate the default containerd configuration.</p>
<p>sudo containerd config default \</p>
<p>  | sudo tee /etc/containerd/config.toml &gt; /dev/null</p>
<p># Configure systemd as the cgroup driver.</p>
<p>sudo sed -i \</p>
<p>  's/SystemdCgroup = false/SystemdCgroup = true/' \</p>
<p>  /etc/containerd/config.toml</p>
<p># Restart containerd.</p>
<p>sudo systemctl restart containerd</p>
<p># Verify containerd.</p>
<p>sudo systemctl status containerd</p>
<p>############################################################</p>
<p># Configure additional kernel networking settings</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/k8s.conf</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>net.bridge.bridge-nf-call-iptables = 1</p>
<p>EOF</p>
<p>sudo sysctl --system</p>
<p>############################################################</p>
<p># Install worker prerequisites</p>
<p>############################################################</p>
<p># socat, conntrack and ipset are required by Kubernetes</p>
<p># networking/node components.</p>
<p>sudo apt-get install -y socat conntrack ipset</p>
<p># Enable IPv4 forwarding.</p>
<p>sudo sysctl -w net.ipv4.conf.all.forwarding=1</p>
<p>Worker Node — Install Kubernetes Node Binaries</p>
<p>############################################################</p>
<p># STEP 8.2 - Install Kubernetes worker binaries</p>
<p>############################################################</p>
<p>cd /root/binaries/kubernetes/node/bin/</p>
<p># Install:</p>
<p>#</p>
<p># kubelet    -&gt; Kubernetes node agent</p>
<p># kube-proxy -&gt; Implements Kubernetes Service networking</p>
<p># kubectl    -&gt; Kubernetes CLI</p>
<p>sudo cp kube-proxy kubectl kubelet /usr/local/bin/</p>
<p># Verify the binaries.</p>
<p>kubelet --version</p>
<p>kube-proxy --version</p>
<p>kubectl version --client</p></td>
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
<p># STEP 9 - Generate Worker Node certificates</p>
<p># Run on CONTROL PLANE</p>
<p>############################################################</p>
<p>cd /root/certificates</p>
<p>############################################################</p>
<p># Set Worker Node identity</p>
<p>############################################################</p>
<p># Replace these with your actual worker hostname and IP.</p>
<p>WORKER_HOSTNAME="worker"</p>
<p>WORKER_IP="YOUR_WORKER_IP"</p>
<p>echo $WORKER_HOSTNAME</p>
<p>echo $WORKER_IP</p>
<p>############################################################</p>
<p># STEP 9.1 - Create Worker certificate configuration</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee openssl-worker.cnf</p>
<p>[req]</p>
<p>req_extensions = v3_req</p>
<p>distinguished_name = req_distinguished_name</p>
<p>[req_distinguished_name]</p>
<p>[v3_req]</p>
<p>basicConstraints = CA:FALSE</p>
<p>keyUsage = nonRepudiation, digitalSignature, keyEncipherment</p>
<p>subjectAltName = @alt_names</p>
<p>[alt_names]</p>
<p>DNS.1 = ${WORKER_HOSTNAME}</p>
<p>IP.1 = ${WORKER_IP}</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 9.2 - Generate Worker certificate</p>
<p>############################################################</p>
<p># Generate the worker private key.</p>
<p>sudo openssl genrsa -out worker.key 2048</p>
<p># Create the worker CSR.</p>
<p>sudo openssl req -new \</p>
<p>  -key worker.key \</p>
<p>  -subj "/CN=system:node:${WORKER_HOSTNAME}/O=system:nodes" \</p>
<p>  -out worker.csr \</p>
<p>  -config openssl-worker.cnf</p>
<p># Sign the worker certificate using the Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in worker.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out worker.crt \</p>
<p>  -extensions v3_req \</p>
<p>  -extfile openssl-worker.cnf \</p>
<p>  -days 1000</p>
<p>############################################################</p>
<p># STEP 9.3 - Generate kube-proxy certificate</p>
<p>############################################################</p>
<p># Generate kube-proxy private key.</p>
<p>sudo openssl genrsa -out kube-proxy.key 2048</p>
<p># Create kube-proxy CSR.</p>
<p>sudo openssl req -new \</p>
<p>  -key kube-proxy.key \</p>
<p>  -subj "/CN=system:kube-proxy" \</p>
<p>  -out kube-proxy.csr</p>
<p># Sign kube-proxy certificate using the Kubernetes CA.</p>
<p>sudo openssl x509 -req \</p>
<p>  -in kube-proxy.csr \</p>
<p>  -CA ca.crt \</p>
<p>  -CAkey ca.key \</p>
<p>  -CAcreateserial \</p>
<p>  -out kube-proxy.crt \</p>
<p>  -days 1000</p></td>
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
<p>############################################################</p>
<p># STEP 10 — Copy Worker Certificates</p>
<p># Run on CONTROL PLANE</p>
<p>############################################################</p>
<p>#The original material gives both a manual and SCP approach. Below is the SCP approach, while avoiding putting a real password into the commands.</p>
<p>#Worker Node</p>
<p>############################################################</p>
<p># STEP 10.1 - Temporarily enable SSH password authentication</p>
<p>############################################################</p>
<p># This is used only so the control plane can copy certificates</p>
<p># to the worker using SCP.</p>
<p>sudo sed -i \</p>
<p>  's/#\s*PasswordAuthentication\s.*$/PasswordAuthentication yes/; s/^PasswordAuthentication\s*no$/PasswordAuthentication yes/' \</p>
<p>  /etc/ssh/sshd_config</p>
<p>sudo systemctl restart ssh</p>
<p>############################################################</p>
<p># Create a temporary user for certificate transfer</p>
<p>############################################################</p>
<p>sudo useradd -m zeal</p>
<p># Set a password when prompted.</p>
<p>sudo passwd zeal</p>
<p>Control Plane</p>
<p>############################################################</p>
<p># STEP 10.2 - Copy certificates from Control Plane to Worker</p>
<p>############################################################</p>
<p># Replace YOUR_WORKER_IP with the actual worker IP.</p>
<p>scp \</p>
<p>  /root/certificates/kube-proxy.crt \</p>
<p>  /root/certificates/kube-proxy.key \</p>
<p>  /root/certificates/worker.crt \</p>
<p>  /root/certificates/worker.key \</p>
<p>  /root/certificates/ca.crt \</p>
<p>  zeal@YOUR_WORKER_IP:/tmp/</p>
<p>Worker Node</p>
<p>############################################################</p>
<p># STEP 10.3 - Move certificates into the certificate directory</p>
<p>############################################################</p>
<p># Create the certificate directory.</p>
<p>sudo mkdir -p /root/certificates</p>
<p># Move the transferred certificates.</p>
<p>sudo mv \</p>
<p>  /tmp/kube-proxy.crt \</p>
<p>  /tmp/kube-proxy.key \</p>
<p>  /tmp/worker.crt \</p>
<p>  /tmp/worker.key \</p>
<p>  /tmp/ca.crt \</p>
<p>  /root/certificates/</p></td>
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
<p>#Run on Worker Node.</p>
<p>############################################################</p>
<p># STEP 11 - Configure Worker Certificates</p>
<p>            # Install Worker certificates</p>
<p>############################################################</p>
<p># Create Kubernetes configuration directory.</p>
<p>sudo mkdir -p /var/lib/kubernetes</p>
<p># Copy the CA certificate.</p>
<p>sudo cp /root/certificates/ca.crt /var/lib/kubernetes/</p>
<p>############################################################</p>
<p># Create kubelet directory</p>
<p>############################################################</p>
<p>sudo mkdir -p /var/lib/kubelet</p>
<p># Copy worker and kube-proxy certificates/keys.</p>
<p>sudo cp \</p>
<p>  /root/certificates/worker.crt \</p>
<p>  /root/certificates/worker.key \</p>
<p>  /root/certificates/kube-proxy.crt \</p>
<p>  /root/certificates/kube-proxy.key \</p>
<p>  /var/lib/kubelet/</p></td>
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
<p># STEP 12 — Configure Kubelet</p>
<p>############################################################</p>
<p>#Run on Worker Node.</p>
<p>############################################################</p>
<p># STEP 12.1 - Create kubelet configuration</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /var/lib/kubelet/kubelet-config.yaml</p>
<p>kind: KubeletConfiguration</p>
<p>apiVersion: kubelet.config.k8s.io/v1beta1</p>
<p>authentication:</p>
<p>  anonymous:</p>
<p>    enabled: false</p>
<p>  webhook:</p>
<p>    enabled: true</p>
<p>  x509:</p>
<p>    clientCAFile: "/var/lib/kubernetes/ca.crt"</p>
<p>authorization:<removed>
<p>  mode: Webhook</p>
<p>clusterDomain: "cluster.local"</p>
<p>clusterDNS:</p>
<p>  - "10.32.0.10"</p>
<p>runtimeRequestTimeout: "15m"</p>
<p>cgroupDriver: systemd</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 12.2 - Create kubelet systemd service</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kubelet.service</p>
<p>[Unit]</p>
<p>Description=Kubernetes Kubelet</p>
<p>Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/</p>
<p>After=containerd.service</p>
<p>Requires=containerd.service</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/kubelet \\</p>
<p>  --config=/var/lib/kubelet/kubelet-config.yaml \\</p>
<p>  --container-runtime-endpoint=unix:///var/run/containerd/containerd.sock \\</p>
<p>  --kubeconfig=/var/lib/kubelet/kubeconfig \\</p>
<p>  --v=2</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 12.3 - Generate Kubelet kubeconfig</p>
<p>############################################################</p>
<p>cd /var/lib/kubelet</p>
<p># Copy the CA certificate locally so kubectl can embed it.</p>
<p>sudo cp /var/lib/kubernetes/ca.crt .</p>
<p># Set the API server address.</p>
<p>#</p>
<p># Replace with the actual Control Plane IP.</p>
<p>export SERVER_IP="YOUR_CONTROL_PLANE_IP"</p>
<p>echo $SERVER_IP</p>
<p># Configure the Kubernetes cluster.</p>
<p>kubectl config set-cluster kubernetes-from-scratch \</p>
<p>  --certificate-authority=/var/lib/kubelet/ca.crt \</p>
<p>  --embed-certs=true \</p>
<p>  --server=https://${SERVER_IP}:6443 \</p>
<p>  --kubeconfig=/var/lib/kubelet/worker.kubeconfig</p>
<p># Configure the worker node identity.</p>
<p>kubectl config set-credentials system:node:worker \</p>
<p>  --client-certificate=/var/lib/kubelet/worker.crt \</p>
<p>  --client-key=/var/lib/kubelet/worker.key \</p>
<p>  --embed-certs=true \</p>
<p>  --kubeconfig=/var/lib/kubelet/worker.kubeconfig</p>
<p># Create the worker context.</p>
<p>kubectl config set-context default \</p>
<p>  --cluster=kubernetes-from-scratch \</p>
<p>  --user=system:node:worker \</p>
<p>  --kubeconfig=/var/lib/kubelet/worker.kubeconfig</p>
<p># Select the worker context.</p>
<p>kubectl config use-context default \</p>
<p>  --kubeconfig=/var/lib/kubelet/worker.kubeconfig</p>
<p># Place the kubeconfig where the kubelet service expects it.</p>
<p>sudo mv \</p>
<p>  /var/lib/kubelet/worker.kubeconfig \</p>
<p>  /var/lib/kubelet/kubeconfig</p></td>
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
<p># STEP 13 — Configure kube-proxy</p>
<p>############################################################</p>
<p>#Run on Worker Node.</p>
<p>############################################################</p>
<p># STEP 13.1 - Create kube-proxy directory</p>
<p>############################################################</p>
<p>sudo mkdir -p /var/lib/kube-proxy</p>
<p>############################################################</p>
<p># STEP 13.2 - Generate kube-proxy kubeconfig</p>
<p>############################################################</p>
<p>cd /var/lib/kube-proxy</p>
<p># API server address.</p>
<p>export SERVER_IP="YOUR_CONTROL_PLANE_IP"</p>
<p>echo $SERVER_IP</p>
<p># Configure the Kubernetes cluster.</p>
<p>kubectl config set-cluster kubernetes-from-scratch \</p>
<p>  --certificate-authority=/var/lib/kubernetes/ca.crt \</p>
<p>  --embed-certs=true \</p>
<p>  --server=https://${SERVER_IP}:6443 \</p>
<p>  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig</p>
<p># Configure kube-proxy identity.</p>
<p>kubectl config set-credentials system:kube-proxy \</p>
<p>  --client-certificate=/var/lib/kubelet/kube-proxy.crt \</p>
<p>  --client-key=/var/lib/kubelet/kube-proxy.key \</p>
<p>  --embed-certs=true \</p>
<p>  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig</p>
<p># Create kube-proxy context.</p>
<p>kubectl config set-context default \</p>
<p>  --cluster=kubernetes-from-scratch \</p>
<p>  --user=system:kube-proxy \</p>
<p>  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig</p>
<p># Select the context.</p>
<p>kubectl config use-context default \</p>
<p>  --kubeconfig=/var/lib/kube-proxy/kube-proxy.kubeconfig</p>
<p># Move it to the location expected by kube-proxy.</p>
<p>sudo mv \</p>
<p>  /var/lib/kube-proxy/kube-proxy.kubeconfig \</p>
<p>  /var/lib/kube-proxy/kubeconfig</p>
<p>############################################################</p>
<p># STEP 13.3 - Create kube-proxy configuration</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /var/lib/kube-proxy/kube-proxy-config.yaml</p>
<p>kind: KubeProxyConfiguration</p>
<p>apiVersion: kubeproxy.config.k8s.io/v1alpha1</p>
<p>clientConnection:</p>
<p>  kubeconfig: "/var/lib/kube-proxy/kubeconfig"</p>
<p>mode: "iptables"</p>
<p>clusterCIDR: "10.200.0.0/16"</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 13.4 - Create kube-proxy systemd service</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/systemd/system/kube-proxy.service</p>
<p>[Unit]</p>
<p>Description=Kubernetes Kube Proxy</p>
<p>Documentation=https://kubernetes.io/docs/reference/command-line-tools-reference/kube-proxy/</p>
<p>[Service]</p>
<p>ExecStart=/usr/local/bin/kube-proxy \\</p>
<p>  --config=/var/lib/kube-proxy/kube-proxy-config.yaml</p>
<p>Restart=on-failure</p>
<p>RestartSec=5</p>
<p>[Install]</p>
<p>WantedBy=multi-user.target</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 13.5 - Start Worker Node services</p>
<p>############################################################</p>
<p># Reload systemd to recognize the new services.</p>
<p>sudo systemctl daemon-reload</p>
<p># Start kubelet.</p>
<p>sudo systemctl start kubelet</p>
<p># Start kube-proxy.</p>
<p>sudo systemctl start kube-proxy</p>
<p># Check kubelet status.</p>
<p>sudo systemctl status kubelet</p>
<p># Check kube-proxy status.</p>
<p>sudo systemctl status kube-proxy</p>
<p># Enable both services to start automatically after reboot.</p>
<p>sudo systemctl enable kubelet</p>
<p>sudo systemctl enable kube-proxy</p></td>
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
<p>############################################################</p>
<p># STEP 14 - Verify Worker Node</p>
<p>############################################################</p>
<p>#Run this on the Control Plane node.</p>
<p># List all Kubernetes nodes registered with the API server.</p>
<p>kubectl get nodes</p></td>
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
<p>############################################################</p>
<p># STEP 15 - Configure Kubernetes Networking</p>
<p>############################################################</p>
<p># Purpose: install the CNI plugins on the worker and then deploy Calico from the control plane.</p>
<p><strong><mark>#  ON Worker Node</mark></strong></p>
<p># Download the standard CNI plugins.</p>
<p># These provide the networking binaries that Kubernetes/CNI will use.</p>
<p>cd /tmp</p>
<p>wget https://github.com/containernetworking/plugins/releases/download/v1.6.2/cni-plugins-linux-amd64-v1.6.2.tgz</p>
<p>############################################################</p>
<p># Create CNI directories</p>
<p>############################################################</p>
<p># /etc/cni/net.d  -&gt; CNI network configuration</p>
<p># /opt/cni/bin    -&gt; CNI plugin binaries</p>
<p># /var/run/kubernetes -&gt; Kubernetes runtime files</p>
<p>sudo mkdir -p \</p>
<p>  /etc/cni/net.d \</p>
<p>  /opt/cni/bin \</p>
<p>  /var/run/kubernetes</p>
<p>############################################################</p>
<p># Extract CNI plugins</p>
<p>############################################################</p>
<p># Move the downloaded archive to the CNI binary directory.</p>
<p>sudo mv cni-plugins-linux-amd64-v1.6.2.tgz /opt/cni/bin/</p>
<p># Move into the CNI binary directory.</p>
<p>cd /opt/cni/bin</p>
<p># Extract the CNI plugins.</p>
<p>sudo tar -xzvf cni-plugins-linux-amd64-v1.6.2.tgz</p>
<p><strong><mark>#Control Plane Node</mark></strong></p>
<p>############################################################</p>
<p># Deploy Calico</p>
<p>############################################################</p>
<p># Deploy the Calico operator.</p>
<p>#</p>
<p># Calico will provide the actual Kubernetes pod networking.</p>
<p>kubectl create -f \</p>
<p>  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml</p>
<p># Deploy Calico's configuration/custom resources.</p>
<p>kubectl create -f \</p>
<p>  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml</p>
<p># Give Calico a few minutes to initialize.</p>
<p># If the worker remains NotReady, check/restart kubelet on the worker.</p>
<p># Worker Node — if the worker remains NotReady</p>
<p>############################################################</p>
<p># Restart kubelet if the worker remains NotReady</p>
<p>############################################################</p>
<p>sudo systemctl restart kubelet</p>
<p>Control Plane Node — verification</p>
<p>############################################################</p>
<p># Verify cluster networking</p>
<p>############################################################</p>
<p># Check whether the worker has become Ready.</p>
<p>kubectl get nodes</p>
<p># Create a test nginx Pod.</p>
<p>kubectl run nginx --image=nginx</p>
<p># Check Pod status.</p>
<p>kubectl get pods</p>
<p>#The course notes that Calico may take 3–5 minutes to settle, and a Pod can temporarily show #an error after restarting kubelet before eventually becoming Running.</p>
<p>############################################################</p>
<p># Test communication with the nginx Pod</p>
<p>############################################################</p>
<p># Execute a command inside the nginx container.</p>
<p>kubectl exec nginx -- ls</p>
<p># The course then modifies /etc/hosts on the host as part of</p>
<p># this networking exercise.</p>
<p>sudo nano /etc/hosts</p>
<p># Add the worker mapping shown in your course, using YOUR</p>
<p># worker IP rather than blindly copying the example:</p>
<p>#</p>
<p># YOUR_WORKER_IP worker</p>
<p># Test Pod exec again.</p>
<p>kubectl exec nginx -- ls</p></td>
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
<p>############################################################</p>
<p># STEP 16 - Configure API Server → Kubelet RBAC  </p>
<p>############################################################</p>
<p>#Purpose: explicitly grant the API server permission to access kubelet resources such as node proxy, stats, logs, specs and metrics.</p>
<p>#Run on the Control Plane.</p>
<p># Create a ClusterRole granting the API server access to</p>
<p># selected kubelet/node subresources.</p>
<p>cat &lt;&lt;EOF | kubectl apply -f -</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: ClusterRole</p>
<p>metadata:</p>
<p>  annotations:</p>
<p>    rbac.authorization.kubernetes.io/autoupdate: "true"</p>
<p>  labels:</p>
<p>    kubernetes.io/bootstrapping: rbac-defaults</p>
<p>  name: system:kube-apiserver-to-kubelet</p>
<p>rules:</p>
<p>  - apiGroups:</p>
<p>      - ""</p>
<p>    resources:</p>
<p>      - nodes/proxy</p>
<p>      - nodes/stats</p>
<p>      - nodes/log</p>
<p>      - nodes/spec</p>
<p>      - nodes/metrics</p>
<p>    verbs:</p>
<p>      - "*"</p>
<p>EOF</p>
<p>############################################################</p>
<p># Bind the ClusterRole to the kube-apiserver identity</p>
<p>############################################################</p>
<p>cat &lt;&lt;EOF | kubectl apply -f -</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: ClusterRoleBinding</p>
<p>metadata:</p>
<p>  name: system:kube-apiserver</p>
<p>roleRef:</p>
<p>  apiGroup: rbac.authorization.k8s.io</p>
<p>  kind: ClusterRole</p>
<p>  name: system:kube-apiserver-to-kubelet</p>
<p>subjects:</p>
<p>  - apiGroup: rbac.authorization.k8s.io</p>
<p>    kind: User</p>
<p>    name: kube-apiserver</p>
<p>EOF</p>
<p>############################################################</p>
<p># Test Pod execution again</p>
<p>############################################################</p>
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
<p># STEP 17 - Configure Kubernetes DNS</p>
<p>############################################################</p>
<p>#Purpose: test cluster DNS first, then deploy CoreDNS.</p>
<p>#Control Plane Node</p>
<p># Check basic cluster/API connectivity.</p>
<p>kubectl cluster-info</p>
<p>############################################################</p>
<p># Create a temporary BusyBox Pod for DNS testing</p>
<p>############################################################</p>
<p>kubectl run busybox \</p>
<p>  --image=busybox:1.28 \</p>
<p>  --command -- \</p>
<p>  sleep 3600</p>
<p># Open a shell inside the BusyBox Pod.</p>
<p>kubectl exec -it busybox -- sh</p>
<p># Inside the BusyBox shell:</p>
<p>#</p>
<p># Test DNS resolution.</p>
<p>nslookup google.com</p>
<p># Test basic network connectivity.</p>
<p>ping 8.8.8.8</p>
<p># Exit the BusyBox shell when finished.</p>
<p>exit</p>
<p>############################################################</p>
<p># Install CoreDNS</p>
<p>############################################################</p>
<p># Download the CoreDNS manifest used by the course.</p>
<p>wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/master/Domain%206%20-%20Cluster%20Architecture%2C%20Installation%20%26%20Configuration/coredns.yaml</p>
<p># Create the CoreDNS resources.</p>
<p>kubectl create -f coredns.yaml</p>
<p>############################################################</p>
<p># Verify CoreDNS</p>
<p>############################################################</p>
<p># Check the DNS-related Pods.</p>
<p>kubectl get pods -n kube-system</p>
<p># Test DNS again from BusyBox.</p>
<p>kubectl exec -it busybox -- sh</p>
<p># Inside the container:</p>
<p>nslookup google.com</p>
<p># Exit when finished.</p>
<p>exit</p></td>
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
<p># STEP 18 - Configure kubelet preferred address type</p>
<p>############################################################</p>
<p>#STEP 18 — Configure Kubelet Preferred Address Type</p>
<p>#Purpose: this is a troubleshooting/configuration exercise showing how the API server chooses the address through which it communicates with kubelet.**</p>
<p>#Control Plane Node</p>
<p># Remove the worker entry from /etc/hosts.</p>
<p>#</p>
<p># This intentionally removes hostname-based resolution so we can</p>
<p># test how the API server discovers/uses the worker address.</p>
<p>sudo nano /etc/hosts</p>
<p>############################################################</p>
<p># Test connectivity to the nginx Pod</p>
<p>############################################################</p>
<p>kubectl exec -it nginx -- ls</p>
<p>############################################################</p>
<p># Inspect the worker node</p>
<p>############################################################</p>
<p>kubectl describe node worker</p>
<p>############################################################</p>
<p># Modify kube-apiserver configuration</p>
<p>############################################################</p>
<p>sudo nano /etc/systemd/system/kube-apiserver.service</p>
<p>Add this flag to the API server:</p>
<p># Tell the API server to prefer the worker's InternalIP</p>
<p># when communicating with kubelet.</p>
<p>--kubelet-preferred-address-types=InternalIP</p>
<p>############################################################</p>
<p># Reload and restart the API server</p>
<p>############################################################</p>
<p>sudo systemctl daemon-reload</p>
<p>sudo systemctl restart kube-apiserver</p>
<p># The course notes that the API server may take 2–3 minutes</p>
<p># to become fully available again.</p>
<p>Verify</p>
<p>############################################################</p>
<p># Verify kubelet connectivity</p>
<p>############################################################</p>
<p>kubectl exec -it nginx -- ls</p></td>
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
<p># STEP 19 — Breakdown / Failure Testing</p>
<p>############################################################</p>
<p>#This section is primarily a learning exercise, not additional cluster configuration.</p>
<p>#The idea is to deliberately stop individual Kubernetes components and observe what breaks and what continues working.</p>
<p> </p>
<p>#Control Plane</p>
<p>############################################################</p>
<p># STEP 19.1 - Test kube-scheduler failure</p>
<p>############################################################</p>
<p># Create a Pod before stopping the scheduler.</p>
<p>kubectl run nginx-before --image=nginx</p>
<p># Stop the scheduler.</p>
<p>sudo systemctl stop kube-scheduler</p>
<p># Confirm it is stopped.</p>
<p>sudo systemctl status kube-scheduler</p>
<p># Try creating another Pod.</p>
<p>kubectl run nginx-after --image=nginx</p>
<p># Check Pod status.</p>
<p>kubectl get pods</p>
<p># Inspect the Pod created before scheduler failure.</p>
<p>kubectl describe pod nginx-before</p>
<p>############################################################</p>
<p># Bring scheduler back</p>
<p>############################################################</p>
<p>sudo systemctl start kube-scheduler</p>
<p># Verify the Pods again.</p>
<p>kubectl get pods</p>
<p>Concept being demonstrated: the scheduler is responsible for deciding which node a newly created Pod should run on.</p>
<p>19.2 Test kubelet failure</p>
<p>Worker Node</p>
<p>############################################################</p>
<p># STEP 19.2 - Test kubelet failure</p>
<p>############################################################</p>
<p># Stop kubelet on the Worker Node.</p>
<p>sudo systemctl stop kubelet</p>
<p># Verify that kubelet is stopped.</p>
<p>sudo systemctl status kubelet</p>
<p>Control Plane Node</p>
<p>############################################################</p>
<p># Test Pod creation while worker kubelet is down</p>
<p>############################################################</p>
<p>kubectl run kubelet --image=nginx</p>
<p>kubectl get pods</p>
<p>Worker Node</p>
<p>############################################################</p>
<p># Bring kubelet back</p>
<p>############################################################</p>
<p>sudo systemctl start kubelet</p>
<p>Control Plane Node</p>
<p>############################################################</p>
<p># Verify cluster state</p>
<p>############################################################</p>
<p>kubectl get pods</p>
<p>#The course is demonstrating the distinction between the Kubernetes API accepting an object and the node's kubelet actually being able to run/manage containers.</p>
<p>19.3 Test Controller Manager failure</p>
<p>Control Plane Node</p>
<p>############################################################</p>
<p># STEP 19.3 - Test kube-controller-manager failure</p>
<p>############################################################</p>
<p># Create a namespace before stopping the controller manager.</p>
<p>kubectl create namespace namespace-1</p>
<p># Verify its ServiceAccount.</p>
<p>kubectl get sa -n namespace-1</p>
<p># Stop the controller manager.</p>
<p>sudo systemctl stop kube-controller-manager</p>
<p># Verify that it is stopped.</p>
<p>sudo systemctl status kube-controller-manager</p>
<p># Create another namespace while controller manager is down.</p>
<p>kubectl create namespace namespace-2</p>
<p># Check the ServiceAccounts.</p>
<p>kubectl get sa -n namespace-2</p>
<p>############################################################</p>
<p># Bring controller manager back</p>
<p>############################################################</p>
<p>sudo systemctl start kube-controller-manager</p>
<p># Verify namespaces.</p>
<p>kubectl get namespace</p>
<p># Verify the ServiceAccount for namespace-2.</p>
<p>kubectl get sa -n namespace-2</p></td>
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
<p>############################################################</p>
<p># STEP 20 - etcd Backup and Restore Exercise</p>
<p>############################################################</p>
<p>#This section is an etcd backup/restore exercise. It is somewhat separate from your running single-node etcd configuration, but it demonstrates a critical Kubernetes administration operation: backing up the cluster's persistent state. The course material uses a separate etcd setup for this exercise.</p>
<p>#Common setup on the etcd servers</p>
<p># Create directories for certificates and binaries.</p>
<p>sudo mkdir -p /root/certificates</p>
<p>sudo mkdir -p /root/binaries</p>
<p>############################################################</p>
<p># Install required utilities</p>
<p>############################################################</p>
<p># NOTE:</p>
<p># The course material uses yum because this exercise was written</p>
<p># for a yum-based environment.</p>
<p>#</p>
<p># On your Ubuntu VMs, use apt instead if you actually execute</p>
<p># this exercise.</p>
<p>#</p>
<p># This section is primarily preserved as course material.  The course then downloads etcd v3.4.0, creates an etcd CA/certificate, configures an etcd systemd service, and starts it.</p>
<p>#</p>
<p># If you are actually executing this on your Ubuntu Kubernetes VMs, don't blindly run the yum commands or replace your existing etcd installation with v3.4.0; this part of the course is a separate backup/restore exercise.</p>
<p>Server 1 — create test data and backup</p>
<p>############################################################</p>
<p># STEP 20.1 - Create test data in etcd</p>
<p>############################################################</p>
<p># Store a test key/value.</p>
<p>ETCDCTL_API=3 etcdctl \</p>
<p>  --endpoints=https://127.0.0.1:2379 \</p>
<p>  --cacert=/etc/etcd/ca.crt \</p>
<p>  --cert=/etc/etcd/etcd.crt \</p>
<p>  --key=/etc/etcd/etcd.key \</p>
<p>  put course "kplabs cka course is awesome"</p>
<p># Verify the value.</p>
<p>ETCDCTL_API=3 etcdctl \</p>
<p>  --endpoints=https://127.0.0.1:2379 \</p>
<p>  --cacert=/etc/etcd/ca.crt \</p>
<p>  --cert=/etc/etcd/etcd.crt \</p>
<p>  --key=/etc/etcd/etcd.key \</p>
<p>  get course</p>
<p>############################################################</p>
<p># Take an etcd snapshot</p>
<p>############################################################</p>
<p># Save a backup of the etcd database.</p>
<p>ETCDCTL_API=3 etcdctl \</p>
<p>  --endpoints=https://127.0.0.1:2379 \</p>
<p>  --cacert=/etc/etcd/ca.crt \</p>
<p>  --cert=/etc/etcd/etcd.crt \</p>
<p>  --key=/etc/etcd/etcd.key \</p>
<p>  snapshot save /tmp/snapshot.db</p>
<p># Inspect the snapshot.</p>
<p>etcdctl --write-out=table snapshot status /tmp/snapshot.db</p>
<p>Server 2 — restore exercise</p>
<p>############################################################</p>
<p># STEP 20.2 - Transfer snapshot to Server 2</p>
<p>############################################################</p>
<p># The course creates a temporary user for file transfer.</p>
<p>sudo useradd -m zeal</p>
<p># Set a temporary password when prompted.</p>
<p>sudo passwd zeal</p>
<p>############################################################</p>
<p># Temporarily enable SSH password authentication</p>
<p>############################################################</p>
<p>sudo nano /etc/ssh/sshd_config</p>
<p># Set:</p>
<p>#</p>
<p># PasswordAuthentication yes</p>
<p>sudo systemctl restart ssh</p>
<p>Server 1:</p>
<p>############################################################</p>
<p># Copy the etcd snapshot to Server 2</p>
<p>############################################################</p>
<p>scp /tmp/snapshot.db zeal@SERVER2-IP:/tmp</p>
<p>Server 2:</p>
<p>############################################################</p>
<p># Restore the etcd snapshot</p>
<p>############################################################</p>
<p>cd /tmp</p>
<p>ETCDCTL_API=3 etcdctl \</p>
<p>  --endpoints=https://127.0.0.1:2379 \</p>
<p>  --cacert=/etc/etcd/ca.crt \</p>
<p>  --cert=/etc/etcd/etcd.crt \</p>
<p>  --key=/etc/etcd/etcd.key \</p>
<p>  snapshot restore snapshot.db</p>
<p>############################################################</p>
<p># Stop etcd before replacing its data directory</p>
<p>############################################################</p>
<p>sudo systemctl stop etcd</p>
<p># WARNING:</p>
<p># This removes the existing etcd data from this exercise server.</p>
<p>sudo rm -rf /var/lib/etcd/*</p>
<p>############################################################</p>
<p># Replace the etcd data with restored snapshot data</p>
<p>############################################################</p>
<p>sudo mv /tmp/default.etcd/* /var/lib/etcd</p>
<p>############################################################</p>
<p># Start etcd again</p>
<p>############################################################</p>
<p>sudo systemctl start etcd</p>
<p>############################################################</p>
<p># Verify restored data</p>
<p>############################################################</p>
<p>ETCDCTL_API=3 etcdctl \</p>
<p>  --endpoints=https://127.0.0.1:2379 \</p>
<p>  --cacert=/etc/etcd/ca.crt \</p>
<p>  --cert=/etc/etcd/etcd.crt \</p>
<p>  --key=/etc/etcd/etcd.key \</p>
<p>  get course</p></td>
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
<p># STEP 21 — Understand NetworkPolicy Structure</p>
<p>############################################################</p>
<p>#This final section is conceptual/practice-oriented: you're learning the structure of a Kubernetes NetworkPolicy, then creating and deleting one.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: demo-network-policy</p>
<p>spec:</p>
<p>  # Apply this policy to Pods having:</p>
<p>  # env=production</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      env: production</p>
<p>  # This policy controls both incoming and outgoing traffic.</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p>  # Allow incoming traffic from Pods labelled:</p>
<p>  # env=security</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - podSelector:</p>
<p>            matchLabels:</p>
<p>              env: security</p>
<p>  # Allow outgoing traffic to 8.8.8.8.</p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - ipBlock:</p>
<p>            cidr: 8.8.8.8/32</p>
<p>Save that as:</p>
<p>first-netpol.yaml</p>
<p>Then:</p>
<p>############################################################</p>
<p># Create the NetworkPolicy</p>
<p>############################################################</p>
<p>kubectl create -f first-netpol.yaml</p>
<p>############################################################</p>
<p># Inspect the NetworkPolicy</p>
<p>############################################################</p>
<p>kubectl describe netpol demo-network-policy</p>
<p>############################################################</p>
<p># Delete the NetworkPolicy after the exercise</p>
<p>############################################################</p>
<p>kubectl delete -f first-netpol.yaml</p>
<p>The key structure to remember from this exercise is:</p>
<p>NetworkPolicy</p>
<p>   |</p>
<p>   +-- podSelector      -&gt; WHICH pods does this policy apply to?</p>
<p>   |</p>
<p>   +-- policyTypes      -&gt; Ingress / Egress</p>
<p>   |</p>
<p>   +-- ingress.from     -&gt; WHO can connect in?</p>
<p>   |</p>
<p>   +-- egress.to        -&gt; WHERE can traffic go?</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image730.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 22 — Practical: Network Policies</p>
<p>############################################################</p>
<p>#Purpose: hands-on practice with NetworkPolicy behavior: default deny, allow rules, pod selectors, namespace selectors, and IP-based egress.</p>
<p>#Example 1 — Base/default-deny policy</p>
<p> </p>
<p># Example 1: Apply the policy to ALL pods in the namespace.</p>
<p># Because Ingress and Egress are listed, both directions become isolated.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-1</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p># Create a test Pod.</p>
<p>kubectl run test-pod --image=alpine/curl -- sleep 36000</p>
<p># Verify the Pod.</p>
<p>kubectl get pods</p>
<p># Open a shell inside the Pod.</p>
<p>kubectl exec -it test-pod -- sh</p>
<p># Inside the Pod, test connectivity.</p>
<p>ping google.com</p>
<p># Exit the Pod shell.</p>
<p>exit</p>
<p># Apply the NetworkPolicy.</p>
<p>kubectl create -f example-1.yaml</p>
<p># List NetworkPolicies.</p>
<p>kubectl get netpol</p>
<p># Inspect the policy.</p>
<p>kubectl describe netpol example-1</p>
<p># Test connectivity again.</p>
<p>kubectl exec -it test-pod -- sh</p>
<p># Inside the Pod, test external connectivity.</p>
<p>ping google.com</p>
<p># Exit.</p>
<p>exit</p>
<p># Remove the policy.</p>
<p>kubectl delete -f example-1.yaml</p>
<p>Example 2 — Allow all ingress</p>
<p># Example 2:</p>
<p># Apply the policy to all Pods.</p>
<p># Empty ingress rule means ingress is explicitly allowed.</p>
<p># Egress remains isolated because Egress is also listed in policyTypes.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-2</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  ingress:</p>
<p>    - {}</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p># Create the policy.</p>
<p>kubectl create -f example-2.yaml</p>
<p># Inspect the policy.</p>
<p>kubectl describe netpol example-2</p>
<p># Create another Pod in the default namespace.</p>
<p>kubectl run random-pod --image=alpine/curl -- sleep 36000</p>
<p>kubectl get pods -o wide</p>
<p># Test communication to test-pod.</p>
<p>kubectl exec -it random-pod -- sh</p>
<p>ping &lt;IP-OF-TEST-POD&gt;</p>
<p>exit</p>
<p># Create a separate namespace.</p>
<p>kubectl create ns testing</p>
<p># Create another Pod in that namespace.</p>
<p>kubectl run random-pod -n testing --image=alpine/curl -- sleep 36000</p>
<p>kubectl get pods -n testing</p>
<p># Test communication from another namespace.</p>
<p>kubectl exec -it random-pod -n testing -- sh</p>
<p>ping &lt;IP-OF-TEST-POD&gt;</p>
<p>exit</p>
<p>Example 3 — Select specific Pods</p>
<p># Example 3:</p>
<p># This policy applies ONLY to Pods labelled role=suspicious.</p>
<p># Both ingress and egress are isolated for those selected Pods.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-3</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: suspicious</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p># Create the policy.</p>
<p>kubectl create -f example-3.yaml</p>
<p># Create a Pod.</p>
<p>kubectl run suspicious-pod --image=alpine/curl -- sleep 36000</p>
<p># Give the Pod the label targeted by the policy.</p>
<p>kubectl label pod suspicious-pod role=suspicious</p>
<p># Test connectivity from the selected Pod.</p>
<p>kubectl exec -it suspicious-pod -- sh</p>
<p>ping google.com</p>
<p>exit</p>
<p>Example 4 — Allow ingress from selected Pods</p>
<p># Example 4:</p>
<p># Apply this policy to Pods labelled role=database.</p>
<p># Only Pods labelled role=app are allowed to connect IN.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-4</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: database</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - podSelector:</p>
<p>            matchLabels:</p>
<p>              role: app</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p># Create the policy.</p>
<p>kubectl create -f example-4.yaml</p>
<p># Create application and database Pods.</p>
<p>kubectl run app-pod --image=alpine/curl -- sleep 36000</p>
<p>kubectl run database-pod --image=alpine/curl -- sleep 36000</p>
<p>kubectl get pods -o wide</p>
<p># Initially test from the unlabelled app Pod.</p>
<p>kubectl exec -it test-pod -- sh</p>
<p>ping &lt;DB-POD-IP&gt;</p>
<p>exit</p>
<p># Label app-pod so it matches the NetworkPolicy.</p>
<p>kubectl label pod app-pod role=app</p>
<p># Test again from the allowed Pod.</p>
<p>kubectl exec -it app-pod -- sh</p>
<p>ping &lt;DB-POD-IP&gt;</p>
<p>exit</p>
<p># Remove the policy.</p>
<p>kubectl delete -f example-4.yaml</p>
<p>Example 5 — Allow traffic from a namespace</p>
<p># Example 5:</p>
<p># The policy lives in the production namespace.</p>
<p># It applies to all Pods in production.</p>
<p># Ingress is allowed from Pods in the security namespace.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-5</p>
<p>  namespace: production</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - namespaceSelector:</p>
<p>            matchLabels:</p>
<p>              kubernetes.io/metadata.name: security</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p># Create the namespaces.</p>
<p>kubectl create ns production</p>
<p>kubectl create ns security</p>
<p># Inspect namespace labels.</p>
<p>kubectl get ns --show-labels</p>
<p># Create Pods in each namespace.</p>
<p>kubectl run prod-pod -n production --image=alpine/curl -- sleep 36000</p>
<p>kubectl run security-pod -n security --image=alpine/curl -- sleep 36000</p>
<p># Test connectivity from security -&gt; production.</p>
<p>kubectl exec -it security-pod -n security -- sh</p>
<p>ping &lt;Prod-POD-IP-Of-Production-namespace&gt;</p>
<p>exit</p>
<p># Apply the NetworkPolicy.</p>
<p>kubectl create -f example-5.yaml</p>
<p>Example 6 — Allow egress to an IP</p>
<p># Example 6:</p>
<p># Apply the policy to all Pods in production.</p>
<p># Egress is allowed to 8.8.8.8/32.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-6</p>
<p>  namespace: production</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - ipBlock:</p>
<p>            cidr: 8.8.8.8/32</p>
<p>  policyTypes:</p>
<p>    - Egress</p>
<p># Create the policy.</p>
<p>kubectl create -f example-6.yaml</p>
<p># Test egress from the production Pod.</p>
<p>kubectl exec -it prod-pod -n production -- sh</p>
<p>ping 8.8.8.8</p>
<p>exit</p>
<p># Remove the policy.</p>
<p>kubectl delete -f example-6.yaml</p>
<p># Clean up test resources.</p>
<p>kubectl delete pods --all</p>
<p>kubectl delete pod security-pod -n security</p>
<p>kubectl delete pod prod-pod -n production</p>
<p>kubectl delete pods --all -n testing</p>
<p>kubectl delete ns testing</p>
<p>kubectl delete ns production</p>
<p>kubectl delete ns security</p></td>
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
<p>kubectl get pods -A -o wide</p>
<p>    admin@k8cp:~/Desktop$ kubectl get pods -A -o wide</p>
<p>    NAMESPACE          NAME                                       READY   STATUS    RESTARTS       AGE     IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>    calico-apiserver   calico-apiserver-66485d5db4-2slzb          1/1     Running   4 (18m ago)    3d22h   10.244.178.92   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-apiserver   calico-apiserver-66485d5db4-gjbkm          1/1     Running   4 (18m ago)    3d22h   10.244.178.93   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   4 (18m ago)    3d22h   10.244.178.90   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-node-c4n77                          1/1     Running   5 (10m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-node-pr74q                          1/1     Running   3 (18m ago)    3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-typha-77f8575c68-l7dv6              1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      csi-node-driver-d9qzs                      2/2     Running   8 (18m ago)    3d22h   10.244.178.94   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      csi-node-driver-js8zv                      2/2     Running   6 (18m ago)    3d11h   10.244.245.69   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        coredns-668d6bf9bc-k4jr2                   1/1     Running   4 (18m ago)    3d22h   10.244.178.89   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        coredns-668d6bf9bc-pbn5j                   1/1     Running   4 (18m ago)    3d22h   10.244.178.91   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        etcd-k8cp                                  1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-apiserver-k8cp                        1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-controller-manager-k8cp               1/1     Running   12 (11m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-proxy-lfthl                           1/1     Running   4 (18m ago)    3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-proxy-x62pg                           1/1     Running   3 (18m ago)    3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-scheduler-k8cp                        1/1     Running   13 (11m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    tigera-operator    tigera-operator-7d68577dc5-hpkqk           1/1     Running   11 (16m ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#We running Calico, so NetworkPolicy enforcement is available.</p>
<p>#Next, let's see which Calico mode/configuration you're running, because that affects what we can inspect underneath.</p>
<p>kubectl get felixconfiguration default -o yaml</p>
<p>    admin@k8cp:~/Desktop$ kubectl get felixconfiguration default -o yaml</p>
<p>    apiVersion: projectcalico.org/v3</p>
<p>    kind: FelixConfiguration</p>
<p>    metadata:</p>
<p>    annotations:</p>
<p>        operator.tigera.io/bpfEnabled: "false"</p>
<p>    creationTimestamp: "2026-08-08T20:32:20Z"</p>
<p>    generation: 1</p>
<p>    name: default</p>
<p>    resourceVersion: "2391"</p>
<p>    uid: 415bc064-208f-474f-a72f-f6852c81284f</p>
<p>    spec:</p>
<p>    bpfConnectTimeLoadBalancing: TCP</p>
<p>    bpfEnabled: false</p>
<p>    bpfHostNetworkedNATWithoutCTLB: Enabled</p>
<p>    bpfLogLevel: ""</p>
<p>    floatingIPs: Disabled</p>
<p>    healthPort: 9099</p>
<p>    logSeverityScreen: Info</p>
<p>    nftablesMode: Disabled</p>
<p>    reportingInterval: 0s</p>
<p>    vxlanVNI: 4096</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#This confirms Calico is using its non-eBPF dataplane here (bpfEnabled: false), so for our experiments we can later inspect the Linux networking rules Calico installs.</p>
<p>#Next, let's establish a baseline before applying any NetworkPolicy.</p>
<p>kubectl get ns</p>
<p>    admin@k8cp:~/Desktop$ kubectl get ns</p>
<p>    NAME               STATUS   AGE</p>
<p>    calico-apiserver   Active   3d22h</p>
<p>    calico-system      Active   3d22h</p>
<p>    default            Active   3d22h</p>
<p>    kube-node-lease    Active   3d22h</p>
<p>    kube-public        Active   3d22h</p>
<p>    kube-system        Active   3d22h</p>
<p>    tigera-operator    Active   3d22h</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>kubectl get networkpolicy -n default</p>
<p>    admin@k8cp:~/Desktop$ kubectl get networkpolicy -n default</p>
<p>    No resources found in default namespace.</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#no NetworkPolicy is currently applied in default, so traffic should be unrestricted by NetworkPolicy.</p>
<p>#Next, let's create two tiny test Pods (client and server) so we can observe the behavior ourselves:</p>
<p>kubectl run server --image=nginx --restart=Never</p>
<p>kubectl run client --image=curlimages/curl --restart=Never -- sleep 3600</p>
<p>kubectl get pods -o wide</p>
<p>    NAME     READY   STATUS    RESTARTS   AGE    IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>    client   1/1     Running   0          66s    10.244.245.71   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    server   1/1     Running   0          115s   10.244.245.70   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$</p>
<p># Test baseline connectivity: client should be able to reach the server Pod on nginx port 80.</p>
<p>kubectl exec client -- curl -s --connect-timeout 3 http://10.244.245.70</p>
<p>    admin@k8cp:~/Desktop$ # Test baseline connectivity: client should be able to reach the server Pod on nginx port 80.</p>
<p>    kubectl exec client -- curl -s --connect-timeout 3 http://10.244.245.70</p>
<p>    &lt;!DOCTYPE html&gt;</p>
<p>    &lt;html&gt;</p>
<p>    &lt;head&gt;</p>
<p>    &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p> </p>
<p># Create an ingress NetworkPolicy that selects the server Pod and allows NO ingress traffic.</p>
<p>kubectl apply -f - &lt;&lt;'EOF'</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: <mark>deny-server-ingress</mark></p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      run: server</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>EOF</p>
<p> </p>
<p># Test the same client → server traffic again; it should now time out because server ingress is denied.</p>
<p>kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70</p>
<p>    admin@k8cp:~/Desktop$ # Test the same client → server traffic again; it should now time out because server ingress is denied.</p>
<p>    kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70</p>
<p>    command terminated with exit code 28</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#Exit code 28 = curl timed out, confirming the NetworkPolicy is actively blocking ingress to server.</p>
<p>#Next, let's inspect the policy we just created:</p>
<p># Inspect the NetworkPolicy and verify which Pod it selects and what traffic type it isolates.</p>
<p>kubectl describe networkpolicy deny-server-ingress</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$ # Inspect the NetworkPolicy and verify which Pod it selects and what traffic type it isolates.</p>
<p>    kubectl describe networkpolicy deny-server-ingress</p>
<p>    Name:         deny-server-ingress</p>
<p>    Namespace:    default</p>
<p>    Created on:   2026-08-12 18:51:13 +0000 UTC</p>
<p>    Labels:       &lt;none&gt;</p>
<p>    Annotations:  &lt;none&gt;</p>
<p>    Spec:</p>
<p>    PodSelector:     run=server</p>
<p>    Allowing ingress traffic:</p>
<p>        &lt;none&gt; (Selected pods are isolated for ingress connectivity)</p>
<p>    Not affecting egress traffic</p>
<p>    Policy Types: Ingress</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#This confirms an important NetworkPolicy rule:</p>
<p>#Once a Pod is selected by an Ingress policy, ingress becomes default-deny unless explicitly allowed. Egress remains untouched.</p>
<p>#Next, let's prove the policy is only affecting the server Pod, not the client:</p>
<p># Test client → its own network namespace; this should still work because the policy selects only server.</p>
<p>kubectl exec client -- sh -c 'echo client-is-alive'</p>
<p>    admin@k8cp:~/Desktop$ # Test client → its own network namespace; this should still work because the policy selects only server.</p>
<p>    kubectl exec client -- sh -c 'echo client-is-alive'</p>
<p>    client-is-alive</p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#that confirms the policy is selectively isolating only the server Pod. The client itself is unaffected.</p>
<p>#Next, let's explicitly allow only client → server ingress using Pod labels:</p>
<p># Replace deny-all ingress with an allow rule: only Pods labeled run=client can reach server on TCP/80.</p>
<p>kubectl apply -f - &lt;&lt;'EOF'</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: <mark>allow-client-to-server</mark></p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      run: server</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - podSelector:</p>
<p>            matchLabels:</p>
<p>              run: client</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 80</p>
<p>EOF</p>
<p>networkpolicy.networking.k8s.io/allow-client-to-server created</p>
<p>admin@k8cp:~/Desktop$</p>
<p>#Check the network policies that are created.</p>
<p>admin@k8cp:~/Desktop$ kubectl get networkpolicy -n default</p>
<p>NAME                     POD-SELECTOR   AGE</p>
<p>allow-client-to-server   run=server     17m</p>
<p>deny-server-ingress      run=server     21m</p>
<p>admin@k8cp:~/Desktop$</p>
<p>kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70</p>
<p>    admin@k8cp:~/Desktop$ # Test the newly allowed path: client → server on TCP/80 should work again.</p>
<p>    kubectl exec client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.70</p>
<p>    &lt;!DOCTYPE html&gt;</p>
<p>    &lt;html&gt;</p>
<p>    &lt;head&gt;</p>
<p>    &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>    &lt;style&gt;</p>
<p>    html { color-scheme: light dark; }</p>
<p>    body { width: 35em; margin: 0 auto;</p>
<p>    font-family: Tahoma, Verdana, Arial, sans-serif; }</p>
<p>    &lt;/style&gt;</p>
<p>    &lt;/head&gt;</p>
<p>    &lt;body&gt;</p>
<p>    &lt;h1&gt;Welcome to nginx!&lt;/h1&gt;</p>
<p> </p>
<p>#we've now demonstrated the basic allow-list behavior:</p>
<p>#client → server:80 ✅ allowed.</p>
<p>#Let's test that the rule is actually restricted to TCP/80. Since nginx listens on 80, first we'll inspect the server's listening ports:</p>
<p>kubectl exec server -- sh -c 'cat /proc/net/tcp'</p>
<p>    admin@k8cp:~/Desktop$ # Check which TCP ports the server Pod is actually listening on.</p>
<p>    kubectl exec server -- sh -c 'cat /proc/net/tcp'</p>
<p>    sl  local_address rem_address   st tx_queue rx_queue tr tm-&gt;when retrnsmt   uid  timeout inode                                                    </p>
<p>    0: 00000000:0050 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 44970 1 0000000000000000 100 0 0 10 0                    </p>
<p>    admin@k8cp:~/Desktop$</p>
<p>#0050 is hexadecimal for port 80, and state 0A means LISTEN. So nginx is listening exactly where we expected.</p>
<p>#Next, let's inspect the actual NetworkPolicy rules Calico has programmed underneath:</p>
<p>admin@k8cp:~/Desktop$ # Find the Calico node running on k8dp1, then inspect its relevant policy programming/logical state.</p>
<p>kubectl get pods -n calico-system -l k8s-app=calico-node -o wide</p>
<p>NAME                READY   STATUS    RESTARTS      AGE     IP             NODE    NOMINATED NODE   READINESS GATES</p>
<p>calico-node-c4n77   1/1     Running   5 (22m ago)   3d22h   192.168.1.16   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>calico-node-pr74q   1/1     Running   3 (31m ago)   3d11h   192.168.1.17   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~/Desktop$</p>
<p>#both Pods are on k8dp1, and Calico's node agent there is calico-node-pr74q. This is the node where we should inspect the enforcement path.</p>
<p>#What we've proven</p>
<p>                    BEFORE POLICY</p>
<p>client ─────────────────────────────→ server:80</p>
<p>                  ✅ ALLOWED</p>
<p>              deny-server-ingress</p>
<p>                         ↓</p>
<p>client ─────────────────────────────→ server:80</p>
<p>                  ❌ BLOCKED</p>
<p>                  curl exit 28</p>
<p>             allow-client-to-server</p>
<p>                         ↓</p>
<p>client ─────────────────────────────→ server:80</p>
<p>                  ✅ ALLOWED</p></td>
</tr>
<tr>
<td><p>→Clean up</p>
<p># Delete the NetworkPolicies created during the Pod-level experiment.</p>
<p>kubectl delete networkpolicy deny-server-ingress allow-client-to-server -n default</p>
<p># Delete the test Pods.</p>
<p>kubectl delete pod client server -n default</p></td>
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
<p>kubectl create namespace client-ns</p>
<p>kubectl create namespace server-ns</p>
<p># Create an nginx server in server-ns and a curl client in client-ns.</p>
<p>kubectl run server -n server-ns --image=nginx --restart=Never</p>
<p>kubectl run client -n client-ns --image=curlimages/curl --restart=Never -- sleep 3600</p>
<p>    admin@k8cp:~/Desktop$ kubectl get pods -A -o wide</p>
<p>    NAMESPACE          NAME                                       READY   STATUS    RESTARTS        AGE     IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>    calico-apiserver   calico-apiserver-66485d5db4-2slzb          1/1     Running   4 (57m ago)     3d22h   10.244.178.92   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-apiserver   calico-apiserver-66485d5db4-gjbkm          1/1     Running   4 (57m ago)     3d22h   10.244.178.93   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-kube-controllers-697dcb9bb7-8dwkb   1/1     Running   4 (57m ago)     3d22h   10.244.178.90   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-node-c4n77                          1/1     Running   6 (16m ago)     3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-node-pr74q                          1/1     Running   3 (57m ago)     3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      calico-typha-77f8575c68-l7dv6              1/1     Running   5 (16m ago)     3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      csi-node-driver-d9qzs                      2/2     Running   8 (57m ago)     3d22h   10.244.178.94   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    calico-system      csi-node-driver-js8zv                      2/2     Running   6 (57m ago)     3d11h   10.244.245.69   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    client-ns          client                                     1/1     Running   0               2m1s    10.244.245.73   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        coredns-668d6bf9bc-k4jr2                   1/1     Running   4 (57m ago)     3d23h   10.244.178.89   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        coredns-668d6bf9bc-pbn5j                   1/1     Running   4 (57m ago)     3d23h   10.244.178.91   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        etcd-k8cp                                  1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-apiserver-k8cp                        1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-controller-manager-k8cp               1/1     Running   17 (2m3s ago)   3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-proxy-lfthl                           1/1     Running   4 (57m ago)     3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-proxy-x62pg                           1/1     Running   3 (57m ago)     3d11h   192.168.1.17    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    kube-system        kube-scheduler-k8cp                        1/1     Running   18 (2m3s ago)   3d23h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    server-ns          server                                     1/1     Running   0               2m2s    10.244.245.72   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    tigera-operator    tigera-operator-7d68577dc5-hpkqk           1/1     Running   15 (2m3s ago)   3d22h   192.168.1.16    k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~/Desktop$</p>
<p># Test baseline cross-namespace connectivity: client-ns → server-ns should currently be allowed.</p>
<p>kubectl exec -n client-ns client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.72</p>
<p>    &lt;!DOCTYPE html&gt;</p>
<p>    &lt;html&gt;</p>
<p>    &lt;head&gt;</p>
<p>    &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p># Apply an ingress policy to server-ns that allows traffic only from Pods in the same namespace.</p>
<p>kubectl apply -f - &lt;&lt;'EOF'</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: allow-same-namespace</p>
<p>  namespace: server-ns</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      run: server</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - podSelector: {}</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 80</p>
<p>EOF</p>
<p>admin@k8cp:~/Desktop$ # Show the NetworkPolicy we created for the namespace-level experiment.</p>
<p>kubectl get networkpolicy -n server-ns</p>
<p>NAME                   POD-SELECTOR   AGE</p>
<p>allow-same-namespace   run=server     4m10s</p>
<p>admin@k8cp:~/Desktop$</p>
<p>admin@k8cp:~/Desktop$</p>
<p>admin@k8cp:~/Desktop$ # Test cross-namespace traffic: client-ns → server-ns should now be blocked because only same-namespace Pods are allowed.</p>
<p>kubectl exec -n client-ns client -- curl -s --connect-timeout 3 --max-time 5 http://10.244.245.72</p>
<p>command terminated with exit code 28</p>
<p>admin@k8cp:~/Desktop$</p>
<p>#We've now proven the namespace-level restriction: client-ns → server-ns is blocked because the policy only permits Pods from server-ns itself.</p>
<p> </p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Clean up</p>
<p># Delete the namespace-level NetworkPolicy and the test Pods.</p>
<p>kubectl delete networkpolicy allow-same-namespace -n server-ns</p>
<p>kubectl delete pod client -n client-ns</p>
<p>kubectl delete pod server -n server-ns</p>
<p># Delete the temporary namespaces.</p>
<p>kubectl delete namespace client-ns server-ns</p></td>
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
<p># Create a temporary Pod for testing Pod → external IP traffic.</p>
<p>kubectl run external-client --image=curlimages/curl --restart=Never -- sleep 3600</p>
<p> </p>
<p>admin@k8cp:~$ # Verify the test Pod is running before testing external connectivity.</p>
<p>kubectl get pod external-client -o wide</p>
<p>NAME              READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>external-client   1/1     Running   0          16s   10.244.245.75   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Test baseline Pod → external connectivity; this should return a response if internet access is available.</p>
<p>kubectl exec external-client -- curl -I -s --connect-timeout 5 --max-time 10 https://example.com</p>
<p> </p>
<p>HTTP/2 200</p>
<p>date: Thu, 13 Aug 2026 14:41:12 GMT</p>
<p>content-type: text/html</p>
<p>server: cloudflare</p>
<p>last-modified: Wed, 12 Aug 2026 20:15:57 GMT</p>
<p>allow: GET, HEAD</p>
<p>accept-ranges: bytes</p>
<p>age: 10329</p>
<p>cf-cache-status: HIT</p>
<p>cf-ray: a2a87ab71eb4055d-LIS</p>
<p>admin@k8cp:~$</p>
<p>#baseline confirmed: Pod → external internet works.</p>
<p># Apply an egress policy that allows the Pod to reach only 93.184.216.34/32 (example.com).</p>
<p>kubectl apply -f - &lt;&lt;'EOF'</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: allow-example-only</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      run: external-client</p>
<p>  policyTypes:</p>
<p>    - <mark>Egress</mark></p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - ipBlock:</p>
<p>            cidr: 93.184.216.34/32</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 443</p>
<p>EOF</p>
<p>admin@k8cp:~$ k get netpol</p>
<p>NAME                 POD-SELECTOR          AGE</p>
<p>allow-example-only   run=external-client   22s</p>
<p>admin@k8cp:~$</p>
<p>admin@k8cp:~$ # Test the allowed destination: external-client → example.com should still work.</p>
<p>kubectl exec external-client -- curl -I -s --connect-timeout 5 --max-time 10 https://example.com</p>
<p>command terminated with exit code 28</p>
<p>admin@k8cp:~$</p>
<p>#enough to prove the main ipBlock point, with one important wording correction:</p>
<p>#✅ Baseline: Pod could reach the internet.</p>
<p>#✅ After Egress ipBlock policy: traffic became restricted, and example.com timed out.</p>
<p>#⚠️ The failure does not prove that 93.184.216.34 itself was blocked; DNS was also blocked by the policy, so the hostname could no longer resolve.</p>
<p>#So your takeaway is:</p>
<p>#ipBlock can restrict Pod egress to specific IP/CIDR ranges; once an Egress policy selects a Pod, only explicitly allowed destinations/ports are permitted.</p>
<p>#That's the core concept we wanted to demonstrate.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Clean up</p>
<p># Remove the final ipBlock test policy and temporary Pod.</p>
<p>kubectl delete networkpolicy allow-example-only --ignore-not-found</p>
<p>kubectl delete pod external-client --ignore-not-found</p></td>
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
<p># NetworkPolicy Examples</p>
<p>############################################################</p>
<p>#Example 1 → Default deny: Ingress + Egress</p>
<p>#Example 2 → Allow all Ingress, deny Egress</p>
<p>#Example 3 → Select specific Pods using podSelector</p>
<p>#Example 4 → Pod → Pod using podSelector</p>
<p>#Example 5 → Namespace → Namespace using namespaceSelector</p>
<p>#Example 6 → IP/CIDR filtering using ipBlock</p>
<p>############################################################</p>
<p># Example 1 — Default Deny Ingress + Egress</p>
<p>############################################################</p>
<p> </p>
<p># Create a NetworkPolicy that selects ALL Pods and denies both ingress and egress.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-1</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p>EOF</p>
<p>admin@k8cp:~$ k get netpol</p>
<p>NAME        POD-SELECTOR   AGE</p>
<p>example-1   &lt;none&gt;         8s</p>
<p>admin@k8cp:~$</p>
<p># Create a test Pod.</p>
<p>kubectl run test-pod --image=alpine/curl -- sleep 36000</p>
<p># Verify the Pod.</p>
<p>kubectl get pods</p>
<p>NAME       READY   STATUS    RESTARTS   AGE</p>
<p>test-pod   1/1     Running   0          6s</p>
<p>admin@k8cp:~$</p>
<p> </p>
<p>kubectl exec -it test-pod -- sh</p>
<p>#Inside the Pod:</p>
<p># Test external connectivity.</p>
<p>ping google.com</p>
<p># Test HTTP connectivity.</p>
<p>curl https://google.com</p>
<p># Verify the NetworkPolicy.</p>
<p>kubectl get netpol</p>
<p>kubectl describe netpol example-1</p>
<p># Create a second Pod that will act as the ingress client. This way we can test 'ingress' connectivity also fails.</p>
<p>kubectl run client-pod --image=alpine/curl -- sleep 36000</p>
<p># Get both Pod IPs so we know the destination.</p>
<p>kubectl get pods -o wide</p>
<p>admin@k8cp:~$ kubectl get pods -o wide</p>
<p>NAME         READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>client-pod   1/1     Running   0          29s   10.244.245.77   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>test-pod     1/1     Running   0          65m   10.244.245.76   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Test ingress into test-pod from client-pod.</p>
<p>kubectl exec client-pod -- ping -c 3 10.244.245.76</p>
<p>admin@k8cp:~$ # Test ingress into test-pod from client-pod.</p>
<p>kubectl exec client-pod -- ping -c 3 10.244.245.76</p>
<p>PING 10.244.245.76 (10.244.245.76): 56 data bytes</p>
<p>--- 10.244.245.76 ping statistics ---</p>
<p>3 packets transmitted, 0 packets received, 100% packet loss</p>
<p>command terminated with exit code 1</p>
<p>admin@k8cp:~$</p>
<p># Remove Example 1 before moving to the next experiment.</p>
<p>kubectl delete networkpolicy example-1</p>
<p> </p>
<p>networkpolicy.networking.k8s.io "example-1" deleted</p>
<p>admin@k8cp:~$</p>
<p># After removing, let us do ping test again to verify that connectivity is restored. Notice now it works.</p>
<p>admin@k8cp:~$ kubectl exec client-pod -- ping -c 3 10.244.245.76</p>
<p>PING 10.244.245.76 (10.244.245.76): 56 data bytes</p>
<p>64 bytes from 10.244.245.76: seq=0 ttl=63 time=0.437 ms</p>
<p>64 bytes from 10.244.245.76: seq=1 ttl=63 time=0.097 ms</p>
<p>64 bytes from 10.244.245.76: seq=2 ttl=63 time=0.102 ms</p>
<p>--- 10.244.245.76 ping statistics ---</p>
<p>3 packets transmitted, 3 packets received, 0% packet loss</p>
<p>round-trip min/avg/max = 0.097/0.212/0.437 ms</p></td>
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
<p># Example 2 — Allow All Ingress, Deny Egress</p>
<p>############################################################</p>
<p>→Note that inorder to test ‘ingress’ we need to actually do it from different namespace.</p>
<p>→This is because the policy under the namespace will disallow ‘egress’, so all pods will get that policy and while inside the pod we cannot reach anything out.</p>
<p># Select ALL Pods, allow all ingress, but leave egress denied.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-2</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  ingress:</p>
<p>    - {}</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p>EOF</p>
<p># Verify the NetworkPolicy.</p>
<p>kubectl get netpol</p>
<p>admin@k8cp:~$ k get netpol</p>
<p>NAME        POD-SELECTOR   AGE</p>
<p>example-2   &lt;none&gt;         6s</p>
<p>admin@k8cp:~$</p>
<p>kubectl describe netpol example-2</p>
<p>admin@k8cp:~$ kubectl describe netpol example-2</p>
<p>Name:         example-2</p>
<p>Namespace:    default</p>
<p>Created on:   2026-08-13 17:57:02 +0000 UTC</p>
<p>Labels:       &lt;none&gt;</p>
<p>Annotations:  &lt;none&gt;</p>
<p>Spec:</p>
<p>  PodSelector:     &lt;none&gt; (Allowing the specific traffic to all pods in this namespace)</p>
<p>  Allowing ingress traffic:</p>
<p>    To Port: &lt;any&gt; (traffic allowed to all ports)</p>
<p>    From: &lt;any&gt; (traffic not restricted by source)</p>
<p>  Allowing egress traffic:</p>
<p>    &lt;none&gt; (Selected pods are isolated for egress connectivity)</p>
<p>  Policy Types: Ingress, Egress</p>
<p>admin@k8cp:~$</p>
<p># Create another Pod in the default namespace.</p>
<p>kubectl run random-pod --image=alpine/curl -- sleep 36000</p>
<p># Get Pod IPs.</p>
<p>kubectl get pods -o wide</p>
<p>admin@k8cp:~$ kubectl get pods -o wide</p>
<p>NAME         READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>random-pod   1/1     Running   0          21s   10.244.245.78   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Open a shell in random-pod to test access to test-pod.</p>
<p>kubectl exec -it random-pod -- sh</p>
<p>#Inside:</p>
<p># Replace &lt;IP-OF-TEST-POD&gt; with the IP shown by kubectl get pods -o wide.</p>
<p>ping 10.244.245.78</p>
<p>    admin@k8cp:~$ kubectl exec -it random-pod -- sh</p>
<p>    / # ping 10.244.245.78</p>
<p>    PING 10.244.245.78 (10.244.245.78): 56 data bytes</p>
<p>    64 bytes from 10.244.245.78: seq=0 ttl=64 time=0.069 ms</p>
<p>    64 bytes from 10.244.245.78: seq=1 ttl=64 time=0.226 ms</p>
<p>    64 bytes from 10.244.245.78: seq=2 ttl=64 time=0.063 ms</p>
<p>    ^C</p>
<p>    --- 10.244.245.78 ping statistics ---</p>
<p>    3 packets transmitted, 3 packets received, 0% packet loss</p>
<p>    round-trip min/avg/max = 0.063/0.119/0.226 ms</p>
<p>    / # exit</p>
<p>    admin@k8cp:~$</p>
<p>    admin@k8cp:~$ kubectl exec -it random-pod -- sh</p>
<p>    / #</p>
<p>    / # ping www.google.com</p>
<p>    ping: bad address 'www.google.com'</p>
<p>    / #</p>
<p>    exit</p>
<p>kubectl run client-pod --image=alpine/curl -- sleep 36000</p>
<p>kubectl exec -it client-pod -- sh</p>
<p>admin@k8cp:~$ kubectl run client-pod --image=alpine/curl -- sleep 36000</p>
<p>pod/client-pod created</p>
<p>admin@k8cp:~$</p>
<p>#Exec into pod and test egress to random-pod. This should fail because the NetworkPolicy denies egress.</p>
<p>admin@k8cp:~$ kubectl exec -it client-pod -- sh</p>
<p>/ # ping 10.244.245.78</p>
<p>PING 10.244.245.78 (10.244.245.78): 56 data bytes</p>
<p>^C</p>
<p>--- 10.244.245.78 ping statistics ---</p>
<p>11 packets transmitted, 0 packets received, 100% packet loss</p>
<p>/ # exit</p>
<p>command terminated with exit code 1</p>
<p>admin@k8cp:~$</p>
<p>admin@k8cp:~$ pods</p>
<p>NAME         READY   STATUS    RESTARTS   AGE</p>
<p>client-pod   1/1     Running   0          7m1s</p>
<p>random-pod   1/1     Running   0          18m</p>
<p>admin@k8cp:~$</p>
<p>#Now to test the 'ingress', we will create a new namespace and a pod in that namespace to test cross-namespace access.</p>
<p># Create a separate namespace for cross-namespace testing.</p>
<p>kubectl create namespace testing</p>
<p># Create a Pod in the testing namespace.</p>
<p>kubectl run random-pod-in-ns-testing -n testing --image=alpine/curl -- sleep 36000</p>
<p># Check the Pod and its IP.</p>
<p>kubectl get pods -n testing -o wide</p>
<p># Test access from the testing namespace.</p>
<p>kubectl exec -it random-pod-in-ns-testing -n testing -- sh</p>
<p>#Inside:</p>
<p># Replace &lt;IP-OF-TEST-POD&gt; with the default-namespace test-pod IP.</p>
<p>ping 10.244.245.78</p>
<p>    admin@k8cp:~$ kubectl exec -it random-pod-in-ns-testing -n testing -- sh</p>
<p>    / #</p>
<p>    / # ping 10.244.245.78</p>
<p>    PING 10.244.245.78 (10.244.245.78): 56 data bytes</p>
<p>    64 bytes from 10.244.245.78: seq=0 ttl=63 time=0.260 ms</p>
<p>    64 bytes from 10.244.245.78: seq=1 ttl=63 time=0.145 ms</p>
<p>    64 bytes from 10.244.245.78: seq=2 ttl=63 time=0.095 ms</p>
<p>    64 bytes from 10.244.245.78: seq=3 ttl=63 time=0.096 ms</p>
<p>    ^C</p>
<p>    --- 10.244.245.78 ping statistics ---</p>
<p>    4 packets transmitted, 4 packets received, 0% packet loss</p>
<p>    round-trip min/avg/max = 0.095/0.149/0.260 ms</p>
<p>    / #</p>
<p># Remove Example 2 before continuing.</p>
<p>kubectl delete networkpolicy example-2</p>
<p># Remove the temporary testing namespace.</p>
<p>kubectl delete namespace testing</p>
<p>k delete pods client-pod random-pod</p></td>
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
<p># Example 3 — Select Specific Pods</p>
<p>############################################################</p>
<p># Unlike the previous namespace-wide policy, this policy isolates ONLY Pods labeled role=suspicious;</p>
<p># other Pods in the namespace remain unaffected, while the selected Pod has both ingress and egress denied.</p>
<p># Only Pods labeled role=suspicious will be isolated.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-3</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: suspicious</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>    - Egress</p>
<p>EOF</p>
<p># Create a Pod that will initially NOT be selected by the policy.</p>
<p>kubectl run suspicious-pod --image=alpine/curl -- sleep 36000</p>
<p>admin@k8cp:~$ kubectl run suspicious-pod --image=alpine/curl -- sleep 36000</p>
<p>pod/suspicious-pod created</p>
<p>admin@k8cp:~$ pods -o wide</p>
<p>NAME             READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>suspicious-pod   1/1     Running   0          5s    10.244.245.81   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p>admin@k8cp:~$</p>
<p># Add the label that causes the NetworkPolicy to select this Pod.</p>
<p>kubectl label pod suspicious-pod role=suspicious</p>
<p># Verify the label.</p>
<p>kubectl get pod suspicious-pod --show-labels</p>
<p># Enter the selected Pod and test egress.</p>
<p>kubectl exec -it suspicious-pod -- sh</p>
<p>#Inside:</p>
<p># This should fail because the selected Pod has no egress allow rule.</p>
<p>ping google.com</p>
<p>#let us try to run a pod that is not selected by the policy and test connectivity to the internet. This should succeed because the pod is not affected by the NetworkPolicy.</p>
<p>#Here we don't have any labels on the pod, so it should not be selected by the policy and should have egress access to the internet.</p>
<p>kubectl run random-pod  --image=alpine/curl -- sleep 36000</p>
<p>kubectl exec -it random-pod -- sh</p>
<p> </p>
<p>    / # ping google.com</p>
<p>    PING google.com (216.58.205.78): 56 data bytes</p>
<p>    64 bytes from 216.58.205.78: seq=0 ttl=116 time=24.698 ms</p>
<p>    64 bytes from 216.58.205.78: seq=1 ttl=116 time=26.057 ms</p>
<p>    64 bytes from 216.58.205.78: seq=2 ttl=116 time=19.290 ms</p>
<p>    64 bytes from 216.58.205.78: seq=3 ttl=116 time=18.760 ms</p>
<p>    64 bytes from 216.58.205.78: seq=4 ttl=116 time=19.532 ms</p>
<p>    64 bytes from 216.58.205.78: seq=5 ttl=116 time=20.371 ms</p>
<p>    ^C</p>
<p>    --- google.com ping statistics ---</p>
<p>    6 packets transmitted, 6 packets received, 0% packet loss</p>
<p>    round-trip min/avg/max = 18.760/21.451/26.057 ms</p>
<p>    / #</p>
<p># Remove Example 3.</p>
<p>kubectl delete networkpolicy example-3</p>
<p># Remove the test Pod.</p>
<p>kubectl delete pod suspicious-pod random-pod</p></td>
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
<p># Example 4 — Pod-to-Pod Using podSelector</p>
<p>############################################################</p>
<p># 1. Policy: protect Pods labeled role=database; only role=app can reach TCP/80.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-4</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: database</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - podSelector:</p>
<p>            matchLabels:</p>
<p>              role: app</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 80</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>EOF</p>
<p># 2. Create the client Pod; keep it alive for testing.</p>
<p>kubectl run app-pod --image=alpine/curl -- sleep 36000</p>
<p># 3. Create nginx normally so TCP/80 is actually listening.</p>
<p>kubectl run database-pod --image=nginx --restart=Never</p>
<p># 4. Label the database so example-4 actually selects it.</p>
<p>kubectl label pod database-pod role=database</p>
<p># 5. Get the database IP.</p>
<p>kubectl get pods -o wide</p>
<p>NAME           READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>app-pod        1/1     Running   0          10s   10.244.245.87   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>database-pod   1/1     Running   0          10s   10.244.245.88   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Client is NOT role=app, so access to the protected database should fail.</p>
<p>kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88</p>
<p>    admin@k8cp:~$ kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88</p>
<p>    curl: (28) Connection timed out after 3003 milliseconds</p>
<p>    command terminated with exit code 28</p>
<p>    admin@k8cp:~$</p>
<p># Label the client as an approved source.</p>
<p>kubectl label pod app-pod role=app</p>
<p># Now role=app → role=database on TCP/80 should succeed.</p>
<p>kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88</p>
<p>    admin@k8cp:~$ kubectl exec app-pod -- curl --connect-timeout 3 http://10.244.245.88</p>
<p>    % Total    % Received % Xferd  Average Speed  Time    Time    Time   Current</p>
<p>                                    Dload  Upload  Total   Spent   Left   Speed</p>
<p>    100    896 100    896   0      0  58516      0                              0</p>
<p>    &lt;!DOCTYPE html&gt;</p>
<p>    &lt;html&gt;</p>
<p>    &lt;head&gt;</p>
<p>    &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>   </p>
<p>   </p>
<p># Remove Example 4.</p>
<p>kubectl delete networkpolicy example-4</p>
<p># Remove the test Pods.</p>
<p>kubectl delete pod app-pod database-pod</p></td>
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
<p># Example 5 — Namespace-to-Namespace Using namespaceSelector</p>
<p>############################################################</p>
<p># Create the two namespaces used in this experiment.</p>
<p>kubectl create namespace production</p>
<p>kubectl create namespace security</p>
<p># Verify the namespace labels used by the NetworkPolicy selector.</p>
<p>kubectl get namespaces --show-labels</p>
<p># Allow only Pods from the security namespace to reach production Pods on TCP/80.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-5</p>
<p>  namespace: production</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - namespaceSelector:</p>
<p>            matchLabels:</p>
<p>              kubernetes.io/metadata.name: security</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 80</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>EOF</p>
<p># Create the nginx destination Pod in production.</p>
<p>kubectl run prod-pod  -n production --image=nginx --restart=Never</p>
<p># Create the client Pod in security.</p>
<p>kubectl run security-pod  -n security --image=alpine/curl --restart=Never  -- sleep 36000</p>
<p># Get the production Pod IP.</p>
<p>kubectl get pod prod-pod -n production -o wide</p>
<p>NAME       READY   STATUS    RESTARTS   AGE     IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>prod-pod   1/1     Running   0          2m36s   10.244.245.90   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Test security → production; this should PASS because security is explicitly allowed.</p>
<p>kubectl exec security-pod -n security -- curl --connect-timeout 3 http://10.244.245.90</p>
<p>    admin@k8cp:~$ kubectl exec security-pod -n security -- curl --connect-timeout 3 http://10.244.245.90</p>
<p>    &lt;!DOCTYPE html&gt;</p>
<p>    &lt;html&gt;</p>
<p>    &lt;head&gt;</p>
<p>    &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>#Then let's prove the namespace restriction with another namespace:</p>
<p># Create an untrusted namespace and client for the negative test.</p>
<p>kubectl create namespace testing</p>
<p>kubectl run testing-pod  -n testing   --image=alpine/curl   --restart=Never   -- sleep 36000</p>
<p># Test testing → production; this should FAIL because testing is not allowed.</p>
<p>kubectl exec testing-pod -n testing -- curl --connect-timeout 3 http://10.244.245.90</p>
<p>    admin@k8cp:~$ kubectl exec testing-pod -n testing -- curl --connect-timeout 3 http://10.244.245.90</p>
<p>    E0813 20:06:35.008243   54043 websocket.go:296] Unknown stream id 1, discarding message</p>
<p>    curl: (28) Connection timed out after 3002 milliseconds</p>
<p>    command terminated with exit code 28</p>
<p>    admin@k8cp:~$</p>
<p>#What we're proving:</p>
<p>security namespace ──→ production   ✅</p>
<p>testing namespace  ──→ production   ❌</p>
<p># Remove Example 5 NetworkPolicy.</p>
<p>kubectl delete networkpolicy example-5 -n production</p>
<p># Remove the test namespaces and all Pods inside them.</p>
<p>kubectl delete namespace production</p>
<p>kubectl delete namespace security</p>
<p>kubectl delete namespace testing</p></td>
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
<p># Example 6 — Egress to a Specific External IP/CIDR</p>
<p>############################################################</p>
<p># Create the production namespace for the IP/CIDR test.</p>
<p>kubectl create namespace production</p>
<p># Allow production Pods to send TCP/443 traffic ONLY to 93.184.216.34/32. ### this was in the poc steps. Ignored here.</p>
<p># Allow production Pods to reach ONLY Cloudflare's public IP 1.1.1.1 on TCP/443.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: example-6</p>
<p>  namespace: production</p>
<p>spec:</p>
<p>  podSelector: {}</p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - ipBlock:</p>
<p>            cidr: 1.1.1.1/32</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 443</p>
<p>  policyTypes:</p>
<p>    - Egress</p>
<p>EOF</p>
<p># Create a test Pod in production.</p>
<p>kubectl run prod-pod   -n production   --image=alpine/curl   --restart=Never   -- sleep 36000</p>
<p># Verify the Pod is running and note its IP.</p>
<p>kubectl get pod prod-pod -n production -o wide</p>
<p>    admin@k8cp:~$ kubectl get pod prod-pod -n production -o wide</p>
<p>    NAME       READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>    prod-pod   1/1     Running   0          5s    10.244.245.93   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    admin@k8cp:~$</p>
<p># Test the explicitly allowed external IP; this should PASS.</p>
<p># kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://93.184.216.34    #This was in PoC steps. Ignored here.</p>
<p># This should PASS because 1.1.1.1/32 is explicitly allowed.</p>
<p>kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://1.1.1.1</p>
<p>    admin@k8cp:~$ kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://1.1.1.1</p>
<p>    HTTP/2 301</p>
<p>    date: Thu, 13 Aug 2026 20:14:33 GMT</p>
<p>    location: https://one.one.one.one/</p>
<p>    server: cloudflare</p>
<p>    cf-ray: a2aa63012e0de6de-LIS</p>
<p>    admin@k8cp:~$</p>
<p> </p>
<p># This should FAIL because 8.8.8.8/32 is not allowed by the policy.</p>
<p>kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://8.8.8.8</p>
<p>    admin@k8cp:~$ kubectl exec prod-pod -n production -- curl -k -I -s --connect-timeout 5 --max-time 10 https://8.8.8.8</p>
<p>    command terminated with exit code 28</p>
<p>    admin@k8cp:~$</p>
<p>1.1.1.1:443 → ✅ allowed</p>
<p>8.8.8.8:443 → ❌ blocked</p>
<p># Remove Example 6 and everything inside the production namespace.</p>
<p>kubectl delete namespace production --ignore-not-found</p>
<p># Remove any leftover test Pods from the default namespace.</p>
<p>kubectl delete pods --all --ignore-not-found</p>
<p># Remove any temporary namespaces that may still exist.</p>
<p>kubectl delete namespace testing --ignore-not-found</p>
<p>kubectl delete namespace security --ignore-not-found</p></td>
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
<p># STEP 23 — Network Policies: except, Port and Protocol</p>
<p>############################################################</p>
<p>#Purpose: practice more specific NetworkPolicy matching using CIDR exclusions and port/protocol restrictions.</p>
<p>Example 1 — except</p>
<p># Allow ingress from 172.17.0.0/16</p>
<p># EXCEPT traffic originating from 172.17.1.0/24.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: except</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: database</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - ipBlock:</p>
<p>            cidr: 172.17.0.0/16</p>
<p>            except:</p>
<p>              - 172.17.1.0/24</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p># Apply the policy.</p>
<p>kubectl create -f except.yaml</p>
<p>Example 2 — Port and protocol</p>
<p># Apply the policy to Pods labelled role=db.</p>
<p># Allow egress to 10.0.0.0/24.</p>
<p># Restrict that traffic to TCP ports 32000 through 32768.</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: multi-port-egress</p>
<p>  namespace: default</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: db</p>
<p>  policyTypes:</p>
<p>    - Egress</p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - ipBlock:</p>
<p>            cidr: 10.0.0.0/24</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 32000</p>
<p>          endPort: 32768</p>
<p># Apply the policy.</p>
<p>kubectl create -f port-proto.yaml</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image731.webp" style="width:3.66181in;height:3.99236in" alt="{DEAEE761-C2FE-46B8-A912-5160EDA286AF}" /></p></td>
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image732.webp" style="width:3.65278in;height:3.8375in" alt="{FCF7CC7E-3741-4022-B68A-E1E6EE37D9B3}" /></p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/azure/az-aks-complete/img/media/image733.webp" style="width:4.67708in;height:2.80208in" alt="{4CF23AA8-F51F-434D-B6A4-3BFA8F7B57ED}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>#Example 1 — ipBlock with except</p>
<p>#Goal: Protect a database Pod and allow TCP/80 from the 10.244.0.0/16 Pod network except one /24. We'll put one client in the excluded /24 and another in the allowed /24.</p>
<p>#First, run this setup:</p>
<p>############################################################</p>
<p># Example 1 — ipBlock with "except"</p>
<p>#</p>
<p># Goal:</p>
<p>#   Allow database access from the Pod network 10.244.0.0/16</p>
<p>#   EXCEPT traffic coming from 10.244.245.0/24.</p>
<p>#</p>
<p># In this test:</p>
<p>#   10.244.178.0/24 → should be ALLOWED</p>
<p>#   10.244.245.0/24 → should be BLOCKED</p>
<p>#</p>
<p># Your cluster currently has:</p>
<p>#   k8cp  → Pods in 10.244.178.x</p>
<p>#   k8dp1 → Pods in 10.244.245.x</p>
<p>############################################################</p>
<p> </p>
<p># Create the database Pod. Nginx listens on TCP/80, giving us a real service to test.</p>
<p>kubectl run database-pod  --image=nginx   --restart=Never</p>
<p># Create the client on k8cp node. Notice the --overrides to force the Pod onto a specific node.</p>
<p># Its Pod IP should come from the 10.244.178.x range.</p>
<p>kubectl run allowed-client   --image=alpine/curl   --restart=Never   --overrides='{"spec":{"nodeName":"k8cp"}}'   -- sleep 36000</p>
<p># Create the client on k8dp1 node. Notice the --overrides to force the Pod onto a specific node.</p>
<p># Its Pod IP should come from the 10.244.245.x range.</p>
<p>kubectl run excluded-client   --image=alpine/curl   --restart=Never   --overrides='{"spec":{"nodeName":"k8dp1"}}'   -- sleep 36000</p>
<p>admin@k8cp:~$ pods -o wide</p>
<p>NAME              READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES</p>
<p>allowed-client    1/1     Running   0          25s   10.244.178.107   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>database-pod      1/1     Running   0          25s   10.244.245.95    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>excluded-client   1/1     Running   0          25s   10.244.245.96    k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p> </p>
<p>############################################################</p>
<p># Baseline test — no restriction yet.</p>
<p># Before applying the policy, prove that both clients can reach the database:</p>
<p>############################################################</p>
<p># Both clients should currently be able to reach nginx. Notice we are 'exec' into the allowed-client pod.</p>
<p># Show only the HTTP status code from the allowed-client.</p>
<p>kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p># Notice we are 'exec' into the excluded-client pod.</p>
<p># Show only the HTTP status code from the excluded-client.</p>
<p>kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p>#Now apply the actual except policy:</p>
<p>############################################################</p>
<p># Apply the ipBlock + except policy</p>
<p>############################################################</p>
<p># Select the database Pod and allow TCP/80 from the entire</p>
<p># Pod network EXCEPT the 10.244.245.0/24 subnet.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: database-except-example</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      role: database</p>
<p>  ingress:</p>
<p>    - from:</p>
<p>        - ipBlock:</p>
<p>            cidr: 10.244.0.0/16</p>
<p>            except:</p>
<p>              - 10.244.245.0/24</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 80</p>
<p>  policyTypes:</p>
<p>    - Ingress</p>
<p>EOF</p>
<p># Label the database so the NetworkPolicy selects it.</p>
<p>kubectl label pod database-pod role=database</p>
<p># Verify the policy.</p>
<p>kubectl describe networkpolicy database-except-example</p>
<p>Now the actual demonstration:</p>
<p>############################################################</p>
<p># Test the "except" behavior</p>
<p>############################################################</p>
<p># 10.244.178.x is inside 10.244.0.0/16</p>
<p># but NOT inside the excluded 10.244.245.0/24.</p>
<p># Therefore this should PASS.</p>
<p>kubectl exec allowed-client -- curl --connect-timeout 3 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p>kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p>kubectl exec allowed-client -- curl -s -o /dev/null -w '%{http_code}\n' --connect-timeout 3 --max-time 5 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p># 10.244.245.x is inside the excluded /24.</p>
<p># Therefore this should FAIL.</p>
<p>kubectl exec excluded-client -- curl --connect-timeout 3 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p>kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n'  http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p>kubectl exec excluded-client -- curl -s -o /dev/null -w '%{http_code}\n' --connect-timeout 3 --max-time 5 http://$(kubectl get pod database-pod -o jsonpath='{.status.podIP}')</p>
<p> </p>
<p> </p>
<p>#The concept you're demonstrating is:</p>
<p>10.244.0.0/16</p>
<p>│</p>
<p>├── 10.244.178.0/24  → ✅ allowed</p>
<p>│</p>
<p>├── 10.244.245.0/24  → ❌ excluded</p>
<p>│</p>
<p>└── everything else  → ✅ allowed</p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>############################################################</p>
<p># Cleanup — Example 1</p>
<p>############################################################</p>
<p># Remove the NetworkPolicy.</p>
<p>kubectl delete networkpolicy database-except-example --ignore-not-found</p>
<p># Remove all Pods created for this example.</p>
<p>kubectl delete pod database-pod allowed-client excluded-client --ignore-not-found</p>
<p># Verify the default namespace is clean.</p>
<p>kubectl get pods</p>
<p>kubectl get networkpolicy</p></td>
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
<p># Example 2 — Egress TCP Port Range</p>
<p>#</p>
<p># Goal:</p>
<p>#   Allow the client Pod to send TCP traffic to ports</p>
<p>#   32000 through 32768 on the database Pod.</p>
<p>#</p>
<p>#   TCP/32000 → ✅ allowed</p>
<p>#   TCP/31000 → ❌ blocked</p>
<p>############################################################</p>
<p>#Example 2 — TCP Port Range</p>
<p>#Here I would not use nginx, because nginx normally listens on 80 and we want to demonstrate a range such as 32000–32768.</p>
<p>#We'll create a simple Python HTTP server listening on 32000, then allow the range 32000–32768.</p>
<p># Create the server Pod.</p>
<p># Python will provide a real TCP listener on port 32000.</p>
<p>kubectl run port-server --image=python:3.12-alpine  --restart=Never  --command -- python -m http.server 32000 --bind 0.0.0.0</p>
<p># Create the client Pod.</p>
<p>kubectl run port-client --image=alpine/curl --restart=Never -- sleep 36000</p>
<p># Get the server IP.</p>
<p>kubectl get pods -o wide</p>
<p>admin@k8cp:~$ pods -o wide</p>
<p>NAME          READY   STATUS    RESTARTS   AGE   IP              NODE    NOMINATED NODE   READINESS GATES</p>
<p>port-client   1/1     Running   0          14s   10.244.245.98   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>port-server   1/1     Running   0          14s   10.244.245.97   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p># Verify that the server is actually listening on TCP/32000.</p>
<p>kubectl exec port-server -- sh -c 'cat /proc/net/tcp'</p>
<p>admin@k8cp:~$ kubectl exec port-server -- sh -c 'cat /proc/net/tcp'</p>
<p>  sl  local_address rem_address   st tx_queue rx_queue tr tm-&gt;when retrnsmt   uid  timeout inode                                                    </p>
<p>   0: 00000000:7D00 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 108259 1 0000000000000000 100 0 0 10 0                    </p>
<p>admin@k8cp:~$</p>
<p>#Now apply the policy:</p>
<p>############################################################</p>
<p># Apply the TCP port-range Egress policy</p>
<p>############################################################</p>
<p># Select port-client and allow it to send TCP traffic only</p>
<p># to 32000–32768 on the port-server.</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: networking.k8s.io/v1</p>
<p>kind: NetworkPolicy</p>
<p>metadata:</p>
<p>  name: port-range-example</p>
<p>spec:</p>
<p>  podSelector:</p>
<p>    matchLabels:</p>
<p>      run: port-client</p>
<p>  policyTypes:</p>
<p>    - Egress</p>
<p>  egress:</p>
<p>    - to:</p>
<p>        - podSelector:</p>
<p>            matchLabels:</p>
<p>              run: port-server</p>
<p>      ports:</p>
<p>        - protocol: TCP</p>
<p>          port: 32000</p>
<p>          endPort: 32768</p>
<p>EOF</p>
<p># Verify the policy.</p>
<p>kubectl describe networkpolicy port-range-example</p>
<p>#Now test inside vs outside the allowed range:</p>
<p>############################################################</p>
<p># Test the allowed port</p>
<p>############################################################</p>
<p># TCP/32000 is inside the 32000–32768 range.</p>
<p># This should PASS.</p>
<p>kubectl exec port-client -- curl --connect-timeout 3 http://$(kubectl get pod port-server -o jsonpath='{.status.podIP}'):32000</p>
<p>#For the negative test, we need something actually listening outside the range. So let's add a second listener on 31000:</p>
<p>############################################################</p>
<p># Create a second server listening outside the allowed range</p>
<p>############################################################</p>
<p>kubectl run outside-server --image=python:3.12-alpine  --restart=Never --command -- python -m http.server 31000 --bind 0.0.0.0</p>
<p> </p>
<p># This should FAIL because TCP/31000 is outside 32000–32768.</p>
<p>kubectl exec port-client -- curl --connect-timeout 3 http://$(kubectl get pod outside-server -o jsonpath='{.status.podIP}'):31000</p>
<p>#What Example 2 proves</p>
<p>port-client</p>
<p>    │</p>
<p>    ├── TCP/32000  → ✅ allowed</p>
<p>    ├── TCP/32500  → ✅ allowed</p>
<p>    ├── TCP/32768  → ✅ allowed</p>
<p>    │</p>
<p>    └── TCP/31000  → ❌ blocked</p>
<p>#So you're demonstrating that NetworkPolicy can restrict traffic not just by Pod/namespace/IP, but also by a specific TCP port range.</p>
<p> </p>
<p>############################################################</p>
<p># Cleanup — remove both examples and all test Pods</p>
<p>############################################################</p>
<p>kubectl delete networkpolicy database-except-example --ignore-not-found</p>
<p>kubectl delete networkpolicy port-range-example --ignore-not-found</p>
<p>kubectl delete pod database-pod allowed-client excluded-client port-server port-client outside-server --ignore-not-found</p></td>
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
<p># Static Pod — Simple kubeadm Demonstration</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># Run these commands on the CONTROL-PLANE node.</p>
<p>#</p>
<p># This works because kubeadm configures the kubelet to watch:</p>
<p>#     /etc/kubernetes/manifests</p>
<p>#</p>
<p># Any Pod manifest placed there is automatically started by</p>
<p># the kubelet WITHOUT going through the Kubernetes scheduler.</p>
<p>#</p>
<p># Real production use:</p>
<p># Static Pods are commonly used by self-managed Kubernetes</p>
<p># control planes for components such as:</p>
<p>#   - kube-apiserver</p>
<p>#   - kube-controller-manager</p>
<p>#   - kube-scheduler</p>
<p>#   - etcd</p>
<p>#</p>
<p># Managed Kubernetes services normally do not give customers</p>
<p># filesystem access to their control-plane nodes.</p>
<p>############################################################</p>
<p># 1. Run on the CONTROL-PLANE node.</p>
<p>#    Go to the kubeadm Static Pod manifest directory.</p>
<p>cd /etc/kubernetes/manifests</p>
<p># 2. Create a Static Pod manifest.</p>
<p>#    sudo is required because this directory is owned by root.</p>
<p>sudo sh -c 'cat &lt;&lt;'\''EOF'\'' &gt; /etc/kubernetes/manifests/static-test-pod.yaml</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: static-test-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: nginx</p>
<p>      image: nginx:latest</p>
<p>      ports:</p>
<p>        - containerPort: 80</p>
<p>EOF'</p>
<p># 3. DO NOT run "kubectl apply".</p>
<p>#    The kubelet automatically detects the new YAML and starts</p>
<p>#    the Static Pod.</p>
<p>#</p>
<p>#    Verify that the Pod has appeared.</p>
<p>kubectl get pods -o wide</p>
<p># 4. Confirm that Kubernetes identifies it as a Static Pod.</p>
<p>#    The Pod name will normally contain the node hostname, e.g.:</p>
<p>#</p>
<p>#    static-test-pod-k8cp</p>
<p>#</p>
<p>#    because the Pod is managed directly by the kubelet on k8cp.</p>
<p>kubectl get pods -o wide</p>
<p># 5. Remove the Static Pod by deleting its manifest.</p>
<p>#    Again, do NOT use "kubectl delete pod".</p>
<p>sudo rm -f /etc/kubernetes/manifests/static-test-pod.yaml</p>
<p># 6. The kubelet notices that the manifest disappeared and</p>
<p>#    automatically removes the Static Pod.</p>
<p>kubectl get pods -o wide</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image734.webp" style="width:6.52639in;height:4.35139in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># Taint &amp; Toleration — Complete Demonstration</p>
<p>#</p>
<p># Cluster:</p>
<p>#</p>
<p>#   k8cp  = Control Plane</p>
<p>#           Tainted with NoSchedule</p>
<p>#</p>
<p>#   k8dp1 = Worker</p>
<p>#           No control-plane taint</p>
<p>#</p>
<p># Concept:</p>
<p>#</p>
<p>#   TAINT on NODE</p>
<p>#       ↓</p>
<p>#   "Ordinary Pods cannot schedule here"</p>
<p>#</p>
<p>#   TOLERATION on POD</p>
<p>#       ↓</p>
<p>#   "This Pod is allowed to schedule here"</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># A toleration does NOT force a Pod onto the tainted node.</p>
<p># Therefore, in the second test we also use nodeSelector to</p>
<p># explicitly select k8cp.</p>
<p>############################################################</p>
<p>############################################################</p>
<p># 1. Check the current nodes.</p>
<p>#</p>
<p># Run this from your normal kubectl/admin shell.</p>
<p>############################################################</p>
<p>kubectl get nodes -o wide</p>
<p>############################################################</p>
<p># 2. Check the taints on both nodes.</p>
<p>#</p>
<p># k8cp should show:</p>
<p>#</p>
<p>#   node-role.kubernetes.io/control-plane:NoSchedule</p>
<p>#</p>
<p># k8dp1 should normally have no taint.</p>
<p>############################################################</p>
<p>kubectl describe node k8cp | grep -i Taints</p>
<p>kubectl describe node k8dp1 | grep -i Taints</p>
<p>admin@k8cp:~$ kubectl describe node k8cp | grep -i Taints</p>
<p>Taints:             <mark>node-role.kubernetes.io/control-plane</mark>:NoSchedule</p>
<p>admin@k8cp:~$ kubectl describe node k8dp1 | grep -i Taints</p>
<p>Taints:             &lt;none&gt;</p>
<p>admin@k8cp:~$</p>
<p>############################################################</p>
<p># 3. Check the labels on the control-plane node.</p>
<p># Here we are using this for ref only and does not have any connection with tainting.</p>
<p># We will use the standard control-plane label later with</p>
<p># nodeSelector to deliberately place a tolerated Pod there.</p>
<p>############################################################</p>
<p>kubectl get node k8cp --show-labels</p>
<p>    admin@k8cp:/etc/kubernetes/manifests$ kubectl get node k8cp --show-labels</p>
<p>    NAME   STATUS   ROLES           AGE     VERSION   LABELS</p>
<p>    k8cp   Ready    control-plane   5d15h   v1.32.0   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=k8cp,kubernetes.io/os=linux,<mark>node-role.kubernetes.io/control-plane=</mark>,node.kubernetes.io/exclude-from-external-load-balancers=</p>
<p>    admin@k8cp:/etc/kubernetes/manifests$</p>
<p>    admin@k8cp:/etc/kubernetes/manifests$</p>
<p>############################################################</p>
<p># 4. TEST 1 — Ordinary Pod</p>
<p>#</p>
<p># This Pod has NO toleration.</p>
<p>#</p>
<p># Because k8cp has a NoSchedule taint, the scheduler cannot</p>
<p># place this Pod on k8cp.</p>
<p>#</p>
<p># It should therefore be scheduled onto k8dp1.</p>
<p>############################################################</p>
<p>kubectl run normal-pod --image=nginx --restart=Never</p>
<p>############################################################</p>
<p># 5. See where the Pod was scheduled.</p>
<p>#</p>
<p># Expected:</p>
<p>#</p>
<p>#   normal-pod    ...    k8dp1</p>
<p>############################################################</p>
<p>kubectl get pod normal-pod -o wide</p>
<p>admin@k8cp:/etc/kubernetes/manifests$ pods -o wide</p>
<p>NAME         READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES</p>
<p>normal-pod   1/1     Running   0          5s    10.244.245.100   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:/etc/kubernetes/manifests$</p>
<p>############################################################</p>
<p># 6. Confirm the Pod has no tolerations.</p>
<p>############################################################</p>
<p># The purpose of the command was simply to show you what tolerations the Pod currently has and prove that the normal Pod does not tolerate the control-plane taint.</p>
<p>kubectl get pod normal-pod -o jsonpath='{.spec.tolerations}'; echo</p>
<p>admin@k8cp:/etc/kubernetes/manifests$ kubectl get pod normal-pod -o jsonpath='{.spec.tolerations}'; echo</p>
<p>[{"effect":"NoExecute","key":"node.kubernetes.io/not-ready","operator":"Exists","tolerationSeconds":300},{"effect":"NoExecute","key":"node.kubernetes.io/unreachable","operator":"Exists","tolerationSeconds":300}]</p>
<p>admin@k8cp:/etc/kubernetes/manifests$</p>
<p>############################################################</p>
<p># 7. TEST 2 — Tolerated Pod</p>
<p>#</p>
<p># This Pod has a toleration matching the control-plane taint:</p>
<p>#</p>
<p>#   key    = node-role.kubernetes.io/control-plane</p>
<p>#   effect = NoSchedule</p>
<p>#</p>
<p># This means the Pod is ALLOWED to run on k8cp.</p>
<p>#</p>
<p># The nodeSelector is used because toleration alone does NOT</p>
<p># force the Pod onto k8cp.</p>
<p>############################################################</p>
<p>cat &lt;&lt;'EOF' | kubectl apply -f -</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: tolerated-pod</p>
<p>spec:</p>
<p>  nodeSelector:</p>
<p>    node-role.kubernetes.io/control-plane: ""</p>
<p>  tolerations:</p>
<p>    - key: <mark>node-role.kubernetes.io/control-plane</mark></p>
<p>      operator: Exists</p>
<p>      effect: NoSchedule</p>
<p>  containers:</p>
<p>    - name: nginx</p>
<p>      image: nginx:latest</p>
<p>EOF</p>
<p>############################################################</p>
<p># 8. Check where the tolerated Pod was scheduled.</p>
<p>#</p>
<p># Expected:</p>
<p>#</p>
<p>#   tolerated-pod    ...    k8cp</p>
<p>#</p>
<p># The toleration allows the Pod through the taint, while the</p>
<p># nodeSelector tells the scheduler specifically to use k8cp.</p>
<p>############################################################</p>
<p>pods -o wide</p>
<p>admin@k8cp:/etc/kubernetes/manifests$ pods -o wide</p>
<p>NAME            READY   STATUS    RESTARTS   AGE     IP               NODE    NOMINATED NODE   READINESS GATES</p>
<p>normal-pod      1/1     Running   0          3m44s   10.244.245.100   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>tolerated-pod   1/1     Running   0          4s      10.244.178.109   k8cp    &lt;none&gt;           &lt;none&gt;</p>
<p>admin@k8cp:/etc/kubernetes/manifests$</p>
<p>############################################################</p>
<p># 9. Compare both Pods side-by-side.</p>
<p>#</p>
<p># normal-pod     → k8dp1</p>
<p># tolerated-pod  → k8cp</p>
<p>############################################################</p>
<p>kubectl get pods -o wide</p>
<p>############################################################</p>
<p># 10. Inspect the toleration on the second Pod.</p>
<p>############################################################</p>
<p>kubectl describe pod tolerated-pod | grep -A5 -i Tolerations</p>
<p>############################################################</p>
<p># 11. Final verification — show the control-plane taint again.</p>
<p>#</p>
<p># Notice that WE NEVER REMOVED THE TAINT.</p>
<p>#</p>
<p># The taint is still protecting k8cp.</p>
<p># The tolerated Pod simply has permission to pass it.</p>
<p>############################################################</p>
<p>kubectl describe node k8cp | grep -i Taints</p>
<p>############################################################</p>
<p># 12. Cleanup the demonstration Pods.</p>
<p>############################################################</p>
<p># Remove both Pods created for the taint/toleration demonstration.</p>
<p>kubectl delete pod normal-pod tolerated-pod --ignore-not-found</p>
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
<p># STEP 25 — Custom Resource Definition</p>
<p>############################################################</p>
<p>#Course material status: file not found.</p>
<p># No course commands were provided for this section.</p>
<p># Do not invent/replace the missing material here.</p></td>
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
<p># STEP 1 - Verify the cluster</p>
<p># ============================================================</p>
<p>kubectl get nodes</p>
<p># Expected:</p>
<p># NAME    STATUS   ROLES           AGE     VERSION</p>
<p># k8cp    Ready    control-plane   ...     v1.32.0</p>
<p># k8dp1   Ready    &lt;none&gt;          ...     v1.32.0</p>
<p># ============================================================</p>
<p># STEP 2 - Create a test Pod</p>
<p># ============================================================</p>
<p># Create the Pod on k8dp1 so we can easily identify where it runs.</p>
<p>kubectl run test-pod  --image=nginx  --labels=app=test-pod   --overrides='{"spec":{"nodeSelector":{"kubernetes.io/hostname":"k8dp1"}}}'</p>
<p># Verify the Pod and its initial label.</p>
<p>kubectl get pod test-pod -o wide --show-labels</p>
<p># Expected to see something similar to:</p>
<p># NAME       READY   STATUS    ...   NODE    ...   LABELS</p>
<p># test-pod   1/1     Running   ...   k8dp1  ...   app=test-pod</p>
<p># ============================================================</p>
<p># STEP 3 - Inspect the existing Pod</p>
<p># ============================================================</p>
<p># View the complete Pod definition before making changes.</p>
<p>kubectl get pod test-pod -o yaml</p>
<p># JSON representation can also be viewed if required:</p>
<p>kubectl get pod test-pod -o json</p>
<p># ============================================================</p>
<p># STEP 4 - kubectl edit (REFERENCE ONLY)</p>
<p># ============================================================</p>
<p># This is the interactive approach. It opens the Pod manifest</p>
<p># in your configured editor and allows you to modify the YAML.</p>
<p>kubectl edit pod test-pod</p>
<p># We will NOT use edit for this POC.</p>
<p># The following steps use kubectl patch instead.</p>
<p># ============================================================</p>
<p># STEP 5 - Add a label using kubectl patch</p>
<p># ============================================================</p>
<p># Add a new label:</p>
<p>#   environment=dev</p>
<p>kubectl patch pod test-pod  -p '{"metadata":{"labels":{"environment":"dev"}}}'</p>
<p># Verify the label was added.</p>
<p>kubectl get pod test-pod --show-labels</p>
<p># Expected:</p>
<p># app=test-pod</p>
<p># environment=dev</p>
<p># ============================================================</p>
<p># STEP 6 - Modify an existing label</p>
<p># ============================================================</p>
<p># Change:</p>
<p>#   app=test-pod</p>
<p>#</p>
<p># To:</p>
<p>#   app=dev-pod</p>
<p>kubectl patch pod test-pod   -p '{"metadata":{"labels":{"app":"dev-pod"}}}'</p>
<p># Verify the change.</p>
<p>kubectl get pod test-pod --show-labels</p>
<p># Expected:</p>
<p># app=dev-pod</p>
<p># environment=dev</p>
<p># ============================================================</p>
<p># STEP 7 - Remove a label</p>
<p># ============================================================</p>
<p># Remove the environment label by setting its value to null.</p>
<p>kubectl patch pod test-pod \</p>
<p>  -p '{"metadata":{"labels":{"environment":null}}}'</p>
<p># Verify the label has been removed.</p>
<p>kubectl get pod test-pod --show-labels</p>
<p># Expected:</p>
<p># app=dev-pod</p>
<p># ============================================================</p>
<p># STEP 8 - Check the labels directly in YAML</p>
<p># ============================================================</p>
<p># Confirm the final label configuration under metadata.labels.</p>
<p>kubectl get pod test-pod -o yaml</p>
<p># Look for:</p>
<p>#</p>
<p># metadata:</p>
<p>#   labels:</p>
<p>#     app: dev-pod</p>
<p># ============================================================</p>
<p># STEP 9 - Check the current container image</p>
<p># ============================================================</p>
<p>kubectl get pod test-pod  -o jsonpath='{.spec.containers[0].image}{"\n"}'</p>
<p># Expected:</p>
<p># nginx</p>
<p># ============================================================</p>
<p># STEP 10 - Modify the container image</p>
<p># ============================================================</p>
<p># Change the nginx image from:</p>
<p>#   nginx</p>
<p>#</p>
<p># To:</p>
<p>#   nginx:1.27</p>
<p>kubectl patch pod test-pod   -p '{"spec":{"containers":[{"name":"test-pod","image":"nginx:1.27"}]}}'</p>
<p># Verify the new image.</p>
<p>kubectl get pod test-pod   -o jsonpath='{.spec.containers[0].image}{"\n"}'</p>
<p># Expected:</p>
<p># nginx:1.27</p>
<p># ============================================================</p>
<p># STEP 11 - Verify the Pod after modifications</p>
<p># ============================================================</p>
<p>kubectl get pod test-pod -o wide --show-labels</p>
<p>kubectl describe pod test-pod</p>
<p>kubectl get pod test-pod -o yaml</p>
<p># ============================================================</p>
<p># STEP 12 - Quick patch reference</p>
<p># ============================================================</p>
<p># Add a label:</p>
<p>kubectl patch pod test-pod   -p '{"metadata":{"labels":{"environment":"dev"}}}'</p>
<p># Modify an existing label:</p>
<p>kubectl patch pod test-pod   -p '{"metadata":{"labels":{"app":"dev-pod"}}}'</p>
<p># Remove a label:</p>
<p>kubectl patch pod test-pod   -p '{"metadata":{"labels":{"environment":null}}}'</p>
<p># Modify the container image:</p>
<p>kubectl patch pod test-pod   -p '{"spec":{"containers":[{"name":"test-pod","image":"nginx:1.27"}]}}'</p>
<p># Verify labels:</p>
<p>kubectl get pod test-pod --show-labels</p>
<p># Verify image:</p>
<p>kubectl get pod test-pod   -o jsonpath='{.spec.containers[0].image}{"\n"}'</p>
<p># Inspect complete resource:</p>
<p>kubectl get pod test-pod -o yaml</p>
<p># ============================================================</p>
<p># CLEANUP</p>
<p># ============================================================</p>
<p># Delete the test Pod created for this POC.</p>
<p>kubectl delete pod test-pod</p>
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
<p># STEP 27 — Node Capacity, Allocatable &amp; Resource Requests</p>
<p>############################################################</p>
<p># Purpose:</p>
<p># Understand the difference between:</p>
<p>#</p>
<p>#   Capacity   -&gt; Total resources available on the node</p>
<p>#   Allocatable -&gt; Resources Kubernetes makes available for Pods</p>
<p>#   Requests   -&gt; Resources reserved/requested by Pods</p>
<p>#</p>
<p># We will inspect the node first, then look at the Pods and</p>
<p># their CPU/memory requests.</p>
<p>############################################################</p>
<p># STEP 27.1 — Inspect Node Capacity and Allocatable</p>
<p>############################################################</p>
<p># Replace &lt;node-name&gt; with your node, for example:</p>
<p>#   k8cp</p>
<p>#   k8dp1</p>
<p>kubectl describe node k8cp</p>
<p>kubectl describe node k8dp1</p>
<p>    admin@k8cp:~$ kubectl describe node k8cp</p>
<p>    Name:               k8cp</p>
<p>    Roles:              control-plane</p>
<p>    Labels:             beta.kubernetes.io/arch=amd64</p>
<p>                        beta.kubernetes.io/os=linux</p>
<p>                        kubernetes.io/arch=amd64</p>
<p>                        kubernetes.io/hostname=k8cp</p>
<p>                        kubernetes.io/os=linux</p>
<p>                        node-role.kubernetes.io/control-plane=</p>
<p>                        node.kubernetes.io/exclude-from-external-load-balancers=</p>
<p>    Annotations:        csi.volume.kubernetes.io/nodeid: {"csi.tigera.io":"k8cp"}</p>
<p>                        kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock</p>
<p>                        node.alpha.kubernetes.io/ttl: 0</p>
<p>                        projectcalico.org/IPv4Address: 192.168.1.16/24</p>
<p>                        projectcalico.org/IPv4VXLANTunnelAddr: 10.244.178.64</p>
<p>                        volumes.kubernetes.io/controller-managed-attach-detach: true</p>
<p>    CreationTimestamp:  Sat, 08 Aug 2026 20:17:23 +0000</p>
<p>    Taints:             node-role.kubernetes.io/control-plane:NoSchedule</p>
<p>    Unschedulable:      false</p>
<p>    Lease:</p>
<p>    HolderIdentity:  k8cp</p>
<p>    AcquireTime:     &lt;unset&gt;</p>
<p>    RenewTime:       Sun, 16 Aug 2026 19:34:11 +0000</p>
<p>    Conditions:</p>
<p>    Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message</p>
<p>    ----                 ------  -----------------                 ------------------                ------                       -------</p>
<p>    NetworkUnavailable   False   Sun, 16 Aug 2026 19:29:45 +0000   Sun, 16 Aug 2026 19:29:45 +0000   CalicoIsUp                   Calico is running on this node</p>
<p>    MemoryPressure       False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available</p>
<p>    DiskPressure         False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure</p>
<p>    PIDPressure          False   Sun, 16 Aug 2026 19:30:34 +0000   Sat, 08 Aug 2026 20:17:22 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available</p>
<p>    Ready                True    Sun, 16 Aug 2026 19:30:34 +0000   Wed, 12 Aug 2026 19:21:28 +0000   KubeletReady                 kubelet is posting ready status</p>
<p>    Addresses:</p>
<p>    InternalIP:  192.168.1.16</p>
<p>    Hostname:    k8cp</p>
<p>    Capacity:</p>
<p>    cpu:                2</p>
<p>    ephemeral-storage:  67960152Ki</p>
<p>    hugepages-2Mi:      0</p>
<p>    memory:             17805056Ki</p>
<p>    pods:               110</p>
<p>    Allocatable:</p>
<p>    cpu:                2</p>
<p>    ephemeral-storage:  62632075980</p>
<p>    hugepages-2Mi:      0</p>
<p>    memory:             17702656Ki</p>
<p>    pods:               110</p>
<p>    System Info:</p>
<p>    Machine ID:                 a4b78e76ff96438a896bf4bd1b23756f</p>
<p>    System UUID:                ccb11fda-380b-994e-ae59-6e1e2cf5fbb3</p>
<p>    Boot ID:                    06458632-cc96-4dec-b49f-2bfe27c90c01</p>
<p>    Kernel Version:             6.17.0-35-generic</p>
<p>    OS Image:                   Ubuntu 24.04.2 LTS</p>
<p>    Operating System:           linux</p>
<p>    Architecture:               amd64</p>
<p>    Container Runtime Version:  containerd://2.2.1</p>
<p>    Kubelet Version:            v1.32.0</p>
<p>    Kube-Proxy Version:         v1.32.0</p>
<p>    PodCIDR:                      10.244.0.0/24</p>
<p>    PodCIDRs:                     10.244.0.0/24</p>
<p>    Non-terminated Pods:          (14 in total)</p>
<p>    Namespace                   Name                                        CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age</p>
<p>    ---------                   ----                                        ------------  ----------  ---------------  -------------  ---</p>
<p>    calico-apiserver            calico-apiserver-66485d5db4-2slzb           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    calico-apiserver            calico-apiserver-66485d5db4-gjbkm           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    calico-system               calico-kube-controllers-697dcb9bb7-8dwkb    0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    calico-system               calico-node-c4n77                           0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    calico-system               calico-typha-77f8575c68-l7dv6               0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    calico-system               csi-node-driver-d9qzs                       0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    kube-system                 coredns-668d6bf9bc-k4jr2                    100m (5%)     0 (0%)      70Mi (0%)        170Mi (0%)     7d23h</p>
<p>    kube-system                 coredns-668d6bf9bc-pbn5j                    100m (5%)     0 (0%)      70Mi (0%)        170Mi (0%)     7d23h</p>
<p>    kube-system                 etcd-k8cp                                   100m (5%)     0 (0%)      100Mi (0%)       0 (0%)         7d23h</p>
<p>    kube-system                 kube-apiserver-k8cp                         250m (12%)    0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    kube-system                 kube-controller-manager-k8cp                200m (10%)    0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    kube-system                 kube-proxy-lfthl                            0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    kube-system                 kube-scheduler-k8cp                         100m (5%)     0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    tigera-operator             tigera-operator-7d68577dc5-hpkqk            0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d23h</p>
<p>    Allocated resources:</p>
<p>    (Total limits may be over 100 percent, i.e., overcommitted.)</p>
<p>    Resource           Requests    Limits</p>
<p>    --------           --------    ------</p>
<p>    cpu                850m (42%)  0 (0%)</p>
<p>    memory             240Mi (1%)  340Mi (1%)</p>
<p>    ephemeral-storage  0 (0%)      0 (0%)</p>
<p>    hugepages-2Mi      0 (0%)      0 (0%)</p>
<p>    Events:</p>
<p>    Type     Reason                   Age                    From             Message</p>
<p>    ----     ------                   ----                   ----             -------</p>
<p>    Normal   Starting                 4m51s                  kube-proxy      </p>
<p>    Normal   Starting                 42h                    kube-proxy      </p>
<p>    Normal   RegisteredNode           2d5h                   node-controller  Node k8cp event: Registered Node k8cp in Controller</p>
<p>    Normal   RegisteredNode           2d5h                   node-controller  Node k8cp event: Registered Node k8cp in Controller</p>
<p>    Normal   Starting                 42h                    kubelet          Starting kubelet.</p>
<p>    Warning  InvalidDiskCapacity      42h                    kubelet          invalid capacity 0 on image filesystem</p>
<p>    Normal   NodeAllocatableEnforced  42h                    kubelet          Updated Node Allocatable limit across pods</p>
<p>    Normal   NodeHasSufficientMemory  42h (x8 over 42h)      kubelet          Node k8cp status is now: NodeHasSufficientMemory</p>
<p>    Normal   NodeHasNoDiskPressure    42h (x8 over 42h)      kubelet          Node k8cp status is now: NodeHasNoDiskPressure</p>
<p>    Normal   NodeHasSufficientPID     42h (x7 over 42h)      kubelet          Node k8cp status is now: NodeHasSufficientPID</p>
<p>    Warning  Rebooted                 42h                    kubelet          Node k8cp has been rebooted, boot id: 90eb3153-935e-4341-9fd1-95e3a41f8b5c</p>
<p>    Normal   RegisteredNode           42h                    node-controller  Node k8cp event: Registered Node k8cp in Controller</p>
<p>    Normal   Starting                 5m37s                  kubelet          Starting kubelet.</p>
<p>    Warning  InvalidDiskCapacity      5m37s                  kubelet          invalid capacity 0 on image filesystem</p>
<p>    Normal   NodeHasSufficientMemory  5m36s (x8 over 5m37s)  kubelet          Node k8cp status is now: NodeHasSufficientMemory</p>
<p>    Normal   NodeHasNoDiskPressure    5m36s (x8 over 5m37s)  kubelet          Node k8cp status is now: NodeHasNoDiskPressure</p>
<p>    Normal   NodeHasSufficientPID     5m36s (x7 over 5m37s)  kubelet          Node k8cp status is now: NodeHasSufficientPID</p>
<p>    Normal   NodeAllocatableEnforced  5m36s                  kubelet          Updated Node Allocatable limit across pods</p>
<p>    Warning  Rebooted                 5m5s                   kubelet          Node k8cp has been rebooted, boot id: 06458632-cc96-4dec-b49f-2bfe27c90c01</p>
<p>    Normal   RegisteredNode           4m49s                  node-controller  Node k8cp event: Registered Node k8cp in Controller</p>
<p>    admin@k8cp:~$</p>
<p>    admin@k8cp:~$ kubectl describe node k8dp1</p>
<p>    Name:               k8dp1</p>
<p>    Roles:              &lt;none&gt;</p>
<p>    Labels:             beta.kubernetes.io/arch=amd64</p>
<p>                        beta.kubernetes.io/os=linux</p>
<p>                        kubernetes.io/arch=amd64</p>
<p>                        kubernetes.io/hostname=k8dp1</p>
<p>                        kubernetes.io/os=linux</p>
<p>    Annotations:        csi.volume.kubernetes.io/nodeid: {"csi.tigera.io":"k8dp1"}</p>
<p>                        kubeadm.alpha.kubernetes.io/cri-socket: unix:///var/run/containerd/containerd.sock</p>
<p>                        node.alpha.kubernetes.io/ttl: 0</p>
<p>                        projectcalico.org/IPv4Address: 192.168.1.17/24</p>
<p>                        projectcalico.org/IPv4VXLANTunnelAddr: 10.244.245.64</p>
<p>                        volumes.kubernetes.io/controller-managed-attach-detach: true</p>
<p>    CreationTimestamp:  Sun, 09 Aug 2026 07:25:18 +0000</p>
<p>    Taints:             &lt;none&gt;</p>
<p>    Unschedulable:      false</p>
<p>    Lease:</p>
<p>    HolderIdentity:  k8dp1</p>
<p>    AcquireTime:     &lt;unset&gt;</p>
<p>    RenewTime:       Sun, 16 Aug 2026 19:35:22 +0000</p>
<p>    Conditions:</p>
<p>    Type                 Status  LastHeartbeatTime                 LastTransitionTime                Reason                       Message</p>
<p>    ----                 ------  -----------------                 ------------------                ------                       -------</p>
<p>    NetworkUnavailable   False   Sun, 16 Aug 2026 19:29:40 +0000   Sun, 16 Aug 2026 19:29:40 +0000   CalicoIsUp                   Calico is running on this node</p>
<p>    MemoryPressure       False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasSufficientMemory   kubelet has sufficient memory available</p>
<p>    DiskPressure         False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasNoDiskPressure     kubelet has no disk pressure</p>
<p>    PIDPressure          False   Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletHasSufficientPID      kubelet has sufficient PID available</p>
<p>    Ready                True    Sun, 16 Aug 2026 19:30:33 +0000   Fri, 14 Aug 2026 08:06:15 +0000   KubeletReady                 kubelet is posting ready status</p>
<p>    Addresses:</p>
<p>    InternalIP:  192.168.1.17</p>
<p>    Hostname:    k8dp1</p>
<p>    Capacity:</p>
<p>    cpu:                2</p>
<p>    ephemeral-storage:  67960152Ki</p>
<p>    hugepages-2Mi:      0</p>
<p>    memory:             17805032Ki</p>
<p>    pods:               110</p>
<p>    Allocatable:</p>
<p>    cpu:                2</p>
<p>    ephemeral-storage:  62632075980</p>
<p>    hugepages-2Mi:      0</p>
<p>    memory:             17702632Ki</p>
<p>    pods:               110</p>
<p>    System Info:</p>
<p>    Machine ID:                 11db4b66c0d743c59c80f612fd457cf9</p>
<p>    System UUID:                768ec7cb-54fa-d44e-8fff-63139906de9b</p>
<p>    Boot ID:                    873059b5-2543-4e12-bf09-c50e9a54454c</p>
<p>    Kernel Version:             6.17.0-35-generic</p>
<p>    OS Image:                   Ubuntu 24.04.2 LTS</p>
<p>    Operating System:           linux</p>
<p>    Architecture:               amd64</p>
<p>    Container Runtime Version:  containerd://2.2.1</p>
<p>    Kubelet Version:            v1.32.0</p>
<p>    Kube-Proxy Version:         v1.32.0</p>
<p>    PodCIDR:                      10.244.1.0/24</p>
<p>    PodCIDRs:                     10.244.1.0/24</p>
<p>    Non-terminated Pods:          (3 in total)</p>
<p>    Namespace                   Name                     CPU Requests  CPU Limits  Memory Requests  Memory Limits  Age</p>
<p>    ---------                   ----                     ------------  ----------  ---------------  -------------  ---</p>
<p>    calico-system               calico-node-pr74q        0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h</p>
<p>    calico-system               csi-node-driver-js8zv    0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h</p>
<p>    kube-system                 kube-proxy-x62pg         0 (0%)        0 (0%)      0 (0%)           0 (0%)         7d12h</p>
<p>    Allocated resources:</p>
<p>    (Total limits may be over 100 percent, i.e., overcommitted.)</p>
<p>    Resource           Requests  Limits</p>
<p>    --------           --------  ------</p>
<p>    cpu                0 (0%)    0 (0%)</p>
<p>    memory             0 (0%)    0 (0%)</p>
<p>    ephemeral-storage  0 (0%)    0 (0%)</p>
<p>    hugepages-2Mi      0 (0%)    0 (0%)</p>
<p>    Events:</p>
<p>    Type     Reason                   Age                    From             Message</p>
<p>    ----     ------                   ----                   ----             -------</p>
<p>    Normal   Starting                 6m3s                   kube-proxy      </p>
<p>    Normal   Starting                 42h                    kube-proxy      </p>
<p>    Normal   RegisteredNode           2d5h                   node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller</p>
<p>    Normal   RegisteredNode           2d5h                   node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller</p>
<p>    Normal   Starting                 42h                    kubelet          Starting kubelet.</p>
<p>    Warning  InvalidDiskCapacity      42h                    kubelet          invalid capacity 0 on image filesystem</p>
<p>    Normal   NodeAllocatableEnforced  42h                    kubelet          Updated Node Allocatable limit across pods</p>
<p>    Normal   NodeHasSufficientPID     42h (x7 over 42h)      kubelet          Node k8dp1 status is now: NodeHasSufficientPID</p>
<p>    Normal   NodeHasSufficientMemory  42h (x8 over 42h)      kubelet          Node k8dp1 status is now: NodeHasSufficientMemory</p>
<p>    Normal   NodeHasNoDiskPressure    42h (x8 over 42h)      kubelet          Node k8dp1 status is now: NodeHasNoDiskPressure</p>
<p>    Warning  Rebooted                 42h                    kubelet          Node k8dp1 has been rebooted, boot id: 5b22c7a4-5823-44fe-b4a5-ee44f53c9001</p>
<p>    Normal   RegisteredNode           42h                    node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller</p>
<p>    Normal   Starting                 6m56s                  kubelet          Starting kubelet.</p>
<p>    Warning  InvalidDiskCapacity      6m56s                  kubelet          invalid capacity 0 on image filesystem</p>
<p>    Normal   NodeAllocatableEnforced  6m55s                  kubelet          Updated Node Allocatable limit across pods</p>
<p>    Normal   NodeHasSufficientPID     6m49s (x7 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasSufficientPID</p>
<p>    Normal   NodeHasSufficientMemory  6m42s (x8 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasSufficientMemory</p>
<p>    Normal   NodeHasNoDiskPressure    6m42s (x8 over 6m56s)  kubelet          Node k8dp1 status is now: NodeHasNoDiskPressure</p>
<p>    Warning  Rebooted                 6m18s                  kubelet          Node k8dp1 has been rebooted, boot id: 873059b5-2543-4e12-bf09-c50e9a54454c</p>
<p>    Normal   RegisteredNode           6m                     node-controller  Node k8dp1 event: Registered Node k8dp1 in Controller</p>
<p>    admin@k8cp:~$</p>
<p># Capacity = total resources detected on the node.</p>
<p>#</p>
<p># Allocatable = resources Kubernetes considers available for</p>
<p># scheduling Pods after reserving resources for the system and</p>
<p># Kubernetes components.</p>
<p>############################################################</p>
<p># STEP 27.2 — Check Resource Usage on the Node</p>
<p>############################################################</p>
<p># If Metrics Server is available in your cluster, this shows</p>
<p># the CURRENT actual CPU and memory usage.</p>
<p>kubectl top node k8cp</p>
<p># Example:</p>
<p>#</p>
<p># NAME    CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%</p>
<p># k8dp1   250m         12%    800Mi           20%</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># 'kubectl top' shows actual/current usage.</p>
<p>#</p>
<p># 'Requests' and 'Allocatable' are scheduling concepts and</p>
<p># are different from actual CPU/memory consumption.</p>
<p>############################################################</p>
<p># STEP 27.3 — List Pods Running in the Cluster</p>
<p>############################################################</p>
<p># List Pods across all namespaces.</p>
<p>kubectl get pods -A -o wide</p>
<p># -A / --all-namespaces = include Pods from every namespace</p>
<p># -o wide               = also show node placement and other details</p>
<p>############################################################</p>
<p># STEP 27.4 — Display Pod CPU and Memory Requests</p>
<p>############################################################</p>
<p># Display the CPU and memory requests for each Pod.</p>
<p>#</p>
<p># This example looks at the first container in each Pod.</p>
<p>kubectl get pods -A \</p>
<p>  -o custom-columns="NAMESPACE:.metadata.namespace,POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"</p>
<p># Example output:</p>
<p>#</p>
<p># NAMESPACE   POD             CPU_REQUEST   MEMORY_REQUEST</p>
<p># default     nginx           100m          128Mi</p>
<p># kube-system coredns         100m          70Mi</p>
<p>#</p>
<p># A blank value means that the first container does not have</p>
<p># an explicit request configured.</p>
<p>############################################################</p>
<p># STEP 27.5 — Inspect Requests for Pods on ONE Node</p>
<p>############################################################</p>
<p># The previous command shows Pods across the whole cluster.</p>
<p># To understand one node specifically, first identify the Pods</p>
<p># scheduled there.</p>
<p>kubectl get pods -A -o wide --field-selector spec.nodeName=&lt;node-name&gt;</p>
<p># Example:</p>
<p>#</p>
<p># kubectl get pods -A -o wide --field-selector spec.nodeName=k8dp1</p>
<p>############################################################</p>
<p># STEP 27.6 — Understand Requests vs Actual Usage</p>
<p>############################################################</p>
<p># Requests are what the Kubernetes scheduler uses when deciding</p>
<p># whether a Pod can fit on a node.</p>
<p>#</p>
<p># Example:</p>
<p>#</p>
<p># Node Allocatable CPU = 4 CPU</p>
<p>#</p>
<p># Pod A requests = 500m</p>
<p># Pod B requests = 1 CPU</p>
<p># Pod C requests = 500m</p>
<p>#</p>
<p># Total requested = 2 CPU</p>
<p>#</p>
<p># Kubernetes considers approximately 2 CPU of the node's</p>
<p># allocatable CPU already committed to those Pods, regardless</p>
<p># of whether the containers are currently using all of it.</p>
<p>#</p>
<p># Actual CPU consumption can be checked with:</p>
<p>#</p>
<p># kubectl top node &lt;node-name&gt;</p>
<p># kubectl top pod -A</p>
<p>############################################################</p>
<p># STEP 27.7 — Inspect the Node's Allocated Resources</p>
<p>############################################################</p>
<p># At the bottom of 'kubectl describe node', Kubernetes provides</p>
<p># an "Allocated resources" section.</p>
<p>#</p>
<p># Run:</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Look for:</p>
<p>#</p>
<p># Allocated resources:</p>
<p>#   (Total limits may be over 100 percent, i.e., overcommitted.)</p>
<p>#   Resource           Requests      Limits</p>
<p>#   --------           --------      ------</p>
<p>#   cpu                ...           ...</p>
<p>#   memory             ...           ...</p>
<p>#</p>
<p># This section summarizes the CPU and memory requested/limited</p>
<p># by Pods scheduled on the node.</p>
<p>############################################################</p>
<p># STEP 27.8 — Useful Comparison</p>
<p>############################################################</p>
<p># Think of the relationship as:</p>
<p>#</p>
<p># Capacity</p>
<p>#    |</p>
<p>#    +---- System/Kubernetes reservations</p>
<p>#    |</p>
<p>#    v</p>
<p># Allocatable</p>
<p>#    |</p>
<p>#    +---- Pod resource requests</p>
<p>#    |</p>
<p>#    v</p>
<p># Available scheduling capacity</p>
<p>#</p>
<p>#</p>
<p># IMPORTANT:</p>
<p>#</p>
<p># Capacity != Allocatable</p>
<p># Allocatable != Actual Usage</p>
<p># Requests != Actual Usage</p>
<p>#</p>
<p># Capacity:</p>
<p>#   What the node physically provides.</p>
<p>#</p>
<p># Allocatable:</p>
<p>#   What Kubernetes makes available for scheduling Pods.</p>
<p>#</p>
<p># Requests:</p>
<p>#   What Pods ask Kubernetes to reserve for scheduling purposes.</p>
<p>#</p>
<p># Actual Usage:</p>
<p>#   What the workloads are actually consuming at runtime.</p>
<p>############################################################</p>
<p># STEP 27.9 — Final Quick Checks</p>
<p>############################################################</p>
<p># Node capacity + allocatable + allocated resources:</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Actual node CPU/memory usage:</p>
<p>kubectl top node &lt;node-name&gt;</p>
<p># Pods running on the node:</p>
<p>kubectl get pods -A -o wide \</p>
<p>  --field-selector spec.nodeName=&lt;node-name&gt;</p>
<p># Actual Pod CPU/memory usage:</p>
<p>kubectl top pod -A</p>
<p># Pod CPU/memory requests:</p>
<p>kubectl get pods -A \</p>
<p>  -o custom-columns="NAMESPACE:.metadata.namespace,POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"</p></td>
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
<p># STEP 28 — Exercise: Requests and Limits</p>
<p>############################################################</p>
<p># Purpose:</p>
<p># Practice how CPU/memory REQUESTS affect scheduling and how</p>
<p># CPU/memory LIMITS define the maximum resources a container</p>
<p># is allowed to consume.</p>
<p>#</p>
<p># Key concepts:</p>
<p>#</p>
<p>#   Requests -&gt; used by the scheduler when placing a Pod.</p>
<p>#   Limits   -&gt; maximum resource consumption for the container.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># A Pod can only be scheduled if its REQUESTS can fit within</p>
<p># the node's available ALLOCATABLE resources.</p>
<p>#</p>
<p># For this exercise, we will:</p>
<p>#   1. Inspect the node</p>
<p>#   2. Create a Pod that should fit</p>
<p>#   3. Create a Pod with larger requests</p>
<p>#   4. Create a very small Pod</p>
<p>#   5. Inspect the results</p>
<p>#   6. Use an Alpine curl Pod for additional testing</p>
<p>#   7. Clean everything up</p>
<p>############################################################</p>
<p># STEP 28.1 — Inspect the Node Before the Exercise</p>
<p>############################################################</p>
<p># First identify your nodes.</p>
<p>kubectl get nodes</p>
<p># Inspect the node you want to use for the exercise.</p>
<p># Replace &lt;node-name&gt; with your worker, for example k8dp1.</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Pay particular attention to:</p>
<p>#</p>
<p># Capacity:</p>
<p>#   cpu:</p>
<p>#   memory:</p>
<p>#</p>
<p># Allocatable:</p>
<p>#   cpu:</p>
<p>#   memory:</p>
<p>#</p>
<p># Allocated resources:</p>
<p>#   cpu</p>
<p>#   memory</p>
<p>#</p>
<p># The scheduler evaluates Pod REQUESTS against the node's</p>
<p># available allocatable resources.</p>
<p>############################################################</p>
<p># STEP 28.2 — Create Pod 1: FIT POD</p>
<p>############################################################</p>
<p># Create a Pod with relatively small resource requests.</p>
<p>#</p>
<p># Requests:</p>
<p>#   CPU    = 198m</p>
<p>#   Memory = 854Mi</p>
<p>#</p>
<p># Limits:</p>
<p>#   CPU    = 198m</p>
<p>#   Memory = 854Mi</p>
<p>#</p>
<p># Because requests and limits are identical here, the container</p>
<p># cannot request more than the amount it requested.</p>
<p>cat &gt; pod-1.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: fit-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: successful-container</p>
<p>      image: nginx</p>
<p>      resources:</p>
<p>        requests:</p>
<p>          memory: "854Mi"</p>
<p>          cpu: "198m"</p>
<p>        limits:</p>
<p>          memory: "854Mi"</p>
<p>          cpu: "198m"</p>
<p>EOF</p>
<p># Create the Pod.</p>
<p>kubectl create -f pod-1.yaml</p>
<p># Check whether it was scheduled successfully.</p>
<p>kubectl get pod fit-pod -o wide</p>
<p># Expected:</p>
<p>#</p>
<p># NAME      READY   STATUS    ...</p>
<p># fit-pod   1/1     Running   ...</p>
<p>#</p>
<p># If it remains Pending, inspect why:</p>
<p>kubectl describe pod fit-pod</p>
<p># Look at the Events section at the bottom.</p>
<p>#</p>
<p># The exact result depends on the resources currently available</p>
<p># on your node.</p>
<p>############################################################</p>
<p># STEP 28.3 — Inspect Pod 1 Resource Configuration</p>
<p>############################################################</p>
<p># Confirm the requests and limits configured on the Pod.</p>
<p>kubectl get pod fit-pod \</p>
<p>  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory,CPU_LIMIT:.spec.containers[0].resources.limits.cpu,MEMORY_LIMIT:.spec.containers[0].resources.limits.memory"</p>
<p># Expected:</p>
<p>#</p>
<p># POD       CPU_REQUEST   MEMORY_REQUEST   CPU_LIMIT   MEMORY_LIMIT</p>
<p># fit-pod   198m          854Mi            198m        854Mi</p>
<p>############################################################</p>
<p># STEP 28.4 — Remove Pod 1 Before Continuing</p>
<p>############################################################</p>
<p># Remove the Pod so that its requested resources are no longer</p>
<p># part of the node's current allocation.</p>
<p>kubectl delete -f pod-1.yaml</p>
<p>############################################################</p>
<p># STEP 28.5 — Create Pod 2: LARGER REQUEST</p>
<p>############################################################</p>
<p># This Pod requests:</p>
<p>#</p>
<p>#   CPU    = 200m</p>
<p>#   Memory = 500Mi</p>
<p>#</p>
<p># Limits:</p>
<p>#</p>
<p>#   CPU    = 200m</p>
<p>#   Memory = 854Mi</p>
<p>#</p>
<p># The important point is that scheduling is based on REQUESTS,</p>
<p># not LIMITS.</p>
<p>#</p>
<p># Therefore the scheduler evaluates:</p>
<p>#</p>
<p>#   CPU request    = 200m</p>
<p>#   Memory request = 500Mi</p>
<p>#</p>
<p># against the node's available allocatable resources.</p>
<p>cat &gt; pod-2.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: unfit-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: successful-container</p>
<p>      image: nginx</p>
<p>      resources:</p>
<p>        requests:</p>
<p>          memory: "500Mi"</p>
<p>          cpu: "200m"</p>
<p>        limits:</p>
<p>          memory: "854Mi"</p>
<p>          cpu: "200m"</p>
<p>EOF</p>
<p># Create the Pod.</p>
<p>kubectl create -f pod-2.yaml</p>
<p># Check its status.</p>
<p>kubectl get pod unfit-pod -o wide</p>
<p># IMPORTANT:</p>
<p># Do not assume this Pod will be Pending just because it is</p>
<p># called "unfit-pod".</p>
<p>#</p>
<p># Whether it fits depends on the CURRENT available resources</p>
<p># and requests of the node at the time you run the exercise.</p>
<p>############################################################</p>
<p># STEP 28.6 — If Pod 2 Is Pending, Investigate</p>
<p>############################################################</p>
<p># Describe the Pod and inspect the Events section.</p>
<p>kubectl describe pod unfit-pod</p>
<p># A typical scheduling failure may contain something similar to:</p>
<p>#</p>
<p>#   Insufficient cpu</p>
<p>#</p>
<p># or:</p>
<p>#</p>
<p>#   Insufficient memory</p>
<p>#</p>
<p># This is the important part of the exercise:</p>
<p>#</p>
<p># The scheduler rejected the Pod because its REQUESTS could not</p>
<p># be satisfied by a suitable node.</p>
<p>############################################################</p>
<p># STEP 28.7 — Compare Pod Requests with Node Allocation</p>
<p>############################################################</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Look at:</p>
<p>#</p>
<p>#   Allocatable:</p>
<p>#</p>
<p># and:</p>
<p>#</p>
<p>#   Allocated resources:</p>
<p>#</p>
<p># Remember:</p>
<p>#</p>
<p># Allocatable = resources available for Kubernetes workloads.</p>
<p>#</p>
<p># Requests = resources already requested by scheduled Pods.</p>
<p>#</p>
<p># The scheduler uses these values when deciding placement.</p>
<p>############################################################</p>
<p># STEP 28.8 — Remove Pod 2</p>
<p>############################################################</p>
<p>kubectl delete -f pod-2.yaml</p>
<p>############################################################</p>
<p># STEP 28.9 — Create Pod 3: VERY SMALL REQUESTS</p>
<p>############################################################</p>
<p># This Pod requests almost no resources:</p>
<p>#</p>
<p>#   CPU    = 1m</p>
<p>#   Memory = 1Mi</p>
<p>#</p>
<p># This demonstrates how a Pod with very small requests can</p>
<p># consume very little of the node's scheduling capacity.</p>
<p>cat &gt; pod-3.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: tmp-pod</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: successful-container</p>
<p>      image: nginx</p>
<p>      resources:</p>
<p>        requests:</p>
<p>          memory: "1Mi"</p>
<p>          cpu: "1m"</p>
<p>EOF</p>
<p># Create the Pod.</p>
<p>kubectl create -f pod-3.yaml</p>
<p># Check its status and node placement.</p>
<p>kubectl get pod tmp-pod -o wide</p>
<p># Inspect the configured request.</p>
<p>kubectl get pod tmp-pod \</p>
<p>  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory"</p>
<p># Expected:</p>
<p>#</p>
<p># POD      CPU_REQUEST   MEMORY_REQUEST</p>
<p># tmp-pod  1m            1Mi</p>
<p>############################################################</p>
<p># STEP 28.10 — Observe the Node Again</p>
<p>############################################################</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Compare the Allocated resources before and after creating</p>
<p># tmp-pod.</p>
<p>#</p>
<p># You should see the Pod's small request reflected in the</p>
<p># node's allocated CPU/memory requests.</p>
<p>############################################################</p>
<p># STEP 28.11 — Remove Pod 3</p>
<p>############################################################</p>
<p>kubectl delete -f pod-3.yaml</p>
<p>############################################################</p>
<p># STEP 28.12 — Create an Alpine curl Pod</p>
<p>############################################################</p>
<p># Create a long-running temporary Pod that can be used for</p>
<p># connectivity/testing exercises.</p>
<p>kubectl run curl-pod \</p>
<p>  --image=alpine/curl \</p>
<p>  --command -- \</p>
<p>  sleep 36000</p>
<p># Verify:</p>
<p>kubectl get pod curl-pod -o wide</p>
<p># Once Running, you can enter the Pod:</p>
<p>kubectl exec -it curl-pod -- sh</p>
<p># Inside the container you can test connectivity, for example:</p>
<p>#</p>
<p># curl http://&lt;service-name&gt;:&lt;port&gt;</p>
<p>#</p>
<p># Exit the container with:</p>
<p>exit</p>
<p>############################################################</p>
<p># STEP 28.13 — Requests vs Limits — Important Observation</p>
<p>############################################################</p>
<p># Example:</p>
<p>#</p>
<p># resources:</p>
<p>#   requests:</p>
<p>#     cpu: "200m"</p>
<p>#     memory: "500Mi"</p>
<p>#   limits:</p>
<p>#     cpu: "500m"</p>
<p>#     memory: "1Gi"</p>
<p>#</p>
<p>#</p>
<p># REQUESTS:</p>
<p>#   The scheduler uses 200m CPU and 500Mi memory when deciding</p>
<p>#   whether the Pod can fit on a node.</p>
<p>#</p>
<p># LIMITS:</p>
<p>#   The container can use up to 500m CPU and 1Gi memory,</p>
<p>#   subject to Kubernetes resource enforcement.</p>
<p>#</p>
<p># Therefore:</p>
<p>#</p>
<p>#   requests != limits</p>
<p>#</p>
<p># A Pod can request a small amount but have a higher limit.</p>
<p>############################################################</p>
<p># STEP 28.14 — Useful Verification Commands</p>
<p>############################################################</p>
<p># Check all Pods and where they are running:</p>
<p>kubectl get pods -A -o wide</p>
<p># Check node capacity and allocatable resources:</p>
<p>kubectl describe node &lt;node-name&gt;</p>
<p># Check actual node resource usage, if Metrics Server exists:</p>
<p>kubectl top node &lt;node-name&gt;</p>
<p># Check actual Pod resource usage:</p>
<p>kubectl top pod -A</p>
<p># Check a Pod's requests and limits:</p>
<p>kubectl get pod &lt;pod-name&gt; \</p>
<p>  -o custom-columns="POD:.metadata.name,CPU_REQUEST:.spec.containers[0].resources.requests.cpu,MEMORY_REQUEST:.spec.containers[0].resources.requests.memory,CPU_LIMIT:.spec.containers[0].resources.limits.cpu,MEMORY_LIMIT:.spec.containers[0].resources.limits.memory"</p>
<p>############################################################</p>
<p># STEP 28.15 — Key Takeaways</p>
<p>############################################################</p>
<p># 1. Requests are primarily used by the scheduler.</p>
<p>#</p>
<p># 2. Limits define the maximum resource consumption allowed</p>
<p>#    for a container.</p>
<p>#</p>
<p># 3. A Pod can be Pending because its REQUESTS cannot fit on</p>
<p>#    any suitable node.</p>
<p>#</p>
<p># 4. The scheduler does NOT use current CPU/memory usage as the</p>
<p>#    primary basis for fitting a Pod.</p>
<p>#</p>
<p># 5. Actual usage can be different from the configured request.</p>
<p>#</p>
<p># 6. A container can have:</p>
<p>#</p>
<p>#      requests &lt; limits</p>
<p>#</p>
<p>#    which is a very common configuration.</p>
<p>#</p>
<p># 7. If requests and limits are equal, the container has the</p>
<p>#    same requested and maximum resource value.</p>
<p>############################################################</p>
<p># CLEANUP</p>
<p>############################################################</p>
<p># Remove the test Pods if they still exist.</p>
<p>kubectl delete pod fit-pod --ignore-not-found</p>
<p>kubectl delete pod unfit-pod --ignore-not-found</p>
<p>kubectl delete pod tmp-pod --ignore-not-found</p>
<p>kubectl delete pod curl-pod --ignore-not-found</p>
<p># Remove the temporary YAML files created during the exercise.</p>
<p>rm -f pod-1.yaml pod-2.yaml pod-3.yaml</p>
<p># Final verification:</p>
<p>kubectl get pods -A -o wide</p></td>
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
<p># STEP 29 — JSONPath</p>
<p>############################################################</p>
<p>#Purpose: learn how to extract specific fields from Kubernetes JSON output using JSONPath.**</p>
<p># Create two test Pods.</p>
<p>kubectl run pod-1 --image=nginx</p>
<p>kubectl run pod-2 --image=httpd</p>
<p># Get the complete JSON representation.</p>
<p>kubectl get pods -o json</p>
<p># Save it to a file for inspection.</p>
<p>kubectl get pods -o json &gt; outputs.json</p>
<p>JSONPath expressions</p>
<p># Root object</p>
<p>$</p>
<p># Kind</p>
<p>$.kind</p>
<p># Metadata</p>
<p>$.metadata</p>
<p># List of objects</p>
<p>$.items</p>
<p># First item</p>
<p>$.items[0]</p>
<p># All items</p>
<p>$.items[*]</p>
<p># Metadata of all items</p>
<p>$.items[*].metadata</p>
<p># Names of all Pods</p>
<p>$.items[*].metadata.name</p>
<p># Containers</p>
<p>$.items[*].spec.containers</p>
<p># Images of all containers</p>
<p>$.items[*].spec.containers[*].image</p>
<p># Pod IPs</p>
<p>$.items[*].status.podIP</p>
<p>Using JSONPath with kubectl</p>
<p># Extract Pod names.</p>
<p>kubectl get pods -o jsonpath="{$.items[*].metadata.name}"</p>
<p># Extract Pod IPs.</p>
<p>kubectl get pods -o jsonpath="{$.items[*].status.podIP}"</p>
<p>Using range / end</p>
<p># Print each Pod IP on its own line.</p>
<p>kubectl get pods -o jsonpath='{range .items[*]}{.status.podIP}{"\n"}{end}'</p>
<p># Print Pod name and IP together.</p>
<p>kubectl get pods -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.podIP}{"\n"}{end}'</p></td>
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
<p>export KUBECONFIG="/c/Users/Sridhara/.kube/localkubeconfig"</p>
<p>############################################################</p>
<p># STEP 31 — Ingress Controller with TLS</p>
<p>############################################################</p>
<p># Purpose: This POC demonstrates how an Ingress Controller routes</p>
<p># external HTTP/HTTPS traffic to a Kubernetes Service and how TLS</p>
<p># is configured using a Kubernetes TLS Secret.</p>
<p>#</p>
<p># Domain: nerdylabs.internal</p>
<p>#</p>
<p># Request flow:</p>
<p># Client -&gt; Ingress Controller -&gt; Ingress -&gt; Service -&gt; Pod</p>
<p>############################################################</p>
<p># STEP 31.1 — Create a Dedicated Namespace</p>
<p>############################################################</p>
<p># Keep all resources for this POC isolated from other workloads</p>
<p># in the local cluster.</p>
<p>kubectl create namespace ingress-poc</p>
<p>kubectl get namespace ingress-poc</p>
<p>############################################################</p>
<p># STEP 31.2 — Create the Application Pod</p>
<p>############################################################</p>
<p># Create the nginx Pod that will act as the backend application.</p>
<p># The Pod itself does not need to know anything about Ingress or TLS.</p>
<p>kubectl run nerdylabs-app   --image=nginx   --namespace=ingress-poc</p>
<p>kubectl get pod -n ingress-poc -o wide</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $ kubectl get pod -n ingress-poc -o wide</p>
<p>    NAME            READY   STATUS    RESTARTS   AGE   IP               NODE    NOMINATED NODE   READINESS GATES</p>
<p>    nerdylabs-app   1/1     Running   0          13s   10.244.245.114   k8dp1   &lt;none&gt;           &lt;none&gt;</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>############################################################</p>
<p># STEP 31.3 — Create the Application Service</p>
<p>############################################################</p>
<p># Create a ClusterIP Service to provide a stable internal endpoint</p>
<p># for the application Pod. The Service listens on port 80 and</p>
<p># forwards traffic to port 80 on nerdylabs-app.</p>
<p>kubectl expose pod nerdylabs-app   --name=nerdylabs-service   --port=80   --target-port=80   --namespace=ingress-poc</p>
<p>kubectl get service -n ingress-poc</p>
<p>kubectl describe service nerdylabs-service   -n ingress-poc</p>
<p>   </p>
<p>    PS C:\ws&gt; kubectl expose pod nerdylabs-app   --name=nerdylabs-service   --port=80   --target-port=80   --namespace=ingress-poc</p>
<p>    service/nerdylabs-service exposed</p>
<p>    PS C:\ws&gt;</p>
<p>   </p>
<p>    PS C:\ws&gt; kubectl get service -n ingress-poc</p>
<p>    NAME                TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE</p>
<p>    nerdylabs-service   ClusterIP   10.97.82.162   &lt;none&gt;        80/TCP    0s</p>
<p>    PS C:\ws&gt;</p>
<p>    PS C:\ws&gt; kubectl describe service nerdylabs-service   -n ingress-poc</p>
<p>    Name:                     nerdylabs-service</p>
<p>    Namespace:                ingress-poc</p>
<p>    Labels:                   run=nerdylabs-app</p>
<p>    Annotations:              &lt;none&gt;</p>
<p>    Selector:                 run=nerdylabs-app</p>
<p>    Type:                     ClusterIP</p>
<p>    IP Family Policy:         SingleStack</p>
<p>    IP Families:              IPv4</p>
<p>    IP:                       10.97.82.162</p>
<p>    IPs:                      10.97.82.162</p>
<p>    Port:                     &lt;unset&gt;  80/TCP</p>
<p>    TargetPort:               80/TCP</p>
<p>    Endpoints:                10.244.245.106:80</p>
<p>    Session Affinity:         None</p>
<p>    Internal Traffic Policy:  Cluster</p>
<p>    Events:                   &lt;none&gt;</p>
<p>    PS C:\ws&gt;</p>
<p># Verify that the Service has a backend endpoint.</p>
<p>kubectl get endpoints nerdylabs-service   -n ingress-poc</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $ kubectl get endpoints nerdylabs-service   -n ingress-poc</p>
<p>    NAME                ENDPOINTS           AGE</p>
<p>    nerdylabs-service   10.244.245.114:80   7h23m</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>############################################################</p>
<p># STEP 31.4 — Test the Service Before Ingress using a THROW AWAY POD</p>
<p>############################################################</p>
<p> </p>
<p>kubectl run curl-test --image=curlimages/curl --restart=Never --namespace=ingress-poc --rm -it --command -- curl -s http://nerdylabs-service</p>
<p># You should receive the nginx welcome page HTML.</p>
<p> </p>
<p>############################################################</p>
<p># STEP 31.5 — Install NGINX Ingress Controller</p>
<p>############################################################</p>
<p># Install the NGINX Ingress Controller. The controller watches</p>
<p># Kubernetes Ingress resources and configures NGINX to route</p>
<p># incoming HTTP/HTTPS traffic to Services.</p>
<p>kubectl create -f   https://raw.githubusercontent.com/zealvora/certified-kubernetes-security-specialist/refs/heads/main/domain-1-cluster-setup/nginx-controller.yaml</p>
<p>kubectl get pods -n ingress-nginx</p>
<p>        PS C:\ws&gt; kubectl get pods -n ingress-nginx</p>
<p>        NAME                                       READY   STATUS              RESTARTS     AGE</p>
<p>        ingress-nginx-admission-create-knbqx       0/1     Completed           0            10s</p>
<p>        ingress-nginx-admission-patch-xjnjd        0/1     Completed           1 (2s ago)   10s</p>
<p>        ingress-nginx-controller-d8c96cf68-6j7gw   0/1     ContainerCreating   0            10s</p>
<p>        PS C:\ws&gt; kubectl get pods -n ingress-nginx</p>
<p>        NAME                                       READY   STATUS      RESTARTS   AGE</p>
<p>        ingress-nginx-admission-create-knbqx       0/1     Completed   0          45s</p>
<p>        ingress-nginx-admission-patch-xjnjd        0/1     Completed   1          45s</p>
<p>        ingress-nginx-controller-d8c96cf68-6j7gw   0/1     Running     0          45s</p>
<p>        PS C:\ws&gt;</p>
<p> </p>
<p>############################################################</p>
<p># STEP 31.6 — Inspect the Ingress Controller Service</p>
<p>############################################################</p>
<p># The controller Service exposes HTTP and HTTPS, potentially</p>
<p># through NodePorts. We need the actual HTTPS NodePort for testing.</p>
<p># Notice the ingress is exposed through a NodePort. The port associated with 443 is the HTTPS NodePort.</p>
<p>kubectl get service -n ingress-nginx</p>
<p>  PS C:\ws&gt; kubectl get service -n ingress-nginx</p>
<p>  NAME                                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                      AGE</p>
<p>  ingress-nginx-controller             NodePort    10.97.185.85     &lt;none&gt;        80:31630/TCP,443:32482/TCP   85s</p>
<p>  ingress-nginx-controller-admission   ClusterIP   10.101.115.208   &lt;none&gt;        443/TCP                      85s</p>
<p>  PS C:\ws&gt;</p>
<p>kubectl describe service ingress-nginx-controller   -n ingress-nginx</p>
<p># Look for ports similar to:</p>
<p>#</p>
<p># 80:xxxxx/TCP</p>
<p># 443:xxxxx/TCP</p>
<p>#</p>
<p># The port associated with 443 is the HTTPS NodePort.</p>
<p># Do not assume a fixed NodePort number.</p>
<p>############################################################</p>
<p># STEP 31.7 — Identify the Node IP</p>
<p>############################################################</p>
<p># The request will enter the cluster through a node IP and the</p>
<p># HTTPS NodePort exposed by the Ingress Controller.</p>
<p>kubectl get nodes -o wide</p>
<p>PS C:\ws&gt; kubectl get nodes -o wide                                          </p>
<p>NAME    STATUS   ROLES           AGE   VERSION   INTERNAL-IP    EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME</p>
<p>k8cp    Ready    control-plane   9d    v1.32.0   192.168.1.16   &lt;none&gt;        Ubuntu 24.04.2 LTS   6.17.0-35-generic   containerd://2.2.1</p>
<p>k8dp1   Ready    &lt;none&gt;          9d    v1.32.0   192.168.1.17   &lt;none&gt;        Ubuntu 24.04.2 LTS   7.0.0-28-generic    containerd://2.2.1</p>
<p>PS C:\ws&gt;</p>
<p># Use the InternalIP of a node that is reachable from your laptop.</p>
<p>#</p>
<p># Example:</p>
<p>#</p>
<p># NODE_IP=192.168.1.16</p>
<p>############################################################</p>
<p># STEP 31.8 — Test the Ingress Controller Before Application TLS</p>
<p>############################################################</p>
<p># Test the HTTPS NodePort directly. The -k option allows curl to</p>
<p># continue even if the controller's default certificate is untrusted.</p>
<p>#Ensure both nodes are in ready state. In my case, I am using the second node IP</p>
<p>#Also my connection was flaky, so I had to run the curl command multiple times to get a response.</p>
<p>kubectl get nodes</p>
<p>curl -kv https://192.168.1.17:32482/</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers</p>
<p>$ kubectl get nodes</p>
<p>NAME    STATUS   ROLES           AGE   VERSION</p>
<p>k8cp    Ready    control-plane   9d    v1.32.0</p>
<p>k8dp1   Ready    &lt;none&gt;          9d    v1.32.0</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers</p>
<p>$ curl -kv https://192.168.1.17:32482/</p>
<p>*   Trying 192.168.1.17:32482...</p>
<p>* schannel: disabled automatic use of client certificate</p>
<p>* schannel: using IP address, SNI is not supported by OS.</p>
<p>* Connected to 192.168.1.17 (192.168.1.17) port 32482</p>
<p>* using HTTP/1.x</p>
<p>&gt; GET / HTTP/1.1</p>
<p>&gt; Host: 192.168.1.17:32482</p>
<p>&gt; User-Agent: curl/8.12.1</p>
<p>&gt; Accept: */*</p>
<p>&gt;</p>
<p>* schannel: remote party requests renegotiation</p>
<p>* schannel: renegotiating SSL/TLS connection</p>
<p>* schannel: SSL/TLS connection renegotiated</p>
<p>* schannel: remote party requests renegotiation</p>
<p>* schannel: renegotiating SSL/TLS connection</p>
<p>* schannel: SSL/TLS connection renegotiated</p>
<p>&lt; HTTP/1.1 404 Not Found</p>
<p>&lt; Date: Tue, 18 Aug 2026 10:55:31 GMT</p>
<p>&lt; Content-Type: text/html</p>
<p>&lt; Content-Length: 146</p>
<p>&lt; Connection: keep-alive</p>
<p>&lt; Strict-Transport-Security: max-age=31536000; includeSubDomains</p>
<p>&lt;</p>
<p>&lt;html&gt;</p>
<p>&lt;head&gt;&lt;title&gt;404 Not Found&lt;/title&gt;&lt;/head&gt;</p>
<p>&lt;body&gt;</p>
<p>&lt;center&gt;&lt;h1&gt;404 Not Found&lt;/h1&gt;&lt;/center&gt;</p>
<p>&lt;hr&gt;&lt;center&gt;nginx&lt;/center&gt;</p>
<p>&lt;/body&gt;</p>
<p>&lt;/html&gt;</p>
<p>* Connection #0 to host 192.168.1.17 left intact</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers</p>
<p>$</p>
<p># At this stage we are only proving that the Ingress Controller</p>
<p># itself is reachable. nerdylabs.internal has not been configured yet.</p>
<p>############################################################</p>
<p># STEP 31.9 — Create TLS Working Directory</p>
<p>############################################################</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics (main)</p>
<p>$ mkdir tlsintg</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics (main)</p>
<p>$ cd tlsintg</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>$ pwd</p>
<p>/c/ws/k8basics/tlsintg</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>$</p>
<p> </p>
<p>############################################################</p>
<p># STEP 31.10 — Create a Self-Signed TLS Certificate</p>
<p>############################################################</p>
<p># Create a private key and self-signed certificate for</p>
<p># nerdylabs.internal. This is suitable for a lab but will not be</p>
<p># trusted automatically by normal browsers or curl.</p>
<p>#I DID NOT USE THIS CMD</p>
<p>openssl req  -x509   -nodes   -days 365   -newkey rsa:2048   -keyout nerdylabs.key   -out nerdylabs.crt   -subj "/CN=nerdylabs.internal/O=NerdyLabs"</p>
<p>#USED BELOW CMD AS ABOVE WAS NOT WORKING ON POWERSHELL AND ALSO GITBASH</p>
<p>MSYS_NO_PATHCONV=1 openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nerdylabs.key -out nerdylabs.crt -subj "/CN=nerdylabs.internal/O=NerdyLabs"</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>$ MSYS_NO_PATHCONV=1 openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nerdylabs.key -out nerdylabs.crt -subj "/CN=nerdylabs.internal/O=NerdyLabs"</p>
<p>.....+..+......+++++++++++++++++++++++++++++++++++++++*.....+++++++++++++++++++++++++++++++++++++++*.....+.+........+...+....+........+.......+...........+....+......+.....+....+......+....................+.......+..+...+......+.+......+.........+.....+.+........+.....................++++++</p>
<p>.......+....+...+.................+.+..+.+.....+.+...........+.......+...+.....+...+.......+++++++++++++++++++++++++++++++++++++++*.+...+....+........+...+++++++++++++++++++++++++++++++++++++++*..+.....++++++</p>
<p>-----</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>$ ls -lrt</p>
<p>total 8</p>
<p>-rw-r--r-- 1 Sridhara 197610 1732 Aug 18 16:58 nerdylabs.key</p>
<p>-rw-r--r-- 1 Sridhara 197610 1212 Aug 18 16:58 nerdylabs.crt</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>$</p>
<p># Verify the certificate:</p>
<p>openssl x509 \</p>
<p>  -in nerdylabs.crt \</p>
<p>  -noout \</p>
<p>  -subject \</p>
<p>  -issuer \</p>
<p>  -dates</p>
<p>   </p>
<p>    subject=CN=nerdylabs.internal, O=NerdyLabs</p>
<p>    issuer=CN=nerdylabs.internal, O=NerdyLabs</p>
<p>    notBefore=Aug 18 15:58:58 2026 GMT</p>
<p>    notAfter=Aug 18 15:58:58 2027 GMT</p>
<p>   </p>
<p>############################################################</p>
<p># STEP 31.11 — Create Kubernetes TLS Secret</p>
<p>############################################################</p>
<p># Store the certificate and private key in a Kubernetes TLS Secret.</p>
<p># The Ingress will reference this Secret when terminating TLS.</p>
<p>kubectl create secret tls nerdylabs-tls \</p>
<p>  --cert=nerdylabs.crt \</p>
<p>  --key=nerdylabs.key \</p>
<p>  --namespace=ingress-poc</p>
<p>kubectl get secret nerdylabs-tls -n ingress-poc</p>
<p>kubectl describe secret nerdylabs-tls -n ingress-poc</p>
<p># Expected Secret type:</p>
<p>#</p>
<p># kubernetes.io/tls</p>
<p>############################################################</p>
<p># STEP 31.12 — Create the Ingress with TLS</p>
<p>############################################################</p>
<p># Create an Ingress for nerdylabs.internal. Requests to "/" are</p>
<p># forwarded to nerdylabs-service on port 80. TLS uses the</p>
<p># nerdylabs-tls Secret.</p>
<p>kubectl create ingress nerdylabs-ingress \</p>
<p>  --class=nginx \</p>
<p>  --rule="nerdylabs.internal/*=nerdylabs-service:80,tls=nerdylabs-tls" \</p>
<p>  --namespace=ingress-poc</p>
<p>kubectl get ingress -n ingress-poc</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $ kubectl get ingress -n ingress-poc</p>
<p>    NAME                CLASS   HOSTS                ADDRESS        PORTS     AGE</p>
<p>    nerdylabs-ingress   nginx   nerdylabs.internal   10.97.185.85   80, 443   43m</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>kubectl describe ingress nerdylabs-ingress   -n ingress-poc</p>
<p>    $ kubectl describe ingress nerdylabs-ingress   -n ingress-poc</p>
<p>    Name:             nerdylabs-ingress</p>
<p>    Labels:           &lt;none&gt;</p>
<p>    Namespace:        ingress-poc</p>
<p>    Address:          </p>
<p>    Ingress Class:    nginx</p>
<p>    Default backend:  &lt;default&gt;</p>
<p>    TLS:</p>
<p>    nerdylabs-tls terminates nerdylabs.internal</p>
<p>    Rules:</p>
<p>    Host                Path  Backends</p>
<p>    ----                ----  --------</p>
<p>    nerdylabs.internal  </p>
<p>                        /   nerdylabs-service:80 ()</p>
<p>    Annotations:          &lt;none&gt;</p>
<p>    Events:</p>
<p>    Type    Reason  Age   From                      Message</p>
<p>    ----    ------  ----  ----                      -------</p>
<p>    Normal  Sync    25s   nginx-ingress-controller  Scheduled for sync</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>############################################################</p>
<p># STEP 31.13 — Inspect the Ingress YAML</p>
<p>############################################################</p>
<p># Inspect the generated resource and verify the host, backend and</p>
<p># TLS configuration.</p>
<p>kubectl get ingress nerdylabs-ingress -n ingress-poc -o yaml</p>
<p># You should see the equivalent configuration:</p>
<p>#</p>
<p># Host:</p>
<p>#   nerdylabs.internal</p>
<p>#</p>
<p># Backend:</p>
<p>#   nerdylabs-service:80</p>
<p>#</p>
<p># TLS Secret:<removed>
<p>#   nerdylabs-tls</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>    kubectl get ingress nerdylabs-ingress -n ingress-poc -o yaml</p>
<p>    apiVersion: networking.k8s.io/v1</p>
<p>    kind: Ingress</p>
<p>    metadata:</p>
<p>    creationTimestamp: "2026-08-18T16:03:46Z"</p>
<p>    generation: 1</p>
<p>    name: nerdylabs-ingress</p>
<p>    namespace: ingress-poc</p>
<p>    resourceVersion: "188433"</p>
<p>    uid: 66f8ac9e-104c-49a6-9601-282b9be4ad7d</p>
<p>    spec:</p>
<p>    ingressClassName: nginx</p>
<p>    rules:</p>
<p>    - host: nerdylabs.internal</p>
<p>        http:</p>
<p>        paths:</p>
<p>        - backend:</p>
<p>            service:</p>
<p>                name: nerdylabs-service</p>
<p>                port:</p>
<p>                number: 80</p>
<p>            path: /</p>
<p>            pathType: Prefix</p>
<p>    tls:</p>
<p>    - hosts:</p>
<p>        - nerdylabs.internal</p>
<p>        secretName: nerdylabs-tls</p>
<p>    status:</p>
<p>    loadBalancer:</p>
<p>        ingress:</p>
<p>        - ip: 10.97.185.85</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $</p>
<p>############################################################</p>
<p># STEP 31.14 — Configure Local DNS Resolution</p>
<p>############################################################</p>
<p># nerdylabs.internal is a lab-only domain, so map it to the</p>
<p># Kubernetes node IP in /etc/hosts.</p>
<p>#I am using here the windows hosts file to add the entry for nerdylabs.internal. You can use the below command to add the entry in windows hosts file.</p>
<p># Notice at the last line the entry gets added vis-a-vis the worker node ip.</p>
<p>powershell.exe -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command \"Add-Content -Path C:\Windows\System32\drivers\etc\hosts -Value ''192.168.1.17 nerdylabs.internal''\"'"</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $ powershell.exe -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command \"Add-Content -Path C:\Windows\System32\drivers\etc\hosts -Value ''192.168.1.17 nerdylabs.internal''\"'"</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>    $ cat c:/windows/system32/drivers/etc/hosts</p>
<p>    # Copyright (c) 1993-2009 Microsoft Corp.</p>
<p>    #</p>
<p>    # This is a sample HOSTS file used by Microsoft TCP/IP for Windows.</p>
<p>    #</p>
<p>    # This file contains the mappings of IP addresses to host names. Each</p>
<p>    # entry should be kept on an individual line. The IP address should</p>
<p>    # be placed in the first column followed by the corresponding host name.</p>
<p>    # The IP address and the host name should be separated by at least one</p>
<p>    # space.</p>
<p>    #</p>
<p>    # Additionally, comments (such as these) may be inserted on individual</p>
<p>    # lines or following the machine name denoted by a '#' symbol.</p>
<p>    #</p>
<p>    # For example:</p>
<p>    #</p>
<p>    #      102.54.94.97     rhino.acme.com          # source server</p>
<p>    #       38.25.63.10     x.acme.com              # x client host</p>
<p>    # localhost name resolution is handled within DNS itself.</p>
<p>    #       127.0.0.1       localhost</p>
<p>    #       ::1             localhost</p>
<p>    # Added by Docker Desktop</p>
<p>    192.168.1.7 host.docker.internal</p>
<p>    192.168.1.7 gateway.docker.internal</p>
<p>    # To allow the same kube context to work on the host and the container:</p>
<p>    127.0.0.1 kubernetes.docker.internal</p>
<p>    # End of section</p>
<p>    192.168.1.17 nerdylabs.internal</p>
<p>    Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>############################################################</p>
<p># STEP 31.15 — Test HTTPS Through the Ingress</p>
<p>############################################################</p>
<p># Replace &lt;HTTPS-NODEPORT&gt; with the HTTPS NodePort discovered</p>
<p># from the ingress-nginx-controller Service.</p>
<p>curl -kv   https://nerdylabs.internal:&lt;HTTPS-NODEPORT&gt;/</p>
<p>curl -kv https://nerdylabs.internal:32482/</p>
<p>        Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>        $ curl -kv https://nerdylabs.internal:32482/</p>
<p>        * Host nerdylabs.internal:32482 was resolved.</p>
<p>        * IPv6: (none)</p>
<p>        * IPv4: 192.168.1.17</p>
<p>        *   Trying 192.168.1.17:32482...</p>
<p>        * schannel: disabled automatic use of client certificate</p>
<p>        * Connected to nerdylabs.internal (192.168.1.17) port 32482</p>
<p>        * using HTTP/1.x</p>
<p>        &gt; GET / HTTP/1.1</p>
<p>        &gt; Host: nerdylabs.internal:32482</p>
<p>        &gt; User-Agent: curl/8.12.1</p>
<p>        &gt; Accept: */*</p>
<p>        &gt;</p>
<p>        * schannel: remote party requests renegotiation</p>
<p>        * schannel: renegotiating SSL/TLS connection</p>
<p>        * schannel: SSL/TLS connection renegotiated</p>
<p>        * schannel: remote party requests renegotiation</p>
<p>        * schannel: renegotiating SSL/TLS connection</p>
<p>        * schannel: SSL/TLS connection renegotiated</p>
<p>        &lt; HTTP/1.1 200 OK</p>
<p>        &lt; Date: Tue, 18 Aug 2026 16:49:20 GMT</p>
<p>        &lt; Content-Type: text/html</p>
<p>        &lt; Content-Length: 896</p>
<p>        &lt; Connection: keep-alive</p>
<p>        &lt; Last-Modified: Wed, 15 Jul 2026 16:03:14 GMT</p>
<p>        &lt; ETag: "6a57af42-380"</p>
<p>        &lt; Accept-Ranges: bytes</p>
<p>        &lt; Strict-Transport-Security: max-age=31536000; includeSubDomains</p>
<p>        &lt;</p>
<p>        &lt;!DOCTYPE html&gt;</p>
<p>        &lt;html&gt;</p>
<p>        &lt;head&gt;</p>
<p>        &lt;title&gt;Welcome to nginx!&lt;/title&gt;</p>
<p>        &lt;style&gt;</p>
<p>        html { color-scheme: light dark; }</p>
<p>        body { width: 35em; margin: 0 auto;</p>
<p>        font-family: Tahoma, Verdana, Arial, sans-serif; }</p>
<p>        &lt;/style&gt;</p>
<p>        &lt;/head&gt;</p>
<p>        &lt;body&gt;</p>
<p>        &lt;h1&gt;Welcome to nginx!&lt;/h1&gt;</p>
<p>        &lt;p&gt;If you see this page, nginx is successfully installed and working.</p>
<p>        Further configuration is required for the web server, reverse proxy,</p>
<p>        API gateway, load balancer, content cache, or other features.&lt;/p&gt;</p>
<p>        &lt;p&gt;For online documentation and support please refer to</p>
<p>        &lt;a href="https://nginx.org/"&gt;nginx.org&lt;/a&gt;.&lt;br/&gt;</p>
<p>        To engage with the community please visit</p>
<p>        &lt;a href="https://community.nginx.org/"&gt;community.nginx.org&lt;/a&gt;.&lt;br/&gt;</p>
<p>        For enterprise grade support, professional services, additional</p>
<p>        security features and capabilities please refer to</p>
<p>        &lt;a href="https://f5.com/nginx"&gt;f5.com/nginx&lt;/a&gt;.&lt;/p&gt;</p>
<p>        &lt;p&gt;&lt;em&gt;Thank you for using nginx.&lt;/em&gt;&lt;/p&gt;</p>
<p>        &lt;/body&gt;</p>
<p>        &lt;/html&gt;</p>
<p>        * Connection #0 to host nerdylabs.internal left intact</p>
<p>        Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/k8basics/tlsintg (main)</p>
<p>        $</p>
<p># The -k option is required because the certificate is self-signed.</p>
<p>#</p>
<p># The request should match nerdylabs.internal and be routed by the</p>
<p># Ingress Controller to nerdylabs-service and then nerdylabs-app.</p>
<p>############################################################</p>
<p># STEP 31.16 — Verify the Certificate Presented by Ingress</p>
<p>############################################################</p>
<p># Inspect the certificate presented by the Ingress Controller.</p>
<p># -servername is important because it sends the TLS SNI hostname.</p>
<p>openssl s_client \</p>
<p>  -connect nerdylabs.internal:32482 \</p>
<p>  -servername nerdylabs.internal \</p>
<p>  &lt;/dev/null 2&gt;/dev/null | \</p>
<p>  openssl x509 \</p>
<p>  -noout \</p>
<p>  -subject \</p>
<p>  -issuer \</p>
<p>  -dates</p>
<p># Verify that the certificate belongs to nerdylabs.internal.</p>
<p>    subject=CN=nerdylabs.internal, O=NerdyLabs</p>
<p>    issuer=CN=nerdylabs.internal, O=NerdyLabs</p>
<p>    notBefore=Aug 18 15:58:58 2026 GMT</p>
<p>    notAfter=Aug 18 15:58:58 2027 GMT</p>
<p>############################################################</p>
<p># STEP 31.17 — Test the Complete Request Path</p>
<p>############################################################</p>
<p># At this point the request path is:</p>
<p>#</p>
<p># Client</p>
<p>#   |</p>
<p>#   | HTTPS</p>
<p>#   v</p>
<p># Node IP : HTTPS NodePort</p>
<p>#   |</p>
<p>#   v</p>
<p># NGINX Ingress Controller</p>
<p>#   |</p>
<p>#   | TLS termination</p>
<p>#   v</p>
<p># nerdylabs-ingress</p>
<p>#   |</p>
<p>#   v</p>
<p># nerdylabs-service:80</p>
<p>#   |</p>
<p>#   v</p>
<p># nerdylabs-app:80</p>
<p>#   |</p>
<p>#   v</p>
<p># nginx</p>
<p>curl -k   https://nerdylabs.internal:32482/</p>
<p># Will return the nginx welcome page HTML.</p>
<p>############################################################</p>
<p># STEP 31.18 — Useful Troubleshooting Commands</p>
<p>############################################################</p>
<p># Check the application Pod:</p>
<p>kubectl get pod nerdylabs-app \</p>
<p>  -n ingress-poc \</p>
<p>  -o wide</p>
<p># Check the Service:</p>
<p>kubectl get service nerdylabs-service \</p>
<p>  -n ingress-poc</p>
<p># Check Service endpoints:</p>
<p>kubectl get endpoints nerdylabs-service \</p>
<p>  -n ingress-poc</p>
<p># Check the Ingress:</p>
<p>kubectl get ingress \</p>
<p>  -n ingress-poc</p>
<p>kubectl describe ingress nerdylabs-ingress \</p>
<p>  -n ingress-poc</p>
<p># Check the Ingress Controller:</p>
<p>kubectl get pods \</p>
<p>  -n ingress-nginx</p>
<p>kubectl get service \</p>
<p>  -n ingress-nginx</p>
<p># Check controller logs if the request does not reach the backend:</p>
<p>kubectl logs \</p>
<p>  -n ingress-nginx \</p>
<p>  -l app.kubernetes.io/component=controller \</p>
<p>  --tail=100</p>
<p>############################################################</p>
<p># STEP 31.19 — Verify the TLS Secret</p>
<p>############################################################</p>
<p># Confirm that Kubernetes recognizes nerdylabs-tls as a TLS Secret.</p>
<p>kubectl get secret nerdylabs-tls \</p>
<p>  -n ingress-poc \</p>
<p>  -o jsonpath='{.type}{"\n"}'</p>
<p># Expected:</p>
<p>#</p>
<p># kubernetes.io/tls</p>
<p>############################################################</p>
<p># STEP 31.20 — Key Takeaways</p>
<p>############################################################</p>
<p># The Service provides internal access to nerdylabs-app. The</p>
<p># Ingress defines the HTTP/HTTPS routing rules, while the NGINX</p>
<p># Ingress Controller actually processes those rules.</p>
<p># nerdylabs-tls contains the certificate and private key. The</p>
<p># Ingress references that Secret, allowing the Ingress Controller</p>
<p># to terminate TLS before forwarding normal HTTP traffic to the</p>
<p># backend Service.</p>
<p># The complete flow is:</p>
<p>#</p>
<p>#Windows hosts file</p>
<p>#      ↓</p>
<p>#nerdylabs.internal → 192.168.1.17</p>
<p>#      ↓</p>
<p>#NodePort 32482</p>
<p>#      ↓</p>
<p>#NGINX Ingress Controller</p>
<p>#      ↓</p>
<p>#TLS termination</p>
<p>#      ↓</p>
<p>#Ingress: nerdylabs.internal</p>
<p>#      ↓</p>
<p>#nerdylabs-service:80</p>
<p>#      ↓</p>
<p>#nginx Pod</p>
<p>#      ↓</p>
<p>#HTTP 200 OK</p>
<p>############################################################</p>
<p># STEP 31.21 — CLEANUP</p>
<p>############################################################</p>
<p> </p>
<p># Delete the Ingress:</p>
<p>kubectl delete ingress nerdylabs-ingress  -n ingress-poc --ignore-not-found</p>
<p>kubectl delete secret nerdylabs-tls -n ingress-poc --ignore-not-found</p>
<p>kubectl delete service nerdylabs-service -n ingress-poc --ignore-not-found</p>
<p>kubectl delete pod nerdylabs-app -n ingress-poc --ignore-not-found</p>
<p>kubectl delete namespace ingress-poc   --ignore-not-found</p>
<p>kubectl delete -f  https://raw.githubusercontent.com/zealvora/certified-kubernetes-security-specialist/refs/heads/main/domain-1-cluster-setup/nginx-controller.yaml</p>
<p>cd c:/ws/k8basics/tlsintg</p>
<p>rm -f *.*  </p>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image735.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 30 — Configuring cri-dockerd</p>
<p>############################################################</p>
<p># Purpose: This POC demonstrates how Kubernetes can use Docker</p>
<p># through cri-dockerd as its Container Runtime Interface (CRI).</p>
<p>#</p>
<p># IMPORTANT: cri-dockerd is an alternative to containerd.</p>
<p># This exercise should be performed on a separate VM/lab node or</p>
<p># a disposable cluster. Do NOT add cri-dockerd to your existing</p>
<p># containerd-based k8cp/k8dp1 cluster.</p>
<p>#</p>
<p># Architecture:</p>
<p>#</p>
<p># Kubernetes</p>
<p>#     |</p>
<p>#     v</p>
<p># kubelet</p>
<p>#     |</p>
<p>#     v</p>
<p># cri-dockerd</p>
<p>#     |</p>
<p>#     v</p>
<p># Docker Engine</p>
<p>#     |</p>
<p>#     v</p>
<p># Containers</p>
<p>#Check the current container runtime for the existing cluster:</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers</p>
<p>$ kubectl get nodes -o custom-columns='NAME:.metadata.name,CRI:.status.nodeInfo.containerRuntimeVersion'</p>
<p>NAME    CRI</p>
<p>k8cp    containerd://2.2.1</p>
<p>k8dp1   containerd://2.2.1</p>
<p>Sridhara@LAPTOP-2JR5V2SV MINGW64 /c/ws/ibm-conf-containers</p>
<p>$</p>
<p>############################################################</p>
<p># STEP 30.1 — Confirm This Is the Correct Lab Machine</p>
<p>############################################################</p>
<p># Before changing the container runtime, confirm that this is</p>
<p># the disposable VM intended for the cri-dockerd exercise.</p>
<p>hostname</p>
<p>uname -a</p>
<p># If this machine is already running the Kubernetes cluster you</p>
<p># want to keep, STOP here. This exercise is intended for a</p>
<p># separate/disposable environment.</p>
<p>############################################################</p>
<p># STEP 30.2 — Install Docker and Required Packages</p>
<p>############################################################</p>
<p># Update Ubuntu package metadata and install Docker Engine from</p>
<p># the Ubuntu repository. Go is included because it is useful for</p>
<p># building cri-dockerd if required.</p>
<p>sudo apt update</p>
<p>sudo apt install -y   docker.io   golang-go</p>
<p># Enable and start Docker:</p>
<p>sudo systemctl enable --now docker</p>
<p># Verify Docker:</p>
<p>sudo systemctl status docker --no-pager</p>
<p>docker --version</p>
<p># Verify that Docker can actually run a container:</p>
<p>sudo docker run --rm hello-world</p>
<p># This confirms that the Docker Engine itself is functioning</p>
<p># before introducing cri-dockerd.</p>
<p>############################################################</p>
<p># STEP 30.3 — Install cri-dockerd</p>
<p>############################################################</p>
<p># Download the cri-dockerd Debian package. This example uses the</p>
<p># amd64 Ubuntu package from the Mirantis cri-dockerd release.</p>
<p>wget \</p>
<p>  https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.17/cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb</p>
<p># Verify the downloaded file:</p>
<p>ls -lh cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb</p>
<p># Install cri-dockerd:</p>
<p>sudo dpkg -i \</p>
<p>  cri-dockerd_0.3.17.3-0.ubuntu-jammy_amd64.deb</p>
<p># If dpkg reports missing dependencies, repair them with:</p>
<p>sudo apt-get install -f -y</p>
<p># Verify the binary:</p>
<p>cri-dockerd --version</p>
<p># Check the service:</p>
<p>sudo systemctl status cri-docker --no-pager</p>
<p># Enable the service at boot:</p>
<p>sudo systemctl enable cri-docker</p>
<p># Start the service:</p>
<p>sudo systemctl start cri-docker</p>
<p># Verify again:</p>
<p>sudo systemctl status cri-docker --no-pager</p>
<p>############################################################</p>
<p># STEP 30.4 — Verify the cri-dockerd CRI Socket</p>
<p>############################################################</p>
<p># cri-dockerd exposes a CRI socket that kubelet and kubeadm can</p>
<p># use to communicate with the Docker runtime.</p>
<p>ls -l /var/run/cri-dockerd.sock</p>
<p># Verify the service is listening and running:</p>
<p>sudo systemctl is-active cri-docker</p>
<p># Expected:</p>
<p>#</p>
<p># active</p>
<p># The socket used by kubeadm in this POC is:</p>
<p>#</p>
<p># unix:///var/run/cri-dockerd.sock</p>
<p>############################################################</p>
<p># STEP 30.5 — Configure Kernel Parameters</p>
<p>############################################################</p>
<p># Kubernetes networking requires packet forwarding and bridge</p>
<p># traffic processing. Configure these parameters persistently.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>net.bridge.bridge-nf-call-iptables = 1</p>
<p>net.ipv4.ip_forward = 1</p>
<p>net.bridge.bridge-nf-call-ip6tables = 1</p>
<p>EOF</p>
<p># Apply the configuration:</p>
<p>sudo sysctl --system</p>
<p># Verify the important values:</p>
<p>sysctl net.ipv4.ip_forward</p>
<p>sysctl net.bridge.bridge-nf-call-iptables</p>
<p>sysctl net.bridge.bridge-nf-call-ip6tables</p>
<p>############################################################</p>
<p># STEP 30.6 — Load Required Kernel Modules</p>
<p>############################################################</p>
<p># overlay is used by container storage and br_netfilter allows</p>
<p># bridged network traffic to be processed by the relevant</p>
<p># networking/filtering mechanisms.</p>
<p>sudo modprobe overlay</p>
<p>sudo modprobe br_netfilter</p>
<p># Verify:</p>
<p>lsmod | grep -E 'overlay|br_netfilter'</p>
<p>############################################################</p>
<p># STEP 30.7 — Make Kernel Modules Persistent</p>
<p>############################################################</p>
<p># Ensure the modules are loaded automatically after reboot.</p>
<p>cat &lt;&lt;EOF | sudo tee /etc/modules-load.d/kubernetes.conf</p>
<p>overlay</p>
<p>br_netfilter</p>
<p>EOF</p>
<p>############################################################</p>
<p># STEP 30.8 — Install Kubernetes Repository Prerequisites</p>
<p>############################################################</p>
<p># Install the packages required to configure the Kubernetes</p>
<p># package repository.</p>
<p>sudo apt-get update</p>
<p>sudo apt-get install -y \</p>
<p>  apt-transport-https \</p>
<p>  ca-certificates \</p>
<p>  curl \</p>
<p>  gpg</p>
<p>############################################################</p>
<p># STEP 30.9 — Configure the Kubernetes Repository</p>
<p>############################################################</p>
<p># Create the keyring directory if it does not already exist.</p>
<p>sudo mkdir -p /etc/apt/keyrings</p>
<p># Download and install the Kubernetes repository signing key.</p>
<p>curl -fsSL \</p>
<p>  https://pkgs.k8s.io/core:/stable:/v1.32/deb/Release.key | \</p>
<p>  sudo gpg --dearmor \</p>
<p>  -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p># Configure the Kubernetes v1.32 repository.</p>
<p>echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /' | \</p>
<p>  sudo tee /etc/apt/sources.list.d/kubernetes.list</p>
<p># Update package metadata:</p>
<p>sudo apt-get update</p>
<p>############################################################</p>
<p># STEP 30.10 — Install Kubernetes Components</p>
<p>############################################################</p>
<p># Install kubeadm, kubelet, kubectl and the CRI tooling.</p>
<p>#</p>
<p># The exact package version may differ depending on repository</p>
<p># availability. Check available versions if the specified version</p>
<p># is not found.</p>
<p>apt-cache policy kubeadm kubelet kubectl cri-tools</p>
<p># Install the course version:</p>
<p>sudo apt-get install -y \</p>
<p>  kubelet=1.32.0-1.1 \</p>
<p>  kubeadm=1.32.0-1.1 \</p>
<p>  kubectl=1.32.0-1.1 \</p>
<p>  cri-tools=1.32.0-1.1</p>
<p># Verify:</p>
<p>kubeadm version</p>
<p>kubectl version --client</p>
<p>crictl --version</p>
<p># Prevent the Kubernetes packages from being automatically</p>
<p># upgraded during this controlled lab.</p>
<p>sudo apt-mark hold \</p>
<p>  kubelet \</p>
<p>  kubeadm \</p>
<p>  kubectl</p>
<p># Enable kubelet. It may repeatedly restart before kubeadm</p>
<p># initializes the cluster; that is normal at this stage.</p>
<p>sudo systemctl enable kubelet</p>
<p>sudo systemctl status kubelet --no-pager</p>
<p>############################################################</p>
<p># STEP 30.11 — Configure crictl for cri-dockerd</p>
<p>############################################################</p>
<p># crictl is a useful troubleshooting tool for inspecting the CRI.</p>
<p># Point it explicitly at the cri-dockerd socket.</p>
<p>sudo crictl config \</p>
<p>  --runtime-endpoint=unix:///var/run/cri-dockerd.sock \</p>
<p>  --image-endpoint=unix:///var/run/cri-dockerd.sock</p>
<p># Verify the configuration:</p>
<p>sudo crictl info</p>
<p># A successful response confirms that crictl can communicate</p>
<p># with cri-dockerd through the CRI socket.</p>
<p>############################################################</p>
<p># STEP 30.12 — Verify Docker and cri-dockerd Together</p>
<p>############################################################</p>
<p># Verify Docker:</p>
<p>sudo systemctl is-active docker</p>
<p># Verify cri-dockerd:</p>
<p>sudo systemctl is-active cri-docker</p>
<p># Verify the CRI socket:</p>
<p>sudo crictl info</p>
<p># All three checks should succeed before continuing to kubeadm.</p>
<p>############################################################</p>
<p># STEP 30.13 — Initialize the Kubernetes Control Plane</p>
<p>############################################################</p>
<p># IMPORTANT:</p>
<p># kubeadm init creates a new Kubernetes cluster.</p>
<p>#</p>
<p># This command is NOT for your existing k8cp/k8dp1 cluster.</p>
<p># Run it only on the disposable cri-dockerd lab machine.</p>
<p>sudo kubeadm init \</p>
<p>  --pod-network-cidr=192.168.0.0/16 \</p>
<p>  --kubernetes-version=1.32.0 \</p>
<p>  --cri-socket=unix:///var/run/cri-dockerd.sock</p>
<p># The --cri-socket option is the key part of this exercise.</p>
<p># It explicitly tells kubeadm to use cri-dockerd instead of</p>
<p># containerd.</p>
<p># IMPORTANT:</p>
<p># Save the kubeadm join command printed at the end if you plan</p>
<p># to add worker nodes later.</p>
<p>############################################################</p>
<p># STEP 30.14 — Configure kubectl for the Current User</p>
<p>############################################################</p>
<p># Configure kubectl to use the administrator kubeconfig created</p>
<p># by kubeadm.</p>
<p>mkdir -p "$HOME/.kube"</p>
<p>sudo cp -i \</p>
<p>  /etc/kubernetes/admin.conf \</p>
<p>  "$HOME/.kube/config"</p>
<p>sudo chown \</p>
<p>  "$(id -u):$(id -g)" \</p>
<p>  "$HOME/.kube/config"</p>
<p># Verify:</p>
<p>kubectl get nodes</p>
<p># At this point the control-plane node may be NotReady because</p>
<p># a CNI/network plugin has not yet been installed.</p>
<p>############################################################</p>
<p># STEP 30.15 — Verify the Node's Container Runtime</p>
<p>############################################################</p>
<p># Confirm that Kubernetes reports cri-dockerd as the runtime.</p>
<p>kubectl get nodes -o wide</p>
<p>kubectl describe node "$(hostname)" | grep -i \</p>
<p>  "Container Runtime"</p>
<p># You should see a runtime associated with cri-dockerd/Docker.</p>
<p># This is an important checkpoint because it confirms that the</p>
<p># Kubernetes node is using the intended container runtime.</p>
<p>############################################################</p>
<p># STEP 30.16 — Remove the Control-Plane Taint</p>
<p>############################################################</p>
<p># In a single-node lab, remove the default control-plane taint so</p>
<p># that normal application Pods can also run on the control plane.</p>
<p>kubectl taint nodes --all \</p>
<p>  node-role.kubernetes.io/control-plane-</p>
<p># Verify:</p>
<p>kubectl describe node "$(hostname)" | grep -i Taints</p>
<p># For this lab, the control-plane node should now have no taint.</p>
<p>############################################################</p>
<p># STEP 30.17 — Install Calico</p>
<p>############################################################</p>
<p># Kubernetes needs a CNI plugin before normal Pod networking works.</p>
<p># Install Calico for this lab cluster.</p>
<p>kubectl create -f \</p>
<p>  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml</p>
<p># Install the Calico configuration:</p>
<p>kubectl create -f \</p>
<p>  https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml</p>
<p># Watch the Calico components:</p>
<p>kubectl get pods -A -w</p>
<p># Press Ctrl+C after the important networking components become</p>
<p># Ready.</p>
<p>############################################################</p>
<p># STEP 30.18 — Verify the Cluster</p>
<p>############################################################</p>
<p># Check node status:</p>
<p>kubectl get nodes -o wide</p>
<p># The node should eventually become Ready.</p>
<p># Check all system Pods:</p>
<p>kubectl get pods -A</p>
<p># Check the container runtime directly:</p>
<p>sudo crictl info</p>
<p>############################################################</p>
<p># STEP 30.19 — Create a Test Application</p>
<p>############################################################</p>
<p># Create a simple nginx Pod to confirm that Kubernetes can create</p>
<p># workloads through cri-dockerd and Docker.</p>
<p>kubectl run nerdylabs-app \</p>
<p>  --image=nginx</p>
<p># Check the Pod:</p>
<p>kubectl get pod nerdylabs-app -o wide</p>
<p># Check which node is running it:</p>
<p>kubectl get pod nerdylabs-app \</p>
<p>  -o custom-columns="NAME:.metadata.name,NODE:.spec.nodeName,STATUS:.status.phase"</p>
<p># The Pod should eventually reach Running.</p>
<p>############################################################</p>
<p># STEP 30.20 — Verify the Container Through the CRI</p>
<p>############################################################</p>
<p># List Kubernetes containers known to the CRI:</p>
<p>sudo crictl ps</p>
<p># List all containers, including stopped ones:</p>
<p>sudo crictl ps -a</p>
<p># List images known to the CRI:</p>
<p>sudo crictl images</p>
<p># This provides a useful view from the CRI layer rather than</p>
<p># using kubectl.</p>
<p>############################################################</p>
<p># STEP 30.21 — Verify the Docker Layer</p>
<p>############################################################</p>
<p># cri-dockerd translates CRI requests into Docker operations.</p>
<p># Inspect the Docker container list as an additional exercise.</p>
<p>sudo docker ps</p>
<p># You should see containers associated with the Kubernetes</p>
<p># workloads and system components.</p>
<p># IMPORTANT:</p>
<p># Docker is the container engine, while cri-dockerd is the CRI</p>
<p># adapter that allows kubelet/Kubernetes to communicate with Docker.</p>
<p>############################################################</p>
<p># STEP 30.22 — Failure Testing: Stop cri-dockerd</p>
<p>############################################################</p>
<p># This is deliberately a failure exercise. We will stop the CRI</p>
<p># adapter and observe how Kubernetes reacts.</p>
<p>sudo systemctl stop cri-docker</p>
<p># Confirm that it is stopped:</p>
<p>sudo systemctl is-active cri-docker</p>
<p># Expected:</p>
<p>#</p>
<p># inactive</p>
<p>############################################################</p>
<p># STEP 30.23 — Attempt to Create Another Pod</p>
<p>############################################################</p>
<p># Try to create another workload while the CRI adapter is down.</p>
<p>kubectl run nerdylabs-failure-test \</p>
<p>  --image=nginx</p>
<p># Check the Pod:</p>
<p>kubectl get pod nerdylabs-failure-test -o wide</p>
<p># The Pod may remain Pending or fail to start because kubelet</p>
<p># cannot communicate with the container runtime.</p>
<p>############################################################</p>
<p># STEP 30.24 — Inspect the Pod Events</p>
<p>############################################################</p>
<p># Inspect the Pod for scheduling/runtime-related errors.</p>
<p>kubectl describe pod nerdylabs-failure-test</p>
<p># Look at the Events section near the bottom.</p>
<p>#</p>
<p># You should see errors related to communication with the</p>
<p># container runtime or cri-dockerd.</p>
<p>############################################################</p>
<p># STEP 30.25 — Inspect Kubelet Logs</p>
<p>############################################################</p>
<p># kubelet depends on the CRI socket to create and manage</p>
<p># containers. Inspect its logs while cri-dockerd is stopped.</p>
<p>sudo journalctl \</p>
<p>  -u kubelet \</p>
<p>  --since "10 minutes ago" \</p>
<p>  --no-pager</p>
<p># Search specifically for runtime-related messages:</p>
<p>sudo journalctl \</p>
<p>  -u kubelet \</p>
<p>  --since "10 minutes ago" \</p>
<p>  --no-pager | \</p>
<p>  grep -Ei "cri|runtime|docker|container"</p>
<p>############################################################</p>
<p># STEP 30.26 — Inspect cri-dockerd Logs</p>
<p>############################################################</p>
<p># Check the cri-dockerd service logs as well.</p>
<p>sudo journalctl \</p>
<p>  -u cri-docker \</p>
<p>  --since "10 minutes ago" \</p>
<p>  --no-pager</p>
<p>############################################################</p>
<p># STEP 30.27 — Restore cri-dockerd</p>
<p>############################################################</p>
<p># Restore the CRI adapter.</p>
<p>sudo systemctl start cri-docker</p>
<p># Verify:</p>
<p>sudo systemctl is-active cri-docker</p>
<p># Expected:</p>
<p>#</p>
<p># active</p>
<p>############################################################</p>
<p># STEP 30.28 — Verify the CRI After Recovery</p>
<p>############################################################</p>
<p># Confirm that the CRI socket is responding again.</p>
<p>sudo crictl info</p>
<p># Check kubelet:</p>
<p>sudo systemctl status kubelet --no-pager</p>
<p># Check the cluster:</p>
<p>kubectl get nodes</p>
<p># Check the Pods:</p>
<p>kubectl get pods -A</p>
<p>############################################################</p>
<p># STEP 30.29 — Check the Previously Failed Pod</p>
<p>############################################################</p>
<p># The failed test Pod may recover depending on its current state.</p>
<p># Inspect it again.</p>
<p>kubectl get pod nerdylabs-failure-test -o wide</p>
<p>kubectl describe pod nerdylabs-failure-test</p>
<p># If necessary, delete the failed test Pod and recreate it:</p>
<p>kubectl delete pod nerdylabs-failure-test \</p>
<p>  --ignore-not-found</p>
<p>kubectl run nerdylabs-recovery-test \</p>
<p>  --image=nginx</p>
<p># Verify:</p>
<p>kubectl get pod nerdylabs-recovery-test -o wide</p>
<p>############################################################</p>
<p># STEP 30.30 — Final Runtime Verification</p>
<p>############################################################</p>
<p># Confirm the Kubernetes node and runtime are healthy.</p>
<p>kubectl get nodes -o wide</p>
<p># Confirm the runtime reported by the node:</p>
<p>kubectl describe node "$(hostname)" | grep -i \</p>
<p>  "Container Runtime"</p>
<p># Confirm cri-dockerd:</p>
<p>sudo systemctl is-active cri-docker</p>
<p># Confirm Docker:</p>
<p>sudo systemctl is-active docker</p>
<p># Confirm CRI access:</p>
<p>sudo crictl info</p>
<p># Confirm running containers:</p>
<p>sudo crictl ps</p>
<p># Confirm Docker containers:</p>
<p>sudo docker ps</p>
<p>############################################################</p>
<p># STEP 30.31 — Key Takeaways</p>
<p>############################################################</p>
<p># containerd and cri-dockerd are alternative container-runtime</p>
<p># paths for Kubernetes. In this POC, kubelet communicates with</p>
<p># cri-dockerd through the CRI socket, and cri-dockerd communicates</p>
<p># with Docker Engine.</p>
<p># The important runtime path is:</p>
<p>#</p>
<p># kubelet</p>
<p>#    |</p>
<p>#    v</p>
<p># cri-dockerd</p>
<p>#    |</p>
<p>#    v</p>
<p># Docker Engine</p>
<p>#</p>
<p># The --cri-socket option passed to kubeadm is what explicitly</p>
<p># selects cri-dockerd during cluster initialization.</p>
<p># Stopping cri-dockerd demonstrates an important operational</p>
<p># dependency: kubelet can remain running, but it cannot create</p>
<p># or manage containers while the CRI endpoint is unavailable.</p>
<p>############################################################</p>
<p># STEP 30.32 — CLEANUP APPLICATION TEST PODS</p>
<p>############################################################</p>
<p># Remove the application Pods created during this POC.</p>
<p>kubectl delete pod nerdylabs-app \</p>
<p>  --ignore-not-found</p>
<p>kubectl delete pod nerdylabs-failure-test \</p>
<p>  --ignore-not-found</p>
<p>kubectl delete pod nerdylabs-recovery-test \</p>
<p>  --ignore-not-found</p>
<p>############################################################</p>
<p># STEP 30.33 — Optional: Stop Kubernetes Services</p>
<p>############################################################</p>
<p># If this is a disposable VM and you are finished with the</p>
<p># cri-dockerd exercise, you can stop the Kubernetes services.</p>
<p>sudo systemctl disable --now kubelet</p>
<p>sudo systemctl disable --now cri-docker</p>
<p>sudo systemctl disable --now docker</p>
<p>############################################################</p>
<p># STEP 30.34 — OPTIONAL: Remove the cri-dockerd Package</p>
<p>############################################################</p>
<p># Only perform this section if you want to return the VM to a</p>
<p># non-cri-dockerd state.</p>
<p>sudo dpkg -r cri-dockerd</p>
<p># Verify:</p>
<p>cri-dockerd --version</p>
<p>############################################################</p>
<p># STEP 30.35 — OPTIONAL: Remove the Kubernetes Packages</p>
<p>############################################################</p>
<p># Only do this on a disposable lab VM. Do not run these commands</p>
<p># on a cluster you intend to keep.</p>
<p>sudo apt-mark unhold \</p>
<p>  kubelet \</p>
<p>  kubeadm \</p>
<p>  kubectl</p>
<p>sudo apt remove -y \</p>
<p>  kubelet \</p>
<p>  kubeadm \</p>
<p>  kubectl \</p>
<p>  cri-tools</p>
<p>############################################################</p>
<p># STEP 30.36 — OPTIONAL: Remove the Kubernetes Repository</p>
<p>############################################################</p>
<p># Remove the Kubernetes repository configuration if this VM will</p>
<p># no longer be used for Kubernetes.</p>
<p>sudo rm -f \</p>
<p>  /etc/apt/sources.list.d/kubernetes.list</p>
<p>sudo rm -f \</p>
<p>  /etc/apt/keyrings/kubernetes-apt-keyring.gpg</p>
<p>sudo apt update</p>
<p>############################################################</p>
<p># STEP 30.37 — OPTIONAL: Remove cri-dockerd Configuration</p>
<p>############################################################</p>
<p># Remove the custom kernel configuration created specifically</p>
<p># for this exercise.</p>
<p>sudo rm -f \</p>
<p>  /etc/sysctl.d/99-kubernetes-cri.conf</p>
<p>sudo rm -f \</p>
<p>  /etc/modules-load.d/kubernetes.conf</p>
<p># Reload sysctl configuration:</p>
<p>sudo sysctl --system</p>
<p>############################################################</p>
<p># STEP 30.38 — IMPORTANT LAB NOTE</p>
<p>############################################################</p>
<p># This POC intentionally uses cri-dockerd to demonstrate the</p>
<p># Docker-based CRI path. Modern Kubernetes installations commonly</p>
<p># use containerd or another CRI implementation directly.</p>
<p>#</p>
<p># Do not interpret this exercise as a recommendation to replace</p>
<p># containerd in your existing cluster. The purpose is to understand</p>
<p># the CRI architecture and how kubelet interacts with a runtime.</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image736.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 32 — Kubernetes Events</p>
<p>############################################################</p>
<p># Purpose: Understand how Kubernetes Events help troubleshoot what</p>
<p># is happening to Pods, Nodes and other Kubernetes resources.</p>
<p>#</p>
<p># Events are useful for answering questions such as:</p>
<p># - Why is my Pod Pending?</p>
<p># - Why did a container restart?</p>
<p># - Why couldn't an image be pulled?</p>
<p># - Why was a Pod scheduled on a particular node?</p>
<p>#</p>
<p># Events are primarily a troubleshooting aid and are not a</p>
<p># replacement for application or component logs.</p>
<p>############################################################</p>
<p># STEP 32.1 — View Events in the Current Namespace</p>
<p>############################################################</p>
<p># Display Events from the current namespace.</p>
<p>kubectl get events</p>
<p># Events are typically shown with information such as:</p>
<p># LAST SEEN, TYPE, REASON, OBJECT and MESSAGE.</p>
<p>############################################################</p>
<p># STEP 32.2 — View Events in All Namespaces</p>
<p>############################################################</p>
<p># Useful when troubleshooting cluster-level issues or when you</p>
<p># do not know which namespace generated the Event.</p>
<p>kubectl get events -A</p>
<p>############################################################</p>
<p># STEP 32.3 — Sort Events by Time</p>
<p>############################################################</p>
<p># Sorting by creation time makes the Event history easier to</p>
<p># follow chronologically.</p>
<p>kubectl get events \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p>############################################################</p>
<p># STEP 32.4 — Inspect Events for a Specific Pod</p>
<p>############################################################</p>
<p># Create a simple test Pod.</p>
<p>kubectl run events-test \</p>
<p>  --image=nginx</p>
<p># Inspect the Pod.</p>
<p>kubectl get pod events-test</p>
<p># Display Events associated with this Pod.</p>
<p>kubectl describe pod events-test</p>
<p># Look at the Events section at the bottom of the output.</p>
<p>#</p>
<p># Typical Events may include:</p>
<p>#</p>
<p># Scheduled</p>
<p># Pulling</p>
<p># Pulled</p>
<p># Created</p>
<p># Started</p>
<p>############################################################</p>
<p># STEP 32.5 — Generate a Warning Event</p>
<p>############################################################</p>
<p># Create a Pod using an image that does not exist.</p>
<p># This deliberately creates a troubleshooting scenario.</p>
<p>kubectl run events-failure \</p>
<p>  --image=nginx:this-image-does-not-exist</p>
<p># Check the Pod status.</p>
<p>kubectl get pod events-failure</p>
<p># Inspect its Events.</p>
<p>kubectl describe pod events-failure</p>
<p># You should see Warning Events related to image pulling,</p>
<p># such as ErrImagePull or ImagePullBackOff.</p>
<p># You can also retrieve the Events directly:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-failure</p>
<p>############################################################</p>
<p># STEP 32.6 — Filter Warning Events</p>
<p>############################################################</p>
<p># Display only Warning Events in the current namespace.</p>
<p>kubectl get events \</p>
<p>  --field-selector type=Warning</p>
<p># This is particularly useful during troubleshooting because</p>
<p># normal informational Events can otherwise produce a lot of</p>
<p># output.</p>
<p>############################################################</p>
<p># STEP 32.7 — Filter Events by Reason</p>
<p>############################################################</p>
<p># Filter Events based on their Reason.</p>
<p>kubectl get events \</p>
<p>  --field-selector reason=Failed</p>
<p># This demonstrates that Events can be filtered rather than</p>
<p># manually searching through the entire Event list.</p>
<p>############################################################</p>
<p># STEP 32.8 — Inspect Events Across the Cluster</p>
<p>############################################################</p>
<p># Sort Events from all namespaces chronologically.</p>
<p>kubectl get events -A \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p># This is a useful first command when you encounter a</p>
<p># cluster-wide problem and do not yet know which component</p>
<p># is responsible.</p>
<p>############################################################</p>
<p># STEP 32.9 — Understand Event Types</p>
<p>############################################################</p>
<p># Kubernetes Events commonly have two types:</p>
<p># Normal</p>
<p>#   Indicates an expected or informational occurrence.</p>
<p>#</p>
<p># Warning</p>
<p>#   Indicates something that may require investigation.</p>
<p>kubectl get events \</p>
<p>  -A \</p>
<p>  --field-selector type=Warning</p>
<p>############################################################</p>
<p># STEP 32.10 — Compare Events with Logs</p>
<p>############################################################</p>
<p># Events tell you what Kubernetes observed or reported about</p>
<p># a resource. Logs provide detailed output from the application</p>
<p># or Kubernetes component itself.</p>
<p># Inspect the application Pod:</p>
<p>kubectl logs events-test</p>
<p># Inspect its Events:</p>
<p>kubectl describe pod events-test</p>
<p># Think of the distinction as:</p>
<p>#</p>
<p># Events -&gt; Kubernetes-level activity and troubleshooting clues</p>
<p># Logs   -&gt; Detailed output produced by a container/component</p>
<p>############################################################</p>
<p># STEP 32.11 — Useful Event Commands</p>
<p>############################################################</p>
<p># Current namespace:</p>
<p>kubectl get events</p>
<p># All namespaces:</p>
<p>kubectl get events -A</p>
<p># Sort chronologically:</p>
<p>kubectl get events \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p># Warning Events only:</p>
<p>kubectl get events \</p>
<p>  --field-selector type=Warning</p>
<p># Events for a specific Pod:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-test</p>
<p># Events for a specific Pod with chronological ordering:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-test \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p>############################################################</p>
<p># STEP 32.12 — Cleanup</p>
<p>############################################################</p>
<p># Remove the Pods created for this Event exercise.</p>
<p>kubectl delete pod events-test \</p>
<p>  --ignore-not-found</p>
<p>kubectl delete pod events-failure \</p>
<p>  --ignore-not-found</p>
<p>############################################################</p>
<p># STEP 32.13 — Key Takeaway</p>
<p>############################################################</p>
<p># Events provide a timeline of important Kubernetes activity</p>
<p># around resources. When troubleshooting, a good starting point</p>
<p># is often:</p>
<p>#</p>
<p># kubectl get events -A --sort-by='.metadata.creationTimestamp'</p>
<p>#</p>
<p># Then narrow the investigation using:</p>
<p>#</p>
<p># kubectl describe &lt;resource&gt;</p>
<p># kubectl get events --field-selector ...</p>
<p># kubectl logs &lt;pod&gt;</p>
<p>#</p>
<p># Events give you the "what happened" clues; logs usually provide</p>
<p># the deeper "why it happened" details.</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image737.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>############################################################</p>
<p># STEP 32 — Kubernetes Events</p>
<p>############################################################</p>
<p># Purpose: Understand how Kubernetes Events help troubleshoot what</p>
<p># is happening to Pods, Nodes and other Kubernetes resources.</p>
<p>#</p>
<p># Events are useful for answering questions such as:</p>
<p># - Why is my Pod Pending?</p>
<p># - Why did a container restart?</p>
<p># - Why couldn't an image be pulled?</p>
<p># - Why was a Pod scheduled on a particular node?</p>
<p>#</p>
<p># Events are primarily a troubleshooting aid and are not a</p>
<p># replacement for application or component logs.</p>
<p>############################################################</p>
<p># STEP 32.1 — View Events in the Current Namespace</p>
<p>############################################################</p>
<p># Display Events from the current namespace.</p>
<p>kubectl get events</p>
<p># Events are typically shown with information such as:</p>
<p># LAST SEEN, TYPE, REASON, OBJECT and MESSAGE.</p>
<p>############################################################</p>
<p># STEP 32.2 — View Events in All Namespaces</p>
<p>############################################################</p>
<p># Useful when troubleshooting cluster-level issues or when you</p>
<p># do not know which namespace generated the Event.</p>
<p>kubectl get events -A</p>
<p>############################################################</p>
<p># STEP 32.3 — Sort Events by Time</p>
<p>############################################################</p>
<p># Sorting by creation time makes the Event history easier to</p>
<p># follow chronologically.</p>
<p>kubectl get events \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p>############################################################</p>
<p># STEP 32.4 — Inspect Events for a Specific Pod</p>
<p>############################################################</p>
<p># Create a simple test Pod.</p>
<p>kubectl run events-test \</p>
<p>  --image=nginx</p>
<p># Inspect the Pod.</p>
<p>kubectl get pod events-test</p>
<p># Display Events associated with this Pod.</p>
<p>kubectl describe pod events-test</p>
<p># Look at the Events section at the bottom of the output.</p>
<p>#</p>
<p># Typical Events may include:</p>
<p>#</p>
<p># Scheduled</p>
<p># Pulling</p>
<p># Pulled</p>
<p># Created</p>
<p># Started</p>
<p>############################################################</p>
<p># STEP 32.5 — Generate a Warning Event</p>
<p>############################################################</p>
<p># Create a Pod using an image that does not exist.</p>
<p># This deliberately creates a troubleshooting scenario.</p>
<p>kubectl run events-failure \</p>
<p>  --image=nginx:this-image-does-not-exist</p>
<p># Check the Pod status.</p>
<p>kubectl get pod events-failure</p>
<p># Inspect its Events.</p>
<p>kubectl describe pod events-failure</p>
<p># You should see Warning Events related to image pulling,</p>
<p># such as ErrImagePull or ImagePullBackOff.</p>
<p># You can also retrieve the Events directly:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-failure</p>
<p>############################################################</p>
<p># STEP 32.6 — Filter Warning Events</p>
<p>############################################################</p>
<p># Display only Warning Events in the current namespace.</p>
<p>kubectl get events \</p>
<p>  --field-selector type=Warning</p>
<p># This is particularly useful during troubleshooting because</p>
<p># normal informational Events can otherwise produce a lot of</p>
<p># output.</p>
<p>############################################################</p>
<p># STEP 32.7 — Filter Events by Reason</p>
<p>############################################################</p>
<p># Filter Events based on their Reason.</p>
<p>kubectl get events \</p>
<p>  --field-selector reason=Failed</p>
<p># This demonstrates that Events can be filtered rather than</p>
<p># manually searching through the entire Event list.</p>
<p>############################################################</p>
<p># STEP 32.8 — Inspect Events Across the Cluster</p>
<p>############################################################</p>
<p># Sort Events from all namespaces chronologically.</p>
<p>kubectl get events -A \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p># This is a useful first command when you encounter a</p>
<p># cluster-wide problem and do not yet know which component</p>
<p># is responsible.</p>
<p>############################################################</p>
<p># STEP 32.9 — Understand Event Types</p>
<p>############################################################</p>
<p># Kubernetes Events commonly have two types:</p>
<p># Normal</p>
<p>#   Indicates an expected or informational occurrence.</p>
<p>#</p>
<p># Warning</p>
<p>#   Indicates something that may require investigation.</p>
<p>kubectl get events \</p>
<p>  -A \</p>
<p>  --field-selector type=Warning</p>
<p>############################################################</p>
<p># STEP 32.10 — Compare Events with Logs</p>
<p>############################################################</p>
<p># Events tell you what Kubernetes observed or reported about</p>
<p># a resource. Logs provide detailed output from the application</p>
<p># or Kubernetes component itself.</p>
<p># Inspect the application Pod:</p>
<p>kubectl logs events-test</p>
<p># Inspect its Events:</p>
<p>kubectl describe pod events-test</p>
<p># Think of the distinction as:</p>
<p>#</p>
<p># Events -&gt; Kubernetes-level activity and troubleshooting clues</p>
<p># Logs   -&gt; Detailed output produced by a container/component</p>
<p>############################################################</p>
<p># STEP 32.11 — Useful Event Commands</p>
<p>############################################################</p>
<p># Current namespace:</p>
<p>kubectl get events</p>
<p># All namespaces:</p>
<p>kubectl get events -A</p>
<p># Sort chronologically:</p>
<p>kubectl get events \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p># Warning Events only:</p>
<p>kubectl get events \</p>
<p>  --field-selector type=Warning</p>
<p># Events for a specific Pod:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-test</p>
<p># Events for a specific Pod with chronological ordering:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=events-test \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p>############################################################</p>
<p># STEP 32.12 — Cleanup</p>
<p>############################################################</p>
<p># Remove the Pods created for this Event exercise.</p>
<p>kubectl delete pod events-test \</p>
<p>  --ignore-not-found</p>
<p>kubectl delete pod events-failure \</p>
<p>  --ignore-not-found</p>
<p>############################################################</p>
<p># STEP 32.13 — Key Takeaway</p>
<p>############################################################</p>
<p># Events provide a timeline of important Kubernetes activity</p>
<p># around resources. When troubleshooting, a good starting point</p>
<p># is often:</p>
<p>#</p>
<p># kubectl get events -A --sort-by='.metadata.creationTimestamp'</p>
<p>#</p>
<p># Then narrow the investigation using:</p>
<p>#</p>
<p># kubectl describe &lt;resource&gt;</p>
<p># kubectl get events --field-selector ...</p>
<p># kubectl logs &lt;pod&gt;</p>
<p>#</p>
<p># Events give you the "what happened" clues; logs usually provide</p>
<p># the deeper "why it happened" details.</p>
<p>############################</p>
<p># 1. Check if traditional log files exist (non-systemd systems)</p>
<p>ls -la /var/log/kube-*.log</p>
<p># 2. View traditional API server logs (if using file-based logging)</p>
<p>cat /var/log/kube-apiserver.log</p>
<p># 3. View traditional scheduler logs</p>
<p>cat /var/log/kube-scheduler.log</p>
<p># 4. View traditional controller-manager logs</p>
<p>cat /var/log/kube-controller-manager.log</p>
<p># 5. View traditional kubelet logs on worker nodes</p>
<p>cat /var/log/kubelet.log</p>
<p># 6. View traditional kube-proxy logs</p>
<p>cat /var/log/kube-proxy.log</p>
<p># 7. Check if systemd/journald is being used instead (most modern distros)</p>
<p>systemctl status kubelet | grep -i "active"</p>
<p># 8. View ALL kubelet logs from last hour (journald)</p>
<p>journalctl -u kubelet --since "1 hour ago"</p>
<p># 9. View kubelet logs from a specific time range</p>
<p>journalctl -u kubelet --since "2026-08-24 04:00:00" --until "2026-08-24 05:00:00"</p>
<p># 10. View last 100 kubelet logs (most recent)</p>
<p>journalctl -u kubelet -n 100</p>
<p># 11. View ALL component logs from last 30 minutes (kubelet, containerd, docker)</p>
<p>journalctl -u kubelet -u containerd --since "30 minutes ago"</p>
<p># 12. View ONLY errors/failures from kubelet logs</p>
<p>journalctl -u kubelet -p err --since "1 hour ago"</p>
<p># 13. View ONLY warnings and errors from all system services</p>
<p>journalctl -p warning..emerg -n 50</p>
<p># 14. Search for specific pod/container failures in logs</p>
<p>journalctl -u kubelet --since "1 hour ago" | grep -i "failed\|error\|crash"</p>
<p># 15. View logs with timestamps and priority levels clearly shown</p>
<p>journalctl -u kubelet -o verbose --since "10 minutes ago"</p>
<p># 16. View logs for container runtime issues (image pulls, OOM)</p>
<p>journalctl -u containerd -p err --since "1 hour ago"</p>
<p># 17. View boot-time logs to check node startup issues</p>
<p>journalctl -b -u kubelet</p>
<p># 18. Follow live logs from ALL control plane components (if using systemd)</p>
<p>journalctl -u kubelet -u containerd -f</p>
<p># 19. View logs with grep filter for eviction decisions</p>
<p>journalctl -u kubelet --since "1 day ago" | grep -i "evict"</p>
<p># 20. View logs for API server connectivity issues</p>
<p>journalctl -u kubelet --since "1 hour ago" | grep -i "api\|connection\|timeout"</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image738.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>######################################################################</p>
<p># STEP 33 — Pod Lifecycle: Phases, States and Troubleshooting</p>
<p>######################################################################</p>
<p># Purpose: Understand the Kubernetes Pod lifecycle by deliberately</p>
<p># creating Pods that demonstrate Pending, Running, Succeeded and</p>
<p># Failed phases, along with intermediate conditions such as</p>
<p># ContainerCreating, ErrImagePull and ImagePullBackOff.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># Pod phases are only:</p>
<p>#</p>
<p>#   Pending</p>
<p>#   Running</p>
<p>#   Succeeded</p>
<p>#   Failed</p>
<p>#</p>
<p># Status values such as ContainerCreating, ErrImagePull and</p>
<p># ImagePullBackOff are not additional Pod phases. They provide</p>
<p># more detail about what is happening to the Pod/container.</p>
<p>######################################################################</p>
<p># STEP 33.1 — Check the Cluster Before Starting</p>
<p>######################################################################</p>
<p># Confirm that both nodes are available.</p>
<p>kubectl get nodes -o wide</p>
<p># Check existing Pods so that the output from this exercise is easy</p>
<p># to identify.</p>
<p>kubectl get pods -A</p>
<p>######################################################################</p>
<p># STEP 33.2 — Pending Phase: Insufficient Resources</p>
<p>######################################################################</p>
<p># Create a Pod that requests an intentionally unrealistic amount of</p>
<p># CPU and memory. On a small local cluster, the scheduler should not</p>
<p># find a node with enough allocatable resources, leaving the Pod</p>
<p># in the Pending phase.</p>
<p>cat &gt; pending-pod.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: lifecycle-pending</p>
<p>spec:</p>
<p>  containers:</p>
<p>    - name: lifecycle-container</p>
<p>      image: nginx</p>
<p>      resources:</p>
<p>        requests:</p>
<p>          memory: "100Gi"</p>
<p>          cpu: "100"</p>
<p>EOF</p>
<p># Create the Pod:</p>
<p>kubectl create -f pending-pod.yaml</p>
<p># Check its phase:</p>
<p>kubectl get pod lifecycle-pending</p>
<p># More useful view showing the node assignment and IP:</p>
<p>kubectl get pod lifecycle-pending -o wide</p>
<p># The Pod should remain Pending because its resource request is far</p>
<p># greater than what your local nodes can provide.</p>
<p># IMPORTANT:</p>
<p># "Pending" means the Pod has been accepted by Kubernetes but is not</p>
<p># yet running. One common reason is that the scheduler cannot find</p>
<p># a suitable node.</p>
<p>######################################################################</p>
<p># STEP 33.3 — Investigate Why the Pod Is Pending</p>
<p>######################################################################</p>
<p># Describe the Pod and look at the Events section at the bottom.</p>
<p>kubectl describe pod lifecycle-pending</p>
<p># You should see scheduling-related Events explaining why the Pod</p>
<p># cannot be placed.</p>
<p># Filter Events specifically for this Pod:</p>
<p>kubectl get events \</p>
<p>  --field-selector involvedObject.name=lifecycle-pending \</p>
<p>  --sort-by='.metadata.creationTimestamp'</p>
<p># This is an important troubleshooting pattern:</p>
<p>#</p>
<p># kubectl get pod</p>
<p>#       |</p>
<p>#       +-- What is the current status?</p>
<p>#</p>
<p># kubectl describe pod</p>
<p>#       |</p>
<p>#       +-- Why is it in that status?</p>
<p>#</p>
<p># Events</p>
<p>#       |</p>
<p>#       +-- What did Kubernetes observe while processing the Pod?</p>
<p>######################################################################</p>
<p># STEP 33.4 — Delete the Pending Pod</p>
<p>######################################################################</p>
<p># Remove the intentionally unschedulable Pod before continuing.</p>
<p>kubectl delete pod lifecycle-pending</p>
<p>rm -f pending-pod.yaml</p>
<p>######################################################################</p>
<p># STEP 33.5 — Running Phase</p>
<p>######################################################################</p>
<p># Create a normal long-running nginx Pod.</p>
<p>kubectl run lifecycle-running \</p>
<p>  --image=nginx</p>
<p># Check the Pod:</p>
<p>kubectl get pod lifecycle-running</p>
<p># Check the Pod with node information:</p>
<p>kubectl get pod lifecycle-running -o wide</p>
<p># The expected phase is:</p>
<p># Running</p>
<p># A Pod enters the Running phase once it has been assigned to a node</p>
<p># and at least one of its containers is running.</p>
<p>######################################################################</p>
<p># STEP 33.6 — Watch the Pod Lifecycle</p>
<p>######################################################################</p>
<p># Delete the Pod so that we can recreate it while watching its</p>
<p># transition.</p>
<p>kubectl delete pod lifecycle-running</p>
<p># Watch Pods while creating another one.</p>
<p>kubectl get pods -w</p>
<p># In another terminal, create the Pod:</p>
<p>kubectl run lifecycle-running \</p>
<p>  --image=nginx</p>
<p># You may briefly observe statuses such as:</p>
<p>#</p>
<p># Pending</p>
<p># ContainerCreating</p>
<p># Running</p>
<p>#</p>
<p># ContainerCreating is an intermediate status displayed while the</p>
<p># container runtime is creating/starting the container.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># ContainerCreating is NOT a Pod phase. The Pod phase remains</p>
<p># Pending until the Pod transitions to Running.</p>
<p>######################################################################</p>
<p># STEP 33.7 — Inspect the Running Pod</p>
<p>######################################################################</p>
<p># Stop watching with Ctrl+C and inspect the Pod.</p>
<p>kubectl get pod lifecycle-running -o wide</p>
<p>kubectl describe pod lifecycle-running</p>
<p># Look at the Conditions and Events sections.</p>
<p>#</p>
<p># You can see details such as scheduling, image pulling, container</p>
<p># creation and container startup.</p>
<p>######################################################################</p>
<p># STEP 33.8 — Succeeded Phase</p>
<p>######################################################################</p>
<p># Create a short-lived Pod that executes a command and exits</p>
<p># successfully.</p>
<p>cat &gt; succeeded-pod.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: lifecycle-succeeded</p>
<p>spec:</p>
<p>  restartPolicy: Never</p>
<p>  containers:</p>
<p>    - name: lifecycle-container</p>
<p>      image: busybox</p>
<p>      command: ["sh", "-c", "echo 'Hello, Kubernetes lifecycle!'; exit 0"]</p>
<p>EOF</p>
<p># Create the Pod:</p>
<p>kubectl create -f succeeded-pod.yaml</p>
<p># Check its status:</p>
<p>kubectl get pod lifecycle-succeeded</p>
<p># The Pod should eventually show:</p>
<p># Completed</p>
<p># The actual Pod phase is:</p>
<p># Succeeded</p>
<p># "Completed" is commonly displayed in the STATUS column by</p>
<p># kubectl; the underlying Pod phase is Succeeded.</p>
<p>######################################################################</p>
<p># STEP 33.9 — Inspect the Successful Pod</p>
<p>######################################################################</p>
<p># Inspect the Pod:</p>
<p>kubectl describe pod lifecycle-succeeded</p>
<p># View the container output:</p>
<p>kubectl logs lifecycle-succeeded</p>
<p># The container exited with code 0, meaning successful completion.</p>
<p># Because restartPolicy is Never, Kubernetes does not restart the</p>
<p># container after it successfully exits.</p>
<p>######################################################################</p>
<p># STEP 33.10 — Failed Phase</p>
<p>######################################################################</p>
<p># Create a Pod whose container deliberately exits with a non-zero</p>
<p># exit code.</p>
<p>kubectl run lifecycle-failed \</p>
<p>  --image=busybox \</p>
<p>  --restart=Never \</p>
<p>  -- /bin/sh -c "echo 'Intentional failure'; exit 1"</p>
<p># Check the Pod:</p>
<p>kubectl get pod lifecycle-failed</p>
<p># The Pod should eventually show:</p>
<p># Error</p>
<p># The underlying Pod phase should be:</p>
<p># Failed</p>
<p># A non-zero exit code indicates that the container terminated</p>
<p># unsuccessfully.</p>
<p>######################################################################</p>
<p># STEP 33.11 — Investigate the Failed Pod</p>
<p>######################################################################</p>
<p># Inspect the Pod:</p>
<p>kubectl describe pod lifecycle-failed</p>
<p># Check the container logs:</p>
<p>kubectl logs lifecycle-failed</p>
<p># Look specifically at the container termination information:</p>
<p>kubectl get pod lifecycle-failed \</p>
<p>  -o jsonpath='{.status.containerStatuses[*].state.terminated.reason}{"\n"}'</p>
<p># Display the exit code:</p>
<p>kubectl get pod lifecycle-failed \</p>
<p>  -o jsonpath='{.status.containerStatuses[*].state.terminated.exitCode}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 33.12 — ImagePullBackOff / ErrImagePull</p>
<p>######################################################################</p>
<p># Create a Pod using an image tag that does not exist.</p>
<p>kubectl run lifecycle-image-failure \</p>
<p>  --image=nginx:this-image-does-not-exist</p>
<p># Check the Pod:</p>
<p>kubectl get pod lifecycle-image-failure</p>
<p># Depending on timing, you may observe statuses such as:</p>
<p>#</p>
<p># ErrImagePull</p>
<p># ImagePullBackOff</p>
<p>#</p>
<p># These indicate that Kubernetes is unable to obtain the requested</p>
<p># container image.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p># ErrImagePull and ImagePullBackOff are NOT Pod phases.</p>
<p>#</p>
<p># The Pod itself will generally remain in the Pending phase while</p>
<p># Kubernetes is unable to start the container.</p>
<p>######################################################################</p>
<p># STEP 33.13 — Understand ImagePullBackOff</p>
<p>######################################################################</p>
<p># Describe the Pod:</p>
<p>kubectl describe pod lifecycle-image-failure</p>
<p># Look at the Events section.</p>
<p># You should see information about the failed image pull.</p>
<p># ImagePullBackOff means Kubernetes is retrying the image pull with</p>
<p># an increasing delay between attempts.</p>
<p># This is different from ErrImagePull:</p>
<p>#</p>
<p># ErrImagePull</p>
<p>#   -&gt; The image pull attempt failed.</p>
<p>#</p>
<p># ImagePullBackOff</p>
<p>#   -&gt; Kubernetes is backing off before trying the image pull again.</p>
<p>######################################################################</p>
<p># STEP 33.14 — ContainerCreating</p>
<p>######################################################################</p>
<p># Create another normal Pod and immediately inspect it.</p>
<p>kubectl run lifecycle-creating \</p>
<p>  --image=nginx</p>
<p># Immediately check:</p>
<p>kubectl get pod lifecycle-creating</p>
<p># Depending on how quickly your local cluster starts the container,</p>
<p># you may briefly see:</p>
<p>#</p>
<p># ContainerCreating</p>
<p>#</p>
<p># This is a transient status and may disappear very quickly.</p>
<p># Watch the Pod:</p>
<p>kubectl get pod lifecycle-creating -w</p>
<p># Eventually it should become:</p>
<p># Running</p>
<p># Again, ContainerCreating is not a separate Pod phase. It describes</p>
<p># what the container is currently doing while the Pod is still</p>
<p># progressing toward Running.</p>
<p>######################################################################</p>
<p># STEP 33.15 — Compare All the Pods</p>
<p>######################################################################</p>
<p># Display all Pods created in this exercise:</p>
<p>kubectl get pods</p>
<p># A typical final result will look conceptually like:</p>
<p>#</p>
<p># lifecycle-succeeded        0/1   Completed</p>
<p># lifecycle-failed           0/1   Error</p>
<p># lifecycle-image-failure    0/1   ImagePullBackOff</p>
<p># lifecycle-creating         1/1   Running</p>
<p>#</p>
<p># The important point is that the STATUS column gives you a</p>
<p># human-friendly view, while the Pod's actual phase is one of:</p>
<p>#</p>
<p># Pending</p>
<p># Running</p>
<p># Succeeded</p>
<p># Failed</p>
<p>######################################################################</p>
<p># STEP 33.16 — Inspect the Actual Pod Phase</p>
<p>######################################################################</p>
<p># Kubernetes stores the Pod phase under:</p>
<p>#</p>
<p># .status.phase</p>
<p># Check the phase of the successful Pod:</p>
<p>kubectl get pod lifecycle-succeeded \</p>
<p>  -o jsonpath='{.status.phase}{"\n"}'</p>
<p># Check the failed Pod:</p>
<p>kubectl get pod lifecycle-failed \</p>
<p>  -o jsonpath='{.status.phase}{"\n"}'</p>
<p># Check the image failure Pod:</p>
<p>kubectl get pod lifecycle-image-failure \</p>
<p>  -o jsonpath='{.status.phase}{"\n"}'</p>
<p># This is a useful demonstration that the kubectl STATUS column</p>
<p># and the actual Pod phase are related but are not the same thing.</p>
<p>######################################################################</p>
<p># STEP 33.17 — Inspect Pod Conditions</p>
<p>######################################################################</p>
<p># Pod phases provide a high-level summary. Conditions provide more</p>
<p># detailed information about the Pod's state.</p>
<p>kubectl get pod lifecycle-creating \</p>
<p>  -o jsonpath='{.status.conditions[*]}'</p>
<p># A cleaner view:</p>
<p>kubectl describe pod lifecycle-creating</p>
<p># Pay attention to conditions such as:</p>
<p>#</p>
<p># PodScheduled</p>
<p># Initialized</p>
<p># ContainersReady</p>
<p># Ready</p>
<p>#</p>
<p># These conditions provide additional detail beyond the four</p>
<p># high-level Pod phases.</p>
<p>######################################################################</p>
<p># STEP 33.18 — Lifecycle Troubleshooting Pattern</p>
<p>######################################################################</p>
<p># When a Pod is not behaving as expected, use this sequence:</p>
<p>kubectl get pod &lt;pod-name&gt;</p>
<p># First determine the current high-level status.</p>
<p>kubectl get pod &lt;pod-name&gt; -o wide</p>
<p># Then inspect the detailed Pod information and Events.</p>
<p>kubectl describe pod &lt;pod-name&gt;</p>
<p># Then inspect application/container output where applicable.</p>
<p>kubectl logs &lt;pod-name&gt;</p>
<p># Finally, inspect the actual Pod phase if you need to distinguish</p>
<p># the high-level lifecycle phase from the STATUS column.</p>
<p>kubectl get pod &lt;pod-name&gt; \</p>
<p>  -o jsonpath='{.status.phase}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 33.19 — Useful Lifecycle Summary</p>
<p>######################################################################</p>
<p># Pod PHASES:</p>
<p>#</p>
<p># Pending</p>
<p>#   Pod accepted but not yet running.</p>
<p>#   Examples: waiting for scheduling, image pulling, container setup.</p>
<p>#</p>
<p># Running</p>
<p>#   Pod is assigned to a node and at least one container is running.</p>
<p>#</p>
<p># Succeeded</p>
<p>#   All containers terminated successfully.</p>
<p>#</p>
<p># Failed</p>
<p>#   All containers terminated and at least one terminated unsuccessfully</p>
<p>#   or the Pod otherwise failed according to Kubernetes lifecycle rules.</p>
<p>#</p>
<p>#</p>
<p># COMMON STATUS / REASONS:</p>
<p>#</p>
<p># ContainerCreating</p>
<p>#   Container runtime is creating the container.</p>
<p>#</p>
<p># ErrImagePull</p>
<p>#   Kubernetes failed to pull the requested image.</p>
<p>#</p>
<p># ImagePullBackOff</p>
<p>#   Kubernetes is backing off and will retry the image pull.</p>
<p>#</p>
<p># Running</p>
<p>#   Container is running.</p>
<p>#</p>
<p># Completed</p>
<p>#   Common kubectl STATUS representation when the Pod phase is Succeeded.</p>
<p>#</p>
<p># Error</p>
<p>#   Common kubectl STATUS representation associated with a failed</p>
<p>#   container/Pod.</p>
<p>######################################################################</p>
<p># STEP 33.20 — Cleanup</p>
<p>######################################################################</p>
<p># Delete all Pods created for this lifecycle exercise.</p>
<p>kubectl delete pod \</p>
<p>  lifecycle-succeeded \</p>
<p>  lifecycle-failed \</p>
<p>  lifecycle-image-failure \</p>
<p>  lifecycle-creating \</p>
<p>  --ignore-not-found</p>
<p># Remove the temporary YAML file:</p>
<p>rm -f succeeded-pod.yaml</p>
<p>######################################################################</p>
<p># STEP 33.21 — Final Takeaway</p>
<p>######################################################################</p>
<p># Think about the lifecycle in two layers:</p>
<p>#</p>
<p># HIGH-LEVEL POD PHASE</p>
<p>#</p>
<p>#     Pending</p>
<p>#        |</p>
<p>#        | scheduling / image pull / container creation</p>
<p>#        v</p>
<p>#     Running</p>
<p>#       / \</p>
<p>#      /   \</p>
<p>#     v     v</p>
<p># Succeeded Failed</p>
<p>#</p>
<p>#</p>
<p># UNDERLYING / INTERMEDIATE DETAILS</p>
<p>#</p>
<p># Pending</p>
<p>#   ├── Waiting for scheduling</p>
<p>#   ├── ContainerCreating</p>
<p>#   ├── ErrImagePull</p>
<p>#   └── ImagePullBackOff</p>
<p>#</p>
<p># Running</p>
<p>#   ├── ContainersReady</p>
<p>#   └── Ready</p>
<p>#</p>
<p># Succeeded</p>
<p>#   └── Completed</p>
<p>#</p>
<p># Failed</p>
<p>#   └── Error / non-zero container exit</p>
<p>#</p>
<p># The key lesson is:</p>
<p>#</p>
<p># PHASE = high-level lifecycle state</p>
<p># STATUS/REASON/CONDITION = additional detail about what is happening</p>
<p>#</p>
<p># When troubleshooting, start with:</p>
<p>#</p>
<p># kubectl get pod &lt;pod-name&gt;</p>
<p># kubectl describe pod &lt;pod-name&gt;</p>
<p># kubectl get events --field-selector involvedObject.name=&lt;pod-name&gt;</p>
<p># kubectl logs &lt;pod-name&gt;</p></td>
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
<td><p><img src="subjects/tech/azure/az-aks-complete/img/media/image739.webp" style="width:7.67986in;height:5.12014in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>| Policy        | Exit code `0` (success) | Exit code `!= 0` (failure) |</p>
<p>| ------------- | ----------------------- | -------------------------- |</p>
<p>| **Always**    | 🔄 Restart              | 🔄 Restart                 |</p>
<p>| **OnFailure** | 🛑 Stop                 | 🔄 Restart                 |</p>
<p>| **Never**     | 🛑 Stop                 | 🛑 Stop                    |</p>
<p>######################################################################</p>
<p># STEP 34 — Restart Policies: Always, OnFailure and Never</p>
<p>######################################################################</p>
<p>#</p>
<p># Purpose: Understand how Kubernetes handles a container after it exits</p>
<p># under the three supported Pod restart policies.</p>
<p>#</p>
<p># IMPORTANT:</p>
<p>#   Always    -&gt; Restart after BOTH success (exit 0) and failure (≠0)</p>
<p>#   OnFailure -&gt; Restart ONLY after failure (exit ≠0)</p>
<p>#   Never     -&gt; Never restart after either success or failure</p>
<p>#</p>
<p># NOTE:</p>
<p>#   `kubectl run` uses restartPolicy=Always by default.</p>
<p>#</p>
<p>######################################################################</p>
<p>######################################################################</p>
<p># STEP 34.1 — Check the Cluster Before Starting</p>
<p>######################################################################</p>
<p># Confirm that the cluster is reachable and nodes are available.</p>
<p>kubectl get nodes -o wide</p>
<p>######################################################################</p>
<p># STEP 34.2 — ALWAYS: Restart After a Successful Exit</p>
<p>######################################################################</p>
<p># Create a Pod whose container exits successfully.</p>
<p>kubectl run always-success --image=busybox -- sh -c 'echo "Hello Kubernetes"; exit 0'</p>
<p># Watch the Pod; it will repeatedly restart even though the command succeeds.</p>
<p>kubectl get pod always-success -w</p>
<p># Check how many times the container has restarted.</p>
<p>kubectl get pod always-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p># Check the container's current state and previous termination information.</p>
<p>kubectl describe pod always-success</p>
<p>######################################################################</p>
<p># STEP 34.3 — ALWAYS: Restart After a Failure</p>
<p>######################################################################</p>
<p># Create a Pod whose container exits with a non-zero exit code.</p>
<p>kubectl run always-failure --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'</p>
<p># Watch the Pod repeatedly restart after the failed container exits.</p>
<p>kubectl get pod always-failure -w</p>
<p># Check the restart count.</p>
<p>kubectl get pod always-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p># Inspect the previous container termination reason and exit code.</p>
<p>kubectl get pod always-failure -o jsonpath='{.status.containerStatuses[0].lastState.terminated.reason}{"\n"}{.status.containerStatuses[0].lastState.terminated.exitCode}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.4 — NEVER: Do Not Restart After a Failure</p>
<p>######################################################################</p>
<p># Create a Pod that fails and explicitly uses restartPolicy=Never.</p>
<p>kubectl run never-failure --restart=Never --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'</p>
<p># Check the final Pod phase; it should become Failed.</p>
<p>kubectl get pod never-failure</p>
<p># Inspect the Pod phase directly.</p>
<p>kubectl get pod never-failure -o jsonpath='{.status.phase}{"\n"}'</p>
<p># Confirm that the container was not restarted.</p>
<p>kubectl get pod never-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.5 — NEVER: Do Not Restart After a Successful Exit</p>
<p>######################################################################</p>
<p># Create a Pod that exits successfully and never restarts.</p>
<p>kubectl run never-success --restart=Never --image=busybox -- sh -c 'echo "Job completed successfully"; exit 0'</p>
<p># Check the final Pod phase; it should become Succeeded.</p>
<p>kubectl get pod never-success</p>
<p># Verify the Pod completed successfully.</p>
<p>kubectl get pod never-success -o jsonpath='{.status.phase}{"\n"}'</p>
<p># Verify that the container was not restarted.</p>
<p>kubectl get pod never-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.6 — ONFAILURE: Restart After a Failure</p>
<p>######################################################################</p>
<p># Create a Pod that fails with a non-zero exit code.</p>
<p>kubectl run onfailure-failure --restart=OnFailure --image=busybox -- sh -c 'echo "Simulating failure"; exit 1'</p>
<p># Watch the Pod; the container should restart after each failure.</p>
<p>kubectl get pod onfailure-failure -w</p>
<p># Check the number of container restarts.</p>
<p>kubectl get pod onfailure-failure -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p># Inspect the previous failed container and its exit code.</p>
<p>kubectl get pod onfailure-failure -o jsonpath='{.status.containerStatuses[0].lastState.terminated.exitCode}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.7 — ONFAILURE: Do NOT Restart After Success</p>
<p>######################################################################</p>
<p># Create a Pod that exits successfully using OnFailure.</p>
<p>kubectl run onfailure-success --restart=OnFailure --image=busybox -- sh -c 'echo "Hello Kubernetes"; exit 0'</p>
<p># Check the Pod; it should become Succeeded instead of restarting.</p>
<p>kubectl get pod onfailure-success</p>
<p># Verify that the Pod phase is Succeeded.</p>
<p>kubectl get pod onfailure-success -o jsonpath='{.status.phase}{"\n"}'</p>
<p># Verify that no container restart occurred.</p>
<p>kubectl get pod onfailure-success -o jsonpath='{.status.containerStatuses[0].restartCount}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.8 — Compare All Three Policies</p>
<p>######################################################################</p>
<p># Display the Pods created in this exercise.</p>
<p>kubectl get pods</p>
<p># Show restart counts for the test Pods.</p>
<p>kubectl get pods -o custom-columns='NAME:.metadata.name,PHASE:.status.phase,RESTARTS:.status.containerStatuses[0].restartCount'</p>
<p># Inspect the restart policy configured on each Pod.</p>
<p>kubectl get pods -o custom-columns='NAME:.metadata.name,RESTART-POLICY:.spec.restartPolicy'</p>
<p>######################################################################</p>
<p># STEP 34.9 — Inspect Events and Restart Backoff</p>
<p>######################################################################</p>
<p># View recent events related to the failing restart tests.</p>
<p>kubectl get events --sort-by='.lastTimestamp'</p>
<p># Inspect the failing Always Pod and observe restart/backoff information.</p>
<p>kubectl describe pod always-failure</p>
<p># Inspect the failing OnFailure Pod and observe restart/backoff information.</p>
<p>kubectl describe pod onfailure-failure</p>
<p>######################################################################</p>
<p># STEP 34.10 — Inspect Container Logs</p>
<p>######################################################################</p>
<p># Show logs from the current container instance.</p>
<p>kubectl logs always-failure</p>
<p># Show logs from the previous terminated container instance.</p>
<p>kubectl logs always-failure --previous</p>
<p># Show logs from the previous failed OnFailure container instance.</p>
<p>kubectl logs onfailure-failure --previous</p>
<p>######################################################################</p>
<p># STEP 34.11 — Generate a Manifest with restartPolicy</p>
<p>######################################################################</p>
<p># Generate a Pod manifest without creating the Pod.</p>
<p>kubectl run restart-policy-demo --restart=OnFailure --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'</p>
<p># Generate a Never-restart Pod manifest.</p>
<p>kubectl run restart-policy-never --restart=Never --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'</p>
<p># Generate an Always-restart Pod manifest.</p>
<p>kubectl run restart-policy-always --restart=Always --image=busybox --dry-run=client -o yaml -- sh -c 'echo "Hello Kubernetes"; exit 1'</p>
<p>######################################################################</p>
<p># STEP 34.12 — Verify the Restart Policy in YAML</p>
<p>######################################################################</p>
<p># Display the configured restartPolicy for an existing Pod.</p>
<p>kubectl get pod onfailure-success -o yaml</p>
<p># Display only the restartPolicy field.</p>
<p>kubectl get pod onfailure-success -o jsonpath='{.spec.restartPolicy}{"\n"}'</p>
<p>######################################################################</p>
<p># STEP 34.13 — Clean Up the Restart Policy Test Pods</p>
<p>######################################################################</p>
<p># Delete all Pods created during this exercise.</p>
<p>kubectl delete pod always-success always-failure never-failure never-success onfailure-failure onfailure-success</p>
<p># Confirm that the test Pods have been removed.</p>
<p>kubectl get pods</p>
<p>############################</p></td>
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
| <img src="subjects/tech/azure/az-aks-complete/img/media/image740.webp" style="width:7.67986in;height:5.12014in" /> |

## Draining a Node

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image741.webp" style="width:7.68056in;height:7.01944in" /> |

## Taint based evictions

|  |
|----|
| <img src="subjects/tech/azure/az-aks-complete/img/media/image742.webp" style="width:7.68056in;height:7.01944in" /> |

## Immutable Config Map 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>######################################################################</p>
<p># STEP 35 — Configure Nginx to Accept ONLY TLS 1.3</p>
<p>######################################################################</p>
<p>#</p>
<p># Purpose:</p>
<p>#   Configure the Nginx server in `secure-web` to reject TLS 1.2</p>
<p>#   and accept only TLS 1.3.</p>
<p>#</p>
<p>######################################################################</p>
<p>######################################################################</p>
<p># STEP 35.1 — Setup Environment</p>
<p>######################################################################</p>
<p>wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/refs/heads/master/Exercises/script-cm-deploy.sh</p>
<p>chmod +x script-cm-deploy.sh</p>
<p>./script-cm-deploy.sh</p>
<p># Expect: secure-web Deployment, Service, TLS Secret and ConfigMap created.</p>
<p>######################################################################</p>
<p># STEP 35.2 — Inspect the Existing Configuration</p>
<p>######################################################################</p>
<p>kubectl get deployment secure-web</p>
<p>kubectl get configmap nginx-config-v1 -o yaml</p>
<p># Expect: Nginx configuration should currently allow TLS 1.2 and TLS 1.3.</p>
<p>######################################################################</p>
<p># STEP 35.3 — Modify the ConfigMap</p>
<p>######################################################################</p>
<p>kubectl get configmap nginx-config-v1 -o yaml &gt; configmap.yaml</p>
<p>sed -i 's/TLSv1.2 TLSv1.3/TLSv1.3/' configmap.yaml</p>
<p>kubectl apply -f configmap.yaml</p>
<p># Expect: ConfigMap should now contain only `ssl_protocols TLSv1.3;`.</p>
<p>######################################################################</p>
<p># STEP 35.4 — Restart the Deployment</p>
<p>######################################################################</p>
<p>kubectl rollout restart deployment secure-web</p>
<p>kubectl rollout status deployment secure-web</p>
<p># Expect: New secure-web Pods should become Ready.</p>
<p>######################################################################</p>
<p># STEP 35.5 — Test TLS 1.2 and TLS 1.3</p>
<p>######################################################################</p>
<p># Terminal 1:</p>
<p>kubectl port-forward service/secure-web-svc 8443:443</p>
<p># Terminal 2 — TLS 1.2 should fail:</p>
<p>openssl s_client -connect 127.0.0.1:8443 -servername secure-web.local -tls1_2 &lt;/dev/null</p>
<p># Terminal 2 — TLS 1.3 should succeed:</p>
<p>openssl s_client -connect 127.0.0.1:8443 -servername secure-web.local -tls1_3 &lt;/dev/null</p>
<p># Expect:</p>
<p>#   TLS 1.2 -&gt; handshake failure</p>
<p>#   TLS 1.3 -&gt; successful TLSv1.3 connection</p>
<p>######################################################################</p>
<p># STEP 35.6 — Cleanup</p>
<p>######################################################################</p>
<p>kubectl delete deployment secure-web</p>
<p>kubectl delete service secure-web-svc</p>
<p>kubectl delete secret tls-secret</p>
<p>kubectl delete configmap nginx-config-v1</p>
<p>rm -f configmap.yaml script-cm-deploy.sh</p></td>
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
<p># STEP 36 — Rebind an Existing PersistentVolume to a New PVC</p>
<p>######################################################################</p>
<p>#</p>
<p># Purpose:</p>
<p>#   Recover a deleted MariaDB Deployment by creating a new PVC that</p>
<p>#   binds to the existing retained PV `mariadb-retained-pv`.</p>
<p>#</p>
<p># Requirement:</p>
<p>#   The MariaDB Pod must start successfully and contain:</p>
<p>#</p>
<p>#       /var/lib/mysql/initial.txt</p>
<p>#</p>
<p>######################################################################</p>
<p>######################################################################</p>
<p># STEP 36.1 — Check Prerequisites</p>
<p>######################################################################</p>
<p>kubectl get storageclass</p>
<p>kubectl get pv mariadb-retained-pv -o wide</p>
<p># Expect: Local Path Provisioner StorageClass exists and the PV is Available/Released.</p>
<p>######################################################################</p>
<p># STEP 36.2 — Setup Environment</p>
<p>######################################################################</p>
<p>wget https://raw.githubusercontent.com/zealvora/certified-kubernetes-administrator/refs/heads/master/Exercises/script-mariadb.sh</p>
<p>chmod +x script-mariadb.sh</p>
<p>./script-mariadb.sh</p>
<p># Expect: `mariadb-deployment.yaml` should be created and the required</p>
<p># namespace/PV setup should be present.</p>
<p>######################################################################</p>
<p># STEP 36.3 — Remove the Old PVC Reference from the PV</p>
<p>######################################################################</p>
<p>kubectl patch pv mariadb-retained-pv --type=json -p='[{"op":"remove","path":"/spec/claimRef"}]'</p>
<p># Expect: the PV should become Available and no longer reference the</p>
<p># deleted/old MariaDB PVC.</p>
<p>kubectl get pv mariadb-retained-pv</p>
<p>######################################################################</p>
<p># STEP 36.4 — Create a PVC Bound to the Existing PV</p>
<p>######################################################################</p>
<p>cat &gt; pvc.yaml &lt;&lt;'EOF'</p>
<p>apiVersion: v1</p>
<p>kind: PersistentVolumeClaim</p>
<p>metadata:</p>
<p>  name: mariadb</p>
<p>  namespace: mariadb</p>
<p>spec:</p>
<p>  accessModes:</p>
<p>    - ReadWriteOnce</p>
<p>  resources:</p>
<p>    requests:</p>
<p>      storage: 250Mi</p>
<p>  storageClassName: local-path</p>
<p>  volumeName: mariadb-retained-pv</p>
<p>EOF</p>
<p>kubectl apply -f pvc.yaml</p>
<p># Expect: the PVC should become Bound to `mariadb-retained-pv`.</p>
<p>kubectl get pvc -n mariadb</p>
<p>######################################################################</p>
<p># STEP 36.5 — Recreate the MariaDB Deployment</p>
<p>######################################################################</p>
<p>kubectl apply -f mariadb-deployment.yaml</p>
<p># Expect: MariaDB Pod should be created and eventually become Running.</p>
<p>kubectl get pods -n mariadb -w</p>
<p>######################################################################</p>
<p># STEP 36.6 — Verify the Existing Data</p>
<p>######################################################################</p>
<p>kubectl exec -n mariadb deploy/mariadb -- ls -l /var/lib/mysql/initial.txt</p>
<p># Expect: `/var/lib/mysql/initial.txt` should exist.</p>
<p>######################################################################</p>
<p># STEP 36.7 — Verify PV/PVC Binding</p>
<p>######################################################################</p>
<p>kubectl get pv mariadb-retained-pv</p>
<p>kubectl get pvc mariadb -n mariadb</p>
<p># Expect:</p>
<p>#   PV  -&gt; Bound</p>
<p>#   PVC -&gt; Bound</p>
<p>#   PVC -&gt; mariadb-retained-pv</p>
<p>######################################################################</p>
<p># STEP 36.8 — Cleanup</p>
<p>######################################################################</p>
<p>kubectl delete namespace mariadb</p>
<p>kubectl delete pv mariadb-retained-pv</p>
<p>sudo rm -rf /opt/local-path-provisioner/mariadb</p>
<p>rm -f mariadb-deployment.yaml script-mariadb.sh pvc.yaml</p>
<p>######################################################################</p>
<p># END OF STEP 36</p>
<p>######################################################################</p></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |
