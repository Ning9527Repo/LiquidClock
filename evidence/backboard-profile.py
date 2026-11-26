#!/usr/bin/env python3
"""Extract narrow ORIGINAL instruction receipts; no execution/loading."""
import hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools'))
from macho import Image
im=Image('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/LiquidAssBackboardd.dylib')
assert im.base==0x94000 and im.whole_sha=='ea891e4347dfcea64703753c9ac39705718ac330d73e6a944a7c8da3416c918e'
ranges=[(0x7784,0x77e8,'filter atom + source/destination texture profile'),
        (0x781c,0x7888,'16/17 context destination profile'),
        (0x7a30,0x7a40,'projection-based destination resolver only >=18'),
        (0x88c4,0x88fc,'intern atom calls'),
        (0x8954,0x89a4,'PAC hook path passes genuine Gaussian context slot to registration'),
        (0x8bec,0x8c08,'context starts with vtable pointer'),
        (0xacc0,0xad84,'two-shape custom render callback incoming registers'),
        (0xeb94,0xebe0,'single-shape render wrapper incoming registers'),
        (0xec70,0xecb4,'single-shape wrapper supplies null second shape'),
        (0xee68,0xee7c,'add_filter(atom, genuine descriptor) call')]
records=[{'va':hex(a),'bytes':im.read(a,b-a).hex(),'meaning':meaning}for a,b,meaning in ranges]
payload=json.dumps(records,separators=(',',':'),sort_keys=True).encode()
receipt={'format':1,'sample_whole_sha256':im.whole_sha,'slice_offset':'0x94000',
    'device_target':{'system':'iOS17.2.1','build':'21C66','source':'delegating agent apple-device observation; not executed by this backend task'},
    'profile':{'filter_atom_member':24,'texture_member':96,'context_destination_member':248},
    'fixtures_are':'sample instruction bytes + separately synthetic QuartzCore scanner fixture, NOT a dump of the device QuartzCore image',
    'instruction_records_sha256':hashlib.sha256(payload).hexdigest(),'instructions':records}
(ROOT/'evidence/backboard-profile.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('WROTE narrow sample receipt:',receipt['instruction_records_sha256'])
