# arm64e unslid VA 0x34adc..0x34b5c; FAT offset 0xfc000
00034adc pacibsp                                                   
00034ae0 stp       x20, x19, [sp, #-0x20]!                         
00034ae4 stp       x29, x30, [sp, #0x10]                           
00034ae8 add       x29, sp, #0x10                                  
00034aec adrp      x19, #0xec000                                   
00034af0 ldr       x0, [x19, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
00034af4 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
00034af8 mov       x29, x29                                        
00034afc bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00034b00 adrp      x9, #0xef000                                    
00034b04 ldr       x8, [x9, #0x168]                                 ; 0xef168
00034b08 str       x0, [x9, #0x168]                                 ; 0xef168
00034b0c mov       x0, x8                                          
00034b10 bl        #0xa46f4                                         ; _objc_release
00034b14 ldr       x0, [x19, #0x4b0]                                ; 0xec4b0 | &_OBJC_CLASS_$_NSHashTable
00034b18 bl        #0xb1a00                                         ; objc_msgSend$weakObjectsHashTable
00034b1c mov       x29, x29                                        
00034b20 bl        #0xa4734                                         ; _objc_retainAutoreleasedReturnValue
00034b24 adrp      x9, #0xef000                                    
00034b28 ldr       x8, [x9, #0x170]                                 ; 0xef170
00034b2c str       x0, [x9, #0x170]                                 ; 0xef170
00034b30 mov       x0, x8                                          
00034b34 bl        #0xa46f4                                         ; _objc_release
00034b38 adrp      x0, #0xd5000                                    
00034b3c add       x0, x0, #0x1f0                                   ; 0xd51f0 | &__NSConcreteGlobalBlock
00034b40 ldp       x29, x30, [sp, #0x10]                           
00034b44 ldp       x20, x19, [sp], #0x20                           
00034b48 autibsp                                                   
00034b4c eor       x16, x30, x30, lsl #1                           
00034b50 tbz       x16, #0x3e, #0x34b58                            
00034b54 brk       #0xc471                                         
00034b58 b         #0x97e34                                         ; _lgObservePreferenceReload
