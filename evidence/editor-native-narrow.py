#!/usr/bin/env python3
"""Narrow offline evidence only: never imports/executes sample Mach-O code."""
import sys, pickle, struct
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools'))
from evidence import Evidence
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
obj=Evidence.__new__(Evidence)
obj.__dict__.update(pickle.loads((ROOT/'editor/evidence-cache.pickle').read_bytes()))
obj.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM); obj.md.detail=True
if sys.argv[1]=='methods':
    for a,n in sorted(obj.methodnames.items()):
        if any(w.lower() in n.lower() for w in sys.argv[2:]): print(hex(a),n)
elif sys.argv[1]=='xrefs':
    targets={a:n for a,n in obj.stubnames.items() if any(w in n for w in sys.argv[2:])}
    targets.update({a:n for a,n in obj.methodnames.items() if any(w in n for w in sys.argv[2:])})
    import bisect
    sec=obj.sections[('__TEXT','__text')]; start=sec['addr']
    found={a:[] for a in targets}
    for index,(word,) in enumerate(struct.iter_unpack('<I',obj.read(start,sec['size']))):
        if word&0xfc000000 not in (0x94000000,0x14000000):continue
        imm=word&0x3ffffff;imm=imm-(1<<26) if imm&(1<<25) else imm
        pc=start+index*4;target=pc+imm*4
        if target in found:
            lo=obj.function_starts[bisect.bisect_right(obj.function_starts,pc)-1]
            found[target].append((lo,pc))
    for a,n in sorted(targets.items()):
        print('TARGET',hex(a),n)
        for lo,pc in found[a]:print(' ',hex(lo),hex(pc),obj.methodnames.get(lo,''))
elif sys.argv[1]=='disasm':
    for spec in sys.argv[2:]:
        pair=spec.split(':'); lo,hi=obj.bounds(int(pair[0],0))
        if len(pair)>1:lo,hi=int(pair[0],0),int(pair[1],0)
        path=ROOT/'evidence'/('editor-native-'+hex(lo)+'.asm')
        path.write_text('; Uploaded sample arm64e unslid VA '+hex(lo)+'..'+hex(hi)+'\n'+obj.disasm(lo,hi))
        print(path.name)
elif sys.argv[1]=='floats':
    for address in sys.argv[2:]:
        va=int(address,0);print(hex(va),struct.unpack('<d',obj.read(va,8))[0])
elif sys.argv[1]=='selectors':
    for va,name in sorted(obj.selrefs.items()):
        if any(w.lower() in name.lower() for w in sys.argv[2:]):print(hex(va),name)
elif sys.argv[1]=='info':
    print('keys',list(obj.__dict__))
    for a in sys.argv[2:]:
        va=int(a,0); print(a,obj.label(va),obj.read(va,32).hex())
