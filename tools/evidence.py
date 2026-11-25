"""Annotated arm64 disassembly, including Mach-O chained fixups and objc stubs."""
from macho import Image
import struct,json,argparse
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
from capstone.arm64 import *

class Evidence(Image):
    def __init__(self,path,arch='arm64e'):
        super().__init__(path,arch)
        self.fixups={}; self.imports=[]; self.stubnames={}
        for cmd,p,size in self.commands:
            if cmd!=0x80000034: continue
            off,sz=struct.unpack_from('<II',self.data,p+8)
            version,starts,imp,sym,n,fmt,symfmt=struct.unpack_from('<7I',self.data,off)
            for k in range(n):
                if fmt==1:
                    v=self.u32file(off+imp+k*4); no=v>>9
                elif fmt==2:
                    v=self.u32file(off+imp+k*8); no=v>>9
                elif fmt==3:
                    v=struct.unpack_from('<Q',self.data,off+imp+k*16)[0]; no=v>>32
                else: raise ValueError('unsupported chained import format '+str(fmt))
                name=self.data[off+sym+no:].split(b'\0')[0].decode()
                self.imports.append(name)
            base=off+starts
            ns=self.u32file(base)
            for sg in range(ns):
                si=self.u32file(base+4+sg*4)
                if not si: continue
                p=base+si
                siz,ps,pfmt,segoff,maxptr,np=struct.unpack_from('<IHHQIH',self.data,p)
                if pfmt not in (1,9,12,2,6): raise ValueError('unsupported pointer format '+str(pfmt))
                for page in range(np):
                    chain=struct.unpack_from('<H',self.data,p+22+page*2)[0]
                    if chain==0xffff: continue
                    if chain&0x8000: raise ValueError('multi-chain page needs explicit implementation')
                    loc=segoff+page*ps+chain
                    for _ in range(ps//4):
                        raw=self.u64file(loc)
                        if pfmt in (1,9,12):
                            auth=raw>>63; bind=(raw>>62)&1; nxt=(raw>>51)&0x7ff
                            if bind:
                                ordinal=raw&((1<<24)-1 if pfmt==12 else 0xffff)
                                self.fixups[loc]=('bind',self.imports[ordinal],pfmt)
                            else:
                                target=raw&0xffffffff if auth else (raw&((1<<43)-1))|(((raw>>43)&255)<<56)
                                self.fixups[loc]=('rebase',target,pfmt)
                            stride=8
                        else:
                            bind=raw>>63; nxt=(raw>>51)&0xfff
                            if bind:
                                self.fixups[loc]=('bind',self.imports[raw&0xffffff],pfmt)
                            else:
                                target=(raw&((1<<36)-1))|(((raw>>36)&255)<<56)
                                self.fixups[loc]=('rebase',target,pfmt)
                            stride=4
                        if not nxt: break
                        loc+=nxt*stride
                    else: raise ValueError('nonterminating chain')
        self.md=Cs(CS_ARCH_ARM64,CS_MODE_ARM); self.md.detail=True
        self.selrefs={}
        sec=self.sections.get(('__DATA','__objc_selrefs'))
        if sec:
            for a in range(sec['addr'],sec['addr']+sec['size'],8):
                t=self.ptr(a)
                if isinstance(t,int):
                    try:self.selrefs[a]=self.cstr(t)
                    except ValueError:pass
        self.cfstrings={}
        sec=self.sections.get(('__DATA_CONST','__cfstring'))
        if sec:
            for a in range(sec['addr'],sec['addr']+sec['size'],32):
                t=self.ptr(a+16); n=self.u64(a+24)
                if isinstance(t,int):
                    try:
                        dat=self.read(t,n*2 if self.u32(a+8)&16 else n)
                        s=dat.decode('utf-16le' if self.u32(a+8)&16 else 'utf8','replace')
                        self.cfstrings[a]='@'+repr(s)
                    except (ValueError,OverflowError):pass
        self.classnames={}
        for a,names in self.symbols.items():
            for name in names:
                if name.startswith('_OBJC_CLASS_$_'):self.classnames[a]=name[14:]
        self.methodnames={}
        sec=self.sections.get(('__TEXT','__objc_methlist'))
        if sec:
            for a in range(sec['addr'],sec['addr']+sec['size']-8,4):
                flags,n=struct.unpack('<II',self.read(a,8))
                if flags&0xffff0000 not in (0x80000000,0xc0000000) or not 0<n<300:continue
                if flags&0xffff not in (12,0):continue
                try:
                    for k in range(n):
                        q=a+8+12*k
                        no,ty,im=struct.unpack('<iii',self.read(q,12))
                        na=q+no
                        if not flags&0x40000000:na=self.ptr(na)
                        s=self.cstr(na)
                        self.methodnames[q+8+im]=s
                except (ValueError,struct.error):pass
        self.scan_stubs()
    def u32file(self,off): return struct.unpack_from('<I',self.data,off)[0]
    def u64file(self,off): return struct.unpack_from('<Q',self.data,off)[0]
    def ptr(self,va):
        o=self.off(va)
        f=self.fixups.get(o)
        return f[1] if f else self.u64(va)
    def label(self,va):
        if va in self.stubnames:return self.stubnames[va]
        if va in self.symbols:return '|'.join(self.symbols[va])
        if va in self.methodnames:return '-'+self.methodnames[va]
        if va in self.cfstrings:return self.cfstrings[va]
        if va in self.classnames:return self.classnames[va]
        if va in self.selrefs:return 'SEL '+self.selrefs[va]
        for (seg,s),sec in self.sections.items():
            if sec['addr']<=va<sec['addr']+sec['size'] and s in ('__cstring','__objc_classname','__objc_methname','__objc_methtype'):
                return repr(self.cstr(va))
        if self.offok(va):
            v=self.ptr(va)
            if isinstance(v,str):return '&'+v
            if v in self.classnames:return '&'+self.classnames[v]
        return ''
    def offok(self,va):
        try:self.off(va);return True
        except ValueError:return False
    def scan_stubs(self):
        for (seg,name),sec in self.sections.items():
            if name not in ('__objc_stubs','__auth_stubs','__stubs'):continue
            width=32 if name=='__objc_stubs' else 16
            if name=='__auth_stubs':width=16
            for a in range(sec['addr'],sec['addr']+sec['size'],width):
                regs={}; slot=None;sel=None
                for ins in self.md.disasm(self.read(a,width),a):
                    op=ins.operands
                    if ins.id==ARM64_INS_ADRP:regs[ins.reg_name(op[0].reg)]=op[1].imm
                    elif ins.id==ARM64_INS_ADD and len(op)==3 and op[2].type==ARM64_OP_IMM:
                        r=ins.reg_name(op[1].reg)
                        if r in regs:regs[ins.reg_name(op[0].reg)]=regs[r]+op[2].imm
                    elif ins.id==ARM64_INS_LDR and len(op)==2 and op[1].type==ARM64_OP_MEM:
                        r=ins.reg_name(op[1].mem.base)
                        if r in regs:
                            va=regs[r]+op[1].mem.disp
                            if ins.reg_name(op[0].reg)=='x1':sel=self.selrefs.get(va)
                            elif self.offok(va):
                                v=self.ptr(va)
                                if isinstance(v,str):slot=v
                if sel:self.stubnames[a]='objc_msgSend$'+sel
                elif slot:self.stubnames[a]=slot
    def disasm(self,start,end=None):
        if end is None:start,end=self.bounds(start)
        regs={};out=[]
        for ins in self.md.disasm(self.read(start,end-start),start):
            note=[];op=ins.operands
            if ins.id==ARM64_INS_ADRP:regs[ins.reg_name(op[0].reg)]=op[1].imm
            elif ins.id==ARM64_INS_ADD and len(op)==3 and op[2].type==ARM64_OP_IMM:
                r=ins.reg_name(op[1].reg)
                if r in regs:
                    va=regs[r]+op[2].imm;regs[ins.reg_name(op[0].reg)]=va
                    s=self.label(va)
                    if s:note.append(s)
            elif ins.id in (ARM64_INS_LDR,ARM64_INS_LDRSW,ARM64_INS_LDRB) and len(op)>1 and op[1].type==ARM64_OP_MEM:
                r=ins.reg_name(op[1].mem.base)
                if r in regs:
                    va=regs[r]+op[1].mem.disp;s=self.label(va)
                    if s:note.append(s)
                    if ins.reg_name(op[0].reg)=='x2':note.append('x2 <- '+s if s else 'x2 memory '+hex(va))
            elif ins.id in (ARM64_INS_BL,ARM64_INS_B) and op[0].type==ARM64_OP_IMM:
                s=self.label(op[0].imm)
                if s:note.append(s)
                if ins.id==ARM64_INS_BL:
                    for r in ('x0','x1','x2','x3','x4','x5','x6','x7','x8','x9','x10','x11','x12','x13','x14','x15','x16','x17'):regs.pop(r,None)
            out.append(f'{ins.address:08x} {ins.mnemonic:9} {ins.op_str:45}'+(' ; '+' | '.join(note) if note else ''))
        return '\n'.join(out)+'\n'

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('file');ap.add_argument('--arch',default='arm64e');ap.add_argument('--at');ap.add_argument('--end');ap.add_argument('--summary',action='store_true');a=ap.parse_args()
    i=Evidence(a.file,a.arch)
    if a.summary:print(json.dumps(i.summary(),indent=2))
    if a.at:print(i.disasm(int(a.at,0),int(a.end,0) if a.end else None))
