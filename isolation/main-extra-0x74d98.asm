# arm64e unslid VA 0x74d98..0x74de8; FAT offset 0xfc000
00074d98 pacibsp                                                   
00074d9c stp       x29, x30, [sp, #-0x10]!                         
00074da0 mov       x29, sp                                         
00074da4 adrp      x0, #0xba000                                    
00074da8 add       x0, x0, #0x774                                   ; 0xba774 | 'CSCombinedListViewController'
00074dac bl        #0xa4664                                         ; _objc_getClass
00074db0 adrp      x8, #0xe9000                                    
00074db4 ldr       x1, [x8, #0xd40]                                 ; 0xe9d40 | SEL notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:forOrientation:
00074db8 adrp      x3, #0xef000                                    
00074dbc add       x3, x3, #0x818                                   ; 0xef818
00074dc0 adrp      x16, #0x74000                                   
00074dc4 add       x16, x16, #0xde8                                 ; 0x74de8
00074dc8 paciza    x16                                             
00074dcc mov       x2, x16                                         
00074dd0 ldp       x29, x30, [sp], #0x10                           
00074dd4 autibsp                                                   
00074dd8 eor       x16, x30, x30, lsl #1                           
00074ddc tbz       x16, #0x3e, #0x74de4                            
00074de0 brk       #0xc471                                         
00074de4 b         #0xa4054                                         ; _MSHookMessageEx
