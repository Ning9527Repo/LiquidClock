#!/usr/bin/env python3
"""Read uploaded arm64e bytes; never load/execute the sample."""
from pathlib import Path
import sys,struct
ROOT=Path(__file__).resolve().parents[1]
sys.path[:0]=[str(ROOT/'tools'),str(ROOT/'field')]
from macho import Image
from static_helpers import imports
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
im=Image('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/LiquidAssBackboardd.dylib')
assert im.whole_sha=='ea891e4347dfcea64703753c9ac39705718ac330d73e6a944a7c8da3416c918e'
assert im.base==0x94000
syms={a:'|'.join(s) for a,s in im.symbols.items()}; syms.update(imports(im))
md=Cs(CS_ARCH_ARM64,CS_MODE_ARM);md.detail=True
if len(sys.argv)>1 and sys.argv[1]=='symbols':
 for a,n in sorted(syms.items()):
  if len(sys.argv)<3 or sys.argv[2].lower() in n.lower():print(hex(a),n)
 sys.exit()
lo=int(sys.argv[1],0);hi=int(sys.argv[2],0) if len(sys.argv)>2 else im.bounds(lo)[1]
regs={}
for i in md.disasm(im.read(lo,hi-lo),lo):
 extra=[];o=i.operands
 if i.address in syms:extra.append(syms[i.address])
 if i.mnemonic=='adrp':regs[o[0].reg]=o[1].imm
 if i.mnemonic=='adr':regs[o[0].reg]=o[1].imm
 if i.mnemonic=='add' and len(o)>2 and o[1].type==1 and o[2].type==2 and o[1].reg in regs:regs[o[0].reg]=regs[o[1].reg]+o[2].imm
 a=None
 if i.mnemonic in ('ldr','ldur','ldrsw','str','strb') and len(o)>1 and o[1].type==3 and o[1].mem.base in regs:a=regs[o[1].mem.base]+o[1].mem.disp
 if i.mnemonic in ('adr','add') and o[0].type==1:a=regs.get(o[0].reg,a)
 if a is not None:
  if a in syms:extra.append(syms[a])
  try:
   if any(s['addr']<=a<s['addr']+s['size'] and k[1] in ('__cstring','__objc_methname') for k,s in im.sections.items()):extra.append(repr(im.cstr(a)))
   if i.mnemonic=='ldr':
    v=im.u64(a)
    if v in syms:extra.append('->'+syms[v])
    if any(s['addr']<=v<s['addr']+s['size'] and k[1] in ('__cstring','__objc_methname') for k,s in im.sections.items()):extra.append('->'+repr(im.cstr(v)))
  except (ValueError,struct.error):pass
 if i.mnemonic in ('b','bl') and o[0].type==2 and o[0].imm in syms:extra.append(syms[o[0].imm])
 print(f'{i.address:08x} {i.bytes.hex()} {i.mnemonic:10} {i.op_str:45}'+(' ; '+' ; '.join(extra) if extra else ''))
