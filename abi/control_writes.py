import sys,struct
from pathlib import Path
sys.dont_write_bytecode=True
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'field'))
from dump_arm64e import image
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
im=image('main');s=im.sections['__TEXT','__text'];b=im.read(s['addr'],s['size']);md=Cs(CS_ARCH_ARM64,CS_MODE_ARM);funcs=set()
for off in range(0,len(b)-3,4):
 w=struct.unpack_from('<I',b,off)[0]
 if w&0xfffffc00 in (0xc89ffc00,0x889ffc00): funcs.add(im.bounds(s['addr']+off)[0])
for a in sorted(funcs):
 lo,hi=im.bounds(a);lines=[f'main arm64e {lo:#x}..{hi:#x}']
 for x in md.disasm(im.read(lo,hi-lo),lo):lines.append(f'{x.address:08x} {x.mnemonic:10s} {x.op_str}')
 (H/f'control-{lo:x}.asm').write_text('\n'.join(lines)+'\n')
 print(hex(a),hex(hi-lo))
