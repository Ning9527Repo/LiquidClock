# arm64e unslid VA 0x44ddc..0x44e60; FAT offset 0xfc000
00044ddc pacibsp                                                   
00044de0 stp       x20, x19, [sp, #-0x20]!                         
00044de4 stp       x29, x30, [sp, #0x10]                           
00044de8 add       x29, sp, #0x10                                  
00044dec adrp      x0, #0xb6000                                    
00044df0 add       x0, x0, #0xf78                                   ; 0xb6f78 | 'UIVisualEffectView'
00044df4 bl        #0xa4664                                         ; _objc_getClass
00044df8 mov       x19, x0                                         
00044dfc adrp      x8, #0xeb000                                    
00044e00 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
00044e04 adrp      x3, #0xef000                                    
00044e08 add       x3, x3, #0x4f8                                   ; 0xef4f8
00044e0c adrp      x16, #0x44000                                   
00044e10 add       x16, x16, #0xe60                                 ; 0x44e60
00044e14 paciza    x16                                             
00044e18 mov       x2, x16                                         
00044e1c bl        #0xa4054                                         ; _MSHookMessageEx
00044e20 adrp      x8, #0xeb000                                    
00044e24 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
00044e28 adrp      x3, #0xef000                                    
00044e2c add       x3, x3, #0x500                                   ; 0xef500
00044e30 adrp      x16, #0x44000                                   
00044e34 add       x16, x16, #0xee0                                 ; 0x44ee0
00044e38 paciza    x16                                             
00044e3c mov       x2, x16                                         
00044e40 mov       x0, x19                                         
00044e44 ldp       x29, x30, [sp, #0x10]                           
00044e48 ldp       x20, x19, [sp], #0x20                           
00044e4c autibsp                                                   
00044e50 eor       x16, x30, x30, lsl #1                           
00044e54 tbz       x16, #0x3e, #0x44e5c                            
00044e58 brk       #0xc471                                         
00044e5c b         #0xa4054                                         ; _MSHookMessageEx
