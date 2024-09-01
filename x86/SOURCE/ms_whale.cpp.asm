;-------------------------------------------------------------------------------
;                                                                              -
;  Module 17: D:\SOURCE\ms_whale.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MISS_WHALEY'                -
;-------------------------------------------------
talk_to_MISS_WHALEY:
   13ec0:	53                   	push   ebx
   13ec1:	51                   	push   ecx
   13ec2:	52                   	push   edx
   13ec3:	56                   	push   esi
   13ec4:	57                   	push   edi
   13ec5:	55                   	push   ebp
   13ec6:	b8 58 16 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_1                            ; fixup: num: 2116, src obj: 1, src ofs: 0x13ec7, dst obj: 3, dst ofs: 0x1658
   13ecb:	e8 c0 88 05 00       	call   check_script_flag
   13ed0:	84 c0                	test   al,al
   13ed2:	0f 84 23 02 00 00    	je     talk_to_MISS_WHALEY_branch_7
   13ed8:	bb 02 00 00 00       	mov    ebx,0x2
   13edd:	ba 70 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_2                            ; fixup: num: 2115, src obj: 1, src ofs: 0x13ede, dst obj: 3, dst ofs: 0x1670
   13ee2:	b8 3b 14 00 00       	mov    eax,0x143b
   13ee7:	e8 a4 67 05 00       	call   play_wav
   13eec:	b8 4b 02 00 00       	mov    eax,0x24b
   13ef1:	e8 aa 62 01 00       	call   GetDlgFileString
   13ef6:	e8 15 70 05 00       	call   get_response
   13efb:	83 f8 01             	cmp    eax,0x1
   13efe:	75 19                	jne    talk_to_MISS_WHALEY_branch_1
   13f00:	bb 02 00 00 00       	mov    ebx,0x2
   13f05:	ba 77 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_3                            ; fixup: num: 2114, src obj: 1, src ofs: 0x13f06, dst obj: 3, dst ofs: 0x1677
   13f0a:	b8 45 14 00 00       	mov    eax,0x1445
   13f0f:	e8 7c 67 05 00       	call   play_wav
   13f14:	e9 a5 01 00 00       	jmp    talk_to_MISS_WHALEY_branch_6
talk_to_MISS_WHALEY_branch_1:
   13f19:	83 f8 02             	cmp    eax,0x2
   13f1c:	0f 85 9c 01 00 00    	jne    talk_to_MISS_WHALEY_branch_6
   13f22:	ba 7e 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_4                            ; fixup: num: 2113, src obj: 1, src ofs: 0x13f23, dst obj: 3, dst ofs: 0x167e
   13f27:	89 c3                	mov    ebx,eax
   13f29:	b8 49 14 00 00       	mov    eax,0x1449
   13f2e:	e8 5d 67 05 00       	call   play_wav
   13f33:	ba 86 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_5                            ; fixup: num: 2112, src obj: 1, src ofs: 0x13f34, dst obj: 3, dst ofs: 0x1686
   13f38:	b8 4d 14 00 00       	mov    eax,0x144d
   13f3d:	31 db                	xor    ebx,ebx
   13f3f:	e8 4c 67 05 00       	call   play_wav
   13f44:	b8 89 16 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_6                            ; fixup: num: 2111, src obj: 1, src ofs: 0x13f45, dst obj: 3, dst ofs: 0x1689
   13f49:	e8 22 89 05 00       	call   check_inventory
   13f4e:	84 c0                	test   al,al
   13f50:	75 41                	jne    talk_to_MISS_WHALEY_branch_2
   13f52:	bb 02 00 00 00       	mov    ebx,0x2
   13f57:	ba a1 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_7                            ; fixup: num: 2110, src obj: 1, src ofs: 0x13f58, dst obj: 3, dst ofs: 0x16a1
   13f5c:	b8 56 14 00 00       	mov    eax,0x1456
   13f61:	e8 2a 67 05 00       	call   play_wav
   13f66:	bb 02 00 00 00       	mov    ebx,0x2
   13f6b:	ba a9 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_8                            ; fixup: num: 2109, src obj: 1, src ofs: 0x13f6c, dst obj: 3, dst ofs: 0x16a9
   13f70:	b8 5a 14 00 00       	mov    eax,0x145a
   13f75:	e8 16 67 05 00       	call   play_wav
   13f7a:	bb 02 00 00 00       	mov    ebx,0x2
   13f7f:	ba b1 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_9                            ; fixup: num: 2054, src obj: 1, src ofs: 0x13f80, dst obj: 3, dst ofs: 0x16b1
   13f84:	b8 5f 14 00 00       	mov    eax,0x145f
   13f89:	e8 02 67 05 00       	call   play_wav
   13f8e:	e9 2b 01 00 00       	jmp    talk_to_MISS_WHALEY_branch_6
talk_to_MISS_WHALEY_branch_2:
   13f93:	bb 02 00 00 00       	mov    ebx,0x2
   13f98:	ba b8 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_10                           ; fixup: num: 2053, src obj: 1, src ofs: 0x13f99, dst obj: 3, dst ofs: 0x16b8
   13f9d:	b8 65 14 00 00       	mov    eax,0x1465
   13fa2:	e8 e9 66 05 00       	call   play_wav
   13fa7:	ba c0 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_11                           ; fixup: num: 2052, src obj: 1, src ofs: 0x13fa8, dst obj: 3, dst ofs: 0x16c0
   13fac:	b8 69 14 00 00       	mov    eax,0x1469
   13fb1:	31 db                	xor    ebx,ebx
   13fb3:	e8 d8 66 05 00       	call   play_wav
   13fb8:	b8 4c 02 00 00       	mov    eax,0x24c
   13fbd:	e8 de 61 01 00       	call   GetDlgFileString
   13fc2:	e8 49 6f 05 00       	call   get_response
   13fc7:	83 f8 01             	cmp    eax,0x1
   13fca:	0f 85 84 00 00 00    	jne    talk_to_MISS_WHALEY_branch_4
   13fd0:	bb 02 00 00 00       	mov    ebx,0x2
   13fd5:	ba c7 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_12                           ; fixup: num: 2051, src obj: 1, src ofs: 0x13fd6, dst obj: 3, dst ofs: 0x16c7
   13fda:	b8 76 14 00 00       	mov    eax,0x1476
   13fdf:	e8 ac 66 05 00       	call   play_wav
   13fe4:	b8 4d 02 00 00       	mov    eax,0x24d
   13fe9:	e8 b2 61 01 00       	call   GetDlgFileString
   13fee:	e8 1d 6f 05 00       	call   get_response
   13ff3:	83 f8 01             	cmp    eax,0x1
   13ff6:	75 2c                	jne    talk_to_MISS_WHALEY_branch_3
   13ff8:	ba ce 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_13                           ; fixup: num: 2050, src obj: 1, src ofs: 0x13ff9, dst obj: 3, dst ofs: 0x16ce
   13ffd:	b8 82 14 00 00       	mov    eax,0x1482
   14002:	31 db                	xor    ebx,ebx
   14004:	e8 87 66 05 00       	call   play_wav
   14009:	b8 d5 16 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_14                           ; fixup: num: 2274, src obj: 1, src ofs: 0x1400a, dst obj: 3, dst ofs: 0x16d5
   1400e:	ba d9 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_15                           ; fixup: num: 2273, src obj: 1, src ofs: 0x1400f, dst obj: 3, dst ofs: 0x16d9
   14013:	e8 98 88 05 00       	call   add_inventory
   14018:	31 db                	xor    ebx,ebx
   1401a:	b8 f1 16 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_16                           ; fixup: num: 2272, src obj: 1, src ofs: 0x1401b, dst obj: 3, dst ofs: 0x16f1
   1401f:	e9 95 00 00 00       	jmp    talk_to_MISS_WHALEY_branch_5
talk_to_MISS_WHALEY_branch_3:
   14024:	83 f8 02             	cmp    eax,0x2
   14027:	0f 85 91 00 00 00    	jne    talk_to_MISS_WHALEY_branch_6
   1402d:	ba fb 16 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_17                           ; fixup: num: 2285, src obj: 1, src ofs: 0x1402e, dst obj: 3, dst ofs: 0x16fb
   14032:	89 c3                	mov    ebx,eax
   14034:	b8 87 14 00 00       	mov    eax,0x1487
   14039:	e8 52 66 05 00       	call   play_wav
   1403e:	bb 02 00 00 00       	mov    ebx,0x2
   14043:	ba 02 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_18                           ; fixup: num: 2284, src obj: 1, src ofs: 0x14044, dst obj: 3, dst ofs: 0x1702
   14048:	b8 8c 14 00 00       	mov    eax,0x148c
   1404d:	e8 3e 66 05 00       	call   play_wav
   14052:	eb 6a                	jmp    talk_to_MISS_WHALEY_branch_6
