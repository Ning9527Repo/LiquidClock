; prefs arm64e unslid VA [0x274d0,0x27624); slice_offset=0xa0000
000274d0 pacibsp                                                
000274d4 sub       sp, sp, #0x50                                
000274d8 stp       x22, x21, [sp, #0x20]                        
000274dc stp       x20, x19, [sp, #0x30]                        
000274e0 stp       x29, x30, [sp, #0x40]                        
000274e4 add       x29, sp, #0x40                               
000274e8 mov       x20, x1                                      
000274ec adrp      x8, #0x78000                                 
000274f0 ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
000274f4 ldr       x8, [x8]                                      ; &___objc_personality_v0
000274f8 str       x8, [sp, #0x18]                              
000274fc bl        #0x58e14                                      ; _objc_retain
00027500 mov       x19, x0                                      
00027504 mov       x0, x20                                      
00027508 bl        #0x58e14                                      ; _objc_retain
0002750c mov       x20, x0                                      
00027510 adrp      x8, #0x8c000                                 
00027514 ldr       x8, [x8, #0xf10]                             
00027518 cmn       x8, #1                                       
0002751c b.ne      #0x27618                                     
00027520 adrp      x2, #0x7d000                                 
00027524 add       x2, x2, #0xc50                                ; @'DispersionStrength'
00027528 mov       x0, x19                                      
0002752c bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
00027530 cbz       w0, #0x27554                                 
00027534 adrp      x2, #0x7d000                                 
00027538 add       x2, x2, #0x950                                ; @'CustomViews'
0002753c mov       x0, x20                                      
00027540 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
00027544 tbz       w0, #0, #0x27570                             
00027548 adrp      x21, #0x81000                                
0002754c add       x21, x21, #0x9c8                              ; &_OBJC_CLASS_$_NSConstantArray
00027550 b         #0x275c8                                     
00027554 adrp      x8, #0x8c000                                 
00027558 ldr       x0, [x8, #0xf08]                             
0002755c mov       x2, x19                                      
00027560 bl        #0x5c9e0                                      ; objc_msgSend$objectForKeyedSubscript:
00027564 mov       x29, x29                                     
00027568 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0002756c b         #0x275c4                                     
00027570 adrp      x8, #0x81000                                 
00027574 add       x8, x8, #0xc30                                ; &_OBJC_CLASS_$_NSConstantDoubleNumber
00027578 str       x8, [sp, #8]                                 
0002757c adrp      x2, #0x7d000                                 
00027580 add       x2, x2, #0xc70                                ; @'CoverSheet'
00027584 mov       x0, x20                                      
00027588 bl        #0x5bc60                                      ; objc_msgSend$isEqualToString:
0002758c adrp      x8, #0x81000                                 
00027590 add       x8, x8, #0xc80                                ; &_OBJC_CLASS_$_NSConstantDoubleNumber
00027594 adrp      x9, #0x81000                                 
00027598 add       x9, x9, #0xc70                                ; &_OBJC_CLASS_$_NSConstantDoubleNumber
0002759c cmp       w0, #0                                       
000275a0 csel      x8, x9, x8, ne                               
000275a4 str       x8, [sp, #0x10]                              
000275a8 adrp      x8, #0x8b000                                 
000275ac ldr       x0, [x8, #0xad8]                              ; &_OBJC_CLASS_$_NSArray
000275b0 add       x2, sp, #8                                   
000275b4 mov       w3, #2                                       
000275b8 bl        #0x598e0                                      ; objc_msgSend$arrayWithObjects:count:
000275bc mov       x29, x29                                     
000275c0 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
000275c4 mov       x21, x0                                      
000275c8 mov       x0, x20                                      
000275cc bl        #0x58e04                                      ; _objc_release
000275d0 mov       x0, x19                                      
000275d4 bl        #0x58e04                                      ; _objc_release
000275d8 ldr       x8, [sp, #0x18]                              
000275dc adrp      x9, #0x78000                                 
000275e0 ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
000275e4 ldr       x9, [x9]                                      ; &___objc_personality_v0
000275e8 cmp       x9, x8                                       
000275ec b.ne      #0x27620                                     
000275f0 mov       x0, x21                                      
000275f4 ldp       x29, x30, [sp, #0x40]                        
000275f8 ldp       x20, x19, [sp, #0x30]                        
000275fc ldp       x22, x21, [sp, #0x20]                        
00027600 add       sp, sp, #0x50                                
00027604 autibsp                                                
00027608 eor       x16, x30, x30, lsl #1                        
0002760c tbz       x16, #0x3e, #0x27614                         
00027610 brk       #0xc471                                      
00027614 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
00027618 bl        #0x58590                                     
0002761c b         #0x27520                                     
00027620 bl        #0x58a94                                      ; ___stack_chk_fail
