#include "clock_field_protocol.h"
#include <stdlib.h>
#include <string.h>
int LGClockFieldCopyStable(const void*,size_t,void*,size_t);
int main(void){
  size_t n=LG_CLOCK_FIELD_SLOT_BYTES;
  unsigned char *src=calloc(1,n),*dst=calloc(1,n);
  if(!src||!dst)return 2;
  LGClockFieldHeader *h=(LGClockFieldHeader*)src;
  h->magic=LG_CLOCK_FIELD_MAGIC;h->version=LG_CLOCK_FIELD_VERSION;
  h->sequence=2;h->token_10=7;h->mach_absolute_time=11;
  h->width=8;h->height=4;h->points_width=8;h->points_height=4;h->kind=1;
  memset(src+LG_CLOCK_FIELD_HEADER_SIZE,0x5a,8*4*4);
  if(!LGClockFieldCopyStable(src,n,dst,n))return 3;
  if(memcmp(src,dst,LG_CLOCK_FIELD_HEADER_SIZE+8*4*4))return 4;
  h->sequence=3;
  if(LGClockFieldCopyStable(src,n,dst,n))return 5;
  h->sequence=2;h->width=1024;h->height=1024;
  if(LGClockFieldCopyStable(src,100,dst,n))return 6;
  free(src);free(dst);return 0;
}
