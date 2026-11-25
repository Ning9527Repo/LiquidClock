#!/usr/bin/env python3
"""Read samples only; write evidence solely beneath this abi directory."""
import sys, json, hashlib, re
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.dont_write_bytecode=True
sys.path[:0]=[str(HERE.parent/'field'),str(HERE.parent/'tools')]
from dump_arm64e import image, disasm
from static_helpers import imports
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
md=Cs(CS_ARCH_ARM64,CS_MODE_ARM);md.skipdata=True
manifest={}
for name in ('main','backboard'):
    im=image(name); imp=imports(im)
    syms={a:' | '.join(v) for a,v in im.symbols.items()}
    text=im.sections['__TEXT','__text']
    instructions=list(md.disasm(im.read(text['addr'],text['size']),text['addr']))
    hits=[]; funcs=set()
    for i,ins in enumerate(instructions):
        if ins.mnemonic in ('bl','b') and ins.op_str.startswith('#'):
            target=int(ins.op_str[1:],0); label=syms.get(target,imp.get(target,''))
            if any(s in label for s in ('setFragmentBytes','setFragmentTexture','texture2DDescriptorWithPixelFormat','mach_absolute_time')):
                lo,hi=im.bounds(ins.address);funcs.add(lo)
                window=instructions[max(0,i-12):i+4]
                hits.append({'address':hex(ins.address),'function':hex(lo),'target':hex(target),'label':label,
                    'window':[f'{x.address:08x} {x.mnemonic:10s} {x.op_str}' for x in window]})
    strings=[]
    for s in ('setFragmentBytes:length:atIndex:','setFragmentTexture:atIndex:','texture2DDescriptorWithPixelFormat:width:height:mipmapped:'):
        start=0;places=[]
        while True:
            p=im.data.find(s.encode()+b'\0',start)
            if p<0:break
            places.append(hex(p)); start=p+1
        strings.append({'text':s,'slice_file_offsets':places})
    funcs.update([0x8afa4,0x8b6e0,0xa2c2c,0xa2d94] if name=='main' else [0x134a8,0x27738,0x279b4,0x11f6c,0x1586c,0x110ec])
    for a in sorted(funcs):
        lo,hi=im.bounds(a)
        lines=[f'{name} arm64e VA {lo:#x}..{hi:#x}; fat slice offset {im.base:#x}']
        for x in md.disasm(im.read(lo,hi-lo),lo):
            label=''
            if x.mnemonic in ('bl','b') and x.op_str.startswith('#'):
                t=int(x.op_str[1:],0);label=syms.get(t,imp.get(t,''))
            lines.append(f'{x.address:08x}: {x.bytes.hex()} {x.mnemonic:10s} {x.op_str} ; {label}')
        (HERE/f'{name}-{a:x}.asm').write_text('\n'.join(lines)+'\n')
    manifest[name]={'sha256':im.whole_sha,'slice_sha256':hashlib.sha256(im.data).hexdigest(),
        'slice_offset':hex(im.base),'subtype':hex(im.subtype),'calls':hits,'strings':strings,
        'imports':{hex(a):s for a,s in imp.items()},'symbols':{hex(a):s for a,s in syms.items() if re.search(r'Clock.*Field|Uniform|clockField|CR13',s)}}
    print(name,'calls',len(hits),'functions',*[hex(x) for x in sorted(funcs)])
(HERE/'binary-evidence.json').write_text(json.dumps(manifest,indent=2)+'\n')
