# arm64e unslid VA 0xdce4..0xdebc; FAT offset 0xfc000
0000dce4 pacibsp                                                   
0000dce8 stp       x20, x19, [sp, #-0x20]!                         
0000dcec stp       x29, x30, [sp, #0x10]                           
0000dcf0 add       x29, sp, #0x10                                  
0000dcf4 adrp      x0, #0xb6000                                    
0000dcf8 add       x0, x0, #0xb20                                   ; 0xb6b20 | 'SBIconImageView'
0000dcfc bl        #0xa4664                                         ; _objc_getClass
0000dd00 mov       x19, x0                                         
0000dd04 adrp      x8, #0xeb000                                    
0000dd08 ldr       x1, [x8, #0xf60]                                 ; 0xebf60 | SEL didMoveToWindow
0000dd0c adrp      x3, #0xee000                                    
0000dd10 add       x3, x3, #0xbd0                                   ; 0xeebd0
0000dd14 adrp      x16, #0xd000                                    
0000dd18 add       x16, x16, #0xebc                                 ; 0xdebc
0000dd1c paciza    x16                                             
0000dd20 mov       x2, x16                                         
0000dd24 bl        #0xa4054                                         ; _MSHookMessageEx
0000dd28 adrp      x8, #0xeb000                                    
0000dd2c ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
0000dd30 adrp      x3, #0xee000                                    
0000dd34 add       x3, x3, #0xbd8                                   ; 0xeebd8
0000dd38 adrp      x16, #0xd000                                    
0000dd3c add       x16, x16, #0xefc                                 ; 0xdefc
0000dd40 paciza    x16                                             
0000dd44 mov       x2, x16                                         
0000dd48 mov       x0, x19                                         
0000dd4c bl        #0xa4054                                         ; _MSHookMessageEx
0000dd50 adrp      x0, #0xb6000                                    
0000dd54 add       x0, x0, #0xb30                                   ; 0xb6b30 | 'SBIconView'
0000dd58 bl        #0xa4664                                         ; _objc_getClass
0000dd5c mov       x19, x0                                         
0000dd60 adrp      x8, #0xeb000                                    
0000dd64 ldr       x1, [x8, #0xfa0]                                 ; 0xebfa0 | SEL setHighlighted:animated:
0000dd68 adrp      x3, #0xee000                                    
0000dd6c add       x3, x3, #0xbe0                                   ; 0xeebe0
0000dd70 adrp      x16, #0xd000                                    
0000dd74 add       x16, x16, #0xf3c                                 ; 0xdf3c
0000dd78 paciza    x16                                             
0000dd7c mov       x2, x16                                         
0000dd80 bl        #0xa4054                                         ; _MSHookMessageEx
0000dd84 adrp      x8, #0xeb000                                    
0000dd88 ldr       x1, [x8, #0xfa8]                                 ; 0xebfa8 | SEL setHighlighted:
0000dd8c adrp      x3, #0xee000                                    
0000dd90 add       x3, x3, #0xbe8                                   ; 0xeebe8
0000dd94 adrp      x16, #0xd000                                    
0000dd98 add       x16, x16, #0xf7c                                 ; 0xdf7c
0000dd9c paciza    x16                                             
0000dda0 mov       x2, x16                                         
0000dda4 mov       x0, x19                                         
0000dda8 bl        #0xa4054                                         ; _MSHookMessageEx
0000ddac adrp      x8, #0xeb000                                    
0000ddb0 ldr       x1, [x8, #0xfb0]                                 ; 0xebfb0 | SEL setTouchDown:
0000ddb4 adrp      x3, #0xee000                                    
0000ddb8 add       x3, x3, #0xbf0                                   ; 0xeebf0
0000ddbc adrp      x16, #0xd000                                    
0000ddc0 add       x16, x16, #0xfbc                                 ; 0xdfbc
0000ddc4 paciza    x16                                             
0000ddc8 mov       x2, x16                                         
0000ddcc mov       x0, x19                                         
0000ddd0 bl        #0xa4054                                         ; _MSHookMessageEx
0000ddd4 adrp      x8, #0xeb000                                    
0000ddd8 ldr       x1, [x8, #0xfb8]                                 ; 0xebfb8 | SEL setCrossfadeFraction:
0000dddc adrp      x3, #0xee000                                    
0000dde0 add       x3, x3, #0xbf8                                   ; 0xeebf8
0000dde4 adrp      x16, #0xd000                                    
0000dde8 add       x16, x16, #0xffc                                 ; 0xdffc
0000ddec paciza    x16                                             
0000ddf0 mov       x2, x16                                         
0000ddf4 mov       x0, x19                                         
0000ddf8 bl        #0xa4054                                         ; _MSHookMessageEx
0000ddfc adrp      x8, #0xeb000                                    
0000de00 ldr       x1, [x8, #0xfc0]                                 ; 0xebfc0 | SEL setMorphingFraction:
0000de04 adrp      x3, #0xee000                                    
0000de08 add       x3, x3, #0xc00                                   ; 0xeec00
0000de0c adrp      x16, #0xe000                                    
0000de10 add       x16, x16, #0x9c                                  ; 0xe09c
0000de14 paciza    x16                                             
0000de18 mov       x2, x16                                         
0000de1c mov       x0, x19                                         
0000de20 bl        #0xa4054                                         ; _MSHookMessageEx
0000de24 adrp      x8, #0xeb000                                    
0000de28 ldr       x1, [x8, #0xfc8]                                 ; 0xebfc8 | SEL setEditing:animated:
0000de2c adrp      x3, #0xee000                                    
0000de30 add       x3, x3, #0xc08                                   ; 0xeec08
0000de34 adrp      x16, #0xe000                                    
0000de38 add       x16, x16, #0x13c                                 ; 0xe13c
0000de3c paciza    x16                                             
0000de40 mov       x2, x16                                         
0000de44 mov       x0, x19                                         
0000de48 bl        #0xa4054                                         ; _MSHookMessageEx
0000de4c adrp      x8, #0xeb000                                    
0000de50 ldr       x1, [x8, #0xfd0]                                 ; 0xebfd0 | SEL setEditing:
0000de54 adrp      x3, #0xee000                                    
0000de58 add       x3, x3, #0xc10                                   ; 0xeec10
0000de5c adrp      x16, #0xe000                                    
0000de60 add       x16, x16, #0x17c                                 ; 0xe17c
0000de64 paciza    x16                                             
0000de68 mov       x2, x16                                         
0000de6c mov       x0, x19                                         
0000de70 bl        #0xa4054                                         ; _MSHookMessageEx
0000de74 adrp      x0, #0xb6000                                    
0000de78 add       x0, x0, #0xb3b                                   ; 0xb6b3b | 'SBHIconManager'
0000de7c bl        #0xa4664                                         ; _objc_getClass
0000de80 adrp      x8, #0xeb000                                    
0000de84 ldr       x1, [x8, #0xfd8]                                 ; 0xebfd8 | SEL iconTapped:
0000de88 adrp      x3, #0xee000                                    
0000de8c add       x3, x3, #0xc18                                   ; 0xeec18
0000de90 adrp      x16, #0xe000                                    
0000de94 add       x16, x16, #0x1bc                                 ; 0xe1bc
0000de98 paciza    x16                                             
0000de9c mov       x2, x16                                         
0000dea0 ldp       x29, x30, [sp, #0x10]                           
0000dea4 ldp       x20, x19, [sp], #0x20                           
0000dea8 autibsp                                                   
0000deac eor       x16, x30, x30, lsl #1                           
0000deb0 tbz       x16, #0x3e, #0xdeb8                             
0000deb4 brk       #0xc471                                         
0000deb8 b         #0xa4054                                         ; _MSHookMessageEx
