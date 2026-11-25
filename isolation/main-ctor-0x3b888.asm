# arm64e unslid VA 0x3b888..0x3b91c; FAT offset 0xfc000
0003b888 pacibsp                                                   
0003b88c stp       x20, x19, [sp, #-0x20]!                         
0003b890 stp       x29, x30, [sp, #0x10]                           
0003b894 add       x29, sp, #0x10                                  
0003b898 bl        #0x3b91c                                        
0003b89c adrp      x0, #0xd5000                                    
0003b8a0 add       x0, x0, #0x460                                   ; 0xd5460 | &__NSConcreteGlobalBlock
0003b8a4 bl        #0xa1f54                                         ; _LGObservePreferenceChanges
0003b8a8 adrp      x0, #0xb6000                                    
0003b8ac add       x0, x0, #0x5d5                                   ; 0xb65d5 | 'UIView'
0003b8b0 bl        #0xa4664                                         ; _objc_getClass
0003b8b4 mov       x19, x0                                         
0003b8b8 adrp      x8, #0xeb000                                    
0003b8bc ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
0003b8c0 adrp      x3, #0xef000                                    
0003b8c4 add       x3, x3, #0x338                                   ; 0xef338
0003b8c8 adrp      x16, #0x3b000                                   
0003b8cc add       x16, x16, #0xd84                                 ; 0x3bd84
0003b8d0 paciza    x16                                             
0003b8d4 mov       x2, x16                                         
0003b8d8 bl        #0xa4054                                         ; _MSHookMessageEx
0003b8dc adrp      x8, #0xeb000                                    
0003b8e0 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
0003b8e4 adrp      x3, #0xef000                                    
0003b8e8 add       x3, x3, #0x340                                   ; 0xef340
0003b8ec adrp      x16, #0x3b000                                   
0003b8f0 add       x16, x16, #0xe44                                 ; 0x3be44
0003b8f4 paciza    x16                                             
0003b8f8 mov       x2, x16                                         
0003b8fc mov       x0, x19                                         
0003b900 ldp       x29, x30, [sp, #0x10]                           
0003b904 ldp       x20, x19, [sp], #0x20                           
0003b908 autibsp                                                   
0003b90c eor       x16, x30, x30, lsl #1                           
0003b910 tbz       x16, #0x3e, #0x3b918                            
0003b914 brk       #0xc471                                         
0003b918 b         #0xa4054                                         ; _MSHookMessageEx
