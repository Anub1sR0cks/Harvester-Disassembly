;-------------------------------------------------------------------------------
;                                                                              -
;  Module 19: D:\SOURCE\mr_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_POTTSDAM'                -
;-------------------------------------------------
talk_to_MR_POTTSDAM:
   16000:	53                   	push   ebx
   16001:	51                   	push   ecx
   16002:	52                   	push   edx
   16003:	56                   	push   esi
   16004:	57                   	push   edi
   16005:	55                   	push   ebp
   16006:	b8 dc 1f 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_1                            ; fixup: num: 2694, src obj: 1, src ofs: 0x16007, dst obj: 3, dst ofs: 0x1fdc
   1600b:	e8 60 68 05 00       	call   check_inventory
   16010:	31 c9                	xor    ecx,ecx
   16012:	31 ed                	xor    ebp,ebp
   16014:	84 c0                	test   al,al
   16016:	0f 84 e3 00 00 00    	je     talk_to_MR_POTTSDAM_branch_5
   1601c:	ba 01 00 00 00       	mov    edx,0x1
   16021:	b8 ea 1f 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_2                            ; fixup: num: 2693, src obj: 1, src ofs: 0x16022, dst obj: 3, dst ofs: 0x1fea
   16026:	bb 02 00 00 00       	mov    ebx,0x2
   1602b:	e8 b0 67 05 00       	call   set_script_flag
   16030:	ba fd 1f 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_3                            ; fixup: num: 2692, src obj: 1, src ofs: 0x16031, dst obj: 3, dst ofs: 0x1ffd
   16035:	b8 1d 2f 00 00       	mov    eax,0x2f1d
   1603a:	e8 51 46 05 00       	call   play_wav
   1603f:	bb 04 00 00 00       	mov    ebx,0x4
   16044:	ba 09 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_4                            ; fixup: num: 2691, src obj: 1, src ofs: 0x16045, dst obj: 3, dst ofs: 0x2009
   16049:	b8 22 2f 00 00       	mov    eax,0x2f22
   1604e:	e8 3d 46 05 00       	call   play_wav
   16053:	bb 02 00 00 00       	mov    ebx,0x2
   16058:	ba 0c 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_5                            ; fixup: num: 2690, src obj: 1, src ofs: 0x16059, dst obj: 3, dst ofs: 0x200c
   1605d:	b8 26 2f 00 00       	mov    eax,0x2f26
   16062:	e8 29 46 05 00       	call   play_wav
   16067:	ba 18 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_6                            ; fixup: num: 2689, src obj: 1, src ofs: 0x16068, dst obj: 3, dst ofs: 0x2018
   1606c:	b8 2d 2f 00 00       	mov    eax,0x2f2d
   16071:	31 db                	xor    ebx,ebx
   16073:	e8 18 46 05 00       	call   play_wav
   16078:	bb 02 00 00 00       	mov    ebx,0x2
   1607d:	ba 1b 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_7                            ; fixup: num: 2688, src obj: 1, src ofs: 0x1607e, dst obj: 3, dst ofs: 0x201b
   16082:	b8 31 2f 00 00       	mov    eax,0x2f31
   16087:	e8 04 46 05 00       	call   play_wav
   1608c:	b8 d2 01 00 00       	mov    eax,0x1d2
   16091:	e8 0a 41 01 00       	call   GetDlgFileString
   16096:	e8 75 4e 05 00       	call   get_response
   1609b:	83 f8 01             	cmp    eax,0x1
   1609e:	75 11                	jne    talk_to_MR_POTTSDAM_branch_1
   160a0:	bb 04 00 00 00       	mov    ebx,0x4
   160a5:	ba 27 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_8                            ; fixup: num: 2687, src obj: 1, src ofs: 0x160a6, dst obj: 3, dst ofs: 0x2027
   160aa:	b8 3d 2f 00 00       	mov    eax,0x2f3d
   160af:	eb 11                	jmp    talk_to_MR_POTTSDAM_branch_2
talk_to_MR_POTTSDAM_branch_1:
   160b1:	83 f8 02             	cmp    eax,0x2
   160b4:	75 11                	jne    talk_to_MR_POTTSDAM_branch_3
   160b6:	ba 33 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_9                            ; fixup: num: 2703, src obj: 1, src ofs: 0x160b7, dst obj: 3, dst ofs: 0x2033
   160bb:	b8 42 2f 00 00       	mov    eax,0x2f42
   160c0:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_2:
   160c2:	e8 c9 45 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_3:
   160c7:	ba 3f 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_10                           ; fixup: num: 2702, src obj: 1, src ofs: 0x160c8, dst obj: 3, dst ofs: 0x203f
   160cc:	b8 46 2f 00 00       	mov    eax,0x2f46
   160d1:	31 db                	xor    ebx,ebx
   160d3:	e8 b8 45 05 00       	call   play_wav
   160d8:	bb 04 00 00 00       	mov    ebx,0x4
   160dd:	ba 4b 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_11                           ; fixup: num: 2701, src obj: 1, src ofs: 0x160de, dst obj: 3, dst ofs: 0x204b
   160e2:	b8 4d 2f 00 00       	mov    eax,0x2f4d
   160e7:	e8 a4 45 05 00       	call   play_wav
   160ec:	b8 57 20 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_12                           ; fixup: num: 2700, src obj: 1, src ofs: 0x160ed, dst obj: 3, dst ofs: 0x2057
   160f1:	e8 8a 6a 05 00       	call   ExecuteCommand
   160f6:	31 c0                	xor    eax,eax
talk_to_MR_POTTSDAM_branch_4:
   160f8:	5d                   	pop    ebp
   160f9:	5f                   	pop    edi
   160fa:	5e                   	pop    esi
   160fb:	5a                   	pop    edx
   160fc:	59                   	pop    ecx
   160fd:	5b                   	pop    ebx
   160fe:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_5:
   160ff:	b8 67 20 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_13                           ; fixup: num: 2699, src obj: 1, src ofs: 0x16100, dst obj: 3, dst ofs: 0x2067
   16104:	e8 87 66 05 00       	call   check_script_flag
   16109:	84 c0                	test   al,al
   1610b:	0f 84 85 00 00 00    	je     talk_to_MR_POTTSDAM_branch_6
   16111:	b8 8b 20 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_14                           ; fixup: num: 2698, src obj: 1, src ofs: 0x16112, dst obj: 3, dst ofs: 0x208b
   16116:	31 d2                	xor    edx,edx
   16118:	bb 03 00 00 00       	mov    ebx,0x3
   1611d:	e8 be 66 05 00       	call   set_script_flag
   16122:	ba af 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_15                           ; fixup: num: 2697, src obj: 1, src ofs: 0x16123, dst obj: 3, dst ofs: 0x20af
   16127:	b8 fc 2a 00 00       	mov    eax,0x2afc
   1612c:	e8 5f 45 05 00       	call   play_wav
   16131:	ba b8 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_16                           ; fixup: num: 2696, src obj: 1, src ofs: 0x16132, dst obj: 3, dst ofs: 0x20b8
   16136:	b8 00 2b 00 00       	mov    eax,0x2b00
   1613b:	31 db                	xor    ebx,ebx
   1613d:	e8 4e 45 05 00       	call   play_wav
   16142:	bb 03 00 00 00       	mov    ebx,0x3
   16147:	ba bb 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_17                           ; fixup: num: 2695, src obj: 1, src ofs: 0x16148, dst obj: 3, dst ofs: 0x20bb
   1614c:	b8 04 2b 00 00       	mov    eax,0x2b04
   16151:	e8 3a 45 05 00       	call   play_wav
   16156:	bb 02 00 00 00       	mov    ebx,0x2
   1615b:	ba c4 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_18                           ; fixup: num: 2713, src obj: 1, src ofs: 0x1615c, dst obj: 3, dst ofs: 0x20c4
   16160:	b8 09 2b 00 00       	mov    eax,0x2b09
   16165:	e8 26 45 05 00       	call   play_wav
   1616a:	bb 03 00 00 00       	mov    ebx,0x3
   1616f:	ba c7 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_19                           ; fixup: num: 2712, src obj: 1, src ofs: 0x16170, dst obj: 3, dst ofs: 0x20c7
   16174:	b8 0d 2b 00 00       	mov    eax,0x2b0d
   16179:	e8 12 45 05 00       	call   play_wav
   1617e:	e8 ad 27 01 00       	call   MIDGAME_ONE
   16183:	b8 d0 20 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_20                           ; fixup: num: 2711, src obj: 1, src ofs: 0x16184, dst obj: 3, dst ofs: 0x20d0
   16188:	e8 f3 69 05 00       	call   ExecuteCommand
   1618d:	31 c0                	xor    eax,eax
   1618f:	5d                   	pop    ebp
   16190:	5f                   	pop    edi
   16191:	5e                   	pop    esi
   16192:	5a                   	pop    edx
   16193:	59                   	pop    ecx
   16194:	5b                   	pop    ebx
   16195:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_6:
   16196:	b8 db 20 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_21                           ; fixup: num: 2710, src obj: 1, src ofs: 0x16197, dst obj: 3, dst ofs: 0x20db
   1619b:	e8 f0 65 05 00       	call   check_script_flag
   161a0:	84 c0                	test   al,al
   161a2:	74 6c                	je     talk_to_MR_POTTSDAM_branch_9
   161a4:	83 3d 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_3,0x0                ; fixup: num: 2709, src obj: 1, src ofs: 0x161a6, dst obj: 3, dst ofs: 0x22b00
   161ab:	75 46                	jne    talk_to_MR_POTTSDAM_branch_7
   161ad:	bd 01 00 00 00       	mov    ebp,0x1
   161b2:	bb 02 00 00 00       	mov    ebx,0x2
   161b7:	ba ec 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_22                           ; fixup: num: 2708, src obj: 1, src ofs: 0x161b8, dst obj: 3, dst ofs: 0x20ec
   161bc:	89 2d 00 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_3,ebp                ; fixup: num: 2707, src obj: 1, src ofs: 0x161be, dst obj: 3, dst ofs: 0x22b00
   161c2:	e8 c9 29 01 00       	call   POTTSDAM_DIGGING_IN_CEMETARY
   161c7:	b8 63 2c 00 00       	mov    eax,0x2c63
   161cc:	e8 bf 44 05 00       	call   play_wav
   161d1:	ba f5 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_23                           ; fixup: num: 2706, src obj: 1, src ofs: 0x161d2, dst obj: 3, dst ofs: 0x20f5
   161d6:	b8 69 2c 00 00       	mov    eax,0x2c69
   161db:	31 db                	xor    ebx,ebx
   161dd:	e8 ae 44 05 00       	call   play_wav
   161e2:	bb 04 00 00 00       	mov    ebx,0x4
   161e7:	ba f8 20 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_24                           ; fixup: num: 2705, src obj: 1, src ofs: 0x161e8, dst obj: 3, dst ofs: 0x20f8
   161ec:	b8 6d 2c 00 00       	mov    eax,0x2c6d
   161f1:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_8
talk_to_MR_POTTSDAM_branch_7:
   161f3:	bb 02 00 00 00       	mov    ebx,0x2
   161f8:	ba 01 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_25                           ; fixup: num: 2704, src obj: 1, src ofs: 0x161f9, dst obj: 3, dst ofs: 0x2101
   161fd:	b8 d9 2c 00 00       	mov    eax,0x2cd9
talk_to_MR_POTTSDAM_branch_8:
   16202:	e8 89 44 05 00       	call   play_wav
   16207:	31 c0                	xor    eax,eax
   16209:	5d                   	pop    ebp
   1620a:	5f                   	pop    edi
   1620b:	5e                   	pop    esi
   1620c:	5a                   	pop    edx
   1620d:	59                   	pop    ecx
   1620e:	5b                   	pop    ebx
   1620f:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_9:
   16210:	b8 0a 21 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_26                           ; fixup: num: 2722, src obj: 1, src ofs: 0x16211, dst obj: 3, dst ofs: 0x210a
   16215:	e8 76 65 05 00       	call   check_script_flag
   1621a:	84 c0                	test   al,al
   1621c:	0f 84 cf 00 00 00    	je     talk_to_MR_POTTSDAM_branch_10
   16222:	bb 02 00 00 00       	mov    ebx,0x2
   16227:	ba 21 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_27                           ; fixup: num: 2721, src obj: 1, src ofs: 0x16228, dst obj: 3, dst ofs: 0x2121
   1622c:	b8 33 2c 00 00       	mov    eax,0x2c33
   16231:	e8 5a 44 05 00       	call   play_wav
   16236:	ba 2a 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_28                           ; fixup: num: 2720, src obj: 1, src ofs: 0x16237, dst obj: 3, dst ofs: 0x212a
   1623b:	b8 37 2c 00 00       	mov    eax,0x2c37
   16240:	31 db                	xor    ebx,ebx
   16242:	e8 49 44 05 00       	call   play_wav
   16247:	bb 04 00 00 00       	mov    ebx,0x4
   1624c:	ba 2d 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_29                           ; fixup: num: 2719, src obj: 1, src ofs: 0x1624d, dst obj: 3, dst ofs: 0x212d
   16251:	b8 3b 2c 00 00       	mov    eax,0x2c3b
   16256:	e8 35 44 05 00       	call   play_wav
   1625b:	ba 36 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_30                           ; fixup: num: 2718, src obj: 1, src ofs: 0x1625c, dst obj: 3, dst ofs: 0x2136
   16260:	b8 42 2c 00 00       	mov    eax,0x2c42
   16265:	31 db                	xor    ebx,ebx
   16267:	e8 24 44 05 00       	call   play_wav
   1626c:	bb 02 00 00 00       	mov    ebx,0x2
   16271:	ba 39 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_31                           ; fixup: num: 2717, src obj: 1, src ofs: 0x16272, dst obj: 3, dst ofs: 0x2139
   16276:	b8 46 2c 00 00       	mov    eax,0x2c46
   1627b:	e8 10 44 05 00       	call   play_wav
   16280:	bb 04 00 00 00       	mov    ebx,0x4
   16285:	ba 42 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_32                           ; fixup: num: 2716, src obj: 1, src ofs: 0x16286, dst obj: 3, dst ofs: 0x2142
   1628a:	b8 47 2c 00 00       	mov    eax,0x2c47
   1628f:	e8 fc 43 05 00       	call   play_wav
   16294:	bb 04 00 00 00       	mov    ebx,0x4
   16299:	ba 4b 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_33                           ; fixup: num: 2715, src obj: 1, src ofs: 0x1629a, dst obj: 3, dst ofs: 0x214b
   1629e:	b8 48 2c 00 00       	mov    eax,0x2c48
   162a3:	e8 e8 43 05 00       	call   play_wav
   162a8:	ba 54 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_34                           ; fixup: num: 2714, src obj: 1, src ofs: 0x162a9, dst obj: 3, dst ofs: 0x2154
   162ad:	b8 49 2c 00 00       	mov    eax,0x2c49
   162b2:	31 db                	xor    ebx,ebx
   162b4:	e8 d7 43 05 00       	call   play_wav
   162b9:	ba 5d 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_35                           ; fixup: num: 2730, src obj: 1, src ofs: 0x162ba, dst obj: 3, dst ofs: 0x215d
   162be:	b8 54 2c 00 00       	mov    eax,0x2c54
   162c3:	31 db                	xor    ebx,ebx
   162c5:	e8 c6 43 05 00       	call   play_wav
   162ca:	bb 02 00 00 00       	mov    ebx,0x2
   162cf:	ba 60 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_36                           ; fixup: num: 2729, src obj: 1, src ofs: 0x162d0, dst obj: 3, dst ofs: 0x2160
   162d4:	b8 58 2c 00 00       	mov    eax,0x2c58
   162d9:	e8 b2 43 05 00       	call   play_wav
   162de:	b8 69 21 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_37                           ; fixup: num: 2728, src obj: 1, src ofs: 0x162df, dst obj: 3, dst ofs: 0x2169
   162e3:	e8 a8 67 05 00       	call   MonsterfyNpc
   162e8:	31 c0                	xor    eax,eax
   162ea:	5d                   	pop    ebp
   162eb:	5f                   	pop    edi
   162ec:	5e                   	pop    esi
   162ed:	5a                   	pop    edx
   162ee:	59                   	pop    ecx
   162ef:	5b                   	pop    ebx
   162f0:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_10:
   162f1:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 2727, src obj: 1, src ofs: 0x162f3, dst obj: 3, dst ofs: 0x294bc
   162f7:	85 d2                	test   edx,edx
   162f9:	0f 84 e2 02 00 00    	je     talk_to_MR_POTTSDAM_branch_27
   162ff:	89 d0                	mov    eax,edx
   16301:	ba 78 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_38                           ; fixup: num: 2726, src obj: 1, src ofs: 0x16302, dst obj: 3, dst ofs: 0x2178
   16306:	e8 25 01 06 00       	call   strcmp_
   1630b:	85 c0                	test   eax,eax
   1630d:	75 64                	jne    talk_to_MR_POTTSDAM_branch_12
   1630f:	bb 01 00 00 00       	mov    ebx,0x1
   16314:	ba 7d 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_39                           ; fixup: num: 2725, src obj: 1, src ofs: 0x16315, dst obj: 3, dst ofs: 0x217d
   16319:	b8 7f 2c 00 00       	mov    eax,0x2c7f
   1631e:	e8 6d 43 05 00       	call   play_wav
   16323:	b8 d4 01 00 00       	mov    eax,0x1d4
   16328:	e8 73 3e 01 00       	call   GetDlgFileString
   1632d:	e8 de 4b 05 00       	call   get_response
   16332:	83 f8 01             	cmp    eax,0x1
   16335:	75 22                	jne    talk_to_MR_POTTSDAM_branch_11
   16337:	ba 86 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_40                           ; fixup: num: 2724, src obj: 1, src ofs: 0x16338, dst obj: 3, dst ofs: 0x2186
   1633c:	89 c3                	mov    ebx,eax
   1633e:	b8 8a 2c 00 00       	mov    eax,0x2c8a
   16343:	e8 48 43 05 00       	call   play_wav
   16348:	b8 8f 21 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_41                           ; fixup: num: 2723, src obj: 1, src ofs: 0x16349, dst obj: 3, dst ofs: 0x218f
   1634d:	31 d2                	xor    edx,edx
   1634f:	e8 ec 68 05 00       	call   reset_item_to_initial_settings
   16354:	e9 7f 02 00 00       	jmp    talk_to_MR_POTTSDAM_branch_26
talk_to_MR_POTTSDAM_branch_11:
   16359:	83 f8 02             	cmp    eax,0x2
   1635c:	0f 85 76 02 00 00    	jne    talk_to_MR_POTTSDAM_branch_26
   16362:	ba 94 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_42                           ; fixup: num: 2740, src obj: 1, src ofs: 0x16363, dst obj: 3, dst ofs: 0x2194
   16367:	89 c3                	mov    ebx,eax
   16369:	b8 8f 2c 00 00       	mov    eax,0x2c8f
   1636e:	e9 60 02 00 00       	jmp    talk_to_MR_POTTSDAM_branch_25
talk_to_MR_POTTSDAM_branch_12:
   16373:	ba 9d 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_43                           ; fixup: num: 2739, src obj: 1, src ofs: 0x16374, dst obj: 3, dst ofs: 0x219d
   16378:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2738, src obj: 1, src ofs: 0x16379, dst obj: 3, dst ofs: 0x294bc
   1637d:	e8 ae 00 06 00       	call   strcmp_
   16382:	85 c0                	test   eax,eax
   16384:	74 13                	je     talk_to_MR_POTTSDAM_branch_13
   16386:	ba aa 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_44                           ; fixup: num: 2737, src obj: 1, src ofs: 0x16387, dst obj: 3, dst ofs: 0x21aa
   1638b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2736, src obj: 1, src ofs: 0x1638c, dst obj: 3, dst ofs: 0x294bc
   16390:	e8 9b 00 06 00       	call   strcmp_
   16395:	85 c0                	test   eax,eax
   16397:	75 79                	jne    talk_to_MR_POTTSDAM_branch_14
talk_to_MR_POTTSDAM_branch_13:
   16399:	ba 01 00 00 00       	mov    edx,0x1
   1639e:	31 c0                	xor    eax,eax
   163a0:	e8 bb 1f 01 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   163a5:	31 db                	xor    ebx,ebx
   163a7:	ba bb 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_45                           ; fixup: num: 2735, src obj: 1, src ofs: 0x163a8, dst obj: 3, dst ofs: 0x21bb
   163ac:	b8 97 2c 00 00       	mov    eax,0x2c97
   163b1:	e8 da 42 05 00       	call   play_wav
   163b6:	bb 02 00 00 00       	mov    ebx,0x2
   163bb:	ba c4 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_46                           ; fixup: num: 2734, src obj: 1, src ofs: 0x163bc, dst obj: 3, dst ofs: 0x21c4
   163c0:	b8 9b 2c 00 00       	mov    eax,0x2c9b
   163c5:	e8 c6 42 05 00       	call   play_wav
   163ca:	ba c7 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_47                           ; fixup: num: 2733, src obj: 1, src ofs: 0x163cb, dst obj: 3, dst ofs: 0x21c7
   163cf:	b8 a0 2c 00 00       	mov    eax,0x2ca0
   163d4:	31 db                	xor    ebx,ebx
   163d6:	e8 b5 42 05 00       	call   play_wav
   163db:	b8 01 00 00 00       	mov    eax,0x1
   163e0:	31 d2                	xor    edx,edx
   163e2:	e8 e9 1e 01 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   163e7:	85 c0                	test   eax,eax
   163e9:	0f 84 e9 01 00 00    	je     talk_to_MR_POTTSDAM_branch_26
   163ef:	bb 02 00 00 00       	mov    ebx,0x2
   163f4:	ba d0 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_48                           ; fixup: num: 2732, src obj: 1, src ofs: 0x163f5, dst obj: 3, dst ofs: 0x21d0
   163f9:	b8 a4 2c 00 00       	mov    eax,0x2ca4
   163fe:	e8 8d 42 05 00       	call   play_wav
   16403:	ba d3 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_49                           ; fixup: num: 2731, src obj: 1, src ofs: 0x16404, dst obj: 3, dst ofs: 0x21d3
   16408:	b8 ab 2c 00 00       	mov    eax,0x2cab
   1640d:	e9 bf 01 00 00       	jmp    talk_to_MR_POTTSDAM_branch_24
