#cd C:\ws\vidyarambha\docs
#$docx = "az-app-gateway.docx"
#$cat  = "azure"
#$name = "appgateway"
#New-Item -ItemType Directory -Force -Path "subjects\tech\$cat\$name" | Out-Null
#pandoc "$docx" -t gfm --wrap=none "--extract-media=subjects/tech/$cat/$name/img" -o "subjects/tech/$cat/$name/$name.md"

#Change only the three variables at the top. -Force creates the folder if it’s missing and does nothing if it already exists.
#have the document in 'docs' folder. 



cd C:\ws\vidyarambha\docs
$docx = "az-app-gateway.docx"
$cat  = "azure"
$name = "appgateway"
$label = "App Gateway"
$desc = "Application Gateway notes"
$keywords = "azure app gateway waf"

New-Item -ItemType Directory -Force -Path "subjects\tech\$cat\$name" | Out-Null
pandoc "$docx" -t gfm --wrap=none "--extract-media=subjects/tech/$cat/$name/img" -o "subjects/tech/$cat/$name/$name.md"

$html = "MyLearnings.html"
$t = [IO.File]::ReadAllText("$PWD\$html")
$nl = if ($t.Contains("`r`n")) { "`r`n" } else { "`n" }
$entry = "[`"$name/$name`", `"$label`", `"$desc`", `"$keywords`", `"md`"]"
$m = [regex]::Match($t, '(?s)(slug:\s*"' + [regex]::Escape($cat) + '",\s*topics:\s*\[)(.*?)(\]\s*\})')
if ($t.Contains("`"$name/$name`"")) { "Entry already exists - nothing changed" } elseif (-not $m.Success) { "Category '$cat' not found in $html" } else {
  $body = $m.Groups[2].Value.TrimEnd()
  if ($body.Trim() -ne "" -and -not $body.EndsWith(",")) { $body += "," }
  $new = $m.Groups[1].Value + $body + $nl + "            " + $entry + $nl + "        " + $m.Groups[3].Value
  $t = $t.Substring(0, $m.Index) + $new + $t.Substring($m.Index + $m.Length)
  Copy-Item $html "$env:TEMP\MyLearnings.bak.html" -Force
  [IO.File]::WriteAllText("$PWD\$html", $t, (New-Object Text.UTF8Encoding $false))
  "Added: $entry"
}