; Uploaded sample arm64e unslid VA 0x73684..0x737b8
00073684 pacibsp                                                
00073688 stp       x24, x23, [sp, #-0x40]!                      
0007368c stp       x22, x21, [sp, #0x10]                        
00073690 stp       x20, x19, [sp, #0x20]                        
00073694 stp       x29, x30, [sp, #0x30]                        
00073698 add       x29, sp, #0x30                               
0007369c bl        #0xa4704                                      ; _objc_retain
000736a0 mov       x19, x0                                      
000736a4 adrp      x1, #0xbb000                                 
000736a8 add       x1, x1, #0x442                                ; 'posterPair'
000736ac bl        #0x633b0                                     
000736b0 mov       x29, x29                                     
000736b4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000736b8 mov       x20, x0                                      
000736bc adrp      x1, #0xbb000                                 
000736c0 add       x1, x1, #0x44d                                ; 'configuration'
000736c4 bl        #0x633b0                                     
000736c8 mov       x29, x29                                     
000736cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000736d0 mov       x21, x0                                      
000736d4 cbz       x0, #0x73774                                 
000736d8 adrp      x23, #0xee000                                
000736dc ldr       x1, [x23, #0x940]                            
000736e0 mov       x0, x19                                      
000736e4 bl        #0xa4654                                      ; _objc_getAssociatedObject
000736e8 mov       x29, x29                                     
000736ec bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000736f0 mov       x22, x0                                      
000736f4 bl        #0xa46f4                                      ; _objc_release
000736f8 adrp      x24, #0xee000                                
000736fc cmp       x22, x21                                     
00073700 b.eq      #0x73758                                     
00073704 ldr       x1, [x23, #0x940]                            
00073708 mov       x0, x19                                      
0007370c mov       x2, x21                                      
00073710 mov       w3, #1                                       
00073714 bl        #0xa4754                                      ; _objc_setAssociatedObject
00073718 ldr       x22, [x24, #0x948]                           
0007371c mov       x0, x21                                      
00073720 bl        #0x7b534                                     
00073724 mov       x29, x29                                     
00073728 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007372c mov       x23, x0                                      
00073730 adrp      x8, #0xd4000                                 
00073734 ldr       x8, [x8, #0x7f8]                              ; &___NSDictionary0__struct
00073738 cmp       x0, #0                                       
0007373c csel      x2, x8, x0, eq                               
00073740 mov       x0, x19                                      
00073744 mov       x1, x22                                      
00073748 mov       w3, #3                                       
0007374c bl        #0xa4754                                      ; _objc_setAssociatedObject
00073750 mov       x0, x23                                      
00073754 bl        #0xa46f4                                      ; _objc_release
00073758 ldr       x1, [x24, #0x948]                            
0007375c mov       x0, x19                                      
00073760 bl        #0xa4654                                      ; _objc_getAssociatedObject
00073764 mov       x29, x29                                     
00073768 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007376c mov       x22, x0                                      
00073770 b         #0x73778                                     
00073774 mov       x22, #0                                      
00073778 mov       x0, x21                                      
0007377c bl        #0xa46f4                                      ; _objc_release
00073780 mov       x0, x20                                      
00073784 bl        #0xa46f4                                      ; _objc_release
00073788 mov       x0, x19                                      
0007378c bl        #0xa46f4                                      ; _objc_release
00073790 mov       x0, x22                                      
00073794 ldp       x29, x30, [sp, #0x30]                        
00073798 ldp       x20, x19, [sp, #0x20]                        
0007379c ldp       x22, x21, [sp, #0x10]                        
000737a0 ldp       x24, x23, [sp], #0x40                        
000737a4 autibsp                                                
000737a8 eor       x16, x30, x30, lsl #1                        
000737ac tbz       x16, #0x3e, #0x737b4                         
000737b0 brk       #0xc471                                      
000737b4 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
