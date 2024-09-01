;-------------------------------------------------------------------------------
;                                                                              -
;  Module 26: D:\SOURCE\pat_o.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_PAT_O_REILLY_BUTCHE'        -
;-------------------------------------------------
talk_to_PAT_O_REILLY_BUTCHE:
   1a180:	53                   	push   ebx
   1a181:	51                   	push   ecx
   1a182:	52                   	push   edx
   1a183:	56                   	push   esi
   1a184:	57                   	push   edi
   1a185:	55                   	push   ebp
   1a186:	be 80 36 00 00       	mov    esi,@obj3:pat_o_cpp_variable_1                               ; fixup: num: 3612, src obj: 1, src ofs: 0x1a187, dst obj: 3, dst ofs: 0x3680
   1a18b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3611, src obj: 1, src ofs: 0x1a18c, dst obj: 3, dst ofs: 0x295c0
   1a190:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_1:
   1a191:	8a 06                	mov    al,BYTE PTR [esi]
   1a193:	88 07                	mov    BYTE PTR [edi],al
   1a195:	3c 00                	cmp    al,0x0
   1a197:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_2
   1a199:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a19c:	83 c6 02             	add    esi,0x2
   1a19f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a1a2:	83 c7 02             	add    edi,0x2
   1a1a5:	3c 00                	cmp    al,0x0
   1a1a7:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_1
talk_to_PAT_O_REILLY_BUTCHE_branch_2:
   1a1a9:	5f                   	pop    edi
   1a1aa:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3610, src obj: 1, src ofs: 0x1a1ac, dst obj: 3, dst ofs: 0x294bc
   1a1b0:	85 d2                	test   edx,edx
   1a1b2:	0f 84 9c 02 00 00    	je     talk_to_PAT_O_REILLY_BUTCHE_branch_13
   1a1b8:	89 d0                	mov    eax,edx
   1a1ba:	ba 81 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_2                               ; fixup: num: 3609, src obj: 1, src ofs: 0x1a1bb, dst obj: 3, dst ofs: 0x3681
   1a1bf:	e8 6c c2 05 00       	call   strcmp_
   1a1c4:	85 c0                	test   eax,eax
   1a1c6:	75 40                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_3
   1a1c8:	ba 01 00 00 00       	mov    edx,0x1
   1a1cd:	e8 9e e1 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1a1d2:	31 db                	xor    ebx,ebx
   1a1d4:	ba 99 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_3                               ; fixup: num: 3608, src obj: 1, src ofs: 0x1a1d5, dst obj: 3, dst ofs: 0x3699
   1a1d9:	b8 5a 1a 00 00       	mov    eax,0x1a5a
   1a1de:	e8 ad 04 05 00       	call   play_wav
   1a1e3:	ba a1 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_4                               ; fixup: num: 3607, src obj: 1, src ofs: 0x1a1e4, dst obj: 3, dst ofs: 0x36a1
   1a1e8:	b8 5e 1a 00 00       	mov    eax,0x1a5e
   1a1ed:	31 db                	xor    ebx,ebx
   1a1ef:	e8 9c 04 05 00       	call   play_wav
   1a1f4:	bb 01 00 00 00       	mov    ebx,0x1
   1a1f9:	ba a4 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_5                               ; fixup: num: 3606, src obj: 1, src ofs: 0x1a1fa, dst obj: 3, dst ofs: 0x36a4
   1a1fe:	b8 62 1a 00 00       	mov    eax,0x1a62
   1a203:	e9 3e 02 00 00       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_12
talk_to_PAT_O_REILLY_BUTCHE_branch_3:
   1a208:	ba ac 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_6                               ; fixup: num: 3605, src obj: 1, src ofs: 0x1a209, dst obj: 3, dst ofs: 0x36ac
   1a20d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3604, src obj: 1, src ofs: 0x1a20e, dst obj: 3, dst ofs: 0x294bc
   1a212:	e8 19 c2 05 00       	call   strcmp_
   1a217:	85 c0                	test   eax,eax
   1a219:	74 13                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_4
   1a21b:	ba b9 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_7                               ; fixup: num: 3603, src obj: 1, src ofs: 0x1a21c, dst obj: 3, dst ofs: 0x36b9
   1a220:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3602, src obj: 1, src ofs: 0x1a221, dst obj: 3, dst ofs: 0x294bc
   1a225:	e8 06 c2 05 00       	call   strcmp_
   1a22a:	85 c0                	test   eax,eax
   1a22c:	75 65                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_5
talk_to_PAT_O_REILLY_BUTCHE_branch_4:
   1a22e:	ba 01 00 00 00       	mov    edx,0x1
   1a233:	31 c0                	xor    eax,eax
   1a235:	e8 26 e1 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1a23a:	31 db                	xor    ebx,ebx
   1a23c:	ba ca 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_8                               ; fixup: num: 3623, src obj: 1, src ofs: 0x1a23d, dst obj: 3, dst ofs: 0x36ca
   1a241:	b8 69 1a 00 00       	mov    eax,0x1a69
   1a246:	e8 45 04 05 00       	call   play_wav
   1a24b:	bb 04 00 00 00       	mov    ebx,0x4
   1a250:	ba d2 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_9                               ; fixup: num: 3622, src obj: 1, src ofs: 0x1a251, dst obj: 3, dst ofs: 0x36d2
   1a255:	b8 6d 1a 00 00       	mov    eax,0x1a6d
   1a25a:	e8 31 04 05 00       	call   play_wav
   1a25f:	bb 01 00 00 00       	mov    ebx,0x1
   1a264:	ba d5 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_10                              ; fixup: num: 3621, src obj: 1, src ofs: 0x1a265, dst obj: 3, dst ofs: 0x36d5
   1a269:	b8 71 1a 00 00       	mov    eax,0x1a71
   1a26e:	e8 1d 04 05 00       	call   play_wav
   1a273:	ba dd 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_11                              ; fixup: num: 3620, src obj: 1, src ofs: 0x1a274, dst obj: 3, dst ofs: 0x36dd
   1a278:	b8 76 1a 00 00       	mov    eax,0x1a76
   1a27d:	31 db                	xor    ebx,ebx
   1a27f:	e8 0c 04 05 00       	call   play_wav
   1a284:	ba e0 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_12                              ; fixup: num: 3619, src obj: 1, src ofs: 0x1a285, dst obj: 3, dst ofs: 0x36e0
   1a289:	b8 7a 1a 00 00       	mov    eax,0x1a7a
   1a28e:	e9 b1 01 00 00       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_11
talk_to_PAT_O_REILLY_BUTCHE_branch_5:
   1a293:	ba e8 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_13                              ; fixup: num: 3618, src obj: 1, src ofs: 0x1a294, dst obj: 3, dst ofs: 0x36e8
   1a298:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3617, src obj: 1, src ofs: 0x1a299, dst obj: 3, dst ofs: 0x294bc
   1a29d:	e8 8e c1 05 00       	call   strcmp_
   1a2a2:	85 c0                	test   eax,eax
   1a2a4:	74 13                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_6
   1a2a6:	ba ef 36 00 00       	mov    edx,@obj3:pat_o_cpp_variable_14                              ; fixup: num: 3616, src obj: 1, src ofs: 0x1a2a7, dst obj: 3, dst ofs: 0x36ef
   1a2ab:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3615, src obj: 1, src ofs: 0x1a2ac, dst obj: 3, dst ofs: 0x294bc
   1a2b0:	e8 7b c1 05 00       	call   strcmp_
   1a2b5:	85 c0                	test   eax,eax
   1a2b7:	75 77                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_7
talk_to_PAT_O_REILLY_BUTCHE_branch_6:
   1a2b9:	b8 f7 36 00 00       	mov    eax,@obj3:pat_o_cpp_variable_15                              ; fixup: num: 3614, src obj: 1, src ofs: 0x1a2ba, dst obj: 3, dst ofs: 0x36f7
   1a2be:	e8 cd 24 05 00       	call   check_script_flag
   1a2c3:	84 c0                	test   al,al
   1a2c5:	74 69                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_7
   1a2c7:	ba 01 00 00 00       	mov    edx,0x1
   1a2cc:	31 c0                	xor    eax,eax
   1a2ce:	e8 7d e0 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   1a2d3:	31 db                	xor    ebx,ebx
   1a2d5:	ba 09 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_16                              ; fixup: num: 3613, src obj: 1, src ofs: 0x1a2d6, dst obj: 3, dst ofs: 0x3709
   1a2da:	b8 80 1a 00 00       	mov    eax,0x1a80
   1a2df:	e8 ac 03 05 00       	call   play_wav
   1a2e4:	ba 11 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_17                              ; fixup: num: 3504, src obj: 1, src ofs: 0x1a2e5, dst obj: 3, dst ofs: 0x3711
   1a2e9:	b8 85 1a 00 00       	mov    eax,0x1a85
   1a2ee:	31 db                	xor    ebx,ebx
   1a2f0:	e8 9b 03 05 00       	call   play_wav
   1a2f5:	ba 14 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_18                              ; fixup: num: 3503, src obj: 1, src ofs: 0x1a2f6, dst obj: 3, dst ofs: 0x3714
   1a2fa:	b8 8a 1a 00 00       	mov    eax,0x1a8a
   1a2ff:	31 db                	xor    ebx,ebx
   1a301:	e8 8a 03 05 00       	call   play_wav
   1a306:	ba 1c 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_19                              ; fixup: num: 3502, src obj: 1, src ofs: 0x1a307, dst obj: 3, dst ofs: 0x371c
   1a30b:	b8 92 1a 00 00       	mov    eax,0x1a92
   1a310:	31 db                	xor    ebx,ebx
   1a312:	e8 79 03 05 00       	call   play_wav
   1a317:	bb 02 00 00 00       	mov    ebx,0x2
   1a31c:	ba 24 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_20                              ; fixup: num: 3632, src obj: 1, src ofs: 0x1a31d, dst obj: 3, dst ofs: 0x3724
   1a321:	b8 96 1a 00 00       	mov    eax,0x1a96
   1a326:	e8 65 03 05 00       	call   play_wav
   1a32b:	e9 44 0a 00 00       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_69
