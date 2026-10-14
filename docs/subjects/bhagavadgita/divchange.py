import re
import sys
from pathlib import Path

# Matches <div ... /> (self-closing), keeping the attributes
PATTERN = re.compile(r'<div\b([^<>]*?)\s*/>', re.IGNORECASE)

def fix_file(path: Path) -> bool:
    text = path.read_text(encoding="utf-8")
    new_text = PATTERN.sub(r'<div\1></div>', text)
    if new_text != text:
        path.write_text(new_text, encoding="utf-8")
        return True
    return False

def main():
    root = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(".")
    changed = 0
    for f in root.rglob("*.html"):
        if fix_file(f):
            print(f"Fixed: {f}")
            changed += 1
    print(f"Done. {changed} file(s) changed.")

if __name__ == "__main__":
    main()