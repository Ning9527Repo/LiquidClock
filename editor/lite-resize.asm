; lite-resize arm64e unslid VA [0x6cb88,0x6cdf8)
0006cb88 pacibsp                                                
0006cb8c stp       d11, d10, [sp, #-0x60]!                      
0006cb90 stp       d9, d8, [sp, #0x10]                          
0006cb94 stp       x24, x23, [sp, #0x20]                        
0006cb98 stp       x22, x21, [sp, #0x30]                        
0006cb9c stp       x20, x19, [sp, #0x40]                        
0006cba0 stp       x29, x30, [sp, #0x50]                        
0006cba4 add       x29, sp, #0x50                               
0006cba8 mov       x20, x0                                      
0006cbac mov       x0, x2                                       
0006cbb0 bl        #0xa4704                                      ; _objc_retain
0006cbb4 mov       x19, x0                                      
0006cbb8 bl        #0xb0220                                      ; objc_msgSend$state
0006cbbc cmp       x0, #1                                       
0006cbc0 b.ne      #0x6cc30                                     
0006cbc4 mov       x0, x20                                      
0006cbc8 bl        #0xb0220                                      ; objc_msgSend$state
0006cbcc mov       x29, x29                                     
0006cbd0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cbd4 mov       x21, x0                                      
0006cbd8 bl        #0xaade0                                      ; objc_msgSend$progress
0006cbdc fmov      d8, d0                                       
0006cbe0 mov       x0, x20                                      
0006cbe4 bl        #0xb0220                                      ; objc_msgSend$state
0006cbe8 mov       x29, x29                                     
0006cbec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cbf0 mov       x22, x0                                      
0006cbf4 fmov      d0, d8                                       
0006cbf8 bl        #0xaef40                                      ; objc_msgSend$setStartProgress:
0006cbfc mov       x0, x22                                      
0006cc00 bl        #0xa46f4                                      ; _objc_release
0006cc04 mov       x0, x21                                      
0006cc08 bl        #0xa46f4                                      ; _objc_release
0006cc0c mov       x0, x20                                      
0006cc10 bl        #0xb0220                                      ; objc_msgSend$state
0006cc14 mov       x29, x29                                     
0006cc18 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cc1c mov       x21, x0                                      
0006cc20 mov       w2, #1                                       
0006cc24 bl        #0xae9a0                                      ; objc_msgSend$setResizing:
0006cc28 mov       x0, x21                                      
0006cc2c bl        #0xa46f4                                      ; _objc_release
0006cc30 mov       x0, x20                                      
0006cc34 bl        #0xb0220                                      ; objc_msgSend$state
0006cc38 mov       x29, x29                                     
0006cc3c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cc40 mov       x21, x0                                      
0006cc44 bl        #0xb0160                                      ; objc_msgSend$startProgress
0006cc48 fmov      d8, d0                                       
0006cc4c mov       x0, x20                                      
0006cc50 bl        #0xb1920                                      ; objc_msgSend$view
0006cc54 mov       x29, x29                                     
0006cc58 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cc5c mov       x22, x0                                      
0006cc60 mov       x0, x19                                      
0006cc64 mov       x2, x22                                      
0006cc68 bl        #0xb10e0                                      ; objc_msgSend$translationInView:
0006cc6c fmov      d9, d1                                       
0006cc70 mov       x0, x20                                      
0006cc74 bl        #0xb0220                                      ; objc_msgSend$state
0006cc78 mov       x29, x29                                     
0006cc7c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cc80 mov       x23, x0                                      
0006cc84 bl        #0xa9b40                                      ; objc_msgSend$maximumHeight
0006cc88 fmov      d10, d0                                      
0006cc8c mov       x0, x20                                      
0006cc90 bl        #0xb0220                                      ; objc_msgSend$state
0006cc94 mov       x29, x29                                     
0006cc98 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cc9c mov       x24, x0                                      
0006cca0 bl        #0xa9c60                                      ; objc_msgSend$minimumHeight
0006cca4 fsub      d10, d10, d0                                 
0006cca8 mov       x0, x24                                      
0006ccac bl        #0xa46f4                                      ; _objc_release
0006ccb0 mov       x0, x23                                      
0006ccb4 bl        #0xa46f4                                      ; _objc_release
0006ccb8 fmov      d11, #1.00000000                             
0006ccbc fmaxnm    d0, d10, d11                                 
0006ccc0 fdiv      d0, d9, d0                                   
0006ccc4 fadd      d8, d8, d0                                   
0006ccc8 mov       x0, x22                                      
0006cccc bl        #0xa46f4                                      ; _objc_release
0006ccd0 mov       x0, x21                                      
0006ccd4 bl        #0xa46f4                                      ; _objc_release
0006ccd8 movi      d0, #0000000000000000                        
0006ccdc fmaxnm    d0, d8, d0                                   
0006cce0 fcmp      d0, d11                                      
0006cce4 fcsel     d8, d11, d0, gt                              
0006cce8 mov       x0, x20                                      
0006ccec bl        #0xb0220                                      ; objc_msgSend$state
0006ccf0 mov       x29, x29                                     
0006ccf4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ccf8 mov       x21, x0                                      
0006ccfc fmov      d0, d8                                       
0006cd00 bl        #0xae640                                      ; objc_msgSend$setProgress:
0006cd04 mov       x0, x21                                      
0006cd08 bl        #0xa46f4                                      ; _objc_release
0006cd0c mov       x0, x19                                      
0006cd10 bl        #0xb0220                                      ; objc_msgSend$state
0006cd14 cmp       x0, #4                                       
0006cd18 b.ne      #0x6cd64                                     
0006cd1c mov       x0, x20                                      
0006cd20 bl        #0xb0220                                      ; objc_msgSend$state
0006cd24 mov       x29, x29                                     
0006cd28 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cd2c mov       x21, x0                                      
0006cd30 bl        #0xb0160                                      ; objc_msgSend$startProgress
0006cd34 fmov      d8, d0                                       
0006cd38 mov       x0, x20                                      
0006cd3c bl        #0xb0220                                      ; objc_msgSend$state
0006cd40 mov       x29, x29                                     
0006cd44 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cd48 mov       x22, x0                                      
0006cd4c fmov      d0, d8                                       
0006cd50 bl        #0xae640                                      ; objc_msgSend$setProgress:
0006cd54 mov       x0, x22                                      
0006cd58 bl        #0xa46f4                                      ; _objc_release
0006cd5c mov       x0, x21                                      
0006cd60 bl        #0xa46f4                                      ; _objc_release
0006cd64 mov       x0, x19                                      
0006cd68 bl        #0xb0220                                      ; objc_msgSend$state
0006cd6c cmp       x0, #3                                       
0006cd70 b.eq      #0x6cd84                                     
0006cd74 mov       x0, x19                                      
0006cd78 bl        #0xb0220                                      ; objc_msgSend$state
0006cd7c cmp       x0, #4                                       
0006cd80 b.ne      #0x6cda8                                     
0006cd84 mov       x0, x20                                      
0006cd88 bl        #0xb0220                                      ; objc_msgSend$state
0006cd8c mov       x29, x29                                     
0006cd90 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cd94 mov       x21, x0                                      
0006cd98 mov       w2, #0                                       
0006cd9c bl        #0xae9a0                                      ; objc_msgSend$setResizing:
0006cda0 mov       x0, x21                                      
0006cda4 bl        #0xa46f4                                      ; _objc_release
0006cda8 mov       x0, x20                                      
0006cdac bl        #0xb0220                                      ; objc_msgSend$state
0006cdb0 mov       x29, x29                                     
0006cdb4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cdb8 mov       x20, x0                                      
0006cdbc bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006cdc0 mov       x0, x20                                      
0006cdc4 bl        #0xa46f4                                      ; _objc_release
0006cdc8 mov       x0, x19                                      
0006cdcc ldp       x29, x30, [sp, #0x50]                        
0006cdd0 ldp       x20, x19, [sp, #0x40]                        
0006cdd4 ldp       x22, x21, [sp, #0x30]                        
0006cdd8 ldp       x24, x23, [sp, #0x20]                        
0006cddc ldp       d9, d8, [sp, #0x10]                          
0006cde0 ldp       d11, d10, [sp], #0x60                        
0006cde4 autibsp                                                
0006cde8 eor       x16, x30, x30, lsl #1                        
0006cdec tbz       x16, #0x3e, #0x6cdf4                         
0006cdf0 brk       #0xc471                                      
0006cdf4 b         #0xa46f4                                      ; _objc_release