talk_to_MISS_WHALEY_branch_4:
   14054:	83 f8 02             	cmp    eax,0x2
   14057:	75 65                	jne    talk_to_MISS_WHALEY_branch_6
   14059:	ba 0a 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_19                           ; fixup: num: 2283, src obj: 1, src ofs: 0x1405a, dst obj: 3, dst ofs: 0x170a
   1405e:	89 c3                	mov    ebx,eax
   14060:	b8 91 14 00 00       	mov    eax,0x1491
   14065:	e8 26 66 05 00       	call   play_wav
   1406a:	bb 03 00 00 00       	mov    ebx,0x3
   1406f:	ba 12 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_20                           ; fixup: num: 2282, src obj: 1, src ofs: 0x14070, dst obj: 3, dst ofs: 0x1712
   14074:	b8 95 14 00 00       	mov    eax,0x1495
   14079:	e8 12 66 05 00       	call   play_wav
   1407e:	ba 19 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_21                           ; fixup: num: 2281, src obj: 1, src ofs: 0x1407f, dst obj: 3, dst ofs: 0x1719
   14083:	b8 99 14 00 00       	mov    eax,0x1499
   14088:	31 db                	xor    ebx,ebx
   1408a:	e8 01 66 05 00       	call   play_wav
   1408f:	bb 01 00 00 00       	mov    ebx,0x1
   14094:	ba 21 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_22                           ; fixup: num: 2280, src obj: 1, src ofs: 0x14095, dst obj: 3, dst ofs: 0x1721
   14099:	b8 9e 14 00 00       	mov    eax,0x149e
   1409e:	e8 ed 65 05 00       	call   play_wav
   140a3:	b8 28 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_23                           ; fixup: num: 2279, src obj: 1, src ofs: 0x140a4, dst obj: 3, dst ofs: 0x1728
   140a8:	ba 2c 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_24                           ; fixup: num: 2278, src obj: 1, src ofs: 0x140a9, dst obj: 3, dst ofs: 0x172c
   140ad:	e8 fe 87 05 00       	call   add_inventory
   140b2:	31 db                	xor    ebx,ebx
   140b4:	b8 44 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_25                           ; fixup: num: 2277, src obj: 1, src ofs: 0x140b5, dst obj: 3, dst ofs: 0x1744
talk_to_MISS_WHALEY_branch_5:
   140b9:	e8 52 ee 03 00       	call   set_object
talk_to_MISS_WHALEY_branch_6:
   140be:	b8 4e 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_26                           ; fixup: num: 2276, src obj: 1, src ofs: 0x140bf, dst obj: 3, dst ofs: 0x174e
   140c3:	31 d2                	xor    edx,edx
   140c5:	e8 16 87 05 00       	call   set_script_flag
   140ca:	b8 66 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_27                           ; fixup: num: 2275, src obj: 1, src ofs: 0x140cb, dst obj: 3, dst ofs: 0x1766
   140cf:	e8 bc 86 05 00       	call   check_script_flag
   140d4:	84 c0                	test   al,al
   140d6:	0f 84 e6 08 00 00    	je     talk_to_MISS_WHALEY_branch_47
   140dc:	b8 7b 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_28                           ; fixup: num: 2296, src obj: 1, src ofs: 0x140dd, dst obj: 3, dst ofs: 0x177b
   140e1:	31 d2                	xor    edx,edx
   140e3:	e8 f8 86 05 00       	call   set_script_flag
   140e8:	b8 90 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_29                           ; fixup: num: 2295, src obj: 1, src ofs: 0x140e9, dst obj: 3, dst ofs: 0x1790
   140ed:	e8 8e 8a 05 00       	call   ExecuteCommand
   140f2:	31 c0                	xor    eax,eax
   140f4:	5d                   	pop    ebp
   140f5:	5f                   	pop    edi
   140f6:	5e                   	pop    esi
   140f7:	5a                   	pop    edx
   140f8:	59                   	pop    ecx
   140f9:	5b                   	pop    ebx
   140fa:	c3                   	ret    
talk_to_MISS_WHALEY_branch_7:
   140fb:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 2294, src obj: 1, src ofs: 0x140fd, dst obj: 3, dst ofs: 0x294bc
   14101:	85 d2                	test   edx,edx
   14103:	0f 84 6e 02 00 00    	je     talk_to_MISS_WHALEY_branch_16
   14109:	89 d0                	mov    eax,edx
   1410b:	ba 9e 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_30                           ; fixup: num: 2293, src obj: 1, src ofs: 0x1410c, dst obj: 3, dst ofs: 0x179e
   14110:	e8 1b 23 06 00       	call   strcmp_
   14115:	85 c0                	test   eax,eax
   14117:	75 14                	jne    talk_to_MISS_WHALEY_branch_8
   14119:	bb 02 00 00 00       	mov    ebx,0x2
   1411e:	ba b6 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_31                           ; fixup: num: 2292, src obj: 1, src ofs: 0x1411f, dst obj: 3, dst ofs: 0x17b6
   14123:	b8 11 14 00 00       	mov    eax,0x1411
   14128:	e9 3c 02 00 00       	jmp    talk_to_MISS_WHALEY_branch_15
talk_to_MISS_WHALEY_branch_8:
   1412d:	ba bd 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_32                           ; fixup: num: 2291, src obj: 1, src ofs: 0x1412e, dst obj: 3, dst ofs: 0x17bd
   14132:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2290, src obj: 1, src ofs: 0x14133, dst obj: 3, dst ofs: 0x294bc
   14137:	e8 f4 22 06 00       	call   strcmp_
   1413c:	85 c0                	test   eax,eax
   1413e:	74 17                	je     talk_to_MISS_WHALEY_branch_9
   14140:	ba ca 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_33                           ; fixup: num: 2289, src obj: 1, src ofs: 0x14141, dst obj: 3, dst ofs: 0x17ca
   14145:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2288, src obj: 1, src ofs: 0x14146, dst obj: 3, dst ofs: 0x294bc
   1414a:	e8 e1 22 06 00       	call   strcmp_
   1414f:	85 c0                	test   eax,eax
   14151:	0f 85 9b 00 00 00    	jne    talk_to_MISS_WHALEY_branch_10
talk_to_MISS_WHALEY_branch_9:
   14157:	ba 01 00 00 00       	mov    edx,0x1
   1415c:	31 c0                	xor    eax,eax
   1415e:	e8 fd 41 01 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   14163:	31 db                	xor    ebx,ebx
   14165:	ba db 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_34                           ; fixup: num: 2287, src obj: 1, src ofs: 0x14166, dst obj: 3, dst ofs: 0x17db
   1416a:	b8 17 14 00 00       	mov    eax,0x1417
   1416f:	e8 1c 65 05 00       	call   play_wav
   14174:	ba e2 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_35                           ; fixup: num: 2286, src obj: 1, src ofs: 0x14175, dst obj: 3, dst ofs: 0x17e2
   14179:	b8 1b 14 00 00       	mov    eax,0x141b
   1417e:	31 db                	xor    ebx,ebx
   14180:	e8 0b 65 05 00       	call   play_wav
   14185:	bb 02 00 00 00       	mov    ebx,0x2
   1418a:	ba e5 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_36                           ; fixup: num: 2306, src obj: 1, src ofs: 0x1418b, dst obj: 3, dst ofs: 0x17e5
   1418f:	b8 1f 14 00 00       	mov    eax,0x141f
   14194:	e8 f7 64 05 00       	call   play_wav
   14199:	ba ec 17 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_37                           ; fixup: num: 2305, src obj: 1, src ofs: 0x1419a, dst obj: 3, dst ofs: 0x17ec
   1419e:	b8 24 14 00 00       	mov    eax,0x1424
   141a3:	31 db                	xor    ebx,ebx
   141a5:	e8 e6 64 05 00       	call   play_wav
   141aa:	b8 ef 17 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_38                           ; fixup: num: 2304, src obj: 1, src ofs: 0x141ab, dst obj: 3, dst ofs: 0x17ef
   141af:	e8 dc 85 05 00       	call   check_script_flag
   141b4:	84 c0                	test   al,al
   141b6:	0f 84 06 08 00 00    	je     talk_to_MISS_WHALEY_branch_47
   141bc:	bb 02 00 00 00       	mov    ebx,0x2
   141c1:	ba 0e 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_39                           ; fixup: num: 2303, src obj: 1, src ofs: 0x141c2, dst obj: 3, dst ofs: 0x180e
   141c6:	b8 28 14 00 00       	mov    eax,0x1428
   141cb:	e8 c0 64 05 00       	call   play_wav
   141d0:	e8 9b 45 01 00       	call   BLOODY_DUNCE_CAP_ON_STOOL
   141d5:	bb 01 00 00 00       	mov    ebx,0x1
   141da:	ba 15 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_40                           ; fixup: num: 2302, src obj: 1, src ofs: 0x141db, dst obj: 3, dst ofs: 0x1815
   141df:	b8 30 14 00 00       	mov    eax,0x1430
   141e4:	e8 a7 64 05 00       	call   play_wav
   141e9:	31 c0                	xor    eax,eax
   141eb:	5d                   	pop    ebp
   141ec:	5f                   	pop    edi
   141ed:	5e                   	pop    esi
   141ee:	5a                   	pop    edx
   141ef:	59                   	pop    ecx
   141f0:	5b                   	pop    ebx
   141f1:	c3                   	ret    
