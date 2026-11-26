#pragma once
#include <stdint.h>
#include <stddef.h>
namespace lac {
struct Span { uintptr_t address; size_t size; unsigned flags; }; /* 1=read,2=write,4=execute */
struct QCImage {
    Span spans[32];size_t spanCount;
    uintptr_t text;size_t textSize;
    bool contains(uintptr_t p,size_t n,unsigned flags=1) const;
    uint32_t word(uintptr_t p) const;
    uintptr_t pair(uintptr_t pc,bool load) const;
    uintptr_t uniqueString(const char *s) const;
    uintptr_t uniqueXref(uintptr_t target) const;
    uintptr_t functionStart(uintptr_t xref,size_t maxBytes) const;
};
struct Resolution {
    uintptr_t internAtom,addFilter,gaussianContext,tableSlot,stopEncoders;
    uintptr_t identity,edge,render;
    ptrdiff_t commandOffset,destinationOffset;
    int renderSlot,edgeSlot;
    bool twoShapes;
};
/* The pure scanner consumes only caller-provided bounded image ranges. All
 * pointers returned are raw addresses, never pre-authenticated callables. */
struct ABIProfile {size_t filterAtom,texture;ptrdiff_t destination;};
bool selectProfile(unsigned major,unsigned minor,unsigned patch,ABIProfile *out);
bool resolveQC(const QCImage &image,uint32_t gaussianAtom,Resolution *out,
               ptrdiff_t profileDestinationOffset=-1);
uintptr_t resolveInternWrapper(const QCImage &image);
uintptr_t stripCode(uintptr_t p);
uintptr_t stripData(uintptr_t p);
uintptr_t callable(uintptr_t p);
}
