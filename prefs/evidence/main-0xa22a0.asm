; main arm64e unslid VA [0xa22a0,0xa2304); slice_offset=0xfc000
000a22a0 pacibsp                                                
000a22a4 stp       x20, x19, [sp, #-0x20]!                      
000a22a8 stp       x29, x30, [sp, #0x10]                        
000a22ac add       x29, sp, #0x10                               
000a22b0 mov       x19, x1                                      
000a22b4 bl        #0xa217c                                     
000a22b8 mov       x29, x29                                     
000a22bc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a22c0 mov       x20, x0                                      
000a22c4 adrp      x8, #0xec000                                 
000a22c8 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
000a22cc bl        #0xa46b4                                      ; _objc_opt_class
000a22d0 mov       x1, x0                                       
000a22d4 mov       x0, x20                                      
000a22d8 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a22dc tbz       w0, #0, #0xa22ec                             
000a22e0 mov       x0, x20                                      
000a22e4 bl        #0xa8a60                                      ; objc_msgSend$integerValue
000a22e8 mov       x19, x0                                      
000a22ec mov       x0, x20                                      
000a22f0 bl        #0xa46f4                                      ; _objc_release
000a22f4 mov       x0, x19                                      
000a22f8 ldp       x29, x30, [sp, #0x10]                        
000a22fc ldp       x20, x19, [sp], #0x20                        
000a2300 retab                                                  
