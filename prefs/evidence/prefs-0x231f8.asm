; prefs arm64e unslid VA [0x231f8,0x232b8); slice_offset=0xa0000
000231f8 pacibsp                                                
000231fc stp       x22, x21, [sp, #-0x30]!                      
00023200 stp       x20, x19, [sp, #0x10]                        
00023204 stp       x29, x30, [sp, #0x20]                        
00023208 add       x29, sp, #0x20                               
0002320c mov       x20, x2                                      
00023210 mov       x21, x0                                      
00023214 mov       x0, x1                                       
00023218 bl        #0x58e14                                      ; _objc_retain
0002321c mov       x19, x0                                      
00023220 mov       x0, x20                                      
00023224 bl        #0x58e14                                      ; _objc_retain
00023228 mov       x20, x0                                      
0002322c mov       x0, x21                                      
00023230 bl        #0x5c780                                      ; objc_msgSend$mutableCopy
00023234 mov       x21, x0                                      
00023238 mov       x0, x19                                      
0002323c bl        #0x5bf00                                      ; objc_msgSend$length
00023240 cbz       x0, #0x23258                                 
00023244 adrp      x3, #0x7b000                                 
00023248 add       x3, x3, #0xf70                                ; @'enabled_key'
0002324c mov       x0, x21                                      
00023250 mov       x2, x19                                      
00023254 bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
00023258 cbz       x20, #0x23270                                
0002325c adrp      x3, #0x7b000                                 
00023260 add       x3, x3, #0xf90                                ; @'enabled_default'
00023264 mov       x0, x21                                      
00023268 mov       x2, x20                                      
0002326c bl        #0x5f160                                      ; objc_msgSend$setObject:forKeyedSubscript:
00023270 mov       x0, x21                                      
00023274 bl        #0x5a4e0                                      ; objc_msgSend$copy
00023278 mov       x22, x0                                      
0002327c mov       x0, x21                                      
00023280 bl        #0x58e04                                      ; _objc_release
00023284 mov       x0, x20                                      
00023288 bl        #0x58e04                                      ; _objc_release
0002328c mov       x0, x19                                      
00023290 bl        #0x58e04                                      ; _objc_release
00023294 mov       x0, x22                                      
00023298 ldp       x29, x30, [sp, #0x20]                        
0002329c ldp       x20, x19, [sp, #0x10]                        
000232a0 ldp       x22, x21, [sp], #0x30                        
000232a4 autibsp                                                
000232a8 eor       x16, x30, x30, lsl #1                        
000232ac tbz       x16, #0x3e, #0x232b4                         
000232b0 brk       #0xc471                                      
000232b4 b         #0x58d04                                      ; _objc_autoreleaseReturnValue
