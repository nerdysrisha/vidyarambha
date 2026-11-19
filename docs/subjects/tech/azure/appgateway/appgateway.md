> Application Gateway

|                         |                 |
|-------------------------|-----------------|
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

Application Gateway creation

## How it works

<img src="subjects/tech/azure/appgateway/img/media/image2.webp" style="width:7.68125in;height:2.59514in" />

## Create two Resource Groups

Below is a blank state of current azure subscription of a user

<img src="subjects/tech/azure/appgateway/img/media/image3.webp" style="width:6.81111in;height:2.85764in" alt="A screenshot of a computer Description automatically generated" />

<img src="subjects/tech/azure/appgateway/img/media/image4.webp" style="width:6.75417in;height:1.95208in" alt="A screenshot of a computer Description automatically generated" />

## Create a vnet

<img src="subjects/tech/azure/appgateway/img/media/image5.webp" style="width:5.5in;height:3.89028in" alt="A screenshot of a computer Description automatically generated" />

## Current resources

<img src="subjects/tech/azure/appgateway/img/media/image6.webp" style="width:7.08472in;height:2.15972in" alt="A computer screen shot of a computer Description automatically generated" />

## Add a ‘subnet’ for the Vnet created 

<img src="subjects/tech/azure/appgateway/img/media/image7.webp" style="width:7.53056in;height:3.91806in" alt="A computer screen with a white box Description automatically generated" />

<img src="subjects/tech/azure/appgateway/img/media/image8.webp" style="width:6.69792in;height:2.60347in" alt="A computer screen shot of a computer Description automatically generated" />

## Create Application GW

<img src="subjects/tech/azure/appgateway/img/media/image9.webp" style="width:6.5in;height:3.65972in" alt="A screenshot of a computer Description automatically generated" />

Notice above the vnets used and the subnets picked.

They are the same as created in previous steps.

## Create a frontend on Application Gateway

<img src="subjects/tech/azure/appgateway/img/media/image10.webp" style="width:6.38194in;height:3.7in" alt="A computer screen shot of a computer Description automatically generated" />

## Create a public ip address

<img src="subjects/tech/azure/appgateway/img/media/image11.webp" style="width:6.28194in;height:3.64028in" alt="A computer screen with a computer screen Description automatically generated" />

Below screenshot shows the actual IP that gets provided automatically by Azure. Notice a new IP and its association with the name we gave.

<img src="subjects/tech/azure/appgateway/img/media/image12.webp" style="width:7.68125in;height:3.28472in" />

## Create a backends (create backendpool)

<img src="subjects/tech/azure/appgateway/img/media/image13.webp" style="width:6.17014in;height:3.63472in" alt="A screenshot of a computer Description automatically generated" />

## Provide a name for the backendpool

This will be used in ahead configurations

<img src="subjects/tech/azure/appgateway/img/media/image14.webp" style="width:7.41111in;height:3.67014in" alt="A computer screen with a computer screen Description automatically generated" />

## Select Yes (without creating targets)

We will add the targets later on.

<img src="subjects/tech/azure/appgateway/img/media/image15.webp" style="width:6.93958in;height:3.65833in" alt="A computer screen with a computer screen Description automatically generated" />

## Post creation of backendpool

Note this is without ‘target’

<img src="subjects/tech/azure/appgateway/img/media/image16.webp" style="width:6.79375in;height:3.68194in" alt="A screenshot of a computer Description automatically generated" />

## Navigate to configuration tab

Create a routing rule

<img src="subjects/tech/azure/appgateway/img/media/image17.webp" style="width:7.14653in;height:3.64653in" alt="A screenshot of a computer Description automatically generated" />

## Add a routing rule (Tab Listener configuration)

Provide a rule name and appropriate listener name

Notice the underlined Tab for easy identification

<img src="subjects/tech/azure/appgateway/img/media/image18.webp" style="width:7.44722in;height:3.68194in" alt="A screenshot of a computer Description automatically generated" />

