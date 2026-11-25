# arm64e unslid VA 0x987c4..0x98810; FAT offset 0xfc000
000987c4 pacibsp                                                   
000987c8 stp       x29, x30, [sp, #-0x10]!                         
000987cc mov       x29, sp                                         
000987d0 bl        #0xa3ac4                                         ; _CFNotificationCenterGetDarwinNotifyCenter
000987d4 adrp      x3, #0xd8000                                    
000987d8 add       x3, x3, #0x4b0                                   ; 0xd84b0 | @'dylv.liquidassprefs/Reload'
000987dc adrp      x16, #0x98000                                   
000987e0 add       x16, x16, #0x810                                 ; 0x98810
000987e4 paciza    x16                                             
000987e8 mov       x2, x16                                         
000987ec mov       x1, #0                                          
000987f0 mov       x4, #0                                          
000987f4 mov       w5, #2                                          
000987f8 ldp       x29, x30, [sp], #0x10                           
000987fc autibsp                                                   
00098800 eor       x16, x30, x30, lsl #1                           
00098804 tbz       x16, #0x3e, #0x9880c                            
00098808 brk       #0xc471                                         
0009880c b         #0xa3ab4                                         ; _CFNotificationCenterAddObserver