talk_to_PAT_O_REILLY_BUTCHE_branch_7:
   1a330:	ba 2c 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_21                              ; fixup: num: 3631, src obj: 1, src ofs: 0x1a331, dst obj: 3, dst ofs: 0x372c
   1a335:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3630, src obj: 1, src ofs: 0x1a336, dst obj: 3, dst ofs: 0x294bc
   1a33a:	e8 f1 c0 05 00       	call   strcmp_
   1a33f:	85 c0                	test   eax,eax
   1a341:	74 39                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_8
   1a343:	ba 31 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_22                              ; fixup: num: 3629, src obj: 1, src ofs: 0x1a344, dst obj: 3, dst ofs: 0x3731
   1a348:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3628, src obj: 1, src ofs: 0x1a349, dst obj: 3, dst ofs: 0x294bc
   1a34d:	e8 de c0 05 00       	call   strcmp_
   1a352:	85 c0                	test   eax,eax
   1a354:	74 26                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_8
   1a356:	ba 40 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_23                              ; fixup: num: 3627, src obj: 1, src ofs: 0x1a357, dst obj: 3, dst ofs: 0x3740
   1a35b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3626, src obj: 1, src ofs: 0x1a35c, dst obj: 3, dst ofs: 0x294bc
   1a360:	e8 cb c0 05 00       	call   strcmp_
   1a365:	85 c0                	test   eax,eax
   1a367:	74 13                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_8
   1a369:	ba 4a 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_24                              ; fixup: num: 3625, src obj: 1, src ofs: 0x1a36a, dst obj: 3, dst ofs: 0x374a
   1a36e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3624, src obj: 1, src ofs: 0x1a36f, dst obj: 3, dst ofs: 0x294bc
   1a373:	e8 b8 c0 05 00       	call   strcmp_
   1a378:	85 c0                	test   eax,eax
   1a37a:	75 26                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_9
talk_to_PAT_O_REILLY_BUTCHE_branch_8:
   1a37c:	ba 01 00 00 00       	mov    edx,0x1
   1a381:	31 c0                	xor    eax,eax
   1a383:	e8 a8 df 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1a388:	31 db                	xor    ebx,ebx
   1a38a:	ba 5e 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_25                              ; fixup: num: 3513, src obj: 1, src ofs: 0x1a38b, dst obj: 3, dst ofs: 0x375e
   1a38f:	b8 9e 1a 00 00       	mov    eax,0x1a9e
   1a394:	e8 f7 02 05 00       	call   play_wav
   1a399:	31 c0                	xor    eax,eax
   1a39b:	5d                   	pop    ebp
   1a39c:	5f                   	pop    edi
   1a39d:	5e                   	pop    esi
   1a39e:	5a                   	pop    edx
   1a39f:	59                   	pop    ecx
   1a3a0:	5b                   	pop    ebx
   1a3a1:	c3                   	ret    
talk_to_PAT_O_REILLY_BUTCHE_branch_9:
   1a3a2:	ba 66 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_26                              ; fixup: num: 3512, src obj: 1, src ofs: 0x1a3a3, dst obj: 3, dst ofs: 0x3766
   1a3a7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3511, src obj: 1, src ofs: 0x1a3a8, dst obj: 3, dst ofs: 0x294bc
   1a3ac:	e8 7f c0 05 00       	call   strcmp_
   1a3b1:	85 c0                	test   eax,eax
   1a3b3:	0f 85 81 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_10
   1a3b9:	bb 01 00 00 00       	mov    ebx,0x1
   1a3be:	ba 76 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_27                              ; fixup: num: 3510, src obj: 1, src ofs: 0x1a3bf, dst obj: 3, dst ofs: 0x3776
   1a3c3:	b8 c4 1a 00 00       	mov    eax,0x1ac4
   1a3c8:	e8 c3 02 05 00       	call   play_wav
   1a3cd:	b8 5f 02 00 00       	mov    eax,0x25f
   1a3d2:	bb 01 00 00 00       	mov    ebx,0x1
   1a3d7:	ba 7e 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_28                              ; fixup: num: 3509, src obj: 1, src ofs: 0x1a3d8, dst obj: 3, dst ofs: 0x377e
   1a3dc:	e8 bf fd 00 00       	call   GetDlgFileString
   1a3e1:	e8 2a 0b 05 00       	call   get_response
   1a3e6:	b8 ce 1a 00 00       	mov    eax,0x1ace
   1a3eb:	e8 a0 02 05 00       	call   play_wav
   1a3f0:	e8 7b e4 00 00       	call   BUTCHER_FLY_BOWL_2
   1a3f5:	b8 86 37 00 00       	mov    eax,@obj3:pat_o_cpp_variable_29                              ; fixup: num: 3508, src obj: 1, src ofs: 0x1a3f6, dst obj: 3, dst ofs: 0x3786
   1a3fa:	ba 8b 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_30                              ; fixup: num: 3507, src obj: 1, src ofs: 0x1a3fb, dst obj: 3, dst ofs: 0x378b
   1a3ff:	e8 ac 24 05 00       	call   add_inventory
   1a404:	31 db                	xor    ebx,ebx
   1a406:	b8 9b 37 00 00       	mov    eax,@obj3:pat_o_cpp_variable_31                              ; fixup: num: 3506, src obj: 1, src ofs: 0x1a407, dst obj: 3, dst ofs: 0x379b
   1a40b:	e8 00 8b 03 00       	call   set_object
   1a410:	ba 01 00 00 00       	mov    edx,0x1
   1a415:	b8 a5 37 00 00       	mov    eax,@obj3:pat_o_cpp_variable_32                              ; fixup: num: 3505, src obj: 1, src ofs: 0x1a416, dst obj: 3, dst ofs: 0x37a5
   1a41a:	e8 c1 23 05 00       	call   set_script_flag
   1a41f:	31 d2                	xor    edx,edx
   1a421:	31 c0                	xor    eax,eax
   1a423:	e8 88 de 00 00       	call   GOTTEN_FATHER_S_SIGNATURE
   1a428:	31 d2                	xor    edx,edx
   1a42a:	31 c0                	xor    eax,eax
   1a42c:	e8 cf df 00 00       	call   NEED_DADS_SIGNATURE
   1a431:	31 c0                	xor    eax,eax
   1a433:	5d                   	pop    ebp
   1a434:	5f                   	pop    edi
   1a435:	5e                   	pop    esi
   1a436:	5a                   	pop    edx
   1a437:	59                   	pop    ecx
   1a438:	5b                   	pop    ebx
   1a439:	c3                   	ret    
talk_to_PAT_O_REILLY_BUTCHE_branch_10:
   1a43a:	ba ae 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_33                              ; fixup: num: 3522, src obj: 1, src ofs: 0x1a43b, dst obj: 3, dst ofs: 0x37ae
   1a43f:	b8 54 1a 00 00       	mov    eax,0x1a54
talk_to_PAT_O_REILLY_BUTCHE_branch_11:
   1a444:	31 db                	xor    ebx,ebx
talk_to_PAT_O_REILLY_BUTCHE_branch_12:
   1a446:	e8 45 02 05 00       	call   play_wav
   1a44b:	31 c0                	xor    eax,eax
   1a44d:	5d                   	pop    ebp
   1a44e:	5f                   	pop    edi
   1a44f:	5e                   	pop    esi
   1a450:	5a                   	pop    edx
   1a451:	59                   	pop    ecx
   1a452:	5b                   	pop    ebx
   1a453:	c3                   	ret    
talk_to_PAT_O_REILLY_BUTCHE_branch_13:
   1a454:	a1 84 2c 02 00       	mov    eax,ds:@obj3:PAT_O_REILLY_BUTCHE                             ; fixup: num: 3521, src obj: 1, src ofs: 0x1a455, dst obj: 3, dst ofs: 0x22c84
   1a459:	85 c0                	test   eax,eax
   1a45b:	0f 84 ab 00 00 00    	je     talk_to_PAT_O_REILLY_BUTCHE_branch_16
   1a461:	b8 02 19 00 00       	mov    eax,0x1902
   1a466:	89 15 84 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE,edx                   ; fixup: num: 3520, src obj: 1, src ofs: 0x1a468, dst obj: 3, dst ofs: 0x22c84
   1a46c:	31 db                	xor    ebx,ebx
   1a46e:	ba b6 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_34                              ; fixup: num: 3519, src obj: 1, src ofs: 0x1a46f, dst obj: 3, dst ofs: 0x37b6
   1a473:	e8 18 02 05 00       	call   play_wav
   1a478:	ba be 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_35                              ; fixup: num: 3518, src obj: 1, src ofs: 0x1a479, dst obj: 3, dst ofs: 0x37be
   1a47d:	b8 06 19 00 00       	mov    eax,0x1906
   1a482:	31 db                	xor    ebx,ebx
   1a484:	e8 07 02 05 00       	call   play_wav
   1a489:	ba c1 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_36                              ; fixup: num: 3517, src obj: 1, src ofs: 0x1a48a, dst obj: 3, dst ofs: 0x37c1
   1a48e:	b8 0a 19 00 00       	mov    eax,0x190a
   1a493:	31 db                	xor    ebx,ebx
   1a495:	e8 f6 01 05 00       	call   play_wav
   1a49a:	b8 01 00 00 00       	mov    eax,0x1
   1a49f:	31 d2                	xor    edx,edx
   1a4a1:	e8 6a de 00 00       	call   SEEN_FATHER
   1a4a6:	85 c0                	test   eax,eax
   1a4a8:	75 0c                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_14
   1a4aa:	ba c9 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_37                              ; fixup: num: 3516, src obj: 1, src ofs: 0x1a4ab, dst obj: 3, dst ofs: 0x37c9
   1a4af:	b8 0f 19 00 00       	mov    eax,0x190f
   1a4b4:	eb 0a                	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_15