talk_to_MR_POTTSDAM_branch_14:
   16412:	ba dc 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_50                           ; fixup: num: 2749, src obj: 1, src ofs: 0x16413, dst obj: 3, dst ofs: 0x21dc
   16417:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2748, src obj: 1, src ofs: 0x16418, dst obj: 3, dst ofs: 0x294bc
   1641c:	e8 0f 00 06 00       	call   strcmp_
   16421:	85 c0                	test   eax,eax
   16423:	0f 85 a4 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_19
   16429:	ba 01 00 00 00       	mov    edx,0x1
   1642e:	bb 01 00 00 00       	mov    ebx,0x1
   16433:	e8 38 1f 01 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   16438:	ba f4 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_51                           ; fixup: num: 2747, src obj: 1, src ofs: 0x16439, dst obj: 3, dst ofs: 0x21f4
   1643d:	b8 b3 2c 00 00       	mov    eax,0x2cb3
   16442:	e8 49 42 05 00       	call   play_wav
   16447:	bb 01 00 00 00       	mov    ebx,0x1
   1644c:	ba fd 21 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_52                           ; fixup: num: 2746, src obj: 1, src ofs: 0x1644d, dst obj: 3, dst ofs: 0x21fd
   16451:	b8 b8 2c 00 00       	mov    eax,0x2cb8
   16456:	e8 35 42 05 00       	call   play_wav
   1645b:	ba 00 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_53                           ; fixup: num: 2745, src obj: 1, src ofs: 0x1645c, dst obj: 3, dst ofs: 0x2200
   16460:	b8 bd 2c 00 00       	mov    eax,0x2cbd
   16465:	31 db                	xor    ebx,ebx
   16467:	e8 24 42 05 00       	call   play_wav
   1646c:	b8 d5 01 00 00       	mov    eax,0x1d5
   16471:	e8 2a 3d 01 00       	call   GetDlgFileString
   16476:	e8 95 4a 05 00       	call   get_response
   1647b:	83 f8 01             	cmp    eax,0x1
   1647e:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_15
   16480:	ba 09 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_54                           ; fixup: num: 2744, src obj: 1, src ofs: 0x16481, dst obj: 3, dst ofs: 0x2209
   16485:	b8 ca 2c 00 00       	mov    eax,0x2cca
   1648a:	eb 20                	jmp    talk_to_MR_POTTSDAM_branch_17
talk_to_MR_POTTSDAM_branch_15:
   1648c:	83 f8 02             	cmp    eax,0x2
   1648f:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_16
   16491:	ba 12 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_55                           ; fixup: num: 2743, src obj: 1, src ofs: 0x16492, dst obj: 3, dst ofs: 0x2212
   16496:	b8 cf 2c 00 00       	mov    eax,0x2ccf
   1649b:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_17
talk_to_MR_POTTSDAM_branch_16:
   1649d:	83 f8 03             	cmp    eax,0x3
   164a0:	75 11                	jne    talk_to_MR_POTTSDAM_branch_18
   164a2:	ba 1b 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_56                           ; fixup: num: 2742, src obj: 1, src ofs: 0x164a3, dst obj: 3, dst ofs: 0x221b
   164a7:	b8 d4 2c 00 00       	mov    eax,0x2cd4
talk_to_MR_POTTSDAM_branch_17:
   164ac:	31 db                	xor    ebx,ebx
   164ae:	e8 dd 41 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_18:
   164b3:	ba 24 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_57                           ; fixup: num: 2741, src obj: 1, src ofs: 0x164b4, dst obj: 3, dst ofs: 0x2224
   164b8:	b8 d9 2c 00 00       	mov    eax,0x2cd9
   164bd:	31 db                	xor    ebx,ebx
   164bf:	e8 cc 41 05 00       	call   play_wav
   164c4:	31 c0                	xor    eax,eax
   164c6:	5d                   	pop    ebp
   164c7:	5f                   	pop    edi
   164c8:	5e                   	pop    esi
   164c9:	5a                   	pop    edx
   164ca:	59                   	pop    ecx
   164cb:	5b                   	pop    ebx
   164cc:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_19:
   164cd:	ba 2d 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_58                           ; fixup: num: 2625, src obj: 1, src ofs: 0x164ce, dst obj: 3, dst ofs: 0x222d
   164d2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2624, src obj: 1, src ofs: 0x164d3, dst obj: 3, dst ofs: 0x294bc
   164d7:	e8 54 ff 05 00       	call   strcmp_
   164dc:	85 c0                	test   eax,eax
   164de:	74 39                	je     talk_to_MR_POTTSDAM_branch_20
   164e0:	ba 32 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_59                           ; fixup: num: 2623, src obj: 1, src ofs: 0x164e1, dst obj: 3, dst ofs: 0x2232
   164e5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2622, src obj: 1, src ofs: 0x164e6, dst obj: 3, dst ofs: 0x294bc
   164ea:	e8 41 ff 05 00       	call   strcmp_
   164ef:	85 c0                	test   eax,eax
   164f1:	74 26                	je     talk_to_MR_POTTSDAM_branch_20
   164f3:	ba 41 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_60                           ; fixup: num: 2621, src obj: 1, src ofs: 0x164f4, dst obj: 3, dst ofs: 0x2241
   164f8:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2620, src obj: 1, src ofs: 0x164f9, dst obj: 3, dst ofs: 0x294bc
   164fd:	e8 2e ff 05 00       	call   strcmp_
   16502:	85 c0                	test   eax,eax
   16504:	74 13                	je     talk_to_MR_POTTSDAM_branch_20
   16506:	ba 4b 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_61                           ; fixup: num: 2756, src obj: 1, src ofs: 0x16507, dst obj: 3, dst ofs: 0x224b
   1650b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2755, src obj: 1, src ofs: 0x1650c, dst obj: 3, dst ofs: 0x294bc
   16510:	e8 1b ff 05 00       	call   strcmp_
   16515:	85 c0                	test   eax,eax
   16517:	75 3a                	jne    talk_to_MR_POTTSDAM_branch_21
talk_to_MR_POTTSDAM_branch_20:
   16519:	ba 01 00 00 00       	mov    edx,0x1
   1651e:	31 c0                	xor    eax,eax
   16520:	bb 04 00 00 00       	mov    ebx,0x4
   16525:	e8 06 1e 01 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1652a:	ba 5f 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_62                           ; fixup: num: 2754, src obj: 1, src ofs: 0x1652b, dst obj: 3, dst ofs: 0x225f
   1652f:	b8 e0 2c 00 00       	mov    eax,0x2ce0
   16534:	e8 57 41 05 00       	call   play_wav
   16539:	ba 68 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_63                           ; fixup: num: 2753, src obj: 1, src ofs: 0x1653a, dst obj: 3, dst ofs: 0x2268
   1653e:	b8 e6 2c 00 00       	mov    eax,0x2ce6
   16543:	31 db                	xor    ebx,ebx
   16545:	e8 46 41 05 00       	call   play_wav
   1654a:	31 c0                	xor    eax,eax
   1654c:	5d                   	pop    ebp
   1654d:	5f                   	pop    edi
   1654e:	5e                   	pop    esi
   1654f:	5a                   	pop    edx
   16550:	59                   	pop    ecx
   16551:	5b                   	pop    ebx
   16552:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_21:
   16553:	ba 6b 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_64                           ; fixup: num: 2752, src obj: 1, src ofs: 0x16554, dst obj: 3, dst ofs: 0x226b
   16558:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2751, src obj: 1, src ofs: 0x16559, dst obj: 3, dst ofs: 0x294bc
   1655d:	e8 ce fe 05 00       	call   strcmp_
   16562:	85 c0                	test   eax,eax
   16564:	74 13                	je     talk_to_MR_POTTSDAM_branch_22
   16566:	ba 73 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_65                           ; fixup: num: 2750, src obj: 1, src ofs: 0x16567, dst obj: 3, dst ofs: 0x2273
   1656b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2633, src obj: 1, src ofs: 0x1656c, dst obj: 3, dst ofs: 0x294bc
   16570:	e8 bb fe 05 00       	call   strcmp_
   16575:	85 c0                	test   eax,eax
   16577:	75 4e                	jne    talk_to_MR_POTTSDAM_branch_23
talk_to_MR_POTTSDAM_branch_22:
   16579:	ba 01 00 00 00       	mov    edx,0x1
   1657e:	31 c0                	xor    eax,eax
   16580:	bb 04 00 00 00       	mov    ebx,0x4
   16585:	e8 b6 1d 01 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   1658a:	ba 85 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_66                           ; fixup: num: 2632, src obj: 1, src ofs: 0x1658b, dst obj: 3, dst ofs: 0x2285
   1658f:	b8 e0 2c 00 00       	mov    eax,0x2ce0
   16594:	e8 f7 40 05 00       	call   play_wav
   16599:	ba 8e 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_67                           ; fixup: num: 2631, src obj: 1, src ofs: 0x1659a, dst obj: 3, dst ofs: 0x228e
   1659e:	b8 eb 2c 00 00       	mov    eax,0x2ceb
   165a3:	31 db                	xor    ebx,ebx
   165a5:	e8 e6 40 05 00       	call   play_wav
   165aa:	bb 02 00 00 00       	mov    ebx,0x2
   165af:	ba 91 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_68                           ; fixup: num: 2630, src obj: 1, src ofs: 0x165b0, dst obj: 3, dst ofs: 0x2291
   165b4:	b8 f0 2c 00 00       	mov    eax,0x2cf0
   165b9:	e8 d2 40 05 00       	call   play_wav
   165be:	31 c0                	xor    eax,eax
   165c0:	5d                   	pop    ebp
   165c1:	5f                   	pop    edi
   165c2:	5e                   	pop    esi
   165c3:	5a                   	pop    edx
   165c4:	59                   	pop    ecx
   165c5:	5b                   	pop    ebx
   165c6:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_23:
   165c7:	ba 9a 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_69                           ; fixup: num: 2629, src obj: 1, src ofs: 0x165c8, dst obj: 3, dst ofs: 0x229a
   165cc:	b8 79 2c 00 00       	mov    eax,0x2c79
talk_to_MR_POTTSDAM_branch_24:
   165d1:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_25:
   165d3:	e8 b8 40 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_26:
   165d8:	31 c0                	xor    eax,eax
   165da:	5d                   	pop    ebp
   165db:	5f                   	pop    edi
   165dc:	5e                   	pop    esi
   165dd:	5a                   	pop    edx
   165de:	59                   	pop    ecx
   165df:	5b                   	pop    ebx
   165e0:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_27:
   165e1:	b8 a3 22 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_70                           ; fixup: num: 2628, src obj: 1, src ofs: 0x165e2, dst obj: 3, dst ofs: 0x22a3
   165e6:	e8 a5 61 05 00       	call   check_script_flag
   165eb:	84 c0                	test   al,al
   165ed:	74 1d                	je     talk_to_MR_POTTSDAM_branch_28
   165ef:	bb 03 00 00 00       	mov    ebx,0x3
   165f4:	ba bb 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_71                           ; fixup: num: 2627, src obj: 1, src ofs: 0x165f5, dst obj: 3, dst ofs: 0x22bb
   165f9:	b8 18 2b 00 00       	mov    eax,0x2b18
   165fe:	e8 8d 40 05 00       	call   play_wav
   16603:	31 c0                	xor    eax,eax
   16605:	5d                   	pop    ebp
   16606:	5f                   	pop    edi
   16607:	5e                   	pop    esi
   16608:	5a                   	pop    edx
   16609:	59                   	pop    ecx
   1660a:	5b                   	pop    ebx
   1660b:	c3                   	ret    
talk_to_MR_POTTSDAM_branch_28:
   1660c:	a1 f4 2a 02 00       	mov    eax,ds:@obj3:MR_POTTSDAM                                     ; fixup: num: 2626, src obj: 1, src ofs: 0x1660d, dst obj: 3, dst ofs: 0x22af4
   16611:	85 c0                	test   eax,eax
   16613:	0f 84 da 01 00 00    	je     talk_to_MR_POTTSDAM_branch_41
   16619:	b8 c4 22 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_72                           ; fixup: num: 2641, src obj: 1, src ofs: 0x1661a, dst obj: 3, dst ofs: 0x22c4
   1661e:	e8 6d 61 05 00       	call   check_script_flag
   16623:	84 c0                	test   al,al
   16625:	0f 85 c8 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_41
   1662b:	31 db                	xor    ebx,ebx
   1662d:	ba d6 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_73                           ; fixup: num: 2640, src obj: 1, src ofs: 0x1662e, dst obj: 3, dst ofs: 0x22d6
   16632:	89 1d f4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM,ebx                           ; fixup: num: 2639, src obj: 1, src ofs: 0x16634, dst obj: 3, dst ofs: 0x22af4
   16638:	e8 83 25 01 00       	call   get_day
   1663d:	bb 01 00 00 00       	mov    ebx,0x1
   16642:	a3 fc 2a 02 00       	mov    ds:@obj3:MR_POTTSDAM_variable_2,eax                          ; fixup: num: 2638, src obj: 1, src ofs: 0x16643, dst obj: 3, dst ofs: 0x22afc
   16647:	b8 88 29 00 00       	mov    eax,0x2988
   1664c:	e8 3f 40 05 00       	call   play_wav
   16651:	b8 d7 01 00 00       	mov    eax,0x1d7
   16656:	e8 45 3b 01 00       	call   GetDlgFileString
   1665b:	e8 b0 48 05 00       	call   get_response
   16660:	83 f8 01             	cmp    eax,0x1
   16663:	0f 85 ff 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_35
   16669:	ba df 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_74                           ; fixup: num: 2637, src obj: 1, src ofs: 0x1666a, dst obj: 3, dst ofs: 0x22df
   1666e:	89 c3                	mov    ebx,eax
   16670:	b8 94 29 00 00       	mov    eax,0x2994
   16675:	e8 16 40 05 00       	call   play_wav
   1667a:	bb 02 00 00 00       	mov    ebx,0x2
   1667f:	ba e8 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_75                           ; fixup: num: 2636, src obj: 1, src ofs: 0x16680, dst obj: 3, dst ofs: 0x22e8
   16684:	b8 98 29 00 00       	mov    eax,0x2998
   16689:	e8 02 40 05 00       	call   play_wav
   1668e:	bb 01 00 00 00       	mov    ebx,0x1
   16693:	ba eb 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_76                           ; fixup: num: 2635, src obj: 1, src ofs: 0x16694, dst obj: 3, dst ofs: 0x22eb
   16698:	b8 9d 29 00 00       	mov    eax,0x299d
   1669d:	e8 ee 3f 05 00       	call   play_wav
   166a2:	ba 01 00 00 00       	mov    edx,0x1
   166a7:	31 c0                	xor    eax,eax
   166a9:	e8 32 1d 01 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   166ae:	b8 01 00 00 00       	mov    eax,0x1
   166b3:	31 d2                	xor    edx,edx
   166b5:	e8 e6 1c 01 00       	call   SPOKEN_WITH_MOM
   166ba:	85 c0                	test   eax,eax
   166bc:	74 28                	je     talk_to_MR_POTTSDAM_branch_29
   166be:	bb 01 00 00 00       	mov    ebx,0x1
   166c3:	ba f4 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_77                           ; fixup: num: 2634, src obj: 1, src ofs: 0x166c4, dst obj: 3, dst ofs: 0x22f4
   166c8:	b8 a3 29 00 00       	mov    eax,0x29a3
   166cd:	e8 be 3f 05 00       	call   play_wav
   166d2:	bb 01 00 00 00       	mov    ebx,0x1
   166d7:	ba fd 22 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_78                           ; fixup: num: 2646, src obj: 1, src ofs: 0x166d8, dst obj: 3, dst ofs: 0x22fd
   166dc:	b8 ab 29 00 00       	mov    eax,0x29ab
   166e1:	e8 aa 3f 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_29:
   166e6:	bb 01 00 00 00       	mov    ebx,0x1
   166eb:	ba 07 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_79                           ; fixup: num: 2645, src obj: 1, src ofs: 0x166ec, dst obj: 3, dst ofs: 0x2307
   166f0:	b8 b0 29 00 00       	mov    eax,0x29b0
   166f5:	e8 96 3f 05 00       	call   play_wav
   166fa:	b8 10 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_80                           ; fixup: num: 2644, src obj: 1, src ofs: 0x166fb, dst obj: 3, dst ofs: 0x2310
   166ff:	e8 8c 60 05 00       	call   check_script_flag
   16704:	84 c0                	test   al,al
   16706:	75 30                	jne    talk_to_MR_POTTSDAM_branch_32
   16708:	b8 d8 01 00 00       	mov    eax,0x1d8
   1670d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2643, src obj: 1, src ofs: 0x1670e, dst obj: 3, dst ofs: 0x295c0
   16712:	e8 89 3a 01 00       	call   GetDlgFileString
   16717:	89 c6                	mov    esi,eax
   16719:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_30:
   1671a:	8a 06                	mov    al,BYTE PTR [esi]
   1671c:	88 07                	mov    BYTE PTR [edi],al
   1671e:	3c 00                	cmp    al,0x0
   16720:	74 10                	je     talk_to_MR_POTTSDAM_branch_31
   16722:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   16725:	83 c6 02             	add    esi,0x2
   16728:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1672b:	83 c7 02             	add    edi,0x2
   1672e:	3c 00                	cmp    al,0x0
   16730:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_30
talk_to_MR_POTTSDAM_branch_31:
   16732:	5f                   	pop    edi
   16733:	e9 6c 08 00 00       	jmp    talk_to_MR_POTTSDAM_branch_90
talk_to_MR_POTTSDAM_branch_32:
   16738:	b8 d9 01 00 00       	mov    eax,0x1d9
   1673d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2642, src obj: 1, src ofs: 0x1673e, dst obj: 3, dst ofs: 0x295c0
   16742:	e8 59 3a 01 00       	call   GetDlgFileString
   16747:	89 c6                	mov    esi,eax
   16749:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_33:
   1674a:	8a 06                	mov    al,BYTE PTR [esi]
   1674c:	88 07                	mov    BYTE PTR [edi],al
   1674e:	3c 00                	cmp    al,0x0
   16750:	74 10                	je     talk_to_MR_POTTSDAM_branch_34
   16752:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   16755:	83 c6 02             	add    esi,0x2
   16758:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1675b:	83 c7 02             	add    edi,0x2
   1675e:	3c 00                	cmp    al,0x0
   16760:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_33
talk_to_MR_POTTSDAM_branch_34:
   16762:	5f                   	pop    edi
   16763:	e9 3c 08 00 00       	jmp    talk_to_MR_POTTSDAM_branch_90
talk_to_MR_POTTSDAM_branch_35:
   16768:	83 f8 02             	cmp    eax,0x2
   1676b:	0f 85 a5 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_51
   16771:	bb 01 00 00 00       	mov    ebx,0x1
   16776:	ba 22 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_81                           ; fixup: num: 2653, src obj: 1, src ofs: 0x16777, dst obj: 3, dst ofs: 0x2322
   1677b:	b8 ba 29 00 00       	mov    eax,0x29ba
   16780:	e8 0b 3f 05 00       	call   play_wav
   16785:	b8 2b 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_82                           ; fixup: num: 2652, src obj: 1, src ofs: 0x16786, dst obj: 3, dst ofs: 0x232b
   1678a:	e8 01 60 05 00       	call   check_script_flag
   1678f:	84 c0                	test   al,al
   16791:	75 30                	jne    talk_to_MR_POTTSDAM_branch_38
   16793:	b8 da 01 00 00       	mov    eax,0x1da
   16798:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2651, src obj: 1, src ofs: 0x16799, dst obj: 3, dst ofs: 0x295c0
   1679d:	e8 fe 39 01 00       	call   GetDlgFileString
   167a2:	89 c6                	mov    esi,eax
   167a4:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_36:
   167a5:	8a 06                	mov    al,BYTE PTR [esi]
   167a7:	88 07                	mov    BYTE PTR [edi],al
   167a9:	3c 00                	cmp    al,0x0
   167ab:	74 10                	je     talk_to_MR_POTTSDAM_branch_37
   167ad:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   167b0:	83 c6 02             	add    esi,0x2
   167b3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   167b6:	83 c7 02             	add    edi,0x2
   167b9:	3c 00                	cmp    al,0x0
   167bb:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_36
talk_to_MR_POTTSDAM_branch_37:
   167bd:	5f                   	pop    edi
   167be:	e9 e1 07 00 00       	jmp    talk_to_MR_POTTSDAM_branch_90
talk_to_MR_POTTSDAM_branch_38:
   167c3:	b8 db 01 00 00       	mov    eax,0x1db
   167c8:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2650, src obj: 1, src ofs: 0x167c9, dst obj: 3, dst ofs: 0x295c0
   167cd:	e8 ce 39 01 00       	call   GetDlgFileString
   167d2:	89 c6                	mov    esi,eax
   167d4:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_39:
   167d5:	8a 06                	mov    al,BYTE PTR [esi]
   167d7:	88 07                	mov    BYTE PTR [edi],al
   167d9:	3c 00                	cmp    al,0x0
   167db:	74 10                	je     talk_to_MR_POTTSDAM_branch_40
   167dd:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   167e0:	83 c6 02             	add    esi,0x2
   167e3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   167e6:	83 c7 02             	add    edi,0x2
   167e9:	3c 00                	cmp    al,0x0
   167eb:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_39
talk_to_MR_POTTSDAM_branch_40:
   167ed:	5f                   	pop    edi
   167ee:	e9 b1 07 00 00       	jmp    talk_to_MR_POTTSDAM_branch_90
talk_to_MR_POTTSDAM_branch_41:
   167f3:	e8 c8 23 01 00       	call   get_day
   167f8:	3b 05 fc 2a 02 00    	cmp    eax,DWORD PTR ds:@obj3:MR_POTTSDAM_variable_2                ; fixup: num: 2649, src obj: 1, src ofs: 0x167fa, dst obj: 3, dst ofs: 0x22afc
   167fe:	75 36                	jne    talk_to_MR_POTTSDAM_branch_43
   16800:	b8 3d 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_83                           ; fixup: num: 2648, src obj: 1, src ofs: 0x16801, dst obj: 3, dst ofs: 0x233d
   16805:	e8 86 5f 05 00       	call   check_script_flag
   1680a:	84 c0                	test   al,al
   1680c:	75 14                	jne    talk_to_MR_POTTSDAM_branch_42
   1680e:	bb 01 00 00 00       	mov    ebx,0x1
   16813:	ba 4f 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_84                           ; fixup: num: 2647, src obj: 1, src ofs: 0x16814, dst obj: 3, dst ofs: 0x234f
   16818:	b8 c7 2a 00 00       	mov    eax,0x2ac7
   1681d:	e9 ef 00 00 00       	jmp    talk_to_MR_POTTSDAM_branch_50
