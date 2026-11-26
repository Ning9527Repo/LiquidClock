00007554 7f2303d5 pacibsp                                                  ; __ZL9tweakInitv||__ZL9tweakInitv|
00007558 ff4303d1 sub        sp, sp, #0xd0                                
0000755c fd7b0ca9 stp        x29, x30, [sp, #0xc0]                        
00007560 fd030391 add        x29, sp, #0xc0                               
00007564 080080d2 mov        x8, #0                                       
00007568 a8031bf8 stur       x8, [x29, #-0x50]                            
0000756c 10000090 adrp       x16, #0x7000                                 
00007570 10822c91 add        x16, x16, #0xb20                              ; __ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary||__ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary|
00007574 f023c1da paciza     x16                                          
00007578 b0831af8 stur       x16, [x29, #-0x58]                           
0000757c 6c820094 bl         #0x27f2c                                      ; _objc_autoreleasePoolPush
00007580 a4035bf8 ldur       x4, [x29, #-0x50]                            
00007584 e03300f9 str        x0, [sp, #0x60]                              
00007588 e00304aa mov        x0, x4                                       
0000758c e10304aa mov        x1, x4                                       
00007590 e20304aa mov        x2, x4                                       
00007594 e30304aa mov        x3, x4                                       
00007598 62010094 bl         #0x7b20                                       ; __ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary||__ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary|
0000759c 68820094 bl         #0x27f3c                                      ; _CFNotificationCenterGetDarwinNotifyCenter
000075a0 a2835af8 ldur       x2, [x29, #-0x58]                            
000075a4 a4035bf8 ldur       x4, [x29, #-0x50]                            
000075a8 e10304aa mov        x1, x4                                       
000075ac 630100d0 adrp       x3, #0x35000                                 
000075b0 63c02f91 add        x3, x3, #0xbf0                               
000075b4 850080d2 mov        x5, #4                                       
000075b8 65820094 bl         #0x27f4c                                      ; _CFNotificationCenterAddObserver
000075bc 89010094 bl         #0x7be0                                       ; __ZL25lgClearAccessibilityFilesv||__ZL25lgClearAccessibilityFilesv|
000075c0 1d020094 bl         #0x7e34                                       ; __ZL21lgShouldEnterSafeModev||__ZL21lgShouldEnterSafeModev|
000075c4 a0000036 tbz        w0, #0, #0x75d8                              
000075c8 01000014 b          #0x75cc                                      
000075cc 28008052 mov        w8, #1                                       
000075d0 a8c31fb8 stur       w8, [x29, #-4]                               
000075d4 4e010014 b          #0x7b0c                                      
000075d8 880100b0 adrp       x8, #0x38000                                 
000075dc 08fd40f9 ldr        x8, [x8, #0x1f8]                             
000075e0 e82300f9 str        x8, [sp, #0x40]                              
000075e4 e1020094 bl         #0x8168                                       ; __ZL11lgPrefsPathv||__ZL11lgPrefsPathv|
000075e8 fd031daa mov        x29, x29                                     
000075ec 38820094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000075f0 e12b40f9 ldr        x1, [sp, #0x50]                              
000075f4 e20300aa mov        x2, x0                                       
000075f8 e02340f9 ldr        x0, [sp, #0x40]                              
000075fc e22700f9 str        x2, [sp, #0x48]                              
00007600 60850094 bl         #0x28b80                                      ; _objc_msgSend$dictionaryWithContentsOfFile:
00007604 fd031daa mov        x29, x29                                     
00007608 31820094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
0000760c e80300aa mov        x8, x0                                       
00007610 e02740f9 ldr        x0, [sp, #0x48]                              
00007614 a8031ff8 stur       x8, [x29, #-0x10]                            
00007618 680100b0 adrp       x8, #0x34000                                 
0000761c 081143f9 ldr        x8, [x8, #0x620]                              ; _objc_release
00007620 00013fd6 blr        x8                                           
00007624 e12b40f9 ldr        x1, [sp, #0x50]                              
00007628 a0035ff8 ldur       x0, [x29, #-0x10]                            
0000762c 620100d0 adrp       x2, #0x35000                                 
00007630 42403091 add        x2, x2, #0xc10                               
00007634 e3850094 bl         #0x28dc0                                      ; _objc_msgSend$objectForKeyedSubscript:
00007638 fd031daa mov        x29, x29                                     
0000763c 24820094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
00007640 a0831ef8 stur       x0, [x29, #-0x18]                            
00007644 a8835ef8 ldur       x8, [x29, #-0x18]                            
00007648 e82f00f9 str        x8, [sp, #0x58]                              
0000764c 880100b0 adrp       x8, #0x38000                                 
00007650 00f940f9 ldr        x0, [x8, #0x1f0]                             
00007654 42820094 bl         #0x27f5c                                      ; _objc_opt_class
00007658 e10300aa mov        x1, x0                                       
0000765c e02f40f9 ldr        x0, [sp, #0x58]                              
00007660 43820094 bl         #0x27f6c                                      ; _objc_opt_isKindOfClass
00007664 e0000036 tbz        w0, #0, #0x7680                              
00007668 01000014 b          #0x766c                                      
0000766c e12b40f9 ldr        x1, [sp, #0x50]                              
00007670 a0835ef8 ldur       x0, [x29, #-0x18]                            
00007674 e3840094 bl         #0x28a00                                      ; _objc_msgSend$boolValue
00007678 e03f00b9 str        w0, [sp, #0x3c]                              
0000767c 04000014 b          #0x768c                                      
00007680 08008052 mov        w8, #0                                       
00007684 e83f00b9 str        w8, [sp, #0x3c]                              
00007688 01000014 b          #0x768c                                      
0000768c e83f40b9 ldr        w8, [sp, #0x3c]                              
00007690 08010012 and        w8, w8, #1                                   
00007694 890100f0 adrp       x9, #0x3a000                                 
00007698 28211639 strb       w8, [x9, #0x588]                              ; _gLGBackboardDebugLogging
0000769c a06300d1 sub        x0, x29, #0x18                               
000076a0 010080d2 mov        x1, #0                                       
000076a4 e11700f9 str        x1, [sp, #0x28]                              
000076a8 11820094 bl         #0x27eec                                      ; _objc_storeStrong
000076ac e11740f9 ldr        x1, [sp, #0x28]                              
000076b0 a04300d1 sub        x0, x29, #0x10                               
000076b4 0e820094 bl         #0x27eec                                      ; _objc_storeStrong
000076b8 e12b40f9 ldr        x1, [sp, #0x50]                              
000076bc 880100b0 adrp       x8, #0x38000                                 
000076c0 00f140f9 ldr        x0, [x8, #0x1e0]                             
000076c4 d7850094 bl         #0x28e20                                      ; _objc_msgSend$processInfo
000076c8 fd031daa mov        x29, x29                                     
000076cc 00820094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000076d0 e01b00f9 str        x0, [sp, #0x30]                              
000076d4 e00000b4 cbz        x0, #0x76f0                                  
000076d8 01000014 b          #0x76dc                                      
000076dc e12b40f9 ldr        x1, [sp, #0x50]                              
000076e0 e01b40f9 ldr        x0, [sp, #0x30]                              
000076e4 a8c300d1 sub        x8, x29, #0x30                               
000076e8 be850094 bl         #0x28de0                                      ; _objc_msgSend$operatingSystemVersion
000076ec 05000014 b          #0x7700                                      
000076f0 bf031df8 stur       xzr, [x29, #-0x30]                           
000076f4 bf831df8 stur       xzr, [x29, #-0x28]                           
000076f8 bf031ef8 stur       xzr, [x29, #-0x20]                           
000076fc 01000014 b          #0x7700                                      
00007700 e01b40f9 ldr        x0, [sp, #0x30]                              
00007704 680100b0 adrp       x8, #0x34000                                 
00007708 081143f9 ldr        x8, [x8, #0x620]                              ; _objc_release
0000770c 00013fd6 blr        x8                                           
00007710 880100b0 adrp       x8, #0x38000                                 
00007714 1f611d39 strb       wzr, [x8, #0x758]                             ; __ZL26g_skipGaussianIdentityHook|__ZL26g_skipGaussianIdentityHook
00007718 880100b0 adrp       x8, #0x38000                                 
0000771c 1f651d39 strb       wzr, [x8, #0x759]                             ; __ZL22g_skipGaussianEdgeHook|__ZL22g_skipGaussianEdgeHook
00007720 880100b0 adrp       x8, #0x38000                                 
00007724 1f691d39 strb       wzr, [x8, #0x75a]                             ; __ZL24g_skipGaussianRenderHook|__ZL24g_skipGaussianRenderHook
00007728 a8035df8 ldur       x8, [x29, #-0x30]                            
0000772c 890100b0 adrp       x9, #0x38000                                 
00007730 28b103f9 str        x8, [x9, #0x760]                              ; __ZL16g_osMajorVersion|__ZL16g_osMajorVersion
00007734 a8035df8 ldur       x8, [x29, #-0x30]                            
00007738 083900f1 subs       x8, x8, #0xe                                 
0000773c e8c79f1a cset       w8, le                                       
00007740 890100b0 adrp       x9, #0x38000                                 
00007744 28a11d39 strb       w8, [x9, #0x768]                              ; __ZL17g_legacyRenderABI|__ZL17g_legacyRenderABI
00007748 a8035df8 ldur       x8, [x29, #-0x30]                            
0000774c 083500f1 subs       x8, x8, #0xd                                 
00007750 e8179f1a cset       w8, eq                                       
00007754 890100b0 adrp       x9, #0x38000                                 
00007758 28a51d39 strb       w8, [x9, #0x769]                              ; __ZL20g_floatPairRenderABI|__ZL20g_floatPairRenderABI
0000775c ab035df8 ldur       x11, [x29, #-0x30]                           
00007760 aa835df8 ldur       x10, [x29, #-0x28]                           
00007764 a8035ef8 ldur       x8, [x29, #-0x20]                            
00007768 e9030091 mov        x9, sp                                       
0000776c 2b0100f9 str        x11, [x9]                                    
00007770 2a0500f9 str        x10, [x9, #8]                                
00007774 280900f9 str        x8, [x9, #0x10]                              
00007778 000100d0 adrp       x0, #0x29000                                 
0000777c 00f82791 add        x0, x0, #0x9fe                                ; '===== LiquidGlass (backboardd) on iOS %ld.%ld.%ld ====='
00007780 9c020094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007784 aa035df8 ldur       x10, [x29, #-0x30]                           
00007788 09038052 mov        w9, #0x18                                    
0000778c 88028052 mov        w8, #0x14                                    
00007790 4a3900f1 subs       x10, x10, #0xe                               
00007794 09d1891a csel       w9, w8, w9, le                               
00007798 e80309aa mov        x8, x9                                       
0000779c 087d4093 sxtw       x8, w8                                       
000077a0 890100b0 adrp       x9, #0x38000                                 
000077a4 282101f9 str        x8, [x9, #0x240]                              ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset
000077a8 aa035df8 ldur       x10, [x29, #-0x30]                           
000077ac 090b8052 mov        w9, #0x58                                    
000077b0 080c8052 mov        w8, #0x60                                    
000077b4 4a4500f1 subs       x10, x10, #0x11                              
000077b8 0ba1891a csel       w11, w8, w9, ge                              
000077bc ea030baa mov        x10, x11                                     
000077c0 4a7d4093 sxtw       x10, w10                                     
000077c4 8b0100b0 adrp       x11, #0x38000                                
000077c8 6a2501f9 str        x10, [x11, #0x248]                            ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
000077cc aa035df8 ldur       x10, [x29, #-0x30]                           
000077d0 4a4500f1 subs       x10, x10, #0x11                              
000077d4 09a1891a csel       w9, w8, w9, ge                               
000077d8 e80309aa mov        x8, x9                                       
000077dc 087d4093 sxtw       x8, w8                                       
000077e0 890100b0 adrp       x9, #0x38000                                 
000077e4 282901f9 str        x8, [x9, #0x250]                              ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
000077e8 a8035df8 ldur       x8, [x29, #-0x30]                            
000077ec 083500f1 subs       x8, x8, #0xd                                 
000077f0 61010054 b.ne       #0x781c                                      
000077f4 01000014 b          #0x77f8                                      
000077f8 080c80d2 mov        x8, #0x60                                    
000077fc 890100b0 adrp       x9, #0x38000                                 
00007800 282501f9 str        x8, [x9, #0x248]                              ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
00007804 890100b0 adrp       x9, #0x38000                                 
00007808 282901f9 str        x8, [x9, #0x250]                              ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
0000780c 081e80d2 mov        x8, #0xf0                                    
00007810 890100b0 adrp       x9, #0x38000                                 
00007814 282d01f9 str        x8, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007818 20000014 b          #0x7898                                      
0000781c a8035df8 ldur       x8, [x29, #-0x30]                            
00007820 084100f1 subs       x8, x8, #0x10                                
00007824 c1000054 b.ne       #0x783c                                      
00007828 01000014 b          #0x782c                                      
0000782c 082280d2 mov        x8, #0x110                                   
00007830 890100b0 adrp       x9, #0x38000                                 
00007834 282d01f9 str        x8, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007838 17000014 b          #0x7894                                      
0000783c a8035df8 ldur       x8, [x29, #-0x30]                            
00007840 084900f1 subs       x8, x8, #0x12                                
00007844 cb000054 b.lt       #0x785c                                      
00007848 01000014 b          #0x784c                                      
0000784c 08008092 mov        x8, #-1                                      
00007850 890100b0 adrp       x9, #0x38000                                 
00007854 282d01f9 str        x8, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007858 0e000014 b          #0x7890                                      
0000785c a8035df8 ldur       x8, [x29, #-0x30]                            
00007860 083d00f1 subs       x8, x8, #0xf                                 
00007864 c1000054 b.ne       #0x787c                                      
00007868 01000014 b          #0x786c                                      
0000786c 082180d2 mov        x8, #0x108                                   
00007870 890100b0 adrp       x9, #0x38000                                 
00007874 282d01f9 str        x8, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007878 05000014 b          #0x788c                                      
0000787c 890100b0 adrp       x9, #0x38000                                 
00007880 081f80d2 mov        x8, #0xf8                                    
00007884 282d01f9 str        x8, [x9, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007888 01000014 b          #0x788c                                      
0000788c 01000014 b          #0x7890                                      
00007890 01000014 b          #0x7894                                      
00007894 01000014 b          #0x7898                                      
00007898 880100b0 adrp       x8, #0x38000                                 
0000789c 0c2141f9 ldr        x12, [x8, #0x240]                             ; __ZL18g_filterAtomOffset|__ZL18g_filterAtomOffset ; ->||||||||||||||||||||||||||||||
000078a0 880100b0 adrp       x8, #0x38000                                 
000078a4 0b2541f9 ldr        x11, [x8, #0x248]                             ; __ZL21g_sourceTextureOffset|__ZL21g_sourceTextureOffset
000078a8 880100b0 adrp       x8, #0x38000                                 
000078ac 0a2941f9 ldr        x10, [x8, #0x250]                             ; __ZL26g_destinationTextureOffset|__ZL26g_destinationTextureOffset
000078b0 880100b0 adrp       x8, #0x38000                                 
000078b4 082d41f9 ldr        x8, [x8, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
000078b8 e9030091 mov        x9, sp                                       
000078bc 2c0100f9 str        x12, [x9]                                    
000078c0 2b0500f9 str        x11, [x9, #8]                                
000078c4 2a0900f9 str        x10, [x9, #0x10]                             
000078c8 280d00f9 str        x8, [x9, #0x18]                              
000078cc 000100d0 adrp       x0, #0x29000                                 
000078d0 00d82891 add        x0, x0, #0xa36                                ; 'init: QuartzCore layout filterAtom=%#lx sourceTexture=%#lx destinationTexture=%#lx contextDestination=%#lx'
000078d4 47020094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000078d8 880100b0 adrp       x8, #0x38000                                 
000078dc 29008052 mov        w9, #1                                       
000078e0 09a91d39 strb       w9, [x8, #0x76a]                              ; __ZL13g_useHookPath|__ZL13g_useHookPath
000078e4 0aa95d39 ldrb       w10, [x8, #0x76a]                            
000078e8 090100d0 adrp       x9, #0x29000                                 
000078ec 29cd2b91 add        x9, x9, #0xaf3                                ; 'cloned descriptor'
000078f0 080100d0 adrp       x8, #0x29000                                 
000078f4 086d2b91 add        x8, x8, #0xadb                                ; 'genuine-descriptor hook'
000078f8 4a010012 and        w10, w10, #1                                 
000078fc 4a010072 ands       w10, w10, #1                                 
00007900 0811899a csel       x8, x8, x9, ne                               
00007904 e9030091 mov        x9, sp                                       
00007908 0a0100d0 adrp       x10, #0x29000                                
0000790c 4a412b91 add        x10, x10, #0xad0                              ; 'arm64e/PAC'
00007910 2a0100f9 str        x10, [x9]                                     ; 'cloned descriptor'
00007914 280500f9 str        x8, [x9, #8]                                  ; 'escriptor'
00007918 080100d0 adrp       x8, #0x29000                                 
0000791c 08550791 add        x8, x8, #0x1d5                                ; ''
00007920 280900f9 str        x8, [x9, #0x10]                               ; 'r'
00007924 000100d0 adrp       x0, #0x29000                                 
00007928 00842a91 add        x0, x0, #0xaa1                                ; 'init: architecture=%s render registration=%s%s'
0000792c 31020094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007930 30f3ff97 bl         #0x45f0                                       ; |_LGSymResolverInit||_LGSymResolverInit
00007934 00010037 tbnz       w0, #0, #0x7954                              
00007938 01000014 b          #0x793c                                      
0000793c 000100d0 adrp       x0, #0x29000                                 
00007940 00142c91 add        x0, x0, #0xb05                                ; 'init: LGSymResolverInit failed, QuartzCore not loaded yet?'
00007944 2b020094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007948 28008052 mov        w8, #1                                       
0000794c a8c31fb8 stur       w8, [x29, #-4]                               
00007950 6f000014 b          #0x7b0c                                      
00007954 5bf7ff97 bl         #0x56c0                                       ; |_LGResolve_StopEncoders||_LGResolve_StopEncoders
00007958 e10300aa mov        x1, x0                                       
0000795c 000100d0 adrp       x0, #0x29000                                 
00007960 00002d91 add        x0, x0, #0xb40                                ; 'stop_encoders'
00007964 6d020094 bl         #0x8318                                       ; __ZL16logResolveResultPKcPv||__ZL16logResolveResultPKcPv|
00007968 a0831cf8 stur       x0, [x29, #-0x38]                            
0000796c 3cf5ff97 bl         #0x4e5c                                       ; |_LGResolve_CAInternAtomWithCString||_LGResolve_CAInternAtomWithCString
00007970 e10300aa mov        x1, x0                                       
00007974 000100d0 adrp       x0, #0x29000                                 
00007978 00f40b91 add        x0, x0, #0x2fd                                ; 'CAInternAtomWithCString'
0000797c 67020094 bl         #0x8318                                       ; __ZL16logResolveResultPKcPv||__ZL16logResolveResultPKcPv|
00007980 a0031cf8 stur       x0, [x29, #-0x40]                            
00007984 f3f5ff97 bl         #0x5150                                       ; |_LGResolve_AddFilter||_LGResolve_AddFilter
00007988 e10300aa mov        x1, x0                                       
0000798c 000100d0 adrp       x0, #0x29000                                 
00007990 00382d91 add        x0, x0, #0xb4e                                ; 'add_filter'
00007994 61020094 bl         #0x8318                                       ; __ZL16logResolveResultPKcPv||__ZL16logResolveResultPKcPv|
00007998 a0831bf8 stur       x0, [x29, #-0x48]                            
0000799c a0835cf8 ldur       x0, [x29, #-0x38]                            
000079a0 e3f2ff97 bl         #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000079a4 880100b0 adrp       x8, #0x38000                                 
000079a8 00b903f9 str        x0, [x8, #0x770]                              ; __ZL14g_stopEncoders|__ZL14g_stopEncoders
000079ac a0035cf8 ldur       x0, [x29, #-0x40]                            
000079b0 dff2ff97 bl         #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000079b4 880100b0 adrp       x8, #0x38000                                 
000079b8 00bd03f9 str        x0, [x8, #0x778]                              ; __ZL12g_internAtom|__ZL12g_internAtom
000079bc a0835bf8 ldur       x0, [x29, #-0x48]                            
000079c0 dbf2ff97 bl         #0x452c                                       ; |_LGSymMakeCallable||_LGSymMakeCallable
000079c4 880100b0 adrp       x8, #0x38000                                 
000079c8 00c103f9 str        x0, [x8, #0x780]                              ; __ZL11g_addFilter|__ZL11g_addFilter
000079cc ab835cf8 ldur       x11, [x29, #-0x38]                           
000079d0 aa035cf8 ldur       x10, [x29, #-0x40]                           
000079d4 a8835bf8 ldur       x8, [x29, #-0x48]                            
000079d8 e9030091 mov        x9, sp                                       
000079dc 2b0100f9 str        x11, [x9]                                     ; 'cloned descriptor'
000079e0 2a0500f9 str        x10, [x9, #8]                                 ; 'escriptor'
000079e4 280900f9 str        x8, [x9, #0x10]                               ; 'r'
000079e8 000100d0 adrp       x0, #0x29000                                 
000079ec 00642d91 add        x0, x0, #0xb59                                ; 'init: stopEncoders=%p internAtom=%p addFilter=%p'
000079f0 00020094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
000079f4 a8835cf8 ldur       x8, [x29, #-0x38]                            
000079f8 080100b4 cbz        x8, #0x7a18                                  
000079fc 01000014 b          #0x7a00                                      
00007a00 a8035cf8 ldur       x8, [x29, #-0x40]                            
00007a04 a80000b4 cbz        x8, #0x7a18                                  
00007a08 01000014 b          #0x7a0c                                      
00007a0c a8835bf8 ldur       x8, [x29, #-0x48]                            
00007a10 080100b5 cbnz       x8, #0x7a30                                  
00007a14 01000014 b          #0x7a18                                      
00007a18 000100d0 adrp       x0, #0x29000                                 
00007a1c 00282e91 add        x0, x0, #0xb8a                                ; 'init: required symbol(s) unresolved on this build, not activating (no fallback)'
00007a20 f4010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007a24 28008052 mov        w8, #1                                       
00007a28 a8c31fb8 stur       w8, [x29, #-4]                               
00007a2c 38000014 b          #0x7b0c                                      
00007a30 a8035df8 ldur       x8, [x29, #-0x30]                            
00007a34 084900f1 subs       x8, x8, #0x12                                
00007a38 cb020054 b.lt       #0x7a90                                      
00007a3c 01000014 b          #0x7a40                                      
00007a40 4ff9ff97 bl         #0x5f7c                                       ; |_LGResolve_ContextDestinationOffset||_LGResolve_ContextDestinationOffset
00007a44 880100b0 adrp       x8, #0x38000                                 
00007a48 002d01f9 str        x0, [x8, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007a4c 082d41f9 ldr        x8, [x8, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007a50 0801f8b6 tbz        x8, #0x3f, #0x7a70                           
00007a54 01000014 b          #0x7a58                                      
00007a58 000100d0 adrp       x0, #0x29000                                 
00007a5c 00682f91 add        x0, x0, #0xbda                                ; 'init: destination surface offset unresolved, not activating'
00007a60 e4010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007a64 28008052 mov        w8, #1                                       
00007a68 a8c31fb8 stur       w8, [x29, #-4]                               
00007a6c 28000014 b          #0x7b0c                                      
00007a70 880100b0 adrp       x8, #0x38000                                 
00007a74 082d41f9 ldr        x8, [x8, #0x258]                              ; __ZL26g_contextDestSurfaceOffset|__ZL26g_contextDestSurfaceOffset
00007a78 e9030091 mov        x9, sp                                       
00007a7c 280100f9 str        x8, [x9]                                      ; 'cloned descriptor'
00007a80 000100d0 adrp       x0, #0x29000                                 
00007a84 00583091 add        x0, x0, #0xc16                                ; 'init: resolved contextDestination=%#lx'
00007a88 da010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007a8c 01000014 b          #0x7a90                                      
00007a90 02f8ff97 bl         #0x5a98                                       ; |_LGResolve_MetalCmdBufOffset||_LGResolve_MetalCmdBufOffset
00007a94 880100b0 adrp       x8, #0x38000                                 
00007a98 003101f9 str        x0, [x8, #0x260]                              ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
00007a9c 083141f9 ldr        x8, [x8, #0x260]                              ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
00007aa0 c800f8b6 tbz        x8, #0x3f, #0x7ab8                           
00007aa4 01000014 b          #0x7aa8                                      
00007aa8 000100d0 adrp       x0, #0x29000                                 
00007aac 00f43091 add        x0, x0, #0xc3d                                ; 'init: command-buffer offset unresolved, filter registers but custom render pass is skipped'
00007ab0 d0010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007ab4 09000014 b          #0x7ad8                                      
00007ab8 880100b0 adrp       x8, #0x38000                                 
00007abc 083141f9 ldr        x8, [x8, #0x260]                              ; __ZL14g_cmdBufOffset|__ZL14g_cmdBufOffset
00007ac0 e9030091 mov        x9, sp                                       
00007ac4 280100f9 str        x8, [x9]                                      ; 'cloned descriptor'
00007ac8 000100d0 adrp       x0, #0x29000                                 
00007acc 00603291 add        x0, x0, #0xc98                                ; 'init: MetalContext command-buffer offset = %#lx'
00007ad0 c8010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007ad4 01000014 b          #0x7ad8                                      
00007ad8 000580d2 mov        x0, #0x28                                    
00007adc 28810094 bl         #0x27f7c                                      ; __Znwm
00007ae0 e01300f9 str        x0, [sp, #0x20]                              
00007ae4 2a020094 bl         #0x838c                                       ; __ZNSt3__113unordered_mapImU8__strongPU33objcproto22MTLRenderPipelineState11objc_objectNS_4hashImEENS_8equal_toImEENS_9allocatorINS_4pairIKmS3_EEEEEC1B6v15006Ev||__ZNSt3__113unordered_mapImU8__strongPU33objcproto22MTLRenderPipelineState11objc_objectNS_4hashImEENS_8equal_toImEENS_9allocatorINS_4pairIKmS3_EEEEEC1B6v15006Ev|
00007ae8 e01340f9 ldr        x0, [sp, #0x20]                              
00007aec 880100b0 adrp       x8, #0x38000                                 
00007af0 00c503f9 str        x0, [x8, #0x788]                              ; __ZL17g_renderPipelines|__ZL17g_renderPipelines
00007af4 32020094 bl         #0x83bc                                       ; __ZL20registerCustomFilterv||__ZL20registerCustomFilterv|
00007af8 000100d0 adrp       x0, #0x29000                                 
00007afc 00203391 add        x0, x0, #0xcc8                                ; 'ready'
00007b00 bc010094 bl         #0x81f0                                       ; __ZL5lglogPKcz||__ZL5lglogPKcz|
00007b04 bfc31fb8 stur       wzr, [x29, #-4]                              
00007b08 01000014 b          #0x7b0c                                      
00007b0c e03340f9 ldr        x0, [sp, #0x60]                              
00007b10 1f810094 bl         #0x27f8c                                      ; _objc_autoreleasePoolPop
00007b14 fd7b4ca9 ldp        x29, x30, [sp, #0xc0]                        
00007b18 ff430391 add        sp, sp, #0xd0                                
00007b1c ff0f5fd6 retab                                                   
00007b20 7f2303d5 pacibsp                                                  ; __ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary||__ZL17lgResetSessionLogP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary|
00007b24 ff8301d1 sub        sp, sp, #0x60                                
00007b28 fd7b05a9 stp        x29, x30, [sp, #0x50]                        
00007b2c fd430191 add        x29, sp, #0x50                               
00007b30 a0831ff8 stur       x0, [x29, #-8]                               
00007b34 a1031ff8 stur       x1, [x29, #-0x10]                            
00007b38 a2831ef8 stur       x2, [x29, #-0x18]                            
00007b3c a3031ef8 stur       x3, [x29, #-0x20]                            
00007b40 e41700f9 str        x4, [sp, #0x28]                              
00007b44 e9030091 mov        x9, sp                                       
00007b48 883480d2 mov        x8, #0x1a4                                   
00007b4c 280100f9 str        x8, [x9]                                      ; 'cloned descriptor'
00007b50 000100d0 adrp       x0, #0x29000                                 
00007b54 005c2091 add        x0, x0, #0x817                                ; '/var/mobile/Library/Accessibility/lg-backboardd.log'
00007b58 21c08052 mov        w1, #0x601                                   
00007b5c 0120a072 movk       w1, #0x100, lsl #16                          
00007b60 0f810094 bl         #0x27f9c                                      ; _open
00007b64 e02700b9 str        w0, [sp, #0x24]                              
00007b68 e82740b9 ldr        w8, [sp, #0x24]                              
00007b6c a800f837 tbnz       w8, #0x1f, #0x7b80                           
00007b70 01000014 b          #0x7b74                                      
00007b74 e02740b9 ldr        w0, [sp, #0x24]                              
00007b78 0d810094 bl         #0x27fac                                      ; _close
00007b7c 13000014 b          #0x7bc8                                      
00007b80 680100b0 adrp       x8, #0x34000                                 
00007b84 081943f9 ldr        x8, [x8, #0x630]                              ; ___stderrp
00007b88 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00007b8c e80f00f9 str        x8, [sp, #0x18]                              
00007b90 0b810094 bl         #0x27fbc                                      ; ___error
00007b94 000040b9 ldr        w0, [x0]                                      ; '/var/mobile/Library/Accessibility/lg-backboardd.log'
00007b98 0d810094 bl         #0x27fcc                                      ; _strerror
00007b9c e80300aa mov        x8, x0                                       
00007ba0 e00f40f9 ldr        x0, [sp, #0x18]                              
00007ba4 e9030091 mov        x9, sp                                       
00007ba8 0a0100d0 adrp       x10, #0x29000                                
00007bac 4a5d2091 add        x10, x10, #0x817                              ; '/var/mobile/Library/Accessibility/lg-backboardd.log'
00007bb0 2a0100f9 str        x10, [x9]                                     ; 'cloned descriptor'
00007bb4 280500f9 str        x8, [x9, #8]                                  ; 'escriptor'
00007bb8 010100d0 adrp       x1, #0x29000                                 
00007bbc 21383391 add        x1, x1, #0xcce                                ; '[LiquidAss] cannot reset %s: %s\n'
00007bc0 07810094 bl         #0x27fdc                                      ; _fprintf
00007bc4 01000014 b          #0x7bc8                                      
00007bc8 000100d0 adrp       x0, #0x29000                                 
00007bcc 00bc3391 add        x0, x0, #0xcef                                ; '/var/mobile/Library/Accessibility/lg-backboardd.log.previous'
00007bd0 07810094 bl         #0x27fec                                      ; _unlink
00007bd4 fd7b45a9 ldp        x29, x30, [sp, #0x50]                        
00007bd8 ff830191 add        sp, sp, #0x60                                
00007bdc ff0f5fd6 retab                                                   
00007be0 7f2303d5 pacibsp                                                  ; __ZL25lgClearAccessibilityFilesv||__ZL25lgClearAccessibilityFilesv|
00007be4 fc6fbea9 stp        x28, x27, [sp, #-0x20]!                      
00007be8 fd7b01a9 stp        x29, x30, [sp, #0x10]                        
00007bec fd430091 add        x29, sp, #0x10                               
00007bf0 ff0311d1 sub        sp, sp, #0x440                               
00007bf4 680100b0 adrp       x8, #0x34000                                 
00007bf8 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
00007bfc 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00007c00 a8831ef8 stur       x8, [x29, #-0x18]                            
00007c04 080100d0 adrp       x8, #0x29000                                 
00007c08 08b13491 add        x8, x8, #0xd2c                                ; '/var/mobile/Library/Accessibility'
00007c0c e81b00f9 str        x8, [sp, #0x30]                              
00007c10 e01b40f9 ldr        x0, [sp, #0x30]                              
00007c14 fa800094 bl         #0x27ffc                                      ; _opendir
00007c18 e01700f9 str        x0, [sp, #0x28]                              
00007c1c e81740f9 ldr        x8, [sp, #0x28]                              
00007c20 680000b5 cbnz       x8, #0x7c2c                                  
00007c24 01000014 b          #0x7c28                                      
00007c28 77000014 b          #0x7e04                                      
00007c2c ff1300f9 str        xzr, [sp, #0x20]                             
00007c30 01000014 b          #0x7c34                                      
00007c34 e01740f9 ldr        x0, [sp, #0x28]                              
00007c38 f5800094 bl         #0x2800c                                      ; _readdir
00007c3c e01300f9 str        x0, [sp, #0x20]                              
00007c40 c00d00b4 cbz        x0, #0x7df8                                  
00007c44 01000014 b          #0x7c48                                      
00007c48 e81340f9 ldr        x8, [sp, #0x20]                              
00007c4c 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007c50 010100d0 adrp       x1, #0x29000                                 
00007c54 21383591 add        x1, x1, #0xd4e                                ; 'liquidass'
00007c58 220180d2 mov        x2, #9                                       
00007c5c 6c800094 bl         #0x27e0c                                      ; _strncmp
00007c60 60020034 cbz        w0, #0x7cac                                  
00007c64 01000014 b          #0x7c68                                      
00007c68 e81340f9 ldr        x8, [sp, #0x20]                              
00007c6c 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007c70 010100d0 adrp       x1, #0x29000                                 
00007c74 21603591 add        x1, x1, #0xd58                                ; 'liquidglass'
00007c78 620180d2 mov        x2, #0xb                                     
00007c7c 64800094 bl         #0x27e0c                                      ; _strncmp
00007c80 60010034 cbz        w0, #0x7cac                                  
00007c84 01000014 b          #0x7c88                                      
00007c88 e81340f9 ldr        x8, [sp, #0x20]                              
00007c8c 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007c90 010100d0 adrp       x1, #0x29000                                 
00007c94 21903591 add        x1, x1, #0xd64                                ; 'lg-'
00007c98 620080d2 mov        x2, #3                                       
00007c9c 5c800094 bl         #0x27e0c                                      ; _strncmp
00007ca0 60000034 cbz        w0, #0x7cac                                  
00007ca4 01000014 b          #0x7ca8                                      
00007ca8 e3ffff17 b          #0x7c34                                      
00007cac e81340f9 ldr        x8, [sp, #0x20]                              
00007cb0 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007cb4 010100d0 adrp       x1, #0x29000                                 
00007cb8 21a03591 add        x1, x1, #0xd68                                ; 'lg-springboard.log'
00007cbc d8800094 bl         #0x2801c                                      ; _strcmp
00007cc0 40070034 cbz        w0, #0x7da8                                  
00007cc4 01000014 b          #0x7cc8                                      
00007cc8 e81340f9 ldr        x8, [sp, #0x20]                              
00007ccc 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007cd0 010100d0 adrp       x1, #0x29000                                 
00007cd4 21ec3591 add        x1, x1, #0xd7b                                ; 'lg-backboardd.log'
00007cd8 d1800094 bl         #0x2801c                                      ; _strcmp
00007cdc 60060034 cbz        w0, #0x7da8                                  
00007ce0 01000014 b          #0x7ce4                                      
00007ce4 e81340f9 ldr        x8, [sp, #0x20]                              
00007ce8 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007cec 010100d0 adrp       x1, #0x29000                                 
00007cf0 21343691 add        x1, x1, #0xd8d                                ; 'liquidass-safemode.log'
00007cf4 ca800094 bl         #0x2801c                                      ; _strcmp
00007cf8 80050034 cbz        w0, #0x7da8                                  
00007cfc 01000014 b          #0x7d00                                      
00007d00 e81340f9 ldr        x8, [sp, #0x20]                              
00007d04 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d08 010100d0 adrp       x1, #0x29000                                 
00007d0c 21903691 add        x1, x1, #0xda4                                ; 'liquidglass-clock-field.bin'
00007d10 c3800094 bl         #0x2801c                                      ; _strcmp
00007d14 a0040034 cbz        w0, #0x7da8                                  
00007d18 01000014 b          #0x7d1c                                      
00007d1c e81340f9 ldr        x8, [sp, #0x20]                              
00007d20 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d24 010100d0 adrp       x1, #0x29000                                 
00007d28 21003791 add        x1, x1, #0xdc0                                ; 'liquidglass-clock-editor-field.bin'
00007d2c bc800094 bl         #0x2801c                                      ; _strcmp
00007d30 c0030034 cbz        w0, #0x7da8                                  
00007d34 01000014 b          #0x7d38                                      
00007d38 e81340f9 ldr        x8, [sp, #0x20]                              
00007d3c 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d40 010100d0 adrp       x1, #0x29000                                 
00007d44 218c3791 add        x1, x1, #0xde3                                ; 'liquidglass-clock-poster-fields.bin'
00007d48 b5800094 bl         #0x2801c                                      ; _strcmp
00007d4c e0020034 cbz        w0, #0x7da8                                  
00007d50 01000014 b          #0x7d54                                      
00007d54 e81340f9 ldr        x8, [sp, #0x20]                              
00007d58 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d5c 010100d0 adrp       x1, #0x29000                                 
00007d60 211c3891 add        x1, x1, #0xe07                                ; 'liquidass-backboardd-guard.bin'
00007d64 ae800094 bl         #0x2801c                                      ; _strcmp
00007d68 00020034 cbz        w0, #0x7da8                                  
00007d6c 01000014 b          #0x7d70                                      
00007d70 e81340f9 ldr        x8, [sp, #0x20]                              
00007d74 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d78 010100d0 adrp       x1, #0x29000                                 
00007d7c 21983891 add        x1, x1, #0xe26                                ; 'liquidass-backboardd-alert'
00007d80 a7800094 bl         #0x2801c                                      ; _strcmp
00007d84 20010034 cbz        w0, #0x7da8                                  
00007d88 01000014 b          #0x7d8c                                      
00007d8c e81340f9 ldr        x8, [sp, #0x20]                              
00007d90 00550091 add        x0, x8, #0x15                                 ; 'ccessibility'
00007d94 010100d0 adrp       x1, #0x29000                                 
00007d98 21043991 add        x1, x1, #0xe41                                ; 'liquidass-gaussian-identity-state.bin'
00007d9c a0800094 bl         #0x2801c                                      ; _strcmp
00007da0 60000035 cbnz       w0, #0x7dac                                  
00007da4 01000014 b          #0x7da8                                      
00007da8 a3ffff17 b          #0x7c34                                      
00007dac e0e30091 add        x0, sp, #0x38                                 ; 'ccessibility'
00007db0 e00f00f9 str        x0, [sp, #0x18]                              
00007db4 018080d2 mov        x1, #0x400                                   
00007db8 e10b00f9 str        x1, [sp, #0x10]                              
00007dbc 9c800094 bl         #0x2802c                                      ; _bzero
00007dc0 e10b40f9 ldr        x1, [sp, #0x10]                              
00007dc4 e00f40f9 ldr        x0, [sp, #0x18]                              
00007dc8 ea1b40f9 ldr        x10, [sp, #0x30]                             
00007dcc e81340f9 ldr        x8, [sp, #0x20]                              
00007dd0 08550091 add        x8, x8, #0x15                                 ; 'ccessibility'
00007dd4 e9030091 mov        x9, sp                                       
00007dd8 2a0100f9 str        x10, [x9]                                     ; 'cloned descriptor'
00007ddc 280500f9 str        x8, [x9, #8]                                  ; 'escriptor'
00007de0 020100d0 adrp       x2, #0x29000                                 
00007de4 429c3991 add        x2, x2, #0xe67                                ; '%s/%s'
00007de8 95800094 bl         #0x2803c                                      ; _snprintf
00007dec e00f40f9 ldr        x0, [sp, #0x18]                              
00007df0 7f800094 bl         #0x27fec                                      ; _unlink
00007df4 90ffff17 b          #0x7c34                                      
00007df8 e01740f9 ldr        x0, [sp, #0x28]                              
00007dfc 94800094 bl         #0x2804c                                      ; _closedir
00007e00 01000014 b          #0x7e04                                      
00007e04 a9835ef8 ldur       x9, [x29, #-0x18]                            
00007e08 680100b0 adrp       x8, #0x34000                                 
00007e0c 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
00007e10 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
00007e14 080109eb subs       x8, x8, x9                                   
00007e18 60000054 b.eq       #0x7e24                                      
00007e1c 01000014 b          #0x7e20                                      
00007e20 27800094 bl         #0x27ebc                                      ; ___stack_chk_fail
00007e24 ff031191 add        sp, sp, #0x440                               
00007e28 fd7b41a9 ldp        x29, x30, [sp, #0x10]                        
00007e2c fc6fc2a8 ldp        x28, x27, [sp], #0x20                        
00007e30 ff0f5fd6 retab                                                   
00007e34 7f2303d5 pacibsp                                                  ; __ZL21lgShouldEnterSafeModev||__ZL21lgShouldEnterSafeModev|
00007e38 ff4305d1 sub        sp, sp, #0x150                               
00007e3c fc6f13a9 stp        x28, x27, [sp, #0x130]                       
00007e40 fd7b14a9 stp        x29, x30, [sp, #0x140]                       
00007e44 fd030591 add        x29, sp, #0x140                              
00007e48 67070094 bl         #0x9be4                                       ; __ZL17lgBootTimeSecondsv||__ZL17lgBootTimeSecondsv|
00007e4c a0031ef8 stur       x0, [x29, #-0x20]                            
00007e50 91070094 bl         #0x9c94                                       ; __ZL23lgMonotonicMillisecondsv||__ZL23lgMonotonicMillisecondsv|
00007e54 a0831df8 stur       x0, [x29, #-0x28]                            
00007e58 00e4006f movi       v0.2d, #0000000000000000                     
00007e5c a04301d1 sub        x0, x29, #0x50                               
00007e60 a0039b3c stur       q0, [x29, #-0x50]                            
00007e64 a0039c3c stur       q0, [x29, #-0x40]                            
00007e68 a6070094 bl         #0x9d00                                       ; __ZL19lgReadSafeModeStateP15LGSafeModeState||__ZL19lgReadSafeModeStateP15LGSafeModeState|
00007e6c a0f31a38 sturb      w0, [x29, #-0x51]                            
00007e70 a8f35a38 ldurb      w8, [x29, #-0x51]                            
00007e74 48010036 tbz        w8, #0, #0x7e9c                              
00007e78 01000014 b          #0x7e7c                                      
00007e7c a8035ef8 ldur       x8, [x29, #-0x20]                            
00007e80 e80000b4 cbz        x8, #0x7e9c                                  
00007e84 01000014 b          #0x7e88                                      
00007e88 a8835bf8 ldur       x8, [x29, #-0x48]                            
00007e8c a9035ef8 ldur       x9, [x29, #-0x20]                            
00007e90 080109eb subs       x8, x8, x9                                   
00007e94 20020054 b.eq       #0x7ed8                                      
00007e98 01000014 b          #0x7e9c                                      
00007e9c 00e4006f movi       v0.2d, #0000000000000000                     
00007ea0 a003983c stur       q0, [x29, #-0x80]                            
00007ea4 a003993c stur       q0, [x29, #-0x70]                            
00007ea8 a003d83c ldur       q0, [x29, #-0x80]                            
00007eac a0039b3c stur       q0, [x29, #-0x50]                            
00007eb0 a003d93c ldur       q0, [x29, #-0x70]                            
00007eb4 a0039c3c stur       q0, [x29, #-0x40]                            
00007eb8 a8698a52 mov        w8, #0x534d                                  
00007ebc e888a972 movk       w8, #0x4c47, lsl #16                         
00007ec0 a8031bb8 stur       w8, [x29, #-0x50]                            
00007ec4 28008052 mov        w8, #1                                       
00007ec8 a8431bb8 stur       w8, [x29, #-0x4c]                            
00007ecc a8035ef8 ldur       x8, [x29, #-0x20]                            
00007ed0 a8831bf8 stur       x8, [x29, #-0x48]                            
00007ed4 01000014 b          #0x7ed8                                      
00007ed8 a9035cf8 ldur       x9, [x29, #-0x40]                            
00007edc 08008052 mov        w8, #0                                       
00007ee0 290100f1 subs       x9, x9, #0                                   
00007ee4 e88f00b9 str        w8, [sp, #0x8c]                              
00007ee8 29020054 b.ls       #0x7f2c                                      
00007eec 01000014 b          #0x7ef0                                      
00007ef0 a9835df8 ldur       x9, [x29, #-0x28]                            
00007ef4 aa035cf8 ldur       x10, [x29, #-0x40]                           
00007ef8 08008052 mov        w8, #0                                       
00007efc 29010aeb subs       x9, x9, x10                                  
00007f00 e88f00b9 str        w8, [sp, #0x8c]                              
00007f04 43010054 b.lo       #0x7f2c                                      
00007f08 01000014 b          #0x7f0c                                      
00007f0c a8835df8 ldur       x8, [x29, #-0x28]                            
00007f10 a9035cf8 ldur       x9, [x29, #-0x40]                            
00007f14 080109eb subs       x8, x8, x9                                   
00007f18 094c9dd2 mov        x9, #0xea60                                  
00007f1c 080109eb subs       x8, x8, x9                                   
00007f20 e8879f1a cset       w8, ls                                       
00007f24 e88f00b9 str        w8, [sp, #0x8c]                              
00007f28 01000014 b          #0x7f2c                                      
00007f2c e88f40b9 ldr        w8, [sp, #0x8c]                              
00007f30 08010012 and        w8, w8, #1                                   
00007f34 a8f31738 sturb      w8, [x29, #-0x81]                            
00007f38 e9030091 mov        x9, sp                                       
00007f3c 883480d2 mov        x8, #0x1a4                                   
00007f40 280100f9 str        x8, [x9]                                      ; 'cloned descriptor'
00007f44 000100d0 adrp       x0, #0x29000                                 
00007f48 00b43991 add        x0, x0, #0xe6d                                ; '/var/mobile/Library/Accessibility/liquidass-safemode.log'
00007f4c 21418052 mov        w1, #0x209                                   
00007f50 0120a072 movk       w1, #0x100, lsl #16                          
00007f54 12800094 bl         #0x27f9c                                      ; _open
00007f58 a08317b8 stur       w0, [x29, #-0x88]                            
00007f5c a88357b8 ldur       w8, [x29, #-0x88]                            
00007f60 8804f837 tbnz       w8, #0x1f, #0x7ff0                           
00007f64 01000014 b          #0x7f68                                      
00007f68 a88357b8 ldur       w8, [x29, #-0x88]                            
00007f6c e87f00b9 str        w8, [sp, #0x7c]                              
00007f70 000080d2 mov        x0, #0                                       
00007f74 3a800094 bl         #0x2805c                                      ; _time
00007f78 e03b00f9 str        x0, [sp, #0x70]                              
00007f7c 3c800094 bl         #0x2806c                                      ; _getpid
00007f80 ef3b40f9 ldr        x15, [sp, #0x70]                             
00007f84 f00300aa mov        x16, x0                                      
00007f88 e07f40b9 ldr        w0, [sp, #0x7c]                              
00007f8c ae035ef8 ldur       x14, [x29, #-0x20]                           
00007f90 ad835df8 ldur       x13, [x29, #-0x28]                           
00007f94 ac035cf8 ldur       x12, [x29, #-0x40]                           
00007f98 a8835cb8 ldur       w8, [x29, #-0x38]                            
00007f9c eb0308aa mov        x11, x8                                      
00007fa0 aaf35738 ldurb      w10, [x29, #-0x81]                           
00007fa4 a8c35cb8 ldur       w8, [x29, #-0x34]                            
00007fa8 e9030091 mov        x9, sp                                       
00007fac e94300f9 str        x9, [sp, #0x80]                              
00007fb0 2f0100f9 str        x15, [x9]                                     ; 'cloned descriptor'
00007fb4 ef0310aa mov        x15, x16                                     
00007fb8 2f0500f9 str        x15, [x9, #8]                                 ; 'escriptor'
00007fbc 2e0900f9 str        x14, [x9, #0x10]                              ; 'r'
00007fc0 2d0d00f9 str        x13, [x9, #0x18]                              ; 'LGSymResolverInit failed, QuartzCore not loaded yet?'
00007fc4 2c1100f9 str        x12, [x9, #0x20]                              ; 'olverInit failed, QuartzCore not loaded yet?'
00007fc8 2b1500f9 str        x11, [x9, #0x28]                              ; 't failed, QuartzCore not loaded yet?'
00007fcc 4a014092 and        x10, x10, #1                                 
00007fd0 2a1900f9 str        x10, [x9, #0x30]                              ; ', QuartzCore not loaded yet?'
00007fd4 281d00f9 str        x8, [x9, #0x38]                               ; 'Core not loaded yet?'
00007fd8 010100d0 adrp       x1, #0x29000                                 
00007fdc 21983a91 add        x1, x1, #0xea6                                ; 'backboardd start time=%lld pid=%d boot=%lld now_ms=%llu previous_ms=%llu previous_starts=%u rapid=%d disabled=%u\n'
00007fe0 27800094 bl         #0x2807c                                      ; _dprintf
00007fe4 a08357b8 ldur       w0, [x29, #-0x88]                            
00007fe8 f17f0094 bl         #0x27fac                                      ; _close
00007fec 01000014 b          #0x7ff0                                      
00007ff0 a8c35cb8 ldur       w8, [x29, #-0x34]                            
00007ff4 e8000034 cbz        w8, #0x8010                                  
00007ff8 01000014 b          #0x7ffc                                      
00007ffc 28008052 mov        w8, #1                                       
00008000 08010012 and        w8, w8, #1                                   
00008004 08010012 and        w8, w8, #1                                   
00008008 a8f31e38 sturb      w8, [x29, #-0x11]                            
0000800c 51000014 b          #0x8150                                      
00008010 a8f35738 ldurb      w8, [x29, #-0x81]                            
00008014 c8000036 tbz        w8, #0, #0x802c                              
00008018 01000014 b          #0x801c                                      
0000801c a8835cb8 ldur       w8, [x29, #-0x38]                            
00008020 08050011 add        w8, w8, #1                                   
00008024 e86f00b9 str        w8, [sp, #0x6c]                              
00008028 04000014 b          #0x8038                                      
0000802c 28008052 mov        w8, #1                                       
00008030 e86f00b9 str        w8, [sp, #0x6c]                              
00008034 01000014 b          #0x8038                                      
00008038 e86f40b9 ldr        w8, [sp, #0x6c]                              
0000803c a8831cb8 stur       w8, [x29, #-0x38]                            
00008040 a8835df8 ldur       x8, [x29, #-0x28]                            
00008044 a8031cf8 stur       x8, [x29, #-0x40]                            
00008048 a8835cb8 ldur       w8, [x29, #-0x38]                            
0000804c 080d0071 subs       w8, w8, #3                                   
00008050 c3010054 b.lo       #0x8088                                      
00008054 01000014 b          #0x8058                                      
00008058 a04301d1 sub        x0, x29, #0x50                               
0000805c 28008052 mov        w8, #1                                       
00008060 e86b00b9 str        w8, [sp, #0x68]                              
00008064 a8c31cb8 stur       w8, [x29, #-0x34]                            
00008068 66070094 bl         #0x9e00                                       ; __ZL20lgWriteSafeModeStatePK15LGSafeModeState||__ZL20lgWriteSafeModeStatePK15LGSafeModeState|
0000806c a0835cb8 ldur       w0, [x29, #-0x38]                            
00008070 cc070094 bl         #0x9fa0                                       ; __ZL21lgWriteSafeModeNoticej||__ZL21lgWriteSafeModeNoticej|
00008074 e96b40b9 ldr        w9, [sp, #0x68]                              
00008078 28010012 and        w8, w9, #1                                   
0000807c 0801090a and        w8, w8, w9                                   
00008080 a8f31e38 sturb      w8, [x29, #-0x11]                            
00008084 33000014 b          #0x8150                                      
00008088 a04301d1 sub        x0, x29, #0x50                               
0000808c 5d070094 bl         #0x9e00                                       ; __ZL20lgWriteSafeModeStatePK15LGSafeModeState||__ZL20lgWriteSafeModeStatePK15LGSafeModeState|
00008090 000080d2 mov        x0, #0                                       
00008094 e02700f9 str        x0, [sp, #0x48]                              
00008098 014090d2 mov        x1, #0x8200                                  
0000809c a146aff2 movk       x1, #0x7a35, lsl #16                         
000080a0 4101c0f2 movk       x1, #0xa, lsl #32                            
000080a4 fa7f0094 bl         #0x2808c                                      ; _dispatch_time
000080a8 e12740f9 ldr        x1, [sp, #0x48]                              
000080ac e02b00f9 str        x0, [sp, #0x50]                              
000080b0 200280d2 mov        x0, #0x11                                    
000080b4 fa7f0094 bl         #0x2809c                                      ; _dispatch_get_global_queue
000080b8 fd031daa mov        x29, x29                                     
000080bc 847f0094 bl         #0x27ecc                                      ; _objc_retainAutoreleasedReturnValue
000080c0 e10300aa mov        x1, x0                                       
000080c4 e02b40f9 ldr        x0, [sp, #0x50]                              
000080c8 e12f00f9 str        x1, [sp, #0x58]                              
000080cc e2430291 add        x2, sp, #0x90                                 ; '%s/%s'
000080d0 e80302aa mov        x8, x2                                       
000080d4 70010090 adrp       x16, #0x34000                                
000080d8 101e43f9 ldr        x16, [x16, #0x638]                            ; __NSConcreteStackBlock
000080dc f10308aa mov        x17, x8                                      
000080e0 315cedf2 movk       x17, #0x6ae1, lsl #48                        
000080e4 300ac1da pacda      x16, x17                                     
000080e8 f04b00f9 str        x16, [sp, #0x90]                             
000080ec 0800b852 mov        w8, #-0x40000000                             
000080f0 e89b00b9 str        w8, [sp, #0x98]                              
000080f4 08008052 mov        w8, #0                                       
000080f8 e86700b9 str        w8, [sp, #0x64]                              
000080fc ff9f00b9 str        wzr, [sp, #0x9c]                             
00008100 48400091 add        x8, x2, #0x10                                 ; 'e/Library/Accessibility/liquidass-safemode.log'
00008104 100000d0 adrp       x16, #0xa000                                 
00008108 10b20391 add        x16, x16, #0xec                               ; ____ZL21lgShouldEnterSafeModev_block_invoke||____ZL21lgShouldEnterSafeModev_block_invoke|
0000810c 1001c1da pacia      x16, x8                                      
00008110 f05300f9 str        x16, [sp, #0xa0]                             
00008114 68010090 adrp       x8, #0x34000                                 
00008118 08c11a91 add        x8, x8, #0x6b0                                ; ___block_descriptor_40_e5_v8?0l
0000811c e85700f9 str        x8, [sp, #0xa8]                              
00008120 a8035ef8 ldur       x8, [x29, #-0x20]                            
00008124 e85b00f9 str        x8, [sp, #0xb0]                              
00008128 e17f0094 bl         #0x280ac                                      ; _dispatch_after
0000812c e02f40f9 ldr        x0, [sp, #0x58]                              
00008130 68010090 adrp       x8, #0x34000                                 
00008134 081143f9 ldr        x8, [x8, #0x620]                              ; _objc_release
00008138 00013fd6 blr        x8                                           
0000813c e86740b9 ldr        w8, [sp, #0x64]                              
00008140 08010012 and        w8, w8, #1                                   
00008144 08010012 and        w8, w8, #1                                   
00008148 a8f31e38 sturb      w8, [x29, #-0x11]                            
0000814c 01000014 b          #0x8150                                      
00008150 a8f35e38 ldurb      w8, [x29, #-0x11]                            
00008154 00010012 and        w0, w8, #1                                   
00008158 fd7b54a9 ldp        x29, x30, [sp, #0x140]                       
0000815c fc6f53a9 ldp        x28, x27, [sp, #0x130]                       
00008160 ff430591 add        sp, sp, #0x150                               
00008164 ff0f5fd6 retab                                                   
00008168 7f2303d5 pacibsp                                                  ; __ZL11lgPrefsPathv||__ZL11lgPrefsPathv|
0000816c ff8300d1 sub        sp, sp, #0x20                                
00008170 fd7b01a9 stp        x29, x30, [sp, #0x10]                        
00008174 fd430091 add        x29, sp, #0x10                               
00008178 88010090 adrp       x8, #0x38000                                 
0000817c 08611e91 add        x8, x8, #0x798                                ; __ZZL11lgPrefsPathvE4once|__ZZL11lgPrefsPathvE4once
00008180 e80700f9 str        x8, [sp, #8]                                 
00008184 e0030091 mov        x0, sp                                       
00008188 ff0300f9 str        xzr, [sp]                                    
0000818c 61010090 adrp       x1, #0x34000                                 
00008190 21c01b91 add        x1, x1, #0x6f0                                ; ___block_literal_global|___block_literal_global
00008194 567f0094 bl         #0x27eec                                      ; _objc_storeStrong
00008198 e80740f9 ldr        x8, [sp, #8]                                 
0000819c 080140f9 ldr        x8, [x8]                                      ; __ZZL11lgPrefsPathvE4once|__ZZL11lgPrefsPathvE4once
000081a0 080500b1 adds       x8, x8, #1                                   
000081a4 c0000054 b.eq       #0x81bc                                      
000081a8 01000014 b          #0x81ac                                      
000081ac e00740f9 ldr        x0, [sp, #8]                                 
000081b0 e10340f9 ldr        x1, [sp]                                     
000081b4 fa7e0094 bl         #0x27d9c                                      ; _dispatch_once
000081b8 02000014 b          #0x81c0                                      
000081bc 01000014 b          #0x81c0                                      
000081c0 e0030091 mov        x0, sp                                       
000081c4 010080d2 mov        x1, #0                                       
000081c8 497f0094 bl         #0x27eec                                      ; _objc_storeStrong
000081cc 88010090 adrp       x8, #0x38000                                 
000081d0 00c943f9 ldr        x0, [x8, #0x790]                              ; __ZZL11lgPrefsPathvE6cached|__ZZL11lgPrefsPathvE6cached
000081d4 fd7b41a9 ldp        x29, x30, [sp, #0x10]                        
000081d8 ff830091 add        sp, sp, #0x20                                
000081dc ff2303d5 autibsp                                                 
000081e0 d0071eca eor        x16, x30, x30, lsl #1                        
000081e4 5000f0b6 tbz        x16, #0x3e, #0x81ec                          
000081e8 208e38d4 brk        #0xc471                                      
000081ec b47f0014 b          #0x280bc                                      ; _objc_retainAutoreleaseReturnValue