talk_to_MISS_WHALEY_branch_10:
   141f2:	ba 1c 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_41                           ; fixup: num: 2301, src obj: 1, src ofs: 0x141f3, dst obj: 3, dst ofs: 0x181c
   141f7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2300, src obj: 1, src ofs: 0x141f8, dst obj: 3, dst ofs: 0x294bc
   141fc:	e8 2f 22 06 00       	call   strcmp_
   14201:	85 c0                	test   eax,eax
   14203:	74 17                	je     talk_to_MISS_WHALEY_branch_11
   14205:	ba 23 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_42                           ; fixup: num: 2299, src obj: 1, src ofs: 0x14206, dst obj: 3, dst ofs: 0x1823
   1420a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2298, src obj: 1, src ofs: 0x1420b, dst obj: 3, dst ofs: 0x294bc
   1420f:	e8 1c 22 06 00       	call   strcmp_
   14214:	85 c0                	test   eax,eax
   14216:	0f 85 99 00 00 00    	jne    talk_to_MISS_WHALEY_branch_12
talk_to_MISS_WHALEY_branch_11:
   1421c:	b8 2b 18 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_43                           ; fixup: num: 2297, src obj: 1, src ofs: 0x1421d, dst obj: 3, dst ofs: 0x182b
   14221:	e8 6a 85 05 00       	call   check_script_flag
   14226:	84 c0                	test   al,al
   14228:	0f 84 87 00 00 00    	je     talk_to_MISS_WHALEY_branch_12
   1422e:	ba 01 00 00 00       	mov    edx,0x1
   14233:	31 c0                	xor    eax,eax
   14235:	bb 02 00 00 00       	mov    ebx,0x2
   1423a:	e8 11 41 01 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   1423f:	ba 3d 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_44                           ; fixup: num: 2316, src obj: 1, src ofs: 0x14240, dst obj: 3, dst ofs: 0x183d
   14244:	b8 a4 14 00 00       	mov    eax,0x14a4
   14249:	e8 42 64 05 00       	call   play_wav
   1424e:	ba 44 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_45                           ; fixup: num: 2315, src obj: 1, src ofs: 0x1424f, dst obj: 3, dst ofs: 0x1844
   14253:	b8 a9 14 00 00       	mov    eax,0x14a9
   14258:	31 db                	xor    ebx,ebx
   1425a:	e8 31 64 05 00       	call   play_wav
   1425f:	bb 01 00 00 00       	mov    ebx,0x1
   14264:	ba 47 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_46                           ; fixup: num: 2314, src obj: 1, src ofs: 0x14265, dst obj: 3, dst ofs: 0x1847
   14269:	b8 ae 14 00 00       	mov    eax,0x14ae
   1426e:	e8 1d 64 05 00       	call   play_wav
   14273:	bb 02 00 00 00       	mov    ebx,0x2
   14278:	ba 4e 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_47                           ; fixup: num: 2313, src obj: 1, src ofs: 0x14279, dst obj: 3, dst ofs: 0x184e
   1427d:	b8 b7 14 00 00       	mov    eax,0x14b7
   14282:	e8 09 64 05 00       	call   play_wav
   14287:	bb 02 00 00 00       	mov    ebx,0x2
   1428c:	ba 55 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_48                           ; fixup: num: 2312, src obj: 1, src ofs: 0x1428d, dst obj: 3, dst ofs: 0x1855
   14291:	b8 bc 14 00 00       	mov    eax,0x14bc
   14296:	e8 f5 63 05 00       	call   play_wav
   1429b:	ba 58 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_49                           ; fixup: num: 2311, src obj: 1, src ofs: 0x1429c, dst obj: 3, dst ofs: 0x1858
   142a0:	b8 c0 14 00 00       	mov    eax,0x14c0
   142a5:	31 db                	xor    ebx,ebx
   142a7:	e8 e4 63 05 00       	call   play_wav
   142ac:	31 c0                	xor    eax,eax
   142ae:	5d                   	pop    ebp
   142af:	5f                   	pop    edi
   142b0:	5e                   	pop    esi
   142b1:	5a                   	pop    edx
   142b2:	59                   	pop    ecx
   142b3:	5b                   	pop    ebx
   142b4:	c3                   	ret    
talk_to_MISS_WHALEY_branch_12:
   142b5:	ba 5f 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_50                           ; fixup: num: 2310, src obj: 1, src ofs: 0x142b6, dst obj: 3, dst ofs: 0x185f
   142ba:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2309, src obj: 1, src ofs: 0x142bb, dst obj: 3, dst ofs: 0x294bc
   142bf:	e8 6c 21 06 00       	call   strcmp_
   142c4:	85 c0                	test   eax,eax
   142c6:	74 39                	je     talk_to_MISS_WHALEY_branch_13
   142c8:	ba 64 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_51                           ; fixup: num: 2308, src obj: 1, src ofs: 0x142c9, dst obj: 3, dst ofs: 0x1864
   142cd:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2307, src obj: 1, src ofs: 0x142ce, dst obj: 3, dst ofs: 0x294bc
   142d2:	e8 59 21 06 00       	call   strcmp_
   142d7:	85 c0                	test   eax,eax
   142d9:	74 26                	je     talk_to_MISS_WHALEY_branch_13
   142db:	ba 73 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_52                           ; fixup: num: 2326, src obj: 1, src ofs: 0x142dc, dst obj: 3, dst ofs: 0x1873
   142e0:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2325, src obj: 1, src ofs: 0x142e1, dst obj: 3, dst ofs: 0x294bc
   142e5:	e8 46 21 06 00       	call   strcmp_
   142ea:	85 c0                	test   eax,eax
   142ec:	74 13                	je     talk_to_MISS_WHALEY_branch_13
   142ee:	ba 7d 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_53                           ; fixup: num: 2324, src obj: 1, src ofs: 0x142ef, dst obj: 3, dst ofs: 0x187d
   142f3:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2323, src obj: 1, src ofs: 0x142f4, dst obj: 3, dst ofs: 0x294bc
   142f8:	e8 33 21 06 00       	call   strcmp_
   142fd:	85 c0                	test   eax,eax
   142ff:	75 59                	jne    talk_to_MISS_WHALEY_branch_14
talk_to_MISS_WHALEY_branch_13:
   14301:	ba 01 00 00 00       	mov    edx,0x1
   14306:	31 c0                	xor    eax,eax
   14308:	e8 23 40 01 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1430d:	31 db                	xor    ebx,ebx
   1430f:	ba 91 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_54                           ; fixup: num: 2322, src obj: 1, src ofs: 0x14310, dst obj: 3, dst ofs: 0x1891
   14314:	b8 c7 14 00 00       	mov    eax,0x14c7
   14319:	e8 72 63 05 00       	call   play_wav
   1431e:	ba 98 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_55                           ; fixup: num: 2321, src obj: 1, src ofs: 0x1431f, dst obj: 3, dst ofs: 0x1898
   14323:	b8 cb 14 00 00       	mov    eax,0x14cb
   14328:	31 db                	xor    ebx,ebx
   1432a:	e8 61 63 05 00       	call   play_wav
   1432f:	ba 9b 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_56                           ; fixup: num: 2320, src obj: 1, src ofs: 0x14330, dst obj: 3, dst ofs: 0x189b
   14334:	b8 cf 14 00 00       	mov    eax,0x14cf
   14339:	31 db                	xor    ebx,ebx
   1433b:	e8 50 63 05 00       	call   play_wav
   14340:	ba a2 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_57                           ; fixup: num: 2319, src obj: 1, src ofs: 0x14341, dst obj: 3, dst ofs: 0x18a2
   14345:	b8 d7 14 00 00       	mov    eax,0x14d7
   1434a:	31 db                	xor    ebx,ebx
   1434c:	e8 3f 63 05 00       	call   play_wav
   14351:	31 c0                	xor    eax,eax
   14353:	5d                   	pop    ebp
   14354:	5f                   	pop    edi
   14355:	5e                   	pop    esi
   14356:	5a                   	pop    edx
   14357:	59                   	pop    ecx
   14358:	5b                   	pop    ebx
   14359:	c3                   	ret    
talk_to_MISS_WHALEY_branch_14:
   1435a:	bb 02 00 00 00       	mov    ebx,0x2
   1435f:	ba a9 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_58                           ; fixup: num: 2318, src obj: 1, src ofs: 0x14360, dst obj: 3, dst ofs: 0x18a9
   14364:	b8 0b 14 00 00       	mov    eax,0x140b
talk_to_MISS_WHALEY_branch_15:
   14369:	e8 22 63 05 00       	call   play_wav
   1436e:	31 c0                	xor    eax,eax
   14370:	5d                   	pop    ebp
   14371:	5f                   	pop    edi
   14372:	5e                   	pop    esi
   14373:	5a                   	pop    edx
   14374:	59                   	pop    ecx
   14375:	5b                   	pop    ebx
   14376:	c3                   	ret    
