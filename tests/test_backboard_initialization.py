#!/usr/bin/env python3
"""Execute the production initializer with host stubs, NOT CA/Metal/MSHookFunction.
Only the autorelease scope and OS-version expression are substituted. Scanner,
process, image, Metal and hook providers are mocks; callbacks are never invoked.
"""
from pathlib import Path
import subprocess,tempfile,unittest
ROOT=Path(__file__).resolve().parents[1]
SOURCE=(ROOT/'src/backboard/LACClockBackboard.mm').read_text()
GLOBALS=SOURCE[SOURCE.index('using Intern='):SOURCE.index('static bool readable(')]
FUNCTION=SOURCE[SOURCE.index('static LACClockBackboardStatus fail('):]
for old,new in [('@autoreleasepool {','{'),
    ('NSOperatingSystemVersion os=NSProcessInfo.processInfo.operatingSystemVersion;',
     'NSOperatingSystemVersion os={17,2,1};')]:
    if FUNCTION.count(old)!=1:raise RuntimeError('initializer extraction drift: '+old)
    FUNCTION=FUNCTION.replace(old,new)
PREAMBLE=r'''
#include "src/backboard/LACClockBackboard.h"
#include "src/backboard/LACQCScanner.h"
#include <cstring>
#include <cstdio>
#include <cstdlib>
using os_unfair_lock=int;
#define OS_UNFAIR_LOCK_INIT 0
static void os_unfair_lock_lock(int*){}
static void os_unfair_lock_unlock(int*){}
struct NSOperatingSystemVersion {unsigned majorVersion,minorVersion,patchVersion;};
#define getprogname lacMockProgramName
static const char *lacMockProgramName(){return "backboardd";}
static uintptr_t liveTable,contextWord=0x3000;
static unsigned internCalls,hookCalls,addCalls,scanCalls,imageCalls;
static unsigned failHook;
static bool hookMissing,metalMissing,scanMissing;
static void require(bool ok){if(!ok)std::abort();}
'''
PROVIDERS=r'''
static uint32_t mockIntern(const char *name) {
    ++internCalls;if(!std::strcmp(name,"gaussianBlur"))return 10;
    return 100+internCalls;
}
static void mockAdd(uint32_t,void *context){require(context==&contextWord&&filterAtomOffset==0x18);++addCalls;}
static void mockStop(void*){}
static void mockHook(void*,void*,void **out){++hookCalls;*out=hookCalls==failHook?nullptr:(void*)0x4440;}
#define RTLD_DEFAULT nullptr
static void *dlsym(void*,const char *name){
    if(!std::strcmp(name,"CAInternAtomWithCString"))return (void*)&mockIntern;
    if(!std::strcmp(name,"MSHookFunction"))return hookMissing?nullptr:(void*)&mockHook;
    return nullptr;
}
static bool readable(uintptr_t p,void *out,size_t n){
    require(p==(uintptr_t)&liveTable&&n==sizeof(liveTable));std::memcpy(out,&liveTable,n);return true;
}
static bool quartzCore(lac::QCImage*){++imageCalls;return true;}
static bool LACClockMetalInitialize(const LACClockBackboardOptions*){return !metalMissing;}
extern "C" int LACClockCopyFilterType(LACClockChannel ch,uint32_t slot,char *dest,uint32_t cap){
    return std::snprintf(dest,cap,"clock.%u.%u",(unsigned)ch,slot)>0;
}
static int identityHook(void*,void*){return 0;}
static void renderOneHook(){}
static void renderTwoHook(){}
namespace lac {
uintptr_t stripCode(uintptr_t p){return p;}
uintptr_t stripData(uintptr_t p){return p;}
uintptr_t callable(uintptr_t p){return p;}
bool QCImage::contains(uintptr_t p,size_t,unsigned)const{return p!=0;}
uintptr_t resolveInternWrapper(const QCImage&){return 0;}
bool selectProfile(unsigned,unsigned,unsigned,ABIProfile *out){*out={0x18,0x60,0xf8};return true;}
bool resolveQC(const QCImage&,uint32_t atom,Resolution *out,ptrdiff_t dest){
    ++scanCalls;require(atom==0&&dest==0xf8);if(scanMissing)return false;
    *out={};out->tableSlot=(uintptr_t)&liveTable;out->gaussianContextSlot=(uintptr_t)&contextWord;
    out->identity=0x1000;out->render=0x2000;out->stopEncoders=(uintptr_t)&mockStop;
    out->addFilter=(uintptr_t)&mockAdd;return true;
}
bool filterTableReady(const Resolution &r){return r.filterTable!=0;}
}
'''
MAIN=r'''
int main(int argc,char **argv){
    require(argc==2);const char *scenario=argv[1];
    LACClockBackboardOptions o={1,"/main","/editor","/posters","/metal",501};
    if(!std::strcmp(scenario,"wait")){
        for(unsigned retry=0;retry<=120;++retry){
            require(LACClockBackboardInitialize(&o)==LACClockBackboardWaitingForTable);
            require(!internCalls&&hookCalls==2&&!addCalls&&scanCalls==1&&imageCalls==1);
        }
        liveTable=0x9000;
        require(LACClockBackboardInitialize(&o)==LACClockBackboardReady);
        require(internCalls==19&&hookCalls==2&&addCalls==18&&scanCalls==1&&imageCalls==1);
    }else{
        liveTable=0x9000;
        if(!std::strcmp(scenario,"identity-fail"))failHook=1;
        else if(!std::strcmp(scenario,"render-fail"))failHook=2;
        else if(!std::strcmp(scenario,"missing-hook"))hookMissing=true;
        else if(!std::strcmp(scenario,"metal-fail"))metalMissing=true;
        else if(!std::strcmp(scenario,"scan-fail"))scanMissing=true;
        auto got=LACClockBackboardInitialize(&o);
        if(!std::strcmp(scenario,"ready"))require(got==LACClockBackboardReady&&addCalls==18&&hookCalls==2);
        else {
            require(got<0&&!addCalls);
            if(failHook)require(hookCalls==failHook);
            else if(metalMissing)require(hookCalls==2);
            else require(!hookCalls);
        }
    }
    auto previous=LACClockBackboardGetStatus();
    unsigned ic=internCalls,hc=hookCalls,ac=addCalls,sc=scanCalls;
    for(unsigned i=0;i<5;++i)require(LACClockBackboardInitialize(&o)==previous);
    require(internCalls==ic&&hookCalls==hc&&addCalls==ac&&scanCalls==sc);
    std::printf("PASS extracted production initializer: %s\n",scenario);
}
'''
class Initialization(unittest.TestCase):
    def test_extracted_initializer_wait_and_no_rehook(self):
        with tempfile.TemporaryDirectory(prefix='lac-init-') as folder:
            cpp=Path(folder)/'initializer.cpp';binary=Path(folder)/'initializer'
            cpp.write_text(PREAMBLE+GLOBALS+PROVIDERS+FUNCTION+MAIN)
            subprocess.run(['clang++','-std=c++17','-Wall','-Wextra','-Werror','-I',str(ROOT),
                str(cpp),'-o',str(binary)],check=True)
            for case in ('wait','ready','identity-fail','render-fail','missing-hook','metal-fail','scan-fail'):
                subprocess.run([str(binary),case],check=True)
if __name__=='__main__':unittest.main()