talk_to_MR_POTTSDAM_branch_42:
   16822:	bb 03 00 00 00       	mov    ebx,0x3
   16827:	ba 58 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_85                           ; fixup: num: 2662, src obj: 1, src ofs: 0x16828, dst obj: 3, dst ofs: 0x2358
   1682c:	b8 ed 2a 00 00       	mov    eax,0x2aed
   16831:	e9 db 00 00 00       	jmp    talk_to_MR_POTTSDAM_branch_50
talk_to_MR_POTTSDAM_branch_43:
   16836:	b8 61 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_86                           ; fixup: num: 2661, src obj: 1, src ofs: 0x16837, dst obj: 3, dst ofs: 0x2361
   1683b:	e8 50 5f 05 00       	call   check_script_flag
   16840:	84 c0                	test   al,al
   16842:	0f 85 ba 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_49
   16848:	bb 01 00 00 00       	mov    ebx,0x1
   1684d:	ba 73 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_87                           ; fixup: num: 2660, src obj: 1, src ofs: 0x1684e, dst obj: 3, dst ofs: 0x2373
   16852:	b8 ce 2a 00 00       	mov    eax,0x2ace
   16857:	e8 34 3e 05 00       	call   play_wav
   1685c:	b8 dc 01 00 00       	mov    eax,0x1dc
   16861:	e8 3a 39 01 00       	call   GetDlgFileString
   16866:	e8 a5 46 05 00       	call   get_response
   1686b:	83 f8 01             	cmp    eax,0x1
   1686e:	75 0e                	jne    talk_to_MR_POTTSDAM_branch_44
   16870:	ba 7c 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_88                           ; fixup: num: 2659, src obj: 1, src ofs: 0x16871, dst obj: 3, dst ofs: 0x237c
   16875:	89 c3                	mov    ebx,eax
   16877:	b8 d8 2a 00 00       	mov    eax,0x2ad8
   1687c:	eb 14                	jmp    talk_to_MR_POTTSDAM_branch_45
talk_to_MR_POTTSDAM_branch_44:
   1687e:	83 f8 02             	cmp    eax,0x2
   16881:	75 14                	jne    talk_to_MR_POTTSDAM_branch_46
   16883:	bb 04 00 00 00       	mov    ebx,0x4
   16888:	ba 85 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_89                           ; fixup: num: 2658, src obj: 1, src ofs: 0x16889, dst obj: 3, dst ofs: 0x2385
   1688d:	b8 dc 2a 00 00       	mov    eax,0x2adc
talk_to_MR_POTTSDAM_branch_45:
   16892:	e8 f9 3d 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_46:
   16897:	b8 8e 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_90                           ; fixup: num: 2657, src obj: 1, src ofs: 0x16898, dst obj: 3, dst ofs: 0x238e
   1689c:	e8 ef 5e 05 00       	call   check_script_flag
   168a1:	84 c0                	test   al,al
   168a3:	75 2a                	jne    talk_to_MR_POTTSDAM_branch_47
   168a5:	b8 94 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_91                           ; fixup: num: 2656, src obj: 1, src ofs: 0x168a6, dst obj: 3, dst ofs: 0x2394
   168aa:	e8 e1 5e 05 00       	call   check_script_flag
   168af:	84 c0                	test   al,al
   168b1:	75 1c                	jne    talk_to_MR_POTTSDAM_branch_47
   168b3:	b8 9a 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_92                           ; fixup: num: 2655, src obj: 1, src ofs: 0x168b4, dst obj: 3, dst ofs: 0x239a
   168b8:	e8 d3 5e 05 00       	call   check_script_flag
   168bd:	84 c0                	test   al,al
   168bf:	75 0e                	jne    talk_to_MR_POTTSDAM_branch_47
   168c1:	b8 a0 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_93                           ; fixup: num: 2654, src obj: 1, src ofs: 0x168c2, dst obj: 3, dst ofs: 0x23a0
   168c6:	e8 c5 5e 05 00       	call   check_script_flag
   168cb:	84 c0                	test   al,al
   168cd:	74 27                	je     talk_to_MR_POTTSDAM_branch_48
talk_to_MR_POTTSDAM_branch_47:
   168cf:	83 3d 04 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_4,0x0                ; fixup: num: 2672, src obj: 1, src ofs: 0x168d1, dst obj: 3, dst ofs: 0x22b04
   168d6:	75 1e                	jne    talk_to_MR_POTTSDAM_branch_48
   168d8:	b8 01 00 00 00       	mov    eax,0x1
   168dd:	bb 03 00 00 00       	mov    ebx,0x3
   168e2:	ba a6 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_94                           ; fixup: num: 2671, src obj: 1, src ofs: 0x168e3, dst obj: 3, dst ofs: 0x23a6
   168e7:	a3 04 2b 02 00       	mov    ds:@obj3:MR_POTTSDAM_variable_4,eax                          ; fixup: num: 2670, src obj: 1, src ofs: 0x168e8, dst obj: 3, dst ofs: 0x22b04
   168ec:	b8 e5 2a 00 00       	mov    eax,0x2ae5
   168f1:	e8 9a 3d 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_48:
   168f6:	e8 c5 22 01 00       	call   get_day
   168fb:	a3 fc 2a 02 00       	mov    ds:@obj3:MR_POTTSDAM_variable_2,eax                          ; fixup: num: 2669, src obj: 1, src ofs: 0x168fc, dst obj: 3, dst ofs: 0x22afc
   16900:	eb 14                	jmp    talk_to_MR_POTTSDAM_branch_51
talk_to_MR_POTTSDAM_branch_49:
   16902:	bb 03 00 00 00       	mov    ebx,0x3
   16907:	ba af 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_95                           ; fixup: num: 2668, src obj: 1, src ofs: 0x16908, dst obj: 3, dst ofs: 0x23af
   1690c:	b8 df 2b 00 00       	mov    eax,0x2bdf
talk_to_MR_POTTSDAM_branch_50:
   16911:	e8 7a 3d 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_51:
   16916:	b8 b8 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_96                           ; fixup: num: 2667, src obj: 1, src ofs: 0x16917, dst obj: 3, dst ofs: 0x23b8
   1691b:	e8 70 5e 05 00       	call   check_script_flag
   16920:	84 c0                	test   al,al
   16922:	0f 84 40 01 00 00    	je     talk_to_MR_POTTSDAM_branch_58
   16928:	83 3d 08 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_5,0x0                ; fixup: num: 2666, src obj: 1, src ofs: 0x1692a, dst obj: 3, dst ofs: 0x22b08
   1692f:	0f 85 33 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_58
   16935:	bb 01 00 00 00       	mov    ebx,0x1
   1693a:	ba c7 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_97                           ; fixup: num: 2665, src obj: 1, src ofs: 0x1693b, dst obj: 3, dst ofs: 0x23c7
   1693f:	b8 1f 2b 00 00       	mov    eax,0x2b1f
   16944:	89 1d 08 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_5,ebx                ; fixup: num: 2664, src obj: 1, src ofs: 0x16946, dst obj: 3, dst ofs: 0x22b08
   1694a:	e8 41 3d 05 00       	call   play_wav
   1694f:	b8 d0 23 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_98                           ; fixup: num: 2663, src obj: 1, src ofs: 0x16950, dst obj: 3, dst ofs: 0x23d0
   16954:	e8 37 5e 05 00       	call   check_script_flag
   16959:	84 c0                	test   al,al
   1695b:	75 07                	jne    talk_to_MR_POTTSDAM_branch_52
   1695d:	b8 de 01 00 00       	mov    eax,0x1de
   16962:	eb 05                	jmp    talk_to_MR_POTTSDAM_branch_53
talk_to_MR_POTTSDAM_branch_52:
   16964:	b8 df 01 00 00       	mov    eax,0x1df
talk_to_MR_POTTSDAM_branch_53:
   16969:	e8 32 38 01 00       	call   GetDlgFileString
   1696e:	e8 9d 45 05 00       	call   get_response
   16973:	83 f8 01             	cmp    eax,0x1
   16976:	0f 85 b7 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_55
   1697c:	bb 03 00 00 00       	mov    ebx,0x3
   16981:	ba e2 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_99                           ; fixup: num: 2680, src obj: 1, src ofs: 0x16982, dst obj: 3, dst ofs: 0x23e2
   16986:	b8 2f 2b 00 00       	mov    eax,0x2b2f
   1698b:	e8 00 3d 05 00       	call   play_wav
   16990:	ba eb 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_100                          ; fixup: num: 2679, src obj: 1, src ofs: 0x16991, dst obj: 3, dst ofs: 0x23eb
   16995:	b8 34 2b 00 00       	mov    eax,0x2b34
   1699a:	31 db                	xor    ebx,ebx
   1699c:	e8 ef 3c 05 00       	call   play_wav
   169a1:	ba ee 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_101                          ; fixup: num: 2678, src obj: 1, src ofs: 0x169a2, dst obj: 3, dst ofs: 0x23ee
   169a6:	b8 38 2b 00 00       	mov    eax,0x2b38
   169ab:	31 db                	xor    ebx,ebx
   169ad:	e8 de 3c 05 00       	call   play_wav
   169b2:	b8 e0 01 00 00       	mov    eax,0x1e0
   169b7:	e8 e4 37 01 00       	call   GetDlgFileString
   169bc:	e8 4f 45 05 00       	call   get_response
   169c1:	83 f8 01             	cmp    eax,0x1
   169c4:	75 11                	jne    talk_to_MR_POTTSDAM_branch_54
   169c6:	ba f7 23 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_102                          ; fixup: num: 2677, src obj: 1, src ofs: 0x169c7, dst obj: 3, dst ofs: 0x23f7
   169cb:	b8 45 2b 00 00       	mov    eax,0x2b45
   169d0:	31 db                	xor    ebx,ebx
   169d2:	e9 8c 00 00 00       	jmp    talk_to_MR_POTTSDAM_branch_57
talk_to_MR_POTTSDAM_branch_54:
   169d7:	83 f8 02             	cmp    eax,0x2
   169da:	0f 85 88 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_58
   169e0:	ba 00 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_103                          ; fixup: num: 2676, src obj: 1, src ofs: 0x169e1, dst obj: 3, dst ofs: 0x2400
   169e5:	b8 4b 2b 00 00       	mov    eax,0x2b4b
   169ea:	31 db                	xor    ebx,ebx
   169ec:	e8 9f 3c 05 00       	call   play_wav
   169f1:	b8 e1 01 00 00       	mov    eax,0x1e1
   169f6:	ba 09 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_104                          ; fixup: num: 2675, src obj: 1, src ofs: 0x169f7, dst obj: 3, dst ofs: 0x2409
   169fb:	e8 a0 37 01 00       	call   GetDlgFileString
   16a00:	e8 0b 45 05 00       	call   get_response
   16a05:	31 db                	xor    ebx,ebx
   16a07:	b8 55 2b 00 00       	mov    eax,0x2b55
   16a0c:	e8 7f 3c 05 00       	call   play_wav
   16a11:	ba 12 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_105                          ; fixup: num: 2674, src obj: 1, src ofs: 0x16a12, dst obj: 3, dst ofs: 0x2412
   16a16:	b8 5b 2b 00 00       	mov    eax,0x2b5b
   16a1b:	31 db                	xor    ebx,ebx
   16a1d:	e8 6e 3c 05 00       	call   play_wav
   16a22:	bb 01 00 00 00       	mov    ebx,0x1
   16a27:	ba 15 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_106                          ; fixup: num: 2673, src obj: 1, src ofs: 0x16a28, dst obj: 3, dst ofs: 0x2415
   16a2c:	b8 5f 2b 00 00       	mov    eax,0x2b5f
   16a31:	eb 30                	jmp    talk_to_MR_POTTSDAM_branch_57
talk_to_MR_POTTSDAM_branch_55:
   16a33:	83 f8 02             	cmp    eax,0x2
   16a36:	75 30                	jne    talk_to_MR_POTTSDAM_branch_58
   16a38:	b8 1e 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_107                          ; fixup: num: 2556, src obj: 1, src ofs: 0x16a39, dst obj: 3, dst ofs: 0x241e
   16a3d:	e8 4e 5d 05 00       	call   check_script_flag
   16a42:	84 c0                	test   al,al
   16a44:	75 0e                	jne    talk_to_MR_POTTSDAM_branch_56
   16a46:	ba 33 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_108                          ; fixup: num: 2555, src obj: 1, src ofs: 0x16a47, dst obj: 3, dst ofs: 0x2433
   16a4b:	b8 65 2b 00 00       	mov    eax,0x2b65
   16a50:	31 db                	xor    ebx,ebx
   16a52:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_57
talk_to_MR_POTTSDAM_branch_56:
   16a54:	bb 03 00 00 00       	mov    ebx,0x3
   16a59:	ba 3c 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_109                          ; fixup: num: 2554, src obj: 1, src ofs: 0x16a5a, dst obj: 3, dst ofs: 0x243c
   16a5e:	b8 79 2b 00 00       	mov    eax,0x2b79
talk_to_MR_POTTSDAM_branch_57:
   16a63:	e8 28 3c 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_58:
   16a68:	b8 45 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_110                          ; fixup: num: 2553, src obj: 1, src ofs: 0x16a69, dst obj: 3, dst ofs: 0x2445
   16a6d:	e8 1e 5d 05 00       	call   check_script_flag
   16a72:	84 c0                	test   al,al
   16a74:	74 33                	je     talk_to_MR_POTTSDAM_branch_59
   16a76:	b8 4b 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_111                          ; fixup: num: 2552, src obj: 1, src ofs: 0x16a77, dst obj: 3, dst ofs: 0x244b
   16a7b:	e8 10 5d 05 00       	call   check_script_flag
   16a80:	84 c0                	test   al,al
   16a82:	74 25                	je     talk_to_MR_POTTSDAM_branch_59
   16a84:	83 3d 0c 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_6,0x0                ; fixup: num: 2686, src obj: 1, src ofs: 0x16a86, dst obj: 3, dst ofs: 0x22b0c
   16a8b:	75 1c                	jne    talk_to_MR_POTTSDAM_branch_59
   16a8d:	bf 01 00 00 00       	mov    edi,0x1
   16a92:	ba 5c 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_112                          ; fixup: num: 2685, src obj: 1, src ofs: 0x16a93, dst obj: 3, dst ofs: 0x245c
   16a97:	b8 82 2b 00 00       	mov    eax,0x2b82
   16a9c:	89 fb                	mov    ebx,edi
   16a9e:	89 3d 0c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_6,edi                ; fixup: num: 2684, src obj: 1, src ofs: 0x16aa0, dst obj: 3, dst ofs: 0x22b0c
   16aa4:	e8 e7 3b 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_59:
   16aa9:	b8 65 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_113                          ; fixup: num: 2683, src obj: 1, src ofs: 0x16aaa, dst obj: 3, dst ofs: 0x2465
   16aae:	e8 dd 5c 05 00       	call   check_script_flag
   16ab3:	84 c0                	test   al,al
   16ab5:	0f 84 cd 00 00 00    	je     talk_to_MR_POTTSDAM_branch_64
   16abb:	83 3d 10 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_7,0x0                ; fixup: num: 2682, src obj: 1, src ofs: 0x16abd, dst obj: 3, dst ofs: 0x22b10
   16ac2:	0f 85 c0 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_64
   16ac8:	ba 01 00 00 00       	mov    edx,0x1
   16acd:	bb 03 00 00 00       	mov    ebx,0x3
   16ad2:	b8 8d 2b 00 00       	mov    eax,0x2b8d
   16ad7:	89 15 10 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_7,edx                ; fixup: num: 2681, src obj: 1, src ofs: 0x16ad9, dst obj: 3, dst ofs: 0x22b10
   16add:	ba 76 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_114                          ; fixup: num: 2566, src obj: 1, src ofs: 0x16ade, dst obj: 3, dst ofs: 0x2476
   16ae2:	e8 a9 3b 05 00       	call   play_wav
   16ae7:	bb 03 00 00 00       	mov    ebx,0x3
   16aec:	ba 7f 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_115                          ; fixup: num: 2565, src obj: 1, src ofs: 0x16aed, dst obj: 3, dst ofs: 0x247f
   16af1:	b8 91 2b 00 00       	mov    eax,0x2b91
   16af6:	e8 95 3b 05 00       	call   play_wav
   16afb:	b8 82 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_116                          ; fixup: num: 2564, src obj: 1, src ofs: 0x16afc, dst obj: 3, dst ofs: 0x2482
   16b00:	e8 8b 5c 05 00       	call   check_script_flag
   16b05:	84 c0                	test   al,al
   16b07:	74 11                	je     talk_to_MR_POTTSDAM_branch_60
   16b09:	bb 03 00 00 00       	mov    ebx,0x3
   16b0e:	ba 97 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_117                          ; fixup: num: 2563, src obj: 1, src ofs: 0x16b0f, dst obj: 3, dst ofs: 0x2497
   16b13:	b8 96 2b 00 00       	mov    eax,0x2b96
   16b18:	eb 0c                	jmp    talk_to_MR_POTTSDAM_branch_61
talk_to_MR_POTTSDAM_branch_60:
   16b1a:	ba 9a 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_118                          ; fixup: num: 2562, src obj: 1, src ofs: 0x16b1b, dst obj: 3, dst ofs: 0x249a
   16b1f:	b8 9b 2b 00 00       	mov    eax,0x2b9b
   16b24:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_61:
   16b26:	e8 65 3b 05 00       	call   play_wav
   16b2b:	ba a3 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_119                          ; fixup: num: 2561, src obj: 1, src ofs: 0x16b2c, dst obj: 3, dst ofs: 0x24a3
   16b30:	b8 9f 2b 00 00       	mov    eax,0x2b9f
   16b35:	31 db                	xor    ebx,ebx
   16b37:	e8 54 3b 05 00       	call   play_wav
   16b3c:	ba a6 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_120                          ; fixup: num: 2560, src obj: 1, src ofs: 0x16b3d, dst obj: 3, dst ofs: 0x24a6
   16b41:	b8 a4 2b 00 00       	mov    eax,0x2ba4
   16b46:	31 db                	xor    ebx,ebx
   16b48:	e8 43 3b 05 00       	call   play_wav
   16b4d:	b8 e2 01 00 00       	mov    eax,0x1e2
   16b52:	e8 49 36 01 00       	call   GetDlgFileString
   16b57:	e8 b4 43 05 00       	call   get_response
   16b5c:	83 f8 01             	cmp    eax,0x1
   16b5f:	75 11                	jne    talk_to_MR_POTTSDAM_branch_62
   16b61:	bb 03 00 00 00       	mov    ebx,0x3
   16b66:	ba af 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_121                          ; fixup: num: 2559, src obj: 1, src ofs: 0x16b67, dst obj: 3, dst ofs: 0x24af
   16b6b:	b8 b2 2b 00 00       	mov    eax,0x2bb2
   16b70:	eb 11                	jmp    talk_to_MR_POTTSDAM_branch_63
talk_to_MR_POTTSDAM_branch_62:
   16b72:	83 f8 02             	cmp    eax,0x2
   16b75:	75 11                	jne    talk_to_MR_POTTSDAM_branch_64
   16b77:	ba b8 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_122                          ; fixup: num: 2558, src obj: 1, src ofs: 0x16b78, dst obj: 3, dst ofs: 0x24b8
   16b7c:	b8 b6 2b 00 00       	mov    eax,0x2bb6
   16b81:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_63:
   16b83:	e8 08 3b 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_64:
   16b88:	b8 c1 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_123                          ; fixup: num: 2557, src obj: 1, src ofs: 0x16b89, dst obj: 3, dst ofs: 0x24c1
   16b8d:	e8 fe 5b 05 00       	call   check_script_flag
   16b92:	84 c0                	test   al,al
   16b94:	0f 84 78 00 00 00    	je     talk_to_MR_POTTSDAM_branch_68
   16b9a:	b8 c7 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_124                          ; fixup: num: 2576, src obj: 1, src ofs: 0x16b9b, dst obj: 3, dst ofs: 0x24c7
   16b9f:	e8 9c 5c 05 00       	call   npc_alive
   16ba4:	84 c0                	test   al,al
   16ba6:	74 0e                	je     talk_to_MR_POTTSDAM_branch_65
   16ba8:	b8 cd 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_125                          ; fixup: num: 2575, src obj: 1, src ofs: 0x16ba9, dst obj: 3, dst ofs: 0x24cd
   16bad:	e8 de 5b 05 00       	call   check_script_flag
   16bb2:	84 c0                	test   al,al
   16bb4:	74 5c                	je     talk_to_MR_POTTSDAM_branch_68
talk_to_MR_POTTSDAM_branch_65:
   16bb6:	83 3d 14 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_8,0x0                ; fixup: num: 2574, src obj: 1, src ofs: 0x16bb8, dst obj: 3, dst ofs: 0x22b14
   16bbd:	75 53                	jne    talk_to_MR_POTTSDAM_branch_68
   16bbf:	be 01 00 00 00       	mov    esi,0x1
   16bc4:	ba de 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_126                          ; fixup: num: 2573, src obj: 1, src ofs: 0x16bc5, dst obj: 3, dst ofs: 0x24de
   16bc9:	b8 bd 2b 00 00       	mov    eax,0x2bbd
   16bce:	89 f3                	mov    ebx,esi
   16bd0:	89 35 14 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_8,esi                ; fixup: num: 2572, src obj: 1, src ofs: 0x16bd2, dst obj: 3, dst ofs: 0x22b14
   16bd6:	e8 b5 3a 05 00       	call   play_wav
   16bdb:	b8 e3 01 00 00       	mov    eax,0x1e3
   16be0:	e8 bb 35 01 00       	call   GetDlgFileString
   16be5:	e8 26 43 05 00       	call   get_response
   16bea:	39 f0                	cmp    eax,esi
   16bec:	75 0e                	jne    talk_to_MR_POTTSDAM_branch_66
   16bee:	ba e7 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_127                          ; fixup: num: 2571, src obj: 1, src ofs: 0x16bef, dst obj: 3, dst ofs: 0x24e7
   16bf3:	b8 c8 2b 00 00       	mov    eax,0x2bc8
   16bf8:	89 f3                	mov    ebx,esi
   16bfa:	eb 11                	jmp    talk_to_MR_POTTSDAM_branch_67
