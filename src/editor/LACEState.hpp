#pragma once
#include <cmath>
#include <array>
#include <cstdint>
#include <map>
#include <optional>
#include <string>
#include <utility>
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
struct Style { bool modern=true; double weight=750, softness=60; };
inline bool operator==(const Style &a,const Style &b) {
    return a.modern==b.modern&&a.weight==b.weight&&a.softness==b.softness;
}
struct Record { std::optional<Style> style; std::optional<double> progress; };
inline bool operator==(const Record &a,const Record &b) {
    if(a.style.has_value()!=b.style.has_value()||a.progress.has_value()!=b.progress.has_value())return false;
    if(a.style&& !(*a.style==*b.style))return false;
    return !a.progress||*a.progress==*b.progress;
}
inline bool operator!=(const Record &a,const Record &b) {return !(a==b);}
struct Number {
    enum Kind { Missing, Value, Invalid } kind=Missing;
    double value=0;
};
// Missing softness alone has the sample's 60 fallback. Bad supplied values
// are not silently clamped on restore; stage() is the UI's clamping boundary.
inline bool normalizeStyle(Number modern,Number weight,Number softness,Style &out) {
    if(modern.kind!=Number::Value||weight.kind!=Number::Value||softness.kind==Number::Invalid) return false;
    Style next{modern.value!=0,weight.value,softness.kind==Number::Missing?60:softness.value};
    if(!finite(modern.value)||!valid({next.modern,next.weight,next.softness,1}))return false;
    out=next;return true;
}
inline bool normalizeProgress(Number progress,std::optional<double> &out) {
    if(progress.kind==Number::Missing){out.reset();return true;}
    if(progress.kind!=Number::Value||!finite(progress.value)||progress.value<0||progress.value>1)return false;
    out=progress.value;return true;
}
inline bool valid(const Record &r) {
    if(r.style&&!valid({r.style->modern,r.style->weight,r.style->softness,1}))return false;
    return !r.progress||(finite(*r.progress)&&*r.progress>=0&&*r.progress<=1);
}
inline Record overlay(Record low,const Record &high) {
    if(high.style)low.style=high.style;
    if(high.progress)low.progress=high.progress;
    return low;
}
inline Record record(const State &s) {return {Style{s.modern,s.weight,s.softness},s.progress};}
inline State resolve(const Record &r) {
    State s;
    if(r.style){s.modern=r.style->modern;s.weight=r.style->weight;s.softness=r.style->softness;}
    if(r.progress)s.progress=*r.progress;
    return s;
}
using Journal=std::map<std::string,Record>;
struct Axis {std::uint32_t tag;double minimum,defaultValue,maximum;};
constexpr std::array<Axis,4> NumericAxes{{
    {0x48474854,100,100,500},{0x77647468,60,100,100},
    {0x77676874,1,400,1000},{0x534f4654,0,70,100}}};
