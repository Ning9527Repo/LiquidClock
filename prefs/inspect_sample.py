"""Read-only package evidence. Writes only below prefs/; never executes Mach-O."""
from pathlib import Path
import sys, json, struct, hashlib, ast
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT.parent/'tools'))
from evidence import Evidence
PREF='/var/minis/workspace/liquidass-clock/extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs'
MAIN='/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib'
which=sys.argv[1] if len(sys.argv)>1 else 'prefs'
i=Evidence(PREF if which=='prefs' else MAIN,arch='arm64e')
out=ROOT/'evidence'; out.mkdir(exist_ok=True)
(out/(which+'-image.json')).write_text(json.dumps(i.summary(),indent=2))
(out/(which+'-labels.json')).write_text(json.dumps({'cfstrings':{hex(a):v for a,v in i.cfstrings.items()},'symbols':{hex(a):v for a,v in i.symbols.items()},'stubs':{hex(a):v for a,v in i.stubnames.items()},'methods':{hex(a):v for a,v in i.methodnames.items()},'selrefs':{hex(a):v for a,v in i.selrefs.items()}},indent=2))
if len(sys.argv)<3:
 print(json.dumps(i.summary(),indent=2))
else:
 for spec in sys.argv[2:]:
  if spec.startswith('find:'):
   key=spec[5:].lower()
   print(json.dumps({hex(a):s for a,s in {**i.cfstrings,**{a:'|'.join(s) for a,s in i.symbols.items()},**i.methodnames,**i.stubnames}.items() if key in s.lower()},indent=2))
  elif spec.startswith('n:'):
   a=int(spec[2:],0); b=i.read(a,32)
   print(hex(a),i.label(a),'ptr',i.ptr(a),'hex',b.hex(),'f32/f64',struct.unpack('<f',b[:4])[0],struct.unpack('<d',b[:8])[0])
  else:
   p=spec.split(':'); a=int(p[0],0); a,b=(a,int(p[1],0)) if len(p)>1 else i.bounds(a)
   text=f'; {which} arm64e unslid VA [{a:#x},{b:#x}); slice_offset={i.base:#x}\n'+i.disasm(a,b)
   path=out/(which+'-'+hex(a)+'.asm'); path.write_text(text)
   print(path.name,hex(a),hex(b),len(text))
