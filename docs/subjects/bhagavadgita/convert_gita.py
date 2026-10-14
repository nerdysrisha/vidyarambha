import re, sys
from pathlib import Path

FOLDER = Path(r'C:\ws\vidyarambha\docs\subjects\bhagavadgita')
ADD_HINDI_PLACEHOLDER = True   # set False to omit the empty data-lang="hi" block

START = re.compile(r'<div\s+class="verse-block">')
TOKEN = re.compile(r'<div\b|</div>')

def find_block_end(text, start):
    """Return index just after the </div> that closes the div opening at `start`."""
    depth = 0
    for m in TOKEN.finditer(text, start):
        depth += 1 if m.group(0).startswith('<div') else -1
        if depth == 0:
            return m.end()
    return -1

def field(block, cls):
    m = re.search(r'<div\s+class="%s">(.*?)</div>' % cls, block, re.S)
    return m.group(1).strip() if m else ''

def labelled(block, cls):
    m = re.search(r'<div\s+class="%s">\s*<span\s+class="lbl">.*?</span>(.*?)</div>' % cls, block, re.S)
    return m.group(1).strip() if m else ''

def convert(block):
    tag = re.search(r'<span\s+class="verse-tag">(.*?)</span>', block, re.S).group(1).strip()
    if 'closing' in tag.lower():
        n = 'closing'
    elif 'prayer' in tag.lower() or 'opening' in tag.lower():
        n = 'opening'
    else:
        f = re.search(r'\d+(?:\s*[-–]\s*\d+)?', tag)
        n = f.group(0).replace(' ', '') if f else tag
    te, tr = field(block, 'verse-telugu'), field(block, 'verse-translit')
    en, tp = labelled(block, 'verse-translation'), labelled(block, 'verse-purport')
    flag = field(block, 'flag-inline')
    out = f'<div class="verse-block" data-n="{n}">'
    if flag:
        out += f'\n  <!-- NOTE: {flag.replace("--", "-")} -->'
    out += f'''
  <div data-lang="te"><div class="sl">{te}</div><div class="mn">{tp}</div></div>
  <div data-lang="en"><div class="sl">{tr}</div><div class="mn">{en}</div></div>'''
    if ADD_HINDI_PLACEHOLDER:
        out += '\n  <div data-lang="hi"><div class="sl"></div><div class="mn"></div></div>'
    return out + '\n</div>'

def convert_text(text):
    out, pos, count = [], 0, 0
    for m in START.finditer(text):
        if m.start() < pos:
            continue
        end = find_block_end(text, m.start())
        if end < 0:
            print(f'** unbalanced block at char {m.start()}'); continue
        out.append(text[pos:m.start()])
        out.append(convert(text[m.start():end]))
        pos, count = end, count + 1
    out.append(text[pos:])
    return ''.join(out), count

def main():
    if len(sys.argv) < 2:
        sys.exit('Usage: python convert_gita.py chapter18')
    name = sys.argv[1].replace('\\', '/').split('/')[-1]
    if name.lower().endswith('.html'):
        name = name[:-5]
    if name.isdigit():
        name = f'chapter{name}'
    src = FOLDER / f'{name}.html'
    dst = FOLDER / f'{name}-multi-lang.html'
    if not src.exists():
        sys.exit(f'Not found: {src}')
    new, count = convert_text(src.read_text(encoding='utf-8'))
    dst.write_text(new, encoding='utf-8')
    left = len(re.findall(r'class="verse-block">', new))
    print(f'{src.name} -> {dst.name}: converted {count} blocks')
    if left:
        print(f'** WARNING: {left} old-style block(s) remain, check manually **')

if __name__ == '__main__':
    main()