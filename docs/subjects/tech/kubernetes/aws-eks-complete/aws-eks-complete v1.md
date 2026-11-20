> EKS

|                         |                 |
|-------------------------|-----------------|
| **Version**             | **1.0**         |


<span id="_Toc13447" class="anchor"></span>Table of Contents

[Table of Contents [2](#_Toc13447)](#_Toc13447)

[1 Approval [4](#approval)](#approval)

[2 Revision History [4](#revision-history)](#revision-history)

[3 EKS - Creation - UI DRIVEN [5](#eks---creation---ui-driven)](#eks---creation---ui-driven)

[3.1 Provide Cluster Details - Disable Auto Mode [5](#provide-cluster-details---disable-auto-mode)](#provide-cluster-details---disable-auto-mode)

[3.2 Provide Cluster Configuration [5](#provide-cluster-configuration)](#provide-cluster-configuration)

[3.3 Choose K8 Version [6](#choose-k8-version)](#choose-k8-version)

[3.4 Configure Cluster Access Details [6](#configure-cluster-access-details)](#configure-cluster-access-details)

[3.5 Envelope Encryption [7](#envelope-encryption)](#envelope-encryption)

[3.6 Configure Zonal Shift and Delete Protection [8](#configure-zonal-shift-and-delete-protection)](#configure-zonal-shift-and-delete-protection)

[3.7 Provide Tags Information [8](#provide-tags-information)](#provide-tags-information)

[3.8 Specify Networking [8](#specify-networking)](#specify-networking)

[3.9 Choose Public Endpoint [9](#choose-public-endpoint)](#choose-public-endpoint)

[3.10 Observability [10](#observability)](#observability)

[3.11 Select Add-Ons [11](#select-add-ons)](#select-add-ons)

[3.12 Configure Add-Ons [16](#configure-add-ons)](#configure-add-ons)

[3.13 Review + Create [18](#review-create)](#review-create)

[3.14 Dashboard - Cluster [21](#dashboard---cluster)](#dashboard---cluster)

[3.15 Monitor Cluster [22](#monitor-cluster)](#monitor-cluster)

[3.16 Status Check - After few minus - Still Creating [24](#status-check---after-few-minus---still-creating)](#status-check---after-few-minus---still-creating)

[3.17 Status Check - After 10 odd min - Active Now [25](#status-check---after-10-odd-min---active-now)](#status-check---after-10-odd-min---active-now)

[3.18 Cluster View - Detailed [25](#cluster-view---detailed)](#cluster-view---detailed)

[3.18.1 Overview [25](#overview)](#overview)

[3.18.2 Resources - Workloads [26](#resources---workloads)](#resources---workloads)

[3.18.3 Resources - Clsuter [27](#resources---clsuter)](#resources---clsuter)

[3.18.4 Resources - Cluster - Namespaces [27](#resources---cluster---namespaces)](#resources---cluster---namespaces)

[3.18.5 Compute [28](#compute)](#compute)

[3.18.6 Networking [29](#networking)](#networking)

[3.18.7 Add Ons [29](#add-ons)](#add-ons)

[3.18.8 Access [30](#access)](#access)

[3.18.9 Observability [31](#observability-1)](#observability-1)

[3.18.10 Tags [32](#tags)](#tags)

[3.19 Create Node Group - With SSH Access [32](#create-node-group---with-ssh-access)](#create-node-group---with-ssh-access)

[3.19.1 Add SSH Rule to Security Group - if not added [42](#add-ssh-rule-to-security-group---if-not-added)](#add-ssh-rule-to-security-group---if-not-added)

[3.20 xxx [43](#xxx)](#xxx)

[3.21 xxx [43](#xxx-1)](#xxx-1)

[4 EKS - Creation - NORMAL - Command Line [44](#eks---creation---normal---command-line)](#eks---creation---normal---command-line)

[4.1 Create Key Pair [44](#create-key-pair)](#create-key-pair)

[4.2 Create VPC [45](#create-vpc)](#create-vpc)

[4.3 Create IAM Role [46](#create-iam-role)](#create-iam-role)

[Key Difference: [48](#key-difference)](#key-difference)

[4.4 xxx [49](#xxx-2)](#xxx-2)

[4.5 xxx [49](#xxx-3)](#xxx-3)

[4.6 xxx [49](#xxx-4)](#xxx-4)

[5 EKS - Clean up - NORMAL - Command Line [50](#eks---clean-up---normal---command-line)](#eks---clean-up---normal---command-line)

[5.1 Delete Key Pair [50](#delete-key-pair)](#delete-key-pair)

[5.2 Delete VPC [50](#delete-vpc)](#delete-vpc)

[5.3 Delete IAM Role [51](#delete-iam-role)](#delete-iam-role)

[5.4 xxx [52](#xxx-5)](#xxx-5)

[5.5 xxx [53](#xxx-6)](#xxx-6)

[5.6 xxx [53](#xxx-7)](#xxx-7)

 

**\**

#  EKS - Creation - UI DRIVEN

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image1.webp" style="width:7.66806in;height:1.94792in" /> |

## Provide Cluster Details - Disable Auto Mode

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image2.webp" style="width:7.68611in;height:2.09931in" /> |

## Provide Cluster Configuration 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Provide name and choose the IAM Role that we have created previously using the command line.</p>
<p><mark>ADD A NEW STEP PREVIOUS TO THE FIRST STEP REGARDING VPC/IAM/KEYPAIR ETC.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image3.webp" style="width:7.68333in;height:1.7875in" /></p></td>
</tr>
</tbody>
</table>

## Choose K8 Version 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image4.webp" style="width:7.68403in;height:1.78542in" /> |

## Configure Cluster Access Details 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image5.webp" style="width:7.67778in;height:1.96042in" /></p></td>
				 
</tr>
<tr>
<td><p><strong>EKS API (API mode):</strong></p>
<ul>
<li><p>✅ <strong>Recommended by AWS</strong> - This is the new modern approach</p></li>
<li><p>✅ <strong>Simpler management</strong> - No need to edit ConfigMaps manually</p></li>
<li><p>✅ <strong>Better security</strong> - Uses AWS IAM directly</p></li>
<li><p>✅ <strong>Future-proof</strong> - AWS is moving towards this method</p></li>
<li><p>✅ <strong>Easier troubleshooting</strong> - All access managed through AWS APIs</p>
<hr /></li>
</ul>
<p><strong>EKS API and Config Map (API_AND_CONFIG_MAP):</strong></p>
<ul>
<li><p>⚠️ <strong>Migration mode</strong> - Used when transitioning from old ConfigMap method</p></li>
<li><p>⚠️ <strong>More complex</strong> - Manages two different access methods</p></li>
<li><p>⚠️ <strong>Potential conflicts</strong> - Access entries and ConfigMap can conflict</p>
<hr /></li>
</ul></td>
</tr>
</tbody>
</table>

## Envelope Encryption 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image6.webp" style="width:7.68611in;height:1.35625in" /> |

## Configure Zonal Shift and Delete Protection 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image7.webp" style="width:7.6875in;height:2.31389in" /> |

## Provide Tags Information 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image8.webp" style="width:7.68403in;height:2.06736in" /> |

## Specify Networking 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image9.webp" style="width:7.67847in;height:3.84861in" /> |

## Choose Public Endpoint 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image10.webp" style="width:7.675in;height:2.84306in" /></p></td>
</tr>
<tr>
<td><p><strong>ecommended: Public and Private (Both Enabled)</strong></p>
<ul>
<li><p>✅ <strong>Best of both worlds</strong> - AWS recommended approach</p></li>
<li><p>✅ <strong>Internal traffic stays private</strong> - Nodes communicate via private endpoint</p></li>
<li><p>✅ <strong>External access available</strong> - You can access from your laptop/internet</p></li>
<li><p>✅ <strong>Better performance</strong> - Internal cluster traffic doesn't go through internet</p></li>
<li><p>✅ <strong>More secure</strong> - Can restrict public access to specific IPs later</p>
<hr /></li>
</ul>
<p><strong>Public Only:</strong></p>
<ul>
<li><p>⚠️ <strong>All traffic goes through internet</strong> - Even internal cluster communication</p></li>
<li><p>⚠️ <strong>Less secure</strong> - More attack surface</p></li>
<li><p>⚠️ <strong>Higher latency</strong> - Internal traffic routes through internet</p>
<hr /></li>
</ul>
<p><strong>Private Only:</strong></p>
<ul>
<li><p>❌ <strong>Hard to access</strong> - Need VPN, bastion host, or Cloud9</p></li>
<li><p>❌ <strong>Complex setup</strong> - Not ideal for learning</p>
<hr /></li>
</ul></td>
</tr>
</tbody>
</table>

## Observability

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image11.webp" style="width:7.68611in;height:2.88472in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image12.webp" style="width:7.67639in;height:2.45556in" /> |

##  Select Add-Ons

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image13.webp" style="width:7.67917in;height:2.55694in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image14.webp" style="width:7.67431in;height:2.43125in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image15.webp" style="width:7.68403in;height:4.46528in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image16.webp" style="width:7.6875in;height:4.55764in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image17.webp" style="width:7.68333in;height:3.14861in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image18.webp" style="width:7.6875in;height:4.41181in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image19.webp" style="width:7.68333in;height:3.94653in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image20.webp" style="width:7.68611in;height:1.53264in" /> |
|  |

##  Configure Add-Ons

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image21.webp" style="width:7.67639in;height:2.23819in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image22.webp" style="width:7.68472in;height:2.93472in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image23.webp" style="width:7.67917in;height:2.94861in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image24.webp" style="width:7.67986in;height:2.1125in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image25.webp" style="width:7.67431in;height:2.13889in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image26.webp" style="width:7.67569in;height:2.08056in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image27.webp" style="width:7.67986in;height:2.41181in" /> |

##  Review + Create

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image28.webp" style="width:7.67917in;height:2.64236in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image29.webp" style="width:7.68472in;height:3.12639in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image30.webp" style="width:7.68194in;height:2.29375in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image31.webp" style="width:7.68472in;height:4.06806in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image32.webp" style="width:7.68472in;height:2.67708in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image33.webp" style="width:7.67847in;height:1.65347in" /> |

##  Dashboard - Cluster

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image34.webp" style="width:7.67014in;height:3.14028in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image35.webp" style="width:7.68472in;height:3.24167in" /> |

##  Monitor Cluster

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image36.webp" style="width:7.67569in;height:1.57222in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image37.webp" style="width:7.67361in;height:2.63472in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image38.webp" style="width:7.67639in;height:3.72083in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image39.webp" style="width:7.68333in;height:3.06458in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image40.webp" style="width:7.68125in;height:2.04375in" /> |
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image41.webp" style="width:7.68681in;height:3.85556in" /> |

##  Status Check - After few minus - Still Creating 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image42.webp" style="width:7.67222in;height:1.93611in" /> |

##  Status Check - After 10 odd min - Active Now

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image43.webp" style="width:7.67569in;height:2.11875in" /> |

##  Cluster View - Detailed

|     |
|-----|
|     |

### Overview 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image44.webp" style="width:7.67917in;height:3.12361in" /> |

###  Resources - Workloads 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image45.webp" style="width:7.68611in;height:3.50278in" /> |

###  Resources - Clsuter 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Notice there are NO nodes configured. Once an eks cluster is created, we need to add nodes to it.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image46.webp" style="width:7.675in;height:3.07292in" /></p></td>
</tr>
</tbody>
</table>

###  Resources - Cluster - Namespaces 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Note that these are the control plane resources.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image47.webp" style="width:7.68333in;height:3.03681in" /></p></td>
</tr>
</tbody>
</table>

###  Compute 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image48.webp" style="width:7.67639in;height:3.05486in" /> |

###  Networking 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image49.webp" style="width:7.68333in;height:2.95486in" /> |

### Add Ons

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image50.webp" style="width:7.67153in;height:3.71458in" /> |

### Access 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image51.webp" style="width:7.67153in;height:3.68125in" /> |

### Observability 

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image52.webp" style="width:7.67431in;height:3.45139in" /> |

### Tags

|  |
|----|
| <img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image53.webp" style="width:7.68333in;height:3.07153in" /> |

## Create Node Group - With SSH Access

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Remember that we do not have any nodes yet. We are now going to add nodes to it. Click the NodeGroup button</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image54.webp" style="width:7.67847in;height:3.35417in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image55.webp" style="width:7.67639in;height:2.43889in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image56.webp" style="width:7.67778in;height:4.26389in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image57.webp" style="width:7.68125in;height:3.86458in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image58.webp" style="width:7.67639in;height:4.15417in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image59.webp" style="width:7.67778in;height:1.60417in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image60.webp" style="width:7.67847in;height:3.76111in" /></p>
<p><mark>--Enable remote access to nodes - Next screenshot has warning as well.</mark></p>
<p><strong>Choose BOTH subnets even with just 1 node!</strong></p>
<p><strong>Here's why:</strong></p>
<p><strong>High Availability Benefits:</strong></p>
<ul>
<li><p>✅ <strong>Fault tolerance</strong> - If one AZ fails, your node can restart in the other AZ</p></li>
<li><p>✅ <strong>AWS best practice</strong> - Always span multiple AZs</p></li>
<li><p>✅ <strong>Future flexibility</strong> - Easy to scale later without reconfiguration</p>
<hr /></li>
</ul>
<p><strong>What happens with both subnets selected:</strong></p>
<ul>
<li><p>Your <strong>1 node</strong> will be placed in <strong>one</strong> of the two AZs</p></li>
<li><p>If that AZ has issues, replacement node can launch in the other AZ</p></li>
<li><p>Auto Scaling Group spans both AZs for resilience</p>
<hr /></li>
</ul></td>
</tr>
<tr>
<td><p>Here we are configuring the remote access to the workernode</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image61.webp" style="width:7.68681in;height:4.37778in" /></p>
<p>Choose the Keypair that was previously created</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image62.webp" style="width:7.68264in;height:3.28889in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image63.webp" style="width:7.68333in;height:2.61528in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image64.webp" style="width:7.68056in;height:3.10417in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image65.webp" style="width:7.68611in;height:4.09722in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image66.webp" style="width:7.68403in;height:1.46528in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image67.webp" style="width:7.68333in;height:3.59444in" /></p></td>
</tr>
<tr>
<td><p>Without the Blue Banner. Notice it is creating.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image68.webp" style="width:7.67639in;height:0.90069in" /></p></td>
</tr>
<tr>
<td><p>Navigate back to EKS Cluster again and check that node group is not ready yet.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image69.webp" style="width:7.67708in;height:3.68542in" /></p></td>
</tr>
<tr>
<td><p>Notice the node is not ready yet.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image70.webp" style="width:7.67639in;height:3.55903in" /></p></td>
</tr>
<tr>
<td><p>After Few minutes</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image71.webp" style="width:7.67431in;height:3.75139in" /></p></td>
</tr>
</tbody>
</table>

### Add SSH Rule to Security Group - if not added

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Navigate to Ec2--&gt; Security Groups --&gt;Select the first one</p>
<p>Below is the command to fetch which SecurityGroups are attached to the nodegroup we have configured.</p>
<p><mark>aws ec2 describe-instances --region eu-west-1 \</mark></p>
<p><mark>--filters "Name=tag:eks:nodegroup-name,Values=eks-normal-nodegroup" \</mark></p>
<p><mark>--query 'Reservations[*].Instances[*].SecurityGroups[*].GroupId' --output text</mark></p>
<p><mark>sg-0fa23ae497445b183 sg-09cf9de69819bd36e</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image72.webp" style="width:7.67847in;height:0.93056in" /></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image73.webp" style="width:7.68333in;height:1.84722in" /></p></td>
</tr>
<tr>
<td><p>We get below. Click the Edit Inbound rules if SSH IS not added.</p>
<p>Here it is already included so no need to add anything else, as ‘all traffic’ all protocol is already there.</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image74.webp" style="width:7.67153in;height:2.54236in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

## xxx

|     |
|-----|
|     |

## xxx

|     |
|-----|
|     |

#  EKS - Creation - NORMAL - Command Line 

|     |
|-----|
|     |

##  Create Key Pair 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>As a first step we will create Keypair, which will be used to access the workernodes. If we do not want to access workernodes, then we will not need this step.</p>
<p>The key will be downloaded to the same folder parallel to the script. Keep it safe as it cannot be obtained again!.</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image75.webp" style="width:7.68611in;height:3.29722in" /></p></td>
</tr>
<tr>
<td><p>Same can be seen on the UI</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image76.webp" style="width:7.67847in;height:1.36181in" /></p></td>
</tr>
</tbody>
</table>

##  Create VPC 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Create VPC</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image77.webp" style="width:7.68681in;height:3.63403in" /></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image78.webp" style="width:5.89236in;height:1.00556in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image79.webp" style="width:7.67222in;height:2.0375in" /></p></td>
</tr>
</tbody>
</table>

##  Create IAM Role 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Create IAM Roles</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image80.webp" style="width:7.67639in;height:3.51944in" /></p></td>
</tr>
<tr>
<td><p>These are <strong>Trust Policies</strong> (also called Assume Role Policies) that define <strong>who</strong> can assume these IAM roles. </p>
<p>Trust Policies<strong>What it means:</strong></p>
<ul>
<li><p><strong>Principal</strong>: </p></li>
</ul>
<blockquote>
<p>eks.amazonaws.com</p>
</blockquote>
<ul>
<li><p> - Only the EKS service can assume this role</p></li>
<li><p><strong>Action</strong>: </p></li>
</ul>
<blockquote>
<p>sts:AssumeRole</p>
</blockquote>
<ul>
<li><p> - Allows the service to "become" this role</p></li>
<li><p><strong>Purpose</strong>: This lets the EKS service manage your cluster on your behalf</p>
<hr /></li>
</ul>
<p>Node Policies <strong>What it means:</strong></p>
<ul>
<li><p><strong>Principal</strong>: </p></li>
</ul>
<blockquote>
<p>ec2.amazonaws.com</p>
</blockquote>
<ul>
<li><p> - Only EC2 instances can assume this role</p></li>
<li><p><strong>Action</strong>: </p></li>
</ul>
<blockquote>
<p>sts:AssumeRole</p>
</blockquote>
<ul>
<li><p> - Allows EC2 instances to "become" this role</p></li>
<li><p><strong>Purpose</strong>: This lets your worker node EC2 instances use this role to access AWS services</p>
<hr /></li>
</ul>
<h2 id="key-difference"><strong>Key Difference:</strong></h2>
<ul>
<li><p><strong>Trust Policy</strong>: Defines <strong>WHO</strong> can use the role</p></li>
<li><p><strong>Permission Policy</strong>: Defines <strong>WHAT</strong> the role can do (like AmazonEKSClusterPolicy)</p>
<hr /></li>
</ul></td>
</tr>
<tr>
<td><p>Roles created - UI view. Notice the same at the last of listing</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image81.webp" style="width:7.68056in;height:3.38125in" /></p></td>
</tr>
<tr>
<td><p>Policies create - UI View</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image82.webp" style="width:5.5in;height:1.41667in" /></p>
<p>Given there are many policies, filter few that mathces with AmazongEKS</p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image83.webp" style="width:7.67569in;height:3.35833in" /></p></td>
</tr>
</tbody>
</table>

##  xxx

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

#  EKS - Clean up - NORMAL - Command Line 

|     |
|-----|
|     |

##  Delete Key Pair 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Delete Key Pair as part of clean up</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image84.webp" style="width:7.67708in;height:2.25625in" /></p></td>
</tr>
</tbody>
</table>

##  Delete VPC 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Delete VPC as part of clean up</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image85.webp" style="width:7.68194in;height:5.725in" /></p></td>
</tr>
</tbody>
</table>

##  Delete IAM Role 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>Delete IAM ROLE as part of clean up</p>
<p><mark>PUT THE SCRIPT AFTER FINALIZATION.</mark></p>
<p><img src="subjects/tech/kubernetes/aws-eks-complete/eks-img/media/image86.webp" style="width:7.68333in;height:4.88403in" /></p></td>
</tr>
</tbody>
</table>

##  xxx

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
