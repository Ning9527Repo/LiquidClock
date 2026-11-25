; arm64e unslid VA [0xa0de0,0xa118c)
000a0de0 pacibsp                                                
000a0de4 stp       x28, x27, [sp, #-0x60]!                      
000a0de8 stp       x26, x25, [sp, #0x10]                        
000a0dec stp       x24, x23, [sp, #0x20]                        
000a0df0 stp       x22, x21, [sp, #0x30]                        
000a0df4 stp       x20, x19, [sp, #0x40]                        
000a0df8 stp       x29, x30, [sp, #0x50]                        
000a0dfc add       x29, sp, #0x50                               
000a0e00 sub       sp, sp, #0x420                               
000a0e04 mov       x21, x1                                      
000a0e08 adrp      x8, #0xd4000                                 
000a0e0c ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
000a0e10 ldr       x8, [x8]                                      ; &___objc_personality_v0
000a0e14 stur      x8, [x29, #-0x58]                            
000a0e18 bl        #0xa4704                                      ; _objc_retain
000a0e1c mov       x19, x0                                      
000a0e20 cbz       x21, #0xa0e28                                
000a0e24 str       xzr, [x21]                                   
000a0e28 adrp      x0, #0xdd000                                 
000a0e2c add       x0, x0, #0xc10                                ; @'/var/mobile/Library/Preferences/dylv.liquidassprefs.plist'
000a0e30 bl        #0xa7720                                      ; objc_msgSend$fileSystemRepresentation
000a0e34 add       x1, sp, #0x18                                
000a0e38 bl        #0x4168                                      
000a0e3c mov       x2, x0                                       
000a0e40 cbz       x0, #0xa0e60                                 
000a0e44 adrp      x8, #0xec000                                 
000a0e48 ldr       x0, [x8, #0x518]                              ; &_OBJC_CLASS_$_NSString
000a0e4c bl        #0xb05e0                                      ; objc_msgSend$stringWithUTF8String:
000a0e50 mov       x29, x29                                     
000a0e54 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0e58 mov       x22, x0                                      
000a0e5c b         #0xa0e64                                     
000a0e60 mov       x22, #0                                      
000a0e64 mov       x0, x22                                      
000a0e68 bl        #0xb0500                                      ; objc_msgSend$stringByDeletingPathExtension
000a0e6c mov       x29, x29                                     
000a0e70 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0e74 mov       x23, x0                                      
000a0e78 adrp      x2, #0xdd000                                 
000a0e7c add       x2, x2, #0xe50                                ; @'lock'
000a0e80 bl        #0xb04a0                                      ; objc_msgSend$stringByAppendingPathExtension:
000a0e84 mov       x29, x29                                     
000a0e88 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0e8c mov       x20, x0                                      
000a0e90 mov       x0, x23                                      
000a0e94 bl        #0xa46f4                                      ; _objc_release
000a0e98 mov       x0, x22                                      
000a0e9c bl        #0xa46f4                                      ; _objc_release
000a0ea0 mov       x0, x20                                      
000a0ea4 bl        #0xa4714                                      ; _objc_retainAutorelease
000a0ea8 mov       x0, x20                                      
000a0eac bl        #0xa7720                                      ; objc_msgSend$fileSystemRepresentation
000a0eb0 mov       w8, #0x180                                   
000a0eb4 str       x8, [sp]                                     
000a0eb8 mov       w1, #0x302                                   
000a0ebc movk      w1, #0x100, lsl #16                          
000a0ec0 bl        #0xa47f4                                      ; _open
000a0ec4 mov       x22, x0                                      
000a0ec8 tbnz      w0, #0x1f, #0xa0f34                          
000a0ecc mov       x0, x22                                      
000a0ed0 mov       w1, #2                                       
000a0ed4 bl        #0xa43e4                                      ; _flock
000a0ed8 tbz       w0, #0x1f, #0xa0f80                          
000a0edc bl        #0xa41a4                                      ; ___error
000a0ee0 ldr       w8, [x0]                                     
000a0ee4 cmp       w8, #4                                       
000a0ee8 b.eq      #0xa0ecc                                     
000a0eec cbz       x21, #0xa0f28                                
000a0ef0 adrp      x8, #0xec000                                 
000a0ef4 ldr       x23, [x8, #0x738]                             ; &_OBJC_CLASS_$_NSError
000a0ef8 bl        #0xa41a4                                      ; ___error
000a0efc adrp      x8, #0xd4000                                 
000a0f00 ldr       x8, [x8, #0x7d8]                              ; &_NSPOSIXErrorDomain
000a0f04 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a0f08 ldrsw     x3, [x0]                                     
000a0f0c mov       x0, x23                                      
000a0f10 mov       x4, #0                                       
000a0f14 bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a0f18 mov       x29, x29                                     
000a0f1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0f20 bl        #0xa45b4                                      ; _objc_autorelease
000a0f24 str       x0, [x21]                                    
000a0f28 mov       x0, x22                                      
000a0f2c bl        #0xa42b4                                      ; _close
000a0f30 b         #0xa0f78                                     
000a0f34 cbz       x21, #0xa0f78                                
000a0f38 adrp      x8, #0xec000                                 
000a0f3c ldr       x22, [x8, #0x738]                             ; &_OBJC_CLASS_$_NSError
000a0f40 bl        #0xa41a4                                      ; ___error
000a0f44 adrp      x8, #0xd4000                                 
000a0f48 ldr       x8, [x8, #0x7d8]                              ; &_NSPOSIXErrorDomain
000a0f4c ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a0f50 ldrsw     x3, [x0]                                     
000a0f54 mov       x0, x22                                      
000a0f58 mov       x4, #0                                       
000a0f5c bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a0f60 mov       x29, x29                                     
000a0f64 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0f68 bl        #0xa45b4                                      ; _objc_autorelease
000a0f6c mov       w23, #0                                      
000a0f70 str       x0, [x21]                                    
000a0f74 b         #0xa10ec                                     
000a0f78 mov       w23, #0                                      
000a0f7c b         #0xa10ec                                     
000a0f80 adrp      x0, #0xdd000                                 
000a0f84 add       x0, x0, #0xe10                                ; @'dylv.liquidassprefs'
000a0f88 bl        #0xa3ae4                                      ; _CFPreferencesAppSynchronize
000a0f8c cbz       w0, #0xa0fb0                                 
000a0f90 mov       x8, x19                                      
000a0f94 ldr       x9, [x8, #0x10]!                             
000a0f98 mov       x0, x19                                      
000a0f9c mov       x1, x21                                      
000a0fa0 blraa     x9, x8                                       
000a0fa4 mov       x23, x0                                      
000a0fa8 mov       w24, #0                                      
000a0fac b         #0xa10d4                                     
000a0fb0 cbz       x21, #0xa10cc                                
000a0fb4 adrp      x8, #0xec000                                 
000a0fb8 ldr       x0, [x8, #0x738]                              ; &_OBJC_CLASS_$_NSError
000a0fbc adrp      x8, #0xd4000                                 
000a0fc0 ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
000a0fc4 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a0fc8 mov       w3, #0x100                                   
000a0fcc mov       x4, #0                                       
000a0fd0 bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a0fd4 mov       x29, x29                                     
000a0fd8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a0fdc bl        #0xa45b4                                      ; _objc_autorelease
000a0fe0 mov       w24, #0                                      
000a0fe4 mov       w23, #0                                      
000a0fe8 str       x0, [x21]                                    
000a0fec b         #0xa10d4                                     
000a0ff0 mov       x23, x0                                      
000a0ff4 cbz       w1, #0xa1184                                 
000a0ff8 cmp       w1, #2                                       
000a0ffc b.ne      #0xa1150                                     
000a1000 cmp       x21, #0                                      
000a1004 cset      w24, eq                                      
000a1008 mov       x0, x23                                      
000a100c bl        #0xa45f4                                      ; _objc_begin_catch
000a1010 mov       x29, x29                                     
000a1014 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1018 mov       x23, x0                                      
000a101c tbnz      w24, #0, #0xa10c0                            
000a1020 adrp      x8, #0xec000                                 
000a1024 ldr       x25, [x8, #0x738]                             ; &_OBJC_CLASS_$_NSError
000a1028 adrp      x8, #0xd4000                                 
000a102c ldr       x8, [x8, #0x7d0]                              ; &_NSLocalizedDescriptionKey
000a1030 ldr       x8, [x8]                                      ; &___objc_personality_v0
000a1034 str       x8, [sp, #8]                                 
000a1038 mov       x0, x23                                      
000a103c bl        #0xaafa0                                      ; objc_msgSend$reason
000a1040 mov       x29, x29                                     
000a1044 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1048 mov       x24, x0                                      
000a104c adrp      x8, #0xdd000                                 
000a1050 add       x8, x8, #0xe70                                ; @'Invalid preferences'
000a1054 cmp       x0, #0                                       
000a1058 csel      x8, x8, x0, eq                               
000a105c str       x8, [sp, #0x10]                              
000a1060 adrp      x8, #0xec000                                 
000a1064 ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
000a1068 add       x2, sp, #0x10                                
000a106c add       x3, sp, #8                                   
000a1070 mov       w4, #1                                       
000a1074 bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
000a1078 mov       x29, x29                                     
000a107c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1080 mov       x26, x0                                      
000a1084 adrp      x8, #0xd4000                                 
000a1088 ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
000a108c ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a1090 mov       x0, x25                                      
000a1094 mov       w3, #0xf0c                                   
000a1098 mov       x4, x26                                      
000a109c bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a10a0 mov       x29, x29                                     
000a10a4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a10a8 bl        #0xa45b4                                      ; _objc_autorelease
000a10ac str       x0, [x21]                                    
000a10b0 mov       x0, x26                                      
000a10b4 bl        #0xa46f4                                      ; _objc_release
000a10b8 mov       x0, x24                                      
000a10bc bl        #0xa46f4                                      ; _objc_release
000a10c0 mov       x0, x23                                      
000a10c4 bl        #0xa46f4                                      ; _objc_release
000a10c8 bl        #0xa4624                                      ; _objc_end_catch
000a10cc mov       w24, #0                                      
000a10d0 mov       w23, #0                                      
000a10d4 mov       x0, x22                                      
000a10d8 mov       w1, #8                                       
000a10dc bl        #0xa43e4                                      ; _flock
000a10e0 mov       x0, x22                                      
000a10e4 bl        #0xa42b4                                      ; _close
000a10e8 cbnz      w24, #0xa113c                                
000a10ec mov       x0, x20                                      
000a10f0 bl        #0xa46f4                                      ; _objc_release
000a10f4 mov       x0, x19                                      
000a10f8 bl        #0xa46f4                                      ; _objc_release
000a10fc ldur      x8, [x29, #-0x58]                            
000a1100 adrp      x9, #0xd4000                                 
000a1104 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
000a1108 ldr       x9, [x9]                                      ; &___objc_personality_v0
000a110c cmp       x9, x8                                       
000a1110 b.ne      #0xa1138                                     
000a1114 and       w0, w23, #1                                  
000a1118 add       sp, sp, #0x420                               
000a111c ldp       x29, x30, [sp, #0x50]                        
000a1120 ldp       x20, x19, [sp, #0x40]                        
000a1124 ldp       x22, x21, [sp, #0x30]                        
000a1128 ldp       x24, x23, [sp, #0x20]                        
000a112c ldp       x26, x25, [sp, #0x10]                        
000a1130 ldp       x28, x27, [sp], #0x60                        
000a1134 retab                                                  
000a1138 bl        #0xa41d4                                      ; ___stack_chk_fail
000a113c bl        #0xa4644                                      ; _objc_exception_rethrow
000a1140 brk       #1                                           
000a1144 mov       x23, x0                                      
000a1148 cbz       w1, #0xa1184                                 
000a114c bl        #0xa4624                                      ; _objc_end_catch
000a1150 mov       x0, x23                                      
000a1154 bl        #0xa45f4                                      ; _objc_begin_catch
000a1158 mov       w24, #1                                      
000a115c b         #0xa10d4                                     
000a1160 mov       x23, x0                                      
000a1164 b         #0xa1170                                     
000a1168 mov       x23, x0                                      
000a116c cbz       w24, #0xa1184                                
000a1170 bl        #0xa4624                                      ; _objc_end_catch
000a1174 b         #0xa1184                                     
000a1178 cbz       w1, #0xa1180                                 
000a117c bl        #0xa47b4                                      ; _objc_terminate
000a1180 mov       x23, x0                                      
000a1184 mov       x0, x23                                      
000a1188 bl        #0xa4194                                      ; __Unwind_Resume