talk_to_MISS_WHALEY_branch_16:
   14377:	a1 9c 2a 02 00       	mov    eax,ds:@obj3:MISS_WHALEY                                     ; fixup: num: 2317, src obj: 1, src ofs: 0x14378, dst obj: 3, dst ofs: 0x22a9c
   1437c:	85 c0                	test   eax,eax
   1437e:	0f 84 61 01 00 00    	je     talk_to_MISS_WHALEY_branch_22
   14384:	bb 01 00 00 00       	mov    ebx,0x1
   14389:	b8 b6 12 00 00       	mov    eax,0x12b6
   1438e:	89 15 9c 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY,edx                           ; fixup: num: 2337, src obj: 1, src ofs: 0x14390, dst obj: 3, dst ofs: 0x22a9c
   14394:	ba b0 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_59                           ; fixup: num: 2336, src obj: 1, src ofs: 0x14395, dst obj: 3, dst ofs: 0x18b0
   14399:	e8 f2 62 05 00       	call   play_wav
   1439e:	bb 03 00 00 00       	mov    ebx,0x3
   143a3:	ba b7 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_60                           ; fixup: num: 2335, src obj: 1, src ofs: 0x143a4, dst obj: 3, dst ofs: 0x18b7
   143a8:	b8 c0 12 00 00       	mov    eax,0x12c0
   143ad:	e8 de 62 05 00       	call   play_wav
   143b2:	bb 04 00 00 00       	mov    ebx,0x4
   143b7:	ba be 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_61                           ; fixup: num: 2334, src obj: 1, src ofs: 0x143b8, dst obj: 3, dst ofs: 0x18be
   143bc:	b8 c5 12 00 00       	mov    eax,0x12c5
   143c1:	e8 ca 62 05 00       	call   play_wav
   143c6:	ba c1 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_62                           ; fixup: num: 2333, src obj: 1, src ofs: 0x143c7, dst obj: 3, dst ofs: 0x18c1
   143cb:	b8 c9 12 00 00       	mov    eax,0x12c9
   143d0:	31 db                	xor    ebx,ebx
   143d2:	e8 b9 62 05 00       	call   play_wav
   143d7:	ba c8 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_63                           ; fixup: num: 2332, src obj: 1, src ofs: 0x143d8, dst obj: 3, dst ofs: 0x18c8
   143dc:	b8 cf 12 00 00       	mov    eax,0x12cf
   143e1:	31 db                	xor    ebx,ebx
   143e3:	e8 a8 62 05 00       	call   play_wav
   143e8:	ba cb 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_64                           ; fixup: num: 2331, src obj: 1, src ofs: 0x143e9, dst obj: 3, dst ofs: 0x18cb
   143ed:	b8 d3 12 00 00       	mov    eax,0x12d3
   143f2:	31 db                	xor    ebx,ebx
   143f4:	e8 97 62 05 00       	call   play_wav
   143f9:	bb 01 00 00 00       	mov    ebx,0x1
   143fe:	ba d2 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_65                           ; fixup: num: 2330, src obj: 1, src ofs: 0x143ff, dst obj: 3, dst ofs: 0x18d2
   14403:	b8 de 12 00 00       	mov    eax,0x12de
   14408:	e8 83 62 05 00       	call   play_wav
   1440d:	ba d9 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_66                           ; fixup: num: 2329, src obj: 1, src ofs: 0x1440e, dst obj: 3, dst ofs: 0x18d9
   14412:	b8 e3 12 00 00       	mov    eax,0x12e3
   14417:	31 db                	xor    ebx,ebx
   14419:	e8 72 62 05 00       	call   play_wav
   1441e:	ba dc 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_67                           ; fixup: num: 2328, src obj: 1, src ofs: 0x1441f, dst obj: 3, dst ofs: 0x18dc
   14423:	b8 e7 12 00 00       	mov    eax,0x12e7
   14428:	31 db                	xor    ebx,ebx
   1442a:	e8 61 62 05 00       	call   play_wav
   1442f:	bb 01 00 00 00       	mov    ebx,0x1
   14434:	ba e3 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_68                           ; fixup: num: 2327, src obj: 1, src ofs: 0x14435, dst obj: 3, dst ofs: 0x18e3
   14439:	b8 0b 13 00 00       	mov    eax,0x130b
   1443e:	e8 4d 62 05 00       	call   play_wav
   14443:	b8 4e 02 00 00       	mov    eax,0x24e
   14448:	e8 53 5d 01 00       	call   GetDlgFileString
   1444d:	e8 be 6a 05 00       	call   get_response
   14452:	83 f8 01             	cmp    eax,0x1
   14455:	75 44                	jne    talk_to_MISS_WHALEY_branch_19
   14457:	b8 4f 02 00 00       	mov    eax,0x24f
   1445c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2208, src obj: 1, src ofs: 0x1445d, dst obj: 3, dst ofs: 0x295c0
   14461:	bb 01 00 00 00       	mov    ebx,0x1
   14466:	e8 35 5d 01 00       	call   GetDlgFileString
   1446b:	89 c6                	mov    esi,eax
   1446d:	ba ea 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_69                           ; fixup: num: 2207, src obj: 1, src ofs: 0x1446e, dst obj: 3, dst ofs: 0x18ea
   14472:	57                   	push   edi
talk_to_MISS_WHALEY_branch_17:
   14473:	8a 06                	mov    al,BYTE PTR [esi]
   14475:	88 07                	mov    BYTE PTR [edi],al
   14477:	3c 00                	cmp    al,0x0
   14479:	74 10                	je     talk_to_MISS_WHALEY_branch_18
   1447b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1447e:	83 c6 02             	add    esi,0x2
   14481:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   14484:	83 c7 02             	add    edi,0x2
   14487:	3c 00                	cmp    al,0x0
   14489:	75 e8                	jne    talk_to_MISS_WHALEY_branch_17
talk_to_MISS_WHALEY_branch_18:
   1448b:	5f                   	pop    edi
   1448c:	b8 16 13 00 00       	mov    eax,0x1316
   14491:	e8 fa 61 05 00       	call   play_wav
   14496:	e9 97 00 00 00       	jmp    talk_to_MISS_WHALEY_branch_25
talk_to_MISS_WHALEY_branch_19:
   1449b:	83 f8 02             	cmp    eax,0x2
   1449e:	0f 85 8e 00 00 00    	jne    talk_to_MISS_WHALEY_branch_25
   144a4:	be f1 18 00 00       	mov    esi,@obj3:ms_whale_cpp_variable_70                           ; fixup: num: 2340, src obj: 1, src ofs: 0x144a5, dst obj: 3, dst ofs: 0x18f1
   144a9:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2339, src obj: 1, src ofs: 0x144aa, dst obj: 3, dst ofs: 0x295c0
   144ae:	bb 01 00 00 00       	mov    ebx,0x1
   144b3:	ba f2 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_71                           ; fixup: num: 2338, src obj: 1, src ofs: 0x144b4, dst obj: 3, dst ofs: 0x18f2
   144b8:	57                   	push   edi
talk_to_MISS_WHALEY_branch_20:
   144b9:	8a 06                	mov    al,BYTE PTR [esi]
   144bb:	88 07                	mov    BYTE PTR [edi],al
   144bd:	3c 00                	cmp    al,0x0
   144bf:	74 10                	je     talk_to_MISS_WHALEY_branch_21
   144c1:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   144c4:	83 c6 02             	add    esi,0x2
   144c7:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   144ca:	83 c7 02             	add    edi,0x2
   144cd:	3c 00                	cmp    al,0x0
   144cf:	75 e8                	jne    talk_to_MISS_WHALEY_branch_20
talk_to_MISS_WHALEY_branch_21:
   144d1:	5f                   	pop    edi
   144d2:	b8 1a 13 00 00       	mov    eax,0x131a
   144d7:	e8 b4 61 05 00       	call   play_wav
   144dc:	31 c0                	xor    eax,eax
   144de:	5d                   	pop    ebp
   144df:	5f                   	pop    edi
   144e0:	5e                   	pop    esi
   144e1:	5a                   	pop    edx
   144e2:	59                   	pop    ecx
   144e3:	5b                   	pop    ebx
   144e4:	c3                   	ret    
talk_to_MISS_WHALEY_branch_22:
   144e5:	ba f9 18 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_72                           ; fixup: num: 2216, src obj: 1, src ofs: 0x144e6, dst obj: 3, dst ofs: 0x18f9
   144ea:	b8 85 13 00 00       	mov    eax,0x1385
   144ef:	31 db                	xor    ebx,ebx
   144f1:	e8 9a 61 05 00       	call   play_wav
   144f6:	ba 00 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_73                           ; fixup: num: 2215, src obj: 1, src ofs: 0x144f7, dst obj: 3, dst ofs: 0x1900
   144fb:	b8 8e 13 00 00       	mov    eax,0x138e
   14500:	31 db                	xor    ebx,ebx
   14502:	e8 89 61 05 00       	call   play_wav
   14507:	b8 50 02 00 00       	mov    eax,0x250
   1450c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2214, src obj: 1, src ofs: 0x1450d, dst obj: 3, dst ofs: 0x295c0
   14511:	e8 8a 5c 01 00       	call   GetDlgFileString
   14516:	89 c6                	mov    esi,eax
   14518:	57                   	push   edi
