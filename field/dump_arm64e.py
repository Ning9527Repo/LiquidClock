"""Read arm64e disassembly windows only; input images are never executed."""
from pathlib import Path
import sys, json, hashlib, struct, bisect
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'tools'))
from macho import Image
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
ROOT = Path('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries')
OUT = Path(__file__).resolve().parent
IMAGES = {'backboard': ROOT/'LiquidAssBackboardd.dylib', 'main': ROOT/'liquidass.dylib'}
def image(name): return Image(IMAGES[name], arch='arm64e')
def disasm(name, addr, size=None):
    im=image(name)
    lo,hi=im.bounds(addr)
    if size is None: addr,size=lo,hi-lo
    md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
    lines=[f'{name} arm64e VA 0x{addr:x}..0x{addr+size:x}; fat slice offset 0x{im.base:x}']
    for ins in md.disasm(im.read(addr,size), addr):
        label=im.symbols.get(ins.address)
        if label: lines.append('; '+ ' | '.join(label))
        extra=''
        if ins.mnemonic in ('bl','b') and ins.op_str.startswith('#'):
            target=int(ins.op_str[1:],0)
            extra=' ; '+ ' | '.join(im.symbols.get(target,[]))
        lines.append(f'{ins.address:08x}: {ins.bytes.hex():8s} {ins.mnemonic:10s} {ins.op_str}{extra}')
    return '\n'.join(lines)+'\n'
if __name__=='__main__':
    if len(sys.argv)>2:
        print(disasm(sys.argv[1],int(sys.argv[2],0),int(sys.argv[3],0) if len(sys.argv)>3 else None),end='')
    else:
        evidence={}
        for n in IMAGES:
            im=image(n)
            evidence[n]=im.summary()
        (OUT/'sample-sha256.json').write_text(json.dumps(evidence,indent=2)+'\n')
        windows=[('backboard',0x1586c),('backboard',0x134a8),('backboard',0x11f6c),('backboard',0x27738),('backboard',0x279b4),('main',0x8ad54),('main',0x893e8)]
        for n,a in windows:
            p=OUT/f'{n}-arm64e-{a:x}.asm'
            p.write_text(disasm(n,a))
            print(p)
