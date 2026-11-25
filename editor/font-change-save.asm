; font-change-save arm64e unslid VA [0x6adc8,0x6af38)
0006adc8 pacibsp                                                
0006adcc sub       sp, sp, #0x50                                
0006add0 stp       d9, d8, [sp, #0x10]                          
0006add4 stp       x22, x21, [sp, #0x20]                        
0006add8 stp       x20, x19, [sp, #0x30]                        
0006addc stp       x29, x30, [sp, #0x40]                        
0006ade0 add       x29, sp, #0x40                               
0006ade4 mov       x19, x0                                      
0006ade8 mov       x0, x2                                       
0006adec bl        #0xa4704                                      ; _objc_retain
0006adf0 mov       x20, x0                                      
0006adf4 mov       x0, x19                                      
0006adf8 bl        #0xaff00                                      ; objc_msgSend$softnessSlider
0006adfc mov       x29, x29                                     
0006ae00 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ae04 mov       x22, x0                                      
0006ae08 bl        #0xa46f4                                      ; _objc_release
0006ae0c mov       x0, x20                                      
0006ae10 bl        #0xb16c0                                      ; objc_msgSend$value
0006ae14 frinta    s0, s0                                       
0006ae18 fcvt      d8, s0                                       
0006ae1c mov       x0, x19                                      
0006ae20 bl        #0xb0220                                      ; objc_msgSend$state
0006ae24 mov       x29, x29                                     
0006ae28 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ae2c mov       x21, x0                                      
0006ae30 fmov      d0, d8                                       
0006ae34 cmp       x22, x20                                     
0006ae38 b.eq      #0x6ae44                                     
0006ae3c bl        #0xafa20                                      ; objc_msgSend$setWeight:
0006ae40 b         #0x6ae48                                     
0006ae44 bl        #0xaed80                                      ; objc_msgSend$setSoftness:
0006ae48 mov       x0, x21                                      
0006ae4c bl        #0xa46f4                                      ; _objc_release
0006ae50 adrp      x8, #0xec000                                 
0006ae54 ldr       x21, [x8, #0x518]                             ; &_OBJC_CLASS_$_NSString
0006ae58 mov       x0, x20                                      
0006ae5c bl        #0xb16c0                                      ; objc_msgSend$value
0006ae60 frinta    s0, s0                                       
0006ae64 fcvt      d0, s0                                       
0006ae68 str       d0, [sp]                                     
0006ae6c adrp      x2, #0xdb000                                 
0006ae70 add       x2, x2, #0xdf0                                ; @'%.0f'
0006ae74 mov       x0, x21                                      
0006ae78 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
0006ae7c mov       x29, x29                                     
0006ae80 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006ae84 mov       x21, x0                                      
0006ae88 mov       x0, x20                                      
0006ae8c mov       x2, x21                                      
0006ae90 bl        #0xabb80                                      ; objc_msgSend$setAccessibilityValue:
0006ae94 mov       x0, x21                                      
0006ae98 bl        #0xa46f4                                      ; _objc_release
0006ae9c mov       x0, x19                                      
0006aea0 bl        #0xb0220                                      ; objc_msgSend$state
0006aea4 mov       x29, x29                                     
0006aea8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006aeac mov       x21, x0                                      
0006aeb0 bl        #0xb0060                                      ; objc_msgSend$stageProgress
0006aeb4 mov       x0, x21                                      
0006aeb8 bl        #0xa46f4                                      ; _objc_release
0006aebc bl        #0x60108                                     
0006aec0 mov       x0, x19                                      
0006aec4 bl        #0xa9200                                      ; objc_msgSend$layout
0006aec8 mov       x0, x20                                      
0006aecc ldp       x29, x30, [sp, #0x40]                        
0006aed0 ldp       x20, x19, [sp, #0x30]                        
0006aed4 ldp       x22, x21, [sp, #0x20]                        
0006aed8 ldp       d9, d8, [sp, #0x10]                          
0006aedc add       sp, sp, #0x50                                
0006aee0 autibsp                                                
0006aee4 eor       x16, x30, x30, lsl #1                        
0006aee8 tbz       x16, #0x3e, #0x6aef0                         
0006aeec brk       #0xc471                                      
0006aef0 b         #0xa46f4                                      ; _objc_release
0006aef4 pacibsp                                                
0006aef8 stp       x20, x19, [sp, #-0x20]!                      
0006aefc stp       x29, x30, [sp, #0x10]                        
0006af00 add       x29, sp, #0x10                               
0006af04 bl        #0xb0220                                      ; objc_msgSend$state
0006af08 mov       x29, x29                                     
0006af0c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006af10 mov       x19, x0                                      
0006af14 bl        #0xaa860                                      ; objc_msgSend$persistProgress
0006af18 mov       x0, x19                                      
0006af1c ldp       x29, x30, [sp, #0x10]                        
0006af20 ldp       x20, x19, [sp], #0x20                        
0006af24 autibsp                                                
0006af28 eor       x16, x30, x30, lsl #1                        
0006af2c tbz       x16, #0x3e, #0x6af34                         
0006af30 brk       #0xc471                                      
0006af34 b         #0xa46f4                                      ; _objc_release
