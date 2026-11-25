; prefs arm64e unslid VA [0x58590,0x585a4); slice_offset=0xa0000
00058590 adrp      x0, #0x8c000                                 
00058594 add       x0, x0, #0xf10                               
00058598 adrp      x1, #0x79000                                 
0005859c add       x1, x1, #0x778                                ; &__NSConcreteGlobalBlock
000585a0 b         #0x58b54                                      ; _dispatch_once
