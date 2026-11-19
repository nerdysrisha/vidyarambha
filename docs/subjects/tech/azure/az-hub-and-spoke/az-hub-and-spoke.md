> Azure Hands On

|                         |                 |
|-------------------------|-----------------|
| **Version**             | **1.0**         |
 

<span id="_Toc202161872" class="anchor"></span>Table of Contents
 

# Hub-Spoke Networking 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image1.webp" style="width:6.37361in;height:3.78194in" alt="{509CF287-B241-42C4-A2B4-1B67458952EE}" /> |

## Key Components

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image2.webp" style="width:6.22986in;height:3.21042in" alt="{5E569F62-AB3F-464D-9956-27EB5A59058B}" /> |

## Benefits

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image3.webp" style="width:7.52708in;height:2.51806in" alt="{D2DFC8BF-E6A1-4A71-ACE6-D1102528F55B}" /> |

## Usecase 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image4.webp" style="width:7.51944in;height:2.19861in" alt="{7CFDFBC3-2A00-4422-BBCC-91EDC77C8AF6}" /> |

## HUB VNET (hub-vnet)

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image5.webp" style="width:5.55833in;height:4.70139in" alt="{62162639-0223-4B6D-A3B1-D393E627B24F}" /> |

### Add IP Address Range and Subnet 1 for Firewall 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Add IP Address Range and first Subnet for Azure Firewall</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_1.webp" style="width:7.525in;height:3.875in" alt="{016AAA91-3783-4D63-9853-B1793E1267C2}" /></p></td>
</tr>
</tbody>
</table>

### Add Second Subnet for Bastion 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_2.webp" style="width:7.525in;height:3.85in" alt="{164FFA45-7209-49D0-A7C7-DBAA7BF10726}" /> |

### Add Third Subnet for VPN Gateway 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_3.webp" style="width:7.51944in;height:4.15417in" alt="{51024594-B475-474C-B593-9F77113CF9C7}" /> |

### Review Address Space and Subnets 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image22.webp" style="width:5.06389in;height:4.58889in" alt="{C2B4C421-CF9D-43C6-B30D-34A845F221C8}" /> |

### Add Fourth subnet for Firewall Management (Force Tunnelling) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Add another subnet for Firewall (Need to check the exact purpose of this )</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image23.webp" style="width:5.34444in;height:5.14097in" alt="{BB2034BC-2DF2-4CBA-B720-E3C12DBF0531}" /></p></td>
</tr>
</tbody>
</table>

### Review Address Space and Subnets

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image24.webp" style="width:5.46528in;height:2.63889in" alt="{F8344524-DC38-43C1-BAEF-9EF65E3E1AA5}" /> |

### Review + Create

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image25.webp" style="width:7.10417in;height:3.04167in" alt="{54C4898D-B01E-478F-BC55-18B9FE4A272D}" /> |

## SPOKE VNET (prod1-spoke-vnet) - (app-snet subnet) 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_4.webp" style="width:5.36181in;height:4.39167in" alt="{59B2C24B-AAAA-497C-AEB6-D215477D8CCF}" /> |

### Add IP Address Range 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Provide Address range in 10 series and keep the existing subnet but rename to app-snet</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_5.webp" style="width:7.52361in;height:4.75069in" alt="{A1F5058C-71BE-4A0F-9610-077F1C45CDE6}" /></p></td>
</tr>
</tbody>
</table>

### Review + Create

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image34.webp" style="width:4.47778in;height:4.55278in" alt="{AD75648A-8BC4-445B-B138-887A1AA7CE2C}" /> |

## SPOKE VNET (prod2-spoke-vnet) - (app-snet subnet)

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_6.webp" style="width:4.97222in;height:4.37986in" alt="{7F2D31C7-2BFC-46B6-837B-31FC1200A66A}" /> |

### Add IP Address Range and Modify Subnet 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_7.webp" style="width:5.55486in;height:4.45139in" alt="{926843BA-1BC6-47D8-AACF-15C33F290AEA}" /> |

### Review + Create

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image42.webp" style="width:5.35417in;height:2.35417in" alt="{11EC22FB-B1E6-420B-86C7-CDA2777DF431}" /> |

## SPOKE VNET (non-prod1-spoke-vnet) - (default subnet) 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_8.webp" style="width:5.52569in;height:4.92917in" alt="{1D21DF03-B08F-4284-B202-39419F3E8547}" /> |

### Add Ip Address Range - Leave the subnet

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_9.webp" style="width:7.53056in;height:4.87778in" alt="{F0F47DD0-FF56-4A65-8AF3-B9DAD7E3CAEB}" /> |
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image49.webp" style="width:3.79167in;height:1.76806in" alt="{35E3FE0D-31F5-4B14-9B55-9146860BAACD}" /> |

## SPOKE VNET (non-prod2-spoke-vnet) - (default subnet) 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_10.webp" style="width:5.14861in;height:4.52361in" alt="{C3A33D2D-2BA7-492C-B0CE-337A346EBFFA}" /> |

