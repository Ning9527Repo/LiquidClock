# arm64e unslid VA 0x98810..0x98854; FAT offset 0xfc000
00098810 pacibsp                                                   
00098814 stp       x29, x30, [sp, #-0x10]!                         
00098818 mov       x29, sp                                         
0009881c adrp      x0, #0xdd000                                    
00098820 add       x0, x0, #0x930                                   ; 0xdd930 | @'prefs Reload received; invalidating SpringBoard host-enable cache'
00098824 bl        #0xa23b8                                         ; _LGLog
00098828 bl        #0x992bc                                         ; _LGInvalidateGlassPreferenceCache
0009882c adrp      x0, #0xd4000                                    
00098830 ldr       x0, [x0, #0x940]                                 ; 0xd4940 | &__dispatch_main_q
00098834 adrp      x1, #0xd6000                                    
00098838 add       x1, x1, #0xcd8                                   ; 0xd6cd8 | &__NSConcreteGlobalBlock
0009883c ldp       x29, x30, [sp], #0x10                           
00098840 autibsp                                                   
00098844 eor       x16, x30, x30, lsl #1                           
00098848 tbz       x16, #0x3e, #0x98850                            
0009884c brk       #0xc471                                         
00098850 b         #0xa42f4                                         ; _dispatch_async
