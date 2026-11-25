; Local sample arm64e unslid VA 0x62ff8..0x63290
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
