; arm64e unslid VA [0x64600,0x64aa4)
00064600 pacibsp                                                
00064604 sub       sp, sp, #0x70                                
00064608 stp       x28, x27, [sp, #0x10]                        
0006460c stp       x26, x25, [sp, #0x20]                        
00064610 stp       x24, x23, [sp, #0x30]                        
00064614 stp       x22, x21, [sp, #0x40]                        
00064618 stp       x20, x19, [sp, #0x50]                        
0006461c stp       x29, x30, [sp, #0x60]                        
00064620 add       x29, sp, #0x60                               
00064624 bl        #0xa4704                                      ; _objc_retain
00064628 mov       x19, x0                                      
0006462c adrp      x21, #0xee000                                
00064630 ldr       x1, [x21, #0x8e8]                            
00064634 bl        #0xa4654                                      ; _objc_getAssociatedObject
00064638 mov       x29, x29                                     
0006463c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064640 mov       x20, x0                                      
00064644 cbnz      x0, #0x64674                                 
00064648 adrp      x8, #0xec000                                 
0006464c ldr       x0, [x8, #0x848]                              ; &LGClockEditorState
00064650 bl        #0xa46d4                                      ; _objc_opt_new
00064654 mov       x20, x0                                      
00064658 mov       x2, x19                                      
0006465c bl        #0xac620                                      ; objc_msgSend$setController:
00064660 ldr       x1, [x21, #0x8e8]                            
00064664 mov       x0, x19                                      
00064668 mov       x2, x20                                      
0006466c mov       w3, #1                                       
00064670 bl        #0xa4754                                      ; _objc_setAssociatedObject
00064674 mov       x0, x20                                      
00064678 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
0006467c mov       x29, x29                                     
00064680 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064684 mov       x21, x0                                      
00064688 bl        #0xa46f4                                      ; _objc_release
0006468c cbnz      x21, #0x64a38                                
00064690 adrp      x1, #0xba000                                 
00064694 add       x1, x1, #0x14e                                ; '_editor'
00064698 mov       x0, x19                                      
0006469c bl        #0x633b0                                     
000646a0 mov       x29, x29                                     
000646a4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000646a8 mov       x21, x0                                      
000646ac adrp      x8, #0xe9000                                 
000646b0 ldr       x1, [x8, #0x2a8]                              ; SEL environment
000646b4 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
000646b8 str       x21, [sp, #8]                                
000646bc tbz       w0, #0, #0x646d8                             
000646c0 mov       x0, x21                                      
000646c4 bl        #0xa7580                                      ; objc_msgSend$environment
000646c8 mov       x29, x29                                     
000646cc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000646d0 mov       x22, x0                                      
000646d4 b         #0x646dc                                     
000646d8 mov       x22, #0                                      
000646dc adrp      x8, #0xeb000                                 
000646e0 ldr       x1, [x8, #0x530]                              ; SEL sourceContents
000646e4 mov       x0, x22                                      
000646e8 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
000646ec tbz       w0, #0, #0x64704                             
000646f0 mov       x0, x22                                      
000646f4 bl        #0xaffa0                                      ; objc_msgSend$sourceContents
000646f8 mov       x29, x29                                     
000646fc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064700 b         #0x64708                                     
00064704 mov       x0, #0                                       
00064708 str       x0, [sp]                                     
0006470c bl        #0x7b534                                     
00064710 mov       x29, x29                                     
00064714 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064718 mov       x24, x0                                      
0006471c adrp      x8, #0xeb000                                 
00064720 ldr       x1, [x8, #0x7f8]                              ; SEL targetConfiguration
00064724 mov       x0, x22                                      
00064728 bl        #0xa46e4                                      ; _objc_opt_respondsToSelector
0006472c tbz       w0, #0, #0x64748                             
00064730 mov       x0, x22                                      
00064734 bl        #0xb0ac0                                      ; objc_msgSend$targetConfiguration
00064738 mov       x29, x29                                     
0006473c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064740 mov       x25, x0                                      
00064744 b         #0x6474c                                     
00064748 mov       x25, #0                                      
0006474c adrp      x8, #0xee000                                 
00064750 ldr       x1, [x8, #0x840]                             
00064754 mov       x0, x25                                      
00064758 bl        #0xa4654                                      ; _objc_getAssociatedObject
0006475c mov       x29, x29                                     
00064760 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064764 mov       x27, x0                                      
00064768 bl        #0x7b5dc                                     
0006476c mov       x29, x29                                     
00064770 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064774 mov       x28, x0                                      
00064778 cbz       x0, #0x6478c                                 
0006477c mov       x0, x28                                      
00064780 bl        #0xa4704                                      ; _objc_retain
00064784 mov       x26, x0                                      
00064788 b         #0x647c0                                     
0006478c adrp      x2, #0xdb000                                 
00064790 add       x2, x2, #0xb50                                ; @'dylv.liquidass.clock.resizeProgress'
00064794 mov       x0, x24                                      
00064798 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
0006479c mov       x29, x29                                     
000647a0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000647a4 mov       x23, x0                                      
000647a8 bl        #0x7b5dc                                     
000647ac mov       x29, x29                                     
000647b0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000647b4 mov       x26, x0                                      
000647b8 mov       x0, x23                                      
000647bc bl        #0xa46f4                                      ; _objc_release
000647c0 mov       x0, x28                                      
000647c4 bl        #0xa46f4                                      ; _objc_release
000647c8 mov       x0, x27                                      
000647cc bl        #0xa46f4                                      ; _objc_release
000647d0 mov       x0, x26                                      
000647d4 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
000647d8 mov       x0, x20                                      
000647dc bl        #0xae640                                      ; objc_msgSend$setProgress:
000647e0 adrp      x8, #0xee000                                 
000647e4 ldr       x1, [x8, #0x850]                             
000647e8 mov       x0, x25                                      
000647ec bl        #0xa4654                                      ; _objc_getAssociatedObject
000647f0 mov       x29, x29                                     
000647f4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000647f8 mov       x28, x0                                      
000647fc bl        #0x7b68c                                     
00064800 mov       x29, x29                                     
00064804 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064808 mov       x23, x0                                      
0006480c cbz       x0, #0x64820                                 
00064810 mov       x0, x23                                      
00064814 bl        #0xa4704                                      ; _objc_retain
00064818 mov       x27, x0                                      
0006481c b         #0x64854                                     
00064820 adrp      x2, #0xdb000                                 
00064824 add       x2, x2, #0xb90                                ; @'dylv.liquidass.clock.widgetsAtTop'
00064828 mov       x0, x24                                      
0006482c bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00064830 mov       x29, x29                                     
00064834 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064838 mov       x21, x0                                      
0006483c bl        #0x7b68c                                     
00064840 mov       x29, x29                                     
00064844 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064848 mov       x27, x0                                      
0006484c mov       x0, x21                                      
00064850 bl        #0xa46f4                                      ; _objc_release
00064854 mov       x0, x23                                      
00064858 bl        #0xa46f4                                      ; _objc_release
0006485c mov       x0, x28                                      
00064860 bl        #0xa46f4                                      ; _objc_release
00064864 mov       x0, x27                                      
00064868 bl        #0xa5b80                                      ; objc_msgSend$boolValue
0006486c mov       x2, x0                                       
00064870 mov       x0, x20                                      
00064874 bl        #0xafbe0                                      ; objc_msgSend$setWidgetsAtTop:
00064878 adrp      x8, #0xee000                                 
0006487c ldr       x1, [x8, #0x848]                             
00064880 mov       x0, x25                                      
00064884 bl        #0xa4654                                      ; _objc_getAssociatedObject
00064888 mov       x29, x29                                     
0006488c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064890 mov       x23, x0                                      
00064894 bl        #0x62ff8                                     
00064898 mov       x29, x29                                     
0006489c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000648a0 cbz       x0, #0x648b4                                 
000648a4 mov       x28, x0                                      
000648a8 mov       x0, x23                                      
000648ac bl        #0xa46f4                                      ; _objc_release
000648b0 b         #0x648f4                                     
000648b4 adrp      x2, #0xdb000                                 
000648b8 add       x2, x2, #0xb70                                ; @'dylv.liquidass.clock.style'
000648bc mov       x0, x24                                      
000648c0 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000648c4 mov       x29, x29                                     
000648c8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000648cc mov       x21, x0                                      
000648d0 bl        #0x62ff8                                     
000648d4 mov       x29, x29                                     
000648d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000648dc mov       x28, x0                                      
000648e0 mov       x0, x21                                      
000648e4 bl        #0xa46f4                                      ; _objc_release
000648e8 mov       x0, x23                                      
000648ec bl        #0xa46f4                                      ; _objc_release
000648f0 cbz       x28, #0x64a74                                
000648f4 adrp      x2, #0xdb000                                 
000648f8 add       x2, x2, #0xc30                                ; @'modern'
000648fc mov       x0, x28                                      
00064900 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00064904 mov       x29, x29                                     
00064908 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006490c mov       x21, x0                                      
00064910 bl        #0xa5b80                                      ; objc_msgSend$boolValue
00064914 mov       x2, x0                                       
00064918 mov       x0, x20                                      
0006491c bl        #0xadcc0                                      ; objc_msgSend$setModern:
00064920 mov       x0, x21                                      
00064924 bl        #0xa46f4                                      ; _objc_release
00064928 adrp      x2, #0xdb000                                 
0006492c add       x2, x2, #0xc50                                ; @'weight'
00064930 mov       x0, x28                                      
00064934 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00064938 mov       x29, x29                                     
0006493c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064940 mov       x21, x0                                      
00064944 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
00064948 mov       x0, x20                                      
0006494c bl        #0xafa20                                      ; objc_msgSend$setWeight:
00064950 mov       x0, x21                                      
00064954 bl        #0xa46f4                                      ; _objc_release
00064958 adrp      x2, #0xdb000                                 
0006495c add       x2, x2, #0xc70                                ; @'softness'
00064960 mov       x0, x28                                      
00064964 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
00064968 mov       x29, x29                                     
0006496c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00064970 mov       x21, x0                                      
00064974 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
00064978 mov       x0, x20                                      
0006497c bl        #0xaed80                                      ; objc_msgSend$setSoftness:
00064980 mov       x0, x21                                      
00064984 bl        #0xa46f4                                      ; _objc_release
00064988 mov       x0, x20                                      
0006498c mov       x2, x25                                      
00064990 bl        #0xaf2e0                                      ; objc_msgSend$setTargetConfiguration:
00064994 cbz       x25, #0x649f8                                
00064998 adrp      x8, #0xee000                                 
0006499c ldr       x1, [x8, #0x920]                             
000649a0 mov       x0, x25                                      
000649a4 mov       x2, x24                                      
000649a8 mov       w3, #3                                       
000649ac bl        #0xa4754                                      ; _objc_setAssociatedObject
000649b0 adrp      x8, #0xee000                                 
000649b4 ldr       x1, [x8, #0x840]                             
000649b8 mov       x0, x25                                      
000649bc mov       x2, x26                                      
000649c0 mov       w3, #1                                       
000649c4 bl        #0xa4754                                      ; _objc_setAssociatedObject
000649c8 adrp      x8, #0xee000                                 
000649cc ldr       x1, [x8, #0x848]                             
000649d0 mov       x0, x25                                      
000649d4 mov       x2, x28                                      
000649d8 mov       w3, #3                                       
000649dc bl        #0xa4754                                      ; _objc_setAssociatedObject
000649e0 adrp      x8, #0xee000                                 
000649e4 ldr       x1, [x8, #0x850]                             
000649e8 mov       x0, x25                                      
000649ec mov       x2, x27                                      
000649f0 mov       w3, #1                                       
000649f4 bl        #0xa4754                                      ; _objc_setAssociatedObject
000649f8 mov       x0, x28                                      
000649fc bl        #0xa46f4                                      ; _objc_release
00064a00 mov       x0, x27                                      
00064a04 bl        #0xa46f4                                      ; _objc_release
00064a08 mov       x0, x26                                      
00064a0c bl        #0xa46f4                                      ; _objc_release
00064a10 mov       x0, x25                                      
00064a14 bl        #0xa46f4                                      ; _objc_release
00064a18 mov       x0, x24                                      
00064a1c bl        #0xa46f4                                      ; _objc_release
00064a20 ldr       x0, [sp]                                     
00064a24 bl        #0xa46f4                                      ; _objc_release
00064a28 mov       x0, x22                                      
00064a2c bl        #0xa46f4                                      ; _objc_release
00064a30 ldr       x0, [sp, #8]                                 
00064a34 bl        #0xa46f4                                      ; _objc_release
00064a38 mov       x0, x19                                      
00064a3c bl        #0xa46f4                                      ; _objc_release
00064a40 mov       x0, x20                                      
00064a44 ldp       x29, x30, [sp, #0x60]                        
00064a48 ldp       x20, x19, [sp, #0x50]                        
00064a4c ldp       x22, x21, [sp, #0x40]                        
00064a50 ldp       x24, x23, [sp, #0x30]                        
00064a54 ldp       x26, x25, [sp, #0x20]                        
00064a58 ldp       x28, x27, [sp, #0x10]                        
00064a5c add       sp, sp, #0x70                                
00064a60 autibsp                                                
00064a64 eor       x16, x30, x30, lsl #1                        
00064a68 tbz       x16, #0x3e, #0x64a70                         
00064a6c brk       #0xc471                                      
00064a70 b         #0xa45e4                                      ; _objc_autoreleaseReturnValue
00064a74 mov       x0, x20                                      
00064a78 mov       w2, #1                                       
00064a7c bl        #0xadcc0                                      ; objc_msgSend$setModern:
00064a80 adrp      x8, #0xbd000                                 
00064a84 ldr       d0, [x8, #0xde8]                             
00064a88 mov       x0, x20                                      
00064a8c bl        #0xafa20                                      ; objc_msgSend$setWeight:
00064a90 mov       x8, #0x404e000000000000                      
00064a94 fmov      d0, x8                                       
00064a98 mov       x0, x20                                      
00064a9c bl        #0xaed80                                      ; objc_msgSend$setSoftness:
00064aa0 b         #0x64988                                     