talk_to_PAT_O_REILLY_BUTCHE_branch_14:
   1a4b6:	ba cc 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_38                              ; fixup: num: 3515, src obj: 1, src ofs: 0x1a4b7, dst obj: 3, dst ofs: 0x37cc
   1a4bb:	b8 13 19 00 00       	mov    eax,0x1913
talk_to_PAT_O_REILLY_BUTCHE_branch_15:
   1a4c0:	31 db                	xor    ebx,ebx
   1a4c2:	e8 c9 01 05 00       	call   play_wav
   1a4c7:	bb 01 00 00 00       	mov    ebx,0x1
   1a4cc:	ba cf 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_39                              ; fixup: num: 3514, src obj: 1, src ofs: 0x1a4cd, dst obj: 3, dst ofs: 0x37cf
   1a4d1:	b8 17 19 00 00       	mov    eax,0x1917
   1a4d6:	e8 b5 01 05 00       	call   play_wav
   1a4db:	ba d7 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_40                              ; fixup: num: 3530, src obj: 1, src ofs: 0x1a4dc, dst obj: 3, dst ofs: 0x37d7
   1a4e0:	b8 1d 19 00 00       	mov    eax,0x191d
   1a4e5:	31 db                	xor    ebx,ebx
   1a4e7:	e8 a4 01 05 00       	call   play_wav
   1a4ec:	bb 01 00 00 00       	mov    ebx,0x1
   1a4f1:	ba da 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_41                              ; fixup: num: 3529, src obj: 1, src ofs: 0x1a4f2, dst obj: 3, dst ofs: 0x37da
   1a4f6:	b8 21 19 00 00       	mov    eax,0x1921
   1a4fb:	e8 90 01 05 00       	call   play_wav
   1a500:	b8 60 02 00 00       	mov    eax,0x260
   1a505:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3528, src obj: 1, src ofs: 0x1a506, dst obj: 3, dst ofs: 0x295c0
   1a50a:	eb 3c                	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_17
talk_to_PAT_O_REILLY_BUTCHE_branch_16:
   1a50c:	ba e2 37 00 00       	mov    edx,@obj3:pat_o_cpp_variable_42                              ; fixup: num: 3527, src obj: 1, src ofs: 0x1a50d, dst obj: 3, dst ofs: 0x37e2
   1a511:	b8 47 1a 00 00       	mov    eax,0x1a47
   1a516:	31 db                	xor    ebx,ebx
   1a518:	e8 73 01 05 00       	call   play_wav
   1a51d:	b8 ea 37 00 00       	mov    eax,@obj3:pat_o_cpp_variable_43                              ; fixup: num: 3526, src obj: 1, src ofs: 0x1a51e, dst obj: 3, dst ofs: 0x37ea
   1a522:	e8 49 23 05 00       	call   check_inventory
   1a527:	84 c0                	test   al,al
   1a529:	75 3e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_20
   1a52b:	b8 fb 37 00 00       	mov    eax,@obj3:pat_o_cpp_variable_44                              ; fixup: num: 3525, src obj: 1, src ofs: 0x1a52c, dst obj: 3, dst ofs: 0x37fb
   1a530:	e8 3b 23 05 00       	call   check_inventory
   1a535:	84 c0                	test   al,al
   1a537:	75 30                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_20
   1a539:	e8 82 e6 00 00       	call   get_day
   1a53e:	83 f8 03             	cmp    eax,0x3
   1a541:	7f 26                	jg     talk_to_PAT_O_REILLY_BUTCHE_branch_20
   1a543:	b8 61 02 00 00       	mov    eax,0x261
talk_to_PAT_O_REILLY_BUTCHE_branch_17:
   1a548:	e8 53 fc 00 00       	call   GetDlgFileString
   1a54d:	89 c6                	mov    esi,eax
   1a54f:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_18:
   1a550:	8a 06                	mov    al,BYTE PTR [esi]
   1a552:	88 07                	mov    BYTE PTR [edi],al
   1a554:	3c 00                	cmp    al,0x0
   1a556:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_19
   1a558:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a55b:	83 c6 02             	add    esi,0x2
   1a55e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a561:	83 c7 02             	add    edi,0x2
   1a564:	3c 00                	cmp    al,0x0
   1a566:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_18
talk_to_PAT_O_REILLY_BUTCHE_branch_19:
   1a568:	5f                   	pop    edi
talk_to_PAT_O_REILLY_BUTCHE_branch_20:
   1a569:	b8 0b 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_45                              ; fixup: num: 3524, src obj: 1, src ofs: 0x1a56a, dst obj: 3, dst ofs: 0x380b
   1a56e:	e8 1d 22 05 00       	call   check_script_flag
   1a573:	84 c0                	test   al,al
   1a575:	74 2d                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_21
   1a577:	83 3d 88 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_1,0x0        ; fixup: num: 3523, src obj: 1, src ofs: 0x1a579, dst obj: 3, dst ofs: 0x22c88
   1a57e:	75 24                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_21
   1a580:	be 01 00 00 00       	mov    esi,0x1
   1a585:	bb 02 00 00 00       	mov    ebx,0x2
   1a58a:	ba 20 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_46                              ; fixup: num: 3540, src obj: 1, src ofs: 0x1a58b, dst obj: 3, dst ofs: 0x3820
   1a58f:	b8 a7 1a 00 00       	mov    eax,0x1aa7
   1a594:	89 35 88 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_1,esi        ; fixup: num: 3539, src obj: 1, src ofs: 0x1a596, dst obj: 3, dst ofs: 0x22c88
   1a59a:	e8 f1 00 05 00       	call   play_wav
   1a59f:	e8 fc e2 00 00       	call   BUTCHER_CATS_SKINNED_3
talk_to_PAT_O_REILLY_BUTCHE_branch_21:
   1a5a4:	b8 28 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_47                              ; fixup: num: 3538, src obj: 1, src ofs: 0x1a5a5, dst obj: 3, dst ofs: 0x3828
   1a5a9:	e8 e2 21 05 00       	call   check_script_flag
   1a5ae:	84 c0                	test   al,al
   1a5b0:	74 2d                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_22
   1a5b2:	83 3d 8c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_2,0x0        ; fixup: num: 3537, src obj: 1, src ofs: 0x1a5b4, dst obj: 3, dst ofs: 0x22c8c
   1a5b9:	75 24                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_22
   1a5bb:	bd 01 00 00 00       	mov    ebp,0x1
   1a5c0:	bb 02 00 00 00       	mov    ebx,0x2
   1a5c5:	ba 2e 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_48                              ; fixup: num: 3536, src obj: 1, src ofs: 0x1a5c6, dst obj: 3, dst ofs: 0x382e
   1a5ca:	b8 b6 1a 00 00       	mov    eax,0x1ab6
   1a5cf:	89 2d 8c 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_2,ebp        ; fixup: num: 3535, src obj: 1, src ofs: 0x1a5d1, dst obj: 3, dst ofs: 0x22c8c
   1a5d5:	e8 b6 00 05 00       	call   play_wav
   1a5da:	e8 71 e2 00 00       	call   BUTCHER_CUTAWAY_GUTS_4
talk_to_PAT_O_REILLY_BUTCHE_branch_22:
   1a5df:	be 36 38 00 00       	mov    esi,@obj3:pat_o_cpp_variable_49                              ; fixup: num: 3534, src obj: 1, src ofs: 0x1a5e0, dst obj: 3, dst ofs: 0x3836
   1a5e4:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 3533, src obj: 1, src ofs: 0x1a5e5, dst obj: 3, dst ofs: 0x294c0
   1a5e9:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_23:
   1a5ea:	8a 06                	mov    al,BYTE PTR [esi]
   1a5ec:	88 07                	mov    BYTE PTR [edi],al
   1a5ee:	3c 00                	cmp    al,0x0
   1a5f0:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_24
   1a5f2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a5f5:	83 c6 02             	add    esi,0x2
   1a5f8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a5fb:	83 c7 02             	add    edi,0x2
   1a5fe:	3c 00                	cmp    al,0x0
   1a600:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_23
talk_to_PAT_O_REILLY_BUTCHE_branch_24:
   1a602:	5f                   	pop    edi
   1a603:	bd 01 00 00 00       	mov    ebp,0x1
   1a608:	31 c9                	xor    ecx,ecx
