#include "../src/clock/LACClockSDF.h"
#include <assert.h>
#include <float.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static uint32_t rng=UINT32_C(0x9e3779b9);
static uint32_t next(void) { rng^=rng<<13; rng^=rng>>17; rng^=rng<<5; return rng; }
static unsigned long comparisons;
static double worst;

static void verify(const uint8_t *m, unsigned w, unsigned h, size_t stride, float scale) {
    size_t n=(size_t)w*h;
    float *out=malloc((n+2)*sizeof(float)); assert(out);
    out[0]=12345; out[n+1]=-12345;
    assert(LACClockSDFCreate(m,w,h,stride,scale,out+1,n));
    for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) {
        int inside=m[y*stride+x]>=128;
        unsigned best=UINT32_MAX;
        for (unsigned yy=0;yy<h;++yy) for (unsigned xx=0;xx<w;++xx) {
            if ((m[yy*stride+xx]>=128)==inside) continue;
            int dx=(int)x-(int)xx, dy=(int)y-(int)yy;
            unsigned sq=(unsigned)(dx*dx+dy*dy);
            if (sq<best) best=sq;
        }
        double expected=best==UINT32_MAX ? (double)(w>h?w:h)/scale :
                                          (sqrt((double)best)-0.5)/scale;
        if (inside) expected=-expected;
        double got=out[1+y*w+x], error=fabs(got-expected);
        double tolerance=1.1e-7*fmax(1,fabs(expected));
        if (!isfinite(got) || error>tolerance || (inside ? got>=0 : got<=0)) {
            fprintf(stderr,"bad SDF %ux%u at %u,%u scale=%g got=%.12g want=%.12g err=%g\n",
                    w,h,x,y,scale,got,expected,error);
            abort();
        }
        if (error>worst) worst=error;
        ++comparisons;
    }
    assert(out[0]==12345 && out[n+1]==-12345);
    free(out);
}

static void exhaustive(void) {
    uint8_t mask[12];
    for (unsigned bits=0;bits<4096;++bits) {
        for (unsigned i=0;i<12;++i) mask[i]=(bits&(1u<<i))?128:127;
        verify(mask,4,3,4,2);
    }
}

static void random_masks(void) {
    uint8_t mask[40*35];
    const float scales[]={0.125f,1,1.5f,2,3,4,16};
    for (unsigned t=0;t<400;++t) {
        unsigned w=1+next()%31, h=1+next()%27, stride=w+next()%7;
        memset(mask,255,sizeof(mask));
        for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) {
            unsigned density=t%5==0?5:t%5==1?95:50;
            mask[y*stride+x]=(next()%100<density)?(uint8_t)(128+next()%128):(uint8_t)(next()%128);
        }
        verify(mask,w,h,stride,scales[t%7]);
    }
}

static void adversarial(void) {
    uint8_t line[1024]; memset(line,0,sizeof(line));
    line[1023]=255; verify(line,1024,1,1024,1); /* many absent EDT sites before feature */
    line[1023]=0; line[0]=255; verify(line,1,1024,1,4);
    line[0]=0; line[17]=255; line[943]=255; verify(line,1024,1,1024,1.5f);
    uint8_t sparse[33*31]={0}; sparse[16*33+25]=255; sparse[30*33+2]=128;
    verify(sparse,33,31,33,2); /* fully empty rows/columns, asymmetric diagonal */
    for (unsigned i=0;i<33*31;++i) sparse[i]=(uint8_t)(255-sparse[i]);
    verify(sparse,33,31,33,3); /* opposite feature class */
    uint8_t one[]={0}; verify(one,1,1,1,1); one[0]=255; verify(one,1,1,1,1);
    uint8_t maxmask[1024*1024]={0};
    maxmask[1024*1024-1]=255;
    float *out=malloc(sizeof(float)*1024*1024); assert(out);
    assert(LACClockSDFCreate(maxmask,1024,1024,1024,2,out,1024*1024));
    assert(fabs((double)out[0]-(hypot(1023,1023)-0.5)/2)<0.0001);
    assert(out[1024*1024-1]==-0.25f);
    free(out);
}