talk_to_MISS_WHALEY_branch_23:
   14519:	8a 06                	mov    al,BYTE PTR [esi]
   1451b:	88 07                	mov    BYTE PTR [edi],al
   1451d:	3c 00                	cmp    al,0x0
   1451f:	74 10                	je     talk_to_MISS_WHALEY_branch_24
   14521:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   14524:	83 c6 02             	add    esi,0x2
   14527:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1452a:	83 c7 02             	add    edi,0x2
   1452d:	3c 00                	cmp    al,0x0
   1452f:	75 e8                	jne    talk_to_MISS_WHALEY_branch_23
talk_to_MISS_WHALEY_branch_24:
   14531:	5f                   	pop    edi
talk_to_MISS_WHALEY_branch_25:
   14532:	b8 07 19 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_74                           ; fixup: num: 2213, src obj: 1, src ofs: 0x14533, dst obj: 3, dst ofs: 0x1907
   14537:	e8 54 82 05 00       	call   check_script_flag
   1453c:	84 c0                	test   al,al
   1453e:	0f 84 96 00 00 00    	je     talk_to_MISS_WHALEY_branch_28
   14544:	83 3d a4 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MISS_WHALEY_variable_1,0x0                ; fixup: num: 2212, src obj: 1, src ofs: 0x14546, dst obj: 3, dst ofs: 0x22aa4
   1454b:	0f 85 89 00 00 00    	jne    talk_to_MISS_WHALEY_branch_28
   14551:	be 01 00 00 00       	mov    esi,0x1
   14556:	ba 1c 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_75                           ; fixup: num: 2211, src obj: 1, src ofs: 0x14557, dst obj: 3, dst ofs: 0x191c
   1455b:	b8 94 13 00 00       	mov    eax,0x1394
   14560:	89 f3                	mov    ebx,esi
   14562:	89 35 a4 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_1,esi                ; fixup: num: 2210, src obj: 1, src ofs: 0x14564, dst obj: 3, dst ofs: 0x22aa4
   14568:	e8 23 61 05 00       	call   play_wav
   1456d:	ba 23 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_76                           ; fixup: num: 2209, src obj: 1, src ofs: 0x1456e, dst obj: 3, dst ofs: 0x1923
   14572:	b8 9d 13 00 00       	mov    eax,0x139d
   14577:	89 f3                	mov    ebx,esi
   14579:	e8 12 61 05 00       	call   play_wav
   1457e:	b8 51 02 00 00       	mov    eax,0x251
   14583:	e8 18 5c 01 00       	call   GetDlgFileString
   14588:	e8 83 69 05 00       	call   get_response
   1458d:	39 f0                	cmp    eax,esi
   1458f:	75 33                	jne    talk_to_MISS_WHALEY_branch_26
   14591:	ba 2a 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_77                           ; fixup: num: 2224, src obj: 1, src ofs: 0x14592, dst obj: 3, dst ofs: 0x192a
   14596:	b8 a8 13 00 00       	mov    eax,0x13a8
   1459b:	31 db                	xor    ebx,ebx
   1459d:	e8 ee 60 05 00       	call   play_wav
   145a2:	ba 31 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_78                           ; fixup: num: 2223, src obj: 1, src ofs: 0x145a3, dst obj: 3, dst ofs: 0x1931
   145a7:	b8 ac 13 00 00       	mov    eax,0x13ac
   145ac:	31 db                	xor    ebx,ebx
   145ae:	e8 dd 60 05 00       	call   play_wav
   145b3:	bb 02 00 00 00       	mov    ebx,0x2
   145b8:	ba 34 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_79                           ; fixup: num: 2222, src obj: 1, src ofs: 0x145b9, dst obj: 3, dst ofs: 0x1934
   145bd:	b8 b0 13 00 00       	mov    eax,0x13b0
   145c2:	eb 11                	jmp    talk_to_MISS_WHALEY_branch_27
talk_to_MISS_WHALEY_branch_26:
   145c4:	83 f8 02             	cmp    eax,0x2
   145c7:	75 11                	jne    talk_to_MISS_WHALEY_branch_28
   145c9:	ba 3b 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_80                           ; fixup: num: 2221, src obj: 1, src ofs: 0x145ca, dst obj: 3, dst ofs: 0x193b
   145ce:	b8 b5 13 00 00       	mov    eax,0x13b5
   145d3:	89 f3                	mov    ebx,esi
talk_to_MISS_WHALEY_branch_27:
   145d5:	e8 b6 60 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_28:
   145da:	e8 e1 45 01 00       	call   get_day
   145df:	83 f8 05             	cmp    eax,0x5
   145e2:	0f 85 7a 00 00 00    	jne    talk_to_MISS_WHALEY_branch_30
   145e8:	83 3d a8 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MISS_WHALEY_variable_2,0x0                ; fixup: num: 2220, src obj: 1, src ofs: 0x145ea, dst obj: 3, dst ofs: 0x22aa8
   145ef:	75 71                	jne    talk_to_MISS_WHALEY_branch_30
   145f1:	bd 01 00 00 00       	mov    ebp,0x1
   145f6:	ba 42 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_81                           ; fixup: num: 2219, src obj: 1, src ofs: 0x145f7, dst obj: 3, dst ofs: 0x1942
   145fb:	b8 bf 13 00 00       	mov    eax,0x13bf
   14600:	89 eb                	mov    ebx,ebp
   14602:	89 2d a8 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_2,ebp                ; fixup: num: 2218, src obj: 1, src ofs: 0x14604, dst obj: 3, dst ofs: 0x22aa8
   14608:	e8 83 60 05 00       	call   play_wav
   1460d:	b8 52 02 00 00       	mov    eax,0x252
   14612:	e8 89 5b 01 00       	call   GetDlgFileString
   14617:	e8 f4 68 05 00       	call   get_response
   1461c:	39 e8                	cmp    eax,ebp
   1461e:	75 18                	jne    talk_to_MISS_WHALEY_branch_29
   14620:	ba 49 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_82                           ; fixup: num: 2217, src obj: 1, src ofs: 0x14621, dst obj: 3, dst ofs: 0x1949
   14625:	b8 ca 13 00 00       	mov    eax,0x13ca
   1462a:	89 eb                	mov    ebx,ebp
   1462c:	e8 5f 60 05 00       	call   play_wav
   14631:	e8 1a 45 01 00       	call   BUCKY_SITS_IN_CORNER_WITH_DUNCE_CAP
   14636:	eb 2a                	jmp    talk_to_MISS_WHALEY_branch_30
