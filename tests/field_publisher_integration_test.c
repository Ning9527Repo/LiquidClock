#define _GNU_SOURCE 1
#include "../src/clock/LACClockFieldPublisher.h"
#include "../src/clock/LACClockSDF.h"
#include "../src/clock/NGClockFieldCodec.h"
#include "../field/clock_field_protocol.h"
#include <assert.h>
#include <fcntl.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

int main(void) {
    char path[]="/tmp/lac-field-publisher-XXXXXX";
    int seed=mkstemp(path); assert(seed>=0); close(seed); unlink(path);
    LACClockFieldPublisher *p=LACClockFieldPublisherOpen(path,1,1);
    assert(p);
    int fd=open(path,O_RDWR); assert(fd>=0);
    struct stat st; assert(fstat(fd,&st)==0 && st.st_size==LG_CLOCK_FIELD_SLOT_BYTES);
    unsigned char *map=mmap(NULL,(size_t)st.st_size,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
    assert(map!=MAP_FAILED);
    LGClockFieldHeader *h=(LGClockFieldHeader *)map;
    h->reserved_20=77; h->reserved_3c=0xfeedbeefu;
    const float sdf[4]={1.0f,-1.0f,0.5f,-0.0f};
    assert(LACClockFieldPublish(p,0,1,2,2,2.0f,2.0f,sdf,4));
    /* First publication takes ownership: clear the downstream cursor, not +3c. */
    assert(h->reserved_20==0 && h->reserved_3c==0xfeedbeefu);
    h->reserved_20=77;
    assert(LACClockFieldPublish(p,0,1,2,2,2.0f,2.0f,sdf,4));
    assert(h->reserved_20==77 && h->reserved_3c==0xfeedbeefu);
    assert(h->sequence && !(h->sequence&1u));
    unsigned char snapshot[LG_CLOCK_FIELD_HEADER_SIZE+sizeof(sdf)] __attribute__((aligned(8)));
    assert(LGClockFieldCopyStable(map,(size_t)st.st_size,snapshot,sizeof(snapshot)));
    LGClockFieldHeader copied; memcpy(&copied,snapshot,sizeof(copied));
    assert(copied.magic==LG_CLOCK_FIELD_MAGIC && copied.version==2);
    assert(copied.token_10 && copied.mach_absolute_time && copied.kind==1);
    uint16_t half[4];
    assert(NGClockFieldSnapshotToR16(snapshot,sizeof(snapshot),half,sizeof(half)));
    const uint16_t expected[4]={0x3c00,0xbc00,0x3800,0x8000};
    assert(memcmp(half,expected,sizeof(expected))==0);
    assert(!LACClockFieldPublish(p,1,1,2,2,2,2,sdf,4));
    assert(!LACClockFieldPublish(p,0,0,2,2,2,2,sdf,4));
    assert(!LACClockFieldPublish(p,0,1,2,2,2,2,sdf,3));
    const float bad[4]={1,INFINITY,0,0};
    assert(!LACClockFieldPublish(p,0,1,2,2,2,2,bad,4));
    uint8_t coverage[25]={0}; coverage[12]=255;
    float generated[25];
    assert(LACClockSDFCreate(coverage,5,5,5,2,generated,25));
    assert(LACClockFieldPublish(p,0,4,5,5,2.5f,2.5f,generated,25));
    unsigned char glyph_snapshot[LG_CLOCK_FIELD_HEADER_SIZE+sizeof(generated)] __attribute__((aligned(8)));
    assert(LGClockFieldCopyStable(map,(size_t)st.st_size,glyph_snapshot,sizeof(glyph_snapshot)));
    assert(!memcmp(glyph_snapshot+LG_CLOCK_FIELD_HEADER_SIZE,generated,sizeof(generated)));
    uint16_t glyph_half[25];
    assert(NGClockFieldSnapshotToR16(glyph_snapshot,sizeof(glyph_snapshot),glyph_half,sizeof(glyph_half)));
    assert(glyph_half[12]==0xb400 && glyph_half[11]==0x3400); /* +/-0.25 points */
    assert(h->reserved_20==77 && h->reserved_3c==0xfeedbeefu);
    assert(LACClockFieldInvalidate(p,0));
    assert(!LGClockFieldCopyStable(map,(size_t)st.st_size,glyph_snapshot,sizeof(glyph_snapshot)));
    LACClockFieldPublisherClose(p);
    munmap(map,(size_t)st.st_size); close(fd); unlink(path);
    puts("PASS: binary SDF -> mmap publisher -> stable snapshot -> R16Float -> invalidation (HOST-ONLY)");
    return 0;
}
