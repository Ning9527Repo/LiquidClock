"""Static evidence only. Run from this directory with PYTHONDONTWRITEBYTECODE=1.
Only reads the supplied Mach-O, never loads/executes it. No source baseline.
"""
import sys, json, struct, hashlib
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parent.parent/'tools'))
from evidence import Evidence
OUT=Path(__file__).resolve().parent
BIN='/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib'
i=Evidence(BIN)
(OUT/'image-summary.json').write_text(json.dumps(i.summary(),indent=2))
# Full windows retained to reproduce excerpts; future unknown callees can be requested
# through command line addresses without initializing the image once per function.
ranges=[('state-display',0x5ffc4,0x60184),('state-persist-stage',0x62c10,0x6342c),
 ('state-drag',0x6342c,0x63634),('font-init',0x689dc,0x698b8),
 ('font-layout',0x698b8,0x6a1cc),('font-edit-weight',0x6a1cc,0x6a7e0),
 ('font-change-mode-detents',0x6a7e0,0x6adc8),('font-change-save',0x6adc8,0x6af38),
 ('lite-stage',0x6b1a4,0x6b304),('lite-font',0x6b304,0x6b5a8),
 ('lite-load',0x6b694,0x6c550),('lite-resize',0x6cb88,0x6cdf8),
 ('lite-show-font',0x6cdf8,0x6d098),('lite-done',0x6d098,0x6d290),
 ('lite-cancel',0x6d290,0x6d320),('lite-finish',0x6d320,0x6d6cc)]
if len(sys.argv)>1:
 ranges=[('extra-'+a, *i.bounds(int(a,0))) for a in sys.argv[1:]]
for name,a,b in ranges:
 text=f'; {name} arm64e unslid VA [{a:#x},{b:#x})\n'+i.disasm(a,b)
 (OUT/(name+'.asm')).write_text(text)
 print(name,hex(a),hex(b),len(text))
# Numeric/CFString/symbol indexes for independent operand interpretation.
(OUT/'labels.json').write_text(json.dumps({'cfstrings':{hex(a):v for a,v in i.cfstrings.items()},
 'symbols':{hex(a):v for a,v in i.symbols.items()},
 'stubs':{hex(a):v for a,v in i.stubnames.items()}},indent=2))
# Cache decoder metadata, not the capstone object, for fast follow-up read-only calls.
import pickle
state={k:v for k,v in i.__dict__.items() if k!='md'}
(OUT/'evidence-cache.pickle').write_bytes(pickle.dumps(state))
