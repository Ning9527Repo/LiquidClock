; main arm64e unslid VA [0xa118c,0xa198c); slice_offset=0xfc000
000a118c pacibsp                                                
000a1190 stp       x28, x27, [sp, #-0x60]!                      
000a1194 stp       x26, x25, [sp, #0x10]                        
000a1198 stp       x24, x23, [sp, #0x20]                        
000a119c stp       x22, x21, [sp, #0x30]                        
000a11a0 stp       x20, x19, [sp, #0x40]                        
000a11a4 stp       x29, x30, [sp, #0x50]                        
000a11a8 add       x29, sp, #0x50                               
000a11ac sub       sp, sp, #0x620                               
000a11b0 mov       x23, x2                                      
000a11b4 mov       x19, x1                                      
000a11b8 adrp      x8, #0xd4000                                 
000a11bc ldr       x8, [x8, #0x938]                              ; &___stack_chk_guard
000a11c0 ldr       x8, [x8]                                      ; &___objc_personality_v0
000a11c4 stur      x8, [x29, #-0x60]                            
000a11c8 bl        #0xa4704                                      ; _objc_retain
000a11cc mov       x28, x0                                      
000a11d0 mov       x0, x19                                      
000a11d4 bl        #0xa4704                                      ; _objc_retain
000a11d8 mov       x22, x0                                      
000a11dc adrp      x0, #0xdd000                                 
000a11e0 add       x0, x0, #0xc10                                ; @'/var/mobile/Library/Preferences/dylv.liquidassprefs.plist'
000a11e4 bl        #0xa7720                                      ; objc_msgSend$fileSystemRepresentation
000a11e8 add       x1, sp, #0x210                               
000a11ec bl        #0x4168                                      
000a11f0 cbz       x0, #0xa1214                                 
000a11f4 mov       x2, x0                                       
000a11f8 adrp      x8, #0xec000                                 
000a11fc ldr       x0, [x8, #0x518]                              ; &_OBJC_CLASS_$_NSString
000a1200 bl        #0xb05e0                                      ; objc_msgSend$stringWithUTF8String:
000a1204 mov       x29, x29                                     
000a1208 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a120c mov       x26, x0                                      
000a1210 b         #0xa1218                                     
000a1214 mov       x26, #0                                      
000a1218 adrp      x24, #0xec000                                
000a121c ldr       x0, [x24, #0x530]                             ; &_OBJC_CLASS_$_NSDictionary
000a1220 mov       x2, x26                                      
000a1224 bl        #0xa6f40                                      ; objc_msgSend$dictionaryWithContentsOfFile:
000a1228 mov       x29, x29                                     
000a122c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1230 mov       x20, x0                                      
000a1234 mov       x19, x0                                      
000a1238 cbnz      x0, #0xa12ec                                 
000a123c adrp      x8, #0xec000                                 
000a1240 ldr       x0, [x8, #0x558]                              ; &_OBJC_CLASS_$_NSFileManager
000a1244 bl        #0xa6d60                                      ; objc_msgSend$defaultManager
000a1248 mov       x29, x29                                     
000a124c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1250 mov       x19, x0                                      
000a1254 mov       x2, x26                                      
000a1258 bl        #0xa76e0                                      ; objc_msgSend$fileExistsAtPath:
000a125c mov       x21, x0                                      
000a1260 mov       x0, x19                                      
000a1264 bl        #0xa46f4                                      ; _objc_release
000a1268 cbz       w21, #0xa12e4                                
000a126c cbz       x23, #0xa1980                                
000a1270 adrp      x8, #0xec000                                 
000a1274 ldr       x19, [x8, #0x738]                             ; &_OBJC_CLASS_$_NSError
000a1278 adrp      x8, #0xd4000                                 
000a127c ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
000a1280 ldr       x21, [x8]                                     ; &___objc_personality_v0
000a1284 adrp      x8, #0xd4000                                 
000a1288 ldr       x8, [x8, #0x7c8]                              ; &_NSFilePathErrorKey
000a128c ldr       x8, [x8]                                      ; &___objc_personality_v0
000a1290 str       x8, [sp, #0x200]                             
000a1294 str       x26, [sp, #0x208]                            
000a1298 ldr       x0, [x24, #0x530]                             ; &_OBJC_CLASS_$_NSDictionary
000a129c add       x2, sp, #0x208                               
000a12a0 add       x3, sp, #0x200                               
000a12a4 mov       w4, #1                                       
000a12a8 bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
000a12ac mov       x29, x29                                     
000a12b0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a12b4 mov       x24, x0                                      
000a12b8 mov       x0, x19                                      
000a12bc mov       x2, x21                                      
000a12c0 mov       w3, #0x103                                   
000a12c4 mov       x4, x24                                      
000a12c8 bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a12cc mov       x29, x29                                     
000a12d0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a12d4 bl        #0xa45b4                                      ; _objc_autorelease
000a12d8 mov       w19, #0                                      
000a12dc str       x0, [x23]                                    
000a12e0 b         #0xa191c                                     
000a12e4 adrp      x19, #0xd4000                                
000a12e8 ldr       x19, [x19, #0x7f8]                            ; &___NSDictionary0__struct
000a12ec str       x20, [sp, #0x48]                             
000a12f0 adrp      x8, #0xd4000                                 
000a12f4 ldr       x8, [x8, #0x818]                              ; &_kCFPreferencesCurrentUser
000a12f8 ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a12fc adrp      x8, #0xd4000                                 
000a1300 ldr       x8, [x8, #0x810]                              ; &_kCFPreferencesAnyHost
000a1304 ldr       x3, [x8]                                      ; &___objc_personality_v0
000a1308 adrp      x1, #0xdd000                                 
000a130c add       x1, x1, #0xe10                                ; @'dylv.liquidassprefs'
000a1310 mov       x0, #0                                       
000a1314 stp       x3, x2, [sp, #0x38]                          
000a1318 bl        #0xa3b04                                      ; _CFPreferencesCopyMultiple
000a131c mov       x21, x0                                      
000a1320 adrp      x8, #0xd4000                                 
000a1324 ldr       x8, [x8, #0x7f8]                              ; &___NSDictionary0__struct
000a1328 cmp       x0, #0                                       
000a132c csel      x0, x8, x0, eq                               
000a1330 bl        #0xa4704                                      ; _objc_retain
000a1334 mov       x24, x0                                      
000a1338 mov       x0, x21                                      
000a133c bl        #0xa46f4                                      ; _objc_release
000a1340 mov       x0, x28                                      
000a1344 bl        #0xa9e00                                      ; objc_msgSend$mutableCopy
000a1348 mov       x25, x0                                      
000a134c mov       x0, x24                                      
000a1350 bl        #0xa9e00                                      ; objc_msgSend$mutableCopy
000a1354 mov       x27, x0                                      
000a1358 mov       x2, x19                                      
000a135c bl        #0xa4ea0                                      ; objc_msgSend$addEntriesFromDictionary:
000a1360 adrp      x2, #0xd9000                                 
000a1364 add       x2, x2, #0xc10                                ; @'CustomViews.RuleIDs'
000a1368 mov       x0, x25                                      
000a136c bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a1370 mov       x29, x29                                     
000a1374 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1378 mov       x19, x0                                      
000a137c adrp      x20, #0xec000                                
000a1380 ldr       x0, [x20, #0x5c8]                             ; &_OBJC_CLASS_$_NSArray
000a1384 bl        #0xa46b4                                      ; _objc_opt_class
000a1388 mov       x1, x0                                       
000a138c mov       x0, x19                                      
000a1390 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a1394 mov       x21, x0                                      
000a1398 mov       x0, x19                                      
000a139c bl        #0xa46f4                                      ; _objc_release
000a13a0 adrp      x19, #0xd4000                                
000a13a4 ldr       x19, [x19, #0x7f0]                            ; &___NSArray0__struct
000a13a8 tbz       w21, #0, #0xa15d8                            
000a13ac stp       x23, x26, [sp, #0x20]                        
000a13b0 str       x22, [sp, #0x58]                             
000a13b4 str       x28, [sp, #0x30]                             
000a13b8 adrp      x8, #0xec000                                 
000a13bc mov       x23, x19                                     
000a13c0 ldr       x19, [x8, #0x740]                             ; &_OBJC_CLASS_$_NSMutableOrderedSet
000a13c4 adrp      x21, #0xd9000                                
000a13c8 add       x21, x21, #0xc10                              ; @'CustomViews.RuleIDs'
000a13cc str       x25, [sp, #0x18]                             
000a13d0 mov       x0, x25                                      
000a13d4 mov       x2, x21                                      
000a13d8 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a13dc mov       x29, x29                                     
000a13e0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a13e4 mov       x22, x0                                      
000a13e8 mov       x0, x19                                      
000a13ec mov       x2, x22                                      
000a13f0 bl        #0xaa360                                      ; objc_msgSend$orderedSetWithArray:
000a13f4 mov       x29, x29                                     
000a13f8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a13fc str       x0, [sp, #0x50]                              
000a1400 mov       x0, x22                                      
000a1404 bl        #0xa46f4                                      ; _objc_release
000a1408 mov       x28, x27                                     
000a140c mov       x0, x27                                      
000a1410 mov       x2, x21                                      
000a1414 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a1418 mov       x29, x29                                     
000a141c bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1420 mov       x19, x0                                      
000a1424 movi      v0.2d, #0000000000000000                     
000a1428 stp       q0, q0, [sp, #0xa0]                          
000a142c stp       q0, q0, [sp, #0xc0]                          
000a1430 ldr       x0, [x20, #0x5c8]                             ; &_OBJC_CLASS_$_NSArray
000a1434 bl        #0xa46b4                                      ; _objc_opt_class
000a1438 mov       x1, x0                                       
000a143c mov       x0, x19                                      
000a1440 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a1444 tst       w0, #1                                       
000a1448 str       x19, [sp, #0x10]                             
000a144c csel      x0, x19, x23, ne                             
000a1450 bl        #0xa4704                                      ; _objc_retain
000a1454 mov       x27, x0                                      
000a1458 add       x2, sp, #0xa0                                
000a145c add       x3, sp, #0x180                               
000a1460 mov       w4, #0x10                                    
000a1464 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000a1468 cbz       x0, #0xa156c                                 
000a146c mov       x21, x0                                      
000a1470 ldr       x8, [sp, #0xb0]                              
000a1474 ldr       x20, [x8]                                    
000a1478 adrp      x19, #0xec000                                
000a147c mov       x26, #0                                      
000a1480 ldr       x8, [sp, #0xb0]                              
000a1484 ldr       x8, [x8]                                     
000a1488 cmp       x8, x20                                      
000a148c b.eq      #0xa1498                                     
000a1490 mov       x0, x27                                      
000a1494 bl        #0xa4634                                      ; _objc_enumerationMutation
000a1498 ldr       x8, [sp, #0xa8]                              
000a149c ldr       x22, [x8, x26, lsl #3]                       
000a14a0 ldr       x0, [x19, #0x518]                             ; &_OBJC_CLASS_$_NSString
000a14a4 bl        #0xa46b4                                      ; _objc_opt_class
000a14a8 mov       x1, x0                                       
000a14ac mov       x0, x22                                      
000a14b0 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a14b4 tbz       w0, #0, #0xa1544                             
000a14b8 ldr       x0, [x19, #0x518]                             ; &_OBJC_CLASS_$_NSString
000a14bc str       x22, [sp]                                    
000a14c0 adrp      x2, #0xdd000                                 
000a14c4 add       x2, x2, #0xe90                                ; @'CustomViews.Rule.%@.APIManaged'
000a14c8 bl        #0xb05a0                                      ; objc_msgSend$stringWithFormat:
000a14cc mov       x29, x29                                     
000a14d0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a14d4 mov       x23, x0                                      
000a14d8 mov       x0, x28                                      
000a14dc mov       x2, x23                                      
000a14e0 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a14e4 mov       x29, x29                                     
000a14e8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a14ec mov       x25, x0                                      
000a14f0 adrp      x8, #0xec000                                 
000a14f4 ldr       x0, [x8, #0x4e8]                              ; &_OBJC_CLASS_$_NSNumber
000a14f8 bl        #0xa46b4                                      ; _objc_opt_class
000a14fc mov       x1, x0                                       
000a1500 mov       x0, x25                                      
000a1504 bl        #0xa46c4                                      ; _objc_opt_isKindOfClass
000a1508 tbz       w0, #0, #0xa1534                             
000a150c mov       x0, x25                                      
000a1510 bl        #0xa5b80                                      ; objc_msgSend$boolValue
000a1514 cbz       w0, #0xa1534                                 
000a1518 ldr       x0, [sp, #0x58]                              
000a151c mov       x2, x23                                      
000a1520 bl        #0xa6520                                      ; objc_msgSend$containsObject:
000a1524 tbnz      w0, #0, #0xa1534                             
000a1528 ldr       x0, [sp, #0x50]                              
000a152c mov       x2, x22                                      
000a1530 bl        #0xa4ee0                                      ; objc_msgSend$addObject:
000a1534 mov       x0, x25                                      
000a1538 bl        #0xa46f4                                      ; _objc_release
000a153c mov       x0, x23                                      
000a1540 bl        #0xa46f4                                      ; _objc_release
000a1544 add       x26, x26, #1                                 
000a1548 cmp       x21, x26                                     
000a154c b.ne      #0xa1480                                     
000a1550 add       x2, sp, #0xa0                                
000a1554 add       x3, sp, #0x180                               
000a1558 mov       x0, x27                                      
000a155c mov       w4, #0x10                                    
000a1560 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000a1564 mov       x21, x0                                      
000a1568 cbnz      x0, #0xa147c                                 
000a156c mov       x0, x27                                      
000a1570 bl        #0xa46f4                                      ; _objc_release
000a1574 ldr       x19, [sp, #0x50]                             
000a1578 mov       x0, x19                                      
000a157c bl        #0xa5500                                      ; objc_msgSend$array
000a1580 mov       x29, x29                                     
000a1584 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1588 mov       x21, x0                                      
000a158c adrp      x3, #0xd9000                                 
000a1590 add       x3, x3, #0xc10                                ; @'CustomViews.RuleIDs'
000a1594 ldr       x25, [sp, #0x18]                             
000a1598 mov       x0, x25                                      
000a159c mov       x2, x21                                      
000a15a0 bl        #0xadec0                                      ; objc_msgSend$setObject:forKeyedSubscript:
000a15a4 mov       x0, x21                                      
000a15a8 bl        #0xa46f4                                      ; _objc_release
000a15ac ldr       x0, [sp, #0x10]                              
000a15b0 bl        #0xa46f4                                      ; _objc_release
000a15b4 mov       x0, x19                                      
000a15b8 bl        #0xa46f4                                      ; _objc_release
000a15bc ldp       x26, x8, [sp, #0x28]                         
000a15c0 ldr       x22, [sp, #0x58]                             
000a15c4 ldr       x23, [sp, #0x20]                             
000a15c8 mov       x27, x28                                     
000a15cc mov       x28, x8                                      
000a15d0 adrp      x19, #0xd4000                                
000a15d4 ldr       x19, [x19, #0x7f0]                            ; &___NSArray0__struct
000a15d8 mov       x0, x27                                      
000a15dc mov       x2, x25                                      
000a15e0 bl        #0xa4ea0                                      ; objc_msgSend$addEntriesFromDictionary:
000a15e4 cmp       x22, #0                                      
000a15e8 csel      x21, x19, x22, eq                            
000a15ec mov       x0, x27                                      
000a15f0 mov       x2, x21                                      
000a15f4 bl        #0xab2a0                                      ; objc_msgSend$removeObjectsForKeys:
000a15f8 adrp      x8, #0xec000                                 
000a15fc ldr       x0, [x8, #0x938]                              ; &_OBJC_CLASS_$_NSPropertyListSerialization
000a1600 mov       x2, x27                                      
000a1604 mov       w3, #0xc8                                    
000a1608 bl        #0xaae80                                      ; objc_msgSend$propertyList:isValidForFormat:
000a160c tbz       w0, #0, #0xa18c8                             
000a1610 adrp      x19, #0xdd000                                
000a1614 add       x19, x19, #0xe10                              ; @'dylv.liquidassprefs'
000a1618 mov       x0, x25                                      
000a161c mov       x1, x22                                      
000a1620 mov       x2, x19                                      
000a1624 ldp       x4, x3, [sp, #0x38]                          
000a1628 bl        #0xa3b14                                      ; _CFPreferencesSetMultiple
000a162c mov       x0, x19                                      
000a1630 bl        #0xa3ae4                                      ; _CFPreferencesAppSynchronize
000a1634 cbz       w0, #0xa1650                                 
000a1638 mov       w19, #1                                      
000a163c mov       x0, x27                                      
000a1640 mov       x2, x26                                      
000a1644 mov       w3, #1                                       
000a1648 bl        #0xb1e00                                      ; objc_msgSend$writeToFile:atomically:
000a164c tbnz      w0, #0, #0xa1908                             
000a1650 stp       x26, x28, [sp, #0x28]                        
000a1654 mov       x28, x27                                     
000a1658 str       x23, [sp, #0x20]                             
000a165c str       x22, [sp, #0x58]                             
000a1660 adrp      x8, #0xec000                                 
000a1664 ldr       x0, [x8, #0x728]                              ; &_OBJC_CLASS_$_NSMutableDictionary
000a1668 bl        #0xa6f00                                      ; objc_msgSend$dictionary
000a166c mov       x29, x29                                     
000a1670 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1674 mov       x23, x0                                      
000a1678 adrp      x8, #0xec000                                 
000a167c ldr       x0, [x8, #0x520]                              ; &_OBJC_CLASS_$_NSMutableArray
000a1680 bl        #0xa5500                                      ; objc_msgSend$array
000a1684 mov       x29, x29                                     
000a1688 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a168c mov       x19, x0                                      
000a1690 adrp      x8, #0xec000                                 
000a1694 ldr       x22, [x8, #0x748]                             ; &_OBJC_CLASS_$_NSMutableSet
000a1698 str       x25, [sp, #0x18]                             
000a169c mov       x0, x25                                      
000a16a0 bl        #0xa50e0                                      ; objc_msgSend$allKeys
000a16a4 mov       x29, x29                                     
000a16a8 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a16ac mov       x25, x0                                      
000a16b0 mov       x0, x22                                      
000a16b4 mov       x2, x25                                      
000a16b8 bl        #0xafc60                                      ; objc_msgSend$setWithArray:
000a16bc mov       x29, x29                                     
000a16c0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a16c4 mov       x22, x0                                      
000a16c8 mov       x0, x25                                      
000a16cc bl        #0xa46f4                                      ; _objc_release
000a16d0 mov       x0, x22                                      
000a16d4 mov       x2, x21                                      
000a16d8 bl        #0xa4f00                                      ; objc_msgSend$addObjectsFromArray:
000a16dc movi      v0.2d, #0000000000000000                     
000a16e0 stp       q0, q0, [sp, #0x80]                          
000a16e4 stp       q0, q0, [sp, #0x60]                          
000a16e8 mov       x0, x22                                      
000a16ec bl        #0xa4704                                      ; _objc_retain
000a16f0 mov       x27, x0                                      
000a16f4 add       x2, sp, #0x60                                
000a16f8 add       x3, sp, #0x100                               
000a16fc mov       w4, #0x10                                    
000a1700 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000a1704 cbz       x0, #0xa17c0                                 
000a1708 mov       x21, x0                                      
000a170c ldr       x8, [sp, #0x70]                              
000a1710 ldr       x20, [x8]                                    
000a1714 mov       x26, #0                                      
000a1718 ldr       x8, [sp, #0x70]                              
000a171c ldr       x8, [x8]                                     
000a1720 cmp       x8, x20                                      
000a1724 b.eq      #0xa1730                                     
000a1728 mov       x0, x27                                      
000a172c bl        #0xa4634                                      ; _objc_enumerationMutation
000a1730 ldr       x8, [sp, #0x68]                              
000a1734 ldr       x22, [x8, x26, lsl #3]                       
000a1738 mov       x0, x24                                      
000a173c mov       x2, x22                                      
000a1740 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a1744 mov       x29, x29                                     
000a1748 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a174c mov       x25, x0                                      
000a1750 bl        #0xa46f4                                      ; _objc_release
000a1754 cbz       x25, #0xa178c                                
000a1758 mov       x0, x24                                      
000a175c mov       x2, x22                                      
000a1760 bl        #0xaa280                                      ; objc_msgSend$objectForKeyedSubscript:
000a1764 mov       x29, x29                                     
000a1768 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a176c mov       x25, x0                                      
000a1770 mov       x0, x23                                      
000a1774 mov       x2, x25                                      
000a1778 mov       x3, x22                                      
000a177c bl        #0xadec0                                      ; objc_msgSend$setObject:forKeyedSubscript:
000a1780 mov       x0, x25                                      
000a1784 bl        #0xa46f4                                      ; _objc_release
000a1788 b         #0xa1798                                     
000a178c mov       x0, x19                                      
000a1790 mov       x2, x22                                      
000a1794 bl        #0xa4ee0                                      ; objc_msgSend$addObject:
000a1798 add       x26, x26, #1                                 
000a179c cmp       x21, x26                                     
000a17a0 b.ne      #0xa1718                                     
000a17a4 add       x2, sp, #0x60                                
000a17a8 add       x3, sp, #0x100                               
000a17ac mov       x0, x27                                      
000a17b0 mov       w4, #0x10                                    
000a17b4 bl        #0xa6a20                                      ; objc_msgSend$countByEnumeratingWithState:objects:count:
000a17b8 mov       x21, x0                                      
000a17bc cbnz      x0, #0xa1714                                 
000a17c0 mov       x0, x27                                      
000a17c4 bl        #0xa46f4                                      ; _objc_release
000a17c8 adrp      x21, #0xdd000                                
000a17cc add       x21, x21, #0xe10                              ; @'dylv.liquidassprefs'
000a17d0 mov       x0, x23                                      
000a17d4 mov       x1, x19                                      
000a17d8 mov       x2, x21                                      
000a17dc ldp       x4, x3, [sp, #0x38]                          
000a17e0 bl        #0xa3b14                                      ; _CFPreferencesSetMultiple
000a17e4 mov       x0, x21                                      
000a17e8 bl        #0xa3ae4                                      ; _CFPreferencesAppSynchronize
000a17ec ldr       x26, [sp, #0x28]                             
000a17f0 ldr       x0, [sp, #0x48]                              
000a17f4 cbz       x0, #0xa1804                                 
000a17f8 mov       x2, x26                                      
000a17fc mov       w3, #1                                       
000a1800 bl        #0xb1e00                                      ; objc_msgSend$writeToFile:atomically:
000a1804 ldr       x20, [sp, #0x20]                             
000a1808 cbz       x20, #0xa1898                                
000a180c adrp      x8, #0xec000                                 
000a1810 ldr       x21, [x8, #0x738]                             ; &_OBJC_CLASS_$_NSError
000a1814 adrp      x8, #0xd4000                                 
000a1818 ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
000a181c adrp      x9, #0xd4000                                 
000a1820 ldr       x9, [x9, #0x7c8]                              ; &_NSFilePathErrorKey
000a1824 ldr       x22, [x8]                                     ; &___objc_personality_v0
000a1828 ldr       x8, [x9]                                      ; &___objc_personality_v0
000a182c adrp      x9, #0xd4000                                 
000a1830 ldr       x9, [x9, #0x7d0]                              ; &_NSLocalizedDescriptionKey
000a1834 ldr       x9, [x9]                                      ; &___objc_personality_v0
000a1838 stp       x8, x9, [sp, #0xe0]                          
000a183c adrp      x8, #0xdd000                                 
000a1840 add       x8, x8, #0xeb0                                ; @'Could not save preferences. Your pending changes have been kept.'
000a1844 stp       x26, x8, [sp, #0xf0]                         
000a1848 adrp      x8, #0xec000                                 
000a184c ldr       x0, [x8, #0x530]                              ; &_OBJC_CLASS_$_NSDictionary
000a1850 add       x2, sp, #0xf0                                
000a1854 add       x3, sp, #0xe0                                
000a1858 mov       w4, #2                                       
000a185c bl        #0xa6f60                                      ; objc_msgSend$dictionaryWithObjects:forKeys:count:
000a1860 mov       x29, x29                                     
000a1864 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1868 mov       x25, x0                                      
000a186c mov       x0, x21                                      
000a1870 mov       x2, x22                                      
000a1874 mov       w3, #0x200                                   
000a1878 mov       x4, x25                                      
000a187c bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a1880 mov       x29, x29                                     
000a1884 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a1888 bl        #0xa45b4                                      ; _objc_autorelease
000a188c str       x0, [x20]                                    
000a1890 mov       x0, x25                                      
000a1894 bl        #0xa46f4                                      ; _objc_release
000a1898 mov       x0, x27                                      
000a189c bl        #0xa46f4                                      ; _objc_release
000a18a0 mov       x0, x19                                      
000a18a4 bl        #0xa46f4                                      ; _objc_release
000a18a8 mov       x0, x23                                      
000a18ac bl        #0xa46f4                                      ; _objc_release
000a18b0 mov       w19, #0                                      
000a18b4 ldr       x22, [sp, #0x58]                             
000a18b8 ldr       x25, [sp, #0x18]                             
000a18bc mov       x27, x28                                     
000a18c0 ldr       x28, [sp, #0x30]                             
000a18c4 b         #0xa1908                                     
000a18c8 cbz       x23, #0xa1904                                
000a18cc adrp      x8, #0xec000                                 
000a18d0 ldr       x0, [x8, #0x738]                              ; &_OBJC_CLASS_$_NSError
000a18d4 adrp      x8, #0xd4000                                 
000a18d8 ldr       x8, [x8, #0x7b8]                              ; &_NSCocoaErrorDomain
000a18dc ldr       x2, [x8]                                      ; &___objc_personality_v0 | x2 <- &___objc_personality_v0
000a18e0 mov       w3, #0xf0c                                   
000a18e4 mov       x4, #0                                       
000a18e8 bl        #0xa75a0                                      ; objc_msgSend$errorWithDomain:code:userInfo:
000a18ec mov       x29, x29                                     
000a18f0 bl        #0xa4734                                      ; _objc_retainAutoreleasedReturnValue
000a18f4 bl        #0xa45b4                                      ; _objc_autorelease
000a18f8 mov       w19, #0                                      
000a18fc str       x0, [x23]                                    
000a1900 b         #0xa1908                                     
000a1904 mov       w19, #0                                      
000a1908 mov       x0, x27                                      
000a190c bl        #0xa46f4                                      ; _objc_release
000a1910 mov       x0, x25                                      
000a1914 bl        #0xa46f4                                      ; _objc_release
000a1918 ldr       x20, [sp, #0x48]                             
000a191c mov       x0, x24                                      
000a1920 bl        #0xa46f4                                      ; _objc_release
000a1924 mov       x0, x20                                      
000a1928 bl        #0xa46f4                                      ; _objc_release
000a192c mov       x0, x26                                      
000a1930 bl        #0xa46f4                                      ; _objc_release
000a1934 mov       x0, x22                                      
000a1938 bl        #0xa46f4                                      ; _objc_release
000a193c mov       x0, x28                                      
000a1940 bl        #0xa46f4                                      ; _objc_release
000a1944 ldur      x8, [x29, #-0x60]                            
000a1948 adrp      x9, #0xd4000                                 
000a194c ldr       x9, [x9, #0x938]                              ; &___stack_chk_guard
000a1950 ldr       x9, [x9]                                      ; &___objc_personality_v0
000a1954 cmp       x9, x8                                       
000a1958 b.ne      #0xa1988                                     
000a195c mov       x0, x19                                      
000a1960 add       sp, sp, #0x620                               
000a1964 ldp       x29, x30, [sp, #0x50]                        
000a1968 ldp       x20, x19, [sp, #0x40]                        
000a196c ldp       x22, x21, [sp, #0x30]                        
000a1970 ldp       x24, x23, [sp, #0x20]                        
000a1974 ldp       x26, x25, [sp, #0x10]                        
000a1978 ldp       x28, x27, [sp], #0x60                        
000a197c retab                                                  
000a1980 mov       w19, #0                                      
000a1984 b         #0xa1924                                     
000a1988 bl        #0xa41d4                                      ; ___stack_chk_fail