talk_to_MISS_WHALEY_branch_29:
   14638:	83 f8 02             	cmp    eax,0x2
   1463b:	75 25                	jne    talk_to_MISS_WHALEY_branch_30
   1463d:	ba 50 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_83                           ; fixup: num: 2234, src obj: 1, src ofs: 0x1463e, dst obj: 3, dst ofs: 0x1950
   14642:	89 c3                	mov    ebx,eax
   14644:	b8 d7 13 00 00       	mov    eax,0x13d7
   14649:	e8 42 60 05 00       	call   play_wav
   1464e:	bb 02 00 00 00       	mov    ebx,0x2
   14653:	ba 57 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_84                           ; fixup: num: 2233, src obj: 1, src ofs: 0x14654, dst obj: 3, dst ofs: 0x1957
   14658:	b8 df 13 00 00       	mov    eax,0x13df
   1465d:	e8 2e 60 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_30:
   14662:	b8 5e 19 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_85                           ; fixup: num: 2232, src obj: 1, src ofs: 0x14663, dst obj: 3, dst ofs: 0x195e
   14667:	e8 24 81 05 00       	call   check_script_flag
   1466c:	84 c0                	test   al,al
   1466e:	74 78                	je     talk_to_MISS_WHALEY_branch_31
   14670:	83 3d ac 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MISS_WHALEY_variable_3,0x0                ; fixup: num: 2231, src obj: 1, src ofs: 0x14672, dst obj: 3, dst ofs: 0x22aac
   14677:	75 6f                	jne    talk_to_MISS_WHALEY_branch_31
   14679:	ba 01 00 00 00       	mov    edx,0x1
   1467e:	b8 e5 13 00 00       	mov    eax,0x13e5
   14683:	31 db                	xor    ebx,ebx
   14685:	89 15 ac 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_3,edx                ; fixup: num: 2230, src obj: 1, src ofs: 0x14687, dst obj: 3, dst ofs: 0x22aac
   1468b:	ba 6d 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_86                           ; fixup: num: 2229, src obj: 1, src ofs: 0x1468c, dst obj: 3, dst ofs: 0x196d
   14690:	e8 fb 5f 05 00       	call   play_wav
   14695:	ba 01 00 00 00       	mov    edx,0x1
   1469a:	31 c0                	xor    eax,eax
   1469c:	bb 01 00 00 00       	mov    ebx,0x1
   146a1:	e8 aa 3b 01 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   146a6:	ba 74 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_87                           ; fixup: num: 2228, src obj: 1, src ofs: 0x146a7, dst obj: 3, dst ofs: 0x1974
   146ab:	b8 ee 13 00 00       	mov    eax,0x13ee
   146b0:	e8 db 5f 05 00       	call   play_wav
   146b5:	ba 7b 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_88                           ; fixup: num: 2227, src obj: 1, src ofs: 0x146b6, dst obj: 3, dst ofs: 0x197b
   146ba:	b8 f3 13 00 00       	mov    eax,0x13f3
   146bf:	31 db                	xor    ebx,ebx
   146c1:	e8 ca 5f 05 00       	call   play_wav
   146c6:	ba 7e 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_89                           ; fixup: num: 2226, src obj: 1, src ofs: 0x146c7, dst obj: 3, dst ofs: 0x197e
   146cb:	b8 f8 13 00 00       	mov    eax,0x13f8
   146d0:	31 db                	xor    ebx,ebx
   146d2:	e8 b9 5f 05 00       	call   play_wav
   146d7:	ba 85 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_90                           ; fixup: num: 2225, src obj: 1, src ofs: 0x146d8, dst obj: 3, dst ofs: 0x1985
   146dc:	b8 ff 13 00 00       	mov    eax,0x13ff
   146e1:	31 db                	xor    ebx,ebx
   146e3:	e8 a8 5f 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_31:
   146e8:	b8 01 00 00 00       	mov    eax,0x1
   146ed:	31 d2                	xor    edx,edx
   146ef:	e8 7c 3c 01 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   146f4:	85 c0                	test   eax,eax
   146f6:	74 28                	je     talk_to_MISS_WHALEY_branch_32
   146f8:	83 3d b0 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MISS_WHALEY_variable_4,0x0                ; fixup: num: 2245, src obj: 1, src ofs: 0x146fa, dst obj: 3, dst ofs: 0x22ab0
   146ff:	75 1f                	jne    talk_to_MISS_WHALEY_branch_32
   14701:	b9 01 00 00 00       	mov    ecx,0x1
   14706:	bb 02 00 00 00       	mov    ebx,0x2
   1470b:	ba 8c 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_91                           ; fixup: num: 2244, src obj: 1, src ofs: 0x1470c, dst obj: 3, dst ofs: 0x198c
   14710:	b8 dd 14 00 00       	mov    eax,0x14dd
   14715:	89 0d b0 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_4,ecx                ; fixup: num: 2243, src obj: 1, src ofs: 0x14717, dst obj: 3, dst ofs: 0x22ab0
   1471b:	e8 70 5f 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_32:
   14720:	b8 93 19 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_92                           ; fixup: num: 2242, src obj: 1, src ofs: 0x14721, dst obj: 3, dst ofs: 0x1993
   14725:	e8 66 80 05 00       	call   check_script_flag
   1472a:	84 c0                	test   al,al
   1472c:	74 77                	je     talk_to_MISS_WHALEY_branch_33
   1472e:	83 3d b4 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MISS_WHALEY_variable_5,0x0                ; fixup: num: 2241, src obj: 1, src ofs: 0x14730, dst obj: 3, dst ofs: 0x22ab4
   14735:	75 6e                	jne    talk_to_MISS_WHALEY_branch_33
   14737:	bf 01 00 00 00       	mov    edi,0x1
   1473c:	ba a5 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_93                           ; fixup: num: 2240, src obj: 1, src ofs: 0x1473d, dst obj: 3, dst ofs: 0x19a5
   14741:	b8 f7 14 00 00       	mov    eax,0x14f7
   14746:	89 fb                	mov    ebx,edi
   14748:	89 3d b4 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_5,edi                ; fixup: num: 2239, src obj: 1, src ofs: 0x1474a, dst obj: 3, dst ofs: 0x22ab4
   1474e:	e8 3d 5f 05 00       	call   play_wav
   14753:	ba ac 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_94                           ; fixup: num: 2238, src obj: 1, src ofs: 0x14754, dst obj: 3, dst ofs: 0x19ac
   14758:	b8 fe 14 00 00       	mov    eax,0x14fe
   1475d:	89 fb                	mov    ebx,edi
   1475f:	e8 2c 5f 05 00       	call   play_wav
   14764:	bb 02 00 00 00       	mov    ebx,0x2
   14769:	ba b3 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_95                           ; fixup: num: 2237, src obj: 1, src ofs: 0x1476a, dst obj: 3, dst ofs: 0x19b3
   1476e:	b8 06 15 00 00       	mov    eax,0x1506
   14773:	e8 18 5f 05 00       	call   play_wav
   14778:	bb 02 00 00 00       	mov    ebx,0x2
   1477d:	ba ba 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_96                           ; fixup: num: 2236, src obj: 1, src ofs: 0x1477e, dst obj: 3, dst ofs: 0x19ba
   14782:	b8 0b 15 00 00       	mov    eax,0x150b
   14787:	e8 04 5f 05 00       	call   play_wav
   1478c:	e8 df 3f 01 00       	call   BLOODY_DUNCE_CAP_ON_STOOL
   14791:	bb 02 00 00 00       	mov    ebx,0x2
   14796:	ba c1 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_97                           ; fixup: num: 2235, src obj: 1, src ofs: 0x14797, dst obj: 3, dst ofs: 0x19c1
   1479b:	b8 12 15 00 00       	mov    eax,0x1512
   147a0:	e8 eb 5e 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_33:
   147a5:	be c8 19 00 00       	mov    esi,@obj3:ms_whale_cpp_variable_98                           ; fixup: num: 2252, src obj: 1, src ofs: 0x147a6, dst obj: 3, dst ofs: 0x19c8
   147aa:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 2251, src obj: 1, src ofs: 0x147ab, dst obj: 3, dst ofs: 0x294c0
   147af:	57                   	push   edi
talk_to_MISS_WHALEY_branch_34:
   147b0:	8a 06                	mov    al,BYTE PTR [esi]
   147b2:	88 07                	mov    BYTE PTR [edi],al
   147b4:	3c 00                	cmp    al,0x0
   147b6:	74 10                	je     talk_to_MISS_WHALEY_branch_35
   147b8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   147bb:	83 c6 02             	add    esi,0x2
   147be:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   147c1:	83 c7 02             	add    edi,0x2
   147c4:	3c 00                	cmp    al,0x0
   147c6:	75 e8                	jne    talk_to_MISS_WHALEY_branch_34
talk_to_MISS_WHALEY_branch_35:
   147c8:	5f                   	pop    edi
   147c9:	89 fd                	mov    ebp,edi
   147cb:	31 c9                	xor    ecx,ecx
talk_to_MISS_WHALEY_branch_36:
   147cd:	b8 54 02 00 00       	mov    eax,0x254
   147d2:	e8 c9 59 01 00       	call   GetDlgFileString
   147d7:	89 c2                	mov    edx,eax
   147d9:	89 e8                	mov    eax,ebp
   147db:	e8 7a cc 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   147e0:	85 c0                	test   eax,eax
   147e2:	0f 84 c9 01 00 00    	je     talk_to_MISS_WHALEY_branch_46
   147e8:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 2250, src obj: 1, src ofs: 0x147e9, dst obj: 3, dst ofs: 0x295c0
   147ed:	e8 4e 72 05 00       	call   show_keywords
   147f2:	b8 55 02 00 00       	mov    eax,0x255
   147f7:	e8 a4 59 01 00       	call   GetDlgFileString
   147fc:	89 c2                	mov    edx,eax
   147fe:	89 e8                	mov    eax,ebp
   14800:	e8 55 cc 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   14805:	85 c0                	test   eax,eax
   14807:	75 74                	jne    talk_to_MISS_WHALEY_branch_39
   14809:	ba c9 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_99                           ; fixup: num: 2249, src obj: 1, src ofs: 0x1480a, dst obj: 3, dst ofs: 0x19c9
   1480e:	b8 2a 13 00 00       	mov    eax,0x132a
   14813:	89 cb                	mov    ebx,ecx
   14815:	e8 76 5e 05 00       	call   play_wav
   1481a:	ba cc 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_100                          ; fixup: num: 2248, src obj: 1, src ofs: 0x1481b, dst obj: 3, dst ofs: 0x19cc
   1481f:	b8 2e 13 00 00       	mov    eax,0x132e
   14824:	89 cb                	mov    ebx,ecx
   14826:	e8 65 5e 05 00       	call   play_wav
   1482b:	ba d3 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_101                          ; fixup: num: 2247, src obj: 1, src ofs: 0x1482c, dst obj: 3, dst ofs: 0x19d3
   14830:	b8 33 13 00 00       	mov    eax,0x1333
   14835:	89 cb                	mov    ebx,ecx
   14837:	e8 54 5e 05 00       	call   play_wav
   1483c:	ba d6 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_102                          ; fixup: num: 2246, src obj: 1, src ofs: 0x1483d, dst obj: 3, dst ofs: 0x19d6
   14841:	b8 37 13 00 00       	mov    eax,0x1337
   14846:	89 cb                	mov    ebx,ecx
   14848:	e8 43 5e 05 00       	call   play_wav
   1484d:	b8 56 02 00 00       	mov    eax,0x256
   14852:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2256, src obj: 1, src ofs: 0x14853, dst obj: 3, dst ofs: 0x295c0
   14857:	e8 44 59 01 00       	call   GetDlgFileString
   1485c:	89 c6                	mov    esi,eax
   1485e:	57                   	push   edi
