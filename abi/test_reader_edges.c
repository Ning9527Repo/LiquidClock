#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
static void before_recheck(void);
#define LG_CLOCK_FIELD_TEST_BEFORE_RECHECK before_recheck
#include "../field/clock_field_reader.c"
static LGClockFieldHeader *current;
static int mutation;
static void before_recheck(void) {
  if(mutation) __atomic_store_n(&current->sequence,(uint64_t)mutation,__ATOMIC_RELEASE);
}
static void init(LGClockFieldHeader *h) {
  memset(h,0,64); h->magic=LG_CLOCK_FIELD_MAGIC; h->version=2;
  h->sequence=2; h->token_10=7; h->mach_absolute_time=11;
  h->width=8; h->height=4; h->points_width=8; h->points_height=4; h->kind=1;
}
int main(void) {
  size_t n=LG_CLOCK_FIELD_SLOT_BYTES;
  unsigned char *src=calloc(1,n+8),*dst=calloc(1,n);
  assert(src&&dst); current=(LGClockFieldHeader*)src; init(current);
  memset(src+64,0x5a,128);
  assert(LGClockFieldCopyStable(src,n,dst,n)); assert(!memcmp(src,dst,192));
  assert(!LGClockFieldCopyStable(NULL,n,dst,n));
  assert(!LGClockFieldCopyStable(src,63,dst,n));
  assert(!LGClockFieldCopyStable(src,n,dst,191));
  assert(!LGClockFieldCopyStable(src+1,n-1,dst,n));
  assert(!LGClockFieldCopyStable(src,n,src,n));
  assert(!LGClockFieldCopyStable(src,n,src+8,n-8));
  current->sequence=3; assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); mutation=4; assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); mutation=3; assert(!LGClockFieldCopyStable(src,n,dst,n));
  mutation=0; init(current); current->mach_absolute_time=0;
  assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); current->token_10=0; assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); current->points_width=NAN; assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); current->points_height=INFINITY; assert(!LGClockFieldCopyStable(src,n,dst,n));
  init(current); current->reserved_20=123; current->reserved_3c=456;
  assert(LGClockFieldCopyStable(src,n,dst,n)); /* unknown != forbidden */
  current->width=current->height=1024; assert(LGClockFieldCopyStable(src,n,dst,n));
  assert(!LGClockFieldCopyStable(src,n-1,dst,n));
  current->width=1025; assert(!LGClockFieldCopyStable(src,n,dst,n));
  free(src);free(dst);return 0;
}
