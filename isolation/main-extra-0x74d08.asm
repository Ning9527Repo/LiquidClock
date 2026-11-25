# arm64e unslid VA 0x74d08..0x74d58; FAT offset 0xfc000
00074d08 pacibsp                                                   
00074d0c stp       x29, x30, [sp, #-0x10]!                         
00074d10 mov       x29, sp                                         
00074d14 adrp      x0, #0xba000                                    
00074d18 add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00074d1c bl        #0xa4664                                         ; _objc_getClass
00074d20 adrp      x8, #0xe9000                                    
00074d24 ldr       x1, [x8, #0xd38]                                 ; 0xe9d38 | SEL notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:
00074d28 adrp      x3, #0xef000                                    
00074d2c add       x3, x3, #0x810                                   ; 0xef810
00074d30 adrp      x16, #0x74000                                   
00074d34 add       x16, x16, #0xd58                                 ; 0x74d58
00074d38 paciza    x16                                             
00074d3c mov       x2, x16                                         
00074d40 ldp       x29, x30, [sp], #0x10                           
00074d44 autibsp                                                   
00074d48 eor       x16, x30, x30, lsl #1                           
00074d4c tbz       x16, #0x3e, #0x74d54                            
00074d50 brk       #0xc471                                         
00074d54 b         #0xa4054                                         ; _MSHookMessageEx