talk_to_PAT_O_REILLY_BUTCHE_branch_25:
   1a60a:	b8 62 02 00 00       	mov    eax,0x262
   1a60f:	e8 8c fb 00 00       	call   GetDlgFileString
   1a614:	89 c2                	mov    edx,eax
   1a616:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3532, src obj: 1, src ofs: 0x1a617, dst obj: 3, dst ofs: 0x294c0
   1a61b:	e8 3a 6e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1a620:	85 c0                	test   eax,eax
   1a622:	0f 84 3b 07 00 00    	je     talk_to_PAT_O_REILLY_BUTCHE_branch_68
   1a628:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 3531, src obj: 1, src ofs: 0x1a629, dst obj: 3, dst ofs: 0x295c0
   1a62d:	e8 0e 14 05 00       	call   show_keywords
   1a632:	b8 63 02 00 00       	mov    eax,0x263
   1a637:	e8 64 fb 00 00       	call   GetDlgFileString
   1a63c:	89 c2                	mov    edx,eax
   1a63e:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3547, src obj: 1, src ofs: 0x1a63f, dst obj: 3, dst ofs: 0x294c0
   1a643:	e8 12 6e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1a648:	85 c0                	test   eax,eax
   1a64a:	0f 85 31 01 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_32
   1a650:	ba 37 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_50                              ; fixup: num: 3546, src obj: 1, src ofs: 0x1a651, dst obj: 3, dst ofs: 0x3837
   1a655:	b8 2a 19 00 00       	mov    eax,0x192a
   1a65a:	89 cb                	mov    ebx,ecx
   1a65c:	e8 2f 00 05 00       	call   play_wav
   1a661:	ba 3a 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_51                              ; fixup: num: 3545, src obj: 1, src ofs: 0x1a662, dst obj: 3, dst ofs: 0x383a
   1a666:	b8 2f 19 00 00       	mov    eax,0x192f
   1a66b:	89 cb                	mov    ebx,ecx
   1a66d:	e8 1e 00 05 00       	call   play_wav
   1a672:	ba 42 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_52                              ; fixup: num: 3544, src obj: 1, src ofs: 0x1a673, dst obj: 3, dst ofs: 0x3842
   1a677:	b8 33 19 00 00       	mov    eax,0x1933
   1a67c:	89 cb                	mov    ebx,ecx
   1a67e:	e8 0d 00 05 00       	call   play_wav
   1a683:	bb 02 00 00 00       	mov    ebx,0x2
   1a688:	ba 45 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_53                              ; fixup: num: 3543, src obj: 1, src ofs: 0x1a689, dst obj: 3, dst ofs: 0x3845
   1a68d:	b8 38 19 00 00       	mov    eax,0x1938
   1a692:	e8 f9 ff 04 00       	call   play_wav
   1a697:	b8 64 02 00 00       	mov    eax,0x264
   1a69c:	e8 ff fa 00 00       	call   GetDlgFileString
   1a6a1:	e8 6a 08 05 00       	call   get_response
   1a6a6:	83 f8 01             	cmp    eax,0x1
   1a6a9:	75 1e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_26
   1a6ab:	bb 02 00 00 00       	mov    ebx,0x2
   1a6b0:	ba 4d 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_54                              ; fixup: num: 3542, src obj: 1, src ofs: 0x1a6b1, dst obj: 3, dst ofs: 0x384d
   1a6b5:	b8 43 19 00 00       	mov    eax,0x1943
   1a6ba:	e8 d1 ff 04 00       	call   play_wav
   1a6bf:	e8 5c e1 00 00       	call   BUTCHER_CUTAWAY_GUTS_1
   1a6c4:	e9 41 ff ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_26:
   1a6c9:	83 f8 02             	cmp    eax,0x2
   1a6cc:	0f 85 38 ff ff ff    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_25
   1a6d2:	ba 55 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_55                              ; fixup: num: 3541, src obj: 1, src ofs: 0x1a6d3, dst obj: 3, dst ofs: 0x3855
   1a6d7:	b8 50 19 00 00       	mov    eax,0x1950
   1a6dc:	89 eb                	mov    ebx,ebp
   1a6de:	e8 ad ff 04 00       	call   play_wav
   1a6e3:	ba 5d 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_56                              ; fixup: num: 3553, src obj: 1, src ofs: 0x1a6e4, dst obj: 3, dst ofs: 0x385d
   1a6e8:	b8 55 19 00 00       	mov    eax,0x1955
   1a6ed:	89 cb                	mov    ebx,ecx
   1a6ef:	e8 9c ff 04 00       	call   play_wav
   1a6f4:	ba 60 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_57                              ; fixup: num: 3552, src obj: 1, src ofs: 0x1a6f5, dst obj: 3, dst ofs: 0x3860
   1a6f9:	b8 5a 19 00 00       	mov    eax,0x195a
   1a6fe:	89 cb                	mov    ebx,ecx
   1a700:	e8 8b ff 04 00       	call   play_wav
   1a705:	b8 68 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_58                              ; fixup: num: 3551, src obj: 1, src ofs: 0x1a706, dst obj: 3, dst ofs: 0x3868
   1a70a:	e8 61 21 05 00       	call   check_inventory
   1a70f:	84 c0                	test   al,al
   1a711:	75 3e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_29
   1a713:	b8 79 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_59                              ; fixup: num: 3550, src obj: 1, src ofs: 0x1a714, dst obj: 3, dst ofs: 0x3879
   1a718:	e8 53 21 05 00       	call   check_inventory
   1a71d:	84 c0                	test   al,al
   1a71f:	75 30                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_29
   1a721:	b8 65 02 00 00       	mov    eax,0x265
   1a726:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3549, src obj: 1, src ofs: 0x1a727, dst obj: 3, dst ofs: 0x295c0
   1a72b:	e8 70 fa 00 00       	call   GetDlgFileString
   1a730:	89 c6                	mov    esi,eax
   1a732:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_27:
   1a733:	8a 06                	mov    al,BYTE PTR [esi]
   1a735:	88 07                	mov    BYTE PTR [edi],al
   1a737:	3c 00                	cmp    al,0x0
   1a739:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_28
   1a73b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a73e:	83 c6 02             	add    esi,0x2
   1a741:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a744:	83 c7 02             	add    edi,0x2
   1a747:	3c 00                	cmp    al,0x0
   1a749:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_27
talk_to_PAT_O_REILLY_BUTCHE_branch_28:
   1a74b:	5f                   	pop    edi
   1a74c:	e9 b9 fe ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_29:
   1a751:	b8 66 02 00 00       	mov    eax,0x266
   1a756:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3548, src obj: 1, src ofs: 0x1a757, dst obj: 3, dst ofs: 0x295c0
   1a75b:	e8 40 fa 00 00       	call   GetDlgFileString
   1a760:	89 c6                	mov    esi,eax
   1a762:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_30:
   1a763:	8a 06                	mov    al,BYTE PTR [esi]
   1a765:	88 07                	mov    BYTE PTR [edi],al
   1a767:	3c 00                	cmp    al,0x0
   1a769:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_31
   1a76b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a76e:	83 c6 02             	add    esi,0x2
   1a771:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a774:	83 c7 02             	add    edi,0x2
   1a777:	3c 00                	cmp    al,0x0
   1a779:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_30
