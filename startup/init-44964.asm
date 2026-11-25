# arm64e unslid VA 0x44964..0x449e0; FAT offset 0xfc000
00044964 pacibsp                                                   
00044968 stp       x29, x30, [sp, #-0x10]!                         
0004496c mov       x29, sp                                         
00044970 bl        #0xa1be4                                         ; _LGIsSpringBoardProcess
00044974 cbz       w0, #0x449d8                                    
00044978 adrp      x0, #0xda000                                    
0004497c add       x0, x0, #0xbb0                                   ; 0xdabb0 | @'SBRingerPillView'
00044980 bl        #0xa4064                                         ; _NSClassFromString
00044984 cbz       x0, #0x449d8                                    
00044988 adrp      x0, #0xb8000                                    
0004498c add       x0, x0, #0xf96                                   ; 0xb8f96 | 'SBRingerPillView'
00044990 bl        #0xa4664                                         ; _objc_getClass
00044994 adrp      x8, #0xeb000                                    
00044998 ldr       x1, [x8, #0xf00]                                 ; 0xebf00 | SEL layoutSubviews
0004499c adrp      x3, #0xef000                                    
000449a0 add       x3, x3, #0x4f0                                   ; 0xef4f0
000449a4 adrp      x16, #0x44000                                   
000449a8 add       x16, x16, #0x9e0                                 ; 0x449e0
000449ac paciza    x16                                             
000449b0 mov       x2, x16                                         
000449b4 bl        #0xa4054                                         ; _MSHookMessageEx
000449b8 adrp      x0, #0xd5000                                    
000449bc add       x0, x0, #0x6b0                                   ; 0xd56b0 | &__NSConcreteGlobalBlock
000449c0 ldp       x29, x30, [sp], #0x10                           
000449c4 autibsp                                                   
000449c8 eor       x16, x30, x30, lsl #1                           
000449cc tbz       x16, #0x3e, #0x449d4                            
000449d0 brk       #0xc471                                         
000449d4 b         #0x97e34                                         ; _lgObservePreferenceReload
000449d8 ldp       x29, x30, [sp], #0x10                           
000449dc retab                                                     
