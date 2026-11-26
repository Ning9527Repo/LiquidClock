; Uploaded sample arm64e unslid VA 0x7da80..0x7dbe8
0007da80 pacibsp                                                
0007da84 sub       sp, sp, #0x40                                
0007da88 stp       x22, x21, [sp, #0x10]                        
0007da8c stp       x20, x19, [sp, #0x20]                        
0007da90 stp       x29, x30, [sp, #0x30]                        
0007da94 add       x29, sp, #0x30                               
0007da98 mov       x19, x0                                      
0007da9c bl        #0xa23a8                                      ; _LGDebugLoggingEnabled
0007daa0 cbz       w0, #0x7db5c                                 
0007daa4 adrp      x8, #0xec000                                 
0007daa8 ldr       x20, [x8, #0x518]                             ; &_OBJC_CLASS_$_NSString
0007daac ldp       x22, x0, [x19, #0x20]                        
0007dab0 bl        #0xa50e0                                      ; objc_msgSend$allKeys
0007dab4 mov       x29, x29                                     
0007dab8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007dabc mov       x21, x0                                      
0007dac0 stp       x22, x0, [sp]                                
0007dac4 adrp      x2, #0xdc000                                 
0007dac8 add       x2, x2, #0xd30                                ; @'config=%p keys=%@'
0007dacc mov       x0, x20                                      
0007dad0 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
0007dad4 mov       x29, x29                                     
0007dad8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007dadc mov       x20, x0                                      
0007dae0 mov       x0, x21                                      
0007dae4 bl        #0xa46f4                                      ; _objc_release
0007dae8 adrp      x8, #0xef000                                 
0007daec ldr       x0, [x8, #0xb50]                             
0007daf0 mov       x2, x20                                      
0007daf4 bl        #0xa8d60                                      ; objc_msgSend$isEqualToString:
0007daf8 tbnz      w0, #0, #0x7db54                             
0007dafc adrp      x0, #0xef000                                 
0007db00 add       x0, x0, #0xb50                               
0007db04 mov       x1, x20                                      
0007db08 bl        #0xa4774                                      ; _objc_storeStrong
0007db0c adrp      x8, #0xec000                                 
0007db10 ldr       x0, [x8, #0x4a8]                              ; &_OBJC_CLASS_$_NSProcessInfo
0007db14 bl        #0xaada0                                      ; objc_msgSend$processInfo
0007db18 mov       x29, x29                                     
0007db1c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007db20 mov       x21, x0                                      
0007db24 bl        #0xaadc0                                      ; objc_msgSend$processName
0007db28 mov       x29, x29                                     
0007db2c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
0007db30 mov       x22, x0                                      
0007db34 stp       x0, x20, [sp]                                
0007db38 adrp      x0, #0xdc000                                 
0007db3c add       x0, x0, #0xd50                                ; @'[ClockColor] poster-load process=%@ %@'
0007db40 bl        #0xa23b8                                      ; _LGLog
0007db44 mov       x0, x22                                      
0007db48 bl        #0xa46f4                                      ; _objc_release
0007db4c mov       x0, x21                                      
0007db50 bl        #0xa46f4                                      ; _objc_release
0007db54 mov       x0, x20                                      
0007db58 bl        #0xa46f4                                      ; _objc_release
0007db5c ldr       x1, [x19, #0x30]                             
0007db60 adrp      x0, #0xef000                                 
0007db64 add       x0, x0, #0x758                               
0007db68 bl        #0xa4774                                      ; _objc_storeStrong
0007db6c ldr       x1, [x19, #0x38]                             
0007db70 adrp      x0, #0xef000                                 
0007db74 add       x0, x0, #0x760                               
0007db78 bl        #0xa4774                                      ; _objc_storeStrong
0007db7c ldr       x8, [x19, #0x20]                             
0007db80 cbz       x8, #0x7db9c                                 
0007db84 ldr       x8, [x19, #0x28]                             
0007db88 adrp      x9, #0xd4000                                 
0007db8c ldr       x9, [x9, #0x7f8]                              ; &___NSDictionary0__struct
0007db90 cmp       x8, #0                                       
0007db94 csel      x19, x9, x8, eq                              
0007db98 b         #0x7dba0                                     
0007db9c mov       x19, #0                                      
0007dba0 adrp      x0, #0xef000                                 
0007dba4 add       x0, x0, #0xa90                               
0007dba8 mov       x1, x19                                      
0007dbac bl        #0xa4774                                      ; _objc_storeStrong
0007dbb0 cmp       x19, #0                                      
0007dbb4 cset      w8, ne                                       
0007dbb8 adrp      x9, #0xef000                                 
0007dbbc strb      w8, [x9, #0xb58]                             
0007dbc0 bl        #0x7ab60                                     
0007dbc4 ldp       x29, x30, [sp, #0x30]                        
0007dbc8 ldp       x20, x19, [sp, #0x20]                        
0007dbcc ldp       x22, x21, [sp, #0x10]                        
0007dbd0 add       sp, sp, #0x40                                
0007dbd4 autibsp                                                
0007dbd8 eor       x16, x30, x30, lsl #1                        
0007dbdc tbz       x16, #0x3e, #0x7dbe4                         
0007dbe0 brk       #0xc471                                      
0007dbe4 b         #0x60108                                     
