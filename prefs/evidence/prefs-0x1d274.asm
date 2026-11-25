; prefs arm64e unslid VA [0x1d274,0x1d360); slice_offset=0xa0000
0001d274 pacibsp                                                
0001d278 stp       x22, x21, [sp, #-0x30]!                      
0001d27c stp       x20, x19, [sp, #0x10]                        
0001d280 stp       x29, x30, [sp, #0x20]                        
0001d284 add       x29, sp, #0x20                               
0001d288 mov       x19, x1                                      
0001d28c bl        #0x58e14                                      ; _objc_retain
0001d290 mov       x20, x0                                      
0001d294 adrp      x0, #0x7b000                                 
0001d298 add       x0, x0, #0x530                                ; @'prefs.control.enabled'
0001d29c bl        #0x1b5dc                                      ; _LGLocalized
0001d2a0 mov       x29, x29                                     
0001d2a4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d2a8 mov       x21, x0                                      
0001d2ac adrp      x0, #0x7c000                                 
0001d2b0 add       x0, x0, #0x1f0                                ; @'prefs.subtitle.enabled'
0001d2b4 bl        #0x1b5dc                                      ; _LGLocalized
0001d2b8 mov       x29, x29                                     
0001d2bc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d2c0 mov       x22, x0                                      
0001d2c4 mov       x0, x20                                      
0001d2c8 mov       x1, x21                                      
0001d2cc mov       x2, x22                                      
0001d2d0 mov       x3, x19                                      
0001d2d4 bl        #0x1cb18                                      ; _LGSwitchSetting
0001d2d8 mov       x29, x29                                     
0001d2dc bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001d2e0 mov       x19, x0                                      
0001d2e4 mov       x0, x20                                      
0001d2e8 bl        #0x58e04                                      ; _objc_release
0001d2ec mov       x0, x19                                      
0001d2f0 bl        #0x5c780                                      ; objc_msgSend$mutableCopy
0001d2f4 mov       x20, x0                                      
0001d2f8 mov       x0, x19                                      
0001d2fc bl        #0x58e04                                      ; _objc_release
0001d300 mov       x0, x22                                      
0001d304 bl        #0x58e04                                      ; _objc_release
0001d308 mov       x0, x21                                      
0001d30c bl        #0x58e04                                      ; _objc_release
0001d310 adrp      x2, #0x78000                                 
0001d314 ldr       x2, [x2, #0x4f8]                              ; &___kCFBooleanTrue | x2 <- &___kCFBooleanTrue
0001d318 adrp      x3, #0x7b000                                 
0001d31c add       x3, x3, #0xb90                                ; @'controls_following_panel'
0001d320 mov       x0, x20                                      
0001d324 bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
0001d328 mov       x0, x20                                      
0001d32c bl        #0x5a4e0                                      ; objc_msgSend$copy
0001d330 mov       x19, x0                                      
0001d334 mov       x0, x20                                      
0001d338 bl        #0x58e04                                      ; _objc_release
0001d33c mov       x0, x19                                      
0001d340 ldp       x29, x30, [sp, #0x20]                        
0001d344 ldp       x20, x19, [sp, #0x10]                        
0001d348 ldp       x22, x21, [sp], #0x30                        
0001d34c autibsp                                                
0001d350 eor       x16, x30, x30, lsl #1                        
0001d354 tbz       x16, #0x3e, #0x1d35c                         
0001d358 brk       #0xc471                                      
0001d35c b         #0x58d04                                      ; _objc_autoreleaseReturnValue
