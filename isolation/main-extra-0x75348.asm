# arm64e unslid VA 0x75348..0x753c8; FAT offset 0xfc000
00075348 pacibsp                                                   
0007534c stp       x29, x30, [sp, #-0x10]!                         
00075350 mov       x29, sp                                         
00075354 adrp      x0, #0xba000                                    
00075358 add       x0, x0, #0x575                                   ; 0xba575 | 'CSProminentLayoutController'
0007535c bl        #0xa4664                                         ; _objc_getClass
00075360 adrp      x8, #0xec000                                    
00075364 ldr       x1, [x8, #0x2f0]                                 ; 0xec2f0 | SEL _frameForElement:withBoundingRect:variant:
00075368 adrp      x3, #0xef000                                    
0007536c add       x3, x3, #0x848                                   ; 0xef848
00075370 adrp      x16, #0x75000                                   
00075374 add       x16, x16, #0x3c8                                 ; 0x753c8
00075378 paciza    x16                                             
0007537c mov       x2, x16                                         
00075380 bl        #0xa4054                                         ; _MSHookMessageEx
00075384 adrp      x0, #0xba000                                    
00075388 add       x0, x0, #0x6bb                                   ; 0xba6bb | 'PRComplicationContainerViewController'
0007538c bl        #0xa4664                                         ; _objc_getClass
00075390 adrp      x8, #0xec000                                    
00075394 ldr       x1, [x8, #0xe0]                                  ; 0xec0e0 | SEL viewDidLoad
00075398 adrp      x3, #0xef000                                    
0007539c add       x3, x3, #0x850                                   ; 0xef850
000753a0 adrp      x16, #0x75000                                   
000753a4 add       x16, x16, #0x458                                 ; 0x75458
000753a8 paciza    x16                                             
000753ac mov       x2, x16                                         
000753b0 ldp       x29, x30, [sp], #0x10                           
000753b4 autibsp                                                   
000753b8 eor       x16, x30, x30, lsl #1                           
000753bc tbz       x16, #0x3e, #0x753c4                            
000753c0 brk       #0xc471                                         
000753c4 b         #0xa4054                                         ; _MSHookMessageEx
