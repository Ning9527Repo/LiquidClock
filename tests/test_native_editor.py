#!/usr/bin/env python3
"""Offline host checks; no iOS linking, package build, install, or sample loading.
Run: python3 tests/test_native_editor.py [-v]
Override SDK with LACE_IOS_SDK; sample font comparison runs when extract exists.
"""
import hashlib, importlib.util, json, os, re, shutil, struct, subprocess, tempfile, unittest
from datetime import datetime, timezone
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def default_sdk():
    override=os.environ.get('LACE_IOS_SDK')
    if override and Path(override).is_dir(): return Path(override)
    if shutil.which('xcrun'):
        try:
            return Path(subprocess.check_output(['xcrun','--sdk','iphoneos','--show-sdk-path'],text=True).strip())
        except (OSError,subprocess.CalledProcessError): pass
    return Path('/tmp/sdk/iPhoneOS16.5.sdk')
SDK=default_sdk()
REPORT={'target':'arm64e-apple-ios16.0','sdk':str(SDK),'device_execution':False,
        'commands':[],'objects':[],'fonts':[],'core_runs':[]}
HEADER=ROOT/'src/editor/LACEState.hpp'

def command(args,**kwargs):
    result=subprocess.run([str(x) for x in args],text=True,capture_output=True,cwd=ROOT,**kwargs)
    REPORT['commands'].append({'argv':[str(x) for x in args],'returncode':result.returncode,
                               'stdout':result.stdout,'stderr':result.stderr})
    if result.returncode:raise AssertionError(result.stdout+result.stderr)
    return result.stdout

def macho(path):
    data=path.read_bytes();magic,cpu,sub,kind,ncmd,szcmd,flags,res=struct.unpack_from('<8I',data)
    assert magic==0xfeedfacf and cpu==0x100000c and sub&0xffffff==2 and kind==1,(magic,cpu,sub,kind)
    pos=32;build=None;symtab=None
    for _ in range(ncmd):
        cmd,size=struct.unpack_from('<II',data,pos)
        if cmd==0x32:build=struct.unpack_from('<4I',data,pos+8)
        if cmd==2:symtab=struct.unpack_from('<4I',data,pos+8)
        pos+=size
    assert build and build[0]==2 and build[1]==0x100000,build # iOS, minimum 16.0
    assert symtab
    so,count,st,ss=symtab;exports=[]
    for i in range(count):
        si,kind,se,desc,value=struct.unpack_from('<IBBHQ',data,so+i*16)
        if si and kind&1 and kind&0xe==0xe:
            exports.append(data[st+si:st+ss].split(b'\0')[0].decode())
    return {'file':path.name,'cpu_subtype':hex(sub),'platform':build[0],
            'minimum_ios':'16.0','sdk_packed':hex(build[2]),'bytes':len(data),
            'sha256':hashlib.sha256(data).hexdigest(),'exports':exports}

