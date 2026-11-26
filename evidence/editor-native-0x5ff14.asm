; Uploaded sample arm64e unslid VA 0x5ff14..0x5ff94
0005ff14 pacibsp                                                
0005ff18 stp       x20, x19, [sp, #-0x20]!                      
0005ff1c stp       x29, x30, [sp, #0x10]                        
0005ff20 add       x29, sp, #0x10                               
0005ff24 mov       x19, x0                                      
0005ff28 bl        #0xa5020                                      ; objc_msgSend$adjust
0005ff2c mov       x29, x29                                     
0005ff30 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0005ff34 mov       x20, x0                                      
0005ff38 bl        #0xa46f4                                      ; _objc_release
0005ff3c cbz       x20, #0x5ff88                                
0005ff40 mov       x0, x19                                      
0005ff44 bl        #0xa5020                                      ; objc_msgSend$adjust
0005ff48 mov       x29, x29                                     
0005ff4c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0005ff50 mov       x19, x0                                      
0005ff54 mov       x8, x0                                       
0005ff58 ldr       x9, [x8, #0x10]!                             
0005ff5c adrp      x10, #0xbd000                                
0005ff60 ldr       d0, [x10, #0xdb8]                            
0005ff64 blraa     x9, x8                                       
0005ff68 mov       x0, x19                                      
0005ff6c ldp       x29, x30, [sp, #0x10]                        
0005ff70 ldp       x20, x19, [sp], #0x20                        
0005ff74 autibsp                                                
0005ff78 eor       x16, x30, x30, lsl #1                        
0005ff7c tbz       x16, #0x3e, #0x5ff84                         
0005ff80 brk       #0xc471                                      
0005ff84 b         #0xa46f4                                      ; _objc_release
0005ff88 ldp       x29, x30, [sp, #0x10]                        
0005ff8c ldp       x20, x19, [sp], #0x20                        
0005ff90 retab                                                  
