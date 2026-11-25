#include "../src/clock/NGClockFieldCodec.h"
#include <assert.h>
#include <math.h>
#include <stdint.h>
#include <string.h>

static void test_half(void) {
    assert(NGClockFloat32BitsToHalf(0x00000000u)==0x0000u);
    assert(NGClockFloat32BitsToHalf(0x80000000u)==0x8000u);
    assert(NGClockFloat32BitsToHalf(0x3f800000u)==0x3c00u);
    assert(NGClockFloat32BitsToHalf(0xc0000000u)==0xc000u);
    assert(NGClockFloat32BitsToHalf(0x477fe000u)==0x7bffu); /* 65504 */
    assert(NGClockFloat32BitsToHalf(0x38800000u)==0x0400u); /* 2^-14 */
    assert(NGClockFloat32BitsToHalf(0x33800000u)==0x0001u); /* 2^-24 */
    assert(NGClockFloat32BitsToHalf(0x33000000u)==0x0000u); /* 2^-25 tie -> even */
    assert(NGClockFloat32BitsToHalf(0x3f801000u)==0x3c00u); /* tie -> even */
    assert(NGClockFloat32BitsToHalf(0x3f803000u)==0x3c02u); /* tie -> even */
    assert(NGClockFloat32BitsToHalf(0x7f800000u)==0x7c00u);
    assert(NGClockFloat32BitsToHalf(0xff800000u)==0xfc00u);
    assert((NGClockFloat32BitsToHalf(0x7f800001u)&0x7e00u)==0x7e00u); /* quiet NaN */
    assert(NGClockFloat32BitsToHalf(0x477ff000u)==0x7c00u); /* 65520 -> inf */
}

static void test_field(void) {
    unsigned char snapshot[LG_CLOCK_FIELD_HEADER_SIZE+16]={0};
    LGClockFieldHeader h={0};
    h.magic=LG_CLOCK_FIELD_MAGIC; h.version=LG_CLOCK_FIELD_VERSION;
    h.sequence=4; h.token_10=1; h.mach_absolute_time=2;
    h.width=2; h.height=2; h.points_width=2; h.points_height=2; h.kind=1;
    memcpy(snapshot,&h,sizeof(h));
    const uint32_t values[4]={0x3f800000u,0xc0000000u,0x3f000000u,0x80000000u};
    memcpy(snapshot+LG_CLOCK_FIELD_HEADER_SIZE,values,sizeof(values));
    uint16_t out[4]={0};
    assert(NGClockFieldSnapshotToR16(snapshot,sizeof(snapshot),out,sizeof(out))==1);
    const uint16_t expected[4]={0x3c00u,0xc000u,0x3800u,0x8000u};
    assert(memcmp(out,expected,sizeof(out))==0);
    assert(NGClockFieldSnapshotToR16(snapshot,sizeof(snapshot),out,3)==0);
    h.sequence=5; memcpy(snapshot,&h,sizeof(h));
    assert(NGClockFieldSnapshotToR16(snapshot,sizeof(snapshot),out,sizeof(out))==0);
}
int main(void){ test_half(); test_field(); return 0; }
