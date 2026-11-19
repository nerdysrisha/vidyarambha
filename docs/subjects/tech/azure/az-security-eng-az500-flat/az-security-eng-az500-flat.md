> AZ 500

|                         |                 |
|-------------------------|-----------------|
| **Version**             | **1.0**         |
 

<span id="_Toc47124717" class="anchor"></span>Table of Contents

 

**\**

# Introduction

AZ-500 Azure Security Technology

## Typical Architect Roles in Security

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image2.webp" style="width:7.33333in;height:3.21875in" alt="{0281FE39-5EE7-429B-BCF0-373B1A456E91}" /> |

# Entra ID – P2 License 

## Navigate to Entra ID 

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_1.webp" style="width:3.49514in;height:2.20764in" /></p>
<p>🡪Usually this will be the default domain / directory when any custom domain is not attached to it.</p>
<p>🡪While there is no custom domain the ‘entra id p2’ license is activated.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_2.webp" style="width:3.78264in;height:2.61736in" /></p>
<p>🡪Notice here the domain is already attached.</p>
<p>🡪If we want P2 license where ton of advantages exist, we need to activate the same.</p></td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
</tbody>
</table>

## Activate License 

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_3.webp" style="width:3.83819in;height:2.38889in" /></p>
<p>🡪Navigate to Licenses and click Get a free trial</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_4.webp" style="width:2.74167in;height:3.37361in" /></p></td>
</tr>
</tbody>
</table>

## Advantages of P2

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><ul>
<li><p>Conditional Access and Conditional access based on risks</p></li>
<li><p>Function-based access control (RBAC)</p></li>
<li><p>Advanced group management (dynamic groups, naming policies, expiration, predefined classification)</p></li>
<li><p>Synchronization of users between tenants, multi-tenant organizations</p></li>
<li><p>Limited access to SharePoint</p></li>
<li><p>Management of the session life time</p></li>
<li><p>Global password protection and management (passwords forbid, users synchronized from on-premises Active Directory)</p></li>
<li><p>Portal for launching applications and collections of user applications in My Applications</p></li>
<li><p>Advanced safety and use reports</p></li>
<li><p>Dynamic real-time login evaluation</p></li>
<li><p>Dynamic user assessment in real time</p></li>
<li><p>Authentication context (step-up authentication)</p></li>
<li><p>Filters of devices and applications for Conditional Access</p></li>
<li><p>Protection by token</p></li>
<li><p>Detecting vulnerabilities and risk account detection</p></li>
<li><p>Investigation of risk events</p></li>
<li><p>Automated user provisioning to software applications as a service (SaaS)</p></li>
<li><p>Automated user provisioning for on-site applications</p></li>
<li><p>Automatic provisioning of groups to applications</p></li>
<li><p>HR-oriented provisioning</p></li>
<li><p>Attestation of Terms of Use</p></li>
</ul></td>
</tr>
</tbody>
</table>

# Create a user (Admin)

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 49%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image12.webp" style="width:3.73333in;height:2.17569in" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image13.webp" style="width:3.49792in;height:3.03194in" /></p>
<p>🡪Provide necessary details</p></td>
</tr>
<tr>
<td><p>🡪Add appropriate properties</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image14.webp" style="width:3.64167in;height:3.91667in" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image15.webp" style="width:3.57708in;height:1.44861in" /></p>
<p>🡪This is crucial regarding the location. If a suer is created WITHOUT the location, any EntraID P2 features cannot be allocated.</p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_5.webp" style="width:5.00069in;height:1.80972in" /></p>
<p>🡪Assign an appropriate role directly or assign an already existing ‘group’ that has necessary permissions</p></td>
</tr>
</tbody>
</table>

## Assign EntraID P2 to user 

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image19.webp" style="width:1.69236in;height:4.83542in" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image20.webp" style="width:1.69306in;height:5.87361in" /></p>
<p>🡪Navigate to Licenses</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_6.webp" style="width:3.21181in;height:3.04167in" /></p>
<p>🡪Navigate to All products. Compare with Bring on Right where Entra ID p2 is missing because that domain has not opted in for the same.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image24.webp" style="width:3.24028in;height:2.84028in" /></p>
<p>🡪MISSING ENTRA ID P2</p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Select the Entra ID p2 and click the ‘Assign’ button on top</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_7.webp" style="width:6.87361in;height:2.10208in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Select the users. Assuming we have created two users ‘admin’ and ‘sam’ and for both, ‘location’ was choosen. If it is not choosen it will fail.</p>
<p>🡪Once check the boxes click ‘select’ button at the bottom.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image28.webp" style="width:5.44097in;height:2.27083in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Navigate to Assignment options. Notice the options in question. We can enable or disable as needed. Here we are leaving all options enabled.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image29.webp" style="width:4.42708in;height:3.70833in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Once it is assigned, we can verify using the same path. Navigate to Licenses🡪All products🡪Select the Entra ID P2</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image30.webp" style="width:7.6875in;height:4.27708in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Notice the users that get assigned.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image31.webp" style="width:7.6875in;height:2.875in" /></p></td>
</tr>
</tbody>
</table>

# Create a group

## Create a group – Assigned Type

<table>
<colgroup>
<col style="width: 48%" />
<col style="width: 51%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>🡪In this type of groups, we need to assign members manually.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image32.webp" style="width:2.53125in;height:3.51042in" alt="A screenshot of a computer AI-generated content may be incorrect." /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image33.webp" style="width:3.77083in;height:2.7125in" alt="A screenshot of a search box AI-generated content may be incorrect." /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_8.webp" style="width:3.23958in;height:4.97986in" alt="A screenshot of a computer AI-generated content may be incorrect." /></p>
<p>🡪Here we have option to make an owner of this group where in that person can add/remove team from the same.</p>
<p>🡪We have the option to start adding members as well at this moment. However, we can add users at later stage as well.</p></td>
<td></td>
</tr>
</tbody>
</table>

## Create a group – Dynamic 

<table style="width:99%;">
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_9.webp" style="width:2.75in;height:5.16736in" /></p>
<p>🡪Notice the membership type</p>
<p>🡪In order to add users ‘dynamically’ we need to add a query.</p>
<p>🡪Notice the group name, which will be referred ahead.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image40.webp" style="width:2.57292in;height:4.59375in" /></p>
<p>🡪Notice the properties to choose from.</p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Notice the rules where we are configuring in a way that when the property of the user ‘jobTitle’ matches with a value eg. ‘salesadmin’, that user will be by default added to this group.</p>
<p>🡪Once configured ‘save the rule</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_10.webp" style="width:7.6875in;height:3.27778in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Assuming if a user already had a job Title, eg. Salesadmin, that user will be automatically added to this group. For instance as below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_11.webp" style="width:7.6875in;height:2.83889in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪it is important to note that a group that is created with ‘dyanmic’ type cannot be used to add user manually.</p>
<p>🡪Notice the ‘add’ option is greyed out.</p>
<p>🡪Navigate to groups and select the ‘salesadmins’ group then click the ‘members’ tab to see the greyed out button.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_12.webp" style="width:5.42778in;height:2.79167in" /></p></td>
</tr>
</tbody>
</table>

## Create a group – Dynamic Device

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_13.webp" style="width:3.35417in;height:5.63611in" /></p>
<p>🡪here we are adding the membership type as ‘dynamic device’.</p>
<p>🡪We will add a dynamic query as well.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image50.webp" style="width:3.41667in;height:6.19861in" /></p>
<p>🡪Some of the properties that can be used incase of ‘devices’. Notice the difference between ‘user-properties’ and ‘device-properties’</p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image51.webp" style="width:7.6875in;height:3.48472in" /></p>
<p>🡪The condition is added where the ostype=windows, and any such device (Eg. VM) that has windows gets added to this group dynamically.</p></td>
</tr>
<tr>
<td colspan="2"><p>🡪While creating the VM we need to choose as below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image52.webp" style="width:7.10486in;height:5.83403in" /></p></td>
</tr>
<tr>
<td colspan="2"><p>🡪In the management tab this is key selection</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image53.webp" style="width:6.93819in;height:1.44792in" /></p>
<p>🡪With this the device or machine gets registered into the group we created previously.</p></td>
</tr>
<tr>
<td colspan="2"><p>🡪Once the VM is created it gets automatically into the group called ‘devices’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image54.webp" style="width:6.08403in;height:3.60417in" /></p></td>
</tr>
</tbody>
</table>

# Creation of Domain 

|     |
|-----|
|     |

## Create Custom Domain 

<table>
<colgroup>
<col style="width: 53%" />
<col style="width: 46%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_14.webp" style="width:4.01042in;height:2.53194in" /></p>
<p>🡪Notice the names under ‘custom domain name’ of bring.</p>
<p>🡪Initially the default one is there as bringglobal.onmicrosoft.com</p>
<p>🡪Subsequently there are two domains registered bringconsulting and bringglobal</p></td>
<td><p>🡪In our own organization check what is the primary domain name.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image57.webp" style="width:3.25556in;height:3.05903in" /></p></td>
</tr>
</tbody>
</table>

## Purchase a domain from GoDaddy

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image58.webp" style="width:5.59722in;height:3.18819in" /> |
|  |

## Add Custom Domain – On Azure

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>🡪Navigate to Custom domain names🡪Click Add custom domain</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image59.webp" style="width:5.65278in;height:3.51458in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image60.webp" style="width:3in;height:1.71875in" /></p>
<p>🡪Provide the name and click ‘add domain’ at the bottom</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image61.webp" style="width:6.28194in;height:4.84375in" /></p>
<p>🡪Azure generates some configuration that will be registered in GoDaddy</p></td>
</tr>
</tbody>
</table>

## Create TXT record in GoDaddy

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>🡪Navigate to GoDaddy 🡪Click Add</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_15.webp" style="width:7.6875in;height:4.54653in" /></p></td>
</tr>
<tr>
<td><p>🡪Provide details as below</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_16.webp" style="width:5.75in;height:2.66319in" /></p>
<p>🡪Click Add Record</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image66.webp" style="width:3.73611in;height:2.15417in" /> <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image67.webp" style="width:3.04167in;height:2.04167in" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

## Verify on Azure

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>🡪Navigate back to custom domain azure and click verify</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image68.webp" style="width:5.41736in;height:4.4375in" /></p></td>
</tr>
<tr>
<td><p>🡪Based on the domain provider verification takes some time.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image69.webp" style="width:6.25069in;height:4.29167in" /></p></td>
</tr>
</tbody>
</table>

## Make it primary domain 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>🡪Change it to primary domain</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image70.webp" style="width:4.89583in;height:2.375in" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image71.webp" style="width:7.6875in;height:4.72292in" /></p></td>
</tr>
</tbody>
</table>

## Create User in new domain 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image72.webp" style="width:6.93819in;height:3.34375in" /></p>
<p>🡪Notice the domain is defaulted to primary.</p></td>
</tr>
<tr>
<td><p><a href="https://www.youtube.com/watch?v=iMGQHXDg_hw&amp;list=PLAwzouYxcpPjA__GkMVgtAqKHPpVa5nrw&amp;index=37">https://www.youtube.com/watch?v=iMGQHXDg_hw&amp;list=PLAwzouYxcpPjA__GkMVgtAqKHPpVa5nrw&amp;index=37</a></p></td>
</tr>
</tbody>
</table>

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

# AZ500-John Savil

|                                                       |
|-------------------------------------------------------|
| <https://www.youtube.com/watch?v=6vISzj-z8k4&t=6874s> |

## Basics

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><ul>
<li><p>Azure has Entra ID as IdP.</p></li>
<li><p>Provides Authentication <strong>AuthN</strong>, It provides SAML, WS-FED, OIDC, SSO, MFA.</p></li>
<li><p>Provides Authorization <strong>AuthZ</strong>, it provides OAuth2.0, Kerberos.</p></li>
<li><p>Communcation: REST API using Graph API</p></li>
<li><p>Which components trust this IdP: MS365, Azure itself, 3<sup>rd</sup> Parties</p></li>
<li><p>It is Flat structure and not like MS AD where OU etc were there.</p></li>
<li></li>
</ul></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image73.webp" style="width:3.84931in;height:2.67014in" /></p></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## Comparision between Entra Licenses - P1 P2 etc. 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p><a href="https://learn.microsoft.com/en-us/entra/identity/authentication/concept-mfa-licensing">https://learn.microsoft.com/en-us/entra/identity/authentication/concept-mfa-licensing</a></p>
<table style="width:94%;">
<colgroup>
<col style="width: 31%" />
<col style="width: 16%" />
<col style="width: 14%" />
<col style="width: 9%" />
<col style="width: 10%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;"><strong>Feature</strong></th>
<th style="text-align: center;"><strong>Microsoft Entra ID Free - Security defaults (enabled for all users)</strong></th>
<th style="text-align: center;"><strong>Microsoft Entra ID Free - Global Administrators only</strong></th>
<th style="text-align: center;"><strong>Office 365</strong></th>
<th style="text-align: center;"><strong>Microsoft Entra ID P1</strong></th>
<th style="text-align: center;"><strong>Microsoft Entra ID P2</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Protect Microsoft Entra tenant admin accounts with MFA</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">● (Microsoft Entra Global Administrator accounts only)</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Mobile app as a second factor</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Phone call as a second factor</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Text message as a second factor</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Admin control over verification methods</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Fraud alert</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">MFA Reports</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Custom greetings for phone calls</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Custom caller ID for phone calls</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Trusted IPs</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Remember MFA for trusted devices</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">MFA for on-premises applications</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Conditional Access</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
<td style="text-align: center;">●</td>
</tr>
<tr>
<td style="text-align: left;">Risk-based Conditional Access</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">●</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

