#!/usr/bin/env python3
"""Build a deterministic, read-only hook evidence table from sample metadata."""
from pathlib import Path
import json, hashlib, sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]/'tools'))
from macho import Image
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

ROOT=Path(__file__).resolve().parents[1]
manifest=json.loads((ROOT/'evidence/clock-hook-manifest.json').read_text())
path='/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib'
i=Image(path,'arm64e'); md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
rows=[]
for item in manifest['hooks']:
    repl=int(item['replacement'],16)
    start,end=i.bounds(repl)
    data=i.read(start,end-start)
    ins=[]
    for n,x in enumerate(md.disasm(data,start)):
        if n>=12: break
        ins.append({'va':hex(x.address),'mnemonic':x.mnemonic,'op':x.op_str})
    row=dict(item)
    row.update({'function_start':hex(start),'function_end':hex(end),'size':end-start,
                'sha256':hashlib.sha256(data).hexdigest(),'prologue':ins})
    rows.append(row)
out={'sample':manifest['sample'],'arch':'arm64e','binary_sha256':i.whole_sha,
      'evidence_only':True,'hooks':rows}
(ROOT/'evidence/clock-hook-functions.json').write_text(json.dumps(out,indent=2)+'\n')
print('rows',len(rows),'unique_functions',len({x['function_start'] for x in rows}))
for x in rows:
    print(x['class'],x['selector_name'],x['function_start'],x['size'],x['sha256'][:12])
