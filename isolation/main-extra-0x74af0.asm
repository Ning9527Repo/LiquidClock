# arm64e unslid VA 0x74af0..0x74b40; FAT offset 0xfc000
00074af0 pacibsp                                                   
00074af4 stp       x29, x30, [sp, #-0x10]!                         
00074af8 mov       x29, sp                                         
00074afc adrp      x0, #0xba000                                    
00074b00 add       x0, x0, #0x5bc                                   ; 0xba5bc | 'NCNotificationStructuredListView'
00074b04 bl        #0xa4664                                         ; _objc_getClass
00074b08 adrp      x8, #0xeb000                                    
00074b0c ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
00074b10 adrp      x3, #0xef000                                    
00074b14 add       x3, x3, #0x7f8                                   ; 0xef7f8
00074b18 adrp      x16, #0x74000                                   
00074b1c add       x16, x16, #0xb40                                 ; 0x74b40
00074b20 paciza    x16                                             
00074b24 mov       x2, x16                                         
00074b28 ldp       x29, x30, [sp], #0x10                           
00074b2c autibsp                                                   
00074b30 eor       x16, x30, x30, lsl #1                           
00074b34 tbz       x16, #0x3e, #0x74b3c                            
00074b38 brk       #0xc471                                         
00074b3c b         #0xa4054                                         ; _MSHookMessageEx
