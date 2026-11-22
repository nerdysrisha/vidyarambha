 
#INSTRUCTIONS. 
# What this code does: It converts a word document into Mark Down file. It extracts images etc and also links them to Markdown. 
# It maintains the formatting etc as well. 

# GET THE WORD DOCUMENT THAT WE WANT TO EXTRACT IMAGES AND CONVER REMAINING TEXT TO MD FILE AND PUT IN BELOW LOCATION 
# CHANGE VALUES OF THESE VARIABLES: --> [docx, name, label, description, keywords]  as per the context and content. 
# RUN THE FOLLOWING COMMANDS IN SEQUENCE. 
# IT CREATES A FOLDER UNDER 'cat' (Eg. azure folder), a foldernamed 'name' (Eg. az-104-and-305-labs) and then places the md file using 'az-104-and-305-labs' (Eg. az-104-and-305-labs.md)
# THEN IT EXTRACTS ALL THE IMAGES FROM DOC FILE AND PLACES UNDER 'IMG' FOLDER. 
# IT CONVERTS THEM TO WEBP SO THAT IMAGES ARE LOWER SIZED. 
# IT CHECKS IN MD FILE ANY TOKENS ETC ARE THERE IT MASKS THEM. 






cd C:\ws\vidyarambha\docs
$docx = "az-aks-complete.docx"
$cat  = "azure"
$name = "az-aks-complete"
$label = "az-aks-complete"
$desc = "az-aks-complete"
$keywords = "kubernetes"
$script = "C:\ws\vidyarambha\docs\convert-all-pics-to-web-retain-names.py"

# 1. folder + word to md
New-Item -ItemType Directory -Force -Path "subjects\tech\$cat\$name" | Out-Null
pandoc "$docx" -t gfm --wrap=none "--extract-media=subjects/tech/$cat/$name/img" -o "subjects/tech/$cat/$name/$name.md"

  

$md = "subjects\tech\$cat\$name\$name.md"
$x = [IO.File]::ReadAllText("$PWD\$md")
$rules = @(
  @('[A-Za-z0-9_.~-]{3}[78]Q~[A-Za-z0-9_.~-]{31,34}', '<removed-azure-ad-secret>'),
  @('(?<![A-Za-z0-9+/])[A-Za-z0-9+/]{86}==', '<removed-storage-key>'),
  @('(?i)([?&]code=)[^&\s>)"'']+', '$1<removed>'),
  @('(?i)([?&]sig=)[^&\s>)"'']+', '$1<removed>'),
  @('(?i)((?:AccountKey|SharedAccessKey|PrimaryKey|SecondaryKey|Password|Pwd)\s*=\s*)[^;\s"'']+', '$1<removed>'),
  @('(?i)((?:x-functions-key|api-key|ocp-apim-subscription-key|authorization)\s*:\s*(?:bearer\s+)?)\S+', '$1<removed>'),
  @('(?i)((?:password|passwd|secret|token|apikey|api_key|client_secret|access_key)\s*[:=]\s*)[^\s"'',;]+', '$1<removed>'),
  @('eyJ[A-Za-z0-9_-]{10,}\.[A-Za-z0-9_-]{10,}\.[A-Za-z0-9_-]{10,}', '<removed-jwt>'),
  @('github_pat_[A-Za-z0-9_]{50,}', '<removed-token>'),
  @('gh[pousr]_[A-Za-z0-9]{30,}', '<removed-token>'),
  @('AKIA[0-9A-Z]{16}', '<removed-aws-key>'),
  @('(?s)-----BEGIN [A-Z ]*PRIVATE KEY-----.*?-----END [A-Z ]*PRIVATE KEY-----', '<removed-private-key>')
)
foreach ($r in $rules) {
  $n = [regex]::Matches($x, $r[0]).Count
  if ($n) { "$n match(es): $($r[0].Substring(0, [Math]::Min(45, $r[0].Length)))..." }
  $x = [regex]::Replace($x, $r[0], $r[1])
}
[IO.File]::WriteAllText("$PWD\$md", $x, (New-Object Text.UTF8Encoding $false))
"Lines now containing a placeholder:"
Select-String -Path $md -Pattern "<removed" | ForEach-Object { "$($_.LineNumber): $($_.Line.Trim())" }







# 2. add the entry to the html
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


# 3. convert ONLY this topic's images to webp
$folder = "subjects\tech\$cat\$name\img\media"
if (-not (Test-Path $folder)) { "Folder not found: $folder - stopping"; return }
@'
import sys, pathlib
from PIL import Image
root = pathlib.Path(sys.argv[1])
for p in list(root.rglob("*")):
    if p.suffix.lower() in (".png", ".jpg", ".jpeg"):
        out = p.with_suffix(".webp")
        if out.exists():
            print("[skip]", p.name); continue
        with Image.open(p) as im:
            im.save(out, "WEBP", quality=85, method=6)
        p.unlink()
        print("[ OK ]", p.name)
'@ | python - $folder

# 4. point the md at .webp
$md = "subjects\tech\$cat\$name\$name.md"
$x = [IO.File]::ReadAllText("$PWD\$md")
$x = $x -replace '(img/media/[^)\s"]+)\.png', '$1.webp'
[IO.File]::WriteAllText("$PWD\$md", $x, (New-Object Text.UTF8Encoding $false))
"Done: $md"


& "C:\Program Files\Notepad++\notepad++.exe" (Resolve-Path "subjects\tech\$cat\$name\$name.md")
#









 