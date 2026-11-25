# arm64e unslid VA 0x75114..0x75164; FAT offset 0xfc000
00075114 pacibsp                                                   
00075118 stp       x29, x30, [sp, #-0x10]!                         
0007511c mov       x29, sp                                         
00075120 adrp      x0, #0xba000                                    
00075124 add       x0, x0, #0x7bf                                   ; 0xba7bf | 'PBUIPosterViewController'
00075128 bl        #0xa4664                                         ; _objc_getClass
0007512c adrp      x8, #0xec000                                    
00075130 ldr       x1, [x8, #0x370]                                 ; 0xec370 | SEL scene:willUpdateSettings:withTransitionContext:
00075134 adrp      x3, #0xef000                                    
00075138 add       x3, x3, #0x830                                   ; 0xef830
0007513c adrp      x16, #0x75000                                   
00075140 add       x16, x16, #0x164                                 ; 0x75164
00075144 paciza    x16                                             
00075148 mov       x2, x16                                         
0007514c ldp       x29, x30, [sp], #0x10                           
00075150 autibsp                                                   
00075154 eor       x16, x30, x30, lsl #1                           
00075158 tbz       x16, #0x3e, #0x75160                            
0007515c brk       #0xc471                                         
00075160 b         #0xa4054                                         ; _MSHookMessageEx