### Add IP Address Range - Leave the subnet 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_11.webp" style="width:5.67917in;height:4.46944in" alt="{0033FFA6-6AED-4A4C-A34C-B3B3BD04E6BD}" /> |

## Network Security Group (NSG) - 5 NSGs

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→For Bastion</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_12.webp" style="width:3.61458in;height:1.71319in" /></p></td>
<td style="text-align: left;"><p>←THIS WILL BE RECREATED AT THE LAST</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→For Prod1</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_13.webp" style="width:3.32014in;height:1.84028in" alt="{005293A6-ADB1-440F-9C89-9D7EE403C44A}" /></p></td>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image60.webp" />→For Prod 2</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_14.webp" style="width:3.61736in;height:2.02569in" alt="{81F0BCBF-7203-4175-8737-4432E4CA53AC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→For Non Prod1</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_15.webp" style="width:3.75208in;height:2.27014in" alt="{0B04255C-2280-4E9D-B51C-7F0605D332CE}" /></p></td>
<td style="text-align: left;"><p>→ For Non Prod2</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_16.webp" style="width:3.62222in;height:2.13125in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ NSG Listing</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image67.webp" style="width:3.62014in;height:1.89861in" alt="{CB66730E-935D-4FA9-A410-F6F66506140B}" /></p></td>
<td style="text-align: left;"><p>→nsg-bastion</p>
<p>→nsg-prod1-vnet</p>
<p>→nsg-prod2-vnet</p>
<p>→nsg-non-prod1-vnet</p>
<p>→nsg-non-prod2-vnet</p></td>
</tr>
</tbody>
</table>

## Associate Subnets

|     |
|:----|
|     |

### Associate Subnets - NSG: nsg-prod1-vnet 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_17.webp" style="width:5.85556in;height:4.10069in" alt="{250493EA-C354-4CC2-B2EA-1E26211ACC93}" /></p>
<p><mark>→HERE THERE IS CONFUSION .. IN THE PROD1 VNET, WHY THE VIRTUAL NETWORK IS CHOOSEN AS ‘prod2-spoke-vnet’</mark></p>
<p><mark>→NEXT ONE SEEMS TO BE CORRECT</mark></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_18.webp" style="width:5.54375in;height:2.39306in" alt="{6E41808B-5B3B-40BF-B0A4-818924FF9577}" /></p></td>
</tr>
</tbody>
</table>

### Associate Subnets - NSG: nsg-non-prod1-vnet

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_19.webp" style="width:5.50208in;height:2.96042in" alt="{62DEE2E6-F11C-4C8B-91E8-F41560B9D155}" /> |
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_20.webp" style="width:5.91111in;height:2.84653in" alt="{DCB8C35E-3012-4E14-AB43-FFD1C7EC010D}" /> |

### Associate Subnets - NSG: nsg-bastion 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image84.webp" style="width:6.00833in;height:2.69861in" alt="{B3F73ACA-42ED-4AE5-9984-26F77785CF41}" /></p></td>
</tr>
</tbody>
</table>

## Peering

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below are steps to do the peerings between Hub and Spoke Vnets</p>
<p>→There will be 4 peerings done (bi-drectional) from Hub to various spokes that are configured.</p></td>
</tr>
</tbody>
</table>

### Hub - Vnet - Peering 1 (hub to prod1 and back) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_21.webp" style="width:5.03264in;height:2.75139in" alt="{445DC83C-95A1-4981-BE73-BA8E895DFF30}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Hub VNet → Peerings</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_22.webp" style="width:5.11181in;height:3.81111in" alt="{CA0A2D4C-63B2-439F-89A9-E06182F19F53}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide name for link as ‘hub-prod1’ meaning From Hub to Prod1 VNET</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_23.webp" style="width:5.32153in;height:4.83958in" alt="{BB67BA00-5F12-45E3-8F9D-502435850B1D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Add remote as well by giving name as reverse. Eg. ‘prod1-hub’ meaning ‘prod1 to hub.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_24.webp" style="width:5.59306in;height:5.60139in" alt="{07A79B18-3C90-40C2-9703-374C74DBF345}" /></p></td>
</tr>
</tbody>
</table>

### Hub - Vnet - Peering 2 (hub to prod2 and back) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Add the second peering</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_25.webp" style="width:6.59931in;height:3.60764in" alt="{445DC83C-95A1-4981-BE73-BA8E895DFF30}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_26.webp" style="width:4.89583in;height:4.79583in" alt="{A1279F8D-5B50-49D3-8D9F-72F1D8854E4E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_27.webp" style="width:5.22431in;height:5.45347in" alt="{A8377681-A8CD-4519-81D1-B3641BBFC62F}" /></p></td>
</tr>
</tbody>
</table>

### Hub - Vnet - Peering 3 (hub to non-prod1 and back) 

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_28.webp" style="width:4.79583in;height:4.5375in" alt="{97E82338-6FFC-4AB3-BEE0-0B89255FAC45}" /> |
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_29.webp" style="width:4.84792in;height:4.25903in" alt="{F73C87E8-461C-476C-9D7B-2812065E3104}" /> |

### Hub - Vnet - Peering 4 (Hub to non-prod2 and back) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_30.webp" style="width:5.13264in;height:2.70833in" alt="{DB4E4B0E-A5F0-4B2D-9013-802381EE0406}" /></p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_31.webp" style="width:5.34514in;height:2.97569in" alt="{44D51EF9-AB4C-4180-8A71-8B0D27E30D89}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_32.webp" style="width:5.49861in;height:5.25972in" alt="{F276DD00-7F6E-4D20-9BA8-9FF050F97031}" /></p></td>
</tr>
</tbody>
</table>

### All Peerings

|  |
|:---|
| <img src="subjects/tech/azure/az-hub-and-spoke/img/media/image117.webp" style="width:7.52708in;height:2.62986in" alt="{ACDAA1D0-C0F6-41BE-976F-B7B5F2C339FB}" /> |

###  Update all Peerings - to forward traffic 

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;">→This can be done either during the creation itself or after creation.</td>
</tr>
<tr>
<td style="text-align: left;"><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_33.webp" style="width:2.42292in;height:4.39583in" alt="{0FB83802-C0E4-4E36-A788-72E22873473B}" /></td>
<td style="text-align: left;"><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_34.webp" style="width:1.80833in;height:4.23611in" alt="{3E5274C2-C5E1-49B2-A2B5-D0F73188849B}" /></td>
</tr>
<tr>
<td style="text-align: left;"><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_35.webp" style="width:2.42708in;height:4.82222in" alt="{5D706C47-C42D-4261-84E1-42DB64E10C09}" /></td>
<td style="text-align: left;"><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_36.webp" style="width:2.40972in;height:4.60556in" alt="{1676006A-FB0E-41F5-9B0D-282A13D43036}" /></td>
</tr>
</tbody>
</table>

## Create Firewall 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create a firewal as per the architecture, wherein the FW will be sitting in Hub</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image126.webp" style="width:6.03472in;height:3.21736in" alt="{8D09FA66-7F1D-456A-A98E-EAB8C74AA916}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_37.webp" style="width:5.19861in;height:4.22847in" alt="{80A98E71-CE6B-4FB5-8D9C-517B36709497}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Standard SKU and Create a new Policy</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_38.webp" style="width:4.73611in;height:3.52431in" alt="{0876E641-C6FD-41D9-A0FA-EB260F91951A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Choose existing Vnet</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_39.webp" style="width:4.96667in;height:2.51528in" alt="{B6DEB0AE-BC31-4D8D-8606-70B2A42159FE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide dedicated ip for management</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_40.webp" style="width:5.96389in;height:2.26111in" alt="{0727AC30-D876-4952-AFF2-7272AA651814}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image140.webp" style="width:3.64444in;height:1.75069in" alt="{9177359A-8E84-459B-BE0B-EA144EB84743}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is created, note down some key configuration values as IP etc.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_41.webp" style="width:7.52431in;height:4.15208in" alt="{423D8862-2D18-438B-A026-3081A78FE498}" /></p></td>
</tr>
</tbody>
</table>

## Create Route Table - Associate Production Subnets

<table>
<colgroup>
<col style="width: 58%" />
<col style="width: 41%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;"><p>→Create a route Table</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_42.webp" style="width:5.19167in;height:3.09375in" alt="{8FF8A077-A952-461E-A580-4B2DDC256CBE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_43.webp" style="width:4.34514in;height:3.01528in" alt="{FBA3A114-6F21-4604-9B1C-683A4A6AB32E}" /></p></td>
<td style="text-align: left;"><p>← Here we have selected ‘No’ as propagation.</p>
<p>←However, in next snippet, we have modified it to ‘Yes’.</p>
<p>←If we do this as Yes, is also okay.</p>
<p>←Refer next steps where modification is done.</p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_44.webp" style="width:5.29722in;height:2.57153in" alt="{DD975C6A-EA1D-4FD4-B153-EDD69D5CF0C1}" /></p></td>
</tr>
</tbody>
</table>

###  Modify configuration - Enable Propagation 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As mentioned above, we need to enable the propagation which was selected as ‘No’ during Route Table creation</p>
<p>→Navigate to Route Table → Settings → Configuration → Choose Yes →Save</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_45.webp" style="width:5.22708in;height:2.69097in" alt="{241C2AD1-2358-44F3-8B5C-944EB0887483}" /></p></td>
</tr>
</tbody>
</table>

### Associate Prod subnets (Prod1 and Prod2) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once the Route Table is created, we are going to associate subnets to it.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_46.webp" style="width:7.52986in;height:3.46181in" alt="{39165F91-A632-4CBC-BC66-8D07AEC28121}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Associate second subnet</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_47.webp" style="width:7.52083in;height:2.17708in" alt="{AE19C217-60C4-4817-B4A9-6E8A02204459}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image164.webp" style="width:7.52153in;height:2.3875in" alt="{C07FAEAF-9BE6-4426-AAB6-D3157124A757}" /></p></td>
</tr>
</tbody>
</table>

### Configure UDR 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Here we are going to configure UDR where the configuration mentions to go to Firewall whenever the traffic is towards production Vnets.</p>
<p>→Notice carefully the Next hop address belongs to FIREWALL which is private IP of it. Refer previous step of Firewall creation.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_48.webp" style="width:7.52153in;height:2.97292in" alt="{58A5970A-D9FF-4A7C-882F-3B5A1AAB1C0B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Post creation</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image172.webp" style="width:7.51875in;height:1.79097in" alt="{F66E0008-0ED6-4909-A0D4-284D056C0EA9}" /></p></td>
</tr>
</tbody>
</table>

## Create VM (Prod) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_49.webp" style="width:5.90278in;height:3.55208in" alt="{17491738-ABC4-4528-98F4-BADB267A3B43}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_50.webp" style="width:5.15347in;height:4.01319in" alt="{1F3C616A-5E07-47BF-B29D-D588EDA99E49}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide Credentials and ports to allow</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image177.webp" style="width:5.85972in;height:3.73958in" alt="{24784764-7413-44C1-9BC2-F080D2378C75}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select the networking</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_51.webp" style="width:5.01736in;height:3.27778in" alt="{F7A47E6A-BA3A-41E7-8652-09E82117C58A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Change the NSG to none as this was already done at subnet level. Refer previous steps</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_52.webp" style="width:4.40486in;height:3.54444in" alt="{C04C40B6-8D68-45D8-8F0C-5BDF3DFB7D75}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image186.webp" style="width:4.65in;height:2.34306in" alt="{12FFDA32-31EA-4F7C-8DED-7FD8D27E4F9D}" /></p></td>
</tr>
</tbody>
</table>

## Create VM (Non-Prod) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_53.webp" style="width:6.26597in;height:4.37222in" alt="{68F78E87-538F-42E2-87A0-90A024EC4094}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_54.webp" style="width:5.75417in;height:4.06458in" alt="{AA00375B-1F0D-4DAC-8D13-151C451A8CB3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure credentials and disable ports</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image196.webp" style="width:5.76042in;height:3.69306in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure networking and choose Vnet and subnet</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_55.webp" style="width:5.73958in;height:4.22986in" alt="{00002740-AE4A-4EDA-8195-2B52D5E2CC09}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image202.webp" style="width:4.95903in;height:2.73125in" alt="{D9565546-FF1B-4B93-8986-E6ADE9D5DFAB}" /></p></td>
</tr>
</tbody>
</table>

## Create Bastion (core-bastion) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_56.webp" style="width:5.59236in;height:3.24583in" alt="{92CEF43A-0999-40E6-A894-C7F9CD1C9EB5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide RG</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_57.webp" style="width:6.14306in;height:2.5125in" alt="{33A29E66-2CA5-4765-868C-1B82FC8E69B1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→provide Name of the Bastion</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_58.webp" style="width:6.07361in;height:2.10764in" alt="{0B2E7534-4FD2-4D63-9DC9-4BAD7655A34C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide other details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_59.webp" style="width:5.1875in;height:5.44861in" alt="{08F30132-F018-4073-83FF-E33C539C60D4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide other details like Advanced Features for Bastion</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image216.webp" style="width:3.30556in;height:3.14792in" alt="{4DDF6E8B-7814-4C27-8309-D3281A206413}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image217.webp" style="width:4.70764in;height:2.27708in" alt="{E30FA393-5544-4084-9803-4EACDCD49840}" /></p></td>
</tr>
</tbody>
</table>

## Connect to VMs via Bastion - Update packages - View Erros

|     |
|:----|
|     |

### Connect to Non-Prod via Bastion 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to the VM</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_60.webp" style="width:7.52153in;height:4.44236in" alt="{AABEDE9C-DF9F-42AC-A644-5DDBA672FF5D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Give it is a Linux Vm we can see it is connected</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_61.webp" style="width:4.46944in;height:3.80208in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Try an update and see if it works. Notice the updates work as the traffic is going via ‘firewall’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image229.webp" style="width:4.88472in;height:4.80417in" alt="{C3CDB505-DB2D-457F-AC76-CCC3F10B8577}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→More installations</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image230.webp" style="width:7.52847in;height:4.04097in" alt="{B12BAB68-D6F4-481A-B6BA-0CB7A1A8D02E}" /></p></td>
</tr>
</tbody>
</table>

### Connect to Prod1 VM via Bastion 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Connect via Bastion</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_62.webp" style="width:6.07847in;height:4.36806in" alt="{2B7D36EF-558C-4D71-BB8A-2CFFFFAC146A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice that when we try to update anything it fails</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_63.webp" style="width:5.97639in;height:3.80069in" alt="{D4ACA431-F1B5-40DF-AC4C-55F12F130D58}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Update failed</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_64.webp" style="width:7.525in;height:4.27708in" alt="{B308C731-04F9-43C9-9504-D78CE2BD0A5C}" /></p></td>
</tr>
</tbody>
</table>

## Validate the traffic flow via Network Watcher

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image243.webp" style="width:7.52292in;height:2.32708in" alt="{76A88BEA-AB7F-41EC-9391-308DA89C9661}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details to view the ‘next hop’ details.</p>
<p>→Here we are providing a VM like prod1 and with a source and destination IPs checking the ‘next hop’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_65.webp" style="width:6.40694in;height:4.89653in" alt="{096A70A6-A276-4B14-9348-05F32923C9F2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the next hop is via Virtual Appliance.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image253.webp" style="width:6.23056in;height:3.13125in" alt="{DA8B4802-5FD6-4E7E-B0DC-100ACB82C55C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Similarly let us see for the ‘non-prod’ as well</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_66.webp" style="width:6.08542in;height:4.68819in" alt="{25CBBD05-467B-45B2-9D42-AF4215550645}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice here it is going to Internet</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_67.webp" style="width:7.52361in;height:3.675in" alt="{4433BC52-FD58-4E7C-BB51-CE6CCF1F8561}" /></p></td>
</tr>
</tbody>
</table>

## Update Firewall Rules - Access Internet from Prod machine 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to the firewall that we created</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_68.webp" style="width:7.52986in;height:3.15764in" alt="{CBA16E60-562D-4AF6-8CFA-33A9A3B5F8AA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Navigate to police</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_69.webp" style="width:7.52153in;height:4.71042in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Navigate to Settings → Network rules → Add a rule collection</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_70.webp" style="width:3.25903in;height:2.97569in" alt="{BD53B23B-B54D-48F0-AAA4-2EFD0168EE83}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Configure as below.</p>
<p>→Notice we are using wild card at source and desitnation, which means it is open to all Ips</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_71.webp" style="width:7.52083in;height:3.27847in" alt="{55804C5F-B2D9-4B1C-8C2E-5CCC95904FC6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the rule is added we can now download the packages on Prod as well.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image283.webp" style="width:7.51806in;height:2.27569in" alt="{935D7637-03E5-46A7-A08C-93E5546E521E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Prod1 VM and see the downloads.</p>
<p>→Apart from downloads, we can also see the VM is able to access internet like google etc.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_72.webp" style="width:7.52778in;height:4.43125in" alt="{3F721801-DE9E-4740-8011-14C08484CDED}" /></p></td>
</tr>
</tbody>
</table>

##  Accessing Webserver via Firewall

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Notice that our webserver already has a public IP.</p>
<p>→In production this will never be the case and it will never have a public IP.</p>
<p>→there are multiple ways to access it without public viz., via an Application Gateway or a typical Loadbalancer</p>
<p>→ Alternatively we can also access it using the Firewall by using Firewall IP and then Natting to Webserver’s private IP.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_73.webp" style="width:7.52917in;height:3.08611in" alt="{2DA532F8-41ED-4674-BB5C-8D703F761952}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice that the firewall also has a public IP. We make use of this to expose on internet and then NAT it to private IP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image290.webp" style="width:7.52986in;height:3.55347in" alt="{42FBE03B-7610-426A-8443-16A400CBD85D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then navigate to the firewall policy →DNAT rules → Add a rule collection where we NAT</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image291.webp" style="width:7.52222in;height:4.24097in" alt="{7A3BA667-398B-4599-8C34-55A76E0CBC84}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→A typical traffic flow would looks like as below.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image292.webp" style="width:7.52847in;height:2.44236in" alt="{D9B35D2F-AB6D-49F6-AE96-92623C4EDAA5}" /></p></td>
</tr>
</tbody>
</table>

##  Create VPN Gateway 

|     |
|:----|
|     |

###  Create VPN Gateway 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→this is another step where we will be connecting an on-prem server from our cloud Vnet.</p>
<p>→Navigate to Vnet gateways →Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_74.webp" style="width:5.98889in;height:3.51597in" alt="{235AFC32-F560-4AF5-9B9C-254668A724C1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_75.webp" style="width:5.59167in;height:4.50486in" alt="{6559A516-CF81-4E03-8409-7B208010BF2D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide Vnet information. Notic the subnet is automatically choosen as it already been created in the beginning.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_76.webp" style="width:4.95694in;height:2.51875in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide Secondary Ip address</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_77.webp" style="width:5.19792in;height:2.24931in" alt="{D8F98383-94A3-42DD-AE0D-331F7CEEF0EF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Disable the authentication</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_78.webp" style="width:4.10833in;height:2.15417in" alt="{DEE1B432-1ED4-47B9-8E64-682409AFEC3A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image317.webp" style="width:4.62222in;height:2.06458in" alt="{E07EC516-F426-491D-A418-3450C4ED11EA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image318.webp" style="width:6.83125in;height:1.68194in" alt="{7831647B-6FFE-488F-B985-1C2EC3601B8F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Post creation</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_79.webp" style="width:5.78333in;height:1.78056in" alt="{CABDCAFF-47E1-422B-B417-7EFAA61BB6A0}" /></p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image321.webp" style="width:7.51736in;height:3.11875in" alt="{4B0FE398-823C-4125-B584-81C92D562717}" /></p></td>
</tr>
</tbody>
</table>

###  Create VPN on-prem (Eg. GCP as onprem) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Navigate to GCP → create VPN Connection</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_80.webp" style="width:6.36528in;height:2.61319in" alt="{0741DE10-BB32-4AAB-8191-7ECFD2239D16}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_81.webp" style="width:3.20903in;height:4.53333in" alt="{C110760E-C740-4651-95F1-DD589DECE335}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose below settings and create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_82.webp" style="width:4.4625in;height:3.34028in" alt="{9E17DC88-DF3B-40A1-A34C-CF1F984E5265}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In the tunnel create a new peer vpn gw</p>
<p>→Choose two interfaces as we have on Azure ‘two’ IPs configured.</p>
<p>→Continue with ‘create’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_83.webp" style="width:5.01319in;height:3.02153in" alt="{6C5F2C59-9BD6-453B-BC2E-E3A2F77C4A1D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once created we get below.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_84.webp" style="width:4.58611in;height:3.66875in" alt="{C4ED2476-DBEF-44A3-992D-499C05DAA441}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then create a Cloud Router</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_85.webp" style="width:4.25347in;height:3.45in" alt="{C698D571-070F-40D5-BBC3-E54E1195E819}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide these details and create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_86.webp" style="width:3.80278in;height:5.38958in" alt="{E95F4C2A-FE85-4164-9E93-E427A3269635}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with creating VPN tunnel. We will need some information from Azure as well.</p>
<p>→click the Generate and Copy for IKE</p>
<p>→NOT SURE IF THIS IS TO BE CONTINUED BUT IN VIDEO NOTHING WAS DONE HERE</p>
<p>→GONE BACK ONE STEP WHICH IS NEXT SCREENSHOT</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_87.webp" style="width:4.575in;height:3.67153in" alt="{0B6AB0C4-3656-4E5F-AA6D-41F4697663F4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Notice VPN GW is created with interfaces.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_88.webp" style="width:6.13403in;height:2.70347in" alt="{A87FAED0-03BB-401E-A14F-369A0887AA79}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

###  Create Local Network Gateways - 1

<table>
<colgroup>
<col style="width: 51%" />
<col style="width: 10%" />
<col style="width: 38%" />
</colgroup>
<tbody>
<tr>
<td colspan="3" style="text-align: left;"><p>→Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image357.webp" style="width:4.27361in;height:3.55347in" alt="{AFB8CD13-99CE-4BAA-985E-E14178F9C202}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image358.webp" style="width:4.48403in;height:3.73056in" alt="{1CD25A9E-D5E4-4F88-92DE-600DEF509D0E}" /></p></td>
<td style="text-align: left;"><p>→From GCP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image359.webp" style="width:2.81528in;height:1.35278in" alt="{8EA0F508-6621-4F1D-AA91-B87F2C6C447B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure BGP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image360.webp" style="width:3.43472in;height:2.54167in" alt="{6451F2D1-D84F-413A-BF05-1062B7761A45}" /></p></td>
<td colspan="2" style="text-align: left;"><p><mark>→Why the BGP is that range???</mark></p>
<p>→169.254.21.6 (LNGW 2)</p>
<p>→169.254.21.4 (LNGW 1)</p></td>
</tr>
<tr>
<td colspan="3" style="text-align: left;"><p>→Review and Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image361.webp" style="width:4.71597in;height:2.80486in" alt="{109B6A2F-169E-4555-BF22-78FBAE80520B}" /></p></td>
</tr>
<tr>
<td colspan="3" style="text-align: left;"></td>
</tr>
</tbody>
</table>

###  Create Local Network Gateways - 2

<table>
<colgroup>
<col style="width: 61%" />
<col style="width: 38%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;"><p>→We are going to create the second one</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image362.webp" style="width:4.62917in;height:2.00556in" alt="{B7C041B8-2323-4B9F-8BBE-BA64DC80DC78}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_89.webp" style="width:4.38611in;height:3.75556in" alt="{6EAD0AD4-3983-478A-B900-20C0C1177C28}" /></p></td>
<td style="text-align: left;"><p>→From GCP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image359.webp" style="width:2.81528in;height:1.35278in" alt="{8EA0F508-6621-4F1D-AA91-B87F2C6C447B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure BGP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_90.webp" style="width:4.60417in;height:2.83403in" alt="{A3C5C3C8-B11B-4ADC-9C63-F0AB15F3E74D}" /></p></td>
<td style="text-align: left;"><p>→169.254.21.6 (LNGW 2)</p>
<p>→169.254.21.4 (LNGW 1)</p>
<p>→The BGP peer IP must match with what we cnofigure on GCP</p>
<p><mark>NOT VERY CLEAR TO BE VALIDATE FROM BEGINNING AGAIN</mark></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review and Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image367.webp" style="width:4.60694in;height:2.94722in" alt="{4EC313BB-4BFB-47C5-A089-B39CD3EB1AAF}" /></p></td>
<td style="text-align: left;"></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Both are created</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image368.webp" style="width:4.60556in;height:1.53333in" alt="{C814028A-A381-4527-8ADA-98CF12D6BFBA}" /></p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

###  Configure BGP IPs on Azure 

<table>
<colgroup>
<col style="width: 70%" />
<col style="width: 29%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to VPN Gateway →Settings → Configuration → Provide the BGP address.</p>
<p>→Save the configuration</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_91.webp" style="width:5.27014in;height:4.08542in" alt="{7779A227-3C19-409F-B2F7-F014700FD448}" /></p></td>
<td style="text-align: left;"><p>←Here the BGP address are choosen as below and same must be choosne on GCP side.</p>
<p>→169.254.21.10</p>
<p>→169.254.21.14</p>
<p><mark>← WHY IT IS REQUIRED??</mark></p></td>
</tr>
</tbody>
</table>

###  Configure Connection 1

<table style="width:99%;">
<colgroup>
<col style="width: 53%" />
<col style="width: 46%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;"><p>→ Navigate back to VPN Gateway that is created</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image321.webp" style="width:7.51736in;height:3.11875in" alt="{4B0FE398-823C-4125-B584-81C92D562717}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Navigate to Connections → + Add</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_92.webp" style="width:5.41806in;height:3.28681in" alt="{CCEF8400-B11F-4454-B4F1-2F71FED267A1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure Basics, provide type of the connection and name of the tunnel</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_93.webp" style="width:3.73056in;height:2.69931in" alt="{65BA7D2B-D871-4390-926E-22643AB4F085}" /></p></td>
<td style="text-align: left;"><p>→Types of connections as below.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image383.webp" style="width:3.83819in;height:0.94097in" alt="{E18839B3-4890-44EC-837D-AE53E725FB96}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Configure Settings. Choose the appropriate settings and choose the PSK of our own.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_94.webp" style="width:4.41042in;height:2.39722in" alt="{E3CAEF57-D5C3-415B-87F0-92286DE1F91B}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Enable BGP and Custom BGP address.</p>
<p>→They should by default come up because we have configured the BGPs explicitely in previous step.</p>
<p>→Notice the IPs and compare for clarity with previous steps.</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_95.webp" style="width:4.39236in;height:3.84028in" alt="{63D7613F-CA50-4D25-B2B2-6FD93A2BB001}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image393.webp" style="width:3.54861in;height:1.77847in" alt="{4110A9D6-B9FB-4FDF-9282-6E196C10B27C}" /></p></td>
</tr>
</tbody>
</table>

###  Configure Connection 2

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Provide Basics</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image394.webp" style="width:5.25972in;height:3.09583in" alt="{3966EC11-15E0-4D13-BA83-6331548AF11D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure Settings→Choose the core vpn gw</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image395.webp" style="width:5.35556in;height:2.36389in" alt="{A8740AFB-FAE8-4304-88A3-79365C928276}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure settings → Choose the second LNGW</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image396.webp" style="width:4.67778in;height:1.89583in" alt="{0A1596F3-995A-4901-B72F-431775388E3A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the Key</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image397.webp" style="width:5.6375in;height:1.62083in" alt="{26B6CC2B-CAAD-4BEF-A5DC-324DBD21BC81}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Enable BGP</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_96.webp" style="width:4.19167in;height:3.27708in" alt="{FFD0E9A9-F66E-4C7B-9838-132420913DBB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image403.webp" style="width:3.93681in;height:1.84722in" alt="{373B3BC5-DBCC-4E79-9A1E-52B2D47F8287}" /></p></td>
</tr>
</tbody>
</table>

###  Capture the IPs 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Configuration and capture public IPs, that will be used ahead in VPN peering on GCP (as on-prem)</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_97.webp" style="width:6.50972in;height:5.50486in" alt="{09921463-9167-448F-B0D0-686CDC5BE317}" /></p></td>
</tr>
</tbody>
</table>

###  Conifigure Peer VPN GW on GCP (as On-Prem)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to VPN</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image408.webp" style="width:7.52361in;height:3.49792in" alt="{4E62E66D-BE94-4690-A06D-F74448F72CED}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Navigate to Peer VPN Gateways → Create Peer</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_98.webp" style="width:7.52778in;height:3.47014in" alt="{DCFCF8ED-6DA2-4ABD-99E2-FA6E966A267B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide a name and choose two interfaces.</p>
<p>→Use the IPs of Azure where we have already captured previously.</p>
<p>→Continue by ‘create’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_99.webp" style="width:5.09931in;height:5.47639in" alt="{14D444D4-E5B5-4B48-8924-F7BFA891CD44}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is created</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image417.webp" style="width:7.525in;height:3.53958in" alt="{A8F256FB-9086-40AF-BF93-DC33DBD50353}" /></p></td>
</tr>
</tbody>
</table>

###  Configure Tunnel on GCP (as On-Prem) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Navigate to Cloud VPN Tunnels → Create VPN Tunnel</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_100.webp" style="width:7.52569in;height:3.90833in" alt="{7A6CD04F-FB94-42E9-AB0F-82A09DD1A52C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide name</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_101.webp" style="width:4.60625in;height:3.07361in" alt="{E7AF2E6D-DECD-4FFF-9967-6D2312994237}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide a name</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_102.webp" style="width:6.13958in;height:5.075in" alt="{6812337A-D566-476C-BC5E-3805BC976947}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Create Router</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_103.webp" style="width:7.51875in;height:3.93333in" alt="{90E13D6A-791E-40CA-B86F-01215F18B946}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Router is created</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_104.webp" style="width:7.52222in;height:2.63125in" alt="{AC799D25-E472-47EB-ACC1-22428C7ED852}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details for tunnel 1 with SK</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_105.webp" style="width:6.09722in;height:5.10486in" alt="{4B16E7FA-3F0D-4A25-9942-DB2AB60A8B34}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Tunnel 1 is created . Modify the tunnel 2</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_106.webp" style="width:6.23125in;height:3.20208in" alt="{1DA36BA9-5A00-4BED-BCB4-F7DBFA44F020}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure Tunnel 2</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_107.webp" style="width:6.07847in;height:5.24514in" alt="{996578A1-2573-4041-807C-06B2FA2958D4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with ‘create and continue’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_108.webp" style="width:7.52847in;height:4.14583in" alt="{39CC2283-C141-4644-9AF0-BB8212FB69B2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure BGP sessions</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_109.webp" style="width:7.52917in;height:5.19792in" alt="{2585482F-947D-4DA1-8DFF-4EF36B96BDE6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide name as session 1 and ASN</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image450.webp" style="width:4.21875in;height:6.13889in" alt="{9A8BC774-C701-4D42-8A87-8027A1D8702C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide BGP IPs and BGP Peer IPs and save and continue</p>
<p>→169.254.21.10 (session1) as per Azure configured</p>
<p>→169.254.21.14 (session2) as per Azure configured</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_110.webp" style="width:5.04167in;height:1.46875in" alt="{74D1470E-2C1E-4429-B018-A54BEF53A45F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Save</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image455.webp" style="width:4.20764in;height:5.62847in" alt="{0AA7C343-47FF-403C-92A5-2D0DECA2E84F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is created. Now configure second tunnel</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_111.webp" style="width:7.51806in;height:4.3625in" alt="{E01BB4D1-DF9E-4527-9D6C-B2A1682E4029}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Configure BGP Session → Provide name and ASN</p>
<p>→Choose Manually</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_112.webp" style="width:4.70417in;height:7.20694in" alt="{63B71E33-9E38-4319-88A5-69AC9BBAC7C2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide BGP IPs and BGP Peer IPs and save and continue</p>
<p>→169.254.21.10 (session1) as per Azure configured</p>
<p>→169.254.21.14 (session2) as per Azure configured</p>
<p><mark>→NOTE THAT THIS MUST MATCH THE AZURE SIDE AS WELL</mark></p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image462.webp" style="width:5.09375in;height:2.88542in" alt="{3DFE9260-F28D-4231-AB96-EA03517A782C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is created. The highlighted one belongs to Azure.</p>
<p>→Click ‘Save BGP Configuration’</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/flatten_113.webp" style="width:7.52083in;height:4.3in" alt="{E3824951-EF07-4F44-8425-F9ADA6C40576}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It is under configuration will take some time.</p>
<p>→Click Ok</p>
<p><img src="subjects/tech/azure/az-hub-and-spoke/img/media/image467.webp" style="width:6.14514in;height:3.22986in" alt="{BA644F55-9BAA-40EC-8B65-2ADDAC27C267}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## xxxx

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><a href="https://www.youtube.com/watch?v=8jdekk5oHVE">https://www.youtube.com/watch?v=8jdekk5oHVE</a></p>
<p>This was not completed some back and forth in the video</p>
<p>Stopped at <a href="https://youtu.be/8jdekk5oHVE?t=4019">https://youtu.be/8jdekk5oHVE?t=4019</a></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>
