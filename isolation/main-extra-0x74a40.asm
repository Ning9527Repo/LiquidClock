# arm64e unslid VA 0x74a40..0x74a90; FAT offset 0xfc000
00074a40 pacibsp                                                   
00074a44 stp       x29, x30, [sp, #-0x10]!                         
00074a48 mov       x29, sp                                         
00074a4c adrp      x0, #0xb8000                                    
00074a50 add       x0, x0, #0xf60                                   ; 0xb8f60 | 'NCNotificationListView'
00074a54 bl        #0xa4664                                         ; _objc_getClass
00074a58 adrp      x8, #0xec000                                    
00074a5c ldr       x1, [x8, #0x350]                                 ; 0xec350 | SEL _layoutOverlayFooterViewIfNecessary
00074a60 adrp      x3, #0xef000                                    
00074a64 add       x3, x3, #0x7f0                                   ; 0xef7f0
00074a68 adrp      x16, #0x74000                                   
00074a6c add       x16, x16, #0xa90                                 ; 0x74a90
00074a70 paciza    x16                                             
00074a74 mov       x2, x16                                         
00074a78 ldp       x29, x30, [sp], #0x10                           
00074a7c autibsp                                                   
00074a80 eor       x16, x30, x30, lsl #1                           
00074a84 tbz       x16, #0x3e, #0x74a8c                            
00074a88 brk       #0xc471                                         
00074a8c b         #0xa4054                                         ; _MSHookMessageEx