talk_to_MR_POTTSDAM_branch_66:
   16bfc:	83 f8 02             	cmp    eax,0x2
   16bff:	75 11                	jne    talk_to_MR_POTTSDAM_branch_68
   16c01:	ba f0 24 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_128                          ; fixup: num: 2570, src obj: 1, src ofs: 0x16c02, dst obj: 3, dst ofs: 0x24f0
   16c06:	b8 d1 2b 00 00       	mov    eax,0x2bd1
   16c0b:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_67:
   16c0d:	e8 7e 3a 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_68:
   16c12:	b8 f9 24 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_129                          ; fixup: num: 2569, src obj: 1, src ofs: 0x16c13, dst obj: 3, dst ofs: 0x24f9
   16c17:	e8 74 5b 05 00       	call   check_script_flag
   16c1c:	84 c0                	test   al,al
   16c1e:	0f 84 18 01 00 00    	je     talk_to_MR_POTTSDAM_branch_76
   16c24:	83 3d 18 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_9,0x0                ; fixup: num: 2568, src obj: 1, src ofs: 0x16c26, dst obj: 3, dst ofs: 0x22b18
   16c2b:	0f 85 0b 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_76
   16c31:	c7 05 18 2b 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_9,0x1       ; fixup: num: 2567, src obj: 1, src ofs: 0x16c33, dst obj: 3, dst ofs: 0x22b18
   16c3b:	b8 e4 01 00 00       	mov    eax,0x1e4
   16c40:	e8 5b 35 01 00       	call   GetDlgFileString
   16c45:	e8 c6 42 05 00       	call   get_response
   16c4a:	83 f8 01             	cmp    eax,0x1
   16c4d:	0f 85 d3 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_73
   16c53:	bb 02 00 00 00       	mov    ebx,0x2
   16c58:	ba 0b 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_130                          ; fixup: num: 2580, src obj: 1, src ofs: 0x16c59, dst obj: 3, dst ofs: 0x250b
   16c5d:	b8 e9 2b 00 00       	mov    eax,0x2be9
   16c62:	e8 29 3a 05 00       	call   play_wav
   16c67:	ba 01 00 00 00       	mov    edx,0x1
   16c6c:	31 c0                	xor    eax,eax
   16c6e:	bb 01 00 00 00       	mov    ebx,0x1
   16c73:	e8 c8 17 01 00       	call   POTTSDAM_CLAIMED_HE_WAS_HOME
   16c78:	ba 14 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_131                          ; fixup: num: 2579, src obj: 1, src ofs: 0x16c79, dst obj: 3, dst ofs: 0x2514
   16c7d:	b8 f2 2b 00 00       	mov    eax,0x2bf2
   16c82:	e8 09 3a 05 00       	call   play_wav
   16c87:	bb 02 00 00 00       	mov    ebx,0x2
   16c8c:	ba 1e 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_132                          ; fixup: num: 2578, src obj: 1, src ofs: 0x16c8d, dst obj: 3, dst ofs: 0x251e
   16c91:	b8 f7 2b 00 00       	mov    eax,0x2bf7
   16c96:	e8 f5 39 05 00       	call   play_wav
   16c9b:	bb 04 00 00 00       	mov    ebx,0x4
   16ca0:	ba 27 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_133                          ; fixup: num: 2577, src obj: 1, src ofs: 0x16ca1, dst obj: 3, dst ofs: 0x2527
   16ca5:	b8 fe 2b 00 00       	mov    eax,0x2bfe
   16caa:	e8 e1 39 05 00       	call   play_wav
   16caf:	b8 01 00 00 00       	mov    eax,0x1
   16cb4:	31 d2                	xor    edx,edx
   16cb6:	e8 35 16 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
   16cbb:	85 c0                	test   eax,eax
   16cbd:	74 07                	je     talk_to_MR_POTTSDAM_branch_69
   16cbf:	b8 e5 01 00 00       	mov    eax,0x1e5
   16cc4:	eb 05                	jmp    talk_to_MR_POTTSDAM_branch_70
talk_to_MR_POTTSDAM_branch_69:
   16cc6:	b8 e6 01 00 00       	mov    eax,0x1e6
talk_to_MR_POTTSDAM_branch_70:
   16ccb:	e8 d0 34 01 00       	call   GetDlgFileString
   16cd0:	e8 3b 42 05 00       	call   get_response
   16cd5:	83 f8 01             	cmp    eax,0x1
   16cd8:	75 39                	jne    talk_to_MR_POTTSDAM_branch_72
   16cda:	31 d2                	xor    edx,edx
   16cdc:	e8 0f 16 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
   16ce1:	85 c0                	test   eax,eax
   16ce3:	74 11                	je     talk_to_MR_POTTSDAM_branch_71
   16ce5:	bb 02 00 00 00       	mov    ebx,0x2
   16cea:	ba 30 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_134                          ; fixup: num: 2593, src obj: 1, src ofs: 0x16ceb, dst obj: 3, dst ofs: 0x2530
   16cef:	b8 15 2c 00 00       	mov    eax,0x2c15
   16cf4:	eb 41                	jmp    talk_to_MR_POTTSDAM_branch_75
talk_to_MR_POTTSDAM_branch_71:
   16cf6:	ba 39 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_135                          ; fixup: num: 2592, src obj: 1, src ofs: 0x16cf7, dst obj: 3, dst ofs: 0x2539
   16cfb:	b8 1a 2c 00 00       	mov    eax,0x2c1a
   16d00:	31 db                	xor    ebx,ebx
   16d02:	e8 89 39 05 00       	call   play_wav
   16d07:	ba 42 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_136                          ; fixup: num: 2591, src obj: 1, src ofs: 0x16d08, dst obj: 3, dst ofs: 0x2542
   16d0c:	b8 20 2c 00 00       	mov    eax,0x2c20
   16d11:	eb 22                	jmp    talk_to_MR_POTTSDAM_branch_74
talk_to_MR_POTTSDAM_branch_72:
   16d13:	83 f8 02             	cmp    eax,0x2
   16d16:	75 24                	jne    talk_to_MR_POTTSDAM_branch_76
   16d18:	ba 4c 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_137                          ; fixup: num: 2590, src obj: 1, src ofs: 0x16d19, dst obj: 3, dst ofs: 0x254c
   16d1d:	89 c3                	mov    ebx,eax
   16d1f:	b8 24 2c 00 00       	mov    eax,0x2c24
   16d24:	eb 11                	jmp    talk_to_MR_POTTSDAM_branch_75
talk_to_MR_POTTSDAM_branch_73:
   16d26:	83 f8 02             	cmp    eax,0x2
   16d29:	75 11                	jne    talk_to_MR_POTTSDAM_branch_76
   16d2b:	ba 56 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_138                          ; fixup: num: 2589, src obj: 1, src ofs: 0x16d2c, dst obj: 3, dst ofs: 0x2556
   16d30:	b8 2c 2c 00 00       	mov    eax,0x2c2c
talk_to_MR_POTTSDAM_branch_74:
   16d35:	31 db                	xor    ebx,ebx
talk_to_MR_POTTSDAM_branch_75:
   16d37:	e8 54 39 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_76:
   16d3c:	b8 5f 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_139                          ; fixup: num: 2588, src obj: 1, src ofs: 0x16d3d, dst obj: 3, dst ofs: 0x255f
   16d41:	e8 4a 5a 05 00       	call   check_script_flag
   16d46:	84 c0                	test   al,al
   16d48:	74 23                	je     talk_to_MR_POTTSDAM_branch_77
   16d4a:	83 3d 1c 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_10,0x0               ; fixup: num: 2587, src obj: 1, src ofs: 0x16d4c, dst obj: 3, dst ofs: 0x22b1c
   16d51:	75 1a                	jne    talk_to_MR_POTTSDAM_branch_77
   16d53:	bb 01 00 00 00       	mov    ebx,0x1
   16d58:	ba 70 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_140                          ; fixup: num: 2586, src obj: 1, src ofs: 0x16d59, dst obj: 3, dst ofs: 0x2570
   16d5d:	b8 54 2e 00 00       	mov    eax,0x2e54
   16d62:	89 1d 1c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_10,ebx               ; fixup: num: 2585, src obj: 1, src ofs: 0x16d64, dst obj: 3, dst ofs: 0x22b1c
   16d68:	e8 23 39 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_77:
   16d6d:	b8 79 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_141                          ; fixup: num: 2584, src obj: 1, src ofs: 0x16d6e, dst obj: 3, dst ofs: 0x2579
   16d72:	e8 19 5a 05 00       	call   check_script_flag
   16d77:	84 c0                	test   al,al
   16d79:	74 25                	je     talk_to_MR_POTTSDAM_branch_78
   16d7b:	83 3d 20 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_11,0x0               ; fixup: num: 2583, src obj: 1, src ofs: 0x16d7d, dst obj: 3, dst ofs: 0x22b20
   16d82:	75 1c                	jne    talk_to_MR_POTTSDAM_branch_78
   16d84:	bf 01 00 00 00       	mov    edi,0x1
   16d89:	ba 8c 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_142                          ; fixup: num: 2582, src obj: 1, src ofs: 0x16d8a, dst obj: 3, dst ofs: 0x258c
   16d8e:	b8 61 2e 00 00       	mov    eax,0x2e61
   16d93:	89 fb                	mov    ebx,edi
   16d95:	89 3d 20 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_11,edi               ; fixup: num: 2581, src obj: 1, src ofs: 0x16d97, dst obj: 3, dst ofs: 0x22b20
   16d9b:	e8 f0 38 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_78:
   16da0:	b8 95 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_143                          ; fixup: num: 2605, src obj: 1, src ofs: 0x16da1, dst obj: 3, dst ofs: 0x2595
   16da5:	e8 e6 59 05 00       	call   check_script_flag
   16daa:	84 c0                	test   al,al
   16dac:	74 28                	je     talk_to_MR_POTTSDAM_branch_79
   16dae:	83 3d 24 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_12,0x0               ; fixup: num: 2604, src obj: 1, src ofs: 0x16db0, dst obj: 3, dst ofs: 0x22b24
   16db5:	75 1f                	jne    talk_to_MR_POTTSDAM_branch_79
   16db7:	ba 01 00 00 00       	mov    edx,0x1
   16dbc:	bb 02 00 00 00       	mov    ebx,0x2
   16dc1:	b8 69 2e 00 00       	mov    eax,0x2e69
   16dc6:	89 15 24 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_12,edx               ; fixup: num: 2603, src obj: 1, src ofs: 0x16dc8, dst obj: 3, dst ofs: 0x22b24
   16dcc:	ba a9 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_144                          ; fixup: num: 2602, src obj: 1, src ofs: 0x16dcd, dst obj: 3, dst ofs: 0x25a9
   16dd1:	e8 ba 38 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_79:
   16dd6:	b8 b2 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_145                          ; fixup: num: 2601, src obj: 1, src ofs: 0x16dd7, dst obj: 3, dst ofs: 0x25b2
   16ddb:	e8 b0 59 05 00       	call   check_script_flag
   16de0:	84 c0                	test   al,al
   16de2:	74 58                	je     talk_to_MR_POTTSDAM_branch_82
   16de4:	83 3d 28 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_13,0x0               ; fixup: num: 2600, src obj: 1, src ofs: 0x16de6, dst obj: 3, dst ofs: 0x22b28
   16deb:	75 4f                	jne    talk_to_MR_POTTSDAM_branch_82
   16ded:	be 01 00 00 00       	mov    esi,0x1
   16df2:	bb 03 00 00 00       	mov    ebx,0x3
   16df7:	ba bf 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_146                          ; fixup: num: 2599, src obj: 1, src ofs: 0x16df8, dst obj: 3, dst ofs: 0x25bf
   16dfc:	b8 72 2e 00 00       	mov    eax,0x2e72
   16e01:	89 35 28 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_13,esi               ; fixup: num: 2598, src obj: 1, src ofs: 0x16e03, dst obj: 3, dst ofs: 0x22b28
   16e07:	e8 84 38 05 00       	call   play_wav
   16e0c:	b8 c8 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_147                          ; fixup: num: 2597, src obj: 1, src ofs: 0x16e0d, dst obj: 3, dst ofs: 0x25c8
   16e11:	e8 7a 59 05 00       	call   check_script_flag
   16e16:	84 c0                	test   al,al
   16e18:	74 0e                	je     talk_to_MR_POTTSDAM_branch_80
   16e1a:	ba d7 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_148                          ; fixup: num: 2596, src obj: 1, src ofs: 0x16e1b, dst obj: 3, dst ofs: 0x25d7
   16e1f:	b8 77 2e 00 00       	mov    eax,0x2e77
   16e24:	31 db                	xor    ebx,ebx
   16e26:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_81
talk_to_MR_POTTSDAM_branch_80:
   16e28:	bb 03 00 00 00       	mov    ebx,0x3
   16e2d:	ba e0 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_149                          ; fixup: num: 2595, src obj: 1, src ofs: 0x16e2e, dst obj: 3, dst ofs: 0x25e0
   16e32:	b8 7c 2e 00 00       	mov    eax,0x2e7c
talk_to_MR_POTTSDAM_branch_81:
   16e37:	e8 54 38 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_82:
   16e3c:	b8 e9 25 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_150                          ; fixup: num: 2594, src obj: 1, src ofs: 0x16e3d, dst obj: 3, dst ofs: 0x25e9
   16e41:	e8 4a 59 05 00       	call   check_script_flag
   16e46:	84 c0                	test   al,al
   16e48:	74 6b                	je     talk_to_MR_POTTSDAM_branch_86
   16e4a:	83 3d 2c 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_14,0x0               ; fixup: num: 2616, src obj: 1, src ofs: 0x16e4c, dst obj: 3, dst ofs: 0x22b2c
   16e51:	75 62                	jne    talk_to_MR_POTTSDAM_branch_86
   16e53:	b8 01 00 00 00       	mov    eax,0x1
   16e58:	ba ff 25 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_151                          ; fixup: num: 2615, src obj: 1, src ofs: 0x16e59, dst obj: 3, dst ofs: 0x25ff
   16e5d:	31 db                	xor    ebx,ebx
   16e5f:	a3 2c 2b 02 00       	mov    ds:@obj3:MR_POTTSDAM_variable_14,eax                         ; fixup: num: 2614, src obj: 1, src ofs: 0x16e60, dst obj: 3, dst ofs: 0x22b2c
   16e64:	b8 82 2e 00 00       	mov    eax,0x2e82
   16e69:	e8 22 38 05 00       	call   play_wav
   16e6e:	b8 e7 01 00 00       	mov    eax,0x1e7
   16e73:	e8 28 33 01 00       	call   GetDlgFileString
   16e78:	e8 93 40 05 00       	call   get_response
   16e7d:	83 f8 01             	cmp    eax,0x1
   16e80:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_83
   16e82:	ba 08 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_152                          ; fixup: num: 2613, src obj: 1, src ofs: 0x16e83, dst obj: 3, dst ofs: 0x2608
   16e87:	b8 8d 2e 00 00       	mov    eax,0x2e8d
   16e8c:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_84
talk_to_MR_POTTSDAM_branch_83:
   16e8e:	83 f8 02             	cmp    eax,0x2
   16e91:	75 11                	jne    talk_to_MR_POTTSDAM_branch_85
   16e93:	ba 11 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_153                          ; fixup: num: 2612, src obj: 1, src ofs: 0x16e94, dst obj: 3, dst ofs: 0x2611
   16e98:	b8 91 2e 00 00       	mov    eax,0x2e91
talk_to_MR_POTTSDAM_branch_84:
   16e9d:	31 db                	xor    ebx,ebx
   16e9f:	e8 ec 37 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_85:
   16ea4:	ba 1a 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_154                          ; fixup: num: 2611, src obj: 1, src ofs: 0x16ea5, dst obj: 3, dst ofs: 0x261a
   16ea9:	b8 95 2e 00 00       	mov    eax,0x2e95
   16eae:	31 db                	xor    ebx,ebx
   16eb0:	e8 db 37 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_86:
   16eb5:	b8 23 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_155                          ; fixup: num: 2610, src obj: 1, src ofs: 0x16eb6, dst obj: 3, dst ofs: 0x2623
   16eba:	e8 d1 58 05 00       	call   check_script_flag
   16ebf:	84 c0                	test   al,al
   16ec1:	74 23                	je     talk_to_MR_POTTSDAM_branch_87
   16ec3:	83 3d 30 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_15,0x0               ; fixup: num: 2609, src obj: 1, src ofs: 0x16ec5, dst obj: 3, dst ofs: 0x22b30
   16eca:	75 1a                	jne    talk_to_MR_POTTSDAM_branch_87
   16ecc:	bb 01 00 00 00       	mov    ebx,0x1
   16ed1:	ba 33 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_156                          ; fixup: num: 2608, src obj: 1, src ofs: 0x16ed2, dst obj: 3, dst ofs: 0x2633
   16ed6:	b8 9c 2e 00 00       	mov    eax,0x2e9c
   16edb:	89 1d 30 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_15,ebx               ; fixup: num: 2607, src obj: 1, src ofs: 0x16edd, dst obj: 3, dst ofs: 0x22b30
   16ee1:	e8 aa 37 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_87:
   16ee6:	b8 3c 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_157                          ; fixup: num: 2606, src obj: 1, src ofs: 0x16ee7, dst obj: 3, dst ofs: 0x263c
   16eeb:	e8 50 59 05 00       	call   npc_alive
   16ef0:	84 c0                	test   al,al
   16ef2:	75 25                	jne    talk_to_MR_POTTSDAM_branch_88
   16ef4:	83 3d 34 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_16,0x0               ; fixup: num: 2546, src obj: 1, src ofs: 0x16ef6, dst obj: 3, dst ofs: 0x22b34
   16efb:	75 1c                	jne    talk_to_MR_POTTSDAM_branch_88
   16efd:	bf 01 00 00 00       	mov    edi,0x1
   16f02:	ba 44 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_158                          ; fixup: num: 2545, src obj: 1, src ofs: 0x16f03, dst obj: 3, dst ofs: 0x2644
   16f07:	b8 f2 2e 00 00       	mov    eax,0x2ef2
   16f0c:	89 fb                	mov    ebx,edi
   16f0e:	89 3d 34 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_16,edi               ; fixup: num: 2544, src obj: 1, src ofs: 0x16f10, dst obj: 3, dst ofs: 0x22b34
   16f14:	e8 77 37 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_88:
   16f19:	b8 4d 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_159                          ; fixup: num: 2543, src obj: 1, src ofs: 0x16f1a, dst obj: 3, dst ofs: 0x264d
   16f1e:	e8 1d 59 05 00       	call   npc_alive
   16f23:	84 c0                	test   al,al
   16f25:	75 25                	jne    talk_to_MR_POTTSDAM_branch_89
   16f27:	83 3d 38 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_17,0x0               ; fixup: num: 2542, src obj: 1, src ofs: 0x16f29, dst obj: 3, dst ofs: 0x22b38
   16f2e:	75 1c                	jne    talk_to_MR_POTTSDAM_branch_89
   16f30:	ba 01 00 00 00       	mov    edx,0x1
   16f35:	b8 08 2f 00 00       	mov    eax,0x2f08
   16f3a:	31 db                	xor    ebx,ebx
   16f3c:	89 15 38 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_17,edx               ; fixup: num: 2541, src obj: 1, src ofs: 0x16f3e, dst obj: 3, dst ofs: 0x22b38
   16f42:	ba 56 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_160                          ; fixup: num: 2540, src obj: 1, src ofs: 0x16f43, dst obj: 3, dst ofs: 0x2656
   16f47:	e8 44 37 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_89:
   16f4c:	b8 5f 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_161                          ; fixup: num: 2539, src obj: 1, src ofs: 0x16f4d, dst obj: 3, dst ofs: 0x265f
   16f51:	e8 3a 58 05 00       	call   check_script_flag
   16f56:	84 c0                	test   al,al
   16f58:	74 4a                	je     talk_to_MR_POTTSDAM_branch_90
   16f5a:	83 3d 3c 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_18,0x0               ; fixup: num: 2538, src obj: 1, src ofs: 0x16f5c, dst obj: 3, dst ofs: 0x22b3c
   16f61:	75 41                	jne    talk_to_MR_POTTSDAM_branch_90
   16f63:	be 01 00 00 00       	mov    esi,0x1
   16f68:	bb 03 00 00 00       	mov    ebx,0x3
   16f6d:	ba 69 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_162                          ; fixup: num: 2537, src obj: 1, src ofs: 0x16f6e, dst obj: 3, dst ofs: 0x2669
   16f72:	b8 0f 2f 00 00       	mov    eax,0x2f0f
   16f77:	89 35 3c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_18,esi               ; fixup: num: 2619, src obj: 1, src ofs: 0x16f79, dst obj: 3, dst ofs: 0x22b3c
   16f7d:	e8 0e 37 05 00       	call   play_wav
   16f82:	b8 72 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_163                          ; fixup: num: 2618, src obj: 1, src ofs: 0x16f83, dst obj: 3, dst ofs: 0x2672
   16f87:	e8 04 58 05 00       	call   check_script_flag
   16f8c:	84 c0                	test   al,al
   16f8e:	74 14                	je     talk_to_MR_POTTSDAM_branch_90
   16f90:	bb 03 00 00 00       	mov    ebx,0x3
   16f95:	ba 7d 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_164                          ; fixup: num: 2617, src obj: 1, src ofs: 0x16f96, dst obj: 3, dst ofs: 0x267d
   16f9a:	b8 14 2f 00 00       	mov    eax,0x2f14
   16f9f:	e8 ec 36 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_90:
   16fa4:	be 86 26 00 00       	mov    esi,@obj3:mr_potts_cpp_variable_165                          ; fixup: num: 2551, src obj: 1, src ofs: 0x16fa5, dst obj: 3, dst ofs: 0x2686
   16fa9:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 2550, src obj: 1, src ofs: 0x16faa, dst obj: 3, dst ofs: 0x294c0
