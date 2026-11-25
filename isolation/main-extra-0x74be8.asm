# arm64e unslid VA 0x74be8..0x74c38; FAT offset 0xfc000
00074be8 pacibsp                                                   
00074bec stp       x29, x30, [sp, #-0x10]!                         
00074bf0 mov       x29, sp                                         
00074bf4 adrp      x0, #0xba000                                    
00074bf8 add       x0, x0, #0x733                                   ; 0xba733 | 'CSComplicationContainerViewController'
00074bfc bl        #0xa4664                                         ; _objc_getClass
00074c00 adrp      x8, #0xec000                                    
00074c04 ldr       x1, [x8, #0x358]                                 ; 0xec358 | SEL setWidgetDescriptors:
00074c08 adrp      x3, #0xef000                                    
00074c0c add       x3, x3, #0x800                                   ; 0xef800
00074c10 adrp      x16, #0x74000                                   
00074c14 add       x16, x16, #0xc38                                 ; 0x74c38
00074c18 paciza    x16                                             
00074c1c mov       x2, x16                                         
00074c20 ldp       x29, x30, [sp], #0x10                           
00074c24 autibsp                                                   
00074c28 eor       x16, x30, x30, lsl #1                           
00074c2c tbz       x16, #0x3e, #0x74c34                            
00074c30 brk       #0xc471                                         
00074c34 b         #0xa4054                                         ; _MSHookMessageEx
