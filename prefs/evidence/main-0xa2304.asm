; main arm64e unslid VA [0xa2304,0xa2398); slice_offset=0xfc000
000a2304 pacibsp                                                
000a2308 stp       x22, x21, [sp, #-0x30]!                      
000a230c stp       x20, x19, [sp, #0x10]                        
000a2310 stp       x29, x30, [sp, #0x20]                        
000a2314 add       x29, sp, #0x20                               
000a2318 mov       x20, x0                                      
000a231c mov       x0, x1                                       
000a2320 bl        #0xa4704                                      ; _objc_retain
000a2324 mov       x19, x0                                      
000a2328 mov       x0, x20                                      
000a232c bl        #0xa217c                                     
000a2330 mov       x29, x29                                     
000a2334 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a2338 mov       x20, x0                                      
000a233c adrp      x8, #0xec000                                 
000a2340 ldr       x0, [x8, #0x518]                              ; &_OBJC_CLASS_$_NSString
000a2344 bl        #0xa46b4                                      ; _objc_opt_class
000a2348 mov       x1, x0                                       
000a234c mov       x0, x20                                      
000a2350 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a2354 tbz       w0, #0, #0xa2368                             
000a2358 mov       x0, x20                                      
000a235c bl        #0xa9360                                      ; objc_msgSend$length
000a2360 mov       x21, x20                                     
000a2364 cbnz      x0, #0xa236c                                 
000a2368 mov       x21, x19                                     
000a236c mov       x0, x21                                      
000a2370 bl        #0xa4724                                      ; _objc_retainAutoreleaseReturnValue
000a2374 mov       x0, x20                                      
000a2378 bl        #0xa46f4                                      ; _objc_release
000a237c mov       x0, x19                                      
000a2380 bl        #0xa46f4                                      ; _objc_release
000a2384 mov       x0, x21                                      
000a2388 ldp       x29, x30, [sp, #0x20]                        
000a238c ldp       x20, x19, [sp, #0x10]                        
000a2390 ldp       x22, x21, [sp], #0x30                        
000a2394 retab                                                  
