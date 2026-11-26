; Uploaded sample arm64e unslid VA 0x63988..0x639b4
00063988 pacibsp                                                
0006398c stp       x29, x30, [sp, #-0x10]!                      
00063990 mov       x29, sp                                      
00063994 add       x0, x0, #0xc0                                
00063998 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006399c ldp       x29, x30, [sp], #0x10                        
000639a0 autibsp                                                
000639a4 eor       x16, x30, x30, lsl #1                        
000639a8 tbz       x16, #0x3e, #0x639b0                         
000639ac brk       #0xc471                                      
000639b0 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
