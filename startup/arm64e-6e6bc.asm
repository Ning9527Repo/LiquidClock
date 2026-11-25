# arm64e unslid VA 0x6e6bc..0x6e828; FAT offset 0xfc000
0006e6bc pacibsp                                                   
0006e6c0 sub       sp, sp, #0x120                                  
0006e6c4 stp       x24, x23, [sp, #0xe0]                           
0006e6c8 stp       x22, x21, [sp, #0xf0]                           
0006e6cc stp       x20, x19, [sp, #0x100]                          
0006e6d0 stp       x29, x30, [sp, #0x110]                          
0006e6d4 add       x29, sp, #0x110                                 
0006e6d8 adrp      x8, #0xd4000                                    
0006e6dc ldr       x8, [x8, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
0006e6e0 ldr       x8, [x8]                                         ; 0xd4000 | &___objc_personality_v0
0006e6e4 stur      x8, [x29, #-0x38]                               
0006e6e8 bl        #0xa6980                                         ; _objc_msgSend
0006e6ec adrp      x9, #0xef000                                    
0006e6f0 ldr       x8, [x9, #0x788]                                 ; 0xef788
0006e6f4 str       x0, [x9, #0x788]                                 ; 0xef788
0006e6f8 mov       x0, x8                                          
0006e6fc bl        #0xa46f4                                         ; _objc_release
0006e700 adrp      x8, #0xdc000                                    
0006e704 add       x8, x8, #0xd0                                    ; 0xdc0d0 | @'dylv.liquidass.clock.saved.dock.geometry'
0006e708 adrp      x9, #0xdc000                                    
0006e70c add       x9, x9, #0xf0                                    ; 0xdc0f0 | @'dylv.liquidass.clock.saved.dock.active.bottom'
0006e710 stp       x8, x9, [x29, #-0x48]                           
0006e714 adrp      x8, #0xec000                                    
0006e718 ldr       x0, [x8, #0x5c8]                                 ; 0xec5c8 | &_OBJC_CLASS_$_NSArray
0006e71c sub       x2, x29, #0x48                                  
0006e720 mov       w3, #2                                          
0006e724 bl        #0xa55a0                                         ; _objc_msgSend
0006e728 mov       x29, x29                                        
0006e72c bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
0006e730 mov       x20, x0                                         
0006e734 bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
0006e738 mov       x19, x0                                         
0006e73c movi      v0.2d, #0000000000000000                        
0006e740 stp       q0, q0, [sp]                                    
0006e744 stp       q0, q0, [sp, #0x20]                             
0006e748 mov       x0, x20                                         
0006e74c bl        #0xa4704                                         ; _objc_retain
0006e750 mov       x20, x0                                         
0006e754 mov       x2, sp                                          
0006e758 add       x3, sp, #0x48                                   
0006e75c mov       w4, #0x10                                       
0006e760 bl        #0xa6a20                                         ; _objc_msgSend
0006e764 cbz       x0, #0x6e7e4                                    
0006e768 mov       x21, x0                                         
0006e76c ldr       x8, [sp, #0x10]                                 
0006e770 ldr       x22, [x8]                                       
0006e774 mov       x23, #0                                         
0006e778 ldr       x8, [sp, #0x10]                                 
0006e77c ldr       x8, [x8]                                        
0006e780 cmp       x8, x22                                         
0006e784 b.eq      #0x6e790                                        
0006e788 mov       x0, x20                                         
0006e78c bl        #0xa4634                                         ; _objc_enumerationMutation
0006e790 ldr       x8, [sp, #8]                                    
0006e794 ldr       x3, [x8, x23, lsl #3]                           
0006e798 adrp      x16, #0x6e000                                   
0006e79c add       x16, x16, #0x828                                 ; 0x6e828
0006e7a0 paciza    x16                                             
0006e7a4 mov       x2, x16                                         
0006e7a8 mov       x0, x19                                         
0006e7ac mov       x1, #0                                          
0006e7b0 mov       x4, #0                                          
0006e7b4 mov       w5, #4                                          
0006e7b8 bl        #0xa3ab4                                         ; _CFNotificationCenterAddObserver
0006e7bc add       x23, x23, #1                                    
0006e7c0 cmp       x21, x23                                        
0006e7c4 b.ne      #0x6e778                                        
0006e7c8 mov       x2, sp                                          
0006e7cc add       x3, sp, #0x48                                   
0006e7d0 mov       x0, x20                                         
0006e7d4 mov       w4, #0x10                                       
0006e7d8 bl        #0xa6a20                                         ; _objc_msgSend
0006e7dc mov       x21, x0                                         
0006e7e0 cbnz      x0, #0x6e774                                    
0006e7e4 mov       x0, x20                                         
0006e7e8 bl        #0xa46f4                                         ; _objc_release
0006e7ec mov       x0, x20                                         
0006e7f0 bl        #0xa46f4                                         ; _objc_release
0006e7f4 ldur      x8, [x29, #-0x38]                               
0006e7f8 adrp      x9, #0xd4000                                    
0006e7fc ldr       x9, [x9, #0x938]                                 ; 0xd4938 | &___stack_chk_guard
0006e800 ldr       x9, [x9]                                         ; 0xd4000 | &___objc_personality_v0
0006e804 cmp       x9, x8                                          
0006e808 b.ne      #0x6e824                                        
0006e80c ldp       x29, x30, [sp, #0x110]                          
0006e810 ldp       x20, x19, [sp, #0x100]                          
0006e814 ldp       x22, x21, [sp, #0xf0]                           
0006e818 ldp       x24, x23, [sp, #0xe0]                           
0006e81c add       sp, sp, #0x120                                  
0006e820 retab                                                     
0006e824 bl        #0xa41d4                                         ; ___stack_chk_fail
