#include "LACClockData.h"
#include "../clock/NGClockFieldCodec.h"
#include <math.h>
#include <stdio.h>
#include <string.h>

static int bounded(float x,float lo,float hi) { return isfinite(x)&&x>=lo&&x<=hi; }
LACClockVisualParameters LACClockDefaultVisualParameters(void) {
    LACClockVisualParameters p={};
    p.version=LAC_CLOCK_FILTER_CONTRACT_VERSION;
    p.bezelWidth=9; p.glassThickness=120; p.refractionScale=1.4f;
    p.refractiveIndex=1.6f; p.dispersionStrength=0;
    p.backdropZoom=1; p.shapeScale=1;
    return p;
}
int LACClockCopyFilterType(LACClockChannel channel,uint32_t slot,char *dst,uint32_t cap) {
    if (!dst||!cap) return 0;
    dst[0]=0; int n=-1;
    if (channel==LACClockChannelMain && slot==0) n=snprintf(dst,cap,"%s",LAC_CLOCK_FILTER_TYPE);
    if (channel==LACClockChannelEditor && slot==0) n=snprintf(dst,cap,"%s",LAC_CLOCK_EDITOR_FILTER_TYPE);
    if (channel==LACClockChannelPoster && slot<LAC_CLOCK_POSTER_SLOT_COUNT)
        n=snprintf(dst,cap,"%s%u",LAC_CLOCK_POSTER_FILTER_TYPE_PREFIX,slot);
    if (n<0 || (uint32_t)n>=cap) {dst[0]=0;return 0;}
    return 1;
}
int LACClockValidateVisualParameters(const LACClockVisualParameters *p) {
    if (!p||p->version!=LAC_CLOCK_FILTER_CONTRACT_VERSION) return 0;
    if (!bounded(p->radius,0,2048)||!bounded(p->bezelWidth,0,128)||
        !bounded(p->glassThickness,0,512)||!bounded(p->refractionScale,0,16)||
        !bounded(p->refractiveIndex,1,5)||!bounded(p->dispersionStrength,0,8)||
        !bounded(p->backdropZoom,0.01f,8)||!bounded(p->shapeScale,0.05f,1)||
        !bounded(p->coverSideRefraction,0,1)) return 0;
    if (!(p->clockOrientation==0||p->clockOrientation==2||p->clockOrientation==3||p->clockOrientation==4)) return 0;
    for(unsigned i=0;i<4;i++) if(!bounded(p->tintRGBA[i],0,1)) return 0;
    return 1;
}
int LACClockBuildUniforms(const LGClockFieldHeader *h,const LACClockVisualParameters *p,
                          uint32_t sw,uint32_t sh,uint32_t ow,uint32_t oh,
                          LGClockMetalUniformsRecovered *u) {
    if(!u||!LGClockFieldHeaderBasicValid(h)||!LACClockValidateVisualParameters(p)||
       !sw||!sh||!ow||!oh||sw>16384||sh>16384||ow>16384||oh>16384||
       !isfinite(h->points_width)||!isfinite(h->points_height)) return 0;
    /* Supported geometry is an uncropped, uniformly scaled LOCAL clock
     * capture. Reject aspect distortion/crop padding rather than fabricating
     * a screen-space transform. Up to two pixels cover raster rounding only. */
    float pw=h->points_width,ph=h->points_height;
    if(p->clockOrientation>=3){float tmp=pw;pw=ph;ph=tmp;}
    float expectedHeight=(float)sw*ph/pw;
    float expectedOutputHeight=(float)ow*(float)sh/(float)sw;
    if(!isfinite(expectedHeight)||fabsf(expectedHeight-(float)sh)>2.0f||
       fabsf(expectedOutputHeight-(float)oh)>2.0f)return 0;
    memset(u,0,sizeof(*u));
    u->resolution=(LGFloat2){(float)sw,(float)sh};
    u->outputResolution=(LGFloat2){(float)ow,(float)oh};
    u->screenResolution=u->resolution; u->wallpaperResolution=u->resolution;
    u->lensOrigin=(LGFloat2){h->points_width,h->points_height};
    u->samplingTransformX=(LGFloat2){1,0};u->samplingTransformY=(LGFloat2){0,1};
    u->radius=p->radius;u->bezelWidth=p->bezelWidth;u->glassThickness=p->glassThickness;
    u->refractionScale=p->refractionScale;u->refractiveIndex=p->refractiveIndex;
    u->backdropZoom=p->backdropZoom;u->shapeScale=p->shapeScale;
    /* Whole clock capture, not screen/widget geometry. The field publisher and
     * host must describe the same local bounds. Shader scales POINT SDF via
     * shapeSize/lensOrigin; zero shapeOrigin is deliberate for this contract. */
    u->shapeSize=u->resolution;u->useGlyphMask=2;
    u->dispersionStrength=p->dispersionStrength;
    u->tintColor=(LGFloat4){p->tintRGBA[0],p->tintRGBA[1],p->tintRGBA[2],p->tintRGBA[3]};
    u->validMaxUV=(LGFloat2){1,1};u->clockOrientation=p->clockOrientation;
    u->coverSideRefraction=p->coverSideRefraction;u->captureAligned=1;
    return 1;
}
int LACClockPrepareField(const void *mapped,size_t bytes,void *snap,size_t cap,
                         void *half,size_t halfcap,LGClockFieldHeader *accepted) {
    if(!mapped||!snap||!half||!accepted||((uintptr_t)mapped&7u))return 0;
    int ok=0;
    for(unsigned i=0;i<3 && !ok;i++)ok=LGClockFieldCopyStable(mapped,bytes,snap,cap);
    if(!ok)return 0;
    LGClockFieldHeader h;memcpy(&h,snap,sizeof(h));
    if(!isfinite(h.points_width)||!isfinite(h.points_height))return 0;
    size_t count=(size_t)h.width*h.height,need=sizeof(h)+count*4;
    if(need>cap)return 0;
    for(size_t i=0;i<count;i++) {
        float x;memcpy(&x,(const char*)snap+sizeof(h)+i*4,4);
        if(!isfinite(x)||fabsf(x)>65504.0f)return 0;
    }
    if(!NGClockFieldSnapshotToR16(snap,need,half,halfcap))return 0;
    *accepted=h;return 1;
}
int LACClockAcknowledgeCompleted(void *mapped,size_t bytes,const LGClockFieldHeader *h) {
    if(!mapped||((uintptr_t)mapped&7u)||bytes<sizeof(*h)||!h||!h->sequence||
       (h->sequence&1)||!LGClockFieldHeaderBasicValid(h))return 0;
    LGClockFieldHeader *live=(LGClockFieldHeader*)mapped;
    const uint64_t s=__atomic_load_n(&live->sequence,__ATOMIC_ACQUIRE);
    if(s!=h->sequence || __atomic_load_n(&live->token_10,__ATOMIC_ACQUIRE)!=h->token_10||
       __atomic_load_n(&live->mach_absolute_time,__ATOMIC_ACQUIRE)!=h->mach_absolute_time)return 0;
    if(__atomic_load_n(&live->sequence,__ATOMIC_ACQUIRE)!=s)return 0;
    uint64_t old=__atomic_load_n(&live->reserved_20,__ATOMIC_ACQUIRE);
    for(unsigned i=0;i<8 && old<h->sequence;i++) {
        if(__atomic_load_n(&live->sequence,__ATOMIC_ACQUIRE)!=s||
           __atomic_load_n(&live->token_10,__ATOMIC_ACQUIRE)!=h->token_10)return 0;
        if(__atomic_compare_exchange_n(&live->reserved_20,&old,h->sequence,0,__ATOMIC_RELEASE,__ATOMIC_RELAXED))return 1;
    }
    return old>=h->sequence;
}
