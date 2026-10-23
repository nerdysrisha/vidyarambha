"""
Extracts Telugu verse (sl) and meaning (mn) from chapter html files 1..18
and writes everything to one text file.

Setup (once):  pip install beautifulsoup4
Run:           python extract_telugu.py
"""
import os
from bs4 import BeautifulSoup

# ---- change these two if needed ----
FOLDER = "."                      # folder that has the 18 html files
OUTPUT = "gita_telugu_all.txt"    # single output file
# ------------------------------------


def find_file(n):
    path = os.path.join(FOLDER, f"chapter{n}-multi-lang.html")
    return path if os.path.exists(path) else None


with open(OUTPUT, "w", encoding="utf-8") as out:
    for n in range(1, 19):
        path = find_file(n)
        if not path:
            print(f"Chapter {n}: file not found, skipped")
            continue

        with open(path, encoding="utf-8") as f:
            soup = BeautifulSoup(f.read(), "html.parser")

        out.write(f"Chapter {n}\n\n")

        for block in soup.find_all("div", class_="verse-block"):
            te = block.find("div", attrs={"data-lang": "te"})
            if not te:
                continue

            sl = te.find("div", class_="sl")
            mn = te.find("div", class_="mn")
            sl_text = sl.decode_contents().strip() if sl else ""
            mn_text = mn.decode_contents().strip() if mn else ""

            num = block.get("data-n", "")
            title = "Opening Verse" if num == "opening" else f"Verse {num}"

            out.write(f"{title}\n\n{sl_text}\n\n{mn_text}\n\n")

        out.write("\n")
        print(f"Chapter {n}: done")

print(f"\nAll written to {OUTPUT}")
