#include "LACQCScanner.h"
#include <string.h>
#if defined(__APPLE__)
#include <ptrauth.h>
#endif
namespace lac {
uintptr_t stripCode(uintptr_t p) {
#if defined(__APPLE__) && __has_feature(ptrauth_calls)
    if(!p)return 0;
    return (uintptr_t)ptrauth_strip((void*)p,ptrauth_key_function_pointer);
#else
    return p;
#endif
}
uintptr_t stripData(uintptr_t p) {
#if defined(__APPLE__) && __has_feature(ptrauth_calls)
    if(!p)return 0;
    return (uintptr_t)ptrauth_strip((void*)p,ptrauth_key_process_dependent_data);
#else
    return p;
#endif
}
uintptr_t callable(uintptr_t p) {
#if defined(__APPLE__) && __has_feature(ptrauth_calls)
    if(!p)return 0;
    return (uintptr_t)ptrauth_sign_unauthenticated((void*)stripCode(p),ptrauth_key_function_pointer,0);
#else
    return p;
#endif
}
bool QCImage::contains(uintptr_t p,size_t n,unsigned flags) const {
    if(!p||!n||n>UINTPTR_MAX-p)return false;
    for(size_t i=0;i<spanCount&&i<32;i++) {
        const Span &s=spans[i];
        if((s.flags&flags)==flags && p>=s.address && n<=s.size && p-s.address<=s.size-n)return true;
    }
    return false;
}
uint32_t QCImage::word(uintptr_t p) const {uint32_t v=0;if(contains(p,4))memcpy(&v,(void*)p,4);return v;}
static bool adrp(uint32_t i){return(i&0x9f000000u)==0x90000000u;}
static bool add(uint32_t i){return(i&0xff800000u)==0x91000000u;}
static bool ldr(uint32_t i){return(i&0xffc00000u)==0xf9400000u;}
static bool bl(uint32_t i){return(i&0xfc000000u)==0x94000000u;}
static bool ret(uint32_t i){return i==0xd65f03c0u||i==0xd65f0fffu;}
static int64_t sx(uint64_t x,unsigned bits){uint64_t m=UINT64_C(1)<<(bits-1);return(int64_t)((x^m)-m);}
uintptr_t QCImage::pair(uintptr_t pc,bool load) const {
    if(!contains(pc,8,5))return 0;
    uint32_t a=word(pc),b=word(pc+4);
    if(!adrp(a)||(load?!ldr(b):!add(b))||((a&31)!=((b>>5)&31)))return 0;
    int64_t delta=sx(((uint64_t)((a>>5)&0x7ffff)<<2)|((a>>29)&3),21)*4096;
    uintptr_t page=(uintptr_t)((int64_t)(pc&~(uintptr_t)4095)+delta);
    uintptr_t off=(b>>10)&4095;off<<=load?3:((b>>22)&1?12:0);
    if(off>UINTPTR_MAX-page)return 0;
    return page+off;
}
uintptr_t QCImage::uniqueString(const char *s) const {
    size_t n=strlen(s)+1;uintptr_t result=0;
    for(size_t r=0;r<spanCount;r++) {
        const Span &span=spans[r];if(!(span.flags&1)||(span.flags&2)||span.size<n)continue;
        const unsigned char *p=(const unsigned char*)span.address;
        for(size_t j=0;j<=span.size-n;j++)if(p[j]==(unsigned char)s[0]&&!memcmp(p+j,s,n)) {
            if(result && result!=(uintptr_t)(p+j))return 0;result=(uintptr_t)(p+j);
        }
    }
    return result;
}
uintptr_t QCImage::uniqueXref(uintptr_t target) const {
    uintptr_t result=0;if(!target||textSize<8)return 0;
    for(size_t i=0;i+8<=textSize;i+=4)if(pair(text+i,false)==target) {
        if(result)return 0;result=text+i;
    }
    return result;
}
uintptr_t QCImage::functionStart(uintptr_t xref,size_t maxBytes) const {
    if(xref<text||!contains(xref,4,5))return 0;
    size_t bytes=xref-text;if(bytes>maxBytes)bytes=maxBytes;
    for(size_t i=0;i<=bytes;i+=4) {
        uintptr_t p=xref-i;uint32_t w=word(p);
        if(w==0xd503237fu)return p;
        if((w&0xffc00000u)==0xa9800000u&&((w>>5)&31)==31&&(w&0x200000)) {
            return p>=text+4&&word(p-4)==0xd503237fu?p-4:p;
        }
    }
    return 0;
}
uintptr_t resolveInternWrapper(const QCImage &im) {
    uintptr_t result=0;
    for(size_t off=0;off+28<=im.textSize;off+=4) {
        uintptr_t p=im.text+off;
        if(im.word(p)!=0xa9be4ff4u||im.word(p+4)!=0xa9017bfdu||im.word(p+8)!=0x910043fdu||
           im.word(p+12)!=0xaa0003f3u||!bl(im.word(p+16))||im.word(p+20)!=0xaa0003f4u||
           (im.word(p+24)&0x7f00001fu)!=0x35000000u)continue;
        if(result)return 0;
        result=off>=4&&im.word(p-4)==0xd503237fu?p-4:p;
    }
    return result;
}
static uintptr_t branch(const QCImage &im,uintptr_t p) {
    if(!bl(im.word(p)))return 0;
    uintptr_t target=(uintptr_t)((int64_t)p+sx(im.word(p)&0x3ffffff,26)*4);
    return im.contains(target,4,5)?target:0;
}
static bool registration(const QCImage &im,uintptr_t p,uintptr_t *ctx,uintptr_t *target,uint32_t *atom) {
    if(p<im.text+8||!im.contains(p-8,28,5))return false;
    uint32_t m=im.word(p);
    if((m&0xffe0001fu)!=0x52800000u)return false; /* MOVZ w0, imm, lsl0 */
    if((im.word(p-8)&31)!=1||(im.word(p-4)&31)!=1)return false; /* x1=context */
    uintptr_t c=im.pair(p-8,false);if((c&7)||!im.contains(c,8))return false;
    for(unsigned j=1;j<=4;j++) {
        uintptr_t t=branch(im,p+j*4);if(t){*ctx=c;*target=t;*atom=(m>>5)&65535;return true;}
    }
    return false;
}
static bool slots(const QCImage &im,uintptr_t vt,Resolution *r) {
    if(!im.contains(vt,22*8))return false;
    uintptr_t table[22];memcpy(table,(void*)vt,sizeof(table));
    r->renderSlot=-1;r->edgeSlot=-1;r->identity=stripCode(table[0]);
    if(!im.contains(r->identity,4,5))return false;
    for(int i=0;i<22;i++) {
        uintptr_t f=stripCode(table[i]);if(!im.contains(f,4,5))continue;
        bool a=false,b=false,c=false,d=false;
        for(unsigned k=0;k<80&&im.contains(f+k*4,4,5);k++) {
            uint32_t w=im.word(f+k*4);if(ret(w))break;
            a|=w==0xaa0503f7u;b|=w==0xaa0603f4u;c|=w==0x2d0002e1u;d|=w==0x39000288u;
        }
        if(a&&b&&c&&d){if(r->edgeSlot>=0)return false;r->edgeSlot=i;r->edge=f;}
        if(i==21)continue;
        for(unsigned k=0;k+1<24&&im.contains(f+k*4,8,5);k++) {
            uint32_t w=im.word(f+k*4);if(ret(w))break;
            bool found=false;
            if(w==0xf9400008u) {
                uint32_t l=im.word(f+(k+1)*4);
                if((l&0xffc003ffu)==0xf9400108u&&((l>>10)&4095)==(unsigned)i+1) {
                    for(unsigned j=k+2;j<k+16&&j<24&&im.contains(f+j*4,4,5);j++) {
                        uint32_t v=im.word(f+j*4);if(ret(v))break;
                        if(v==0xd61f0100u||v==0xd63f0100u){found=true;break;}
                    }
                }
            } else if(w==0xf9400010u) {
                for(unsigned j=k+1;j+1<24&&j<k+10&&im.contains(f+j*4,4,5);j++) {
                    uint32_t l=im.word(f+j*4);
                    if((l&0xffe00c00u)!=0xf8400c00u||((l>>5)&31)!=16||(l&31)!=8)continue;
                    int off=(int)sx((l>>12)&511,9);if(off!=(i+1)*8)break;
                    for(unsigned m=j+1;m<j+10&&m<24&&im.contains(f+m*4,4,5);m++) {
                        uint32_t v=im.word(f+m*4);if(ret(v))break;
                        if((v&0xfffff800u)==0xd73f0800u||(v&0xfffff800u)==0xd71f0800u){found=true;break;}
                    }
                    break;
                }
            }
            if(found) {
                if(r->renderSlot>=0&&r->renderSlot!=i+1)return false;
                r->renderSlot=i+1;r->render=stripCode(table[i+1]);break;
            }
        }
    }
    if(r->edgeSlot<1||r->renderSlot<1||r->edgeSlot==r->renderSlot||!im.contains(r->render,4,5))return false;
    r->twoShapes=false;bool ended=false;
    for(unsigned i=0;i<256&&im.contains(r->render+i*4,4,5);i++) {
        uint32_t w=im.word(r->render+i*4);
        if((w&0xffffffe0u)==0xf9400fa0u)r->twoShapes=true;
        if(ret(w)){ended=true;break;}
    }
    return r->twoShapes||ended;
}
bool selectProfile(unsigned major,unsigned minor,unsigned patch,ABIProfile *out) {
    if(!out)return false;
    if(major==16){*out={0x18,0x58,0x110};return true;}
    if(major==17&&minor==2&&patch==1){*out={0x18,0x60,0xf8};return true;}
    return false;
}
bool resolveQC(const QCImage &im,uint32_t gaussianAtom,Resolution *out,ptrdiff_t profileDestinationOffset) {
    if(!out||!im.text||im.textSize<32||im.textSize>64*1024*1024u||im.spanCount>32)return false;
    Resolution r={};r.commandOffset=-1;r.destinationOffset=-1;
    for(size_t off=8;off+28<=im.textSize;off+=4) {
        uintptr_t p=im.text+off,ctx=0,t=0;uint32_t atom=0;
        if(!registration(im,p,&ctx,&t,&atom))continue;
        uintptr_t gauss=atom==gaussianAtom?ctx:0,secondContext=0,cursor=p;unsigned count=1;
        for(;count<8;count++) {
            bool found=false;
            for(unsigned gap=1;gap<16&&im.contains(cursor+gap*4,20,5);gap++) {
                uintptr_t c=0,target=0;uint32_t a=0;
                if(registration(im,cursor+gap*4,&c,&target,&a)&&target==t) {
                    cursor+=gap*4;if(count==1)secondContext=c;
                    if(a==gaussianAtom)gauss=c;found=true;break;
                }
            }
            if(!found)break;
        }
        if(count<4)continue;
        /* Sample 0x5484..0x54a4 selects cluster[1] without interning atoms.
         * Consume this cluster once: suffixes are not independent clusters. */
        off=(size_t)(cursor-im.text);
        if(!gaussianAtom)gauss=secondContext;
        if(!gauss)continue;
        uintptr_t tab=0;
        for(unsigned n=0;n<24&&p>=im.text+8+n*4;n++) {
            uintptr_t q=p-8-n*4,candidate=im.pair(q,true);
            if(candidate&&!(candidate&7)&&im.contains(candidate,8)) {tab=candidate;break;}
        }
        if(!tab)continue;
        if(r.addFilter&&(r.addFilter!=t||r.gaussianContextSlot!=gauss||r.tableSlot!=tab))return false;
        r.addFilter=t;r.gaussianContextSlot=gauss;r.tableSlot=tab;
    }
    if(!r.addFilter||!r.tableSlot||!r.gaussianContextSlot)return false;
    uintptr_t vtableRaw=0,tableRaw=0;
    /* Sample 0x84b8 -> 0x84bc -> 0x8540 passes stripData(*contextSlot)
     * directly to the vtable resolver. There is no extra object dereference. */
    memcpy(&vtableRaw,(void*)r.gaussianContextSlot,8);
    r.gaussianVtable=stripData(vtableRaw);
    memcpy(&tableRaw,(void*)r.tableSlot,8);
    r.filterTable=stripData(tableRaw); /* null is transient, not a scan failure */
    if(!r.gaussianVtable||!slots(im,r.gaussianVtable,&r))return false;
    uintptr_t anchor=im.uniqueString("!memoryless_in_use ()");
    r.stopEncoders=im.functionStart(im.uniqueXref(anchor),0x800);
    anchor=im.uniqueString("Command buffer allocation failed!\n");
    uintptr_t fn=im.functionStart(im.uniqueXref(anchor),0x1000);
    if(!r.stopEncoders||!fn)return false;
    uint32_t aliases=1;
    for(unsigned i=0;i<48&&im.contains(fn+i*4,4,5);i++) {
        uint32_t w=im.word(fn+i*4);
        if((w&0xffe0ffe0u)==0xaa0003e0u) {
            unsigned dst=w&31,src=(w>>16)&31;
            if(aliases&(1u<<src))aliases|=1u<<dst;else aliases&=~(1u<<dst);
        } else if((w&0xff800000u)==0xf9000000u) {
            unsigned base=(w>>5)&31,rt=w&31;ptrdiff_t offset=(ptrdiff_t)(((w>>10)&4095)*8);
            if((aliases&(1u<<base))&&offset>=0x400&&offset<=0x4000) {r.commandOffset=offset;break;}
            if(w&0x400000)aliases&=~(1u<<rt);
        } else if(bl(w)) aliases&=0xfff80000u; /* BL clobbers x0..x18 */
    }
    /* Sample only invokes projection-pattern resolver on iOS>=18 (0x7a30).
     * 16/17 use the exact initialization-branch member offsets, not this newer
     * pattern. No slide-relative/global address is ever supplied by a profile. */
    r.destinationOffset=profileDestinationOffset;
    for(size_t i=0;profileDestinationOffset<0&&i+24<=im.textSize;i+=4) {
        uintptr_t p=im.text+i;uint32_t w=im.word(p);
        if((w&0xffc003ffu)==0xf9400008u&&im.word(p+4)==0x29442909u&&
           im.word(p+8)==0x1e220120u&&im.word(p+12)==0x2943310bu&&
           im.word(p+16)==0x0b090169u&&im.word(p+20)==0x1e220121u) {
            ptrdiff_t offset=(ptrdiff_t)(((w>>10)&4095)*8);
            if(r.destinationOffset>=0&&r.destinationOffset!=offset)return false;
            r.destinationOffset=offset;
        }
    }
    if(r.commandOffset<0||r.destinationOffset<0x80||r.destinationOffset>0x400)return false;
    *out=r;return true;
}
bool filterTableReady(const Resolution &r) { return r.filterTable!=0; }
} // namespace lac
