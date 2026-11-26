; Uploaded sample arm64e unslid VA 0x633b0..0x6342c
000633b0 pacibsp                                                
000633b4 stp       x20, x19, [sp, #-0x20]!                      
000633b8 stp       x29, x30, [sp, #0x10]                        
000633bc add       x29, sp, #0x10                               
000633c0 mov       x20, x1                                      
000633c4 bl        #0xa4704                                      ; _objc_retain
000633c8 mov       x19, x0                                      
000633cc cbz       x0, #0x63400                                 
000633d0 mov       x0, x19                                      
000633d4 bl        #0xa47d4                                      ; _object_getClass
000633d8 mov       x1, x20                                      
000633dc bl        #0xa4294                                      ; _class_getInstanceVariable
000633e0 cbz       x0, #0x63400                                 
000633e4 mov       x1, x0                                       
000633e8 mov       x0, x19                                      
000633ec bl        #0xa47e4                                      ; _object_getIvar
000633f0 mov       x29, x29                                     
000633f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000633f8 mov       x20, x0                                      
000633fc b         #0x63404                                     
00063400 mov       x20, #0                                      
00063404 mov       x0, x19                                      
00063408 bl        #0xa46f4                                      ; _objc_release
0006340c mov       x0, x20                                      
00063410 ldp       x29, x30, [sp, #0x10]                        
00063414 ldp       x20, x19, [sp], #0x20                        
00063418 autibsp                                                
0006341c eor       x16, x30, x30, lsl #1                        
00063420 tbz       x16, #0x3e, #0x63428                         
00063424 brk       #0xc471                                      
00063428 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
