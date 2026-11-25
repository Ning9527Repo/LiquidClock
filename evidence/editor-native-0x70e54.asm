; Local sample arm64e unslid VA 0x70e54..0x710f0
00070e54 pacibsp                                                
00070e58 stp       x26, x25, [sp, #-0x50]!                      
00070e5c stp       x24, x23, [sp, #0x10]                        
00070e60 stp       x22, x21, [sp, #0x20]                        
00070e64 stp       x20, x19, [sp, #0x30]                        
00070e68 stp       x29, x30, [sp, #0x40]                        
00070e6c add       x29, sp, #0x40                               
00070e70 mov       x20, x3                                      
00070e74 mov       x21, x0                                      
00070e78 mov       x0, x2                                       
00070e7c bl        #0xa4704                                      ; _objc_retain
00070e80 mov       x19, x0                                      
00070e84 mov       x0, x20                                      
00070e88 bl        #0xa4704                                      ; _objc_retain
00070e8c mov       x20, x0                                      
00070e90 mov       x0, x21                                      
00070e94 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00070e98 mov       x29, x29                                     
00070e9c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070ea0 mov       x22, x0                                      
00070ea4 mov       x2, x19                                      
00070ea8 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00070eac mov       x29, x29                                     
00070eb0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070eb4 mov       x23, x0                                      
00070eb8 cbz       x0, #0x70ec8                                 
00070ebc mov       x0, x21                                      
00070ec0 bl        #0xb1600                                      ; objc_msgSend$updatingWallpaperDepthSettings
00070ec4 tbz       w0, #0, #0x70f0c                             
00070ec8 mov       x0, x23                                      
00070ecc bl        #0xa46f4                                      ; _objc_release
00070ed0 mov       x0, x22                                      
00070ed4 bl        #0xa46f4                                      ; _objc_release
00070ed8 mov       x0, x20                                      
00070edc bl        #0xa46f4                                      ; _objc_release
00070ee0 mov       x0, x19                                      
00070ee4 ldp       x29, x30, [sp, #0x40]                        
00070ee8 ldp       x20, x19, [sp, #0x30]                        
00070eec ldp       x22, x21, [sp, #0x20]                        
00070ef0 ldp       x24, x23, [sp, #0x10]                        
00070ef4 ldp       x26, x25, [sp], #0x50                        
00070ef8 autibsp                                                
00070efc eor       x16, x30, x30, lsl #1                        
00070f00 tbz       x16, #0x3e, #0x70f08                         
00070f04 brk       #0xc471                                      
00070f08 b         #0xa46f4                                      ; _objc_release
00070f0c adrp      x8, #0xe9000                                 
00070f10 ldr       x1, [x8, #0xfe8]                              ; SEL pr_setDepthEffectDisallowed:
00070f14 mov       x0, x20                                      
00070f18 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00070f1c mov       x24, x0                                      
00070f20 mov       x0, x23                                      
00070f24 bl        #0xa46f4                                      ; _objc_release
00070f28 mov       x0, x22                                      
00070f2c bl        #0xa46f4                                      ; _objc_release
00070f30 tbz       w24, #0, #0x70ed8                            
00070f34 mov       x0, x20                                      
00070f38 bl        #0xaaa60                                      ; objc_msgSend$pr_isDepthEffectDisallowed
00070f3c mov       x22, x0                                      
00070f40 adrp      x8, #0xe9000                                 
00070f44 ldr       x1, [x8, #0xfd8]                              ; SEL pr_isComplicationRowConfigured
00070f48 mov       x0, x20                                      
00070f4c bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00070f50 tbz       w0, #0, #0x70f60                             
00070f54 mov       x0, x20                                      
00070f58 bl        #0xaaa40                                      ; objc_msgSend$pr_isComplicationRowConfigured
00070f5c cbz       w0, #0x70f8c                                 
00070f60 mov       x0, x21                                      
00070f64 bl        #0xa5140                                      ; objc_msgSend$allowsWallpaperDepthEffect
00070f68 cbz       w0, #0x70f80                                 
00070f6c mov       x0, x21                                      
00070f70 mov       x2, x19                                      
00070f74 bl        #0xa81c0                                      ; objc_msgSend$hasWallpaperDepthReplicaForScene:
00070f78 mov       x23, x0                                      
00070f7c b         #0x70f84                                     
00070f80 mov       w23, #0                                      
00070f84 mov       w26, #1                                      
00070f88 b         #0x70f94                                     
00070f8c mov       w26, #0                                      
00070f90 mov       w23, #0                                      
00070f94 mov       x0, x21                                      
00070f98 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
00070f9c mov       x29, x29                                     
00070fa0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070fa4 mov       x25, x0                                      
00070fa8 mov       x2, x19                                      
00070fac bl        #0xa6520                                      ; objc_msgSend$containsObject:
00070fb0 mov       x24, x0                                      
00070fb4 mov       x0, x25                                      
00070fb8 bl        #0xa46f4                                      ; _objc_release
00070fbc tbz       w26, #0, #0x71004                            
00070fc0 orn       w8, w22, w24                                 
00070fc4 tbnz      w8, #0, #0x7102c                             
00070fc8 cbz       w23, #0x71080                                
00070fcc cbz       w22, #0x70ff4                                
00070fd0 mov       x0, x21                                      
00070fd4 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
00070fd8 mov       x29, x29                                     
00070fdc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00070fe0 mov       x21, x0                                      
00070fe4 mov       x2, x19                                      
00070fe8 bl        #0xa4ee0                                      ; objc_msgSend$addObject:
00070fec mov       x0, x21                                      
00070ff0 bl        #0xa46f4                                      ; _objc_release
00070ff4 mov       x0, x20                                      
00070ff8 mov       w2, #0                                       
00070ffc bl        #0xaaa80                                      ; objc_msgSend$pr_setDepthEffectDisallowed:
00071000 b         #0x70ed8                                     
00071004 mov       x0, x21                                      
00071008 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
0007100c mov       x29, x29                                     
00071010 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071014 mov       x24, x0                                      
00071018 mov       x2, x19                                      
0007101c bl        #0xab260                                      ; objc_msgSend$removeObject:
00071020 mov       x0, x24                                      
00071024 bl        #0xa46f4                                      ; _objc_release
00071028 mov       w24, #0                                      
0007102c mov       x0, x21                                      
00071030 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00071034 mov       x29, x29                                     
00071038 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007103c mov       x25, x0                                      
00071040 adrp      x8, #0xec000                                 
00071044 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
00071048 mov       x2, x22                                      
0007104c bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
00071050 mov       x29, x29                                     
00071054 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071058 mov       x26, x0                                      
0007105c mov       x0, x25                                      
00071060 mov       x2, x26                                      
00071064 mov       x3, x19                                      
00071068 bl        #0xadea0                                      ; objc_msgSend$setObject:forKey:
0007106c mov       x0, x26                                      
00071070 bl        #0xa46f4                                      ; _objc_release
00071074 mov       x0, x25                                      
00071078 bl        #0xa46f4                                      ; _objc_release
0007107c cbnz      w23, #0x70fcc                                
00071080 cbz       w24, #0x70ed8                                
00071084 mov       x0, x21                                      
00071088 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
0007108c mov       x29, x29                                     
00071090 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071094 mov       x22, x0                                      
00071098 mov       x2, x19                                      
0007109c bl        #0xaa260                                      ; objc_msgSend$objectForKey:
000710a0 mov       x29, x29                                     
000710a4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000710a8 mov       x23, x0                                      
000710ac bl        #0xa5b80                                      ; objc_msgSend$boolValue
000710b0 mov       x2, x0                                       
000710b4 mov       x0, x20                                      
000710b8 bl        #0xaaa80                                      ; objc_msgSend$pr_setDepthEffectDisallowed:
000710bc mov       x0, x23                                      
000710c0 bl        #0xa46f4                                      ; _objc_release
000710c4 mov       x0, x22                                      
000710c8 bl        #0xa46f4                                      ; _objc_release
000710cc mov       x0, x21                                      
000710d0 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
000710d4 mov       x29, x29                                     
000710d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000710dc mov       x21, x0                                      
000710e0 mov       x2, x19                                      
000710e4 bl        #0xab260                                      ; objc_msgSend$removeObject:
000710e8 mov       x0, x21                                      
000710ec b         #0x70ed4                                     
