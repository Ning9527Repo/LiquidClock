; main arm64e unslid VA [0xa2234,0xa22a0); slice_offset=0xfc000
000a2234 pacibsp                                                
000a2238 stp       d9, d8, [sp, #-0x30]!                        
000a223c stp       x20, x19, [sp, #0x10]                        
000a2240 stp       x29, x30, [sp, #0x20]                        
000a2244 add       x29, sp, #0x20                               
000a2248 fmov      d8, d0                                       
000a224c bl        #0xa217c                                     
000a2250 mov       x29, x29                                     
000a2254 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a2258 mov       x19, x0                                      
000a225c adrp      x8, #0xec000                                 
000a2260 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
000a2264 bl        #0xa46b4                                      ; _objc_opt_class
000a2268 mov       x1, x0                                       
000a226c mov       x0, x19                                      
000a2270 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a2274 tbz       w0, #0, #0xa2284                             
000a2278 mov       x0, x19                                      
000a227c bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000a2280 fmov      d8, d0                                       
000a2284 mov       x0, x19                                      
000a2288 bl        #0xa46f4                                      ; _objc_release
000a228c fmov      d0, d8                                       
000a2290 ldp       x29, x30, [sp, #0x20]                        
000a2294 ldp       x20, x19, [sp, #0x10]                        
000a2298 ldp       d9, d8, [sp], #0x30                          
000a229c retab                                                  
