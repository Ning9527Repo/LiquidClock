; lite-show-font arm64e unslid VA [0x6cdf8,0x6d098)
0006cdf8 pacibsp                                                
0006cdfc sub       sp, sp, #0x50                                
0006ce00 stp       x24, x23, [sp, #0x10]                        
0006ce04 stp       x22, x21, [sp, #0x20]                        
0006ce08 stp       x20, x19, [sp, #0x30]                        
0006ce0c stp       x29, x30, [sp, #0x40]                        
0006ce10 add       x29, sp, #0x40                               
0006ce14 mov       x19, x0                                      
0006ce18 adrp      x8, #0xd4000                                 
0006ce1c ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
0006ce20 ldr       x8, [x8]                                      ; &___objc_personality_v0
0006ce24 str       x8, [sp, #8]                                 
0006ce28 bl        #0xaac00                                      ; objc_msgSend$presentedViewController
0006ce2c mov       x29, x29                                     
0006ce30 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ce34 cbz       x0, #0x6ce78                                 
0006ce38 ldr       x8, [sp, #8]                                 
0006ce3c adrp      x9, #0xd4000                                 
0006ce40 ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006ce44 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006ce48 cmp       x9, x8                                       
0006ce4c b.ne      #0x6d094                                     
0006ce50 ldp       x29, x30, [sp, #0x40]                        
0006ce54 ldp       x20, x19, [sp, #0x30]                        
0006ce58 ldp       x22, x21, [sp, #0x20]                        
0006ce5c ldp       x24, x23, [sp, #0x10]                        
0006ce60 add       sp, sp, #0x50                                
0006ce64 autibsp                                                
0006ce68 eor       x16, x30, x30, lsl #1                        
0006ce6c tbz       x16, #0x3e, #0x6ce74                         
0006ce70 brk       #0xc471                                      
0006ce74 b         #0xa46f4                                      ; _objc_release
0006ce78 mov       x0, x19                                      
0006ce7c bl        #0xb0220                                      ; objc_msgSend$state
0006ce80 mov       x29, x29                                     
0006ce84 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ce88 mov       x20, x0                                      
0006ce8c bl        #0xab5a0                                      ; objc_msgSend$resizing
0006ce90 mov       x21, x0                                      
0006ce94 mov       x0, x20                                      
0006ce98 bl        #0xa46f4                                      ; _objc_release
0006ce9c tbnz      w21, #0, #0x6d064                            
0006cea0 adrp      x8, #0xec000                                 
0006cea4 ldr       x0, [x8, #0x818]                              ; &LGClockLiteFontController
0006cea8 bl        #0xa46d4                                      ; _objc_opt_new
0006ceac mov       x20, x0                                      
0006ceb0 mov       x0, x19                                      
0006ceb4 bl        #0xb0220                                      ; objc_msgSend$state
0006ceb8 mov       x29, x29                                     
0006cebc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cec0 mov       x21, x0                                      
0006cec4 mov       x0, x20                                      
0006cec8 mov       x2, x21                                      
0006cecc bl        #0xaefc0                                      ; objc_msgSend$setState:
0006ced0 mov       x0, x21                                      
0006ced4 bl        #0xa46f4                                      ; _objc_release
0006ced8 mov       x0, x20                                      
0006cedc mov       w2, #1                                       
0006cee0 bl        #0xadc60                                      ; objc_msgSend$setModalPresentationStyle:
0006cee4 mov       w0, #2                                       
0006cee8 mov       w1, #0xf                                     
0006ceec mov       w2, #0                                       
0006cef0 mov       w3, #0                                       
0006cef4 bl        #0xa30c0                                     
0006cef8 cbz       w0, #0x6d048                                 
0006cefc adrp      x23, #0xec000                                
0006cf00 ldr       x0, [x23, #0x7e8]                             ; &_OBJC_CLASS_$_UISheetPresentationControllerDetent
0006cf04 bl        #0xa9bc0                                      ; objc_msgSend$mediumDetent
0006cf08 mov       x29, x29                                     
0006cf0c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cf10 mov       x21, x0                                      
0006cf14 adrp      x8, #0xd4000                                 
0006cf18 ldr       x8, [x8, #0x878]                              ; &_UISheetPresentationControllerDetentIdentifierMedium
0006cf1c ldr       x0, [x8]                                      ; &___objc_personality_v0
0006cf20 bl        #0xa4704                                      ; _objc_retain
0006cf24 mov       x22, x0                                      
0006cf28 ldr       x0, [x23, #0x7e8]                             ; &_OBJC_CLASS_$_UISheetPresentationControllerDetent
0006cf2c adrp      x8, #0xe8000                                 
0006cf30 ldr       x1, [x8, #0x810]                              ; SEL _detentWithIdentifier:constant:
0006cf34 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0006cf38 tbz       w0, #0, #0x6cf78                             
0006cf3c mov       x0, x22                                      
0006cf40 bl        #0xa46f4                                      ; _objc_release
0006cf44 ldr       x0, [x23, #0x7e8]                             ; &_OBJC_CLASS_$_UISheetPresentationControllerDetent
0006cf48 adrp      x22, #0xdb000                                
0006cf4c add       x22, x22, #0xfb0                              ; @'LGClockLiteFont'
0006cf50 mov       x8, #0x406f000000000000                      
0006cf54 fmov      d0, x8                                       
0006cf58 mov       x2, x22                                      
0006cf5c bl        #0xa4b20                                      ; objc_msgSend$_detentWithIdentifier:constant:
0006cf60 mov       x29, x29                                     
0006cf64 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cf68 mov       x23, x0                                      
0006cf6c mov       x0, x21                                      
0006cf70 bl        #0xa46f4                                      ; _objc_release
0006cf74 mov       x21, x23                                     
0006cf78 str       x21, [sp]                                    
0006cf7c adrp      x8, #0xec000                                 
0006cf80 ldr       x0, [x8, #0x5c8]                              ; &_OBJC_CLASS_$_NSArray
0006cf84 mov       x2, sp                                       
0006cf88 mov       w3, #1                                       
0006cf8c bl        #0xa55a0                                      ; objc_msgSend$arrayWithObjects:count:
0006cf90 mov       x29, x29                                     
0006cf94 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cf98 mov       x23, x0                                      
0006cf9c mov       x0, x20                                      
0006cfa0 bl        #0xafd80                                      ; objc_msgSend$sheetPresentationController
0006cfa4 mov       x29, x29                                     
0006cfa8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cfac mov       x24, x0                                      
0006cfb0 mov       x2, x23                                      
0006cfb4 bl        #0xac8a0                                      ; objc_msgSend$setDetents:
0006cfb8 mov       x0, x24                                      
0006cfbc bl        #0xa46f4                                      ; _objc_release
0006cfc0 mov       x0, x23                                      
0006cfc4 bl        #0xa46f4                                      ; _objc_release
0006cfc8 mov       x0, x20                                      
0006cfcc bl        #0xafd80                                      ; objc_msgSend$sheetPresentationController
0006cfd0 mov       x29, x29                                     
0006cfd4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cfd8 mov       x23, x0                                      
0006cfdc mov       x2, x22                                      
0006cfe0 bl        #0xad580                                      ; objc_msgSend$setLargestUndimmedDetentIdentifier:
0006cfe4 mov       x0, x23                                      
0006cfe8 bl        #0xa46f4                                      ; _objc_release
0006cfec mov       x0, x20                                      
0006cff0 bl        #0xafd80                                      ; objc_msgSend$sheetPresentationController
0006cff4 mov       x29, x29                                     
0006cff8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006cffc mov       x23, x0                                      
0006d000 mov       w2, #1                                       
0006d004 bl        #0xae4a0                                      ; objc_msgSend$setPrefersGrabberVisible:
0006d008 mov       x0, x23                                      
0006d00c bl        #0xa46f4                                      ; _objc_release
0006d010 mov       x0, x20                                      
0006d014 bl        #0xafd80                                      ; objc_msgSend$sheetPresentationController
0006d018 mov       x29, x29                                     
0006d01c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006d020 mov       x23, x0                                      
0006d024 adrp      x8, #0xbd000                                 
0006d028 ldr       d0, [x8, #0xe30]                             
0006d02c bl        #0xae420                                      ; objc_msgSend$setPreferredCornerRadius:
0006d030 mov       x0, x23                                      
0006d034 bl        #0xa46f4                                      ; _objc_release
0006d038 mov       x0, x22                                      
0006d03c bl        #0xa46f4                                      ; _objc_release
0006d040 mov       x0, x21                                      
0006d044 bl        #0xa46f4                                      ; _objc_release
0006d048 mov       x0, x19                                      
0006d04c mov       x2, x20                                      
0006d050 mov       w3, #1                                       
0006d054 mov       x4, #0                                       
0006d058 bl        #0xaab80                                      ; objc_msgSend$presentViewController:animated:completion:
0006d05c mov       x0, x20                                      
0006d060 bl        #0xa46f4                                      ; _objc_release
0006d064 ldr       x8, [sp, #8]                                 
0006d068 adrp      x9, #0xd4000                                 
0006d06c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
0006d070 ldr       x9, [x9]                                      ; &___objc_personality_v0
0006d074 cmp       x9, x8                                       
0006d078 b.ne      #0x6d094                                     
0006d07c ldp       x29, x30, [sp, #0x40]                        
0006d080 ldp       x20, x19, [sp, #0x30]                        
0006d084 ldp       x22, x21, [sp, #0x20]                        
0006d088 ldp       x24, x23, [sp, #0x10]                        
0006d08c add       sp, sp, #0x50                                
0006d090 retab                                                  
0006d094 bl        #0xa41d4                                      ; ___stack_chk_fail
