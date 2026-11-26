#include "../src/backboard/LACQCScanner.h"
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
struct alignas(4096) Fixture {
    unsigned char memory[16384];lac::QCImage image;
    uintptr_t at(unsigned off){return(uintptr_t)memory+off;}
    void word(unsigned off,uint32_t w){memcpy(memory+off,&w,4);}
    void pointer(unsigned off,uintptr_t p){memcpy(memory+off,&p,8);}
    void pair(unsigned off,unsigned target,unsigned reg,bool load=false) {
        int64_t pages=((int64_t)(at(target)&~(uintptr_t)4095)-(int64_t)(at(off)&~(uintptr_t)4095))/4096;
        uint64_t imm=(uint64_t)pages&0x1fffff;
        word(off,0x90000000u|((imm&3)<<29)|((imm>>2)<<5)|reg);
        unsigned low=(unsigned)(at(target)&4095);
        word(off+4,(load?0xf9400000u:0x91000000u)|((load?low/8:low)<<10)|(reg<<5)|reg);
    }
    explicit Fixture(unsigned registrations=4) {
        memset(memory,0,sizeof(memory));memset(&image,0,sizeof(image));
        for(unsigned i=0;i<8192;i+=4)word(i,0xd503201f);
        image.spans[0]={at(0),8192,5};image.spans[1]={at(8192),4096,1};image.spans[2]={at(12288),4096,3};
        image.spanCount=3;image.text=at(0);image.textSize=8192;
        pair(0xe0,0x3100,9,true);pointer(0x3100,at(0x3300));
        assert(registrations>=4&&registrations<=8);
        for(unsigned i=0;i<registrations;i++) {
            unsigned off=0x100+i*16;pair(off,0x3000+i*16,1);
            word(off+8,0x52800000u|((10+i)<<5));
            int32_t delta=(int32_t)(0x600-(off+12));word(off+12,0x94000000u|((delta/4)&0x3ffffff));
            pointer(0x3000+i*16,at(0x2000));
        }
        for(unsigned i=0;i<22;i++)pointer(0x2000+i*8,at(0xc00));
        word(0x600,0xd65f0fff);word(0xc00,0xd65f0fff);
        pointer(0x2000+5*8,at(0x800));pointer(0x2000+6*8,at(0x900));pointer(0x2000+9*8,at(0xb00));
        word(0x800,0xf9400010);word(0x804,0xf8400c00|(48<<12)|(16<<5)|8);
        word(0x808,0xd73f0900);word(0x80c,0xd65f0fff);
        word(0x900,0xd503237f);word(0x904,0xf9400fa8);word(0x908,0xd65f0fff);
        word(0xb00,0xaa0503f7);word(0xb04,0xaa0603f4);word(0xb08,0x2d0002e1);word(0xb0c,0x39000288);word(0xb10,0xd65f0fff);
        strcpy((char*)memory+0x2200,"!memoryless_in_use ()");strcpy((char*)memory+0x2240,"Command buffer allocation failed!\n");
        word(0x1000,0xd503237f);pair(0x1004,0x2200,0);word(0x100c,0xd65f0fff);
        word(0x1100,0xd503237f);word(0x1104,0xaa0003f3);
        word(0x1108,0xf9400000|((0x5a0/8)<<10)|(19<<5)|8);
        pair(0x1110,0x2240,0);word(0x1118,0xd65f0fff);
    }
};
int main() {
    Fixture f;lac::Resolution r={};
    assert(lac::resolveQC(f.image,11,&r,0xf8));
    assert(r.addFilter==f.at(0x600)&&r.gaussianContextSlot==f.at(0x3010)&&
           r.gaussianVtable==f.at(0x2000)&&
           r.filterTable==f.at(0x3300)&&r.tableSlot==f.at(0x3100));
    assert(lac::filterTableReady(r));
    assert(lac::resolveQC(f.image,0,&r,0xf8)); // no intern at startup
    assert(r.gaussianContextSlot==f.at(0x3010)&&r.gaussianVtable==f.at(0x2000));
    for(unsigned count=5;count<=8;++count) {
        Fixture longer(count);
        assert(lac::resolveQC(longer.image,0,&r,0xf8));
        assert(r.gaussianContextSlot==longer.at(0x3010));
    }
    Fixture ambiguous;
    ambiguous.pair(0x3e0,0x3500,9,true);ambiguous.pointer(0x3500,ambiguous.at(0x3300));
    for(unsigned i=0;i<4;++i) {
        unsigned off=0x400+i*16;ambiguous.pair(off,0x3400+i*16,1);
        ambiguous.word(off+8,0x52800000u|((20+i)<<5));
        int32_t delta=(int32_t)(0x600-(off+12));
        ambiguous.word(off+12,0x94000000u|((delta/4)&0x3ffffff));
        ambiguous.pointer(0x3400+i*16,ambiguous.at(0x2000));
    }
    assert(!lac::resolveQC(ambiguous.image,0,&r,0xf8));
    Fixture pending;pending.pointer(0x3100,0);
    assert(lac::resolveQC(pending.image,0,&r,0xf8)&&!lac::filterTableReady(r));
    pending.pointer(0x3100,pending.at(0x3300));
    assert(lac::resolveQC(pending.image,0,&r,0xf8)&&lac::filterTableReady(r));
    Fixture extra;extra.pointer(0x3010,extra.at(0x3200));extra.pointer(0x3200,extra.at(0x2000));
    assert(!lac::resolveQC(extra.image,0,&r,0xf8)); // false double-indirection fixture rejected
    Fixture outside;outside.pointer(0x3010,UINTPTR_MAX-4);
    assert(!lac::resolveQC(outside.image,0,&r,0xf8));
    assert(lac::resolveQC(f.image,11,&r,0xf8));
    assert(r.renderSlot==6&&r.edgeSlot==9&&r.render==f.at(0x900)&&r.twoShapes);
    assert(r.stopEncoders==f.at(0x1000)&&r.commandOffset==0x5a0&&r.destinationOffset==0xf8);
    assert(!lac::resolveQC(f.image,99,&r,0xf8));
    f.word(0x13c,0xd503201f);assert(!lac::resolveQC(f.image,11,&r,0xf8));
    Fixture bad;bad.word(0xb08,0xd503201f);assert(!lac::resolveQC(bad.image,11,&r,0xf8));
    Fixture plain;plain.word(0x800,0xf9400008);plain.word(0x804,0xf9400108|(6<<10));plain.word(0x808,0xd61f0100);
    assert(lac::resolveQC(plain.image,11,&r,0xf8)&&r.renderSlot==6);
    assert(!f.image.contains(UINTPTR_MAX-2,8));assert(!f.image.pair(f.at(0x1ffc),false));
    puts("PASS scanner: synthetic iOS17 PAC/plain forwarders, Gaussian atom/cluster, edge, command alias, bounded failures");
}
