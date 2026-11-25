; font-layout arm64e unslid VA [0x698b8,0x6a1cc)
000698b8 pacibsp                                                
000698bc sub       sp, sp, #0x100                               
000698c0 stp       d13, d12, [sp, #0x70]                        
000698c4 stp       d11, d10, [sp, #0x80]                        
000698c8 stp       d9, d8, [sp, #0x90]                          
000698cc stp       x28, x27, [sp, #0xa0]                        
000698d0 stp       x26, x25, [sp, #0xb0]                        
000698d4 stp       x24, x23, [sp, #0xc0]                        
000698d8 stp       x22, x21, [sp, #0xd0]                        
000698dc stp       x20, x19, [sp, #0xe0]                        
000698e0 stp       x29, x30, [sp, #0xf0]                        
000698e4 add       x29, sp, #0xf0                               
000698e8 mov       x20, x0                                      
000698ec bl        #0xaa8a0                                      ; objc_msgSend$picker
000698f0 mov       x29, x29                                     
000698f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000698f8 mov       x21, x0                                      
000698fc bl        #0xb1920                                      ; objc_msgSend$view
00069900 mov       x29, x29                                     
00069904 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069908 mov       x19, x0                                      
0006990c mov       x0, x21                                      
00069910 bl        #0xa46f4                                      ; _objc_release
00069914 mov       x0, x20                                      
00069918 bl        #0xaa8a0                                      ; objc_msgSend$picker
0006991c mov       x29, x29                                     
00069920 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069924 mov       x22, x0                                      
00069928 adrp      x1, #0xba000                                 
0006992c add       x1, x1, #0x1d5                                ; '_rootStackView'
00069930 bl        #0x633b0                                     
00069934 mov       x29, x29                                     
00069938 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006993c mov       x21, x0                                      
00069940 mov       x0, x22                                      
00069944 bl        #0xa46f4                                      ; _objc_release
00069948 mov       x0, x20                                      
0006994c bl        #0xa6380                                      ; objc_msgSend$componentStack
00069950 mov       x29, x29                                     
00069954 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069958 mov       x22, x0                                      
0006995c cbz       x0, #0x69970                                 
00069960 mov       x0, x21                                      
00069964 mov       w2, #0                                       
00069968 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
0006996c b         #0x6999c                                     
00069970 mov       x0, x20                                      
00069974 bl        #0xb0220                                      ; objc_msgSend$state
00069978 mov       x29, x29                                     
0006997c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069980 mov       x23, x0                                      
00069984 bl        #0xa9d40                                      ; objc_msgSend$modern
00069988 mov       x2, x0                                       
0006998c mov       x0, x21                                      
00069990 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
00069994 mov       x0, x23                                      
00069998 bl        #0xa46f4                                      ; _objc_release
0006999c mov       x0, x22                                      
000699a0 bl        #0xa46f4                                      ; _objc_release
000699a4 mov       x0, x20                                      
000699a8 bl        #0xb0220                                      ; objc_msgSend$state
000699ac mov       x29, x29                                     
000699b0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000699b4 mov       x22, x0                                      
000699b8 bl        #0xa9d40                                      ; objc_msgSend$modern
000699bc mov       x23, x0                                      
000699c0 mov       x0, x20                                      
000699c4 bl        #0xa9ea0                                      ; objc_msgSend$nativeFontController
000699c8 mov       x29, x29                                     
000699cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000699d0 mov       x24, x0                                      
000699d4 bl        #0xb1920                                      ; objc_msgSend$view
000699d8 mov       x29, x29                                     
000699dc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000699e0 mov       x25, x0                                      
000699e4 mov       x2, x23                                      
000699e8 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
000699ec mov       x0, x25                                      
000699f0 bl        #0xa46f4                                      ; _objc_release
000699f4 mov       x0, x24                                      
000699f8 bl        #0xa46f4                                      ; _objc_release
000699fc mov       x0, x22                                      
00069a00 bl        #0xa46f4                                      ; _objc_release
00069a04 mov       x0, x20                                      
00069a08 bl        #0xb0220                                      ; objc_msgSend$state
00069a0c mov       x29, x29                                     
00069a10 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069a14 mov       x22, x0                                      
00069a18 bl        #0xa9d40                                      ; objc_msgSend$modern
00069a1c mov       x23, x0                                      
00069a20 mov       x0, x20                                      
00069a24 bl        #0xb1a80                                      ; objc_msgSend$weightContainer
00069a28 mov       x29, x29                                     
00069a2c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069a30 mov       x24, x0                                      
00069a34 eor       w2, w23, #1                                  
00069a38 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
00069a3c mov       x0, x24                                      
00069a40 bl        #0xa46f4                                      ; _objc_release
00069a44 mov       x0, x22                                      
00069a48 bl        #0xa46f4                                      ; _objc_release
00069a4c mov       x0, x20                                      
00069a50 bl        #0xb0220                                      ; objc_msgSend$state
00069a54 mov       x29, x29                                     
00069a58 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069a5c mov       x22, x0                                      
00069a60 bl        #0xa9d40                                      ; objc_msgSend$modern
00069a64 mov       x23, x0                                      
00069a68 mov       x0, x20                                      
00069a6c bl        #0xb1aa0                                      ; objc_msgSend$weightPanel
00069a70 mov       x29, x29                                     
00069a74 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069a78 mov       x24, x0                                      
00069a7c eor       w2, w23, #1                                  
00069a80 bl        #0xad1e0                                      ; objc_msgSend$setHidden:
00069a84 mov       x0, x24                                      
00069a88 bl        #0xa46f4                                      ; _objc_release
00069a8c mov       x0, x22                                      
00069a90 bl        #0xa46f4                                      ; _objc_release
00069a94 mov       x0, x19                                      
00069a98 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00069a9c bl        #0xa3ed4                                      ; _CGRectGetWidth
00069aa0 mov       x8, #-0x3fb8000000000000                     
00069aa4 fmov      d10, x8                                      
00069aa8 fadd      d8, d0, d10                                  
00069aac mov       x0, x19                                      
00069ab0 bl        #0xa5bc0                                      ; objc_msgSend$bounds
00069ab4 bl        #0xa3e64                                      ; _CGRectGetHeight
00069ab8 fmov      d9, d0                                       
00069abc mov       x0, x19                                      
00069ac0 bl        #0xab780                                      ; objc_msgSend$safeAreaInsets
00069ac4 fsub      d0, d9, d2                                   
00069ac8 fadd      d9, d0, d10                                  
00069acc mov       x0, x20                                      
00069ad0 bl        #0xa9d00                                      ; objc_msgSend$mode
00069ad4 mov       x29, x29                                     
00069ad8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069adc mov       x22, x0                                      
00069ae0 mov       x8, #0x4040000000000000                      
00069ae4 fmov      d3, x8                                       
00069ae8 fmov      d0, #24.00000000                             
00069aec fmov      d1, d9                                       
00069af0 fmov      d2, d8                                       
00069af4 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069af8 mov       x0, x22                                      
00069afc bl        #0xa46f4                                      ; _objc_release
00069b00 mov       x0, x19                                      
00069b04 bl        #0xab780                                      ; objc_msgSend$safeAreaInsets
00069b08 fmov      d1, #7.00000000                              
00069b0c fadd      d9, d0, d1                                   
00069b10 mov       x0, x20                                      
00069b14 bl        #0xb1aa0                                      ; objc_msgSend$weightPanel
00069b18 mov       x29, x29                                     
00069b1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069b20 mov       x22, x0                                      
00069b24 mov       x8, #0x406a000000000000                      
00069b28 fmov      d3, x8                                       
00069b2c fmov      d0, #24.00000000                             
00069b30 fmov      d1, d9                                       
00069b34 fmov      d2, d8                                       
00069b38 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069b3c mov       x0, x22                                      
00069b40 bl        #0xa46f4                                      ; _objc_release
00069b44 mov       x0, x20                                      
00069b48 bl        #0xa6380                                      ; objc_msgSend$componentStack
00069b4c mov       x29, x29                                     
00069b50 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069b54 mov       x22, x0                                      
00069b58 bl        #0xa46f4                                      ; _objc_release
00069b5c cbz       x22, #0x69bc8                                
00069b60 mov       x0, x20                                      
00069b64 bl        #0xa9d00                                      ; objc_msgSend$mode
00069b68 mov       x29, x29                                     
00069b6c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069b70 mov       x22, x0                                      
00069b74 mov       x8, #0x4040000000000000                      
00069b78 fmov      d3, x8                                       
00069b7c fmov      d0, #24.00000000                             
00069b80 movi      d1, #0000000000000000                        
00069b84 fmov      d2, d8                                       
00069b88 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069b8c mov       x0, x22                                      
00069b90 bl        #0xa46f4                                      ; _objc_release
00069b94 mov       x0, x20                                      
00069b98 bl        #0xb1aa0                                      ; objc_msgSend$weightPanel
00069b9c mov       x29, x29                                     
00069ba0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069ba4 mov       x22, x0                                      
00069ba8 mov       x8, #0x406a000000000000                      
00069bac fmov      d3, x8                                       
00069bb0 fmov      d0, #24.00000000                             
00069bb4 movi      d1, #0000000000000000                        
00069bb8 fmov      d2, d8                                       
00069bbc bl        #0xace60                                      ; objc_msgSend$setFrame:
00069bc0 mov       x0, x22                                      
00069bc4 bl        #0xa46f4                                      ; _objc_release
00069bc8 mov       x0, x20                                      
00069bcc bl        #0xb1aa0                                      ; objc_msgSend$weightPanel
00069bd0 mov       x29, x29                                     
00069bd4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069bd8 mov       x22, x0                                      
00069bdc bl        #0xa5bc0                                      ; objc_msgSend$bounds
00069be0 fmov      d9, d0                                       
00069be4 fmov      d10, d1                                      
00069be8 fmov      d11, d2                                      
00069bec fmov      d12, d3                                      
00069bf0 mov       x0, x20                                      
00069bf4 bl        #0xb1aa0                                      ; objc_msgSend$weightPanel
00069bf8 mov       x29, x29                                     
00069bfc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069c00 mov       x23, x0                                      
00069c04 bl        #0xb0720                                      ; objc_msgSend$subviews
00069c08 mov       x29, x29                                     
00069c0c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069c10 mov       x24, x0                                      
00069c14 bl        #0xa78a0                                      ; objc_msgSend$firstObject
00069c18 mov       x29, x29                                     
00069c1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069c20 mov       x25, x0                                      
00069c24 fmov      d0, d9                                       
00069c28 fmov      d1, d10                                      
00069c2c fmov      d2, d11                                      
00069c30 fmov      d3, d12                                      
00069c34 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069c38 mov       x0, x25                                      
00069c3c bl        #0xa46f4                                      ; _objc_release
00069c40 mov       x0, x24                                      
00069c44 bl        #0xa46f4                                      ; _objc_release
00069c48 mov       x0, x23                                      
00069c4c bl        #0xa46f4                                      ; _objc_release
00069c50 mov       x0, x22                                      
00069c54 bl        #0xa46f4                                      ; _objc_release
00069c58 mov       x8, #-0x3fa5000000000000                     
00069c5c fmov      d0, x8                                       
00069c60 fadd      d9, d8, d0                                   
00069c64 mov       x0, x20                                      
00069c68 bl        #0xa9080                                      ; objc_msgSend$label
00069c6c mov       x29, x29                                     
00069c70 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069c74 mov       x22, x0                                      
00069c78 fmov      d0, #14.00000000                             
00069c7c fmov      d1, #13.00000000                             
00069c80 fmov      d3, #28.00000000                             
00069c84 fmov      d2, d9                                       
00069c88 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069c8c mov       x0, x22                                      
00069c90 bl        #0xa46f4                                      ; _objc_release
00069c94 adrp      x8, #0xbd000                                 
00069c98 ldr       d0, [x8, #0xe38]                             
00069c9c fadd      d9, d8, d0                                   
00069ca0 mov       x0, x20                                      
00069ca4 bl        #0xb16e0                                      ; objc_msgSend$valueButton
00069ca8 mov       x29, x29                                     
00069cac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069cb0 mov       x22, x0                                      
00069cb4 mov       x8, #0x4052000000000000                      
00069cb8 fmov      d2, x8                                       
00069cbc mov       x8, #0x4046000000000000                      
00069cc0 fmov      d3, x8                                       
00069cc4 fmov      d1, #5.00000000                              
00069cc8 fmov      d0, d9                                       
00069ccc bl        #0xace60                                      ; objc_msgSend$setFrame:
00069cd0 mov       x0, x22                                      
00069cd4 bl        #0xa46f4                                      ; _objc_release
00069cd8 adrp      x26, #0xec000                                
00069cdc ldr       x22, [x26, #0x518]                            ; &_OBJC_CLASS_$_NSString
00069ce0 mov       x0, x20                                      
00069ce4 bl        #0xb0220                                      ; objc_msgSend$state
00069ce8 mov       x29, x29                                     
00069cec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069cf0 mov       x23, x0                                      
00069cf4 bl        #0xb1a60                                      ; objc_msgSend$weight
00069cf8 str       d0, [sp]                                     
00069cfc adrp      x2, #0xdb000                                 
00069d00 add       x2, x2, #0xdf0                                ; @'%.0f'
00069d04 mov       x0, x22                                      
00069d08 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
00069d0c mov       x29, x29                                     
00069d10 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069d14 mov       x22, x0                                      
00069d18 mov       x0, x23                                      
00069d1c bl        #0xa46f4                                      ; _objc_release
00069d20 mov       x0, x20                                      
00069d24 bl        #0xb16e0                                      ; objc_msgSend$valueButton
00069d28 mov       x29, x29                                     
00069d2c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069d30 mov       x23, x0                                      
00069d34 bl        #0xa6ba0                                      ; objc_msgSend$currentTitle
00069d38 mov       x29, x29                                     
00069d3c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069d40 mov       x24, x0                                      
00069d44 mov       x2, x22                                      
00069d48 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00069d4c mov       x25, x0                                      
00069d50 mov       x0, x24                                      
00069d54 bl        #0xa46f4                                      ; _objc_release
00069d58 mov       x0, x23                                      
00069d5c bl        #0xa46f4                                      ; _objc_release
00069d60 adrp      x27, #0xec000                                
00069d64 adrp      x28, #0xbd000                                
00069d68 adrp      x9, #0xd4000                                 
00069d6c add       x9, x9, #0xbc0                               
00069d70 tbnz      w25, #0, #0x69dd4                            
00069d74 ldr       x23, [x27, #0x560]                            ; &_OBJC_CLASS_$_UIView
00069d78 add       x8, sp, #0x38                                
00069d7c adrp      x16, #0xd4000                                
00069d80 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
00069d84 mov       x17, x8                                      
00069d88 movk      x17, #0x6ae1, lsl #48                        
00069d8c pacda     x16, x17                                     
00069d90 str       x16, [sp, #0x38]                             
00069d94 ldr       d0, [x28, #0x268]                            
00069d98 str       d0, [sp, #0x40]                              
00069d9c add       x8, x8, #0x10                                
00069da0 adrp      x16, #0x6a000                                
00069da4 add       x16, x16, #0xe4                              
00069da8 pacia     x16, x8                                      
00069dac stp       x16, x9, [sp, #0x48]                         
00069db0 str       x20, [sp, #0x58]                             
00069db4 mov       x0, x22                                      
00069db8 bl        #0xa4704                                      ; _objc_retain
00069dbc str       x0, [sp, #0x60]                              
00069dc0 add       x2, sp, #0x38                                
00069dc4 mov       x0, x23                                      
00069dc8 bl        #0xaa840                                      ; objc_msgSend$performWithoutAnimation:
00069dcc ldr       x0, [sp, #0x60]                              
00069dd0 bl        #0xa46f4                                      ; _objc_release
00069dd4 mov       x0, x20                                      
00069dd8 bl        #0xb16e0                                      ; objc_msgSend$valueButton
00069ddc mov       x29, x29                                     
00069de0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069de4 mov       x23, x0                                      
00069de8 mov       x2, x22                                      
00069dec bl        #0xabb80                                      ; objc_msgSend$setAccessibilityValue:
00069df0 mov       x0, x23                                      
00069df4 bl        #0xa46f4                                      ; _objc_release
00069df8 fmov      d0, #-28.00000000                            
00069dfc fadd      d8, d8, d0                                   
00069e00 mov       x0, x20                                      
00069e04 bl        #0xafe80                                      ; objc_msgSend$slider
00069e08 mov       x29, x29                                     
00069e0c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069e10 mov       x23, x0                                      
00069e14 mov       x8, #0x4049000000000000                      
00069e18 fmov      d1, x8                                       
00069e1c adrp      x8, #0xbd000                                 
00069e20 ldr       d3, [x8, #0xe40]                             
00069e24 fmov      d0, #14.00000000                             
00069e28 fmov      d2, d8                                       
00069e2c bl        #0xace60                                      ; objc_msgSend$setFrame:
00069e30 mov       x0, x23                                      
00069e34 bl        #0xa46f4                                      ; _objc_release
00069e38 mov       x0, x20                                      
00069e3c bl        #0xa9080                                      ; objc_msgSend$label
00069e40 mov       x29, x29                                     
00069e44 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069e48 mov       x23, x0                                      
00069e4c bl        #0xa7b00                                      ; objc_msgSend$frame
00069e50 mov       x8, #0x405a000000000000                      
00069e54 fmov      d8, x8                                       
00069e58 movi      d4, #0000000000000000                        
00069e5c fmov      d5, d8                                       
00069e60 bl        #0xa3f54                                      ; _CGRectOffset
00069e64 fmov      d9, d0                                       
00069e68 fmov      d10, d1                                      
00069e6c fmov      d11, d2                                      
00069e70 fmov      d12, d3                                      
00069e74 mov       x0, x20                                      
00069e78 bl        #0xafee0                                      ; objc_msgSend$softnessLabel
00069e7c mov       x29, x29                                     
00069e80 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069e84 mov       x24, x0                                      
00069e88 fmov      d0, d9                                       
00069e8c fmov      d1, d10                                      
00069e90 fmov      d2, d11                                      
00069e94 fmov      d3, d12                                      
00069e98 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069e9c mov       x0, x24                                      
00069ea0 bl        #0xa46f4                                      ; _objc_release
00069ea4 mov       x0, x23                                      
00069ea8 bl        #0xa46f4                                      ; _objc_release
00069eac mov       x0, x20                                      
00069eb0 bl        #0xb16e0                                      ; objc_msgSend$valueButton
00069eb4 mov       x29, x29                                     
00069eb8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069ebc mov       x23, x0                                      
00069ec0 bl        #0xa7b00                                      ; objc_msgSend$frame
00069ec4 movi      d4, #0000000000000000                        
00069ec8 fmov      d5, d8                                       
00069ecc bl        #0xa3f54                                      ; _CGRectOffset
00069ed0 fmov      d9, d0                                       
00069ed4 fmov      d10, d1                                      
00069ed8 fmov      d11, d2                                      
00069edc fmov      d12, d3                                      
00069ee0 mov       x0, x20                                      
00069ee4 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
00069ee8 mov       x29, x29                                     
00069eec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069ef0 mov       x24, x0                                      
00069ef4 fmov      d0, d9                                       
00069ef8 fmov      d1, d10                                      
00069efc fmov      d2, d11                                      
00069f00 fmov      d3, d12                                      
00069f04 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069f08 mov       x0, x24                                      
00069f0c bl        #0xa46f4                                      ; _objc_release
00069f10 mov       x0, x23                                      
00069f14 bl        #0xa46f4                                      ; _objc_release
00069f18 mov       x0, x20                                      
00069f1c bl        #0xafe80                                      ; objc_msgSend$slider
00069f20 mov       x29, x29                                     
00069f24 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069f28 mov       x23, x0                                      
00069f2c bl        #0xa7b00                                      ; objc_msgSend$frame
00069f30 movi      d4, #0000000000000000                        
00069f34 fmov      d5, d8                                       
00069f38 bl        #0xa3f54                                      ; _CGRectOffset
00069f3c fmov      d8, d0                                       
00069f40 fmov      d9, d1                                       
00069f44 fmov      d10, d2                                      
00069f48 fmov      d11, d3                                      
00069f4c mov       x0, x20                                      
00069f50 bl        #0xaff00                                      ; objc_msgSend$softnessSlider
00069f54 mov       x29, x29                                     
00069f58 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069f5c mov       x24, x0                                      
00069f60 fmov      d0, d8                                       
00069f64 fmov      d1, d9                                       
00069f68 fmov      d2, d10                                      
00069f6c fmov      d3, d11                                      
00069f70 bl        #0xace60                                      ; objc_msgSend$setFrame:
00069f74 mov       x0, x24                                      
00069f78 bl        #0xa46f4                                      ; _objc_release
00069f7c mov       x0, x23                                      
00069f80 bl        #0xa46f4                                      ; _objc_release
00069f84 ldr       x23, [x26, #0x518]                            ; &_OBJC_CLASS_$_NSString
00069f88 mov       x0, x20                                      
00069f8c bl        #0xb0220                                      ; objc_msgSend$state
00069f90 mov       x29, x29                                     
00069f94 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069f98 mov       x24, x0                                      
00069f9c bl        #0xafec0                                      ; objc_msgSend$softness
00069fa0 str       d0, [sp]                                     
00069fa4 adrp      x2, #0xdb000                                 
00069fa8 add       x2, x2, #0xdf0                                ; @'%.0f'
00069fac mov       x0, x23                                      
00069fb0 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
00069fb4 mov       x29, x29                                     
00069fb8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069fbc mov       x23, x0                                      
00069fc0 mov       x0, x24                                      
00069fc4 bl        #0xa46f4                                      ; _objc_release
00069fc8 mov       x0, x20                                      
00069fcc bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
00069fd0 mov       x29, x29                                     
00069fd4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069fd8 mov       x24, x0                                      
00069fdc bl        #0xa6ba0                                      ; objc_msgSend$currentTitle
00069fe0 mov       x29, x29                                     
00069fe4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00069fe8 mov       x25, x0                                      
00069fec mov       x2, x23                                      
00069ff0 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
00069ff4 mov       x26, x0                                      
00069ff8 mov       x0, x25                                      
00069ffc bl        #0xa46f4                                      ; _objc_release
0006a000 mov       x0, x24                                      
0006a004 bl        #0xa46f4                                      ; _objc_release
0006a008 tbnz      w26, #0, #0x6a074                            
0006a00c ldr       x24, [x27, #0x560]                            ; &_OBJC_CLASS_$_UIView
0006a010 add       x8, sp, #8                                   
0006a014 adrp      x16, #0xd4000                                
0006a018 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006a01c mov       x17, x8                                      
0006a020 movk      x17, #0x6ae1, lsl #48                        
0006a024 pacda     x16, x17                                     
0006a028 str       x16, [sp, #8]                                
0006a02c ldr       d0, [x28, #0x268]                            
0006a030 str       d0, [sp, #0x10]                              
0006a034 add       x8, x8, #0x10                                
0006a038 adrp      x16, #0x6a000                                
0006a03c add       x16, x16, #0x158                             
0006a040 pacia     x16, x8                                      
0006a044 adrp      x8, #0xd4000                                 
0006a048 add       x8, x8, #0xbc0                               
0006a04c stp       x16, x8, [sp, #0x18]                         
0006a050 str       x20, [sp, #0x28]                             
0006a054 mov       x0, x23                                      
0006a058 bl        #0xa4704                                      ; _objc_retain
0006a05c str       x0, [sp, #0x30]                              
0006a060 add       x2, sp, #8                                   
0006a064 mov       x0, x24                                      
0006a068 bl        #0xaa840                                      ; objc_msgSend$performWithoutAnimation:
0006a06c ldr       x0, [sp, #0x30]                              
0006a070 bl        #0xa46f4                                      ; _objc_release
0006a074 mov       x0, x20                                      
0006a078 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
0006a07c mov       x29, x29                                     
0006a080 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a084 mov       x20, x0                                      
0006a088 mov       x2, x23                                      
0006a08c bl        #0xabb80                                      ; objc_msgSend$setAccessibilityValue:
0006a090 mov       x0, x20                                      
0006a094 bl        #0xa46f4                                      ; _objc_release
0006a098 mov       x0, x23                                      
0006a09c bl        #0xa46f4                                      ; _objc_release
0006a0a0 mov       x0, x22                                      
0006a0a4 bl        #0xa46f4                                      ; _objc_release
0006a0a8 mov       x0, x21                                      
0006a0ac bl        #0xa46f4                                      ; _objc_release
0006a0b0 mov       x0, x19                                      
0006a0b4 bl        #0xa46f4                                      ; _objc_release
0006a0b8 ldp       x29, x30, [sp, #0xf0]                        
0006a0bc ldp       x20, x19, [sp, #0xe0]                        
0006a0c0 ldp       x22, x21, [sp, #0xd0]                        
0006a0c4 ldp       x24, x23, [sp, #0xc0]                        
0006a0c8 ldp       x26, x25, [sp, #0xb0]                        
0006a0cc ldp       x28, x27, [sp, #0xa0]                        
0006a0d0 ldp       d9, d8, [sp, #0x90]                          
0006a0d4 ldp       d11, d10, [sp, #0x80]                        
0006a0d8 ldp       d13, d12, [sp, #0x70]                        
0006a0dc add       sp, sp, #0x100                               
0006a0e0 retab                                                  
0006a0e4 pacibsp                                                
0006a0e8 stp       x20, x19, [sp, #-0x20]!                      
0006a0ec stp       x29, x30, [sp, #0x10]                        
0006a0f0 add       x29, sp, #0x10                               
0006a0f4 mov       x19, x0                                      
0006a0f8 ldr       x0, [x0, #0x20]                              
0006a0fc bl        #0xb16e0                                      ; objc_msgSend$valueButton
0006a100 mov       x29, x29                                     
0006a104 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a108 mov       x20, x0                                      
0006a10c ldr       x2, [x19, #0x28]                             
0006a110 mov       x3, #0                                       
0006a114 bl        #0xaf560                                      ; objc_msgSend$setTitle:forState:
0006a118 mov       x0, x20                                      
0006a11c bl        #0xa46f4                                      ; _objc_release
0006a120 ldr       x0, [x19, #0x20]                             
0006a124 bl        #0xb16e0                                      ; objc_msgSend$valueButton
0006a128 mov       x29, x29                                     
0006a12c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a130 mov       x19, x0                                      
0006a134 bl        #0xa9280                                      ; objc_msgSend$layoutIfNeeded
0006a138 mov       x0, x19                                      
0006a13c ldp       x29, x30, [sp, #0x10]                        
0006a140 ldp       x20, x19, [sp], #0x20                        
0006a144 autibsp                                                
0006a148 eor       x16, x30, x30, lsl #1                        
0006a14c tbz       x16, #0x3e, #0x6a154                         
0006a150 brk       #0xc471                                      
0006a154 b         #0xa46f4                                      ; _objc_release
0006a158 pacibsp                                                
0006a15c stp       x20, x19, [sp, #-0x20]!                      
0006a160 stp       x29, x30, [sp, #0x10]                        
0006a164 add       x29, sp, #0x10                               
0006a168 mov       x19, x0                                      
0006a16c ldr       x0, [x0, #0x20]                              
0006a170 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
0006a174 mov       x29, x29                                     
0006a178 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a17c mov       x20, x0                                      
0006a180 ldr       x2, [x19, #0x28]                             
0006a184 mov       x3, #0                                       
0006a188 bl        #0xaf560                                      ; objc_msgSend$setTitle:forState:
0006a18c mov       x0, x20                                      
0006a190 bl        #0xa46f4                                      ; _objc_release
0006a194 ldr       x0, [x19, #0x20]                             
0006a198 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
0006a19c mov       x29, x29                                     
0006a1a0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a1a4 mov       x19, x0                                      
0006a1a8 bl        #0xa9280                                      ; objc_msgSend$layoutIfNeeded
0006a1ac mov       x0, x19                                      
0006a1b0 ldp       x29, x30, [sp, #0x10]                        
0006a1b4 ldp       x20, x19, [sp], #0x20                        
0006a1b8 autibsp                                                
0006a1bc eor       x16, x30, x30, lsl #1                        
0006a1c0 tbz       x16, #0x3e, #0x6a1c8                         
0006a1c4 brk       #0xc471                                      
0006a1c8 b         #0xa46f4                                      ; _objc_release
