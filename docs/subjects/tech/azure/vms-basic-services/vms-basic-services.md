> Azure

| **Version**             | **1.0**         |
 

<span id="_Toc47124717" class="anchor"></span>Table of Contents

[Table of Contents [2](#_Toc47124717)](#_Toc47124717)

[1 Approval [3](#approval)](#approval)

[2 Revision History [3](#revision-history)](#revision-history)

[3 Introduction [4](#introduction)](#introduction)

[3.1 xxx [4](#_Toc47124721)](#_Toc47124721)

[3.2 xxxx [4](#_Toc47124722)](#_Toc47124722)

[3.2.1 xxxxxx [4](#_Toc47124723)](#_Toc47124723)

[3.2.2 xxxxx [4](#_Toc47124724)](#_Toc47124724)

 

**\**

# Introduction

Azure

## Multiple Data Centers

Problems

<img src="subjects/tech/azure/vms-basic-services/img/media/image3.webp" style="width:6.41528in;height:4.89653in" />

Solution

<img src="subjects/tech/azure/vms-basic-services/img/media/image4.webp" style="width:7.5in;height:5.11319in" />

Advantages

<img src="subjects/tech/azure/vms-basic-services/img/media/image5.webp" style="width:7.67917in;height:4.22639in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image6.webp" style="width:7.67917in;height:3.91528in" alt="Graphical user interface, text, application Description automatically generated with medium confidence" />

Examples

<img src="subjects/tech/azure/vms-basic-services/img/media/image7.webp" style="width:5.56596in;height:3.29181in" alt="Table Description automatically generated" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image8.webp" style="width:7.6875in;height:2.21597in" />

## Azure VMs

Google: Compute Engine

AWS: EC2 or Elastic Compute Cloud

IBM: Compute

Azure: AVM

<img src="subjects/tech/azure/vms-basic-services/img/media/image9.webp" style="width:7.67917in;height:4in" />

### Features

<img src="subjects/tech/azure/vms-basic-services/img/media/image10.webp" style="width:7.67917in;height:4.10347in" />

### Create a VM

<img src="subjects/tech/azure/vms-basic-services/img/media/image11.webp" style="width:7.67014in;height:3.75486in" />

### Create VMXxxx

<img src="subjects/tech/azure/vms-basic-services/img/media/image12.webp" style="width:7.6875in;height:4.32431in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image13.webp" style="width:7.6875in;height:4.32431in" alt="A screenshot of a computer Description automatically generated" />

### Pricing Calculator

[Pricing Calculator \| Microsoft Azure](https://azure.microsoft.com/en-us/pricing/calculator/)

### Download Key Pair

<img src="subjects/tech/azure/vms-basic-services/img/media/image14.webp" style="width:7.67917in;height:4.30208in" />

### PEM FILE

![](subjects/tech/azure/vms-basic-services/img/media/image15.emf)

### Commands

> chmod 400 ibringuser.pem
>
> ssh -i YOUR_KEY_PATH azureuser@PUBLIC_IP_ADDRESS
>
> ssh -i my-first-vm_key.pem azureuser@13.90.35.80
>
> apt-get -y update
>
> apt-get -y install nginx
>
> echo "Hello World"

echo "Hello World" \> /var/www/html/index.html

> echo "Hello World from in28minutes" \> /var/www/html/index.html
>
> hostname
>
> echo "\$(hostname)"
>
> echo "Hello World from \$(hostname)"
>
> echo "Hello World from \$(hostname)" \> /var/www/html/index.html

### VM Details all in one

<img src="subjects/tech/azure/vms-basic-services/img/media/image16.webp" style="width:4.21763in;height:3.59356in" />

### Connect from Client

<img src="subjects/tech/azure/vms-basic-services/img/media/image17.webp" style="width:4.73823in;height:3.08562in" />

### Add the Key to machine

chmod 400 ibringuser.pem

cd C:/ws/Tutorials/Azure

ssh -i ibringuser.pem <ibringuser@40.113.159.210>

wildfly start manual

cd /opt/wildfly/bin

sudo nohup ./standalone.sh &

….wait a bit and then execute below to see the logs

sudo tail -f nohup.out

For logs

cd /opt/wildfly/standalone/log

we can tail the logs that is ‘server.log’

sudo rm server.log.2023\* (This is to remove all the server logs)

<img src="subjects/tech/azure/vms-basic-services/img/media/image18.webp" style="width:6.67917in;height:4.31111in" />

sudo shutdown -P +1

shutdown -c

<img src="subjects/tech/azure/vms-basic-services/img/media/image19.webp" style="width:3.88623in;height:2.99522in" />

### Validate with few commands.

<img src="subjects/tech/azure/vms-basic-services/img/media/image20.webp" style="width:4.45685in;height:2.7121in" />

### Update Ubuntu

sudo su

apt-get -y update

<img src="subjects/tech/azure/vms-basic-services/img/media/image21.webp" style="width:5.52908in;height:2.23792in" alt="Graphical user interface, text, application Description automatically generated" />

### Install nginx

apt-get -y install nginx

<img src="subjects/tech/azure/vms-basic-services/img/media/image22.webp" style="width:6.04357in;height:1.93257in" />

### Access nginx

Use the ip and hit on the browser

<img src="subjects/tech/azure/vms-basic-services/img/media/image23.webp" style="width:7.67361in;height:2.55764in" />

### Customize Nginx landing page

<img src="subjects/tech/azure/vms-basic-services/img/media/image24.webp" style="width:7.67361in;height:1.60903in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image25.webp" style="width:7in;height:3in" />

## Git Lab Installation

<https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-gitlab-on-ubuntu-20-04>

<img src="subjects/tech/azure/vms-basic-services/img/media/image26.webp" style="width:3.80953in;height:2.53143in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image27.webp" style="width:5.51769in;height:1.79437in" />

### Change Password

<img src="subjects/tech/azure/vms-basic-services/img/media/image28.webp" style="width:7.68542in;height:1.70417in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image29.webp" style="width:7.67917in;height:2.62292in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image30.webp" style="width:5.54616in;height:3.10712in" />

## Install JRE / JDK

<https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-20-04>

## Insert Script while creating VM

<img src="subjects/tech/azure/vms-basic-services/img/media/image31.webp" style="width:6.65127in;height:4.32739in" />

## Availability Matrix

<img src="subjects/tech/azure/vms-basic-services/img/media/image32.webp" style="width:7.6875in;height:4.32431in" alt="Table Description automatically generated" />

### Increase availability

<img src="subjects/tech/azure/vms-basic-services/img/media/image33.webp" style="width:7.67917in;height:4.04722in" />

### VM Scale Sets

<img src="subjects/tech/azure/vms-basic-services/img/media/image34.webp" style="width:7.6875in;height:3.62222in" />

#### Create VM Scale Set

#### Search for VM Scale Set

<img src="subjects/tech/azure/vms-basic-services/img/media/image35.webp" style="width:7.54722in;height:3.60347in" />

#### Add

<img src="subjects/tech/azure/vms-basic-services/img/media/image36.webp" style="width:7.67917in;height:4.65069in" />

#### Configure Basic

<img src="subjects/tech/azure/vms-basic-services/img/media/image37.webp" style="width:7.67917in;height:6.13194in" />

#### Configure Networking (Change private ip to public ip) 

<img src="subjects/tech/azure/vms-basic-services/img/media/image38.webp" style="width:7.67917in;height:5.14167in" />

#### Configure Network (Add LB)

<img src="subjects/tech/azure/vms-basic-services/img/media/image39.webp" style="width:5.71667in;height:2.94306in" />

#### Configure Scaling (Manual or Custom) 

<img src="subjects/tech/azure/vms-basic-services/img/media/image40.webp" style="width:5.67014in;height:3.76389in" />

#### Configure Advanced (Fault Domains and Init Scripts)

<img src="subjects/tech/azure/vms-basic-services/img/media/image41.webp" style="width:5.9625in;height:4.27361in" />

#### Configure (Review and Create) 

<img src="subjects/tech/azure/vms-basic-services/img/media/image42.webp" style="width:5.68889in;height:3.43403in" alt="Graphical user interface, text, application, email Description automatically generated" />

#### Configure (Final picture with IP)

<img src="subjects/tech/azure/vms-basic-services/img/media/image43.webp" style="width:7.6875in;height:2.23542in" />

#### Scale Set Instances

<img src="subjects/tech/azure/vms-basic-services/img/media/image44.webp" style="width:7.6875in;height:2.27292in" />

#### VM Scale Set 0 IP Address

<img src="subjects/tech/azure/vms-basic-services/img/media/image45.webp" style="width:7.6875in;height:1.73611in" />

#### VM Scale Set 1 IP Address

<img src="subjects/tech/azure/vms-basic-services/img/media/image46.webp" style="width:7.6875in;height:1.65069in" />

#### VM Scale Set LB

<img src="subjects/tech/azure/vms-basic-services/img/media/image47.webp" style="width:6.33958in;height:2.26389in" />

#### VM Scale Set LB IP Address

<img src="subjects/tech/azure/vms-basic-services/img/media/image48.webp" style="width:7.67917in;height:2.0375in" />

#### LB Front end IP Configuration

<img src="subjects/tech/azure/vms-basic-services/img/media/image49.webp" style="width:7.6875in;height:2.95208in" />

#### LB Backend pools

<img src="subjects/tech/azure/vms-basic-services/img/media/image50.webp" style="width:7.67917in;height:2.79236in" />

## Azure VM – More Features

<img src="subjects/tech/azure/vms-basic-services/img/media/image51.webp" style="width:7.67917in;height:3.89653in" />

### Create Public IP that is static

<img src="subjects/tech/azure/vms-basic-services/img/media/image52.webp" style="width:5.76389in;height:3.92431in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image53.webp" style="width:7.16042in;height:4.14167in" />

### Give DNS Name for VM

<img src="subjects/tech/azure/vms-basic-services/img/media/image54.webp" style="width:7.67917in;height:4.32083in" alt="Graphical user interface, text, application, email Description automatically generated" />

### Monitoring the VM

<img src="subjects/tech/azure/vms-basic-services/img/media/image55.webp" style="width:7.6875in;height:4.47083in" />

### Metrics of the VM

<img src="subjects/tech/azure/vms-basic-services/img/media/image56.webp" style="width:7.6875in;height:3.87639in" />

### Dedicated Hosts

<img src="subjects/tech/azure/vms-basic-services/img/media/image57.webp" style="width:7.67917in;height:4.71667in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image58.webp" style="width:7.63611in;height:7.27292in" />

### Cheaper instances (Spot instance) 

Example for batch jobs

<img src="subjects/tech/azure/vms-basic-services/img/media/image59.webp" style="width:7.6875in;height:7.54583in" />

### Purchase Reservations for future needs

This will reduce the costs significantly

<img src="subjects/tech/azure/vms-basic-services/img/media/image60.webp" style="width:7.67014in;height:4.00972in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image61.webp" style="width:7.20764in;height:3.08472in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image62.webp" style="width:7.67917in;height:3.08472in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image63.webp" style="width:7.67917in;height:3.78333in" />

## Designing good solutions with VMs

<img src="subjects/tech/azure/vms-basic-services/img/media/image64.webp" style="width:7.67917in;height:4.44306in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image65.webp" style="width:7.67917in;height:4.45278in" />

## Managed Services

<img src="subjects/tech/azure/vms-basic-services/img/media/image66.webp" style="width:7.67917in;height:3.21667in" />

### IAAS

<img src="subjects/tech/azure/vms-basic-services/img/media/image67.webp" style="width:7.67917in;height:3.39653in" />

### PAAS

<img src="subjects/tech/azure/vms-basic-services/img/media/image68.webp" style="width:7.67917in;height:4.02847in" />

Apart from databases there are other services like, AI, queues, ML, Metrics, Logging etc also.

### Azure App Services

<img src="subjects/tech/azure/vms-basic-services/img/media/image69.webp" style="width:7.67917in;height:3.75486in" />

#### Create App Service

<img src="subjects/tech/azure/vms-basic-services/img/media/image70.webp" style="width:7.67917in;height:3.01875in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image71.webp" style="width:7.67917in;height:3.41528in" alt="Graphical user interface, text, application, email Description automatically generated" />

#### Basic Configuration

<img src="subjects/tech/azure/vms-basic-services/img/media/image72.webp" style="width:5.23611in;height:9.67917in" />

#### Docker configurations

<img src="subjects/tech/azure/vms-basic-services/img/media/image73.webp" style="width:7.67917in;height:5.38681in" />

#### Review and Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image74.webp" style="width:6.0375in;height:9.47153in" />

#### In Progress

<img src="subjects/tech/azure/vms-basic-services/img/media/image75.webp" style="width:7.6875in;height:3.18819in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image76.webp" style="width:7.67917in;height:2.63194in" />

#### Overview

<img src="subjects/tech/azure/vms-basic-services/img/media/image77.webp" style="width:7.67917in;height:4.24514in" />

#### Web App Info

<img src="subjects/tech/azure/vms-basic-services/img/media/image78.webp" style="width:7.67917in;height:4.34931in" />

#### URL Accessing

<img src="subjects/tech/azure/vms-basic-services/img/media/image79.webp" style="width:7.67917in;height:3.0375in" />

#### Scale up (increase instance) and Scale out (Increase sizing)

<img src="subjects/tech/azure/vms-basic-services/img/media/image80.webp" style="width:7.67917in;height:4.0375in" />

Scale Out

<img src="subjects/tech/azure/vms-basic-services/img/media/image81.webp" style="width:7.67917in;height:3.14167in" />

Scale Up

<img src="subjects/tech/azure/vms-basic-services/img/media/image82.webp" style="width:7.67917in;height:3.31111in" />

**NOTE : WE CANNOT ACCESS THE VM THAT HAS BEEN PROVISIONED AND CAN ONLY BE SCALED UP OR DOWN.**

## Microservices 

<img src="subjects/tech/azure/vms-basic-services/img/media/image83.webp" style="width:7.67917in;height:3.80208in" />

### Containers

<img src="subjects/tech/azure/vms-basic-services/img/media/image84.webp" style="width:7.6875in;height:4.24444in" />

### Azure Container Instances

<img src="subjects/tech/azure/vms-basic-services/img/media/image85.webp" style="width:7.67917in;height:4in" />

### Azure Container Instances Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image86.webp" style="width:7.67917in;height:3.64167in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image87.webp" style="width:7.67917in;height:5.02847in" />

### Create from quick start images of Microsoft Azure (Basic Config)

<img src="subjects/tech/azure/vms-basic-services/img/media/image88.webp" style="width:5.48493in;height:7.14143in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image89.webp" style="width:7.07569in;height:4.77361in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image90.webp" style="width:5.95278in;height:2.25486in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image91.webp" style="width:7.6875in;height:3.67847in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image92.webp" style="width:7.6875in;height:3.84861in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image93.webp" style="width:7.67917in;height:4.12292in" />

### ACI – Overview (Sample Image) 

<img src="subjects/tech/azure/vms-basic-services/img/media/image94.webp" style="width:7.67917in;height:4.16042in" />

### Access the ACI using the public IP provided.

<img src="subjects/tech/azure/vms-basic-services/img/media/image95.webp" style="width:7.67917in;height:2.82083in" />

## Create a Container Intance

<img src="subjects/tech/azure/vms-basic-services/img/media/image96.webp" style="width:6.68889in;height:9.67917in" />

## Container Orchestration

<img src="subjects/tech/azure/vms-basic-services/img/media/image97.webp" style="width:7.67917in;height:4.27361in" />

### AKS and Service Fabric

<img src="subjects/tech/azure/vms-basic-services/img/media/image98.webp" style="width:7.67917in;height:2.79236in" />

### Serverless

<img src="subjects/tech/azure/vms-basic-services/img/media/image99.webp" style="width:7.67917in;height:4.12292in" />

### Azure Functions 

<img src="subjects/tech/azure/vms-basic-services/img/media/image100.webp" style="width:5.17205in;height:3.85968in" />

### Create Function

#### Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image101.webp" style="width:7.67986in;height:3.38264in" alt="Graphical user interface, text, application Description automatically generated" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image102.webp" style="width:7.6875in;height:3.92222in" alt="Graphical user interface, text, application, email Description automatically generated" />

#### Basic Configuration

<img src="subjects/tech/azure/vms-basic-services/img/media/image103.webp" style="width:4.09309in;height:6.32813in" />

#### Hosting Configuration

<img src="subjects/tech/azure/vms-basic-services/img/media/image104.webp" style="width:7.6875in;height:3.86736in" />

#### Review and Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image105.webp" style="width:3.13495in;height:5.58525in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image106.webp" style="width:7.67986in;height:2.74236in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image107.webp" style="width:7.67986in;height:3.375in" />

#### Go to resource and Click Functions

<img src="subjects/tech/azure/vms-basic-services/img/media/image108.webp" style="width:7.6875in;height:6.35139in" />

#### Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image109.webp" style="width:5.29705in;height:3.98984in" />

## Choose Http Trigger

<img src="subjects/tech/azure/vms-basic-services/img/media/image110.webp" style="width:5.04088in;height:3.27361in" />

Click Create

<img src="subjects/tech/azure/vms-basic-services/img/media/image111.webp" style="width:7.67986in;height:2.95347in" />

#### Edit http trigger – Click Code + Test

<img src="subjects/tech/azure/vms-basic-services/img/media/image112.webp" style="width:7.6875in;height:3.82847in" />

#### Default Node JS template Script

<img src="subjects/tech/azure/vms-basic-services/img/media/image113.webp" style="width:6.3908in;height:3.41991in" />

#### Edit Script and Save

<img src="subjects/tech/azure/vms-basic-services/img/media/image114.webp" style="width:7.67986in;height:3.71111in" />

#### Test Run from UI

<img src="subjects/tech/azure/vms-basic-services/img/media/image115.webp" style="width:7.67986in;height:4.14097in" />

<img src="subjects/tech/azure/vms-basic-services/img/media/image116.webp" style="width:5.99236in;height:3.30422in" />

#### Get browser URL and Copy

<img src="subjects/tech/azure/vms-basic-services/img/media/image117.webp" style="width:7.67986in;height:2.59375in" />

#### Execute the URL in Browser

<https://ibring-nodejs-greetings.azurewebsites.net/api/HttpTrigger1?code=<removed>&name=sridhara>

Notice that there is query param viz., ‘name’, which is handled in the script

<img src="subjects/tech/azure/vms-basic-services/img/media/image118.webp" style="width:7.67986in;height:1.24236in" />

## SAAS

<img src="subjects/tech/azure/vms-basic-services/img/media/image119.webp" style="width:7.67986in;height:4.96111in" />

## Shared Responsibility Hosting

<img src="subjects/tech/azure/vms-basic-services/img/media/image120.webp" style="width:7.6875in;height:3.9375in" />

## Azure Cloud Services Categories – Check point

<img src="subjects/tech/azure/vms-basic-services/img/media/image121.webp" style="width:7.6875in;height:4.52361in" />

## Review 

<img src="subjects/tech/azure/vms-basic-services/img/media/image122.webp" style="width:7.67986in;height:4.375in" />

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx

## xxxx
