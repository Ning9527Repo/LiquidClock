#!/usr/bin/env python3
"""Offline tests; executes our HOST tests, never the uploaded sample."""
from pathlib import Path
import hashlib,json,os,subprocess,sys,tempfile,unittest
ROOT=Path(__file__).resolve().parents[1]
# iSH shared workspace may be noexec. Executables are temporary host-only files.
_TEMP=tempfile.TemporaryDirectory(prefix='lac-backboard-')
OUT=Path(_TEMP.name)
SAMPLE=Path('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/LiquidAssBackboardd.dylib')
def run(*args):
    subprocess.run(args,cwd=ROOT,check=True)
class Backboard(unittest.TestCase):
    def test_01_host_core_and_scanner(self):
        OUT.mkdir(exist_ok=True)
        for name in ['field/clock_field_reader.c','src/clock/NGClockFieldCodec.c']:
            run('clang','-std=c11','-Wall','-Wextra','-Werror','-c',name,'-o',str(OUT/(Path(name).name+'.host.o')))
        flags=['clang++','-std=c++17','-Wall','-Wextra','-Werror']
        run(*flags,'tests/test_backboard_core.cpp','src/backboard/LACClockData.cpp','src/backboard/LACQCScanner.cpp',
            str(OUT/'clock_field_reader.c.host.o'),str(OUT/'NGClockFieldCodec.c.host.o'),'-o',str(OUT/'core-host'))
        run(str(OUT/'core-host'))
        run(*flags,'tests/test_backboard_scanner.cpp','src/backboard/LACQCScanner.cpp','-o',str(OUT/'scanner-host'))
        run(str(OUT/'scanner-host'))
    def test_02_sample_profile_instruction_bytes(self):
        if not SAMPLE.exists():
            if os.environ.get('LAC_REQUIRE_UPLOADED_SAMPLE')=='1':
                self.fail('required uploaded sample is absent')
            self.skipTest('raw uploaded sample absent: original byte identity NOT verified on this machine')
        sys.path.insert(0,str(ROOT/'tools'))
        from macho import Image
        image=Image(SAMPLE)
        self.assertEqual(image.whole_sha,'ea891e4347dfcea64703753c9ac39705718ac330d73e6a944a7c8da3416c918e')
        self.assertEqual(image.base,0x94000)
        receipt=json.loads((ROOT/'evidence/backboard-profile.json').read_text())
        for item in receipt['instructions']:
            raw=bytes.fromhex(item['bytes'])
            self.assertEqual(image.read(int(item['va'],0),len(raw)),raw,item['meaning'])
        # Exact producer of the finite 17 profile, not a guessed global address.
        for address,word in [(0x7788,0x52800309),(0x77ac,0x52800b09),(0x77b0,0x52800c08),
                             (0x77b4,0xf100454a),(0x77b8,0x1a89a10b),(0x7880,0xd2801f08),
                             (0x7a34,0xf1004908),(0x7a38,0x540002cb)]:
            self.assertEqual(image.u32(address),word,hex(address))
        self.assertEqual(image.u32(0xee74),0xf94017e1) # add_filter x1=context
        self.assertEqual(image.u32(0xee78),0xd63f091f) # zero-context PAC function call
    def test_06_committed_narrow_fixture_receipt(self):
        receipt=json.loads((ROOT/'evidence/backboard-profile.json').read_text())
        self.assertEqual(receipt['sample_whole_sha256'],'ea891e4347dfcea64703753c9ac39705718ac330d73e6a944a7c8da3416c918e')
        self.assertEqual(receipt['profile'],{'filter_atom_member':24,'texture_member':96,'context_destination_member':248})
        records=receipt['instructions']
        payload=json.dumps(records,separators=(',',':'),sort_keys=True).encode()
        self.assertEqual(hashlib.sha256(payload).hexdigest(),receipt['instruction_records_sha256'])
        self.assertEqual(receipt['instruction_records_sha256'],'a2d1d923d986dfbedb349757f67a0750739f3a8ad3364a7df4fd1bbe2bfb4cb7')
        def word(va):
            for item in records:
                start=int(item['va'],0);raw=bytes.fromhex(item['bytes'])
                if start<=va and va+4<=start+len(raw):return int.from_bytes(raw[va-start:va-start+4],'little')
            self.fail('fixture missing '+hex(va))
        self.assertEqual(word(0x77b0),0x52800c08) # texture member0x60
        self.assertEqual(word(0x7788),0x52800309) # atom member0x18
        self.assertEqual(word(0x7880),0xd2801f08) # context member0xf8
        self.assertEqual(word(0xee78),0xd63f091f) # blraaz x8
        self.assertIn('NOT a dump',receipt['fixtures_are'])
    def test_03_original_clock_shader_contract(self):
        shader=(ROOT/'renderer/ClockOnly.metal').read_bytes()
        self.assertEqual(hashlib.sha256(shader).hexdigest(),'4f62835a5a313c39614cda43602028fa7688ac5422c3c04441463917fb2f358c')
        text=shader.decode();self.assertIn('ningClockVertex',text);self.assertIn('ningClockFragment',text)
        self.assertIn('[[texture(0)]]',text);self.assertIn('[[texture(1)]]',text);self.assertIn('[[buffer(0)]]',text)
    def test_04_registration_is_explicit_and_clock_only(self):
        source=(ROOT/'src/backboard/LACClockBackboard.mm').read_text()
        self.assertNotIn('__attribute__((constructor))',source)
        self.assertNotIn('dlopen(',source)
        self.assertIn('profile.destination',source)
        self.assertIn('for(unsigned i=0;i<18;i++)add(routes[i].atom',source)
        self.assertNotIn('dylv.liquidglass.',(ROOT/'src/backboard/LACClockFilterContract.h').read_text())
    def test_05_gpu_completion_not_encode_ack(self):
        source=(ROOT/'src/backboard/LACClockMetal.mm').read_text()
        self.assertIn('MTLCommandBufferStatusCompleted',source)
        self.assertEqual(source.count('LACClockAcknowledgeCompleted('),1)
        self.assertLess(source.index('addCompletedHandler:'),source.index('LACClockAcknowledgeCompleted('))
        self.assertNotIn('[command commit]',source)
        self.assertNotIn('waitUntilCompleted',source)
if __name__=='__main__':unittest.main(verbosity=2)