Note, we have not created a listener previously, so we are explicitly giving a listener name above.

<span class="mark">Also, we choose the public IP that is created in previous steps. This is unclear as the name should be ‘IP-AppGW-Public’ but when it comes to picking it is just ‘Public’.</span>

Leaving rest as is and proceed to next tab ‘backend targets’

## Add a routing rule (Tab Backend targets configuration) 

Create a backend target and choose the existing one (by name BackendPool) that we created in previous step

Notice the underlined Tab for easy identification

<img src="subjects/tech/azure/appgateway/img/media/image19.webp" style="width:7.36875in;height:3.67014in" alt="A screenshot of a computer Description automatically generated" />

## Add a http settings (Tab Backend targets configuration) 

Next step is to add ‘http settings.’

previously this was not created so we are creating now.

Click the ‘add new’ for http settings

Give an appropriate name and leave the rest as is.

<img src="subjects/tech/azure/appgateway/img/media/image20.webp" style="width:6.70625in;height:3.67986in" alt="A screenshot of a computer Description automatically generated" />

## Add a routing rule (Before finalization)

Post creation of http settings it is as below.

Finalize by clicking ‘add’ button.

<img src="subjects/tech/azure/appgateway/img/media/image21.webp" style="width:7.1375in;height:3.71528in" alt="A screenshot of a computer Description automatically generated" />

## Notice the routing rule name

<img src="subjects/tech/azure/appgateway/img/media/image22.webp" style="width:7.02569in;height:3.65417in" alt="A computer screen shot of a computer Description automatically generated" />

## Finalize the steps by clicking ‘create’

<img src="subjects/tech/azure/appgateway/img/media/image23.webp" style="width:6.29306in;height:3.67222in" alt="A computer screen shot of a computer Description automatically generated" />

## Create VMs

### Create VM1

Create **Two** VMs (This is optional)

If we already have a backend then we will be using the existing backend.

For understanding purpose this is being created.

VM 1

<img src="subjects/tech/azure/appgateway/img/media/image24.webp" style="width:5.37917in;height:3.61111in" alt="A screenshot of a computer Description automatically generated" />

### Configure inbound port to None

Public inbound ports choose none

<img src="subjects/tech/azure/appgateway/img/media/image25.webp" style="width:6.75in;height:3.69722in" alt="A screenshot of a computer Description automatically generated" />

### Navigate to ‘Networking’ and select vnet

Ensure the networking is correctly configured.

Choose the existing vnet that we created in previous step.

Ensure both app gateway and vm are in same vnet.

<img src="subjects/tech/azure/appgateway/img/media/image26.webp" style="width:6.55139in;height:3.6375in" alt="A screenshot of a computer Description automatically generated" />

### Create VM2

<img src="subjects/tech/azure/appgateway/img/media/image27.webp" style="width:6.69792in;height:3.69722in" alt="A screenshot of a computer Description automatically generated" />

### Create IIS Server on both VMs. 

This is to test our application gateway end to end.

We can either login to VM or we can use the azure CLI.

Below we used CLI to install a simple IIS server.

VM 1 screenshot.

<img src="subjects/tech/azure/appgateway/img/media/image28.webp" style="width:7.68611in;height:3.775in" alt="A computer screen with a message Description automatically generated" />

VM2 screenshot

<img src="subjects/tech/azure/appgateway/img/media/image29.webp" style="width:7.68681in;height:3.75764in" alt="A screenshot of a computer Description automatically generated" />

## Bind the backendpools on AppGW

### Open the App GW that is created

<img src="subjects/tech/azure/appgateway/img/media/image30.webp" style="width:7.16319in;height:2.08542in" alt="A screenshot of a computer Description automatically generated" />

### Navigate to Backend pools section

Navigate to Backend pools.

We should see one item (backendpool) that we created previously.

<img src="subjects/tech/azure/appgateway/img/media/image31.webp" style="width:7.30139in;height:3.49931in" alt="A screenshot of a computer Description automatically generated" />