## Comparision between OAuth2 and OIDC

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><table style="width:98%;">
<colgroup>
<col style="width: 19%" />
<col style="width: 26%" />
<col style="width: 52%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Feature</strong></th>
<th style="text-align: center;"><strong>OAuth 2.0</strong></th>
<th style="text-align: center;"><strong>OpenID Connect (OIDC)</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Purpose</td>
<td style="text-align: left;">Authorization</td>
<td style="text-align: left;">Authentication + Authorization</td>
</tr>
<tr>
<td style="text-align: left;">Spec Type</td>
<td style="text-align: left;">Framework</td>
<td style="text-align: left;">Identity layer on top of OAuth 2.0</td>
</tr>
<tr>
<td style="text-align: left;">Token Type</td>
<td style="text-align: left;">Access Token</td>
<td style="text-align: left;">Access Token + ID Token</td>
</tr>
<tr>
<td style="text-align: left;">ID Token</td>
<td style="text-align: left;">Not used</td>
<td style="text-align: left;">Introduced (JWT format)</td>
</tr>
<tr>
<td style="text-align: left;">User Authentication</td>
<td style="text-align: left;">Not provided</td>
<td style="text-align: left;">Provided via ID Token</td>
</tr>
<tr>
<td style="text-align: left;">User Info Endpoint</td>
<td style="text-align: left;">Not specified</td>
<td style="text-align: left;">Yes (standardized endpoint)</td>
</tr>
<tr>
<td style="text-align: left;">Scopes</td>
<td style="text-align: left;">Defined by resource server</td>
<td style="text-align: left;">Includes standard scopes like openid, profile</td>
</tr>
<tr>
<td style="text-align: left;">Token Audience</td>
<td style="text-align: left;">Resource server</td>
<td style="text-align: left;">Client application</td>
</tr>
<tr>
<td style="text-align: left;">Login UI</td>
<td style="text-align: left;">Not specified</td>
<td style="text-align: left;">Specified flow with login support</td>
</tr>
<tr>
<td style="text-align: left;">Standards</td>
<td style="text-align: left;">RFC 6749, RFC 6750</td>
<td style="text-align: left;">OpenID Connect Core, Discovery, Dynamic Registration</td>
</tr>
<tr>
<td style="text-align: left;">Use Cases</td>
<td style="text-align: left;">API access</td>
<td style="text-align: left;">Login with identity + API access</td>
</tr>
<tr>
<td style="text-align: left;">Identity Assurance</td>
<td style="text-align: left;">Not provided</td>
<td style="text-align: left;">Provided</td>
</tr>
</tbody>
</table></td>
</tr>
<tr>
<td><p>OAuth2 - Client_Credentials Grant type: Flow for Client Credentials Grant:</p>
<ul>
<li><p>Register application with the IdP (e.g., Keycloak).</p></li>
<li><p>Get Client ID and Client Secret.</p></li>
<li><p>Client sends a POST request to the Token Endpoint with:</p></li>
<li><p>grant_type=client_credentials</p></li>
<li><p>client_id</p></li>
<li><p>client_secret</p></li>
<li><p>(optional) scope</p></li>
<li><p>IdP responds with an Access Token.</p></li>
<li><p>Client uses the Access Token to access protected resources.</p></li>
</ul>
<p>✅ No user interaction</p>
<p>✅ No redirect URIs</p>
<p>✅ No Authorization Code</p>
<p>✅ Used for machine-to-machine communication</p></td>
<td><ul>
<li><p>OIDC Authorization Code Flow:</p></li>
<li><p>Register client with IdP → get client_id and client_secret.</p></li>
<li><p>Client redirects user to IdP’s Authorization Endpoint with:</p></li>
<li><p>response_type=code</p></li>
<li><p>scope=openid</p></li>
<li><p>client_id, redirect_uri, etc.</p></li>
<li><p>User logs in and authorizes the client.</p></li>
<li><p>IdP redirects back with an Authorization Code.</p></li>
<li><p>Client exchanges code at Token Endpoint for:</p></li>
<li><p>access_token</p></li>
<li><p>id_token</p></li>
<li><p>(optional) refresh_token</p></li>
<li><p>Client validates ID Token (JWT) to authenticate the user.</p></li>
<li><p>(Optional) Client calls UserInfo Endpoint using access_token to fetch user profile.</p></li>
</ul></td>
</tr>
</tbody>
</table>

## Default Roles of Azure

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→There are number of roles by default available on Azure. Navigate to EntraID→Manage→Roles and Administrators</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image74.webp" style="width:2.51181in;height:2.74444in" alt="{FC60C132-F722-49B9-82CF-E16B0C4DF3C6}" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image75.webp" style="width:3.85139in;height:1.95417in" alt="{F8829730-D46E-46C0-9297-C5CD64B9686F}" /></p>
<p>→Notice there are ton of roles available by default.</p></td>
</tr>
<tr>
<td><p>→filter Global Admin, which is most powerful one.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image76.webp" style="width:3.51806in;height:0.9in" alt="{D751FA2C-2AEF-4EF2-AE02-51EBB317C7E6}" /></p></td>
<td><p>→What we do is based on the need we pick a role and assign them to either a user or a group.</p></td>
</tr>
</tbody>
</table>

## Synchronize On-Prem AAD to Entra ID

<table>
<colgroup>
<col style="width: 45%" />
<col style="width: 54%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can syncrhonzie all the users/devices etc from On-Prem to Azure Entra ID</p>
<p>→When synchronizing the passwords, a hash is moved and nothing else.</p>
<p>Authentication mechanisms are three ways</p>
<ol type="1">
<li><p><strong>Native Auth,</strong> where we move all passwords to Entra, however, use the feature ‘hash’ the ‘hashed-password’ as additional security. User in that case directly logs into Entra</p></li>
<li><p><strong>Pass</strong> Through Authentication (PTA): Here, User log-in to Entra, however, the actual validation happens on on-prem AAD, where it is delegated.</p></li>
<li><p><strong>Federation</strong>: We go to Entra ID, however, it inturn delegates the authentication to another 3<sup>rd</sup> party or it could be AAD or some other provider.</p></li>
</ol></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image77.webp" style="width:2.84583in;height:2.01944in" alt="{3F2E143D-2520-4470-9789-013967BCC5BB}" /></p></td>
</tr>
</tbody>
</table>

## Adding External Users - Guests

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><p>→Azure Entra allows external users to be added, they can be called B2B.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image78.webp" style="width:2.54514in;height:3.79306in" alt="{B72337BE-A887-4F5F-9CAB-6836C703EFFB}" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image79.webp" style="width:2.42361in;height:4.25486in" alt="{24FDF9E0-70DD-4558-BAD5-BA47DDD3F008}" /></p></td>
</tr>
</tbody>
</table>

## Password less options 

<table>
<colgroup>
<col style="width: 48%" />
<col style="width: 51%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to EntraID→Security</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_17.webp" style="width:1.70417in;height:6.45694in" alt="{45B8951D-733A-4073-8380-8A2BFE2ACE40}" /></p>
<p>→last but item under ‘manage’</p></td>
<td><p>→Click Authentication methods.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_18.webp" style="width:3.46111in;height:4.60764in" alt="{34B6DA79-9334-4681-9F01-0918947EF740}" /></p></td>
</tr>
<tr>
<td><p>→We get below and notice the built-in Methods</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_19.webp" style="width:2.92569in;height:3.10903in" alt="{C2FEEF8A-F9C1-45D3-AA42-EFBB63BB2621}" /></p></td>
<td><p>→Authentication method policies that are built-in.</p>
<p>· Password</p>
<p>· Microsoft Authenticator</p>
<p>· FIDO2 security key</p>
<p>· Certificate-based authentication</p>
<p>· Temporary Access Pass</p>
<p>· Windows Hello for Business</p>
<p>· SMS</p>
<p>· Voice call</p>
<p>· Email one-time passcode</p>
<p>· OAuth 2.0 and OIDC</p></td>
</tr>
</tbody>
</table>

### FIDO

