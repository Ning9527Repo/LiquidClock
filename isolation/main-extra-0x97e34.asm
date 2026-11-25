# arm64e unslid VA 0x97e34..0x97edc; FAT offset 0xfc000
00097e34 pacibsp                                                   
00097e38 stp       x22, x21, [sp, #-0x30]!                         
00097e3c stp       x20, x19, [sp, #0x10]                           
00097e40 stp       x29, x30, [sp, #0x20]                           
00097e44 add       x29, sp, #0x20                                  
00097e48 bl        #0xa4704                                         ; _objc_retain
00097e4c mov       x19, x0                                         
00097e50 cbz       x0, #0x97eb8                                    
00097e54 adrp      x21, #0xef000                                   
00097e58 ldr       x20, [x21, #0xbf0]                               ; 0xefbf0
00097e5c cbnz      x20, #0x97e88                                   
00097e60 adrp      x8, #0xec000                                    
00097e64 ldr       x0, [x8, #0x520]                                 ; 0xec520 | &_OBJC_CLASS_$_NSMutableArray
00097e68 bl        #0xa5500                                         ; objc_msgSend$array
00097e6c mov       x29, x29                                        
00097e70 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00097e74 ldr       x8, [x21, #0xbf0]                                ; 0xefbf0
00097e78 str       x0, [x21, #0xbf0]                                ; 0xefbf0
00097e7c mov       x0, x8                                          
00097e80 bl        #0xa46f4                                         ; _objc_release
00097e84 ldr       x20, [x21, #0xbf0]                               ; 0xefbf0
00097e88 mov       x0, x19                                         
00097e8c bl        #0xa6980                                         ; objc_msgSend$copy
00097e90 mov       x21, x0                                         
00097e94 bl        #0xa4744                                         ; _objc_retainBlock
00097e98 mov       x22, x0                                         
00097e9c mov       x0, x20                                         
00097ea0 mov       x2, x22                                         
00097ea4 bl        #0xa4ee0                                         ; objc_msgSend$addObject:
00097ea8 mov       x0, x22                                         
00097eac bl        #0xa46f4                                         ; _objc_release
00097eb0 mov       x0, x21                                         
00097eb4 bl        #0xa46f4                                         ; _objc_release
00097eb8 mov       x0, x19                                         
00097ebc ldp       x29, x30, [sp, #0x20]                           
00097ec0 ldp       x20, x19, [sp, #0x10]                           
00097ec4 ldp       x22, x21, [sp], #0x30                           
00097ec8 autibsp                                                   
00097ecc eor       x16, x30, x30, lsl #1                           
00097ed0 tbz       x16, #0x3e, #0x97ed8                            
00097ed4 brk       #0xc471                                         
00097ed8 b         #0xa46f4                                         ; _objc_release
