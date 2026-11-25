"""Read-only sample startup audit. Writes only beside this script; never loads sample."""
import sys, struct, json, re, bisect, hashlib
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path('/var/minis/workspace/liquidass-clock/sample-reconstruction')
OUT=ROOT/'isolation'
sys.path.insert(0,str(ROOT/'startup'))
import inspect_startup as si
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
B=Path('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries')
class AuditImage(si.StartupImage):
    def __init__(self,name):
        si.SAMPLE=str(B/name)
        super().__init__()
        self.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
        self.md.detail=True
        # Prefer the selector in an ObjC stub over the later msgSend GOT import.
        for (sg,sn),s in self.sections.items():
            if sn!='__objc_stubs':continue
            for a in range(s['addr'],s['addr']+s['size'],32):
                regs={};sel=''
                for pc,z,mn,op in self.md.disasm_lite(self.read(a,32),a):
                    t=op.split(', ')
                    if mn=='adrp':regs[t[0]]=int(t[1][1:],0)
                    elif mn=='ldr':
                        m=re.match(r'(\w+), \[(\w+)(?:, #(0x[0-9a-f]+|\d+))?\]',op)
                        if m and m[2] in regs:
                            va=regs[m[2]]+int(m[3] or '0',0)
                            if m[1]=='x1' and va in self.sels:sel=self.sels[va]
                if sel:self.stubs[a]='objc_msgSend$'+sel
        self.classes=self.objc_classes()
        self.imp_names={}
        for c in self.classes:
            for mode in ('class_methods','instance_methods'):
                for m in c[mode]:self.imp_names[m['imp']]=('+' if mode=='class_methods' else '-')+'['+c['name']+' '+m['name']+']'
    def method_list(self,a):
        if not a:return []
        flags,count=struct.unpack('<II',self.read(a,8));result=[]
        if count>10000:raise ValueError('method count')
        small=bool(flags&0x80000000);direct=bool(flags&0x40000000)
        size=flags&0xfffc
        if size!=(12 if small else 24):raise ValueError('method entry size '+hex(flags))
        for i in range(count):
            e=a+8+i*size
            if small:
                n,t,im=struct.unpack('<iii',self.read(e,12));n=e+n;t=e+4+t;im=e+8+im
                if not direct:n=self.ptr(n)
            else:n,t,im=self.ptr(e),self.ptr(e+8),self.ptr(e+16)
            result.append({'entry':hex(e),'name':self.cstr(n),'types':self.cstr(t),'imp':hex(im)})
        return result
    def objc_classes(self):
        result=[]
        for (sg,sn),s in self.sections.items():
            if sn!='__objc_classlist':continue
            for a in range(s['addr'],s['addr']+s['size'],8):
                cl=self.ptr(a);meta=self.ptr(cl);ro=self.ptr(cl+32)&~7;mr=self.ptr(meta+32)&~7
                result.append({'list_slot':hex(a),'class_va':hex(cl),'metaclass_va':hex(meta),'ro_va':hex(ro),'name':self.cstr(self.ptr(ro+24)),'superclass':self.ptr(cl+8),'class_methods':self.method_list(self.ptr(mr+32)),'instance_methods':self.method_list(self.ptr(ro+32))})
        return result
    def label(self,a):
        if hasattr(self,'imp_names') and hex(a) in self.imp_names:return self.imp_names[hex(a)]
        return super().label(a)
    def shortlabel(self,a):
        n=self.label(a)
        return n if n else hex(a)
    def saveasm(self,a,prefix):
        text=self.disasm(a)
        p=OUT/(prefix+'-'+hex(a)+'.asm');p.write_text(text)
        return p.name
    def scan(self,fn):
        lo,hi=self.bounds(fn);regs={};calls=[];hooks=[];refs=[]
        for pc,z,mn,op in self.md.disasm_lite(self.read(lo,hi-lo),lo):
            t=op.split(', ')
            try:
                if mn in ('adr','adrp'):regs[t[0]]=int(t[1].lstrip('#'),0)
                elif mn in ('add','sub') and len(t)==3 and isinstance(regs.get(t[1]),int) and t[2].startswith('#'):
                    regs[t[0]]=regs[t[1]]+(1 if mn=='add' else -1)*int(t[2][1:],0)
                    label=self.label(regs[t[0]])
                    if label and not label.startswith('SEL '):refs.append({'va':hex(pc),'target':hex(regs[t[0]]),'label':label})
                elif mn=='mov' and len(t)==2:
                    dst='x'+t[0][1:] if t[0].startswith('w') else t[0]
                    if t[1].startswith('#'):regs[dst]=int(t[1][1:],0)
                    elif t[1]=='xzr' or t[1]=='wzr':regs[dst]=0
                    elif t[1] in regs:regs[dst]=regs[t[1]]
                    else:regs.pop(dst,None)
                elif mn in ('ldr','ldrsw','ldrb'):
                    m=re.match(r'(\w+), \[(\w+)(?:, #(-?0x[0-9a-f]+|-?\d+))?\]',op)
                    if m and isinstance(regs.get(m[2]),int):
                        va=regs[m[2]]+int(m[3] or '0',0)
                        if mn=='ldr':regs[m[1]]=self.ptr(va)
                        else:regs.pop(m[1],None)
                elif mn in ('bl','b') and op.startswith('#'):
                    dst=int(op[1:],0)
                    if mn=='b' and lo<=dst<hi:continue
                    name=self.shortlabel(dst);args={k:regs[k] for k in ('x0','x1','x2','x3','x4','x5','x6') if k in regs}
                    calls.append({'va':hex(pc),'target':hex(dst),'name':name,'args':args,'kind':mn})
                    rv=None
                    if name in ('_objc_getClass','_objc_getMetaClass','_NSClassFromString'):
                        a=regs.get('x0');c=self.cstr(a) if name!='_NSClassFromString' else self.cf.get(a,'?')[1:]
                        if name=='_NSClassFromString' and isinstance(a,int):
                            p=self.ptr(a+16);c=self.cstr(p) if isinstance(p,int) else '?'
                        rv=('META:' if name=='_objc_getMetaClass' else 'CLASS:')+c
                    elif name in ('_sel_registerName','_NSSelectorFromString'):
                        a=regs.get('x0')
                        if name=='_NSSelectorFromString':a=self.ptr(a+16)
                        rv=a
                    elif name=='_MSHookMessageEx':
                        sel=regs.get('x1');sname=self.cstr(sel) if isinstance(sel,int) else '?'
                        hooks.append({'init':hex(fn),'call':hex(pc),'class':regs.get('x0','?'),'selector_name':sname,'selector_va':hex(sel) if isinstance(sel,int) else None,'replacement':hex(regs['x2']) if isinstance(regs.get('x2'),int) else '?','orig_imp_slot':hex(regs['x3']) if isinstance(regs.get('x3'),int) else '?'})
                    elif name in ('_objc_retainAutoreleasedReturnValue','_objc_retain','_objc_autoreleaseReturnValue'):rv=regs.get('x0')
                    regs={k:v for k,v in regs.items() if k.startswith('x') and k[1:].isdigit() and 19<=int(k[1:])<=28}
                    if rv is not None:regs['x0']=rv
            except (ValueError,TypeError,KeyError):
                # Unknown values remain unknown, not guessed; unresolved hooks block certification.
                if t and t[0].startswith(('x','w')) and mn not in ('cmp','str','strb'):regs.pop(t[0],None)
        return {'start':hex(fn),'end':hex(hi),'calls':calls,'hooks':hooks,'references':refs}

