; Local sample arm64e unslid VA 0x79430..0x795b0
00079430 pacibsp                                                
00079434 sub       sp, sp, #0x50                                
00079438 stp       x24, x23, [sp, #0x10]                        
0007943c stp       x22, x21, [sp, #0x20]                        
00079440 stp       x20, x19, [sp, #0x30]                        
00079444 stp       x29, x30, [sp, #0x40]                        
00079448 add       x29, sp, #0x40                               
0007944c mov       x20, x3                                      
00079450 mov       x21, x0                                      
00079454 adrp      x8, #0xef000                                 
00079458 ldr       x8, [x8, #0x9d0]                             
0007945c blraaz    x8                                           
00079460 cbz       w0, #0x794fc                                 
00079464 adrp      x8, #0xee000                                 
00079468 ldr       x1, [x8, #0x840]                             
0007946c mov       x0, x21                                      
00079470 bl        #0xa4654                                      ; _objc_getAssociatedObject
00079474 mov       x29, x29                                     
00079478 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007947c mov       x22, x0                                      
00079480 bl        #0x7b5dc                                     
00079484 mov       x29, x29                                     
00079488 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007948c mov       x19, x0                                      
00079490 mov       x0, x22                                      
00079494 bl        #0xa46f4                                      ; _objc_release
00079498 adrp      x8, #0xee000                                 
0007949c ldr       x1, [x8, #0x850]                             
000794a0 mov       x0, x21                                      
000794a4 bl        #0xa4654                                      ; _objc_getAssociatedObject
000794a8 mov       x29, x29                                     
000794ac bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000794b0 mov       x23, x0                                      
000794b4 bl        #0x7b68c                                     
000794b8 mov       x29, x29                                     
000794bc bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000794c0 mov       x22, x0                                      
000794c4 mov       x0, x23                                      
000794c8 bl        #0xa46f4                                      ; _objc_release
000794cc cbnz      x19, #0x79504                                
000794d0 adrp      x8, #0xee000                                 
000794d4 ldr       x1, [x8, #0x848]                             
000794d8 mov       x0, x21                                      
000794dc bl        #0xa4654                                      ; _objc_getAssociatedObject
000794e0 mov       x29, x29                                     
000794e4 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000794e8 orr       x23, x0, x22                                 
000794ec bl        #0xa46f4                                      ; _objc_release
000794f0 cbnz      x23, #0x79504                                
000794f4 mov       w20, #1                                      
000794f8 b         #0x79584                                     
000794fc mov       w20, #0                                      
00079500 b         #0x79594                                     
00079504 mov       x0, x21                                      
00079508 bl        #0x7b534                                     
0007950c mov       x29, x29                                     
00079510 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079514 mov       x24, x0                                      
00079518 cbz       x0, #0x79528                                 
0007951c mov       x0, x24                                      
00079520 bl        #0xa4704                                      ; _objc_retain
00079524 b         #0x79540                                     
00079528 adrp      x8, #0xee000                                 
0007952c ldr       x1, [x8, #0x920]                             
00079530 mov       x0, x21                                      
00079534 bl        #0xa4654                                      ; _objc_getAssociatedObject
00079538 mov       x29, x29                                     
0007953c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
00079540 mov       x23, x0                                      
00079544 mov       x0, x24                                      
00079548 bl        #0xa46f4                                      ; _objc_release
0007954c mov       x0, x21                                      
00079550 mov       x2, x23                                      
00079554 mov       x3, x20                                      
00079558 bl        #0xb0400                                      ; objc_msgSend$storeUserInfo:error:
0007955c mov       x20, x0                                      
00079560 mov       x0, x19                                      
00079564 bl        #0xa71e0                                      ; objc_msgSend$doubleValue
00079568 str       x20, [sp, #8]                                
0007956c str       d0, [sp]                                     
00079570 adrp      x0, #0xdc000                                 
00079574 add       x0, x0, #0xe30                                ; @'[ClockPoster] target save progress=%.4f success=%d'
00079578 bl        #0xa23b8                                      ; _LGLog
0007957c mov       x0, x23                                      
00079580 bl        #0xa46f4                                      ; _objc_release
00079584 mov       x0, x22                                      
00079588 bl        #0xa46f4                                      ; _objc_release
0007958c mov       x0, x19                                      
00079590 bl        #0xa46f4                                      ; _objc_release
00079594 mov       x0, x20                                      
00079598 ldp       x29, x30, [sp, #0x40]                        
0007959c ldp       x20, x19, [sp, #0x30]                        
000795a0 ldp       x22, x21, [sp, #0x20]                        
000795a4 ldp       x24, x23, [sp, #0x10]                        
000795a8 add       sp, sp, #0x50                                
000795ac retab                                                  
