#!/usr/bin/env python3
"""Offline evidence and production C++ tests; no UIKit/CoreText or device execution.
Run: python3 tests/test_clock_typography.py -v
"""
import hashlib, math, re, struct, sys, unittest, subprocess, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools'))
from macho import Image
HEADER=(ROOT/'src/clock/LACClockTypography.h').read_text()
RUNTIME=(ROOT/'src/runtime/LACClockRuntime.mm').read_text()
KNOTS=[tuple(map(float,row)) for row in re.findall(
    r'\{([0-9.]+),([0-9.]+),([0-9.]+)\}',HEADER)]
SAMPLE=Path('/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib')

def shape(height,scale):
    p=max(0,min(1,(height/scale-94.70703125)/286.666015625))
    ink=123.779297+p*284.090625
    for a,b in zip(KNOTS,KNOTS[1:]):
        if ink<=b[0]:
            t=(ink-a[0])/(b[0]-a[0])
            return ((a[1]+t*(b[1]-a[1]))*scale,a[2]+t*(b[2]-a[2]))
    return 130*scale,100

def fit(measure,available):
    low,high=60.,100.
    for _ in range(7):
        mid=(low+high)*.5
        if measure(mid)>available:high=mid
        else:low=mid
    return (low+high)*.5

class Typography(unittest.TestCase):
    def test_production_cpp_at_both_optimization_levels(self):
        with tempfile.TemporaryDirectory(prefix='lac-typography-') as folder:
            executable=Path(folder)/'typography'
            for level in ('-O0','-O2'):
                subprocess.run(['clang++','-std=c++17','-Wall','-Wextra','-Werror',level,
                    'tests/test_clock_typography_core.cpp','-o',str(executable)],cwd=ROOT,check=True)
                subprocess.run([str(executable)],check=True)

    @unittest.skipUnless(SAMPLE.exists(),'original sample not present')
    def test_original_slice_bytes(self):
        self.assertEqual(hashlib.sha256(SAMPLE.read_bytes()).hexdigest(),
            'ab85ba3d9fee2e695789a50df90eadcb837a86d0864061b6215a1cf281dd7a66')
        image=Image(str(SAMPLE),'arm64e')
        self.assertEqual(len(KNOTS),9)
        for i,row in enumerate(KNOTS):
            self.assertEqual(image.read(0xbe938+24*i,24),struct.pack('<ddd',*row))
        for address,value in [(0xbddc0,430.),(0xbddd0,94.70703125),
                (0xbddd8,381.373046875),(0xbddf8,286.666015625),
                (0xbde00,123.779297),(0xbde08,284.090625)]:
            self.assertEqual(image.read(address,8),struct.pack('<d',value))
        self.assertEqual(image.read(0xbde80,16),struct.pack('<dd',130,100))
    def test_height_span_not_maximum(self):
        self.assertEqual(94.70703125+286.666015625,381.373046875)
        self.assertEqual(shape(94.70703125,1),(130,100))
        self.assertAlmostEqual(shape(381.373046875,1)[0],172,places=6)
    def test_every_knot_and_continuity(self):
        for ink,points,axis in KNOTS:
            progress=(ink-123.779297)/284.090625
            if not 0<=progress<=1:continue
            got=shape(94.70703125+progress*286.666015625,1)
            self.assertAlmostEqual(got[0],points,places=9)
            self.assertAlmostEqual(got[1],axis,places=9)
        previous=(0,0)
        for i in range(1001):
            value=shape(94.70703125+i/1000*286.666015625,1)
            self.assertGreaterEqual(value[0],previous[0])
            self.assertGreaterEqual(value[1],previous[1]);previous=value
    def test_scale_covariance_and_clamp(self):
        for p in (-1,0,.25,.5,1,2):
            h=94.70703125+p*286.666015625
            base=shape(h,1)
            for scale in (.5,390/430,1,2):
                actual=shape(h*scale,scale)
                self.assertAlmostEqual(actual[0],base[0]*scale)
                self.assertAlmostEqual(actual[1],base[1])
    def test_seven_step_width_fit(self):
        for target in (60,65,80,99,100):
            self.assertLessEqual(abs(fit(lambda x:x,target)-target),40/256)
        self.assertEqual(fit(lambda x:200,100),60.15625)
        self.assertEqual(fit(lambda x:50,100),99.84375)
    def test_runtime_reuses_editor_and_keeps_custom_scale(self):
        for api in ('LACECopyPreviewFont(poster,nativeSize)',
                    'LACEGetPreviewProgress(poster,&progress)',
                    'lace::editorHeightRange(windowWidth,available)',
                    'lace::heightAt(progress,*range)',
                    'CTLineGetTypographicBounds',
                    'LACPosterTypographyFont(s,label,saved.font.pointSize)',
                    'CGAffineTransformConcat(saved.transform,CGAffineTransformMakeScale(scale,scale))'):
            self.assertIn(api,RUNTIME)
        self.assertLess(RUNTIME.index('static UIFont *LACPosterTypographyFont('),
                        RUNTIME.index('static void LACRefreshTypography('))
        self.assertIn('for(unsigned i=0;i<7;++i)',HEADER)
        self.assertIn('std::fma(p,284.090625,123.779297)',HEADER)
        self.assertNotIn('setObject:',RUNTIME[RUNTIME.index('static UIFont *LACFontAxes'):RUNTIME.index('static void LACRefreshTypography')])

if __name__=='__main__':unittest.main()
