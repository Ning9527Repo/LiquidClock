#pragma once
#include <cmath>
namespace lace {
// Sample lite defaults: 0x6b82c = 1, 0xbdde8 = 750, 0x6b8f4 = 60.
constexpr double WeightMin=100, WeightMax=1000, SoftMin=0, SoftMax=100;
struct State { bool modern=true; double weight=750, softness=60, progress=1; };
inline bool finite(double n) { return std::isfinite(n); }
inline double clamp(double x,double a,double b) { return std::fmax(a,std::fmin(x,b)); }
inline bool valid(const State &s) {
    return finite(s.weight)&&finite(s.softness)&&finite(s.progress)&&
        s.weight>=WeightMin&&s.weight<=WeightMax&&s.softness>=SoftMin&&
        s.softness<=SoftMax&&s.progress>=0&&s.progress<=1;
}
inline double dragProgress(double start,double dy,double minimum,double maximum) {
    if (!finite(start)||!finite(dy)||!finite(minimum)||!finite(maximum)) return 0;
    // Sample 0x6cca0..0x6cce4: start + translation / max(1,maxHeight-minHeight).
    return clamp(start+dy/std::fmax(1,maximum-minimum),0,1);
}
class Transaction {
public:
    enum Phase { Editing, Saving, Closed };
    explicit Transaction(State original=State{}): before(original),draft(original) { draft.modern=true; }
    bool stage(double weight,double softness,double progress) {
        if (phase!=Editing||!finite(weight)||!finite(softness)||!finite(progress)) return false;
        draft={true,clamp(weight,WeightMin,WeightMax),clamp(softness,SoftMin,SoftMax),clamp(progress,0,1)};
        return true;
    }
    bool prepare() { if(phase!=Editing||!valid(draft))return false;phase=Saving;return true; }
    bool complete(bool saved) { if(phase!=Saving)return false;phase=saved?Closed:Editing;return saved; }
    bool cancel() { if(phase!=Editing)return false;draft=before;phase=Closed;return true; }
    State before,draft;
    Phase phase=Editing;
};
}
