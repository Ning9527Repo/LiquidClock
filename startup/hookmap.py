"""Recover MSHookMessageEx call arguments from static arm64e init disassembly."""
from pathlib import Path
import sys,re,json
sys.path.insert(0,str(Path(__file__).resolve().parent))
from inspect_startup import StartupImage,OUT
im=StartupImage()
records=[]
for init in im.init:
    lo,hi=im.bounds(init); regs={}; klass=''
    for pc,z,mn,ops in im.md.disasm_lite(im.read(lo,hi-lo),lo):
        t=ops.split(', ')
        if mn in ('adr','adrp') and len(t)>1:
            try:regs[t[0]]=int(t[1].lstrip('#'),0)
            except:regs.pop(t[0],None)
        elif mn=='add' and len(t)==3 and t[1] in regs and t[2].startswith('#'):
            try:regs[t[0]]=regs[t[1]]+int(t[2][1:],0)
            except:regs.pop(t[0],None)
        elif mn=='mov' and len(t)==2 and t[1] in regs:regs[t[0]]=regs[t[1]]
        elif mn=='ldr':
            m=re.match(r'(\w+), \[(\w+)(?:, #(-?0x[0-9a-f]+|-?\d+))?\]',ops)
            if m and m[2] in regs and isinstance(regs[m[2]],int):
                va=regs[m[2]]+int(m[3] or '0',0)
                val=im.ptr(va)
                if isinstance(val,str):regs[m[1]]=val
                elif isinstance(val,int):regs[m[1]]=val
                else:regs.pop(m[1],None)
        elif mn=='bl' and ops.startswith('#'):
            target=int(ops[1:],0);name=im.label(target)
            if name in ('_objc_getClass','_NSClassFromString'):
                val=regs.get('x0');klass=im.cstr(val) if isinstance(val,int) else ''
                regs['x0']='CLASS_RESULT:'+klass
            elif name=='_MSHookMessageEx':
                rec={'init':hex(init),'call':hex(pc),'class':klass,'selector':str(regs.get('x1','?')),'replacement':hex(regs['x2']) if isinstance(regs.get('x2'),int) else str(regs.get('x2','?')),'orig_imp_slot':hex(regs['x3']) if isinstance(regs.get('x3'),int) else str(regs.get('x3','?'))}
                records.append(rec)
            # ARM64 C ABI clobbers x0-x18, returns x0; retain class data separately.
            keep={k:v for k,v in regs.items() if k in ('x19','x20','x21','x22','x23','x24','x25','x26','x27','x28')}
            if name in ('_objc_getClass','_NSClassFromString'):keep['x0']='CLASS_RESULT:'+klass
            regs=keep
(OUT/'hook-map.json').write_text(json.dumps(records,indent=2)+'\n')
print('hooks',len(records));print(json.dumps(records,indent=2))
