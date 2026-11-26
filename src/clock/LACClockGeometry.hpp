#pragma once
#include <algorithm>
#include <cmath>
#include <cstddef>
#include "../editor/LACEState.hpp"
namespace lacclock {
struct Rect { double x,y,w,h; };
inline bool validRect(Rect r) {
    return std::isfinite(r.x)&&std::isfinite(r.y)&&std::isfinite(r.w)&&std::isfinite(r.h)&&
        r.w>0&&r.h>0&&std::isfinite(r.x+r.w)&&std::isfinite(r.y+r.h);
}
// All inputs are in ONE host/window coordinate space. The adapter owns visibility.
inline bool expandedClock(Rect clock,Rect date,double windowWidth,double hostBottom,
                          Rect &out) {
    if(!validRect(clock)||!validRect(date)||!std::isfinite(windowWidth)||windowWidth<=0||
       !std::isfinite(hostBottom))return false;
    const double top=std::max(date.y+date.h+8.0,8.0);
    const double bottom=std::min(top+lace::ClockMaximumHeight*windowWidth/430.0,hostBottom-88.0);
    out={clock.x,top,clock.w,bottom-top};return validRect(out);
}
inline void avoidObstacle(Rect obstacle,Rect &clock) {
    if(!validRect(obstacle)||!validRect(clock))return;
    if(obstacle.w>clock.w*.5&&obstacle.h>=24&&obstacle.x<clock.x+clock.w&&
       obstacle.x+obstacle.w>clock.x&&obstacle.y+obstacle.h>clock.y)
        clock.h=std::min(clock.y+clock.h,obstacle.y-12.0)-clock.y;
}
struct PathFit { double scale,tx,ty; };
// CoreText ink is y-up; result is x'=s*x+tx, y'=-s*y+ty, top aligned.
inline bool fitPath(Rect ink,double width,double digitHeight,PathFit &out) {
    if(!validRect(ink)||!std::isfinite(width)||!std::isfinite(digitHeight)||width<=0||digitHeight<=0)return false;
    const double s=std::min({width/ink.w,digitHeight/ink.h,1.0});
    out={s,(width-ink.w*s)*.5-ink.x*s,(ink.y+ink.h)*s};
    return std::isfinite(out.tx)&&std::isfinite(out.ty)&&s>0;
}
inline bool rasterSize(double width,double height,double scale,unsigned &w,unsigned &h) {
    w=h=0;
    if(!std::isfinite(width)||!std::isfinite(height)||!std::isfinite(scale)||width<=0||height<=0||
       width>2048||height>2048||scale<1||scale>4)return false;
    const double rw=std::ceil(width*scale),rh=std::ceil(height*scale);
    if(rw<1||rh<1||rw>1024||rh>1024)return false;
    w=static_cast<unsigned>(rw);h=static_cast<unsigned>(rh);return true;
}
}
