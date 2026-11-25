# arm64e unslid VA 0x97a58..0x97c5c; FAT offset 0xfc000
00097a58 pacibsp                                                   
00097a5c stp       x26, x25, [sp, #-0x50]!                         
00097a60 stp       x24, x23, [sp, #0x10]                           
00097a64 stp       x22, x21, [sp, #0x20]                           
00097a68 stp       x20, x19, [sp, #0x30]                           
00097a6c stp       x29, x30, [sp, #0x40]                           
00097a70 add       x29, sp, #0x40                                  
00097a74 bl        #0xa4704                                         ; _objc_retain
00097a78 mov       x19, x0                                         
00097a7c bl        #0xa9360                                         ; _objc_msgSend
00097a80 cbz       x0, #0x97b14                                    
00097a84 adrp      x0, #0xdd000                                    
00097a88 add       x0, x0, #0x790                                   ; 0xdd790 | @'Global.Enabled'
00097a8c bl        #0x99180                                         ; _LGGlassPreferenceValue
00097a90 mov       x29, x29                                        
00097a94 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097a98 mov       x20, x0                                         
00097a9c adrp      x2, #0xdd000                                    
00097aa0 add       x2, x2, #0x7b0                                   ; 0xdd7b0 | @'Global'
00097aa4 mov       x0, x19                                         
00097aa8 bl        #0xa8d60                                         ; _objc_msgSend
00097aac adrp      x25, #0xec000                                   
00097ab0 tbnz      w0, #0, #0x97ad8                                
00097ab4 ldr       x0, [x25, #0x4e8]                                ; 0xec4e8 | &_OBJC_CLASS_$_NSNumber
00097ab8 bl        #0xa46b4                                         ; _objc_opt_class
00097abc mov       x1, x0                                          
00097ac0 mov       x0, x20                                         
00097ac4 bl        #0xa46c4                                         ; _objc_opt_isKindOfClass
00097ac8 tbz       w0, #0, #0x97ad8                                
00097acc mov       x0, x20                                         
00097ad0 bl        #0xa5b80                                         ; _objc_msgSend
00097ad4 cbz       w0, #0x97bc0                                    
00097ad8 adrp      x8, #0xef000                                    
00097adc ldr       x8, [x8, #0xbd8]                                 ; 0xefbd8
00097ae0 cmn       x8, #1                                          
00097ae4 b.ne      #0x97c4c                                        
00097ae8 adrp      x8, #0xef000                                    
00097aec ldr       x0, [x8, #0xbd0]                                 ; 0xefbd0
00097af0 mov       x2, x19                                         
00097af4 bl        #0xaa280                                         ; _objc_msgSend
00097af8 mov       x29, x29                                        
00097afc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097b00 mov       x22, x0                                         
00097b04 cbz       x0, #0x97b1c                                    
00097b08 mov       x0, x22                                         
00097b0c bl        #0xa4704                                         ; _objc_retain
00097b10 b         #0x97b34                                        
00097b14 mov       w23, #1                                         
00097b18 b         #0x97c28                                        
00097b1c adrp      x2, #0xdd000                                    
00097b20 add       x2, x2, #0x830                                   ; 0xdd830 | @'.Enabled'
00097b24 mov       x0, x19                                         
00097b28 bl        #0xb04c0                                         ; _objc_msgSend
00097b2c mov       x29, x29                                        
00097b30 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097b34 mov       x21, x0                                         
00097b38 mov       x0, x22                                         
00097b3c bl        #0xa46f4                                         ; _objc_release
00097b40 mov       x0, x21                                         
00097b44 bl        #0x99180                                         ; _LGGlassPreferenceValue
00097b48 mov       x29, x29                                        
00097b4c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097b50 mov       x22, x0                                         
00097b54 cbnz      x0, #0x97bd4                                    
00097b58 adrp      x8, #0xef000                                    
00097b5c ldr       x8, [x8, #0xbe8]                                 ; 0xefbe8
00097b60 cmn       x8, #1                                          
00097b64 b.ne      #0x97c54                                        
00097b68 adrp      x8, #0xef000                                    
00097b6c ldr       x0, [x8, #0xbe0]                                 ; 0xefbe0
00097b70 mov       x2, x19                                         
00097b74 bl        #0xaa280                                         ; _objc_msgSend
00097b78 mov       x29, x29                                        
00097b7c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097b80 mov       x23, x0                                         
00097b84 cbz       x0, #0x97bc8                                    
00097b88 adrp      x2, #0xdd000                                    
00097b8c add       x2, x2, #0x830                                   ; 0xdd830 | @'.Enabled'
00097b90 mov       x0, x23                                         
00097b94 bl        #0xb04c0                                         ; _objc_msgSend
00097b98 mov       x29, x29                                        
00097b9c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097ba0 mov       x24, x0                                         
00097ba4 bl        #0x99180                                         ; _LGGlassPreferenceValue
00097ba8 mov       x29, x29                                        
00097bac bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097bb0 mov       x22, x0                                         
00097bb4 mov       x0, x24                                         
00097bb8 bl        #0xa46f4                                         ; _objc_release
00097bbc b         #0x97bcc                                        
00097bc0 mov       w23, #0                                         
00097bc4 b         #0x97c20                                        
00097bc8 mov       x22, #0                                         
00097bcc mov       x0, x23                                         
00097bd0 bl        #0xa46f4                                         ; _objc_release
00097bd4 ldr       x0, [x25, #0x4e8]                                ; 0xec4e8 | &_OBJC_CLASS_$_NSNumber
00097bd8 bl        #0xa46b4                                         ; _objc_opt_class
00097bdc mov       x1, x0                                          
00097be0 mov       x0, x22                                         
00097be4 bl        #0xa46c4                                         ; _objc_opt_isKindOfClass
00097be8 tbz       w0, #0, #0x97bfc                                
00097bec mov       x0, x22                                         
00097bf0 bl        #0xa5b80                                         ; _objc_msgSend
00097bf4 mov       x23, x0                                         
00097bf8 b         #0x97c10                                        
00097bfc adrp      x2, #0xd8000                                    
00097c00 add       x2, x2, #0x350                                   ; 0xd8350 | @'AppIcons'
00097c04 mov       x0, x19                                         
00097c08 bl        #0xa8d60                                         ; _objc_msgSend
00097c0c eor       w23, w0, #1                                     
00097c10 mov       x0, x22                                         
00097c14 bl        #0xa46f4                                         ; _objc_release
00097c18 mov       x0, x21                                         
00097c1c bl        #0xa46f4                                         ; _objc_release
00097c20 mov       x0, x20                                         
00097c24 bl        #0xa46f4                                         ; _objc_release
00097c28 mov       x0, x19                                         
00097c2c bl        #0xa46f4                                         ; _objc_release
00097c30 mov       x0, x23                                         
00097c34 ldp       x29, x30, [sp, #0x40]                           
00097c38 ldp       x20, x19, [sp, #0x30]                           
00097c3c ldp       x22, x21, [sp, #0x20]                           
00097c40 ldp       x24, x23, [sp, #0x10]                           
00097c44 ldp       x26, x25, [sp], #0x50                           
00097c48 retab                                                     
00097c4c bl        #0xa3848                                        
00097c50 b         #0x97ae8                                        
00097c54 bl        #0xa385c                                        
00097c58 b         #0x97b68                                        