talk_to_PAT_O_REILLY_BUTCHE_branch_31:
   1a77b:	5f                   	pop    edi
   1a77c:	e9 89 fe ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_32:
   1a781:	b8 67 02 00 00       	mov    eax,0x267
   1a786:	e8 15 fa 00 00       	call   GetDlgFileString
   1a78b:	89 c2                	mov    edx,eax
   1a78d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3561, src obj: 1, src ofs: 0x1a78e, dst obj: 3, dst ofs: 0x294c0
   1a792:	e8 c3 6c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1a797:	85 c0                	test   eax,eax
   1a799:	0f 85 24 01 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_38
   1a79f:	b8 89 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_60                              ; fixup: num: 3560, src obj: 1, src ofs: 0x1a7a0, dst obj: 3, dst ofs: 0x3889
   1a7a4:	e8 c7 20 05 00       	call   check_inventory
   1a7a9:	84 c0                	test   al,al
   1a7ab:	0f 85 12 01 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_38
   1a7b1:	b8 9a 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_61                              ; fixup: num: 3559, src obj: 1, src ofs: 0x1a7b2, dst obj: 3, dst ofs: 0x389a
   1a7b6:	e8 b5 20 05 00       	call   check_inventory
   1a7bb:	84 c0                	test   al,al
   1a7bd:	0f 85 00 01 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_38
   1a7c3:	ba aa 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_62                              ; fixup: num: 3558, src obj: 1, src ofs: 0x1a7c4, dst obj: 3, dst ofs: 0x38aa
   1a7c8:	b8 64 19 00 00       	mov    eax,0x1964
   1a7cd:	89 cb                	mov    ebx,ecx
   1a7cf:	e8 bc fe 04 00       	call   play_wav
   1a7d4:	ba ad 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_63                              ; fixup: num: 3557, src obj: 1, src ofs: 0x1a7d5, dst obj: 3, dst ofs: 0x38ad
   1a7d9:	b8 69 19 00 00       	mov    eax,0x1969
   1a7de:	89 cb                	mov    ebx,ecx
   1a7e0:	e8 ab fe 04 00       	call   play_wav
   1a7e5:	e8 76 e0 00 00       	call   BUTCHER_FLY_BOWL_1
   1a7ea:	ba b5 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_64                              ; fixup: num: 3556, src obj: 1, src ofs: 0x1a7eb, dst obj: 3, dst ofs: 0x38b5
   1a7ef:	b8 75 19 00 00       	mov    eax,0x1975
   1a7f4:	89 cb                	mov    ebx,ecx
   1a7f6:	e8 95 fe 04 00       	call   play_wav
   1a7fb:	e8 30 e0 00 00       	call   BUTCHER_CUTAWAY_GUTS_2
   1a800:	ba bd 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_65                              ; fixup: num: 3555, src obj: 1, src ofs: 0x1a801, dst obj: 3, dst ofs: 0x38bd
   1a805:	b8 80 19 00 00       	mov    eax,0x1980
   1a80a:	89 cb                	mov    ebx,ecx
   1a80c:	e8 7f fe 04 00       	call   play_wav
   1a811:	b8 68 02 00 00       	mov    eax,0x268
   1a816:	e8 85 f9 00 00       	call   GetDlgFileString
   1a81b:	e8 f0 06 05 00       	call   get_response
   1a820:	83 f8 01             	cmp    eax,0x1
   1a823:	75 54                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_35
   1a825:	ba c5 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_66                              ; fixup: num: 3554, src obj: 1, src ofs: 0x1a826, dst obj: 3, dst ofs: 0x38c5
   1a82a:	b8 8b 19 00 00       	mov    eax,0x198b
   1a82f:	89 cb                	mov    ebx,ecx
   1a831:	e8 5a fe 04 00       	call   play_wav
   1a836:	89 ea                	mov    edx,ebp
   1a838:	89 c8                	mov    eax,ecx
   1a83a:	e8 c1 db 00 00       	call   NEED_DADS_SIGNATURE
   1a83f:	b8 cd 38 00 00       	mov    eax,@obj3:pat_o_cpp_variable_67                              ; fixup: num: 3567, src obj: 1, src ofs: 0x1a840, dst obj: 3, dst ofs: 0x38cd
   1a844:	e8 67 20 05 00       	call   add_inventory
   1a849:	b8 69 02 00 00       	mov    eax,0x269
   1a84e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3566, src obj: 1, src ofs: 0x1a84f, dst obj: 3, dst ofs: 0x295c0
   1a853:	e8 48 f9 00 00       	call   GetDlgFileString
   1a858:	89 c6                	mov    esi,eax
   1a85a:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_33:
   1a85b:	8a 06                	mov    al,BYTE PTR [esi]
   1a85d:	88 07                	mov    BYTE PTR [edi],al
   1a85f:	3c 00                	cmp    al,0x0
   1a861:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_34
   1a863:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a866:	83 c6 02             	add    esi,0x2
   1a869:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a86c:	83 c7 02             	add    edi,0x2
   1a86f:	3c 00                	cmp    al,0x0
   1a871:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_33
talk_to_PAT_O_REILLY_BUTCHE_branch_34:
   1a873:	5f                   	pop    edi
   1a874:	e9 91 fd ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_35:
   1a879:	83 f8 02             	cmp    eax,0x2
   1a87c:	0f 85 88 fd ff ff    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_25
   1a882:	ba de 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_68                              ; fixup: num: 3565, src obj: 1, src ofs: 0x1a883, dst obj: 3, dst ofs: 0x38de
   1a887:	b8 92 19 00 00       	mov    eax,0x1992
   1a88c:	89 eb                	mov    ebx,ebp
   1a88e:	e8 fd fd 04 00       	call   play_wav
   1a893:	b8 6a 02 00 00       	mov    eax,0x26a
   1a898:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3564, src obj: 1, src ofs: 0x1a899, dst obj: 3, dst ofs: 0x295c0
   1a89d:	e8 fe f8 00 00       	call   GetDlgFileString
   1a8a2:	89 c6                	mov    esi,eax
   1a8a4:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_36:
   1a8a5:	8a 06                	mov    al,BYTE PTR [esi]
   1a8a7:	88 07                	mov    BYTE PTR [edi],al
   1a8a9:	3c 00                	cmp    al,0x0
   1a8ab:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_37
   1a8ad:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a8b0:	83 c6 02             	add    esi,0x2
   1a8b3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a8b6:	83 c7 02             	add    edi,0x2
   1a8b9:	3c 00                	cmp    al,0x0
   1a8bb:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_36
talk_to_PAT_O_REILLY_BUTCHE_branch_37:
   1a8bd:	5f                   	pop    edi
   1a8be:	e9 47 fd ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_38:
   1a8c3:	b8 6b 02 00 00       	mov    eax,0x26b
   1a8c8:	e8 d3 f8 00 00       	call   GetDlgFileString
   1a8cd:	89 c2                	mov    edx,eax
   1a8cf:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3563, src obj: 1, src ofs: 0x1a8d0, dst obj: 3, dst ofs: 0x294c0
   1a8d4:	e8 81 6b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1a8d9:	85 c0                	test   eax,eax
   1a8db:	0f 85 db 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_44
   1a8e1:	ba e6 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_69                              ; fixup: num: 3562, src obj: 1, src ofs: 0x1a8e2, dst obj: 3, dst ofs: 0x38e6
   1a8e6:	b8 9c 19 00 00       	mov    eax,0x199c
   1a8eb:	89 cb                	mov    ebx,ecx
   1a8ed:	e8 9e fd 04 00       	call   play_wav
   1a8f2:	e8 49 df 00 00       	call   BUTCHER_CUTAWAY_GUTS_3
   1a8f7:	ba ee 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_70                              ; fixup: num: 3441, src obj: 1, src ofs: 0x1a8f8, dst obj: 3, dst ofs: 0x38ee
   1a8fc:	b8 a7 19 00 00       	mov    eax,0x19a7
   1a901:	89 cb                	mov    ebx,ecx
   1a903:	e8 88 fd 04 00       	call   play_wav
   1a908:	ba f6 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_71                              ; fixup: num: 3440, src obj: 1, src ofs: 0x1a909, dst obj: 3, dst ofs: 0x38f6
   1a90d:	b8 ae 19 00 00       	mov    eax,0x19ae
   1a912:	89 cb                	mov    ebx,ecx
   1a914:	e8 77 fd 04 00       	call   play_wav
   1a919:	ba fe 38 00 00       	mov    edx,@obj3:pat_o_cpp_variable_72                              ; fixup: num: 3439, src obj: 1, src ofs: 0x1a91a, dst obj: 3, dst ofs: 0x38fe
   1a91e:	b8 b3 19 00 00       	mov    eax,0x19b3
   1a923:	89 eb                	mov    ebx,ebp
   1a925:	e8 66 fd 04 00       	call   play_wav
   1a92a:	e8 51 df 00 00       	call   BUTCHER_CATS_SKINNED_1
   1a92f:	ba 06 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_73                              ; fixup: num: 3438, src obj: 1, src ofs: 0x1a930, dst obj: 3, dst ofs: 0x3906
   1a934:	b8 bf 19 00 00       	mov    eax,0x19bf
   1a939:	89 eb                	mov    ebx,ebp
   1a93b:	e8 50 fd 04 00       	call   play_wav
   1a940:	b8 0e 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_74                              ; fixup: num: 3437, src obj: 1, src ofs: 0x1a941, dst obj: 3, dst ofs: 0x390e
   1a945:	e8 26 1f 05 00       	call   check_inventory
   1a94a:	84 c0                	test   al,al
   1a94c:	75 3e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_41
   1a94e:	b8 1f 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_75                              ; fixup: num: 3436, src obj: 1, src ofs: 0x1a94f, dst obj: 3, dst ofs: 0x391f
   1a953:	e8 18 1f 05 00       	call   check_inventory
   1a958:	84 c0                	test   al,al
   1a95a:	75 30                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_41
   1a95c:	b8 6c 02 00 00       	mov    eax,0x26c
   1a961:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3435, src obj: 1, src ofs: 0x1a962, dst obj: 3, dst ofs: 0x295c0
   1a966:	e8 35 f8 00 00       	call   GetDlgFileString
   1a96b:	89 c6                	mov    esi,eax
   1a96d:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_39:
   1a96e:	8a 06                	mov    al,BYTE PTR [esi]
   1a970:	88 07                	mov    BYTE PTR [edi],al
   1a972:	3c 00                	cmp    al,0x0
   1a974:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_40
   1a976:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a979:	83 c6 02             	add    esi,0x2
   1a97c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a97f:	83 c7 02             	add    edi,0x2
   1a982:	3c 00                	cmp    al,0x0
   1a984:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_39
talk_to_PAT_O_REILLY_BUTCHE_branch_40:
   1a986:	5f                   	pop    edi
   1a987:	e9 7e fc ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_41:
   1a98c:	b8 6d 02 00 00       	mov    eax,0x26d
   1a991:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3568, src obj: 1, src ofs: 0x1a992, dst obj: 3, dst ofs: 0x295c0
   1a996:	e8 05 f8 00 00       	call   GetDlgFileString
   1a99b:	89 c6                	mov    esi,eax
   1a99d:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_42:
   1a99e:	8a 06                	mov    al,BYTE PTR [esi]
   1a9a0:	88 07                	mov    BYTE PTR [edi],al
   1a9a2:	3c 00                	cmp    al,0x0
   1a9a4:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_43
   1a9a6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1a9a9:	83 c6 02             	add    esi,0x2
   1a9ac:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1a9af:	83 c7 02             	add    edi,0x2
   1a9b2:	3c 00                	cmp    al,0x0
   1a9b4:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_42
