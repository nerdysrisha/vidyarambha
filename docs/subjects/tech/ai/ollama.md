> AI OLAMA

|                         |                 |
|-------------------------|-----------------|
| **Version**             | **1.0**         |


<span id="_Toc3037" class="anchor"></span>Table of Contents

[Table of Contents [2](#_Toc3037)](#_Toc3037)

[1 Approval [3](#approval)](#approval)

[2 Revision History [3](#revision-history)](#revision-history)

[3 xxxx [4](#_Toc13693)](#_Toc13693)

[3.1 Check Windows Compatability [4](#check-windows-compatability)](#check-windows-compatability)

[3.2 Download Super basic LLM model [4](#download-super-basic-llm-model)](#download-super-basic-llm-model)

[3.3 Start LMS [6](#start-lms)](#start-lms)

[3.4 Load a Model - Super basic (3 GB Model) [9](#load-a-model---super-basic-3-gb-model)](#load-a-model---super-basic-3-gb-model)

[3.5 Give Simple Prompt [13](#give-simple-prompt)](#give-simple-prompt)

[3.6 Eject the model [16](#eject-the-model)](#eject-the-model)

[3.7 Delete downloaded Model [16](#delete-downloaded-model)](#delete-downloaded-model)

[3.8 Load a Model - A Bit Latest [18](#load-a-model---a-bit-latest)](#load-a-model---a-bit-latest)

[3.9 Load another model and test Curl [19](#load-another-model-and-test-curl)](#load-another-model-and-test-curl)

[3.9.1 Curl invocation - Server Mode [24](#curl-invocation---server-mode)](#curl-invocation---server-mode)

[3.10 Load - simple model - tiny Lama [31](#load---simple-model---tiny-lama)](#load---simple-model---tiny-lama)

[3.11 xxxx [37](#usage-of-temperature-for-creativity-driven-answers.)](#usage-of-temperature-for-creativity-driven-answers.)

[3.12 xxxx [37](#_Toc9454)](#_Toc9454)

[3.13 xxxx [38](#_Toc8379)](#_Toc8379)

[3.14 xxxx [38](#_Toc31766)](#_Toc31766)

[3.15 xxxx [38](#_Toc28853)](#_Toc28853)

[3.16 xxxx [38](#_Toc26103)](#_Toc26103)

[3.17 xxxx [38](#_Toc5953)](#_Toc5953)

[3.18 xxxx [39](#_Toc28899)](#_Toc28899)

[3.19 xxxx [39](#navigate-to-azure-ai-foundry)](#navigate-to-azure-ai-foundry)

[3.20 xxxx [39](#_Toc17822)](#_Toc17822)

[3.21 xxxx [39](#_Toc32006)](#_Toc32006)

 

#  AI - LLM - RAG - LOCAL

|     |
|:----|
|     |

## Check Windows Compatability 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>PS C:\Users\nerdy&gt; systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"</p>
<p>OS Name: Microsoft Windows 11 Pro</p>
<p>OS Version: 10.0.26100 N/A Build 26100</p>
<p>System Type: x64-based PC</p>
<p>PS C:\Users\nerdy&gt;</p></td>
</tr>
</tbody>
</table>

## Download Super basic LLM model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to <a href="https://lmstudio.ai/">https://lmstudio.ai/</a></p>
<p>→Download for windows</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1.webp" style="width:7.52083in;height:4.04792in" alt="{F5FDC502-E838-4A8C-9C40-ECA9BEB6782D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image2.webp" style="width:6.8125in;height:0.64583in" alt="{355663C5-C869-42EB-A077-39B9468E4669}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image3.webp" style="width:5.05208in;height:4.02083in" alt="{5003D17F-AC1C-48E7-ADB9-67FFD148265F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image4.webp" style="width:5.125in;height:4.03125in" alt="{FFBAB2F2-B9BB-4A4A-8F2E-5CDB3C5CB04A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Start LMS

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image5.webp" style="width:6.72917in;height:6.54167in" alt="{0C1617EF-A423-4FD0-A2F6-F000327E6A3E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image6.webp" style="width:7.52569in;height:4.80347in" alt="{E532FD3E-A7A9-43AD-AA6A-1FE87BF64DA4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Skip this step</p>
<p><img src="subjects/tech/ai/ollama-img/media/image7.webp" /><img src="subjects/tech/ai/ollama-img/media/image8.webp" /><img src="subjects/tech/ai/ollama-img/media/image9.webp" style="width:7.525in;height:4.03264in" alt="{C3D113D0-7F46-4E33-BBCC-3A391F167209}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image10.webp" style="width:6.10139in;height:3.47569in" alt="{C6362CA4-1C99-4468-8130-FCF734C19B17}" /></p></td>
</tr>
</tbody>
</table>

## Load a Model - Super basic (3 GB Model) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have the Studio, we can start interacting with it.</p>
<p>→However, this is just the barebones and ‘does not have’ any LLM loaded yet.</p>
<p>→Eg. When entered ‘Hello’ it said, ‘Load a model’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image11.webp" style="width:7.52847in;height:5.11389in" alt="{77CBC936-EF28-43F4-8772-3594C4373843}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Search for a model. Eg. Phi-3-mini-4k</p>
<p>→Given no model exists currently, we need to search and download. Click the ‘Search’ option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image12.webp" style="width:7.51944in;height:2.30556in" alt="{EC79AD11-C875-4D24-B6E5-EB192275591D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice there are many models exist with the pattern we asked.</p>
<p>→Choose the first one and download.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image13.webp" style="width:7.52778in;height:4.45625in" alt="{9AAFEF40-36B3-4C33-AD0B-3DAA7CAA2594}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is downloading</p>
<p><img src="subjects/tech/ai/ollama-img/media/image14.webp" style="width:7.53056in;height:6.57847in" alt="{E9C7F52A-8523-4613-BCD6-C960A9A70838}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice is completed.</p>
<p>→Click Load model.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image15.webp" style="width:7.48958in;height:2.70833in" alt="{0C295EAD-E200-4159-94F9-1EF503886229}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is now loading into ‘memory’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image16.webp" style="width:6.13542in;height:2.01042in" alt="{2654BDB3-00BC-422B-84A3-D24CF3ABA3E5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Give Simple Prompt

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us give simple prompts</p>
<p><img src="subjects/tech/ai/ollama-img/media/image17.webp" style="width:7.52083in;height:2.9in" alt="{7B419F7C-F5A6-4BD3-B6FF-6F1D2A681573}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Simple Sum</p>
<p><img src="subjects/tech/ai/ollama-img/media/image18.webp" style="width:7.52222in;height:2.27917in" alt="{F1B9CFE0-B3C9-4326-8BB1-58B6438E606A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Simple essay</p>
<p><img src="subjects/tech/ai/ollama-img/media/image19.webp" style="width:7.52847in;height:3.01597in" alt="{67955459-5EFE-4E44-B72D-004310DEE61D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Simple Java Program</p>
<p><img src="subjects/tech/ai/ollama-img/media/image20.webp" style="width:7.52292in;height:4.61458in" alt="{443B9304-F6AD-4DA3-941D-9DFA6BF35132}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Eject the model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→If we want to switch to another model, we need to eject it first.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image21.webp" style="width:6.07292in;height:1.70833in" alt="{C751D2D4-8C55-43CF-9833-C667C1ACB500}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is ejected</p>
<p><img src="subjects/tech/ai/ollama-img/media/image22.webp" style="width:7.52431in;height:2.30486in" alt="{CD8E25D9-0B0B-4A1A-9862-DC3E0DED8127}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice prompt we gave resulted in error</p>
<p><img src="subjects/tech/ai/ollama-img/media/image23.webp" style="width:7.52083in;height:2.07569in" alt="{85FA8CC0-69CC-4028-A15F-20655B9B377D}" /></p></td>
</tr>
</tbody>
</table>

## Delete downloaded Model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→given the models are huge, we do not want unnecessary models to stay in local</p>
<p>→Navigate to My Models, select 3 dots and delete</p>
<p><img src="subjects/tech/ai/ollama-img/media/image24.webp" /><img src="subjects/tech/ai/ollama-img/media/image25.webp" /><img src="subjects/tech/ai/ollama-img/media/image26.webp" style="width:7.52014in;height:1.48819in" alt="{202C453B-BC30-4763-B811-A53810D3716E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Delete</p>
<p><img src="subjects/tech/ai/ollama-img/media/image27.webp" style="width:6.96875in;height:3.6875in" alt="{CD805986-C04E-4000-953F-912E7C39C256}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image28.webp" style="width:6.48958in;height:1.94792in" alt="{16392EE5-1CF0-4476-B29A-CAC035DFE31A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Any new models again will show up here</p>
<p><img src="subjects/tech/ai/ollama-img/media/image29.webp" style="width:7.51806in;height:4.55in" alt="{D862E35C-0ED4-4BAC-842C-7115F3894307}" /></p></td>
</tr>
</tbody>
</table>

## Load a Model - A Bit Latest 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Open AI 12 GB, this will take a huge space. Notice the size which is 12 GB</p>
<p>→So this is not tested</p>
<p><img src="subjects/tech/ai/ollama-img/media/image30.webp" style="width:7.52153in;height:4.45486in" alt="{13FDD29C-B7E2-4279-BC20-1E3026D4EF3B}" /></p></td>
</tr>
</tbody>
</table>

##  Load another model and test Curl 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Open the search bar and type ‘phi’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image31.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→when we search a model and if it is not loaded locally, it will ask for a further search option.</p>
<p>→Click the search option button</p>
<p><img src="subjects/tech/ai/ollama-img/media/image32.webp" style="width:7.52778in;height:2.34444in" alt="{4805889D-2299-42CB-8F2B-0B55DB277D97}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Pick the first one, which is light weight and click ‘Download’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image33.webp" /><img src="subjects/tech/ai/ollama-img/media/image34.webp" /><img src="subjects/tech/ai/ollama-img/media/image35.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it gets downloaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image36.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once completed click the ‘load model option’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image37.webp" /><img src="subjects/tech/ai/ollama-img/media/image38.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it is gettingloaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image39.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once loaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image40.webp" style="width:7.52153in;height:1.07708in" alt="{0080DC84-3796-4E2A-A358-FA3909A05520}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Testing time</p></td>
</tr>
</tbody>
</table>

###  Curl invocation - Server Mode

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Click the ‘developer’ option. Using this we can interact with the LLM using the APIs.</p>
<p>→Notice that currently it is stopped. Let us start the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image41.webp" /><img src="subjects/tech/ai/ollama-img/media/image42.webp" /><img src="subjects/tech/ai/ollama-img/media/image43.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→When the server is started an endpoint is also made visible.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image44.webp" /><img src="subjects/tech/ai/ollama-img/media/image45.webp" /><img src="subjects/tech/ai/ollama-img/media/image46.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fire a simple curl</p>
<p>$ curl -X POST "http://localhost:1234/v1/chat/completions" \</p>
<p>-H "Content-Type: application/json" \</p>
<p>-d '{</p>
<p>"model": "meta-llam-3.1-8b-instruct",</p>
<p>"messages": [{"role": "user", "content": "Hello from curl!"}]</p>
<p>}'</p>
<p><img src="subjects/tech/ai/ollama-img/media/image47.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the server received the request and processing</p>
<p><img src="subjects/tech/ai/ollama-img/media/image48.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it has processed we can see the output.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image49.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Same can be seen in the console.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image50.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another simple prompt. However, it is using reasoning so we get big response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image51.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another one one now without the reasoning, by giving ‘system context’</p></td>
</tr>
</tbody>
</table>

###  Load - simple model - tiny Lama

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us load another simple model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image52.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It is loading</p>
<p><img src="subjects/tech/ai/ollama-img/media/image53.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Load the model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image54.webp" /><img src="subjects/tech/ai/ollama-img/media/image55.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice now the model is loaded.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image56.webp" /><img src="subjects/tech/ai/ollama-img/media/image57.webp" /><img src="subjects/tech/ai/ollama-img/media/image58.webp" /><img src="subjects/tech/ai/ollama-img/media/image59.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Now let us give the prompt without the reasoning etc.</p>
<p>curl -X POST "http://localhost:1234/v1/chat/completions" -H "Content-Type: application/json" -d '{ "model": "meta-llam-3.1-8b-instruct", "messages": [ {"role": "system", "content": "Answer concisely with only the final result."}, {"role": "user", "content": "What is 2 + 2?"} ] }'</p>
<p><img src="subjects/tech/ai/ollama-img/media/image60.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Same can be seen on the console</p>
<p><img src="subjects/tech/ai/ollama-img/media/image61.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
</tbody>
</table>

###  Usage of ‘temperature’ for ‘creativity’ driven answers. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→usage of ‘temperature’ results in variance in results. However, for smaller models it may not be effective.</p>
<p>→Below query is with temperature=0</p>
<p>curl -X POST "http://localhost:1234/v1/chat/completions" \</p>
<p>-H "Content-Type: application/json" \</p>
<p>-d '{</p>
<p>"model": "tinyllama-1.1b-chat-v1.0",</p>
<p><mark>"temperature": 0,</mark></p>
<p>"messages": [</p>
<p>{"role": "system", "content": "Answer concisely with only the final result."},</p>
<p>{"role": "user", "content": "Explain why the sky is blue in one sentence."}</p>
<p>]</p>
<p>}'</p>
<p><img src="subjects/tech/ai/ollama-img/media/image62.webp" style="width:7.52847in;height:4.01736in" alt="{27310152-D666-4E4A-835B-6BA11B5490DF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→below query is with temperature=9.</p>
<p>curl -X POST "http://localhost:1234/v1/chat/completions" \</p>
<p>-H "Content-Type: application/json" \</p>
<p>-d '{</p>
<p>"model": "tinyllama-1.1b-chat-v1.0",</p>
<p><mark>"temperature": 0.9,</mark></p>
<p>"messages": [</p>
<p>{"role": "system", "content": "Answer concisely with only the final result."},</p>
<p>{"role": "user", "content": "Explain why the sky is blue in one sentence."}</p>
<p>]</p>
<p>}'</p>
<p><img src="subjects/tech/ai/ollama-img/media/image63.webp" style="width:7.53056in;height:4.09792in" alt="{6E890AD0-0937-4A03-85EE-F7C3FFC26808}" /></p></td>
</tr>
</tbody>
</table>

###  List the models 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below curl can give us the models that are there currently loaded.</p>
<p>curl -X GET "http://localhost:1234/v1/models"</p>
<p><img src="subjects/tech/ai/ollama-img/media/image64.webp" style="width:4.97917in;height:3.07292in" alt="{56B2FEC3-0DDF-41D7-A1C0-EB7589555BDA}" /></p></td>
</tr>
</tbody>
</table>

## Integrate Ollama with VSCode

|     |
|:----|
|     |

### Download Ollama

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Open <a href="https://ollama.com/download/windows">https://ollama.com/download/windows</a></p>
<p><img src="subjects/tech/ai/ollama-img/media/image65.webp" style="width:7.52778in;height:4.14653in" alt="{DE8FC562-3E8C-491A-ABC5-AB88CE96203E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Downloaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image66.webp" style="width:7.52222in;height:0.80417in" alt="{B30DE047-0EBC-4DFC-B628-EAE5FF8B0E47}" /></p></td>
</tr>
</tbody>
</table>

### Install as normal 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Do not install as ‘run as administrator’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image67.webp" style="width:7.52778in;height:5.84653in" alt="{7222BC2B-73F7-49B9-9CE3-4ED742CD4A6B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get launch settings. Let us ignore these for now.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image68.webp" style="width:7.525in;height:5.68819in" alt="{7B1E6BEC-3FB3-4EDD-825F-4BB1406EE6A5}" /></p></td>
</tr>
</tbody>
</table>

### Download the model - QWEN

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Download the model using powershell</p>
<p>mkdir ai-localmodels</p>
<p>cd .\ai-localmodels\</p>
<p>ollama pull qwen2.5-coder:14b</p>
<p><img src="subjects/tech/ai/ollama-img/media/image69.webp" style="width:6.45833in;height:2.85417in" alt="{C3AA30F6-778E-4494-A98E-296830027BEF}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image70.webp" style="width:7.52222in;height:0.70278in" alt="{D93622E8-EFB9-45CF-A42E-9424902E2024}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image71.webp" style="width:7.52986in;height:2.0375in" alt="{F4CC9008-C498-482D-9558-E003A4BCA936}" /></p></td>
</tr>
</tbody>
</table>

### Run the model and fire simple prompt

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>ollama run qwen2.5-coder:14b</p>
<p>→Then fire up a simple prompt.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image72.webp" style="width:7.52569in;height:2.49514in" alt="{030B28ED-FC9A-40BB-8916-DDC2281C8C2B}" /></p></td>
</tr>
</tbody>
</table>

### Exit the Ollama and list the models 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>/bye</p>
<p><img src="subjects/tech/ai/ollama-img/media/image73.webp" style="width:7.525in;height:0.98889in" alt="{CA49C053-CDC8-405D-9707-15848B8980C8}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image74.webp" style="width:6.48958in;height:0.96875in" alt="{4165A209-EC01-4F5A-9F78-133DA3AFEC40}" /></p></td>
</tr>
</tbody>
</table>

### VSCode: → Extensions → Search Continue →Install 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Before installing</p>
<p><img src="subjects/tech/ai/ollama-img/media/image75.webp" style="width:7.52847in;height:3.98611in" alt="{A6C2C0B2-476B-4044-B84D-868E5D663395}" /></p>
<p>→After installing</p>
<p><img src="subjects/tech/ai/ollama-img/media/image76.webp" style="width:7.52222in;height:3.68264in" alt="{B8B5CF2D-3E5E-4899-B423-5F4F251DDD1B}" /></p></td>
</tr>
</tbody>
</table>

### Open Chat and Search ‘continue: open hub’ 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>Ctrl+Shift+P</p>
<p>Then type this in search bar → Continue: Open Hub</p>
<p><img src="subjects/tech/ai/ollama-img/media/image77.webp" style="width:7.52778in;height:1.65764in" alt="{BE91F429-8469-4B72-A6D5-19FE6309ECAD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below</p>
<p>→Click ‘Local’ option (3<sup>rd</sup> one )</p>
<p><img src="subjects/tech/ai/ollama-img/media/image78.webp" style="width:6.80208in;height:7.09375in" alt="{DBC79EB1-37ED-4694-96C7-F98C41EB35C0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below.</p>
<p>→’Skip and configure manually’ - click this as we already have model downloaded previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image79.webp" style="width:6.6875in;height:8.29167in" alt="{4F83072A-1005-4F41-830A-1D5A0EE2FEF1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ We get this. Notice that the ‘Continue’ has auto chosen Llam 3.1 8B</p>
<p>→Click the drop down and + add chat model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image80.webp" style="width:7.52847in;height:3.72917in" alt="{B1D8A51D-FE7E-4C75-9419-850979908430}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→<img src="subjects/tech/ai/ollama-img/media/image81.webp" style="width:6.21875in;height:3.4375in" alt="{7C1328B6-7866-4314-82D0-2CEB9609CC3C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ chose the provider Ollama and chose Model Autodetect and connect</p>
<p><img src="subjects/tech/ai/ollama-img/media/image82.webp" style="width:5in;height:5.76042in" alt="{29555ED4-0D1B-4426-A8E8-23A23A8127D6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Change the configuration to below.</p>
<p>it opened this file "name: Local Config</p>
<p>version: 1.0.0</p>
<p>schema: v1</p>
<p>models:</p>
<p>- name: Llama 3.1 8B</p>
<p>provider: ollama</p>
<p>model: llama3.1:8b</p>
<p>roles:</p>
<p>- chat</p>
<p>- edit</p>
<p>- apply</p>
<p>- name: Qwen2.5-Coder 1.5B</p>
<p>provider: ollama</p>
<p>model: qwen2.5-coder:1.5b-base</p>
<p>roles:</p>
<p>- autocomplete</p>
<p>- name: Nomic Embed</p>
<p>provider: ollama</p>
<p>model: nomic-embed-text:latest</p>
<p>roles:</p>
<p>- embed</p>
<p>- name: Autodetect</p>
<p>provider: ollama</p>
<p>model: AUTODETECT "</p>
<p><img src="subjects/tech/ai/ollama-img/media/image83.webp" style="width:7.525in;height:4.55208in" alt="{AF94969E-D4EA-4D56-AA3A-D2B01DAE9809}" /></p>
<p>→ This is changed</p>
<p>name: Local Config</p>
<p>version: 1.0.0</p>
<p>schema: v1</p>
<p>models:</p>
<p>  - name: Qwen2.5-Coder 14B</p>
<p>    provider: ollama</p>
<p>    model: qwen2.5-coder:14b</p>
<p>    roles:</p>
<p>      - chat</p>
<p>      - edit</p>
<p>      - apply</p>
<p>  - name: Qwen2.5-Coder 1.5B</p>
<p>    provider: ollama</p>
<p>    model: qwen2.5-coder:1.5b-base</p>
<p>    roles:</p>
<p>      - autocomplete</p>
<p>  - name: Nomic Embed</p>
<p>    provider: ollama</p>
<p>    model: nomic-embed-text:latest</p>
<p>    roles:</p>
<p>      - embed</p>
<p>  - name: Autodetect</p>
<p>    provider: ollama</p>
<p>    model: AUTODETECT</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After changing the configuration we can see the chat window</p>
<p><img src="subjects/tech/ai/ollama-img/media/image84.webp" style="width:7.52986in;height:2.53472in" alt="{05A992BC-7DBF-4FB8-ABB0-32A7E4E0E6D9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→This stuck the laptop</p></td>
</tr>
</tbody>
</table>

### Stop the Model and Install smaller model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>ollama stop qwen2.5-coder:14b</p>
<p><img src="subjects/tech/ai/ollama-img/media/image85.webp" style="width:7.52361in;height:2.02431in" alt="{2A00FC43-6743-4CE0-908D-36521545D665}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Pull a simple model</p>
<p>ollama pull qwen2.5-coder:3b</p>
<p><img src="subjects/tech/ai/ollama-img/media/image86.webp" style="width:7.52847in;height:1.85764in" alt="{1CA340B9-E499-49F8-B220-CFB5771BBF0B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→List</p>
<p>ollama list</p>
<p><img src="subjects/tech/ai/ollama-img/media/image87.webp" style="width:6.21875in;height:1.55208in" alt="{44E98616-612A-4AA4-BFD3-8D25A8BF6C70}" /></p></td>
</tr>
</tbody>
</table>

#### xxx

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→navigate to vscode and auto detect again</p>
<p><img src="subjects/tech/ai/ollama-img/media/image88.webp" style="width:6.94444in;height:9.12083in" alt="{142DEEC4-2D6A-4F84-92CE-2D8A500AE9B4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Change the config to use the latest one.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image89.webp" style="width:7.52708in;height:3.71389in" alt="{57FC56C0-4AB6-46C7-A758-CE7280EFF63E}" /></p>
<p>name: Local Config</p>
<p>version: 1.0.0</p>
<p>schema: v1</p>
<p>models:</p>
<p>  - name: Qwen2.5-Coder 3B</p>
<p>    provider: ollama</p>
<p>    model: qwen2.5-coder:3b</p>
<p>    roles:</p>
<p>      - chat</p>
<p>      - edit</p>
<p>      - apply</p>
<p>  - name: Qwen2.5-Coder 1.5B</p>
<p>    provider: ollama</p>
<p>    model: qwen2.5-coder:1.5b-base</p>
<p>    roles:</p>
<p>      - autocomplete</p>
<p>  - name: Nomic Embed</p>
<p>    provider: ollama</p>
<p>    model: nomic-embed-text:latest</p>
<p>    roles:</p>
<p>      - embed</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Even this is not working</p>
<p><img src="subjects/tech/ai/ollama-img/media/image90.webp" style="width:7.52569in;height:0.94097in" alt="{C2D5A0B4-799D-4D12-BA08-42FB1F962557}" /></p></td>
</tr>
</tbody>
</table>

### xxx

|     |
|:----|
|     |

### xxx

|     |
|:----|
|     |

### xxx

|     |
|:----|
|     |

### xxx

|     |
|:----|
|     |

### xxx

|     |
|:----|
|     |

#  RAG - AZURE - Basic Understanding 

|     |
|:----|
|     |

## RAG with Cosmos DB

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below is a high-level architecture of RAG with Cosmos DB</p>
<p><img src="subjects/tech/ai/ollama-img/media/image91.webp" style="width:7.51875in;height:4.22431in" alt="{E67B5611-8343-4D9E-8C50-94DC8D2CAA89}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Brief explanation</p>
<ol type="1">
<li><p>Documents → Embeddings model: The raw documents are chunked and converted into vector embeddings.</p></li>
</ol>
<p>Example: Using text-embedding-ada-002 in Azure OpenAI Studio or OpenAI API.</p>
<ol start="2" type="1">
<li><p>Embeddings → Vector database: Generated embeddings are stored and indexed for efficient similarity search.</p></li>
</ol>
<p>Example: Pinecone, Weaviate, Milvus, or Azure Cognitive Search.</p>
<ol start="3" type="1">
<li><p>User query → Embeddings model: User query is converted to a vector using the same embedding model for comparison.</p></li>
</ol>
<p>Example: OpenAI embeddings or Azure AI Studio embeddings.</p>
<ol start="4" type="1">
<li><p>Vectorized query → Vector search: The query vector is compared to stored embeddings using similarity metrics (cosine, dot product).</p></li>
</ol>
<p>Example: FAISS, DiskANN, or Azure Cognitive Search vector search.</p>
<ol start="5" type="1">
<li><p>Search results → LLM (Prompt + context): Retrieved chunks are combined with the original query and sent to an LLM for generation.</p></li>
</ol>
<p>Example: GPT-4, GPT-3.5, or Azure OpenAI deployed models.</p>
<ol start="6" type="1">
<li><p>LLM → Generated output: The LLM generates the final answer or content using the retrieved context.</p></li>
</ol>
<p>Example: ChatGPT, Claude, or Azure OpenAI Studio chat deployment.</p>
<ol start="7" type="1">
<li><p>Prompt history / cache: Keeps context for multi-turn conversations or semantic caching.</p></li>
</ol>
<p>Example: Redis for caching, LangChain memory, or Azure Conversation History.</p>
<ol start="8" type="1">
<li><p>Final response → User: The user receives the generated output grounded in retrieved context.</p></li>
</ol>
<p>Example: Any chatbot interface, e.g., Power Virtual Agents, Teams bot, or custom web chat.</p></td>
</tr>
</tbody>
</table>

## MS RAG Horizon 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image92.webp" style="width:7.51875in;height:4.14653in" /> |

## Copilot tech stack vs Azure AI Studio

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image93.webp" style="width:7.52917in;height:4.13264in" alt="{1865D349-42FF-4A5B-8200-3D682F6F2DB8}" /> |

#  Super Basic RAG 

|     |
|:----|
|     |

## Setup Open AI & Azure AI Foundry 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Azure Open AI</p>
<p><img src="subjects/tech/ai/ollama-img/media/image94.webp" style="width:5.73958in;height:2.28125in" alt="{F3D1485A-1538-4746-8887-1D9CBD23BC48}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create a new one</p>
<p><img src="subjects/tech/ai/ollama-img/media/image95.webp" style="width:4.33333in;height:1.61458in" alt="{74C19A32-CC9C-4658-90C0-A23875EB78EC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide basic details</p>
<p><img src="subjects/tech/ai/ollama-img/media/image96.webp" style="width:6.90625in;height:4.35417in" alt="{7CB2D645-7610-4CFE-9839-DEC391B5EF4D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review and Submit</p>
<p><img src="subjects/tech/ai/ollama-img/media/image97.webp" style="width:5.39583in;height:2.5in" alt="{CEB5893D-E0B5-467A-A1C5-0B70315224A5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below once it is created</p>
<p><img src="subjects/tech/ai/ollama-img/media/image98.webp" style="width:7.52292in;height:3.88542in" alt="{2CFC6159-E54C-4C27-A055-57F2FB3A0A18}" /></p></td>
</tr>
</tbody>
</table>

### Fetch Keys and Endpoints 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Fetch the keys of the resource to be used in further implementations.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image99.webp" style="width:7.52083in;height:4.20347in" alt="{90B5A464-2010-4F6F-8E82-488A3ECEACC9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Navigate to Azure AI Foundry 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→click the explore button</p>
<p><img src="subjects/tech/ai/ollama-img/media/image100.webp" style="width:7.52361in;height:2.79722in" alt="{6DB7F9B5-4FEC-494A-9CB9-5164F1BFD02A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→this opens AI Foundry Portal</p>
<p><img src="subjects/tech/ai/ollama-img/media/image101.webp" style="width:7.525in;height:3.95903in" alt="{8BAD3903-170A-4DE9-95BC-CF41A6CF8DE8}" /></p></td>
</tr>
</tbody>
</table>

#### Deploy a GPT Model (Chat Model) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Deployments → Deploy model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image102.webp" style="width:7.13542in;height:5.72917in" alt="{97FDDBC6-6B6F-4BCD-911B-0C52A16BE63F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Deploy Base Model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image103.webp" style="width:7.52431in;height:4.09722in" alt="{861830E2-7393-4559-B3C4-07961A6EF682}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select a model. Eg. Here we are choosing ‘gpt-35-turbo-16k’ Chat completion. Important is we choose the one that has ‘chat completion’</p>
<p>The Chat Completion option is designed for conversational AI use cases. Its purpose is:</p>
<ol type="1">
<li><p>It enables the model to generate responses in a dialogue format, maintaining context across turns.</p></li>
<li><p>Supports structured input/output for multi-turn conversations, unlike plain text completion.</p></li>
<li><p>Allows passing roles (system, user, assistant) for better control over behavior.</p></li>
<li><p>Optimized for chat-based applications like virtual assistants, customer support, and interactive bots.</p></li>
</ol>
<p><img src="subjects/tech/ai/ollama-img/media/image104.webp" style="width:7.53056in;height:5.11944in" alt="{BFBA2303-9733-42E6-B479-AEAE7341125C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name to the model. Customize if it is required, like capacity, content safety etc.</p>
<p>→Continue with ‘Deploy’ option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image105.webp" style="width:7.52361in;height:5.18958in" alt="{4C74AB4E-6428-4D6A-A4EC-29644936561F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is deployed we can see under the deployments.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image106.webp" style="width:7.51944in;height:3.80833in" alt="{CE4F2126-F42B-4D35-91F2-4113C748F712}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

#### Chat with the model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to chat option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image107.webp" style="width:7.52917in;height:3.83194in" alt="{02C8DC55-8D2C-4548-BE62-38B71E96ABAA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the deployment that we have done previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image108.webp" /><img src="subjects/tech/ai/ollama-img/media/image109.webp" style="width:7.52639in;height:4.19375in" alt="{7114CE0B-BC51-4131-8DE7-9212AA15FB9B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→configure the context for the model. Eg. Act as ‘Karen’, who is always frustrated. Something like a ‘role-play’.</p>
<p>→click Apply Changes</p>
<p><img src="subjects/tech/ai/ollama-img/media/image110.webp" style="width:7.52569in;height:4.39931in" alt="{F9AE7262-8BFD-473E-B846-0B1A8443C3C8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Start chatting with the model with some basic questions.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image111.webp" /><img src="subjects/tech/ai/ollama-img/media/image112.webp" /><img src="subjects/tech/ai/ollama-img/media/image113.webp" style="width:7.52014in;height:3.75139in" alt="{72362ABA-A924-45FA-AA87-A292292D8138}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see a bit funny response from the model.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image114.webp" style="width:7.53056in;height:3.3125in" alt="{20B6EB80-80AC-404A-9A3A-554F347069AA}" /></p></td>
</tr>
</tbody>
</table>

#### Tweak parameters of the model

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We can tweak parameters of the model that we are using to have response structure and authenticity.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image115.webp" style="width:7.52292in;height:5.50903in" alt="{D6F4B12F-F363-4A13-A016-F898FD2F64DA}" /></p></td>
</tr>
</tbody>
</table>

#### Deploy Image Generation Model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Images and ‘create a deployment’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image116.webp" style="width:7.53056in;height:3.69167in" alt="{8EC18A86-366E-418C-9FE3-BCF45FFE52C0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose a model and confirm</p>
<p><img src="subjects/tech/ai/ollama-img/media/image117.webp" style="width:7.52292in;height:4.48194in" alt="{A4361D28-93A2-4577-AB47-4B5F5F9AD49D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide name and other details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image118.webp" style="width:7.52986in;height:4.93056in" alt="{6C29EB94-E024-47E0-80EF-B3AFA9D62472}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a prompt and we can get the images</p>
<p><img src="subjects/tech/ai/ollama-img/media/image119.webp" style="width:7.52569in;height:4.27014in" alt="{17BEE82F-7866-4EB8-AC45-71CA1FE498B4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→view Code to see the code behind</p>
<p><img src="subjects/tech/ai/ollama-img/media/image120.webp" style="width:7.52153in;height:3.52222in" alt="{FBA82B08-2E0B-489D-A6E8-9190EDEF155E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the language</p>
<p><img src="subjects/tech/ai/ollama-img/media/image121.webp" style="width:7.52153in;height:4.10139in" alt="{8FC806CB-80A0-4AAF-A8A0-0F8C3D289AE3}" /></p></td>
</tr>
</tbody>
</table>

### <span class="mark">API Driven Access (PENDING - NEED A PROPER ENDPOINT AND KEY)</span> 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We can access the models using the APIs, just like we accessed them on local. Refer sections above.</p>
<p>→More on this github : <a href="https://github.com/kuljotSB/udemyKuljotOpenAi">https://github.com/kuljotSB/udemyKuljotOpenAi</a></p>
<p><img src="subjects/tech/ai/ollama-img/media/image122.webp" style="width:7.52014in;height:4.16944in" alt="{EAFB8CCE-B2C3-49FE-848A-F4CE79601FBE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Update the environment variables viz., key and endpoint, which can be fetched from the azure portal.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image123.webp" style="width:7.52986in;height:3.43125in" alt="{0B3E7FD9-628B-497E-95C6-0DA3AE737D36}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Install python in the local system if not there. In my case it was not there.</p>
<p>→Search for the relevant python version</p>
<p>winget search python</p>
<p><img src="subjects/tech/ai/ollama-img/media/image124.webp" style="width:7.525in;height:3.21389in" alt="{D3CDB71A-FA3F-4C4B-AE54-9627CF09C84E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue by selecting a particular version and install command as below.</p>
<p>winget install --id 9NCVDN91XZQP -s msstore</p>
<p><img src="subjects/tech/ai/ollama-img/media/image125.webp" style="width:7.52917in;height:3.01875in" alt="{260FCA59-0B14-412B-AA89-15A41174D636}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image126.webp" style="width:7.53056in;height:1.20694in" alt="{C533C76D-D93F-43BE-BB19-1F19A8EFB1AD}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image127.webp" style="width:7.52708in;height:1.48194in" alt="{A7F3A2D7-E9D0-447D-B96E-63F3F334AA0A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Check where it is installed and also check the version.</p>
<p>Get-Command python</p>
<p>python --version</p>
<p><img src="subjects/tech/ai/ollama-img/media/image128.webp" style="width:7.52569in;height:1.32986in" alt="{D6BF675D-15CC-457A-A3D5-51BBE34434E0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Check pip version</p>
<p>python -m pip --version</p>
<p><img src="subjects/tech/ai/ollama-img/media/image129.webp" style="width:7.52222in;height:0.47292in" alt="{C55D0627-EAB0-44BC-8001-3B755170DA4C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Install openai libraries</p>
<p><img src="subjects/tech/ai/ollama-img/media/image130.webp" style="width:6.9375in;height:2.40625in" alt="{DA21FCEC-1B4C-40B8-A83E-73093F35F1EA}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image131.webp" style="width:7.51944in;height:1.62708in" alt="{64573465-B134-4DD5-8A62-2B9947824068}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Change the model name. Ensure this model is deployed in ai-studio.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image132.webp" style="width:7.53056in;height:2.67222in" alt="{57D8CADB-19F1-4B7B-9BC4-B738447D5431}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to the the python file location</p>
<p><img src="subjects/tech/ai/ollama-img/media/image133.webp" style="width:6.9375in;height:3.8125in" alt="{021A42E2-59C9-4201-A517-EB3B7BEE8D96}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Invoke the python program. Given I do not have any environment variables and endpoint loaded and also no module provided, it will throw error.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image134.webp" style="width:7.52153in;height:5.85069in" alt="{3E8F6A56-7A85-40AE-9387-01488CEA16E1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Further if we want to add any kind of temperature, we add as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image135.webp" style="width:7.52361in;height:2.7625in" alt="{B12C126D-BAC9-46CA-BEDF-34F4114CE974}" /></p></td>
</tr>
</tbody>
</table>

## Vector Embeddings

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→A text is stored as vectors in the model. The vectors could be stored in multiple dimensions and can stretch upton 1000s.</p>
<p>A vector embedding model converts text into numeric vectors so machines can understand semantic meaning.</p>
<p>Example:</p>
<ul>
<li></li>
</ul>
<blockquote>
<p>Input: "I love cats" → [0.12, -0.34, 0.88, ...]</p>
</blockquote>
<ul>
<li></li>
<li></li>
</ul>
<blockquote>
<p>Input: "I adore kittens" → [0.11, -0.35, 0.87, ...]</p>
</blockquote>
<ul>
<li></li>
</ul>
<p>Vectors that are close in space mean the texts are similar in meaning, enabling search, clustering, or recommendation.</p>
<p>→Some popular ones</p>
<p>OpenAI</p>
<p>text-embedding-3-small (recommended newer version of ada-002) <a href="https://openai.com/index/new-embedding-models-and-api-updates/?utm_source=chatgpt.com">OpenAI</a></p>
<p>text-embedding-3-large (higher quality) <a href="https://openai.com/index/new-embedding-models-and-api-updates/?utm_source=chatgpt.com">OpenAI</a></p>
<p>text-embedding-ada-002 (still available but older)</p>
<p><img src="subjects/tech/ai/ollama-img/media/image136.webp" style="width:7.51875in;height:4.05139in" alt="{597B7C9D-53D1-4EAF-923A-7517FF3A8C02}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Each model has certain dimensions. For eg, as below.</p>
<p>text-embedding-3-small → 1,536 dimensions</p>
<p>text-embedding-3-large → 3,072 dimensions</p>
<p>text-embedding-ada-002 → 1,536 dimensions</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Some more examples of embedding engines.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image137.webp" style="width:6.02847in;height:3.26806in" alt="{4711D10D-BBC1-478D-AAD8-7E8F6930E7BD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Where do we store the vector embeddings in Azure

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→There are various options to store the vector embeddings.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image138.webp" style="width:7.52708in;height:4.22639in" alt="{48380BAC-0CA4-4976-801B-535F4D1E8379}" /></p></td>
</tr>
</tbody>
</table>

### Vector Embedding Model Deployment 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→In order to translate the plain text into vectors, we need a deployment model.</p>
<p>→This can be done using the same AI Studio and we use the deployments option →Deploymode → deploy base model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image139.webp" style="width:6.25in;height:3.73958in" alt="{577E99DC-CC70-4B70-BA53-8D614E06955C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose ‘text-embedding-ada-002’ model and confirm</p>
<p><img src="subjects/tech/ai/ollama-img/media/image140.webp" style="width:7.52153in;height:4.29028in" alt="{4E0EF6C9-59CB-406B-803D-09B85B671DFB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide configuration like name etc</p>
<p><img src="subjects/tech/ai/ollama-img/media/image141.webp" style="width:5.54167in;height:5.39583in" alt="{E34BE475-117B-494E-99A4-7B33098A7D28}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is done, we can see it gets deployed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image142.webp" style="width:7.52708in;height:3.53819in" alt="{E65B135C-0E10-4EC8-B6FF-CE6431ECF2C4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Modify the environment variables.</p>
<p>→here the key and base will be same as previously done.</p>
<p>→Ensure the model name is same as provided during creation (as in previous step).</p>
<p><img src="subjects/tech/ai/ollama-img/media/image143.webp" style="width:7.52847in;height:3.59028in" alt="{CB3BECC4-D67F-4C45-A00B-F42F612AADEE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→then we will use the program to vectorize a string, where it is populated in variable ‘data’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image144.webp" style="width:7.52569in;height:5.70139in" alt="{5B53FB57-2585-4A01-8C0C-FF5C02018EF0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Below is the code snippet that calls the embedding api internally.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image145.webp" style="width:5.33333in;height:1.70833in" alt="{243F9F7E-041F-4035-8432-058D805F14CC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to the folder in the terminal and execute the program.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image146.webp" style="width:7.52361in;height:2.30625in" alt="{31BD8177-8BB7-4A21-9E5F-05E6E7D7E4EF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then we should get the vector embeddings for that particular string as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image147.webp" style="width:7.52708in;height:5.54375in" alt="{EE8C37C0-EF2B-4F9F-8402-81A609A88C63}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#  RAG with AI Search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→What is AI Search?</p>
<p><img src="subjects/tech/ai/ollama-img/media/image148.webp" style="width:7.525in;height:3.63542in" alt="{E22C6B11-2F30-4948-AC8D-B2A1A3C74F6A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can feed into the Azure AI search variety of document types like pdf, docx, ppt, etc, either mixed or same type.</p>
<p>→Data sources can be DBs / Storage Accounts, etc.</p>
<p>→It uses Lucene syntax.</p></td>
</tr>
</tbody>
</table>

## Data Ingestion flow 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below is high level flow of data ingestion into AI Search.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image149.webp" style="width:7.52639in;height:4.48194in" alt="{79C43DF5-5C96-463B-8979-104115AC76F3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Step 1: This step defines, where do we get the data from? Like ‘data lake’, ‘blob storage’ or ‘cosmos db’ etc, then connec that particular service as ‘data source’.</p>
<p>→Step 2,3 &amp;4:</p>
<blockquote>
<p>There is something called ‘indexer’ part of Azure AI Search, which ‘CHUNKS’ data that is contained in documents (eg. Pdf) etc.</p>
<p>Then sends to another part of AI Search which is called <strong>Skillset-AI Enrichment</strong>.</p>
<p>Then this component does lot of activities like</p>
<p>keyword analysis</p>
<p>generating captions of pdf document etc</p>
<p>Then the output is sent back to ‘indexer’.</p>
<p>Then indexer maps output as ‘key-value’ pairs to Index.</p>
</blockquote>
<p>→Step 5: This is the ‘index’ which receives data from indexer. This is the component that gets referenced during the search operations.</p>
<p>→Step 6: Finally a user does the query, which gets acted on the ‘index’.</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

##  ARCHITECTURE 1 - RAG Flow with Azure AI Search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→On Azure how would a RAG flow looks like using the AI Search</p>
<p><img src="subjects/tech/ai/ollama-img/media/image150.webp" style="width:7.52917in;height:4.10347in" alt="{2C912031-5C29-4552-8394-F769BB87948A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><strong>→The flow looks like this</strong></p>
<p>→User queries to AI Search.</p>
<p>→AI search uses ‘vector embedding engine’ to vectorize.</p>
<p>→Then the vectorized data is used to search on the ‘index’ of the AI Search for similarities.</p>
<p>→Once a search is matched, AI Search gets ‘most-relevant’ documents.</p>
<p>→Once such documents are retrieved, relevant information is ‘extracted’ from those documents.</p>
<p>→Once the information is received, same information is sent ALONG with the user query to gpt-engine (or llm) and perhaps with CONTEXT as well.</p>
<p>→Then gpt-engine is asked to summarize or answer the user-query.</p>
<p>→gpt-engine then does what it is best at and sends back the response, which inturn wired back to user.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In this entire flow, Azure AI Search is acting as ‘database’ and also intellegent data anlysis or tool set.</p>
<p>→</p></td>
</tr>
</tbody>
</table>

## Create a Storage Account 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→first step is to create storage account where we store the pdf documents.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image151.webp" style="width:6.53125in;height:3.02083in" alt="{1F0DF510-A75F-4EF2-8396-40A3D167053D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide basic details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image152.webp" style="width:5.7875in;height:4.18819in" alt="{94FEDECD-846C-4A15-8439-32928B9F65A6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image153.webp" style="width:7.14583in;height:4.44792in" alt="{19AE08C8-DA7B-4967-9521-8D981DF68FBE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the SA is created, upload the pdf documents, upon which we would like to run the AI Search.</p>
<p>→Navigate to Settings → configuration → ‘enable’ the annoymous access.</p>
<p>→then save the configuration.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image154.webp" /><img src="subjects/tech/ai/ollama-img/media/image155.webp" style="width:7.525in;height:5.48472in" alt="{AFAB5597-9D3F-431E-A033-C188DC4740A5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next step is to create a container.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image156.webp" style="width:7.52847in;height:5.11458in" alt="{E5F626D9-8C27-40AE-9A17-489395228728}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name and change the access level.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image157.webp" style="width:6.22917in;height:3.4375in" alt="{3FD8239B-740F-42BA-81B6-38E9A278A4A4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Open the container that is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image158.webp" style="width:7.52986in;height:2.9in" alt="{0F4A3EEC-33E3-4B8B-9AEE-AECFCA66CB56}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload the pdf documents that we want to have the RAG on.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image159.webp" style="width:6.50278in;height:5.53056in" alt="{86ED505E-34DE-4274-928E-B9E430F14547}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Each pdf document has own endpoint.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image160.webp" style="width:7.52917in;height:3.80694in" alt="{91BB93E4-9502-4B14-B836-F053E163E423}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Create Azure AI Search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create a fresh Azure AI Search.</p>
<p>→Provide details and choose ‘basic’ tier.</p>
<p>→Note that this component is ‘different’ from ‘open ai’ that we created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image161.webp" style="width:6.58333in;height:4.91667in" alt="{7D0EE341-B832-4ABE-A443-26B0AE70DF8D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image162.webp" style="width:6.51042in;height:3.78125in" alt="{B374B98A-AC07-43E2-AC8F-AECEAEFC7E12}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to the resource.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image163.webp" style="width:7.52222in;height:4.22014in" alt="{DF35FB50-E520-41BA-B08A-4DFCCA5F46AA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the ‘search management options’, where ‘indexes, skillsets’ etc can be seen</p>
<p><img src="subjects/tech/ai/ollama-img/media/image164.webp" style="width:5.35417in;height:5.84375in" alt="{1D86CD45-653F-45BF-BA22-A389D58BEFD5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Import and vectorize the data

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Import the data by clicking the import option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image165.webp" /><img src="subjects/tech/ai/ollama-img/media/image166.webp" style="width:7.52708in;height:4.10486in" alt="{9952A0FF-38D5-45CB-AD09-A2A362A94306}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Storage Account option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image167.webp" style="width:7.52847in;height:2.53194in" alt="{4FC0AA70-7ADA-4D12-BDE9-A33B42EBEEBA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details of SA and click next</p>
<p><img src="subjects/tech/ai/ollama-img/media/image168.webp" style="width:7.52847in;height:4.75069in" alt="{10DE8982-8F42-47E5-A880-B7A3DDE2DEBB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Provide details for ‘embeding model’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image169.webp" style="width:7.52986in;height:4.10833in" alt="{33666BAE-0A0B-4C2A-9494-F1C4E0637801}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Ignore this as we are not dealing with images.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image170.webp" style="width:7.52917in;height:5.91944in" alt="{6FCB5357-75EB-4308-8EEC-F7AD81D35FC2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the indexing time. For now once is good.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image171.webp" style="width:7.52292in;height:3.06806in" alt="{F7BE3E06-3B38-462F-BA87-7C97816A3F19}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a suitable name and ‘create’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image172.webp" style="width:7.52292in;height:4.38333in" alt="{3D0FDF05-A075-4553-B0D4-CAA2D93A7773}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Naviagte back to Search Management and we can see things getting updated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image173.webp" style="width:7.52917in;height:3.07569in" alt="{494D5D7B-F50A-48D1-88F4-C46A6C44260A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice for ‘indexers’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image174.webp" style="width:7.52847in;height:2.87431in" alt="{0300820A-6801-4335-9FFF-DDBF5B13D3CE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Skillsets as well</p>
<p><img src="subjects/tech/ai/ollama-img/media/image175.webp" style="width:5.8125in;height:4.96875in" alt="{14D4E3A0-67C9-4EA7-88BA-030CCD1A4202}" /></p></td>
</tr>
</tbody>
</table>

### Quick search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to ‘indexes’ and we run a quick search.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image176.webp" style="width:7.52847in;height:3.00833in" alt="{5A2A42F0-0DC8-4049-ACFC-5F71868140DE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice it brought the contents searched from pdf document along with ‘vector embeddings’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image177.webp" style="width:7.52778in;height:4.44097in" alt="{C0C19B10-4341-431A-BBE1-416707A8A7D9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Configure the Azure Open AI Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to AI Studio → Chat → Select the appropriate deployment (eg. Gpt-4)</p>
<p>→Expand ‘Add your data’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image178.webp" style="width:7.52639in;height:3.93958in" alt="{529B0A44-7253-4AB0-80A1-E26FA0D77380}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Expand and click Add a data source</p>
<p><img src="subjects/tech/ai/ollama-img/media/image179.webp" style="width:3.39583in;height:1.82292in" alt="{C00DE0A8-9548-4184-80A0-89E627202CB2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here we will have multiple options. We choose AI Search, because we want the RAG to be done via AI Search.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image180.webp" style="width:7.525in;height:4.43125in" alt="{577A4AE6-96CA-4144-AFBB-C13DB9B68927}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the configuration</p>
<p><img src="subjects/tech/ai/ollama-img/media/image181.webp" /><img src="subjects/tech/ai/ollama-img/media/image182.webp" /><img src="subjects/tech/ai/ollama-img/media/image183.webp" /><img src="subjects/tech/ai/ollama-img/media/image184.webp" /><img src="subjects/tech/ai/ollama-img/media/image185.webp" /><img src="subjects/tech/ai/ollama-img/media/image186.webp" /><img src="subjects/tech/ai/ollama-img/media/image187.webp" style="width:7.52778in;height:5.10833in" alt="{1238F5C8-EF70-4664-BBF4-12C1DBB71591}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In the Data management, choose ‘Hybrid’ where it uses both keywords and vector for searching.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image188.webp" style="width:7.38542in;height:3.02083in" alt="{4C650F09-C81F-49E4-9B1B-29889EA5D503}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the authentication type to ‘api-key’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image189.webp" style="width:7.52847in;height:3.57292in" alt="{E6FF9298-52D1-46EC-90F3-00C397BF58BB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→finalize.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image190.webp" style="width:7.52569in;height:5.26389in" alt="{297FFC6C-29CA-4417-922E-44AA74E401D8}" /></p></td>
</tr>
</tbody>
</table>

## Chat with the model - Query Input

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us input a query that is found in the pdf documents.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image191.webp" style="width:7.52986in;height:3.6875in" alt="{007B53DB-5936-4454-B792-D50F67D7EA16}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image192.webp" style="width:7.51944in;height:3.69236in" alt="{402DF3D8-A983-42EF-A855-5036B7CFFC15}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Querying something that is not there in the pdf.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image193.webp" style="width:7.52569in;height:3.59028in" alt="{3CD72D7C-65AA-4DD3-BABB-8E821DC69FFA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Deploy as webapp

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This entire flow can be deployed as webapp</p>
<p><img src="subjects/tech/ai/ollama-img/media/image194.webp" style="width:7.52431in;height:3.1625in" alt="{06C129D4-B624-4931-816E-C357FCBE7F4C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide some name and we can deploy</p>
<p><img src="subjects/tech/ai/ollama-img/media/image195.webp" style="width:5.02083in;height:6.32292in" alt="{7B4A875D-7F7F-49A6-BE54-D807D2B2AE8B}" /></p></td>
</tr>
</tbody>
</table>

## RAG AI Search with Python Code 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><mark>→We can interact with RAG using python code.</mark></p>
<p><mark>→Below is the github link</mark></p>
<p><mark>IMPLEMENTED UPTO ABOVE POINT IN AZURE. START FROM HERE FOR PYTHON INTEGRATION.</mark></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Open the code base in vscode, where we need to supply these parameters.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image196.webp" style="width:7.52292in;height:3.76944in" alt="{DCDB910C-1F4B-4927-869D-0D654BB0DE72}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Azure AI Search and obtain the keys.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image197.webp" /><img src="subjects/tech/ai/ollama-img/media/image198.webp" /><img src="subjects/tech/ai/ollama-img/media/image199.webp" style="width:5.84375in;height:6.42708in" alt="{1C596C89-A18E-455F-B346-1FD3135DCA69}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Copy the primary key</p>
<p><img src="subjects/tech/ai/ollama-img/media/image200.webp" style="width:7.52361in;height:4.84861in" alt="{691F4777-7F38-40F1-856A-4F289FB9D970}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image201.webp" style="width:7.52361in;height:2.09653in" alt="{AAF9B9CF-7250-4AF1-B992-286AB18990B0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Obtain endpoint from overview.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image202.webp" /><img src="subjects/tech/ai/ollama-img/media/image203.webp" /><img src="subjects/tech/ai/ollama-img/media/image204.webp" style="width:7.52917in;height:3.15833in" alt="{9C8D104E-BB04-410D-99F7-95A602FA574E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image205.webp" style="width:7.52708in;height:2.01181in" alt="{11240A2D-6A50-4D38-827A-97601893D953}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fetch the indexes name</p>
<p><img src="subjects/tech/ai/ollama-img/media/image206.webp" /><img src="subjects/tech/ai/ollama-img/media/image207.webp" style="width:7.52292in;height:3.60139in" alt="{B73E4491-D4DA-425A-9316-C0C5536B97B7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image208.webp" style="width:7.52778in;height:2.11944in" alt="{1FD1DB27-2648-4814-B8EA-79A118855E7E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Azure Open AI to fetch the keys from there.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image209.webp" style="width:7.52569in;height:3.54931in" alt="{B148C488-4639-4393-99E7-ACBE8D3BD59E}" /></p>
<p>→Fetch keys</p>
<p><img src="subjects/tech/ai/ollama-img/media/image210.webp" /><img src="subjects/tech/ai/ollama-img/media/image211.webp" /><img src="subjects/tech/ai/ollama-img/media/image212.webp" style="width:7.52153in;height:4.63681in" alt="{029CC180-785F-4A14-BE41-C224000F9056}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image213.webp" /><img src="subjects/tech/ai/ollama-img/media/image214.webp" /><img src="subjects/tech/ai/ollama-img/media/image215.webp" /><img src="subjects/tech/ai/ollama-img/media/image216.webp" /><img src="subjects/tech/ai/ollama-img/media/image217.webp" style="width:7.52431in;height:2.02917in" alt="{001BA956-4FB2-4D3A-AACF-4D32D39E6CD3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to open AI studio to fetch ‘embedding engine name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image218.webp" /><img src="subjects/tech/ai/ollama-img/media/image219.webp" style="width:7.52708in;height:3.62014in" alt="{9CB161A3-19B5-43B8-8296-7FB3A06A367A}" /></p>
<p>→Copy the embeddings name and also the llm model name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image220.webp" /><img src="subjects/tech/ai/ollama-img/media/image221.webp" /><img src="subjects/tech/ai/ollama-img/media/image222.webp" style="width:7.52847in;height:5.03889in" alt="{D93C1004-082A-4ECA-A547-2E7A52DD0088}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image223.webp" /><img src="subjects/tech/ai/ollama-img/media/image224.webp" /><img src="subjects/tech/ai/ollama-img/media/image225.webp" style="width:7.52569in;height:2.67986in" alt="{77F4B78F-1FF5-4CCF-8899-CA0F4CC6037A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Install the packages locally 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have configured the environment, we need to install few packages.</p>
<p>→Click the ‘run.ipynb’ file and follow the instructions on the vscode terminal.</p>
<p>→Click the play button so that it installs.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image226.webp" style="width:7.51458in;height:4.36042in" alt="{6A17D96F-88AC-40A2-ACD8-55BEE34A7967}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Load environment variables.</p>
<p>→Given I did not have configurations in my system, my loading failed. Hence, copied from tutorial.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image227.webp" style="width:7.52639in;height:1.63403in" alt="{63E9A6A6-FF8F-4270-88C8-00BF098C9556}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create Open AI Client</p>
<p><img src="subjects/tech/ai/ollama-img/media/image228.webp" style="width:7.51806in;height:1.75694in" alt="{1DFF2F70-CAB7-4666-A558-7E906F3A9BF0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create embedding Generator Function</p>
<p><img src="subjects/tech/ai/ollama-img/media/image229.webp" style="width:7.52292in;height:1.86736in" alt="{38D7422A-6AFC-4E63-A559-E280D7A2F9F2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Vectorize a simple user query by using ‘embedding function’ created above.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image230.webp" style="width:7.52986in;height:0.89236in" alt="{47ADBB0D-FDBB-4D9A-9F01-AD8BB9E1FA2E}" /></p>
<p>→ Once executed, we get vectors for the text.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image231.webp" style="width:7.51875in;height:2.10833in" alt="{B4DB7E33-FAF5-4C41-8F6C-8813EB115087}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Initialize a context <strong>variable</strong> to store retrieved documents.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image232.webp" style="width:7.52153in;height:0.55694in" alt="{BD11243A-A210-4137-9262-588BE58932A2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Make an api call to Azure AI Search with vector embeddings that we have received.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image233.webp" style="width:7.525in;height:3.575in" alt="{0FEB35E4-D4C6-4B4A-810F-3B2607A56635}" /></p>
<p>→Let us briefly understand this part, where we have:</p>
<p>→url where it is dynamically loaded and pointing to the ai search.</p>
<p>→headers where we are passing the api key.</p>
<p>→body, where we are selecting ‘chunk’ from the retrieved response. What is chunk a small snippet is placed below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image234.webp" style="width:6.5in;height:3.36458in" alt="{EA030B5A-9CCD-4DE9-BAE4-0B8C68A4E4B2}" /></p>
<p>→What is a chunk can be seen on the ‘azure ai search’ index. Where a small query like ‘dubai’ is fired and we can see the response, where ‘chunk’ is mentioned.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image235.webp" /><img src="subjects/tech/ai/ollama-img/media/image236.webp" /><img src="subjects/tech/ai/ollama-img/media/image237.webp" style="width:5.76667in;height:3.35903in" alt="{8987A35F-83BB-4443-A8B0-189A17E0F607}" /></p>
<p>→ So, when the response is received, the value in ‘chunk’ gets extracted and stored.</p>
<p>→Then the logic that is being used here to compare is ‘text_vector’ with top 3 matches or top 3 documents. Snippet is below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image238.webp" style="width:6.19792in;height:3.04167in" alt="{56A72627-F546-415A-8A9D-B5DE43CA79B2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Subsequently, when the response is received by the API, it gets stored in the ‘context’ variable that is initlized.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image239.webp" style="width:7.52917in;height:2.87083in" alt="{D74E80BD-9FA9-4C46-9465-F55B93BB37FA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→finally execute the API code snippet and we get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image240.webp" style="width:7.52708in;height:1.24167in" alt="{7BE7FC12-5E79-4CDC-91C0-0E9B170E99BE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After this, we send these chunks and our prompts to gpt model for necessary sumarization.</p>
<p>→Here it is quite important that what we are trying to put in the prompts. This particular part decides how the response summary will be. Hence this is a great skill.</p>
<p>→READ THE PROMPT CAREFULLY, WHAT IS EXPECTED.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image241.webp" style="width:7.525in;height:3.48889in" alt="{30D4AA48-03F5-436A-B0D0-42DF3F2FAF2B}" /></p>
<p>→Execute the step and we get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image242.webp" style="width:7.53056in;height:1.86111in" alt="{40C359DB-A559-441D-BA31-CE7352D31641}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Let us change the query and rerun. Start here to get fresh embeddings.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image243.webp" style="width:7.52292in;height:1.20278in" alt="{1E2F1657-413E-4EEF-A3CB-6AA13139CD5E}" /></p>
<p>→Initialize the context variable.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image244.webp" style="width:7.52083in;height:0.62986in" alt="{1E5CCFEF-2268-43C3-A83E-97529B5A2A6B}" /></p>
<p>→Call the search index.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image245.webp" style="width:7.52708in;height:2.94375in" alt="{E1DD2CB4-7A58-47FB-B559-20A72E6D4BE2}" /></p>
<p>→Call the gpt summarize step.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image246.webp" style="width:7.52778in;height:3.67292in" alt="{A3C42728-5AD5-4EB1-93C9-E78280E02D6E}" /></p>
<p>→We can see the answer.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image247.webp" style="width:7.52917in;height:1.46944in" alt="{FED9C981-E23B-432A-B141-11ED0D30FBB1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Pain Points 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have some pain points.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image248.webp" style="width:7.52569in;height:4.12986in" alt="{66B8FC22-67E5-4F03-A8F1-ADD6E81016A3}" /></p>
<p>→PP 1:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image249.webp" style="width:3.87986in;height:1.66389in" alt="{3F8DC045-8D1B-42F9-A9A9-A38C7E63D2F0}" /></p>
<p>→PP2:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image250.webp" style="width:4.80625in;height:2.9625in" alt="{2CF317A1-6F95-4BD4-8305-6137DEEAF96A}" /></p>
<p>→PP3:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image251.webp" style="width:4.23403in;height:2.43958in" alt="{A4AE1247-F821-4532-839C-73BDE1F7DF4C}" /></p>
<p>→PP4:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image252.webp" style="width:4.94236in;height:2.28056in" alt="{AF8AC39B-431A-4015-A4BA-4A8ABEA0A129}" /></p>
<p>→PP5:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image253.webp" style="width:4.57431in;height:2.20625in" alt="{3454CB03-5C8F-41CA-97C9-DD04C3CC9235}" /></p>
<p>→PP6:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image254.webp" style="width:4.79931in;height:2.84722in" alt="{DCD1CF5D-66B8-4E09-B946-A1B9F14F9FBE}" /></p>
<p>→PP7:</p>
<p><img src="subjects/tech/ai/ollama-img/media/image255.webp" style="width:4.81111in;height:3.075in" alt="{15DB13E3-63E2-4CE5-8977-6C084F602192}" /></p></td>
</tr>
</tbody>
</table>

### Parallel Indexing

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→What is this?</p>
<p><img src="subjects/tech/ai/ollama-img/media/image256.webp" style="width:7.52361in;height:3.95208in" alt="{522D56E9-5FA9-4F5E-8715-ACA0F208A8D1}" /></p></td>
</tr>
</tbody>
</table>

#  Multi-Model RAG - Simple & Complex (Doc Intelligence)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Usecases</p>
<p><img src="subjects/tech/ai/ollama-img/media/image257.webp" style="width:7.51944in;height:3.9875in" alt="{08C4F456-7ADD-4F3F-A213-3361759418C5}" /></p></td>
</tr>
</tbody>
</table>

## High evel Architcture - Multi-Model RAG

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below I a high level multi-modal RAG architecture usng he Azure AI Search.</p>
<p>→Simple Image Verbalization</p>
<p><img src="subjects/tech/ai/ollama-img/media/image258.webp" style="width:7.52917in;height:3.73819in" /></p>
<p>→ Advanced Documn Intelligence</p>
<p><img src="subjects/tech/ai/ollama-img/media/image259.webp" style="width:7.52917in;height:3.73819in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→As Infra, what we need is as below. Create them in advance.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Azure AI Search.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image260.webp" style="width:7.52292in;height:4.24653in" alt="{09DA0984-2119-41D4-8D7E-8CA89979E9D6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Storage Account</mark> with Containers. Eg. Here we have two viz., artifacts and docs.</p>
<p>→Docs folder takes ‘pdf’ documents.</p>
<p>→Artifacts folder takes ‘images’ extracted from pdf document.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image261.webp" style="width:7.52153in;height:3.26597in" alt="{59671265-B165-444C-BDCC-EA0E3320089E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Azure Open AI Studio with Two deployments.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image262.webp" style="width:7.52361in;height:4.21875in" alt="{9CD091BB-33E0-41BC-9028-A88D4F4D9B7C}" /></p>
<p>→Two deployments viz., embedding model and gpt.</p>
<p>→for Multi Modal RAG currently gpt-4 is supported.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image263.webp" style="width:7.52361in;height:3.13958in" alt="{7D533B62-1E6A-40C0-8625-12D83DBC5392}" /></p></td>
</tr>
</tbody>
</table>

##  Upload documents (pdf) that has images.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We will upload two documents viz., pdf that has ‘images’ as well. Image will have some kind of data in it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image264.webp" style="width:7.525in;height:4.04583in" alt="{E2718D72-89CB-4E31-BAB1-7A044CA4E1F4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload to the container called docs and also provide a dedicated folder called ‘docs’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image265.webp" style="width:7.52708in;height:3.11458in" alt="{FCCF9308-63D0-4C18-A7FC-23534DD82B05}" /></p>
<p>→Folder name</p>
<p><img src="subjects/tech/ai/ollama-img/media/image266.webp" style="width:5.72917in;height:5.96875in" alt="{E032085C-65B4-4D0F-9488-35891D71ED4A}" /></p>
<p>→Ensure the access level is changed as below, so that they can be accessed from outside.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image267.webp" style="width:7.525in;height:2.96111in" alt="{3CAC16F6-A569-4489-A96B-D30E159FB1B0}" /></p>
<p>→This can be enabled from Configuration option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image268.webp" /><img src="subjects/tech/ai/ollama-img/media/image269.webp" style="width:7.52708in;height:4.59514in" alt="{CBFE7E30-5CB8-409B-8395-755CD6476AB4}" /></p>
<p>→Once it is enabled we can change the access level.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image270.webp" style="width:7.52847in;height:3.23264in" alt="{EC001297-FD04-4C23-AEDA-8C0837AD55E8}" /></p>
<p>→Documents loaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image271.webp" style="width:7.52847in;height:3.59236in" alt="{77534930-C814-4563-934E-8411F8FEA961}" /></p></td>
</tr>
</tbody>
</table>

## Vectorize the Data 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to AI Search and import and Vectorize data.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image272.webp" style="width:7.52153in;height:3.27083in" alt="{1955FABE-1A92-4A53-9203-E53DA6D6700C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Pick Az Blob Storage</p>
<p><img src="subjects/tech/ai/ollama-img/media/image273.webp" style="width:7.52986in;height:3.87431in" alt="{B0A2C9D1-236C-4691-8793-CE0BEC768395}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Pick multimodal RAG</p>
<p><img src="subjects/tech/ai/ollama-img/media/image274.webp" style="width:7.52083in;height:3.88125in" alt="{6E0D37EF-7AE1-47B4-8565-67ADC847B60A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide configuration.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image275.webp" style="width:7.52569in;height:4.5in" alt="{970D9430-C233-4D38-BA1F-0ED784A28452}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Default option for now.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image276.webp" style="width:7.52222in;height:4.25347in" alt="{DB1237FE-6649-436E-86B5-21355B6122D3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose first option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image277.webp" style="width:7.52361in;height:4.12292in" alt="{7B5061F6-31F9-46F2-900C-5A8546EA75F3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In the Image verbalization option choose as below, where ensure gpt-4o is choosen.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image278.webp" style="width:7.52569in;height:4.71389in" alt="{CA303C15-ECDC-4941-8B8C-1EF2D9C0F455}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then for ‘text vectorization’ choose the ada option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image279.webp" style="width:7.52153in;height:4.18125in" alt="{0B7DBDA0-94A1-4593-BA5C-8D5ED53091EF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In the image output choose the container that we created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image280.webp" style="width:7.53056in;height:4.22778in" alt="{C8E4CD6A-A7D0-410B-94C3-DB999B22F644}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Scheduling leave as ‘once’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image281.webp" style="width:7.52847in;height:4.40556in" alt="{D2CDB392-0CF5-41FA-BC31-2ED5C09293FD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name. Behind the scenes, indexes etc get created using this name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image282.webp" style="width:7.52431in;height:4.67986in" alt="{F4F0E29D-3428-4D3A-BA19-BB8517E07B16}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Review and Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image283.webp" style="width:7.52569in;height:4.2625in" alt="{41D0C128-AE87-4695-9D8D-8535B804AE22}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to AI Search and check the status of ‘indexers’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image284.webp" style="width:7.52361in;height:3.94653in" alt="{E00E09B0-9D50-4A9A-A44B-93B9F041B0E8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Search for query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Open the indexes</p>
<p><img src="subjects/tech/ai/ollama-img/media/image285.webp" style="width:7.525in;height:3.92361in" alt="{5A49EFF7-B98A-46A7-8E0B-2F5A18998E6C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Search for BMW and notice there is some content returned back.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image286.webp" /><img src="subjects/tech/ai/ollama-img/media/image287.webp" style="width:7.52083in;height:3.83056in" alt="{7197A7FC-E146-4EB0-9549-EA5F678518CC}" /></p>
<p>→Notice here carefully that the ‘context_text’ is generated which is NOT from a ‘text embeddings’, but ‘image embeddings’.</p>
<p>→The content embeddings or vector values that are seen below belongs to the image data extracted.</p>
<p>→Another interesting aspect of this search is the location of the image in the pdf, where it is represented using the x and y axis.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image288.webp" /><img src="subjects/tech/ai/ollama-img/media/image289.webp" /><img src="subjects/tech/ai/ollama-img/media/image290.webp" style="width:7.52292in;height:1.78194in" alt="{42F8743C-E0E2-4634-B812-F0AD8140C7D4}" /></p>
<p>→Further, the location of the image extracted and stored can be seen as below under the ‘content_path’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image291.webp" style="width:7.52778in;height:0.82014in" alt="{416685A5-AB65-46B7-A64C-7B2D7AC9A492}" /></p>
<p>→These images can be seen in the folder that we created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image292.webp" style="width:7.51944in;height:3.37222in" alt="{E02E4F14-91D3-4A63-B74B-08EBA99BFFCF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Inspect Skill Set definition 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to the skill set option and check what all skill sets it has captured.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image293.webp" style="width:7.525in;height:3.27847in" alt="{C41649F3-10E0-4062-8603-C375B357B7A7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→So below we can see there are lots of skills, and we see some of them. First one is ‘document extraction sill’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image294.webp" /><img src="subjects/tech/ai/ollama-img/media/image295.webp" style="width:7.4375in;height:5.0625in" alt="{C3CF7392-5902-4DC4-8F02-7E973BD6B1D4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Another Skill can be seen as splitting the text. Which is like splitting a text into chunks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image296.webp" style="width:7.52847in;height:2.56528in" alt="{977BE920-DB19-43D4-AE60-2273C820B8C8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another skill can be seen, which is ‘Chat Completion Skill’. This is the image verbalization skill that internally happens, where image is sent and asked for certain inputs.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image297.webp" style="width:7.52569in;height:2.74375in" alt="{3391A2C6-156E-4F01-87BA-EE724D8A5E47}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another Skill is ‘Embedding Skill’, which basically converts the text into vectors.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image298.webp" style="width:7.52986in;height:3.31319in" alt="{755B95D1-9A6D-4F45-8D5C-DF5D2B49F576}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Building end to end RAG Chat bot. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is the architecture we are looking at.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image299.webp" style="width:6.62847in;height:3.18819in" alt="{F7A6057E-36C4-4C90-934A-4156365762B8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fillout the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image300.webp" style="width:7.52153in;height:3.39028in" alt="{447A06EE-36CE-4296-85C5-2F49DD2A5918}" /></p>
<p><mark>→Storage Account name</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image301.webp" style="width:5.54167in;height:2.76042in" alt="{68B65082-5750-48ED-A22C-D4208F54C2C1}" /></p>
<p><mark>→Container Name is docs</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image302.webp" style="width:5.6875in;height:5.94792in" alt="{A84BD0F7-0918-4473-A95B-3A23EE3E9CAB}" /></p>
<p><mark>→Folder name: docs</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image303.webp" style="width:6.33333in;height:4.02083in" alt="{5B69706B-DFBB-4B98-A9D7-FCBA8E321055}" /></p>
<p><mark>→Next is the Azure Open AI Model and its details. Navigate to the studio and ensure the sdk is choosen as python, as our lab has the same.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image304.webp" style="width:7.51806in;height:3.45833in" alt="{A71F39FE-8896-4C26-BB7A-19B0C6D0F8BA}" /></p>
<p><mark>→Copy the Open AI endpoint</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image305.webp" style="width:7.01042in;height:3.38542in" alt="{1124261D-0DD1-4C28-AE6D-668DCDB27665}" /></p>
<p>→Replace the endpoint and api key as shown.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image306.webp" style="width:7.52361in;height:2.24931in" alt="{3A81606B-F0B8-4CA9-9CE5-E5846E7D4E5E}" /></p>
<p>→Get the gpt model and embedding model names and replace in the variables as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image307.webp" style="width:7.52847in;height:3.08403in" alt="{1B11CD6F-BB85-4318-929C-8CF41B66E771}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image308.webp" style="width:7.52431in;height:2.28056in" alt="{21505F4F-1C1D-4795-87E9-8F1056D9ECB9}" /></p>
<p>→Get the Az AI Search URL</p>
<p><img src="subjects/tech/ai/ollama-img/media/image309.webp" style="width:7.52083in;height:2.85625in" alt="{555F6898-15A6-4869-AD45-E0E325A50264}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image310.webp" style="width:7.52708in;height:2.11736in" alt="{58B64E6D-11BE-4DFD-A912-478A1C1FA00E}" /></p>
<p>→Get Search index name</p>
<p><img src="subjects/tech/ai/ollama-img/media/image311.webp" style="width:7.52569in;height:3.94167in" alt="{B4E18DCB-C1C2-460E-875F-7B2AF3128512}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image312.webp" style="width:7.52986in;height:2.29514in" alt="{34DB15C9-37CA-45CC-914E-B531B38C316C}" /></p>
<p>→Fetch API Keys of Search Service. Here we are copying primary key.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image313.webp" style="width:7.52639in;height:4.59028in" alt="{A8D3D30D-D66D-4CD9-8DD5-1662FD4FCFBB}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image314.webp" style="width:7.52708in;height:2.47778in" alt="{19D80A14-C1AD-4DA6-9F85-95083502A993}" /></p>
<p>→Notice now all the environment variables are filled out.</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Execute scripts 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We need to install set of libraries in local environment.</p>
<p>→Subsequently run the snippet to load the variables from environment.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image315.webp" style="width:7.52847in;height:3.41319in" alt="{5D2E78D8-20B2-4D97-A005-C95383FDD20C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Run the OpenAI Client</p>
<p><img src="subjects/tech/ai/ollama-img/media/image316.webp" style="width:7.52847in;height:2.54792in" alt="{E24EE4AF-CE92-4871-942E-5012A4D19298}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create an embedding generator</p>
<p><img src="subjects/tech/ai/ollama-img/media/image317.webp" style="width:7.52361in;height:2.75208in" alt="{4C89A20E-6A4B-4E26-B33E-56F2F2B71EE6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Execute a simple query that is relevant to the RAG we are dealing with .</p>
<p><img src="subjects/tech/ai/ollama-img/media/image318.webp" style="width:7.52361in;height:1.25in" alt="{879033EB-ED32-4D94-BB88-8B8124A64DF2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Initialize a simple context variable to store the data.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image319.webp" style="width:7.52569in;height:0.69375in" alt="{D7B86D47-DCA9-4B8F-953D-BCD65075EA66}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Make an API call to the Search Index (of Az AI Search component)</p>
<p><img src="subjects/tech/ai/ollama-img/media/image320.webp" style="width:7.52639in;height:3.55139in" alt="{CB0E960C-BE40-41DC-99A3-C6AC2D862E0F}" /></p>
<p>→Here important aspect is the items in ‘select’ option of search where we are looking for ‘document_title etc’</p>
<p>→All these items and their data when it is retrieved gets supplied to LLM.</p>
<p>→Further in the same call we are running a ‘vector search’ on the index. Below is the snippet. Here, we are taking the top 10 ‘chunks’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image321.webp" style="width:7.52153in;height:2.39306in" alt="{551F5789-DB75-482A-BB9D-D91F0DA20AEF}" /></p>
<p>→Result of the execution.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image322.webp" style="width:7.52361in;height:4.55556in" alt="{C5FCC4CA-CDC1-4371-96E8-FFCFD436C22A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Execute a function to locate and display context in the pdf documents.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image323.webp" style="width:7.53056in;height:3.61806in" alt="{A3559EE9-4AD8-42A9-94DD-D657C952CD8B}" /></p>
<p><mark>→MORE UNDERSTANDING IS NEEDED WHAT EXACTLY THIS CODE DOES.</mark></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We ask the LLM to summarize the information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image324.webp" style="width:7.52986in;height:3.59028in" alt="{33F8ADB7-14EC-4617-A93A-67DC0706D654}" /></p>
<p>→Here is the answer to above query.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image325.webp" style="width:7.52778in;height:3.49375in" alt="{358D551B-A1EB-435B-AF18-D78B835D7A2E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Generate citation. Meaning, we will get information about all the pdfs that are used in the summary. It highlights the sections of the pdfs that were used.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image326.webp" style="width:7.53056in;height:2.91875in" alt="{C149E774-BC18-4233-BEC8-DFDD8B00E4E5}" /></p>
<p>Eg. As below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image327.webp" style="width:7.52708in;height:3.84375in" alt="{D19486FE-4D94-42DB-9F0F-EC384106CD48}" /></p>
<p>Eg. And as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image328.webp" style="width:4.78125in;height:1.95833in" alt="{3D97DE7B-572F-4CBA-B035-AE07186D274C}" /></p>
<p>Eg. As below. Notice the report heading for clarity where it says ‘via text match’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image329.webp" style="width:6.89583in;height:2.75in" alt="{56153A83-2FDB-4A4E-9B96-11AD7EF49F93}" /></p></td>
</tr>
</tbody>
</table>

## Multi-Modal RAG - Advanced Document Intelligence

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→In this setup, only additional component introduced is the ‘Document Intelligence’, rest all are same as previously implemented in simple RAG.</p>
<p>→In my case this is loaded in <mark>LAB4</mark> folder.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image330.webp" style="width:7.52708in;height:3.63264in" alt="{D92F87D5-276F-4242-9170-C86F7B7F772A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→For this we need sample documents / invoices which are as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image331.webp" /><img src="subjects/tech/ai/ollama-img/media/image332.webp" style="width:7.52708in;height:3.74861in" alt="{BBBAEFE5-83B1-4E34-8E77-07D0088808A0}" /></p></td>
</tr>
</tbody>
</table>

### Upload Invoice PDF 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We will make use of the same storage account → container → docs to upload the pdf</p>
<p>→Further, any images that are part of the invoice will be stored back in ‘artifacts’ folder.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image333.webp" style="width:7.52708in;height:3.30764in" alt="{9F74773F-EFA7-41FD-A6B9-96DEABA295F3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload the pdf under docs folder again.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image334.webp" style="width:7.52083in;height:3.07222in" alt="{C50DBCDC-400E-48CC-BA4E-AD48C59DFE94}" /></p></td>
</tr>
</tbody>
</table>

### Vectorize the data (or pdf)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As a next step we will vectorize the data that is uploaded.</p>
<p>→Navigate to AI Search and click import.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image335.webp" style="width:7.52083in;height:3.83611in" alt="{0D8B6BEB-7EC3-4F76-B370-6F97786E1AE2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Blob Storage</p>
<p><img src="subjects/tech/ai/ollama-img/media/image336.webp" style="width:7.51042in;height:4.76042in" alt="{C30B5B32-3117-4FB1-962C-AAC8C4878E52}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Multi-Modal RAG</p>
<p><img src="subjects/tech/ai/ollama-img/media/image337.webp" style="width:7.52639in;height:3.42222in" alt="{82F6FC96-30E9-4D80-AD81-01B3175CF6B4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure the details and proceed next</p>
<p><img src="subjects/tech/ai/ollama-img/media/image338.webp" style="width:7.52153in;height:4.67153in" alt="{3EFEFE78-7000-474B-A8A7-7AAC704559E5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Now, in the content extraction option, unlike previously we used ‘default’ option, now we use ‘AI Document intellgence’ option, where the co-ordinates for ‘text’ and ‘image’ both are extracted and stored.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image339.webp" style="width:7.52222in;height:3.86597in" alt="{BAF89C60-4FC0-43DE-8C45-BAA67CC5515C}" /></p>
<p>→Choose multi-service account. If not created, then create one</p>
<p><img src="subjects/tech/ai/ollama-img/media/image340.webp" style="width:7.53056in;height:4.64167in" alt="{5E13829C-F6F9-4BA8-8D67-70155E0676C1}" /></p>
<p>→Choose API Key and Ack then hit next.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image341.webp" style="width:6.84375in;height:2.07292in" alt="{EAAF39F7-B3FC-4863-BDF9-461AD2A3F7D5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→In content embedding, under image verbalization option choose as below. Here we are using the gpt-4o model.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image342.webp" style="width:7.52222in;height:4.65764in" alt="{89F8B401-152E-48FB-890E-2005F49256C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Similarly for ‘text vectorization’ choose as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image343.webp" style="width:7.52986in;height:4.91389in" alt="{3F60C786-08E2-4399-AA44-15760A4F9B5E}" /></p>
<p>→As a note, this particular step again has two options, here we are choosing ‘image verbalization’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image344.webp" style="width:7.52292in;height:4.34097in" alt="{171A6943-F7C7-4BAE-8DE8-70686DE1BC44}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with output location where extracted images will be stored.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image345.webp" style="width:7.52292in;height:4.57014in" alt="{570FCF9F-94B2-4CEA-8406-3A7E42E4E9EC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Leave the indexing to ‘once’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image346.webp" style="width:7.525in;height:4.075in" alt="{B8266400-6557-4AEB-943D-04576D50F445}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a suitable name and create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image347.webp" style="width:7.52292in;height:4.33264in" alt="{F090707C-CFF9-4FE7-A6AF-7C1FBC5406EA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Index gets created</p>
<p><img src="subjects/tech/ai/ollama-img/media/image348.webp" style="width:7.525in;height:3.52014in" alt="{CE862FCB-DB9A-4DB2-9038-137E84BDF771}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→As a check ensure the ‘indexer’ is also ready</p>
<p><img src="subjects/tech/ai/ollama-img/media/image349.webp" style="width:7.52569in;height:4.02569in" alt="{90ADC73D-85F5-4DCE-8A78-5678215E915D}" /></p></td>
</tr>
</tbody>
</table>

### Search for a query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have the infra framework ready, let us run a quick search.</p>
<p>→Eg. Search for ‘azure’ and notice it searched for image and translated to a suitable text.</p>
<p>→Note that the search is done on both ‘image’ and ‘text’ as well, which is snippetd below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image350.webp" style="width:7.52847in;height:3.64444in" alt="{914A892B-450E-410F-AFD2-8F213E216053}" /></p>
<p>→If we go down a bit and see that it also searched ‘text’ and we can see the null under image_document_id.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image351.webp" style="width:7.52153in;height:1.94236in" alt="{B682DF14-65A8-42F2-95E7-EA135C6F5FC6}" /></p>
<p>→Also note that for such ‘text’ the content_path’ is also null.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image352.webp" style="width:7.51944in;height:1.78125in" alt="{B77E6156-E745-4079-8D23-6656E29E410C}" /></p></td>
</tr>
</tbody>
</table>

### Inspect the Skillset Definitions

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Understand the skillset definitions and see what all skill sets have been captured.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image353.webp" style="width:7.45833in;height:5.3125in" alt="{5E565B9E-338B-4DD9-9CDC-69F87AF29737}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→First Skill is ‘document intelligence layout skill’</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image354.webp" style="width:7.02083in;height:1.44792in" alt="{D7BC97C3-058D-4786-B9D6-5593BA940AE8}" /></p>
<p><mark>→Next is chat completion skill</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image355.webp" style="width:6.15625in;height:1.125in" alt="{ACCBF67C-65AC-469C-BFC4-C05369E0E926}" /></p>
<p><mark>→Next is embedding skill</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image356.webp" style="width:7.4375in;height:1.66667in" alt="{098CA879-28D6-45D9-A1BE-550073E34939}" /></p>
<p><mark>→Next is Shaper skill</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image357.webp" style="width:6.0625in;height:2.125in" alt="{3897DEFF-E6DE-43EB-8331-0E89D59ED2A0}" /></p>
<p><mark>→Index Projections - what is it??</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image358.webp" style="width:6.6875in;height:2.03125in" alt="{335468A5-9CB1-4857-842A-0663A7BD05D4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Building end to end RAG Chat bot with Document Intelligence

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→The architecture we will be following is this where infra is ready now</p>
<p><img src="subjects/tech/ai/ollama-img/media/image359.webp" style="width:7.52361in;height:3.59931in" alt="{88B7D3D2-6515-4859-9424-B63C995668F5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fillout environment variables</p>
<p><img src="subjects/tech/ai/ollama-img/media/image360.webp" style="width:7.52778in;height:3.78264in" alt="{C6BD4600-640E-4E2A-86C6-DAA963C1A987}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Copy all the values from previously implemented. Only thing that is changed here is ‘search index name’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image361.webp" /><img src="subjects/tech/ai/ollama-img/media/image362.webp" style="width:7.52639in;height:2.84028in" alt="{6FC001C1-06D1-4AAE-BC27-B4279871B238}" /></p>
<p>→This is to be changed as below snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image363.webp" style="width:7.52222in;height:3.61528in" alt="{C810C186-4A3D-46DB-9AE3-8442FFA5FDCC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After changing the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image364.webp" style="width:7.41667in;height:1.51042in" alt="{03801696-819C-41C4-B1E7-63F85EFDCFDB}" /></p></td>
</tr>
</tbody>
</table>

#### Execute scripts

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Install packages</p>
<p><img src="subjects/tech/ai/ollama-img/media/image365.webp" style="width:7.52569in;height:1.15625in" alt="{48E60452-D688-4119-A19C-77E24EE471B7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Load variables</p>
<p><img src="subjects/tech/ai/ollama-img/media/image366.webp" style="width:7.52778in;height:2.19583in" alt="{B1341FC1-C597-46BE-8821-683F4A8897F0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create the client</p>
<p><img src="subjects/tech/ai/ollama-img/media/image367.webp" style="width:7.525in;height:2.67708in" alt="{191E689B-DA64-43DB-9462-EE6DA064DBB8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create embedding function</p>
<p><img src="subjects/tech/ai/ollama-img/media/image368.webp" style="width:7.52847in;height:2.67986in" alt="{AB52D7D4-611A-4843-8D7D-5E6E6465C156}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Ask the engine about a specific item from an invoice and see if it can returne accurate data.</p>
<p>→Eg. Below is snippet where this particular date is being asked for.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image369.webp" /><img src="subjects/tech/ai/ollama-img/media/image370.webp" style="width:7.52361in;height:3.45694in" alt="{8A431922-789F-4D40-851F-6C6964171816}" /></p>
<p>→Fire a query and we can see the vector embeddings generated.</p>
<p>→Also load the context variable.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image371.webp" style="width:7.52569in;height:2.23819in" alt="{3168BCE8-697D-41AF-9124-1DF43B33BDD6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Send API Call to engine</p>
<p><img src="subjects/tech/ai/ollama-img/media/image372.webp" style="width:7.52431in;height:2.40556in" alt="{51FF962A-F78E-44AD-B7D1-504F686D93C3}" /></p>
<p>→The query we are sending is as below where we are retrieving the same fields but top 10 chunks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image373.webp" style="width:7.52917in;height:2.34583in" alt="{F48650F3-536F-4254-AE73-B29C8C48EC7E}" /></p>
<p>→all are stored in the context variable upon retrieval.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image374.webp" style="width:7.52778in;height:2.40278in" alt="{65AC14D7-70A2-47C2-A7E6-62524D9310C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After invoking the same, we get chunks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image375.webp" style="width:7.52847in;height:2.15069in" alt="{967AA271-2D41-42BE-A22A-E383EDCCC043}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next step is to locating and displaying the contents of the pdf.</p>
<p>→This is lots of boilerplate code but here is the briefly summarized description of the code.</p>
<p><mark>→The images that were searched and retrieved are on ‘scaled-down’ version and we do not know why it happens. Because of this, the code does ‘scale-up’ of these co-ordinates’. The snippet of code is as below. In reality this may not be needed.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image376.webp" style="width:6.84375in;height:1.27083in" alt="{1D6F8053-8DD4-4423-A4EE-B63471D7B57D}" /></p>
<p>→The function snippet is as below, which needs to be run.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image377.webp" style="width:7.52917in;height:4.19722in" alt="{0EA65320-FB27-4163-8D04-D7AA36C17A8A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Send api call to gpt engine to summarize.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image378.webp" style="width:7.52847in;height:2.72708in" alt="{C231DE4F-B13B-4048-BD8B-1A8FBB971BAC}" /></p>
<p>→We get below response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image379.webp" style="width:7.52361in;height:2.93333in" alt="{9DBC90C5-A80C-422D-A0E6-2EE2A166CD96}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Let us change the query to be more specific to the invoice.</p>
<p>→Here we are asking for some specificity.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image380.webp" style="width:7.52778in;height:1.46458in" alt="{5F21AA79-36B1-4ED8-A463-5581E305B27E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image381.webp" style="width:7.52708in;height:3.07083in" alt="{2075B872-FED9-4AF6-9FB1-802FF4F420F4}" /></p>
<p>→and</p>
<p><img src="subjects/tech/ai/ollama-img/media/image382.webp" style="width:7.52569in;height:3.08681in" alt="{2D74FC0F-52CF-4D4B-B41B-C962678D05A3}" /></p>
<p>→finally summary again</p>
<p><img src="subjects/tech/ai/ollama-img/media/image383.webp" style="width:7.52986in;height:2.61875in" alt="{356184DD-84A6-4A74-8088-6DBF4EE33298}" /></p>
<p>→Let us see the summary now which is much closer to what is there on the invoice etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image384.webp" style="width:7.52569in;height:3.05972in" alt="{B76524B6-BB4D-49D1-876D-5298CAAA8D57}" /></p>
<p>→Same could be seen in the invoice as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image385.webp" style="width:6.13819in;height:3.00833in" alt="{0E61474C-A251-42BC-B5B6-2EFDAABEDBA8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finally let us ask the code snippet to display the same thing in the pdf.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image386.webp" style="width:7.52708in;height:3.33194in" alt="{B8F7B81E-7FED-4669-9640-C658BEBC4BCE}" /></p>
<p>→Notice below pdfs after downloaded, have been marked properly.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image387.webp" style="width:7.52639in;height:4.60069in" alt="{5ADABF21-7FDC-431C-9335-B2C30E2CBB03}" /></p></td>
</tr>
</tbody>
</table>

#  Azure AI Content Understanding 

|     |
|:----|
|     |

## Intro

|     |
|:----|
|     |

### Scenario

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Assuming we have a retail company that has too many information sources and need to understand them.</p>
<p>→Below image show such various sources and using ‘azure’ pre-built-analyzers a solution is designed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image388.webp" style="width:4.5625in;height:2.32569in" alt="{EBD8E0DF-E9F3-49AD-A0E7-F39C9686EFC3}" /></p></td>
</tr>
</tbody>
</table>

### Components 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→What are the components of it.</p>
<p>→On the left most we can see there are various inputs. Then Azure AI does two things as shown.</p>
<p>→One is Content Extraction and other is Field Extraction.</p>
<p>→When we combine both of these are called ‘Analyzer’.</p>
<p>→We can either use ‘pre-built-analyzers’ or ‘custom’. Both are available in Azure.</p>
<p>→In the Content extraction we configure what exactly need to be extracted. It is like predictive AI working behind the scenes.</p>
<p>→Field extraction, is the actual data that gets extracted out of the content. This is labelling the data and generative AI.</p>
<p>→Once this is done, the extracted information is stored to a datastore on the rightside, which is mostly a vector database.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image389.webp" style="width:4.79028in;height:2.72292in" alt="{2DFBB5A0-5915-43B3-A301-9AE7AD052D2D}" /></p></td>
</tr>
</tbody>
</table>

### Modes available for AI content Understanding 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image390.webp" style="width:4.53681in;height:2.21875in" alt="{0D7B1EEC-0E52-4D6F-B04A-7E05675F9F76}" /> |

### Add ons

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→There are some add ons to help build better RAG pipeline.</p>
<p>→There are two viz., Classifier and Face Detection.</p>
<p>→Classfier in simple sense that classifies something that is a large document in to manageable pieces like Type A or B or something like that.</p>
<p>→Face Detection is not GA, which requires some elevated permissions etc and not directly available. This is broadly to build person database, where images of persons are stored and a database is built over it. On top of it many metadata information is stored. <mark>For this the company need to fillout a Microsoft Request Form.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image391.webp" style="width:4.23194in;height:2.06944in" alt="{98F578F0-D268-4DDD-A32E-02787E31BB20}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Create AI Foundry Project

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to AI Foundry →AI Hubs →Create → Hub</p>
<p><img src="subjects/tech/ai/ollama-img/media/image392.webp" style="width:7.51944in;height:3.73403in" alt="{540B52EC-A83E-4F3A-B793-3E5D3927DA79}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create a Hub first</p>
<p><img src="subjects/tech/ai/ollama-img/media/image393.webp" style="width:4.86389in;height:2.23819in" alt="{8092C20C-C9D6-453C-9B9D-2970BA2BED94}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Then inside the hub create a project. This is confusing as it was not implemented and need to do hands on.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image394.webp" style="width:7.525in;height:3.65in" alt="{036B5816-6DDA-41E5-A06A-A0E7D3139F2A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Content Understanding section.</p>
<p><mark>→First we will use ‘General Document Analysis.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image395.webp" style="width:7.52014in;height:4.7in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Try it out. Use the default available document or drop-in any document of our choice using the drop option.</p>
<p>→Click Run Analysis.</p>
<p><mark>→We already have a generic document there for analysis. (NOT SURE IF THIS IS PRE-BUILT OR LOADED MANUALLY)</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image396.webp" style="width:7.52847in;height:2.98056in" alt="{501951C2-272D-4CAB-A143-87217F8176B9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It is going to run behind the scenes.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image397.webp" style="width:7.34375in;height:3.10417in" alt="{147F59D7-AAB4-4436-B773-A594AE344F06}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the process of analysis is done, it has captured all the information from document and populated in the ‘mark-down’ section.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image398.webp" style="width:7.52153in;height:2.54861in" alt="{3C1DC3F2-A829-40A2-8012-6BCA9C16DECA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Next is Invoice Data Extraction.</mark></p>
<p>→Now if we want a structured data extraction needed. We use the second option ‘Invoice Data Extraction’.</p>
<p><mark>→Notice that there is already another document uploaded already. Again, this need to be validated if it is by default avaialble or has been uploaded, manully.</mark></p>
<p>→Click the ‘run analysis’</p>
<p>→this process ues PRE-BUILT INVOICE ANALYSER.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image399.webp" style="width:7.52778in;height:3.68889in" alt="{9A42ED44-CEFD-4A97-B9DD-4DE2498DFA6C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Running the analysis.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image400.webp" style="width:7.52917in;height:3.36111in" alt="{DF8648CC-8BE4-4E02-A0AE-B7C8469F3F8C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After analysis it populates appropriately. We can see both ‘content extraction’ &amp; ‘field extraction’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image401.webp" style="width:7.52639in;height:3.53264in" alt="{C946385C-3C11-4B16-8FD1-FDACE8DC68E2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice here that it has indeed used ‘pre-built-analyser’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image402.webp" style="width:4.625in;height:2.88542in" alt="{C89943D1-F11A-43FA-9B83-32BC33DE9FCC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Next is Contract extraction.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image403.webp" style="width:7.52917in;height:3.87569in" alt="{E3499E76-D5C2-4D85-A781-FAA5236CB4C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Next is Post Call Audio Analysis</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image404.webp" style="width:7.525in;height:3.79375in" alt="{850CCF08-233C-4C07-860B-13C6993168C1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run Analysis</p>
<p><img src="subjects/tech/ai/ollama-img/media/image405.webp" style="width:7.52917in;height:2.99028in" alt="{926E0147-A938-4904-B386-80F61BD61CD1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→after analysis. Notice the analyser used, which is again pre-built.</p>
<p>→If we navigate to fileds, we can see more details like transcript, summary etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image406.webp" style="width:7.52639in;height:3.75972in" alt="{2D8DF9DA-B57F-446F-A1C5-D564FA5F80C7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Next is Video Analysis</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image407.webp" style="width:7.52014in;height:3.79514in" alt="{B11D58A7-43D0-473D-B5F1-11944B2A39C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Post analysis</p>
<p><img src="subjects/tech/ai/ollama-img/media/image408.webp" style="width:7.52639in;height:2.92292in" alt="{FC54DAB5-7611-49B0-A7B4-E24ADB6DAE07}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Endpoint for Content Understanding

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Overview and Azure AI Services.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image409.webp" style="width:7.52847in;height:3.25417in" alt="{16562BC4-C83F-4CEA-A916-6C5336AF4992}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Python Driven Access of AI Content Understanding 

|  |
|:---|
| →Below snippets show how we can access the AI-Content-Understanding services of Azure via Python Code or APIs |

### Populate Env Variables in the .env file

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As a first step, we will be setting environment variables</p>
<p><img src="subjects/tech/ai/ollama-img/media/image410.webp" style="width:7.525in;height:2.99931in" alt="{7DD0E068-A806-4E85-9029-F96498B2CB12}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→To fetch the same navigate to Azure AI Foundry portal and extract the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image411.webp" /><img src="subjects/tech/ai/ollama-img/media/image412.webp" /><img src="subjects/tech/ai/ollama-img/media/image413.webp" /><img src="subjects/tech/ai/ollama-img/media/image414.webp" style="width:7.52569in;height:3.34306in" alt="{4BF30AF6-F471-45CE-B10E-9003E482BDAC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→post copying.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image415.webp" style="width:7.52986in;height:1.16181in" alt="{447DC7B6-6962-4C37-829B-325DD45AFD1E}" /></p></td>
</tr>
</tbody>
</table>

### Set Environment variables

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Run below file to set the env variables, which loads the environment variables or endpoints into the context.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image416.webp" style="width:7.52153in;height:2.69236in" alt="{8BAA9677-6EDB-4769-A4D3-9092CEEE1D20}" /></p></td>
</tr>
</tbody>
</table>

###  Run Pre-built document analyzer

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Run the pre-built Document analyzer snippet, which basically conntects to a github link where a pdf is there.</p>
<p>→This pdf is an invoice.</p>
<p>→This invoice is also stored in the lab environment.</p>
<p>→The snippet has a dictionary object of python, called document_analysis_result, which stores the output of the invocation.</p>
<p>→given the analyzer takes sometime at Azure, and is not instant, we might need to wait a bit till the actual response is received.</p>
<p>→For that a polling is constructed with a gap of 1 second that checks if it is ‘running’ or ‘suceeded’ (this part not sure).</p>
<p>→Once the loop is broken, then analysis variable or object gets loaded with the result.</p>
<p>→Further, the logic also has a new URL getting consturcted for polling because for the subsequent calls, we need the ‘analyzer id’ and using that particular a new url will be constructed and then polled.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image417.webp" style="width:7.52569in;height:3.76667in" alt="{338155A7-A73B-4CC1-8A05-EBA8B8F72FF2}" /></p>
<p>→the analyser here being used is as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image418.webp" /><img src="subjects/tech/ai/ollama-img/media/image419.webp" style="width:6.40625in;height:0.73958in" alt="{C4055D5C-511D-49E3-8F39-A44C172DFF70}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After running notice the result, where we got the id and the status ‘running’ and then ‘succeeded’. Further with the Result object being printed as is.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image420.webp" style="width:7.51875in;height:2.325in" alt="{626192F1-3CE5-4FC3-B15E-A9D079B6D567}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Lab environment on local</p>
<p><img src="subjects/tech/ai/ollama-img/media/image421.webp" style="width:5.8875in;height:3.16389in" alt="{6CCC8FC9-EA41-4C52-9045-90E40E941980}" /></p></td>
</tr>
</tbody>
</table>

#### Extract the results

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once previous code is run we get good number of data items in the object.</p>
<p>→below snippet of code basically extracts critical information from the object.</p>
<p>→This code can be customized as per the needs. This was already generated by anotehr gpt tool, hence we have liberty to modify etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image422.webp" style="width:7.52153in;height:4.50833in" alt="{E55A407C-D82C-4096-AECA-A65ED4D9FA1E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the code is executed, we get something like below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image423.webp" style="width:7.52639in;height:5.09236in" alt="{1B65E8B7-CDCE-45A3-AF26-C3AE6D8A6FAA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→this code snippet also generates something called, ‘mark-down’ files for more understanding etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image424.webp" style="width:7.52986in;height:3.86944in" alt="{2F2688AC-9513-4E04-9801-D29D10BB0E9E}" /></p></td>
</tr>
</tbody>
</table>

###  Run Pre-built Image Analyzer 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Just the way we executed a text analyzer, we can do the analysis on ‘images’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image425.webp" style="width:7.51806in;height:3.14653in" alt="{A0B67969-1BAA-4448-8E9B-D84147C2714D}" /></p>
<p>→The analyzer here being used is as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image426.webp" style="width:6.09375in;height:1.26042in" alt="{07E7ABE1-36E0-4F13-924B-855995A7B22C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→The image that will be analyzed is a pie-chart.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image427.webp" style="width:7.53056in;height:3.02431in" alt="{88B2FF45-4DE1-48E1-8736-657BC24B2029}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Execution Result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image428.webp" style="width:7.52292in;height:1.77222in" alt="{762440D8-B9F4-4428-9794-65A0DA786FAA}" /></p></td>
</tr>
</tbody>
</table>

#### Extract the results

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→run the code to extract the results.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image429.webp" style="width:7.52639in;height:3.59097in" alt="{472031D1-8CD7-4047-8512-D166FCA57446}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Result of the analysis as mark-down file</p>
<p><img src="subjects/tech/ai/ollama-img/media/image430.webp" style="width:7.52986in;height:4.24653in" alt="{21F096FD-F244-435B-BD64-A70C463B7C34}" /></p>
<p>→A summary could also be seen</p>
<p><img src="subjects/tech/ai/ollama-img/media/image431.webp" style="width:7.525in;height:1.81875in" alt="{FEFDB10B-6846-4069-B847-49C593A09544}" /></p></td>
</tr>
</tbody>
</table>

###  Run Pre-built Audio analyzer 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Run the prebuit audio analyzer</p>
<p><img src="subjects/tech/ai/ollama-img/media/image432.webp" style="width:7.52292in;height:3.82431in" alt="{E970A32A-430E-46A7-ABB6-9A56B48D4433}" /></p>
<p>→We are using below analyzer</p>
<p><img src="subjects/tech/ai/ollama-img/media/image433.webp" style="width:7.52361in;height:0.99236in" alt="{882F6A28-270C-49DA-B787-2E80669A0353}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Result can be seen as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image434.webp" style="width:7.52986in;height:1.70972in" alt="{714154D1-EA55-4787-A523-A34930223976}" /></p></td>
</tr>
</tbody>
</table>

#### Extract the results

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Execute the snippet to analyzer the results.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image435.webp" style="width:7.52569in;height:2.95347in" alt="{F25A7B4C-22A4-4F02-B619-5EF805259A92}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→A markdown file is generated with results of analysis.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image436.webp" style="width:7.52222in;height:4.20139in" alt="{754B4A70-7000-41A8-BC3E-92723299F9A1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get transcript of the audio as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image437.webp" style="width:7.52361in;height:4.00556in" alt="{7D23819D-823D-430A-8D08-124D9703CFAA}" /></p></td>
</tr>
</tbody>
</table>

###  Run Pre-built Video Analyzer 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Run the snippet</p>
<p><img src="subjects/tech/ai/ollama-img/media/image438.webp" style="width:7.52292in;height:4.0375in" alt="{107DCD5C-B9F6-45E1-B4E8-8733ACE2E4C0}" /></p>
<p>→Below is the analyzer used.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image439.webp" style="width:7.52569in;height:0.79514in" alt="{D4F25A6D-6D47-433B-9CFD-2BF55403C0CE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Result can be seen as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image440.webp" style="width:7.52847in;height:1.80694in" alt="{A532102A-3BD5-488D-A6F4-4F918E0C71FE}" /></p></td>
</tr>
</tbody>
</table>

#### Extract the results

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→extract the results from the object.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image441.webp" style="width:7.52847in;height:3.98611in" alt="{227A0F77-C1B7-4E95-973B-07204D4AAC3A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Markdown file is generated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image442.webp" style="width:7.525in;height:4.275in" alt="{7CD205AE-2AF2-4FEC-9778-18B0313D873C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Video is broken down into segments and can be seen summary of each.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image443.webp" style="width:7.52222in;height:4.57153in" alt="{0CCC1830-9280-40FA-B59A-ACA8247037D6}" /></p></td>
</tr>
</tbody>
</table>

## Building a Custom Analyser

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we will be dealing with ‘custom task’</p>
<p>→In this part, we will need to be looking at what are the fields, what sort of description is needed, etc are configured.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image444.webp" style="width:7.52569in;height:3.74653in" alt="{9E4415F8-A048-4289-91D9-3173747DFAC7}" /></p></td>
</tr>
</tbody>
</table>

### Create a Custom Task 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Custom task →Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image445.webp" style="width:7.52986in;height:2.99097in" alt="{13289FA1-E076-441E-8BFA-5026A031792C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name to the task and choose ‘Standard Mode’</p>
<p>→Continue with ‘create’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image446.webp" style="width:7.52847in;height:4.03056in" alt="{757753AE-6B51-4F35-94B3-181E11DA5944}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image447.webp" style="width:7.52569in;height:3.29653in" alt="{7FA4FE88-8DF7-4880-A166-617C09A6E0CD}" /></p></td>
</tr>
</tbody>
</table>

### Define the ‘type’ of work

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we upload files.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image447.webp" style="width:7.52569in;height:3.29653in" alt="{7FA4FE88-8DF7-4880-A166-617C09A6E0CD}" /></p>
<p>→Navigate to the lab and upload the sample invoice files stored, which is ‘invoice.pdf’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image448.webp" /><img src="subjects/tech/ai/ollama-img/media/image449.webp" style="width:5.65625in;height:4.03125in" alt="{6DA54368-7698-46E8-A871-7C0611E9ED83}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Foundry then gives few options what exactly we want to enhance the ‘analyser’ with.</p>
<p>→here given this is an invoice, we are choosing ‘invoice data extraction’ option, ontop of pre-built one, we will build our own custom add-ons.</p>
<p>→Click the ‘invoice-data-extraction’ option and click ‘create’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image450.webp" style="width:7.52917in;height:3.95417in" alt="{A9013C79-30E2-4DDD-9252-8BC92B937BF0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once we create, it extracts the data and populates in tabulated format.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image451.webp" style="width:7.52847in;height:3.82917in" alt="{F2BE0A30-BAC1-450D-AEF9-FBA8E3D3C37C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here we will be adding couple of additional / extra fields.</p>
<p>→Here the ‘methods’ have three possibilites viz., ‘extract’, ‘generate’ and ‘classification’</p>
<p>→In our case above, we are simply dealing with ‘extraction’ and we do not want a generation etc.</p>
<p>→However, if we have the ‘method=generate’ then LLM will generate an appropriate value against that particular field.</p>
<p>→Let us add two new field, by using the ‘Add new field’ option under ‘Define Schema’ tab.</p>
<p><mark>First Field</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image452.webp" style="width:6.61458in;height:1.45833in" alt="{E6394BF8-4866-4DA9-B5EC-326CE015C15B}" /></p>
<p>→Here we are creating a new field by name ‘carbonEmissions’ where the description it says is to look at the data and generate a field that have carbon foot print and rate them with ‘high-medium-low’ kind of markings. Notice the method is ‘generate’.</p>
<p><mark>Second Field</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image453.webp" style="width:6.88542in;height:1.32292in" alt="{B26A1DFA-56AC-43F9-95C3-D5F9B659C52B}" /></p>
<p>→The description here will be something like ‘analyze the invoice total value and assign an emoji score with Sad / Cry / Dead with some amount. Eg. less than 100 dollars etc’</p>
<p>→Save the configuration.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image454.webp" style="width:7.52639in;height:1.69653in" alt="{7BB59454-23F1-4D14-B6DD-25E69EF33C87}" /></p></td>
</tr>
</tbody>
</table>

### Run the Analysis

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once the fields are saved, we get below and we ‘run’ the analysis.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image455.webp" style="width:7.52708in;height:5.11389in" alt="{0A9582A3-10E6-416C-83F2-EAB5C7CCE621}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It generates as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image456.webp" style="width:7.525in;height:3.97014in" alt="{60C18D61-AB42-4621-A46C-62C65E2FF189}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice that along with other fields, it also generated our own new fields.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image457.webp" style="width:7.52778in;height:3.81111in" alt="{A92E1333-0534-4D53-A264-0529CC3FFFB2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another important thing to notice here is the score, where the ‘extract’ method fields have a score and ‘generate’ ones do not have.</p>
<p>→ This is called as ‘confidence score’. For the new fields it is not generated because it is dynamically generated by LLM and not that is already available on the document.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image458.webp" /><img src="subjects/tech/ai/ollama-img/media/image459.webp" /><img src="subjects/tech/ai/ollama-img/media/image460.webp" /><img src="subjects/tech/ai/ollama-img/media/image461.webp" /><img src="subjects/tech/ai/ollama-img/media/image462.webp" style="width:6.35417in;height:3.375in" alt="{772D1F92-93F5-4867-8313-55F145207B50}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Now Run the analysis on other Invoices, by uploading all of them.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image463.webp" style="width:7.52847in;height:3.425in" alt="{E708A7F4-1274-48E0-ACB2-FEBA0200FBB5}" /></p>
<p>→Upload</p>
<p><img src="subjects/tech/ai/ollama-img/media/image464.webp" style="width:6.875in;height:2.34375in" alt="{C770BB44-0C62-4D46-978F-CE093A450778}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Validate the uploaded invoices. Pick any one and see what the invoice has etc. Then we will run the analysis on them. Eg. This selected one to start.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image465.webp" style="width:7.52708in;height:4.46806in" alt="{24FA4361-376D-4C27-B88F-0072F2C8ACE0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click ‘Run analysis’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image466.webp" style="width:7.52986in;height:5.08264in" alt="{2BC35ECB-DD3C-46CC-A874-7A804E411D0B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is done, notice the additional fields that are populated. ‘High &amp; Cry’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image467.webp" style="width:7.52431in;height:3.31111in" alt="{55DF1A4C-B5CF-4824-8BB5-2CF0BD268125}" /></p></td>
</tr>
</tbody>
</table>

### Retrain the Data Model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→If we want to retrain the data model in LLM, with the new fields so that it can generate Confidence Score, we will need to use the ‘Label Task’ option.</p>
<p><mark>→THIS IS NOT TESTED.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image468.webp" style="width:7.525in;height:3.92361in" alt="{69B46399-169E-4758-A4D1-22F2FD8F6334}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Build Analyzer

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Analyzer List and click ‘Build Analyzer’ option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image469.webp" style="width:7.52083in;height:3.88333in" alt="{1EC958F7-6466-4C82-8488-DB049BD1B2B3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name and click Build</p>
<p><img src="subjects/tech/ai/ollama-img/media/image470.webp" style="width:7.52847in;height:3.62847in" alt="{0DFF2004-7D3C-4293-BEA6-76D715494BE8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It creates one for us.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image471.webp" style="width:7.525in;height:3.96181in" alt="{DD7570D6-E332-48B6-92D0-E851013414C4}" /></p></td>
</tr>
</tbody>
</table>

### Python Driven Access of Custom Analyzer 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have the custom analyzer, we will need to call it via our python code.</p>
<p>→Populate Environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image472.webp" style="width:7.52431in;height:4.30069in" alt="{2E3A2967-6D85-49A1-B37C-79A22289DB47}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Overview section and grab both endpoint and key.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image473.webp" style="width:7.52986in;height:2.97361in" alt="{C86A6B4D-8A42-4167-BC8F-6CEA0AF0BB39}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fillout the environment variables as below including the last parameter.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image474.webp" style="width:7.51806in;height:1.90833in" alt="{ED84BBF4-3235-4D92-8319-46BE0DEA281A}" /></p></td>
</tr>
</tbody>
</table>

### Test the ‘notebook’

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have the environment variables stored, let us test.</p>
<p>→Navigate to ‘testing.ipynb’ file</p>
<p><img src="subjects/tech/ai/ollama-img/media/image475.webp" style="width:7.525in;height:2.83472in" alt="{B47EB751-959E-4AA5-A519-15F87C1F63FB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run Set up Env.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image476.webp" style="width:7.52361in;height:2.74792in" alt="{5248CACD-6D9D-443D-822D-CE805C213F41}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run Custom Analysis code snippet</p>
<p><img src="subjects/tech/ai/ollama-img/media/image477.webp" style="width:7.52569in;height:4.57431in" alt="{54B6B17B-DCB3-47EB-B248-5CC6B9E15339}" /></p>
<p>→Here notice that the analyzer that we are using is not pre-built but ‘custom one’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image478.webp" style="width:7.525in;height:1.07986in" alt="{AF65F56D-4519-4825-8FCA-9D322DD88B24}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Once it is done we get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image479.webp" style="width:7.52361in;height:2.18681in" alt="{B3CC3AD0-FD43-497B-88D1-71732A926AC7}" /></p>
<p>→Notice in the result we also get the newly added field</p>
<p><img src="subjects/tech/ai/ollama-img/media/image480.webp" style="width:7.52708in;height:1.25347in" alt="{9FA68F7D-6EB8-45EA-8AAA-E410CEBB0C16}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run ‘display results’ code snippet for markdown file.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image481.webp" style="width:7.52847in;height:3.84097in" alt="{05FB63A2-C93A-4001-BAA6-689AB4EFBE67}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→This gets us a markdown file.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image482.webp" style="width:7.52569in;height:3.47361in" alt="{E8128EAD-371E-445D-A68A-255795697C46}" /></p></td>
</tr>
</tbody>
</table>

#  Sustainabiliy - RAG 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→here is the two step process for Sustainability RAG taking a usecase from BMW company.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image483.webp" style="width:7.52917in;height:3.32083in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→What is this? →This is about DATA PREPARATION</mark></p>
<p>→This is about building a chatbot where-in how a company can sustain its business encompassing all the possibilities.</p>
<p>→As an example BMW company is picked.</p>
<p>→In order to build a chatbot, we need to build a RAG pipeline.</p>
<p>→Chatbot could be a front end and as a BE the RAG pipeline will be there.</p>
<p>→All the flow will be dependant on various unstructured datasets, that are in various forms like Audio / Video / PDF / Image / etc.</p>
<p>→These gets stored in a Storage Account.</p>
<p>→then using the AI Content Understanding these key elements are extracted and then published to AI Search Index component.</p>
<p>→Note that AI Search Index is part of ‘AI Search’ service on Azure.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image484.webp" style="width:7.52431in;height:3.28333in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→What is this? → This is RAG in Play</mark></p>
<p>→Now, once we have the data is extracted and indexed, the next step is to have the RAG in action by building a RAG pipeline.</p>
<p>→Here we will build a RAG pipeline by using ‘text embedding model’.</p>
<p>→Subsequently, query the embedding model as shown under Questions.</p>
<p>→Once the vector embeddings are generated by the model, a ‘cosine’ search is done on AI Search index.</p>
<p>→Once the chunks are retrieved from index, the same is sent back as final prompt to LLM.</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Create Storage Account 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image485.webp" style="width:7.52361in;height:3.02917in" alt="{89D9B8DB-8F58-479B-BE6E-DCE1DA94ABF9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name to the SA.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image486.webp" style="width:7.52292in;height:4.45694in" alt="{97C16F4A-2BBD-4EEB-99DD-521F3DAEC0A4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image487.webp" style="width:7.52361in;height:2.36944in" alt="{AA83EFD9-61B3-457E-B76C-337B5626F269}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It is created</p>
<p><img src="subjects/tech/ai/ollama-img/media/image488.webp" style="width:7.52708in;height:3.72569in" alt="{63114BA6-3C8D-4488-A6B0-BE565B8B5C79}" /></p></td>
</tr>
</tbody>
</table>

## Upload files to SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As a first step enable the annoymous stoage account access by enabling it.</p>
<p>→Save it after enabling.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image489.webp" style="width:7.52708in;height:4.46111in" alt="{93E2FE63-4294-4094-BA89-ABB132BC9D09}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Create container, and ensure the access level is not private.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image490.webp" style="width:7.52292in;height:2.93194in" alt="{8047133E-74E4-4F16-8070-6A229157A74F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload the files that were previously downloaded. Notice under the ‘Data of Lab5’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image491.webp" style="width:5.13542in;height:6.55208in" alt="{2608B18E-A991-4CB7-AE80-265E82649E56}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice all are uploaded.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image492.webp" style="width:7.52917in;height:3.54028in" alt="{15F3680F-D8AB-45F2-96B3-D1C12205E4A5}" /></p></td>
</tr>
</tbody>
</table>

## Create Azure AI Search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create an Az AI Search service.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image493.webp" style="width:7.52569in;height:4.50139in" alt="{919F402C-46F2-4270-A85D-793FB3DCDF45}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Pricing tier - Basic</p>
<p><img src="subjects/tech/ai/ollama-img/media/image494.webp" style="width:7.52222in;height:3.31875in" alt="{D48A5A1D-A180-49D3-A5E1-13B6D4D5C010}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image495.webp" style="width:6.84375in;height:3.15625in" alt="{8E64EC9E-805E-4052-A136-4DCBB9FDB198}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Create AI Content - Understanding and Load Models 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→given from previous implementation, we already have AI Content Understanding Eco-system, we will reuse it.</p>
<p>→Ensure the model for Embedding is deployed as shown at the last.</p>
<p>→Given we have already created previously by loading two models one for ‘chat’ other for ‘embedding’, we will reuse the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image496.webp" style="width:7.51806in;height:3.30764in" alt="{73571EC2-1EE5-41F4-BEC3-934AC7873094}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Populate Environment Variables

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Given we will be accessing via Python code, we need to load the variables.</p>
<p>→Navigate to Lab 5→ MMRAG → env and populate the data</p>
<p><img src="subjects/tech/ai/ollama-img/media/image497.webp" style="width:7.52292in;height:3.57708in" alt="{9A4D949D-D93A-47FE-8171-D98F4C380BD8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fetch first AI Search endpoint.</p>
<p>→Navigate to Overview → Azure AI Services → endpoint</p>
<p><img src="subjects/tech/ai/ollama-img/media/image498.webp" /><img src="subjects/tech/ai/ollama-img/media/image499.webp" /><img src="subjects/tech/ai/ollama-img/media/image500.webp" style="width:7.52986in;height:3.35486in" alt="{2347348F-BE30-4CF1-BEB0-F0565968A10E}" /></p>
<p>→This way both key and endpoint are populated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image501.webp" style="width:7.52708in;height:3.06944in" alt="{1E96B5DA-2406-4D5D-A3DF-E79EFAFCDD87}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next is to extract configurations for Models.</p>
<p>→Choose the gpt-model that we have deployed. Here there are many, but choosing below.</p>
<p>→The circled one is model name that we will be using in configuration ahead.</p>
<p>→Click the model ‘gpt-4.1’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image502.webp" /><img src="subjects/tech/ai/ollama-img/media/image503.webp" style="width:7.51806in;height:3.19444in" alt="{6AA4B6E5-D47D-4C14-A182-4E6D3B57F5B3}" /></p>
<p>→Ensure the language is python.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image504.webp" /><img src="subjects/tech/ai/ollama-img/media/image505.webp" style="width:7.52292in;height:3.27222in" alt="{9D9EADEB-0612-42A6-A7D0-D06D8DE271D6}" /></p>
<p>→Scrolling down gives details like endpoint etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image506.webp" style="width:7.52639in;height:2.63889in" alt="{A8B547CC-5A51-4E80-9D13-2A7EC15BEB9E}" /></p>
<p>→Paste in the environment variables, both the key and endpoint.</p>
<p>→Note that the model name is not copied but typed as we already know while creation of gpt model.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image507.webp" style="width:7.52431in;height:1.08681in" alt="{4C413DA4-7A75-435B-A58C-D330BCDA3C14}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next is to get embedding model. We will use the existing model name that we created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image508.webp" style="width:7.525in;height:3.20833in" alt="{42B66475-431D-419B-8F23-42766FBE1265}" /></p>
<p>→Paste in the environment configuration.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image509.webp" style="width:7.52431in;height:0.99792in" alt="{2E66205E-677C-416E-8684-42A1C5BF0E5D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→next is to get the AI Search connections’ configuration.</p>
<p>→Navigate to the service we created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image510.webp" style="width:7.52222in;height:2.98611in" alt="{AF1145B1-E9BC-4BF6-AF0A-ACE32ED38F10}" /></p>
<p>→Copy the URL as shown from overview</p>
<p><img src="subjects/tech/ai/ollama-img/media/image511.webp" style="width:7.52639in;height:2.16389in" alt="{3F624859-0114-46B2-8062-49A5D4853F02}" /></p>
<p>→Populate in environment</p>
<p><img src="subjects/tech/ai/ollama-img/media/image512.webp" style="width:6.83333in;height:0.98958in" alt="{4D4BCF67-289B-4EEB-B583-96986093D642}" /></p>
<p>→Then navigate to keys sections and get the keys and populate.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image513.webp" style="width:7.52847in;height:5.01875in" alt="{1F128D85-7B44-457E-8C25-D449B5A1129F}" /></p>
<p>→Populate the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image514.webp" style="width:6.58333in;height:1in" alt="{A6FD5171-6415-4B74-8B87-92D883AB41DB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Obtain SA details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image515.webp" style="width:7.53056in;height:3.36111in" alt="{125A6341-4492-4D1C-A21B-0D5BD96078D7}" /></p>
<p>→Navigate to Settings →Endpoints →Copy the primary endpoint.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image516.webp" style="width:7.52917in;height:3.49792in" alt="{DE65D606-B815-47F1-AA1C-12F0EA82F54D}" /></p>
<p>→Fillout as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image517.webp" style="width:6.5625in;height:0.73958in" alt="{BA5E1DDC-4203-4B74-93C3-D36E0269782D}" /></p>
<p>→Copy the container name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image518.webp" style="width:7.52569in;height:2.82222in" alt="{BFE644B1-52D8-43D8-B918-C037681A2F3C}" /></p>
<p>→Populate</p>
<p><img src="subjects/tech/ai/ollama-img/media/image519.webp" style="width:6.44792in;height:0.98958in" alt="{54CF317B-E1D7-4C2C-A97E-0C903173442F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→After populating all the variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image520.webp" style="width:7.52639in;height:3.0375in" alt="{63D8EAE3-5825-4F4F-A90E-9FE34170AA70}" /></p></td>
</tr>
</tbody>
</table>

## Load Environment variables

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have environment variables populated we load them by running below snippet.</p>
<p>→Here the variables from environment file are fetched and stored in a local variable for python scripting.</p>
<p>→We have these snippets read in below file.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image521.webp" /><img src="subjects/tech/ai/ollama-img/media/image522.webp" /><img src="subjects/tech/ai/ollama-img/media/image523.webp" style="width:7.52431in;height:3.61458in" alt="{56B2B678-1DB6-4F22-8FAB-7CF78632CF0F}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image524.webp" style="width:7.52361in;height:2.90625in" alt="{1D6DD155-5674-4F6A-9313-47E1F66048E0}" /></p></td>
</tr>
</tbody>
</table>

##  Perform video analysis 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have below snippet that performs a video analysis using the pre-built video analyzer.</p>
<p>→Execute the same.</p>
<p>→Here, we have two functions as seen in the below snippet, ‘<mark>analyze video’ and ‘build data set’</mark>. Both are called in another snippet just below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image525.webp" style="width:7.52569in;height:2.89167in" alt="{1C45D7DD-99C1-451D-9716-802624B31BE8}" /></p>
<p><mark>→Here IT IS NOT CLEAR IF FIRST SNIPPET ALSO NEED TO BE EXECUTED OR JUST THE SECOND ONE, GIVEN THE SECOND ONE INDIRECTLY CALLING THE FIRST ONE.</mark></p>
<p>→some understanding of the first snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image526.webp" style="width:7.52708in;height:3.51389in" alt="{CF1312A3-966A-41CB-9042-1F0116C5ABE5}" /></p>
<p>→After analysis a result is returned using this snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image527.webp" style="width:6.22917in;height:1.34375in" alt="{D9BB48CA-77DB-42D5-B2D2-0486B5767C84}" /></p>
<p>→Using the result, we will build a ‘data-set’.</p>
<p>→Things like below are captured from the result that we get.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image528.webp" style="width:7.525in;height:2.16736in" alt="{E82E9A47-F456-45C8-A2E3-904BDC72FF95}" /></p>
<p>→Once all these is done a ‘dictionary’ object is returned.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image529.webp" style="width:7.52778in;height:1.53125in" alt="{221CCB8C-A9EB-4F7C-82A3-ADAF7B3DEFCC}" /></p>
<p>→We will be having ‘data-sets’ for each of the type viz., audio / video / etc.</p></td>
</tr>
</tbody>
</table>

### Construct the Video URL and Invoke

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Invoke the snippet, which calls both the functions above.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image530.webp" style="width:7.52708in;height:2.02431in" alt="{492B9037-28A0-4500-A970-D089C411A1BB}" /></p>
<p>→After running this we get below and we can see that ‘document_title’ and ‘text’ are retrieved.</p>
<p>→video is broken down into segments.</p>
<p>→We also have full transcript of the video.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image531.webp" style="width:7.52361in;height:4.75833in" alt="{3C4D08D2-2CAE-4119-9BEC-8E21B3DCB5D8}" /></p></td>
</tr>
</tbody>
</table>

##  Perform audio analysis

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→now we will analyze the audio analysis.</p>
<p>→Same way as above, we have two functions.</p>
<p>→The two functions as seen in the below snippet, <mark>‘analyze video’ and ‘build data set</mark>’. Both are called in another snippet just below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image532.webp" style="width:7.52431in;height:3.46597in" alt="{840C9A37-BD4B-47D0-A045-02B812B7616B}" /></p>
<p>→Some understanding about the first snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image533.webp" style="width:7.52986in;height:1.77292in" alt="{6A827BE6-92D8-4DA0-BDE6-16E82AACBD48}" /></p>
<p>→All this get stored in a dictionary object.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image534.webp" style="width:7.52014in;height:2.83472in" alt="{992BD6E8-BAE7-4391-A9CB-1FDC3A286E7D}" /></p>
<p>→Invoke this function.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image535.webp" style="width:7.52361in;height:3.06319in" alt="{362D9F9A-030E-4768-B5E4-46217849C106}" /></p></td>
</tr>
</tbody>
</table>

### Construct the Audio URL and Invoke

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Invoke the snippet, which inturn calls the previous functions.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image536.webp" style="width:7.525in;height:1.99653in" alt="{50ED5FB6-8EC8-47E8-BEF4-6903E135E831}" /></p>
<p>→We have now result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image537.webp" style="width:7.52847in;height:2.85208in" alt="{4A6750A6-D956-4D17-BE19-4AFADDED0B86}" /></p></td>
</tr>
</tbody>
</table>

##  Perform Image Analysis

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Next is to run function the performs image analysis using pre-built image analyser.</p>
<p>→Same way as above, we have two functions.</p>
<p>→The two functions as seen in the below snippet, ‘<mark>analyze image’ and ‘build data set</mark>’. Both are called in another snippet just below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image538.webp" style="width:7.52708in;height:3.58125in" alt="{E498F0BA-0670-4AF5-812D-5AC662703F93}" /></p>
<p>→some understanding about the snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image539.webp" style="width:7.52847in;height:3.35069in" alt="{ECBD95B2-D42A-4A2F-9490-8095A7427C7A}" /></p>
<p>→This is stored in the ‘image_analysis_result’, once executed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image540.webp" style="width:6.89583in;height:1.05208in" alt="{62651F2A-CCB8-4A9C-B191-BD3E767D310F}" /></p>
<p>→Above script also has a function to build dataset, that will be invoked ahead.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image541.webp" style="width:7.52986in;height:2.32431in" alt="{E29D05F8-FCC4-4624-8093-F47D62E06B80}" /></p>
<p>→It contains below important extractions viz., image url, content index, etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image542.webp" style="width:7.52569in;height:4.18125in" alt="{08FC47D1-1AEF-44DF-88FA-59B0F56EA5B0}" /></p>
<p>→</p></td>
</tr>
</tbody>
</table>

### Construct the Image URL and Invoke

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Invoke this snippet which builds image url</p>
<p><img src="subjects/tech/ai/ollama-img/media/image543.webp" style="width:7.52014in;height:1.75486in" alt="{7B13B14F-84C3-4D83-8686-7CCF433B6C5C}" /></p>
<p>→We have the result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image544.webp" style="width:7.52292in;height:2.41389in" alt="{807EC2B3-1DBD-461C-BB1C-DEBDD34E36A4}" /></p></td>
</tr>
</tbody>
</table>

##  Perform PDF Analysis 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Similar to the above, we will also do the pdf analysis but ‘without’ any pre-built analyzers.</p>
<p>→We will use custom python codebase.</p>
<p>→We have similar to above snippets, here as well two functions. One to extract pdf text and other to build dataset.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image545.webp" style="width:7.52222in;height:5.27292in" alt="{FC863C9C-1DDA-467B-8BC3-40E6A9752DA4}" /></p>
<p>→Some understanding.</p>
<p>→In above snippets basically it is looking for the pdf url and then extracting the text from it. We are extracting things like source, page number text etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image546.webp" style="width:7.525in;height:3.33889in" alt="{ED0664C5-15AB-40E2-8F27-BA2A39F7C986}" /></p></td>
</tr>
</tbody>
</table>

### Construct the PDF URL and Invoke

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We can see the result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image547.webp" style="width:7.52361in;height:3.24583in" alt="{7C3BE556-EC16-45FD-9399-BE4C9AB2FBBE}" /></p></td>
</tr>
</tbody>
</table>

##  Combine all the Data Sets. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are combinging all the python dictionaries into one.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image548.webp" style="width:7.52569in;height:1.69236in" alt="{5CCEC3D5-DCD8-4CDC-AE85-816C029C18A5}" /></p>
<p>→After executing, this is how it looks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image549.webp" style="width:7.52222in;height:4.58472in" alt="{A68825AC-C9EF-44C3-8D4D-1FD136C012BD}" /></p></td>
</tr>
</tbody>
</table>

##  Create Az OpenAI Client and Generate Embeddings. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have the data, what is pending is to convert the text to vector embeddings and then push it to Azure AI Search service.</p>
<p>→In order to get that done, we will need to loop over above ‘combined-result-set’, pick the data within the tag ‘content_text’ and make a call to our ‘vector-embedding-engine’, then compute the ‘vector-embeddings’ for the same.</p>
<p>→Then for each of that compute, we will create another field called ‘vector_embeddings’ and populate the same in it.</p>
<p>→Create the client by running this snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image550.webp" style="width:7.52569in;height:1.84444in" alt="{E492125D-851F-4C23-B47C-604F769D7EB3}" /></p>
<p>→Run below to generate Embeddings.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image551.webp" style="width:7.52986in;height:3.15556in" alt="{4C16EA12-2CF9-44DB-83E5-D142830A63CE}" /></p></td>
</tr>
</tbody>
</table>

##  Finalize the RAG Dataset

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→finally, we will loop over the dataset we have generated, and then, for each dictionary that we go through, we extract the ‘context_text’ and ‘generate vector embeddings’ for that particular text.</p>
<p>→Such embeddings is appended along with another additional field called ‘content_id’.</p>
<p>→This content id acts as unique key or identifier.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image552.webp" style="width:7.52708in;height:3.15069in" alt="{51C7FB23-3C9C-4A83-BBBF-45891B5D39DD}" /></p>
<p>→Once we execute this we get a file by name data.json.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image553.webp" style="width:7.52639in;height:1.24028in" alt="{2B8B59D1-F75C-48B1-8252-C304BC6E816A}" /></p>
<p>→This contains the vector embeddings with four fields as below.</p>
<p>→document title, context text, content embedding and content id’ - Note that same will be mapped in azure ai search using same fields in ‘schema’, explained in next section.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image554.webp" style="width:7.525in;height:2.49792in" alt="{2DD16CF6-83F3-4D79-8A9D-B01158173104}" /></p></td>
</tr>
</tbody>
</table>

##  Create an index in Azure AI 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Note that currently we <strong>do not have</strong> any index available under ‘azure ai search’ service.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image555.webp" style="width:7.52778in;height:3.96181in" alt="{D68BD18C-ABAB-4C72-AF93-E192FE877179}" /></p>
<p>→Using below snippet we will create an index in Azure AI Search.</p>
<p>→This will create an index by name ‘multi-modal-rag-index’ as configured in environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image556.webp" style="width:7.05208in;height:1.01042in" alt="{EFAFE328-3912-4436-B9B5-689080911038}" /></p>
<p>→Ensure the Schema is available so that proper indexing can be done. This is available at below location and can be seeen with details.</p>
<p>→This index.json will be used in the function ahead.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image557.webp" /><img src="subjects/tech/ai/ollama-img/media/image558.webp" style="width:7.52847in;height:4.74375in" alt="{294BDB89-FD0F-462C-8E79-C1984EC2702D}" /></p>
<p>→Notice carefully that the ‘schema’ contains 4 fields.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image559.webp" /><img src="subjects/tech/ai/ollama-img/media/image560.webp" /><img src="subjects/tech/ai/ollama-img/media/image561.webp" /><img src="subjects/tech/ai/ollama-img/media/image562.webp" /><img src="subjects/tech/ai/ollama-img/media/image563.webp" style="width:2.49931in;height:5.87917in" alt="{325E672D-BD28-4A19-882C-BBE1A4854AE4}" /></p>
<p>→Notice that when we extracted the data previously we had exactly those fields.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image564.webp" /><img src="subjects/tech/ai/ollama-img/media/image565.webp" style="width:7.52569in;height:2.04583in" alt="{3F691AA6-1F4B-4DE5-B724-16215EEA89FB}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image566.webp" /><img src="subjects/tech/ai/ollama-img/media/image567.webp" /><img src="subjects/tech/ai/ollama-img/media/image568.webp" style="width:7.52708in;height:2.65694in" alt="{5699EB66-D428-4585-9E1F-326BB6E26AC5}" /></p>
<p>→Further, down the line we can see the ‘algorithm’ being configured in the index.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image569.webp" style="width:7.52778in;height:4.42153in" alt="{FB0A3667-A1D1-4D1C-A58E-A15AEBCB1439}" /></p>
<p>→After this we will need to provide some configuration details.</p>
<p>→for us to compute vector embeddings for incoming user query, we have to give this search index, an access to our azure open ai vector embeddings.</p>
<p>→In order to give access, we need to populate these variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image570.webp" style="width:7.52431in;height:2.66806in" alt="{AA5B0886-ED2C-40B4-BE73-D70855A467D5}" /></p>
<p>→to fill this we need to get some details from the portal. Navigate to Foundry → Models → gpt-4.1, that we created.</p>
<p><mark>→NOT SURE WHY WE ARE GOING WITH GPT, WHERE OUR REQUIREMENT IS FOR EMBEDDINGS. TO BE VALIDATE IN PRACTICE. THE ENDPOINTS MAY BE SAME, BUT NEEDS TO BE VALIDATED .</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image571.webp" style="width:7.52014in;height:3.47778in" alt="{E3331D51-F8B9-4156-B82E-E3080EDD86E1}" /></p>
<p>→Copy the URL. Ensure python sdk is choosen.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image572.webp" style="width:7.52569in;height:2.25069in" alt="{BD9F52BD-0C82-48F5-8502-59984FA28308}" /></p>
<p>→Replace in configuration. Ensure the trailing <mark>forward slash is removed</mark>.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image573.webp" style="width:7.52639in;height:1.84861in" alt="{29F78F8E-01B7-437A-8C5A-E96CB82EE8CE}" /></p>
<p>→In the next step, mention the deployment id of the ‘vector embeddings generating model id’.</p>
<p><mark>→FROM WHERE THIS NAME WAS COPIED TO BE VALIDATED.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image574.webp" style="width:6.3125in;height:1.95833in" alt="{7AB91A85-AAD4-4F77-984A-1A26A0E0776B}" /></p>
<p>→Next is to grab api key.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image575.webp" style="width:7.525in;height:2.975in" alt="{9135E738-A55C-4820-93EA-642DF1DE9EBA}" /></p>
<p>→Replace it below and also mention the model name for embedding model, if not mentioned.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image576.webp" style="width:7.53056in;height:1.10694in" alt="{1570618C-62B4-424D-AF34-DEB2CE30F02E}" /></p>
<p>→Invoke this function to create an index in azure ai search.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image577.webp" /><img src="subjects/tech/ai/ollama-img/media/image578.webp" style="width:7.52569in;height:4.94653in" alt="{755DBDC3-739F-4560-9504-AEAB8EAC156A}" /></p>
<p>→Index is created successfully.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image579.webp" style="width:7.52361in;height:1.17222in" alt="{90CCFDD3-10C1-4668-8B53-359E4EBE613D}" /></p>
<p>→Ensure on portal it is shown.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image580.webp" style="width:7.52708in;height:2.72431in" alt="{AAC096CD-B1DA-4859-B301-808719487503}" /></p>
<p>→Inside this index, we will not have any documents at the moment.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image581.webp" style="width:7.52361in;height:3.01528in" alt="{42E26ADB-C011-4235-97F4-046324D7F272}" /></p>
<p>→When we edit the json we can see the schema that we have given from our workbench.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image582.webp" style="width:6.02083in;height:5.88542in" alt="{35D22CB4-5C4F-45FC-A00B-A7CC28D0911E}" /></p>
<p>→We can see all the details getting populated, excep the api-key, which is obscured or not shown.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image583.webp" style="width:7.125in;height:3.14583in" alt="{6D98A1FB-625B-4C49-AA4D-4EB2947391C3}" /></p></td>
</tr>
</tbody>
</table>

## Prepare the RAG Data

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→So before we push the data to AI Search service, we will slighly modify the data, by adding a field called ‘search action’ for EACH ENTRY that is there in the ‘data.json’ file.</p>
<p>→the value for this field will be ‘upload’, meaning, every entry will be uploaded.</p>
<p>→Below snippet is doing exactly the same.</p>
<p>→Run the function.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image584.webp" style="width:7.52639in;height:2.14236in" alt="{D007AEE6-3404-4CC5-8148-13DECEDBE06A}" /></p>
<p>→Once we run we get a new file as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image585.webp" style="width:6.76042in;height:1.73958in" alt="{F2453703-7841-4E83-8823-39B9625BF0AD}" /></p>
<p>→Notice in this file we can see an additional field search action with value ‘upload’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image586.webp" style="width:5.73958in;height:1.76042in" alt="{27AE3C15-2AA7-43CF-89AF-3DFD3EF00AF8}" /></p></td>
</tr>
</tbody>
</table>

## Push the RAG formatted Data to AI Search Index

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Push the data. Notice that the json now is the new file.</p>
<p>→Some of the key items are circled for ready reference.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image587.webp" /><img src="subjects/tech/ai/ollama-img/media/image588.webp" /><img src="subjects/tech/ai/ollama-img/media/image589.webp" /><img src="subjects/tech/ai/ollama-img/media/image590.webp" style="width:7.52292in;height:3.87569in" alt="{F0B2C9F3-7ED2-464A-8975-D16FBAD167F3}" /></p>
<p>→Once pushed we get response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image591.webp" style="width:7.52986in;height:0.91458in" alt="{0B1DD870-9299-4236-82CB-8D49707E0886}" /></p>
<p>→Once this is done navigate back to portal and let us search something like BMW and we can see the result coming in.</p>
<p>→This indicates that our data is pushed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image592.webp" style="width:7.52917in;height:4.24931in" alt="{5D34ACEF-6199-4756-925F-33E424042BBA}" /></p></td>
</tr>
</tbody>
</table>

## RAG Pipeline in Action 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we built the infra side and data pushing side, we will build now the RAG pipeline.</p>
<p>→given we already have environment file populated, we will use the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image593.webp" style="width:7.51875in;height:3.03542in" alt="{7A4F3602-22B0-432E-A54E-EBEC866BD4EE}" /></p>
<p>→Here we will follow now this architecture.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image594.webp" style="width:7.52292in;height:3.80625in" /></p>
<p>→Here, user will be inputting the query, which will be interpreted by embedding engine that converts /computes to vectors.</p>
<p>→Subsequently, that vectors get searched in azure ai search index via an api call for a similarity search.</p>
<p>→Then top 10 documents are retrieved and then handed over to the LLM for processing.</p>
<p>→The LLM will generate necessary response/summary using all the searched vectors with suitable document reference etc.</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Setup the Environment. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Given we already have the environment loaded, we are setting it up for further calls.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image595.webp" style="width:7.52222in;height:3.54583in" alt="{046389DF-4B21-47C1-8ABE-178E75C40037}" /></p></td>
</tr>
</tbody>
</table>

### Create Azure Open AI Client 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We will need this to interpret the user queries and subsequently handing over to the embedding engine.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image596.webp" style="width:6.38542in;height:2.5in" alt="{DFF52EBE-6743-4C1F-9E12-A8615636A309}" /></p></td>
</tr>
</tbody>
</table>

### Create a Vector Embedding function and fire a User Query. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This function basically takes ‘text’ and gives back ‘embeddings’ as response.</p>
<p>→The text is nothing but the ‘user query’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image597.webp" style="width:7.52847in;height:2.47986in" alt="{1ECA527E-7BAC-4834-A2A4-AFCCA17DD9DA}" /></p>
<p>→As a sample we have some user query as below. Note that all this is being handled programatically, hence we are configuring this.</p>
<p>→Alternatively, we may need to build a UI platform that user actually enters the query.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image598.webp" style="width:7.52153in;height:2.81042in" alt="{07B423ED-985E-48DA-B450-2E6B497957DE}" /></p>
<p>→We get the result that are vector embeddings.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image599.webp" style="width:7.52639in;height:0.68681in" alt="{3AD292CA-6A3F-4428-ADB6-4FB2DAD08427}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Make API call to AI Search Index 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Next step is to fire an api call to AI Search index to run a similarity search vis-a-vis the vector embeddings we received in previous step.</p>
<p>→Once a respsone is received, we store it in the ‘context’ python list. Hence, initialize this.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image600.webp" style="width:4.86458in;height:1.10417in" alt="{4F77B204-0A72-4219-9B47-B0AE0F7A38A0}" /></p>
<p>→Fire the call</p>
<p><img src="subjects/tech/ai/ollama-img/media/image601.webp" style="width:7.52153in;height:4.40208in" alt="{A4EFE19E-B722-4FF5-9154-88BFDD66BC77}" /></p>
<p><mark>→Some understanding about the code.</mark></p>
<p>→We are retrieving the context text and we will be using a ‘vector-search-algorithm’.</p>
<p>→We will be comparing the search with ‘content_embedding’ field in the index. Notice the next snippet for quick understanding.</p>
<p>→We will be retrieving top 10 documents as shown in the ‘K’ value.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image602.webp" style="width:7.53056in;height:3.94653in" alt="{A2D16BE8-E13B-4055-B4F3-02F9B392FEBD}" /></p>
<p>→See this snippet where content_embedding is populated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image603.webp" /><img src="subjects/tech/ai/ollama-img/media/image604.webp" /><img src="subjects/tech/ai/ollama-img/media/image605.webp" style="width:7.52778in;height:3.75278in" alt="{1B42F20F-2436-4C11-AAA3-2E28FC3FCC2E}" /></p>
<p>→finally, we are appending in the the python list variable that we declared the retrieve date.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image606.webp" style="width:5.10417in;height:2.10417in" alt="{3D2C9505-1A3E-44FF-BB37-8929B0D338D6}" /></p>
<p>→When we run the snippet we get below output.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image607.webp" style="width:7.52639in;height:2.34861in" alt="{7DDEE076-A050-4C16-BDE4-91526C07C2BE}" /></p></td>
</tr>
</tbody>
</table>

### Augment and Generate (A & G of the RAG) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now the next important part is the Augument and Generate aspect of RAG, where we provide a proper prompt to the LLM.</p>
<p>→Below is the prompt details.</p>
<p><mark>→READ CAREFULLY. THIS CAN BE OUR OWN TEXT OR CONTEXT AS WELL.</mark></p>
<p>→Run the snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image608.webp" style="width:7.52778in;height:3.91111in" alt="{F49F2C1D-C9B8-4BB6-9BD8-6CE414179738}" /></p>
<p>→</p></td>
</tr>
</tbody>
</table>

### Call GPT engine

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that our prompt is ready, we just call the gpt engine, with user query, context and the system prompt.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image609.webp" style="width:6.75in;height:3.52083in" alt="{BB905B62-85F6-492D-B369-73D59C6312AD}" /></p>
<p>→We get some response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image610.webp" style="width:7.52708in;height:1.15in" alt="{72534A57-EFF7-4190-A8CA-B08C6AF0A7DE}" /></p>
<p>→Sometime the prompt needs to be modified or made accurate to get what we want. For instance, previously we did not get the url. But after slight tweaking in the prompt, we got the url as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image611.webp" style="width:7.52292in;height:1.20208in" alt="{E5D9F3DC-1266-4C98-B7E3-3EAD71D26DB0}" /></p>
<p>→We have many other queries to test on. Once we have these copied, run the steps again to test. Steps as below.</p>
<ol type="1">
<li><p>Change the user query, run.</p></li>
<li><p>Reload the context python list variable.</p></li>
<li><p>Send API Call to Search index to build the ‘context’.</p></li>
<li><p>Set the prompt.</p></li>
<li><p>Call the GPT Engine</p></li>
</ol>
<p><img src="subjects/tech/ai/ollama-img/media/image612.webp" style="width:6.41667in;height:1.35417in" alt="{F5C9D60A-A80F-42B1-BF63-411BC333393A}" /></p>
<p>→After all those steps we get a summary now differently.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image613.webp" style="width:7.52986in;height:1.96875in" alt="{541FE4D1-5D1C-47C7-8C4B-F157A32A35AC}" /></p></td>
</tr>
</tbody>
</table>

#  RAG with Cosmos DB for NSQL 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Understanding a bit about Cosmos DB.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image614.webp" style="width:7.52569in;height:4.14792in" alt="{1FC8B975-7D18-4EA1-BF2F-75DC0C766E11}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Migration of existing DBs to Cosmos. Possibilities.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image615.webp" style="width:7.52431in;height:4.48194in" alt="{212DFF0E-333E-4522-8979-91346A3F1009}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Why choose cosmos db</p>
<p><img src="subjects/tech/ai/ollama-img/media/image616.webp" style="width:7.53056in;height:4.17222in" alt="{87CFA335-FFE0-45EC-B86D-B0286199A8B4}" /></p></td>
</tr>
</tbody>
</table>

## Where does it fit in RAG

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Having Cosmos DB has some advantages as listed below.</p>
<p>→It removes data silos altogether, meaning we can store <strong>vector embeddings</strong> and <strong>documents data</strong> at single place.</p>
<p>→Meaning we can have ‘data &amp; vectors’ at same place.</p>
<p>→With this feature, the ‘<strong>vector search’</strong> and ‘<strong>additional query filters’</strong> can be applied easily.</p>
<p>→Actions like ‘<strong>Vector Distance’</strong>, ‘<strong>cosine similarities’</strong>, ‘<strong>Euclidean distance’</strong> can be executed easily.</p>
<p>→ Euclidean distance is a way to measure how “close” two vectors are in the embedding space.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image617.webp" style="width:7.52083in;height:4.02986in" alt="{D4978291-A1BE-4ED0-AE35-ECD855A840DE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Built-in support for DiskANN.</p>
<p>→DiskANN is a high-performance system for approximate nearest neighbor (ANN) search on very large-scale vector datasets, designed to handle billions of vectors efficiently, even when they don’t fit in memory.</p>
<p>→ANN search retrieves vectors that are most similar, typically corresponding to similar meaning or context.</p>
<p>→This is particularly important in very high dimensions unlike we deal with x &amp; y.</p>
<p>→What exactly does the ANN does is described in below image.</p>
<p>→First it compresses the vectors.</p>
<p>→Second it arranges these compressed vectors in storage and graph representation manner.</p>
<p>→Further, the ANN stores data both in RAM and Disk.</p>
<p>→Compressed vectors are stored in RAM and the original uncompressed vectors are stored on the Disk.</p>
<p>→It is like ‘index of indexes’. Where RAM acts as pointers to the actual vectors.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image618.webp" style="width:7.51806in;height:3.86736in" alt="{DE61E557-E8A2-42FC-A7D1-07A5688F08B5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→What is vcore with Cosmos DB</p>
<p><img src="subjects/tech/ai/ollama-img/media/image619.webp" style="width:7.51875in;height:3.52431in" alt="{77BA1CAE-B963-4528-8598-E9A42C2085E4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Usecases</p>
<p><img src="subjects/tech/ai/ollama-img/media/image620.webp" style="width:7.525in;height:4.37292in" alt="{F9AD7415-76E6-4C01-BC8D-F2DF10B65E9F}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image621.webp" style="width:7.52083in;height:4.16111in" alt="{29860EA8-83D8-49EC-9B14-83967886F251}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## RAG Architecture with Cosmos DB 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image622.webp" style="width:7.52986in;height:3.7in" alt="{F8543A56-9637-456D-988A-022FB17A80B2}" /></p></td>
</tr>
</tbody>
</table>

### Container Vector Policies

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once we decide that we are going to use Cosmos DB for vector embeddings, we need to tell it that we are going to store the embeddings in certain format.</p>
<p>→As shown in the json below, we mention that the datatype would be float32, dimensions would be 1536 etc.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image623.webp" style="width:7.52639in;height:3.975in" alt="{B8864E55-09C3-48E8-AE32-584D80CCE0EB}" /></p></td>
</tr>
</tbody>
</table>

### Vector Indexes

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→this is another configuration where we tell cosmos db that the indexes are going to use a specific algorithm which is ‘diskANN’.</p>
<p>→Apart from this, there are other two as shown below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image624.webp" style="width:7.52361in;height:4.01944in" alt="{63B78677-79B6-4D71-9290-51BB6BD24002}" /></p></td>
</tr>
</tbody>
</table>

## Environment Variables Required

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We will need below environment variables that are required for this implementation.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image625.webp" style="width:7.52292in;height:3.38889in" alt="{CEF851C6-FEC6-47C1-8AC0-0FED23577412}" /></p></td>
</tr>
</tbody>
</table>

## Deploy Cosmos DB

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image626.webp" style="width:7.05208in;height:3.26042in" alt="{D36FA4F8-96CD-4B70-9F78-794F4739CB84}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose NoSQL</p>
<p><img src="subjects/tech/ai/ollama-img/media/image627.webp" style="width:7.52778in;height:4.40486in" alt="{9DC4D746-B5D2-41FD-9BB9-F9EE79AE897C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide name and RG</p>
<p><img src="subjects/tech/ai/ollama-img/media/image628.webp" style="width:6.96875in;height:4.10417in" alt="{633EFDD7-6AA3-4D49-8714-84674D80F3CB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose AZ as disable, given it is non-prod and poc.</p>
<p>→Choose Capacity mode as serverless, as it is non prod.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image629.webp" style="width:7.52361in;height:3.71528in" alt="{12884AF6-1D1A-4C82-848B-DE5D88409B0A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image630.webp" style="width:7.53056in;height:2.45764in" alt="{BFE964CF-CC2D-42AF-8F70-68601A5E2F11}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is created we will need to get some configuration details.</p>
<p>→Click the service.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image631.webp" style="width:7.52569in;height:3.01597in" alt="{BAA67CA2-A745-4A21-ADE0-6FBD732B23FB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Settings → Keys and copy the primary symbol eye icon and copy.</p>
<p>→Paste in the environment variables section. Ensure it is surrounded by double quotes.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image632.webp" style="width:7.52083in;height:3.34236in" alt="{2483D25C-D5D3-46DB-AE72-7BDDD0E97705}" /></p>
<p>→Paste and double quotes.</p>
<p>→Further add a database name and container name as per the project needs. This is not copied from anywhere but manually added.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image633.webp" /><img src="subjects/tech/ai/ollama-img/media/image634.webp" style="width:7.52986in;height:0.43889in" alt="{17295CC2-44E7-480C-9873-82DBAFB14D23}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Settings → Features and enable Vector Search for NoSQL API.</p>
<p>→A relevant code snippet will be executed ahead, if not enabled here, we will get an error.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image635.webp" style="width:7.52708in;height:4.03472in" alt="{34A5408E-8538-4E53-99F4-CB551CF9E252}" /></p>
<p>→Enable.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image636.webp" style="width:5.80208in;height:5.5625in" alt="{1E2E3E87-B879-4F21-8609-A877A283E15C}" /></p>
<p>→Notice it is enabled. However, it takes around 10-15 mins for it to have the effect on the cosmos db.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image637.webp" style="width:7.52639in;height:3.8375in" alt="{CDE4EFD2-CE59-4336-995F-3A7ECA7A60B2}" /></p></td>
</tr>
</tbody>
</table>

## Create Azure Open AI 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We need Az Open AI resource. We will resuse the existing one. Refer section above with ‘Setup Open AI &amp; Azure AI Foundry’ heading.</p>
<p>→Below is the existing one.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image638.webp" style="width:7.52222in;height:2.91528in" alt="{44FE01E3-B437-4444-87D6-E5978B9BED75}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Azure Open AI Studio.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image639.webp" style="width:7.52292in;height:3.75556in" alt="{D60A45C5-0E1D-4833-A129-E77768592A63}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Deploy gpt model and embedding model. Given it was already created previously, we will reuse it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image640.webp" style="width:7.51875in;height:3.5125in" alt="{7728B16C-E7E7-4D92-BF8A-6BF1BB052EDC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fetch the keys and endpoints from Azue Open AI UI.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image641.webp" style="width:7.52222in;height:4.57639in" alt="{BEEFF3CE-966E-4F62-B480-6EDA21565211}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Paste the Key,endpoint and also populate the gpt engine and embedding engine as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image642.webp" style="width:7.51806in;height:1.17847in" alt="{E8E7A204-4248-44A6-852C-BCF6696BCA0B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Validating the data

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have some sample data of food items for ingestion into cosmos db.</p>
<p>→This data will be given to embeddings model which converts to vectors which gets stored in the db.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image643.webp" style="width:7.52847in;height:3.89028in" alt="{3E06B815-D7F1-4576-AD33-744C636858BC}" /></p></td>
</tr>
</tbody>
</table>

## Install Packages - Azure Cosmos

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image644.webp" style="width:7.52431in;height:3.00139in" alt="{177604DC-E242-4C02-B865-3638897BD8F6}" /> |

## Import libraries

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image645.webp" style="width:7.52778in;height:1.61736in" alt="{2959117A-8823-49CD-BE35-948AFCBD4539}" /> |

## Create Connection to Cosmos DB

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image646.webp" style="width:7.525in;height:2.37917in" alt="{C3D2C45C-11D0-454F-BE85-C2C0D1957832}" /> |

## Define Vector embedding policy 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Refer previously explained policies section for more information.</p>
<p>→PK stands for partition Key.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image647.webp" style="width:5.8125in;height:3.23958in" alt="{2134E093-A831-420B-8C63-AC0F20F3DB3C}" /></p></td>
</tr>
</tbody>
</table>

## Define ANN algorithm for indexing policy 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image648.webp" style="width:6.1875in;height:2.72917in" alt="{DBCAC6D4-0322-4AD3-8751-A40461B7DF4E}" /> |

## Create Container inside DB

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image649.webp" style="width:6.5625in;height:3.35417in" alt="{B66C177B-1F3E-4F90-A2B2-9632EE768261}" /></p>
<p>→We may get an error like this if vector search is not enabled from the features of Cosmos DB.</p>
<p>→If we do not get any error, it means it is enabled.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image650.webp" style="width:7.52292in;height:2.67153in" alt="{2F158BCB-BA78-41E3-BB9B-249469785473}" /></p>
<p>→Once it ran successfully, we can see a container getting created.</p>
<p>→Same can be seen as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image651.webp" style="width:7.52847in;height:2.33194in" alt="{8E0B140A-2B76-47B5-9493-A775A5BA2D31}" /></p></td>
</tr>
</tbody>
</table>

## Create Azure Open AI Client 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image652.webp" style="width:7.525in;height:2.6125in" alt="{724C2B4E-C912-43B2-B982-D21816ADD929}" /> |

## Create Embedding Generation Function 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is a simple function when triggered generates vector embeddings.</p>
<p>→It takes two parameters client and text, where, ‘client’ is the object of ‘open ai connection’ that is created previously.</p>
<p>→’text’ is the actual text that requires to be converted to vectors.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image653.webp" style="width:7.375in;height:3.65625in" alt="{F7E270EC-5194-4926-B7F3-6DB8C38F2D8D}" /></p></td>
</tr>
</tbody>
</table>

## Load Data Set 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→What this snippet does is, it iterates over the json file and for each object it invokes the function created previously.</p>
<p>→The result thus received (vector embeddings), are stored inside the cosmos db.</p>
<p>→Run this.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image654.webp" style="width:7.52639in;height:3.97847in" alt="{D6CB4D77-2642-431E-8119-21CC08F5913A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once run, we get a new file in the project, which are nothing but vector embeddings of our data set.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image655.webp" style="width:7.52361in;height:2.31319in" alt="{8764DEC8-BE33-4FCC-AC58-BDABE59F44B1}" /></p></td>
</tr>
</tbody>
</table>

### Validate data loading on Cosmos DB 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate back to the cosmos db and we can see data being loaded.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image656.webp" style="width:7.51736in;height:2.73611in" alt="{05BD30D9-4E3F-4A87-9842-20AF02E0B1C1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Data Explorer → DB →Container → Items.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image657.webp" style="width:7.51944in;height:3.66458in" alt="{66672B13-0F3D-4D64-8159-FBBDC196C6EC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click any one and we can see them being loaded with appropriate vector embeddings as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image658.webp" style="width:7.52986in;height:3.64306in" alt="{5E46B102-5A91-4F5B-AB55-B3FDAD45E213}" /></p></td>
</tr>
</tbody>
</table>

## Generate Vector Embeddings for user Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have a user query as shown and we are obtaining the vector embeddings for it.</p>
<p>→Notice that they are stored in variable ‘user_embeddings’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image659.webp" style="width:7.52986in;height:1.38472in" alt="{DE54BB1B-E17B-4D5D-BCB4-33A9D123BA21}" /></p></td>
</tr>
</tbody>
</table>

## Send query to database 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Fire a select query on cosmos db by sending variable ‘user_embeddings’, which is the query.</p>
<p>→Here, we are running a ‘similarity search’ using the keyword ‘vectordistance’ and retrieve the data.</p>
<p>→Just to alert that these queries have built-in support to calculate the ‘vector-distance’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image660.webp" style="width:7.52847in;height:2.49028in" alt="{FCFC98B4-A842-4DB8-9EFD-6AAF784BA7DF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get some result, which is stored in ‘python list’ viz., ‘dishes’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image661.webp" style="width:7.52083in;height:0.86528in" alt="{9521E177-CA83-4065-8BDA-E663525B0FB4}" /></p></td>
</tr>
</tbody>
</table>

## Send call to GPT engine for summary. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have user query (plain text), and also ‘context’ in plain text, we are sending to gpt for a summary.</p>
<p>→Also notice that we are sending a ‘system message’ or prompt.</p>
<p>→Important here is to have a proper prompt to get a very good summary.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image662.webp" style="width:7.52639in;height:2.72014in" alt="{C6D7F027-7C37-4B41-B1C7-FF4EFE558E73}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here we are using the chat completion api and we are also setting some temperature for accuracy.</p>
<p>→We get some response as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image663.webp" style="width:7.52778in;height:1.57708in" alt="{745CB816-78F8-437E-A2AC-22FDCA4ECC0A}" /></p></td>
</tr>
</tbody>
</table>

## Query 2

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Generate embeddings</p>
<p><img src="subjects/tech/ai/ollama-img/media/image664.webp" style="width:7.52361in;height:1.16667in" alt="{F396FE42-01FF-4D5B-BA0B-E6B74CFE6433}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fire cosmos db select query</p>
<p><img src="subjects/tech/ai/ollama-img/media/image665.webp" style="width:7.52153in;height:2.11181in" alt="{6E64E00B-F953-4ABA-878D-DDA86A87659B}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image666.webp" style="width:7.52292in;height:1.48333in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fire call to gpt</p>
<p><img src="subjects/tech/ai/ollama-img/media/image667.webp" style="width:7.52639in;height:4.82014in" alt="{7AA185DF-4354-4A69-AFDB-F29940F07F8B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get some different response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image668.webp" style="width:7.52986in;height:1.50139in" /></p></td>
</tr>
</tbody>
</table>

#  RAG with Cosmos DB for Mongo DB 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→MongoDB is same as Cosmos.</p>
<p>→Langchain is an orchestration platform that does all the calls between various Azure resources like AI Search, cosmos db / mongo db etc.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image669.webp" style="width:7.51736in;height:3.72639in" alt="{50E64FE1-25DD-426E-B027-969383A85932}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image670.webp" style="width:7.525in;height:5.86806in" alt="{37AB1576-5EEA-41A9-9546-4909CDD6267F}" /></p></td>
</tr>
</tbody>
</table>

##  Architecture 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image671.webp" style="width:7.52431in;height:3.07431in" alt="{9787A1C1-A363-4B22-8E95-55B72AABD40F}" /> |

##  Validate the Data & Environment Variables. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have below data set that will go in to the database.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image672.webp" style="width:7.52431in;height:4.50972in" alt="{D6B11ED5-C4E7-45FE-80D1-D6C85C7D9292}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Environment variables to be loaded.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image673.webp" style="width:7.52153in;height:3.4875in" alt="{26FB27F9-922A-4847-A4CA-9CD902D46108}" /></p></td>
</tr>
</tbody>
</table>

##  Create CosmosDB for MongoDB 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to portal and create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image674.webp" style="width:3.59583in;height:1.97847in" alt="{824449EC-E5FB-4AF2-9848-6C3ABB55102A}" /></p>
<p>→Choose this time, second option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image675.webp" style="width:7.52778in;height:4.10972in" alt="{C507844E-30D5-4757-B6E7-93821784927A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose ‘vCore cluster’ as it is the one that supports ‘vector embeddings’.</p>
<p>→The first one is meant for basic poc and development environments.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image676.webp" style="width:7.525in;height:3.57153in" alt="{57BBBD9F-64EA-4A5E-847D-9F5FCADFAC4F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide names and choose free-tier.</p>
<p>→Name should be unique.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image677.webp" /><img src="subjects/tech/ai/ollama-img/media/image678.webp" style="width:7.32292in;height:4.14583in" alt="{76B5DE1C-6B1F-4D79-AA65-5C2567908810}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide other details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image679.webp" style="width:6.89583in;height:2.83333in" alt="{44721764-5643-40C6-8BFD-C565B76AA29C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure networking, where we add the local host IP that needs access to it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image680.webp" style="width:7.52361in;height:5.98056in" alt="{3C886455-471D-44DE-9306-CE1F10F8385D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image681.webp" style="width:7.46875in;height:6.44792in" alt="{485903D8-35CA-4780-87F9-4EE9ADD51253}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image682.webp" style="width:7.52847in;height:3.45903in" alt="{5352BC10-B6B6-41C1-A1A7-FCB8C0431665}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Overview</p>
<p><img src="subjects/tech/ai/ollama-img/media/image683.webp" style="width:7.52361in;height:4.41181in" alt="{F301DFCF-41B7-43C5-800A-362C5A34412D}" /></p></td>
</tr>
</tbody>
</table>

##  Populate Environment Variables. 

|     |
|:----|
|     |

###  Connection Strings 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Get Connection Strings</p>
<p><img src="subjects/tech/ai/ollama-img/media/image684.webp" style="width:7.51736in;height:2.59236in" alt="{10299C24-6DE6-4E57-BA16-E19AB747F654}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Populate in the environment variable.</p>
<p>→Ensure the string is placed in double quotes.</p>
<p>→Popualte the username / pw / cluster name (or collection name).</p>
<p>→The database name can be any name, that needs to be given manually and not copied from any of previous configurations.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image685.webp" style="width:7.525in;height:2.00139in" alt="{375A7E64-18BF-4B13-8C4B-5AD907DDA7AD}" /></p></td>
</tr>
</tbody>
</table>

###  Azure Open AI Resource - Keys and endpoints. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are reusing the existing ones.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image686.webp" style="width:7.52569in;height:3.41181in" alt="{99CFE99F-045B-4449-90D1-03F102F9533F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Copy from the keys and endpoints.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image687.webp" style="width:7.52431in;height:4.59306in" alt="{90BC0B4D-097D-472A-AF09-0B1595870B56}" /></p>
<p>→Paste it here.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image688.webp" style="width:5.58333in;height:0.95833in" alt="{95EEDEC5-555A-4899-AF54-C7ED64311CC2}" /></p></td>
</tr>
</tbody>
</table>

###  GPT and Embedding ‘model’ name and Deployment Name. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to over view of Azure Open AI →click ‘Go to azure OpenAI studio’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image689.webp" style="width:7.52778in;height:2.60903in" alt="{96356A58-086C-419D-83F9-4AA40D6BDE9B}" /></p>
<p>→Copy below names. Note that left most column is the ‘deployment name’ and ‘second column’ is the model name itself.</p>
<ol type="1">
<li><p>Deployment name for embedding model.</p></li>
<li><p>Model name for Gpt</p></li>
<li><p>Model name for embedding model.</p></li>
</ol>
<p><img src="subjects/tech/ai/ollama-img/media/image690.webp" /><img src="subjects/tech/ai/ollama-img/media/image691.webp" /><img src="subjects/tech/ai/ollama-img/media/image692.webp" /><img src="subjects/tech/ai/ollama-img/media/image693.webp" /><img src="subjects/tech/ai/ollama-img/media/image694.webp" /><img src="subjects/tech/ai/ollama-img/media/image695.webp" /><img src="subjects/tech/ai/ollama-img/media/image696.webp" /><img src="subjects/tech/ai/ollama-img/media/image697.webp" style="width:7.52569in;height:3.28819in" alt="{0D0A3062-AA4A-4B50-A8F4-2F769262201B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Populate in environment variables. Notice that they are populated separately, even if they both have same name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image698.webp" style="width:4.73958in;height:0.96875in" alt="{839E2488-CDB4-429B-B46F-7E445034EA07}" /></p></td>
</tr>
</tbody>
</table>

###  API version 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Chat Section → Select the Deployment model (eg. Gpt-4) →Click View Code.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image699.webp" style="width:6.63542in;height:3.98958in" alt="{682F2550-E288-4F28-9583-3D560EA2B129}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Copy the api_version</p>
<p><img src="subjects/tech/ai/ollama-img/media/image700.webp" style="width:7.53056in;height:4.47847in" alt="{85EAB26F-20F9-41BE-8358-FB385C8AE8C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Paste in environment variable.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image701.webp" style="width:5.77083in;height:0.67708in" alt="{650DD925-9562-405D-AFE6-C4A679184AD5}" /></p></td>
</tr>
</tbody>
</table>

###  Index Name

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Populate an index name with any random name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image702.webp" style="width:3.78125in;height:0.6875in" alt="{0E6ECDAB-A928-4E9C-9A26-E4237CF6F679}" /></p></td>
</tr>
</tbody>
</table>

###  All values populated 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image703.webp" style="width:7.525in;height:1.98819in" alt="{0564DA2B-523A-47AF-AAB4-1DF51F57B1E3}" /> |

## Install Dependencies of Langchain 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image704.webp" style="width:7.525in;height:2.58681in" alt="{C96ED4D3-6878-4B29-B98B-B6ACF567B1C3}" /> |

## Import libraries and components

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image705.webp" style="width:7.23958in;height:1.45833in" alt="{2D371CDF-BBB8-4C3D-9BAA-FCE32C5D565D}" /> |

## Initilalize the Open AI Client 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→note that from previous OpenAI Clients it is different as Langchain driven access is slightly different.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image706.webp" style="width:7.53056in;height:2.20417in" alt="{FD863B66-0BFA-4C93-BBD2-3D78E34FDD8F}" /></p></td>
</tr>
</tbody>
</table>

## Initialize MongoDB Client 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image707.webp" style="width:7.36458in;height:4.86458in" alt="{0E72B7FB-0611-45AA-8741-E6690DC1F0C3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Response</p>
<p><img src="subjects/tech/ai/ollama-img/media/image708.webp" style="width:7.52292in;height:0.85in" alt="{D3FCCDE7-2C1D-4E5C-B061-B82280590809}" /></p></td>
</tr>
</tbody>
</table>

## Load JSON Data using Lang-Chain 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are reading from the json file, however now using the Langchain.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image709.webp" style="width:7.52847in;height:3.91875in" alt="{95A5D1FA-EDD8-4503-899B-BBD6E9A31F55}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Some additional checks to validate, where we are reading the data of json into a variable and printing it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image710.webp" style="width:7.52014in;height:1.28819in" alt="{24BA7F70-8B90-484E-BA2A-6165575B056F}" /></p></td>
</tr>
</tbody>
</table>

## Initialize embeddings client

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image711.webp" style="width:7.19792in;height:2.64583in" alt="{3520C630-3ABE-4C3F-9E65-0F1AA52966E9}" /> |

## Generate and Save Embeddings to Mongo

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Notice here we are using the langchain and we are using the ‘from_documents’ variable to generate the same.</p>
<p><mark>→A BIT OF THOROUGH UNDERSTANDING IS NEEDED WHAT IS HAPPENNING HERE. VARIABLE NAMES ETC. CONFUSING.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image712.webp" style="width:7.38542in;height:2.84375in" alt="{60B13590-5088-4418-B87E-51FA1138D930}" /></p></td>
</tr>
</tbody>
</table>

##  Connect to Vector Store

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><mark>→What is the purpose ??? to be ascertained.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image713.webp" style="width:7.525in;height:1.9in" alt="{4F7F87C6-8A3D-4483-80C3-D3098DDD41E0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image714.webp" style="width:7.52708in;height:0.73889in" alt="{8B32B8DC-17D2-4430-AED2-8BDEE05B06EC}" /></p></td>
</tr>
</tbody>
</table>

##  Create IVF Vector Index

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→IVF stands Inverted File (or Inverted Files) Vector Index</p>
<p>→There is another one called HNSW. Hierarchical Navigable Small World (graph)</p>
<p><img src="subjects/tech/ai/ollama-img/media/image715.webp" style="width:7.52222in;height:2.81597in" alt="{2FE96387-0FE8-44D3-BB5E-93DC810D3BB8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here we will be mentioning things like dimensions, algorithms, etc.</p>
<p>→We get response below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image716.webp" style="width:5.375in;height:1.53125in" alt="{A971EB5B-6DF5-4CA3-B0D6-C90B31A60015}" /></p></td>
</tr>
</tbody>
</table>

##  Test Vector Similary - User Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we will be putting a user query and notice that we are using the specific api calls from langchain.</p>
<p>→For eg. ‘similarity_search’, which is part of langchain.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image717.webp" style="width:5.03125in;height:1.875in" alt="{A6FB7A6E-61BA-4A1E-8BAA-31E6B635D074}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image718.webp" style="width:7.525in;height:0.55764in" alt="{51ACBE7B-7585-4502-A30F-1E3D4AD2D439}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Another query.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image719.webp" style="width:7.52708in;height:2.49722in" alt="{80913A21-AB5A-4009-B4C7-4C170862195A}" /></p></td>
</tr>
</tbody>
</table>

##  Validate on Azure Portal 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to the cluster</p>
<p><img src="subjects/tech/ai/ollama-img/media/image720.webp" style="width:7.52292in;height:4.34306in" alt="{5D9CCF46-3702-41A6-A310-F4C58AB56CF4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Quick Start and Launch Mongo Shell</p>
<p><img src="subjects/tech/ai/ollama-img/media/image721.webp" style="width:7.52569in;height:3.31944in" alt="{3B6F4B2B-9575-42C3-811C-E44890446E8D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Open a new Shell, if needed.</p>
<p>→Change the network settings.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image722.webp" /><img src="subjects/tech/ai/ollama-img/media/image723.webp" /><img src="subjects/tech/ai/ollama-img/media/image724.webp" style="width:7.52708in;height:3.23194in" alt="{A90C7F29-3455-47E1-BFB7-1F7F15824CE5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Allow Public Access and Save</p>
<p><img src="subjects/tech/ai/ollama-img/media/image725.webp" /><img src="subjects/tech/ai/ollama-img/media/image726.webp" /><img src="subjects/tech/ai/ollama-img/media/image727.webp" style="width:6.05208in;height:5.89583in" alt="{BB36ACF6-C2AB-4159-87CC-953CD2D20D11}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ReOpen Mongo Shell</p>
<p><img src="subjects/tech/ai/ollama-img/media/image728.webp" style="width:7.52639in;height:3.13819in" alt="{E309D18C-2C48-4632-9AFA-BD42B9B13BA6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Key-in the password.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image729.webp" style="width:7.52083in;height:1.96806in" alt="{9167311D-CAD0-4529-956F-8F8FAD0C449C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Access the database by using the ‘use’ command</p>
<p><img src="subjects/tech/ai/ollama-img/media/image730.webp" style="width:4.61458in;height:1.40625in" alt="{DD60F3CB-4911-48D9-BFAC-DB6F8D344584}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Show collections.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image731.webp" style="width:4in;height:0.73958in" alt="{4DB532CE-C134-4A0D-ABEB-61DD6E51F213}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Find in the cluster.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image732.webp" style="width:3.90625in;height:0.73958in" alt="{25405E6E-B373-4C02-A9F3-B0F3889E7EBC}" /></p>
<p>We can see the vectors.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image733.webp" style="width:7.52222in;height:1.50972in" alt="{B48E04E1-AA16-4C30-9D26-D665BFE59735}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image734.webp" style="width:6.71875in;height:2.16667in" alt="{C32FAD8C-11A4-498F-896A-BEC0BC63425D}" /></p></td>
</tr>
</tbody>
</table>

## Create a function - Azure Open AI Client

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We create a python function as Azure Open AI Client</p>
<p><img src="subjects/tech/ai/ollama-img/media/image735.webp" style="width:7.52569in;height:3.40278in" alt="{C6776DC0-1FC5-467C-9922-9C447C10CD8A}" /></p></td>
</tr>
</tbody>
</table>

## Define system and user prompt

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→In the below snippet, we will be defining both user and system prompt.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image736.webp" style="width:7.52639in;height:4.15972in" alt="{7A82E88D-5DB7-4A35-A414-3898E4027537}" /></p></td>
</tr>
</tbody>
</table>

## Fire a User Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Provide a user query and invoke the function.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image737.webp" style="width:6.01042in;height:0.91667in" alt="{C0512C60-8A72-4E32-B583-33F321BA8011}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can get response</p>
<p><img src="subjects/tech/ai/ollama-img/media/image738.webp" style="width:7.52986in;height:1.87431in" alt="{D1D5E4AB-94CA-4880-BB88-D6896BCE54AC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Query 2</p>
<p><img src="subjects/tech/ai/ollama-img/media/image739.webp" style="width:7.52014in;height:1.14653in" alt="{F778947B-71FA-4EDB-ACC2-3D5D9407B0F5}" /></p></td>
</tr>
</tbody>
</table>

#  Icon Search Engine - Usecase Implementation 

|     |
|:----|
|     |

## Create SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image740.webp" style="width:7.01042in;height:5.95833in" alt="{B8CB2FA8-1EF6-4D66-BD2B-89F990D51697}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image741.webp" style="width:6.91667in;height:1.70833in" alt="{C9A381BF-1760-4091-BB62-DF92C5F9773E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Enable anoynmous access once it is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image742.webp" /><img src="subjects/tech/ai/ollama-img/media/image743.webp" /><img src="subjects/tech/ai/ollama-img/media/image744.webp" /><img src="subjects/tech/ai/ollama-img/media/image745.webp" style="width:7.44792in;height:5.96875in" alt="{DAB7E20A-15F2-4AF9-9AEF-151037BD359F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→create a container</p>
<p><img src="subjects/tech/ai/ollama-img/media/image746.webp" /><img src="subjects/tech/ai/ollama-img/media/image747.webp" /><img src="subjects/tech/ai/ollama-img/media/image748.webp" /><img src="subjects/tech/ai/ollama-img/media/image749.webp" /><img src="subjects/tech/ai/ollama-img/media/image750.webp" style="width:7.52292in;height:3.52986in" alt="{04090C8F-D6B2-4BC0-8217-4A96930C47DE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload some images to the container.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image751.webp" style="width:7.52431in;height:2.90903in" alt="{1A11D3EF-283D-40C8-BF06-FDC5B409ECD9}" /></p>
<p>→Upload SVG icons.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image752.webp" style="width:7.52917in;height:3.49028in" alt="{DF5897A6-5E70-400F-9B79-58CB80318A1E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Uploaded</p>
<p><img src="subjects/tech/ai/ollama-img/media/image753.webp" style="width:7.52292in;height:3.85833in" alt="{4F1A8E7D-8FAB-4895-B564-62B2729661C7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

##  Create Azure OpenAI Resource 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create Azure OpenAI resource</p>
<p><img src="subjects/tech/ai/ollama-img/media/image754.webp" style="width:4.77292in;height:1.82083in" alt="{44006C9E-218B-4A68-852A-2D6C648ECE6C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image755.webp" style="width:6.9375in;height:6.375in" alt="{04E39C55-47DC-4A83-BBB1-37311C6CE7B2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image756.webp" style="width:5.91667in;height:2.72917in" alt="{2719CC1E-A09A-4623-BDEF-52073591789D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is created, navigate to it and add GPT and Embedding Models.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image757.webp" style="width:7.52917in;height:3.10833in" alt="{B87A85D7-442E-42AC-B625-69F7FECCF964}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Deployments →Deploy Model → Deploy base model</p>
<p><img src="subjects/tech/ai/ollama-img/media/image758.webp" style="width:7.53056in;height:5.71944in" alt="{39B1F6EC-5164-482F-B755-C5D3403DEE1F}" /></p>
<p>→Choose gpt-4 andconfirm</p>
<p><img src="subjects/tech/ai/ollama-img/media/image759.webp" style="width:7.525in;height:5.22639in" alt="{E9F1D9D5-2BF3-4281-BFA6-A7E254AB4D5D}" /></p>
<p>→Provide a deployment name and choose type, followed by ‘deploy’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image760.webp" style="width:5.46875in;height:5.54167in" alt="{4E507A3D-D83A-42B7-A7E0-2E95B8BC1C47}" /></p>
<p>→</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is deployed, go ahead for ‘text embedding model’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image761.webp" style="width:7.53056in;height:3.69861in" alt="{54BDEF2E-8A7B-4CA4-BB49-9060FBEE5AA1}" /></p>
<p>→Choose a simple model. We have a large option as well where the dimension is double to ada-002</p>
<p><img src="subjects/tech/ai/ollama-img/media/image762.webp" /><img src="subjects/tech/ai/ollama-img/media/image763.webp" /><img src="subjects/tech/ai/ollama-img/media/image764.webp" style="width:7.525in;height:5.10833in" alt="{36E068CA-3970-40D3-800A-7C9187E25C1E}" /></p>
<p>→Provide a name and deploy.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image765.webp" style="width:5.82292in;height:5.40625in" alt="{F925C11F-2DE7-478C-B4B5-CE3489C93858}" /></p>
<p>→ Deployed both models.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image766.webp" style="width:7.525in;height:4.14722in" alt="{23232EA8-BF93-4517-A029-DC555629D394}" /></p></td>
</tr>
</tbody>
</table>

##  Create Azure Cosmos DB

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image767.webp" style="width:5.47917in;height:2.29167in" alt="{83956671-A972-46EE-8525-F9CF49120BBC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose first option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image768.webp" style="width:7.52639in;height:4.05903in" alt="{E72970B3-AA08-47D8-9A5D-B7C2D1792106}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide details</p>
<p><img src="subjects/tech/ai/ollama-img/media/image769.webp" style="width:6.45833in;height:5.98958in" alt="{2519B1B2-DCBB-4DA6-B465-D1211624D8BC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image770.webp" style="width:7.39583in;height:2.66667in" alt="{3543E1BC-9BD3-4003-89DD-3CB1C0ABD751}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once created, enable this feature. This may take some time to enable around 15 min.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image771.webp" style="width:7.52361in;height:4.05486in" alt="{F42700B7-6FB8-4740-82CC-552E742AB854}" /></p>
<p>→Enable it</p>
<p><img src="subjects/tech/ai/ollama-img/media/image772.webp" style="width:6in;height:4.875in" alt="{57D6F976-D3C2-4939-90D7-3713FDD9F949}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once enabled, we should see something like this.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image773.webp" style="width:7.525in;height:3.39722in" alt="{13B91614-9AA7-4BC7-BFF0-CBECB6174516}" /></p></td>
</tr>
</tbody>
</table>

##  Populate Environment Variables 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image774.webp" style="width:7.25in;height:5.375in" alt="{4470138E-35DD-414A-B4FF-0774E033CA40}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Navigate to cosmos db and fetch connection strings of primary.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image775.webp" /><img src="subjects/tech/ai/ollama-img/media/image776.webp" style="width:7.52083in;height:3.37778in" alt="{284094AF-557F-4B22-8717-6B187E6BBE4A}" /></p>
<p>→Populate the string and ensure ‘double quotes’ are mentioned.</p>
<p>→Provide DB Name and Container name manually as required. This can be user specific.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image777.webp" style="width:7.52708in;height:1.48681in" alt="{78ABF057-ADBC-4BB4-8269-3288B676A9B9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Fetch Storage Account Details viz., container name.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image778.webp" /><img src="subjects/tech/ai/ollama-img/media/image779.webp" style="width:7.52292in;height:3.93125in" alt="{7B892D5A-1306-4948-8FBC-CE4673EF7620}" /></p>
<p>→Followed by get connection strings from below navigation.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image780.webp" /><img src="subjects/tech/ai/ollama-img/media/image781.webp" style="width:7.52153in;height:4.7375in" alt="{92C32E30-AF00-417D-A6BF-67FEE3812848}" /></p>
<p>→Populate in the environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image782.webp" style="width:7.52708in;height:1.40139in" alt="{F7226757-647F-46C6-878D-7427A09E5AE1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Next is to get Azure Open AI endpoints and keys.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image783.webp" /><img src="subjects/tech/ai/ollama-img/media/image784.webp" /><img src="subjects/tech/ai/ollama-img/media/image785.webp" style="width:7.52917in;height:4.52708in" alt="{AD33752F-E621-439D-8B91-E22A1A2168C7}" /></p>
<p>→Populate as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image786.webp" style="width:7.52431in;height:1.44653in" alt="{1CBDBA67-1A6D-4EB0-BA1A-2A4AF30E6DEE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Fetch Gpt Model and embedding engine details.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image787.webp" style="width:7.52708in;height:6.05764in" alt="{2498BD62-3155-4085-8438-9F314F6C3607}" /></p>
<p>→Populate the same</p>
<p><img src="subjects/tech/ai/ollama-img/media/image788.webp" style="width:4.08333in;height:0.84375in" alt="{EB0962AD-31F7-4561-9E2E-A178BF860988}" /></p></td>
</tr>
</tbody>
</table>

##  Install Libraries

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Install libraries.</p>
<p>→Choose Python Env and →Choose a python version when asked on search window.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image789.webp" style="width:6.47917in;height:1.6875in" alt="{BE2FE308-0DD3-44CD-A39C-3FB5462EED71}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image790.webp" style="width:7.52569in;height:3.94861in" alt="{FB974EAF-732F-4456-9E99-B5B117DBB355}" /></p></td>
</tr>
</tbody>
</table>

## Initialize Variable and Import Installed Libraries

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image791.webp" style="width:7.51042in;height:2.21875in" alt="{6316A08E-14B3-4432-B181-3D2DBF8C95CF}" /> |

## Create Function to convert SVG to PNG format

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→When we are feeing images to gpt engines, only PNG and JPEG are supported.</p>
<p>→In order to make them compatible, we are converting.</p>
<p>→Here we are using the python libraries that we have downloaded above. Viz., ‘aw’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image792.webp" style="width:7.53056in;height:3.88194in" alt="{63384F1A-869B-4CAA-BC3B-57AFACE1373A}" /></p></td>
</tr>
</tbody>
</table>

## Generate Local URL 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→When we are feeding an image to gpt engine, we can either send entire blob to it or provide a local URL.</p>
<p>→Given we are having SVG file types on Storage account, we cannot point the same there.</p>
<p>→Hence, we are doing a workaround like first converting them to png and then store them locally.</p>
<p>→Subsequently, for these locally stored images, we are generating a local url.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image793.webp" style="width:6.9375in;height:3.4375in" alt="{10B9E388-5C5F-4B0A-AE09-D4582AA07C54}" /></p></td>
</tr>
</tbody>
</table>

## Create Open AI Client 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create a client that connects to Azure Open AI</p>
<p><img src="subjects/tech/ai/ollama-img/media/image794.webp" style="width:4.80208in;height:2.8125in" alt="{04435271-0012-4D57-8E12-39E03EB37E4E}" /></p>
<p>→Create the client</p>
<p><img src="subjects/tech/ai/ollama-img/media/image795.webp" style="width:4.33333in;height:1.72917in" alt="{C1224E2C-5773-4422-B2B0-E66C48E35DE6}" /></p>
<p><mark>→WHY TWO SNIPPETS. WHEN RUNNING IN LOCAL TEST THE NEED. THIS IS NOT CLEAR.</mark></p></td>
</tr>
</tbody>
</table>

## Define function to label images

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is kind of heart of the functions.</p>
<p>→Given there are many images and manually generating fields like ‘<strong>name’, description, similar words, etc</strong>’ for each of the image would be cumbersome.</p>
<p>→Hence, we are relying on the gpt engine power to generate these for us.</p>
<p>→Here we are saying, ‘hey’ we are passing some URLs which are local images, which are azure icons, and making use of your knowledge, label them correctly.</p>
<p>→As part of api call, we are sending two prompts viz., system and user.</p>
<p>→Notice carefully the system prompt which tells, what exactly we want to do. READ IT ONCE.</p>
<p>→Here we are asking what kind of inputs I am going to give and what kind of output I am expecting from gpt.</p>
<p>→Then we are making an api call to the gpt-engine.</p>
<p>→The URL that gpt will be using to ‘fetch the image’ is at the bottom of the code. It is not the one that is mentioned in the ‘url’ field under ‘sample output’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image796.webp" style="width:7.52431in;height:3.19375in" alt="{1C1806E8-0D01-41B1-96A6-9AB198A7B5FF}" /></p>
<p>→The image url that points to local image.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image797.webp" style="width:7.52292in;height:4.24097in" alt="{BD48FA9B-6CE5-4A53-97AB-C5F3316EC52B}" /></p>
<p>→Run this function so that it is available in the memory.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

##  Create a function to generate local UR\> 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below function basically generates a local url of images.</p>
<p>→this function is called in next function.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image798.webp" style="width:7.02083in;height:1.77083in" alt="{1C6D5709-F6BA-4C0E-AB1A-29E39034928B}" /></p></td>
</tr>
</tbody>
</table>

##  Pull Images from SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are pulling images from SA and creating a dataset.</p>
<p>→Notice that after pulling we are calling the function ‘generate_complete_data’ that was initizlied above.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image799.webp" style="width:7.47917in;height:4.5625in" alt="{429CB9DB-3D0D-484E-9F0A-791D2657AE94}" /></p>
<p>→Result.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image800.webp" style="width:7.52431in;height:2.29306in" alt="{2952FA5F-25EB-4821-8243-D2FEDCFF42E2}" /></p></td>
</tr>
</tbody>
</table>

## Output the result 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→All this data was part of a python list and here we are printing them to console.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image801.webp" style="width:7.52292in;height:0.89792in" alt="{92F0F657-F3E9-4060-9DF1-9B89E20D1102}" /></p></td>
</tr>
</tbody>
</table>

## Extract information from Result 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Extract information the result set above and store as data.json</p>
<p><img src="subjects/tech/ai/ollama-img/media/image802.webp" style="width:6.48958in;height:2.46875in" alt="{BF1E02FB-7268-474C-8341-A24BAD8D067E}" /></p>
<p>→We get below and can be seen it is properly structured.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image803.webp" style="width:7.52292in;height:3.87431in" alt="{726A91B3-8D86-431B-AD83-01CB960069FF}" /></p></td>
</tr>
</tbody>
</table>

## Create function to generate vector embeddings

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below is the function that generates vector embeddings.</p>
<p>→This function will be used ahead.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image804.webp" style="width:6.44792in;height:2.6875in" alt="{83D441C6-6759-4D6B-9A22-D3701AC67608}" /></p></td>
</tr>
</tbody>
</table>

##  Populate dataset with Vector Embeddings. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are calling the previous function to get the vector embeddings for each of the item viz., ‘name’, ‘description’ and ‘similar words’ from the data set viz., ‘data.json’.</p>
<p>→For each item once we have the embeddings, the output is then stored back to same data.json file as a new field called ‘vector’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image805.webp" style="width:6.52083in;height:5.47917in" alt="{834400B3-3561-4280-8DFC-61BC699ED5B3}" /></p>
<p>→Output</p>
<p><img src="subjects/tech/ai/ollama-img/media/image806.webp" style="width:7.52431in;height:2.65972in" alt="{9BD6F1DC-7EC2-4BB7-972F-E9D2D6288108}" /></p>
<p>→Notice the additional field in data.json file that has the vector being added.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image807.webp" style="width:7.52847in;height:3.97708in" alt="{2F62C772-A334-43E9-87F5-1766B7E81D95}" /></p></td>
</tr>
</tbody>
</table>

##  Install Python SD for Cosmos DB

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image808.webp" style="width:5.07292in;height:1.52083in" alt="{73D13931-8F64-4E95-818F-62E8BBE5A3E1}" /> |

## Create a DB Client 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image809.webp" style="width:7.38542in;height:2.9375in" alt="{89ABC5E0-EC08-4591-B6B2-E863DAA4DC52}" /> |

##  Define vector embedding policy 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image810.webp" style="width:4.29167in;height:3.02083in" alt="{172ABB8B-3497-4F31-ADDF-2984C4C350AD}" /> |

## Define Vector Indexing Policy - diskANN

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image811.webp" style="width:4.48958in;height:2.55208in" alt="{4024547B-1CA9-4E7F-BBD5-112B443ED516}" /> |

##  Create a container and validate on Azure Portal 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image812.webp" style="width:4.98958in;height:3.33333in" alt="{6A172AB3-D1D2-4488-9742-019D32C62188}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Validate on Azure portal if it is created. Although there will be no items stored in it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image813.webp" style="width:7.525in;height:3.96389in" alt="{B4596BD1-11E2-4B37-AB73-2E46F67498EA}" /></p></td>
</tr>
</tbody>
</table>

##  Upload data to container and validate on Azure Portal 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image814.webp" style="width:5.26042in;height:3.20833in" alt="{269816D7-4F0E-4DF6-990D-934057D964C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Validate on Azure portal</p>
<p><img src="subjects/tech/ai/ollama-img/media/image815.webp" style="width:7.51806in;height:3.46597in" alt="{C167B743-3C45-45E0-BE9A-C8F04328025D}" /></p></td>
</tr>
</tbody>
</table>

## Vectorize a User Query 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image816.webp" style="width:7.52986in;height:1.24931in" alt="{D83ADD78-3494-4415-BD53-232E7F096B72}" /> |

##  Retrieve results for User Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Execute the query to fetch the results from DB</p>
<p><img src="subjects/tech/ai/ollama-img/media/image817.webp" style="width:7.52847in;height:2.08333in" alt="{63FE71EC-58B6-426D-BB3C-5F44378575A5}" /></p>
<p>→Image recommendations that have been computed using vector distance.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image818.webp" style="width:7.52222in;height:0.98819in" alt="{72F86ECE-D965-40EA-9650-32B41D23CE6E}" /></p>
<p>→We get URL and similarity score as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image819.webp" style="width:7.52431in;height:1.04028in" alt="{7D7EBF36-ECBC-466D-A339-F2FFB9F2C4B5}" /></p></td>
</tr>
</tbody>
</table>

#  Azure AI Studio (Now, Azure AI Foundry) 

|     |
|:----|
|     |

##  Azure Offered Studios

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image820.webp" style="width:7.51736in;height:2.73056in" alt="{31A0FED1-1B54-4A83-9126-B53120C979DD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→On azure we have 3 models as PaaS to build AI driven applications.</p>
<p>→These above three address different set of problems and provide desired solutions in that space.</p>
<p>→<strong>First one</strong>: is purely to test LLM models, eg. Gpt, dall-e etc. Here we can deploy and test all such models using ‘chat playground’ or ‘image playground’ etc. This gets deployed by default when we create a service.</p>
<p>→<strong>Second one</strong>: it is meant to deploy AI applications on ‘low-code’ basis. It is purely meant for ‘business users’ with almost no-code deployments. For eg., we may have seen it is embedded into various M365 applications already, including mail boxes, azure portals, teams, etc.</p>
<p>→<strong>Third one</strong>: it is a different resource altogether which provides a unified governance like experience. Meaning, all the dependent services can be managed at one place. Eg. Cosmos db, storage accounts etc. This makes it highly collaborative when working in teams. It can be easily integrated as LLMOps. Ontop of all these, we have monitoring tools part of it vis-a-vis generative ai applications.</p></td>
</tr>
</tbody>
</table>

##  Key Offerings of Azure AI Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Key features of Azure AI Studio</p>
<p><img src="subjects/tech/ai/ollama-img/media/image821.webp" style="width:7.52292in;height:3.80347in" alt="{156F174A-77A6-480C-9055-0B75B8B126BC}" /></p></td>
</tr>
</tbody>
</table>

##  Market Place

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Marketplace for Azure AI Studio</p>
<p><img src="subjects/tech/ai/ollama-img/media/image822.webp" style="width:7.52361in;height:5.67431in" alt="{13476359-B74E-46F1-8BD6-EB253A1DAA5C}" /></p></td>
</tr>
</tbody>
</table>

##  Multi-Modal Gen AI Options

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Mult-Modal Gen AI ready. Eg. Building Bots.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image823.webp" style="width:7.52431in;height:4.99444in" alt="{E3C850E0-6B87-49DE-9AA3-57F5D8A98973}" /></p></td>
</tr>
</tbody>
</table>

##  Benchmarks of various Models

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Usage Benchmarks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image824.webp" style="width:7.51875in;height:3.98264in" alt="{B0555F55-3C6B-4261-AC27-B51157C6E192}" /></p></td>
</tr>
</tbody>
</table>

##  Architecture 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Hierarchy of creation.</p>
<p>→It is a separate Azure resource.</p>
<p>→Inside the AI Studio resource we create an AI Hub.</p>
<p>→Inside the AI Hub, we create Project.</p>
<p>→The AI Hub includes all the shared connections., eg. To speech services, language services etc.</p>
<p>→The connections created at Hub, can be accessed by any project that is under it.</p>
<p>→In case a ‘connection’ need to be specific to a project, even that is also permitted, where connections are made at ‘project level’ and only that particular project has permission to use it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image825.webp" style="width:7.52292in;height:4.53125in" alt="{E0C0832E-C9CB-4E33-A773-6940F9863C30}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→As mentioned above, a Hub contains various shared resource connections.</p>
<p>→Eg. Have connections to Storage accounts, govern various endpoints, compute resources, etc.</p>
<p>→Similarly such connections can be established at AI project level and can be managed there as well.</p>
<p>→There is something called, ‘microsoft prompt flows’ that are deployed at Project level, these are NOT SHARED between projects.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image826.webp" style="width:7.52153in;height:4.10278in" alt="{FE871F9A-A165-462B-B674-2E8C1FFAAF97}" /></p></td>
</tr>
</tbody>
</table>

##  Pricing

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Studio itself does not cost.</p>
<p>→However, any of the services inside it will incur costs.</p>
<p>→Eg. Creating connections, api calls, etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image827.webp" style="width:7.51944in;height:4.10903in" alt="{FEC1B258-7D4F-43FD-BE45-95C9315C27C3}" /></p></td>
</tr>
</tbody>
</table>

##  Creating Foundry Service (For Understanding only) 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Azure AI Foundry</p>
<p><img src="subjects/tech/ai/ollama-img/media/image828.webp" style="width:7.52153in;height:3.78056in" alt="{9FA56E4C-5480-4E46-9401-2B2197ADE13E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create a Hub</p>
<p><img src="subjects/tech/ai/ollama-img/media/image829.webp" style="width:5.70833in;height:2.6875in" alt="{CD838E5D-8DC2-4135-ADD7-DDB00C92AB7E}" /></p>
<p>→Provide details for the hub.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image830.webp" style="width:6.97917in;height:5.70833in" alt="{3E7B5834-E867-42AC-95EB-8E1CBB9D4D4C}" /></p></td>
</tr>
</tbody>
</table>

### Create a Project

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have create a hub and inside it, we will create a project.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image831.webp" style="width:5.52083in;height:2.61458in" alt="{8F7C6C44-2098-4119-991D-9FF753806C7B}" /></p>
<p>→Provide details of the project and choose here the ‘hub’ that we created above.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image832.webp" style="width:7.21875in;height:5.67708in" alt="{E3671CD9-E384-468B-8325-46CFFB7C0138}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Avoid creating from here anything.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image833.webp" style="width:7.52431in;height:3.59375in" alt="{37E0E9AF-307F-42D9-85EE-514FCE64EE29}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Explore create AI Hub

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below is an AI Hub that is created and we will explore.</p>
<p>→Click the name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image834.webp" /><img src="subjects/tech/ai/ollama-img/media/image835.webp" style="width:7.52639in;height:3.03958in" alt="{D969761D-761C-48FE-9982-573EC7E90240}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It opens a dialog box where we navigate further to Launch Azure AI Foundry</p>
<p><img src="subjects/tech/ai/ollama-img/media/image836.webp" /><img src="subjects/tech/ai/ollama-img/media/image837.webp" style="width:7.52292in;height:3.23125in" alt="{B1E9702D-D5CE-46BC-B1ED-408F212A50E6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Inside the foundry portal, we will get the UI/UX and notice the project as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image838.webp" style="width:7.52014in;height:3.29583in" alt="{DA8AEEE7-6312-4DF9-A7AF-86FD182DD9E3}" /></p>
<p>→navigate to the project</p></td>
</tr>
</tbody>
</table>

### Explore the Project 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→here is the project where we import the models etc.</p>
<p>→Navigate inside the project using the link at the bottom.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image839.webp" /><img src="subjects/tech/ai/ollama-img/media/image840.webp" style="width:7.51875in;height:3.29444in" alt="{F1DCF387-676A-408D-BD16-F446BCDE2327}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→When we get inside, we get different UI as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image841.webp" style="width:7.51875in;height:3.42569in" alt="{A764F60F-DA97-405E-8228-3785803179AF}" /></p>
<p>→Here we get many features as below to interact with it.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image842.webp" style="width:4.88542in;height:6.78125in" alt="{E6B5DA0C-64C5-4227-8165-F0F269AFC3A6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can find connection strings for the projects that are created using the ‘Hub’.</p>
<p><mark>→Any project created using the ‘AI Foundry’ interface, this connection string will be missing. Similarly, we can see ‘prompt flow’ seen in this interface, but not found in the project created via AI foundry. Important to note.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image843.webp" style="width:7.52917in;height:3.43194in" alt="{BF2F8036-59A7-46EC-A7E9-285DED67B195}" /></p></td>
</tr>
</tbody>
</table>

##  Azure AI Foundry (or Az AI Studio) - INCOMPLETE

<table>
<colgroup>
<col style="width: 51%" />
<col style="width: 48%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Azure AI Studio and click Azure AI Hub.</p>
<p>→In new interface it is now called AI Foundry</p>
<p><img src="subjects/tech/ai/ollama-img/media/image844.webp" style="width:3.4625in;height:1.68681in" alt="{81B23847-08FA-4146-B75F-CFDE566BB48B}" /></p></td>
<td style="text-align: left;"><p>→New Interface</p>
<p><img src="subjects/tech/ai/ollama-img/media/image845.webp" style="width:2.75903in;height:2.43264in" alt="{F9A94E44-4EEB-48F1-ABB7-B94C2AD1FA8B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fillout</p>
<p><img src="subjects/tech/ai/ollama-img/media/image846.webp" style="width:3.71042in;height:3.08333in" alt="{43BDA9A9-5902-4109-A19B-2777E8B38EF0}" /></p>
<p>→Here, at the last option, when a base model is choosen (as shown in right), it creates a single service to cater for all the possible models like speech / language/ openai/ computer vision / etc.</p>
<p>→This option can be also an existing ‘open ai’ option.</p>
<p>→Meaning with ‘one single api key and endpoint’, we can access various services.</p>
<p>→There will be set of Azure resources that get created automatically for us. Eg. AKV / SA / AI Service / Studio itself.</p></td>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image847.webp" style="width:3.36042in;height:1.81319in" alt="{567D6840-F269-4E54-8D47-6075F5E4B25C}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image848.webp" style="width:3.36042in;height:3.33472in" alt="{6C12A208-2627-47CB-9A3C-04D9C5CA6A6E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once it is created, we can see them as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image849.webp" style="width:3.78542in;height:1.78958in" alt="{93F5C25A-7E7D-4817-ADE0-A17CC8539DBE}" /></p>
<p>→Click Azure AI Services and we can see below.</p></td>
<td style="text-align: left;"><p>→Once created we can access it using this</p>
<p><img src="subjects/tech/ai/ollama-img/media/image850.webp" style="width:3.3625in;height:1.27569in" alt="{66E021FB-3E52-432B-92BD-95F4F370D110}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice below single endpoint for OpenAI / Speech / Content Safety / Computer Vision / Language / Translator.</p>
<p>→Also we can see Keys mentioned in this interface that cuts across all the AI Services.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image851.webp" style="width:3.78958in;height:2.32639in" alt="{910E9BB3-9A15-4D07-AF2D-E9CC884278E0}" /></p></td>
<td style="text-align: left;"><p>→Notice we can manage our projects here.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image852.webp" style="width:3.58472in;height:1.46111in" alt="{7D7BA9D0-5F2A-4562-8C76-002F7FB1A5A9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image853.webp" style="width:3.79097in;height:1.06944in" alt="{A708427A-59AA-4E5F-A2EE-8A8E6DB34188}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image854.webp" style="width:3.78333in;height:1.09861in" alt="{CF555339-4EEA-40BE-9311-373BA30EA95C}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image855.webp" style="width:3.78125in;height:0.67708in" alt="{83C2CE6A-DD96-48DA-AEF4-484CDC7A7617}" /></p></td>
<td style="text-align: left;"><p>→Click the ‘new foundry’ option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image856.webp" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image857.webp" style="width:3.58264in;height:1.29306in" alt="{3513A82E-CB60-4F6E-BCBA-6A96994DFFC4}" /></p>
<p>→It asks for a new project</p>
<p><img src="subjects/tech/ai/ollama-img/media/image858.webp" style="width:3.58264in;height:1.50764in" alt="{5272E066-076E-4DF6-A9E2-08E9FEB5B0C3}" /></p>
<p>→Click ‘new project’ for new.</p>
<p>→Existing one we are going ahead.</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;"></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→From here onwards, new UI is captured.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image859.webp" style="width:6.375in;height:4.51042in" alt="{DA234752-C7F5-4D01-A294-2F0AAB061225}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→We will get something like below.</p>
<p>→Click Build on the menu.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image860.webp" /><img src="subjects/tech/ai/ollama-img/media/image861.webp" style="width:7.525in;height:3.5875in" alt="{D2FA64DC-1B86-464C-83B2-3FFA90E30D3B}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→We get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image862.webp" style="width:7.52361in;height:2.73056in" alt="{3DB40C4A-0F78-438B-99DE-EC6964EF905F}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Create an agent</p>
<p><img src="subjects/tech/ai/ollama-img/media/image863.webp" style="width:6.39583in;height:3.04167in" alt="{D2D8ED68-8E29-401D-9967-1FB813A9A2A7}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→We get playground</p>
<p><img src="subjects/tech/ai/ollama-img/media/image864.webp" style="width:7.52014in;height:3.46528in" alt="{86068463-2F2E-4D12-86C9-7D9AB37D90EA}" /></p></td>
</tr>
<tr>
<td colspan="2" style="text-align: left;"><p>→Exploring WORFLOWS</p>
<p><img src="subjects/tech/ai/ollama-img/media/image865.webp" style="width:7.52222in;height:3.17708in" alt="{D568685D-7882-4633-AC80-CD71AE67A7D1}" /></p>
<p><mark>Stopped here. Did not explore further.</mark></p>
<p><a href="https://youtu.be/b9JCHulSo2c?t=548">https://youtu.be/b9JCHulSo2c?t=548</a></p></td>
</tr>
</tbody>
</table>

#  MS Prompt Flow 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image866.webp" style="width:7.51806in;height:3.22014in" alt="{0D06F605-D538-4FF8-A539-F821EF07E59B}" /> |

## Where do we use them? 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image867.webp" style="width:7.51806in;height:4.16806in" alt="{A1A65C9D-AEE1-47CF-821C-254E0A9DF40C}" /> |

## What is Compute Session 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→When we publish a prompt flow, we are doing it so to get an ‘endpoint’ which to be used in another application.</p>
<p>→This endpoint essentially will access ‘post / get’ kind of requests.</p>
<p>→In order to run prompt flows, we need compute sessions or instance.</p>
<p>→We can setup an entire VM dedidcated for this.</p>
<p>→We can also deploy all this on a serverless mode.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image868.webp" style="width:7.53056in;height:3.78681in" alt="{22C3AF99-4688-4497-9F34-65A7C15AF34D}" /></p></td>
</tr>
</tbody>
</table>

## RAG in AI Studio (or Foundry) 

|     |
|:----|
|     |

### Architecture 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→here we will have documents viz., Brochures of various hotels.</p>
<p>→These are unstructured pdf documents.</p>
<p>→We will provision an SA and upload these documents there.</p>
<p>→We will then connect the SA with Azure AI Search.</p>
<p>→The ‘R’ part of RAG is done by Azure AI Search, where all the retreival is taken care.</p>
<p>→This Azure AI Search primarily contains 3 main components viz., Index, Indexer and SkillSet, as we have seen in the very beginning of this document.</p>
<p>→Once all these are done, next step is to build MS Prompt flow.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image869.webp" style="width:7.52431in;height:4.59722in" alt="{5A775EDA-D0E4-4550-A010-285A73329A0E}" /></p></td>
</tr>
</tbody>
</table>

### Documents to Upload

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have set of documents to upload to the Storage accounts, which basically speak about various hotels.</p>
<p>→All these pdf documents are unstructured data.</p>
<p>→Location is as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image870.webp" style="width:7.52708in;height:3in" alt="{B95AFE2E-9B8C-44F3-9DB6-58A551691190}" /></p></td>
</tr>
</tbody>
</table>

### Create SA

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create a SA as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image871.webp" style="width:7.52847in;height:3.49236in" alt="{9B25B691-4E7B-43B1-8CCE-733D09050CA7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create a container inside the SA</p>
<p><img src="subjects/tech/ai/ollama-img/media/image872.webp" style="width:7.41667in;height:3.40625in" alt="{5C31F170-BEE2-4A92-8F61-F323A6A0325B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upload the pdf documents to a folder called ‘collateral’ as shown.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image873.webp" style="width:6.97917in;height:3.76042in" alt="{F5F6CB8D-5655-4A8A-ACED-7EF078EB48FF}" /></p>
<p>→As below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image874.webp" style="width:6.27083in;height:5.02083in" alt="{51D0E738-ABD8-41E6-9F6A-29657983B84F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Enable public access to the container, so that uploaded urls can be accessed publicly.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image875.webp" style="width:7.52917in;height:5.99236in" alt="{58781DB7-A251-4FBB-AE13-27B9AE7115BB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once this is done, check the access level of the container as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image876.webp" /><img src="subjects/tech/ai/ollama-img/media/image877.webp" /><img src="subjects/tech/ai/ollama-img/media/image878.webp" style="width:7.52708in;height:3.86944in" alt="{DB9CE54F-9FE6-4E89-8D83-B46B4BC98C24}" /></p>
<p>→Ensure it is set as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image879.webp" style="width:5.875in;height:3.59375in" alt="{3E7617ED-F9A2-44BA-9FCD-FC2AE1DCF422}" /></p></td>
</tr>
</tbody>
</table>

## Create Azure AI Search 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Create Azure AI Search</p>
<p><img src="subjects/tech/ai/ollama-img/media/image880.webp" style="width:7.14583in;height:4.5in" alt="{FE390AF6-EA1B-48B3-B506-D4BA8654AA79}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Basic Pricing Tier</p>
<p><img src="subjects/tech/ai/ollama-img/media/image881.webp" style="width:7.52639in;height:2.43611in" alt="{9926756A-8FC5-429C-88BE-D1B907FB042F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Finalize</p>
<p><img src="subjects/tech/ai/ollama-img/media/image882.webp" style="width:5.07292in;height:2.61458in" alt="{A15953BF-777F-474D-B52F-184C739A8861}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see it is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image883.webp" style="width:7.51736in;height:2.48611in" alt="{702D4666-DE84-4101-ADB1-9E9D0741F2DA}" /></p></td>
</tr>
</tbody>
</table>

### Import the Data - PDF

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→now that we have the Azure AI Search service, we upload the pdf to vectorize the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image884.webp" /><img src="subjects/tech/ai/ollama-img/media/image885.webp" style="width:6.76042in;height:2.38542in" alt="{A3785C40-A5F4-42D4-86E4-A5696B1360DC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose Blob Storage</p>
<p><img src="subjects/tech/ai/ollama-img/media/image886.webp" style="width:7.52917in;height:2.51181in" alt="{8C00119E-0A05-42EF-98F4-C531055D909F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the SA and folder that we have created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image887.webp" style="width:7.52361in;height:2.91667in" alt="{745BF088-B01F-4968-B56E-84F419DCCEBD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provision Azure Open AI service details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image888.webp" style="width:7.525in;height:3.70486in" alt="{BD9F3E79-D093-4BB2-A00F-0F518E999A30}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→No need to check these boxes, continue next.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image889.webp" style="width:7.4375in;height:3.27083in" alt="{2149754C-7930-4229-AD9D-451A17DBB749}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue as is</p>
<p><img src="subjects/tech/ai/ollama-img/media/image890.webp" style="width:7.52292in;height:1.88681in" alt="{59F5ABF1-1EF5-478C-80BA-0F71D84DCE4E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide an index name and finalize.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image891.webp" style="width:7.52361in;height:3.77292in" alt="{A69ED408-6D1A-4DE6-8194-07F8DBD06D8B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→it is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image892.webp" style="width:6.21875in;height:3.25in" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Check the Index - Search a query. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once we upload it creates an index as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image893.webp" style="width:5.98958in;height:4.72917in" alt="{15B890F8-9590-4700-8CCC-E41D3326D3A8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Search some text.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image894.webp" style="width:7.52847in;height:4.10069in" alt="{EB69E7A3-0553-45F6-9958-5EE5C2CEFDE1}" /></p></td>
</tr>
</tbody>
</table>

##  Create Azure Open AI 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image895.webp" style="width:5.42708in;height:2.33333in" alt="{F3953A68-C5F2-4F46-9007-8847D7ED92C5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once created we get as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image896.webp" style="width:7.52986in;height:3.64653in" alt="{5B921C11-003C-42B9-A9B6-F479D894AA5E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Studio</p>
<p><img src="subjects/tech/ai/ollama-img/media/image897.webp" style="width:7.52292in;height:4.28125in" alt="{BE4AC29A-9307-43CC-831C-93316BA5DA7E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→We get below portal. THIS LOOKS ALMOST 2 YEARS OLD. CHECK DATE BELOW IN SCREENSHOT. TO BE VALIDATE ON THE NEW UI/UX.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image898.webp" style="width:7.51806in;height:3.81597in" alt="{F25D675F-55B1-499B-8B93-964F3B523D2D}" /></p></td>
</tr>
</tbody>
</table>

### Deploy Embedding Model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Models and choose as shown and click Deploy.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image899.webp" /><img src="subjects/tech/ai/ollama-img/media/image900.webp" style="width:7.525in;height:3.575in" alt="{A485BBBE-531B-4CBC-AA1A-AD67320FB2F6}" /></p></td>
</tr>
</tbody>
</table>

### Deploy Gpt 4 model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once embedding model is deployed, go ahead with gpt4 as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image901.webp" /><img src="subjects/tech/ai/ollama-img/media/image902.webp" style="width:7.52361in;height:3.44097in" alt="{D7606709-5141-4FB7-944C-F0006B89E3A5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name and click ‘create’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image903.webp" style="width:5.72917in;height:5.69792in" alt="{D8F0C58E-8717-424C-9AD6-EEB0CC34F42A}" /></p></td>
</tr>
</tbody>
</table>

### Validate the Deployments

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once they are deployed, check the deployments.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image904.webp" style="width:7.52292in;height:2.97708in" alt="{996F7D67-A416-4322-A754-093D9D0101F1}" /></p></td>
</tr>
</tbody>
</table>

##  Create Prompt Flow

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Az AI Studio AI Hub</p>
<p>→Click Launch</p>
<p><img src="subjects/tech/ai/ollama-img/media/image905.webp" style="width:6.16667in;height:4.77083in" alt="{154ED89E-F9F0-4CDE-8644-820D25DEB7C1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p><mark>→Navigate to the project that is created. NOT SURE WHEN THIS IS CREATED. TO BE CHECKED THOROGHLY</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image906.webp" /><img src="subjects/tech/ai/ollama-img/media/image907.webp" style="width:7.52569in;height:4.60486in" alt="{87319CC6-224C-4E54-AC49-B979E24F4946}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image908.webp" style="width:7.52847in;height:4.05486in" alt="{96278C1F-94E9-4B75-9E37-E37619B21513}" /></p></td>
</tr>
</tbody>
</table>

### Create New Connection 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Settings → New Connection</p>
<p><img src="subjects/tech/ai/ollama-img/media/image909.webp" style="width:7.53056in;height:3.86181in" alt="{FFB1FF68-31C4-4AB5-ADA8-ACB02823F19D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We will get all the assets.</p>
<p><mark>→NEED TO EXPLORE HOW TO CREATE THE CONNECTIONS. NOT CLEAR. IN NEXT STEP, ALL THOSE ARE CREATED ARE SHOWN.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image910.webp" style="width:7.52778in;height:3.57847in" alt="{CBFA4E11-232B-4510-B630-F4A912A1F15B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Below are connections that are created. 6 Connections can be seen.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image911.webp" style="width:6.09375in;height:2.16667in" alt="{1EA553AF-6DF8-4AD9-BF4D-DE162EA63FDC}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image912.webp" style="width:6.07292in;height:0.90625in" alt="{4F9CC049-AD7F-44AB-8F9E-D45ED3B7C5CE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Create Prompt Flow 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Prompt Flow →Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image913.webp" /><img src="subjects/tech/ai/ollama-img/media/image914.webp" /><img src="subjects/tech/ai/ollama-img/media/image915.webp" style="width:7.23958in;height:5.67708in" alt="{C9AF320B-7A09-465F-A297-F2DCB6FFB4A6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose a Standard Flow.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image916.webp" style="width:7.52014in;height:4.05in" alt="{0A55CADD-8F81-46E0-9638-2FE8C8F6BB53}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name and click create.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image917.webp" style="width:5.77083in;height:2.88542in" alt="{AD3D08BE-75C6-4105-A7B5-ADD470C42BB0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→A Basic template is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image918.webp" style="width:7.52153in;height:3.32778in" alt="{C47C0BB2-D606-498F-8689-B2EE666D4930}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Delete these two prompts that get created automatically</p>
<p><img src="subjects/tech/ai/ollama-img/media/image919.webp" style="width:6.1875in;height:1.22917in" alt="{A10A8195-5B31-447F-8BE8-6DFE5385806F}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image920.webp" style="width:6.15625in;height:1.41667in" alt="{9C4EAB2B-667D-4466-B239-65B91186F3E5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Start a compute session</p>
<p><img src="subjects/tech/ai/ollama-img/media/image921.webp" style="width:7.52847in;height:1.11597in" alt="{907F258E-5A6C-4782-AE06-776B24278C90}" /></p>
<p>→We can see it is running now.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image922.webp" style="width:5.72917in;height:1.11458in" alt="{E543DD8D-A83F-433A-82D3-90D279661D07}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Add below two values under ‘inputs’ section, viz., ‘user_query’ and ‘type=string’.</p>
<p>→Before adding the value, click the three dots.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image923.webp" style="width:7.52292in;height:3.09861in" alt="{FD37E9C9-82A9-4F35-B034-CED08B006699}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose +More Tools →Index Lookup</p>
<p><img src="subjects/tech/ai/ollama-img/media/image924.webp" style="width:7.52986in;height:4.34028in" alt="{ACADE778-FF5D-438B-840E-5795ABB69CC0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get something like below, where we add a value ‘index_lookup’ and click ‘add’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image925.webp" /><img src="subjects/tech/ai/ollama-img/media/image926.webp" /><img src="subjects/tech/ai/ollama-img/media/image927.webp" style="width:6.41667in;height:4.08333in" alt="{A120936D-8568-4BAE-939F-0952354D858D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We will fillout details for ‘mlindex_content’. Click the value box.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image928.webp" style="width:6.03125in;height:3.625in" alt="{4E4D84E3-387B-420E-8B27-39E422C59C3D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It opens a new box and choose AI Search</p>
<p><img src="subjects/tech/ai/ollama-img/media/image929.webp" style="width:7.52292in;height:2.75972in" alt="{558EC47F-A89F-464C-BC73-6F76D93E48E4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose the configurations as shown and save.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image930.webp" style="width:7.52847in;height:5.1in" alt="{7CA33CC4-C854-418A-973F-E1A787079A58}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure remaining fields as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image931.webp" style="width:5.80208in;height:3.38542in" alt="{3C91EC4D-A9E9-4411-8495-F9531FFEF826}" /></p></td>
</tr>
</tbody>
</table>

### Create LLM 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→In this part we will configure the ‘A’ of RAG. Click + LLM</p>
<p><img src="subjects/tech/ai/ollama-img/media/image932.webp" style="width:6.77083in;height:4.375in" alt="{F048DB10-84B2-4926-9CAF-A8D104FC7E32}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We give a name as below and click add</p>
<p><img src="subjects/tech/ai/ollama-img/media/image933.webp" style="width:6.10417in;height:0.79167in" alt="{46C84752-6F87-4600-B88F-410FF32478F3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide prompt instructions : System</p>
<p><img src="subjects/tech/ai/ollama-img/media/image934.webp" style="width:6.11458in;height:3.94792in" alt="{682673E7-3068-48DA-8856-82F9B935624B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide prompt instructions : user</p>
<p><img src="subjects/tech/ai/ollama-img/media/image935.webp" style="width:7.52847in;height:1.60208in" alt="{0D33FAED-164D-4111-8503-8A01C602B38D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Validate and parse Input</p>
<p><img src="subjects/tech/ai/ollama-img/media/image936.webp" style="width:6.58333in;height:2.45833in" alt="{7CC054EE-D4EA-4262-ADDA-FDE1BA21B05D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose next configurations as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image937.webp" style="width:6.375in;height:2.35417in" alt="{794D7F5A-A949-42C2-8968-44E024480946}" /></p></td>
</tr>
</tbody>
</table>

### Configure Output

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate above to Output section</p>
<p><img src="subjects/tech/ai/ollama-img/media/image938.webp" style="width:7.51944in;height:2.19167in" alt="{4542C1DA-69BF-41D8-AADB-E550A2EDCE72}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Change as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image939.webp" style="width:6.21875in;height:1.3125in" alt="{D7FD3299-D96A-4D90-9E5B-DA877D564617}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Setup Connection 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Augmentation section and select the connection we have created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image940.webp" style="width:6.73958in;height:1.97917in" alt="{961FAD10-7BDF-4B8C-A1DA-0590E511CE5C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose rest of the configurations as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image941.webp" style="width:6.04167in;height:1.83333in" alt="{6A2C6E97-A892-487A-BCFC-C8DCC0BFD41D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Set the Input Value and RUN 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Remember in our previous step we have configured this and did not provide the actual value.</p>
<p>→Now provide the query here, what we want. Eg. What hotels are offered by xxx’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image942.webp" style="width:6.6875in;height:3.125in" alt="{10AD2C8A-5C77-48BE-947C-B4A80368A207}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Run the query</p>
<p><img src="subjects/tech/ai/ollama-img/media/image943.webp" style="width:7.52639in;height:2.62708in" alt="{2D14DDE3-F704-4669-870D-5AB647C221F2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once successfully done, click View Trace</p>
<p><img src="subjects/tech/ai/ollama-img/media/image944.webp" style="width:6.53125in;height:3.38542in" alt="{B115B625-CF65-4758-BB69-0F69417BC0D8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image945.webp" style="width:7.52708in;height:2.70278in" alt="{CAF18192-D025-46EA-B686-63ACEF10A479}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→More detailed trace can be done using these options.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image946.webp" style="width:7.525in;height:4.27153in" alt="{F166E1A2-4EBC-4D64-B63F-BDDAB9B90E2C}" /></p></td>
</tr>
</tbody>
</table>

### xxxx

|     |
|:----|
|     |

# RAG - Document Intelligence

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we will build some kind of chat bot that has some intellgence built over the custom documents.</p>
<p>→Information could be retrieved from various documents like ‘tax forms, invoices, receipts, or any other custom documents’.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Main component of this process is called ‘Azure Document Intelligence’</p>
<p>→This forms as Predictive AI and can be deployed as Azure resource.</p>
<p>→Previous it was called as Form Recognizer.</p>
<p>→This contains pre-built models to execute various tasks, etc.</p>
<p>→Example 1 : Passport.</p>
<p>→On the right side is the information we can extract.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image947.webp" style="width:7.52847in;height:4.67292in" alt="{964B4274-F0F8-47CA-BD38-601399D44B47}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Example 3: Prebuilt Invoice</p>
<p><img src="subjects/tech/ai/ollama-img/media/image948.webp" style="width:7.52569in;height:4.29028in" alt="{80F4ECDB-733B-4D63-85F8-F01F92735453}" /></p></td>
</tr>
</tbody>
</table>

## Architecture 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As part of architecture we will see a super simple one.</p>
<p>→ We will send user query, and second one is link to the invoice.</p>
<p>→This link could be a png image etc of an invoice.</p>
<p>→The process would start with sending the invoice to Document Intelligence for necessary extraction, then same is sent to Gpt Engine for summarization.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image949.webp" style="width:7.53056in;height:4.13264in" alt="{24490682-C2BE-4682-9D24-DCDAC1727437}" /></p></td>
</tr>
</tbody>
</table>

## Create Document Intelligence. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is part of Azure AI Foundry in the latest UI/UX changes</p>
<p><img src="subjects/tech/ai/ollama-img/media/image950.webp" style="width:5.48958in;height:1.41667in" alt="{C20CE7C6-58E6-4326-8225-2687AD700EDF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image951.webp" style="width:5.25in;height:2.59375in" alt="{92BCD5DA-54EA-45B0-A5F5-7892A7CEBB7B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide configuration information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image952.webp" style="width:6.45833in;height:6.13542in" alt="{7E5DF928-D6E6-4EFC-8776-829CECE71636}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once created we get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image953.webp" style="width:7.51736in;height:1.72847in" alt="{2DAE2482-71D8-4379-B214-61903B4C1B13}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→On the overview</p>
<p><img src="subjects/tech/ai/ollama-img/media/image954.webp" style="width:7.52292in;height:3.10833in" alt="{67D8C261-79E5-4C3F-ACBB-8D9FF67844F2}" /></p></td>
</tr>
</tbody>
</table>

### Fetching Keys and Endpoints

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Inorder to fetch keys and endpoints, navigate to Resource Management and we can find the same.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image955.webp" style="width:7.52708in;height:4.91667in" alt="{57341E3A-E0E8-46DE-9302-AA769D7767A8}" /></p></td>
</tr>
</tbody>
</table>

### DI Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→To explore further, navigate to DI Studio</p>
<p><img src="subjects/tech/ai/ollama-img/media/image956.webp" style="width:7.52986in;height:3.97431in" alt="{43A4A5C9-7588-4456-BE64-5BF8F5481B20}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It takes us to new Portal</p>
<p><img src="subjects/tech/ai/ollama-img/media/image957.webp" style="width:7.52778in;height:5.36806in" alt="{E047352F-4A46-4438-A289-A48569955FFF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Sign in to the user account. On the Top right corner under blue banner.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image958.webp" style="width:7.52986in;height:5.15694in" alt="{FFD4B410-65A3-4D74-8DA0-E647E5EF3FB3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Observe various pre-built models that are available.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image959.webp" style="width:7.52778in;height:3.19653in" alt="{8DB9718B-CE9E-4BFD-A0A0-26261811C86D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click ‘Invoices’ pre-built model</p></td>
</tr>
</tbody>
</table>

### Create Invoice Pre-built model 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once we access ‘Invoices’ we get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image960.webp" style="width:7.51875in;height:3.54167in" alt="{897D26B0-58AE-44DD-951B-A7C399108D50}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here we get some samples pre-loaded for testing.</p>
<p>→Try to zoom-in and check the data.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image961.webp" style="width:7.52917in;height:4.3875in" alt="{B6219045-2430-46E7-BD76-8C84A98E05BD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Upon looking into this, the DI will extract the information and generate KV for each of the relevant information.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Alternatively, we can upload our own files or provide urls.</p></td>
</tr>
</tbody>
</table>

### Run Analysis 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image962.webp" style="width:7.52917in;height:2.98264in" alt="{59727CA2-FCB6-4EC2-9B61-2EE59F6748B6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get something as below after analysis is done.</p>
<p>→Notice the information is also boxed, which are termed as ‘bounding boxes’.</p>
<p>→On the right side, we can see the key value paris as well.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image963.webp" style="width:7.51944in;height:3.39444in" alt="{E4B2AB53-8BF0-43F9-AB5C-CF7E0C68E89D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Navigate to AI Project

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ Ensure AI Hub and AI Project is created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image964.webp" style="width:7.52083in;height:3.90972in" alt="{72F3FFA1-9BAF-4E5B-A9F4-335971E475B6}" /></p></td>
</tr>
</tbody>
</table>

### Create Connections 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→here we will create connections to various Azure Services that are previously created.</p>
<p><mark>→Eg. Open AI and AI Services.</mark></p>
<p><mark>→TO BE VALIDATE WHICH CONNECTIONS ARE NEEDED HERE.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image965.webp" style="width:7.52292in;height:3.59444in" alt="{FBB24934-D5BD-41E7-85CA-9B4F5223D476}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

### Create Prompt Flow

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Prompt Flow → Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image966.webp" style="width:7.51736in;height:3.26597in" alt="{88DF2C10-8C31-420D-9CE5-6360A9FB74F4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with Standard Flow.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image967.webp" style="width:7.52569in;height:3.39653in" alt="{C41A9AFE-F784-4C65-BD46-5E338430B0A2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name</p>
<p><img src="subjects/tech/ai/ollama-img/media/image968.webp" style="width:7.52083in;height:5.69792in" alt="{B438C252-475C-48B7-80F2-652A189608A5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get a flow created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image969.webp" style="width:7.52431in;height:3.62639in" alt="{EEA1F349-40E5-4E54-9319-58572061590E}" /></p></td>
</tr>
</tbody>
</table>

### Start Compute Session 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image970.webp" style="width:7.19097in;height:3.07083in" alt="{75F7D561-4CEC-4812-8505-47B58FA1EB73}" /></p>
<p>→Important to understand this: Here we are starting a session meaning, behind the scenes, a VM gets spinned and all the code is executed there.</p>
<p>→We will be supplying additional parameters or information to the VM using specific file ahead.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Delete all Pre-built components.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image971.webp" style="width:7.52708in;height:3.02361in" alt="{B1424914-BD3A-4E93-8277-078EC08533E8}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get a clean canvas.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image972.webp" style="width:7.52917in;height:3.50486in" alt="{3C8BCEC5-E6B9-4F2B-855A-9D04CBB976D6}" /></p></td>
</tr>
</tbody>
</table>

### Configure Input and Output Parms

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are configuring two input values where userquery and link are sent.</p>
<p>→Then we will be configuring output which is response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image973.webp" /><img src="subjects/tech/ai/ollama-img/media/image974.webp" style="width:7.52431in;height:3.46111in" alt="{95C7AECC-ACF0-4CFE-AE66-03C4200ED5EE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure the outputs as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image975.webp" /><img src="subjects/tech/ai/ollama-img/media/image976.webp" style="width:7.52986in;height:5.58472in" alt="{44C944EA-DDAD-441D-A408-B22305CB86A6}" /></p></td>
</tr>
</tbody>
</table>

### Add a Python Component

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to the three dots and add python component.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image977.webp" style="width:7.52083in;height:3.6375in" alt="{58FAEDD1-4791-4819-8E93-B100558B2822}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name and continue with ‘add’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image978.webp" style="width:7.51875in;height:3.27153in" alt="{9480D605-1D3F-4C41-97BE-3B368EB42367}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get below, where we remove the pre-built code snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image979.webp" style="width:7.52986in;height:3.45in" alt="{413C07BF-0611-490C-B059-F4BFD10E0D44}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Replace with a custom code as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image980.webp" style="width:7.52708in;height:3.51806in" alt="{89D3216F-B1E8-4D69-97E8-10A3EA3BA101}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Custom code: Italisised.</p>
<p>requirements.txt file:</p>
<p>azure-ai-documentintelligence==1.0.0b4</p>
<p>------------------------------------------------</p>
<p><em>document_intelligence:</em></p>
<p><em>from promptflow import tool</em></p>
<p><em>from azure.core.credentials import AzureKeyCredential</em></p>
<p><em>from azure.ai.documentintelligence import DocumentIntelligenceClient</em></p>
<p><em>from azure.ai.documentintelligence.models import AnalyzeResult</em></p>
<p><em>from azure.ai.documentintelligence.models import AnalyzeDocumentRequest</em></p>
<p><em>endpoint = "YOUR_ENDPOINT"</em></p>
<p><em>key = "YOUR_PRIMARY_KEY"</em></p>
<p><em># The inputs section will change based on the arguments of the tool function, after you save the code</em></p>
<p><em># Adding type to arguments and return value will help the system show the types properly</em></p>
<p><em># Please update the function name/signature per need</em></p>
<p><em>@tool</em></p>
<p><em>def document_intelligence(url: str)-&gt;str:</em></p>
<p><em>finalResponse=""</em></p>
<p><em>document_intelligence_client = DocumentIntelligenceClient(</em></p>
<p><em>endpoint=endpoint, credential=AzureKeyCredential(key)</em></p>
<p><em>)</em></p>
<p><em>poller = document_intelligence_client.begin_analyze_document(</em></p>
<p><em>"prebuilt-invoice", AnalyzeDocumentRequest(url_source=url)</em></p>
<p><em>)</em></p>
<p><em>invoices = poller.result()</em></p>
<p><em>for idx, invoice in enumerate(invoices.documents):</em></p>
<p><em>print("--------Recognizing invoice #{}--------".format(idx + 1))</em></p>
<p><em>vendor_name = invoice.fields.get("VendorName")</em></p>
<p><em>if(vendor_name):</em></p>
<p><em>finalResponse = finalResponse + "vendor name:" + str(vendor_name.get('content')) + "\n"</em></p>
<p><em>vendor_address = invoice.fields.get("VendorAddress")</em></p>
<p><em>if(vendor_address):</em></p>
<p><em>finalResponse = finalResponse + "vendor address:" + str(vendor_address.get('content')) + "\n"</em></p>
<p><em>vendor_address_recipient = invoice.fields.get("VendorAddressRecipient")</em></p>
<p><em>if(vendor_address_recipient):</em></p>
<p><em>finalResponse = finalResponse + "vendor address recipient" + str(vendor_address_recipient.get('content')) + "\n"</em></p>
<p><em>customer_name = invoice.fields.get("CustomerName")</em></p>
<p><em>if(customer_name):</em></p>
<p><em>finalResponse = finalResponse + "customer name:" + str(customer_name.get('content')) + "\n"</em></p>
<p><em>customer_id = invoice.fields.get("CustomerId")</em></p>
<p><em>if(customer_id):</em></p>
<p><em>finalResponse = finalResponse + "customer id:" + str(customer_id.get('content')) + "/n"</em></p>
<p><em>customer_address = invoice.fields.get("CustomerAddress")</em></p>
<p><em>if(customer_address):</em></p>
<p><em>finalResponse = finalResponse + "customer address" + str(customer_address.get('content')) + "\n"</em></p>
<p><em>customer_address_recipient = invoice.fields.get("CustomerAddressRecipient")</em></p>
<p><em>if(customer_address_recipient):</em></p>
<p><em>finalResponse = finalResponse + "customer address recipient" + str(customer_address_recipient.get('content')) + "\n"</em></p>
<p><em>invoice_id = invoice.fields.get("InvoiceId")</em></p>
<p><em>if(invoice_id):</em></p>
<p><em>finalResponse = finalResponse + "invoice id" + str(invoice_id.get('content')) + "\n"</em></p>
<p><em>invoice_date = invoice.fields.get("InvoiceDate")</em></p>
<p><em>if(invoice_date):</em></p>
<p><em>finalResponse = finalResponse + "invoice date" + str(invoice_date.get('content')) + "\n"</em></p>
<p><em>invoice_total = invoice.fields.get("InvoiceTotal")</em></p>
<p><em>if(invoice_total):</em></p>
<p><em>finalResponse = finalResponse + "invoice total" + str(invoice_total.get('content')) + "\n"</em></p>
<p><em>due_date = invoice.fields.get("DueDate")</em></p>
<p><em>if due_date:</em></p>
<p><em>finalResponse += "due date: " + str(due_date.get('content')) + "\n"</em></p>
<p><em>purchase_order = invoice.fields.get("PurchaseOrder")</em></p>
<p><em>if purchase_order:</em></p>
<p><em>finalResponse += "purchase order: " + str(purchase_order.get('content')) + "\n"</em></p>
<p><em>billing_address = invoice.fields.get("BillingAddress")</em></p>
<p><em>if billing_address:</em></p>
<p><em>finalResponse += "billing address: " + str(billing_address.get('content')) + "\n"</em></p>
<p><em>billing_address_recipient = invoice.fields.get("BillingAddressRecipient")</em></p>
<p><em>if billing_address_recipient:</em></p>
<p><em>finalResponse += "billing address recipient: " + str(billing_address_recipient.get('content')) + "\n"</em></p>
<p><em>shipping_address = invoice.fields.get("ShippingAddress")</em></p>
<p><em>if shipping_address:</em></p>
<p><em>finalResponse += "shipping address: " + str(shipping_address.get('content')) + "\n"</em></p>
<p><em>shipping_address_recipient = invoice.fields.get("ShippingAddressRecipient")</em></p>
<p><em>if shipping_address_recipient:</em></p>
<p><em>finalResponse += "shipping address recipient: " + str(shipping_address_recipient.get('content')) + "\n"</em></p>
<p><em>subtotal = invoice.fields.get("SubTotal")</em></p>
<p><em>if subtotal:</em></p>
<p><em>finalResponse += "subtotal: " + str(subtotal.get('content')) + "\n"</em></p>
<p><em>total_tax = invoice.fields.get("TotalTax")</em></p>
<p><em>if total_tax:</em></p>
<p><em>finalResponse += "total tax: " + str(total_tax.get('content')) + "\n"</em></p>
<p><em>previous_unpaid_balance = invoice.fields.get("PreviousUnpaidBalance")</em></p>
<p><em>if previous_unpaid_balance:</em></p>
<p><em>finalResponse += "previous unpaid balance: " + str(previous_unpaid_balance.get('content')) + "\n"</em></p>
<p><em>amount_due = invoice.fields.get("AmountDue")</em></p>
<p><em>if amount_due:</em></p>
<p><em>finalResponse += "amount due: " + str(amount_due.get('content')) + "\n"</em></p>
<p><em>service_start_date = invoice.fields.get("ServiceStartDate")</em></p>
<p><em>if service_start_date:</em></p>
<p><em>finalResponse += "service start date: " + str(service_start_date.get('content')) + "\n"</em></p>
<p><em>service_end_date = invoice.fields.get("ServiceEndDate")</em></p>
<p><em>if service_end_date:</em></p>
<p><em>finalResponse += "service end date: " + str(service_end_date.get('content')) + "\n"</em></p>
<p><em>service_address = invoice.fields.get("ServiceAddress")</em></p>
<p><em>if service_address:</em></p>
<p><em>finalResponse += "service address: " + str(service_address.get('content')) + "\n"</em></p>
<p><em>service_address_recipient = invoice.fields.get("ServiceAddressRecipient")</em></p>
<p><em>if service_address_recipient:</em></p>
<p><em>finalResponse += "service address recipient: " + str(service_address_recipient.get('content')) + "\n"</em></p>
<p><em>remittance_address = invoice.fields.get("RemittanceAddress")</em></p>
<p><em>if remittance_address:</em></p>
<p><em>finalResponse += "remittance address: " + str(remittance_address.get('content')) + "\n"</em></p>
<p><em>remittance_address_recipient = invoice.fields.get("RemittanceAddressRecipient")</em></p>
<p><em>if remittance_address_recipient:</em></p>
<p><em>finalResponse += "remittance address recipient: " + str(remittance_address_recipient.get('content')) + "\n"</em></p>
<p><em>return finalResponse</em></p>
<p>----------------------------------------------------------------</p>
<p>Summarisation:</p>
<p>#system:</p>
<p>You are a helpful AI assistant made to behave as a document chatbot that could</p>
<p>chat upon the content contained in documents like invoices, forms etc.</p>
<p>Prior to calling you, the analyse API of azure document intelligence was called</p>
<p>to extract information from a document and you will be provided with those</p>
<p>sets of information such as subtotal value, merchant address etc.</p>
<p>Your work is to answer the user query based upon this information and</p>
<p>if you don't have sufficient information to answer the user query, please</p>
<p>respond by saying: "I don't have suitable information to answer your query".</p>
<p>#user:</p>
<p>user query: {{question}}</p>
<p>document extracted information: {{doc__information}}</p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Brief explanation about Snippet

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below code we are importing some libraries, one of them is ‘DocumentIntelligence.</p>
<p><em>document_intelligence:</em></p>
<p><em>from promptflow import tool</em></p>
<p><em>from azure.core.credentials import AzureKeyCredential</em></p>
<p><em>from azure.ai.documentintelligence import DocumentIntelligenceClient</em></p>
<p><em>from azure.ai.documentintelligence.models import AnalyzeResult</em></p>
<p><em>from azure.ai.documentintelligence.models import AnalyzeDocumentRequest</em></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Below is another snippet, where we provide endpoints / key and define the function itself, which takes the url as input.</p>
<p>→This snippet also creates a ‘client’ for document intelligence.</p>
<p><em>endpoint = "YOUR_ENDPOINT"</em></p>
<p><em>key = "YOUR_PRIMARY_KEY"</em></p>
<p><em># The inputs section will change based on the arguments of the tool function, after you save the code</em></p>
<p><em># Adding type to arguments and return value will help the system show the types properly</em></p>
<p><em># Please update the function name/signature per need</em></p>
<p><em>@tool</em></p>
<p><em>def document_intelligence(url: str)-&gt;str:</em></p>
<p><em>finalResponse=""</em></p>
<p><em>document_intelligence_client = DocumentIntelligenceClient(</em></p>
<p><em>endpoint=endpoint, credential=AzureKeyCredential(key)</em></p>
<p><em>)</em></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next step is to analyze the document uploaded (via url) using a pre-built analyzer which is ‘prebuilt-invoice’.</p>
<p>→Subsequently, we poll the analysis being done on azure to get results when it is completed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image981.webp" style="width:7.52153in;height:2.70069in" alt="{B3D56069-048C-4DA4-9DAC-67D409DDE152}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Subsequently, when the response is received, we will be iterating it over to fetch the values.</p>
<p>→All of such is being stored in ‘final response’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image982.webp" style="width:7.525in;height:2.9625in" alt="{0AD7AFBE-FB0C-4DE6-8F72-87E1A2AA367A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

#### Update the endpoint and Key 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Fetch the Key and Endpoints as shown in previous section and place in the snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image983.webp" style="width:7.52292in;height:3.44167in" alt="{5902A97D-7427-479C-9E72-C3C3A9BA7F2B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

####  Update Requirements.txt 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Supply requirements using the ‘requirements.txt’ file, where we mention the SDK related information.</p>
<p>→This information will be used by the session to download the packages etc as needed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image984.webp" style="width:7.51736in;height:3.89167in" alt="{8B6E8F8F-1126-452C-B9DF-457E2FA055F4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Add the requirements package and Save &amp; Install</p>
<p><img src="subjects/tech/ai/ollama-img/media/image985.webp" style="width:7.52778in;height:3.31667in" alt="{CFD643F5-F110-4A39-92B5-3982DD6B8790}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Save &amp; Install , which will reconfigure the container or VM for us with these packages ready.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image986.webp" style="width:6.64583in;height:2.05208in" alt="{13FD9061-A441-4243-879C-86383FD21232}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice when ‘save it’ we get restarting of session.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image987.webp" style="width:7.52639in;height:3.27986in" alt="{857143B9-D320-4C89-B0CD-F9B0551478C1}" /></p></td>
</tr>
</tbody>
</table>

#### Validate Package installation

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We can validate the packages being installed or not using the option ‘compute session running’.</p>
<p>→Navigate to ‘View Installed packages.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image988.webp" /><img src="subjects/tech/ai/ollama-img/media/image989.webp" style="width:7.52083in;height:3.58819in" alt="{5A6BCFA5-0C86-4E0C-98C8-47C56E2D2FB4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see the DI package is installed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image990.webp" style="width:7.52847in;height:4.86389in" alt="{2422B743-C4C6-4047-9C68-EC3415414C57}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Validate the Python component

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once we place the snippet of code in ‘document intelligence’ component, validate the same.</p>
<p>→Scroll down to bottom of this component.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image991.webp" style="width:7.52778in;height:1.34375in" alt="{1EE69759-A432-4E05-BFA6-D7C4BF9EDCF3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see below, continue with ‘validate’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image992.webp" style="width:7.525in;height:1.54236in" alt="{1A1D3484-0A59-426F-9EAC-8C214FA01531}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once validated, populate the Inputs.</p>
<p>→Notice that the input value is coming from the link.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image993.webp" style="width:7.52778in;height:1.25833in" alt="{88C55A60-E169-461F-9422-DFE0C8307113}" /></p></td>
</tr>
</tbody>
</table>

### Add LLM Component

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Next is to add another component which is LLM.</p>
<p>→Here we will supply the information regarding the ‘extracted key value pairs’, user query etc etc.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image994.webp" style="width:7.51875in;height:3.45556in" alt="{39ADA3F6-3E37-426B-9541-F121EA2F0AA7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image995.webp" style="width:7.52292in;height:1.89236in" alt="{318AE9C2-EBF9-4F24-B62A-671D888E5CD5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

#### Configure Connection details of LLM

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→In the summarization component, configure the connection details.</p>
<p>→Note that the connnections were already created and here we are using them.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image996.webp" style="width:7.52986in;height:4.24167in" alt="{AE96A92F-54D6-44F7-8D27-95C76C7C1107}" /></p></td>
</tr>
</tbody>
</table>

#### Replace with Custom Prompt

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have configuration, replace the existing prompt with our own one as below.</p>
<p>→This is available as copy paste in previous sections.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image997.webp" style="width:7.52708in;height:2.98403in" alt="{3E554AEE-4FAC-490F-95E1-2EF3CC329579}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Key area of the prompt is as below, where we are supplying the ‘user_query’ and ‘extracted information’</p>
<p>→Continue with ‘validate and parse input’ option</p>
<p><img src="subjects/tech/ai/ollama-img/media/image998.webp" style="width:7.52431in;height:2.75764in" alt="{587D06AB-1194-4AC3-9AF1-A33EAE2BC966}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

#### Provide Inputs for the LLM Component

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once the validation is passed, provide the inputs. Notice we are using the values populated dynamically.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image999.webp" style="width:7.525in;height:2.14444in" alt="{F07DB926-9D10-4A8D-8308-34B28C5DB9BA}" /></p></td>
</tr>
</tbody>
</table>

### Check the Graph

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once all the configuration is done, let us check the graph for validation</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1000.webp" style="width:7.51806in;height:3.40208in" alt="{E6281802-FBA7-413F-A53F-40A320A547E7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here, it shows, we have inputs, where user query and url are passed to DI.</p>
<p>→Then response from DI is passed to summarization step.</p>
<p>→finally output is generated.</p></td>
</tr>
</tbody>
</table>

###  Fire User Query with Inputs - Run the query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We need to have the URL of the invoice.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1001.webp" style="width:7.52361in;height:5.63056in" alt="{D73E2D8C-F78E-4B10-BA81-A48743CF9381}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Populate query and URL information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1002.webp" style="width:7.51875in;height:3.55208in" alt="{BFE5DECF-CB36-4FB9-A3F6-F5441278C8B5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Execute the run.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1003.webp" style="width:7.51806in;height:1.81528in" alt="{A3FAD739-CFB6-4C1D-AA95-CA51899C7BF4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the execution is completed, click the ‘trace’.</p></td>
</tr>
</tbody>
</table>

###  Validate the Ouput

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Notice the input and output information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1004.webp" style="width:7.52847in;height:3.06736in" alt="{7CE00895-4F31-4990-AB6D-8ABBC8916A72}" /></p></td>
</tr>
</tbody>
</table>

# RAG with Co-Pilot

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→What can co-pilot studio do for us.</p>
<p>→We can build AI agents and task automations.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1005.webp" style="width:7.52917in;height:4.175in" alt="{98D174A6-7BA2-4632-9F6D-D0DD952B436D}" /></p></td>
</tr>
</tbody>
</table>

## Features - RAG with CoPilot Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have quite a lot of features that come handy with Co Pilot.</p>
<p>→These are outlined in below sections.</p></td>
</tr>
</tbody>
</table>

### Topics

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→A topic gets triggered when any of the configured phrases are sought for.</p>
<p>→Eg. Stores in Dallas is close to the topic of finding something. So, upon such queries a topic gets trigerred.</p>
<p>→So, here we are telling co-pilot that whenever we encounter any of such queries, go through a specific flow or topic.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1006.webp" style="width:7.52083in;height:4.65486in" alt="{0FDA9B5F-CC46-4C9C-99C8-1C654E803E27}" /></p></td>
</tr>
</tbody>
</table>

### Generative AI 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is another feature of Co-Pilot Studio.</p>
<p>→Assuming we have an FAQ document and we can configure the co-pilot studio to give the responses instantaneously from the FAQ documentation.</p>
<p>→Essentially, such documentation is used by stuiod to generate answers on the fly.</p>
<p>→So how do we provide such documentation? It is done via the UI provided as shown in the left part.</p>
<p>→Apart from it being ready for documentations, we can load the knowledge from various other sources like urls, cosmos db, One drive, fabric etc.</p>
<p>→By using this studio, we can completely avoid the entire RAG flows where AI Search or LLM integration is done.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1007.webp" style="width:7.51736in;height:4.15903in" alt="{C774F930-A72F-4320-996F-B339A07BB51F}" /></p></td>
</tr>
</tbody>
</table>

### Power Automate Flows

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is another feature, where <strong>simplest</strong> tasks like sending emails to specific groups or persons can be automated.</p>
<p>→This can also do as <strong>complex</strong> task as uploading an image of invoice then extracting then colalting infomration further sending such information to departments.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1008.webp" style="width:7.52847in;height:5.77431in" alt="{85E18B1F-BEE3-47C4-A2E5-A4A97701E4C5}" /></p></td>
</tr>
</tbody>
</table>

### Custom Automation Flows

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us see below another automation flow where co-pilot acts as AI Travel Agent.</p>
<p>→For instance, we wanted to have booking confirmation of a travel.</p>
<p>→We can leverage the co-pilot studio to build flows around it to achieve the same.</p>
<p>→For instance, the agent can automate things like visa requirements, country risk status etc etc and then information is then shipped to the client.</p>
<p>→Here, we are kind of replacing a human which was doing previously this task.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1009.webp" style="width:7.52986in;height:4.44444in" alt="{2E2308B7-07C7-4332-AB08-792318E9011B}" /></p></td>
</tr>
</tbody>
</table>

### AI Builder

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This is another interesting topic where we can bring predicting AI and Machine Learning models as ‘power’ to the custom co-pilot.</p>
<p>→For instance we have below workflow, where a user is sending details of a document (eg. Jpg / png image of invoice), and want to send all the details inside it (eg. Customer add, billing add, name etc), to finance department.</p>
<p>→In order to achieve all these automated, we leverage the AI Builder.</p>
<p>→How the flow works as below is, a person will send document to copilot, which triggers a Document Intelligence model, which comes a part of AI Builder.</p>
<p>→Now, this DI Model can have two models viz., a custom one or pre-built model.</p>
<p>→The pre-built as name suggests offered by Microsoft.</p>
<p>→Once this model is selected, which processes the information into a table and then runs a power automate flow (as mentioned in previous section).</p>
<p>→The power-automate-flow could be triggering an email to finance department.</p>
<p>→All this could be achieved using the AI Builder.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1010.webp" style="width:7.52153in;height:4.20833in" alt="{E02E2B4D-45B3-4606-9CE0-1E47A57F5621}" /></p></td>
</tr>
</tbody>
</table>

### Cheat Sheet by AI Builder

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1011.webp" style="width:7.52431in;height:4.57292in" alt="{635E7DD2-A260-4BE4-9DBE-FBA146181376}" /> |

## CoPilot Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Access the Studio</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1012.webp" style="width:4.35417in;height:1.66667in" alt="{A7B89600-21CC-4F32-A79D-D3599AB07828}" /></p>
<p>→We get</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1013.webp" style="width:7.525in;height:3.62083in" alt="{5B4B2391-E7EB-4DED-BBEF-1D6BDC7C7F5C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→continue with ‘Power Platform’ option, where we get the Copilot Studio.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1014.webp" style="width:7.52708in;height:5.87083in" alt="{D2A29633-3698-4F58-8445-54B55026DE8E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get the Copilot Studio platform.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1015.webp" style="width:7.52153in;height:3.98264in" alt="{FB44E65C-B26E-4EC7-B06E-F1E125415F1D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice on the top we can see the ‘environment’, which means where our solution will be hosted. Or the region in which solution will be hosted.</p>
<p>→We can also create our own environments as needed.</p>
<p>→However, we will be seeing in ‘default’ environment.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1016.webp" style="width:6.04167in;height:6.38542in" alt="{286CAEC9-C44F-4C5B-94E9-7B9546191EED}" /></p></td>
</tr>
</tbody>
</table>

### Home Page Explore

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→On the home page, we can see pre-built agents.</p>
<p>→These are task specific already built by MS.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1017.webp" style="width:7.52014in;height:3.32569in" alt="{082C256F-E938-4A94-B22B-E5DE8FFD37F0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→All the created agents are listed here.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1018.webp" style="width:7.52361in;height:3.13958in" alt="{01B494FA-755A-4671-AB30-11A7C52F1768}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→All the libraries associated with the agents are listed here.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1019.webp" style="width:7.52083in;height:3.55903in" alt="{4F3C2F22-0E73-4946-A77E-A23D511CA130}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→More button gives option for various other integrations.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1020.webp" style="width:4.3125in;height:6.25in" alt="{E7066656-87A8-4B1D-AFD6-5FAE6DEDAF84}" /></p></td>
</tr>
</tbody>
</table>

### Create Agent Page

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We can create a new agent using the interface.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1021.webp" style="width:7.52639in;height:4.72917in" alt="{02736554-4024-4807-ACFA-A5EF03057FE4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## Generative AI - Orchestration 

|     |
|:----|
|     |

## Concept of Agentic Planning

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Before getting into Generative AI with Co-Pilot Stuidio, we need to understand a bit of Agentic Planning.</p>
<p>→As mentioned in the left box, it is all about ‘creating detailed plan’.</p>
<p>→Basically we are planning by putting various components together to achieve a task.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1022.webp" style="width:7.52083in;height:4.33681in" alt="{64275923-7864-47B3-9DB8-2ACC4BCEFF33}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→to achieve this automated activity like when to call what is achieved by copilot studio in low-code manner.</p>
<p>→Here notice that the orchestrator gets triggered by a user query. Notice the button ‘triggers’, which is nothing but the user query.</p>
<p>→Next step for orchestrator would be to extract information from user query and looks for proper agent.</p>
<p>→Then in that agent it looks for a proper activity like ‘action or topic or instruction, etc’.</p>
<p>→When all these steps are done, we get an output from the planner or orchestrator.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1023.webp" style="width:7.52569in;height:4.26597in" alt="{569C7234-109B-41FC-B1C6-13B598737185}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Example.</p>
<p>→Below is an agent that has ‘knowledge’ which is sourced from a ‘sharepoint’ site.</p>
<p>→It also has some ‘actions’ that is connected to a weather forecast endpoint via a connector.</p>
<p>→On the right side we can input a user query.</p>
<p>→So based on the query, there is the planner (or orchestrator) that takes a call whether to check the knowledge base or call the weather endpoint.</p>
<p>→This is a simple example though.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1024.webp" style="width:7.51944in;height:3.50903in" alt="{1CA63A8F-D9DD-4D18-B436-BD1276699133}" /></p></td>
</tr>
</tbody>
</table>

## Azure AI Foundry vs CoPilot Studio

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image1025.webp" style="width:7.52847in;height:4.21806in" alt="{752C3C48-61AC-44D9-B810-18871D64F8F1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here it is important to note that which one sits where.</p>
<p>→Foundry is PaaS</p>
<p>→Copilot is SaaS</p></td>
</tr>
</tbody>
</table>

## Sign up - Trial 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→click Sign-up-page link in the center.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1026.webp" style="width:7.52917in;height:3.94792in" alt="{5378396F-C24F-4273-A53B-B4E34C82A233}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1027.webp" style="width:7.52639in;height:3.41667in" alt="{6B6CB3FC-2FA4-4067-B2C4-B376F146F863}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Check under licenses section, if permitted</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1028.webp" style="width:7.52014in;height:4.02014in" alt="{0C58F7AD-8009-415D-A81E-E66ACC4F0734}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see here.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1029.webp" style="width:7.52222in;height:2.04236in" alt="{4B74B770-A099-452D-A166-B8DC27165CE3}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Create standalone Agent - Web URL

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below let us create a standalone agent that uses web url for knowledge gaining / grounding.</p>
<p>→Then any questions posted to the agent, it is going to leverage the weburl.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1030.webp" style="width:7.52708in;height:4.56389in" alt="{6BE29FB7-C483-4079-B4DB-CD492086B1AE}" /></p></td>
</tr>
</tbody>
</table>

### Configure new Agent 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Notice we are in default environment.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1031.webp" style="width:7.52083in;height:4.00764in" alt="{D3364874-634B-4381-AAE9-546A41290835}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Create Agent by navigating to ‘Agents’ option followed by ‘New Agent’. We will use this for our usecase where copilot studio can be integrated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1032.webp" style="width:5.75in;height:3.4375in" alt="{6F5BA04E-9E97-433F-8951-C76B03078885}" /></p>
<p>→Below option is somehow <mark>incorrect</mark> and does not work as intended for our usecase.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1033.webp" style="width:6.11458in;height:3.94792in" alt="{4C2B6240-8DBC-41C1-BD81-9D486A3E7672}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Skip to Configure. In this page, we can pre-instruct the agent with certain instructions where it takes those parms for necessary configurations.</p>
<p>→We will skp this for now.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1034.webp" style="width:7.52153in;height:3.45694in" alt="{8916C93B-3A57-417B-95CB-67758FE333AB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a name to the agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1035.webp" style="width:7.52153in;height:2.84236in" alt="{104BCE8D-C73F-4DEF-A734-8C94A5E78E00}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide some description to the agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1036.webp" style="width:7.525in;height:2.5875in" alt="{A7501FC1-1944-4F32-95EE-6C63881BA28F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide specific instructions for the agent. The way we typically ask the chatgpt models to act as ‘karen’ or something like that. It is same purpose.</p>
<p>→Here we are giving a simple instruction to act as helpful AI assitant.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1037.webp" style="width:7.52083in;height:3.24931in" alt="{C2DB2BA0-B604-437D-BD60-D6DEB74C3A74}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Add Knowledge to the agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1038.webp" style="width:7.525in;height:2.65764in" alt="{00653DFB-CEEA-4820-A35F-A7549536E74E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Notice the options below what knowledge can be added. However, for now we use the web option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1039.webp" style="width:7.52986in;height:4.41667in" alt="{CE4ECA1A-EB15-454D-B077-FFABAF3ECBEC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Provide a public URL where knowledge is situated or documented.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1040.webp" style="width:7.52083in;height:2.06597in" alt="{62EA47C9-24B7-4605-A471-B8D05618229C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can add multiple urls, but for simplicity we will stick with just one.</p>
<p>→Continue with ‘add’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1041.webp" style="width:7.52917in;height:4.90764in" alt="{BE574FFC-E36C-4C2A-9431-5AD99816283F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once the url is added continue with ‘create’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1042.webp" style="width:7.51875in;height:3.63889in" alt="{9FF02DB4-AE66-4F41-95C4-BC3BDABCF37B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It starts setting up an agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1043.webp" style="width:7.375in;height:3.88542in" alt="{4973E6A9-2B20-44BE-95C1-86198BD4897B}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image1044.webp" style="width:7.525in;height:3.48472in" alt="{47A99378-5234-4A7E-B5B1-44AE1B0F82BE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to knowledge and check the information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1045.webp" style="width:7.52361in;height:2.99722in" alt="{696A0831-78D4-4A2D-96F0-106CD1B59262}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can add some additional actions / triggers when agent is triggered, from overview option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1046.webp" style="width:7.52986in;height:2.02431in" alt="{8430E432-9001-434A-A495-E95C6C9C25EB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Turn on the ‘orchestration option’.</p>
<p>→When we turn on, the agent will take the user query, determine the intent, and what user wants to do as part of the query. Then based on the generative AI knowledge, it dynamically assign an answer to the user query. Meaning, based on all the input vectors parameters, it can go to appropriate knowledge endpoint and fetch the information for user.</p>
<p>→Previously all these were defined in ‘topics’ and now all</p>
<p>→Meaning we do not need to define anything to trigger. All these are now taken over by Gen AI.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1047.webp" style="width:7.325in;height:4.25417in" alt="{489D74B2-86D1-498E-9DD3-CE042A6F048C}" /></p>
<p>→Previously ‘topics’ were assigned so as to have the intelligence, now taken over by the ‘orchestration’ option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1048.webp" style="width:7.52014in;height:4.42083in" alt="{FBABA002-30F0-4F1A-96E2-218ABE53CB82}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Further, any power-automate flows need to be defined, are done in ‘actions section.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1049.webp" style="width:7.52222in;height:3.67847in" alt="{5E944720-1093-4E86-8448-01A88A4FB536}" /></p>
<p>→We will not do it here for now.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then Activity section gives a map of interactions.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1050.webp" style="width:7.52986in;height:3.67917in" alt="{06646B5F-3981-47F0-821F-942FEC857B10}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Analytics tab shows the interaction happenning with user agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1051.webp" style="width:7.53056in;height:3.39792in" alt="{72DD5761-A2EF-4BD1-9FCD-208AE7F373D0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→The channels section helps us deploy it in different channels as needed.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1052.webp" style="width:7.52292in;height:4.75139in" alt="{E690C31C-D17C-446B-A19B-DC182C6F21C1}" /></p></td>
</tr>
</tbody>
</table>

### Test

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Click Test option on the far right if not opened already, where we can fire in some questions.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1053.webp" style="width:7.525in;height:3.62222in" alt="{2D514538-025C-4784-9B94-A930F3B57211}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Query with a text.</p>
<p>→Below is a simple query that triggered the agent and it went to knowledge sources and fetched the information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1054.webp" style="width:7.52431in;height:3.41875in" alt="{E5273FEE-E0D3-4A90-9288-7C4BB6F9A2BF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Publish the Agent

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once basic testing is done, we publish to any of the channels. Eg. Teams</p>
<p>→Clickt he publish button.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1055.webp" style="width:7.51736in;height:3.98472in" alt="{1BF96793-7F72-4828-ADF7-97408742FB0F}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with Publish. Note the message, which says, whoever is connected to it, can use the agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1056.webp" style="width:6.92708in;height:3.66667in" alt="{B82A22F3-4414-477F-AAB6-EB1AAF8436CA}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It is publishing</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1057.webp" style="width:6.375in;height:2.9375in" alt="{497DC460-244A-4D16-B748-960DD758C195}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Done</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1058.webp" style="width:7.52292in;height:2.55972in" alt="{8DA4B3B9-3E25-4ACC-8170-AB145BD81A1A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to channels and click Teams</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1059.webp" style="width:7.525in;height:4.80208in" alt="{C543552B-BF5D-4E9D-89B9-34A96B3A9D8C}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Turn on Teams</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1060.webp" style="width:7.52639in;height:5.59583in" alt="{05191313-6AFC-488D-A0A2-CAEBEFBB24D6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Availability Options.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1061.webp" style="width:7.52639in;height:6.40208in" alt="{C94A6CF1-942E-4702-9E48-08986BFBB401}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get multiple options. We choose Copy Link option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1062.webp" style="width:7.33333in;height:6.04167in" alt="{7FCDDB2B-CA2B-4034-8CE8-C8D2452A61F2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Opens up in new tab and opens teams as desired.</p>
<p>→Continue by clicking ‘Add’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1063.webp" style="width:7.52708in;height:4.27292in" alt="{E9F89CBE-AB9E-4D83-9E03-CDFA3C224F25}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Success</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1064.webp" style="width:6.42708in;height:4.3125in" alt="{402EC687-F3C1-4E80-B019-76AA381D4BFF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It gets added.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1065.webp" style="width:7.52014in;height:3.94653in" alt="{D07FA856-4346-4E91-BBCB-41A906A9D115}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fire some questions.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1066.webp" style="width:7.51875in;height:3.69375in" alt="{2D8D941C-AB9A-4389-873D-64CBBCDD5FAE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Create Standalone Agent - Sharepoint

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Previously we created agent to interact with Web URLs.</p>
<p>→Now we use the sharepoint to interact.</p>
<p>→However, here we will be embedding into M365 Experience as shown in the diagram.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1067.webp" style="width:7.52986in;height:4.30903in" alt="{379CDB75-DB5C-477D-BA40-7DF530D63335}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Configure new Agent

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Navigate to Agents section and then click the M365</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1068.webp" style="width:7.52986in;height:6.51944in" alt="{A90EAEDB-5B7A-48DF-82BE-9300F08677B7}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Click Add</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1069.webp" style="width:7.52361in;height:3.825in" alt="{F162ED78-CB83-441E-A87C-78622B9C7806}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Skip</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1070.webp" style="width:7.52292in;height:1.86181in" alt="{7673F02A-AC7A-43AF-9E01-5BF53935C6FC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Configure name, description and instruction.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1071.webp" style="width:7.525in;height:3.20278in" alt="{5B153BA0-4EEB-4155-A74F-3EFC2001B064}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Add Knowledge Base</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1072.webp" style="width:7.52847in;height:3.98681in" alt="{2978E33F-CB37-4B3A-A572-8C7CA43E0358}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose SP</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1073.webp" style="width:7.52847in;height:2.93125in" alt="{4CEB0B32-5AF1-4B4D-9571-15CF305EA047}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Browse</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1074.webp" style="width:7.52986in;height:1.73958in" alt="{5337A008-B5FE-47B1-873C-D11FEAE2FB77}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select the SP and desired files.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1075.webp" style="width:7.52153in;height:4.37431in" alt="{889EA32C-F5B5-40F6-9705-CBA9E773CF3D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Cointinue with ‘Add’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1076.webp" style="width:7.52431in;height:2.37639in" alt="{0C6CEF18-BBE9-4C9E-BD75-8EA7461848F1}" /></p>
<p>→Post adding</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1077.webp" style="width:7.52431in;height:2.56319in" alt="{0D0E0AD3-E8CC-476D-AFA7-9FFDD9300A32}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Continue with Create</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1078.webp" style="width:7.51806in;height:2.26944in" alt="{0253B9FC-B676-43CD-B049-0ECB9E3DBEDE}" /></p>
<p><img src="subjects/tech/ai/ollama-img/media/image1079.webp" style="width:2.23958in;height:1.94792in" alt="{B88CAC92-B253-41B3-B4ED-A87DD9EB1955}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get agent created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1080.webp" style="width:7.52917in;height:3.57708in" alt="{6CB0957B-93D2-40FC-9ADD-D79AA193B533}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Test

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Click the ‘Test’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1081.webp" style="width:7.51944in;height:3.64167in" alt="{9DB22E30-2CAA-4339-AAC8-47FE89CDB3C6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Put a query</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1082.webp" style="width:5.07292in;height:5.69792in" alt="{F19F0942-102C-4730-AF54-1E59DB908E4F}" /></p>
<p>→We get something</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1083.webp" style="width:6.78125in;height:5.8125in" alt="{8442134F-E30B-43EB-89C0-330D0DB8E158}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Publish

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image1084.webp" style="width:7.52569in;height:3.34375in" alt="{F7BAE4D3-1409-4B82-BABA-55CBB4621BDD}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→It will be published to below two channels. Click Publish</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1085.webp" style="width:7.01042in;height:6.22917in" alt="{91486561-1B80-401F-B9F2-77C8E25CB9C4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Gives Availability Options.</p>
<p>→Copy the link</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1086.webp" style="width:7.26042in;height:5.67708in" alt="{414497F1-FD5D-4108-AE36-28DBBF11BDDC}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Open in browser →Add</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1087.webp" style="width:7.52639in;height:3.91736in" alt="{18C7DC2A-DC5F-4DB2-A5D3-7FA0F68F6C38}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Interact with Agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1088.webp" style="width:7.52153in;height:4.00556in" alt="{E4B866AC-01DE-4DEB-8A40-B417CB9A5D16}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Open Teams and notice there is option for chat that is added for sharepoint.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1089.webp" style="width:7.52014in;height:4.19167in" alt="{D3267978-D73E-46BA-9705-4482C9E34418}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→First we try to chat with agent. Click agent icon on the chat window and it gives @ symbol.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1090.webp" style="width:7.52153in;height:4.91667in" alt="{A6A70811-6AAA-4B8B-95E3-2F07CE675554}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select the agent.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1091.webp" style="width:4.53125in;height:3.77083in" alt="{610A0163-7644-499B-8C72-47D857479FA1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fire a query.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1092.webp" style="width:7.52847in;height:2.44444in" alt="{31791730-A66A-4833-BAFE-5682128A8760}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get details.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1093.webp" style="width:7.52569in;height:4.03958in" alt="{4A51ECCA-6665-4F8E-9325-1AC3299AD052}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1094.webp" style="width:7.52917in;height:3.49375in" alt="{6B62B1D7-F6DA-45CC-96E5-2EA4B0CEB601}" /></p></td>
</tr>
</tbody>
</table>

## Publish Agent to Other Channels

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→We have a way to integrate ‘custom copilot’ into Microsoft Teams as an agent.</p>
<p>→Navigate to channels. Notice we have an option to publish to MS Teams.</p>
<p><mark>→Given we have chosen Team Authentication (NOT SURE WHERE TO BE CHECKED FROM BEGINNING), IT IS ASKING TO CHANGE. AUTHENTICATION SETTINGS</mark></p>
<p><mark>→Notice the channels are not available and we need to change the settings.</mark></p>
<p>→Click ‘Go to authentication settings’</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1095.webp" style="width:7.51944in;height:3.39444in" alt="{94FFD60E-A368-4AB1-9A24-994D0B9C6734}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Authentication</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1096.webp" style="width:7.52569in;height:3.51944in" alt="{B0ED015E-0067-47EA-9B19-2C1CBDCCE2BF}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose ‘No Authentication’, so that it is available publicly for any channel.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1097.webp" style="width:7.52708in;height:2.72708in" alt="{3DD81C1E-50B2-4223-9269-DC2F037CCCD6}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Saved</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1098.webp" style="width:7.52847in;height:2.20347in" alt="{050FED0C-FE00-4E73-A7D5-D80BC803E018}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate back to channels area and notice all other channels are now available</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1099.webp" style="width:7.52431in;height:3.5125in" alt="{3C0B44D7-BD7F-4FB5-A2EF-5D65C3EA5092}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Publish to Custom Website

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Click Custom Website and notice we get html snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1100.webp" style="width:7.51806in;height:2.56597in" alt="{0B947FF6-BBCB-48F6-AE9C-75E708282658}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

# Graph RAG

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Context and background</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1101.webp" style="width:7.52083in;height:3.94236in" alt="{B5BF8A97-1E86-4F1D-BA57-B5FED69AAFD0}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next advancement</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1102.webp" style="width:7.52639in;height:4.73472in" alt="{AA7F8242-AC20-449A-8910-4277245CB82E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→What is knowledge graph. Here we have something called Nodes and Relationships.</p>
<p>→Nodes are defined as entities. Eg. Node1, 2 and 3…</p>
<p>→Then these nodes have underlying relationships between them.</p>
<p>→Eg. Below diagram has a parent Node that is ‘Moscone Center’.</p>
<p>→Then there are child nodes like George Moscone, etc.</p>
<p>→Notice each node has some kind of relationshiop.</p>
<p>→For eg. We can read as. ‘Moscone Center (Node)’ is Named After (relationship) as ‘George Moscone’ (node)’.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1103.webp" style="width:7.52847in;height:3.70486in" alt="{D18AF7A2-060E-4D92-8954-FAAB65DEFC10}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Evolution of Web Search</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1104.webp" style="width:7.52083in;height:4.33958in" alt="{22D1BB9D-C55F-4269-B3FF-7A797F4A0297}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## What is Graph RAG

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As mentioned below the R is retreival but it is navigation through a ‘knowledge Graph’</p>
<p>→Basically from traditional RAG, it provides more contextual knowledge.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1105.webp" style="width:7.51875in;height:3.66875in" alt="{AB176199-45EC-4740-9B82-DB209A6BABB5}" /></p></td>
</tr>
</tbody>
</table>

## What does it Solve?

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us take below example, read through the content.</p>
<p>→This is simle usecase.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1106.webp" style="width:7.52361in;height:3.78056in" alt="{226B061C-CB6C-4168-B0D4-DBAB72ED2334}" /></p>
<p>→</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→What are the solutions for RAG. Below can be seen the native RAG.</p>
<p>→We can see what can we get answers for and what not also differentiated.</p>
<p>→Suppose if we want a summary of ‘all the hotels’, which we may not get it in traditional RAG.</p>
<p>→Assuming if we load all the documents in one go into Azure AI Search (Eg. We define a variable called K ), this will violate the context itself. <mark>REFER PREVIOUSLY IMPLEMENTED AZURE AI SEARCH.</mark></p>
<p>→Further, when we load those many documents in one go, even the tokens may not be sufficient.</p>
<p>→Some questions listed on the right-side will result in failure with traditional RAG.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1107.webp" style="width:7.52708in;height:4.03542in" alt="{CFED2E85-F474-4810-A874-C214C449E7B5}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

## What is the Solution for Graph RAG

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→As part of solution here we will introduce ‘graph database’ which is called ‘neo4j’.</p>
<p>→The AI Search and GPT engine will remain.</p>
<p><mark>→On Azure we have Cosmos DB with some additional configuration.</mark></p>
<p>→<mark>Advantage of Neo4j is it has good visual capabilities like Gremlin APIs.</mark></p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1108.webp" style="width:7.51806in;height:3.98194in" alt="{B318E817-C3B1-4F53-A49D-6A2FE521D957}" /></p></td>
</tr>
</tbody>
</table>

## Spin up Neo4j

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Go with GetStarted, register and then ‘Auro Login’.</p>
<p>→We can provision local or on cloud.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1109.webp" style="width:7.52361in;height:4.24375in" alt="{A6E91CD7-24D4-44D2-9144-0DEB7BA6BCFE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Once registered, signin</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1110.webp" style="width:7.52639in;height:3.77708in" alt="{F78BFBD3-3B37-47AD-8238-29336F291D2D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get the landing page of neo4j.</p>
<p>→Click New Instance</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1111.webp" style="width:7.52222in;height:3.93056in" alt="{F0B414CE-FB64-4A57-A3E4-905039A5A4A2}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Choose free option.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1112.webp" style="width:4.38542in;height:4.20833in" alt="{265D7176-A069-4D2D-9E72-2E41826972C9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Below is after creation of an instance.</p>
<p>→Notice the number of nodes that can be created on free account.</p>
<p>→it is paused currently.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1113.webp" style="width:7.52847in;height:4.36597in" alt="{68A333B9-A0C8-4ED6-9ADE-DB3DB1790DE1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

### Start the Instance. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image1114.webp" style="width:7.52222in;height:3.10694in" alt="{71350081-43C6-4A5C-836F-DFFCB9B50CAB}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get the landing page.</p>
<p>→Notice there are nodes that are defined like customer type, facitliies, hotel, location, reviewer etc.</p>
<p>→It also has ‘relationships’, like has customers, has facilities, has reviewer etc.</p>
<p>→</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1115.webp" style="width:7.52292in;height:4.00625in" alt="{0F2EBBD7-0551-4B8C-A96A-EF3E4ACA32D4}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→When we instantiate we get credentials in plain text and same need to be stored for futher integration.</p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select hotel Node and we can see all the hotels.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1116.webp" style="width:7.52222in;height:3.93403in" alt="{1342BC2E-DBB0-46F5-9055-26E8B4C7568B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Select Relationships to understand various relationships.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1117.webp" style="width:7.51944in;height:3.57708in" alt="{81366F75-300B-4F63-A578-ABC7AD4FA373}" /></p>
<p>We can see some relationship like ‘buckingham hotel’ is parent node and then ‘sofa’ is child node with a relationship like ‘has facilities’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1118.webp" style="width:7.52917in;height:4.62569in" alt="{7313CC25-08D2-4A1B-9D18-077B0CB7788B}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→ Choose Relationship ‘has customer’ and we see the graph that is generated.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1119.webp" style="width:7.51944in;height:2.96111in" alt="{CB94CD79-3B2E-46F1-9592-2060DCCBC049}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Internally it uses Cypher query as below to fetch the information.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1120.webp" style="width:6.65625in;height:1.98958in" alt="{2673F5AB-2055-4A85-ABE9-DD0F0951E5D9}" /></p></td>
</tr>
</tbody>
</table>

## Graph Architecture 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us see the architecture.</p>
<p>→To start with we will have around 10 text files, which are having content viz., ‘reviews’ given by ppl regarding various hotels., eg for ‘Contoso Travels’.</p>
<p>→Then we upload these documents in Storage Account.</p>
<p>→This storage account will be connected to Azure AI Search, where they get indexed.</p>
<p>→Then how do we load the data in Graph DB? There are multiple ways.</p>
<p>→One way is writing queries to load the data. This query is nothing but the cypher query. This is laborious for sure.</p>
<p>→Smart way is to make use of GenAI to write the query for us instead.</p>
<p>→Notice below the architecture has the same approach. First, we identify nodes and relationships and generate cypher query so that it can be inserted data into graph db.</p>
<p>→Same way when user queries, that query is converted to cypher query and queried on the graph db.</p>
<p>→So what we will do as part of pattern to load the information is via a proper sequencing.</p>
<p>→the patern is; for each document it iterates, gpt engine will this is a document and these are all the important ‘entities’, and these entities could be hotels, locations, customer types, facilities etc. It depends on us, what we want the entities to be.</p>
<p>→Then we also mention the relationships like has reviewer, has facilities etc.</p>
<p>→Then during that iteration, we also tell that gpt engine to generate cypher query, which can be used on graph db to generate graph of our data.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1121.webp" style="width:7.51736in;height:4.11389in" alt="{F2C3763B-4205-4FA3-A858-8A18D8A1DEC4}" /></p></td>
</tr>
</tbody>
</table>

## Lab items

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below are the lab items that are part of implementation</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1122.webp" style="width:7.52153in;height:3.14653in" alt="{6F42B2A6-07F4-455C-B7FC-D4D5C29B9105}" /></p></td>
</tr>
</tbody>
</table>

## Update Environment Variables

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image1123.webp" style="width:6.04167in;height:3.27083in" alt="{A4C7D060-252A-43F1-A057-5800595DB436}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Fetch the Azure Open AI Endpoint and Key.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1124.webp" style="width:7.52222in;height:4.80069in" alt="{DFAE6E51-3EEF-4EB8-B00B-C7E0A9D274AE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Update in environment variables.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1125.webp" style="width:7.34375in;height:2.13542in" alt="{78CCF057-A1EC-4806-AED5-326BA3CDE265}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to Gpt Engine for the Model name.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1126.webp" style="width:7.52222in;height:4.54792in" alt="{CCBD7C06-18DF-48A1-A395-5DB53D6FDB96}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Update</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1127.webp" style="width:7.52778in;height:2.28264in" alt="{B528D10B-5250-4310-9192-947C680B03B9}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Next is to get the creds of graph db. When we are dealing with free Neo4j we get creds like below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1128.webp" style="width:7.52083in;height:1.98542in" alt="{62CBBA28-4FC2-4F4E-A9FA-FF22F36423FE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Update</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1129.webp" style="width:6.54167in;height:1.94792in" alt="{22AC956C-D85C-441E-B15F-B3CF1E962A31}" /></p></td>
</tr>
</tbody>
</table>

## Install Dependencies and Import into VSCode

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1130.webp" style="width:7.52639in;height:1.87361in" alt="{6CDA9859-E2D6-436E-8C09-EC2A9EED0CF5}" /> |
|  |

## Create Azure Open AI Client 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1131.webp" style="width:6.29167in;height:2.67708in" alt="{BFBA0B36-2B66-4DD0-A625-96105F1AA0CB}" /> |

## Create a List to hold the entities etc

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1132.webp" style="width:3.47917in;height:0.95833in" alt="{E41A89BE-6BAA-4949-AC14-02E7B4A06010}" /> |

## Create function to identify nodes

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Below is a function that identifies nodes and their relationships.</p>
<p>→Here we are supplying two prompts, system and user.</p>
<p><mark>→READ THROUGH THE PROMPTS CAREFULLY IN THE CODE SNIPPET ON VSCODE.</mark></p>
<p><img src="subjects/tech/ai/ollama-img/media/image1133.webp" style="width:7.52986in;height:3.40139in" alt="{75C38E7A-7513-4E4A-80E4-548AD643F640}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Some important observation. Temperature is set to zero.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1134.webp" style="width:7.52153in;height:2.44514in" alt="{B50DB1F1-F51E-488D-B92B-D0566A620443}" /></p>
<p>This is critical as the example outputs mentioned in the prompt were not considered properly when temperature is set to different number.</p>
<p><mark>Need to research a bit more on this logic. What diff does temperature make.</mark></p></td>
</tr>
</tbody>
</table>

## Iterate the files

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→iterate the files and invoke the function above.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1135.webp" style="width:5.95833in;height:4.39583in" alt="{2FEB5288-DDF8-414E-B016-461029FB1F66}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get some output.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1136.webp" style="width:6.19792in;height:2.63542in" alt="{04984720-EF1C-42A0-A12A-E9D3DA66AC5A}" /></p></td>
</tr>
</tbody>
</table>

## Create a List to hold cyper queries 

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1137.webp" style="width:4.66667in;height:0.86458in" alt="{AEB18559-D3CD-4B50-8127-E55D9901091F}" /> |

## Create function to generate cypher Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Check the prompt properly.</p>
<p>→Both system and user prompts are super important as we are defining things very carefuly and meticulously which will guide gpt engine to act appropriately.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1138.webp" style="width:7.52431in;height:3.49861in" alt="{009EE4C5-77D1-40FF-8D42-A80E7EDC189D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Here as well setting temperature to zero to avoid any kind of ‘randomness’.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1139.webp" style="width:7.52153in;height:2.37083in" alt="{C8F502C6-442B-47BC-B7D0-5277B2C36D55}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→</p></td>
</tr>
</tbody>
</table>

## Use the List created - Run the function 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→run the function for every item loaded onto the list created previously.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1140.webp" style="width:4.69792in;height:1.03125in" alt="{6976DBA1-7332-4CEC-922A-ACFC0AE8927E}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Output</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1141.webp" style="width:7.52778in;height:2.42778in" alt="{1292F494-CCC9-4359-80DC-34115CCAB11D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We can see cypher queries using below snippet.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1142.webp" style="width:7.52431in;height:3.28333in" alt="{F08F7AC7-8E3F-4220-97BE-B031FD39A82F}" /></p></td>
</tr>
</tbody>
</table>

## Install plugin for Neo4J

|  |
|:---|
| <img src="subjects/tech/ai/ollama-img/media/image1143.webp" style="width:4.04167in;height:0.71875in" alt="{081C3597-51DD-486D-A9EB-76A6FBF0C4A5}" /> |

## Print the Cypher Query Info

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Printing first index of cypher query list.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1144.webp" style="width:7.525in;height:2.29028in" alt="{F8FC9933-7865-4B23-B5EF-8902A4DBC205}" /></p></td>
</tr>
</tbody>
</table>

## Create Graph in Graph DB

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→This will iterate over the list and for each entry, it creates the knowledge graph in the graph db.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1145.webp" style="width:7.52361in;height:3.73194in" alt="{2AE0EF84-A394-426C-BB47-289A8E1ECB6C}" /></p>
<p>→We get below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1146.webp" style="width:7.67153in;height:2.89861in" alt="{14940C7C-BB8D-4F53-B312-039E76B1FDDE}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Navigate to UI and check</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1147.webp" style="width:6.90625in;height:6.625in" alt="{DC91C2F7-0D4C-4580-A67A-DAEB979AF4E2}" /></p>
<p>→Many hotels have been created.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1148.webp" style="width:7.52361in;height:5.21111in" alt="{F72BE016-F4A3-437E-A63C-7FABF4CE937D}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Check some facilities on graph db.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1149.webp" style="width:7.52847in;height:3.36806in" alt="{7D59FEA1-93B9-48BB-83D9-28F280D31F85}" /></p></td>
</tr>
</tbody>
</table>

|     |
|:----|
|     |

## Define function to generate cypher query to retrieve nodes

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Read through the prompt, where we are defining schema, relationships etc.</p>
<p>→There is an example of how node is created mentioned.</p>
<p>→We are also telling gpt engine how a sample input and output looks.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1150.webp" style="width:7.52778in;height:3.26389in" alt="{8317538F-8B99-4AC6-AFA4-3815DE348606}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Then we pass a user query.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1151.webp" style="width:6.79167in;height:3.65625in" alt="{9076C3A8-20A5-4374-9CA1-B37D26AE532E}" /></p></td>
</tr>
</tbody>
</table>

## Create user query - Invoke function 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Here we are creating a simple user query and firing the function</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1152.webp" style="width:6.45833in;height:1.11458in" alt="{50FDC9CB-6B8F-4953-B8AB-ABB834405B37}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→This generates a cypher query as below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1153.webp" style="width:6.57292in;height:1.75in" alt="{453C53C9-2928-4CF1-BF47-50EF0D017A4F}" /></p></td>
</tr>
</tbody>
</table>

## Invoke Neo4J DB with Cypher Query

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Once we have cypher query above, we pass it on to the below snippet where we are sending that query to neo4j.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1154.webp" style="width:7.52431in;height:3.17292in" alt="{859616D4-7B03-48EC-9D38-2360D8AC5F39}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get back some output.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1155.webp" style="width:7.52361in;height:0.66806in" alt="{ABE8B6A5-67D3-4921-93A1-DB64DA118151}" /></p></td>
</tr>
</tbody>
</table>

## Sending final call to GPT engine. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Now that we have information from GraphDB, we pass that to Gpt for summary.</p>
<p>→Notice the prompts as well.</p>
<p>→Notice the temperature again, here we wanted to be ‘creative’ and NOT ACCURATE.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1156.webp" style="width:7.52986in;height:3.35903in" alt="{4C731DD0-E6AD-478B-9B7B-EA2F89BE1C87}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get something below.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1157.webp" style="width:7.53056in;height:1.99653in" alt="{4BCFD991-A3CD-4D6B-A443-4452B109B6C2}" /></p></td>
</tr>
</tbody>
</table>

## Create User query2 - Invoke function 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→Let us create another user query</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1158.webp" style="width:5.03125in;height:0.9375in" alt="{6719864A-66BC-4644-A480-9400471AD65A}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get some response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1159.webp" style="width:5.54167in;height:0.53125in" alt="{316FF0EB-4A3F-4649-A3C8-26E122358133}" /></p></td>
</tr>
</tbody>
</table>

## Invoke Neo4J DB with cypher Query 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p>→ We are passing the above cypher query to graph db.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1160.webp" style="width:6.02083in;height:3.11458in" alt="{DE20ED2F-0608-4BD4-BDE4-0F8A958361E1}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→We get some response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1161.webp" style="width:5.67708in;height:0.64583in" alt="{1C5AB7F0-5AD5-4DC9-8B6A-643F42EBFFAF}" /></p></td>
</tr>
</tbody>
</table>

## Sending final call to GPT engine. 

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><p><img src="subjects/tech/ai/ollama-img/media/image1162.webp" style="width:7.52292in;height:3.80208in" alt="{CCE6BCB1-4E58-4BFE-8821-A30CD61D5F39}" /></p></td>
</tr>
<tr>
<td style="text-align: left;"><p>→Some response.</p>
<p><img src="subjects/tech/ai/ollama-img/media/image1163.webp" style="width:7.52639in;height:1.30972in" alt="{1096FDCB-8699-4B8A-AC1E-C2A058C838EC}" /></p></td>
</tr>
</tbody>
</table>

## xxxx

|     |
|:----|
|     |

# xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |

## xxxx

|     |
|:----|
|     |
