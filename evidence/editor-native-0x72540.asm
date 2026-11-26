; Uploaded sample arm64e unslid VA 0x72540..0x72698
00072540 pacibsp                                                
00072544 stp       x22, x21, [sp, #-0x30]!                      
00072548 stp       x20, x19, [sp, #0x10]                        
0007254c stp       x29, x30, [sp, #0x20]                        
00072550 add       x29, sp, #0x20                               
00072554 mov       x21, x0                                      
00072558 bl        #0xaae40                                      ; objc_msgSend$prominentDisplayViewController
0007255c mov       x29, x29                                     
00072560 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072564 mov       x20, x0                                      
00072568 bl        #0xb1960                                      ; objc_msgSend$viewIfLoaded
0007256c mov       x29, x29                                     
00072570 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072574 mov       x19, x0                                      
00072578 mov       x0, x20                                      
0007257c bl        #0xa46f4                                      ; _objc_release
00072580 adrp      x8, #0xeb000                                 
00072584 ldr       x1, [x8, #0xb88]                              ; SEL vibrancyEffectView
00072588 mov       x0, x19                                      
0007258c bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00072590 tbz       w0, #0, #0x72674                             
00072594 mov       x0, x19                                      
00072598 bl        #0xb1900                                      ; objc_msgSend$vibrancyEffectView
0007259c mov       x29, x29                                     
000725a0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000725a4 mov       x20, x0                                      
000725a8 mov       x0, x21                                      
000725ac bl        #0xa8360                                      ; objc_msgSend$hostView
000725b0 mov       x29, x29                                     
000725b4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000725b8 mov       x21, x0                                      
000725bc adrp      x8, #0xe8000                                 
000725c0 ldr       x1, [x8, #0xe50]                              ; SEL configuration
000725c4 mov       x0, x20                                      
000725c8 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
000725cc tbz       w0, #0, #0x72664                             
000725d0 adrp      x8, #0xea000                                 
000725d4 ldr       x1, [x8, #0x648]                              ; SEL setConfiguration:
000725d8 mov       x0, x21                                      
000725dc bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
000725e0 tbz       w0, #0, #0x72664                             
000725e4 mov       x0, x20                                      
000725e8 bl        #0xa6420                                      ; objc_msgSend$configuration
000725ec mov       x29, x29                                     
000725f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000725f4 mov       x22, x0                                      
000725f8 bl        #0xa46f4                                      ; _objc_release
000725fc cbz       x22, #0x72628                                
00072600 mov       x0, x20                                      
00072604 bl        #0xa6420                                      ; objc_msgSend$configuration
00072608 mov       x29, x29                                     
0007260c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00072610 mov       x22, x0                                      
00072614 mov       x0, x21                                      
00072618 mov       x2, x22                                      
0007261c bl        #0xac400                                      ; objc_msgSend$setConfiguration:
00072620 mov       x0, x22                                      
00072624 bl        #0xa46f4                                      ; _objc_release
00072628 adrp      x8, #0xe8000                                 
0007262c ldr       x1, [x8, #0xed8]                              ; SEL contentType
00072630 mov       x0, x20                                      
00072634 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
00072638 tbz       w0, #0, #0x72664                             
0007263c adrp      x8, #0xea000                                 
00072640 ldr       x1, [x8, #0x678]                              ; SEL setContentType:
00072644 mov       x0, x21                                      
00072648 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0007264c tbz       w0, #0, #0x72664                             
00072650 mov       x0, x20                                      
00072654 bl        #0xa6640                                      ; objc_msgSend$contentType
00072658 mov       x2, x0                                       
0007265c mov       x0, x21                                      
00072660 bl        #0xac4c0                                      ; objc_msgSend$setContentType:
00072664 mov       x0, x21                                      
00072668 bl        #0xa46f4                                      ; _objc_release
0007266c mov       x0, x20                                      
00072670 bl        #0xa46f4                                      ; _objc_release
00072674 mov       x0, x19                                      
00072678 ldp       x29, x30, [sp, #0x20]                        
0007267c ldp       x20, x19, [sp, #0x10]                        
00072680 ldp       x22, x21, [sp], #0x30                        
00072684 autibsp                                                
00072688 eor       x16, x30, x30, lsl #1                        
0007268c tbz       x16, #0x3e, #0x72694                         
00072690 brk       #0xc471                                      
00072694 b         #0xa46f4                                      ; _objc_release
