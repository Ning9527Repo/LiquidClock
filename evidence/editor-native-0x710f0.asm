; Local sample arm64e unslid VA 0x710f0..0x714d4
000710f0 pacibsp                                                
000710f4 sub       sp, sp, #0x150                               
000710f8 stp       x28, x27, [sp, #0xf0]                        
000710fc stp       x26, x25, [sp, #0x100]                       
00071100 stp       x24, x23, [sp, #0x110]                       
00071104 stp       x22, x21, [sp, #0x120]                       
00071108 stp       x20, x19, [sp, #0x130]                       
0007110c stp       x29, x30, [sp, #0x140]                       
00071110 add       x29, sp, #0x140                              
00071114 mov       x19, x0                                      
00071118 adrp      x8, #0xd4000                                 
0007111c ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00071120 ldr       x8, [x8]                                      ; &___objc_personality_v0
00071124 stur      x8, [x29, #-0x60]                            
00071128 bl        #0xb1600                                      ; objc_msgSend$updatingWallpaperDepthSettings
0007112c tbnz      w0, #0, #0x71464                             
00071130 movi      v0.2d, #0000000000000000                     
00071134 stp       q0, q0, [sp, #0x40]                          
00071138 stp       q0, q0, [sp, #0x20]                          
0007113c mov       x0, x19                                      
00071140 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00071144 mov       x29, x29                                     
00071148 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007114c mov       x21, x0                                      
00071150 bl        #0xa9040                                      ; objc_msgSend$keyEnumerator
00071154 mov       x29, x29                                     
00071158 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007115c mov       x22, x0                                      
00071160 bl        #0xa5100                                      ; objc_msgSend$allObjects
00071164 mov       x29, x29                                     
00071168 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007116c str       x0, [sp, #0x10]                              
00071170 mov       x0, x22                                      
00071174 bl        #0xa46f4                                      ; _objc_release
00071178 mov       x0, x21                                      
0007117c bl        #0xa46f4                                      ; _objc_release
00071180 add       x2, sp, #0x20                                
00071184 add       x3, sp, #0x60                                
00071188 ldr       x0, [sp, #0x10]                              
0007118c mov       w4, #0x10                                    
00071190 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00071194 mov       x21, x0                                      
00071198 cbz       x0, #0x7145c                                 
0007119c ldr       x8, [sp, #0x30]                              
000711a0 ldr       x8, [x8]                                     
000711a4 str       x8, [sp, #0x18]                              
000711a8 mov       x23, #0                                      
000711ac adrp      x8, #0xe9000                                 
000711b0 ldr       x22, [x8, #0xfd8]                             ; SEL pr_isComplicationRowConfigured
000711b4 adrp      x8, #0xe9000                                 
000711b8 ldr       x8, [x8, #0xfe8]                              ; SEL pr_setDepthEffectDisallowed:
000711bc str       x8, [sp, #8]                                 
000711c0 ldr       x8, [sp, #0x30]                              
000711c4 ldr       x8, [x8]                                      ; SEL currentHandler
000711c8 ldr       x9, [sp, #0x18]                              
000711cc cmp       x8, x9                                       
000711d0 b.eq      #0x711dc                                     
000711d4 ldr       x0, [sp, #0x10]                              
000711d8 bl        #0xa4634                                      ; _objc_enumerationMutation
000711dc ldr       x8, [sp, #0x28]                              
000711e0 ldr       x24, [x8, x23, lsl #3]                       
000711e4 mov       x0, x19                                      
000711e8 mov       x2, x24                                      
000711ec bl        #0xa81c0                                      ; objc_msgSend$hasWallpaperDepthReplicaForScene:
000711f0 mov       x25, x0                                      
000711f4 mov       x0, x24                                      
000711f8 bl        #0xafce0                                      ; objc_msgSend$settings
000711fc mov       x29, x29                                     
00071200 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071204 mov       x26, x0                                      
00071208 mov       x1, x22                                      
0007120c bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00071210 tbz       w0, #0, #0x71248                             
00071214 mov       x0, x24                                      
00071218 bl        #0xafce0                                      ; objc_msgSend$settings
0007121c mov       x29, x29                                     
00071220 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071224 mov       x28, x0                                      
00071228 bl        #0xaaa40                                      ; objc_msgSend$pr_isComplicationRowConfigured
0007122c mov       x27, x0                                      
00071230 mov       x0, x28                                      
00071234 bl        #0xa46f4                                      ; _objc_release
00071238 mov       x0, x26                                      
0007123c bl        #0xa46f4                                      ; _objc_release
00071240 cbnz      w27, #0x71250                                
00071244 b         #0x7126c                                     
00071248 mov       x0, x26                                      
0007124c bl        #0xa46f4                                      ; _objc_release
00071250 mov       x0, x19                                      
00071254 bl        #0xa5140                                      ; objc_msgSend$allowsWallpaperDepthEffect
00071258 and       w8, w0, w25                                  
0007125c tbz       w8, #0, #0x7126c                             
00071260 mov       w27, #0                                      
00071264 mov       w20, #1                                      
00071268 b         #0x712b0                                     
0007126c mov       x0, x19                                      
00071270 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00071274 mov       x29, x29                                     
00071278 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007127c mov       x26, x0                                      
00071280 mov       x2, x24                                      
00071284 bl        #0xaa260                                      ; objc_msgSend$objectForKey:
00071288 mov       x29, x29                                     
0007128c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071290 mov       x28, x0                                      
00071294 bl        #0xa5b80                                      ; objc_msgSend$boolValue
00071298 mov       x27, x0                                      
0007129c mov       x0, x28                                      
000712a0 bl        #0xa46f4                                      ; _objc_release
000712a4 mov       x0, x26                                      
000712a8 bl        #0xa46f4                                      ; _objc_release
000712ac mov       w20, #0                                      
000712b0 mov       x0, x24                                      
000712b4 bl        #0xafce0                                      ; objc_msgSend$settings
000712b8 mov       x29, x29                                     
000712bc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000712c0 mov       x26, x0                                      
000712c4 bl        #0xaaa60                                      ; objc_msgSend$pr_isDepthEffectDisallowed
000712c8 mov       x28, x0                                      
000712cc mov       x0, x26                                      
000712d0 bl        #0xa46f4                                      ; _objc_release
000712d4 eor       w8, w27, w28                                 
000712d8 tbz       w8, #0, #0x713c8                             
000712dc mov       x0, x24                                      
000712e0 bl        #0xafce0                                      ; objc_msgSend$settings
000712e4 mov       x29, x29                                     
000712e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000712ec mov       x28, x0                                      
000712f0 bl        #0xa9e00                                      ; objc_msgSend$mutableCopy
000712f4 mov       x26, x0                                      
000712f8 mov       x0, x28                                      
000712fc bl        #0xa46f4                                      ; _objc_release
00071300 mov       x0, x26                                      
00071304 ldr       x1, [sp, #8]                                 
00071308 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0007130c tbz       w0, #0, #0x71410                             
00071310 mov       x0, x26                                      
00071314 mov       x2, x27                                      
00071318 bl        #0xaaa80                                      ; objc_msgSend$pr_setDepthEffectDisallowed:
0007131c mov       x0, x19                                      
00071320 mov       w2, #1                                       
00071324 bl        #0xaf860                                      ; objc_msgSend$setUpdatingWallpaperDepthSettings:
00071328 cbz       w20, #0x71350                                
0007132c mov       x0, x19                                      
00071330 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
00071334 mov       x29, x29                                     
00071338 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007133c mov       x27, x0                                      
00071340 mov       x2, x24                                      
00071344 bl        #0xa4ee0                                      ; objc_msgSend$addObject:
00071348 mov       x0, x27                                      
0007134c bl        #0xa46f4                                      ; _objc_release
00071350 mov       x0, x24                                      
00071354 mov       x2, x26                                      
00071358 mov       x3, #0                                       
0007135c bl        #0xb14c0                                      ; objc_msgSend$updateSettings:withTransitionContext:
00071360 tbnz      w20, #0, #0x71388                            
00071364 mov       x0, x19                                      
00071368 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
0007136c mov       x29, x29                                     
00071370 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071374 mov       x27, x0                                      
00071378 mov       x2, x24                                      
0007137c bl        #0xab260                                      ; objc_msgSend$removeObject:
00071380 mov       x0, x27                                      
00071384 bl        #0xa46f4                                      ; _objc_release
00071388 tbnz      w25, #0, #0x713b0                            
0007138c mov       x0, x19                                      
00071390 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
00071394 mov       x29, x29                                     
00071398 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007139c mov       x25, x0                                      
000713a0 mov       x2, x24                                      
000713a4 bl        #0xab280                                      ; objc_msgSend$removeObjectForKey:
000713a8 mov       x0, x25                                      
000713ac bl        #0xa46f4                                      ; _objc_release
000713b0 mov       w20, #0                                      
000713b4 mov       x0, x19                                      
000713b8 mov       w2, #0                                       
000713bc bl        #0xaf860                                      ; objc_msgSend$setUpdatingWallpaperDepthSettings:
000713c0 cbz       w20, #0x71410                                
000713c4 b         #0x7149c                                     
000713c8 tbnz      w20, #0, #0x713f0                            
000713cc mov       x0, x19                                      
000713d0 bl        #0xaa6c0                                      ; objc_msgSend$overriddenDepthScenes
000713d4 mov       x29, x29                                     
000713d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000713dc mov       x26, x0                                      
000713e0 mov       x2, x24                                      
000713e4 bl        #0xab260                                      ; objc_msgSend$removeObject:
000713e8 mov       x0, x26                                      
000713ec bl        #0xa46f4                                      ; _objc_release
000713f0 tbnz      w25, #0, #0x71418                            
000713f4 mov       x0, x19                                      
000713f8 bl        #0xa9e80                                      ; objc_msgSend$nativeDepthVetoByScene
000713fc mov       x29, x29                                     
00071400 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00071404 mov       x26, x0                                      
00071408 mov       x2, x24                                      
0007140c bl        #0xab280                                      ; objc_msgSend$removeObjectForKey:
00071410 mov       x0, x26                                      
00071414 bl        #0xa46f4                                      ; _objc_release
00071418 add       x23, x23, #1                                 
0007141c cmp       x21, x23                                     
00071420 b.ne      #0x711c0                                     
00071424 b         #0x71440                                     
00071428 mov       x24, x0                                      
0007142c cbz       w1, #0x714cc                                 
00071430 mov       x0, x24                                      
00071434 bl        #0xa45f4                                      ; _objc_begin_catch
00071438 mov       w20, #1                                      
0007143c b         #0x713b4                                     
00071440 add       x2, sp, #0x20                                
00071444 add       x3, sp, #0x60                                
00071448 ldr       x0, [sp, #0x10]                              
0007144c mov       w4, #0x10                                    
00071450 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00071454 mov       x21, x0                                      
00071458 cbnz      x0, #0x711a8                                 
0007145c ldr       x0, [sp, #0x10]                              
00071460 bl        #0xa46f4                                      ; _objc_release
00071464 ldur      x8, [x29, #-0x60]                            
00071468 adrp      x9, #0xd4000                                 
0007146c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00071470 ldr       x9, [x9]                                      ; &___objc_personality_v0
00071474 cmp       x9, x8                                       
00071478 b.ne      #0x714a4                                     
0007147c ldp       x29, x30, [sp, #0x140]                       
00071480 ldp       x20, x19, [sp, #0x130]                       
00071484 ldp       x22, x21, [sp, #0x120]                       
00071488 ldp       x24, x23, [sp, #0x110]                       
0007148c ldp       x26, x25, [sp, #0x100]                       
00071490 ldp       x28, x27, [sp, #0xf0]                        
00071494 add       sp, sp, #0x150                               
00071498 retab                                                  
0007149c bl        #0xa4644                                      ; _objc_exception_rethrow
000714a0 brk       #1                                           
000714a4 bl        #0xa41d4                                      ; ___stack_chk_fail
000714a8 mov       x24, x0                                      
000714ac cbnz      w20, #0x714b8                                
000714b0 b         #0x714cc                                     
000714b4 mov       x24, x0                                      
000714b8 bl        #0xa4624                                      ; _objc_end_catch
000714bc b         #0x714cc                                     
000714c0 cbz       w1, #0x714c8                                 
000714c4 bl        #0xa47b4                                      ; _objc_terminate
000714c8 mov       x24, x0                                      
000714cc mov       x0, x24                                      
000714d0 bl        #0xa4194                                      ; __Unwind_Resume
