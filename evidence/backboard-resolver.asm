000045f0 pacibsp                                                
000045f4 sub       sp, sp, #0xa0                                
000045f8 stp       x29, x30, [sp, #0x90]                        
000045fc add       x29, sp, #0x90                               
00004600 adrp      x8, #0x38000                                 
00004604 ldrb      w8, [x8, #0x3c0]                              ; __ZL8g_inited|__ZL8g_inited
00004608 tbz       w8, #0, #0x4624                              
0000460c b         #0x4610                                      
00004610 mov       w8, #1                                       
00004614 and       w8, w8, #1                                   
00004618 and       w8, w8, #1                                   
0000461c sturb     w8, [x29, #-1]                               
00004620 b         #0x48a4                                      
00004624 bl        #0x27e1c                                      ; __dyld_image_count
00004628 stur      w0, [x29, #-8]                               
0000462c stur      wzr, [x29, #-0xc]                            
00004630 b         #0x4634                                      
00004634 ldur      w8, [x29, #-0xc]                             
00004638 ldur      w9, [x29, #-8]                               
0000463c subs      w8, w8, w9                                   
00004640 b.hs      #0x4884                                      
00004644 b         #0x4648                                      
00004648 ldur      w0, [x29, #-0xc]                             
0000464c bl        #0x27e2c                                      ; __dyld_get_image_name
00004650 stur      x0, [x29, #-0x18]                            
00004654 ldur      x8, [x29, #-0x18]                            
00004658 cbz       x8, #0x4678                                  
0000465c b         #0x4660                                      
00004660 ldur      x0, [x29, #-0x18]                            
00004664 adrp      x1, #0x29000                                 
00004668 add       x1, x1, #0x203                                ; 'QuartzCore'
0000466c bl        #0x48b8                                       ; __Z6strstrB6v15006Ua9enable_ifIXLb1EEEPKcS0_||__Z6strstrB6v15006Ua9enable_ifIXLb1EEEPKcS0_|
00004670 cbnz      x0, #0x467c                                  
00004674 b         #0x4678                                      
00004678 b         #0x4874                                      
0000467c ldur      w0, [x29, #-0xc]                             
00004680 bl        #0x27e3c                                      ; __dyld_get_image_vmaddr_slide
00004684 adrp      x8, #0x38000                                 
00004688 str       x0, [x8, #0x3c8]                             
0000468c ldur      w0, [x29, #-0xc]                             
00004690 bl        #0x27e4c                                      ; __dyld_get_image_header
00004694 stur      x0, [x29, #-0x20]                            
00004698 sub       x2, x29, #0x28                               
0000469c stur      xzr, [x29, #-0x28]                           
000046a0 ldur      x0, [x29, #-0x20]                            
000046a4 adrp      x1, #0x29000                                 
000046a8 add       x1, x1, #0x20e                                ; '__TEXT'
000046ac bl        #0x27e5c                                      ; _getsegmentdata
000046b0 stur      x0, [x29, #-0x30]                            
000046b4 ldur      x8, [x29, #-0x30]                            
000046b8 cbz       x8, #0x46dc                                  
000046bc b         #0x46c0                                      
000046c0 ldur      x8, [x29, #-0x30]                            
000046c4 adrp      x9, #0x38000                                 
000046c8 str       x8, [x9, #0x3d0]                             
000046cc ldur      x8, [x29, #-0x28]                            
000046d0 adrp      x9, #0x38000                                 
000046d4 str       x8, [x9, #0x3d8]                             
000046d8 b         #0x46dc                                      
000046dc ldur      x8, [x29, #-0x20]                            
000046e0 add       x8, x8, #0x20                                
000046e4 stur      x8, [x29, #-0x38]                            
000046e8 stur      wzr, [x29, #-0x3c]                           
000046ec b         #0x46f0                                      
000046f0 ldur      w8, [x29, #-0x3c]                            
000046f4 ldur      x9, [x29, #-0x20]                            
000046f8 ldr       w9, [x9, #0x10]                               ; SEL boolValue
000046fc subs      w8, w8, w9                                   
00004700 b.hs      #0x47f8                                      
00004704 b         #0x4708                                      
00004708 ldur      x8, [x29, #-0x38]                            
0000470c str       x8, [sp, #0x48]                              
00004710 ldr       x8, [sp, #0x48]                              
00004714 ldr       w8, [x8]                                     
00004718 subs      w8, w8, #0x19                                
0000471c b.ne      #0x47cc                                      
00004720 b         #0x4724                                      
00004724 ldr       x8, [sp, #0x48]                              
00004728 str       x8, [sp, #0x40]                              
0000472c ldr       x8, [sp, #0x40]                              
00004730 ldr       x8, [x8, #0x18]                              
00004734 adrp      x9, #0x38000                                 
00004738 ldr       x9, [x9, #0x3c8]                              ; __ZL9g_qcSlide|__ZL9g_qcSlide
0000473c add       x8, x8, x9                                   
00004740 str       x8, [sp, #0x38]                              
00004744 ldr       x8, [sp, #0x38]                              
00004748 ldr       x9, [sp, #0x40]                              
0000474c ldr       x9, [x9, #0x20]                               ; SEL bytes
00004750 add       x8, x8, x9                                   
00004754 str       x8, [sp, #0x30]                              
00004758 adrp      x8, #0x38000                                 
0000475c ldr       x8, [x8, #0x3e0]                              ; __ZL11g_qcImageLo|__ZL11g_qcImageLo
00004760 cbz       x8, #0x4780                                  
00004764 b         #0x4768                                      
00004768 ldr       x8, [sp, #0x38]                              
0000476c adrp      x9, #0x38000                                 
00004770 ldr       x9, [x9, #0x3e0]                              ; __ZL11g_qcImageLo|__ZL11g_qcImageLo
00004774 subs      x8, x8, x9                                   
00004778 b.hs      #0x4790                                      
0000477c b         #0x4780                                      
00004780 ldr       x8, [sp, #0x38]                              
00004784 adrp      x9, #0x38000                                 
00004788 str       x8, [x9, #0x3e0]                             
0000478c b         #0x4790                                      
00004790 adrp      x8, #0x38000                                 
00004794 ldr       x8, [x8, #0x3e8]                              ; __ZL11g_qcImageHi|__ZL11g_qcImageHi
00004798 cbz       x8, #0x47b8                                  
0000479c b         #0x47a0                                      
000047a0 ldr       x8, [sp, #0x30]                              
000047a4 adrp      x9, #0x38000                                 
000047a8 ldr       x9, [x9, #0x3e8]                              ; __ZL11g_qcImageHi|__ZL11g_qcImageHi
000047ac subs      x8, x8, x9                                   
000047b0 b.ls      #0x47c8                                      
000047b4 b         #0x47b8                                      
000047b8 ldr       x8, [sp, #0x30]                              
000047bc adrp      x9, #0x38000                                 
000047c0 str       x8, [x9, #0x3e8]                             
000047c4 b         #0x47c8                                      
000047c8 b         #0x47cc                                      
000047cc ldr       x8, [sp, #0x48]                              
000047d0 ldr       w8, [x8, #4]                                 
000047d4 mov       x9, x8                                       
000047d8 ldur      x8, [x29, #-0x38]                            
000047dc add       x8, x8, x9                                   
000047e0 stur      x8, [x29, #-0x38]                            
000047e4 b         #0x47e8                                      
000047e8 ldur      w8, [x29, #-0x3c]                            
000047ec add       w8, w8, #1                                   
000047f0 stur      w8, [x29, #-0x3c]                            
000047f4 b         #0x46f0                                      
000047f8 adrp      x8, #0x38000                                 
000047fc ldr       x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004800 subs      x9, x9, #0                                   
00004804 cset      w9, ne                                       
00004808 adrp      x10, #0x38000                                
0000480c str       x10, [sp, #0x28]                             
00004810 strb      w9, [x10, #0x3c0]                            
00004814 adrp      x9, #0x38000                                 
00004818 ldr       x13, [x9, #0x3c8]                             ; __ZL9g_qcSlide|__ZL9g_qcSlide
0000481c ldr       x12, [x8, #0x3d0]                             ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004820 adrp      x8, #0x38000                                 
00004824 ldr       x11, [x8, #0x3d8]                             ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00004828 adrp      x8, #0x38000                                 
0000482c ldr       x10, [x8, #0x3e0]                             ; __ZL11g_qcImageLo|__ZL11g_qcImageLo
00004830 adrp      x8, #0x38000                                 
00004834 ldr       x8, [x8, #0x3e8]                              ; __ZL11g_qcImageHi|__ZL11g_qcImageHi
00004838 mov       x9, sp                                       
0000483c str       x13, [x9]                                    
00004840 str       x12, [x9, #8]                                
00004844 str       x11, [x9, #0x10]                             
00004848 str       x10, [x9, #0x18]                             
0000484c str       x8, [x9, #0x20]                              
00004850 adrp      x0, #0x29000                                 
00004854 add       x0, x0, #0x215                                ; 'init: QuartzCore slide=%#tx __TEXT=%p size=%#zx fullImage=[%p,%p)'
00004858 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000485c ldr       x8, [sp, #0x28]                              
00004860 ldrb      w8, [x8, #0x3c0]                             
00004864 and       w8, w8, #1                                   
00004868 and       w8, w8, #1                                   
0000486c sturb     w8, [x29, #-1]                               
00004870 b         #0x48a4                                      
00004874 ldur      w8, [x29, #-0xc]                             
00004878 add       w8, w8, #1                                   
0000487c stur      w8, [x29, #-0xc]                             
00004880 b         #0x4634                                      
00004884 adrp      x0, #0x29000                                 
00004888 add       x0, x0, #0x257                                ; 'init: QuartzCore image not found'
0000488c bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00004890 mov       w8, #0                                       
00004894 and       w8, w8, #1                                   
00004898 and       w8, w8, #1                                   
0000489c sturb     w8, [x29, #-1]                               
000048a0 b         #0x48a4                                      
000048a4 ldurb     w8, [x29, #-1]                               
000048a8 and       w0, w8, #1                                   
000048ac ldp       x29, x30, [sp, #0x90]                        
000048b0 add       sp, sp, #0xa0                                
000048b4 retab                                                  
000048b8 pacibsp                                                
000048bc sub       sp, sp, #0x20                                
000048c0 stp       x29, x30, [sp, #0x10]                        
000048c4 add       x29, sp, #0x10                               
000048c8 str       x0, [sp, #8]                                 
000048cc str       x1, [sp]                                     
000048d0 ldr       x0, [sp, #8]                                 
000048d4 ldr       x1, [sp]                                     
000048d8 bl        #0x6e94                                       ; __Z15__libcpp_strstrB6v15006PKcS0_||__Z15__libcpp_strstrB6v15006PKcS0_|
000048dc ldp       x29, x30, [sp, #0x10]                        
000048e0 add       sp, sp, #0x20                                
000048e4 retab                                                  
000048e8 pacibsp                                                
000048ec sub       sp, sp, #0x30                                
000048f0 stp       x29, x30, [sp, #0x20]                        
000048f4 add       x29, sp, #0x20                               
000048f8 stur      x0, [x29, #-8]                               
000048fc adrp      x8, #0x3a000                                 
00004900 add       x8, x8, #0x588                                ; _gLGBackboardDebugLogging
00004904 ldrb      w8, [x8]                                      ; _gLGBackboardDebugLogging
00004908 tbnz      w8, #0, #0x4914                              
0000490c b         #0x4910                                      
00004910 b         #0x4980                                      
00004914 adrp      x0, #0x29000                                 
00004918 add       x0, x0, #0x817                                ; '/var/mobile/Library/Accessibility/lg-backboardd.log'
0000491c adrp      x1, #0x29000                                 
00004920 add       x1, x1, #0x84b                                ; 'a'
00004924 bl        #0x27e6c                                      ; _fopen
00004928 str       x0, [sp, #0x10]                              
0000492c ldr       x8, [sp, #0x10]                              
00004930 cbnz      x8, #0x493c                                  
00004934 b         #0x4938                                      
00004938 b         #0x4980                                      
0000493c ldr       x1, [sp, #0x10]                              
00004940 adrp      x0, #0x29000                                 
00004944 add       x0, x0, #0x84d                                ; '[LGSYM] '
00004948 bl        #0x27e7c                                      ; _fputs
0000494c add       x9, sp, #8                                   
00004950 add       x8, x29, #0x10                               
00004954 str       x8, [x9]                                     
00004958 ldr       x0, [sp, #0x10]                              
0000495c ldur      x1, [x29, #-8]                               
00004960 ldr       x2, [sp, #8]                                 
00004964 bl        #0x27e8c                                      ; _vfprintf
00004968 ldr       x1, [sp, #0x10]                              
0000496c mov       w0, #0xa                                     
00004970 bl        #0x27e9c                                      ; _fputc
00004974 ldr       x0, [sp, #0x10]                              
00004978 bl        #0x27eac                                      ; _fclose
0000497c b         #0x4980                                      
00004980 ldp       x29, x30, [sp, #0x20]                        
00004984 add       sp, sp, #0x30                                
00004988 retab                                                  
0000498c pacibsp                                                
00004990 sub       sp, sp, #0x30                                
00004994 stp       x29, x30, [sp, #0x20]                        
00004998 add       x29, sp, #0x20                               
0000499c stur      x0, [x29, #-8]                               
000049a0 ldur      x1, [x29, #-8]                               
000049a4 mov       x0, #-2                                      
000049a8 bl        #0x27dbc                                      ; _dlsym
000049ac str       x0, [sp, #0x10]                              
000049b0 ldur      x10, [x29, #-8]                              
000049b4 ldr       x8, [sp, #0x10]                              
000049b8 mov       x9, sp                                       
000049bc str       x10, [x9]                                    
000049c0 str       x8, [x9, #8]                                 
000049c4 adrp      x0, #0x29000                                 
000049c8 add       x0, x0, #0x278                                ; 'dlsym(%s) = %p'
000049cc bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000049d0 ldr       x0, [sp, #0x10]                              
000049d4 ldp       x29, x30, [sp, #0x20]                        
000049d8 add       sp, sp, #0x30                                
000049dc retab                                                  
000049e0 sub       sp, sp, #0x40                                
000049e4 str       x0, [sp, #0x30]                              
000049e8 str       x1, [sp, #0x28]                              
000049ec str       x2, [sp, #0x20]                              
000049f0 adrp      x8, #0x38000                                 
000049f4 ldrb      w8, [x8, #0x3c0]                              ; __ZL8g_inited|__ZL8g_inited
000049f8 tbnz      w8, #0, #0x4a08                              
000049fc b         #0x4a00                                      
00004a00 str       xzr, [sp, #0x38]                             
00004a04 b         #0x4af8                                      
00004a08 adrp      x8, #0x38000                                 
00004a0c ldr       x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004a10 adrp      x10, #0x38000                                
00004a14 ldr       x10, [x10, #0x3d8]                            ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00004a18 add       x9, x9, x10                                  
00004a1c ldr       x10, [sp, #0x20]                             
00004a20 subs      x9, x9, x10                                  
00004a24 str       x9, [sp, #0x18]                              
00004a28 ldr       x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004a2c str       x8, [sp, #0x10]                              
00004a30 b         #0x4a34                                      
00004a34 ldr       x8, [sp, #0x10]                              
00004a38 ldr       x9, [sp, #0x18]                              
00004a3c subs      x8, x8, x9                                   
00004a40 b.hi      #0x4af0                                      
00004a44 b         #0x4a48                                      
00004a48 mov       w8, #1                                       
00004a4c strb      w8, [sp, #0xf]                               
00004a50 str       xzr, [sp]                                    
00004a54 b         #0x4a58                                      
00004a58 ldr       x8, [sp]                                     
00004a5c ldr       x9, [sp, #0x20]                              
00004a60 subs      x8, x8, x9                                   
00004a64 b.hs      #0x4ac4                                      
00004a68 b         #0x4a6c                                      
00004a6c ldr       x8, [sp, #0x28]                              
00004a70 ldr       x9, [sp]                                     
00004a74 ldrsb     w8, [x8, x9]                                 
00004a78 subs      w8, w8, #0x78                                
00004a7c b.ne      #0x4ab0                                      
00004a80 b         #0x4a84                                      
00004a84 ldr       x8, [sp, #0x10]                              
00004a88 ldr       x9, [sp]                                     
00004a8c ldrb      w8, [x8, x9]                                  ; SEL UTF8String
00004a90 ldr       x9, [sp, #0x30]                              
00004a94 ldr       x10, [sp]                                    
00004a98 ldrb      w9, [x9, x10]                                
00004a9c subs      w8, w8, w9                                   
00004aa0 b.eq      #0x4ab0                                      
00004aa4 b         #0x4aa8                                      
00004aa8 strb      wzr, [sp, #0xf]                              
00004aac b         #0x4ac4                                      
00004ab0 b         #0x4ab4                                      
00004ab4 ldr       x8, [sp]                                     
00004ab8 add       x8, x8, #1                                   
00004abc str       x8, [sp]                                     
00004ac0 b         #0x4a58                                      
00004ac4 ldrb      w8, [sp, #0xf]                               
00004ac8 tbz       w8, #0, #0x4adc                              
00004acc b         #0x4ad0                                      
00004ad0 ldr       x8, [sp, #0x10]                              
00004ad4 str       x8, [sp, #0x38]                              
00004ad8 b         #0x4af8                                      
00004adc b         #0x4ae0                                      
00004ae0 ldr       x8, [sp, #0x10]                              
00004ae4 add       x8, x8, #1                                   
00004ae8 str       x8, [sp, #0x10]                              
00004aec b         #0x4a34                                      
00004af0 str       xzr, [sp, #0x38]                             
00004af4 b         #0x4af8                                      
00004af8 ldr       x0, [sp, #0x38]                              
00004afc add       sp, sp, #0x40                                
00004b00 ret                                                    
00004b04 pacibsp                                                
00004b08 sub       sp, sp, #0x70                                
00004b0c stp       x29, x30, [sp, #0x60]                        
00004b10 add       x29, sp, #0x60                               
00004b14 stur      x0, [x29, #-0x10]                            
00004b18 ldur      x8, [x29, #-0x10]                            
00004b1c stur      x8, [x29, #-0x18]                            
00004b20 ldur      x8, [x29, #-0x18]                            
00004b24 ldr       w0, [x8]                                     
00004b28 bl        #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00004b2c tbnz      w0, #0, #0x4b54                              
00004b30 b         #0x4b34                                      
00004b34 ldur      x8, [x29, #-0x18]                            
00004b38 mov       x9, sp                                       
00004b3c str       x8, [x9]                                     
00004b40 adrp      x0, #0x29000                                 
00004b44 add       x0, x0, #0x287                                ; 'decodeAdrpAdd: not ADRP at %p'
00004b48 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00004b4c stur      xzr, [x29, #-8]                              
00004b50 b         #0x4c5c                                      
00004b54 ldur      x8, [x29, #-0x18]                            
00004b58 ldr       w0, [x8, #4]                                 
00004b5c bl        #0x4c94                                       ; __ZL9isADD_immj||__ZL9isADD_immj|
00004b60 tbnz      w0, #0, #0x4b8c                              
00004b64 b         #0x4b68                                      
00004b68 ldur      x8, [x29, #-0x18]                            
00004b6c add       x8, x8, #4                                   
00004b70 mov       x9, sp                                       
00004b74 str       x8, [x9]                                     
00004b78 adrp      x0, #0x29000                                 
00004b7c add       x0, x0, #0x2a5                                ; 'decodeAdrpAdd: not ADD at %p'
00004b80 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00004b84 stur      xzr, [x29, #-8]                              
00004b88 b         #0x4c5c                                      
00004b8c ldur      x8, [x29, #-0x18]                            
00004b90 ldr       w8, [x8]                                     
00004b94 stur      w8, [x29, #-0x1c]                            
00004b98 ldur      x8, [x29, #-0x18]                            
00004b9c ldr       w8, [x8, #4]                                 
00004ba0 stur      w8, [x29, #-0x20]                            
00004ba4 ldur      w8, [x29, #-0x1c]                            
00004ba8 lsr       w8, w8, #0x1d                                
00004bac and       w8, w8, #3                                   
00004bb0 mov       w8, w8                                       
00004bb4 stur      x8, [x29, #-0x28]                            
00004bb8 ldur      w8, [x29, #-0x1c]                            
00004bbc lsr       w8, w8, #5                                   
00004bc0 and       w8, w8, #0x7ffff                             
00004bc4 mov       w8, w8                                       
00004bc8 str       x8, [sp, #0x30]                              
00004bcc ldr       x9, [sp, #0x30]                              
00004bd0 ldur      x8, [x29, #-0x28]                            
00004bd4 orr       x0, x8, x9, lsl #2                           
00004bd8 mov       w1, #0x15                                    
00004bdc bl        #0x4cb8                                       ; __ZL10signExtendyi||__ZL10signExtendyi|
00004be0 lsl       x8, x0, #0xc                                 
00004be4 str       x8, [sp, #0x28]                              
00004be8 ldur      x8, [x29, #-0x18]                            
00004bec str       x8, [sp, #0x20]                              
00004bf0 ldr       x8, [sp, #0x20]                              
00004bf4 and       x8, x8, #0xfffffffffffff000                  
00004bf8 ldr       x9, [sp, #0x28]                              
00004bfc add       x8, x8, x9                                   
00004c00 str       x8, [sp, #0x18]                              
00004c04 ldur      w8, [x29, #-0x20]                            
00004c08 lsr       w8, w8, #0xa                                 
00004c0c and       w8, w8, #0xfff                               
00004c10 mov       w8, w8                                       
00004c14 str       x8, [sp, #0x10]                              
00004c18 ldur      w8, [x29, #-0x20]                            
00004c1c lsr       w8, w8, #0x16                                
00004c20 and       w8, w8, #1                                   
00004c24 mov       w8, w8                                       
00004c28 str       x8, [sp, #8]                                 
00004c2c ldr       x8, [sp, #8]                                 
00004c30 cbz       x8, #0x4c48                                  
00004c34 b         #0x4c38                                      
00004c38 ldr       x8, [sp, #0x10]                              
00004c3c lsl       x8, x8, #0xc                                 
00004c40 str       x8, [sp, #0x10]                              
00004c44 b         #0x4c48                                      
00004c48 ldr       x8, [sp, #0x18]                              
00004c4c ldr       x9, [sp, #0x10]                              
00004c50 add       x8, x8, x9                                   
00004c54 stur      x8, [x29, #-8]                               
00004c58 b         #0x4c5c                                      
00004c5c ldur      x0, [x29, #-8]                               
00004c60 ldp       x29, x30, [sp, #0x60]                        
00004c64 add       sp, sp, #0x70                                
00004c68 retab                                                  
00004c6c sub       sp, sp, #0x10                                
00004c70 str       w0, [sp, #0xc]                               
00004c74 ldr       w8, [sp, #0xc]                               
00004c78 mov       w9, #-0x61000000                             
00004c7c and       w8, w8, w9                                   
00004c80 mov       w9, #-0x70000000                             
00004c84 subs      w8, w8, w9                                   
00004c88 cset      w0, eq                                       
00004c8c add       sp, sp, #0x10                                
00004c90 ret                                                    
00004c94 sub       sp, sp, #0x10                                
00004c98 str       w0, [sp, #0xc]                               
00004c9c ldr       w8, [sp, #0xc]                               
00004ca0 and       w8, w8, #0x7f800000                          
00004ca4 mov       w9, #0x11000000                              
00004ca8 subs      w8, w8, w9                                   
00004cac cset      w0, eq                                       
00004cb0 add       sp, sp, #0x10                                
00004cb4 ret                                                    
00004cb8 sub       sp, sp, #0x20                                
00004cbc str       x0, [sp, #0x18]                              
00004cc0 str       w1, [sp, #0x14]                              
00004cc4 ldr       w8, [sp, #0x14]                              
00004cc8 subs      w9, w8, #1                                   
00004ccc mov       x8, #1                                       
00004cd0 lsl       x8, x8, x9                                   
00004cd4 str       x8, [sp, #8]                                 
00004cd8 ldr       x8, [sp, #0x18]                              
00004cdc ldr       x9, [sp, #8]                                 
00004ce0 eor       x8, x8, x9                                   
00004ce4 ldr       x9, [sp, #8]                                 
00004ce8 subs      x0, x8, x9                                   
00004cec add       sp, sp, #0x20                                
00004cf0 ret                                                    
00004cf4 pacibsp                                                
00004cf8 sub       sp, sp, #0x70                                
00004cfc stp       x29, x30, [sp, #0x60]                        
00004d00 add       x29, sp, #0x60                               
00004d04 stur      x0, [x29, #-0x10]                            
00004d08 ldur      x8, [x29, #-0x10]                            
00004d0c stur      x8, [x29, #-0x18]                            
00004d10 ldur      x8, [x29, #-0x18]                            
00004d14 ldr       w0, [x8]                                     
00004d18 bl        #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00004d1c tbnz      w0, #0, #0x4d44                              
00004d20 b         #0x4d24                                      
00004d24 ldur      x8, [x29, #-0x18]                            
00004d28 mov       x9, sp                                       
00004d2c str       x8, [x9]                                     
00004d30 adrp      x0, #0x29000                                 
00004d34 add       x0, x0, #0x2c2                                ; 'decodeAdrpLdr: not ADRP at %p'
00004d38 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00004d3c stur      xzr, [x29, #-8]                              
00004d40 b         #0x4e28                                      
00004d44 ldur      x8, [x29, #-0x18]                            
00004d48 ldr       w0, [x8, #4]                                 
00004d4c bl        #0x4e38                                       ; __ZL12isLDR_uoff64j||__ZL12isLDR_uoff64j|
00004d50 tbnz      w0, #0, #0x4d7c                              
00004d54 b         #0x4d58                                      
00004d58 ldur      x8, [x29, #-0x18]                            
00004d5c add       x8, x8, #4                                   
00004d60 mov       x9, sp                                       
00004d64 str       x8, [x9]                                     
00004d68 adrp      x0, #0x29000                                 
00004d6c add       x0, x0, #0x2e0                                ; 'decodeAdrpLdr: not LDR at %p'
00004d70 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00004d74 stur      xzr, [x29, #-8]                              
00004d78 b         #0x4e28                                      
00004d7c ldur      x8, [x29, #-0x18]                            
00004d80 ldr       w8, [x8]                                     
00004d84 stur      w8, [x29, #-0x1c]                            
00004d88 ldur      x8, [x29, #-0x18]                            
00004d8c ldr       w8, [x8, #4]                                 
00004d90 stur      w8, [x29, #-0x20]                            
00004d94 ldur      w8, [x29, #-0x1c]                            
00004d98 lsr       w8, w8, #0x1d                                
00004d9c and       w8, w8, #3                                   
00004da0 mov       w8, w8                                       
00004da4 stur      x8, [x29, #-0x28]                            
00004da8 ldur      w8, [x29, #-0x1c]                            
00004dac lsr       w8, w8, #5                                   
00004db0 and       w8, w8, #0x7ffff                             
00004db4 mov       w8, w8                                       
00004db8 str       x8, [sp, #0x30]                              
00004dbc ldr       x9, [sp, #0x30]                              
00004dc0 ldur      x8, [x29, #-0x28]                            
00004dc4 orr       x0, x8, x9, lsl #2                           
00004dc8 mov       w1, #0x15                                    
00004dcc bl        #0x4cb8                                       ; __ZL10signExtendyi||__ZL10signExtendyi|
00004dd0 lsl       x8, x0, #0xc                                 
00004dd4 str       x8, [sp, #0x28]                              
00004dd8 ldur      x8, [x29, #-0x18]                            
00004ddc str       x8, [sp, #0x20]                              
00004de0 ldr       x8, [sp, #0x20]                              
00004de4 and       x8, x8, #0xfffffffffffff000                  
00004de8 ldr       x9, [sp, #0x28]                              
00004dec add       x8, x8, x9                                   
00004df0 str       x8, [sp, #0x18]                              
00004df4 ldur      w8, [x29, #-0x20]                            
00004df8 lsr       w8, w8, #0xa                                 
00004dfc and       w8, w8, #0xfff                               
00004e00 mov       w8, w8                                       
00004e04 str       x8, [sp, #0x10]                              
00004e08 ldr       x8, [sp, #0x10]                              
00004e0c lsl       x8, x8, #3                                   
00004e10 str       x8, [sp, #0x10]                              
00004e14 ldr       x8, [sp, #0x18]                              
00004e18 ldr       x9, [sp, #0x10]                              
00004e1c add       x8, x8, x9                                   
00004e20 stur      x8, [x29, #-8]                               
00004e24 b         #0x4e28                                      
00004e28 ldur      x0, [x29, #-8]                               
00004e2c ldp       x29, x30, [sp, #0x60]                        
00004e30 add       sp, sp, #0x70                                
00004e34 retab                                                  
00004e38 sub       sp, sp, #0x10                                
00004e3c str       w0, [sp, #0xc]                               
00004e40 ldr       w8, [sp, #0xc]                               
00004e44 and       w8, w8, #0xffc00000                          
00004e48 mov       w9, #-0x6c00000                              
00004e4c subs      w8, w8, w9                                   
00004e50 cset      w0, eq                                       
00004e54 add       sp, sp, #0x10                                
00004e58 ret                                                    
00004e5c pacibsp                                                
00004e60 sub       sp, sp, #0xb0                                
00004e64 stp       x29, x30, [sp, #0xa0]                        
00004e68 add       x29, sp, #0xa0                               
00004e6c adrp      x8, #0x34000                                 
00004e70 ldr       x8, [x8, #0x618]                              ; &___stack_chk_guard
00004e74 ldr       x8, [x8]                                      ; &_objc_msgSend
00004e78 stur      x8, [x29, #-8]                               
00004e7c adrp      x0, #0x29000                                 
00004e80 add       x0, x0, #0x2fd                                ; 'CAInternAtomWithCString'
00004e84 bl        #0x498c                                       ; |_LGSymResolveExported||_LGSymResolveExported
00004e88 str       x0, [sp, #0x48]                              
00004e8c ldr       x8, [sp, #0x48]                              
00004e90 cbz       x8, #0x4ea4                                  
00004e94 b         #0x4e98                                      
00004e98 ldr       x8, [sp, #0x48]                              
00004e9c str       x8, [sp, #0x50]                              
00004ea0 b         #0x50c8                                      
00004ea4 adrp      x8, #0x38000                                 
00004ea8 ldrb      w8, [x8, #0x3c0]                              ; __ZL8g_inited|__ZL8g_inited
00004eac tbnz      w8, #0, #0x4ebc                              
00004eb0 b         #0x4eb4                                      
00004eb4 str       xzr, [sp, #0x50]                             
00004eb8 b         #0x50c8                                      
00004ebc adrp      x8, #0x38000                                 
00004ec0 ldr       x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004ec4 str       x9, [sp, #0x40]                              
00004ec8 ldr       x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
00004ecc adrp      x9, #0x38000                                 
00004ed0 ldr       x9, [x9, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
00004ed4 add       x8, x8, x9                                   
00004ed8 subs      x8, x8, #0x18                                
00004edc str       x8, [sp, #0x38]                              
00004ee0 str       wzr, [sp, #0x34]                             
00004ee4 ldr       x8, [sp, #0x40]                              
00004ee8 str       x8, [sp, #0x28]                              
00004eec b         #0x4ef0                                      
00004ef0 ldr       x9, [sp, #0x28]                              
00004ef4 ldr       x10, [sp, #0x38]                             
00004ef8 mov       w8, #0                                       
00004efc subs      x9, x9, x10                                  
00004f00 str       w8, [sp, #0x24]                              
00004f04 b.hs      #0x4f20                                      
00004f08 b         #0x4f0c                                      
00004f0c ldr       w8, [sp, #0x34]                              
00004f10 subs      w8, w8, #8                                   
00004f14 cset      w8, lt                                       
00004f18 str       w8, [sp, #0x24]                              
00004f1c b         #0x4f20                                      
00004f20 ldr       w8, [sp, #0x24]                              
00004f24 tbz       w8, #0, #0x5078                              
00004f28 b         #0x4f2c                                      
00004f2c ldr       x8, [sp, #0x28]                              
00004f30 ldr       w8, [x8]                                      ; SEL UTF8String
00004f34 mov       w9, #0x4ff4                                  
00004f38 movk      w9, #0xa9be, lsl #16                         
00004f3c subs      w8, w8, w9                                   
00004f40 b.eq      #0x4f4c                                      
00004f44 b         #0x4f48                                      
00004f48 b         #0x5068                                      
00004f4c ldr       x8, [sp, #0x28]                              
00004f50 ldr       w8, [x8, #4]                                 
00004f54 mov       w9, #0x7bfd                                  
00004f58 movk      w9, #0xa901, lsl #16                         
00004f5c subs      w8, w8, w9                                   
00004f60 b.eq      #0x4f6c                                      
00004f64 b         #0x4f68                                      
00004f68 b         #0x5068                                      
00004f6c ldr       x8, [sp, #0x28]                              
00004f70 ldr       w8, [x8, #8]                                  ; SEL appendFormat:
00004f74 mov       w9, #0x43fd                                  
00004f78 movk      w9, #0x9100, lsl #16                         
00004f7c subs      w8, w8, w9                                   
00004f80 b.eq      #0x4f8c                                      
00004f84 b         #0x4f88                                      
00004f88 b         #0x5068                                      
00004f8c ldr       x8, [sp, #0x28]                              
00004f90 ldr       w8, [x8, #0xc]                               
00004f94 mov       w9, #0x3f3                                   
00004f98 movk      w9, #0xaa00, lsl #16                         
00004f9c subs      w8, w8, w9                                   
00004fa0 b.eq      #0x4fac                                      
00004fa4 b         #0x4fa8                                      
00004fa8 b         #0x5068                                      
00004fac ldr       x8, [sp, #0x28]                              
00004fb0 ldr       w8, [x8, #0x10]                               ; SEL boolValue
00004fb4 and       w8, w8, #0xfc000000                          
00004fb8 mov       w9, #-0x6c000000                             
00004fbc subs      w8, w8, w9                                   
00004fc0 b.eq      #0x4fcc                                      
00004fc4 b         #0x4fc8                                      
00004fc8 b         #0x5068                                      
00004fcc ldr       x8, [sp, #0x28]                              
00004fd0 ldr       w8, [x8, #0x14]                              
00004fd4 mov       w9, #0x3f4                                   
00004fd8 movk      w9, #0xaa00, lsl #16                         
00004fdc subs      w8, w8, w9                                   
00004fe0 b.eq      #0x4fec                                      
00004fe4 b         #0x4fe8                                      
00004fe8 b         #0x5068                                      
00004fec ldr       x8, [sp, #0x28]                              
00004ff0 ldr       w0, [x8, #0x18]                               ; SEL bundleWithPath:
00004ff4 bl        #0x5100                                       ; __ZL8isCBNZW0j||__ZL8isCBNZW0j|
00004ff8 tbnz      w0, #0, #0x5004                              
00004ffc b         #0x5000                                      
00005000 b         #0x5068                                      
00005004 ldr       x8, [sp, #0x28]                              
00005008 ldr       x9, [sp, #0x40]                              
0000500c subs      x8, x8, x9                                   
00005010 b.ls      #0x503c                                      
00005014 b         #0x5018                                      
00005018 ldr       x8, [sp, #0x28]                              
0000501c ldur      w0, [x8, #-4]                                
00005020 bl        #0x512c                                       ; __ZL9isPACIBSPj||__ZL9isPACIBSPj|
00005024 tbz       w0, #0, #0x503c                              
00005028 b         #0x502c                                      
0000502c ldr       x8, [sp, #0x28]                              
00005030 subs      x8, x8, #4                                   
00005034 str       x8, [sp, #0x18]                              
00005038 b         #0x5048                                      
0000503c ldr       x8, [sp, #0x28]                              
00005040 str       x8, [sp, #0x18]                              
00005044 b         #0x5048                                      
00005048 ldr       x8, [sp, #0x18]                              
0000504c ldrsw     x10, [sp, #0x34]                             
00005050 mov       x9, x10                                      
00005054 add       w9, w9, #1                                   
00005058 str       w9, [sp, #0x34]                              
0000505c sub       x9, x29, #0x48                               
00005060 str       x8, [x9, x10, lsl #3]                        
00005064 b         #0x5068                                      
00005068 ldr       x8, [sp, #0x28]                              
0000506c add       x8, x8, #4                                   
00005070 str       x8, [sp, #0x28]                              
00005074 b         #0x4ef0                                      
00005078 ldr       w8, [sp, #0x34]                              
0000507c cbnz      w8, #0x5098                                  
00005080 b         #0x5084                                      
00005084 adrp      x0, #0x29000                                 
00005088 add       x0, x0, #0x315                                ; 'CAInternAtom: prologue scan found no match'
0000508c bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005090 str       xzr, [sp, #0x50]                             
00005094 b         #0x50c8                                      
00005098 ldr       w8, [sp, #0x34]                              
0000509c mov       x10, x8                                      
000050a0 ldur      x8, [x29, #-0x48]                            
000050a4 mov       x9, sp                                       
000050a8 str       x10, [x9]                                    
000050ac str       x8, [x9, #8]                                 
000050b0 adrp      x0, #0x29000                                 
000050b4 add       x0, x0, #0x340                                ; 'CAInternAtom: %d validated wrapper candidate(s), using %p'
000050b8 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000050bc ldur      x8, [x29, #-0x48]                            
000050c0 str       x8, [sp, #0x50]                              
000050c4 b         #0x50c8                                      
000050c8 ldr       x8, [sp, #0x50]                              
000050cc str       x8, [sp, #0x10]                              
000050d0 ldur      x9, [x29, #-8]                               
000050d4 adrp      x8, #0x34000                                 
000050d8 ldr       x8, [x8, #0x618]                              ; &___stack_chk_guard
000050dc ldr       x8, [x8]                                      ; &_objc_msgSend
000050e0 subs      x8, x8, x9                                   
000050e4 b.eq      #0x50f0                                      
000050e8 b         #0x50ec                                      
000050ec bl        #0x27ebc                                      ; ___stack_chk_fail
000050f0 ldr       x0, [sp, #0x10]                              
000050f4 ldp       x29, x30, [sp, #0xa0]                        
000050f8 add       sp, sp, #0xb0                                
000050fc retab                                                  
00005100 sub       sp, sp, #0x10                                
00005104 str       w0, [sp, #0xc]                               
00005108 ldr       w8, [sp, #0xc]                               
0000510c mov       w9, #0x1f                                    
00005110 movk      w9, #0x7f00, lsl #16                         
00005114 and       w8, w8, w9                                   
00005118 mov       w9, #0x35000000                              
0000511c subs      w8, w8, w9                                   
00005120 cset      w0, eq                                       
00005124 add       sp, sp, #0x10                                
00005128 ret                                                    
0000512c sub       sp, sp, #0x10                                
00005130 str       w0, [sp, #0xc]                               
00005134 ldr       w8, [sp, #0xc]                               
00005138 mov       w9, #0x237f                                  
0000513c movk      w9, #0xd503, lsl #16                         
00005140 subs      w8, w8, w9                                   
00005144 cset      w0, eq                                       
00005148 add       sp, sp, #0x10                                
0000514c ret                                                    
00005150 pacibsp                                                
00005154 stp       x29, x30, [sp, #-0x10]!                      
00005158 mov       x29, sp                                      
0000515c bl        #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
00005160 adrp      x8, #0x38000                                 
00005164 ldr       x0, [x8, #0x3f8]                              ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005168 ldp       x29, x30, [sp], #0x10                        
0000516c retab                                                  
00005170 pacibsp                                                
00005174 sub       sp, sp, #0x1b0                               
00005178 stp       x28, x27, [sp, #0x190]                       
0000517c stp       x29, x30, [sp, #0x1a0]                       
00005180 add       x29, sp, #0x1a0                              
00005184 adrp      x8, #0x34000                                 
00005188 ldr       x8, [x8, #0x618]                              ; &___stack_chk_guard
0000518c ldr       x8, [x8]                                      ; &_objc_msgSend
00005190 stur      x8, [x29, #-0x18]                            
00005194 adrp      x8, #0x38000                                 
00005198 ldrb      w8, [x8, #0x3f0]                              ; __ZL21g_gaussianSiteScanned|__ZL21g_gaussianSiteScanned
0000519c tbz       w8, #0, #0x51a8                              
000051a0 b         #0x51a4                                      
000051a4 b         #0x5648                                      
000051a8 mov       w8, #1                                       
000051ac adrp      x9, #0x38000                                 
000051b0 strb      w8, [x9, #0x3f0]                             
000051b4 adrp      x8, #0x38000                                 
000051b8 ldrb      w8, [x8, #0x3c0]                              ; __ZL8g_inited|__ZL8g_inited
000051bc tbnz      w8, #0, #0x51c8                              
000051c0 b         #0x51c4                                      
000051c4 b         #0x5648                                      
000051c8 adrp      x8, #0x38000                                 
000051cc ldr       x9, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000051d0 stur      x9, [x29, #-0xc0]                            
000051d4 ldr       x8, [x8, #0x3d0]                              ; __ZL12g_qcTextBase|__ZL12g_qcTextBase
000051d8 adrp      x9, #0x38000                                 
000051dc ldr       x9, [x9, #0x3d8]                              ; __ZL12g_qcTextSize|__ZL12g_qcTextSize
000051e0 add       x8, x8, x9                                   
000051e4 subs      x8, x8, #0x20                                
000051e8 stur      x8, [x29, #-0xc8]                            
000051ec stur      wzr, [x29, #-0xcc]                           
000051f0 adrp      x0, #0x29000                                 
000051f4 add       x0, x0, #0x856                                ; 'scanGaussianSite: using built-in cluster position (constructor-safe)'
000051f8 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000051fc mov       x8, #0x10                                    
00005200 str       x8, [sp, #0xc8]                              
00005204 mov       w8, #4                                       
00005208 str       w8, [sp, #0xc4]                              
0000520c ldur      x8, [x29, #-0xc0]                            
00005210 add       x8, x8, #8                                   
00005214 str       x8, [sp, #0xb8]                              
00005218 b         #0x521c                                      
0000521c ldr       x8, [sp, #0xb8]                              
00005220 ldur      x9, [x29, #-0xc8]                            
00005224 subs      x8, x8, x9                                   
00005228 b.hs      #0x5638                                      
0000522c b         #0x5230                                      
00005230 add       x2, sp, #0xb0                                
00005234 str       xzr, [sp, #0xb0]                             
00005238 add       x3, sp, #0xac                                
0000523c str       wzr, [sp, #0xac]                             
00005240 ldr       x0, [sp, #0xb8]                              
00005244 ldur      x1, [x29, #-0xc8]                            
00005248 bl        #0x6ec4                                       ; __ZL20matchAddFilterCallAtPjS_PPvS_||__ZL20matchAddFilterCallAtPjS_PPvS_|
0000524c str       x0, [sp, #0xa0]                              
00005250 ldr       x8, [sp, #0xa0]                              
00005254 cbnz      x8, #0x5260                                  
00005258 b         #0x525c                                      
0000525c b         #0x5628                                      
00005260 str       wzr, [sp, #0x9c]                             
00005264 ldr       x8, [sp, #0xb8]                              
00005268 ldrsw     x10, [sp, #0x9c]                             
0000526c sub       x9, x29, #0x58                               
00005270 str       x8, [x9, x10, lsl #3]                        
00005274 ldr       x8, [sp, #0xb0]                              
00005278 ldrsw     x10, [sp, #0x9c]                             
0000527c sub       x9, x29, #0x98                               
00005280 str       x8, [x9, x10, lsl #3]                        
00005284 ldr       w8, [sp, #0xac]                              
00005288 ldrsw     x10, [sp, #0x9c]                             
0000528c sub       x9, x29, #0xb8                               
00005290 str       w8, [x9, x10, lsl #2]                        
00005294 ldr       w8, [sp, #0x9c]                              
00005298 add       w8, w8, #1                                   
0000529c str       w8, [sp, #0x9c]                              
000052a0 ldr       x8, [sp, #0xb8]                              
000052a4 str       x8, [sp, #0x90]                              
000052a8 b         #0x52ac                                      
000052ac ldr       w8, [sp, #0x9c]                              
000052b0 subs      w8, w8, #8                                   
000052b4 b.ge      #0x53c4                                      
000052b8 b         #0x52bc                                      
000052bc ldr       x8, [sp, #0x90]                              
000052c0 add       x8, x8, #4                                   
000052c4 str       x8, [sp, #0x88]                              
000052c8 ldr       x8, [sp, #0x90]                              
000052cc add       x8, x8, #0x40                                
000052d0 str       x8, [sp, #0x80]                              
000052d4 ldr       x8, [sp, #0x80]                              
000052d8 ldur      x9, [x29, #-0xc8]                            
000052dc subs      x8, x8, x9                                   
000052e0 b.ls      #0x52f4                                      
000052e4 b         #0x52e8                                      
000052e8 ldur      x8, [x29, #-0xc8]                            
000052ec str       x8, [sp, #0x80]                              
000052f0 b         #0x52f4                                      
000052f4 str       xzr, [sp, #0x78]                             
000052f8 str       xzr, [sp, #0x70]                             
000052fc str       wzr, [sp, #0x6c]                             
00005300 ldr       x8, [sp, #0x88]                              
00005304 str       x8, [sp, #0x60]                              
00005308 b         #0x530c                                      
0000530c ldr       x8, [sp, #0x60]                              
00005310 ldr       x9, [sp, #0x80]                              
00005314 subs      x8, x8, x9                                   
00005318 b.hs      #0x536c                                      
0000531c b         #0x5320                                      
00005320 ldr       x0, [sp, #0x60]                              
00005324 ldur      x1, [x29, #-0xc8]                            
00005328 add       x2, sp, #0x70                                
0000532c add       x3, sp, #0x6c                                
00005330 bl        #0x6ec4                                       ; __ZL20matchAddFilterCallAtPjS_PPvS_||__ZL20matchAddFilterCallAtPjS_PPvS_|
00005334 str       x0, [sp, #0x58]                              
00005338 ldr       x8, [sp, #0x58]                              
0000533c ldr       x9, [sp, #0xa0]                              
00005340 subs      x8, x8, x9                                   
00005344 b.ne      #0x5358                                      
00005348 b         #0x534c                                      
0000534c ldr       x8, [sp, #0x60]                              
00005350 str       x8, [sp, #0x78]                              
00005354 b         #0x536c                                      
00005358 b         #0x535c                                      
0000535c ldr       x8, [sp, #0x60]                              
00005360 add       x8, x8, #4                                   
00005364 str       x8, [sp, #0x60]                              
00005368 b         #0x530c                                      
0000536c ldr       x8, [sp, #0x78]                              
00005370 cbnz      x8, #0x537c                                  
00005374 b         #0x5378                                      
00005378 b         #0x53c4                                      
0000537c ldr       x8, [sp, #0x78]                              
00005380 ldrsw     x10, [sp, #0x9c]                             
00005384 sub       x9, x29, #0x58                               
00005388 str       x8, [x9, x10, lsl #3]                        
0000538c ldr       x8, [sp, #0x70]                              
00005390 ldrsw     x10, [sp, #0x9c]                             
00005394 sub       x9, x29, #0x98                               
00005398 str       x8, [x9, x10, lsl #3]                        
0000539c ldr       w8, [sp, #0x6c]                              
000053a0 ldrsw     x10, [sp, #0x9c]                             
000053a4 sub       x9, x29, #0xb8                               
000053a8 str       w8, [x9, x10, lsl #2]                        
000053ac ldr       w8, [sp, #0x9c]                              
000053b0 add       w8, w8, #1                                   
000053b4 str       w8, [sp, #0x9c]                              
000053b8 ldr       x8, [sp, #0x78]                              
000053bc str       x8, [sp, #0x90]                              
000053c0 b         #0x52ac                                      
000053c4 ldr       w8, [sp, #0x9c]                              
000053c8 subs      w8, w8, #4                                   
000053cc b.ge      #0x53d8                                      
000053d0 b         #0x53d4                                      
000053d4 b         #0x5628                                      
000053d8 mov       w8, #-1                                      
000053dc str       w8, [sp, #0x54]                              
000053e0 ldur      w8, [x29, #-0xcc]                            
000053e4 cbz       w8, #0x5484                                  
000053e8 b         #0x53ec                                      
000053ec str       wzr, [sp, #0x50]                             
000053f0 b         #0x53f4                                      
000053f4 ldr       w8, [sp, #0x50]                              
000053f8 ldr       w9, [sp, #0x9c]                              
000053fc subs      w8, w8, w9                                   
00005400 b.ge      #0x5444                                      
00005404 b         #0x5408                                      
00005408 ldrsw     x9, [sp, #0x50]                              
0000540c sub       x8, x29, #0xb8                               
00005410 ldr       w8, [x8, x9, lsl #2]                         
00005414 ldur      w9, [x29, #-0xcc]                            
00005418 subs      w8, w8, w9                                   
0000541c b.ne      #0x5430                                      
00005420 b         #0x5424                                      
00005424 ldr       w8, [sp, #0x50]                              
00005428 str       w8, [sp, #0x54]                              
0000542c b         #0x5444                                      
00005430 b         #0x5434                                      
00005434 ldr       w8, [sp, #0x50]                              
00005438 add       w8, w8, #1                                   
0000543c str       w8, [sp, #0x50]                              
00005440 b         #0x53f4                                      
00005444 ldr       w8, [sp, #0x54]                              
00005448 tbz       w8, #0x1f, #0x5480                           
0000544c b         #0x5450                                      
00005450 ldr       x11, [sp, #0xb8]                             
00005454 ldr       w8, [sp, #0x9c]                              
00005458 mov       x10, x8                                      
0000545c ldur      w8, [x29, #-0xcc]                            
00005460 mov       x9, sp                                       
00005464 str       x11, [x9]                                    
00005468 str       x10, [x9, #8]                                
0000546c str       x8, [x9, #0x10]                              
00005470 adrp      x0, #0x29000                                 
00005474 add       x0, x0, #0x89b                                ; 'scanGaussianSite: cluster @%p (len %d) lacks gaussian atom 0x%x, skipping'
00005478 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000547c b         #0x5628                                      
00005480 b         #0x549c                                      
00005484 ldr       w9, [sp, #0x9c]                              
00005488 mov       w8, #0                                       
0000548c subs      w9, w9, #1                                   
00005490 csinc     w8, w8, wzr, le                              
00005494 str       w8, [sp, #0x54]                              
00005498 b         #0x549c                                      
0000549c ldrsw     x9, [sp, #0x54]                              
000054a0 sub       x8, x29, #0x98                               
000054a4 ldr       x8, [x8, x9, lsl #3]                         
000054a8 str       x8, [sp, #0x48]                              
000054ac str       xzr, [sp, #0x40]                             
000054b0 ldur      x8, [x29, #-0x58]                            
000054b4 str       x8, [sp, #0x38]                              
000054b8 ldr       x8, [sp, #0x38]                              
000054bc subs      x8, x8, #8                                   
000054c0 str       x8, [sp, #0x30]                              
000054c4 b         #0x54c8                                      
000054c8 ldr       x9, [sp, #0x30]                              
000054cc ldr       x8, [sp, #0x38]                              
000054d0 subs      x10, x8, #0x68                               
000054d4 mov       w8, #0                                       
000054d8 subs      x9, x9, x10                                  
000054dc str       w8, [sp, #0x2c]                              
000054e0 b.ls      #0x5500                                      
000054e4 b         #0x54e8                                      
000054e8 ldr       x8, [sp, #0x30]                              
000054ec ldur      x9, [x29, #-0xc0]                            
000054f0 subs      x8, x8, x9                                   
000054f4 cset      w8, hi                                       
000054f8 str       w8, [sp, #0x2c]                              
000054fc b         #0x5500                                      
00005500 ldr       w8, [sp, #0x2c]                              
00005504 tbz       w8, #0, #0x5570                              
00005508 b         #0x550c                                      
0000550c ldr       x8, [sp, #0x30]                              
00005510 ldr       w0, [x8]                                     
00005514 bl        #0x4c6c                                       ; __ZL6isADRPj||__ZL6isADRPj|
00005518 tbz       w0, #0, #0x555c                              
0000551c b         #0x5520                                      
00005520 ldr       x8, [sp, #0x30]                              
00005524 add       x8, x8, #4                                   
00005528 ldur      x9, [x29, #-0xc8]                            
0000552c subs      x8, x8, x9                                   
00005530 b.hs      #0x555c                                      
00005534 b         #0x5538                                      
00005538 ldr       x8, [sp, #0x30]                              
0000553c ldr       w0, [x8, #4]                                 
00005540 bl        #0x4e38                                       ; __ZL12isLDR_uoff64j||__ZL12isLDR_uoff64j|
00005544 tbz       w0, #0, #0x555c                              
00005548 b         #0x554c                                      
0000554c ldr       x0, [sp, #0x30]                              
00005550 bl        #0x4cf4                                       ; |_LGSymDecodeAdrpLdr||_LGSymDecodeAdrpLdr
00005554 str       x0, [sp, #0x40]                              
00005558 b         #0x5570                                      
0000555c b         #0x5560                                      
00005560 ldr       x8, [sp, #0x30]                              
00005564 subs      x8, x8, #4                                   
00005568 str       x8, [sp, #0x30]                              
0000556c b         #0x54c8                                      
00005570 ldr       x8, [sp, #0xa0]                              
00005574 adrp      x10, #0x38000                                
00005578 adrp      x9, #0x38000                                 
0000557c add       x9, x9, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005580 str       x8, [x10, #0x3f8]                            
00005584 ldr       x8, [sp, #0x48]                              
00005588 str       x8, [x9, #8]                                 
0000558c ldr       x8, [sp, #0x40]                              
00005590 str       x8, [x9, #0x10]                              
00005594 mov       w8, #1                                       
00005598 strb      w8, [x9, #0x18]                              
0000559c ldr       w8, [sp, #0x9c]                              
000055a0 mov       x12, x8                                      
000055a4 ldr       x11, [sp, #0x38]                             
000055a8 ldr       w8, [sp, #0x54]                              
000055ac mov       x10, x8                                      
000055b0 ldrsw     x9, [sp, #0x54]                              
000055b4 sub       x8, x29, #0xb8                               
000055b8 ldr       w8, [x8, x9, lsl #2]                         
000055bc mov       x9, sp                                       
000055c0 str       x12, [x9]                                    
000055c4 str       x11, [x9, #8]                                
000055c8 str       x10, [x9, #0x10]                             
000055cc str       x8, [x9, #0x18]                              
000055d0 adrp      x0, #0x29000                                 
000055d4 add       x0, x0, #0x8e5                                ; 'scanGaussianSite: confirmed cluster of %d calls, start=%p gaussIdx=%d atom=0x%x'
000055d8 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000055dc ldr       x8, [sp, #0xa0]                              
000055e0 mov       x9, sp                                       
000055e4 str       x8, [x9]                                     
000055e8 adrp      x0, #0x29000                                 
000055ec add       x0, x0, #0x935                                ; '  add_filter = %p'
000055f0 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
000055f4 ldr       x8, [sp, #0x48]                              
000055f8 mov       x9, sp                                       
000055fc str       x8, [x9]                                     
00005600 adrp      x0, #0x29000                                 
00005604 add       x0, x0, #0x947                                ; '  gaussian ctx = %p'
00005608 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
0000560c ldr       x8, [sp, #0x40]                              
00005610 mov       x9, sp                                       
00005614 str       x8, [x9]                                     
00005618 adrp      x0, #0x29000                                 
0000561c add       x0, x0, #0x95b                                ; '  filter_table slot = %p'
00005620 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005624 b         #0x5648                                      
00005628 ldr       x8, [sp, #0xb8]                              
0000562c add       x8, x8, #4                                   
00005630 str       x8, [sp, #0xb8]                              
00005634 b         #0x521c                                      
00005638 adrp      x0, #0x29000                                 
0000563c add       x0, x0, #0x974                                ; 'scanGaussianSite: no confirmed add_filter cluster found'
00005640 bl        #0x48e8                                       ; __ZL4rlogPKcz||__ZL4rlogPKcz|
00005644 b         #0x5648                                      
00005648 ldur      x9, [x29, #-0x18]                            
0000564c adrp      x8, #0x34000                                 
00005650 ldr       x8, [x8, #0x618]                              ; &___stack_chk_guard
00005654 ldr       x8, [x8]                                      ; &_objc_msgSend
00005658 subs      x8, x8, x9                                   
0000565c b.eq      #0x5668                                      
00005660 b         #0x5664                                      
00005664 bl        #0x27ebc                                      ; ___stack_chk_fail
00005668 ldp       x29, x30, [sp, #0x1a0]                       
0000566c ldp       x28, x27, [sp, #0x190]                       
00005670 add       sp, sp, #0x1b0                               
00005674 retab                                                  
00005678 pacibsp                                                
0000567c stp       x29, x30, [sp, #-0x10]!                      
00005680 mov       x29, sp                                      
00005684 bl        #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
00005688 adrp      x8, #0x38000                                 
0000568c add       x8, x8, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
00005690 ldr       x0, [x8, #8]                                 
00005694 ldp       x29, x30, [sp], #0x10                        
00005698 retab                                                  
0000569c pacibsp                                                
000056a0 stp       x29, x30, [sp, #-0x10]!                      
000056a4 mov       x29, sp                                      
000056a8 bl        #0x5170                                       ; __ZL16scanGaussianSitev||__ZL16scanGaussianSitev|
000056ac adrp      x8, #0x38000                                 
000056b0 add       x8, x8, #0x3f8                                ; __ZL14g_gaussianSite|__ZL14g_gaussianSite
000056b4 ldr       x0, [x8, #0x10]                              
000056b8 ldp       x29, x30, [sp], #0x10                        
000056bc retab                                                  