talk_to_MR_POTTSDAM_branch_91:
   16fae:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_92:
   16faf:	8a 06                	mov    al,BYTE PTR [esi]
   16fb1:	88 07                	mov    BYTE PTR [edi],al
   16fb3:	3c 00                	cmp    al,0x0
   16fb5:	74 10                	je     talk_to_MR_POTTSDAM_branch_93
   16fb7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   16fba:	83 c6 02             	add    esi,0x2
   16fbd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   16fc0:	83 c7 02             	add    edi,0x2
   16fc3:	3c 00                	cmp    al,0x0
   16fc5:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_92
talk_to_MR_POTTSDAM_branch_93:
   16fc7:	5f                   	pop    edi
talk_to_MR_POTTSDAM_branch_94:
   16fc8:	b8 e9 01 00 00       	mov    eax,0x1e9
   16fcd:	e8 ce 31 01 00       	call   GetDlgFileString
   16fd2:	89 c2                	mov    edx,eax
   16fd4:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2549, src obj: 1, src ofs: 0x16fd5, dst obj: 3, dst ofs: 0x294c0
   16fd9:	e8 7c a4 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   16fde:	85 c0                	test   eax,eax
   16fe0:	0f 84 12 f1 ff ff    	je     talk_to_MR_POTTSDAM_branch_4
   16fe6:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 2548, src obj: 1, src ofs: 0x16fe7, dst obj: 3, dst ofs: 0x295c0
   16feb:	e8 50 4a 05 00       	call   show_keywords
   16ff0:	b8 ea 01 00 00       	mov    eax,0x1ea
   16ff5:	e8 a6 31 01 00       	call   GetDlgFileString
   16ffa:	89 c2                	mov    edx,eax
   16ffc:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2547, src obj: 1, src ofs: 0x16ffd, dst obj: 3, dst ofs: 0x294c0; fixup: num: 2897, src obj: 1, src ofs: 0x16ffd, dst obj: 3, dst ofs: 0x294c0
   17001:	e8 54 a4 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17006:	85 c0                	test   eax,eax
   17008:	75 74                	jne    talk_to_MR_POTTSDAM_branch_95
   1700a:	b8 87 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_166                          ; fixup: num: 2896, src obj: 1, src ofs: 0x1700b, dst obj: 3, dst ofs: 0x2687
   1700f:	e8 7c 57 05 00       	call   check_script_flag
   17014:	84 c0                	test   al,al
   17016:	75 66                	jne    talk_to_MR_POTTSDAM_branch_95
   17018:	bb 02 00 00 00       	mov    ebx,0x2
   1701d:	ba 99 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_167                          ; fixup: num: 2895, src obj: 1, src ofs: 0x1701e, dst obj: 3, dst ofs: 0x2699
   17022:	b8 c5 29 00 00       	mov    eax,0x29c5
   17027:	e8 64 36 05 00       	call   play_wav
   1702c:	bb 04 00 00 00       	mov    ebx,0x4
   17031:	ba 9c 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_168                          ; fixup: num: 2894, src obj: 1, src ofs: 0x17032, dst obj: 3, dst ofs: 0x269c
   17036:	b8 ca 29 00 00       	mov    eax,0x29ca
   1703b:	e8 50 36 05 00       	call   play_wav
   17040:	bb 02 00 00 00       	mov    ebx,0x2
   17045:	ba a5 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_169                          ; fixup: num: 2893, src obj: 1, src ofs: 0x17046, dst obj: 3, dst ofs: 0x26a5
   1704a:	b8 cf 29 00 00       	mov    eax,0x29cf
   1704f:	e8 3c 36 05 00       	call   play_wav
   17054:	bb 04 00 00 00       	mov    ebx,0x4
   17059:	ba a8 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_170                          ; fixup: num: 2906, src obj: 1, src ofs: 0x1705a, dst obj: 3, dst ofs: 0x26a8
   1705e:	b8 d3 29 00 00       	mov    eax,0x29d3
   17063:	e8 28 36 05 00       	call   play_wav
   17068:	b8 eb 01 00 00       	mov    eax,0x1eb
   1706d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2905, src obj: 1, src ofs: 0x1706e, dst obj: 3, dst ofs: 0x295c0
   17072:	e8 29 31 01 00       	call   GetDlgFileString
   17077:	89 c6                	mov    esi,eax
   17079:	e9 30 ff ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_95:
   1707e:	b8 ec 01 00 00       	mov    eax,0x1ec
   17083:	e8 18 31 01 00       	call   GetDlgFileString
   17088:	89 c2                	mov    edx,eax
   1708a:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2904, src obj: 1, src ofs: 0x1708b, dst obj: 3, dst ofs: 0x294c0
   1708f:	e8 c6 a3 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17094:	85 c0                	test   eax,eax
   17096:	75 49                	jne    talk_to_MR_POTTSDAM_branch_96
   17098:	b8 b1 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_171                          ; fixup: num: 2903, src obj: 1, src ofs: 0x17099, dst obj: 3, dst ofs: 0x26b1
   1709d:	e8 ee 56 05 00       	call   check_script_flag
   170a2:	84 c0                	test   al,al
   170a4:	75 3b                	jne    talk_to_MR_POTTSDAM_branch_96
   170a6:	ba c3 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_172                          ; fixup: num: 2902, src obj: 1, src ofs: 0x170a7, dst obj: 3, dst ofs: 0x26c3
   170ab:	b8 de 29 00 00       	mov    eax,0x29de
   170b0:	31 db                	xor    ebx,ebx
   170b2:	e8 d9 35 05 00       	call   play_wav
   170b7:	bb 03 00 00 00       	mov    ebx,0x3
   170bc:	ba c6 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_173                          ; fixup: num: 2901, src obj: 1, src ofs: 0x170bd, dst obj: 3, dst ofs: 0x26c6
   170c1:	b8 e2 29 00 00       	mov    eax,0x29e2
   170c6:	e8 c5 35 05 00       	call   play_wav
   170cb:	b8 ed 01 00 00       	mov    eax,0x1ed
   170d0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2900, src obj: 1, src ofs: 0x170d1, dst obj: 3, dst ofs: 0x295c0
   170d5:	e8 c6 30 01 00       	call   GetDlgFileString
   170da:	89 c6                	mov    esi,eax
   170dc:	e9 cd fe ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_96:
   170e1:	b8 ee 01 00 00       	mov    eax,0x1ee
   170e6:	e8 b5 30 01 00       	call   GetDlgFileString
   170eb:	89 c2                	mov    edx,eax
   170ed:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2899, src obj: 1, src ofs: 0x170ee, dst obj: 3, dst ofs: 0x294c0
   170f2:	e8 63 a3 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   170f7:	85 c0                	test   eax,eax
   170f9:	0f 85 82 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_97
   170ff:	b8 cf 26 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_174                          ; fixup: num: 2898, src obj: 1, src ofs: 0x17100, dst obj: 3, dst ofs: 0x26cf
   17104:	e8 87 56 05 00       	call   check_script_flag
   17109:	84 c0                	test   al,al
   1710b:	75 74                	jne    talk_to_MR_POTTSDAM_branch_97
   1710d:	ba e1 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_175                          ; fixup: num: 2914, src obj: 1, src ofs: 0x1710e, dst obj: 3, dst ofs: 0x26e1
   17112:	b8 ee 29 00 00       	mov    eax,0x29ee
   17117:	31 db                	xor    ebx,ebx
   17119:	e8 72 35 05 00       	call   play_wav
   1711e:	ba e4 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_176                          ; fixup: num: 2913, src obj: 1, src ofs: 0x1711f, dst obj: 3, dst ofs: 0x26e4
   17123:	b8 f3 29 00 00       	mov    eax,0x29f3
   17128:	31 db                	xor    ebx,ebx
   1712a:	e8 61 35 05 00       	call   play_wav
   1712f:	bb 04 00 00 00       	mov    ebx,0x4
   17134:	ba ed 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_177                          ; fixup: num: 2912, src obj: 1, src ofs: 0x17135, dst obj: 3, dst ofs: 0x26ed
   17139:	b8 f4 29 00 00       	mov    eax,0x29f4
   1713e:	e8 4d 35 05 00       	call   play_wav
   17143:	bb 04 00 00 00       	mov    ebx,0x4
   17148:	ba f6 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_178                          ; fixup: num: 2911, src obj: 1, src ofs: 0x17149, dst obj: 3, dst ofs: 0x26f6
   1714d:	b8 f5 29 00 00       	mov    eax,0x29f5
   17152:	e8 39 35 05 00       	call   play_wav
   17157:	bb 04 00 00 00       	mov    ebx,0x4
   1715c:	ba ff 26 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_179                          ; fixup: num: 2910, src obj: 1, src ofs: 0x1715d, dst obj: 3, dst ofs: 0x26ff
   17161:	b8 f6 29 00 00       	mov    eax,0x29f6
   17166:	e8 25 35 05 00       	call   play_wav
   1716b:	b8 ef 01 00 00       	mov    eax,0x1ef
   17170:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2909, src obj: 1, src ofs: 0x17171, dst obj: 3, dst ofs: 0x295c0
   17175:	e8 26 30 01 00       	call   GetDlgFileString
   1717a:	89 c6                	mov    esi,eax
   1717c:	e9 2d fe ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_97:
   17181:	b8 f0 01 00 00       	mov    eax,0x1f0
   17186:	e8 15 30 01 00       	call   GetDlgFileString
   1718b:	89 c2                	mov    edx,eax
   1718d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2908, src obj: 1, src ofs: 0x1718e, dst obj: 3, dst ofs: 0x294c0
   17192:	e8 c3 a2 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17197:	85 c0                	test   eax,eax
   17199:	0f 85 df 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_102
   1719f:	b8 01 00 00 00       	mov    eax,0x1
   171a4:	31 d2                	xor    edx,edx
   171a6:	e8 65 11 01 00       	call   SEEN_FATHER
   171ab:	85 c0                	test   eax,eax
   171ad:	75 26                	jne    talk_to_MR_POTTSDAM_branch_99
   171af:	b8 08 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_180                          ; fixup: num: 2907, src obj: 1, src ofs: 0x171b0, dst obj: 3, dst ofs: 0x2708
   171b4:	e8 d7 55 05 00       	call   check_script_flag
   171b9:	84 c0                	test   al,al
   171bb:	74 0c                	je     talk_to_MR_POTTSDAM_branch_98
   171bd:	ba 17 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_181                          ; fixup: num: 2924, src obj: 1, src ofs: 0x171be, dst obj: 3, dst ofs: 0x2717
   171c2:	b8 09 2a 00 00       	mov    eax,0x2a09
   171c7:	eb 16                	jmp    talk_to_MR_POTTSDAM_branch_100
talk_to_MR_POTTSDAM_branch_98:
   171c9:	ba 1a 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_182                          ; fixup: num: 2923, src obj: 1, src ofs: 0x171ca, dst obj: 3, dst ofs: 0x271a
   171ce:	b8 08 2a 00 00       	mov    eax,0x2a08
   171d3:	eb 0a                	jmp    talk_to_MR_POTTSDAM_branch_100
talk_to_MR_POTTSDAM_branch_99:
   171d5:	ba 1d 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_183                          ; fixup: num: 2922, src obj: 1, src ofs: 0x171d6, dst obj: 3, dst ofs: 0x271d
   171da:	b8 0d 2a 00 00       	mov    eax,0x2a0d
talk_to_MR_POTTSDAM_branch_100:
   171df:	31 db                	xor    ebx,ebx
   171e1:	e8 aa 34 05 00       	call   play_wav
   171e6:	bb 04 00 00 00       	mov    ebx,0x4
   171eb:	ba 20 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_184                          ; fixup: num: 2921, src obj: 1, src ofs: 0x171ec, dst obj: 3, dst ofs: 0x2720
   171f0:	b8 12 2a 00 00       	mov    eax,0x2a12
   171f5:	e8 96 34 05 00       	call   play_wav
   171fa:	ba 29 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_185                          ; fixup: num: 2920, src obj: 1, src ofs: 0x171fb, dst obj: 3, dst ofs: 0x2729
   171ff:	b8 16 2a 00 00       	mov    eax,0x2a16
   17204:	31 db                	xor    ebx,ebx
   17206:	e8 85 34 05 00       	call   play_wav
   1720b:	bb 01 00 00 00       	mov    ebx,0x1
   17210:	ba 2c 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_186                          ; fixup: num: 2919, src obj: 1, src ofs: 0x17211, dst obj: 3, dst ofs: 0x272c
   17215:	b8 1b 2a 00 00       	mov    eax,0x2a1b
   1721a:	e8 71 34 05 00       	call   play_wav
   1721f:	ba 35 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_187                          ; fixup: num: 2918, src obj: 1, src ofs: 0x17220, dst obj: 3, dst ofs: 0x2735
   17224:	b8 22 2a 00 00       	mov    eax,0x2a22
   17229:	31 db                	xor    ebx,ebx
   1722b:	e8 60 34 05 00       	call   play_wav
   17230:	bb 04 00 00 00       	mov    ebx,0x4
   17235:	ba 38 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_188                          ; fixup: num: 2917, src obj: 1, src ofs: 0x17236, dst obj: 3, dst ofs: 0x2738
   1723a:	b8 26 2a 00 00       	mov    eax,0x2a26
   1723f:	e8 4c 34 05 00       	call   play_wav
   17244:	b8 41 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_189                          ; fixup: num: 2916, src obj: 1, src ofs: 0x17245, dst obj: 3, dst ofs: 0x2741
   17249:	e8 42 55 05 00       	call   check_script_flag
   1724e:	84 c0                	test   al,al
   17250:	75 16                	jne    talk_to_MR_POTTSDAM_branch_101
   17252:	b8 f1 01 00 00       	mov    eax,0x1f1
   17257:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2915, src obj: 1, src ofs: 0x17258, dst obj: 3, dst ofs: 0x295c0
   1725c:	e8 3f 2f 01 00       	call   GetDlgFileString
   17261:	89 c6                	mov    esi,eax
   17263:	e9 46 fd ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_101:
   17268:	b8 f2 01 00 00       	mov    eax,0x1f2
   1726d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2931, src obj: 1, src ofs: 0x1726e, dst obj: 3, dst ofs: 0x295c0
   17272:	e8 29 2f 01 00       	call   GetDlgFileString
   17277:	89 c6                	mov    esi,eax
   17279:	e9 30 fd ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_102:
   1727e:	b8 f3 01 00 00       	mov    eax,0x1f3
   17283:	e8 18 2f 01 00       	call   GetDlgFileString
   17288:	89 c2                	mov    edx,eax
   1728a:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2930, src obj: 1, src ofs: 0x1728b, dst obj: 3, dst ofs: 0x294c0
   1728f:	e8 c6 a1 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17294:	85 c0                	test   eax,eax
   17296:	0f 85 b1 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_107
   1729c:	bb 01 00 00 00       	mov    ebx,0x1
   172a1:	ba 53 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_190                          ; fixup: num: 2929, src obj: 1, src ofs: 0x172a2, dst obj: 3, dst ofs: 0x2753
   172a6:	b8 31 2a 00 00       	mov    eax,0x2a31
   172ab:	e8 e0 33 05 00       	call   play_wav
   172b0:	b8 f4 01 00 00       	mov    eax,0x1f4
   172b5:	e8 e6 2e 01 00       	call   GetDlgFileString
   172ba:	e8 51 3c 05 00       	call   get_response
   172bf:	83 f8 01             	cmp    eax,0x1
   172c2:	75 11                	jne    talk_to_MR_POTTSDAM_branch_103
   172c4:	bb 02 00 00 00       	mov    ebx,0x2
   172c9:	ba 5c 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_191                          ; fixup: num: 2928, src obj: 1, src ofs: 0x172ca, dst obj: 3, dst ofs: 0x275c
   172ce:	b8 3c 2a 00 00       	mov    eax,0x2a3c
   172d3:	eb 14                	jmp    talk_to_MR_POTTSDAM_branch_104
talk_to_MR_POTTSDAM_branch_103:
   172d5:	83 f8 02             	cmp    eax,0x2
   172d8:	75 14                	jne    talk_to_MR_POTTSDAM_branch_105
   172da:	bb 01 00 00 00       	mov    ebx,0x1
   172df:	ba 65 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_192                          ; fixup: num: 2927, src obj: 1, src ofs: 0x172e0, dst obj: 3, dst ofs: 0x2765
   172e4:	b8 42 2a 00 00       	mov    eax,0x2a42
talk_to_MR_POTTSDAM_branch_104:
   172e9:	e8 a2 33 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_105:
   172ee:	ba 6e 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_193                          ; fixup: num: 2926, src obj: 1, src ofs: 0x172ef, dst obj: 3, dst ofs: 0x276e
   172f3:	b8 4c 2a 00 00       	mov    eax,0x2a4c
   172f8:	31 db                	xor    ebx,ebx
   172fa:	e8 91 33 05 00       	call   play_wav
   172ff:	bb 01 00 00 00       	mov    ebx,0x1
   17304:	ba 77 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_194                          ; fixup: num: 2925, src obj: 1, src ofs: 0x17305, dst obj: 3, dst ofs: 0x2777
   17309:	b8 55 2a 00 00       	mov    eax,0x2a55
   1730e:	e8 7d 33 05 00       	call   play_wav
   17313:	b8 80 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_195                          ; fixup: num: 2940, src obj: 1, src ofs: 0x17314, dst obj: 3, dst ofs: 0x2780
   17318:	e8 73 54 05 00       	call   check_script_flag
   1731d:	84 c0                	test   al,al
   1731f:	75 16                	jne    talk_to_MR_POTTSDAM_branch_106
   17321:	b8 f5 01 00 00       	mov    eax,0x1f5
   17326:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2939, src obj: 1, src ofs: 0x17327, dst obj: 3, dst ofs: 0x295c0
   1732b:	e8 70 2e 01 00       	call   GetDlgFileString
   17330:	89 c6                	mov    esi,eax
   17332:	e9 77 fc ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_106:
   17337:	b8 f6 01 00 00       	mov    eax,0x1f6
   1733c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2938, src obj: 1, src ofs: 0x1733d, dst obj: 3, dst ofs: 0x295c0
   17341:	e8 5a 2e 01 00       	call   GetDlgFileString
   17346:	89 c6                	mov    esi,eax
   17348:	e9 61 fc ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_107:
   1734d:	b8 f7 01 00 00       	mov    eax,0x1f7
   17352:	e8 49 2e 01 00       	call   GetDlgFileString
   17357:	89 c2                	mov    edx,eax
   17359:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2937, src obj: 1, src ofs: 0x1735a, dst obj: 3, dst ofs: 0x294c0
   1735e:	e8 f7 a0 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17363:	85 c0                	test   eax,eax
   17365:	75 35                	jne    talk_to_MR_POTTSDAM_branch_108
   17367:	b8 92 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_196                          ; fixup: num: 2936, src obj: 1, src ofs: 0x17368, dst obj: 3, dst ofs: 0x2792
   1736c:	e8 1f 54 05 00       	call   check_script_flag
   17371:	84 c0                	test   al,al
   17373:	75 27                	jne    talk_to_MR_POTTSDAM_branch_108
   17375:	ba a4 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_197                          ; fixup: num: 2935, src obj: 1, src ofs: 0x17376, dst obj: 3, dst ofs: 0x27a4
   1737a:	b8 5e 2a 00 00       	mov    eax,0x2a5e
   1737f:	31 db                	xor    ebx,ebx
   17381:	e8 0a 33 05 00       	call   play_wav
   17386:	b8 f8 01 00 00       	mov    eax,0x1f8
   1738b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2934, src obj: 1, src ofs: 0x1738c, dst obj: 3, dst ofs: 0x295c0
   17390:	e8 0b 2e 01 00       	call   GetDlgFileString
   17395:	89 c6                	mov    esi,eax
   17397:	e9 12 fc ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_108:
   1739c:	b8 f9 01 00 00       	mov    eax,0x1f9
   173a1:	e8 fa 2d 01 00       	call   GetDlgFileString
   173a6:	89 c2                	mov    edx,eax
   173a8:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2933, src obj: 1, src ofs: 0x173a9, dst obj: 3, dst ofs: 0x294c0
   173ad:	e8 a8 a0 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   173b2:	85 c0                	test   eax,eax
   173b4:	75 6b                	jne    talk_to_MR_POTTSDAM_branch_112
   173b6:	b8 ad 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_198                          ; fixup: num: 2932, src obj: 1, src ofs: 0x173b7, dst obj: 3, dst ofs: 0x27ad
   173bb:	e8 d0 53 05 00       	call   check_script_flag
   173c0:	84 c0                	test   al,al
   173c2:	75 5d                	jne    talk_to_MR_POTTSDAM_branch_112
   173c4:	b8 fa 01 00 00       	mov    eax,0x1fa
   173c9:	e8 d2 2d 01 00       	call   GetDlgFileString
   173ce:	e8 3d 3b 05 00       	call   get_response
   173d3:	83 f8 01             	cmp    eax,0x1
   173d6:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_109
   173d8:	ba bf 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_199                          ; fixup: num: 2947, src obj: 1, src ofs: 0x173d9, dst obj: 3, dst ofs: 0x27bf
   173dd:	b8 73 2a 00 00       	mov    eax,0x2a73
   173e2:	eb 0f                	jmp    talk_to_MR_POTTSDAM_branch_110
talk_to_MR_POTTSDAM_branch_109:
   173e4:	83 f8 02             	cmp    eax,0x2
   173e7:	75 11                	jne    talk_to_MR_POTTSDAM_branch_111
   173e9:	ba c8 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_200                          ; fixup: num: 2946, src obj: 1, src ofs: 0x173ea, dst obj: 3, dst ofs: 0x27c8
   173ee:	b8 7c 2a 00 00       	mov    eax,0x2a7c
