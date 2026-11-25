#include "../src/clock/LACClockSDF.h"
#include <assert.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
int main(void) {
    uint8_t mask[25]={0}; mask[12]=255;
    float sdf[25];
    assert(LACClockSDFCreate(mask,5,5,5,2.0f,sdf,25));
    assert(fabsf(sdf[12]+0.25f)<1e-6f);
    assert(fabsf(sdf[11]-0.25f)<1e-6f);
    assert(fabsf(sdf[6]-(sqrtf(2.0f)-0.5f)/2.0f)<1e-6f);
    /* A 3x3 block has negative interior and positive exterior. */
    uint8_t block[25]={0};
    for(int y=1;y<=3;y++) for(int x=1;x<=3;x++) block[y*5+x]=255;
    assert(LACClockSDFCreate(block,5,5,5,1.0f,sdf,25));
    assert(sdf[12]<0 && sdf[11]<0 && sdf[10]>0 && sdf[0]>0);
    assert(fabsf(sdf[12]+1.5f)<1e-6f);
    /* All-clear/all-covered masks are finite and signed. */
    uint8_t clear[4]={0}, solid[4]={255,255,255,255}; float small[4];
    assert(LACClockSDFCreate(clear,2,2,2,1.0f,small,4));
    for(int i=0;i<4;i++) assert(isfinite(small[i])&&small[i]>0);
    assert(LACClockSDFCreate(solid,2,2,2,1.0f,small,4));
    for(int i=0;i<4;i++) assert(isfinite(small[i])&&small[i]<0);
    assert(!LACClockSDFCreate(mask,5,5,4,1.0f,sdf,25));
    assert(!LACClockSDFCreate(mask,5,5,5,NAN,sdf,25));
    assert(!LACClockSDFCreate(mask,5,5,5,1.0f,sdf,24));
    puts("PASS: signed Euclidean SDF geometry/limits (host only)");
}