talk_to_MISS_WHALEY_branch_37:
   1485f:	8a 06                	mov    al,BYTE PTR [esi]
   14861:	88 07                	mov    BYTE PTR [edi],al
   14863:	3c 00                	cmp    al,0x0
   14865:	74 10                	je     talk_to_MISS_WHALEY_branch_38
   14867:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1486a:	83 c6 02             	add    esi,0x2
   1486d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   14870:	83 c7 02             	add    edi,0x2
   14873:	3c 00                	cmp    al,0x0
   14875:	75 e8                	jne    talk_to_MISS_WHALEY_branch_37
talk_to_MISS_WHALEY_branch_38:
   14877:	5f                   	pop    edi
   14878:	e9 50 ff ff ff       	jmp    talk_to_MISS_WHALEY_branch_36
talk_to_MISS_WHALEY_branch_39:
   1487d:	b8 57 02 00 00       	mov    eax,0x257
   14882:	e8 19 59 01 00       	call   GetDlgFileString
   14887:	89 c2                	mov    edx,eax
   14889:	89 e8                	mov    eax,ebp
   1488b:	e8 ca cb 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   14890:	85 c0                	test   eax,eax
   14892:	75 5e                	jne    talk_to_MISS_WHALEY_branch_42
   14894:	ba 01 00 00 00       	mov    edx,0x1
   14899:	89 c8                	mov    eax,ecx
   1489b:	e8 20 3c 01 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   148a0:	89 cb                	mov    ebx,ecx
   148a2:	ba dd 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_103                          ; fixup: num: 2255, src obj: 1, src ofs: 0x148a3, dst obj: 3, dst ofs: 0x19dd
   148a7:	b8 40 13 00 00       	mov    eax,0x1340
   148ac:	e8 df 5d 05 00       	call   play_wav
   148b1:	ba e0 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_104                          ; fixup: num: 2254, src obj: 1, src ofs: 0x148b2, dst obj: 3, dst ofs: 0x19e0
   148b6:	b8 44 13 00 00       	mov    eax,0x1344
   148bb:	89 cb                	mov    ebx,ecx
   148bd:	e8 ce 5d 05 00       	call   play_wav
   148c2:	b8 58 02 00 00       	mov    eax,0x258
   148c7:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2253, src obj: 1, src ofs: 0x148c8, dst obj: 3, dst ofs: 0x295c0
   148cc:	e8 cf 58 01 00       	call   GetDlgFileString
   148d1:	89 c6                	mov    esi,eax
   148d3:	57                   	push   edi
talk_to_MISS_WHALEY_branch_40:
   148d4:	8a 06                	mov    al,BYTE PTR [esi]
   148d6:	88 07                	mov    BYTE PTR [edi],al
   148d8:	3c 00                	cmp    al,0x0
   148da:	74 10                	je     talk_to_MISS_WHALEY_branch_41
   148dc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   148df:	83 c6 02             	add    esi,0x2
   148e2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   148e5:	83 c7 02             	add    edi,0x2
   148e8:	3c 00                	cmp    al,0x0
   148ea:	75 e8                	jne    talk_to_MISS_WHALEY_branch_40
talk_to_MISS_WHALEY_branch_41:
   148ec:	5f                   	pop    edi
   148ed:	e9 db fe ff ff       	jmp    talk_to_MISS_WHALEY_branch_36
talk_to_MISS_WHALEY_branch_42:
   148f2:	b8 59 02 00 00       	mov    eax,0x259
   148f7:	e8 a4 58 01 00       	call   GetDlgFileString
   148fc:	89 c2                	mov    edx,eax
   148fe:	89 e8                	mov    eax,ebp
   14900:	e8 55 cb 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   14905:	85 c0                	test   eax,eax
   14907:	75 77                	jne    talk_to_MISS_WHALEY_branch_45
   14909:	ba e7 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_105                          ; fixup: num: 2262, src obj: 1, src ofs: 0x1490a, dst obj: 3, dst ofs: 0x19e7
   1490e:	b8 4e 13 00 00       	mov    eax,0x134e
   14913:	89 cb                	mov    ebx,ecx
   14915:	e8 76 5d 05 00       	call   play_wav
   1491a:	e8 91 3e 01 00       	call   BASEBALL_BAT_LEANING_IN_CORNER
   1491f:	b8 ee 19 00 00       	mov    eax,@obj3:ms_whale_cpp_variable_106                          ; fixup: num: 2261, src obj: 1, src ofs: 0x14920, dst obj: 3, dst ofs: 0x19ee
   14924:	ba fd 19 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_107                          ; fixup: num: 2260, src obj: 1, src ofs: 0x14925, dst obj: 3, dst ofs: 0x19fd
   14929:	e8 52 82 05 00       	call   ExecuteCommand
   1492e:	89 cb                	mov    ebx,ecx
   14930:	b8 5f 13 00 00       	mov    eax,0x135f
   14935:	e8 56 5d 05 00       	call   play_wav
   1493a:	e8 41 3e 01 00       	call   DUCK_AND_COVER_MIDGAME
   1493f:	ba 04 1a 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_108                          ; fixup: num: 2259, src obj: 1, src ofs: 0x14940, dst obj: 3, dst ofs: 0x1a04
   14944:	b8 6c 13 00 00       	mov    eax,0x136c
   14949:	89 cb                	mov    ebx,ecx
   1494b:	e8 40 5d 05 00       	call   play_wav
   14950:	b8 5b 02 00 00       	mov    eax,0x25b
   14955:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2258, src obj: 1, src ofs: 0x14956, dst obj: 3, dst ofs: 0x295c0
   1495a:	e8 41 58 01 00       	call   GetDlgFileString
   1495f:	89 c6                	mov    esi,eax
   14961:	57                   	push   edi
talk_to_MISS_WHALEY_branch_43:
   14962:	8a 06                	mov    al,BYTE PTR [esi]
   14964:	88 07                	mov    BYTE PTR [edi],al
   14966:	3c 00                	cmp    al,0x0
   14968:	74 10                	je     talk_to_MISS_WHALEY_branch_44
   1496a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1496d:	83 c6 02             	add    esi,0x2
   14970:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   14973:	83 c7 02             	add    edi,0x2
   14976:	3c 00                	cmp    al,0x0
   14978:	75 e8                	jne    talk_to_MISS_WHALEY_branch_43
talk_to_MISS_WHALEY_branch_44:
   1497a:	5f                   	pop    edi
   1497b:	e9 4d fe ff ff       	jmp    talk_to_MISS_WHALEY_branch_36
talk_to_MISS_WHALEY_branch_45:
   14980:	b8 5c 02 00 00       	mov    eax,0x25c
   14985:	e8 16 58 01 00       	call   GetDlgFileString
   1498a:	89 c2                	mov    edx,eax
   1498c:	89 e8                	mov    eax,ebp
   1498e:	e8 c7 ca 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   14993:	85 c0                	test   eax,eax
   14995:	0f 84 32 fe ff ff    	je     talk_to_MISS_WHALEY_branch_36
   1499b:	ba 0b 1a 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_109                          ; fixup: num: 2257, src obj: 1, src ofs: 0x1499c, dst obj: 3, dst ofs: 0x1a0b
   149a0:	b8 05 14 00 00       	mov    eax,0x1405
   149a5:	89 cb                	mov    ebx,ecx
   149a7:	e8 e4 5c 05 00       	call   play_wav
   149ac:	e9 1c fe ff ff       	jmp    talk_to_MISS_WHALEY_branch_36
talk_to_MISS_WHALEY_branch_46:
   149b1:	ba 12 1a 00 00       	mov    edx,@obj3:ms_whale_cpp_variable_110                          ; fixup: num: 2138, src obj: 1, src ofs: 0x149b2, dst obj: 3, dst ofs: 0x1a12
   149b6:	b8 73 13 00 00       	mov    eax,0x1373
   149bb:	31 db                	xor    ebx,ebx
   149bd:	e8 ce 5c 05 00       	call   play_wav
talk_to_MISS_WHALEY_branch_47:
   149c2:	31 c0                	xor    eax,eax
   149c4:	5d                   	pop    ebp
   149c5:	5f                   	pop    edi
   149c6:	5e                   	pop    esi
   149c7:	5a                   	pop    edx
   149c8:	59                   	pop    ecx
   149c9:	5b                   	pop    ebx
   149ca:	c3                   	ret    
