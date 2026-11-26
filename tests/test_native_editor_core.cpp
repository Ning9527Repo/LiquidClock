#include "../src/editor/LACEState.hpp"
#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <limits>
using namespace lace;
static unsigned checks=0;
#define CHECK(x) do { ++checks; if(!(x)){std::cerr<<__FILE__<<":"<<__LINE__<<" " #x "\n";std::exit(1);} } while(false)
static Number num(double value){return {Number::Value,value};}
static bool equal(State a,State b){return record(a)==record(b);}
static void transactionTests() {
    const State defaults;CHECK(defaults.modern);CHECK(defaults.weight==750);CHECK(defaults.softness==60);CHECK(defaults.progress==1);
    State original{false,432,27,.25};Transaction tx(original);
    CHECK(!tx.before.modern);CHECK(tx.draft.modern);CHECK(tx.stage(875,80,.8));
    CHECK(tx.before.progress==.25);CHECK(tx.prepare());CHECK(tx.phase==Transaction::Saving);
    CHECK(!tx.stage(1,2,3));CHECK(!tx.cancel());CHECK(!tx.prepare());
    CHECK(!tx.complete(false));CHECK(tx.phase==Transaction::Editing);CHECK(tx.draft.weight==875);
    CHECK(tx.stage(900,90,.9));CHECK(tx.prepare());CHECK(tx.complete(true));CHECK(tx.phase==Transaction::Closed);
    CHECK(!tx.stage(750,60,1));CHECK(!tx.cancel());CHECK(!tx.complete(true));
    Transaction cancelled(original);CHECK(cancelled.stage(1000,100,1));CHECK(cancelled.cancel());
    CHECK(equal(cancelled.draft,original));CHECK(!cancelled.cancel());CHECK(!cancelled.prepare());
    Transaction clamped;CHECK(clamped.stage(-5,1001,-1));CHECK(clamped.draft.weight==100);
    CHECK(clamped.draft.softness==100);CHECK(clamped.draft.progress==0);
    CHECK(clamped.stage(1001,-1,2));CHECK(clamped.draft.weight==1000);CHECK(clamped.draft.softness==0);CHECK(clamped.draft.progress==1);
    auto previous=clamped.draft;const double nan=std::numeric_limits<double>::quiet_NaN();
    const double inf=std::numeric_limits<double>::infinity();
    CHECK(!clamped.stage(nan,60,.5));CHECK(!clamped.stage(750,inf,.5));CHECK(!clamped.stage(750,60,-inf));CHECK(equal(previous,clamped.draft));
    Transaction bad({true,nan,60,1});CHECK(!bad.prepare());CHECK(bad.cancel());
    CHECK(dragProgress(.2,30,100,200)==.5);CHECK(dragProgress(.2,-1000,100,200)==0);
    CHECK(dragProgress(.2,1000,100,200)==1);CHECK(dragProgress(.2,.3,100,100)==.5);
    CHECK(dragProgress(.2,.3,200,100)==.5);CHECK(dragProgress(nan,1,0,100)==0);
}
static void normalizeTests() {
    Style out{false,200,30};CHECK(normalizeStyle(num(1),num(750),{},out));CHECK(out==Style({true,750,60}));
    CHECK(normalizeStyle(num(0),num(100),num(0),out));CHECK(out==Style({false,100,0}));
    CHECK(normalizeStyle(num(-2),num(1000),num(100),out));CHECK(out.modern);
    const auto before=out;CHECK(!normalizeStyle({},num(750),{},out));CHECK(!normalizeStyle(num(1),{},num(60),out));
    CHECK(!normalizeStyle(num(1),num(99),{},out));CHECK(!normalizeStyle(num(1),num(1001),{},out));
    CHECK(!normalizeStyle(num(1),num(750),{Number::Invalid,0},out));CHECK(out==before);
    for(double bad:{std::numeric_limits<double>::quiet_NaN(),std::numeric_limits<double>::infinity(),-std::numeric_limits<double>::infinity()}) {
        CHECK(!normalizeStyle(num(bad),num(750),num(60),out));
        CHECK(!normalizeStyle(num(1),num(bad),num(60),out));CHECK(!normalizeStyle(num(1),num(750),num(bad),out));
        std::optional<double> p=.5;CHECK(!normalizeProgress(num(bad),p));CHECK(p==.5);
    }
    std::optional<double> p=.5;CHECK(normalizeProgress({},p));CHECK(!p);CHECK(normalizeProgress(num(0),p));CHECK(p==0);
    CHECK(normalizeProgress(num(1),p));CHECK(p==1);CHECK(!normalizeProgress(num(-.01),p));CHECK(!normalizeProgress(num(1.01),p));
    CHECK(!normalizeProgress({Number::Invalid,0},p));CHECK(p==1);
}
static Store::SaveResult finish(Store &store,const std::string &poster,std::optional<Record> base,
    Transaction &tx,Journal &disk,bool persist=true,bool rawUnchanged=true) {
    CHECK(tx.prepare());auto result=store.save(poster,base,tx,disk,rawUnchanged,[&](const Journal &next){
        if(persist)disk=next;
        return persist;
    });CHECK(tx.complete(result==Store::Saved)==(result==Store::Saved));return result;
}
static void storeTests() {
    Store store;Journal disk;CHECK(store.configure({},disk));
    CHECK(equal(resolve(store.committed("A")),State{}));CHECK(equal(resolve(store.committed("B")),State{}));
    Record globals{Style{false,600,20},.2};
    disk["A"]={Style{false,650,30},.3};disk["B"]={Style{true,500,50},.5};
    CHECK(store.configure(globals,disk));Record info{Style{true,800,80},{}},props{{},.75};
    CHECK(store.restore("A",info,props));auto state=resolve(store.committed("A"));CHECK(equal(state,{true,800,80,.75}));
    CHECK(equal(resolve(store.committed("B")),{true,500,50,.5}));CHECK(equal(resolve(store.committed("new")),{false,600,20,.2}));
    Transaction cancelled(state);CHECK(cancelled.stage(900,90,1));CHECK(store.committed("A")==record(state));
    CHECK(cancelled.cancel());CHECK(store.committed("A")==record(state));
    // Restore precedence is independent per key: info > props > journal > globals > defaults.
    CHECK(store.restore("A",{{},.4},{Style{true,700,70},.9}));CHECK(equal(resolve(store.committed("A")),{true,700,70,.4}));
    CHECK(store.restore("A",{},{}));CHECK(equal(resolve(store.committed("A")),{false,650,30,.3}));
    Record invalid{{},2};auto unchanged=store.committed("A");CHECK(!store.restore("A",invalid,{}));CHECK(store.committed("A")==unchanged);
    Transaction tx(resolve(store.committed("A")));auto base=store.journalRecord("A");CHECK(tx.stage(900,90,.9));
    const auto diskBefore=disk;CHECK(finish(store,"A",base,tx,disk,false)==Store::WriteFailed);
    CHECK(tx.phase==Transaction::Editing);CHECK(disk==diskBefore);CHECK(store.committed("A")==unchanged);
    CHECK(finish(store,"A",base,tx,disk)==Store::Saved);CHECK(tx.phase==Transaction::Closed);
    CHECK(equal(resolve(store.committed("A")),{true,900,90,.9}));CHECK(store.committed("B")==diskBefore.at("B"));
    CHECK(disk.at("A")==record(tx.draft));CHECK(store.journalRecord("A")==disk.at("A"));
    Store reopened;CHECK(reopened.configure(globals,disk));CHECK(reopened.committed("A")==store.committed("A"));
    // Concurrent stores: disjoint posters merge against latest disk; stale same-poster save fails.
    Store one,two;CHECK(one.configure({},disk));CHECK(two.configure({},disk));
    auto aBase=one.journalRecord("A"),bBase=two.journalRecord("B");
    Transaction a(resolve(one.committed("A"))),b(resolve(two.committed("B")));
    CHECK(a.stage(777,66,.6));CHECK(b.stage(888,55,.8));
    CHECK(finish(one,"A",aBase,a,disk)==Store::Saved);CHECK(finish(two,"B",bBase,b,disk)==Store::Saved);
    CHECK(disk.at("A")==record(a.draft));CHECK(disk.at("B")==record(b.draft));CHECK(two.committed("A")==disk.at("A"));
    Transaction stale(resolve(two.committed("A")));CHECK(stale.stage(999,99,1));auto staleBase=two.journalRecord("A");
    disk["A"]=record(State{false,333,33,.33});auto changedDisk=disk;
    CHECK(finish(two,"A",staleBase,stale,disk)==Store::Conflict);CHECK(stale.phase==Transaction::Editing);CHECK(disk==changedDisk);
    CHECK(stale.cancel());CHECK(stale.phase==Transaction::Closed);
    CHECK(two.committed("A")==disk.at("A"));CHECK(two.journalRecord("A")==disk.at("A"));
    Transaction retried(resolve(two.committed("A")));CHECK(retried.stage(444,44,.44));
    CHECK(finish(two,"A",two.journalRecord("A"),retried,disk)==Store::Saved);
    Transaction metadata;CHECK(metadata.stage(700,70,.7));
    CHECK(finish(two,"B",two.journalRecord("B"),metadata,disk,true,false)==Store::Conflict);CHECK(metadata.cancel());
    // Absent vs explicitly empty records are distinct conflict baselines.
    Transaction absent;auto absentBase=two.journalRecord("C");CHECK(!absentBase);disk["C"]={};
    CHECK(finish(two,"C",absentBase,absent,disk)==Store::Conflict);CHECK(absent.cancel());
    Journal malformed=disk;malformed["X"]={{},2};auto before=two.committed("B");CHECK(!two.configure({},malformed));CHECK(two.committed("B")==before);
    CHECK(!two.restore("",{},{}));malformed=disk;malformed[""]={};CHECK(!Store::validJournal(malformed));
    Journal full;for(unsigned i=0;i<4096;++i)full[std::to_string(i)]={};CHECK(Store::validJournal(full));
    Store limited;CHECK(limited.configure({},full));Transaction limit;
    CHECK(finish(limited,"new",{},limit,full)==Store::InvalidState);CHECK(full.size()==4096);CHECK(limit.cancel());
}
static void axesTests() {
    auto axes=NumericAxes;CHECK(validAxes(axes.data(),axes.size(),true));
    std::reverse(axes.begin(),axes.end());CHECK(validAxes(axes.data(),axes.size(),true));
    CHECK(validAxes(nullptr,0,false));CHECK(!validAxes(nullptr,4,true));CHECK(!validAxes(axes.data(),3,true));CHECK(!validAxes(axes.data(),4,false));
    axes=NumericAxes;axes[1]=axes[0];CHECK(!validAxes(axes.data(),4,true));
    axes=NumericAxes;axes[2].minimum=100;CHECK(!validAxes(axes.data(),4,true)); // font min 1 != editor min 100
    axes=NumericAxes;axes[3].defaultValue=60;CHECK(!validAxes(axes.data(),4,true)); // font default 70 != editor default 60
    axes=NumericAxes;axes[0].tag=0;CHECK(!validAxes(axes.data(),4,true));
    axes=NumericAxes;axes[0].maximum=std::numeric_limits<double>::quiet_NaN();CHECK(!validAxes(axes.data(),4,true));
    Store store;Journal disk;CHECK(store.configure({},disk));Transaction tx;unsigned writes=0;
    CHECK(store.save("A",{},tx,disk,true,[&](const Journal &){++writes;return true;})==Store::InvalidState);CHECK(writes==0);
    CHECK(tx.prepare());Journal invalid{{"bad",{{},2}}};
    CHECK(store.save("A",{},tx,invalid,true,[&](const Journal &){++writes;return true;})==Store::InvalidState);CHECK(writes==0);
    CHECK(!tx.complete(false));CHECK(tx.cancel());
}
static void geometryTests() {
    auto range=editorHeightRange(430,500);CHECK(bool(range));CHECK(range->minimum==94.70703125);CHECK(range->maximum==381.373046875);
    CHECK(heightAt(0,*range)==range->minimum);CHECK(heightAt(1,*range)==range->maximum);
    CHECK(heightAt(.5,*range)==(range->minimum+range->maximum)/2);CHECK(heightAt(-1,*range)==range->minimum);CHECK(heightAt(2,*range)==range->maximum);
    range=editorHeightRange(215,500);CHECK(bool(range));CHECK(range->minimum==94.70703125/2);CHECK(range->maximum==381.373046875/2);
    range=editorHeightRange(430,20);CHECK(bool(range));CHECK(range->minimum==20);CHECK(range->maximum==20);
    range=editorHeightRange(430,.5);CHECK(bool(range));CHECK(range->minimum==1);CHECK(range->maximum==1);
    CHECK(!editorHeightRange(0,100));CHECK(!editorHeightRange(430,0));CHECK(!editorHeightRange(-1,100));
    CHECK(!editorHeightRange(std::numeric_limits<double>::infinity(),100));CHECK(!editorHeightRange(430,std::numeric_limits<double>::quiet_NaN()));
}
int main(){transactionTests();normalizeTests();storeTests();axesTests();geometryTests();std::cout<<"native editor core: "<<checks<<" checks passed\n";}
