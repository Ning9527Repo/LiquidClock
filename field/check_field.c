#include "clock_field_protocol.h"
int main(void){LGClockFieldHeader h={0};return (sizeof(h)==64 && !LGClockFieldHeaderBasicValid(&h))?0:1;}
