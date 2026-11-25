; font-edit-weight arm64e unslid VA [0x6a1cc,0x6a7e0)
0006a1cc pacibsp                                                
0006a1d0 sub       sp, sp, #0xe0                                
0006a1d4 stp       d9, d8, [sp, #0x80]                          
0006a1d8 stp       x26, x25, [sp, #0x90]                        
0006a1dc stp       x24, x23, [sp, #0xa0]                        
0006a1e0 stp       x22, x21, [sp, #0xb0]                        
0006a1e4 stp       x20, x19, [sp, #0xc0]                        
0006a1e8 stp       x29, x30, [sp, #0xd0]                        
0006a1ec add       x29, sp, #0xd0                               
0006a1f0 mov       x20, x0                                      
0006a1f4 mov       x0, x2                                       
0006a1f8 bl        #0xa4704                                      ; _objc_retain
0006a1fc mov       x19, x0                                      
0006a200 mov       x0, x20                                      
0006a204 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
0006a208 mov       x29, x29                                     
0006a20c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a210 mov       x21, x0                                      
0006a214 cmp       x0, x19                                      
0006a218 b.eq      #0x6a230                                     
0006a21c mov       x0, x20                                      
0006a220 bl        #0xafe80                                      ; objc_msgSend$slider
0006a224 mov       x29, x29                                     
0006a228 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a22c b         #0x6a240                                     
0006a230 mov       x0, x20                                      
0006a234 bl        #0xaff00                                      ; objc_msgSend$softnessSlider
0006a238 mov       x29, x29                                     
0006a23c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a240 mov       x22, x0                                      
0006a244 mov       x0, x21                                      
0006a248 bl        #0xa46f4                                      ; _objc_release
0006a24c adrp      x8, #0xec000                                 
0006a250 ldr       x21, [x8, #0x508]                             ; &_OBJC_CLASS_$_UIAlertController
0006a254 mov       x0, x20                                      
0006a258 bl        #0xaff20                                      ; objc_msgSend$softnessValueButton
0006a25c mov       x29, x29                                     
0006a260 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a264 mov       x23, x0                                      
0006a268 adrp      x8, #0xdb000                                 
0006a26c add       x8, x8, #0xd30                                ; @'Weight'
0006a270 adrp      x9, #0xdb000                                 
0006a274 add       x9, x9, #0xd90                                ; @'Softness'
0006a278 cmp       x0, x19                                      
0006a27c csel      x24, x9, x8, eq                              
0006a280 adrp      x8, #0xec000                                 
0006a284 ldr       x25, [x8, #0x518]                             ; &_OBJC_CLASS_$_NSString
0006a288 mov       x0, x22                                      
0006a28c bl        #0xa9ce0                                      ; objc_msgSend$minimumValue
0006a290 fcvt      d8, s0                                       
0006a294 mov       x0, x22                                      
0006a298 bl        #0xa9ba0                                      ; objc_msgSend$maximumValue
0006a29c fcvt      d0, s0                                       
0006a2a0 stp       d8, d0, [sp]                                 
0006a2a4 adrp      x2, #0xdb000                                 
0006a2a8 add       x2, x2, #0xe10                                ; @'Enter a value from %.0f to %.0f.'
0006a2ac mov       x0, x25                                      
0006a2b0 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
0006a2b4 mov       x29, x29                                     
0006a2b8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a2bc mov       x25, x0                                      
0006a2c0 mov       x0, x21                                      
0006a2c4 mov       x2, x24                                      
0006a2c8 mov       x3, x25                                      
0006a2cc mov       w4, #1                                       
0006a2d0 bl        #0xa50c0                                      ; objc_msgSend$alertControllerWithTitle:message:preferredStyle:
0006a2d4 mov       x29, x29                                     
0006a2d8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a2dc mov       x21, x0                                      
0006a2e0 mov       x0, x25                                      
0006a2e4 bl        #0xa46f4                                      ; _objc_release
0006a2e8 mov       x0, x23                                      
0006a2ec bl        #0xa46f4                                      ; _objc_release
0006a2f0 add       x8, sp, #0x58                                
0006a2f4 adrp      x16, #0xd4000                                
0006a2f8 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006a2fc mov       x17, x8                                      
0006a300 movk      x17, #0x6ae1, lsl #48                        
0006a304 pacda     x16, x17                                     
0006a308 str       x16, [sp, #0x58]                             
0006a30c adrp      x9, #0xbd000                                 
0006a310 ldr       d8, [x9, #0x268]                             
0006a314 str       d8, [sp, #0x60]                              
0006a318 add       x8, x8, #0x10                                
0006a31c adrp      x16, #0x6a000                                
0006a320 add       x16, x16, #0x508                             
0006a324 pacia     x16, x8                                      
0006a328 adrp      x8, #0xd5000                                 
0006a32c add       x8, x8, #0xb68                               
0006a330 stp       x16, x8, [sp, #0x68]                         
0006a334 mov       x0, x22                                      
0006a338 bl        #0xa4704                                      ; _objc_retain
0006a33c mov       x22, x0                                      
0006a340 str       x0, [sp, #0x78]                              
0006a344 add       x2, sp, #0x58                                
0006a348 mov       x0, x21                                      
0006a34c bl        #0xa4fe0                                      ; objc_msgSend$addTextFieldWithConfigurationHandler:
0006a350 adrp      x24, #0xec000                                
0006a354 ldr       x0, [x24, #0x510]                             ; &_OBJC_CLASS_$_UIAlertAction
0006a358 adrp      x2, #0xdb000                                 
0006a35c add       x2, x2, #0xe30                                ; @'Cancel'
0006a360 mov       w3, #1                                       
0006a364 mov       x4, #0                                       
0006a368 bl        #0xa4cc0                                      ; objc_msgSend$actionWithTitle:style:handler:
0006a36c mov       x29, x29                                     
0006a370 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a374 mov       x23, x0                                      
0006a378 mov       x0, x21                                      
0006a37c mov       x2, x23                                      
0006a380 bl        #0xa4da0                                      ; objc_msgSend$addAction:
0006a384 mov       x0, x23                                      
0006a388 bl        #0xa46f4                                      ; _objc_release
0006a38c add       x0, sp, #0x50                                
0006a390 mov       x1, x20                                      
0006a394 bl        #0xa4674                                      ; _objc_initWeak
0006a398 add       x0, sp, #0x48                                
0006a39c mov       x1, x21                                      
0006a3a0 bl        #0xa4674                                      ; _objc_initWeak
0006a3a4 ldr       x23, [x24, #0x510]                            ; &_OBJC_CLASS_$_UIAlertAction
0006a3a8 add       x24, sp, #0x10                               
0006a3ac adrp      x16, #0xd4000                                
0006a3b0 ldr       x16, [x16, #0x930]                            ; &__NSConcreteStackBlock
0006a3b4 mov       x17, x24                                     
0006a3b8 movk      x17, #0x6ae1, lsl #48                        
0006a3bc pacda     x16, x17                                     
0006a3c0 str       x16, [sp, #0x10]                             
0006a3c4 str       d8, [sp, #0x18]                              
0006a3c8 add       x8, x24, #0x10                                ; SEL _loadGesturesMenuItems
0006a3cc adrp      x16, #0x6a000                                
0006a3d0 add       x16, x16, #0x5d0                             
0006a3d4 pacia     x16, x8                                      
0006a3d8 adrp      x8, #0xd5000                                 
0006a3dc add       x8, x8, #0xb98                               
0006a3e0 stp       x16, x8, [sp, #0x20]                         
0006a3e4 add       x0, x24, #0x28                                ; SEL _loadHardwareMenuItems
0006a3e8 add       x1, sp, #0x50                                
0006a3ec bl        #0xa4604                                      ; _objc_copyWeak
0006a3f0 add       x0, x24, #0x30                                ; SEL _loadFavoritesMenuItems
0006a3f4 add       x1, sp, #0x48                                
0006a3f8 bl        #0xa4604                                      ; _objc_copyWeak
0006a3fc mov       x0, x22                                      
0006a400 bl        #0xa4704                                      ; _objc_retain
0006a404 mov       x22, x0                                      
0006a408 str       x0, [sp, #0x30]                              
0006a40c adrp      x2, #0xdb000                                 
0006a410 add       x2, x2, #0xe50                                ; @'Apply'
0006a414 add       x4, sp, #0x10                                
0006a418 mov       x0, x23                                      
0006a41c mov       x3, #0                                       
0006a420 bl        #0xa4cc0                                      ; objc_msgSend$actionWithTitle:style:handler:
0006a424 mov       x29, x29                                     
0006a428 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a42c mov       x23, x0                                      
0006a430 mov       x0, x21                                      
0006a434 mov       x2, x23                                      
0006a438 bl        #0xa4da0                                      ; objc_msgSend$addAction:
0006a43c mov       x0, x23                                      
0006a440 bl        #0xa46f4                                      ; _objc_release
0006a444 mov       x0, x20                                      
0006a448 bl        #0xaa8a0                                      ; objc_msgSend$picker
0006a44c mov       x29, x29                                     
0006a450 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a454 mov       x20, x0                                      
0006a458 mov       x2, x21                                      
0006a45c mov       w3, #1                                       
0006a460 mov       x4, #0                                       
0006a464 bl        #0xaab80                                      ; objc_msgSend$presentViewController:animated:completion:
0006a468 mov       x0, x20                                      
0006a46c bl        #0xa46f4                                      ; _objc_release
0006a470 ldr       x0, [sp, #0x30]                              
0006a474 bl        #0xa46f4                                      ; _objc_release
0006a478 add       x0, x24, #0x30                                ; SEL _loadFavoritesMenuItems
0006a47c bl        #0xa4614                                      ; _objc_destroyWeak
0006a480 add       x0, x24, #0x28                                ; SEL _loadHardwareMenuItems
0006a484 bl        #0xa4614                                      ; _objc_destroyWeak
0006a488 add       x0, sp, #0x48                                
0006a48c bl        #0xa4614                                      ; _objc_destroyWeak
0006a490 add       x0, sp, #0x50                                
0006a494 bl        #0xa4614                                      ; _objc_destroyWeak
0006a498 ldr       x0, [sp, #0x78]                              
0006a49c bl        #0xa46f4                                      ; _objc_release
0006a4a0 mov       x0, x21                                      
0006a4a4 bl        #0xa46f4                                      ; _objc_release
0006a4a8 mov       x0, x22                                      
0006a4ac bl        #0xa46f4                                      ; _objc_release
0006a4b0 mov       x0, x19                                      
0006a4b4 bl        #0xa46f4                                      ; _objc_release
0006a4b8 ldp       x29, x30, [sp, #0xd0]                        
0006a4bc ldp       x20, x19, [sp, #0xc0]                        
0006a4c0 ldp       x22, x21, [sp, #0xb0]                        
0006a4c4 ldp       x24, x23, [sp, #0xa0]                        
0006a4c8 ldp       x26, x25, [sp, #0x90]                        
0006a4cc ldp       d9, d8, [sp, #0x80]                          
0006a4d0 add       sp, sp, #0xe0                                
0006a4d4 retab                                                  
0006a4d8 b         #0x6a4dc                                     
0006a4dc mov       x19, x0                                      
0006a4e0 add       x0, x24, #0x30                                ; SEL _loadFavoritesMenuItems
0006a4e4 bl        #0xa4614                                      ; _objc_destroyWeak
0006a4e8 add       x0, x24, #0x28                                ; SEL _loadHardwareMenuItems
0006a4ec bl        #0xa4614                                      ; _objc_destroyWeak
0006a4f0 add       x0, sp, #0x48                                
0006a4f4 bl        #0xa4614                                      ; _objc_destroyWeak
0006a4f8 add       x0, sp, #0x50                                
0006a4fc bl        #0xa4614                                      ; _objc_destroyWeak
0006a500 mov       x0, x19                                      
0006a504 bl        #0xa4194                                      ; __Unwind_Resume
0006a508 pacibsp                                                
0006a50c sub       sp, sp, #0x40                                
0006a510 stp       x22, x21, [sp, #0x10]                        
0006a514 stp       x20, x19, [sp, #0x20]                        
0006a518 stp       x29, x30, [sp, #0x30]                        
0006a51c add       x29, sp, #0x30                               
0006a520 mov       x19, x0                                      
0006a524 mov       x0, x1                                       
0006a528 bl        #0xa4704                                      ; _objc_retain
0006a52c mov       x20, x0                                      
0006a530 mov       w2, #8                                       
0006a534 bl        #0xad540                                      ; objc_msgSend$setKeyboardType:
0006a538 adrp      x8, #0xec000                                 
0006a53c ldr       x21, [x8, #0x518]                             ; &_OBJC_CLASS_$_NSString
0006a540 ldr       x0, [x19, #0x20]                             
0006a544 bl        #0xb16c0                                      ; objc_msgSend$value
0006a548 fcvt      d0, s0                                       
0006a54c str       d0, [sp]                                     
0006a550 adrp      x2, #0xdb000                                 
0006a554 add       x2, x2, #0xdf0                                ; @'%.0f'
0006a558 mov       x0, x21                                      
0006a55c bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
0006a560 mov       x29, x29                                     
0006a564 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a568 mov       x21, x0                                      
0006a56c mov       x0, x20                                      
0006a570 mov       x2, x21                                      
0006a574 bl        #0xaf3c0                                      ; objc_msgSend$setText:
0006a578 mov       x0, x21                                      
0006a57c bl        #0xa46f4                                      ; _objc_release
0006a580 ldr       x0, [x19, #0x20]                             
0006a584 bl        #0xa4c40                                      ; objc_msgSend$accessibilityLabel
0006a588 mov       x29, x29                                     
0006a58c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a590 mov       x19, x0                                      
0006a594 mov       x0, x20                                      
0006a598 mov       x2, x19                                      
0006a59c bl        #0xabb40                                      ; objc_msgSend$setAccessibilityLabel:
0006a5a0 mov       x0, x20                                      
0006a5a4 bl        #0xa46f4                                      ; _objc_release
0006a5a8 mov       x0, x19                                      
0006a5ac ldp       x29, x30, [sp, #0x30]                        
0006a5b0 ldp       x20, x19, [sp, #0x20]                        
0006a5b4 ldp       x22, x21, [sp, #0x10]                        
0006a5b8 add       sp, sp, #0x40                                
0006a5bc autibsp                                                
0006a5c0 eor       x16, x30, x30, lsl #1                        
0006a5c4 tbz       x16, #0x3e, #0x6a5cc                         
0006a5c8 brk       #0xc471                                      
0006a5cc b         #0xa46f4                                      ; _objc_release
0006a5d0 pacibsp                                                
0006a5d4 stp       d9, d8, [sp, #-0x60]!                        
0006a5d8 stp       x26, x25, [sp, #0x10]                        
0006a5dc stp       x24, x23, [sp, #0x20]                        
0006a5e0 stp       x22, x21, [sp, #0x30]                        
0006a5e4 stp       x20, x19, [sp, #0x40]                        
0006a5e8 stp       x29, x30, [sp, #0x50]                        
0006a5ec add       x29, sp, #0x50                               
0006a5f0 mov       x20, x0                                      
0006a5f4 add       x0, x0, #0x28                                
0006a5f8 bl        #0xa4684                                      ; _objc_loadWeakRetained
0006a5fc mov       x19, x0                                      
0006a600 adrp      x8, #0xec000                                 
0006a604 ldr       x0, [x8, #0x7e0]                              ; &_OBJC_CLASS_$_NSNumberFormatter
0006a608 bl        #0xa46d4                                      ; _objc_opt_new
0006a60c mov       x21, x0                                      
0006a610 mov       w2, #1                                       
0006a614 bl        #0xade80                                      ; objc_msgSend$setNumberStyle:
0006a618 add       x0, x20, #0x30                               
0006a61c bl        #0xa4684                                      ; _objc_loadWeakRetained
0006a620 mov       x23, x0                                      
0006a624 bl        #0xb0c60                                      ; objc_msgSend$textFields
0006a628 mov       x29, x29                                     
0006a62c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a630 mov       x24, x0                                      
0006a634 bl        #0xa78a0                                      ; objc_msgSend$firstObject
0006a638 mov       x29, x29                                     
0006a63c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a640 mov       x25, x0                                      
0006a644 bl        #0xb0c00                                      ; objc_msgSend$text
0006a648 mov       x29, x29                                     
0006a64c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a650 mov       x26, x0                                      
0006a654 mov       x0, x21                                      
0006a658 mov       x2, x26                                      
0006a65c bl        #0xaa060                                      ; objc_msgSend$numberFromString:
0006a660 mov       x29, x29                                     
0006a664 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0006a668 mov       x22, x0                                      
0006a66c mov       x0, x26                                      
0006a670 bl        #0xa46f4                                      ; _objc_release
0006a674 mov       x0, x25                                      
0006a678 bl        #0xa46f4                                      ; _objc_release
0006a67c mov       x0, x24                                      
0006a680 bl        #0xa46f4                                      ; _objc_release
0006a684 mov       x0, x23                                      
0006a688 bl        #0xa46f4                                      ; _objc_release
0006a68c cbz       x19, #0x6a70c                                
0006a690 cbz       x22, #0x6a70c                                
0006a694 mov       x0, x22                                      
0006a698 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006a69c fmov      x8, d0                                       
0006a6a0 and       x8, x8, #0x7fffffffffffffff                  
0006a6a4 mov       x9, #0x7fefffffffffffff                      
0006a6a8 cmp       x8, x9                                       
0006a6ac b.gt      #0x6a70c                                     
0006a6b0 ldr       x0, [x20, #0x20]                             
0006a6b4 bl        #0xa9ba0                                      ; objc_msgSend$maximumValue
0006a6b8 fmov      s8, s0                                       
0006a6bc ldr       x0, [x20, #0x20]                             
0006a6c0 bl        #0xa9ce0                                      ; objc_msgSend$minimumValue
0006a6c4 fmov      s9, s0                                       
0006a6c8 mov       x0, x22                                      
0006a6cc bl        #0xa71e0                                      ; objc_msgSend$doubleValue
0006a6d0 fcvt      d1, s9                                       
0006a6d4 fcmp      d0, d1                                       
0006a6d8 fcsel     d0, d0, d1, gt                               
0006a6dc fcvt      d1, s8                                       
0006a6e0 fcvt      s2, d0                                       
0006a6e4 fcmp      d0, d1                                       
0006a6e8 fcsel     s0, s8, s2, gt                               
0006a6ec ldr       x0, [x20, #0x20]                             
0006a6f0 bl        #0xaf8a0                                      ; objc_msgSend$setValue:
0006a6f4 ldr       x2, [x20, #0x20]                             
0006a6f8 mov       x0, x19                                      
0006a6fc bl        #0xa5e40                                      ; objc_msgSend$changeWeight:
0006a700 ldr       x2, [x20, #0x20]                             
0006a704 mov       x0, x19                                      
0006a708 bl        #0xab7e0                                      ; objc_msgSend$saveWeight:
0006a70c mov       x0, x22                                      
0006a710 bl        #0xa46f4                                      ; _objc_release
0006a714 mov       x0, x21                                      
0006a718 bl        #0xa46f4                                      ; _objc_release
0006a71c mov       x0, x19                                      
0006a720 ldp       x29, x30, [sp, #0x50]                        
0006a724 ldp       x20, x19, [sp, #0x40]                        
0006a728 ldp       x22, x21, [sp, #0x30]                        
0006a72c ldp       x24, x23, [sp, #0x20]                        
0006a730 ldp       x26, x25, [sp, #0x10]                        
0006a734 ldp       d9, d8, [sp], #0x60                          
0006a738 autibsp                                                
0006a73c eor       x16, x30, x30, lsl #1                        
0006a740 tbz       x16, #0x3e, #0x6a748                         
0006a744 brk       #0xc471                                      
0006a748 b         #0xa46f4                                      ; _objc_release
0006a74c pacibsp                                                
0006a750 stp       x20, x19, [sp, #-0x20]!                      
0006a754 stp       x29, x30, [sp, #0x10]                        
0006a758 add       x29, sp, #0x10                               
0006a75c mov       x19, x1                                      
0006a760 mov       x20, x0                                      
0006a764 ldr       x0, [x1, #0x20]                              
0006a768 bl        #0xa4704                                      ; _objc_retain
0006a76c add       x0, x20, #0x28                               
0006a770 add       x1, x19, #0x28                               
0006a774 bl        #0xa4604                                      ; _objc_copyWeak
0006a778 add       x0, x20, #0x30                               
0006a77c add       x1, x19, #0x30                               
0006a780 ldp       x29, x30, [sp, #0x10]                        
0006a784 ldp       x20, x19, [sp], #0x20                        
0006a788 autibsp                                                
0006a78c eor       x16, x30, x30, lsl #1                        
0006a790 tbz       x16, #0x3e, #0x6a798                         
0006a794 brk       #0xc471                                      
0006a798 b         #0xa4604                                      ; _objc_copyWeak
0006a79c pacibsp                                                
0006a7a0 stp       x20, x19, [sp, #-0x20]!                      
0006a7a4 stp       x29, x30, [sp, #0x10]                        
0006a7a8 add       x29, sp, #0x10                               
0006a7ac mov       x19, x0                                      
0006a7b0 add       x0, x0, #0x30                                
0006a7b4 bl        #0xa4614                                      ; _objc_destroyWeak
0006a7b8 add       x0, x19, #0x28                               
0006a7bc bl        #0xa4614                                      ; _objc_destroyWeak
0006a7c0 ldr       x0, [x19, #0x20]                             
0006a7c4 ldp       x29, x30, [sp, #0x10]                        
0006a7c8 ldp       x20, x19, [sp], #0x20                        
0006a7cc autibsp                                                
0006a7d0 eor       x16, x30, x30, lsl #1                        
0006a7d4 tbz       x16, #0x3e, #0x6a7dc                         
0006a7d8 brk       #0xc471                                      
0006a7dc b         #0xa46f4                                      ; _objc_release
