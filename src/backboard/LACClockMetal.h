#pragma once
#import <Foundation/Foundation.h>
#import <Metal/Metal.h>
#include "LACClockBackboard.h"
/* Backend internals: never import/execute the uploaded Mach-O. */
bool LACClockMetalInitialize(const LACClockBackboardOptions *options);
bool LACClockMetalEncode(LACClockChannel channel,uint32_t slot,
                         id<MTLCommandBuffer> buffer,id<MTLTexture> source,
                         id<MTLTexture> destination);