talk_to_PAT_O_REILLY_BUTCHE_branch_43:
   1a9b6:	5f                   	pop    edi
   1a9b7:	e9 4e fc ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_44:
   1a9bc:	b8 6e 02 00 00       	mov    eax,0x26e
   1a9c1:	e8 da f7 00 00       	call   GetDlgFileString
   1a9c6:	89 c2                	mov    edx,eax
   1a9c8:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3447, src obj: 1, src ofs: 0x1a9c9, dst obj: 3, dst ofs: 0x294c0
   1a9cd:	e8 88 6a 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1a9d2:	85 c0                	test   eax,eax
   1a9d4:	0f 85 d7 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_49
   1a9da:	ba 2f 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_76                              ; fixup: num: 3446, src obj: 1, src ofs: 0x1a9db, dst obj: 3, dst ofs: 0x392f
   1a9df:	b8 ca 19 00 00       	mov    eax,0x19ca
   1a9e4:	89 cb                	mov    ebx,ecx
   1a9e6:	e8 a5 fc 04 00       	call   play_wav
   1a9eb:	89 ca                	mov    edx,ecx
   1a9ed:	89 e8                	mov    eax,ebp
   1a9ef:	e8 bc d9 00 00       	call   SPOKE_TO_MOM_ABOUT_DAD
   1a9f4:	85 c0                	test   eax,eax
   1a9f6:	75 0c                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_45
   1a9f8:	ba 37 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_77                              ; fixup: num: 3445, src obj: 1, src ofs: 0x1a9f9, dst obj: 3, dst ofs: 0x3937
   1a9fd:	b8 ce 19 00 00       	mov    eax,0x19ce
   1aa02:	eb 1b                	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_46
talk_to_PAT_O_REILLY_BUTCHE_branch_45:
   1aa04:	ba 3a 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_78                              ; fixup: num: 3444, src obj: 1, src ofs: 0x1aa05, dst obj: 3, dst ofs: 0x393a
   1aa09:	b8 d2 19 00 00       	mov    eax,0x19d2
   1aa0e:	89 cb                	mov    ebx,ecx
   1aa10:	e8 7b fc 04 00       	call   play_wav
   1aa15:	ba 3d 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_79                              ; fixup: num: 3443, src obj: 1, src ofs: 0x1aa16, dst obj: 3, dst ofs: 0x393d
   1aa1a:	b8 d6 19 00 00       	mov    eax,0x19d6
talk_to_PAT_O_REILLY_BUTCHE_branch_46:
   1aa1f:	89 cb                	mov    ebx,ecx
   1aa21:	e8 6a fc 04 00       	call   play_wav
   1aa26:	89 ca                	mov    edx,ecx
   1aa28:	89 e8                	mov    eax,ebp
   1aa2a:	e8 e1 d8 00 00       	call   SEEN_FATHER
   1aa2f:	85 c0                	test   eax,eax
   1aa31:	0f 84 d3 fb ff ff    	je     talk_to_PAT_O_REILLY_BUTCHE_branch_25
   1aa37:	ba 45 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_80                              ; fixup: num: 3442, src obj: 1, src ofs: 0x1aa38, dst obj: 3, dst ofs: 0x3945
   1aa3c:	b8 dc 19 00 00       	mov    eax,0x19dc
   1aa41:	89 cb                	mov    ebx,ecx
   1aa43:	e8 48 fc 04 00       	call   play_wav
   1aa48:	ba 48 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_81                              ; fixup: num: 3454, src obj: 1, src ofs: 0x1aa49, dst obj: 3, dst ofs: 0x3948
   1aa4d:	b8 e1 19 00 00       	mov    eax,0x19e1
   1aa52:	89 cb                	mov    ebx,ecx
   1aa54:	e8 37 fc 04 00       	call   play_wav
   1aa59:	bb 02 00 00 00       	mov    ebx,0x2
   1aa5e:	ba 50 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_82                              ; fixup: num: 3453, src obj: 1, src ofs: 0x1aa5f, dst obj: 3, dst ofs: 0x3950
   1aa63:	b8 e5 19 00 00       	mov    eax,0x19e5
   1aa68:	e8 23 fc 04 00       	call   play_wav
   1aa6d:	bb 02 00 00 00       	mov    ebx,0x2
   1aa72:	ba 53 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_83                              ; fixup: num: 3452, src obj: 1, src ofs: 0x1aa73, dst obj: 3, dst ofs: 0x3953
   1aa77:	b8 e9 19 00 00       	mov    eax,0x19e9
   1aa7c:	e8 0f fc 04 00       	call   play_wav
   1aa81:	b8 6f 02 00 00       	mov    eax,0x26f
   1aa86:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3451, src obj: 1, src ofs: 0x1aa87, dst obj: 3, dst ofs: 0x295c0
   1aa8b:	e8 10 f7 00 00       	call   GetDlgFileString
   1aa90:	89 c6                	mov    esi,eax
   1aa92:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_47:
   1aa93:	8a 06                	mov    al,BYTE PTR [esi]
   1aa95:	88 07                	mov    BYTE PTR [edi],al
   1aa97:	3c 00                	cmp    al,0x0
   1aa99:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_48
   1aa9b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1aa9e:	83 c6 02             	add    esi,0x2
   1aaa1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1aaa4:	83 c7 02             	add    edi,0x2
   1aaa7:	3c 00                	cmp    al,0x0
   1aaa9:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_47
talk_to_PAT_O_REILLY_BUTCHE_branch_48:
   1aaab:	5f                   	pop    edi
   1aaac:	e9 59 fb ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_49:
   1aab1:	b8 70 02 00 00       	mov    eax,0x270
   1aab6:	e8 e5 f6 00 00       	call   GetDlgFileString
   1aabb:	89 c2                	mov    edx,eax
   1aabd:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3450, src obj: 1, src ofs: 0x1aabe, dst obj: 3, dst ofs: 0x294c0
   1aac2:	e8 93 69 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1aac7:	85 c0                	test   eax,eax
   1aac9:	0f 85 92 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_55
   1aacf:	ba 5b 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_84                              ; fixup: num: 3449, src obj: 1, src ofs: 0x1aad0, dst obj: 3, dst ofs: 0x395b
   1aad4:	b8 f6 19 00 00       	mov    eax,0x19f6
   1aad9:	89 cb                	mov    ebx,ecx
   1aadb:	e8 b0 fb 04 00       	call   play_wav
   1aae0:	e8 ab dd 00 00       	call   BUTCHER_CATS_SKINNED_2
   1aae5:	b8 63 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_85                              ; fixup: num: 3448, src obj: 1, src ofs: 0x1aae6, dst obj: 3, dst ofs: 0x3963
   1aaea:	e8 81 1d 05 00       	call   check_inventory
   1aaef:	84 c0                	test   al,al
   1aaf1:	75 3e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_52
   1aaf3:	b8 74 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_86                              ; fixup: num: 3459, src obj: 1, src ofs: 0x1aaf4, dst obj: 3, dst ofs: 0x3974
   1aaf8:	e8 73 1d 05 00       	call   check_inventory
   1aafd:	84 c0                	test   al,al
   1aaff:	75 30                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_52
   1ab01:	b8 71 02 00 00       	mov    eax,0x271
   1ab06:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3458, src obj: 1, src ofs: 0x1ab07, dst obj: 3, dst ofs: 0x295c0
   1ab0b:	e8 90 f6 00 00       	call   GetDlgFileString
   1ab10:	89 c6                	mov    esi,eax
   1ab12:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_50:
   1ab13:	8a 06                	mov    al,BYTE PTR [esi]
   1ab15:	88 07                	mov    BYTE PTR [edi],al
   1ab17:	3c 00                	cmp    al,0x0
   1ab19:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_51
   1ab1b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ab1e:	83 c6 02             	add    esi,0x2
   1ab21:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ab24:	83 c7 02             	add    edi,0x2
   1ab27:	3c 00                	cmp    al,0x0
   1ab29:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_50
talk_to_PAT_O_REILLY_BUTCHE_branch_51:
   1ab2b:	5f                   	pop    edi
   1ab2c:	e9 d9 fa ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_52:
   1ab31:	b8 72 02 00 00       	mov    eax,0x272
   1ab36:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3457, src obj: 1, src ofs: 0x1ab37, dst obj: 3, dst ofs: 0x295c0
   1ab3b:	e8 60 f6 00 00       	call   GetDlgFileString
   1ab40:	89 c6                	mov    esi,eax
   1ab42:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_53:
   1ab43:	8a 06                	mov    al,BYTE PTR [esi]
   1ab45:	88 07                	mov    BYTE PTR [edi],al
   1ab47:	3c 00                	cmp    al,0x0
   1ab49:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_54
   1ab4b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ab4e:	83 c6 02             	add    esi,0x2
   1ab51:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ab54:	83 c7 02             	add    edi,0x2
   1ab57:	3c 00                	cmp    al,0x0
   1ab59:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_53
