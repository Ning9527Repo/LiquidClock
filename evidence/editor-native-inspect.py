#!/usr/bin/env python3
"""Offline uploaded-artifact evidence; never loads or executes Mach-O code."""
import struct, json, hashlib, pickle, sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def font(path):
    data=path.read_bytes(); u16=lambda p:struct.unpack_from('>H',data,p)[0]
    tables={}
    for i in range(u16(4)):
        tag,check,off,size=struct.unpack_from('>4sIII',data,12+i*16)
        tables[tag.decode()]=(off,size)
    off,size=tables['name']; n=u16(off+2); strings=off+u16(off+4); names={}
    for i in range(n):
        platform,enc,lang,nid,length,start=struct.unpack_from('>6H',data,off+6+i*12)
        raw=data[strings+start:strings+start+length]
        try:value=raw.decode('utf-16-be' if platform in (0,3) else 'mac_roman')
        except UnicodeError:continue
        names.setdefault(nid,[])
        if value not in names[nid]:names[nid].append(value)
    axes=[]
    if 'fvar' in tables:
        p,_=tables['fvar']; a=p+u16(p+4)
        for i in range(u16(p+8)):
            tag,lo,default,hi,flags,nid=struct.unpack_from('>4siiiHH',data,a+i*u16(p+10))
            axes.append(dict(tag=tag.decode(),minimum=lo/65536,default=default/65536,maximum=hi/65536,name_id=nid,names=names.get(nid)))
    return dict(file=str(path.relative_to(ROOT)),sha256=hashlib.sha256(data).hexdigest(),names={str(k):v for k,v in names.items() if k in (1,2,4,6,16,17) or any(k==a['name_id'] for a in axes)},axes=axes)
if __name__=='__main__':
    print(json.dumps([font(p) for p in sorted((ROOT/'assets/fonts').glob('*.otf'))],indent=2))
    if len(sys.argv)>1:
        sys.path.insert(0,str(ROOT/'tools'))
        from evidence import Evidence
        from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
        obj=Evidence.__new__(Evidence); obj.__dict__.update(pickle.loads((ROOT/'editor/evidence-cache.pickle').read_bytes()))
        obj.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM); obj.md.detail=True
        for spec in sys.argv[1:]:
            if spec=='methods':
                for a,n in obj.methodnames.items():
                    if any(w in n.lower() for w in ('depth','poster','font','style','progress')):print(hex(a),n)
            else:
                a=int(spec,0); lo,hi=obj.bounds(a)
                out=ROOT/'evidence'/('editor-native-'+hex(lo)+'.asm')
                out.write_text('; Local sample arm64e unslid VA '+hex(lo)+'..'+hex(hi)+'\n'+obj.disasm(lo,hi))
                print(out.name,hex(lo),hex(hi))
