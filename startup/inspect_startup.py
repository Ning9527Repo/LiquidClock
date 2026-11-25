"""Static arm64e startup evidence, never executes or loads sample."""
from pathlib import Path
import sys, json, struct, re
sys.path.insert(0, str(Path(__file__).resolve().parents[1]/'tools'))
from macho import Image
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
OUT=Path(__file__).resolve().parent
SAMPLE='/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib'
class StartupImage(Image):
    def __init__(self):
        super().__init__(SAMPLE, 'arm64e')
        self.fixups={}; self.imports=[]
        for cmd,p,size in self.commands:
            if cmd!=0x80000034: continue
            off,sz=struct.unpack_from('<II',self.data,p+8)
            version,starts,imp,sym,n,fmt,symfmt=struct.unpack_from('<7I',self.data,off)
            for k in range(n):
                v=struct.unpack_from('<I' if fmt in (1,2) else '<Q',self.data,off+imp+k*({1:4,2:8,3:16}[fmt]))[0]
                no=v>>9 if fmt in (1,2) else v>>32
                self.imports.append(self.data[off+sym+no:].split(b'\0')[0].decode())
            base=off+starts
            ns=struct.unpack_from('<I',self.data,base)[0]
            for sg in range(ns):
                si=struct.unpack_from('<I',self.data,base+4+sg*4)[0]
                if not si: continue
                p=base+si
                siz,ps,pfmt,segoff,maxptr,np=struct.unpack_from('<IHHQIH',self.data,p)
                for page in range(np):
                    chain=struct.unpack_from('<H',self.data,p+22+page*2)[0]
                    if chain==0xffff:continue
                    if chain&0x8000:raise ValueError('unsupported multi-chain')
                    loc=segoff+page*ps+chain
                    for _ in range(ps//4):
                        raw=struct.unpack_from('<Q',self.data,loc)[0]
                        if pfmt in (1,9,12):
                            auth=raw>>63;bind=(raw>>62)&1;nxt=(raw>>51)&0x7ff;stride=8
                            val=self.imports[raw&((1<<24)-1 if pfmt==12 else 0xffff)] if bind else (raw&0xffffffff if auth else (raw&((1<<43)-1))|(((raw>>43)&255)<<56))
                        elif pfmt in (2,6):
                            bind=raw>>63;nxt=(raw>>51)&0xfff;stride=4
                            val=self.imports[raw&0xffffff] if bind else (raw&((1<<36)-1))|(((raw>>36)&255)<<56)
                        else:raise ValueError('unsupported ptr '+str(pfmt))
                        self.fixups[loc]=val
                        if not nxt:break
                        loc+=nxt*stride
                    else:raise ValueError('chain loop')
        self.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
        self.sels={};self.cf={};self.stubs={}
        for (seg,name),s in self.sections.items():
            if name=='__objc_selrefs':
                for a in range(s['addr'],s['addr']+s['size'],8):
                    t=self.ptr(a)
                    if isinstance(t,int):self.sels[a]=self.cstr(t)
            if name=='__cfstring':
                for a in range(s['addr'],s['addr']+s['size'],32):
                    t=self.ptr(a+16); n=self.u64(a+24); utf16=self.u32(a+8)&16
                    if isinstance(t,int):self.cf[a]='@'+repr(self.read(t,n*(2 if utf16 else 1)).decode('utf-16le' if utf16 else 'utf8','replace'))
        for (seg,name),s in self.sections.items():
            if name not in ('__objc_stubs','__auth_stubs','__stubs'):continue
            width=32 if name=='__objc_stubs' else 16
            for a in range(s['addr'],s['addr']+s['size'],width):
                regs={}; label=''
                for pc,z,mn,ops in self.md.disasm_lite(self.read(a,width),a):
                    tok=ops.split(', ')
                    if mn=='adrp':regs[tok[0]]=int(tok[1].lstrip('#'),0)
                    elif mn=='add' and len(tok)==3 and tok[1] in regs and tok[2].startswith('#'):regs[tok[0]]=regs[tok[1]]+int(tok[2][1:],0)
                    elif mn=='ldr':
                        m=re.match(r'(\w+), \[(\w+)(?:, #(0x[0-9a-f]+|\d+))?\]',ops)
                        if m and m[2] in regs:
                            va=regs[m[2]]+int(m[3] or '0',0)
                            if m[1]=='x1' and va in self.sels:label='objc_msgSend$'+self.sels[va]
                            else:
                                v=self.ptr(va)
                                if isinstance(v,str):label=v
                if label:self.stubs[a]=label
    def ptr(self,a):
        try:o=self.off(a);return self.fixups.get(o,self.u64(a))
        except ValueError:return None
    def section(self,a):
        return next((name for (seg,name),s in self.sections.items() if s['addr']<=a<s['addr']+s['size']),'')
    def label(self,a):
        if a in self.stubs:return self.stubs[a]
        if a in self.cf:return self.cf[a]
        if a in self.sels:return 'SEL '+self.sels[a]
        if a in self.symbols:return ' | '.join(self.symbols[a])
        if self.section(a) in ('__cstring','__objc_classname','__objc_methname','__objc_methtype'):return repr(self.cstr(a))
        v=self.ptr(a)
        if isinstance(v,str):return '&'+v
        if v in self.symbols:return '&'+' | '.join(self.symbols[v])
        return ''
    def disasm(self,a,end=None):
        if end is None:a,end=self.bounds(a)
        regs={}; out=[f'# arm64e unslid VA 0x{a:x}..0x{end:x}; FAT offset 0x{self.base:x}']
        for pc,z,mn,ops in self.md.disasm_lite(self.read(a,end-a),a):
            tok=ops.split(', ');note=[]
            if mn in ('adr','adrp'):
                regs[tok[0]]=int(tok[1].lstrip('#'),0)
            elif mn=='add' and len(tok)==3 and tok[1] in regs and tok[2].startswith('#'):
                va=regs[tok[1]]+int(tok[2][1:],0);regs[tok[0]]=va
                note=[hex(va),self.label(va)]
            elif mn.startswith(('ldr','str')):
                m=re.match(r'(\w+), \[(\w+)(?:, #(-?0x[0-9a-f]+|-?\d+))?\]',ops)
                if m and m[2] in regs:
                    va=regs[m[2]]+int(m[3] or '0',0);note=[hex(va),self.label(va)]
            elif mn in ('bl','b') and ops.startswith('#'):
                target=int(ops[1:],0);note=[self.label(target)]
                if mn=='bl':
                    for n in range(18):regs.pop('x'+str(n),None)
            out.append(f'{pc:08x} {mn:9} {ops:48}'+(' ; '+' | '.join(x for x in note if x) if any(note) else ''))
        return '\n'.join(out)+'\n'
if __name__=='__main__':
    im=StartupImage()
    if len(sys.argv)>1:
        a=int(sys.argv[1],0);end=int(sys.argv[2],0) if len(sys.argv)>2 else None
        text=im.disasm(a,end);(OUT/f'arm64e-{a:x}.asm').write_text(text);print(text)
    else:
        s=im.summary();s['init_bounds']={hex(a):[hex(x) for x in im.bounds(a)] for a in im.init}
        (OUT/'sample-startup-manifest.json').write_text(json.dumps(s,indent=2)+'\n')
        for a in im.init:
            p=OUT/f'init-{a:x}.asm';p.write_text(im.disasm(a));print(p)
        (OUT/'stub-map.json').write_text(json.dumps({hex(a):v for a,v in im.stubs.items()},indent=2)+'\n')
        print(json.dumps(s['init_bounds'],indent=2))
