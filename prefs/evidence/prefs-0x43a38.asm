; prefs arm64e unslid VA [0x43a38,0x44238); slice_offset=0xa0000
00043a38 pacibsp                                                
00043a3c stp       x28, x27, [sp, #-0x60]!                      
00043a40 stp       x26, x25, [sp, #0x10]                        
00043a44 stp       x24, x23, [sp, #0x20]                        
00043a48 stp       x22, x21, [sp, #0x30]                        
00043a4c stp       x20, x19, [sp, #0x40]                        
00043a50 stp       x29, x30, [sp, #0x50]                        
00043a54 add       x29, sp, #0x50                               
00043a58 sub       sp, sp, #0x620                               
00043a5c mov       x23, x2                                      
00043a60 mov       x19, x1                                      
00043a64 adrp      x8, #0x78000                                 
00043a68 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
00043a6c ldr       x8, [x8]                                      ; &___objc_personality_v0
00043a70 stur      x8, [x29, #-0x60]                            
00043a74 bl        #0x58e14                                      ; _objc_retain
00043a78 mov       x28, x0                                      
00043a7c mov       x0, x19                                      
00043a80 bl        #0x58e14                                      ; _objc_retain
00043a84 mov       x22, x0                                      
00043a88 adrp      x0, #0x80000                                 
00043a8c add       x0, x0, #0xf0                                 ; @'/var/mobile/Library/Preferences/dylv.liquidassprefs.plist'
00043a90 bl        #0x5adc0                                      ; objc_msgSend$fileSystemRepresentation
00043a94 add       x1, sp, #0x210                               
00043a98 bl        #0x4168                                      
00043a9c cbz       x0, #0x43ac0                                 
00043aa0 mov       x2, x0                                       
00043aa4 adrp      x8, #0x8b000                                 
00043aa8 ldr       x0, [x8, #0xb30]                              ; &_OBJC_CLASS_$_NSString
00043aac bl        #0x60760                                      ; objc_msgSend$stringWithUTF8String:
00043ab0 mov       x29, x29                                     
00043ab4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043ab8 mov       x26, x0                                      
00043abc b         #0x43ac4                                     
00043ac0 mov       x26, #0                                      
00043ac4 adrp      x24, #0x8b000                                
00043ac8 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
00043acc mov       x2, x26                                      
00043ad0 bl        #0x5a860                                      ; objc_msgSend$dictionaryWithContentsOfFile:
00043ad4 mov       x29, x29                                     
00043ad8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043adc mov       x20, x0                                      
00043ae0 mov       x19, x0                                      
00043ae4 cbnz      x0, #0x43b98                                 
00043ae8 adrp      x8, #0x8b000                                 
00043aec ldr       x0, [x8, #0xb58]                              ; &_OBJC_CLASS_$_NSFileManager
00043af0 bl        #0x5a760                                      ; objc_msgSend$defaultManager
00043af4 mov       x29, x29                                     
00043af8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043afc mov       x19, x0                                      
00043b00 mov       x2, x26                                      
00043b04 bl        #0x5ad80                                      ; objc_msgSend$fileExistsAtPath:
00043b08 mov       x21, x0                                      
00043b0c mov       x0, x19                                      
00043b10 bl        #0x58e04                                      ; _objc_release
00043b14 cbz       w21, #0x43b90                                
00043b18 cbz       x23, #0x4422c                                
00043b1c adrp      x8, #0x8b000                                 
00043b20 ldr       x19, [x8, #0xc68]                             ; &_OBJC_CLASS_$_NSError
00043b24 adrp      x8, #0x78000                                 
00043b28 ldr       x8, [x8, #0x480]                              ; &_NSCocoaErrorDomain
00043b2c ldr       x21, [x8]                                     ; &___objc_personality_v0
00043b30 adrp      x8, #0x78000                                 
00043b34 ldr       x8, [x8, #0x490]                              ; &_NSFilePathErrorKey
00043b38 ldr       x8, [x8]                                      ; &___objc_personality_v0
00043b3c str       x8, [sp, #0x200]                             
00043b40 str       x26, [sp, #0x208]                            
00043b44 ldr       x0, [x24, #0xaf0]                             ; &_OBJC_CLASS_$_NSDictionary
00043b48 add       x2, sp, #0x208                               
00043b4c add       x3, sp, #0x200                               
00043b50 mov       w4, #1                                       
00043b54 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
00043b58 mov       x29, x29                                     
00043b5c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043b60 mov       x24, x0                                      
00043b64 mov       x0, x19                                      
00043b68 mov       x2, x21                                      
00043b6c mov       w3, #0x103                                   
00043b70 mov       x4, x24                                      
00043b74 bl        #0x5ace0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
00043b78 mov       x29, x29                                     
00043b7c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043b80 bl        #0x58cf4                                      ; _objc_autorelease
00043b84 mov       w19, #0                                      
00043b88 str       x0, [x23]                                    
00043b8c b         #0x441c8                                     
00043b90 adrp      x19, #0x78000                                
00043b94 ldr       x19, [x19, #0x4e8]                            ; &___NSDictionary0__struct
00043b98 str       x20, [sp, #0x48]                             
00043b9c adrp      x8, #0x78000                                 
00043ba0 ldr       x8, [x8, #0x508]                              ; &_kCFPreferencesCurrentUser
00043ba4 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
00043ba8 adrp      x8, #0x78000                                 
00043bac ldr       x8, [x8, #0x500]                              ; &_kCFPreferencesAnyHost
00043bb0 ldr       x3, [x8]                                      ; &___objc_personality_v0
00043bb4 adrp      x1, #0x7f000                                 
00043bb8 add       x1, x1, #0xc30                                ; @'dylv.liquidassprefs'
00043bbc mov       x0, #0                                       
00043bc0 stp       x3, x2, [sp, #0x38]                          
00043bc4 bl        #0x587c4                                      ; _CFPreferencesCopyMultiple
00043bc8 mov       x21, x0                                      
00043bcc adrp      x8, #0x78000                                 
00043bd0 ldr       x8, [x8, #0x4e8]                              ; &___NSDictionary0__struct
00043bd4 cmp       x0, #0                                       
00043bd8 csel      x0, x8, x0, eq                               
00043bdc bl        #0x58e14                                      ; _objc_retain
00043be0 mov       x24, x0                                      
00043be4 mov       x0, x21                                      
00043be8 bl        #0x58e04                                      ; _objc_release
00043bec mov       x0, x28                                      
00043bf0 bl        #0x5c780                                      ; objc_msgSend$mutableCopy
00043bf4 mov       x25, x0                                      
00043bf8 mov       x0, x24                                      
00043bfc bl        #0x5c780                                      ; objc_msgSend$mutableCopy
00043c00 mov       x27, x0                                      
00043c04 mov       x2, x19                                      
00043c08 bl        #0x59380                                      ; objc_msgSend$addEntriesFromDictionary:
00043c0c adrp      x2, #0x7d000                                 
00043c10 add       x2, x2, #0x4f0                                ; @'CustomViews.RuleIDs'
00043c14 mov       x0, x25                                      
00043c18 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00043c1c mov       x29, x29                                     
00043c20 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043c24 mov       x19, x0                                      
00043c28 adrp      x20, #0x8b000                                
00043c2c ldr       x0, [x20, #0xad8]                             ; &_OBJC_CLASS_$_NSArray
00043c30 bl        #0x58dc4                                      ; _objc_opt_class
00043c34 mov       x1, x0                                       
00043c38 mov       x0, x19                                      
00043c3c bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
00043c40 mov       x21, x0                                      
00043c44 mov       x0, x19                                      
00043c48 bl        #0x58e04                                      ; _objc_release
00043c4c adrp      x19, #0x78000                                
00043c50 ldr       x19, [x19, #0x4e0]                            ; &___NSArray0__struct
00043c54 tbz       w21, #0, #0x43e84                            
00043c58 stp       x23, x26, [sp, #0x20]                        
00043c5c str       x22, [sp, #0x58]                             
00043c60 str       x28, [sp, #0x30]                             
00043c64 adrp      x8, #0x8b000                                 
00043c68 mov       x23, x19                                     
00043c6c ldr       x19, [x8, #0xa90]                             ; &_OBJC_CLASS_$_NSMutableOrderedSet
00043c70 adrp      x21, #0x7d000                                
00043c74 add       x21, x21, #0x4f0                              ; @'CustomViews.RuleIDs'
00043c78 str       x25, [sp, #0x18]                             
00043c7c mov       x0, x25                                      
00043c80 mov       x2, x21                                      
00043c84 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00043c88 mov       x29, x29                                     
00043c8c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043c90 mov       x22, x0                                      
00043c94 mov       x0, x19                                      
00043c98 mov       x2, x22                                      
00043c9c bl        #0x5cb00                                      ; objc_msgSend$orderedSetWithArray:
00043ca0 mov       x29, x29                                     
00043ca4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043ca8 str       x0, [sp, #0x50]                              
00043cac mov       x0, x22                                      
00043cb0 bl        #0x58e04                                      ; _objc_release
00043cb4 mov       x28, x27                                     
00043cb8 mov       x0, x27                                      
00043cbc mov       x2, x21                                      
00043cc0 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00043cc4 mov       x29, x29                                     
00043cc8 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043ccc mov       x19, x0                                      
00043cd0 movi      v0.2d, #0000000000000000                     
00043cd4 stp       q0, q0, [sp, #0xa0]                          
00043cd8 stp       q0, q0, [sp, #0xc0]                          
00043cdc ldr       x0, [x20, #0xad8]                             ; &_OBJC_CLASS_$_NSArray
00043ce0 bl        #0x58dc4                                      ; _objc_opt_class
00043ce4 mov       x1, x0                                       
00043ce8 mov       x0, x19                                      
00043cec bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
00043cf0 tst       w0, #1                                       
00043cf4 str       x19, [sp, #0x10]                             
00043cf8 csel      x0, x19, x23, ne                             
00043cfc bl        #0x58e14                                      ; _objc_retain
00043d00 mov       x27, x0                                      
00043d04 add       x2, sp, #0xa0                                
00043d08 add       x3, sp, #0x180                               
00043d0c mov       w4, #0x10                                    
00043d10 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00043d14 cbz       x0, #0x43e18                                 
00043d18 mov       x21, x0                                      
00043d1c ldr       x8, [sp, #0xb0]                              
00043d20 ldr       x20, [x8]                                    
00043d24 adrp      x19, #0x8b000                                
00043d28 mov       x26, #0                                      
00043d2c ldr       x8, [sp, #0xb0]                              
00043d30 ldr       x8, [x8]                                     
00043d34 cmp       x8, x20                                      
00043d38 b.eq      #0x43d44                                     
00043d3c mov       x0, x27                                      
00043d40 bl        #0x58d54                                      ; _objc_enumerationMutation
00043d44 ldr       x8, [sp, #0xa8]                              
00043d48 ldr       x22, [x8, x26, lsl #3]                       
00043d4c ldr       x0, [x19, #0xb30]                             ; &_OBJC_CLASS_$_NSString
00043d50 bl        #0x58dc4                                      ; _objc_opt_class
00043d54 mov       x1, x0                                       
00043d58 mov       x0, x22                                      
00043d5c bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
00043d60 tbz       w0, #0, #0x43df0                             
00043d64 ldr       x0, [x19, #0xb30]                             ; &_OBJC_CLASS_$_NSString
00043d68 str       x22, [sp]                                    
00043d6c adrp      x2, #0x7f000                                 
00043d70 add       x2, x2, #0xcb0                                ; @'CustomViews.Rule.%@.APIManaged'
00043d74 bl        #0x60740                                      ; objc_msgSend$stringWithFormat:
00043d78 mov       x29, x29                                     
00043d7c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043d80 mov       x23, x0                                      
00043d84 mov       x0, x28                                      
00043d88 mov       x2, x23                                      
00043d8c bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00043d90 mov       x29, x29                                     
00043d94 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043d98 mov       x25, x0                                      
00043d9c adrp      x8, #0x8b000                                 
00043da0 ldr       x0, [x8, #0xbb0]                              ; &_OBJC_CLASS_$_NSNumber
00043da4 bl        #0x58dc4                                      ; _objc_opt_class
00043da8 mov       x1, x0                                       
00043dac mov       x0, x25                                      
00043db0 bl        #0x58dd4                                      ; _objc_opt_isKindOfClass
00043db4 tbz       w0, #0, #0x43de0                             
00043db8 mov       x0, x25                                      
00043dbc bl        #0x59ac0                                      ; objc_msgSend$boolValue
00043dc0 cbz       w0, #0x43de0                                 
00043dc4 ldr       x0, [sp, #0x58]                              
00043dc8 mov       x2, x23                                      
00043dcc bl        #0x5a1c0                                      ; objc_msgSend$containsObject:
00043dd0 tbnz      w0, #0, #0x43de0                             
00043dd4 ldr       x0, [sp, #0x50]                              
00043dd8 mov       x2, x22                                      
00043ddc bl        #0x593e0                                      ; objc_msgSend$addObject:
00043de0 mov       x0, x25                                      
00043de4 bl        #0x58e04                                      ; _objc_release
00043de8 mov       x0, x23                                      
00043dec bl        #0x58e04                                      ; _objc_release
00043df0 add       x26, x26, #1                                 
00043df4 cmp       x21, x26                                     
00043df8 b.ne      #0x43d2c                                     
00043dfc add       x2, sp, #0xa0                                
00043e00 add       x3, sp, #0x180                               
00043e04 mov       x0, x27                                      
00043e08 mov       w4, #0x10                                    
00043e0c bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00043e10 mov       x21, x0                                      
00043e14 cbnz      x0, #0x43d28                                 
00043e18 mov       x0, x27                                      
00043e1c bl        #0x58e04                                      ; _objc_release
00043e20 ldr       x19, [sp, #0x50]                             
00043e24 mov       x0, x19                                      
00043e28 bl        #0x59840                                      ; objc_msgSend$array
00043e2c mov       x29, x29                                     
00043e30 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043e34 mov       x21, x0                                      
00043e38 adrp      x3, #0x7d000                                 
00043e3c add       x3, x3, #0x4f0                                ; @'CustomViews.RuleIDs'
00043e40 ldr       x25, [sp, #0x18]                             
00043e44 mov       x0, x25                                      
00043e48 mov       x2, x21                                      
00043e4c bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
00043e50 mov       x0, x21                                      
00043e54 bl        #0x58e04                                      ; _objc_release
00043e58 ldr       x0, [sp, #0x10]                              
00043e5c bl        #0x58e04                                      ; _objc_release
00043e60 mov       x0, x19                                      
00043e64 bl        #0x58e04                                      ; _objc_release
00043e68 ldp       x26, x8, [sp, #0x28]                         
00043e6c ldr       x22, [sp, #0x58]                             
00043e70 ldr       x23, [sp, #0x20]                             
00043e74 mov       x27, x28                                     
00043e78 mov       x28, x8                                      
00043e7c adrp      x19, #0x78000                                
00043e80 ldr       x19, [x19, #0x4e0]                            ; &___NSArray0__struct
00043e84 mov       x0, x27                                      
00043e88 mov       x2, x25                                      
00043e8c bl        #0x59380                                      ; objc_msgSend$addEntriesFromDictionary:
00043e90 cmp       x22, #0                                      
00043e94 csel      x21, x19, x22, eq                            
00043e98 mov       x0, x27                                      
00043e9c mov       x2, x21                                      
00043ea0 bl        #0x5d3a0                                      ; objc_msgSend$removeObjectsForKeys:
00043ea4 adrp      x8, #0x8b000                                 
00043ea8 ldr       x0, [x8, #0xc98]                              ; &_OBJC_CLASS_$_NSPropertyListSerialization
00043eac mov       x2, x27                                      
00043eb0 mov       w3, #0xc8                                    
00043eb4 bl        #0x5d020                                      ; objc_msgSend$propertyList:isValidForFormat:
00043eb8 tbz       w0, #0, #0x44174                             
00043ebc adrp      x19, #0x7f000                                
00043ec0 add       x19, x19, #0xc30                              ; @'dylv.liquidassprefs'
00043ec4 mov       x0, x25                                      
00043ec8 mov       x1, x22                                      
00043ecc mov       x2, x19                                      
00043ed0 ldp       x4, x3, [sp, #0x38]                          
00043ed4 bl        #0x587d4                                      ; _CFPreferencesSetMultiple
00043ed8 mov       x0, x19                                      
00043edc bl        #0x58794                                      ; _CFPreferencesAppSynchronize
00043ee0 cbz       w0, #0x43efc                                 
00043ee4 mov       w19, #1                                      
00043ee8 mov       x0, x27                                      
00043eec mov       x2, x26                                      
00043ef0 mov       w3, #1                                       
00043ef4 bl        #0x61600                                      ; objc_msgSend$writeToFile:atomically:
00043ef8 tbnz      w0, #0, #0x441b4                             
00043efc stp       x26, x28, [sp, #0x28]                        
00043f00 mov       x28, x27                                     
00043f04 str       x23, [sp, #0x20]                             
00043f08 str       x22, [sp, #0x58]                             
00043f0c adrp      x8, #0x8b000                                 
00043f10 ldr       x0, [x8, #0xae8]                              ; &_OBJC_CLASS_$_NSMutableDictionary
00043f14 bl        #0x5a840                                      ; objc_msgSend$dictionary
00043f18 mov       x29, x29                                     
00043f1c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043f20 mov       x23, x0                                      
00043f24 adrp      x8, #0x8b000                                 
00043f28 ldr       x0, [x8, #0xb38]                              ; &_OBJC_CLASS_$_NSMutableArray
00043f2c bl        #0x59840                                      ; objc_msgSend$array
00043f30 mov       x29, x29                                     
00043f34 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043f38 mov       x19, x0                                      
00043f3c adrp      x8, #0x8b000                                 
00043f40 ldr       x22, [x8, #0xb98]                             ; &_OBJC_CLASS_$_NSMutableSet
00043f44 str       x25, [sp, #0x18]                             
00043f48 mov       x0, x25                                      
00043f4c bl        #0x59540                                      ; objc_msgSend$allKeys
00043f50 mov       x29, x29                                     
00043f54 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043f58 mov       x25, x0                                      
00043f5c mov       x0, x22                                      
00043f60 mov       x2, x25                                      
00043f64 bl        #0x60100                                      ; objc_msgSend$setWithArray:
00043f68 mov       x29, x29                                     
00043f6c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043f70 mov       x22, x0                                      
00043f74 mov       x0, x25                                      
00043f78 bl        #0x58e04                                      ; _objc_release
00043f7c mov       x0, x22                                      
00043f80 mov       x2, x21                                      
00043f84 bl        #0x59400                                      ; objc_msgSend$addObjectsFromArray:
00043f88 movi      v0.2d, #0000000000000000                     
00043f8c stp       q0, q0, [sp, #0x80]                          
00043f90 stp       q0, q0, [sp, #0x60]                          
00043f94 mov       x0, x22                                      
00043f98 bl        #0x58e14                                      ; _objc_retain
00043f9c mov       x27, x0                                      
00043fa0 add       x2, sp, #0x60                                
00043fa4 add       x3, sp, #0x100                               
00043fa8 mov       w4, #0x10                                    
00043fac bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00043fb0 cbz       x0, #0x4406c                                 
00043fb4 mov       x21, x0                                      
00043fb8 ldr       x8, [sp, #0x70]                              
00043fbc ldr       x20, [x8]                                    
00043fc0 mov       x26, #0                                      
00043fc4 ldr       x8, [sp, #0x70]                              
00043fc8 ldr       x8, [x8]                                     
00043fcc cmp       x8, x20                                      
00043fd0 b.eq      #0x43fdc                                     
00043fd4 mov       x0, x27                                      
00043fd8 bl        #0x58d54                                      ; _objc_enumerationMutation
00043fdc ldr       x8, [sp, #0x68]                              
00043fe0 ldr       x22, [x8, x26, lsl #3]                       
00043fe4 mov       x0, x24                                      
00043fe8 mov       x2, x22                                      
00043fec bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00043ff0 mov       x29, x29                                     
00043ff4 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00043ff8 mov       x25, x0                                      
00043ffc bl        #0x58e04                                      ; _objc_release
00044000 cbz       x25, #0x44038                                
00044004 mov       x0, x24                                      
00044008 mov       x2, x22                                      
0004400c bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00044010 mov       x29, x29                                     
00044014 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00044018 mov       x25, x0                                      
0004401c mov       x0, x23                                      
00044020 mov       x2, x25                                      
00044024 mov       x3, x22                                      
00044028 bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
0004402c mov       x0, x25                                      
00044030 bl        #0x58e04                                      ; _objc_release
00044034 b         #0x44044                                     
00044038 mov       x0, x19                                      
0004403c mov       x2, x22                                      
00044040 bl        #0x593e0                                      ; objc_msgSend$addObject:
00044044 add       x26, x26, #1                                 
00044048 cmp       x21, x26                                     
0004404c b.ne      #0x43fc4                                     
00044050 add       x2, sp, #0x60                                
00044054 add       x3, sp, #0x100                               
00044058 mov       x0, x27                                      
0004405c mov       w4, #0x10                                    
00044060 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
00044064 mov       x21, x0                                      
00044068 cbnz      x0, #0x43fc0                                 
0004406c mov       x0, x27                                      
00044070 bl        #0x58e04                                      ; _objc_release
00044074 adrp      x21, #0x7f000                                
00044078 add       x21, x21, #0xc30                              ; @'dylv.liquidassprefs'
0004407c mov       x0, x23                                      
00044080 mov       x1, x19                                      
00044084 mov       x2, x21                                      
00044088 ldp       x4, x3, [sp, #0x38]                          
0004408c bl        #0x587d4                                      ; _CFPreferencesSetMultiple
00044090 mov       x0, x21                                      
00044094 bl        #0x58794                                      ; _CFPreferencesAppSynchronize
00044098 ldr       x26, [sp, #0x28]                             
0004409c ldr       x0, [sp, #0x48]                              
000440a0 cbz       x0, #0x440b0                                 
000440a4 mov       x2, x26                                      
000440a8 mov       w3, #1                                       
000440ac bl        #0x61600                                      ; objc_msgSend$writeToFile:atomically:
000440b0 ldr       x20, [sp, #0x20]                             
000440b4 cbz       x20, #0x44144                                
000440b8 adrp      x8, #0x8b000                                 
000440bc ldr       x21, [x8, #0xc68]                             ; &_OBJC_CLASS_$_NSError
000440c0 adrp      x8, #0x78000                                 
000440c4 ldr       x8, [x8, #0x480]                              ; &_NSCocoaErrorDomain
000440c8 adrp      x9, #0x78000                                 
000440cc ldr       x9, [x9, #0x490]                              ; &_NSFilePathErrorKey
000440d0 ldr       x22, [x8]                                     ; &___objc_personality_v0
000440d4 ldr       x8, [x9]                                      ; &___objc_personality_v0
000440d8 adrp      x9, #0x78000                                 
000440dc ldr       x9, [x9, #0x4b0]                              ; &_NSLocalizedDescriptionKey
000440e0 ldr       x9, [x9]                                      ; &___objc_personality_v0
000440e4 stp       x8, x9, [sp, #0xe0]                          
000440e8 adrp      x8, #0x7f000                                 
000440ec add       x8, x8, #0xcd0                                ; @'Could not save preferences. Your pending changes have been kept.'
000440f0 stp       x26, x8, [sp, #0xf0]                         
000440f4 adrp      x8, #0x8b000                                 
000440f8 ldr       x0, [x8, #0xaf0]                              ; &_OBJC_CLASS_$_NSDictionary
000440fc add       x2, sp, #0xf0                                
00044100 add       x3, sp, #0xe0                                
00044104 mov       w4, #2                                       
00044108 bl        #0x5a880                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
0004410c mov       x29, x29                                     
00044110 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00044114 mov       x25, x0                                      
00044118 mov       x0, x21                                      
0004411c mov       x2, x22                                      
00044120 mov       w3, #0x200                                   
00044124 mov       x4, x25                                      
00044128 bl        #0x5ace0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
0004412c mov       x29, x29                                     
00044130 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
00044134 bl        #0x58cf4                                      ; _objc_autorelease
00044138 str       x0, [x20]                                    
0004413c mov       x0, x25                                      
00044140 bl        #0x58e04                                      ; _objc_release
00044144 mov       x0, x27                                      
00044148 bl        #0x58e04                                      ; _objc_release
0004414c mov       x0, x19                                      
00044150 bl        #0x58e04                                      ; _objc_release
00044154 mov       x0, x23                                      
00044158 bl        #0x58e04                                      ; _objc_release
0004415c mov       w19, #0                                      
00044160 ldr       x22, [sp, #0x58]                             
00044164 ldr       x25, [sp, #0x18]                             
00044168 mov       x27, x28                                     
0004416c ldr       x28, [sp, #0x30]                             
00044170 b         #0x441b4                                     
00044174 cbz       x23, #0x441b0                                
00044178 adrp      x8, #0x8b000                                 
0004417c ldr       x0, [x8, #0xc68]                              ; &_OBJC_CLASS_$_NSError
00044180 adrp      x8, #0x78000                                 
00044184 ldr       x8, [x8, #0x480]                              ; &_NSCocoaErrorDomain
00044188 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
0004418c mov       w3, #0xf0c                                   
00044190 mov       x4, #0                                       
00044194 bl        #0x5ace0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
00044198 mov       x29, x29                                     
0004419c bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000441a0 bl        #0x58cf4                                      ; _objc_autorelease
000441a4 mov       w19, #0                                      
000441a8 str       x0, [x23]                                    
000441ac b         #0x441b4                                     
000441b0 mov       w19, #0                                      
000441b4 mov       x0, x27                                      
000441b8 bl        #0x58e04                                      ; _objc_release
000441bc mov       x0, x25                                      
000441c0 bl        #0x58e04                                      ; _objc_release
000441c4 ldr       x20, [sp, #0x48]                             
000441c8 mov       x0, x24                                      
000441cc bl        #0x58e04                                      ; _objc_release
000441d0 mov       x0, x20                                      
000441d4 bl        #0x58e04                                      ; _objc_release
000441d8 mov       x0, x26                                      
000441dc bl        #0x58e04                                      ; _objc_release
000441e0 mov       x0, x22                                      
000441e4 bl        #0x58e04                                      ; _objc_release
000441e8 mov       x0, x28                                      
000441ec bl        #0x58e04                                      ; _objc_release
000441f0 ldur      x8, [x29, #-0x60]                            
000441f4 adrp      x9, #0x78000                                 
000441f8 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
000441fc ldr       x9, [x9]                                      ; &___objc_personality_v0
00044200 cmp       x9, x8                                       
00044204 b.ne      #0x44234                                     
00044208 mov       x0, x19                                      
0004420c add       sp, sp, #0x620                               
00044210 ldp       x29, x30, [sp, #0x50]                        
00044214 ldp       x20, x19, [sp, #0x40]                        
00044218 ldp       x22, x21, [sp, #0x30]                        
0004421c ldp       x24, x23, [sp, #0x20]                        
00044220 ldp       x26, x25, [sp, #0x10]                        
00044224 ldp       x28, x27, [sp], #0x60                        
00044228 retab                                                  
0004422c mov       w19, #0                                      
00044230 b         #0x441d0                                     
00044234 bl        #0x58a94                                      ; ___stack_chk_fail