talk_to_MR_POTTSDAM_branch_110:
   173f3:	31 db                	xor    ebx,ebx
   173f5:	e8 96 32 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_111:
   173fa:	ba d1 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_201                          ; fixup: num: 2945, src obj: 1, src ofs: 0x173fb, dst obj: 3, dst ofs: 0x27d1
   173ff:	b8 81 2a 00 00       	mov    eax,0x2a81
   17404:	31 db                	xor    ebx,ebx
   17406:	e8 85 32 05 00       	call   play_wav
   1740b:	b8 fb 01 00 00       	mov    eax,0x1fb
   17410:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2944, src obj: 1, src ofs: 0x17411, dst obj: 3, dst ofs: 0x295c0
   17415:	e8 86 2d 01 00       	call   GetDlgFileString
   1741a:	89 c6                	mov    esi,eax
   1741c:	e9 8d fb ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_112:
   17421:	b8 fd 01 00 00       	mov    eax,0x1fd
   17426:	e8 75 2d 01 00       	call   GetDlgFileString
   1742b:	89 c2                	mov    edx,eax
   1742d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2943, src obj: 1, src ofs: 0x1742e, dst obj: 3, dst ofs: 0x294c0
   17432:	e8 23 a0 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17437:	85 c0                	test   eax,eax
   17439:	75 55                	jne    talk_to_MR_POTTSDAM_branch_113
   1743b:	b8 da 27 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_202                          ; fixup: num: 2942, src obj: 1, src ofs: 0x1743c, dst obj: 3, dst ofs: 0x27da
   17440:	e8 4b 53 05 00       	call   check_script_flag
   17445:	84 c0                	test   al,al
   17447:	75 47                	jne    talk_to_MR_POTTSDAM_branch_113
   17449:	ba 01 00 00 00       	mov    edx,0x1
   1744e:	31 c0                	xor    eax,eax
   17450:	e8 6b 10 01 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   17455:	31 db                	xor    ebx,ebx
   17457:	ba ec 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_203                          ; fixup: num: 2941, src obj: 1, src ofs: 0x17458, dst obj: 3, dst ofs: 0x27ec
   1745c:	b8 8b 2a 00 00       	mov    eax,0x2a8b
   17461:	e8 2a 32 05 00       	call   play_wav
   17466:	bb 01 00 00 00       	mov    ebx,0x1
   1746b:	ba ef 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_204                          ; fixup: num: 2956, src obj: 1, src ofs: 0x1746c, dst obj: 3, dst ofs: 0x27ef
   17470:	b8 a2 2a 00 00       	mov    eax,0x2aa2
   17475:	e8 16 32 05 00       	call   play_wav
   1747a:	b8 fe 01 00 00       	mov    eax,0x1fe
   1747f:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2955, src obj: 1, src ofs: 0x17480, dst obj: 3, dst ofs: 0x295c0
   17484:	e8 17 2d 01 00       	call   GetDlgFileString
   17489:	89 c6                	mov    esi,eax
   1748b:	e9 1e fb ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_113:
   17490:	b8 ff 01 00 00       	mov    eax,0x1ff
   17495:	e8 06 2d 01 00       	call   GetDlgFileString
   1749a:	89 c2                	mov    edx,eax
   1749c:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2954, src obj: 1, src ofs: 0x1749d, dst obj: 3, dst ofs: 0x294c0
   174a1:	e8 b4 9f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   174a6:	85 c0                	test   eax,eax
   174a8:	75 27                	jne    talk_to_MR_POTTSDAM_branch_114
   174aa:	ba f8 27 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_205                          ; fixup: num: 2953, src obj: 1, src ofs: 0x174ab, dst obj: 3, dst ofs: 0x27f8
   174af:	b8 af 2a 00 00       	mov    eax,0x2aaf
   174b4:	31 db                	xor    ebx,ebx
   174b6:	e8 d5 31 05 00       	call   play_wav
   174bb:	b8 00 02 00 00       	mov    eax,0x200
   174c0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2952, src obj: 1, src ofs: 0x174c1, dst obj: 3, dst ofs: 0x295c0
   174c5:	e8 d6 2c 01 00       	call   GetDlgFileString
   174ca:	89 c6                	mov    esi,eax
   174cc:	e9 dd fa ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_114:
   174d1:	b8 01 02 00 00       	mov    eax,0x201
   174d6:	e8 c5 2c 01 00       	call   GetDlgFileString
   174db:	89 c2                	mov    edx,eax
   174dd:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2951, src obj: 1, src ofs: 0x174de, dst obj: 3, dst ofs: 0x294c0
   174e2:	e8 73 9f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   174e7:	85 c0                	test   eax,eax
   174e9:	74 1a                	je     talk_to_MR_POTTSDAM_branch_115
   174eb:	b8 02 02 00 00       	mov    eax,0x202
   174f0:	e8 ab 2c 01 00       	call   GetDlgFileString
   174f5:	89 c2                	mov    edx,eax
   174f7:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2950, src obj: 1, src ofs: 0x174f8, dst obj: 3, dst ofs: 0x294c0
   174fc:	e8 59 9f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17501:	85 c0                	test   eax,eax
   17503:	75 35                	jne    talk_to_MR_POTTSDAM_branch_116
talk_to_MR_POTTSDAM_branch_115:
   17505:	b8 01 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_206                          ; fixup: num: 2949, src obj: 1, src ofs: 0x17506, dst obj: 3, dst ofs: 0x2801
   1750a:	e8 81 52 05 00       	call   check_script_flag
   1750f:	84 c0                	test   al,al
   17511:	75 27                	jne    talk_to_MR_POTTSDAM_branch_116
   17513:	ba 13 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_207                          ; fixup: num: 2948, src obj: 1, src ofs: 0x17514, dst obj: 3, dst ofs: 0x2813
   17518:	b8 bb 2a 00 00       	mov    eax,0x2abb
   1751d:	31 db                	xor    ebx,ebx
   1751f:	e8 6c 31 05 00       	call   play_wav
   17524:	b8 03 02 00 00       	mov    eax,0x203
   17529:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2828, src obj: 1, src ofs: 0x1752a, dst obj: 3, dst ofs: 0x295c0
   1752e:	e8 6d 2c 01 00       	call   GetDlgFileString
   17533:	89 c6                	mov    esi,eax
   17535:	e9 74 fa ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_116:
   1753a:	b8 04 02 00 00       	mov    eax,0x204
   1753f:	e8 5c 2c 01 00       	call   GetDlgFileString
   17544:	89 c2                	mov    edx,eax
   17546:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2827, src obj: 1, src ofs: 0x17547, dst obj: 3, dst ofs: 0x294c0
   1754b:	e8 0a 9f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17550:	85 c0                	test   eax,eax
   17552:	0f 84 a4 00 00 00    	je     talk_to_MR_POTTSDAM_branch_117
   17558:	b8 05 02 00 00       	mov    eax,0x205
   1755d:	e8 3e 2c 01 00       	call   GetDlgFileString
   17562:	89 c2                	mov    edx,eax
   17564:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2826, src obj: 1, src ofs: 0x17565, dst obj: 3, dst ofs: 0x294c0
   17569:	e8 ec 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1756e:	85 c0                	test   eax,eax
   17570:	0f 84 86 00 00 00    	je     talk_to_MR_POTTSDAM_branch_117
   17576:	b8 06 02 00 00       	mov    eax,0x206
   1757b:	e8 20 2c 01 00       	call   GetDlgFileString
   17580:	89 c2                	mov    edx,eax
   17582:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2825, src obj: 1, src ofs: 0x17583, dst obj: 3, dst ofs: 0x294c0
   17587:	e8 ce 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1758c:	85 c0                	test   eax,eax
   1758e:	74 6c                	je     talk_to_MR_POTTSDAM_branch_117
   17590:	b8 07 02 00 00       	mov    eax,0x207
   17595:	e8 06 2c 01 00       	call   GetDlgFileString
   1759a:	89 c2                	mov    edx,eax
   1759c:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2958, src obj: 1, src ofs: 0x1759d, dst obj: 3, dst ofs: 0x294c0
   175a1:	e8 b4 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   175a6:	85 c0                	test   eax,eax
   175a8:	74 52                	je     talk_to_MR_POTTSDAM_branch_117
   175aa:	b8 08 02 00 00       	mov    eax,0x208
   175af:	e8 ec 2b 01 00       	call   GetDlgFileString
   175b4:	89 c2                	mov    edx,eax
   175b6:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2957, src obj: 1, src ofs: 0x175b7, dst obj: 3, dst ofs: 0x294c0
   175bb:	e8 9a 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   175c0:	85 c0                	test   eax,eax
   175c2:	74 38                	je     talk_to_MR_POTTSDAM_branch_117
   175c4:	b8 09 02 00 00       	mov    eax,0x209
   175c9:	e8 d2 2b 01 00       	call   GetDlgFileString
   175ce:	89 c2                	mov    edx,eax
   175d0:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2835, src obj: 1, src ofs: 0x175d1, dst obj: 3, dst ofs: 0x294c0
   175d5:	e8 80 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   175da:	85 c0                	test   eax,eax
   175dc:	74 1e                	je     talk_to_MR_POTTSDAM_branch_117
   175de:	b8 0a 02 00 00       	mov    eax,0x20a
   175e3:	e8 b8 2b 01 00       	call   GetDlgFileString
   175e8:	89 c2                	mov    edx,eax
   175ea:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2834, src obj: 1, src ofs: 0x175eb, dst obj: 3, dst ofs: 0x294c0
   175ef:	e8 66 9e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   175f4:	85 c0                	test   eax,eax
   175f6:	0f 85 47 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_123
talk_to_MR_POTTSDAM_branch_117:
   175fc:	b8 1c 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_208                          ; fixup: num: 2833, src obj: 1, src ofs: 0x175fd, dst obj: 3, dst ofs: 0x281c
   17601:	e8 8a 51 05 00       	call   check_script_flag
   17606:	84 c0                	test   al,al
   17608:	0f 85 1f 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_122
   1760e:	ba 2e 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_209                          ; fixup: num: 2832, src obj: 1, src ofs: 0x1760f, dst obj: 3, dst ofs: 0x282e
   17613:	b8 ff 2c 00 00       	mov    eax,0x2cff
   17618:	31 db                	xor    ebx,ebx
   1761a:	e8 71 30 05 00       	call   play_wav
   1761f:	ba 37 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_210                          ; fixup: num: 2831, src obj: 1, src ofs: 0x17620, dst obj: 3, dst ofs: 0x2837
   17624:	b8 03 2d 00 00       	mov    eax,0x2d03
   17629:	31 db                	xor    ebx,ebx
   1762b:	e8 60 30 05 00       	call   play_wav
   17630:	ba 3a 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_211                          ; fixup: num: 2830, src obj: 1, src ofs: 0x17631, dst obj: 3, dst ofs: 0x283a
   17635:	b8 08 2d 00 00       	mov    eax,0x2d08
   1763a:	31 db                	xor    ebx,ebx
   1763c:	e8 4f 30 05 00       	call   play_wav
   17641:	b8 0b 02 00 00       	mov    eax,0x20b
   17646:	e8 55 2b 01 00       	call   GetDlgFileString
   1764b:	e8 c0 38 05 00       	call   get_response
   17650:	83 f8 01             	cmp    eax,0x1
   17653:	75 11                	jne    talk_to_MR_POTTSDAM_branch_118
   17655:	bb 02 00 00 00       	mov    ebx,0x2
   1765a:	ba 43 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_212                          ; fixup: num: 2829, src obj: 1, src ofs: 0x1765b, dst obj: 3, dst ofs: 0x2843
   1765f:	b8 14 2d 00 00       	mov    eax,0x2d14
   17664:	eb 52                	jmp    talk_to_MR_POTTSDAM_branch_120
talk_to_MR_POTTSDAM_branch_118:
   17666:	83 f8 02             	cmp    eax,0x2
   17669:	75 39                	jne    talk_to_MR_POTTSDAM_branch_119
   1766b:	bb 04 00 00 00       	mov    ebx,0x4
   17670:	ba 4c 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_213                          ; fixup: num: 2845, src obj: 1, src ofs: 0x17671, dst obj: 3, dst ofs: 0x284c
   17675:	b8 19 2d 00 00       	mov    eax,0x2d19
   1767a:	e8 11 30 05 00       	call   play_wav
   1767f:	bb 02 00 00 00       	mov    ebx,0x2
   17684:	ba 55 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_214                          ; fixup: num: 2844, src obj: 1, src ofs: 0x17685, dst obj: 3, dst ofs: 0x2855
   17689:	b8 1d 2d 00 00       	mov    eax,0x2d1d
   1768e:	e8 fd 2f 05 00       	call   play_wav
   17693:	bb 01 00 00 00       	mov    ebx,0x1
   17698:	ba 58 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_215                          ; fixup: num: 2843, src obj: 1, src ofs: 0x17699, dst obj: 3, dst ofs: 0x2858
   1769d:	b8 22 2d 00 00       	mov    eax,0x2d22
   176a2:	eb 14                	jmp    talk_to_MR_POTTSDAM_branch_120
talk_to_MR_POTTSDAM_branch_119:
   176a4:	83 f8 03             	cmp    eax,0x3
   176a7:	75 14                	jne    talk_to_MR_POTTSDAM_branch_121
   176a9:	bb 01 00 00 00       	mov    ebx,0x1
   176ae:	ba 61 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_216                          ; fixup: num: 2842, src obj: 1, src ofs: 0x176af, dst obj: 3, dst ofs: 0x2861
   176b3:	b8 28 2d 00 00       	mov    eax,0x2d28
talk_to_MR_POTTSDAM_branch_120:
   176b8:	e8 d3 2f 05 00       	call   play_wav
talk_to_MR_POTTSDAM_branch_121:
   176bd:	ba 6a 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_217                          ; fixup: num: 2841, src obj: 1, src ofs: 0x176be, dst obj: 3, dst ofs: 0x286a
   176c2:	b8 2c 2d 00 00       	mov    eax,0x2d2c
   176c7:	31 db                	xor    ebx,ebx
   176c9:	e8 c2 2f 05 00       	call   play_wav
   176ce:	ba 6d 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_218                          ; fixup: num: 2840, src obj: 1, src ofs: 0x176cf, dst obj: 3, dst ofs: 0x286d
   176d3:	b8 30 2d 00 00       	mov    eax,0x2d30
   176d8:	31 db                	xor    ebx,ebx
   176da:	e8 b1 2f 05 00       	call   play_wav
   176df:	ba 76 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_219                          ; fixup: num: 2839, src obj: 1, src ofs: 0x176e0, dst obj: 3, dst ofs: 0x2876
   176e4:	b8 35 2d 00 00       	mov    eax,0x2d35
   176e9:	31 db                	xor    ebx,ebx
   176eb:	e8 a0 2f 05 00       	call   play_wav
   176f0:	ba 01 00 00 00       	mov    edx,0x1
   176f5:	31 c0                	xor    eax,eax
   176f7:	e8 a4 0d 01 00       	call   TOLD_POTTSDAM_TO_FIX_THE_HOLE
   176fc:	31 db                	xor    ebx,ebx
   176fe:	ba 79 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_220                          ; fixup: num: 2838, src obj: 1, src ofs: 0x176ff, dst obj: 3, dst ofs: 0x2879
   17703:	b8 39 2d 00 00       	mov    eax,0x2d39
   17708:	be 85 28 00 00       	mov    esi,@obj3:mr_potts_cpp_variable_222                          ; fixup: num: 2837, src obj: 1, src ofs: 0x17709, dst obj: 3, dst ofs: 0x2885
   1770d:	e8 7e 2f 05 00       	call   play_wav
   17712:	ba 82 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_221                          ; fixup: num: 2836, src obj: 1, src ofs: 0x17713, dst obj: 3, dst ofs: 0x2882
   17717:	b8 3e 2d 00 00       	mov    eax,0x2d3e
   1771c:	31 db                	xor    ebx,ebx
   1771e:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 2853, src obj: 1, src ofs: 0x1771f, dst obj: 3, dst ofs: 0x294c0
   17723:	e8 68 2f 05 00       	call   play_wav
   17728:	e9 81 f8 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_91
talk_to_MR_POTTSDAM_branch_122:
   1772d:	ba 86 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_223                          ; fixup: num: 2852, src obj: 1, src ofs: 0x1772e, dst obj: 3, dst ofs: 0x2886
   17732:	b8 d9 2b 00 00       	mov    eax,0x2bd9
   17737:	31 db                	xor    ebx,ebx
   17739:	e8 52 2f 05 00       	call   play_wav
   1773e:	e9 85 f8 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_123:
   17743:	b8 0c 02 00 00       	mov    eax,0x20c
   17748:	e8 53 2a 01 00       	call   GetDlgFileString
   1774d:	89 c2                	mov    edx,eax
   1774f:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2851, src obj: 1, src ofs: 0x17750, dst obj: 3, dst ofs: 0x294c0
   17754:	e8 01 9d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17759:	85 c0                	test   eax,eax
   1775b:	74 38                	je     talk_to_MR_POTTSDAM_branch_124
   1775d:	b8 0d 02 00 00       	mov    eax,0x20d
   17762:	e8 39 2a 01 00       	call   GetDlgFileString
   17767:	89 c2                	mov    edx,eax
   17769:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2850, src obj: 1, src ofs: 0x1776a, dst obj: 3, dst ofs: 0x294c0
   1776e:	e8 e7 9c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17773:	85 c0                	test   eax,eax
   17775:	74 1e                	je     talk_to_MR_POTTSDAM_branch_124
   17777:	b8 0e 02 00 00       	mov    eax,0x20e
   1777c:	e8 1f 2a 01 00       	call   GetDlgFileString
   17781:	89 c2                	mov    edx,eax
   17783:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2849, src obj: 1, src ofs: 0x17784, dst obj: 3, dst ofs: 0x294c0
   17788:	e8 cd 9c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1778d:	85 c0                	test   eax,eax
   1778f:	0f 85 cf 02 00 00    	jne    talk_to_MR_POTTSDAM_branch_144
talk_to_MR_POTTSDAM_branch_124:
   17795:	b8 8f 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_224                          ; fixup: num: 2848, src obj: 1, src ofs: 0x17796, dst obj: 3, dst ofs: 0x288f
   1779a:	e8 f1 4f 05 00       	call   check_script_flag
   1779f:	84 c0                	test   al,al
   177a1:	0f 84 a7 02 00 00    	je     talk_to_MR_POTTSDAM_branch_143
   177a7:	b8 9e 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_225                          ; fixup: num: 2847, src obj: 1, src ofs: 0x177a8, dst obj: 3, dst ofs: 0x289e
   177ac:	e8 df 4f 05 00       	call   check_script_flag
   177b1:	84 c0                	test   al,al
   177b3:	0f 85 95 02 00 00    	jne    talk_to_MR_POTTSDAM_branch_143
   177b9:	b8 b0 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_226                          ; fixup: num: 2846, src obj: 1, src ofs: 0x177ba, dst obj: 3, dst ofs: 0x28b0
   177be:	e8 cd 4f 05 00       	call   check_script_flag
   177c3:	84 c0                	test   al,al
   177c5:	0f 85 83 02 00 00    	jne    talk_to_MR_POTTSDAM_branch_143
   177cb:	bb 02 00 00 00       	mov    ebx,0x2
   177d0:	ba c1 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_227                          ; fixup: num: 2859, src obj: 1, src ofs: 0x177d1, dst obj: 3, dst ofs: 0x28c1
   177d5:	b8 58 2d 00 00       	mov    eax,0x2d58
   177da:	e8 b1 2e 05 00       	call   play_wav
   177df:	bb 01 00 00 00       	mov    ebx,0x1
   177e4:	ba ca 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_228                          ; fixup: num: 2858, src obj: 1, src ofs: 0x177e5, dst obj: 3, dst ofs: 0x28ca
   177e9:	b8 60 2d 00 00       	mov    eax,0x2d60
   177ee:	e8 9d 2e 05 00       	call   play_wav
   177f3:	bb 04 00 00 00       	mov    ebx,0x4
   177f8:	ba d4 28 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_229                          ; fixup: num: 2857, src obj: 1, src ofs: 0x177f9, dst obj: 3, dst ofs: 0x28d4
   177fd:	b8 65 2d 00 00       	mov    eax,0x2d65
   17802:	e8 89 2e 05 00       	call   play_wav
   17807:	b8 01 00 00 00       	mov    eax,0x1
   1780c:	31 d2                	xor    edx,edx
   1780e:	e8 dd 0a 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
   17813:	85 c0                	test   eax,eax
   17815:	75 12                	jne    talk_to_MR_POTTSDAM_branch_125
   17817:	b8 dd 28 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_230                          ; fixup: num: 2856, src obj: 1, src ofs: 0x17818, dst obj: 3, dst ofs: 0x28dd
   1781c:	e8 4f 50 05 00       	call   check_inventory
   17821:	84 c0                	test   al,al
   17823:	0f 84 f8 01 00 00    	je     talk_to_MR_POTTSDAM_branch_142
talk_to_MR_POTTSDAM_branch_125:
   17829:	b8 0f 02 00 00       	mov    eax,0x20f
   1782e:	bf 40 2b 02 00       	mov    edi,@obj3:tempStr                                            ; fixup: num: 2855, src obj: 1, src ofs: 0x1782f, dst obj: 3, dst ofs: 0x22b40
   17833:	e8 68 29 01 00       	call   GetDlgFileString
   17838:	89 c6                	mov    esi,eax
   1783a:	31 d2                	xor    edx,edx
   1783c:	57                   	push   edi
talk_to_MR_POTTSDAM_branch_126:
   1783d:	8a 06                	mov    al,BYTE PTR [esi]
   1783f:	88 07                	mov    BYTE PTR [edi],al
   17841:	3c 00                	cmp    al,0x0
   17843:	74 10                	je     talk_to_MR_POTTSDAM_branch_127
   17845:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   17848:	83 c6 02             	add    esi,0x2
   1784b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1784e:	83 c7 02             	add    edi,0x2
   17851:	3c 00                	cmp    al,0x0
   17853:	75 e8                	jne    talk_to_MR_POTTSDAM_branch_126
talk_to_MR_POTTSDAM_branch_127:
   17855:	5f                   	pop    edi
   17856:	b8 01 00 00 00       	mov    eax,0x1
   1785b:	e8 90 0a 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
   17860:	85 c0                	test   eax,eax
   17862:	74 1f                	je     talk_to_MR_POTTSDAM_branch_128
   17864:	68 e9 28 00 00       	push   @obj3:mr_potts_cpp_variable_231                              ; fixup: num: 2854, src obj: 1, src ofs: 0x17865, dst obj: 3, dst ofs: 0x28e9
   17869:	57                   	push   edi
   1786a:	b8 10 02 00 00       	mov    eax,0x210
   1786f:	e8 2c 29 01 00       	call   GetDlgFileString
   17874:	50                   	push   eax
   17875:	57                   	push   edi
   17876:	b9 01 00 00 00       	mov    ecx,0x1
   1787b:	e8 61 93 05 00       	call   sprintf_
   17880:	83 c4 10             	add    esp,0x10
