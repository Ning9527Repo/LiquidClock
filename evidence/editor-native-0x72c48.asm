; Uploaded sample arm64e unslid VA 0x72c48..0x734f0
00072c48 pacibsp                                                
00072c4c stp       d13, d12, [sp, #-0x90]!                      
00072c50 stp       d11, d10, [sp, #0x10]                        
00072c54 stp       d9, d8, [sp, #0x20]                          
00072c58 stp       x28, x27, [sp, #0x30]                        
00072c5c stp       x26, x25, [sp, #0x40]                        
00072c60 stp       x24, x23, [sp, #0x50]                        
00072c64 stp       x22, x21, [sp, #0x60]                        
00072c68 stp       x20, x19, [sp, #0x70]                        
00072c6c stp       x29, x30, [sp, #0x80]                        
00072c70 add       x29, sp, #0x80                               
00072c74 sub       sp, sp, #0x290                               
00072c78 mov       x25, x0                                      
00072c7c adrp      x8, #0xd4000                                 
00072c80 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00072c84 ldr       x8, [x8]                                      ; &___objc_personality_v0
00072c88 stur      x8, [x29, #-0x90]                            
00072c8c mov       x0, x2                                       
00072c90 bl        #0xa4704                                      ; _objc_retain
00072c94 mov       x21, x0                                      
00072c98 bl        #0x73684                                     
00072c9c mov       x29, x29                                     
00072ca0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072ca4 mov       x19, x0                                      
00072ca8 bl        #0x735e8                                     
00072cac mov       x20, x0                                      
00072cb0 mov       x0, x19                                      
00072cb4 bl        #0xa46f4                                      ; _objc_release
00072cb8 tbz       w20, #0, #0x72cf8                            
00072cbc mov       x0, x21                                      
00072cc0 bl        #0x6e564                                      ; _LGClockSavedPosterCellComplicationLayout
00072cc4 mov       x29, x29                                     
00072cc8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072ccc mov       x19, x0                                      
00072cd0 adrp      x8, #0xe8000                                 
00072cd4 ldr       x1, [x8, #0xe20]                              ; SEL complications
00072cd8 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00072cdc tbz       w0, #0, #0x72d08                             
00072ce0 mov       x0, x19                                      
00072ce4 bl        #0xa6360                                      ; objc_msgSend$complications
00072ce8 mov       x29, x29                                     
00072cec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072cf0 mov       x20, x0                                      
00072cf4 b         #0x72d0c                                     
00072cf8 mov       x0, x25                                      
00072cfc mov       x2, x21                                      
00072d00 bl        #0xa5f60                                      ; objc_msgSend$clearDepthMaskForPosterCell:
00072d04 b         #0x73598                                     
00072d08 mov       x20, #0                                      
00072d0c mov       x0, x21                                      
00072d10 bl        #0x737b8                                     
00072d14 mov       x29, x29                                     
00072d18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072d1c mov       x22, x0                                      
00072d20 adrp      x8, #0xe8000                                 
00072d24 ldr       x1, [x8, #0xe18]                              ; SEL complicationRowView
00072d28 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00072d2c tbz       w0, #0, #0x72d48                             
00072d30 mov       x0, x22                                      
00072d34 bl        #0xa6340                                      ; objc_msgSend$complicationRowView
00072d38 mov       x29, x29                                     
00072d3c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072d40 str       x0, [sp, #0x38]                              
00072d44 b         #0x72d4c                                     
00072d48 str       xzr, [sp, #0x38]                             
00072d4c adrp      x8, #0xec000                                 
00072d50 ldr       x0, [x8, #0x520]                              ; &_OBJC_CLASS_$_NSMutableArray
00072d54 bl        #0xa5500                                      ; objc_msgSend$array
00072d58 mov       x29, x29                                     
00072d5c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072d60 mov       x26, x0                                      
00072d64 adrp      x8, #0xec000                                 
00072d68 ldr       x0, [x8, #0x5c8]                              ; &_OBJC_CLASS_$_NSArray
00072d6c bl        #0xa46b4                                      ; _objc_opt_class
00072d70 mov       x1, x0                                       
00072d74 mov       x0, x20                                      
00072d78 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00072d7c str       x26, [sp, #0x28]                             
00072d80 tbz       w0, #0, #0x72fdc                             
00072d84 mov       x0, x20                                      
00072d88 bl        #0xa6a00                                      ; objc_msgSend$count
00072d8c cbz       x0, #0x72fdc                                 
00072d90 ldr       x8, [sp, #0x38]                              
00072d94 cbz       x8, #0x72fdc                                 
00072d98 ldr       x0, [sp, #0x38]                              
00072d9c bl        #0xa8dc0                                      ; objc_msgSend$isHidden
00072da0 tbnz      w0, #0, #0x72fdc                             
00072da4 ldr       x0, [sp, #0x38]                              
00072da8 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072dac bl        #0xa3f24                                      ; _CGRectIsEmpty
00072db0 tbnz      w0, #0, #0x72fdc                             
00072db4 mov       x0, x22                                      
00072db8 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072dbc fcmp      d3, d2                                       
00072dc0 b.lt      #0x72fdc                                     
00072dc4 stp       x20, x19, [sp, #8]                           
00072dc8 str       x21, [sp, #0x18]                             
00072dcc adrp      x0, #0xdc000                                 
00072dd0 add       x0, x0, #0x290                                ; @'CSProminentDisplayView'
00072dd4 bl        #0xa4064                                      ; _NSClassFromString
00072dd8 mov       x20, x0                                      
00072ddc adrp      x0, #0xdc000                                 
00072de0 add       x0, x0, #0x2b0                                ; @'_UIPortalView'
00072de4 bl        #0xa4064                                      ; _NSClassFromString
00072de8 str       x0, [sp, #0x30]                              
00072dec movi      v0.2d, #0000000000000000                     
00072df0 stp       q0, q0, [sp, #0xc0]                          
00072df4 stp       q0, q0, [sp, #0xe0]                          
00072df8 mov       x26, x22                                     
00072dfc mov       x0, x22                                      
00072e00 bl        #0xb0760                                      ; objc_msgSend$superview
00072e04 mov       x29, x29                                     
00072e08 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072e0c mov       x19, x0                                      
00072e10 bl        #0xb0720                                      ; objc_msgSend$subviews
00072e14 mov       x29, x29                                     
00072e18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072e1c mov       x21, x0                                      
00072e20 mov       x0, x19                                      
00072e24 bl        #0xa46f4                                      ; _objc_release
00072e28 add       x2, sp, #0xc0                                
00072e2c add       x3, sp, #0x200                               
00072e30 mov       x0, x21                                      
00072e34 mov       w4, #0x10                                    
00072e38 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00072e3c cbz       x0, #0x72fc4                                 
00072e40 mov       x27, x0                                      
00072e44 mov       w24, #0                                      
00072e48 ldr       x8, [sp, #0xd0]                              
00072e4c ldr       x19, [x8]                                    
00072e50 mov       x23, #0                                      
00072e54 mov       x22, x24                                     
00072e58 ldr       x8, [sp, #0xd0]                              
00072e5c ldr       x8, [x8]                                     
00072e60 cmp       x8, x19                                      
00072e64 b.eq      #0x72e70                                     
00072e68 mov       x0, x21                                      
00072e6c bl        #0xa4634                                      ; _objc_enumerationMutation
00072e70 ldr       x8, [sp, #0xc8]                              
00072e74 ldr       x28, [x8, x23, lsl #3]                       
00072e78 cmp       x28, x26                                     
00072e7c cset      w8, eq                                       
00072e80 orr       w24, w8, w22                                 
00072e84 b.eq      #0x72f9c                                     
00072e88 eor       w8, w22, #1                                  
00072e8c tbnz      w8, #0, #0x72f9c                             
00072e90 mov       x0, x28                                      
00072e94 mov       x1, x20                                      
00072e98 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00072e9c tbnz      w0, #0, #0x72fc4                             
00072ea0 adrp      x8, #0xec000                                 
00072ea4 ldr       x0, [x8, #0x5c0]                              ; &_OBJC_CLASS_$_UIImageView
00072ea8 bl        #0xa46b4                                      ; _objc_opt_class
00072eac mov       x1, x0                                       
00072eb0 mov       x0, x28                                      
00072eb4 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00072eb8 tbnz      w0, #0, #0x72ed0                             
00072ebc ldr       x1, [sp, #0x30]                              
00072ec0 cbz       x1, #0x72f98                                 
00072ec4 mov       x0, x28                                      
00072ec8 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00072ecc tbz       w0, #0, #0x72f98                             
00072ed0 mov       x0, x28                                      
00072ed4 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072ed8 fmov      d8, d0                                       
00072edc fmov      d9, d1                                       
00072ee0 fmov      d10, d2                                      
00072ee4 fmov      d11, d3                                      
00072ee8 mov       x0, x26                                      
00072eec bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072ef0 fmov      d4, d0                                       
00072ef4 fmov      d5, d1                                       
00072ef8 fmov      d6, d2                                       
00072efc fmov      d7, d3                                       
00072f00 fmov      d0, d8                                       
00072f04 fmov      d1, d9                                       
00072f08 fmov      d2, d10                                      
00072f0c fmov      d3, d11                                      
00072f10 bl        #0xa3e54                                      ; _CGRectEqualToRect
00072f14 cbz       w0, #0x72f98                                 
00072f18 ldr       x24, [sp, #0x38]                             
00072f1c mov       x0, x24                                      
00072f20 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072f24 mov       x0, x24                                      
00072f28 mov       x2, x28                                      
00072f2c bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
00072f30 fmov      d8, d0                                       
00072f34 fmov      d9, d1                                       
00072f38 fmov      d10, d2                                      
00072f3c fmov      d11, d3                                      
00072f40 bl        #0xa3ec4                                      ; _CGRectGetMinY
00072f44 fmov      d12, d0                                      
00072f48 mov       x0, x28                                      
00072f4c bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072f50 bl        #0xa3ea4                                      ; _CGRectGetMidY
00072f54 fcmp      d12, d0                                      
00072f58 b.lt      #0x72f98                                     
00072f5c mov       x0, x28                                      
00072f60 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00072f64 fmov      d4, d0                                       
00072f68 fmov      d5, d1                                       
00072f6c fmov      d6, d2                                       
00072f70 fmov      d7, d3                                       
00072f74 fmov      d0, d8                                       
00072f78 fmov      d1, d9                                       
00072f7c fmov      d2, d10                                      
00072f80 fmov      d3, d11                                      
00072f84 bl        #0xa3f14                                      ; _CGRectIntersectsRect
00072f88 cbz       w0, #0x72f98                                 
00072f8c ldr       x0, [sp, #0x28]                              
00072f90 mov       x2, x28                                      
00072f94 bl        #0xa4ee0                                      ; objc_msgSend$addObject:
00072f98 mov       x24, x22                                     
00072f9c add       x23, x23, #1                                 
00072fa0 cmp       x27, x23                                     
00072fa4 b.ne      #0x72e54                                     
00072fa8 add       x2, sp, #0xc0                                
00072fac add       x3, sp, #0x200                               
00072fb0 mov       x0, x21                                      
00072fb4 mov       w4, #0x10                                    
00072fb8 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00072fbc mov       x27, x0                                      
00072fc0 cbnz      x0, #0x72e50                                 
00072fc4 mov       x0, x21                                      
00072fc8 bl        #0xa46f4                                      ; _objc_release
00072fcc ldp       x19, x21, [sp, #0x10]                        
00072fd0 ldr       x20, [sp, #8]                                
00072fd4 mov       x22, x26                                     
00072fd8 ldr       x26, [sp, #0x28]                             
00072fdc mov       x0, x26                                      
00072fe0 bl        #0xa6a00                                      ; objc_msgSend$count
00072fe4 cbz       x0, #0x73564                                 
00072fe8 stp       x22, x20, [sp]                               
00072fec str       x19, [sp, #0x10]                             
00072ff0 adrp      x20, #0xee000                                
00072ff4 ldr       x1, [x20, #0x8e0]                            
00072ff8 mov       x0, x21                                      
00072ffc bl        #0xa4654                                      ; _objc_getAssociatedObject
00073000 mov       x29, x29                                     
00073004 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073008 mov       x25, x0                                      
0007300c cbnz      x0, #0x73060                                 
00073010 adrp      x8, #0xec000                                 
00073014 ldr       x0, [x8, #0x838]                              ; &LGClockSavedPosterDepthMask
00073018 bl        #0xa46d4                                      ; _objc_opt_new
0007301c mov       x25, x0                                      
00073020 adrp      x8, #0xec000                                 
00073024 ldr       x0, [x8, #0x6b8]                              ; &_OBJC_CLASS_$_NSMapTable
00073028 bl        #0xb1a20                                      ; objc_msgSend$weakToStrongObjectsMapTable
0007302c mov       x29, x29                                     
00073030 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073034 mov       x19, x0                                      
00073038 mov       x0, x25                                      
0007303c mov       x2, x19                                      
00073040 bl        #0xad9e0                                      ; objc_msgSend$setMasks:
00073044 mov       x0, x19                                      
00073048 bl        #0xa46f4                                      ; _objc_release
0007304c ldr       x1, [x20, #0x8e0]                            
00073050 mov       x0, x21                                      
00073054 mov       x2, x25                                      
00073058 mov       w3, #1                                       
0007305c bl        #0xa4754                                      ; _objc_setAssociatedObject
00073060 str       x21, [sp, #0x18]                             
00073064 movi      v0.2d, #0000000000000000                     
00073068 stp       q0, q0, [sp, #0xa0]                          
0007306c stp       q0, q0, [sp, #0x80]                          
00073070 mov       x0, x25                                      
00073074 bl        #0xa9a40                                      ; objc_msgSend$masks
00073078 mov       x29, x29                                     
0007307c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073080 mov       x19, x0                                      
00073084 bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
00073088 mov       x29, x29                                     
0007308c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073090 mov       x21, x0                                      
00073094 bl        #0xa5100                                      ; objc_msgSend$allObjects
00073098 mov       x29, x29                                     
0007309c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000730a0 mov       x20, x0                                      
000730a4 mov       x0, x21                                      
000730a8 bl        #0xa46f4                                      ; _objc_release
000730ac mov       x0, x19                                      
000730b0 bl        #0xa46f4                                      ; _objc_release
000730b4 add       x2, sp, #0x80                                
000730b8 add       x3, sp, #0x180                               
000730bc mov       x0, x20                                      
000730c0 mov       w4, #0x10                                    
000730c4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000730c8 cbz       x0, #0x731f0                                 
000730cc mov       x21, x0                                      
000730d0 ldr       x8, [sp, #0x90]                              
000730d4 ldr       x23, [x8]                                    
000730d8 mov       x24, #0                                      
000730dc ldr       x8, [sp, #0x90]                              
000730e0 ldr       x8, [x8]                                     
000730e4 cmp       x8, x23                                      
000730e8 b.eq      #0x730f4                                     
000730ec mov       x0, x20                                      
000730f0 bl        #0xa4634                                      ; _objc_enumerationMutation
000730f4 ldr       x8, [sp, #0x88]                              
000730f8 ldr       x22, [x8, x24, lsl #3]                       
000730fc mov       x0, x26                                      
00073100 mov       x2, x22                                      
00073104 bl        #0xa6520                                      ; objc_msgSend$containsObject:
00073108 tbnz      w0, #0, #0x731c8                             
0007310c mov       x0, x22                                      
00073110 bl        #0xa91e0                                      ; objc_msgSend$layer
00073114 mov       x29, x29                                     
00073118 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007311c mov       x19, x0                                      
00073120 bl        #0xa9a00                                      ; objc_msgSend$mask
00073124 mov       x29, x29                                     
00073128 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007312c mov       x26, x0                                      
00073130 mov       x0, x25                                      
00073134 bl        #0xa9a40                                      ; objc_msgSend$masks
00073138 mov       x29, x29                                     
0007313c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073140 mov       x27, x0                                      
00073144 mov       x2, x22                                      
00073148 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
0007314c mov       x29, x29                                     
00073150 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073154 mov       x28, x0                                      
00073158 bl        #0xa46f4                                      ; _objc_release
0007315c mov       x0, x27                                      
00073160 bl        #0xa46f4                                      ; _objc_release
00073164 mov       x0, x26                                      
00073168 bl        #0xa46f4                                      ; _objc_release
0007316c mov       x0, x19                                      
00073170 bl        #0xa46f4                                      ; _objc_release
00073174 cmp       x26, x28                                     
00073178 b.ne      #0x731a0                                     
0007317c mov       x0, x22                                      
00073180 bl        #0xa91e0                                      ; objc_msgSend$layer
00073184 mov       x29, x29                                     
00073188 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007318c mov       x19, x0                                      
00073190 mov       x2, #0                                       
00073194 bl        #0xad9a0                                      ; objc_msgSend$setMask:
00073198 mov       x0, x19                                      
0007319c bl        #0xa46f4                                      ; _objc_release
000731a0 mov       x0, x25                                      
000731a4 bl        #0xa9a40                                      ; objc_msgSend$masks
000731a8 mov       x29, x29                                     
000731ac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000731b0 mov       x19, x0                                      
000731b4 mov       x2, x22                                      
000731b8 bl        #0xab280                                      ; objc_msgSend$removeObjectForKey:
000731bc mov       x0, x19                                      
000731c0 bl        #0xa46f4                                      ; _objc_release
000731c4 ldr       x26, [sp, #0x28]                             
000731c8 add       x24, x24, #1                                 
000731cc cmp       x21, x24                                     
000731d0 b.ne      #0x730dc                                     
000731d4 add       x2, sp, #0x80                                
000731d8 add       x3, sp, #0x180                               
000731dc mov       x0, x20                                      
000731e0 mov       w4, #0x10                                    
000731e4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000731e8 mov       x21, x0                                      
000731ec cbnz      x0, #0x730d8                                 
000731f0 mov       x0, x20                                      
000731f4 bl        #0xa46f4                                      ; _objc_release
000731f8 adrp      x19, #0xec000                                
000731fc ldr       x0, [x19, #0x4c0]                             ; &_OBJC_CLASS_$_CATransaction
00073200 bl        #0xa59e0                                      ; objc_msgSend$begin
00073204 ldr       x0, [x19, #0x4c0]                             ; &_OBJC_CLASS_$_CATransaction
00073208 mov       w2, #1                                       
0007320c bl        #0xac980                                      ; objc_msgSend$setDisableActions:
00073210 movi      v0.2d, #0000000000000000                     
00073214 stp       q0, q0, [sp, #0x60]                          
00073218 stp       q0, q0, [sp, #0x40]                          
0007321c mov       x0, x26                                      
00073220 bl        #0xa4704                                      ; _objc_retain
00073224 add       x2, sp, #0x40                                
00073228 add       x3, sp, #0x100                               
0007322c str       x0, [sp, #0x30]                              
00073230 mov       w4, #0x10                                    
00073234 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00073238 cbz       x0, #0x73538                                 
0007323c mov       x28, x0                                      
00073240 ldr       x8, [sp, #0x50]                              
00073244 ldr       x23, [x8]                                    
00073248 adrp      x8, #0xd4000                                 
0007324c ldr       x8, [x8, #0x8a8]                              ; &_kCAFillRuleEvenOdd
00073250 ldr       x8, [x8]                                      ; &___objc_personality_v0
00073254 str       x8, [sp, #0x20]                              
00073258 mov       x26, #0                                      
0007325c ldr       x8, [sp, #0x50]                              
00073260 ldr       x8, [x8]                                      ; &___objc_personality_v0
00073264 cmp       x8, x23                                      
00073268 b.eq      #0x73274                                     
0007326c ldr       x0, [sp, #0x30]                              
00073270 bl        #0xa4634                                      ; _objc_enumerationMutation
00073274 ldr       x8, [sp, #0x48]                              
00073278 ldr       x21, [x8, x26, lsl #3]                       
0007327c mov       x0, x25                                      
00073280 bl        #0xa9a40                                      ; objc_msgSend$masks
00073284 mov       x29, x29                                     
00073288 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007328c mov       x19, x0                                      
00073290 mov       x2, x21                                      
00073294 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00073298 mov       x29, x29                                     
0007329c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000732a0 mov       x20, x0                                      
000732a4 mov       x0, x19                                      
000732a8 bl        #0xa46f4                                      ; _objc_release
000732ac mov       x0, x21                                      
000732b0 bl        #0xa91e0                                      ; objc_msgSend$layer
000732b4 mov       x29, x29                                     
000732b8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000732bc mov       x22, x0                                      
000732c0 bl        #0xa9a00                                      ; objc_msgSend$mask
000732c4 mov       x29, x29                                     
000732c8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000732cc cbz       x0, #0x734c4                                 
000732d0 mov       x19, x0                                      
000732d4 mov       x0, x21                                      
000732d8 bl        #0xa91e0                                      ; objc_msgSend$layer
000732dc mov       x29, x29                                     
000732e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000732e4 mov       x27, x0                                      
000732e8 bl        #0xa9a00                                      ; objc_msgSend$mask
000732ec mov       x29, x29                                     
000732f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000732f4 mov       x24, x0                                      
000732f8 bl        #0xa46f4                                      ; _objc_release
000732fc mov       x0, x27                                      
00073300 bl        #0xa46f4                                      ; _objc_release
00073304 mov       x0, x19                                      
00073308 bl        #0xa46f4                                      ; _objc_release
0007330c mov       x0, x22                                      
00073310 bl        #0xa46f4                                      ; _objc_release
00073314 cmp       x24, x20                                     
00073318 b.ne      #0x734ac                                     
0007331c cbz       x20, #0x734d0                                
00073320 ldr       x19, [sp, #0x38]                             
00073324 mov       x0, x19                                      
00073328 bl        #0xa5bc0                                      ; objc_msgSend$bounds
0007332c mov       x0, x19                                      
00073330 mov       x2, x21                                      
00073334 bl        #0xa6900                                      ; objc_msgSend$convertRect:toView:
00073338 fmov      d8, d0                                       
0007333c fmov      d9, d1                                       
00073340 fmov      d10, d2                                      
00073344 fmov      d11, d3                                      
00073348 adrp      x24, #0xec000                                
0007334c ldr       x19, [x24, #0x4b8]                            ; &_OBJC_CLASS_$_UIBezierPath
00073350 mov       x0, x21                                      
00073354 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00073358 mov       x0, x19                                      
0007335c bl        #0xa5a60                                      ; objc_msgSend$bezierPathWithRect:
00073360 mov       x29, x29                                     
00073364 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073368 mov       x22, x0                                      
0007336c ldr       x0, [x24, #0x4b8]                             ; &_OBJC_CLASS_$_UIBezierPath
00073370 fmov      d0, d8                                       
00073374 fmov      d1, d9                                       
00073378 fmov      d2, d10                                      
0007337c fmov      d3, d11                                      
00073380 bl        #0xa5a60                                      ; objc_msgSend$bezierPathWithRect:
00073384 mov       x29, x29                                     
00073388 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007338c mov       x19, x0                                      
00073390 mov       x0, x22                                      
00073394 mov       x2, x19                                      
00073398 bl        #0xa5380                                      ; objc_msgSend$appendPath:
0007339c mov       x0, x19                                      
000733a0 bl        #0xa46f4                                      ; _objc_release
000733a4 mov       x0, x20                                      
000733a8 bl        #0xa7b00                                      ; objc_msgSend$frame
000733ac fmov      d8, d0                                       
000733b0 fmov      d9, d1                                       
000733b4 fmov      d10, d2                                      
000733b8 fmov      d11, d3                                      
000733bc mov       x0, x21                                      
000733c0 bl        #0xa5bc0                                      ; objc_msgSend$bounds
000733c4 fmov      d4, d0                                       
000733c8 fmov      d5, d1                                       
000733cc fmov      d6, d2                                       
000733d0 fmov      d7, d3                                       
000733d4 fmov      d0, d8                                       
000733d8 fmov      d1, d9                                       
000733dc fmov      d2, d10                                      
000733e0 fmov      d3, d11                                      
000733e4 bl        #0xa3e54                                      ; _CGRectEqualToRect
000733e8 tbnz      w0, #0, #0x733fc                             
000733ec mov       x0, x21                                      
000733f0 bl        #0xa5bc0                                      ; objc_msgSend$bounds
000733f4 mov       x0, x20                                      
000733f8 bl        #0xace60                                      ; objc_msgSend$setFrame:
000733fc mov       x0, x20                                      
00073400 bl        #0xaa760                                      ; objc_msgSend$path
00073404 cbz       x0, #0x73430                                 
00073408 mov       x0, x20                                      
0007340c bl        #0xaa760                                      ; objc_msgSend$path
00073410 mov       x19, x0                                      
00073414 mov       x0, x22                                      
00073418 bl        #0xa4714                                      ; _objc_retainAutorelease
0007341c bl        #0xa49c0                                      ; objc_msgSend$CGPath
00073420 mov       x1, x0                                       
00073424 mov       x0, x19                                      
00073428 bl        #0xa3de4                                      ; _CGPathEqualToPath
0007342c tbnz      w0, #0, #0x73448                             
00073430 mov       x0, x22                                      
00073434 bl        #0xa4714                                      ; _objc_retainAutorelease
00073438 bl        #0xa49c0                                      ; objc_msgSend$CGPath
0007343c mov       x2, x0                                       
00073440 mov       x0, x20                                      
00073444 bl        #0xae2e0                                      ; objc_msgSend$setPath:
00073448 mov       x0, x21                                      
0007344c bl        #0xa91e0                                      ; objc_msgSend$layer
00073450 mov       x29, x29                                     
00073454 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073458 mov       x19, x0                                      
0007345c bl        #0xa9a00                                      ; objc_msgSend$mask
00073460 mov       x29, x29                                     
00073464 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073468 mov       x24, x0                                      
0007346c bl        #0xa46f4                                      ; _objc_release
00073470 mov       x0, x19                                      
00073474 bl        #0xa46f4                                      ; _objc_release
00073478 cmp       x24, x20                                     
0007347c b.eq      #0x734a4                                     
00073480 mov       x0, x21                                      
00073484 bl        #0xa91e0                                      ; objc_msgSend$layer
00073488 mov       x29, x29                                     
0007348c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00073490 mov       x19, x0                                      
00073494 mov       x2, x20                                      
00073498 bl        #0xad9a0                                      ; objc_msgSend$setMask:
0007349c mov       x0, x19                                      
000734a0 bl        #0xa46f4                                      ; _objc_release
000734a4 mov       x0, x22                                      
000734a8 bl        #0xa46f4                                      ; _objc_release
000734ac mov       x0, x20                                      
000734b0 bl        #0xa46f4                                      ; _objc_release
000734b4 add       x26, x26, #1                                 
000734b8 cmp       x28, x26                                     
000734bc b.ne      #0x7325c                                     
000734c0 b         #0x7351c                                     
000734c4 mov       x0, x22                                      
000734c8 bl        #0xa46f4                                      ; _objc_release
000734cc cbnz      x20, #0x73320                                
000734d0 adrp      x8, #0xec000                                 
000734d4 ldr       x0, [x8, #0x4d0]                              ; &_OBJC_CLASS_$_CAShapeLayer
000734d8 bl        #0xa91e0                                      ; objc_msgSend$layer
000734dc mov       x29, x29                                     
000734e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000734e4 mov       x20, x0                                      
000734e8 ldr       x2, [sp, #0x20]                              
000734ec bl        #0xacd20                                      ; objc_msgSend$setFillRule:
