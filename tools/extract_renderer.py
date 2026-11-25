"""Extract text evidence from the supplied binary; does not execute it."""
import argparse,json,hashlib,re
from pathlib import Path
from macho import Image

def extract(path,out):
    image=Image(path)
    out=Path(out);out.mkdir(parents=True,exist_ok=True)
    (out/'image.json').write_text(json.dumps(image.summary(),indent=2)+'\n')
    strings=[]
    for (seg,sec),s in image.sections.items():
        if sec not in ('__cstring','__const'):continue
        data=image.data[s['off']:s['off']+s['size']]
        for m in re.finditer(rb'[^\0]{8,}',data):
            raw=m.group(0)
            try:text=raw.decode('utf8')
            except UnicodeError:continue
            if not (('#include' in text or 'using namespace metal' in text) and ('kernel ' in text or 'fragment ' in text or 'vertex ' in text)):continue
            strings.append((s['addr']+m.start(),raw,text))
    receipt=[]
    for n,(va,raw,text) in enumerate(strings):
        file=f'embedded-{n:02}.metal'
        (out/file).write_bytes(raw)
        receipt.append({'file':file,'va':hex(va),'slice_offset':image.off(va),'whole_file_offset':image.base+image.off(va),'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw),'entrypoints':re.findall(r'\b(?:kernel|fragment|vertex)\s+\w+(?:\s*<[^>]+>)?\s+(\w+)\s*\(',text)})
    (out/'renderer-receipt.json').write_text(json.dumps({'sample_sha256':image.whole_sha,'arch':'arm64e','extracted_strings':receipt,'execution':'none'},indent=2)+'\n')
    print(json.dumps(receipt,indent=2))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('file');p.add_argument('--out',required=True);a=p.parse_args();extract(a.file,a.out)
