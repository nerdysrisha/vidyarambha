cd C:\ws\vidyarambha\docs
$docx = "az-app-gateway.docx"
$cat  = "azure"
$name = "appgateway"
New-Item -ItemType Directory -Force -Path "subjects\tech\$cat\$name" | Out-Null
pandoc "$docx" -t gfm --wrap=none "--extract-media=subjects/tech/$cat/$name/img" -o "subjects/tech/$cat/$name/$name.md"

#Change only the three variables at the top. -Force creates the folder if it’s missing and does nothing if it already exists.
#have the document in 'docs' folder. 