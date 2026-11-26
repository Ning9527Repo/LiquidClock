; Uploaded sample arm64e unslid VA 0x75164..0x75240
00075164 pacibsp                                                
00075168 stp       x24, x23, [sp, #-0x40]!                      
0007516c stp       x22, x21, [sp, #0x10]                        
00075170 stp       x20, x19, [sp, #0x20]                        
00075174 stp       x29, x30, [sp, #0x30]                        
00075178 add       x29, sp, #0x30                               
0007517c mov       x21, x4                                      
00075180 mov       x20, x3                                      
00075184 mov       x22, x1                                      
00075188 mov       x23, x0                                      
0007518c mov       x0, x2                                       
00075190 bl        #0xa4704                                      ; _objc_retain
00075194 mov       x19, x0                                      
00075198 mov       x0, x20                                      
0007519c bl        #0xa4704                                      ; _objc_retain
000751a0 mov       x20, x0                                      
000751a4 adrp      x8, #0xef000                                 
000751a8 ldr       x8, [x8, #0x830]                             
000751ac mov       x0, x23                                      
000751b0 mov       x1, x22                                      
000751b4 mov       x2, x19                                      
000751b8 mov       x3, x20                                      
000751bc mov       x4, x21                                      
000751c0 blraaz    x8                                           
000751c4 adrp      x1, #0xbb000                                 
000751c8 add       x1, x1, #0x4ac                                ; '_scene'
000751cc mov       x0, x23                                      
000751d0 bl        #0x6e448                                      ; _LGClockSavedIvarObject
000751d4 mov       x29, x29                                     
000751d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000751dc mov       x21, x0                                      
000751e0 bl        #0xa46f4                                      ; _objc_release
000751e4 cmp       x21, x19                                     
000751e8 b.ne      #0x75210                                     
000751ec bl        #0x73f78                                      ; _LGClockSavedCoordinator
000751f0 mov       x29, x29                                     
000751f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000751f8 mov       x21, x0                                      
000751fc mov       x2, x19                                      
00075200 mov       x3, x20                                      
00075204 bl        #0xaab40                                      ; objc_msgSend$prepareWallpaperDepthScene:settings:
00075208 mov       x0, x21                                      
0007520c bl        #0xa46f4                                      ; _objc_release
00075210 mov       x0, x20                                      
00075214 bl        #0xa46f4                                      ; _objc_release
00075218 mov       x0, x19                                      
0007521c ldp       x29, x30, [sp, #0x30]                        
00075220 ldp       x20, x19, [sp, #0x20]                        
00075224 ldp       x22, x21, [sp, #0x10]                        
00075228 ldp       x24, x23, [sp], #0x40                        
0007522c autibsp                                                
00075230 eor       x16, x30, x30, lsl #1                        
00075234 tbz       x16, #0x3e, #0x7523c                         
00075238 brk       #0xc471                                      
0007523c b         #0xa46f4                                      ; _objc_release
