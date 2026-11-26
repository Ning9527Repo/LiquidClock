; Uploaded sample arm64e unslid VA 0x67d00..0x67ec0
00067d00 fmov      d0, d12                                      
00067d04 bl        #0xae920                                      ; objc_msgSend$setRenderedTop:
00067d08 mov       x0, x19                                      
00067d0c fmov      d0, d9                                       
00067d10 bl        #0xae940                                      ; objc_msgSend$setRenderedWeight:
00067d14 mov       x0, x19                                      
00067d18 fmov      d0, d8                                       
00067d1c bl        #0xae8a0                                      ; objc_msgSend$setRenderedSoftness:
00067d20 ldr       w8, [sp, #0xb8]                              
00067d24 tbnz      w8, #0, #0x67d74                             
00067d28 mov       x0, x20                                      
00067d2c bl        #0xaa760                                      ; objc_msgSend$path
00067d30 bl        #0xa3e04                                      ; _CGPathGetPathBoundingBox
00067d34 bl        #0xa40c4                                      ; _NSStringFromCGRect
00067d38 mov       x29, x29                                     
00067d3c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00067d40 mov       x19, x0                                      
00067d44 ldr       x0, [sp, #0xe0]                              
00067d48 bl        #0xaa980                                      ; objc_msgSend$pointSize
00067d4c str       d0, [sp, #0x20]                              
00067d50 str       x19, [sp, #0x18]                             
00067d54 stp       d12, d10, [sp, #8]                           
00067d58 ldr       x8, [sp, #0x1d0]                             
00067d5c str       x8, [sp]                                     
00067d60 adrp      x0, #0xdc000                                 
00067d64 add       x0, x0, #0x9b0                                ; @'[LGClockStage3] replacement=%p top=%.2f available=%.2f ink=%@ font=%.2f'
00067d68 bl        #0xa4084                                      ; _NSLog
00067d6c mov       x0, x19                                      
00067d70 bl        #0xa46f4                                      ; _objc_release
00067d74 mov       x0, x21                                      
00067d78 bl        #0xa46f4                                      ; _objc_release
00067d7c ldr       x0, [sp, #0x1e0]                             
00067d80 bl        #0xa46f4                                      ; _objc_release
00067d84 mov       x0, x26                                      
00067d88 bl        #0xa46f4                                      ; _objc_release
00067d8c ldr       x0, [sp, #0xc8]                              
00067d90 bl        #0xa46f4                                      ; _objc_release
00067d94 ldr       x0, [sp, #0xe0]                              
00067d98 bl        #0xa46f4                                      ; _objc_release
00067d9c ldr       x26, [sp, #0x170]                            
00067da0 ldr       x21, [sp, #0x1d0]                            
00067da4 ldr       x22, [sp, #0x190]                            
00067da8 ldr       x23, [sp, #0x218]                            
00067dac ldr       x24, [sp, #0x138]                            
00067db0 mov       x0, x20                                      
00067db4 bl        #0xaa760                                      ; objc_msgSend$path
00067db8 cbz       x0, #0x67ddc                                 
00067dbc mov       x0, x20                                      
00067dc0 bl        #0xaa760                                      ; objc_msgSend$path
00067dc4 bl        #0xa3e04                                      ; _CGPathGetPathBoundingBox
00067dc8 fmov      d8, d0                                       
00067dcc fmov      d10, d1                                      
00067dd0 fmov      d12, d2                                      
00067dd4 fmov      d13, d3                                      
00067dd8 b         #0x67dec                                     
00067ddc adrp      x8, #0xd4000                                 
00067de0 ldr       x8, [x8, #0x918]                              ; &_CGRectZero
00067de4 ldp       d8, d10, [x8]                                
00067de8 ldp       d12, d13, [x8, #0x10]                        
00067dec fmov      d0, d8                                       
00067df0 fmov      d1, d10                                      
00067df4 fmov      d2, d12                                      
00067df8 fmov      d3, d13                                      
00067dfc bl        #0xa3f24                                      ; _CGRectIsEmpty
00067e00 tbnz      w0, #0, #0x67e1c                             
00067e04 fmov      d0, d8                                       
00067e08 fmov      d1, d10                                      
00067e0c fmov      d2, d12                                      
00067e10 fmov      d3, d13                                      
00067e14 bl        #0xa3f34                                      ; _CGRectIsInfinite
00067e18 cbz       w0, #0x67e50                                 
00067e1c mov       x0, x21                                      
00067e20 bl        #0xab660                                      ; objc_msgSend$restoreStockContent
00067e24 mov       x0, x21                                      
00067e28 mov       w2, #1                                       
00067e2c bl        #0xad1e0                                      ; objc_msgSend$setHidden:
00067e30 mov       x0, x21                                      
00067e34 bl        #0xa7e00                                      ; objc_msgSend$glass
00067e38 mov       x29, x29                                     
00067e3c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00067e40 mov       x19, x0                                      
00067e44 mov       w2, #1                                       
00067e48 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
00067e4c b         #0x66a94                                     
00067e50 str       d13, [sp, #0x170]                            
00067e54 str       d12, [sp, #0x1e0]                            
00067e58 str       d10, [sp, #0x1f0]                            
00067e5c str       d8, [sp, #0x208]                             
00067e60 adrp      x19, #0xec000                                
00067e64 ldr       x0, [x19, #0x4c0]                             ; &_OBJC_CLASS_$_CATransaction
00067e68 bl        #0xa59e0                                      ; objc_msgSend$begin
00067e6c ldr       x0, [x19, #0x4c0]                             ; &_OBJC_CLASS_$_CATransaction
00067e70 mov       w2, #1                                       
00067e74 bl        #0xac980                                      ; objc_msgSend$setDisableActions:
00067e78 adrp      x8, #0xd4000                                 
00067e7c ldr       x8, [x8, #0x900]                              ; &_CGAffineTransformIdentity
00067e80 ldp       q0, q1, [x8]                                 
00067e84 str       q0, [sp, #0x5b0]                             
00067e88 str       q1, [sp, #0x5c0]                             
00067e8c ldr       q0, [x8, #0x20]                               ; &_class_getInstanceMethod
00067e90 str       q0, [sp, #0x5d0]                             
00067e94 add       x2, sp, #0x5b0                               
00067e98 mov       x0, x21                                      
00067e9c bl        #0xaf780                                      ; objc_msgSend$setTransform:
00067ea0 ldr       w8, [sp, #0xf8]                              
00067ea4 cmp       w8, #0                                       
00067ea8 ldr       x19, [sp, #0x158]                            
00067eac csel      x1, x24, x19, ne                             
00067eb0 mov       x0, x19                                      
00067eb4 bl        #0x7c258                                     
00067eb8 fmov      d8, d0                                       
00067ebc str       d1, [sp, #0x220]                             