talk_to_MR_POTTSDAM_branch_128:
   17883:	b8 30 29 00 00       	mov    eax,@obj3:mr_potts_cpp_variable_232                          ; fixup: num: 2865, src obj: 1, src ofs: 0x17884, dst obj: 3, dst ofs: 0x2930
   17888:	e8 e3 4f 05 00       	call   check_inventory
   1788d:	84 c0                	test   al,al
   1788f:	74 28                	je     talk_to_MR_POTTSDAM_branch_129
   17891:	8d 41 02             	lea    eax,[ecx+0x2]
   17894:	68 3c 29 00 00       	push   @obj3:mr_potts_cpp_variable_233                              ; fixup: num: 2864, src obj: 1, src ofs: 0x17895, dst obj: 3, dst ofs: 0x293c
   17899:	01 e8                	add    eax,ebp
   1789b:	50                   	push   eax
   1789c:	68 40 2b 02 00       	push   @obj3:tempStr                                                ; fixup: num: 2863, src obj: 1, src ofs: 0x1789d, dst obj: 3, dst ofs: 0x22b40
   178a1:	b8 12 02 00 00       	mov    eax,0x212
   178a6:	e8 f5 28 01 00       	call   GetDlgFileString
   178ab:	50                   	push   eax
   178ac:	68 40 2b 02 00       	push   @obj3:tempStr                                                ; fixup: num: 2862, src obj: 1, src ofs: 0x178ad, dst obj: 3, dst ofs: 0x22b40
   178b1:	e8 2b 93 05 00       	call   sprintf_
   178b6:	83 c4 14             	add    esp,0x14
talk_to_MR_POTTSDAM_branch_129:
   178b9:	b8 40 2b 02 00       	mov    eax,@obj3:tempStr                                            ; fixup: num: 2861, src obj: 1, src ofs: 0x178ba, dst obj: 3, dst ofs: 0x22b40
   178be:	e8 4d 36 05 00       	call   get_response
   178c3:	89 c2                	mov    edx,eax
   178c5:	83 f8 01             	cmp    eax,0x1
   178c8:	75 19                	jne    talk_to_MR_POTTSDAM_branch_130
   178ca:	bb 02 00 00 00       	mov    ebx,0x2
   178cf:	ba 78 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_234                          ; fixup: num: 2860, src obj: 1, src ofs: 0x178d0, dst obj: 3, dst ofs: 0x2978
   178d4:	b8 7a 2d 00 00       	mov    eax,0x2d7a
   178d9:	e8 b2 2d 05 00       	call   play_wav
   178de:	e9 e5 f6 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_130:
   178e3:	83 f8 02             	cmp    eax,0x2
   178e6:	75 0a                	jne    talk_to_MR_POTTSDAM_branch_131
   178e8:	85 c9                	test   ecx,ecx
   178ea:	75 06                	jne    talk_to_MR_POTTSDAM_branch_131
   178ec:	85 ed                	test   ebp,ebp
   178ee:	75 15                	jne    talk_to_MR_POTTSDAM_branch_133
   178f0:	eb 2a                	jmp    talk_to_MR_POTTSDAM_branch_136
talk_to_MR_POTTSDAM_branch_131:
   178f2:	83 f8 03             	cmp    eax,0x3
   178f5:	74 05                	je     talk_to_MR_POTTSDAM_branch_132
   178f7:	83 f8 04             	cmp    eax,0x4
   178fa:	75 1b                	jne    talk_to_MR_POTTSDAM_branch_135
talk_to_MR_POTTSDAM_branch_132:
   178fc:	83 f9 01             	cmp    ecx,0x1
   178ff:	75 0b                	jne    talk_to_MR_POTTSDAM_branch_134
   17901:	39 cd                	cmp    ebp,ecx
   17903:	75 07                	jne    talk_to_MR_POTTSDAM_branch_134
talk_to_MR_POTTSDAM_branch_133:
   17905:	b8 03 00 00 00       	mov    eax,0x3
   1790a:	eb 15                	jmp    talk_to_MR_POTTSDAM_branch_137
talk_to_MR_POTTSDAM_branch_134:
   1790c:	85 c9                	test   ecx,ecx
   1790e:	75 11                	jne    talk_to_MR_POTTSDAM_branch_137
   17910:	83 fd 01             	cmp    ebp,0x1
   17913:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_137
   17915:	eb 05                	jmp    talk_to_MR_POTTSDAM_branch_136
talk_to_MR_POTTSDAM_branch_135:
   17917:	83 f8 05             	cmp    eax,0x5
   1791a:	75 05                	jne    talk_to_MR_POTTSDAM_branch_137
talk_to_MR_POTTSDAM_branch_136:
   1791c:	b8 04 00 00 00       	mov    eax,0x4
talk_to_MR_POTTSDAM_branch_137:
   17921:	83 f8 02             	cmp    eax,0x2
   17924:	0f 85 9f 00 00 00    	jne    talk_to_MR_POTTSDAM_branch_141
   1792a:	ba 81 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_235                          ; fixup: num: 2870, src obj: 1, src ofs: 0x1792b, dst obj: 3, dst ofs: 0x2981
   1792f:	b8 80 2d 00 00       	mov    eax,0x2d80
   17934:	31 db                	xor    ebx,ebx
   17936:	e8 55 2d 05 00       	call   play_wav
   1793b:	b8 01 00 00 00       	mov    eax,0x1
   17940:	31 d2                	xor    edx,edx
   17942:	e8 f9 0a 01 00       	call   POTTSDAM_CLAIMED_HE_WAS_HOME
   17947:	85 c0                	test   eax,eax
   17949:	74 11                	je     talk_to_MR_POTTSDAM_branch_138
   1794b:	b8 13 02 00 00       	mov    eax,0x213
   17950:	e8 4b 28 01 00       	call   GetDlgFileString
   17955:	e8 b6 35 05 00       	call   get_response
   1795a:	eb 05                	jmp    talk_to_MR_POTTSDAM_branch_139
talk_to_MR_POTTSDAM_branch_138:
   1795c:	b8 01 00 00 00       	mov    eax,0x1
talk_to_MR_POTTSDAM_branch_139:
   17961:	83 f8 01             	cmp    eax,0x1
   17964:	75 19                	jne    talk_to_MR_POTTSDAM_branch_140
   17966:	bb 02 00 00 00       	mov    ebx,0x2
   1796b:	ba 8a 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_236                          ; fixup: num: 2869, src obj: 1, src ofs: 0x1796c, dst obj: 3, dst ofs: 0x298a
   17970:	b8 8e 2d 00 00       	mov    eax,0x2d8e
   17975:	e8 16 2d 05 00       	call   play_wav
   1797a:	e9 49 f6 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_140:
   1797f:	83 f8 02             	cmp    eax,0x2
   17982:	0f 85 40 f6 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   17988:	b8 01 00 00 00       	mov    eax,0x1
   1798d:	31 d2                	xor    edx,edx
   1798f:	e8 ac 0a 01 00       	call   POTTSDAM_CLAIMED_HE_WAS_HOME
   17994:	85 c0                	test   eax,eax
   17996:	0f 84 2c f6 ff ff    	je     talk_to_MR_POTTSDAM_branch_94
   1799c:	bb 02 00 00 00       	mov    ebx,0x2
   179a1:	ba 93 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_237                          ; fixup: num: 2868, src obj: 1, src ofs: 0x179a2, dst obj: 3, dst ofs: 0x2993
   179a6:	b8 93 2d 00 00       	mov    eax,0x2d93
   179ab:	e8 e0 2c 05 00       	call   play_wav
   179b0:	bb 01 00 00 00       	mov    ebx,0x1
   179b5:	ba 9c 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_238                          ; fixup: num: 2867, src obj: 1, src ofs: 0x179b6, dst obj: 3, dst ofs: 0x299c
   179ba:	b8 9c 2d 00 00       	mov    eax,0x2d9c
   179bf:	e8 cc 2c 05 00       	call   play_wav
   179c4:	e9 ff f5 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_141:
   179c9:	83 f8 05             	cmp    eax,0x5
   179cc:	0f 85 f6 f5 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   179d2:	ba a6 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_239                          ; fixup: num: 2866, src obj: 1, src ofs: 0x179d3, dst obj: 3, dst ofs: 0x29a6
   179d7:	b8 b3 2d 00 00       	mov    eax,0x2db3
   179dc:	31 db                	xor    ebx,ebx
   179de:	e8 ad 2c 05 00       	call   play_wav
   179e3:	ba af 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_240                          ; fixup: num: 2878, src obj: 1, src ofs: 0x179e4, dst obj: 3, dst ofs: 0x29af
   179e8:	b8 b8 2d 00 00       	mov    eax,0x2db8
   179ed:	31 db                	xor    ebx,ebx
   179ef:	e8 9c 2c 05 00       	call   play_wav
   179f4:	bb 04 00 00 00       	mov    ebx,0x4
   179f9:	ba b2 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_241                          ; fixup: num: 2877, src obj: 1, src ofs: 0x179fa, dst obj: 3, dst ofs: 0x29b2
   179fe:	b8 bd 2d 00 00       	mov    eax,0x2dbd
   17a03:	e8 88 2c 05 00       	call   play_wav
   17a08:	bb 02 00 00 00       	mov    ebx,0x2
   17a0d:	ba bb 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_242                          ; fixup: num: 2876, src obj: 1, src ofs: 0x17a0e, dst obj: 3, dst ofs: 0x29bb
   17a12:	b8 c2 2d 00 00       	mov    eax,0x2dc2
   17a17:	e8 74 2c 05 00       	call   play_wav
   17a1c:	e9 a7 f5 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_142:
   17a21:	bb 02 00 00 00       	mov    ebx,0x2
   17a26:	ba c4 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_243                          ; fixup: num: 2875, src obj: 1, src ofs: 0x17a27, dst obj: 3, dst ofs: 0x29c4
   17a2b:	b8 46 2e 00 00       	mov    eax,0x2e46
   17a30:	e8 5b 2c 05 00       	call   play_wav
   17a35:	bb 01 00 00 00       	mov    ebx,0x1
   17a3a:	ba c7 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_244                          ; fixup: num: 2874, src obj: 1, src ofs: 0x17a3b, dst obj: 3, dst ofs: 0x29c7
   17a3f:	b8 4a 2e 00 00       	mov    eax,0x2e4a
   17a44:	e8 47 2c 05 00       	call   play_wav
   17a49:	e9 7a f5 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_143:
   17a4e:	ba d0 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_245                          ; fixup: num: 2873, src obj: 1, src ofs: 0x17a4f, dst obj: 3, dst ofs: 0x29d0
   17a53:	b8 d9 2b 00 00       	mov    eax,0x2bd9
   17a58:	31 db                	xor    ebx,ebx
   17a5a:	e8 31 2c 05 00       	call   play_wav
   17a5f:	e9 64 f5 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_144:
   17a64:	b8 14 02 00 00       	mov    eax,0x214
   17a69:	e8 32 27 01 00       	call   GetDlgFileString
   17a6e:	89 c2                	mov    edx,eax
   17a70:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2872, src obj: 1, src ofs: 0x17a71, dst obj: 3, dst ofs: 0x294c0
   17a75:	e8 e0 99 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17a7a:	85 c0                	test   eax,eax
   17a7c:	75 5a                	jne    talk_to_MR_POTTSDAM_branch_146
   17a7e:	ba d9 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_246                          ; fixup: num: 2871, src obj: 1, src ofs: 0x17a7f, dst obj: 3, dst ofs: 0x29d9
   17a83:	b8 d3 2d 00 00       	mov    eax,0x2dd3
   17a88:	31 db                	xor    ebx,ebx
   17a8a:	e8 01 2c 05 00       	call   play_wav
   17a8f:	b8 15 02 00 00       	mov    eax,0x215
   17a94:	e8 07 27 01 00       	call   GetDlgFileString
   17a99:	e8 72 34 05 00       	call   get_response
   17a9e:	83 f8 01             	cmp    eax,0x1
   17aa1:	75 16                	jne    talk_to_MR_POTTSDAM_branch_145
   17aa3:	ba e2 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_247                          ; fixup: num: 2883, src obj: 1, src ofs: 0x17aa4, dst obj: 3, dst ofs: 0x29e2
   17aa8:	89 c3                	mov    ebx,eax
   17aaa:	b8 df 2d 00 00       	mov    eax,0x2ddf
   17aaf:	e8 dc 2b 05 00       	call   play_wav
   17ab4:	e9 0f f5 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_145:
   17ab9:	83 f8 02             	cmp    eax,0x2
   17abc:	0f 85 06 f5 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   17ac2:	ba eb 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_248                          ; fixup: num: 2882, src obj: 1, src ofs: 0x17ac3, dst obj: 3, dst ofs: 0x29eb
   17ac7:	b8 e4 2d 00 00       	mov    eax,0x2de4
   17acc:	31 db                	xor    ebx,ebx
   17ace:	e8 bd 2b 05 00       	call   play_wav
   17ad3:	e9 f0 f4 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_146:
   17ad8:	b8 16 02 00 00       	mov    eax,0x216
   17add:	e8 be 26 01 00       	call   GetDlgFileString
   17ae2:	89 c2                	mov    edx,eax
   17ae4:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2881, src obj: 1, src ofs: 0x17ae5, dst obj: 3, dst ofs: 0x294c0
   17ae9:	e8 6c 99 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17aee:	85 c0                	test   eax,eax
   17af0:	74 38                	je     talk_to_MR_POTTSDAM_branch_147
   17af2:	b8 17 02 00 00       	mov    eax,0x217
   17af7:	e8 a4 26 01 00       	call   GetDlgFileString
   17afc:	89 c2                	mov    edx,eax
   17afe:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2880, src obj: 1, src ofs: 0x17aff, dst obj: 3, dst ofs: 0x294c0
   17b03:	e8 52 99 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17b08:	85 c0                	test   eax,eax
   17b0a:	74 1e                	je     talk_to_MR_POTTSDAM_branch_147
   17b0c:	b8 18 02 00 00       	mov    eax,0x218
   17b11:	e8 8a 26 01 00       	call   GetDlgFileString
   17b16:	89 c2                	mov    edx,eax
   17b18:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2879, src obj: 1, src ofs: 0x17b19, dst obj: 3, dst ofs: 0x294c0
   17b1d:	e8 38 99 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17b22:	85 c0                	test   eax,eax
   17b24:	0f 85 aa 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_152
talk_to_MR_POTTSDAM_branch_147:
   17b2a:	bb 04 00 00 00       	mov    ebx,0x4
   17b2f:	ba f4 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_249                          ; fixup: num: 2889, src obj: 1, src ofs: 0x17b30, dst obj: 3, dst ofs: 0x29f4
   17b34:	b8 ef 2d 00 00       	mov    eax,0x2def
   17b39:	e8 52 2b 05 00       	call   play_wav
   17b3e:	b8 19 02 00 00       	mov    eax,0x219
   17b43:	e8 58 26 01 00       	call   GetDlgFileString
   17b48:	e8 c3 33 05 00       	call   get_response
   17b4d:	83 f8 01             	cmp    eax,0x1
   17b50:	0f 85 12 01 00 00    	jne    talk_to_MR_POTTSDAM_branch_151
   17b56:	bb 02 00 00 00       	mov    ebx,0x2
   17b5b:	ba fd 29 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_250                          ; fixup: num: 2888, src obj: 1, src ofs: 0x17b5c, dst obj: 3, dst ofs: 0x29fd
   17b60:	b8 fb 2d 00 00       	mov    eax,0x2dfb
   17b65:	e8 26 2b 05 00       	call   play_wav
   17b6a:	ba 06 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_251                          ; fixup: num: 2887, src obj: 1, src ofs: 0x17b6b, dst obj: 3, dst ofs: 0x2a06
   17b6f:	b8 01 2e 00 00       	mov    eax,0x2e01
   17b74:	31 db                	xor    ebx,ebx
   17b76:	e8 15 2b 05 00       	call   play_wav
   17b7b:	bb 02 00 00 00       	mov    ebx,0x2
   17b80:	ba 0f 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_252                          ; fixup: num: 2886, src obj: 1, src ofs: 0x17b81, dst obj: 3, dst ofs: 0x2a0f
   17b85:	b8 06 2e 00 00       	mov    eax,0x2e06
   17b8a:	e8 01 2b 05 00       	call   play_wav
   17b8f:	ba 12 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_253                          ; fixup: num: 2885, src obj: 1, src ofs: 0x17b90, dst obj: 3, dst ofs: 0x2a12
   17b94:	b8 0a 2e 00 00       	mov    eax,0x2e0a
   17b99:	31 db                	xor    ebx,ebx
   17b9b:	e8 f0 2a 05 00       	call   play_wav
   17ba0:	b8 1a 02 00 00       	mov    eax,0x21a
   17ba5:	e8 f6 25 01 00       	call   GetDlgFileString
   17baa:	e8 61 33 05 00       	call   get_response
   17baf:	83 f8 01             	cmp    eax,0x1
   17bb2:	75 19                	jne    talk_to_MR_POTTSDAM_branch_148
   17bb4:	bb 03 00 00 00       	mov    ebx,0x3
   17bb9:	ba 1b 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_254                          ; fixup: num: 2884, src obj: 1, src ofs: 0x17bba, dst obj: 3, dst ofs: 0x2a1b
   17bbe:	b8 14 2e 00 00       	mov    eax,0x2e14
   17bc3:	e8 c8 2a 05 00       	call   play_wav
   17bc8:	e9 fb f3 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_148:
   17bcd:	83 f8 02             	cmp    eax,0x2
   17bd0:	0f 85 f2 f3 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   17bd6:	bb 03 00 00 00       	mov    ebx,0x3
   17bdb:	ba 24 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_255                          ; fixup: num: 2765, src obj: 1, src ofs: 0x17bdc, dst obj: 3, dst ofs: 0x2a24
   17be0:	b8 18 2e 00 00       	mov    eax,0x2e18
   17be5:	e8 a6 2a 05 00       	call   play_wav
   17bea:	bb 02 00 00 00       	mov    ebx,0x2
   17bef:	ba 2d 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_256                          ; fixup: num: 2764, src obj: 1, src ofs: 0x17bf0, dst obj: 3, dst ofs: 0x2a2d
   17bf4:	b8 1c 2e 00 00       	mov    eax,0x2e1c
   17bf9:	e8 92 2a 05 00       	call   play_wav
   17bfe:	bb 03 00 00 00       	mov    ebx,0x3
   17c03:	ba 30 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_257                          ; fixup: num: 2763, src obj: 1, src ofs: 0x17c04, dst obj: 3, dst ofs: 0x2a30
talk_to_MR_POTTSDAM_branch_149:
   17c08:	b8 2b 2e 00 00       	mov    eax,0x2e2b
   17c0d:	e8 7e 2a 05 00       	call   play_wav
   17c12:	b8 1b 02 00 00       	mov    eax,0x21b
   17c17:	e8 84 25 01 00       	call   GetDlgFileString
   17c1c:	e8 ef 32 05 00       	call   get_response
   17c21:	83 f8 01             	cmp    eax,0x1
   17c24:	75 0c                	jne    talk_to_MR_POTTSDAM_branch_150
   17c26:	bb 03 00 00 00       	mov    ebx,0x3
   17c2b:	ba 39 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_258                          ; fixup: num: 2762, src obj: 1, src ofs: 0x17c2c, dst obj: 3, dst ofs: 0x2a39
   17c30:	eb d6                	jmp    talk_to_MR_POTTSDAM_branch_149
talk_to_MR_POTTSDAM_branch_150:
   17c32:	83 f8 02             	cmp    eax,0x2
   17c35:	0f 85 8d f3 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   17c3b:	bb 03 00 00 00       	mov    ebx,0x3
   17c40:	ba 42 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_259                          ; fixup: num: 2761, src obj: 1, src ofs: 0x17c41, dst obj: 3, dst ofs: 0x2a42
   17c45:	b8 2f 2e 00 00       	mov    eax,0x2e2f
   17c4a:	e8 41 2a 05 00       	call   play_wav
   17c4f:	bb 02 00 00 00       	mov    ebx,0x2
   17c54:	ba 4b 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_260                          ; fixup: num: 2892, src obj: 1, src ofs: 0x17c55, dst obj: 3, dst ofs: 0x2a4b
   17c59:	b8 34 2e 00 00       	mov    eax,0x2e34
   17c5e:	e8 2d 2a 05 00       	call   play_wav
   17c63:	e9 60 f3 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_151:
   17c68:	83 f8 02             	cmp    eax,0x2
   17c6b:	0f 85 57 f3 ff ff    	jne    talk_to_MR_POTTSDAM_branch_94
   17c71:	bb 01 00 00 00       	mov    ebx,0x1
   17c76:	ba 4e 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_261                          ; fixup: num: 2891, src obj: 1, src ofs: 0x17c77, dst obj: 3, dst ofs: 0x2a4e
   17c7b:	b8 3a 2e 00 00       	mov    eax,0x2e3a
   17c80:	e8 0b 2a 05 00       	call   play_wav
   17c85:	ba 57 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_262                          ; fixup: num: 2890, src obj: 1, src ofs: 0x17c86, dst obj: 3, dst ofs: 0x2a57
   17c8a:	b8 3e 2e 00 00       	mov    eax,0x2e3e
   17c8f:	31 db                	xor    ebx,ebx
   17c91:	e8 fa 29 05 00       	call   play_wav
   17c96:	ba 5a 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_263                          ; fixup: num: 2775, src obj: 1, src ofs: 0x17c97, dst obj: 3, dst ofs: 0x2a5a
   17c9b:	b8 42 2e 00 00       	mov    eax,0x2e42
   17ca0:	31 db                	xor    ebx,ebx
   17ca2:	e8 e9 29 05 00       	call   play_wav
   17ca7:	bb 02 00 00 00       	mov    ebx,0x2
   17cac:	ba 63 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_264                          ; fixup: num: 2774, src obj: 1, src ofs: 0x17cad, dst obj: 3, dst ofs: 0x2a63
   17cb1:	b8 46 2e 00 00       	mov    eax,0x2e46
   17cb6:	e8 d5 29 05 00       	call   play_wav
   17cbb:	bb 01 00 00 00       	mov    ebx,0x1
   17cc0:	ba 66 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_265                          ; fixup: num: 2773, src obj: 1, src ofs: 0x17cc1, dst obj: 3, dst ofs: 0x2a66
   17cc5:	b8 4a 2e 00 00       	mov    eax,0x2e4a
   17cca:	e8 c1 29 05 00       	call   play_wav
   17ccf:	e9 f4 f2 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_152:
   17cd4:	b8 1c 02 00 00       	mov    eax,0x21c
   17cd9:	e8 c2 24 01 00       	call   GetDlgFileString
   17cde:	89 c2                	mov    edx,eax
   17ce0:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2772, src obj: 1, src ofs: 0x17ce1, dst obj: 3, dst ofs: 0x294c0
   17ce5:	e8 70 97 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   17cea:	85 c0                	test   eax,eax
   17cec:	0f 84 d6 f2 ff ff    	je     talk_to_MR_POTTSDAM_branch_94
   17cf2:	ba 6f 2a 00 00       	mov    edx,@obj3:mr_potts_cpp_variable_266                          ; fixup: num: 2771, src obj: 1, src ofs: 0x17cf3, dst obj: 3, dst ofs: 0x2a6f
   17cf7:	b8 73 2c 00 00       	mov    eax,0x2c73
   17cfc:	31 db                	xor    ebx,ebx
   17cfe:	e8 8d 29 05 00       	call   play_wav
   17d03:	e9 c0 f2 ff ff       	jmp    talk_to_MR_POTTSDAM_branch_94
