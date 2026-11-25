; state-persist-stage arm64e unslid VA [0x62c10,0x6342c)
00062c10 pacibsp                                                
00062c14 sub       sp, sp, #0x70                                
00062c18 stp       x24, x23, [sp, #0x30]                        
00062c1c stp       x22, x21, [sp, #0x40]                        
00062c20 stp       x20, x19, [sp, #0x50]                        
00062c24 stp       x29, x30, [sp, #0x60]                        
00062c28 add       x29, sp, #0x60                               
00062c2c mov       x21, x0                                      
00062c30 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
00062c34 mov       x29, x29                                     
00062c38 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062c3c mov       x19, x0                                      
00062c40 adrp      x8, #0xeb000                                 
00062c44 ldr       x1, [x8, #0x648]                              ; SEL storeUserInfo:error:
00062c48 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00062c4c tbz       w0, #0, #0x62d74                             
00062c50 str       xzr, [sp, #0x28]                             
00062c54 add       x2, sp, #0x28                                
00062c58 mov       x0, x19                                      
00062c5c bl        #0xa9780                                      ; objc_msgSend$loadUserInfoWithError:
00062c60 mov       x29, x29                                     
00062c64 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062c68 mov       x20, x0                                      
00062c6c ldr       x0, [sp, #0x28]                              
00062c70 bl        #0xa4704                                      ; _objc_retain
00062c74 mov       x22, x0                                      
00062c78 cbz       x0, #0x62cf8                                 
00062c7c mov       x0, x22                                      
00062c80 bl        #0xa7180                                      ; objc_msgSend$domain
00062c84 mov       x29, x29                                     
00062c88 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062c8c mov       x23, x0                                      
00062c90 adrp      x8, #0xd4000                                 
00062c94 ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
00062c98 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
00062c9c bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00062ca0 tbz       w0, #0, #0x62cc0                             
00062ca4 mov       x0, x22                                      
00062ca8 bl        #0xa6040                                      ; objc_msgSend$code
00062cac cmp       x0, #0x104                                   
00062cb0 b.ne      #0x62cdc                                     
00062cb4 mov       x0, x23                                      
00062cb8 bl        #0xa46f4                                      ; _objc_release
00062cbc b         #0x62cf8                                     
00062cc0 mov       x0, x23                                      
00062cc4 bl        #0xa46f4                                      ; _objc_release
00062cc8 str       x22, [sp]                                    
00062ccc adrp      x0, #0xdb000                                 
00062cd0 add       x0, x0, #0xbf0                                ; @'[ClockPoster] cannot read target user info: %@'
00062cd4 bl        #0xa23b8                                      ; _LGLog
00062cd8 b         #0x62d64                                     
00062cdc mov       x0, x22                                      
00062ce0 bl        #0xa6040                                      ; objc_msgSend$code
00062ce4 mov       x24, x0                                      
00062ce8 mov       x0, x23                                      
00062cec bl        #0xa46f4                                      ; _objc_release
00062cf0 cmp       x24, #4                                      
00062cf4 b.ne      #0x62cc8                                     
00062cf8 cbz       x20, #0x62d18                                
00062cfc adrp      x8, #0xec000                                 
00062d00 ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
00062d04 bl        #0xa46b4                                      ; _objc_opt_class
00062d08 mov       x1, x0                                       
00062d0c mov       x0, x20                                      
00062d10 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
00062d14 tbz       w0, #0, #0x62d64                             
00062d18 str       x22, [sp, #0x20]                             
00062d1c add       x3, sp, #0x20                                
00062d20 mov       x0, x19                                      
00062d24 mov       x2, x20                                      
00062d28 bl        #0xb0400                                      ; objc_msgSend$storeUserInfo:error:
00062d2c mov       x23, x0                                      
00062d30 ldr       x0, [sp, #0x20]                              
00062d34 bl        #0xa4704                                      ; _objc_retain
00062d38 mov       x24, x0                                      
00062d3c mov       x0, x22                                      
00062d40 bl        #0xa46f4                                      ; _objc_release
00062d44 mov       x0, x21                                      
00062d48 bl        #0xaade0                                      ; objc_msgSend$progress
00062d4c stp       x23, x24, [sp, #8]                           
00062d50 str       d0, [sp]                                     
00062d54 adrp      x0, #0xdb000                                 
00062d58 add       x0, x0, #0xc10                                ; @'[ClockPoster] staged target progress=%.4f success=%d error=%@'
00062d5c bl        #0xa23b8                                      ; _LGLog
00062d60 mov       x22, x24                                     
00062d64 mov       x0, x20                                      
00062d68 bl        #0xa46f4                                      ; _objc_release
00062d6c mov       x0, x22                                      
00062d70 bl        #0xa46f4                                      ; _objc_release
00062d74 mov       x0, x19                                      
00062d78 bl        #0xa46f4                                      ; _objc_release
00062d7c ldp       x29, x30, [sp, #0x60]                        
00062d80 ldp       x20, x19, [sp, #0x50]                        
00062d84 ldp       x22, x21, [sp, #0x40]                        
00062d88 ldp       x24, x23, [sp, #0x30]                        
00062d8c add       sp, sp, #0x70                                
00062d90 retab                                                  
00062d94 pacibsp                                                
00062d98 sub       sp, sp, #0x80                                
00062d9c stp       x24, x23, [sp, #0x40]                        
00062da0 stp       x22, x21, [sp, #0x50]                        
00062da4 stp       x20, x19, [sp, #0x60]                        
00062da8 stp       x29, x30, [sp, #0x70]                        
00062dac add       x29, sp, #0x70                               
00062db0 mov       x19, x0                                      
00062db4 adrp      x8, #0xd4000                                 
00062db8 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00062dbc ldr       x8, [x8]                                      ; &___objc_personality_v0
00062dc0 str       x8, [sp, #0x38]                              
00062dc4 bl        #0xa9d40                                      ; objc_msgSend$modern
00062dc8 cbz       w0, #0x62e10                                 
00062dcc mov       x0, x19                                      
00062dd0 bl        #0xaade0                                      ; objc_msgSend$progress
00062dd4 fcmp      d0, #0.0                                     
00062dd8 b.le      #0x62e10                                     
00062ddc mov       x0, x19                                      
00062de0 mov       w2, #0                                       
00062de4 bl        #0xac220                                      ; objc_msgSend$setClockAnimating:
00062de8 mov       x0, x19                                      
00062dec bl        #0xb1ca0                                      ; objc_msgSend$widgetsAtTop
00062df0 cbz       w0, #0x62e10                                 
00062df4 mov       x0, x19                                      
00062df8 mov       w2, #0                                       
00062dfc bl        #0xafbe0                                      ; objc_msgSend$setWidgetsAtTop:
00062e00 adrp      x8, #0xbd000                                 
00062e04 ldr       d0, [x8, #0x390]                             
00062e08 mov       x0, x19                                      
00062e0c bl        #0xa9300                                      ; objc_msgSend$layoutWidgetsWithDuration:
00062e10 mov       x0, x19                                      
00062e14 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
00062e18 mov       x29, x29                                     
00062e1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062e20 mov       x20, x0                                      
00062e24 bl        #0xa46f4                                      ; _objc_release
00062e28 cbz       x20, #0x62fbc                                
00062e2c mov       x0, x19                                      
00062e30 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
00062e34 mov       x29, x29                                     
00062e38 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062e3c mov       x20, x0                                      
00062e40 adrp      x8, #0xee000                                 
00062e44 ldr       x21, [x8, #0x840]                            
00062e48 adrp      x23, #0xec000                                
00062e4c ldr       x22, [x23, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
00062e50 mov       x0, x19                                      
00062e54 bl        #0xaade0                                      ; objc_msgSend$progress
00062e58 mov       x0, x22                                      
00062e5c bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
00062e60 mov       x29, x29                                     
00062e64 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062e68 mov       x22, x0                                      
00062e6c mov       x0, x20                                      
00062e70 mov       x1, x21                                      
00062e74 mov       x2, x22                                      
00062e78 mov       w3, #1                                       
00062e7c bl        #0xa4754                                      ; _objc_setAssociatedObject
00062e80 mov       x0, x22                                      
00062e84 bl        #0xa46f4                                      ; _objc_release
00062e88 mov       x0, x20                                      
00062e8c bl        #0xa46f4                                      ; _objc_release
00062e90 adrp      x8, #0xdb000                                 
00062e94 add       x8, x8, #0xc30                                ; @'modern'
00062e98 str       x8, [sp, #8]                                 
00062e9c ldr       x20, [x23, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
00062ea0 mov       x0, x19                                      
00062ea4 bl        #0xa9d40                                      ; objc_msgSend$modern
00062ea8 mov       x2, x0                                       
00062eac mov       x0, x20                                      
00062eb0 bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
00062eb4 mov       x29, x29                                     
00062eb8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062ebc mov       x21, x0                                      
00062ec0 str       x0, [sp, #0x20]                              
00062ec4 adrp      x8, #0xdb000                                 
00062ec8 add       x8, x8, #0xc50                                ; @'weight'
00062ecc str       x8, [sp, #0x10]                              
00062ed0 ldr       x20, [x23, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
00062ed4 mov       x0, x19                                      
00062ed8 bl        #0xb1a60                                      ; objc_msgSend$weight
00062edc mov       x0, x20                                      
00062ee0 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
00062ee4 mov       x29, x29                                     
00062ee8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062eec mov       x22, x0                                      
00062ef0 str       x0, [sp, #0x28]                              
00062ef4 adrp      x8, #0xdb000                                 
00062ef8 add       x8, x8, #0xc70                                ; @'softness'
00062efc str       x8, [sp, #0x18]                              
00062f00 ldr       x20, [x23, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
00062f04 mov       x0, x19                                      
00062f08 bl        #0xafec0                                      ; objc_msgSend$softness
00062f0c mov       x0, x20                                      
00062f10 bl        #0xaa100                                      ; objc_msgSend$numberWithDouble:
00062f14 mov       x29, x29                                     
00062f18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062f1c mov       x23, x0                                      
00062f20 str       x0, [sp, #0x30]                              
00062f24 adrp      x8, #0xec000                                 
00062f28 ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
00062f2c add       x2, sp, #0x20                                
00062f30 add       x3, sp, #8                                   
00062f34 mov       w4, #3                                       
00062f38 bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
00062f3c mov       x29, x29                                     
00062f40 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062f44 mov       x20, x0                                      
00062f48 mov       x0, x23                                      
00062f4c bl        #0xa46f4                                      ; _objc_release
00062f50 mov       x0, x22                                      
00062f54 bl        #0xa46f4                                      ; _objc_release
00062f58 mov       x0, x21                                      
00062f5c bl        #0xa46f4                                      ; _objc_release
00062f60 mov       x0, x20                                      
00062f64 bl        #0x62ff8                                     
00062f68 mov       x29, x29                                     
00062f6c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062f70 mov       x21, x0                                      
00062f74 bl        #0xa46f4                                      ; _objc_release
00062f78 cbz       x21, #0x62fec                                
00062f7c mov       x0, x19                                      
00062f80 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
00062f84 mov       x29, x29                                     
00062f88 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00062f8c mov       x21, x0                                      
00062f90 adrp      x8, #0xee000                                 
00062f94 ldr       x1, [x8, #0x848]                             
00062f98 mov       x2, x20                                      
00062f9c mov       w3, #3                                       
00062fa0 bl        #0xa4754                                      ; _objc_setAssociatedObject
00062fa4 mov       x0, x21                                      
00062fa8 bl        #0xa46f4                                      ; _objc_release
00062fac mov       x0, x19                                      
00062fb0 bl        #0xb0080                                      ; objc_msgSend$stageWidgetPosition
00062fb4 mov       x0, x20                                      
00062fb8 bl        #0xa46f4                                      ; _objc_release
00062fbc ldr       x8, [sp, #0x38]                              
00062fc0 adrp      x9, #0xd4000                                 
00062fc4 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00062fc8 ldr       x9, [x9]                                      ; &___objc_personality_v0
00062fcc cmp       x9, x8                                       
00062fd0 b.ne      #0x62ff4                                     
00062fd4 ldp       x29, x30, [sp, #0x70]                        
00062fd8 ldp       x20, x19, [sp, #0x60]                        
00062fdc ldp       x22, x21, [sp, #0x50]                        
00062fe0 ldp       x24, x23, [sp, #0x40]                        
00062fe4 add       sp, sp, #0x80                                
00062fe8 retab                                                  
00062fec bl        #0xa363c                                     
00062ff0 b         #0x62f7c                                     
00062ff4 bl        #0xa41d4                                      ; ___stack_chk_fail
00062ff8 pacibsp                                                
00062ffc sub       sp, sp, #0xa0                                
00063000 stp       x28, x27, [sp, #0x40]                        
00063004 stp       x26, x25, [sp, #0x50]                        
00063008 stp       x24, x23, [sp, #0x60]                        
0006300c stp       x22, x21, [sp, #0x70]                        
00063010 stp       x20, x19, [sp, #0x80]                        
00063014 stp       x29, x30, [sp, #0x90]                        
00063018 add       x29, sp, #0x90                               
0006301c adrp      x8, #0xd4000                                 
00063020 ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
00063024 ldr       x8, [x8]                                      ; &___objc_personality_v0
00063028 str       x8, [sp, #0x38]                              
0006302c bl        #0xa4704                                      ; _objc_retain
00063030 mov       x19, x0                                      
00063034 adrp      x27, #0xec000                                
00063038 ldr       x0, [x27, #0x530]                             ; &_OBJC_CLASS_$_NSDictionary
0006303c bl        #0xa46b4                                      ; _objc_opt_class
00063040 mov       x1, x0                                       
00063044 mov       x0, x19                                      
00063048 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
0006304c tbz       w0, #0, #0x63128                             
00063050 adrp      x23, #0xdb000                                
00063054 add       x23, x23, #0xc30                              ; @'modern'
00063058 mov       x0, x19                                      
0006305c mov       x2, x23                                      
00063060 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00063064 mov       x29, x29                                     
00063068 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006306c mov       x20, x0                                      
00063070 adrp      x22, #0xdb000                                
00063074 add       x22, x22, #0xc50                              ; @'weight'
00063078 mov       x0, x19                                      
0006307c mov       x2, x22                                      
00063080 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00063084 mov       x29, x29                                     
00063088 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006308c mov       x21, x0                                      
00063090 adrp      x28, #0xec000                                
00063094 ldr       x0, [x28, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
00063098 bl        #0xa46b4                                      ; _objc_opt_class
0006309c mov       x1, x0                                       
000630a0 mov       x0, x20                                      
000630a4 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000630a8 tbz       w0, #0, #0x63110                             
000630ac ldr       x0, [x28, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
000630b0 bl        #0xa46b4                                      ; _objc_opt_class
000630b4 mov       x1, x0                                       
000630b8 mov       x0, x21                                      
000630bc bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000630c0 tbz       w0, #0, #0x63110                             
000630c4 mov       x0, x21                                      
000630c8 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000630cc fmov      x8, d0                                       
000630d0 and       x8, x8, #0x7fffffffffffffff                  
000630d4 mov       x9, #0x7fefffffffffffff                      
000630d8 cmp       x8, x9                                       
000630dc b.gt      #0x63110                                     
000630e0 mov       x0, x21                                      
000630e4 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000630e8 mov       x8, #0x4059000000000000                      
000630ec fmov      d1, x8                                       
000630f0 fcmp      d0, d1                                       
000630f4 b.mi      #0x63110                                     
000630f8 mov       x0, x21                                      
000630fc bl        #0xa71e0                                      ; objc_msgSend$doubleValue
00063100 adrp      x8, #0xbd000                                 
00063104 ldr       d1, [x8, #0x860]                             
00063108 fcmp      d0, d1                                       
0006310c b.le      #0x63180                                     
00063110 mov       x22, #0                                      
00063114 mov       x0, x21                                      
00063118 bl        #0xa46f4                                      ; _objc_release
0006311c mov       x0, x20                                      
00063120 bl        #0xa46f4                                      ; _objc_release
00063124 b         #0x6312c                                     
00063128 mov       x22, #0                                      
0006312c mov       x0, x19                                      
00063130 bl        #0xa46f4                                      ; _objc_release
00063134 ldr       x8, [sp, #0x38]                              
00063138 adrp      x9, #0xd4000                                 
0006313c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
00063140 ldr       x9, [x9]                                      ; &___objc_personality_v0
00063144 cmp       x9, x8                                       
00063148 b.ne      #0x6328c                                     
0006314c mov       x0, x22                                      
00063150 ldp       x29, x30, [sp, #0x90]                        
00063154 ldp       x20, x19, [sp, #0x80]                        
00063158 ldp       x22, x21, [sp, #0x70]                        
0006315c ldp       x24, x23, [sp, #0x60]                        
00063160 ldp       x26, x25, [sp, #0x50]                        
00063164 ldp       x28, x27, [sp, #0x40]                        
00063168 add       sp, sp, #0xa0                                
0006316c autibsp                                                
00063170 eor       x16, x30, x30, lsl #1                        
00063174 tbz       x16, #0x3e, #0x6317c                         
00063178 brk       #0xc471                                      
0006317c b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
00063180 adrp      x25, #0xdb000                                
00063184 add       x25, x25, #0xc70                              ; @'softness'
00063188 mov       x0, x19                                      
0006318c mov       x2, x25                                      
00063190 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00063194 mov       x29, x29                                     
00063198 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006319c mov       x26, x0                                      
000631a0 adrp      x8, #0xdf000                                 
000631a4 add       x8, x8, #0x980                                ; &_OBJC_CLASS_$_NSConstantIntegerNumber
000631a8 cmp       x0, #0                                       
000631ac csel      x0, x8, x0, eq                               
000631b0 bl        #0xa4704                                      ; _objc_retain
000631b4 mov       x24, x0                                      
000631b8 mov       x0, x26                                      
000631bc bl        #0xa46f4                                      ; _objc_release
000631c0 ldr       x0, [x28, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
000631c4 bl        #0xa46b4                                      ; _objc_opt_class
000631c8 mov       x1, x0                                       
000631cc mov       x0, x24                                      
000631d0 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000631d4 tbz       w0, #0, #0x6321c                             
000631d8 mov       x0, x24                                      
000631dc bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000631e0 fmov      x8, d0                                       
000631e4 and       x8, x8, #0x7fffffffffffffff                  
000631e8 mov       x9, #0x7fefffffffffffff                      
000631ec cmp       x8, x9                                       
000631f0 b.gt      #0x6321c                                     
000631f4 mov       x0, x24                                      
000631f8 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000631fc fcmp      d0, #0.0                                     
00063200 b.mi      #0x6321c                                     
00063204 mov       x0, x24                                      
00063208 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006320c mov       x8, #0x4059000000000000                      
00063210 fmov      d1, x8                                       
00063214 fcmp      d0, d1                                       
00063218 b.le      #0x6322c                                     
0006321c mov       x22, #0                                      
00063220 mov       x0, x24                                      
00063224 bl        #0xa46f4                                      ; _objc_release
00063228 b         #0x63114                                     
0006322c str       x23, [sp, #8]                                
00063230 ldr       x23, [x28, #0x4e8]                            ; &_OBJC_CLASS_$_NSNumber
00063234 mov       x0, x20                                      
00063238 bl        #0xa5b80                                      ; objc_msgSend$boolValue
0006323c mov       x2, x0                                       
00063240 mov       x0, x23                                      
00063244 bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
00063248 mov       x29, x29                                     
0006324c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00063250 mov       x23, x0                                      
00063254 stp       x0, x21, [sp, #0x20]                         
00063258 stp       x22, x25, [sp, #0x10]                        
0006325c str       x24, [sp, #0x30]                             
00063260 ldr       x0, [x27, #0x530]                             ; &_OBJC_CLASS_$_NSDictionary
00063264 add       x2, sp, #0x20                                
00063268 add       x3, sp, #8                                   
0006326c mov       w4, #3                                       
00063270 bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
00063274 mov       x29, x29                                     
00063278 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006327c mov       x22, x0                                      
00063280 mov       x0, x23                                      
00063284 bl        #0xa46f4                                      ; _objc_release
00063288 b         #0x63220                                     
0006328c bl        #0xa41d4                                      ; ___stack_chk_fail
00063290 pacibsp                                                
00063294 stp       x22, x21, [sp, #-0x30]!                      
00063298 stp       x20, x19, [sp, #0x10]                        
0006329c stp       x29, x30, [sp, #0x20]                        
000632a0 add       x29, sp, #0x20                               
000632a4 mov       x19, x0                                      
000632a8 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
000632ac mov       x29, x29                                     
000632b0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000632b4 mov       x20, x0                                      
000632b8 bl        #0xa46f4                                      ; _objc_release
000632bc cbz       x20, #0x633a0                                
000632c0 mov       x0, x19                                      
000632c4 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
000632c8 mov       x29, x29                                     
000632cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000632d0 mov       x20, x0                                      
000632d4 adrp      x8, #0xee000                                 
000632d8 ldr       x21, [x8, #0x850]                            
000632dc adrp      x8, #0xec000                                 
000632e0 ldr       x22, [x8, #0x4e8]                             ; &_OBJC_CLASS_$_NSNumber
000632e4 mov       x0, x19                                      
000632e8 bl        #0xb1ca0                                      ; objc_msgSend$widgetsAtTop
000632ec mov       x2, x0                                       
000632f0 mov       x0, x22                                      
000632f4 bl        #0xaa0e0                                      ; objc_msgSend$numberWithBool:
000632f8 mov       x29, x29                                     
000632fc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00063300 mov       x22, x0                                      
00063304 mov       x0, x20                                      
00063308 mov       x1, x21                                      
0006330c mov       x2, x22                                      
00063310 mov       w3, #1                                       
00063314 bl        #0xa4754                                      ; _objc_setAssociatedObject
00063318 mov       x0, x22                                      
0006331c bl        #0xa46f4                                      ; _objc_release
00063320 mov       x0, x20                                      
00063324 bl        #0xa46f4                                      ; _objc_release
00063328 mov       x0, x19                                      
0006332c bl        #0xa67e0                                      ; objc_msgSend$controller
00063330 mov       x29, x29                                     
00063334 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00063338 mov       x20, x0                                      
0006333c adrp      x1, #0xba000                                 
00063340 add       x1, x1, #0x14e                                ; '_editor'
00063344 bl        #0x633b0                                     
00063348 mov       x29, x29                                     
0006334c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00063350 mov       x19, x0                                      
00063354 mov       x0, x20                                      
00063358 bl        #0xa46f4                                      ; _objc_release
0006335c adrp      x8, #0xea000                                 
00063360 ldr       x1, [x8, #0x9b0]                              ; SEL setHasUpdatedLookProperties:
00063364 mov       x0, x19                                      
00063368 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0006336c tbz       w0, #0, #0x6337c                             
00063370 mov       x0, x19                                      
00063374 mov       w2, #1                                       
00063378 bl        #0xad1a0                                      ; objc_msgSend$setHasUpdatedLookProperties:
0006337c mov       x0, x19                                      
00063380 ldp       x29, x30, [sp, #0x20]                        
00063384 ldp       x20, x19, [sp, #0x10]                        
00063388 ldp       x22, x21, [sp], #0x30                        
0006338c autibsp                                                
00063390 eor       x16, x30, x30, lsl #1                        
00063394 tbz       x16, #0x3e, #0x6339c                         
00063398 brk       #0xc471                                      
0006339c b         #0xa46f4                                      ; _objc_release
000633a0 ldp       x29, x30, [sp, #0x20]                        
000633a4 ldp       x20, x19, [sp, #0x10]                        
000633a8 ldp       x22, x21, [sp], #0x30                        
000633ac retab                                                  
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