talk_to_MISS_WHALEY_branch_48:
   149cb:	89 15 9c 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY,edx                           ; fixup: num: 2271, src obj: 1, src ofs: 0x149cd, dst obj: 3, dst ofs: 0x22a9c
   149d1:	a1 9c 2a 02 00       	mov    eax,ds:@obj3:MISS_WHALEY                                     ; fixup: num: 2270, src obj: 1, src ofs: 0x149d2, dst obj: 3, dst ofs: 0x22a9c
   149d6:	c3                   	ret    
   149d7:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   149dd:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'MISS_WHALEY_FIRST_CONVERSATION'     -
;-------------------------------------------------
MISS_WHALEY_FIRST_CONVERSATION:
   149e0:	85 c0                	test   eax,eax
   149e2:	74 e7                	je     talk_to_MISS_WHALEY_branch_48
   149e4:	a1 9c 2a 02 00       	mov    eax,ds:@obj3:MISS_WHALEY                                     ; fixup: num: 2269, src obj: 1, src ofs: 0x149e5, dst obj: 3, dst ofs: 0x22a9c
   149e9:	c3                   	ret    
   149ea:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MISS_WHALEY_initialize'             -
;-------------------------------------------------
MISS_WHALEY_initialize:
   149f0:	53                   	push   ebx
   149f1:	52                   	push   edx
   149f2:	ba 01 00 00 00       	mov    edx,0x1
   149f7:	31 db                	xor    ebx,ebx
   149f9:	89 15 9c 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY,edx                           ; fixup: num: 2268, src obj: 1, src ofs: 0x149fb, dst obj: 3, dst ofs: 0x22a9c
   149ff:	89 1d a4 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_1,ebx                ; fixup: num: 2267, src obj: 1, src ofs: 0x14a01, dst obj: 3, dst ofs: 0x22aa4
   14a05:	89 1d a8 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_2,ebx                ; fixup: num: 2266, src obj: 1, src ofs: 0x14a07, dst obj: 3, dst ofs: 0x22aa8
   14a0b:	89 1d ac 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_3,ebx                ; fixup: num: 2265, src obj: 1, src ofs: 0x14a0d, dst obj: 3, dst ofs: 0x22aac
   14a11:	89 1d b0 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_4,ebx                ; fixup: num: 2264, src obj: 1, src ofs: 0x14a13, dst obj: 3, dst ofs: 0x22ab0
   14a17:	89 1d b4 2a 02 00    	mov    DWORD PTR ds:@obj3:MISS_WHALEY_variable_5,ebx                ; fixup: num: 2263, src obj: 1, src ofs: 0x14a19, dst obj: 3, dst ofs: 0x22ab4
   14a1d:	5a                   	pop    edx
   14a1e:	5b                   	pop    ebx
   14a1f:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 17 (D:\SOURCE\ms_whale.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 17: D:\SOURCE\ms_whale.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
ms_whale_cpp_variable_1:
    1658:	42 55 53 54 45 44 5f 53 43 52 45 57 49 4e 47 5f 4d 49 44 47 41 4d 45 00 	db     "BUSTED_SCREWING_MIDGAME",0x00
ms_whale_cpp_variable_2:
    1670:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_3:
    1677:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_4:
    167e:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_5:
    1686:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1687:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1688:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_6:
    1689:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_whale_cpp_variable_7:
    16a1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_8:
    16a9:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_9:
    16b1:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_10:
    16b8:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_11:
    16c0:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_12:
    16c7:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_13:
    16ce:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_14:
    16d5:	42 41 54 00          	db     "BAT",0x00
ms_whale_cpp_variable_15:
    16d9:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_whale_cpp_variable_16:
    16f1:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
ms_whale_cpp_variable_17:
    16fb:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_18:
    1702:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_19:
    170a:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_20:
    1712:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_21:
    1719:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
ms_whale_cpp_variable_22:
    1721:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_23:
    1728:	42 41 54 00          	db     "BAT",0x00
ms_whale_cpp_variable_24:
    172c:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_whale_cpp_variable_25:
    1744:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
ms_whale_cpp_variable_26:
    174e:	42 55 53 54 45 44 5f 53 43 52 45 57 49 4e 47 5f 4d 49 44 47 41 4d 45 00 	db     "BUSTED_SCREWING_MIDGAME",0x00
ms_whale_cpp_variable_27:
    1766:	54 41 4c 4b 49 4e 47 5f 42 52 4f 4f 4d 5f 57 48 41 4c 45 59 00 	db     "TALKING_BROOM_WHALEY",0x00
ms_whale_cpp_variable_28:
    177b:	54 41 4c 4b 49 4e 47 5f 42 52 4f 4f 4d 5f 57 48 41 4c 45 59 00 	db     "TALKING_BROOM_WHALEY",0x00
ms_whale_cpp_variable_29:
    1790:	52 45 56 45 52 53 45 5f 42 52 4f 4f 4d 00 	db     "REVERSE_BROOM",0x00
ms_whale_cpp_variable_30:
    179e:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_whale_cpp_variable_31:
    17b6:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_32:
    17bd:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
ms_whale_cpp_variable_33:
    17ca:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
ms_whale_cpp_variable_34:
    17db:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_35:
    17e2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    17e3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    17e4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_36:
    17e5:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_37:
    17ec:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    17ed:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    17ee:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_38:
    17ef:	49 46 5f 53 41 57 5f 54 48 45 5f 53 4c 41 53 48 45 53 5f 4f 4e 5f 54 48 45 5f 42 4f 44 59 00 	db     "IF_SAW_THE_SLASHES_ON_THE_BODY",0x00
ms_whale_cpp_variable_39:
    180e:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_40:
    1815:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_41:
    181c:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
ms_whale_cpp_variable_42:
    1823:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
ms_whale_cpp_variable_43:
    182b:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
ms_whale_cpp_variable_44:
    183d:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_45:
    1844:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1845:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1846:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_46:
    1847:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_47:
    184e:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_48:
    1855:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1856:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1857:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_49:
    1858:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_50:
    185f:	4e 4f 54 45 00       	db     "NOTE",0x00
ms_whale_cpp_variable_51:
    1864:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
ms_whale_cpp_variable_52:
    1873:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
ms_whale_cpp_variable_53:
    187d:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
ms_whale_cpp_variable_54:
    1891:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_55:
    1898:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1899:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    189a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_56:
    189b:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_57:
    18a2:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_58:
    18a9:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_59:
    18b0:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_60:
    18b7:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_61:
    18be:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    18bf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    18c0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_62:
    18c1:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_63:
    18c8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    18c9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    18ca:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_64:
    18cb:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_65:
    18d2:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_66:
    18d9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    18da:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    18db:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_67:
    18dc:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_68:
    18e3:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_69:
    18ea:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_70:
    18f1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_71:
    18f2:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_72:
    18f9:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_73:
    1900:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_74:
    1907:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
ms_whale_cpp_variable_75:
    191c:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_76:
    1923:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_77:
    192a:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_78:
    1931:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1932:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1933:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_79:
    1934:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_80:
    193b:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_81:
    1942:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_82:
    1949:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_83:
    1950:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_84:
    1957:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_85:
    195e:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
ms_whale_cpp_variable_86:
    196d:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_87:
    1974:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_88:
    197b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    197c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    197d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_89:
    197e:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_90:
    1985:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_91:
    198c:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_92:
    1993:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ms_whale_cpp_variable_93:
    19a5:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_94:
    19ac:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_95:
    19b3:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_96:
    19ba:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_97:
    19c1:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_98:
    19c8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_99:
    19c9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    19ca:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    19cb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_100:
    19cc:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_101:
    19d3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    19d4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    19d5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_102:
    19d6:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_103:
    19dd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    19de:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    19df:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_whale_cpp_variable_104:
    19e0:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_105:
    19e7:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_106:
    19ee:	53 4f 55 4e 44 5f 41 49 52 5f 52 41 49 44 00 	db     "SOUND_AIR_RAID",0x00
ms_whale_cpp_variable_107:
    19fd:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_108:
    1a04:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_109:
    1a0b:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
ms_whale_cpp_variable_110:
    1a12:	57 48 41 4c 45 59 00 	db     "WHALEY",0x00
    1a19:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 17 (D:\SOURCE\ms_whale.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 17: D:\SOURCE\ms_whale.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MISS_WHALEY:                                                                                        ; access size: DWORD
   22a9c:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
MISS_WHALEY_variable_1:                                                                             ; access size: DWORD
   22aa4:	00 00 00 00          	dd     0x00000000
MISS_WHALEY_variable_2:                                                                             ; access size: DWORD
   22aa8:	00 00 00 00          	dd     0x00000000
MISS_WHALEY_variable_3:                                                                             ; access size: DWORD
   22aac:	00 00 00 00          	dd     0x00000000
MISS_WHALEY_variable_4:                                                                             ; access size: DWORD
   22ab0:	00 00 00 00          	dd     0x00000000
MISS_WHALEY_variable_5:                                                                             ; access size: DWORD
   22ab4:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 17 (D:\SOURCE\ms_whale.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------