talk_to_MR_POTTSDAM_branch_153:
   17d08:	89 15 f4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM,edx                           ; fixup: num: 2770, src obj: 1, src ofs: 0x17d0a, dst obj: 3, dst ofs: 0x22af4
   17d0e:	a1 f4 2a 02 00       	mov    eax,ds:@obj3:MR_POTTSDAM                                     ; fixup: num: 2769, src obj: 1, src ofs: 0x17d0f, dst obj: 3, dst ofs: 0x22af4
   17d13:	c3                   	ret    
   17d14:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   17d1a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'MR_POTTSDAM_FIRST_CONVERSATION'     -
;-------------------------------------------------
MR_POTTSDAM_FIRST_CONVERSATION:
   17d20:	85 c0                	test   eax,eax
   17d22:	74 e4                	je     talk_to_MR_POTTSDAM_branch_153
   17d24:	a1 f4 2a 02 00       	mov    eax,ds:@obj3:MR_POTTSDAM                                     ; fixup: num: 2768, src obj: 1, src ofs: 0x17d25, dst obj: 3, dst ofs: 0x22af4
   17d29:	c3                   	ret    
MR_POTTSDAM_FIRST_CONVERSATION_branch_1:
   17d2a:	89 15 f8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_1,edx                ; fixup: num: 2767, src obj: 1, src ofs: 0x17d2c, dst obj: 3, dst ofs: 0x22af8
   17d30:	a1 f8 2a 02 00       	mov    eax,ds:@obj3:MR_POTTSDAM_variable_1                          ; fixup: num: 2766, src obj: 1, src ofs: 0x17d31, dst obj: 3, dst ofs: 0x22af8
   17d35:	c3                   	ret    
   17d36:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   17d3c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'MR_POTTSDAM_SAME_DAY_ALTERNATE_GREETING'     -
;-------------------------------------------------
MR_POTTSDAM_SAME_DAY_ALTERNATE_GREETING:
   17d40:	85 c0                	test   eax,eax
   17d42:	74 e6                	je     MR_POTTSDAM_FIRST_CONVERSATION_branch_1
   17d44:	a1 f8 2a 02 00       	mov    eax,ds:@obj3:MR_POTTSDAM_variable_1                          ; fixup: num: 2794, src obj: 1, src ofs: 0x17d45, dst obj: 3, dst ofs: 0x22af8
   17d49:	c3                   	ret    
   17d4a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_POTTSDAM_initialize'             -
;-------------------------------------------------
MR_POTTSDAM_initialize:
   17d50:	53                   	push   ebx
   17d51:	52                   	push   edx
   17d52:	ba 01 00 00 00       	mov    edx,0x1
   17d57:	31 db                	xor    ebx,ebx
   17d59:	89 15 f4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM,edx                           ; fixup: num: 2793, src obj: 1, src ofs: 0x17d5b, dst obj: 3, dst ofs: 0x22af4
   17d5f:	89 1d f8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_1,ebx                ; fixup: num: 2792, src obj: 1, src ofs: 0x17d61, dst obj: 3, dst ofs: 0x22af8
   17d65:	89 1d 00 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_3,ebx                ; fixup: num: 2791, src obj: 1, src ofs: 0x17d67, dst obj: 3, dst ofs: 0x22b00
   17d6b:	89 1d 04 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_4,ebx                ; fixup: num: 2790, src obj: 1, src ofs: 0x17d6d, dst obj: 3, dst ofs: 0x22b04
   17d71:	89 1d 08 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_5,ebx                ; fixup: num: 2789, src obj: 1, src ofs: 0x17d73, dst obj: 3, dst ofs: 0x22b08
   17d77:	89 1d 0c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_6,ebx                ; fixup: num: 2788, src obj: 1, src ofs: 0x17d79, dst obj: 3, dst ofs: 0x22b0c
   17d7d:	89 1d 10 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_7,ebx                ; fixup: num: 2787, src obj: 1, src ofs: 0x17d7f, dst obj: 3, dst ofs: 0x22b10
   17d83:	89 1d 14 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_8,ebx                ; fixup: num: 2786, src obj: 1, src ofs: 0x17d85, dst obj: 3, dst ofs: 0x22b14
   17d89:	89 1d 18 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_9,ebx                ; fixup: num: 2785, src obj: 1, src ofs: 0x17d8b, dst obj: 3, dst ofs: 0x22b18
   17d8f:	89 1d 1c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_10,ebx               ; fixup: num: 2784, src obj: 1, src ofs: 0x17d91, dst obj: 3, dst ofs: 0x22b1c
   17d95:	89 1d 20 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_11,ebx               ; fixup: num: 2783, src obj: 1, src ofs: 0x17d97, dst obj: 3, dst ofs: 0x22b20
   17d9b:	89 1d 24 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_12,ebx               ; fixup: num: 2782, src obj: 1, src ofs: 0x17d9d, dst obj: 3, dst ofs: 0x22b24
   17da1:	89 1d 28 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_13,ebx               ; fixup: num: 2781, src obj: 1, src ofs: 0x17da3, dst obj: 3, dst ofs: 0x22b28
   17da7:	89 1d 2c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_14,ebx               ; fixup: num: 2780, src obj: 1, src ofs: 0x17da9, dst obj: 3, dst ofs: 0x22b2c
   17dad:	89 1d 30 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_15,ebx               ; fixup: num: 2779, src obj: 1, src ofs: 0x17daf, dst obj: 3, dst ofs: 0x22b30
   17db3:	89 1d 34 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_16,ebx               ; fixup: num: 2778, src obj: 1, src ofs: 0x17db5, dst obj: 3, dst ofs: 0x22b34
   17db9:	89 1d 38 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_17,ebx               ; fixup: num: 2777, src obj: 1, src ofs: 0x17dbb, dst obj: 3, dst ofs: 0x22b38
   17dbf:	89 1d 3c 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_POTTSDAM_variable_18,ebx               ; fixup: num: 2776, src obj: 1, src ofs: 0x17dc1, dst obj: 3, dst ofs: 0x22b3c
   17dc5:	5a                   	pop    edx
   17dc6:	5b                   	pop    ebx
   17dc7:	c3                   	ret    
;-------------------------------------------------
;  Bad code 18 (zero after ret):                 -
;-------------------------------------------------
;  17dc6:	5b                   	pop    ebx
;  17dc7:	c3                   	ret    
;  17dc8:	00 00                	add    BYTE PTR [eax],al
;  17dca:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (8 bytes):                       -
;-------------------------------------------------
   17dc8:	00 00 00 00 00 00 .. 	db     8 dup(0x00)
;-------------------------------------------------
;  End of bad code 18                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 19 (D:\SOURCE\mr_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 19: D:\SOURCE\mr_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_potts_cpp_variable_1:
    1fdc:	48 41 52 56 45 53 54 5f 42 4c 41 44 45 00 	db     "HARVEST_BLADE",0x00
mr_potts_cpp_variable_2:
    1fea:	50 43 5f 54 41 4c 4b 45 44 5f 54 4f 5f 50 4f 54 54 53 00 	db     "PC_TALKED_TO_POTTS",0x00
mr_potts_cpp_variable_3:
    1ffd:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_4:
    2009:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    200a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    200b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_5:
    200c:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_6:
    2018:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2019:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    201a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_7:
    201b:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_8:
    2027:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_9:
    2033:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_10:
    203f:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_11:
    204b:	50 4f 54 54 53 5f 46 4c 45 53 48 00 	db     "POTTS_FLESH",0x00
mr_potts_cpp_variable_12:
    2057:	4d 4f 4e 53 54 45 52 46 59 5f 50 4f 54 54 53 00 	db     "MONSTERFY_POTTS",0x00
mr_potts_cpp_variable_13:
    2067:	53 54 45 50 48 41 4e 49 45 5f 44 45 41 44 5f 49 4e 5f 48 41 4c 4c 5f 4a 55 53 54 5f 4f 55 54 53 49 44 45 00 	db     "STEPHANIE_DEAD_IN_HALL_JUST_OUTSIDE",0x00
mr_potts_cpp_variable_14:
    208b:	53 54 45 50 48 41 4e 49 45 5f 44 45 41 44 5f 49 4e 5f 48 41 4c 4c 5f 4a 55 53 54 5f 4f 55 54 53 49 44 45 00 	db     "STEPHANIE_DEAD_IN_HALL_JUST_OUTSIDE",0x00
mr_potts_cpp_variable_15:
    20af:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_16:
    20b8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    20b9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    20ba:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_17:
    20bb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_18:
    20c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    20c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    20c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_19:
    20c7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_20:
    20d0:	53 54 48 4c 45 58 49 54 32 42 00 	db     "STHLEXIT2B",0x00
mr_potts_cpp_variable_21:
    20db:	50 4f 54 54 53 44 41 4d 5f 44 49 47 47 49 4e 47 00 	db     "POTTSDAM_DIGGING",0x00
mr_potts_cpp_variable_22:
    20ec:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_23:
    20f5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    20f6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    20f7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_24:
    20f8:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_25:
    2101:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_26:
    210a:	50 4f 54 54 53 44 41 4d 5f 44 49 47 47 49 4e 47 5f 4b 41 52 49 4e 00 	db     "POTTSDAM_DIGGING_KARIN",0x00
mr_potts_cpp_variable_27:
    2121:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_28:
    212a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    212b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    212c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_29:
    212d:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_30:
    2136:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2137:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2138:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_31:
    2139:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_32:
    2142:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_33:
    214b:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_34:
    2154:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_35:
    215d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    215e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    215f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_36:
    2160:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_37:
    2169:	4d 52 5f 50 4f 54 54 53 5f 43 45 4d 31 30 00 	db     "MR_POTTS_CEM10",0x00
mr_potts_cpp_variable_38:
    2178:	4d 45 41 54 00       	db     "MEAT",0x00
mr_potts_cpp_variable_39:
    217d:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_40:
    2186:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_41:
    218f:	4d 45 41 54 00       	db     "MEAT",0x00
mr_potts_cpp_variable_42:
    2194:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_43:
    219d:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_potts_cpp_variable_44:
    21aa:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_potts_cpp_variable_45:
    21bb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_46:
    21c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    21c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    21c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_47:
    21c7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_48:
    21d0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    21d1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    21d2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_49:
    21d3:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_50:
    21dc:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_potts_cpp_variable_51:
    21f4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_52:
    21fd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    21fe:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    21ff:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_53:
    2200:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_54:
    2209:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_55:
    2212:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_56:
    221b:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_57:
    2224:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_58:
    222d:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_potts_cpp_variable_59:
    2232:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_potts_cpp_variable_60:
    2241:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_potts_cpp_variable_61:
    224b:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_potts_cpp_variable_62:
    225f:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_63:
    2268:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2269:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    226a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_64:
    226b:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
mr_potts_cpp_variable_65:
    2273:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
mr_potts_cpp_variable_66:
    2285:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_67:
    228e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    228f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2290:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_68:
    2291:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_69:
    229a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_70:
    22a3:	49 46 5f 54 52 59 5f 54 4f 5f 53 45 45 5f 53 54 45 50 48 41 4e 49 45 00 	db     "IF_TRY_TO_SEE_STEPHANIE",0x00
mr_potts_cpp_variable_71:
    22bb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_72:
    22c4:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_73:
    22d6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_74:
    22df:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_75:
    22e8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    22e9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    22ea:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_76:
    22eb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_77:
    22f4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_78:
    22fd:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_79:
    2307:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_80:
    2310:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_81:
    2322:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_82:
    232b:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_83:
    233d:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_84:
    234f:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_85:
    2358:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_86:
    2361:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_87:
    2373:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_88:
    237c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_89:
    2385:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_90:
    238e:	44 41 59 5f 32 00    	db     "DAY_2",0x00
mr_potts_cpp_variable_91:
    2394:	44 41 59 5f 33 00    	db     "DAY_3",0x00
mr_potts_cpp_variable_92:
    239a:	44 41 59 5f 34 00    	db     "DAY_4",0x00
mr_potts_cpp_variable_93:
    23a0:	44 41 59 5f 35 00    	db     "DAY_5",0x00
mr_potts_cpp_variable_94:
    23a6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_95:
    23af:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_96:
    23b8:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_potts_cpp_variable_97:
    23c7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_98:
    23d0:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_99:
    23e2:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_100:
    23eb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    23ec:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    23ed:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_101:
    23ee:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_102:
    23f7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_103:
    2400:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_104:
    2409:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_105:
    2412:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2413:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2414:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_106:
    2415:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_107:
    241e:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_potts_cpp_variable_108:
    2433:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_109:
    243c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_110:
    2445:	44 41 59 5f 36 00    	db     "DAY_6",0x00
mr_potts_cpp_variable_111:
    244b:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mr_potts_cpp_variable_112:
    245c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_113:
    2465:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mr_potts_cpp_variable_114:
    2476:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_115:
    247f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2480:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2481:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_116:
    2482:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_potts_cpp_variable_117:
    2497:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2498:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2499:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_118:
    249a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_119:
    24a3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    24a4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    24a5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_120:
    24a6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_121:
    24af:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_122:
    24b8:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_123:
    24c1:	44 41 59 5f 36 00    	db     "DAY_6",0x00
mr_potts_cpp_variable_124:
    24c7:	4b 41 52 49 4e 00    	db     "KARIN",0x00
mr_potts_cpp_variable_125:
    24cd:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mr_potts_cpp_variable_126:
    24de:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_127:
    24e7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_128:
    24f0:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_129:
    24f9:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mr_potts_cpp_variable_130:
    250b:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_131:
    2514:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_132:
    251e:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_133:
    2527:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_134:
    2530:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_135:
    2539:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_136:
    2542:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_137:
    254c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_138:
    2556:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_139:
    255f:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
mr_potts_cpp_variable_140:
    2570:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_141:
    2579:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
mr_potts_cpp_variable_142:
    258c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_143:
    2595:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
mr_potts_cpp_variable_144:
    25a9:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_145:
    25b2:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mr_potts_cpp_variable_146:
    25bf:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_147:
    25c8:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_potts_cpp_variable_148:
    25d7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_149:
    25e0:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_150:
    25e9:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
mr_potts_cpp_variable_151:
    25ff:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_152:
    2608:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_153:
    2611:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_154:
    261a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_155:
    2623:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
mr_potts_cpp_variable_156:
    2633:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_157:
    263c:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
mr_potts_cpp_variable_158:
    2644:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_159:
    264d:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_potts_cpp_variable_160:
    2656:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_161:
    265f:	45 44 4e 41 5f 48 55 4e 47 00 	db     "EDNA_HUNG",0x00
mr_potts_cpp_variable_162:
    2669:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_163:
    2672:	4b 41 52 49 4e 5f 48 55 4e 47 00 	db     "KARIN_HUNG",0x00
mr_potts_cpp_variable_164:
    267d:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_165:
    2686:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_166:
    2687:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_167:
    2699:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    269a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    269b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_168:
    269c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_169:
    26a5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    26a6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    26a7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_170:
    26a8:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_171:
    26b1:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_172:
    26c3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    26c4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    26c5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_173:
    26c6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_174:
    26cf:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_175:
    26e1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    26e2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    26e3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_176:
    26e4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_177:
    26ed:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_178:
    26f6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_179:
    26ff:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_180:
    2708:	48 45 41 52 44 5f 44 41 44 5f 4d 4f 41 4e 00 	db     "HEARD_DAD_MOAN",0x00
mr_potts_cpp_variable_181:
    2717:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2718:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2719:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_182:
    271a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    271b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    271c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_183:
    271d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    271e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    271f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_184:
    2720:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_185:
    2729:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    272a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    272b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_186:
    272c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_187:
    2735:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2736:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2737:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_188:
    2738:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_189:
    2741:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_190:
    2753:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_191:
    275c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_192:
    2765:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_193:
    276e:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_194:
    2777:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_195:
    2780:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_196:
    2792:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_197:
    27a4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_198:
    27ad:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_199:
    27bf:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_200:
    27c8:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_201:
    27d1:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_202:
    27da:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_203:
    27ec:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    27ed:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    27ee:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_204:
    27ef:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_205:
    27f8:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_206:
    2801:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_207:
    2813:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_208:
    281c:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
mr_potts_cpp_variable_209:
    282e:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_210:
    2837:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2838:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2839:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_211:
    283a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_212:
    2843:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_213:
    284c:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_214:
    2855:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2856:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2857:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_215:
    2858:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_216:
    2861:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_217:
    286a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    286b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    286c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_218:
    286d:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_219:
    2876:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2877:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2878:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_220:
    2879:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_221:
    2882:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2883:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2884:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_222:
    2885:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_223:
    2886:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_224:
    288f:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_potts_cpp_variable_225:
    289e:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mr_potts_cpp_variable_226:
    28b0:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mr_potts_cpp_variable_227:
    28c1:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_228:
    28ca:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_229:
    28d4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_230:
    28dd:	57 45 44 5f 4d 41 54 43 48 45 53 00 	db     "WED_MATCHES",0x00
mr_potts_cpp_variable_231:
    28e9:	4d 72 2e 20 4d 6f 79 6e 61 68 61 6e 20 73 61 79 73 20 79 6f 75 20 77 65 72 65 20 6f 75 74 20 61 6e 64 2f 20 20 20 61 62 6f 75 74 20 74 68 65 20 6e 69 67 68 74 20 73 68 65 20 64 69 73 61 70 70 65 61 72 65 64 2e 00 	db     "Mr. Moynahan says you were out and/   about the night she disappeared.",0x00
mr_potts_cpp_variable_232:
    2930:	57 45 44 5f 4d 41 54 43 48 45 53 00 	db     "WED_MATCHES",0x00
mr_potts_cpp_variable_233:
    293c:	49 20 66 6f 75 6e 64 20 6f 6e 65 20 6f 66 20 6f 75 72 20 77 65 64 64 69 6e 67 20 6d 61 74 63 68 2d 2f 20 20 20 62 6f 6f 6b 73 20 69 6e 20 74 68 65 20 63 65 6d 65 74 61 72 79 2e 00 	db     "I found one of our wedding match-/   books in the cemetary.",0x00
mr_potts_cpp_variable_234:
    2978:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_235:
    2981:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_236:
    298a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_237:
    2993:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_238:
    299c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
mr_potts_cpp_variable_239:
    29a6:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_240:
    29af:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    29b0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    29b1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_241:
    29b2:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_242:
    29bb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_243:
    29c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    29c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    29c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_244:
    29c7:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_245:
    29d0:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_246:
    29d9:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_247:
    29e2:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_248:
    29eb:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_249:
    29f4:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_250:
    29fd:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_251:
    2a06:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_252:
    2a0f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2a10:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2a11:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_253:
    2a12:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_254:
    2a1b:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_255:
    2a24:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_256:
    2a2d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2a2e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2a2f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_257:
    2a30:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_258:
    2a39:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_259:
    2a42:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_260:
    2a4b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2a4c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2a4d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_261:
    2a4e:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_262:
    2a57:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2a58:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2a59:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_263:
    2a5a:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_264:
    2a63:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2a64:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2a65:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_potts_cpp_variable_265:
    2a66:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00
mr_potts_cpp_variable_266:
    2a6f:	4d 52 5f 50 4f 54 54 53 00 	db     "MR_POTTS",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 19 (D:\SOURCE\mr_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 19: D:\SOURCE\mr_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_POTTSDAM:                                                                                        ; access size: DWORD
   22af4:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_1:                                                                             ; access size: DWORD
   22af8:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_2:                                                                             ; access size: DWORD
   22afc:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_3:                                                                             ; access size: DWORD
   22b00:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_4:                                                                             ; access size: DWORD
   22b04:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_5:                                                                             ; access size: DWORD
   22b08:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_6:                                                                             ; access size: DWORD
   22b0c:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_7:                                                                             ; access size: DWORD
   22b10:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_8:                                                                             ; access size: DWORD
   22b14:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_9:                                                                             ; access size: DWORD
   22b18:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_10:                                                                            ; access size: DWORD
   22b1c:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_11:                                                                            ; access size: DWORD
   22b20:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_12:                                                                            ; access size: DWORD
   22b24:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_13:                                                                            ; access size: DWORD
   22b28:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_14:                                                                            ; access size: DWORD
   22b2c:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_15:                                                                            ; access size: DWORD
   22b30:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_16:                                                                            ; access size: DWORD
   22b34:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_17:                                                                            ; access size: DWORD
   22b38:	00 00 00 00          	dd     0x00000000
MR_POTTSDAM_variable_18:                                                                            ; access size: DWORD
   22b3c:	00 00 00 00          	dd     0x00000000
tempStr:
   22b40:	00 00 00 00 00 00 .. 	db     180 dup(0x00)                                                ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 19 (D:\SOURCE\mr_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------