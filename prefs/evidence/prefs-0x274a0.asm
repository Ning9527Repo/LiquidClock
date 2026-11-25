; prefs arm64e unslid VA [0x274a0,0x274d0); slice_offset=0xa0000
000274a0 pacibsp                                                
000274a4 sub       sp, sp, #0x20                                
000274a8 stp       x29, x30, [sp, #0x10]                        
000274ac add       x29, sp, #0x10                               
000274b0 ldr       x0, [x0, #0x20]                              
000274b4 str       x1, [sp]                                     
000274b8 adrp      x2, #0x7d000                                 
000274bc add       x2, x2, #0xc30                                ; @'.%@'
000274c0 bl        #0x60560                                      ; objc_msgSend$stringByAppendingFormat:
000274c4 ldp       x29, x30, [sp, #0x10]                        
000274c8 add       sp, sp, #0x20                                
000274cc retab                                                  
