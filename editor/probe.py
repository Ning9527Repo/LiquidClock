"""Follow-up decoder using locally generated static metadata cache only."""
import sys,pickle,json,struct
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'tools'))
from evidence import Evidence
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
OUT=Path(__file__).resolve().parent
i=Evidence.__new__(Evidence); i.__dict__.update(pickle.loads((OUT/'evidence-cache.pickle').read_bytes()))
i.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM); i.md.detail=True
for spec in sys.argv[1:]:
 if spec.startswith('n:'):
  a=int(spec[2:],0); b=i.read(a,32)
  print(hex(a),'ptr',i.ptr(a),'hex',b.hex(),'f32/f64',struct.unpack('<f',b[:4])[0],struct.unpack('<d',b[:8])[0])
 elif spec.startswith('find:'):
  key=spec[5:]
  print(json.dumps({hex(a):s for a,s in {**i.cfstrings,**{a:'|'.join(s) for a,s in i.symbols.items()}}.items() if key.lower() in s.lower()},indent=2))
 else:
  parts=spec.split(':'); a=int(parts[0],0); start,end=(a,int(parts[1],0)) if len(parts)>1 else i.bounds(a)
  txt=f'; arm64e unslid VA [{start:#x},{end:#x})\n'+i.disasm(start,end)
  name='extra-'+hex(start)+'.asm'; (OUT/name).write_text(txt); print(name,hex(start),hex(end),len(txt))
