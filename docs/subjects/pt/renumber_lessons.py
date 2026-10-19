#!/usr/bin/env python3
"""
Renumbers the lesson files sequentially AND updates the slugs in PortugueseCourse.html to match.

    01-artigos.html                         ->  01-artigos.html
    01b-artigo-indefinido-genero-numero     ->  02-artigo-indefinido-genero-numero
    02-verbos-basicos                       ->  03-verbos-basicos      ... and so on up to 38

The ORDER of the topics array in PortugueseCourse.html is the source of truth.
Slugs starting "00-" (credits, introduction) are left alone.

Run from the folder that holds the lesson .html files:

    python renumber_lessons.py                      # looks for PortugueseCourse.html here, then in parent folders
    python renumber_lessons.py path\\to\\PortugueseCourse.html

It shows the plan first and only changes anything after you type y.
"""
import re
import sys
from pathlib import Path

MAIN_NAME = "PortugueseCourse.html"
ENTRY = re.compile(r'^(\s*\[\s*")([^"]+)(")', re.MULTILINE)      # start of each topic entry: ["slug"
OLD_PREFIX = re.compile(r"^\d+[a-z]?-")


def find_main(folder: Path) -> Path:
    if len(sys.argv) > 1:
        return Path(sys.argv[1]).resolve()
    for d in [folder, *list(folder.parents)[:4]]:
        for cand in (d / MAIN_NAME, *d.glob("*/" + MAIN_NAME)):
            if cand.exists():
                return cand
    sys.exit(f"Could not find {MAIN_NAME}. Run: python renumber_lessons.py path\\to\\{MAIN_NAME}")


def main():
    folder = Path(__file__).resolve().parent
    main_html = find_main(folder)
    text = main_html.read_text(encoding="utf-8")

    start = text.index("const topics = [")
    end = text.index("\n];", start)
    block = text[start:end]

    # work out new slugs, in array order
    plan, n = [], 0
    for m in ENTRY.finditer(block):
        old = m.group(2)
        if old.startswith("00-"):
            plan.append((old, old))
            continue
        n += 1
        plan.append((old, f"{n:02d}-" + OLD_PREFIX.sub("", old)))

    print(f"Topics file : {main_html}")
    print(f"Lesson files: {folder}\n")
    missing = []
    for old, new in plan:
        exists = (folder / f"{old}.html").exists()
        if not exists:
            missing.append(old)
        flag = "" if exists else "   <-- FILE NOT FOUND"
        print(f"  {old:45} -> {new}{flag}" if old != new else f"  {old:45}    (unchanged){flag}")

    olds = {o for o, _ in plan}
    extra = sorted(p.stem for p in folder.glob("*.html") if p.stem not in olds and p.name != MAIN_NAME)
    if extra:
        print("\nHTML files in this folder that are NOT in the array (left untouched):", ", ".join(extra))
    if missing:
        sys.exit("\nStopping: some slugs in the array have no file. Nothing was changed.")
    if len({new for _, new in plan}) != len(plan):
        sys.exit("\nStopping: two topics would get the same name. Nothing was changed.")

    if input("\nRename the files and update the array? (y/n) ").strip().lower() != "y":
        sys.exit("Cancelled. Nothing was changed.")

    # 1) rename files in two steps so e.g. 02 -> 03 never overwrites an existing 03
    changes = [(o, nw) for o, nw in plan if o != nw]
    for o, _ in changes:
        (folder / f"{o}.html").rename(folder / f"{o}.html.tmp-renumber")
    for o, nw in changes:
        (folder / f"{o}.html.tmp-renumber").rename(folder / f"{nw}.html")

    # 2) update the slugs in the array (same order, so replace entry by entry)
    mapping = iter(plan)
    new_block = ENTRY.sub(lambda m: m.group(1) + next(mapping)[1] + m.group(3), block)
    main_html.write_text(text[:start] + new_block + text[end:], encoding="utf-8")

    print(f"\nDone: {len(changes)} file(s) renamed, array updated in {main_html.name}.")


if __name__ == "__main__":
    main()
