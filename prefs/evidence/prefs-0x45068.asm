; prefs arm64e unslid VA [0x45068,0x450b8); slice_offset=0xa0000
00045068 pacibsp                                                
0004506c stp       x29, x30, [sp, #-0x10]!                      
00045070 mov       x29, sp                                      
00045074 bl        #0x44670                                      ; _LGReloadPreferences
00045078 bl        #0x58774                                      ; _CFNotificationCenterGetDarwinNotifyCenter
0004507c adrp      x3, #0x7f000                                 
00045080 add       x3, x3, #0xcf0                                ; @'dylv.liquidassprefs/Reload'
00045084 adrp      x16, #0x45000                                
00045088 add       x16, x16, #0xb8                              
0004508c paciza    x16                                          
00045090 mov       x2, x16                                      
00045094 mov       x1, #0                                       
00045098 mov       x4, #0                                       
0004509c mov       w5, #4                                       
000450a0 ldp       x29, x30, [sp], #0x10                        
000450a4 autibsp                                                
000450a8 eor       x16, x30, x30, lsl #1                        
000450ac tbz       x16, #0x3e, #0x450b4                         
000450b0 brk       #0xc471                                      
000450b4 b         #0x58764                                      ; _CFNotificationCenterAddObserver
