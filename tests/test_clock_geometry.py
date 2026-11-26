from pathlib import Path
import subprocess,tempfile,unittest
ROOT=Path(__file__).resolve().parents[1]
CODE=r'''
#include "src/clock/LACClockGeometry.hpp"
#include <cstdio>
#include <cstdlib>
static unsigned n;
static void check(bool b){++n;if(!b)std::abort();}
static bool near(double a,double b){return std::fabs(a-b)<1e-7;}
int main(){
 using namespace lacclock;
 for(double width:{320.,375.,390.,430.})for(double top:{40.,100.,250.}) {
  Rect out{};check(expandedClock({20,top,300,95},{20,top-38,300,30},width,932,out));
  check(near(out.y,top));check(near(out.h,std::min(lace::ClockMaximumHeight*width/430.,932-88-top)));
  Rect original=out;avoidObstacle({0,out.y+150,320,40},out);check(near(out.h,138));
  out=original;avoidObstacle({-600,out.y+50,200,40},out);check(near(out.h,original.h));
  out=original;avoidObstacle({0,out.y-80,320,40},out);check(near(out.h,original.h));
 }
 for(double x:{-20.,0.,40.})for(double y:{-30.,0.,12.})for(double w:{60.,200.,800.})
 for(double h:{50.,140.,500.})for(double targetW:{200.,400.})for(double targetH:{90.,300.}) {
  PathFit f{};check(fitPath({x,y,w,h},targetW,targetH,f));
  check(f.scale>0&&f.scale<=1);check(near(-(y+h)*f.scale+f.ty,0));
  check(near(x*f.scale+f.tx+(w*f.scale)/2,targetW/2));
  check(w*f.scale<=targetW+1e-7&&h*f.scale<=targetH+1e-7);
 }
 PathFit bad{};check(!fitPath({0,0,0,10},100,100,bad));check(!fitPath({0,0,100,10},NAN,100,bad));
 unsigned w=0,h=0;check(rasterSize(430,381,2,w,h)&&w==860&&h==762);
 check(!rasterSize(430,381,3,w,h));check(!rasterSize(INFINITY,10,1,w,h));
 std::printf("PASS production clock geometry: %u checks\n",n);
}
'''
class Geometry(unittest.TestCase):
 def test_production_geometry(self):
  with tempfile.TemporaryDirectory(prefix='lac-geometry-') as d:
   p=Path(d);(p/'test.cpp').write_text(CODE)
   for level in ('-O0','-O2'):
    subprocess.run(['clang++','-std=c++17','-Wall','-Wextra','-Werror',level,'-I',str(ROOT),str(p/'test.cpp'),'-o',str(p/'test')],check=True)
    subprocess.run([str(p/'test')],check=True)
 def test_independent_path_and_original_labels(self):
  runtime=(ROOT/'src/runtime/LACClockRuntime.mm').read_text()
  refresh=runtime[runtime.index('static void LACRefreshTypography('):runtime.index('static NSString *LACFieldPath(')]
  self.assertNotIn('label.font=',refresh);self.assertNotIn('label.frame=',runtime)
  self.assertIn('LACClockGetReplacementSDF(',runtime)
  self.assertIn('if(wasReplacement!=s.replacementGeometry){LACInvalidateField(s);s.maskGeneration=0;}',runtime)
  self.assertIn('s.glass.layer.mask=s.glyphMask',runtime)
  self.assertIn('snapshot.distance[i]*ppp',runtime)
  self.assertIn('if(LACFieldWasRendered(s))',runtime)
  source=(ROOT/'src/clock/LACClockTextField.mm').read_text()
  self.assertIn('CTFontCreatePathForGlyph',source);self.assertIn('CGPathGetPathBoundingBox',source)
  self.assertIn('cache.generationCounter==UINT64_MAX',source)
if __name__=='__main__':unittest.main()
