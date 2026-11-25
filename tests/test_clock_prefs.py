"""Host-side static evidence and native plist generation checks; not UIKit tests."""
from pathlib import Path
import copy, hashlib, importlib.util, json, plistlib, struct, sys, unittest

ROOT=Path(__file__).resolve().parents[1]
PREFS=ROOT/'prefs'
sys.path.insert(0,str(ROOT/'tools'))
from macho import Image

def module(name, path):
    spec=importlib.util.spec_from_file_location(name,path)
    result=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(result)
    return result

GEN=module('clock_prefs_generator',PREFS/'generate_clock_prefs.py')
BUILD=module('clock_prefs_schema_builder',PREFS/'build_schema.py')
EXPECTED={
    'Clock.FPS':('number',None,(1.0,None),0),
    'Clock.Enabled':('boolean',True,None,None),
    'Clock.CustomScaleEnabled':('boolean',True,None,None),
    'Clock.CustomScale':('number',1.0,(0.1,1.5),2),
    'Clock.BezelWidth':('number',9.0,(0.0,80.0),1),
    'Clock.GlassThickness':('number',120.0,(0.0,500.0),1),
    'Clock.RefractionScale':('number',struct.unpack('<f',bytes.fromhex('3333b33f'))[0],(0.0,5.0),2),
    'Clock.RefractiveIndex':('number',struct.unpack('<f',bytes.fromhex('cdcccc3f'))[0],(1.0,5.0),2),
    'Clock.DispersionEnabled':('integer',0,None,None),
    'Clock.DispersionStrength':('number',0.0,(1.0,2.0),1),
    'Clock.Blur':('number',6.0,(0.0,50.0),1),
    'Clock.LightTintColor':('string','#FFFFFF41',None,None),
    'Clock.DarkTintColor':('string','#FFFFFF41',None,None),
    'Lockscreen.Clock.DateFormat.Enabled':('boolean',True,None,None),
    'Lockscreen.Clock.DateFormat.Format':('string','',None,None),
}

class ClockPrefsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.schema=json.loads((PREFS/'prefs-schema.json').read_text())
        cls.bykey={x['key']:x for x in cls.schema['settings']}
        cls.constants=json.loads((PREFS/'evidence/prefs-constants.json').read_text())
        cls.root=plistlib.loads((PREFS/'Root.plist').read_bytes())

    def cells(self, root=None):
        return {x['key']:x for x in (root or self.root)['items'] if 'key' in x}

    def test_schema_is_reproducible(self):
        self.assertEqual(self.schema, BUILD.build())

    def test_generated_plist_is_reproducible(self):
        self.assertEqual(self.root,GEN.make_root(self.schema))
        self.assertEqual((PREFS/'Root.plist').read_bytes(),plistlib.dumps(self.root,fmt=plistlib.FMT_XML,sort_keys=False))

    def test_exact_keys_defaults_types_ranges_and_decimals(self):
        self.assertEqual(set(self.bykey),set(EXPECTED))
        for key,(kind,default,bounds,decimals) in EXPECTED.items():
            with self.subTest(key=key):
                item=self.bykey[key]
                self.assertEqual(item['type'],kind)
                self.assertEqual(item['default'],default)
                if default is not None: self.assertIs(type(item['default']),type(default))
                actual=item['range']
                self.assertEqual(None if actual is None else (actual['min'],actual['max']),bounds)
                self.assertEqual(item['decimals'],decimals)
                self.assertIsNone(item['options'])
                self.assertIsNone(item['step'])
                self.assertTrue(item['evidence']['addresses'])
                self.assertEqual(item['evidence']['architecture'],'arm64e')

    def test_runtime_fps_is_not_guessed(self):
        fps=self.bykey['Clock.FPS']; cell=self.cells()['Clock.FPS']
        self.assertIsNone(fps['default'])
        self.assertIsNone(fps['range']['max'])
        self.assertEqual(fps['default_expression'],GEN.DYNAMIC_FPS)
        self.assertTrue(cell['LACDynamicMaximumFPS'])
        self.assertNotIn('default',cell); self.assertNotIn('max',cell)
        self.assertTrue(self.root['LACUnresolvedRuntimeFPS'])

    def test_targeted_fps_materialization(self):
        for maximum in (60,80,120):
            root=GEN.make_root(self.schema,maximum_fps=maximum)
            cell=self.cells(root)['Clock.FPS']
            self.assertEqual(cell['default'],float(maximum))
            self.assertEqual(cell['max'],float(maximum))
            self.assertNotIn('LACDynamicMaximumFPS',cell)
        for invalid in (0,-1,60.0,True):
            with self.assertRaises(ValueError):GEN.make_root(self.schema,maximum_fps=invalid)

    def test_no_nonclock_cells_and_no_reset_apply_links(self):
        self.assertEqual(set(self.cells()),set(EXPECTED))
        for cell in self.root['items']:
            self.assertIn(cell['cell'],('PSGroupCell','PSSwitchCell','PSSliderCell','PSEditTextCell'))
            self.assertNotIn('action',cell)
            self.assertNotIn('detail',cell)
        for cell in self.cells().values():
            self.assertEqual(cell['defaults'],'dylv.liquidassprefs')
            self.assertEqual(cell['get'],'readPreferenceValue:')
            self.assertEqual(cell['set'],'setPreferenceValue:specifier:')

    def test_filtered_specular_is_not_reintroduced(self):
        self.assertFalse(any('Specular' in key for key in self.cells()))
        excluded=self.schema['excluded'][0]
        self.assertEqual(excluded['key'],'Clock.SpecularMode')
        self.assertEqual(excluded['options'],['none','border','glass'])
        self.assertIn('0x200d8',excluded['evidence'])

    def test_os_specific_tint_fields(self):
        for os_major,expected in ((15,15),(16,13),(26,13)):
            cells=self.cells(GEN.make_root(self.schema,os_major=os_major))
            self.assertEqual(len(cells),expected)
            self.assertEqual('Clock.LightTintColor' in cells,os_major<=15)
        for key in ('Clock.LightTintColor','Clock.DarkTintColor'):
            self.assertEqual(self.cells()[key]['LACMaximumOSMajor'],15)
            self.assertEqual(self.cells()[key]['cell'],'PSEditTextCell')

    def test_gates_keep_fps_separate_from_clock_master(self):
        cells=self.cells()
        self.assertNotIn('LACGates',cells['Clock.FPS'])
        self.assertNotIn('LACGates',cells['Clock.Enabled'])
        self.assertEqual(cells['Clock.CustomScale']['LACGates'],[{'key':'Clock.Enabled','default':True},{'key':'Clock.CustomScaleEnabled','default':True}])
        self.assertEqual(cells['Clock.DispersionStrength']['LACGates'][-1],{'key':'Clock.DispersionEnabled','default':0})
        self.assertEqual(cells['Lockscreen.Clock.DateFormat.Format']['LACGates'],[{'key':'Lockscreen.Clock.DateFormat.Enabled','default':True}])

    def test_date_empty_default_is_not_placeholder(self):
        cell=self.cells()['Lockscreen.Clock.DateFormat.Format']
        self.assertEqual(cell['default'],'')
        self.assertEqual(cell['placeholder'],'EEE MMM d')

    def test_dispersion_zero_default_is_not_clamped_to_range(self):
        cell=self.cells()['Clock.DispersionStrength']
        self.assertEqual((cell['default'],cell['min'],cell['max']),(0.0,1.0,2.0))
        self.assertIs(type(self.cells()['Clock.DispersionEnabled']['default']),int)
        self.assertEqual(self.cells()['Clock.DispersionEnabled']['default'],0)

    def test_unknowns_remain_null(self):
        self.assertTrue(all(v is None for v in self.schema['unknowns'].values()))

    def test_generator_fails_closed_for_unknown_or_nonclock_keys(self):
        for key,value in [('key','Dock.Enabled'),('key','Clock.SpecularMode'),('type',None),('default',None)]:
            changed=copy.deepcopy(self.schema)
            changed['settings'][1][key]=value
            with self.assertRaises(ValueError):GEN.make_root(changed)

    def test_output_path_cannot_escape_prefs(self):
        with self.assertRaises(ValueError):GEN.write_root(ROOT/'not-allowed.plist')

    def test_adapter_is_independent_of_sample_classes(self):
        text=(PREFS/'ClockOnlyPrefsController.m').read_text()
        for token in ('LGPRootListController','LGSurface','dlopen','MSHook','dispatch_once','respring','system('):
            self.assertNotIn(token,text)
        for token in ('maximumFramesPerSecond','LACMaximumOSMajor','clockAllowedKeys','CFPreferencesAppSynchronize','CFNotificationCenterPostNotification'):
            self.assertIn(token,text)

class RawClockEvidenceTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        candidates=[Path('/tmp/liquidass-extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs'),Path('/var/minis/workspace/liquidass-clock/extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs'),PREFS/'evidence/LiquidAssPrefs.arm64e']
        sample=next((p for p in candidates if p.is_file()),None)
        if sample is None: raise unittest.SkipTest('uploaded binary and cached arm64e slice both absent')
        cls.image=Image(sample,arch='arm64e')
        cls.constants=json.loads((PREFS/'evidence/prefs-constants.json').read_text())

    def test_sample_identity_and_architecture(self):
        self.assertEqual(self.image.subtype & 0xffffff,2)
        self.assertEqual(hashlib.sha256(self.image.data).hexdigest(),'e10fd694fc4239451a6661e8b2ddf88e75cd301b23579fb912592c3d3f8bd522')
        if self.image.base:
            self.assertEqual(self.image.base,0xa0000)
            self.assertEqual(self.image.whole_sha,'be1f127297d2a0b8c1cdf0378425ecf7260ef2eccafec177b70051c58d241d3f')

    def test_first_matching_clock_descriptor_and_duplicate(self):
        im=self.image
        self.assertEqual(im.read(0x79308,0x48).hex(),self.constants['descriptor'][0]['hex'])
        self.assertEqual(im.read(0x79350+8,32),im.read(0x79308+8,32))
        self.assertEqual(struct.unpack('<8f',im.read(0x79308+8,32)),(0.0,9.0,120.0,struct.unpack('<f',b'33\xb3?')[0],struct.unpack('<f',b'\xcd\xcc\xcc?')[0],6.0,1.0,0.0))

    def test_raw_number_payloads_are_values_not_isa_comments(self):
        for number in self.constants['numbers']:
            address=int(number['address'],16)
            raw=bytes.fromhex(number['hex'])
            self.assertEqual(self.image.read(address,len(raw)),raw)
            fmt='<q' if number['section']=='__objc_intobj' else '<d'
            self.assertEqual(struct.unpack(fmt,raw[-8:])[0],number['value'])
        expected={0x81bc0:2,0x81bd8:1,0x81bf0:0.0,0x81c00:80.0,0x81c10:500.0,0x81c20:5.0,0x81c30:1.0,0x81c40:50.0,0x81c50:0.1,0x81c60:1.5,0x81c80:2.0}
        numbers={int(n['address'],16):n['value'] for n in self.constants['numbers']}
        for address,value in expected.items():self.assertEqual(numbers[address],value)

    def test_dispersion_and_specular_defaults_use_different_fields(self):
        self.assertEqual(struct.unpack('<f',self.image.read(0x7932c,4))[0],0.0)
        self.assertEqual(struct.unpack('<f',self.image.read(0x79328,4))[0],1.0)
        self.assertGreater(struct.unpack('<f',self.image.read(0x68e90,4))[0],0.0)
        self.assertLess(struct.unpack('<f',self.image.read(0x7932c,4))[0],struct.unpack('<f',self.image.read(0x68e90,4))[0])

    def test_key_instructions_against_original_bytes(self):
        from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
        decoder=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
        for address,mnemonic,operands in [
            (0x1dfb0,'ldr','s8, [x28, #0x14]'),
            (0x1d4c0,'ldr','s0, [x28, #0x10]'),
            (0x1dfec,'bl','#0x5c940'),
            (0x1dfb8,'bl','#0x5c920'),
            (0x1d924,'bl','#0x5c900'),
            (0x275a0,'csel','x8, x9, x8, ne'),
            (0x200d8,'tbnz','w27, #0, #0x200e8'),
            (0x201f0,'mov','w3, #1'),
            (0x20160,'fmov','d1, #1.00000000')]:
            with self.subTest(address=hex(address)):
                ins=list(decoder.disasm(self.image.read(address,4),address))
                self.assertEqual((ins[0].mnemonic,ins[0].op_str),(mnemonic,operands))

if __name__=='__main__':
    unittest.main()
