#!/usr/bin/env python3
"""
Put this script in your base folder and run:  python convert-all-pics-to-webp.py
Install once:  pip install pillow
"""

import os
from pathlib import Path

from PIL import Image, ImageOps

BASE_DIR = Path(__file__).resolve().parent
QUALITY = 80                      # 1-100
EXTENSIONS = {".jpg", ".jpeg", ".png"}


def show_info_and_wait():
    print("=" * 60)
    print("WHAT THIS SCRIPT DOES")
    print("=" * 60)
    print(f"  - Looks in: {BASE_DIR}")
    print("  - Includes ALL sub-folders inside it")
    print("  - Finds every .jpg / .jpeg / .png file")
    print("  - Converts each one to .webp (same file name)")
    print("      example: photo.jpg -> photo.webp")
    print("  - Deletes the original file after a successful conversion")
    print("  - Skips a file if a .webp with that name already exists")
    print("  - Does NOT touch any other file type")
    print()
    print("!! Deletion is permanent - make sure you have a backup !!")
    print()
    try:
        import msvcrt  # Windows
        print("Press any key to continue (or close the window to cancel)...")
        msvcrt.getch()
    except ImportError:
        input("Press Enter to continue (or Ctrl+C to cancel)...")
    print()


def convert(src: Path) -> bool:
    dst = src.with_suffix(".webp")
    if dst.exists():
        print(f"[skip] {src.name}: {dst.name} already exists")
        return False

    tmp = src.with_name(src.stem + ".__tmp__.webp")
    try:
        with Image.open(src) as im:
            im = ImageOps.exif_transpose(im)   # keep phone photos upright
            if im.mode in ("P", "LA", "RGBA"):
                im = im.convert("RGBA")
            else:
                im = im.convert("RGB")
            im.save(tmp, "WEBP", quality=QUALITY, method=6)
        tmp.replace(dst)
        os.remove(src)                         # only after a successful save
        print(f"[ OK ] {src.name} -> {dst.name}")
        return True
    except Exception as err:
        tmp.unlink(missing_ok=True)
        print(f"[FAIL] {src.name}: {err}  (original kept)")
        return False


def main():
    show_info_and_wait()
    files = [
        p for p in BASE_DIR.rglob("*")
        if p.is_file() and p.suffix.lower() in EXTENSIONS
        and not any(part.startswith(".") for part in p.relative_to(BASE_DIR).parts)
    ]
    done = sum(convert(p) for p in files)
    print(f"\nall done - {done} of {len(files)} file(s) converted")


if __name__ == "__main__":
    main()