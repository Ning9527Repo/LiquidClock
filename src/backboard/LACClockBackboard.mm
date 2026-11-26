#import "LACClockMetal.h"
#include "LACQCScanner.h"
#include <mach-o/dyld.h>
#include <mach-o/loader.h>
#include <mach/mach.h>
#include <dlfcn.h>
#include <string.h>
#include <os/lock.h>

/* Private ABI profiles are recovered STRUCTURE offsets, not slide-relative
 * globals. All global/function locations are bounded patterns/exports.
 * Sample init 0x7554 and callbacks 0xacc0/0xeb94 are the authority. */
using Intern=uint32_t(*)(const char*);
using Add=void(*)(uint32_t,void*);
using Stop=void(*)(void*);
using Identity=int(*)(void*,void*);
using RenderOne=void(*)(void*,void*,void*,void*,float,void*,float,bool,void*,void*,float*);
using RenderTwo=void(*)(void*,void*,void*,void*,float,void*,float,bool,void*,void*,void*,float*);
using Hook=void(*)(void*,void*,void**);
static os_unfair_lock initLock=OS_UNFAIR_LOCK_INIT;
static int state=LACClockBackboardNotInitialized;
static const char *lastError="not initialized";
static lac::Resolution resolved={};
static bool resolverReady=false,routeAtomsReady=false,hooksInstalled=false;
static Identity originalIdentity;
static RenderOne originalOne;
static RenderTwo originalTwo;
static Stop stopEncoders;
static size_t textureOffset;
static constexpr size_t filterAtomOffset=0x18;
struct Route {uint32_t atom;LACClockChannel channel;uint32_t slot;};
static Route routes[18];
static bool readable(uintptr_t p,void *out,size_t n) {
    if(!p||n>UINTPTR_MAX-p)return false;
    vm_size_t copied=0;
    return vm_read_overwrite(mach_task_self(),(vm_address_t)p,n,
        (vm_address_t)out,&copied)==KERN_SUCCESS&&copied==n;
}
static const Route *routeFor(void *filter) {
    if(!__atomic_load_n(&routeAtomsReady,__ATOMIC_ACQUIRE))return nullptr;
    uint32_t atom=0;
    if(!readable((uintptr_t)filter+filterAtomOffset,&atom,sizeof(atom)))return nullptr;
    for(unsigned i=0;i<18;i++)if(atom&&routes[i].atom==atom)return &routes[i];
    return nullptr;
}
static id readObject(void *base,size_t offset) {
    uintptr_t value=0;
    if(!base||offset>0x4000||!readable((uintptr_t)base+offset,&value,sizeof(value)))return nil;
    /* Object members are raw Objective-C pointers in the evidenced profile.
     * Do NOT strip arbitrary data bits from ObjC objects or manually mask PAC. */
    return (__bridge id)(void*)value;
}
static bool encode(const Route *route,void *context,void *sourceSurface) {
    if(!route||__atomic_load_n(&state,__ATOMIC_ACQUIRE)!=LACClockBackboardReady||!context||!sourceSurface)return false;
    uintptr_t destinationSurface=0;
    if(!readable((uintptr_t)context+(size_t)resolved.destinationOffset,&destinationSurface,8)||!destinationSurface)return false;
    id<MTLTexture> source=readObject(sourceSurface,textureOffset);
    id<MTLTexture> destination=readObject((void*)lac::stripData(destinationSurface),textureOffset);
    if(!source||!destination||source==destination)return false;
    stopEncoders(context);
    id<MTLCommandBuffer> buffer=readObject(context,(size_t)resolved.commandOffset);
    return buffer&&LACClockMetalEncode(route->channel,route->slot,buffer,source,destination);
}
static int identityHook(void *self,void *filter) {
    if(routeFor(filter))return 0;
    return originalIdentity?originalIdentity(self,filter):0;
}
static void renderOneHook(void *self,void *filter,void *a2,void *context,float scale,
                          void *source,float radius,bool flag,void *a6,void *a7,float *result) {
    const Route *route=routeFor(filter);
    if(originalOne)originalOne(self,filter,a2,context,scale,source,route?0:radius,flag,a6,a7,result);
    if(route)encode(route,context,source);
}
static void renderTwoHook(void *self,void *filter,void *a2,void *context,float scale,
                          void *source,float radius,bool flag,void *a6,void *a7,void *shape2,float *result) {
    const Route *route=routeFor(filter);
    if(originalTwo)originalTwo(self,filter,a2,context,scale,source,route?0:radius,flag,a6,a7,shape2,result);
    if(route)encode(route,context,source);
}
static bool quartzCore(lac::QCImage *im) {
    const uint32_t count=_dyld_image_count();
    for(uint32_t i=0;i<count;i++) {
        const char *name=_dyld_get_image_name(i);if(!name)continue;
        const char *base=strrchr(name,'/');if(strcmp(base?base+1:name,"QuartzCore"))continue;
        const mach_header_64 *h=(const mach_header_64*)_dyld_get_image_header(i);
        if(!h||h->magic!=MH_MAGIC_64||h->ncmds>512||h->sizeofcmds>65536)return false;
        const uintptr_t start=(uintptr_t)(h+1),end=start+h->sizeofcmds;
        uintptr_t p=start;intptr_t slide=_dyld_get_image_vmaddr_slide(i);
        for(uint32_t j=0;j<h->ncmds;j++) {
            if(p>end||end-p<sizeof(load_command))return false;
            const load_command *lc=(const load_command*)p;
            if(lc->cmdsize<sizeof(*lc)||lc->cmdsize>end-p)return false;
            if(lc->cmd==LC_SEGMENT_64) {
                if(lc->cmdsize<sizeof(segment_command_64))return false;
                const segment_command_64 *seg=(const segment_command_64*)p;
                if(seg->vmsize&&seg->initprot&VM_PROT_READ) {
                    if(im->spanCount>=32||seg->vmsize>512*1024*1024u)return false;
                    uintptr_t a=(uintptr_t)(seg->vmaddr+slide);
                    if(seg->vmsize>UINTPTR_MAX-a)return false;
                    im->spans[im->spanCount++]={a,(size_t)seg->vmsize,(unsigned)seg->initprot};
                }
                if(seg->nsects>(lc->cmdsize-sizeof(*seg))/sizeof(section_64))return false;
                const section_64 *sections=(const section_64*)(seg+1);
                for(uint32_t k=0;k<seg->nsects;k++)if(!strncmp(sections[k].sectname,"__text",16)&&!strncmp(sections[k].segname,"__TEXT",16)) {
                    if(im->text)return false;im->text=(uintptr_t)(sections[k].addr+slide);im->textSize=(size_t)sections[k].size;
                }
            }
            p+=lc->cmdsize;
        }
        return im->textSize&&im->contains(im->text,im->textSize,5);
    }
    return false;
}
static LACClockBackboardStatus fail(LACClockBackboardStatus code,const char *error) {
    __atomic_store_n(&lastError,error,__ATOMIC_RELEASE);
    __atomic_store_n(&state,(int)code,__ATOMIC_RELEASE);return code;
}
LACClockBackboardStatus LACClockBackboardGetStatus(void) {
    return (LACClockBackboardStatus)__atomic_load_n(&state,__ATOMIC_ACQUIRE);
}
const char *LACClockBackboardLastError(void) {return __atomic_load_n(&lastError,__ATOMIC_ACQUIRE);}
LACClockBackboardStatus LACClockBackboardInitialize(const LACClockBackboardOptions *o) {
    os_unfair_lock_lock(&initLock);
    if(state!=LACClockBackboardNotInitialized&&state!=LACClockBackboardWaitingForTable) {
        LACClockBackboardStatus previous=LACClockBackboardGetStatus();
        os_unfair_lock_unlock(&initLock);return previous;
    }
    LACClockBackboardStatus status=LACClockBackboardBadConfiguration;
    @autoreleasepool {
        do {
            if(!o||o->version!=1||!o->mainFieldPath||!o->editorFieldPath||!o->posterFieldsPath||!o->metalLibraryPath||
               o->mainFieldPath[0]!='/'||o->editorFieldPath[0]!='/'||o->posterFieldsPath[0]!='/'||o->metalLibraryPath[0]!='/') {
                status=fail(LACClockBackboardBadConfiguration,"absolute field/library paths and contract version 1 required");break;
            }
            if(strcmp(getprogname(),"backboardd")) {
                status=fail(LACClockBackboardBadConfiguration,"initialize only in backboardd");break;
            }
            NSOperatingSystemVersion os=NSProcessInfo.processInfo.operatingSystemVersion;
            lac::ABIProfile profile={};
            if(!lac::selectProfile((unsigned)os.majorVersion,(unsigned)os.minorVersion,(unsigned)os.patchVersion,&profile)) {
                status=fail(LACClockBackboardUnsupportedABI,"supported private profiles: iOS16.x and iOS17.2.1 only");break;
            }
            textureOffset=profile.texture;
            if(!resolverReady) {
                lac::QCImage im={};
                if(!quartzCore(&im)) {status=fail(LACClockBackboardResolverFailed,"bounded QuartzCore image discovery failed");break;}
                uintptr_t atomAddress=lac::stripCode((uintptr_t)dlsym(RTLD_DEFAULT,"CAInternAtomWithCString"));
                if(!atomAddress)atomAddress=lac::resolveInternWrapper(im);
                if(!im.contains(atomAddress,4,5)) {status=fail(LACClockBackboardResolverFailed,"atom export/unique wrapper unavailable");break;}
                /* Sample 0x51ec,0x5484: select built-in cluster[1], without
                 * invoking intern while QuartzCore's table may still be null. */
                if(!lac::resolveQC(im,0,&resolved,profile.destination)) {
                    status=fail(LACClockBackboardResolverFailed,"ambiguous/missing Gaussian registration, callbacks or Metal layout");break;
                }
                resolved.internAtom=atomAddress;resolverReady=true;
            }
            Hook hook=(Hook)lac::callable((uintptr_t)dlsym(RTLD_DEFAULT,"MSHookFunction"));
            if(!hooksInstalled) {
                if(!hook) {status=fail(LACClockBackboardHookUnavailable,"PAC-safe genuine-descriptor path needs existing MSHookFunction");break;}
                /* A failure from here onward is terminal: MSHookFunction may
                 * already have replaced one IMP even if a later trampoline is absent. */
                fail(LACClockBackboardHookUnavailable,"partial hook installation; retry disabled");
                void *trampoline=nullptr;
                hook((void*)resolved.identity,(void*)lac::stripCode((uintptr_t)&identityHook),&trampoline);
                if(!trampoline) {status=fail(LACClockBackboardHookUnavailable,"identity hook produced no trampoline; filters not registered");break;}
                originalIdentity=(Identity)lac::callable((uintptr_t)trampoline);
                trampoline=nullptr;
                void *replacement=resolved.twoShapes?(void*)lac::stripCode((uintptr_t)&renderTwoHook):
                    (void*)lac::stripCode((uintptr_t)&renderOneHook);
                hook((void*)resolved.render,replacement,&trampoline);
                if(!trampoline) {status=fail(LACClockBackboardHookUnavailable,"render hook produced no trampoline; filters not registered");break;}
                if(resolved.twoShapes)originalTwo=(RenderTwo)lac::callable((uintptr_t)trampoline);
                else originalOne=(RenderOne)lac::callable((uintptr_t)trampoline);
                hooksInstalled=true;
            }
            /* The sample installs this hook path once, then checks the live
             * filter table and retries at 250ms without reinstalling it. */
            uintptr_t tableRaw=0;
            if(!readable(resolved.tableSlot,&tableRaw,sizeof(tableRaw))) {
                status=fail(LACClockBackboardResolverFailed,"filter table slot unreadable");break;
            }
            resolved.filterTable=lac::stripData(tableRaw);
            if(!lac::filterTableReady(resolved)) {
                status=fail(LACClockBackboardWaitingForTable,"filter table pending after one-time hooks; retry in 250ms");break;
            }
            if(!LACClockMetalInitialize(o)) {status=fail(LACClockBackboardMetalUnavailable,"ClockOnly.metallib/functions/device unavailable");break;}
            stopEncoders=(Stop)lac::callable(resolved.stopEncoders);
            /* Sample 0x8868..0x88f4 interns only after live table readiness.
             * Fill a temporary route table; publish once all atoms validate. */
            Intern intern=(Intern)lac::callable(resolved.internAtom);
            Route pendingRoutes[18]={};
            uint32_t gaussianAtom=intern("gaussianBlur");
            bool validAtoms=gaussianAtom!=0;
            for(unsigned i=0;validAtoms&&i<18;i++) {
                char name[64];Route &r=pendingRoutes[i];
                r.channel=i==0?LACClockChannelMain:(i==1?LACClockChannelEditor:LACClockChannelPoster);
                r.slot=i<2?0:i-2;
                validAtoms=LACClockCopyFilterType(r.channel,r.slot,name,sizeof(name))&&
                    (r.atom=intern(name))&&r.atom!=gaussianAtom;
                for(unsigned j=0;j<i;j++)if(pendingRoutes[j].atom==r.atom)validAtoms=false;
            }
            if(!validAtoms) {status=fail(LACClockBackboardRegistrationFailed,"invalid/colliding clock atom; no registration");break;}
            memcpy(routes,pendingRoutes,sizeof(routes));
            __atomic_store_n(&routeAtomsReady,true,__ATOMIC_RELEASE);
            fail(LACClockBackboardRegistrationFailed,"filter registration incomplete; retry disabled");
            Add add=(Add)lac::callable(resolved.addFilter);
            for(unsigned i=0;i<18;i++)add(routes[i].atom,(void*)resolved.gaussianContextSlot);
            __atomic_store_n(&lastError,"registered; GPU-completed ACK still required before hiding native glyphs",__ATOMIC_RELEASE);
            __atomic_store_n(&state,(int)LACClockBackboardReady,__ATOMIC_RELEASE);
            status=LACClockBackboardReady;
        } while(false);
    }
    os_unfair_lock_unlock(&initLock);return status;
}
