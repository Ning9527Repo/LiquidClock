0000edc4 7f2303d5 pacibsp                                                  ; __ZL20lgRegisterCustomAtomjPv||__ZL20lgRegisterCustomAtomjPv|
0000edc8 ff8301d1 sub        sp, sp, #0x60                                
0000edcc fd7b05a9 stp        x29, x30, [sp, #0x50]                        
0000edd0 fd430191 add        x29, sp, #0x50                               
0000edd4 280100d0 adrp       x8, #0x34000                                 
0000edd8 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000eddc 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000ede0 a8831ff8 stur       x8, [x29, #-8]                               
0000ede4 a0431eb8 stur       w0, [x29, #-0x1c]                            
0000ede8 e11700f9 str        x1, [sp, #0x28]                              
0000edec a8435eb8 ldur       w8, [x29, #-0x1c]                            
0000edf0 a8000034 cbz        w8, #0xee04                                  
0000edf4 01000014 b          #0xedf8                                      
0000edf8 e81740f9 ldr        x8, [sp, #0x28]                              
0000edfc 680000b5 cbnz       x8, #0xee08                                  
0000ee00 01000014 b          #0xee04                                      
0000ee04 1f000014 b          #0xee80                                      
0000ee08 400100f0 adrp       x0, #0x39000                                 
0000ee0c 00f01a91 add        x0, x0, #0x6bc                                ; __ZL17g_customAtomsLock|__ZL17g_customAtomsLock
0000ee10 e00700f9 str        x0, [sp, #8]                                 
0000ee14 12650094 bl         #0x2825c                                      ; _os_unfair_lock_lock
0000ee18 400100d0 adrp       x0, #0x38000                                 
0000ee1c 00601091 add        x0, x0, #0x418                                ; __ZL13g_customAtoms|__ZL13g_customAtoms
0000ee20 a17300d1 sub        x1, x29, #0x1c                               
0000ee24 530f0094 bl         #0x12b70                                      ; __ZNSt3__113unordered_setIjNS_4hashIjEENS_8equal_toIjEENS_9allocatorIjEEE6insertB6v15006ERKj||__ZNSt3__113unordered_setIjNS_4hashIjEENS_8equal_toIjEENS_9allocatorIjEEE6insertB6v15006ERKj|
0000ee28 e80300aa mov        x8, x0                                       
0000ee2c e00740f9 ldr        x0, [sp, #8]                                 
0000ee30 a8831ef8 stur       x8, [x29, #-0x18]                            
0000ee34 a1031ff8 stur       x1, [x29, #-0x10]                            
0000ee38 a8835ef8 ldur       x8, [x29, #-0x18]                            
0000ee3c e80b00f9 str        x8, [sp, #0x10]                              
0000ee40 a8035f38 ldurb      w8, [x29, #-0x10]                            
0000ee44 e8630039 strb       w8, [sp, #0x18]                              
0000ee48 e8634039 ldrb       w8, [sp, #0x18]                              
0000ee4c 29008052 mov        w9, #1                                       
0000ee50 0801090a and        w8, w8, w9                                   
0000ee54 e89f0039 strb       w8, [sp, #0x27]                              
0000ee58 09650094 bl         #0x2827c                                      ; _os_unfair_lock_unlock
0000ee5c e89f4039 ldrb       w8, [sp, #0x27]                              
0000ee60 08010036 tbz        w8, #0, #0xee80                              
0000ee64 01000014 b          #0xee68                                      
0000ee68 480100d0 adrp       x8, #0x38000                                 
0000ee6c 08c143f9 ldr        x8, [x8, #0x780]                              ; __ZL11g_addFilter|__ZL11g_addFilter
0000ee70 a0435eb8 ldur       w0, [x29, #-0x1c]                            
0000ee74 e11740f9 ldr        x1, [sp, #0x28]                              
0000ee78 1f093fd6 blraaz     x8                                           
0000ee7c 01000014 b          #0xee80                                      
0000ee80 a9835ff8 ldur       x9, [x29, #-8]                               
0000ee84 280100d0 adrp       x8, #0x34000                                 
0000ee88 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000ee8c 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000ee90 080109eb subs       x8, x8, x9                                   
0000ee94 60000054 b.eq       #0xeea0                                      
0000ee98 01000014 b          #0xee9c                                      
0000ee9c 08640094 bl         #0x27ebc                                      ; ___stack_chk_fail
0000eea0 fd7b45a9 ldp        x29, x30, [sp, #0x50]                        
0000eea4 ff830191 add        sp, sp, #0x60                                
0000eea8 ff0f5fd6 retab                                                   
0000eeac 7f2303d5 pacibsp                                                  ; |__ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_||__ZNSt3__113unordered_mapIj11LGHostRouteNS_4hashIjEENS_8equal_toIjEENS_9allocatorINS_4pairIKjS1_EEEEEixERS8_
0000eeb0 ff0302d1 sub        sp, sp, #0x80                                
0000eeb4 fd7b07a9 stp        x29, x30, [sp, #0x70]                        
0000eeb8 fdc30191 add        x29, sp, #0x70                               
0000eebc 280100d0 adrp       x8, #0x34000                                 
0000eec0 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000eec4 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000eec8 a8831ff8 stur       x8, [x29, #-8]                               
0000eecc a0031ef8 stur       x0, [x29, #-0x20]                            
0000eed0 a1831df8 stur       x1, [x29, #-0x28]                            
0000eed4 a8035ef8 ldur       x8, [x29, #-0x20]                            
0000eed8 e80700f9 str        x8, [sp, #8]                                 
0000eedc a8835df8 ldur       x8, [x29, #-0x28]                            
0000eee0 e80b00f9 str        x8, [sp, #0x10]                              
0000eee4 a0835df8 ldur       x0, [x29, #-0x28]                            
0000eee8 053c0094 bl         #0x1defc                                      ; __ZNSt3__116forward_as_tupleB6v15006IJRKjEEENS_5tupleIJDpOT_EEES6_||__ZNSt3__116forward_as_tupleB6v15006IJRKjEEENS_5tupleIJDpOT_EEES6_|
0000eeec e8c30091 add        x8, sp, #0x30                                 ; _objc_msgSend
0000eef0 e80f00f9 str        x8, [sp, #0x18]                              
0000eef4 e01b00f9 str        x0, [sp, #0x30]                              
0000eef8 95200094 bl         #0x1714c                                      ; __ZNSt3__116forward_as_tupleB6v15006IJEEENS_5tupleIJDpOT_EEES4_||__ZNSt3__116forward_as_tupleB6v15006IJEEENS_5tupleIJDpOT_EEES4_|
0000eefc e00740f9 ldr        x0, [sp, #8]                                 
0000ef00 e10b40f9 ldr        x1, [sp, #0x10]                              
0000ef04 e30f40f9 ldr        x3, [sp, #0x18]                              
0000ef08 020100f0 adrp       x2, #0x31000                                 
0000ef0c 42601191 add        x2, x2, #0x458                                ; __ZNSt3__1L19piecewise_constructE|__ZNSt3__1L19piecewise_constructE
0000ef10 e4bf0091 add        x4, sp, #0x2f                                
0000ef14 e6640094 bl         #0x282ac                                      ; __ZNSt3__112__hash_tableINS_17__hash_value_typeIj11LGHostRouteEENS_22__unordered_map_hasherIjS3_NS_4hashIjEENS_8equal_toIjEELb1EEENS_21__unordered_map_equalIjS3_S8_S6_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIjJRKNS_21piecewise_construct_tENS_5tupleIJRKjEEENSJ_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_
0000ef18 a0831ef8 stur       x0, [x29, #-0x18]                            
0000ef1c a1031ff8 stur       x1, [x29, #-0x10]                            
0000ef20 a8835ef8 ldur       x8, [x29, #-0x18]                            
0000ef24 e0e30091 add        x0, sp, #0x38                                 ; __ZL13g_customAtoms|__ZL13g_customAtoms
0000ef28 e81f00f9 str        x8, [sp, #0x38]                              
0000ef2c a8035f38 ldurb      w8, [x29, #-0x10]                            
0000ef30 e8030139 strb       w8, [sp, #0x40]                              
0000ef34 9b150094 bl         #0x145a0                                      ; __ZNKSt3__115__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj11LGHostRouteEEPvEEEptB6v15006Ev||__ZNKSt3__115__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeIj11LGHostRouteEEPvEEEptB6v15006Ev|
0000ef38 a7150094 bl         #0x145d4                                      ; __ZNSt3__117__hash_value_typeIj11LGHostRouteE11__get_valueB6v15006Ev||__ZNSt3__117__hash_value_typeIj11LGHostRouteE11__get_valueB6v15006Ev|
0000ef3c e01300f9 str        x0, [sp, #0x20]                              
0000ef40 a9835ff8 ldur       x9, [x29, #-8]                               
0000ef44 280100d0 adrp       x8, #0x34000                                 
0000ef48 080d43f9 ldr        x8, [x8, #0x618]                              ; ___stack_chk_guard
0000ef4c 080140f9 ldr        x8, [x8]                                      ; _objc_msgSend
0000ef50 080109eb subs       x8, x8, x9                                   
0000ef54 60000054 b.eq       #0xef60                                      
0000ef58 01000014 b          #0xef5c                                      
0000ef5c d8630094 bl         #0x27ebc                                      ; ___stack_chk_fail
0000ef60 e81340f9 ldr        x8, [sp, #0x20]                              
0000ef64 00110091 add        x0, x8, #4                                   
0000ef68 fd7b47a9 ldp        x29, x30, [sp, #0x70]                        
0000ef6c ff030291 add        sp, sp, #0x80                                
0000ef70 ff0f5fd6 retab                                                   