### Select ‘two’ target types. One for each VM created

Notice that when we initially created, we did not assign any backend targets as at that time no VMs were present

<img src="subjects/tech/azure/appgateway/img/media/image32.webp" style="width:6.71528in;height:2.70625in" alt="A screenshot of a computer Description automatically generated" />

Add two VMs in the targets as below

<img src="subjects/tech/azure/appgateway/img/media/image33.webp" style="width:6.62014in;height:3.65417in" alt="A screenshot of a computer Description automatically generated" />

Navigate to browser and use the IP that we have. The APP GW automatically distributes the load to two VMs that are created

<img src="subjects/tech/azure/appgateway/img/media/image34.webp" style="width:3.79306in;height:1.27569in" />

<img src="subjects/tech/azure/appgateway/img/media/image35.webp" style="width:2in;height:0.70694in" />

.

# Host multi-site Websites

xx

## Create a RG

<img src="subjects/tech/azure/appgateway/img/media/image36.webp" style="width:5.63819in;height:5.13819in" />

## Create Application GW (Basics)

Select, RG, Region, VirtualNetwork and Subnet as created previously

<img src="subjects/tech/azure/appgateway/img/media/image37.webp" style="width:7.68125in;height:5.39653in" />

## Create Application GW (Frontends) – Add Public IP

<img src="subjects/tech/azure/appgateway/img/media/image38.webp" style="width:7.68125in;height:4.46528in" />

## Create two Backend pools (contosaPool and fabrikamPool)

1.  contosaPool

2.  fabrikamPool

Both without any backend targets

<img src="subjects/tech/azure/appgateway/img/media/image39.webp" style="width:7.6875in;height:3.95556in" />

**Notice the targets**

<img src="subjects/tech/azure/appgateway/img/media/image40.webp" style="width:5.75833in;height:2.48264in" />

## Create Routing Rule for contosa

<img src="subjects/tech/azure/appgateway/img/media/image41.webp" style="width:7.68125in;height:2.57778in" />

## Add a Listener 

<img src="subjects/tech/azure/appgateway/img/media/image42.webp" style="width:7.22431in;height:5.36181in" />

## Add a Backend target

<img src="subjects/tech/azure/appgateway/img/media/image43.webp" style="width:6.06875in;height:4.90486in" />

## Create Routing Rule for fabrikam (listener)

<img src="subjects/tech/azure/appgateway/img/media/image44.webp" style="width:5.86181in;height:4.21528in" />

## Create Backend target

Notice the target and http settings.

Target is new and http settings, we are choosing same.

<img src="subjects/tech/azure/appgateway/img/media/image45.webp" style="width:5.46528in;height:4.89653in" />

## Overview -\> frontends, routing rules and backend pool

<img src="subjects/tech/azure/appgateway/img/media/image46.webp" style="width:7.68125in;height:2.33611in" />

## Finalize the App GW creation

<img src="subjects/tech/azure/appgateway/img/media/image47.webp" style="width:4.73264in;height:4.93125in" />

## Create two VMs (refer previous steps)

Note we used the VM names to be different.

<img src="subjects/tech/azure/appgateway/img/media/image48.webp" style="width:7.09514in;height:4.87083in" />

<img src="subjects/tech/azure/appgateway/img/media/image49.webp" style="width:7.26736in;height:5.12083in" />

## Install IIS on both VMs

VM1

<img src="subjects/tech/azure/appgateway/img/media/image50.webp" style="width:7.6875in;height:3.80972in" />

VM2

<img src="subjects/tech/azure/appgateway/img/media/image51.webp" style="width:7.68125in;height:3.60347in" />

## Navigate to Backend pools

<img src="subjects/tech/azure/appgateway/img/media/image52.webp" style="width:7.68125in;height:2.56042in" />

## Select contosoPool and add backend

<img src="subjects/tech/azure/appgateway/img/media/image53.webp" style="width:5.70694in;height:5.57778in" />

 