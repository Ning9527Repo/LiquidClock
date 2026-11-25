; prefs arm64e unslid VA [0x1f53c,0x1f66c); slice_offset=0xa0000
0001f53c pacibsp                                                
0001f540 sub       sp, sp, #0x110                               
0001f544 stp       x24, x23, [sp, #0xd0]                        
0001f548 stp       x22, x21, [sp, #0xe0]                        
0001f54c stp       x20, x19, [sp, #0xf0]                        
0001f550 stp       x29, x30, [sp, #0x100]                       
0001f554 add       x29, sp, #0x100                              
0001f558 adrp      x8, #0x78000                                 
0001f55c ldr       x8, [x8, #0x5f8]                              ; &___stack_chk_guard
0001f560 ldr       x8, [x8]                                      ; &___objc_personality_v0
0001f564 stur      x8, [x29, #-0x38]                            
0001f568 bl        #0x58e14                                      ; _objc_retain
0001f56c mov       x20, x0                                      
0001f570 adrp      x8, #0x8b000                                 
0001f574 ldr       x0, [x8, #0xb38]                              ; &_OBJC_CLASS_$_NSMutableArray
0001f578 bl        #0x59840                                      ; objc_msgSend$array
0001f57c mov       x29, x29                                     
0001f580 bl        #0x58e44                                      ; _objc_retainAutoreleasedReturnValue
0001f584 mov       x19, x0                                      
0001f588 movi      v0.2d, #0000000000000000                     
0001f58c stp       q0, q0, [sp]                                 
0001f590 stp       q0, q0, [sp, #0x20]                          
0001f594 mov       x0, x20                                      
0001f598 bl        #0x58e14                                      ; _objc_retain
0001f59c mov       x20, x0                                      
0001f5a0 mov       x2, sp                                       
0001f5a4 add       x3, sp, #0x48                                
0001f5a8 mov       w4, #0x10                                    
0001f5ac bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001f5b0 cbz       x0, #0x1f614                                 
0001f5b4 mov       x21, x0                                      
0001f5b8 ldr       x8, [sp, #0x10]                              
0001f5bc ldr       x22, [x8]                                    
0001f5c0 mov       x23, #0                                      
0001f5c4 ldr       x8, [sp, #0x10]                              
0001f5c8 ldr       x8, [x8]                                     
0001f5cc cmp       x8, x22                                      
0001f5d0 b.eq      #0x1f5dc                                     
0001f5d4 mov       x0, x20                                      
0001f5d8 bl        #0x58d54                                      ; _objc_enumerationMutation
0001f5dc ldr       x8, [sp, #8]                                 
0001f5e0 ldr       x2, [x8, x23, lsl #3]                        
0001f5e4 mov       x0, x19                                      
0001f5e8 bl        #0x59400                                      ; objc_msgSend$addObjectsFromArray:
0001f5ec add       x23, x23, #1                                 
0001f5f0 cmp       x21, x23                                     
0001f5f4 b.ne      #0x1f5c4                                     
0001f5f8 mov       x2, sp                                       
0001f5fc add       x3, sp, #0x48                                
0001f600 mov       x0, x20                                      
0001f604 mov       w4, #0x10                                    
0001f608 bl        #0x5a580                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
0001f60c mov       x21, x0                                      
0001f610 cbnz      x0, #0x1f5c0                                 
0001f614 mov       x0, x20                                      
0001f618 bl        #0x58e04                                      ; _objc_release
0001f61c mov       x0, x20                                      
0001f620 bl        #0x58e04                                      ; _objc_release
0001f624 ldur      x8, [x29, #-0x38]                            
0001f628 adrp      x9, #0x78000                                 
0001f62c ldr       x9, [x9, #0x5f8]                              ; &___stack_chk_guard
0001f630 ldr       x9, [x9]                                      ; &___objc_personality_v0
0001f634 cmp       x9, x8                                       
0001f638 b.ne      #0x1f668                                     
0001f63c mov       x0, x19                                      
0001f640 ldp       x29, x30, [sp, #0x100]                       
0001f644 ldp       x20, x19, [sp, #0xf0]                        
0001f648 ldp       x22, x21, [sp, #0xe0]                        
0001f64c ldp       x24, x23, [sp, #0xd0]                        
0001f650 add       sp, sp, #0x110                               
0001f654 autibsp                                                
0001f658 eor       x16, x30, x30, lsl #1                        
0001f65c tbz       x16, #0x3e, #0x1f664                         
0001f660 brk       #0xc471                                      
0001f664 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
0001f668 bl        #0x58a94                                      ; ___stack_chk_fail