class NativeEditor(unittest.TestCase):
    def test_core_host_executable(self):
        compiler=shutil.which('clang++');self.assertIsNotNone(compiler)
        for optimization in (['-O0'],['-O2','-DNDEBUG']):
            with tempfile.TemporaryDirectory(prefix='lace-editor-host-') as directory:
                executable=Path(directory)/'test-native-editor-core'
                command([compiler,'-std=c++17','-Wall','-Wextra','-Werror','-pedantic',*optimization,
                         'tests/test_native_editor_core.cpp','-o',executable])
                output=command([executable]);self.assertRegex(output,r'core: \d+ checks passed')
                REPORT['core_runs'].append({'options':optimization,'output':output.strip()})

    def test_uploaded_otf_names_hashes_axes(self):
        spec=importlib.util.spec_from_file_location('native_font_evidence',ROOT/'evidence/editor-native-inspect.py')
        parser=importlib.util.module_from_spec(spec);spec.loader.exec_module(parser)
        constants=dict(re.findall(r'(Compact\w+|Numeric\w+)="([^"]+)"',HEADER.read_text()))
        expected_axes={'HGHT':(100.,100.,500.),'wdth':(60.,100.,100.),
                       'wght':(1.,400.,1000.),'SOFT':(0.,70.,100.)}
        package=Path('/tmp/liquidass-extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle')
        for prefix in ('Compact','Numeric'):
            path=ROOT/'assets/fonts'/constants[prefix+'File'];font=parser.font(path)
            self.assertEqual(font['sha256'],constants[prefix+'SHA256'])
            self.assertEqual(font['names']['6'],[constants[prefix+'Name']])
            axes={a['tag']:(a['minimum'],a['default'],a['maximum']) for a in font['axes']}
            self.assertEqual(len(axes),len(font['axes']))
            self.assertEqual(axes,expected_axes if prefix=='Numeric' else {})
            original=package/path.name
            if original.exists():self.assertEqual(path.read_bytes(),original.read_bytes())
            font['supplied_extract_byte_identical']=original.exists();REPORT['fonts'].append(font)
        source=(ROOT/'src/editor/LACEFonts.mm').read_text()
        self.assertIn('CC_SHA256(',source);self.assertIn('lace::validAxes(',source)
        self.assertIn('lace::CompactSHA256',source);self.assertIn('lace::NumericSHA256',source)

    def test_entire_editor_strict_arm64e_syntax_objects_c_abi(self):
        self.assertTrue(SDK.is_dir(),str(SDK));compiler=shutil.which('clang++');self.assertIsNotNone(compiler)
        flags=['-target','arm64e-apple-ios16.0','-isysroot',SDK,'-std=c++17',
               '-fobjc-arc','-fblocks','-Wall','-Wextra','-Werror']
        implementations=sorted((ROOT/'src/editor').glob('*.mm'))
        self.assertEqual({p.name for p in implementations},{'LACClockEditor.mm','LACEControllers.mm',
                         'LACEFonts.mm','LACEPosterDepth.mm','LACEStore.mm'})
        exports=set()
        with tempfile.TemporaryDirectory(prefix='lace-editor-arm64e-') as directory:
            for path in implementations:
                command([compiler,*flags,'-fsyntax-only',path])
                obj=Path(directory)/(path.stem+'.o');command([compiler,*flags,'-c',path,'-o',obj])
                info=macho(obj)
                info['exports']=[symbol for symbol in info['exports'] if re.fullmatch(r'_LACE[A-Za-z0-9_]+',symbol)]
                REPORT['objects'].append(info);exports.update(info['exports'])
            public=ROOT/'src/editor/LACClockEditor.h'
            expected=set(re.findall(r'\b(LACE\w+)\(',public.read_text()))
            self.assertTrue(expected)
            for name in expected:self.assertIn('_'+name,exports,name+' not exported with C linkage')
            for language in ('c','c++'):
                args=[shutil.which('clang'),'-target','arm64e-apple-ios16.0','-isysroot',SDK,
                      '-Wall','-Wextra','-Werror','-fsyntax-only','-x',language,'-I',public.parent,'-']
                command(args,input='#include "LACClockEditor.h"\nvoid probe(void) { LACESetPreviewRenderCallback(0,0); }\n')
            REPORT['public_c_exports']=sorted(expected)
        # Ensure host tests execute the same normalization/conflict code used by Foundation.
        store=(ROOT/'src/editor/LACEStore.mm').read_text()
        for token in ('lace::normalizeStyle(','lace::normalizeProgress(','core.save(','core.restore(','core.committed('):
            self.assertIn(token,store)

if __name__=='__main__':
    REPORT['started_at']=datetime.now(timezone.utc).isoformat()
    REPORT['compiler']=command([shutil.which('clang++'),'--version']).splitlines()[0]
    program=unittest.main(exit=False)
    REPORT['success']=program.result.wasSuccessful()
    REPORT['test_methods']=program.result.testsRun
    REPORT['finished_at']=datetime.now(timezone.utc).isoformat()
    (ROOT/'evidence/editor-native-verification.json').write_text(json.dumps(REPORT,indent=2)+'\n')
    raise SystemExit(0 if REPORT['success'] else 1)
