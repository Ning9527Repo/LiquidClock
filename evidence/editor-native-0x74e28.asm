; Uploaded sample arm64e unslid VA 0x74e28..0x74ea8
00074e28 pacibsp                                                
00074e2c stp       x29, x30, [sp, #-0x10]!                      
00074e30 mov       x29, sp                                      
00074e34 adrp      x0, #0xba000                                 
00074e38 add       x0, x0, #0x791                                ; 'FBSSceneSettings'
00074e3c bl        #0xa4664                                      ; _objc_getClass
00074e40 adrp      x8, #0xe9000                                 
00074e44 ldr       x1, [x8, #0xfe0]                              ; SEL pr_isDepthEffectDisallowed
00074e48 adrp      x3, #0xef000                                 
00074e4c add       x3, x3, #0x820                               
00074e50 adrp      x16, #0x74000                                
00074e54 add       x16, x16, #0xea8                             
00074e58 paciza    x16                                          
00074e5c mov       x2, x16                                      
00074e60 bl        #0xa4054                                      ; _MSHookMessageEx
00074e64 adrp      x0, #0xba000                                 
00074e68 add       x0, x0, #0x7a2                                ; 'PBUIPosterLockViewController'
00074e6c bl        #0xa4664                                      ; _objc_getClass
00074e70 adrp      x8, #0xec000                                 
00074e74 ldr       x1, [x8, #0x368]                              ; SEL portalSourceForReplicaView:
00074e78 adrp      x3, #0xef000                                 
00074e7c add       x3, x3, #0x828                               
00074e80 adrp      x16, #0x74000                                
00074e84 add       x16, x16, #0xf04                             
00074e88 paciza    x16                                          
00074e8c mov       x2, x16                                      
00074e90 ldp       x29, x30, [sp], #0x10                        
00074e94 autibsp                                                
00074e98 eor       x16, x30, x30, lsl #1                        
00074e9c tbz       x16, #0x3e, #0x74ea4                         
00074ea0 brk       #0xc471                                      
00074ea4 b         #0xa4054                                      ; _MSHookMessageEx
