#include "../renderer/clock_uniforms.h"
#include "../field/clock_field_protocol.h"
#include "../field/clock_field_protocol.h" /* repeated inclusion regression */
#include <assert.h>
#include <string.h>
#define U(n,o) _Static_assert(offsetof(LGClockMetalUniformsRecovered,n)==(o),#n)
#define H(n,o) _Static_assert(offsetof(LGClockFieldHeader,n)==(o),#n)
U(resolution,0); U(outputResolution,8); U(screenResolution,16); U(cardOrigin,24);
U(wallpaperResolution,32); U(lensOrigin,40); U(radius,48); U(bezelWidth,52);
U(glassThickness,56); U(refractionScale,60); U(refractiveIndex,64);
U(wallpaperOrigin,72); U(samplingTransformX,80); U(samplingTransformY,88);
U(samplingTransformOffset,96); U(samplingOrientation,104); U(backdropZoom,108);
U(shapeScale,112); U(shapeOrigin,120); U(shapeSize,128); U(useGlyphMask,136);
U(dispersionStrength,140); U(tintColor,144); U(validMaxUV,160);
U(clockOrientation,168); U(coverSideRefraction,172); U(captureAligned,176);
U(_metalTailPadding,180);
_Static_assert(sizeof(LGClockMetalUniformsRecovered)==0xc0,"upload length");
_Static_assert(_Alignof(LGClockMetalUniformsRecovered)==16,"uniform alignment");
H(magic,0); H(version,4); H(sequence,8); H(token_10,0x10);
H(mach_absolute_time,0x18); H(reserved_20,0x20); H(width,0x28);
H(height,0x2c); H(points_width,0x30); H(points_height,0x34);
H(kind,0x38); H(reserved_3c,0x3c);
_Static_assert(sizeof(LGClockFieldHeader)==0x40,"wire header");
_Static_assert(_Alignof(LGClockFieldHeader)==8,"atomic sequence alignment");
int main(void) {
  uint32_t m=LG_CLOCK_FIELD_MAGIC;
  const unsigned char expected[4]={0x46,0x44,0x47,0x4c};
  assert(memcmp(&m,expected,4)==0); /* arm64 LE wire format */
  assert(LG_CLOCK_FIELD_SLOT_BYTES==64+1024*1024*4);
  return 0;
}
