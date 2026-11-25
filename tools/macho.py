"""Read-only Mach-O/FAT evidence reader; never loads the input image."""
from pathlib import Path
import struct, hashlib

class Image:
    def __init__(self, path, arch='arm64e'):
        self.path = Path(path)
        whole = self.path.read_bytes()
        self.whole_sha = hashlib.sha256(whole).hexdigest()
        self.base = 0
        if whole[:4] == bytes.fromhex('cafebabe'):
            count, = struct.unpack_from('>I', whole, 4)
            choices=[]
            for i in range(count):
                cpu, sub, off, size, align = struct.unpack_from('>IIIII', whole, 8+i*20)
                choices.append((sub,off,size))
            wanted = 2 if arch == 'arm64e' else 0
            found = next((c for c in choices if c[0]&0xffffff==wanted),None)
            if found is None: raise ValueError('requested arch absent')
            sub,self.base,size=found
            self.data=whole[self.base:self.base+size]
        else: self.data=whole
        b=self.data
        magic,cpu,sub,ft,ncmd,szcmd,flags,res=struct.unpack_from('<8I',b,0)
        if magic!=0xfeedfacf: raise ValueError('not Mach-O64 LE')
        self.subtype=sub; self.commands=[]; self.sections={}; self.segments=[]
        self.libraries=[]; self.symbols={}; self.init=[]; self.function_starts=[]
        p=32
        for _ in range(ncmd):
            cmd,sz=struct.unpack_from('<II',b,p)
            self.commands.append((cmd,p,sz))
            if cmd==0x19:
                name=b[p+8:p+24].split(b'\0')[0].decode()
                va,vs,fo,fs,mx,ip,ns,sgf=struct.unpack_from('<4Q4I',b,p+24)
                self.segments.append((name,va,vs,fo,fs))
                for j in range(ns):
                    q=p+72+j*80
                    sect=b[q:q+16].split(b'\0')[0].decode()
                    seg=b[q+16:q+32].split(b'\0')[0].decode()
                    a,s,o,al,ro,nr,fl,r1,r2,r3=struct.unpack_from('<QQ8I',b,q+32)
                    self.sections[(seg,sect)]={'addr':a,'size':s,'off':o,'flags':fl,'header':q}
            elif cmd==2: self.symtab=struct.unpack_from('<4I',b,p+8)
            elif cmd in (0xc,0x80000018,0x8000001f,0x80000023):
                no=struct.unpack_from('<I',b,p+8)[0]
                self.libraries.append(b[p+no:p+sz].split(b'\0')[0].decode())
            p+=sz
        if hasattr(self,'symtab'):
            so,n,st,ss=self.symtab
            for i in range(n):
                si,t,se,de,va=struct.unpack_from('<IBBHQ',b,so+16*i)
                if si and va:
                    name=b[st+si:st+ss].split(b'\0')[0].decode('utf-8','replace')
                    self.symbols.setdefault(va,[]).append(name)
        textbase=next(v for n,v,_,_,_ in self.segments if n=='__TEXT')
        for cmd,p,sz in self.commands:
            if cmd==0x26:
                off,size=struct.unpack_from('<II',b,p+8); pos=off; acc=textbase
                while pos<off+size:
                    val=0; sh=0
                    while True:
                        c=b[pos]; pos+=1; val|=(c&127)<<sh; sh+=7
                        if not c&128: break
                    if not val: break
                    acc+=val; self.function_starts.append(acc)
        for (seg,sec),s in self.sections.items():
            if sec=='__init_offsets':
                self.init=[textbase+v[0] for v in struct.iter_unpack('<I',b[s['off']:s['off']+s['size']])]
    def off(self,va):
        for _,a,vs,o,fs in self.segments:
            if a<=va<a+fs: return va-a+o
        raise ValueError('unmapped VA '+hex(va))
    def read(self,va,size):
        p=self.off(va); return self.data[p:p+size]
    def u64(self,va): return struct.unpack('<Q',self.read(va,8))[0]
    def u32(self,va): return struct.unpack('<I',self.read(va,4))[0]
    def cstr(self,va):
        p=self.off(va)
        end=self.data.find(b'\0',p,min(len(self.data),p+131072))
        if end<0: raise ValueError('unterminated string at '+hex(va))
        return self.data[p:end].decode('utf8','replace')
    def bounds(self,va):
        starts=self.function_starts
        for i,a in enumerate(starts):
            if a<=va and (i+1==len(starts) or va<starts[i+1]):
                return a,starts[i+1] if i+1<len(starts) else a+4
        return va,va+4
    def summary(self):
        return {'path':str(self.path),'sha256':self.whole_sha,'slice_offset':self.base,
                'slice_sha256':hashlib.sha256(self.data).hexdigest(),'subtype':hex(self.subtype),
                'init_offsets':[hex(x) for x in self.init],'functions':len(self.function_starts),
                'sections':{a+','+b:s for (a,b),s in self.sections.items()},'dependencies':self.libraries}
