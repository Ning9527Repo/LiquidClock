#!/usr/bin/env python3
"""Thin Mach-O CPU/minimum-OS/signature page checks; not runtime validation."""
from pathlib import Path
import sys,struct,hashlib,json

def verify(path,arch):
    d=path.read_bytes();assert len(d)>=32 and struct.unpack_from('<I',d)[0]==0xfeedfacf
    cpu,sub=struct.unpack_from('<II',d,4);assert cpu==0x100000c
    assert sub==({'arm64':0,'arm64e':0x80000002}[arch]),(path,hex(sub))
    commands=struct.unpack_from('<I',d,16)[0];at=32;signature=None;minimum=None;loads=[]
    for _ in range(commands):
        cmd,size=struct.unpack_from('<II',d,at);assert size>=8 and at+size<=len(d)
        if cmd==0x1d:signature=struct.unpack_from('<II',d,at+8)
        if cmd==0x32:
            platform,minimum=struct.unpack_from('<II',d,at+8);assert platform==2
        if cmd in (0xc,0x18,0x80000018,0x8000001f,0x80000023):
            offset=struct.unpack_from('<I',d,at+8)[0]
            loads.append(d[at+offset:at+size].split(b'\0')[0].decode())
        at+=size
    assert minimum==0x100000,(path,minimum)
    assert not any('LiquidAss' in x or 'liquidass' in x for x in loads)
    assert signature is not None
    start,length=signature;s=d[start:start+length]
    magic,total,count=struct.unpack_from('>III',s);assert magic==0xfade0cc0 and total<=len(s)
    pages=0
    for i in range(count):
        slot,off=struct.unpack_from('>II',s,12+8*i)
        if slot not in (0,0x1000):continue
        cd=s[off:];assert struct.unpack_from('>I',cd)[0]==0xfade0c02
        hOffset,_,_,n,limit=struct.unpack_from('>IIIII',cd,16)
        hs,ht,_,power=struct.unpack_from('4B',cd,36);assert hs==32 and ht==2
        version=struct.unpack_from('>I',cd,8)[0]
        if not limit and version>=0x20300:limit=struct.unpack_from('>Q',cd,56)[0]
        size=1<<power;assert n==(limit+size-1)//size
        for j in range(n):
            assert hashlib.sha256(d[j*size:min(limit,(j+1)*size)]).digest()==cd[hOffset+j*hs:hOffset+(j+1)*hs],(path,j)
        pages+=n
    assert pages>0
    return {'file':str(path),'sha256':hashlib.sha256(d).hexdigest(),'size':len(d),'subtype':hex(sub),'minimum':'16.0','sha256_code_pages':pages,'dependencies':loads}

if __name__=='__main__':
    result=[]
    for directory in sys.argv[1:]:
        directory=Path(directory);receipt=json.loads((directory/'native-build.json').read_text());arch=receipt['arch']
        for name in ('LiquidClock.dylib','LiquidClockBackboard.dylib','LiquidClockPrefs.bundle/LiquidClockPrefs'):
            path=directory/name;assert hashlib.sha256(path.read_bytes()).hexdigest()==receipt['files'][name]['sha256']
            result.append(verify(path,arch))
    dest=Path('build/verification-native.json');dest.parent.mkdir(exist_ok=True);dest.write_text(json.dumps(result,indent=2)+'\n')
    print('PASS:',len(result),'native Mach-O files, real CPU subtype and SHA256 code pages; not device runtime')