talk_to_PAT_O_REILLY_BUTCHE_branch_54:
   1ab5b:	5f                   	pop    edi
   1ab5c:	e9 a9 fa ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_55:
   1ab61:	b8 73 02 00 00       	mov    eax,0x273
   1ab66:	e8 35 f6 00 00       	call   GetDlgFileString
   1ab6b:	89 c2                	mov    edx,eax
   1ab6d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3456, src obj: 1, src ofs: 0x1ab6e, dst obj: 3, dst ofs: 0x294c0
   1ab72:	e8 e3 68 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1ab77:	85 c0                	test   eax,eax
   1ab79:	74 1e                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_56
   1ab7b:	b8 74 02 00 00       	mov    eax,0x274
   1ab80:	e8 1b f6 00 00       	call   GetDlgFileString
   1ab85:	89 c2                	mov    edx,eax
   1ab87:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3455, src obj: 1, src ofs: 0x1ab88, dst obj: 3, dst ofs: 0x294c0
   1ab8c:	e8 c9 68 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1ab91:	85 c0                	test   eax,eax
   1ab93:	0f 85 da 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_62
talk_to_PAT_O_REILLY_BUTCHE_branch_56:
   1ab99:	89 ea                	mov    edx,ebp
   1ab9b:	89 c8                	mov    eax,ecx
   1ab9d:	e8 1e d9 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   1aba2:	89 cb                	mov    ebx,ecx
   1aba4:	ba 84 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_87                              ; fixup: num: 3467, src obj: 1, src ofs: 0x1aba5, dst obj: 3, dst ofs: 0x3984
   1aba9:	b8 07 1a 00 00       	mov    eax,0x1a07
   1abae:	e8 dd fa 04 00       	call   play_wav
   1abb3:	ba 8c 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_88                              ; fixup: num: 3466, src obj: 1, src ofs: 0x1abb4, dst obj: 3, dst ofs: 0x398c
   1abb8:	b8 0d 1a 00 00       	mov    eax,0x1a0d
   1abbd:	89 cb                	mov    ebx,ecx
   1abbf:	e8 cc fa 04 00       	call   play_wav
   1abc4:	ba 8f 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_89                              ; fixup: num: 3465, src obj: 1, src ofs: 0x1abc5, dst obj: 3, dst ofs: 0x398f
   1abc9:	b8 11 1a 00 00       	mov    eax,0x1a11
   1abce:	89 eb                	mov    ebx,ebp
   1abd0:	e8 bb fa 04 00       	call   play_wav
   1abd5:	ba 97 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_90                              ; fixup: num: 3464, src obj: 1, src ofs: 0x1abd6, dst obj: 3, dst ofs: 0x3997
   1abda:	b8 18 1a 00 00       	mov    eax,0x1a18
   1abdf:	89 cb                	mov    ebx,ecx
   1abe1:	e8 aa fa 04 00       	call   play_wav
   1abe6:	ba 9a 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_91                              ; fixup: num: 3463, src obj: 1, src ofs: 0x1abe7, dst obj: 3, dst ofs: 0x399a
   1abeb:	b8 1c 1a 00 00       	mov    eax,0x1a1c
   1abf0:	89 eb                	mov    ebx,ebp
   1abf2:	e8 99 fa 04 00       	call   play_wav
   1abf7:	b8 a2 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_92                              ; fixup: num: 3462, src obj: 1, src ofs: 0x1abf8, dst obj: 3, dst ofs: 0x39a2
   1abfc:	e8 6f 1c 05 00       	call   check_inventory
   1ac01:	84 c0                	test   al,al
   1ac03:	75 3e                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_59
   1ac05:	b8 b3 39 00 00       	mov    eax,@obj3:pat_o_cpp_variable_93                              ; fixup: num: 3461, src obj: 1, src ofs: 0x1ac06, dst obj: 3, dst ofs: 0x39b3
   1ac0a:	e8 61 1c 05 00       	call   check_inventory
   1ac0f:	84 c0                	test   al,al
   1ac11:	75 30                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_59
   1ac13:	b8 75 02 00 00       	mov    eax,0x275
   1ac18:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3460, src obj: 1, src ofs: 0x1ac19, dst obj: 3, dst ofs: 0x295c0
   1ac1d:	e8 7e f5 00 00       	call   GetDlgFileString
   1ac22:	89 c6                	mov    esi,eax
   1ac24:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_57:
   1ac25:	8a 06                	mov    al,BYTE PTR [esi]
   1ac27:	88 07                	mov    BYTE PTR [edi],al
   1ac29:	3c 00                	cmp    al,0x0
   1ac2b:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_58
   1ac2d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ac30:	83 c6 02             	add    esi,0x2
   1ac33:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ac36:	83 c7 02             	add    edi,0x2
   1ac39:	3c 00                	cmp    al,0x0
   1ac3b:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_57
talk_to_PAT_O_REILLY_BUTCHE_branch_58:
   1ac3d:	5f                   	pop    edi
   1ac3e:	e9 c7 f9 ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_59:
   1ac43:	b8 76 02 00 00       	mov    eax,0x276
   1ac48:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3474, src obj: 1, src ofs: 0x1ac49, dst obj: 3, dst ofs: 0x295c0
   1ac4d:	e8 4e f5 00 00       	call   GetDlgFileString
   1ac52:	89 c6                	mov    esi,eax
   1ac54:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_60:
   1ac55:	8a 06                	mov    al,BYTE PTR [esi]
   1ac57:	88 07                	mov    BYTE PTR [edi],al
   1ac59:	3c 00                	cmp    al,0x0
   1ac5b:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_61
   1ac5d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ac60:	83 c6 02             	add    esi,0x2
   1ac63:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ac66:	83 c7 02             	add    edi,0x2
   1ac69:	3c 00                	cmp    al,0x0
   1ac6b:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_60
talk_to_PAT_O_REILLY_BUTCHE_branch_61:
   1ac6d:	5f                   	pop    edi
   1ac6e:	e9 97 f9 ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_62:
   1ac73:	b8 77 02 00 00       	mov    eax,0x277
   1ac78:	e8 23 f5 00 00       	call   GetDlgFileString
   1ac7d:	89 c2                	mov    edx,eax
   1ac7f:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3473, src obj: 1, src ofs: 0x1ac80, dst obj: 3, dst ofs: 0x294c0
   1ac84:	e8 d1 67 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1ac89:	85 c0                	test   eax,eax
   1ac8b:	0f 85 9e 00 00 00    	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_67
   1ac91:	bb 02 00 00 00       	mov    ebx,0x2
   1ac96:	ba c3 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_94                              ; fixup: num: 3472, src obj: 1, src ofs: 0x1ac97, dst obj: 3, dst ofs: 0x39c3
   1ac9b:	b8 24 1a 00 00       	mov    eax,0x1a24
   1aca0:	e8 eb f9 04 00       	call   play_wav
   1aca5:	ba c6 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_95                              ; fixup: num: 3471, src obj: 1, src ofs: 0x1aca6, dst obj: 3, dst ofs: 0x39c6
   1acaa:	b8 29 1a 00 00       	mov    eax,0x1a29
   1acaf:	89 eb                	mov    ebx,ebp
   1acb1:	e8 da f9 04 00       	call   play_wav
   1acb6:	89 ca                	mov    edx,ecx
   1acb8:	89 e8                	mov    eax,ebp
   1acba:	e8 21 d7 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   1acbf:	85 c0                	test   eax,eax
   1acc1:	74 22                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_63
   1acc3:	ba ce 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_96                              ; fixup: num: 3470, src obj: 1, src ofs: 0x1acc4, dst obj: 3, dst ofs: 0x39ce
   1acc8:	b8 31 1a 00 00       	mov    eax,0x1a31
   1accd:	89 cb                	mov    ebx,ecx
   1accf:	e8 bc f9 04 00       	call   play_wav
   1acd4:	bb 02 00 00 00       	mov    ebx,0x2
   1acd9:	ba d1 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_97                              ; fixup: num: 3469, src obj: 1, src ofs: 0x1acda, dst obj: 3, dst ofs: 0x39d1
   1acde:	b8 36 1a 00 00       	mov    eax,0x1a36
   1ace3:	eb 15                	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_64
talk_to_PAT_O_REILLY_BUTCHE_branch_63:
   1ace5:	89 ea                	mov    edx,ebp
   1ace7:	89 c8                	mov    eax,ecx
   1ace9:	e8 f2 d6 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   1acee:	89 cb                	mov    ebx,ecx
   1acf0:	ba d9 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_98                              ; fixup: num: 3468, src obj: 1, src ofs: 0x1acf1, dst obj: 3, dst ofs: 0x39d9
   1acf5:	b8 2d 1a 00 00       	mov    eax,0x1a2d
talk_to_PAT_O_REILLY_BUTCHE_branch_64:
   1acfa:	e8 91 f9 04 00       	call   play_wav
   1acff:	b8 78 02 00 00       	mov    eax,0x278
   1ad04:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3481, src obj: 1, src ofs: 0x1ad05, dst obj: 3, dst ofs: 0x295c0
   1ad09:	e8 92 f4 00 00       	call   GetDlgFileString
   1ad0e:	89 c6                	mov    esi,eax
   1ad10:	57                   	push   edi
talk_to_PAT_O_REILLY_BUTCHE_branch_65:
   1ad11:	8a 06                	mov    al,BYTE PTR [esi]
   1ad13:	88 07                	mov    BYTE PTR [edi],al
   1ad15:	3c 00                	cmp    al,0x0
   1ad17:	74 10                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_66
   1ad19:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ad1c:	83 c6 02             	add    esi,0x2
   1ad1f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ad22:	83 c7 02             	add    edi,0x2
   1ad25:	3c 00                	cmp    al,0x0
   1ad27:	75 e8                	jne    talk_to_PAT_O_REILLY_BUTCHE_branch_65