<table style="width:99%;">
<colgroup>
<col style="width: 50%" />
<col style="width: 0%" />
<col style="width: 48%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;"><p>→Azure <strong>FIDO</strong> (Fast Identity Online) authentication is based on the FIDO2 standard.</p>
<p>→This enables <strong>passwordless</strong> sign-in using cryptographic keys stored on devices like security keys or biometrics.</p>
<p>→These keys / biometrics are integrated with Azure Active Directory (Entra ID) for secure access to cloud and on-premises resources.</p>
<p>→<strong>Usage</strong>: Users register a FIDO2-compatible device (e.g., YubiKey, smartphone, or Windows Hello) to authenticate via a PIN or biometric, replacing passwords for seamless login to applications and services.<br />
→<strong>Benefits</strong>: It offers phishing-resistant, MFA, reduces password-related vulnerabilities, simplifies user experience, and supports single sign-on, making it more secure and convenient than traditional password-based methods</p>
<p>→Some of the devices can be se on the right.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image89.webp" style="width:3.13125in;height:2.53403in" alt="{98F34C2D-8F81-4756-9F58-BEF59BE2A5FC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_20.webp" style="width:1.24306in;height:2.71111in" alt="{1C626732-AB38-4402-854C-2BBC06965C99}" /></p>
<p>Navigate to Authentication Methods</p></td>
<td colspan="2" style="text-align: left;"><p>→notice it is not enabled by default.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_21.webp" style="width:3.59514in;height:1.81042in" alt="{4DD7FE46-1702-4E02-96BF-8E22D57BBC3A}" /></p>
<p>→Click the FIDO2</p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_22.webp" style="width:2.86458in;height:2.88542in" alt="{D28DB65D-FD2F-4B09-A727-D0F0848A0E79}" /></p>
<p>→Enable for all users</p></td>
<td colspan="2" style="text-align: left;"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_23.webp" style="width:3.66667in;height:2.73958in" alt="{88DB5EC1-823A-467F-A676-A9CF14CA0BB7}" /></p>
<p>→Enable for group of users and select a particular group.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure some additional settings</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_24.webp" style="width:3.77639in;height:3.30556in" alt="{217E3B5D-9A19-4439-A784-5BEE0E6C15FC}" /></p></td>
<td colspan="2" style="text-align: left;"><p>→Note that for typical Azure Entra users, no further action would be needed I.t.o configuration.</p>
<p>→However, if a device need to be registered with FIDO then we need to do some additional configurations on the microsoft intune.</p></td>
</tr>
</tbody>
</table>

### Temporary Access Pass (TAP)

<table>
<colgroup>
<col style="width: 39%" />
<col style="width: 60%" />
</colgroup>
<tbody>
<tr>
<td colspan="2" style="text-align: left;"><p><strong>Azure Temporary Access Pass</strong>: A Temporary Access Pass is a <strong>time-limited</strong>, one-time-use credential in Azure Active Directory (Entra ID) that enables passwordless authentication for user onboarding or account recovery.<br />
<strong>Usage</strong>: Admins generate a pass for users, who enter it during sign-in to register a FIDO2 security key or other passwordless methods, typically used during initial setup or when users lose access to their primary authentication method.<br />
<strong>Benefits</strong>: It simplifies <strong>secure onboarding</strong>, eliminates the need for temporary passwords, reduces helpdesk calls, and enhances security by enabling quick transition to passwordless authentication compared to traditional password-based recovery methods.</p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→ <strong>Old versions access</strong> →365 → Protection → Authentication Methods</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_25.webp" style="width:7.52431in;height:4.46042in" alt="{53F34424-5DEC-4FD1-B67F-9FBFF88F657D}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>The Authentication methods can be accessed from two different places viz., M365 Admin Center and Azure Portal Entra ID</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Using M365 Admin Center→Entra ID → Authentication Methods</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image107.webp" style="width:2.97778in;height:3.19167in" alt="{C5D61A3A-840A-4A11-83E0-D52EC16F6A14}" /></p></td>
<td style="text-align: left;"><p>→Using EntraID → Security → Authentication Methods</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image108.webp" style="width:2.31458in;height:3.12014in" alt="{22FED099-3C0A-46D7-9182-E903D3ECFEC9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>NOT CLEAR - NEED TO FIND A VIDEO FOR THIS</mark></p></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## MFA

|                              |
|------------------------------|
| →Multi Factor Authentication |

### Authentication methods

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><p>→Under the security we should see the MFA. This is bring global and given my access I cannot see it.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_26.webp" style="width:1.14861in;height:2.9in" alt="{C7DD5C0F-C4B4-4C13-AA38-5CD0EB4F80F6}" /></p></td>
<td><p>→We can configure Cloud MFA</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_27.webp" style="width:3.83819in;height:2.91111in" alt="{20F7E1C7-C4D9-46C8-BB4F-C9922D7935A4}" /></p>
<p>→We can define it using some 3<sup>rd</sup> parties.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_28.webp" style="width:3.85139in;height:2.68194in" alt="{343AD031-5E89-4802-9F71-135B619DF695}" /></p></td>
</tr>
<tr>
<td><p>→We can control with below verification options.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_29.webp" style="width:3.53819in;height:1.45833in" alt="{30CB8D97-EB33-4432-917B-D6606A4B6C61}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image117.webp" style="width:3.53611in;height:0.6in" alt="{A3B74691-8E2B-4341-AF79-A5DBF0DE93C7}" /></p></td>
<td></td>
</tr>
</tbody>
</table>

### Account LockOut

<table>
<colgroup>
<col style="width: 48%" />
<col style="width: 51%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Entra ID →Click Security</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image118.webp" style="width:1.58264in;height:3.56806in" alt="{F4D8DB00-7BDC-40B6-8C1E-C3A34DED0B27}" /></p></td>
<td><p>→Click Multifactor Authetnication</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image119.webp" style="width:1.46389in;height:3.41389in" alt="{179DBA6E-17B2-472C-BCCD-2A343BA1E2E5}" /></p></td>
</tr>
<tr>
<td colspan="2"><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image120.webp" style="width:6.29653in;height:3.73194in" alt="{94187ED0-8947-4B56-864B-7A295A510C83}" /></p>
<p>→This is the place where we configure for account lock configurations etc.</p>
<p>→This configuration comes handy when users have additional security interms of locking out.</p></td>
</tr>
</tbody>
</table>

### Block / Unblock Users

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can explicitely block / unblock users</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image121.webp" style="width:5.38472in;height:3.45347in" alt="{E3D9A3E7-56F0-4C91-B368-876E85B707EB}" /></p>
<p>→Assuming if a user lost their phone where authenticator app exists and for such users, we can use this configuration to ‘block users’.</p>
<p>→When we add a user we get below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image122.webp" style="width:2.75in;height:2in" alt="{25044B4E-4686-4A98-A24D-799DAF055D33}" /></p></td>
</tr>
</tbody>
</table>

###  Fraud Alert Settings

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can enable Fraud Alerts so that users will have an ability to submit fraud alerts.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image123.webp" style="width:5.20694in;height:3.36389in" alt="{717FB867-C75E-409B-BD04-CE7AA2B728D7}" /></p>
<p>→The Fraud Alert feature in Microsoft Entra ID under Security &gt; Multi-Factor Authentication (MFA) allows users to report suspicious MFA prompts, enhancing security against unauthorized access attempts.</p>
<p>→ Note: This feature is deprecated as of March 1, 2025, and replaced by the Report Suspicious Activity feature.</p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### OATH tokens -PENDING 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→This is Oath tokens. NOT COMPLETED.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image124.webp" style="width:5.18194in;height:3.25625in" alt="{D50386E0-55EA-4E39-8E6D-46F9248EB08C}" /></p>
<p><mark>MORE INFORMATION NEEDED TO UNDERSTAND THIS BETTER</mark></p></td>
</tr>
</tbody>
</table>

## Groups 

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→ These are used to simplify access management by grouping users/devices for shared resource access or permissions.</p></td>
</tr>
<tr>
<td><p>→navigate to Groups</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image125.webp" style="width:1.99583in;height:3.14653in" alt="{0473A253-B9AE-4B8F-9164-FF1C6467123A}" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image126.webp" style="width:3.85833in;height:2.37986in" alt="{610FB2A0-10E8-4922-8BD1-2947C9A53829}" /></p>
<p>→We can create new group using ‘New Group’ option.</p></td>
</tr>
<tr>
<td><p>→New Group configurations</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image127.webp" style="width:2.57292in;height:5.375in" alt="{39245605-B5EF-492C-B54B-C1C96051884C}" /></p></td>
<td><p>→Group type can be one of the below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image128.webp" style="width:3.86944in;height:1.7875in" alt="{470D808E-DACD-4526-86D9-0F5A631B3558}" /></p>
<p>→In simple lines as an example. Security Groups manage access to resources like VMs or AKS clusters, while Microsoft 365 Groups manage collaboration tools like Teams and SharePoint.</p></td>
</tr>
<tr>
<td><p>→There is a feature to add users ‘dynamically’ where based on certain critiera, whenever a user is created, they get automatically added to the group.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image129.webp" style="width:2.84375in;height:5.17708in" alt="{9BFC293B-A9E7-4C7E-9C0D-69CA1302B6E2}" /></p></td>
<td><p>→Same goes for M365 type</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image130.webp" style="width:3.80208in;height:4.57292in" alt="{292FE5BE-4206-4B3A-BA58-2CC403EF6391}" /></p></td>
</tr>
<tr>
<td><p>→Click Add ‘dynamic query’ option to add a certain query.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image131.webp" style="width:3.51667in;height:2.35556in" alt="{C3394CC9-EECA-4775-9703-5E649BE371F9}" /></p></td>
<td><p>→ Example, where job title matches Hero.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image132.webp" style="width:3.87292in;height:2.75208in" alt="{843EC2AD-F8A4-4EB1-8650-1CDC15D96EDF}" /></p></td>
</tr>
<tr>
<td><p>→This way we can control groups where users can either manually or dynamically added to it.</p>
<p>→Another advantage here is we can ‘assign’ license to a group so that we can restrict usage of certain licenses to a limited set of users only.</p></td>
<td></td>
</tr>
</tbody>
</table>

### Create a Group for AU - Required ahead

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Groups → New Group</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image133.webp" style="width:3.60278in;height:2.54167in" alt="{50D0FB21-06A3-4290-BF8A-622606DD9DE9}" /></p></td>
<td><p>→Provide group name and notice there is no owner.</p>
<p>→Add an owner</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image134.webp" style="width:2.89167in;height:4.0625in" alt="{2CDA01DD-443E-4B86-94DB-3464FA51C4D4}" /></p></td>
</tr>
<tr>
<td><p>→Select a user and click ‘Select’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image135.webp" style="width:2.76042in;height:3.18333in" alt="{149C9B71-7F66-4C2D-8C0D-6B735EED3653}" /></p></td>
<td><p>→Add a member</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image136.webp" style="width:3.77014in;height:3.27639in" alt="{A1EC96B5-9922-4FE2-B680-391CF0CD4767}" /></p></td>
</tr>
<tr>
<td><p>→Continue with ‘create’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image137.webp" style="width:3.62361in;height:5.05486in" alt="{61A0522E-FAE6-47FA-9525-A4C12141B082}" /></p></td>
<td><p>→Group is created.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image138.webp" style="width:3.76736in;height:2.92847in" alt="{8F5BF643-C74B-4870-9F61-A0E90FAE5BBD}" /></p></td>
</tr>
</tbody>
</table>

## Role(s)

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→ A role is a <strong>collection of permissions</strong></p>
<p>→ This defines what actions a user, group, or service principal can perform on resources.</p>
<p>→ Roles are part of Role-Based Access Control (RBAC).</p>
<p>→ Eg roles like "Global Administrator" (full tenant control) or "Contributor" (manage resources but not access policies).</p>
<p>→By default, most roles in Microsoft Entra ID are <strong>tenant-wide</strong>, meaning the permissions apply across the entire Azure tenant (all resources, users, or groups).</p>
<p>→However: Administrative Units (AUs) <strong><u>can scope</u></strong> roles to specific users, groups, or devices, limiting the role’s effect to only those resources within the AU. Mentioned in next section</p>
<p>→For Azure RBAC roles (e.g., applied to subscriptions or resource groups), permissions can be scoped to specific subscriptions, resource groups, or individual resources, not necessarily tenant-wide.</p>
<p>→Example: A "User Administrator" role is tenant-wide unless assigned to an AU, restricting it to specific users/devices.</p>
<p>→Similarly, a "Virtual Machine Contributor" role can be scoped to a specific resource group, not the entire tenant.</p>
<p>→In summary, roles are tenant-wide by default but can be scoped using AUs or RBAC to limit their reach.</p></td>
</tr>
<tr>
<td><p>→Default Roles and Administrators (Already mentioned above)</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image139.webp" style="width:7.51944in;height:3.51875in" alt="{A4AB2552-0063-4CE4-9ED1-AF2426E2578D}" /></p></td>
</tr>
</tbody>
</table>

## Administrative Units 

<table>
<colgroup>
<col style="width: 48%" />
<col style="width: 51%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→When we want ‘a role’ but want to just restrict to ‘subset’ of users only.</p>
<p>→In that case we use AUs.</p>
<p>→As an example two tenants’ screenshot is placed below.</p>
<p>→We can place users and groups and then grant some roles that are now at AU Level.</p>
<p>→What happens here is when we add a Group to AU, we need to explicitely add ‘users’ into the group to have enhanced security.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image140.webp" style="width:3.34514in;height:3.01944in" alt="{6ED45118-8319-4ECA-9BDD-D9C57FF782C9}" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image141.webp" style="width:2.99444in;height:2.13056in" alt="{C4578452-1B22-4DA3-A9F1-D41CA2446984}" /></p>
<p>→Click +Add</p></td>
</tr>
<tr>
<td><p>→ Provide the details</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image142.webp" style="width:2.02847in;height:3.10208in" alt="{78CC550F-BAA2-4F96-9DE8-8D45D1F02CA3}" /></p></td>
<td><p>→Select a role and assign. The list is limited.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image143.webp" style="width:3.79653in;height:1.81736in" alt="{C4EBCC39-E436-4D24-9AA3-BF63813EEF7C}" /></p>
<p>→i selected the last one ‘User Administrator’</p></td>
</tr>
<tr>
<td><p>→Review and create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image144.webp" style="width:3.56736in;height:3.15in" alt="{8962AAD0-E2F2-41D0-AA1D-FB75F8CAD3DD}" /></p></td>
<td><p>→Created</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image145.webp" style="width:3.80972in;height:1.32917in" alt="{9329064B-5DB6-400D-91A9-FB2A6DD8AED7}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image146.webp" style="width:3.80764in;height:2.39792in" alt="{D1B30D57-4BD0-482F-9217-8832EA423A7B}" /></p>
<p>→Created au-of-architects. Click the same now to add the group.</p></td>
</tr>
<tr>
<td><p>→Navigate to Groups and click +Add, where we can add the group itself.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image147.webp" style="width:3.57917in;height:2.45694in" alt="{9CEE16E5-66BC-4C12-A239-B3A65008A9C7}" /></p></td>
<td><p>→Select the group.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image148.webp" style="width:3.81111in;height:3.61736in" alt="{6EA69C12-5910-4EF7-9780-21EF095F7916}" /></p></td>
</tr>
<tr>
<td><p>→After sometime this gets added. Click the same</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image149.webp" style="width:3.58333in;height:2.22292in" alt="{CB275375-9F23-464C-8D62-E9D29F2C463D}" /></p></td>
<td><p>→Notice there are NO users in this.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image150.webp" style="width:3.80833in;height:1.77986in" alt="{DCCAC6F8-1EBF-44C4-AFA9-6118520957D5}" /></p></td>
</tr>
</tbody>
</table>

## Comparision between AU and Groups

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><table style="width:98%;">
<colgroup>
<col style="width: 17%" />
<col style="width: 39%" />
<col style="width: 41%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Aspect</strong></th>
<th style="text-align: center;"><strong>Administrative Unit (AU)</strong></th>
<th style="text-align: center;"><strong>Group</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Purpose</td>
<td style="text-align: left;">Delegate admin control over scoped resources</td>
<td style="text-align: left;">Manage access to resources (apps, files)</td>
</tr>
<tr>
<td style="text-align: left;">Membership</td>
<td style="text-align: left;">Users/devices assigned manually</td>
<td style="text-align: left;">Users/devices assigned manually or dynamically</td>
</tr>
<tr>
<td style="text-align: left;">Scope Control</td>
<td style="text-align: left;">Yes – used to scope admin roles</td>
<td style="text-align: left;">No – global for tenant</td>
</tr>
<tr>
<td style="text-align: left;">Role Assignment</td>
<td style="text-align: left;">Can assign roles scoped to AU</td>
<td style="text-align: left;">Cannot assign roles to group directly</td>
</tr>
<tr>
<td style="text-align: left;">Used For</td>
<td style="text-align: left;">Delegated administration</td>
<td style="text-align: left;">Access management, licensing, emails</td>
</tr>
<tr>
<td style="text-align: left;">Visibility</td>
<td style="text-align: left;">Invisible to end-users</td>
<td style="text-align: left;">Visible (in Outlook, Teams, etc.)</td>
</tr>
<tr>
<td style="text-align: left;">Nested Membership</td>
<td style="text-align: left;">Not supported</td>
<td style="text-align: left;">Supported in security groups</td>
</tr>
<tr>
<td style="text-align: left;">Licensing Impact</td>
<td style="text-align: left;">Does not directly assign licenses</td>
<td style="text-align: left;">Can assign licenses via group-based licensing</td>
</tr>
<tr>
<td style="text-align: left;">Example Use Case</td>
<td style="text-align: left;">Regional admin managing only local users</td>
<td style="text-align: left;">Giving SharePoint access to a project team</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

## Authorization - Conditional Access Policy 

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→CAP, is granting a user certain permissions or authorize to access certain resources based on certain conditions.</p>
<p>→This need to have P2 license for the company.</p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_30.webp" style="width:3.41944in;height:3.2in" alt="{117B0BE1-A002-4E96-B093-FD561F0F2F26}" /></p></td>
<td><p>→Create new policy</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_31.webp" style="width:3.95556in;height:2.28819in" alt="{E7E2BC2C-2382-4CC4-99DD-0BB5B952607F}" /></p>
<p>→We can start using the ‘template’ or directly create a policy.</p></td>
</tr>
<tr>
<td><p>→Here we can add users, which has again multiple options as shown next.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_32.webp" style="width:3.43542in;height:5.93403in" alt="{FE2CF36E-B138-44C8-B2E8-44D8ECDBA234}" /></p></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### Configure Users or Cloud Apps 

<table>
<colgroup>
<col style="width: 52%" />
<col style="width: 47%" />
</colgroup>
<tbody>
<tr>
<td><p>→Here we can define granuar access. Important feture here is ‘exclude’, where a policy does not lock the main user itself.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_33.webp" style="width:3.95903in;height:4.53056in" alt="{9934CF6D-F12D-49B0-A82F-0749E10C962A}" /></p></td>
<td><p>→We can add a particular ‘app’ as well instead of a user. These applications could be built on azure portal or external application or microsoft application etc.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image160.webp" style="width:3.43681in;height:3.99722in" alt="{4F1DC3E4-1D82-4F5B-9CBE-C88225CEDE49}" /></p></td>
</tr>
<tr>
<td><p>→Options to select</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image161.webp" style="width:3.97778in;height:4.14375in" alt="{4F68FED8-E0B1-4B1F-9D29-7813573B8863}" /></p></td>
<td></td>
</tr>
</tbody>
</table>

### Configure Conditions \| User Risk \| Sign-in risk \| etc

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><p>→Select ‘0 conditions selected’ that opens up various types.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image162.webp" style="width:3.52431in;height:3.9in" alt="{E2901421-48BB-46F3-9F7E-AD2B94C69008}" /></p></td>
<td><p>→Eg. User risk has below possibilities.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image163.webp" style="width:3.25in;height:3.13542in" alt="{E87C4AD3-74F0-4457-A265-98852D34678D}" /></p></td>
</tr>
<tr>
<td><p>→sign-in Risk</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image164.webp" style="width:2.80208in;height:3.90625in" alt="{597D936A-5093-43A8-B715-0AD792B2FA10}" /></p></td>
<td><p>→Device risk</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image165.webp" style="width:1.92847in;height:3.57222in" alt="{8E769F3D-81B1-43D6-8328-EACEEABA2D92}" /></p></td>
</tr>
<tr>
<td><p>→Locations</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image166.webp" style="width:3.53958in;height:1.88542in" alt="{B03BB386-367A-4532-B1F3-C0729EE3A2C6}" /></p></td>
<td></td>
</tr>
</tbody>
</table>

### Finally Grant/Block based on matched condition

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_34.webp" style="width:5.50347in;height:4.67778in" /> |
|  |

### Configure Locations - Required in conditions configuration

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image171.webp" style="width:7.53056in;height:2.36875in" alt="{5F301FB3-4669-4DE0-AA97-8F18CEFA236F}" /> |

### Terms of Usage - PDF driven - Read and Proceed

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image172.webp" style="width:6.10417in;height:3.06042in" alt="{309918CB-D086-40F4-875E-8CD557789332}" /> |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

# Securing AKS

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→AKS is managed cluster, meaning control plane is completely handled by Azure</p>
<p>→Agent nodes gets loaded onto customer’s VNET.</p>
<p>→These Agent Nodes will have ‘private’ endpoints/IP.</p>
<p>→By default API server is ‘privately’ exposed, and this is supposed to be disabled.</p></td>
</tr>
<tr>
<td><p>→Reference Architecture</p>
<p><a href="https://github.com/mspnp/aks-baseline">https://github.com/mspnp/aks-baseline</a></p></td>
</tr>
</tbody>
</table>

## Create Private Cluster

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→When we are creating an AKS cluster ensure it is mentioned as ‘private’.</p>
<p>→What is going to happen is, there will be a private link that gets created which connects to agent nodes.</p>
<p>→There will be no public endpoint that will be exposed.</p>
<p>→We will need a bastion server to connect to these endpoints.</p>
<p>→</p></td>
</tr>
<tr>
<td><p>→Create with advanced networking</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image173.webp" style="width:2.88958in;height:1.28681in" alt="{65A60C50-803B-456B-80ED-92AC5DB49ED0}" /></p></td>
<td><p>→Create with basic networking</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image174.webp" style="width:3.95069in;height:1.11111in" alt="{C3AAC85D-858D-4D63-A171-1BA0D47E2574}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→ Limitations</p>
<p>→There's no support for Azure DevOps Microsoft-hosted Agents with private clusters. Consider using self-hosted agents.</p>
<p>→If you need to enable Azure Container Registry to work with a private AKS cluster, set up a private link for the container registry in the cluster virtual network or set up peering between.</p></td>
</tr>
<tr>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## Disable Local Accounts 

<table style="width:99%;">
<colgroup>
<col style="width: 51%" />
<col style="width: 48%" />
</colgroup>
<tbody>
<tr>
<td><p>→While creating an AKS, we get option to choose the RBAC</p>
<p>→It is recommended to use Microsoft Entra RBAC</p>
<p>→This way every access to Kubernetes becomes auditable and no backdoor entry is permitted.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image175.webp" style="width:3.59375in;height:1.48958in" alt="{41C825C6-A775-4359-9BEC-CDC4CC7DBEAD}" /></p></td>
</tr>
</tbody>
</table>

## Use Recommended Alerts

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Turn on this feature for AKS, where we can enable disable various built-in rules.</p>
<p>→ Notice the rules that are available out of the box.</p>
<p>→There is option called ‘Recommended alerts’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image176.webp" style="width:7.53819in;height:3.60347in" alt="{9BA3FB57-FC2A-4750-9A17-1C94E94B139A}" /></p>
<p>→Below are the options that we get</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image177.webp" style="width:7.52569in;height:2.53611in" alt="{DEC0CB11-02D7-4AC4-8E97-3ACCAA19CC84}" /></p></td>
</tr>
</tbody>
</table>

## Use Azure Monitoring for Container Insights

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<tbody>
<tr>
<td><p>→When we create the AKS, we integrate it with Azure Monitor.</p>
<p>→Notice on the right side, where while creating the cluster we need to enable it.</p>
<p>→In order to achieve it we need certain other services like Log Analytics Workspace that can visualize or capture the logs</p>
<p>→Further, these can be visualized further by using Prometheus and Grafana.</p>
<p>→ When enabled we can go to Insights and filter around and check</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image178.webp" style="width:3.46597in;height:2.08333in" alt="{004DBBA0-EE8B-4714-A71C-AE8BA039FDDC}" /></p>
<p>→We can see live logs of the application as well, if the application is writing if any.</p>
<p>→Eg. Below container upon clicking we see additional tabs, where we see live logs tab</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image179.webp" style="width:3.46597in;height:1.34653in" alt="{6201F490-BA18-446F-93F2-66C30C4E1144}" /></p>
<p>→When application is accessed we can see the logs</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image180.webp" style="width:3.475in;height:1.72361in" alt="{20A13488-4B9E-416B-B5A6-88A37274F051}" /></p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image181.webp" style="width:3.43819in;height:4.15556in" alt="{9EBA914A-8BFE-40CC-B8E1-19259A97CE40}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image182.webp" style="width:3.06042in;height:2.49931in" alt="{5DC0FE81-AE97-4333-82A9-57CB85BCD396}" /></p></td>
</tr>
</tbody>
</table>

## Use Diagonostic Settings - Export Platform logs

<table style="width:99%;">
<colgroup>
<col style="width: 35%" />
<col style="width: 64%" />
</colgroup>
<tbody>
<tr>
<td><p>→This feature can be used to export any platform logs as streams.</p>
<p>→In order to have this worked we need to add the settings, where various possibilities exist as below.</p></td>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image183.webp" style="width:3.12847in;height:1.97847in" alt="{E6898B15-2B58-4D45-B297-CC9AEBAE6D68}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image184.webp" style="width:3.02778in;height:1.6125in" alt="{362C2713-60AB-40D2-8A1D-A539F4AD4C2F}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→When we try to configure we get below, where the control plane logs can be shipped to different destinations.</p>
<p>→These logs become key while troubleshooting the platform itself, while dealing with Microsoft Support.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image185.webp" style="width:7.52431in;height:2.44931in" alt="{545CC3AC-E4B4-4266-9ABA-7C5DFAC4A53B}" /></p></td>
</tr>
</tbody>
</table>

## Azure defender for Containers

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can use this option</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image186.webp" style="width:4.93264in;height:3.575in" alt="{182984E2-4D4E-4FBB-A461-410941E1E408}" /></p></td>
</tr>
<tr>
<td><p>→This is the Azure Defender for Cloud Overiew page</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image187.webp" style="width:7.525in;height:3.95486in" alt="{DAADB28F-EBF7-4A5A-91FF-D57B07F6D2EB}" /></p></td>
</tr>
<tr>
<td><p>→Before we start using we need to enable the plan first.</p>
<p>→By default the plan is disabled and we need to enable it.</p>
<p>→We need to navigate to ‘Defender Plans’ to enable it.</p>
<p>→Notice below is the place where we enable for various components.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image188.webp" style="width:7.52153in;height:4.02569in" alt="{C490BF89-7908-4A1B-970F-E547B1C619F2}" /></p></td>
</tr>
<tr>
<td><p>→What it does upon enabling is, it assess the ‘policies and initiatives’ that are in place with actual kubernetes environment.</p>
<p>→Subsequently it generates kind of recommendations when it finds any drift on misconfigurations.</p>
<p>→Eg. RBAC should be enabled in the cluster, vulnerabilities assesment etc.</p>
<p>→This also scans images that are stored in the ACR, where it pull image from ACR and runs in an isolated sandbox.</p>
<p>→Even it can pull ‘running images’ on weekly or some-timely basis.</p>
<p>→For this to happen, it is important a ‘demon set’ must be running.</p>
<p>→</p></td>
</tr>
<tr>
<td><p>→this can be done for multi-cloud as well</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image189.webp" style="width:7.53819in;height:3.6125in" alt="{930621C6-8475-4AB9-80FF-7220E61ECA9C}" /></p></td>
</tr>
<tr>
<td><p>→Once it starts scanning it gives recommendation that can be seen in the same place as below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image190.webp" style="width:7.53889in;height:3.31944in" alt="{6EACF72E-8809-42A6-934F-767F610B8DD0}" /></p></td>
</tr>
<tr>
<td><p>→This monitors Kubernetes API operations so that any suscipicious activity is flagged.</p>
<p>→ it also collects API logs over the azure backbone, under the hood. It also analyzes them.</p>
<p>→</p></td>
</tr>
</tbody>
</table>

## Azure Policy 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Use this as add-on by adding a policy and attach to various components.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image191.webp" style="width:7.67639in;height:3.25486in" /></p></td>
</tr>
<tr>
<td><p>→Once a policy is created, we attach it appropriately</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image192.webp" style="width:7.68264in;height:3.22014in" alt="{3CF51CCF-58F9-4229-BC60-C154114EF228}" /></p></td>
</tr>
</tbody>
</table>

## POD Security 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→There are two aspects to the POD security.</p>
<p>→One is to have the docker file with a non-root user.</p>
<p>→Second is to have the deployment.yaml file having a ‘security-context’.</p></td>
</tr>
</tbody>
</table>

### Insecure Docker File 

<table>
<colgroup>
<col style="width: 45%" />
<col style="width: 54%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→First aspect is the docker file having a non-root user.</p></td>
</tr>
<tr>
<td><p>→This docker file that is <mark>INSECURED</mark></p>
<p># Use the official OpenJDK Alpine image for Java 17</p>
<p>FROM eclipse-temurin:17.0.8.1_1-jdk-alpine</p>
<p>EXPOSE 8080 443 8778 9779</p>
<p>RUN apk --no-cache add curl</p>
<p>HEALTHCHECK --interval=45s --timeout=15s CMD curl -k --fail https://localhost:8080/actuator/health || exit 1</p>
<p>ENV JAVA_OPTS=""</p>
<p>ARG JAR_FILE=./target/*.jar</p>
<p>COPY ${JAR_FILE} /usr/app.jar</p>
<p>WORKDIR /usr/</p>
<p>ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /usr/app.jar"]</p></td>
<td><p>→ This Docker file is <mark>SECURED</mark></p>
<p># Use the official OpenJDK Alpine image for Java 17</p>
<p>FROM eclipse-temurin:17.0.8.1_1-jdk-alpine</p>
<p>EXPOSE 8080 443 8778 9779</p>
<p>RUN apk --no-cache add curl &amp;&amp; \</p>
<p>    addgroup -g 1000 -S piuser &amp;&amp; adduser -u 1000 -S piuser -G piuser &amp;&amp; \</p>
<p>    chown -R piuser:piuser /usr/</p>
<p>USER piuser</p>
<p>HEALTHCHECK --interval=45s --timeout=15s CMD curl -k --fail https://localhost:8080/actuator/health || exit 1</p>
<p>ENV JAVA_OPTS=""</p>
<p>ARG JAR_FILE=./target/*.jar</p>
<p>COPY ${JAR_FILE} /usr/app.jar</p>
<p>WORKDIR /usr/</p>
<p>ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /usr/app.jar"]</p></td>
</tr>
</tbody>
</table>

#### First running docker image on local docker - UNSECURED

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Let us see how this behaves in two places and what can it do</p>
<p>→this is the image that is currently in local desktop docker</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image193.webp" style="width:7.52083in;height:0.44167in" alt="{8774E655-6A9E-447C-9BFF-45013E4A9839}" /></p>
<p>→Notice below the container is also running.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image194.webp" style="width:7.52153in;height:0.83958in" alt="{47BBEA53-CE31-4DD2-9169-B5E766ACAC36}" /></p></td>
</tr>
<tr>
<td><p>→Run this command see what result we get.</p>
<p>→Notice the user we gotten, the container runs as root, which is insecure as it grants full privileges to potential attackers.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image195.webp" style="width:4.39583in;height:0.8125in" alt="{AA99B4A9-CFEF-48B0-B764-C7E335A005BC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create some malicious file. Demonstrates that a process inside the container can create unauthorized files due to lack of user restrictions.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image196.webp" style="width:6.23958in;height:1.98958in" alt="{B230E842-9703-4510-A697-B77B31CFD8A4}" /></p></td>
</tr>
<tr>
<td><p>→Now that this has root access notice below we executed a run command that pull an image called busy box.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image197.webp" style="width:6.44792in;height:5.75in" alt="{8AB3DFAA-6BED-46CA-A541-46E6C658C211}" /></p>
<p>The command executed successfully. It:</p>
<p>Pulled the busybox image.</p>
<p>Mounted your host's C:\ drive to /host inside the container.</p>
<p>Listed the contents of C:\ via ls /host.</p>
<p>The Permission denied errors for DumpStack.log.tmp, hiberfil.sys, etc., are normal — they are protected system files. The rest of the directories (like Program Files, Users, etc.) show that the host filesystem was accessed correctly.</p>
<p>→Notice the image also pulled.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image198.webp" style="width:7.53125in;height:0.72361in" alt="{7701F4DE-C8D5-4BA5-A70F-30D8EF912A0F}" /></p>
<p>→I am trying to install a curl because now I have root permission. Instead of curl I could install anything else as well.</p>
<p>→Allows installation of unauthorized software inside the container, possible due to root access.</p>
<p>→Command : docker exec -it romantic_haibt bash -c "dnf install -y curl --allowerasing"</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image199.webp" style="width:7.52292in;height:2.78681in" alt="{140C7A78-4EF8-467B-914B-91FC24C92697}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image200.webp" style="width:7.54028in;height:0.72569in" alt="{240AFF27-E02D-4561-956A-89DD7EB70436}" /></p></td>
</tr>
<tr>
<td><p>→Check the capabilities associated with the container.</p>
<p>→Command : docker exec romantic_haibt capsh --print</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image201.webp" style="width:7.5375in;height:1.42917in" alt="{91D3FA50-BF7B-4B87-896F-E7AF217F1272}" /></p>
<ul>
<li><p>This means the container does NOT have dangerous capabilities like SYS_ADMIN, NET_ADMIN, SYS_PTRACE, etc. — which is safer than giving it full privileges.</p></li>
<li><p>If your goal is to test vulnerabilities by adding risky capabilities, you must restart the container with those capabilities explicitly added.</p></li>
<li><p>This means the container does NOT have dangerous capabilities like SYS_ADMIN, NET_ADMIN, SYS_PTRACE, etc. — which is safer than giving it full privileges.</p></li>
<li><p>If your goal is to test vulnerabilities by adding risky capabilities, you must restart the container with those capabilities explicitly added.</p></li>
</ul></td>
</tr>
</tbody>
</table>

#### Second running docker image on K8

|  |
|----|
| <span class="mark">HERE HERE HER HERE RHEH GET THE IMAGE ON KUBERNETES. AND TEST VULNERABILITIES</span> |

## Logical Security - Namespace Isolations and RBAC

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><ul>
<li><p>Kubernetes namespaces function similarly to Azure Resource Groups.</p></li>
<li><p>These namespaces enable a granular approach to permissions and access control.</p></li>
<li><p>By assigning specific permissions to different namespaces, administrators can control which user groups have the authority to manage the resources within each namespace.</p></li>
<li><p>This approach not only enhances security but also helps in maintaining order and operational efficiency within the cluster.</p></li>
<li><p>Divide the namespaces into two broad categories.</p>
<ul>
<li><p>Shared Resources: Here common applications required for other applications are hosted, particularly ‘kubernetes resources’, eg. Ingress controllers, Istio, Monitoring tools (Eg. Prometheus, grafana), etc.</p></li>
<li><p>Application Specific: These are now application specific namespaces.</p></li>
</ul></li>
</ul></td>
</tr>
<tr>
<td><p>→Once the Namespace is created, we can now create a dedicated RBAC role either at <mark>K8 native</mark> or <mark>Azure leve</mark>l.</p>
<p>→As a security it is always better to have Azure rather than native K8.</p></td>
</tr>
<tr>
<td><p>→Below is a sample for <mark>K8 native Role</mark></p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>kind: Role</p>
<p>metadata:</p>
<p>  name: developer-role-project-alpha</p>
<p>  namespace: project-alpha</p>
<p>rules:</p>
<p>- apiGroups: [""]</p>
<p>  resources: ["pods", "pods/exec", "secrets", "services", "persistentvolumeclaims"]</p>
<p>  verbs: ["create", "delete", "get", "list", "patch", "update", "watch"]</p>
<p>- apiGroups: ["apps"]</p>
<p>  resources: ["deployments", "daemonsets", "replicasets", "statefulsets"]</p>
<p>  verbs: ["create", "delete", "get", "list", "patch", "update", "watch"]</p>
<p>- apiGroups: ["batch"]</p>
<p>  resources: ["cronjobs", "jobs"]</p>
<p>  verbs: ["create", "delete", "get", "list", "patch", "update", "watch"]</p>
<p>→Apply</p>
<p>  kubectl apply -f developer-role-project-alpha.yaml</p>
<p>→Below is the sample for role binding to a specific group.</p>
<p>  kind: RoleBinding</p>
<p>apiVersion: rbac.authorization.k8s.io/v1</p>
<p>metadata:</p>
<p>  name: developer-role-project-alpha-access</p>
<p>  namespace: project-alpha</p>
<p>roleRef:</p>
<p>  apiGroup: rbac.authorization.k8s.io</p>
<p>  kind: Role</p>
<p>  name: developer-role-project-alpha</p>
<p>subjects:</p>
<p>- kind: Group</p>
<p>  namespace: project-alpha</p>
<p>  name: groupObjectId</p></td>
</tr>
<tr>
<td><p>→Key points to remember</p>
<p>→Disable local accounts</p>
<p>→Have the cluster on private mode.</p>
<p>→use deployment pipelines to create clusters</p></td>
</tr>
</tbody>
</table>

## Network security policies for Namespace Isolation 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→By default, all Pods deployed within a Kubernetes cluster can communicate with each other.</p>
<p>→This implies that if a Pod is compromised by a hacker, the hacker could scan all the Pods hosted in the AKS cluster in search of vulnerable Pods to compromise.</p>
<p>→To prevent such lateral movement attacks, it is essential to create <mark>Calico network</mark> policies that restrict unauthorized network communication within each namespace.</p>
<p>→Opt for Calico network policies over Azure network policies because they <a href="https://learn.microsoft.com/en-us/azure/aks/use-network-policies#network-policy-options-in-aks">offer greater customization and flexibility.</a></p></td>
</tr>
<tr>
<td><p>→This is a snippet of networking option where we can define the networking policy.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image202.webp" style="width:5.13542in;height:6.30903in" alt="{A4BDE937-14B8-499E-966A-7D7F7E28CBE0}" /></p></td>
</tr>
<tr>
<td><p>→Calico network policies allow inter-pod communication by defining specific rules.</p>
<p>→These rules permit traffic between pods based on labels, namespaces, or other criteria.</p></td>
</tr>
</tbody>
</table>

## Resource Quotas on Namespaces

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Resource Quotas allow you to set limits on the amount of CPU and memory for a NAMESPACE.</p>
<p>→This prevents a a project team from deploying resource-intensive Pods.</p>
<p>→Prevents monopolizing the cluster’s resources and allowing legitimate applications to run.</p></td>
</tr>
<tr>
<td><p>→Example as below</p>
<p>apiVersion: v1</p>
<p>kind: ResourceQuota</p>
<p>metadata:</p>
<p>  name: quota-project-alpha</p>
<p>  namespace: project-alpha</p>
<p>spec:</p>
<p>  hard:</p>
<p>    requests.cpu: "4"</p>
<p>    requests.memory: 8Gi</p>
<p>    limits.cpu: "6"</p>
<p>    limits.memory: 16Gi</p></td>
</tr>
</tbody>
</table>

## Taining a node

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ <strong>Problem</strong>: Some applications require specific VM configurations, and running them on shared nodes may lead to resource contention or suboptimal performance.</p>
<p>→<strong>Solution</strong>: Use dedicated node pools in AKS tailored to the application’s needs, configured with specific VM sizes, OS, or hardware.</p>
<p>→ <strong>Security Enhancement</strong>: Dedicated node pools isolate workloads, reducing the risk of cross-application interference or vulnerabilities spreading between pods on shared nodes.</p></td>
</tr>
<tr>
<td><p>→<strong>How</strong>: We create additional worker nodes in AKS as a dedicated node pool and use a <strong>nodeSelector</strong> or <strong>taints</strong> and <strong>tolerations</strong> in your application’s YAML to ensure it runs on those specific nodes.</p></td>
</tr>
<tr>
<td><p>→Below is an example on portal to create nodepools appropriately.</p>
<p>→ Notice here we can see two pools viz., ‘agentpool = system’ and ‘userpool=User’.</p>
<p>→First one basically is for application that are managed by Kubernetes itself so that it has a dedicated space.</p>
<p>→Second one is for other applications deployed by user so that there is no noisy-neighbour issue.</p>
<p>→We can create as many as we need and assign Mode=User.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image203.webp" style="width:7.52917in;height:4.18611in" alt="{101F2DAA-B4C1-4464-8A8D-5946596114BE}" /></p></td>
</tr>
<tr>
<td><p>→Suppose we have below nodes and first thing we do is label them so that a pod can be tainted.</p>
<p>→note that all these are WORKER nodes as in Managed Kubernetes, we never get to see the Control Plane nodes.</p>
<p>kubectl get no</p>
<p>NAME                                 STATUS   ROLES   AGE   VERSION</p>
<p>aks-agentpool-39389792-vmss000003    Ready    agent   30d   v1.25.15</p>
<p>aks-agentpool-39389792-vmss000008    Ready    agent   30d   v1.25.15</p>
<p>aks-agentpool-39389792-vmss00000d    Ready    agent   30d   v1.25.15</p>
<p>aks-zendevpool-29071311-vmss000000   Ready    agent   18d   v1.25.15</p>
<p>aks-zendevpool-29071311-vmss000001   Ready    agent   18d   v1.25.15</p></td>
</tr>
<tr>
<td><p>→ Label the node</p>
<p># Label the nodes in the dedicated node pool</p>
<p>kubectl label nodes aks-zendevpool-29071311-vmss000001  app=payment-handler-app</p></td>
</tr>
<tr>
<td><p>→Apply</p>
<p># Apply a taint to the nodes (optional)</p>
<p>kubectl taint nodes aks-zendevpool-29071311-vmss000001 app=payment-handler-app:NoSchedule</p></td>
</tr>
<tr>
<td><p>→Below is a sample deployment yaml that says ‘nodeSelector</p>
<p>apiVersion: apps/v1</p>
<p>kind: Deployment</p>
<p>metadata:</p>
<p>  name: my-app-deployment</p>
<p>  namespace: project-alpha</p>
<p>spec:</p>
<p>  replicas: 3  # Adjust the number of replicas as needed</p>
<p>  selector:</p>
<p>    matchLabels:</p>
<p>      app: my-app</p>
<p>  template:</p>
<p>    metadata:</p>
<p> =     labels:</p>
<p>        app: my-app</p>
<p>    spec:</p>
<p>      containers:</p>
<p>      - name: my-app</p>
<p>        image: nginx</p>
<p>      nodeSelector:</p>
<p>        app: payment-handler-app</p>
<p>      tolerations:</p>
<p>      - key: "app"</p>
<p>        operator: "Equal"</p>
<p>        value: "payment-handler-app"</p>
<p>        effect: "NoSchedule"</p></td>
</tr>
<tr>
<td><p>→NOW THERE IS A PROBLEM: Given that nothing can prevent another project team to deploy their application on the node with the taint “project-alpha-dedicated-node” it is necessary to implement a custom Admission Controller Like OPA Gatekeeper or use custom Azure Policy for Kubernetes that checks the namespace of the deployment.<a href="https://www.redhat.com/en/blog/better-kubernetes-security-with-open-policy-agent-opa-part-2"> If the toleration selector is for the “project-alpha-dedicated-nodes” taint and the namespace is not the one allowed, the controller can reject the request.</a></p></td>
</tr>
</tbody>
</table>

## Admission Controller 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Admission controllers are Kubernetes plugins that intercept and validate or modify requests to the API server before they are processed, enforcing policies like resource limits or security rules.</p></td>
</tr>
<tr>
<td><p>→For example below is a sample that is dangerous one</p>
<p>apiVersion: v1</p>
<p>kind: Pod</p>
<p>metadata:</p>
<p>  name: everything-allowed-exec-pod</p>
<p>  labels:</p>
<p>    app: pentest</p>
<p>spec:</p>
<p>  hostNetwork: true</p>
<p>  hostPID: true</p>
<p>  hostIPC: true</p>
<p>  containers:</p>
<p>  - name: everything-allowed-pod</p>
<p>    image: ubuntu</p>
<p>    securityContext:</p>
<p>      privileged: true</p>
<p>    volumeMounts:</p>
<p>    - mountPath: /host</p>
<p>      name: noderoot</p>
<p>    command: [ "/bin/sh", "-c", "--" ]</p>
<p>    args: [ "while true; do sleep 30; done;" ]</p>
<p>  #nodeName: k8s-control-plane-node # Force your pod to run on the control-plane node by uncommenting this line and changing to a control-plane node name</p>
<p>  volumes:</p>
<p>  - name: noderoot</p>
<p>    hostPath:</p>
<p>      path: /</p>
<p>→ This POD can</p>
<p>→Access <strong>Host Network</strong> (hostNetwork: true): The pod uses the host's network namespace, allowing it to access all network interfaces and services on the node, potentially intercepting or manipulating network traffic.</p>
<p>→Access <strong>Host Processes</strong> (hostPID: true): The pod can see and interact with all processes on the host, enabling it to kill critical system processes or inject malicious code.</p>
<p>→Access <strong>Host IPC</strong> (hostIPC: true): The pod shares the host's Inter-Process Communication namespace, allowing it to interfere with or access sensitive data in other processes' memory.</p>
<p>→Run as <strong>Privileged</strong> (privileged: true): The pod has unrestricted access to the host’s resources, bypassing container isolation to execute arbitrary commands with root-level permissions.</p>
<p>→Access <strong>Host Filesystem</strong> (hostPath: /): The pod mounts the host’s entire root filesystem, enabling it to read, modify, or delete critical system files, potentially compromising the node or cluster.</p></td>
</tr>
<tr>
<td><p>→HOW TO PREVENT</p>
<p>→To prevent dangerous pod configurations in AKS, implement admission controllers.</p>
<p>→These are like PodSecurity or ValidatingWebhook.</p>
<p>→They will enforce strict security policies, rejecting pods with settings like hostNetwork, hostPID, hostIPC, or privileged: true.</p>
<p>→Additionally combine with</p>
<blockquote>
<p>→ Calico network policies to restrict inter-pod communication</p>
<p>→ RBAC to limit user permissions.</p>
<p>→ Use dedicated node pools with taints and tolerations to isolate critical workloads, enhancing cluster security.</p>
</blockquote></td>
</tr>
<tr>
<td><p>→ Additional Azure Kubernetes Policies that can be supplimented.</p>
<p>→ Approved User and Group IDs:</p>
<blockquote>
<p>restricting pods to non-root users (e.g., using securityContext.runAsNonRoot: true) prevents hackers from gaining root access within containers.</p>
</blockquote>
<p>→No Privilege Escalation:</p>
<blockquote>
<p>setting allowPrivilegeEscalation: false in securityContext blocks users from escalating to root within a container, reducing risk.</p>
</blockquote>
<p>→No Privileged Containers:</p>
<blockquote>
<p>disabling privileged: true prevents containers from accessing host resources, protecting the cluster from compromise.</p>
</blockquote>
<p>→Allowed Images Only:</p>
<blockquote>
<p>restricting container images to a trusted Azure Container Registry (e.g., via ImagePolicyWebhook) ensures only verified images are used.</p>
</blockquote>
<p>→No Host PID/IPC Sharing:</p>
<blockquote>
<p>disabling hostPID and hostIPC prevents containers from accessing host processes or memory, reducing cluster compromise risks.</p>
</blockquote>
<p>→Restricted HostPath Volumes:</p>
<blockquote>
<p>limiting hostPath mounts to specific, approved paths prevents unauthorized access to the host filesystem.</p>
</blockquote>
<p>→ Approved Host Network/Ports:</p>
<blockquote>
<p>restricting hostNetwork: true and defining allowed port ranges via network policies (e.g., Calico) prevents unauthorized network access.</p>
</blockquote>
<p>→No ContainerAdministrator for Windows:</p>
<blockquote>
<p>preventing Windows containers from running as ContainerAdministrator limits administrative access within containers.</p>
</blockquote>
<p>→Allowed Capabilities Only:</p>
<blockquote>
<p>restricting Linux capabilities (e.g., removing NET_RAW) reduces the attack surface, preventing attacks like ARP/DNS spoofing.</p>
</blockquote>
<p>→Read-Only Root Filesystem:</p>
<blockquote>
<p>setting readOnlyRootFilesystem: true prevents file modifications in containers, protecting data and security features.</p>
</blockquote>
<p>→Disable Automounting API Credentials:</p>
<blockquote>
<p>disabling automatic mounting of service account tokens (e.g., automountServiceAccountToken: <removed> prevents unauthorized cluster management via compromised pods.</p>
</blockquote>
<p>→AKS Private Clusters:</p>
<blockquote>
<p>enabling private clusters ensures the AKS API server is not exposed to the public internet, reducing attack vectors.</p>
</blockquote>
<p>→ Microsoft Entra ID Integration:</p>
<blockquote>
<p>integrating AKS with Microsoft Entra ID enhances authentication, monitoring, and access control.</p>
</blockquote>
<p>→Disable Local Authentication:</p>
<blockquote>
<p>disabling local authentication ensures only Entra ID-based access, improving security and auditability.</p>
</blockquote></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

## Deploy Private Endpoints

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Assuming we have multiple Azure services in use, eg. AKV, Storage Account etc, then we need to use ‘private-endpoints’ to access them from AKS.</p>
<p>→</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image204.webp" style="width:6.15278in;height:5.89931in" alt="{76A4682C-07AC-471F-A622-21A6CA761ECB}" /></p></td>
</tr>
<tr>
<td><p><a href="https://techcommunity.microsoft.com/blog/coreinfrastructureandsecurityblog/private-aks-and-acr-using-private-endpoint-%E2%80%93-part-22/3122281">https://techcommunity.microsoft.com/blog/coreinfrastructureandsecurityblog/private-aks-and-acr-using-private-endpoint-%E2%80%93-part-22/3122281</a></p></td>
</tr>
</tbody>
</table>

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

# Register a Domain 

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image205.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image206.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image207.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image208.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image209.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image210.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image211.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image212.webp" style="width:7.6875in;height:4.80486in" alt="A screenshot of a computer AI-generated content may be incorrect." /> |

## xxxx

|     |
|-----|
|     |

# Sentinel 

|     |
|-----|
|     |

## Pillars

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image213.webp" style="width:7.52153in;height:2.39167in" alt="{4EFE66DF-E0AE-434F-86E6-73CB254042C3}" /> |

### Collect 

<table>
<colgroup>
<col style="width: 73%" />
<col style="width: 26%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image214.webp" style="width:5.36875in;height:3.90347in" alt="{AFA5BF46-A27E-415B-B6F5-2FF3D418BF6E}" /></p></td>
<td><p>Collect:</p>
<p>→This means collecting information / logs from various places.</p>
<p>→We can collect from various places using connectors as below.</p></td>
</tr>
</tbody>
</table>

### Detect

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→It has two parts Anlaytics and Hunting</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_35.webp" style="width:4.68542in;height:3.43542in" alt="{7A003111-C1DB-4D5E-908D-A0C1E85E6803}" /></p></td>
</tr>
<tr>
<td><p>→Hunting</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image217.webp" style="width:5.35417in;height:2.67986in" alt="{A212D8FA-6A39-42B1-B6FF-5A44CB9A087D}" /></p></td>
</tr>
</tbody>
</table>

### Investigate 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Next step</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image218.webp" style="width:5.25139in;height:2.85208in" alt="{F5DEDA82-0D39-45FC-9B7A-0E3BB674E1E8}" /></p></td>
</tr>
</tbody>
</table>

### Respond

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image219.webp" style="width:5.89167in;height:4.15486in" alt="{93382CBA-17D8-4D05-94EB-3989805E03E3}" /> |
| →Respond is done using the Automation |

## Log Analytics WorkSpace - Create New 

|  |
|----|
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image220.webp" style="width:6.66667in;height:2in" alt="IMG_256" /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image221.webp" style="width:3.61597in;height:5.02222in" alt="{E5052B70-D81A-4A40-9AB1-EDA0672F9D67}" /> |
| <img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image222.webp" style="width:7.525in;height:3.09931in" alt="{4380D6EA-0864-4B9A-8448-2AD7257BD078}" /> |

## Sentinel - Create new 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image223.webp" style="width:7.51806in;height:3.74792in" alt="{8D776D02-B8FD-416F-80C3-E4F1C19A7322}" /></p></td>
</tr>
<tr>
<td><p>→Choose Workspace</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image224.webp" style="width:7.52847in;height:4.59167in" alt="{FB591B15-B633-4D21-81E8-6E9E5C71EDAD}" /></p></td>
</tr>
<tr>
<td><p>→Thats it</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image225.webp" style="width:6.42153in;height:3.95556in" alt="{11F4CB41-2EEA-4222-9B9F-5C0D6FE3A822}" /></p></td>
</tr>
<tr>
<td><p>→If no LAW exists it will ask us to create one</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image226.webp" style="width:7.53472in;height:3.34792in" alt="{A4822295-350F-493C-A557-09E76F1F5472}" /></p></td>
</tr>
</tbody>
</table>

## Price Calculator

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image227.webp" style="width:7.52986in;height:6.31944in" alt="{FA88C6C5-5354-4B4A-9A5F-0C1A303D9D71}" /></p></td>
</tr>
<tr>
<td><p>→There are two costs</p>
<p>→One to store the data</p>
<p>→Second to analyze the data</p>
<p><a href="https://azure.microsoft.com/en-in/pricing/calculator/">https://azure.microsoft.com/en-in/pricing/calculator/</a></p></td>
</tr>
</tbody>
</table>

## Pillar Collect 

|     |
|-----|
|     |

### Collect: DataConnector - Azure AD

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_36.webp" style="width:7.52292in;height:5.12153in" alt="{6552CF04-6608-4B0D-8119-302E139FE8AE}" /></p></td>
</tr>
<tr>
<td><p>→Notice the permission we have, all are checked green</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_37.webp" style="width:7.53819in;height:4.13125in" alt="{9D4B9E57-12B0-4F5A-B47F-95CF5901EC81}" /></p></td>
</tr>
<tr>
<td><p>→Choose the logs that we want Sentinel to interepret</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image235.webp" style="width:7.53125in;height:3.68681in" alt="{850E2D17-B0E1-42A1-B44A-48B2BD0C4A3C}" /></p>
<p>→Choose as we want and apply</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image236.webp" style="width:7.53472in;height:4.16736in" alt="{0477A9FB-24AF-49C0-808F-FFB812F52D29}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - AAD Identity Protection 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_38.webp" style="width:7.52153in;height:3.63056in" alt="{B8A5E168-9766-4A8C-9808-E3A35595357D}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_39.webp" style="width:7.53403in;height:4.44375in" alt="{D53A21CE-FEC7-4A76-AA0C-BF8CCCA24992}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image242.webp" /></p>
<p>→Click ‘Connect where it is not showing ‘validating’</p>
<p>→Once Connected, Enable the Incidents also</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_40.webp" style="width:7.53958in;height:3.32986in" alt="{449CD7F7-BA9D-4AF8-9148-01F014D7C0C4}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image246.webp" style="width:7.53611in;height:1.28958in" alt="{FD289AC0-E0E0-487C-825A-4D3A160ABB77}" /></p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - Azure Activity 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image247.webp" style="width:7.52986in;height:3.70972in" alt="{287DE773-55A3-4FEF-8486-3155A0AEA3E0}" /></p></td>
</tr>
<tr>
<td><p>→Choose Launch</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image248.webp" style="width:7.53472in;height:3.76458in" alt="{16661F18-B86F-4699-98B8-854B8C894C4C}" /></p></td>
</tr>
<tr>
<td><p>→Choose the Scope. Eg. Here entire subscription is being choosen.</p>
<p>→this can be for RG also</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_41.webp" style="width:7.53333in;height:4.19792in" alt="{642EDC55-9602-4AEB-9C94-6B1A16085E11}" /></p></td>
</tr>
<tr>
<td><p>→If we want exclusions we choose the second option. But, we are not excluding anything.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_42.webp" style="width:7.53125in;height:3.18611in" alt="{4B1945AC-BFD9-4B32-9023-26C6EFA448DA}" /></p></td>
</tr>
<tr>
<td><p>→Proceed to next and choose the LAW</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_43.webp" style="width:7.54097in;height:3.01111in" alt="{AF39E6CE-892A-48E0-A466-E8BB309034C6}" /></p></td>
</tr>
<tr>
<td><p>→Create Remidiation, which basically means, if something is not available it creates for us.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_44.webp" style="width:7.53611in;height:5.01389in" alt="{E4470C44-C588-4BA2-99E1-061DCF2D8C5A}" /></p></td>
</tr>
<tr>
<td><p>→Non-compliance message is used, when something is non-compliant, this message is displayed</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image268.webp" style="width:7.53472in;height:3.04792in" alt="{1D462B6A-E576-4293-A524-C484B8FDCA38}" /></p></td>
</tr>
<tr>
<td><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image269.webp" style="width:7.54028in;height:2.94444in" alt="{D1A42299-7580-4180-A676-5A2F6C177BB8}" /></p></td>
</tr>
</tbody>
</table>

### Collect Data Connector - Defender for Cloud Apps

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image270.webp" style="width:7.52986in;height:4.62222in" alt="{0B252418-276D-4B12-BE19-F72AA372970A}" /></p></td>
</tr>
<tr>
<td><p>→First enable on Cloud Apps Portal and again come back</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image271.webp" style="width:7.54097in;height:2.93681in" alt="{42701CD1-C849-463B-8C7D-BA53DF6E7B49}" /></p></td>
</tr>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image272.webp" style="width:7.53958in;height:4.11389in" alt="{DF8D5637-E5DD-478C-A721-397F05043BEE}" /></p></td>
</tr>
<tr>
<td><p>→Go to Cloud Apps→Settings</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image273.webp" style="width:7.53472in;height:3.94583in" alt="{CFE5A31A-618E-468D-BA20-7F1B79224046}" /></p></td>
</tr>
<tr>
<td><p>→Settings → Cloud Apps</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_45.webp" style="width:7.5375in;height:4.24236in" alt="{58291D53-36FE-4119-83EA-B4EC83A34C9A}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to SIEM agents</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_46.webp" style="width:5.07778in;height:3.26181in" alt="{2E30E92B-416D-4417-9C20-DDE2EBE149F5}" /></p></td>
</tr>
<tr>
<td><p>→Add SIEM agent →Azure Sentinel</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image279.webp" style="width:7.53958in;height:3.18611in" alt="{FA62C3E4-C589-438F-BBFA-2401C20034C8}" /></p></td>
</tr>
<tr>
<td><p>→Choose all alerts and apply to all data streams and →Next</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image280.webp" style="width:7.33333in;height:4.17708in" alt="{8362F0DF-791D-4801-8CDD-C910A62050D6}" /></p></td>
</tr>
<tr>
<td><p>→Finish</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image281.webp" style="width:7.09375in;height:4.07292in" alt="{246BEC98-A4E8-4F41-B6DE-FB54ED51C0C7}" /></p></td>
</tr>
<tr>
<td><p>→Navigate back to portal and select alerts and logs and apply changes.</p>
<p>→Once applied, also enable the Incidents</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_47.webp" style="width:5.7625in;height:3.50972in" alt="{9FE49072-B522-42B3-A05E-4DB5E4E13433}" /></p></td>
</tr>
<tr>
<td><p>→After Applied and Enabled the incidents</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image287.webp" style="width:7.5375in;height:4.08333in" alt="{B246A494-B763-4387-B946-B56400367026}" /></p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - Defender for Identity 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_48.webp" style="width:6.21042in;height:3.93472in" alt="{0AE6694E-4F5A-48E0-8FCE-5DD08CAB665B}" /></p></td>
</tr>
<tr>
<td><p>→ Select Yes and Connect</p>
<p>→Enable Incidents as well</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_49.webp" style="width:7.52222in;height:4.17917in" alt="{C624B0CF-DB93-4E85-B80F-D63A5DDB3055}" /></p></td>
</tr>
<tr>
<td><p>→After applied and enabled</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image295.webp" style="width:7.53819in;height:4.13125in" alt="{4323CA54-AF2F-48BE-8DA8-A778ED26027E}" /></p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - Office 365

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Search for Office 365</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_50.webp" style="width:5.39167in;height:3.34167in" alt="{1AFAB12F-BBCA-45B1-A82B-1924C6A08BB0}" /></p></td>
</tr>
<tr>
<td><p>→Select all the three and apply</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_51.webp" style="width:7.52014in;height:4.00417in" alt="{C0D618BD-8EAE-43F2-98C3-ACC5CDEF600B}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - 365 Defender 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→ Search for 365 Defender</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image305.webp" style="width:7.52361in;height:4.91667in" alt="{C1CA7DEB-26EC-4668-A65C-8303FAC23A72}" /></p></td>
</tr>
<tr>
<td><p>→Here is the place where we can get all the enabling at one place.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image306.webp" style="width:7.53403in;height:3.85208in" alt="{0A39E229-8538-46D3-9948-5F3FE87D94A7}" /></p></td>
</tr>
<tr>
<td><p>→Select all the options and apply</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image307.webp" style="width:7.53958in;height:3.59792in" alt="{ED467DA7-A1C8-4AED-AB4C-29BABECA25EA}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

###  Log forwarding Architecture

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→There are two possibilities where logs from the OS can be forwarded.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image308.webp" style="width:5.98611in;height:6.15486in" alt="{5FF2CE22-5DA5-4F0B-9D7A-0B4763F4F6AA}" /></p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - Sys Log (for Linux) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Search for Sys Log</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image309.webp" style="width:4.5875in;height:4.00069in" alt="{2DE3F3BB-A77F-4977-801C-8F1464ED1C3F}" /></p></td>
</tr>
<tr>
<td><p>→We will have two options to install the agent.</p>
<p>→Here we will choose the Linux VM, however, before that we will need to cnofigure some agents</p>
<p>→Click ‘Open your workspace ..’ link</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_52.webp" style="width:8.17431in;height:4.12361in" alt="{D79FA03A-B468-4C44-88DD-89FAC9FF4562}" /></p></td>
</tr>
<tr>
<td><p>→Choose the sys log configurations first</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_53.webp" style="width:7.68472in;height:5.03611in" alt="{174A9147-0D3A-48BE-962D-2FF2CD30E0A9}" /></p></td>
</tr>
<tr>
<td><p>→Below we are adding all of the facilities. Click Apply</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image318.webp" style="width:5.66528in;height:3.8in" alt="{EFE95ABA-D4E0-4952-9894-090046BD48D8}" /></p></td>
</tr>
<tr>
<td><p>→Navigate back to Instructions page where we ‘download &amp; install agent’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_54.webp" style="width:7.67639in;height:4.20486in" alt="{E94F3785-E117-452B-807E-B94A7D0E510F}" /></p></td>
</tr>
<tr>
<td><p>→Choose the linux VM as we are using the ‘sys log’ format</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image321.webp" style="width:7.68125in;height:2.76806in" alt="{4D406FF8-5F44-43A3-874F-44D33E7C7B46}" /></p></td>
</tr>
<tr>
<td><p>→Click Connect, which will automatically install the agent there.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_55.webp" style="width:5.29444in;height:2.72639in" alt="{A4187FCB-BD87-4CD9-89B7-D0FE49CC11BA}" /></p></td>
</tr>
<tr>
<td><p>→Notice it is done</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image324.webp" style="width:4.41458in;height:3.06111in" alt="{62CE5B3F-4690-4F3E-BEB6-A0A1767AD373}" /></p></td>
</tr>
</tbody>
</table>

### Collect: Data Connector - AMA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate back to DataConnector →Search for AMA</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_56.webp" style="width:5.64514in;height:3.44444in" alt="{C361BFA7-02A3-4C5C-8708-4191407FFD4E}" /></p></td>
</tr>
<tr>
<td><p>→First step is to create a Data Collection Rule (DCR)</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_57.webp" style="width:7.52222in;height:4.10139in" alt="{98AA569D-ACE9-4DF7-B519-B8A113BCE50D}" /></p></td>
</tr>
<tr>
<td><p>→Provide basic details</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_58.webp" style="width:4.96528in;height:2.72292in" alt="{6A038928-9D31-478C-AD2E-73B00EE7B452}" /></p></td>
</tr>
<tr>
<td><p>→Provide details for Resources</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_59.webp" style="width:5.49167in;height:2.94583in" alt="{BED08699-23ED-490D-A254-62AB96252D09}" /></p>
<p>→Choose a scope. Eg. RG and then apply</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_60.webp" style="width:6.62431in;height:3.33889in" alt="{60D7C115-FC2E-403F-8BB3-458EBCD4026E}" /></p></td>
</tr>
<tr>
<td><p>→Once done, navigate to Collect</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_61.webp" style="width:7.4375in;height:3.10417in" alt="{4036A07D-1B74-42F1-A075-2E25C4A950D1}" /></p></td>
</tr>
<tr>
<td><p>→Choose all security Events</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_62.webp" style="width:4.6875in;height:2.35417in" alt="{0A4DB24F-6475-4604-928F-5189A9D9CB43}" /></p></td>
</tr>
<tr>
<td><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_63.webp" style="width:5.51042in;height:2.35417in" alt="{73403C33-49C6-4BE8-B5A6-4F6AC687F868}" /></p></td>
</tr>
<tr>
<td><p>→After creation notice it is populated on the Instructions page.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_64.webp" style="width:7.53333in;height:4.27917in" alt="{F275BF0B-16A0-4855-A1A8-2CBE36EB8DFD}" /></p></td>
</tr>
</tbody>
</table>

### Verify Installation of Extension - Win VM and Linux VM

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Linux VM</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_65.webp" style="width:6.80208in;height:3.22222in" alt="{36A310AE-8403-42DC-82E1-82F20A586B77}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to Windows VM</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_66.webp" style="width:7.52847in;height:4.34028in" alt="{A0A7A30E-496D-4441-9E26-39C657EFEB44}" /></p></td>
</tr>
</tbody>
</table>

### Validate from Sentinel - Logs being injected

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Sentinle → Data Connectors → Click Open Connector Page</p>
<p>→Notice thae ‘green’ check, which indicates that logs are being fed.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_67.webp" style="width:7.52708in;height:3.78681in" alt="{D7E27F2E-7330-4F06-8F63-E61957863E78}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to Next Steps</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_68.webp" style="width:6.82292in;height:4.12917in" alt="{2C861DCD-8074-44EB-88B9-65CEF402ADC2}" /></p></td>
</tr>
<tr>
<td><p>→Click Run</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_69.webp" style="width:5.49792in;height:2.83889in" alt="{8FE0E408-920A-4349-A2FC-60CB411AF4F6}" /></p></td>
</tr>
<tr>
<td><p>→run a simple KQL query using ‘SysLog’ to see data coming from Linux Machine.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_70.webp" style="width:6.23125in;height:3.87917in" alt="{D86C09E5-5ABB-41EA-8DA1-749AEF06DAED}" /></p></td>
</tr>
<tr>
<td><p>→run a simple KQL query using ‘SecurityEvent’ to see data coming from Windows Machine.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_71.webp" style="width:5.63611in;height:3.375in" alt="{28F664A3-5C78-4662-839B-EC62C54E52E4}" /></p></td>
</tr>
</tbody>
</table>

## Pillar Analytics 

|     |
|-----|
|     |

### Analytics Rules 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image379.webp" style="width:5.3625in;height:5.97778in" alt="{9DA58C0A-4164-4C1B-9FC8-CB0383234AB8}" /></p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image380.webp" style="width:6.61875in;height:3.53542in" alt="{5E583EC8-FDA0-4655-BB0D-0D281D981741}" /></p></td>
</tr>
<tr>
<td><p>→</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image381.webp" style="width:7.52153in;height:4.96458in" alt="{18A8B60A-F1BA-408F-B062-68A8ED1C23A5}" /></p></td>
</tr>
<tr>
<td><p>→Filter the rules so that appropriate rules templates can be shown</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_72.webp" style="width:7.54028in;height:4.42361in" alt="{D536781B-F3CF-44F9-AA38-64EDAEA51B68}" /></p></td>
</tr>
<tr>
<td><p>→After filtering we can see below templates.</p>
<p>→Notice that the analtyics rules that are in use are also shown explicitely, as highlighted.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_73.webp" style="width:7.53819in;height:3.61042in" alt="{CA1ABEA0-0023-4AB0-9C2F-3B3BD995B0C2}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

### Analytical Rule - Create rule Brute Force

<table>
<colgroup>
<col style="width: 59%" />
<col style="width: 40%" />
</colgroup>
<tbody>
<tr>
<td colspan="2"><p>→Navigate to DataConnectors → Filter AAD → Open Connection page</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_74.webp" style="width:7.51528in;height:4.15278in" alt="{9BCB58A3-4B3F-4DBD-BCBB-B5FB763F6903}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Navigate to ‘next step’, where we can see relevant templates.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_75.webp" style="width:7.52847in;height:3.18889in" alt="{785C5DA5-6783-47D0-AAF9-553DED99124A}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Let us create one Rule.</p>
<p>→Filter for something like ‘Brute Force Rule’ and click Create rule.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_76.webp" style="width:7.53542in;height:2.03194in" alt="{698821E2-BB4B-404B-AC16-6C2BA8AFF966}" /></p></td>
</tr>
<tr>
<td><p>→configure General Settings.</p>
<p>→note the description what exactly this does.</p>
<p>→Further there are 2 Tactics selected.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_77.webp" style="width:4.24097in;height:4.19653in" alt="{05083B50-BB7C-4C0E-846E-CCA2AD44AF59}" /></p></td>
<td><p>→Below is the Tactics option where we can choose appropriate one.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image403.webp" style="width:2.93264in;height:4.01944in" alt="{D910FEC5-C534-4964-ABE5-7BC0BDF09C6B}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→For more information on Tactics refer the MITRE mapping</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image404.webp" style="width:7.52431in;height:4.27153in" alt="{A7C2F0B7-394F-44A6-AAAB-B1D4B1694EB6}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Provide rule Logic, which is KQL.</p>
<p>→Scroll down a bit</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_78.webp" style="width:7.54167in;height:5.33403in" alt="{B1A99EC7-B3C8-4075-83C9-6F654D2B9C21}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→ Provide entity mapping that will be shown on the page.</p>
<p>→Scroll a bit down</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_79.webp" style="width:7.54167in;height:6.13333in" alt="{A8C73F05-DC27-4D15-82FC-519F8698B3DE}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→configure Scheduling</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image414.webp" style="width:5.88889in;height:3.43056in" alt="{6576C02A-C59A-4CBC-A03E-25995DB5B4B3}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Incident Settings</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_80.webp" style="width:7.54236in;height:7.97569in" alt="{57EF40B8-AD0B-4B87-96C2-C299278F8744}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Next we can configure any kind of Automated Response</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_81.webp" style="width:7.55972in;height:6in" alt="{3569DB32-342B-4AA2-ACCA-2B681ECDDB18}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→Review + Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_82.webp" style="width:5.34097in;height:2.84306in" alt="{88C70408-939F-4F81-8D57-49FDE3DF8EF6}" /></p></td>
</tr>
<tr>
<td colspan="2"><p>→After creation, reload the page if needed. Come back to this page from beginning if it is not shown as ‘IN-USE’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_83.webp" style="width:7.55347in;height:3.43819in" alt="{13A4B1CA-5DB3-4326-9EFB-F0073682BE85}" /></p></td>
</tr>
</tbody>
</table>

### Analytics Rule - Create Rule 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Dataconnectors →Azure Activity → Open Page</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_84.webp" style="width:7.52569in;height:4.08264in" alt="{EF7C0DA8-2F79-46E5-B847-3FECFE3D0D33}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to next steps</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_85.webp" style="width:7.5375in;height:4.87778in" alt="{4AA049BE-1BA0-40F3-B14B-9CBBF314C38F}" /></p></td>
</tr>
<tr>
<td><p>→filter for one rule and create. Eg as below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image432.webp" style="width:7.53194in;height:1.77639in" alt="{5A3DE74F-ABB6-4DFF-9DBF-12F4F8FDC484}" /></p></td>
</tr>
<tr>
<td><p>→Configure General</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image433.webp" style="width:6.55208in;height:6.08333in" alt="{93AEA34C-A724-47D2-BA33-CACB8CDF3CCB}" /></p></td>
</tr>
<tr>
<td><p>→Leave all the other settings as-is (refer previous one) →Review + Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image434.webp" style="width:7.54028in;height:4.40833in" alt="{80786B75-AF91-410E-B4D7-573E945DE950}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

### Validate both rules - If Active or not

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Analytics → Notice two rules that we created.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_86.webp" style="width:7.51875in;height:4.42014in" alt="{8C80C49E-03E3-45F0-8860-479218AEE7AA}" /></p></td>
</tr>
</tbody>
</table>

## Pillar Hunting 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→What is hunting</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image438.webp" style="width:7.52431in;height:2.43472in" alt="{DE446A69-A59E-4AE7-8BA9-01E2F206C4D2}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to Hunting → Select the query we want → Run all queries</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_87.webp" style="width:7.53611in;height:4.75347in" alt="{DD32CFE2-07A9-4EB9-8125-9CBB2AE80ABA}" /></p></td>
</tr>
<tr>
<td><p>→Analyze</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image444.webp" style="width:7.53542in;height:3.97778in" alt="{21756CF8-AC87-412A-837E-AC9739CF5F3A}" /></p></td>
</tr>
<tr>
<td><p>→Eg. Selected two and we can hit ‘Run selected queries’</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_88.webp" style="width:7.5375in;height:4.0875in" alt="{413D1181-D825-4F34-902D-0A548B8DB198}" /></p></td>
</tr>
<tr>
<td><p>→Example queries of recently logged in Users</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image449.webp" style="width:7.52778in;height:3.97708in" alt="{321FE7AE-0805-4CD7-B0C9-A19C78281981}" /></p></td>
</tr>
</tbody>
</table>

## Pillar Incidents

|     |
|-----|
|     |

### Incidents: View

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Incidents</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_89.webp" style="width:7.52847in;height:4.74306in" alt="{3330E898-A92E-4868-B0B9-5C6280F810DB}" /></p></td>
</tr>
<tr>
<td><p>→Select any particular incident and view full details.</p>
<p>→Eg. We choose Excessive windows Logon failures.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_90.webp" style="width:7.52917in;height:4.02917in" alt="{850F3EF6-FFDF-4BAE-8166-AA1964A8856C}" /></p></td>
</tr>
<tr>
<td><p>→Notice the entities that were involved in this purview.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image455.webp" style="width:7.53819in;height:7.3875in" alt="{2385C6DD-304F-4B05-BF4F-650FB13D570A}" /></p></td>
</tr>
<tr>
<td><p>→Click on Evidence to investigate further.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_91.webp" style="width:4.46319in;height:7.00903in" alt="{D52E1268-58CD-4648-A4D4-3E931983775B}" /></p></td>
</tr>
<tr>
<td><p>→Notice detailed logs of the incident</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_92.webp" style="width:7.52986in;height:2.68542in" alt="{9214D1E1-8CCB-4164-A896-E1260683A8D0}" /></p></td>
</tr>
<tr>
<td><p>→More details under each of the entry can be seen. Eg. IP</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image461.webp" style="width:7.53472in;height:5.65139in" alt="{A93AFAB8-B456-493E-A1DD-8B943B8FE75F}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to VirusPortal and can check if the IP is coming from a malware site etc.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image462.webp" style="width:6.13125in;height:3.39097in" alt="{30FC2AA8-9100-4520-B8DE-403B36F7527A}" /></p></td>
</tr>
<tr>
<td><p>→view Evidence from Different UI</p>
<p>→Navigate to Alerts →click Alert ID</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_93.webp" style="width:7.53333in;height:4.16667in" alt="{6F060673-1DA0-4765-9AA3-279A1E4507D0}" /></p></td>
</tr>
<tr>
<td><p>→Notice the data. We can pick the query and run it to get all the data.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image466.webp" style="width:7.53611in;height:4.67986in" alt="{56C45789-DA27-4556-8F62-9B0C8D4B3BBC}" /></p></td>
</tr>
<tr>
<td><p>→Click the Investigate button if we want to see the graphical way</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image467.webp" style="width:5.11458in;height:1.32292in" alt="{010E5AA7-16CB-4B17-ADD6-A4CDACE84930}" /></p>
<p>→We get below.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image468.webp" style="width:7.53125in;height:4.24444in" alt="{6D04BB5D-752C-4411-A18A-AB7CF1E23093}" /></p></td>
</tr>
<tr>
<td><p>→Navigate to Entities and notice the same.</p>
<p>→Note that these are the same one that we configured in the beinging while doing the ‘entity mapping’</p>
<p>→If we want more entities to be displayed, w need to configure the same at the beginning.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_94.webp" style="width:7.53403in;height:4.00833in" alt="{F4ABFFC4-BE90-428F-B1CB-FE4000683C79}" /></p></td>
</tr>
<tr>
<td><p>→Eg 2</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image472.webp" style="width:7.54028in;height:3.29375in" alt="{B1BF19EE-DA6C-4420-966C-30CB122BA7D0}" /></p></td>
</tr>
</tbody>
</table>

### Assign an incident to a team member

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Select an incident and choose assign</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_95.webp" style="width:7.52847in;height:3.88333in" alt="{AEFD3D8A-A0F9-41E3-B11C-EA68D2F21C1D}" /></p></td>
</tr>
<tr>
<td><p>→Post investigation we have actions to choose and close it.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image477.webp" style="width:7.53472in;height:4.53681in" alt="{AB3CFD4D-A3F6-4D0B-AD03-8D9729B62D06}" /></p></td>
</tr>
<tr>
<td><p>→Eg. Below status</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image478.webp" style="width:4.92708in;height:3.36458in" alt="{B2FFC2A6-2CF4-4771-9C04-567078DC37F4}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

## Pillar Automation 

|     |
|-----|
|     |

### Automation Rules - Eg. Brute Force Attempts - Do Something upon detection

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Automation →Click Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image479.webp" style="width:7.51806in;height:4.86875in" alt="{BA3106B3-1EAA-4E64-8E83-C15BD311D25B}" /></p></td>
</tr>
<tr>
<td><p>→Create</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image480.webp" style="width:7.375in;height:2.85417in" alt="{EB80CEAD-3FFD-413C-A2BE-855091994E74}" /></p></td>
</tr>
<tr>
<td><p>→Provide details of the rule. Eg. What are the conditions, actions etc etc.</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image481.webp" style="width:4.71458in;height:4.83472in" alt="{42EB7ED8-F8F5-4747-A210-D49528A71FBC}" /></p></td>
</tr>
<tr>
<td><p>→</p></td>
</tr>
</tbody>
</table>

### Automation Rules - Eg. Known IP

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Create new rule</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_96.webp" style="width:7.52986in;height:3.04236in" alt="{2C9A1184-CD5A-4179-A305-DFF37C371345}" /></p></td>
</tr>
<tr>
<td><p>→Give conditions</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image486.webp" style="width:7.54028in;height:7.55972in" alt="{1CBA2DB5-3A31-4BB6-9D09-A69FA13EAE2F}" /></p></td>
</tr>
<tr>
<td><p>→Notice rule is created.</p>
<p>→For example we have defined rules to minimize unnecessary wastege of time for false positives</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image487.webp" style="width:7.53681in;height:3.10625in" alt="{C51CF93E-6886-43F2-94FC-B624A3FBA1D7}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Automation Rules - usage of Playbooks

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→We can invoke Azure Logic apps to execute some flows upon certain conditions</p>
<p>→filter Send Email and select then create play book</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_97.webp" style="width:7.51597in;height:4.39444in" alt="{AB32AA42-9250-4C86-A35E-DA3785244AB7}" /></p></td>
</tr>
<tr>
<td><p>→Below are some of the existing templates</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image491.webp" style="width:7.52153in;height:5.34722in" alt="{C7A8F952-7F6C-480E-AFDA-470FE7BEE67A}" /></p></td>
</tr>
</tbody>
</table>

## Security Efficiency Workbook 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→Navigate to Incidents → SEW</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_98.webp" style="width:7.52292in;height:3.95347in" alt="{0BC78077-CDF0-4A99-8DBE-F8C81ED99390}" /></p></td>
</tr>
<tr>
<td><p>→We can see grahpical representation of various incidents</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image495.webp" style="width:7.53472in;height:3.88333in" alt="{AFFEF5E5-4223-43BC-9AF6-E249040AEB4A}" /></p></td>
</tr>
<tr>
<td><p>→Built-in Workbooks.</p>
<p>→Navigate to Workbooks → Templates</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_99.webp" style="width:7.53472in;height:4.375in" alt="{2C60AD18-EBDA-4130-9599-95ED6900A6A8}" /></p></td>
</tr>
<tr>
<td><p>→Let us check one of the templates. Eg. Sign-in Logs</p>
<p>→view Template</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_100.webp" style="width:7.52847in;height:3.55417in" alt="{A0D2609D-719A-4DC4-ADFF-038E40DEC926}" /></p></td>
</tr>
<tr>
<td><p>→We can adjust as needed</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image504.webp" style="width:7.53611in;height:6.28056in" alt="{450A5911-D569-49AB-B131-9575B929222B}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

### Custom Dashboards - Using KQL 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><p>→navigate to Logs and come up with own KQL</p>
<p>→Eg. This query is last 90 days security incidents</p>
<p>→Run the query</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image505.webp" style="width:7.52083in;height:3.65417in" alt="{691EFB65-6380-427B-ABE3-5FF28BB79986}" /></p></td>
</tr>
<tr>
<td><p>→We will get the result. Navigate to Chart</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/flatten_101.webp" style="width:7.52847in;height:3.34167in" alt="{9BE47B99-2E17-4575-A653-AC053C620688}" /></p></td>
</tr>
<tr>
<td><p>→We can adjust the chart as needed</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image508.webp" style="width:7.53194in;height:3.98681in" alt="{CF71AECA-BE27-4FAE-88BF-799D71C301CB}" /></p></td>
</tr>
<tr>
<td><p>→Modified formatting</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image509.webp" style="width:7.53611in;height:3.26389in" alt="{46F97624-0F66-4B2B-A567-FB7D9E2CC882}" /></p></td>
</tr>
<tr>
<td><p>→More modifications</p>
<p><img src="subjects/tech/azure/az-security-eng-az500-flat/img/media/image510.webp" style="width:7.53889in;height:4.22917in" alt="{DC785526-6226-4A3C-83DA-3A5281BA60AC}" /></p></td>
</tr>
<tr>
<td></td>
</tr>
</tbody>
</table>

# Zero Trust Architecture - 7 pillars 

|     |
|-----|
|     |

## Pillar 1 - User Identity 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Check every single user for everything the user does</p>
<p>→Authetnicate user, everytime.</p>
<p>→Authorize user, everytime.</p>
<p>→Eg. Usage of Biometrics or other MFA etc.</p>
<p>→Always have Least privilege</p></td>
</tr>
</tbody>
</table>

## Pillar 2 - Data Security 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Classify the data</p>
<p>→tokenize the data</p>
<p>→Encrypt the data</p>
<p>→Control access to the data</p>
<p>→Constantly monitor the data, motion or at rest.</p></td>
</tr>
</tbody>
</table>

## Pillar 3 - Device Security 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→What are the devices that are in play</p>
<p>→Are they secured?</p>
<p>→Verify the device for any updates pending on the device.</p>
<p>→Strong inventory of all devices.</p>
<p>→Strong endpoint detection.</p></td>
</tr>
</tbody>
</table>

## Pillar 4 - Networking and Encryption

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Segment networks</p>
<p>→This reduces attack surface</p>
<p>→Granular access and even micro-segmentation</p>
<p>→Monitor the traffic (in and out)</p></td>
</tr>
</tbody>
</table>

## Pilloar 5 - Application Workloads

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Right kind of Service accounts</p>
<p>→Are they accessing correctly</p>
<p>→Encryption are in place</p></td>
</tr>
</tbody>
</table>

## Pillar 6 - Visiblity and analytics 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Constantly monitoring of devices</p>
<p>→Constantly monitoring of etwork</p>
<p>→Detect anamolies</p>
<p>→Detect breaches</p>
<p>→Stop them sooner they flag</p>
<p>→Usage of AI for patterns to stop breaches</p></td>
</tr>
</tbody>
</table>

## Pillar 7 - Automation and Orchestration 

<table style="width:99%;">
<colgroup>
<col style="width: 99%" />
</colgroup>
<tbody>
<tr>
<td><p>→Automate policies</p>
<p>→Automate incident responses using AI</p>
<p>→integrate AI in IAM</p>
<p>→Integrate AI in logs monitoring</p></td>
</tr>
</tbody>
</table>

# xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |

## xxxx

|     |
|-----|
|     |
