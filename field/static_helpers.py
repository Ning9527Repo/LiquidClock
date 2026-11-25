"""Static symbol helpers for the supplied arm64e slices only."""
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from dump_arm64e import image

def imports(im):
    so,n,st,ss=im.symtab
    names=[]
    for i in range(n):
        si=struct.unpack_from('<I',im.data,so+i*16)[0]
        names.append(im.data[st+si:st+ss].split(b'\0')[0].decode('utf8','replace'))
    cmd=next(p for c,p,s in im.commands if c==0xb)
    tab,ntab=struct.unpack_from('<II',im.data,cmd+56)
    inds=struct.unpack_from('<'+str(ntab)+'I',im.data,tab)
    res={}
    for (seg,sec),s in im.sections.items():
        if s['flags']&255 not in (6,7,8): continue
        r1,r2=struct.unpack_from('<II',im.data,s['header']+68)
        stride=r2 if s['flags']&255==8 else 8
        for k,a in enumerate(range(s['addr'],s['addr']+s['size'],stride)):
            ix=inds[r1+k]
            if ix<len(names):res[a]=names[ix]
    return res

def show_imports(n):
    im=image(n); names=imports(im)
    for a,s in sorted(names.items()):print(hex(a),s)

if __name__=='__main__':
    import sys
    show_imports(sys.argv[1] if len(sys.argv)>1 else 'main')