talk_to_PAT_O_REILLY_BUTCHE_branch_66:
   1ad29:	5f                   	pop    edi
   1ad2a:	e9 db f8 ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_67:
   1ad2f:	b8 79 02 00 00       	mov    eax,0x279
   1ad34:	e8 67 f4 00 00       	call   GetDlgFileString
   1ad39:	89 c2                	mov    edx,eax
   1ad3b:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 3480, src obj: 1, src ofs: 0x1ad3c, dst obj: 3, dst ofs: 0x294c0
   1ad40:	e8 15 67 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1ad45:	85 c0                	test   eax,eax
   1ad47:	0f 84 bd f8 ff ff    	je     talk_to_PAT_O_REILLY_BUTCHE_branch_25
   1ad4d:	ba dc 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_99                              ; fixup: num: 3479, src obj: 1, src ofs: 0x1ad4e, dst obj: 3, dst ofs: 0x39dc
   1ad52:	b8 4e 1a 00 00       	mov    eax,0x1a4e
   1ad57:	89 cb                	mov    ebx,ecx
   1ad59:	e8 32 f9 04 00       	call   play_wav
   1ad5e:	e9 a7 f8 ff ff       	jmp    talk_to_PAT_O_REILLY_BUTCHE_branch_25
talk_to_PAT_O_REILLY_BUTCHE_branch_68:
   1ad63:	ba e4 39 00 00       	mov    edx,@obj3:pat_o_cpp_variable_100                             ; fixup: num: 3478, src obj: 1, src ofs: 0x1ad64, dst obj: 3, dst ofs: 0x39e4
   1ad68:	b8 41 1a 00 00       	mov    eax,0x1a41
   1ad6d:	31 db                	xor    ebx,ebx
   1ad6f:	e8 1c f9 04 00       	call   play_wav
talk_to_PAT_O_REILLY_BUTCHE_branch_69:
   1ad74:	31 c0                	xor    eax,eax
   1ad76:	5d                   	pop    ebp
   1ad77:	5f                   	pop    edi
   1ad78:	5e                   	pop    esi
   1ad79:	5a                   	pop    edx
   1ad7a:	59                   	pop    ecx
   1ad7b:	5b                   	pop    ebx
   1ad7c:	c3                   	ret    
talk_to_PAT_O_REILLY_BUTCHE_branch_70:
   1ad7d:	89 15 84 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE,edx                   ; fixup: num: 3477, src obj: 1, src ofs: 0x1ad7f, dst obj: 3, dst ofs: 0x22c84
   1ad83:	a1 84 2c 02 00       	mov    eax,ds:@obj3:PAT_O_REILLY_BUTCHE                             ; fixup: num: 3476, src obj: 1, src ofs: 0x1ad84, dst obj: 3, dst ofs: 0x22c84
   1ad88:	c3                   	ret    
   1ad89:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1ad8f:	90                   	nop

;-------------------------------------------------
;  Function                                      -
;  'PAT_O_REILLY_BUTCHE_FIRST_CONVERSATION'      -
;-------------------------------------------------
PAT_O_REILLY_BUTCHE_FIRST_CONVERSATION:
   1ad90:	85 c0                	test   eax,eax
   1ad92:	74 e9                	je     talk_to_PAT_O_REILLY_BUTCHE_branch_70
   1ad94:	a1 84 2c 02 00       	mov    eax,ds:@obj3:PAT_O_REILLY_BUTCHE                             ; fixup: num: 3475, src obj: 1, src ofs: 0x1ad95, dst obj: 3, dst ofs: 0x22c84
   1ad99:	c3                   	ret    
   1ad9a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'PAT_O_REILLY_BUTCHE_initialize'     -
;-------------------------------------------------
PAT_O_REILLY_BUTCHE_initialize:
   1ada0:	53                   	push   ebx
   1ada1:	52                   	push   edx
   1ada2:	ba 01 00 00 00       	mov    edx,0x1
   1ada7:	31 db                	xor    ebx,ebx
   1ada9:	89 15 84 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE,edx                   ; fixup: num: 3484, src obj: 1, src ofs: 0x1adab, dst obj: 3, dst ofs: 0x22c84
   1adaf:	89 1d 88 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_1,ebx        ; fixup: num: 3483, src obj: 1, src ofs: 0x1adb1, dst obj: 3, dst ofs: 0x22c88
   1adb5:	89 1d 8c 2c 02 00    	mov    DWORD PTR ds:@obj3:PAT_O_REILLY_BUTCHE_variable_2,ebx        ; fixup: num: 3482, src obj: 1, src ofs: 0x1adb7, dst obj: 3, dst ofs: 0x22c8c
   1adbb:	5a                   	pop    edx
   1adbc:	5b                   	pop    ebx
   1adbd:	c3                   	ret    
;-------------------------------------------------
;  Bad code 24 (zero after ret):                 -
;-------------------------------------------------
;  1adbc:	5b                   	pop    ebx
;  1adbd:	c3                   	ret    
;  1adbe:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   1adbe:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 24                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 26 (D:\SOURCE\pat_o.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 26: D:\SOURCE\pat_o.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
pat_o_cpp_variable_1:
    3680:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_2:
    3681:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
pat_o_cpp_variable_3:
    3699:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_4:
    36a1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    36a2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    36a3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_5:
    36a4:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_6:
    36ac:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
pat_o_cpp_variable_7:
    36b9:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
pat_o_cpp_variable_8:
    36ca:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_9:
    36d2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    36d3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    36d4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_10:
    36d5:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_11:
    36dd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    36de:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    36df:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_12:
    36e0:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_13:
    36e8:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
pat_o_cpp_variable_14:
    36ef:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
pat_o_cpp_variable_15:
    36f7:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
pat_o_cpp_variable_16:
    3709:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_17:
    3711:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3712:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3713:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_18:
    3714:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_19:
    371c:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_20:
    3724:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_21:
    372c:	4e 4f 54 45 00       	db     "NOTE",0x00
pat_o_cpp_variable_22:
    3731:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
pat_o_cpp_variable_23:
    3740:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
pat_o_cpp_variable_24:
    374a:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
pat_o_cpp_variable_25:
    375e:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_26:
    3766:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_27:
    3776:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_28:
    377e:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_29:
    3786:	4d 45 41 54 00       	db     "MEAT",0x00
pat_o_cpp_variable_30:
    378b:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_31:
    379b:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
pat_o_cpp_variable_32:
    37a5:	47 4f 54 5f 4d 45 41 54 00 	db     "GOT_MEAT",0x00
pat_o_cpp_variable_33:
    37ae:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_34:
    37b6:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_35:
    37be:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    37bf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    37c0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_36:
    37c1:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_37:
    37c9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    37ca:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    37cb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_38:
    37cc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    37cd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    37ce:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_39:
    37cf:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_40:
    37d7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    37d8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    37d9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_41:
    37da:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_42:
    37e2:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_43:
    37ea:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_44:
    37fb:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_45:
    380b:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
pat_o_cpp_variable_46:
    3820:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_47:
    3828:	44 41 59 5f 35 00    	db     "DAY_5",0x00
pat_o_cpp_variable_48:
    382e:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_49:
    3836:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_50:
    3837:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3838:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3839:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_51:
    383a:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_52:
    3842:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3843:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3844:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_53:
    3845:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_54:
    384d:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_55:
    3855:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_56:
    385d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    385e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    385f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_57:
    3860:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_58:
    3868:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_59:
    3879:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_60:
    3889:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_61:
    389a:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_62:
    38aa:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    38ab:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    38ac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_63:
    38ad:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_64:
    38b5:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_65:
    38bd:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_66:
    38c5:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_67:
    38cd:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_68:
    38de:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_69:
    38e6:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_70:
    38ee:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_71:
    38f6:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_72:
    38fe:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_73:
    3906:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_74:
    390e:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_75:
    391f:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_76:
    392f:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_77:
    3937:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3938:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3939:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_78:
    393a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    393b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    393c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_79:
    393d:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_80:
    3945:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3946:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3947:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_81:
    3948:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_82:
    3950:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3951:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3952:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_83:
    3953:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_84:
    395b:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_85:
    3963:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_86:
    3974:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_87:
    3984:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_88:
    398c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    398d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    398e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_89:
    398f:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_90:
    3997:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3998:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3999:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_91:
    399a:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_92:
    39a2:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 30 00 	db     "MEAT_PERMISSION0",0x00
pat_o_cpp_variable_93:
    39b3:	4d 45 41 54 5f 50 45 52 4d 49 53 53 49 4f 4e 00 	db     "MEAT_PERMISSION",0x00
pat_o_cpp_variable_94:
    39c3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    39c4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    39c5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_95:
    39c6:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_96:
    39ce:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    39cf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    39d0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_97:
    39d1:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_98:
    39d9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    39da:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    39db:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pat_o_cpp_variable_99:
    39dc:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
pat_o_cpp_variable_100:
    39e4:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 26 (D:\SOURCE\pat_o.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 26: D:\SOURCE\pat_o.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
PAT_O_REILLY_BUTCHE:                                                                                ; access size: DWORD
   22c84:	00 00 00 00          	dd     0x00000000
PAT_O_REILLY_BUTCHE_variable_1:                                                                     ; access size: DWORD
   22c88:	00 00 00 00          	dd     0x00000000
PAT_O_REILLY_BUTCHE_variable_2:                                                                     ; access size: DWORD
   22c8c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 26 (D:\SOURCE\pat_o.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------