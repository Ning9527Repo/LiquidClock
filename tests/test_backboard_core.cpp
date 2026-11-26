#include "../src/backboard/LACClockData.h"
#include "../src/backboard/LACQCScanner.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
struct alignas(8) Field {LGClockFieldHeader header;float values[4];};
int main() {
    LACClockVisualParameters p=LACClockDefaultVisualParameters();
    assert(p.bezelWidth==9&&p.glassThickness==120&&p.refractionScale==1.4f&&p.refractiveIndex==1.6f&&p.dispersionStrength==0);
    assert(LACClockValidateVisualParameters(&p));p.refractiveIndex=5;assert(LACClockValidateVisualParameters(&p));
    p.refractiveIndex=5.01f;assert(!LACClockValidateVisualParameters(&p));p=LACClockDefaultVisualParameters();
    p.bezelWidth=NAN;assert(!LACClockValidateVisualParameters(&p));p=LACClockDefaultVisualParameters();
    char type[64];assert(LACClockCopyFilterType(LACClockChannelMain,0,type,64)&&!strcmp(type,LAC_CLOCK_FILTER_TYPE));
    assert(LACClockCopyFilterType(LACClockChannelEditor,0,type,64)&&!strcmp(type,LAC_CLOCK_EDITOR_FILTER_TYPE));
    for(uint32_t i=0;i<16;i++)assert(LACClockCopyFilterType(LACClockChannelPoster,i,type,64));
    assert(!LACClockCopyFilterType(LACClockChannelPoster,16,type,64));
    assert(!LACClockCopyFilterType((LACClockChannel)3,0,type,64));assert(!LACClockCopyFilterType(LACClockChannelMain,1,type,64));
    assert(!LACClockCopyFilterType(LACClockChannelMain,0,type,4)&&!type[0]);
    Field field={};LGClockFieldHeader &h=field.header;
    h.magic=LG_CLOCK_FIELD_MAGIC;h.version=2;h.sequence=2;h.token_10=11;h.mach_absolute_time=99;
    h.width=4;h.height=1;h.points_width=4;h.points_height=1;h.kind=1;
    field.values[0]=-2;field.values[1]=-0.5f;field.values[2]=0;field.values[3]=65504;
    Field snap={};uint16_t half[4]={};LGClockFieldHeader accepted={};
    assert(LACClockPrepareField(&field,sizeof(field),&snap,sizeof(snap),half,sizeof(half),&accepted));
    assert(half[0]==0xc000&&half[1]==0xb800&&half[2]==0&&half[3]==0x7bff);
    assert(!h.reserved_20);assert(LACClockAcknowledgeCompleted(&field,sizeof(field),&accepted));assert(h.reserved_20==2);
    h.sequence=4;assert(!LACClockAcknowledgeCompleted(&field,sizeof(field),&accepted));assert(h.reserved_20==2);
    h.sequence=2;h.token_10++;assert(!LACClockAcknowledgeCompleted(&field,sizeof(field),&accepted));h.token_10--;
    h.mach_absolute_time++;assert(!LACClockAcknowledgeCompleted(&field,sizeof(field),&accepted));h.mach_absolute_time--;
    h.sequence=3;assert(!LACClockPrepareField(&field,sizeof(field),&snap,sizeof(snap),half,sizeof(half),&accepted));h.sequence=2;
    field.values[0]=NAN;assert(!LACClockPrepareField(&field,sizeof(field),&snap,sizeof(snap),half,sizeof(half),&accepted));field.values[0]=-2;
    LGClockMetalUniformsRecovered u;memset(&u,0xa5,sizeof(u));
    assert(LACClockBuildUniforms(&h,&p,400,100,400,100,&u));
    assert(sizeof(u)==192&&u.useGlyphMask==2&&u.lensOrigin.x==4&&u.shapeSize.x==400&&u.resolution.y==100);
    assert(u.samplingTransformX.x==1&&u.samplingTransformY.y==1&&u.validMaxUV.x==1);
    for(float f:u._metalTailPadding)assert(f==0);
    assert(!LACClockBuildUniforms(&h,&p,0,100,400,100,&u));
    assert(!LACClockBuildUniforms(&h,&p,400,130,400,130,&u)); /* distortion/crop */
    assert(!LACClockBuildUniforms(&h,&p,400,100,400,120,&u)); /* mismatched target */
    p.clockOrientation=3;assert(LACClockBuildUniforms(&h,&p,100,400,100,400,&u));
    p.clockOrientation=0;
    h.points_width=INFINITY;assert(!LACClockBuildUniforms(&h,&p,400,100,400,100,&u));h.points_width=4;
    lac::ABIProfile profile={};assert(lac::selectProfile(17,2,1,&profile));
    assert(profile.filterAtom==0x18&&profile.texture==0x60&&profile.destination==0xf8);
    assert(lac::selectProfile(16,5,0,&profile)&&profile.texture==0x58&&profile.destination==0x110);
    assert(!lac::selectProfile(17,3,0,&profile)&&!lac::selectProfile(18,0,0,&profile));
    puts("PASS data: defaults/ranges/18 names/stable SDF/R16/192B uniforms/stale ACK/iOS17.2.1 profile");
}