static void antialiased_subpixel_masks(void) {
    /* Supersampled analytic geometry, NOT a UIKit emulation. The SDF contract
     * thresholds coverage at 128; it does not recover a vector contour. */
    uint8_t mask[37*29];
    const double offsets[]={0,0.125,0.5,0.875};
    for (unsigned t=0;t<16;++t) {
        unsigned w=13+t, h=11+t%13, stride=w+3;
        memset(mask,0xa5,sizeof(mask));
        for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) {
            unsigned hits=0;
            for (unsigned sy=0;sy<8;++sy) for (unsigned sx=0;sx<8;++sx) {
                double px=x+(sx+0.5)/8, py=y+(sy+0.5)/8;
                double dx=(px-(w*0.43+offsets[t%4]))/(w*0.31);
                double dy=(py-(h*0.57+offsets[t/4]))/(h*0.29);
                hits+=dx*dx+dy*dy<=1;
            }
            mask[y*stride+x]=(uint8_t)((255*hits+32)/64);
        }
        verify(mask,w,h,stride,1.5f);
        for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x)
            mask[y*stride+x]=(uint8_t)(255-mask[y*stride+x]);
        verify(mask,w,h,stride,3);
    }
}

static void large_sparse_oracle(void) {
    const unsigned sizes[][2]={{1024,1024},{1024,3},{3,1024},{1023,17},{17,1023},{511,257}};
    for (unsigned t=0;t<sizeof(sizes)/sizeof(*sizes);++t) {
        unsigned w=sizes[t][0], h=sizes[t][1]; size_t n=(size_t)w*h;
        uint8_t *mask=malloc(n); float *out=malloc(n*sizeof(float)); assert(mask && out);
        const unsigned xs[]={0,w-1,w/2}, ys[]={0,h-1,h/2};
        for (unsigned inverse=0;inverse<2;++inverse) {
            memset(mask,inverse?255:0,n);
            for (unsigned f=0;f<3;++f) mask[ys[f]*w+xs[f]]=inverse?127:128;
            float scale=t%2?0.125f:16;
            assert(LACClockSDFCreate(mask,w,h,w,scale,out,n));
            for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) {
                unsigned best=UINT32_MAX; int feature=0;
                for (unsigned f=0;f<3;++f) {
                    int dx=(int)x-(int)xs[f], dy=(int)y-(int)ys[f];
                    unsigned squared=(unsigned)(dx*dx+dy*dy);
                    if (squared<best) best=squared;
                    feature|=squared==0;
                }
                /* Each isolated feature has an immediate opposite neighbour. */
                double expected=(sqrt((double)(feature?1:best))-0.5)/scale;
                if (feature!=(int)inverse) expected=-expected;
                double error=fabs(out[y*w+x]-expected);
                assert(isfinite(out[y*w+x]) && out[y*w+x]==(float)expected);
                if (error>worst) worst=error;
                ++comparisons;
            }
        }
        free(mask); free(out);
    }
}

static void invalid(void) {
    uint8_t m[4]={0,127,128,255}; float out[8];
#define BAD(w,h,row,scale,cap) do { \
    for (int i=0;i<8;++i) out[i]=987; \
    assert(!LACClockSDFCreate(m,w,h,row,scale,out,cap)); \
    for (int i=0;i<8;++i) assert(out[i]==987); \
} while (0)
    BAD(0,2,2,1,8); BAD(2,0,2,1,8); BAD(1025,1,1025,1,8);
    BAD(1,1025,1,1,8); BAD(2,2,1,1,8); BAD(2,2,2,1,3);
    BAD(2,2,2,NAN,8); BAD(2,2,2,INFINITY,8); BAD(2,2,2,-1,8);
    BAD(2,2,2,0,8); BAD(2,2,2,17,8); BAD(2,2,SIZE_MAX,1,8);
    BAD(2,2,2,0x1p-149f,8);
    assert(!LACClockSDFCreate(NULL,2,2,2,1,out,8));
    assert(!LACClockSDFCreate(m,2,2,2,1,NULL,8));
#undef BAD
}

int main(void) {
    const uint8_t tiny_scale_mask[]={0,127,128,255};
    verify(tiny_scale_mask,2,2,2,FLT_MIN);
    invalid(); exhaustive(); random_masks(); adversarial();
    antialiased_subpixel_masks(); large_sparse_oracle();
    printf("PASS SDF HOST-ONLY: %lu independent brute-force/analytic samples; worst abs error %.9g points\n",comparisons,worst);
    return 0;
}
