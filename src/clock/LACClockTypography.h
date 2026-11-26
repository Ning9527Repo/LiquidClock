#pragma once
#include <cmath>
#include "../editor/LACEState.hpp"

// Header-only: no build-list change and no second editor state/store.
namespace lacclock {
struct FontShape { double points, heightAxis; };
struct HeightKnot { double inkHeight, points, heightAxis; };
// Uploaded arm64e slice, unslid VA 0xbe938; triples of IEEE754 doubles.
constexpr HeightKnot HeightKnots[] = {
    {123.779297,130.0,100.0},
    {139.666667,133.08839,114.5335},
    {168.0,139.07511,138.2346},
    {269.666667,162.79664,207.4169},
    {299.666667,167.13432,227.559},
    {337.666667,170.27895,254.8835},
    {367.666667,171.50405,277.9167},
    {397.333333,171.97152,301.749},
    {407.869922,172.0,310.0},
};
// 0x671dc..0x67274: normalize effective digit height, then interpolate the
// measured font table. 286.666015625 (0xbddf8) is a SPAN: max is 381.373046875.
inline FontShape shapeForHeight(double digitHeight, double windowScale) {
    const double p=lace::clamp((digitHeight/windowScale-lace::ClockMinimumHeight)/
        (lace::ClockMaximumHeight-lace::ClockMinimumHeight),0,1);
    const double ink=std::fma(p,284.090625,123.779297);
    for(unsigned i=1;i<sizeof(HeightKnots)/sizeof(HeightKnots[0]);++i) {
        const auto &a=HeightKnots[i-1], &b=HeightKnots[i];
        if(ink<=b.inkHeight) {
            const double t=(ink-a.inkHeight)/(b.inkHeight-a.inkHeight);
            return {std::fma(t,b.points-a.points,a.points)*windowScale,
                    std::fma(t,b.heightAxis-a.heightAxis,a.heightAxis)};
        }
    }
    return {130*windowScale,100}; // sample 0xbde80 fallback pair
}
// 0x673ac..0x67418: seven bisections of wdth=60..100, CTLine width oracle.
// Caller supplies the existing editor font (wght/SOFT), not duplicate style data.
template<class Measure>
inline double fittedWidth(Measure measure,double availableWidth) {
    double low=60,high=100;
    for(unsigned i=0;i<7;++i) {
        const double mid=(low+high)*0.5;
        if(measure(mid)>availableWidth)high=mid;else low=mid;
    }
    return (low+high)*0.5;
}
}