inline bool validAxes(const Axis *axes,std::size_t count,bool numeric) {
    if(!numeric)return count==0;
    if(!axes||count!=NumericAxes.size())return false;
    unsigned seen=0;
    for(std::size_t i=0;i<count;++i) {
        bool found=false;
        for(std::size_t k=0;k<NumericAxes.size();++k) {
            const auto &e=NumericAxes[k];const auto &a=axes[i];
            if(a.tag!=e.tag)continue;
            if((seen&(1u<<k))||a.minimum!=e.minimum||a.defaultValue!=e.defaultValue||a.maximum!=e.maximum)return false;
            seen|=1u<<k;found=true;break;
        }
        if(!found)return false;
    }
    return seen==15;
}
constexpr const char *CompactFile="SF-Compact-Display-Regular.otf";
constexpr const char *CompactName="SFCompactDisplay-Regular";
constexpr const char *CompactSHA256="5006936cb9d018bc3e72015cf39eed7939911388d510ba0322370febe7a6c09f";
constexpr const char *NumericFile="SFAdaptiveSoftNumeric-VF.otf";
constexpr const char *NumericName="SFAdaptiveSoftNumeric-hg100wd";
constexpr const char *NumericSHA256="337e5736f88aa5360fcb8f509f38349f3b6483e12e7ba3e9f18436c085a026ef";
// Lite editor 0x6c8e8..0x6c9e0; availableHeight is measured by its
// caller (sample: editor.bounds.height - clockBox.minY - 88).
constexpr double ClockReferenceWidth=430,ClockMinimumHeight=94.70703125,ClockMaximumHeight=381.373046875;
struct HeightRange {double minimum,maximum;};
inline std::optional<HeightRange> editorHeightRange(double windowWidth,double availableHeight) {
    if(!finite(windowWidth)||!finite(availableHeight)||windowWidth<=0||availableHeight<=0)return std::nullopt;
    const double scale=windowWidth/ClockReferenceWidth;
    const double maximum=std::fmax(1,std::fmin(scale*ClockMaximumHeight,availableHeight));
    return HeightRange{std::fmin(maximum,scale*ClockMinimumHeight),maximum};
}
inline double heightAt(double progress,HeightRange range) {
    return range.minimum+clamp(progress,0,1)*(range.maximum-range.minimum);
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
// Foundation owns plist I/O/locking; this exact core owns normalization,
// per-poster resolution and optimistic conflict decisions on both platforms.
class Store {
public:
    enum SaveResult { Saved, Conflict, InvalidState, WriteFailed };
    bool configure(const Record &globals,const Journal &journal) {
        if(!valid(globals)||!validJournal(journal))return false;
        globals_=globals;journal_=journal;restored_.clear();return true;
    }
    static bool validJournal(const Journal &journal) {
        if(journal.size()>4096)return false;
        for(const auto &entry:journal)
            if(entry.first.empty()||entry.first.size()>2048||!valid(entry.second))return false;
        return true;
    }
    std::optional<Record> journalRecord(const std::string &poster) const {
        auto it=journal_.find(poster);return it==journal_.end()?std::nullopt:std::optional<Record>(it->second);
    }
    Record committed(const std::string &poster) const {
        Record r=globals_;auto it=journal_.find(poster);if(it!=journal_.end())r=overlay(r,it->second);
        it=restored_.find(poster);if(it!=restored_.end())r=overlay(r,it->second);
        return record(resolve(r));
    }
    bool restore(const std::string &poster,const Record &info,const Record &properties) {
        if(poster.empty()||poster.size()>2048||!valid(info)||!valid(properties))return false;
        restored_[poster]=overlay(properties,info);return true;
    }
    template<class Persist>
    SaveResult save(const std::string &poster,const std::optional<Record> &baseline,
        Transaction &transaction,const Journal &disk,bool rawMetadataUnchanged,Persist persist) {
        if(poster.empty()||poster.size()>2048||transaction.phase!=Transaction::Saving||
            !valid(transaction.draft)||!validJournal(disk))return InvalidState;
        auto it=disk.find(poster);
        const Record *expected=nullptr;
        if(baseline.has_value())expected=&baseline.value();
        const Record *actual=it==disk.end()?nullptr:&it->second;
        const bool mismatch=(expected==nullptr)!=(actual==nullptr) ||
            (expected&&actual&&!(*expected==*actual));
        if(!rawMetadataUnchanged||mismatch) {
            // Keep the active draft available, but cancel/reopen must actually
            // reload the winning committed record instead of conflicting forever.
            journal_=disk;restored_.erase(poster);return Conflict;
        }
        Journal next=disk;Record r=record(transaction.draft);next[poster]=r;
        if(!validJournal(next))return InvalidState;
        if(!persist(next))return WriteFailed;
        journal_=std::move(next);restored_[poster]=r;return Saved;
    }
private:
    Record globals_;
    Journal journal_,restored_;
};
}