def writejson(name,data):
    (OUT/name).write_text(json.dumps(data,indent=2,ensure_ascii=False)+'\n')

def run():
    allres={}
    for key,name in [('main','liquidass.dylib'),('backboard','LiquidAssBackboardd.dylib')]:
        im=AuditImage(name);res=im.summary();res['objc_classes']=im.classes
        res['objc_lifecycle']=[{'class':c['name'],'method':m['name'],'imp':m['imp'],'kind':k} for c in im.classes for k in ('class_methods','instance_methods') for m in c[k] if m['name'] in ('load','initialize')]
        res['ctors']=[]
        for a in im.init:
            q=im.scan(a);q['asm']=im.saveasm(a,key+'-ctor');res['ctors'].append(q)
        res['extra_functions']=[]
        starts=[0x74400,0x74a40,0x74af0,0x74be8,0x74c78,0x74d08,0x74d98,0x74e28,0x75114,0x75240,0x75348,0x754a0,0x6e6bc,0x98810,0x97e34,0xa1dc4,0xa1f54] if key=='main' else [0x41d4,0x45f0,0x7554,0x8168,0xa334,0xed6c,0xfacc,0x27704]
        for a in starts:
            q=im.scan(a);q['asm']=im.saveasm(a,key+'-extra');res['extra_functions'].append(q)
        writejson(key+'-startup-direct.json',res);allres[key]=res
        print(key,im.whole_sha,hex(im.base),'init',','.join(hex(a) for a in im.init),'classes',len(im.classes),'lifecycle',res['objc_lifecycle'])
        for q in res['ctors']:
            classes=sorted(set(str(x['class']) for x in q['hooks']))
            others=[c['name'] for c in q['calls'] if not c['name'].startswith('objc_msgSend') and c['name'] not in ('_objc_release','_objc_retain','_objc_retainAutoreleasedReturnValue','_MSHookMessageEx','_objc_getClass','_objc_getMetaClass','_sel_registerName','_NSClassFromString')]
            print(q['start'],'hooks',len(q['hooks']),'classes',','.join(classes),'other',','.join(others))
    return allres
if __name__=='__main__':run()
