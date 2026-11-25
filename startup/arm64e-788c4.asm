# arm64e unslid VA 0x788c4..0x78a4c; FAT offset 0xfc000
000788c4 pacibsp                                                   
000788c8 stp       x24, x23, [sp, #-0x40]!                         
000788cc stp       x22, x21, [sp, #0x10]                           
000788d0 stp       x20, x19, [sp, #0x20]                           
000788d4 stp       x29, x30, [sp, #0x30]                           
000788d8 add       x29, sp, #0x30                                  
000788dc adrp      x23, #0xef000                                   
000788e0 ldrb      w8, [x23, #0xb60]                                ; 0xefb60
000788e4 tbnz      w8, #0, #0x78a38                                
000788e8 adrp      x0, #0xdc000                                    
000788ec add       x0, x0, #0xd70                                   ; 0xdcd70 | @'SokoDockCoordinator'
000788f0 bl        #0xa4064                                         ; _NSClassFromString
000788f4 cbz       x0, #0x78a38                                    
000788f8 bl        #0xa4274                                         ; _class_getImageName
000788fc cbz       x0, #0x78a38                                    
00078900 mov       w1, #0x12                                       
00078904 bl        #0xa4384                                         ; _dlopen
00078908 cbz       x0, #0x78a38                                    
0007890c mov       x19, x0                                         
00078910 adrp      x1, #0xbb000                                    
00078914 add       x1, x1, #0x55b                                   ; 0xbb55b | 'SokoLiquidAssUserInfoUsesBottomLayout'
00078918 bl        #0xa4394                                         ; _dlsym
0007891c mov       x21, x0                                         
00078920 adrp      x1, #0xbb000                                    
00078924 add       x1, x1, #0x581                                   ; 0xbb581 | 'SokoLiquidAssClockEnabled'
00078928 mov       x0, x19                                         
0007892c bl        #0xa4394                                         ; _dlsym
00078930 mov       x20, x0                                         
00078934 adrp      x1, #0xbb000                                    
00078938 add       x1, x1, #0x59b                                   ; 0xbb59b | 'MSHookFunction'
0007893c mov       x0, #-2                                         
00078940 bl        #0xa4394                                         ; _dlsym
00078944 cbz       x21, #0x78a10                                   
00078948 cbz       x20, #0x78a10                                   
0007894c mov       x22, x0                                         
00078950 cbz       x0, #0x78a10                                    
00078954 adrp      x2, #0xef000                                    
00078958 add       x2, x2, #0xb68                                   ; 0xefb68
0007895c adrp      x16, #0x7d000                                   
00078960 add       x16, x16, #0xf64                                 ; 0x7df64
00078964 paciza    x16                                             
00078968 mov       x1, x16                                         
0007896c mov       x0, x21                                         
00078970 blraaz    x22                                             
00078974 adrp      x16, #0x7e000                                   
00078978 add       x16, x16, #0x10                                  ; 0x7e010
0007897c paciza    x16                                             
00078980 mov       x1, x16                                         
00078984 mov       x0, x20                                         
00078988 mov       x2, #0                                          
0007898c blraaz    x22                                             
00078990 adrp      x1, #0xbb000                                    
00078994 add       x1, x1, #0x5aa                                   ; 0xbb5aa | 'SokoRefreshDockSoon'
00078998 mov       x0, x19                                         
0007899c bl        #0xa4394                                         ; _dlsym
000789a0 adrp      x8, #0xef000                                    
000789a4 str       x0, [x8, #0xb70]                                 ; 0xefb70
000789a8 adrp      x0, #0xdc000                                    
000789ac add       x0, x0, #0xd90                                   ; 0xdcd90 | @'SokoPosterLayout'
000789b0 bl        #0xa4064                                         ; _NSClassFromString
000789b4 mov       x20, x0                                         
000789b8 adrp      x0, #0xdc000                                    
000789bc add       x0, x0, #0xdb0                                   ; 0xdcdb0 | @'canSwipeEditingSceneViewController:'
000789c0 bl        #0xa4094                                         ; _NSSelectorFromString
000789c4 mov       x1, x0                                          
000789c8 mov       x0, x20                                         
000789cc bl        #0xa4264                                         ; _class_getClassMethod
000789d0 cbz       x0, #0x789fc                                    
000789d4 mov       x20, x0                                         
000789d8 bl        #0xa4504                                         ; _method_getImplementation
000789dc adrp      x8, #0xef000                                    
000789e0 str       x0, [x8, #0xb78]                                 ; 0xefb78
000789e4 adrp      x16, #0x7e000                                   
000789e8 add       x16, x16, #0x1c                                  ; 0x7e01c
000789ec paciza    x16                                             
000789f0 mov       x1, x16                                         
000789f4 mov       x0, x20                                         
000789f8 bl        #0xa4524                                         ; _method_setImplementation
000789fc mov       w8, #1                                          
00078a00 strb      w8, [x23, #0xb60]                                ; 0xefb60
00078a04 adrp      x0, #0xdc000                                    
00078a08 add       x0, x0, #0xdd0                                   ; 0xdcdd0 | @'[ClockPoster] Soko loaded; delegating saved widget layout'
00078a0c bl        #0xa23b8                                         ; _LGLog
00078a10 mov       x0, x19                                         
00078a14 ldp       x29, x30, [sp, #0x30]                           
00078a18 ldp       x20, x19, [sp, #0x20]                           
00078a1c ldp       x22, x21, [sp, #0x10]                           
00078a20 ldp       x24, x23, [sp], #0x40                           
00078a24 autibsp                                                   
00078a28 eor       x16, x30, x30, lsl #1                           
00078a2c tbz       x16, #0x3e, #0x78a34                            
00078a30 brk       #0xc471                                         
00078a34 b         #0xa4374                                         ; _dlclose
00078a38 ldp       x29, x30, [sp, #0x30]                           
00078a3c ldp       x20, x19, [sp, #0x20]                           
00078a40 ldp       x22, x21, [sp, #0x10]                           
00078a44 ldp       x24, x23, [sp], #0x40                           
00078a48 retab                                                     
