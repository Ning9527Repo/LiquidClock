# arm64e unslid VA 0xa1dc4..0xa1f54; FAT offset 0xfc000
000a1dc4 pacibsp                                                   
000a1dc8 stp       x28, x27, [sp, #-0x40]!                         
000a1dcc stp       x22, x21, [sp, #0x10]                           
000a1dd0 stp       x20, x19, [sp, #0x20]                           
000a1dd4 stp       x29, x30, [sp, #0x30]                           
000a1dd8 add       x29, sp, #0x30                                  
000a1ddc sub       sp, sp, #0x410                                  
000a1de0 adrp      x8, #0xd4000                                    
000a1de4 ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
000a1de8 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
000a1dec stur      x8, [x29, #-0x38]                               
000a1df0 adrp      x19, #0xdd000                                   
000a1df4 add       x19, x19, #0xe10                                 ; 0xdde10 | @'dylv.liquidassprefs'
000a1df8 mov       x0, x19                                         
000a1dfc bl        #0xa3ae4                                         ; _CFPreferencesAppSynchronize
000a1e00 adrp      x8, #0xd4000                                    
000a1e04 ldr       x8, [x8, #0x818]                                 ; 0xd4818 | &_kCFPreferencesCurrentUser
000a1e08 ldr       x2, [x8]                                         ; 0xd4000 | &___objc_personality_v0
000a1e0c adrp      x8, #0xd4000                                    
000a1e10 ldr       x8, [x8, #0x810]                                 ; 0xd4810 | &_kCFPreferencesAnyHost
000a1e14 ldr       x3, [x8]                                         ; 0xd4000 | &___objc_personality_v0
000a1e18 mov       x0, #0                                          
000a1e1c mov       x1, x19                                         
000a1e20 bl        #0xa3b04                                         ; _CFPreferencesCopyMultiple
000a1e24 mov       x20, x0                                         
000a1e28 bl        #0xa9e00                                         ; objc_msgSend$mutableCopy
000a1e2c mov       x21, x0                                         
000a1e30 cbz       x0, #0xa1e40                                    
000a1e34 mov       x0, x21                                         
000a1e38 bl        #0xa4704                                         ; _objc_retain
000a1e3c b         #0xa1e54                                        
000a1e40 adrp      x8, #0xec000                                    
000a1e44 ldr       x0, [x8, #0x728]                                 ; 0xec728 | &_OBJC_CLASS_$_NSMutableDictionary
000a1e48 bl        #0xa6f00                                         ; objc_msgSend$dictionary
000a1e4c mov       x29, x29                                        
000a1e50 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1e54 mov       x19, x0                                         
000a1e58 mov       x0, x21                                         
000a1e5c bl        #0xa46f4                                         ; _objc_release
000a1e60 mov       x0, x20                                         
000a1e64 bl        #0xa46f4                                         ; _objc_release
000a1e68 adrp      x0, #0xdd000                                    
000a1e6c add       x0, x0, #0xc10                                   ; 0xddc10 | @'/var/mobile/Library/Preferences/dylv.liquidassprefs.plist'
000a1e70 bl        #0xa7720                                         ; objc_msgSend$fileSystemRepresentation
000a1e74 add       x1, sp, #8                                      
000a1e78 bl        #0x4168                                         
000a1e7c cbz       x0, #0xa1ea0                                    
000a1e80 mov       x2, x0                                          
000a1e84 adrp      x8, #0xec000                                    
000a1e88 ldr       x0, [x8, #0x518]                                 ; 0xec518 | &_OBJC_CLASS_$_NSString
000a1e8c bl        #0xb05e0                                         ; objc_msgSend$stringWithUTF8String:
000a1e90 mov       x29, x29                                        
000a1e94 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1e98 mov       x20, x0                                         
000a1e9c b         #0xa1ea4                                        
000a1ea0 mov       x20, #0                                         
000a1ea4 adrp      x8, #0xec000                                    
000a1ea8 ldr       x0, [x8, #0x530]                                 ; 0xec530 | &_OBJC_CLASS_$_NSDictionary
000a1eac mov       x2, x20                                         
000a1eb0 bl        #0xa6f40                                         ; objc_msgSend$dictionaryWithContentsOfFile:
000a1eb4 mov       x29, x29                                        
000a1eb8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
000a1ebc mov       x21, x0                                         
000a1ec0 bl        #0xa6a00                                         ; objc_msgSend$count
000a1ec4 cbz       x0, #0xa1ed4                                    
000a1ec8 mov       x0, x19                                         
000a1ecc mov       x2, x21                                         
000a1ed0 bl        #0xa4ea0                                         ; objc_msgSend$addEntriesFromDictionary:
000a1ed4 mov       x0, x19                                         
000a1ed8 bl        #0xa6980                                         ; objc_msgSend$copy
000a1edc mov       x22, x0                                         
000a1ee0 mov       x0, x21                                         
000a1ee4 bl        #0xa46f4                                         ; _objc_release
000a1ee8 mov       x0, x20                                         
000a1eec bl        #0xa46f4                                         ; _objc_release
000a1ef0 mov       x0, x19                                         
000a1ef4 bl        #0xa46f4                                         ; _objc_release
000a1ef8 adrp      x19, #0xef000                                   
000a1efc add       x19, x19, #0xcd8                                 ; 0xefcd8
000a1f00 mov       x0, x19                                         
000a1f04 bl        #0xa4804                                         ; _os_unfair_lock_lock
000a1f08 adrp      x8, #0xef000                                    
000a1f0c ldr       x0, [x8, #0xca0]                                 ; 0xefca0
000a1f10 str       x22, [x8, #0xca0]                                ; 0xefca0
000a1f14 bl        #0xa46f4                                         ; _objc_release
000a1f18 mov       x0, x19                                         
000a1f1c bl        #0xa4814                                         ; _os_unfair_lock_unlock
000a1f20 ldur      x8, [x29, #-0x38]                               
000a1f24 adrp      x9, #0xd4000                                    
000a1f28 ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
000a1f2c ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
000a1f30 cmp       x9, x8                                          
000a1f34 b.ne      #0xa1f50                                        
000a1f38 add       sp, sp, #0x410                                  
000a1f3c ldp       x29, x30, [sp, #0x30]                           
000a1f40 ldp       x20, x19, [sp, #0x20]                           
000a1f44 ldp       x22, x21, [sp, #0x10]                           
000a1f48 ldp       x28, x27, [sp], #0x40                           
000a1f4c retab                                                     
000a1f50 bl        #0xa41d4                                         ; ___stack_chk_fail
