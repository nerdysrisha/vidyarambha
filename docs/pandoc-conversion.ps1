 
#Change only the three variables at the top. -Force creates the folder if it’s missing and does nothing if it already exists.
#have the document in 'docs' folder. 


cd C:\ws\vidyarambha\docs
$docx = "az-dns-zone-creation.docx"
$cat  = "azure"
$name = "dns-zone-creation"
$label = "DNS Zone"
$desc = "DNS Zone Creation"
$keywords = "dns zone"
$script = "C:\ws\vidyarambha\docs\convert-all-pics-to-web-retain-names.py"

# 1. folder + word to md
New-Item -ItemType Directory -Force -Path "subjects\tech\$cat\$name" | Out-Null
pandoc "$docx" -t gfm --wrap=none "--extract-media=subjects/tech/$cat/$name/img" -o "subjects/tech/$cat/$name/$name.md"

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

