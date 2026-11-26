#include "../src/clock/LACClockTypography.h"
#include <cstdio>
#include <cstdlib>
static unsigned checks;
static void require(bool ok) { ++checks;if(!ok){std::fprintf(stderr,"typography check %u failed\n",checks);std::abort();} }
static bool near(double a,double b,double tolerance=1e-8){return std::fabs(a-b)<=tolerance;}
int main() {
    using namespace lacclock;
    for(double scale:{0.5,390.0/430.0,1.0,2.0}) {
        double lastPoints=0,lastAxis=0;
        for(unsigned i=0;i<=1000;++i) {
            double h=lace::ClockMinimumHeight+(lace::ClockMaximumHeight-lace::ClockMinimumHeight)*i/1000;
            auto got=shapeForHeight(h*scale,scale),base=shapeForHeight(h,1);
            require(std::isfinite(got.points)&&std::isfinite(got.heightAxis));
            require(got.points>=lastPoints&&got.heightAxis>=lastAxis);
            require(near(got.points,base.points*scale)&&near(got.heightAxis,base.heightAxis));
            lastPoints=got.points;lastAxis=got.heightAxis;
        }
        auto minimum=shapeForHeight(lace::ClockMinimumHeight*scale,scale);
        auto maximum=shapeForHeight(lace::ClockMaximumHeight*scale,scale);
        require(near(minimum.points,130*scale)&&near(minimum.heightAxis,100));
        require(near(maximum.points,172*scale)&&near(maximum.heightAxis,310));
        require(near(shapeForHeight(-100*scale,scale).points,minimum.points));
        require(near(shapeForHeight(1000*scale,scale).points,maximum.points));
        for(const auto &k:HeightKnots) {
            double p=(k.inkHeight-123.779297)/284.090625;
            auto got=shapeForHeight((lace::ClockMinimumHeight+p*(lace::ClockMaximumHeight-lace::ClockMinimumHeight))*scale,scale);
            require(near(got.points,k.points*scale)&&near(got.heightAxis,k.heightAxis));
        }
    }
    for(double target:{60.,65.,80.,99.,100.}) {
        unsigned calls=0;
        double fitted=fittedWidth([&](double x){++calls;return x;},target);
        require(calls==7&&std::fabs(fitted-target)<=40.0/256.0);
    }
    require(near(fittedWidth([](double){return 200.;},100),60.15625));
    require(near(fittedWidth([](double){return 50.;},100),99.84375));
    auto clipped=lace::editorHeightRange(430,110);
    require(clipped&&near(lace::heightAt(0,*clipped),94.70703125)&&near(lace::heightAt(1,*clipped),110));
    require(!lace::editorHeightRange(0,110)&&!lace::editorHeightRange(430,0));
    std::printf("PASS production typography: %u checks (no UIKit/CoreText execution)\n",checks);
}
