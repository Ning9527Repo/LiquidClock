# arm64e unslid VA 0x74c78..0x74cc8; FAT offset 0xfc000
00074c78 pacibsp                                                   
00074c7c stp       x29, x30, [sp, #-0x10]!                         
00074c80 mov       x29, sp                                         
00074c84 adrp      x0, #0xba000                                    
00074c88 add       x0, x0, #0x759                                   ; 0xba759 | 'CSWidgetGridViewController'
00074c8c bl        #0xa4664                                         ; _objc_getClass
00074c90 adrp      x8, #0xec000                                    
00074c94 ldr       x1, [x8, #0x360]                                 ; 0xec360 | SEL setComplicationDescriptors:iconLayout:
00074c98 adrp      x3, #0xef000                                    
00074c9c add       x3, x3, #0x808                                   ; 0xef808
00074ca0 adrp      x16, #0x74000                                   
00074ca4 add       x16, x16, #0xcc8                                 ; 0x74cc8
00074ca8 paciza    x16                                             
00074cac mov       x2, x16                                         
00074cb0 ldp       x29, x30, [sp], #0x10                           
00074cb4 autibsp                                                   
00074cb8 eor       x16, x30, x30, lsl #1                           
00074cbc tbz       x16, #0x3e, #0x74cc4                            
00074cc0 brk       #0xc471                                         
00074cc4 b         #0xa4054                                         ; _MSHookMessageEx
