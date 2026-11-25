# arm64e unslid VA 0x54b98..0x54d38; FAT offset 0xfc000
00054b98 pacibsp                                                   
00054b9c stp       x28, x27, [sp, #-0x60]!                         
00054ba0 stp       x26, x25, [sp, #0x10]                           
00054ba4 stp       x24, x23, [sp, #0x20]                           
00054ba8 stp       x22, x21, [sp, #0x30]                           
00054bac stp       x20, x19, [sp, #0x40]                           
00054bb0 stp       x29, x30, [sp, #0x50]                           
00054bb4 add       x29, sp, #0x50                                  
00054bb8 adrp      x8, #0xec000                                    
00054bbc ldr       x0, [x8, #0x4b0]                                 ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
00054bc0 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
00054bc4 mov       x29, x29                                        
00054bc8 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00054bcc adrp      x9, #0xef000                                    
00054bd0 ldr       x8, [x9, #0x630]                                 ; 0xef630
00054bd4 str       x0, [x9, #0x630]                                 ; 0xef630
00054bd8 mov       x0, x8                                          
00054bdc bl        #0xa46f4                                         ; _objc_release
00054be0 adrp      x24, #0xef000                                   
00054be4 ldr       w8, [x24, #0x638]                                ; 0xef638
00054be8 cbnz      w8, #0x54d04                                    
00054bec adrp      x0, #0xb9000                                    
00054bf0 add       x0, x0, #0xafc                                   ; 0xb9afc | 'layoutSubviews'
00054bf4 bl        #0xa4864                                         ; _sel_registerName
00054bf8 mov       x19, x0                                         
00054bfc adrp      x0, #0xb9000                                    
00054c00 add       x0, x0, #0xb0b                                   ; 0xb9b0b | '_displayLinkFired:'
00054c04 bl        #0xa4864                                         ; _sel_registerName
00054c08 mov       x20, x0                                         
00054c0c mov       x25, #0                                         
00054c10 adrp      x26, #0xd5000                                   
00054c14 add       x26, x26, #0xa18                                 ; 0xd5a18
00054c18 adrp      x27, #0xd5000                                   
00054c1c add       x27, x27, #0xa30                                 ; 0xd5a30
00054c20 adrp      x28, #0xef000                                   
00054c24 add       x28, x28, #0x640                                 ; 0xef640
00054c28 ldr       x0, [x26, x25]                                  
00054c2c bl        #0xa4664                                         ; _objc_getClass
00054c30 cbz       x0, #0x54cf8                                    
00054c34 mov       x21, x0                                         
00054c38 mov       x1, x19                                         
00054c3c bl        #0xa4284                                         ; _class_getInstanceMethod
00054c40 cbz       x0, #0x54cf8                                    
00054c44 mov       x22, x0                                         
00054c48 ldr       x23, [x27, x25]                                 
00054c4c bl        #0xa4504                                         ; _method_getImplementation
00054c50 str       x0, [x28, x25]                                  
00054c54 mov       x0, x22                                         
00054c58 bl        #0xa4514                                         ; _method_getTypeEncoding
00054c5c mov       x3, x0                                          
00054c60 mov       x0, x21                                         
00054c64 mov       x1, x19                                         
00054c68 mov       x2, x23                                         
00054c6c bl        #0xa4254                                         ; _class_addMethod
00054c70 tbnz      w0, #0, #0x54c84                                
00054c74 mov       x0, x22                                         
00054c78 mov       x1, x23                                         
00054c7c bl        #0xa4524                                         ; _method_setImplementation
00054c80 str       x0, [x28, x25]                                  
00054c84 ldr       w8, [x24, #0x638]                                ; 0xef638
00054c88 add       w8, w8, #1                                      
00054c8c str       w8, [x24, #0x638]                                ; 0xef638
00054c90 mov       x0, x21                                         
00054c94 mov       x1, x20                                         
00054c98 bl        #0xa4284                                         ; _class_getInstanceMethod
00054c9c cbz       x0, #0x54cf8                                    
00054ca0 mov       x22, x0                                         
00054ca4 adrp      x8, #0xd5000                                    
00054ca8 add       x8, x8, #0xa48                                   ; 0xd5a48
00054cac ldr       x23, [x8, x25]                                  
00054cb0 bl        #0xa4504                                         ; _method_getImplementation
00054cb4 adrp      x8, #0xef000                                    
00054cb8 add       x8, x8, #0x658                                   ; 0xef658
00054cbc str       x0, [x8, x25]                                   
00054cc0 mov       x0, x22                                         
00054cc4 bl        #0xa4514                                         ; _method_getTypeEncoding
00054cc8 mov       x3, x0                                          
00054ccc mov       x0, x21                                         
00054cd0 mov       x1, x20                                         
00054cd4 mov       x2, x23                                         
00054cd8 bl        #0xa4254                                         ; _class_addMethod
00054cdc tbnz      w0, #0, #0x54cf8                                
00054ce0 mov       x0, x22                                         
00054ce4 mov       x1, x23                                         
00054ce8 bl        #0xa4524                                         ; _method_setImplementation
00054cec adrp      x8, #0xef000                                    
00054cf0 add       x8, x8, #0x658                                   ; 0xef658
00054cf4 str       x0, [x8, x25]                                   
00054cf8 add       x25, x25, #8                                    
00054cfc cmp       x25, #0x18                                      
00054d00 b.ne      #0x54c28                                        
00054d04 adrp      x0, #0xd5000                                    
00054d08 add       x0, x0, #0x9f8                                   ; 0xd59f8 | &__NSConcreteGlobalBlock
00054d0c ldp       x29, x30, [sp, #0x50]                           
00054d10 ldp       x20, x19, [sp, #0x40]                           
00054d14 ldp       x22, x21, [sp, #0x30]                           
00054d18 ldp       x24, x23, [sp, #0x20]                           
00054d1c ldp       x26, x25, [sp, #0x10]                           
00054d20 ldp       x28, x27, [sp], #0x60                           
00054d24 autibsp                                                   
00054d28 eor       x16, x30, x30, lsl #1                           
00054d2c tbz       x16, #0x3e, #0x54d34                            
00054d30 brk       #0xc471                                         
00054d34 b         #0x97e34                                         ; _lgObservePreferenceReload
