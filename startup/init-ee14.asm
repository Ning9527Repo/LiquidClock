# arm64e unslid VA 0xee14..0xef24; FAT offset 0xfc000
0000ee14 pacibsp                                                   
0000ee18 stp       x22, x21, [sp, #-0x30]!                         
0000ee1c stp       x20, x19, [sp, #0x10]                           
0000ee20 stp       x29, x30, [sp, #0x20]                           
0000ee24 add       x29, sp, #0x20                                  
0000ee28 adrp      x0, #0xb6000                                    
0000ee2c add       x0, x0, #0xb8a                                   ; 0xb6b8a | 'SBHLibraryCategoryPodBackgroundView'
0000ee30 bl        #0xa4664                                         ; _objc_getClass
0000ee34 mov       x19, x0                                         
0000ee38 adrp      x8, #0xeb000                                    
0000ee3c ldr       x20, [x8, #0xf60]                                ; 0xebf60 | SEL didMoveToWindow
0000ee40 adrp      x3, #0xee000                                    
0000ee44 add       x3, x3, #0xc38                                   ; 0xeec38
0000ee48 adrp      x16, #0xe000                                    
0000ee4c add       x16, x16, #0xf24                                 ; 0xef24
0000ee50 paciza    x16                                             
0000ee54 mov       x2, x16                                         
0000ee58 mov       x1, x20                                         
0000ee5c bl        #0xa4054                                         ; _MSHookMessageEx
0000ee60 adrp      x8, #0xeb000                                    
0000ee64 ldr       x21, [x8, #0xf00]                                ; 0xebf00 | SEL layoutSubviews
0000ee68 adrp      x3, #0xee000                                    
0000ee6c add       x3, x3, #0xc40                                   ; 0xeec40
0000ee70 adrp      x16, #0xe000                                    
0000ee74 add       x16, x16, #0xfa8                                 ; 0xefa8
0000ee78 paciza    x16                                             
0000ee7c mov       x2, x16                                         
0000ee80 mov       x0, x19                                         
0000ee84 mov       x1, x21                                         
0000ee88 bl        #0xa4054                                         ; _MSHookMessageEx
0000ee8c adrp      x8, #0xea000                                    
0000ee90 ldr       x1, [x8, #0x9c0]                                 ; 0xea9c0 | SEL setHidden:
0000ee94 adrp      x3, #0xee000                                    
0000ee98 add       x3, x3, #0xc48                                   ; 0xeec48
0000ee9c adrp      x16, #0xe000                                    
0000eea0 add       x16, x16, #0xfe8                                 ; 0xefe8
0000eea4 paciza    x16                                             
0000eea8 mov       x2, x16                                         
0000eeac mov       x0, x19                                         
0000eeb0 bl        #0xa4054                                         ; _MSHookMessageEx
0000eeb4 adrp      x0, #0xb6000                                    
0000eeb8 add       x0, x0, #0xbae                                   ; 0xb6bae | 'SBHSearchTextField'
0000eebc bl        #0xa4664                                         ; _objc_getClass
0000eec0 mov       x19, x0                                         
0000eec4 adrp      x3, #0xee000                                    
0000eec8 add       x3, x3, #0xc50                                   ; 0xeec50
0000eecc adrp      x16, #0xf000                                    
0000eed0 add       x16, x16, #0x4c                                  ; 0xf04c
0000eed4 paciza    x16                                             
0000eed8 mov       x2, x16                                         
0000eedc mov       x1, x20                                         
0000eee0 bl        #0xa4054                                         ; _MSHookMessageEx
0000eee4 adrp      x3, #0xee000                                    
0000eee8 add       x3, x3, #0xc58                                   ; 0xeec58
0000eeec adrp      x16, #0xf000                                    
0000eef0 add       x16, x16, #0x8c                                  ; 0xf08c
0000eef4 paciza    x16                                             
0000eef8 mov       x2, x16                                         
0000eefc mov       x0, x19                                         
0000ef00 mov       x1, x21                                         
0000ef04 ldp       x29, x30, [sp, #0x20]                           
0000ef08 ldp       x20, x19, [sp, #0x10]                           
0000ef0c ldp       x22, x21, [sp], #0x30                           
0000ef10 autibsp                                                   
0000ef14 eor       x16, x30, x30, lsl #1                           
0000ef18 tbz       x16, #0x3e, #0xef20                             
0000ef1c brk       #0xc471                                         
0000ef20 b         #0xa4054                                         ; _MSHookMessageEx
