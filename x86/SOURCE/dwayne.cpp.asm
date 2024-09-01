;-------------------------------------------------------------------------------
;                                                                              -
;  Module 66: D:\SOURCE\dwayne.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'remove_blackmail_items'             -
;-------------------------------------------------
remove_blackmail_items:
   2a250:	53                   	push   ebx
   2a251:	52                   	push   edx
   2a252:	b8 a8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_1                              ; fixup: num: 7002, src obj: 1, src ofs: 0x2a253, dst obj: 3, dst ofs: 0x81a8
   2a257:	e8 14 26 04 00       	call   check_inventory
   2a25c:	84 c0                	test   al,al
   2a25e:	74 11                	je     remove_blackmail_items_branch_1
   2a260:	ba b2 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_2                              ; fixup: num: 7001, src obj: 1, src ofs: 0x2a261, dst obj: 3, dst ofs: 0x81b2
   2a265:	b8 bc 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_3                              ; fixup: num: 7000, src obj: 1, src ofs: 0x2a266, dst obj: 3, dst ofs: 0x81bc
   2a26a:	31 db                	xor    ebx,ebx
   2a26c:	e8 9f 8c 02 00       	call   set_object
remove_blackmail_items_branch_1:
   2a271:	b8 c6 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_4                              ; fixup: num: 6999, src obj: 1, src ofs: 0x2a272, dst obj: 3, dst ofs: 0x81c6
   2a276:	e8 f5 25 04 00       	call   check_inventory
   2a27b:	84 c0                	test   al,al
   2a27d:	74 11                	je     remove_blackmail_items_branch_2
   2a27f:	ba da 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_5                              ; fixup: num: 6998, src obj: 1, src ofs: 0x2a280, dst obj: 3, dst ofs: 0x81da
   2a284:	b8 ee 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_6                              ; fixup: num: 6997, src obj: 1, src ofs: 0x2a285, dst obj: 3, dst ofs: 0x81ee
   2a289:	31 db                	xor    ebx,ebx
   2a28b:	e8 80 8c 02 00       	call   set_object
remove_blackmail_items_branch_2:
   2a290:	b8 f8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_7                              ; fixup: num: 6996, src obj: 1, src ofs: 0x2a291, dst obj: 3, dst ofs: 0x81f8
   2a295:	e8 d6 25 04 00       	call   check_inventory
   2a29a:	84 c0                	test   al,al
   2a29c:	74 11                	je     remove_blackmail_items_branch_3
   2a29e:	ba fd 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_8                              ; fixup: num: 6995, src obj: 1, src ofs: 0x2a29f, dst obj: 3, dst ofs: 0x81fd
   2a2a3:	b8 02 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_9                              ; fixup: num: 6994, src obj: 1, src ofs: 0x2a2a4, dst obj: 3, dst ofs: 0x8202
   2a2a8:	31 db                	xor    ebx,ebx
   2a2aa:	e8 61 8c 02 00       	call   set_object
remove_blackmail_items_branch_3:
   2a2af:	b8 0c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_10                             ; fixup: num: 6993, src obj: 1, src ofs: 0x2a2b0, dst obj: 3, dst ofs: 0x820c
   2a2b4:	e8 b7 25 04 00       	call   check_inventory
   2a2b9:	84 c0                	test   al,al
   2a2bb:	74 11                	je     remove_blackmail_items_branch_4
   2a2bd:	ba 1b 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_11                             ; fixup: num: 6992, src obj: 1, src ofs: 0x2a2be, dst obj: 3, dst ofs: 0x821b
   2a2c2:	b8 2a 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_12                             ; fixup: num: 6991, src obj: 1, src ofs: 0x2a2c3, dst obj: 3, dst ofs: 0x822a
   2a2c7:	31 db                	xor    ebx,ebx
   2a2c9:	e8 42 8c 02 00       	call   set_object
remove_blackmail_items_branch_4:
   2a2ce:	b8 34 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_13                             ; fixup: num: 6990, src obj: 1, src ofs: 0x2a2cf, dst obj: 3, dst ofs: 0x8234
   2a2d3:	e8 98 25 04 00       	call   check_inventory
   2a2d8:	84 c0                	test   al,al
   2a2da:	74 11                	je     remove_blackmail_items_branch_5
   2a2dc:	ba 3c 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_14                             ; fixup: num: 6989, src obj: 1, src ofs: 0x2a2dd, dst obj: 3, dst ofs: 0x823c
   2a2e1:	b8 44 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_15                             ; fixup: num: 6988, src obj: 1, src ofs: 0x2a2e2, dst obj: 3, dst ofs: 0x8244
   2a2e6:	31 db                	xor    ebx,ebx
   2a2e8:	e8 23 8c 02 00       	call   set_object
remove_blackmail_items_branch_5:
   2a2ed:	b8 48 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_16                             ; fixup: num: 6987, src obj: 1, src ofs: 0x2a2ee, dst obj: 3, dst ofs: 0x8248
   2a2f2:	e8 79 25 04 00       	call   check_inventory
   2a2f7:	84 c0                	test   al,al
   2a2f9:	74 11                	je     remove_blackmail_items_branch_6
   2a2fb:	ba 5a 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_17                             ; fixup: num: 6986, src obj: 1, src ofs: 0x2a2fc, dst obj: 3, dst ofs: 0x825a
   2a300:	b8 6c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_18                             ; fixup: num: 7013, src obj: 1, src ofs: 0x2a301, dst obj: 3, dst ofs: 0x826c
   2a305:	31 db                	xor    ebx,ebx
   2a307:	e8 04 8c 02 00       	call   set_object
remove_blackmail_items_branch_6:
   2a30c:	5a                   	pop    edx
   2a30d:	5b                   	pop    ebx
   2a30e:	c3                   	ret    
   2a30f:	90                   	nop

;-------------------------------------------------
;  Function 'talk_to_SHERIFF_DWAYNE'             -
;-------------------------------------------------
talk_to_SHERIFF_DWAYNE:
   2a310:	53                   	push   ebx
   2a311:	51                   	push   ecx
   2a312:	52                   	push   edx
   2a313:	56                   	push   esi
   2a314:	57                   	push   edi
   2a315:	55                   	push   ebp
   2a316:	b8 70 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_19                             ; fixup: num: 7012, src obj: 1, src ofs: 0x2a317, dst obj: 3, dst ofs: 0x8270
   2a31b:	e8 70 24 04 00       	call   check_script_flag
   2a320:	30 c9                	xor    cl,cl
   2a322:	84 c0                	test   al,al
   2a324:	0f 84 1c 03 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_17
   2a32a:	b8 7c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_20                             ; fixup: num: 7011, src obj: 1, src ofs: 0x2a32b, dst obj: 3, dst ofs: 0x827c
   2a32f:	31 d2                	xor    edx,edx
   2a331:	e8 aa 24 04 00       	call   set_script_flag
   2a336:	b8 88 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_21                             ; fixup: num: 7010, src obj: 1, src ofs: 0x2a337, dst obj: 3, dst ofs: 0x8288
   2a33b:	e8 50 24 04 00       	call   check_script_flag
   2a340:	84 c0                	test   al,al
   2a342:	74 22                	je     talk_to_SHERIFF_DWAYNE_branch_1
   2a344:	bb 02 00 00 00       	mov    ebx,0x2
   2a349:	ba a2 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_22                             ; fixup: num: 7009, src obj: 1, src ofs: 0x2a34a, dst obj: 3, dst ofs: 0x82a2
   2a34e:	b8 d6 38 00 00       	mov    eax,0x38d6
   2a353:	e8 38 03 04 00       	call   play_wav
   2a358:	b8 a9 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_23                             ; fixup: num: 7008, src obj: 1, src ofs: 0x2a359, dst obj: 3, dst ofs: 0x82a9
   2a35d:	31 d2                	xor    edx,edx
   2a35f:	b1 01                	mov    cl,0x1
   2a361:	e9 4b 01 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_9
talk_to_SHERIFF_DWAYNE_branch_1:
   2a366:	b8 c3 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_24                             ; fixup: num: 7007, src obj: 1, src ofs: 0x2a367, dst obj: 3, dst ofs: 0x82c3
   2a36b:	e8 20 24 04 00       	call   check_script_flag
   2a370:	84 c0                	test   al,al
   2a372:	74 2e                	je     talk_to_SHERIFF_DWAYNE_branch_2
   2a374:	bb 02 00 00 00       	mov    ebx,0x2
   2a379:	ba da 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_25                             ; fixup: num: 7006, src obj: 1, src ofs: 0x2a37a, dst obj: 3, dst ofs: 0x82da
   2a37e:	b8 4d 38 00 00       	mov    eax,0x384d
   2a383:	e8 08 03 04 00       	call   play_wav
   2a388:	b8 e1 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_26                             ; fixup: num: 7005, src obj: 1, src ofs: 0x2a389, dst obj: 3, dst ofs: 0x82e1
   2a38d:	31 d2                	xor    edx,edx
   2a38f:	e8 4c 24 04 00       	call   set_script_flag
   2a394:	b8 f8 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_27                             ; fixup: num: 7004, src obj: 1, src ofs: 0x2a395, dst obj: 3, dst ofs: 0x82f8
   2a399:	31 d2                	xor    edx,edx
   2a39b:	b1 01                	mov    cl,0x1
   2a39d:	e9 0f 01 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_9
talk_to_SHERIFF_DWAYNE_branch_2:
   2a3a2:	b8 05 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_28                             ; fixup: num: 7003, src obj: 1, src ofs: 0x2a3a3, dst obj: 3, dst ofs: 0x8305
   2a3a7:	e8 e4 23 04 00       	call   check_script_flag
   2a3ac:	84 c0                	test   al,al
   2a3ae:	74 1e                	je     talk_to_SHERIFF_DWAYNE_branch_3
   2a3b0:	bb 02 00 00 00       	mov    ebx,0x2
   2a3b5:	ba 1e 83 00 00       	mov    edx,@obj3:dwayne_cpp_variable_29                             ; fixup: num: 7024, src obj: 1, src ofs: 0x2a3b6, dst obj: 3, dst ofs: 0x831e
   2a3ba:	b8 6d 38 00 00       	mov    eax,0x386d
   2a3bf:	e8 cc 02 04 00       	call   play_wav
   2a3c4:	b8 25 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_30                             ; fixup: num: 7023, src obj: 1, src ofs: 0x2a3c5, dst obj: 3, dst ofs: 0x8325
   2a3c9:	e9 e1 00 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_8
talk_to_SHERIFF_DWAYNE_branch_3:
   2a3ce:	b8 3e 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_31                             ; fixup: num: 7022, src obj: 1, src ofs: 0x2a3cf, dst obj: 3, dst ofs: 0x833e
   2a3d3:	e8 b8 23 04 00       	call   check_script_flag
   2a3d8:	84 c0                	test   al,al
   2a3da:	74 1e                	je     talk_to_SHERIFF_DWAYNE_branch_4
   2a3dc:	bb 02 00 00 00       	mov    ebx,0x2
   2a3e1:	ba 56 83 00 00       	mov    edx,@obj3:dwayne_cpp_variable_32                             ; fixup: num: 7021, src obj: 1, src ofs: 0x2a3e2, dst obj: 3, dst ofs: 0x8356
   2a3e6:	b8 bc 38 00 00       	mov    eax,0x38bc
   2a3eb:	e8 a0 02 04 00       	call   play_wav
   2a3f0:	b8 5d 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_33                             ; fixup: num: 7020, src obj: 1, src ofs: 0x2a3f1, dst obj: 3, dst ofs: 0x835d
   2a3f5:	e9 b5 00 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_8
talk_to_SHERIFF_DWAYNE_branch_4:
   2a3fa:	b8 75 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_34                             ; fixup: num: 7019, src obj: 1, src ofs: 0x2a3fb, dst obj: 3, dst ofs: 0x8375
   2a3ff:	e8 8c 23 04 00       	call   check_script_flag
   2a404:	84 c0                	test   al,al
   2a406:	74 2e                	je     talk_to_SHERIFF_DWAYNE_branch_5
   2a408:	bb 02 00 00 00       	mov    ebx,0x2
   2a40d:	ba 8e 83 00 00       	mov    edx,@obj3:dwayne_cpp_variable_35                             ; fixup: num: 7018, src obj: 1, src ofs: 0x2a40e, dst obj: 3, dst ofs: 0x838e
   2a412:	b8 b5 38 00 00       	mov    eax,0x38b5
   2a417:	e8 74 02 04 00       	call   play_wav
   2a41c:	b8 95 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_36                             ; fixup: num: 7017, src obj: 1, src ofs: 0x2a41d, dst obj: 3, dst ofs: 0x8395
   2a421:	31 d2                	xor    edx,edx
   2a423:	e8 b8 23 04 00       	call   set_script_flag
   2a428:	b8 ae 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_37                             ; fixup: num: 7016, src obj: 1, src ofs: 0x2a429, dst obj: 3, dst ofs: 0x83ae
   2a42d:	31 d2                	xor    edx,edx
   2a42f:	b1 01                	mov    cl,0x1
   2a431:	e9 7b 00 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_9
talk_to_SHERIFF_DWAYNE_branch_5:
   2a436:	b8 bd 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_38                             ; fixup: num: 7015, src obj: 1, src ofs: 0x2a437, dst obj: 3, dst ofs: 0x83bd
   2a43b:	e8 50 23 04 00       	call   check_script_flag
   2a440:	84 c0                	test   al,al
   2a442:	74 1b                	je     talk_to_SHERIFF_DWAYNE_branch_6
   2a444:	bb 02 00 00 00       	mov    ebx,0x2
   2a449:	ba d7 83 00 00       	mov    edx,@obj3:dwayne_cpp_variable_39                             ; fixup: num: 7014, src obj: 1, src ofs: 0x2a44a, dst obj: 3, dst ofs: 0x83d7
   2a44e:	b8 ed 37 00 00       	mov    eax,0x37ed
   2a453:	e8 38 02 04 00       	call   play_wav
   2a458:	b8 de 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_40                             ; fixup: num: 6896, src obj: 1, src ofs: 0x2a459, dst obj: 3, dst ofs: 0x83de
   2a45d:	eb 50                	jmp    talk_to_SHERIFF_DWAYNE_branch_8
talk_to_SHERIFF_DWAYNE_branch_6:
   2a45f:	b8 f8 83 00 00       	mov    eax,@obj3:dwayne_cpp_variable_41                             ; fixup: num: 6895, src obj: 1, src ofs: 0x2a460, dst obj: 3, dst ofs: 0x83f8
   2a464:	e8 27 23 04 00       	call   check_script_flag
   2a469:	84 c0                	test   al,al
   2a46b:	74 1b                	je     talk_to_SHERIFF_DWAYNE_branch_7
   2a46d:	bb 02 00 00 00       	mov    ebx,0x2
   2a472:	ba 05 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_42                             ; fixup: num: 7033, src obj: 1, src ofs: 0x2a473, dst obj: 3, dst ofs: 0x8405
   2a477:	b8 fc 38 00 00       	mov    eax,0x38fc
   2a47c:	e8 0f 02 04 00       	call   play_wav
   2a481:	b8 0c 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_43                             ; fixup: num: 7032, src obj: 1, src ofs: 0x2a482, dst obj: 3, dst ofs: 0x840c
   2a486:	eb 27                	jmp    talk_to_SHERIFF_DWAYNE_branch_8
talk_to_SHERIFF_DWAYNE_branch_7:
   2a488:	b8 19 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_44                             ; fixup: num: 7031, src obj: 1, src ofs: 0x2a489, dst obj: 3, dst ofs: 0x8419
   2a48d:	e8 fe 22 04 00       	call   check_script_flag
   2a492:	84 c0                	test   al,al
   2a494:	74 20                	je     talk_to_SHERIFF_DWAYNE_branch_10
   2a496:	bb 02 00 00 00       	mov    ebx,0x2
   2a49b:	ba 28 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_45                             ; fixup: num: 7030, src obj: 1, src ofs: 0x2a49c, dst obj: 3, dst ofs: 0x8428
   2a4a0:	b8 80 35 00 00       	mov    eax,0x3580
   2a4a5:	e8 e6 01 04 00       	call   play_wav
   2a4aa:	b8 2f 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_46                             ; fixup: num: 7029, src obj: 1, src ofs: 0x2a4ab, dst obj: 3, dst ofs: 0x842f
talk_to_SHERIFF_DWAYNE_branch_8:
   2a4af:	31 d2                	xor    edx,edx
talk_to_SHERIFF_DWAYNE_branch_9:
   2a4b1:	e8 2a 23 04 00       	call   set_script_flag
talk_to_SHERIFF_DWAYNE_branch_10:
   2a4b6:	b8 3e 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_47                             ; fixup: num: 7028, src obj: 1, src ofs: 0x2a4b7, dst obj: 3, dst ofs: 0x843e
   2a4bb:	e8 d0 22 04 00       	call   check_script_flag
   2a4c0:	84 c0                	test   al,al
   2a4c2:	0f 84 f3 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_14
   2a4c8:	b8 50 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_48                             ; fixup: num: 7027, src obj: 1, src ofs: 0x2a4c9, dst obj: 3, dst ofs: 0x8450
   2a4cd:	e8 be 22 04 00       	call   check_script_flag
   2a4d2:	84 c0                	test   al,al
   2a4d4:	0f 85 e1 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_14
   2a4da:	ba 60 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_49                             ; fixup: num: 7026, src obj: 1, src ofs: 0x2a4db, dst obj: 3, dst ofs: 0x8460
   2a4df:	b8 14 38 00 00       	mov    eax,0x3814
   2a4e4:	31 db                	xor    ebx,ebx
   2a4e6:	e8 a5 01 04 00       	call   play_wav
   2a4eb:	b8 67 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_50                             ; fixup: num: 7025, src obj: 1, src ofs: 0x2a4ec, dst obj: 3, dst ofs: 0x8467
   2a4f0:	e8 9b 22 04 00       	call   check_script_flag
   2a4f5:	84 c0                	test   al,al
   2a4f7:	0f 84 98 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_13
   2a4fd:	84 c9                	test   cl,cl
   2a4ff:	0f 84 90 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_13
   2a505:	ba 78 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_51                             ; fixup: num: 6906, src obj: 1, src ofs: 0x2a506, dst obj: 3, dst ofs: 0x8478
   2a50a:	b8 20 38 00 00       	mov    eax,0x3820
   2a50f:	31 db                	xor    ebx,ebx
   2a511:	e8 7a 01 04 00       	call   play_wav
   2a516:	ba 7f 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_52                             ; fixup: num: 6905, src obj: 1, src ofs: 0x2a517, dst obj: 3, dst ofs: 0x847f
   2a51b:	b8 24 38 00 00       	mov    eax,0x3824
   2a520:	31 db                	xor    ebx,ebx
   2a522:	e8 69 01 04 00       	call   play_wav
   2a527:	ba 82 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_53                             ; fixup: num: 6904, src obj: 1, src ofs: 0x2a528, dst obj: 3, dst ofs: 0x8482
   2a52c:	b8 28 38 00 00       	mov    eax,0x3828
   2a531:	31 db                	xor    ebx,ebx
   2a533:	e8 58 01 04 00       	call   play_wav
   2a538:	b8 69 00 00 00       	mov    eax,0x69
   2a53d:	e8 5e fc ff ff       	call   GetDlgFileString
   2a542:	e8 c9 09 04 00       	call   get_response
   2a547:	83 f8 01             	cmp    eax,0x1
   2a54a:	75 0e                	jne    talk_to_SHERIFF_DWAYNE_branch_11
   2a54c:	ba 89 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_54                             ; fixup: num: 6903, src obj: 1, src ofs: 0x2a54d, dst obj: 3, dst ofs: 0x8489
   2a551:	89 c3                	mov    ebx,eax
   2a553:	b8 32 38 00 00       	mov    eax,0x3832
   2a558:	eb 36                	jmp    talk_to_SHERIFF_DWAYNE_branch_12
talk_to_SHERIFF_DWAYNE_branch_11:
   2a55a:	83 f8 02             	cmp    eax,0x2
   2a55d:	75 36                	jne    talk_to_SHERIFF_DWAYNE_branch_13
   2a55f:	ba 90 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_55                             ; fixup: num: 6902, src obj: 1, src ofs: 0x2a560, dst obj: 3, dst ofs: 0x8490
   2a564:	89 c3                	mov    ebx,eax
   2a566:	b8 3b 38 00 00       	mov    eax,0x383b
   2a56b:	e8 20 01 04 00       	call   play_wav
   2a570:	ba 97 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_56                             ; fixup: num: 6901, src obj: 1, src ofs: 0x2a571, dst obj: 3, dst ofs: 0x8497
   2a575:	b8 40 38 00 00       	mov    eax,0x3840
   2a57a:	31 db                	xor    ebx,ebx
   2a57c:	e8 0f 01 04 00       	call   play_wav
   2a581:	bb 02 00 00 00       	mov    ebx,0x2
   2a586:	ba 9a 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_57                             ; fixup: num: 6900, src obj: 1, src ofs: 0x2a587, dst obj: 3, dst ofs: 0x849a
   2a58b:	b8 44 38 00 00       	mov    eax,0x3844
talk_to_SHERIFF_DWAYNE_branch_12:
   2a590:	e8 fb 00 04 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_13:
   2a595:	b8 a1 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_58                             ; fixup: num: 6899, src obj: 1, src ofs: 0x2a596, dst obj: 3, dst ofs: 0x84a1
   2a59a:	31 d2                	xor    edx,edx
   2a59c:	e8 3f 22 04 00       	call   set_script_flag
   2a5a1:	31 db                	xor    ebx,ebx
   2a5a3:	ba b3 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_59                             ; fixup: num: 6898, src obj: 1, src ofs: 0x2a5a4, dst obj: 3, dst ofs: 0x84b3
   2a5a8:	b8 be 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_60                             ; fixup: num: 6897, src obj: 1, src ofs: 0x2a5a9, dst obj: 3, dst ofs: 0x84be
   2a5ad:	e8 5e 89 02 00       	call   set_object
   2a5b2:	31 c0                	xor    eax,eax
   2a5b4:	5d                   	pop    ebp
   2a5b5:	5f                   	pop    edi
   2a5b6:	5e                   	pop    esi
   2a5b7:	5a                   	pop    edx
   2a5b8:	59                   	pop    ecx
   2a5b9:	5b                   	pop    ebx
   2a5ba:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_14:
   2a5bb:	b8 c2 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_61                             ; fixup: num: 6915, src obj: 1, src ofs: 0x2a5bc, dst obj: 3, dst ofs: 0x84c2
   2a5c0:	e8 cb 21 04 00       	call   check_script_flag
   2a5c5:	84 c0                	test   al,al
   2a5c7:	0f 85 b0 1d 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_169
   2a5cd:	b8 d2 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_62                             ; fixup: num: 6914, src obj: 1, src ofs: 0x2a5ce, dst obj: 3, dst ofs: 0x84d2
   2a5d2:	e8 b9 21 04 00       	call   check_script_flag
   2a5d7:	84 c0                	test   al,al
   2a5d9:	74 14                	je     talk_to_SHERIFF_DWAYNE_branch_15
   2a5db:	bb 02 00 00 00       	mov    ebx,0x2
   2a5e0:	ba df 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_63                             ; fixup: num: 6913, src obj: 1, src ofs: 0x2a5e1, dst obj: 3, dst ofs: 0x84df
   2a5e5:	b8 28 39 00 00       	mov    eax,0x3928
   2a5ea:	e9 89 1d 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_168
talk_to_SHERIFF_DWAYNE_branch_15:
   2a5ef:	b8 e6 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_64                             ; fixup: num: 6912, src obj: 1, src ofs: 0x2a5f0, dst obj: 3, dst ofs: 0x84e6
   2a5f4:	e8 97 21 04 00       	call   check_script_flag
   2a5f9:	84 c0                	test   al,al
   2a5fb:	74 1d                	je     talk_to_SHERIFF_DWAYNE_branch_16
   2a5fd:	bb 02 00 00 00       	mov    ebx,0x2
   2a602:	ba f3 84 00 00       	mov    edx,@obj3:dwayne_cpp_variable_65                             ; fixup: num: 6911, src obj: 1, src ofs: 0x2a603, dst obj: 3, dst ofs: 0x84f3
   2a607:	b8 21 39 00 00       	mov    eax,0x3921
   2a60c:	e8 7f 00 04 00       	call   play_wav
   2a611:	31 c0                	xor    eax,eax
   2a613:	5d                   	pop    ebp
   2a614:	5f                   	pop    edi
   2a615:	5e                   	pop    esi
   2a616:	5a                   	pop    edx
   2a617:	59                   	pop    ecx
   2a618:	5b                   	pop    ebx
   2a619:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_16:
   2a61a:	b8 fa 84 00 00       	mov    eax,@obj3:dwayne_cpp_variable_66                             ; fixup: num: 6910, src obj: 1, src ofs: 0x2a61b, dst obj: 3, dst ofs: 0x84fa
   2a61f:	e8 6c 21 04 00       	call   check_script_flag
   2a624:	84 c0                	test   al,al
   2a626:	0f 84 51 1d 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_169
   2a62c:	ba 06 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_67                             ; fixup: num: 6909, src obj: 1, src ofs: 0x2a62d, dst obj: 3, dst ofs: 0x8506
   2a631:	b8 18 39 00 00       	mov    eax,0x3918
   2a636:	31 db                	xor    ebx,ebx
   2a638:	e8 53 00 04 00       	call   play_wav
   2a63d:	31 c0                	xor    eax,eax
   2a63f:	5d                   	pop    ebp
   2a640:	5f                   	pop    edi
   2a641:	5e                   	pop    esi
   2a642:	5a                   	pop    edx
   2a643:	59                   	pop    ecx
   2a644:	5b                   	pop    ebx
   2a645:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_17:
   2a646:	b8 0d 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_68                             ; fixup: num: 6908, src obj: 1, src ofs: 0x2a647, dst obj: 3, dst ofs: 0x850d
   2a64b:	e8 40 21 04 00       	call   check_script_flag
   2a650:	84 c0                	test   al,al
   2a652:	74 26                	je     talk_to_SHERIFF_DWAYNE_branch_18
   2a654:	ba 21 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_69                             ; fixup: num: 6907, src obj: 1, src ofs: 0x2a655, dst obj: 3, dst ofs: 0x8521
   2a659:	b8 86 33 00 00       	mov    eax,0x3386
   2a65e:	31 db                	xor    ebx,ebx
   2a660:	e8 2b 00 04 00       	call   play_wav
   2a665:	b8 28 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_70                             ; fixup: num: 6924, src obj: 1, src ofs: 0x2a666, dst obj: 3, dst ofs: 0x8528
   2a66a:	31 d2                	xor    edx,edx
   2a66c:	e8 6f 21 04 00       	call   set_script_flag
   2a671:	31 c0                	xor    eax,eax
   2a673:	5d                   	pop    ebp
   2a674:	5f                   	pop    edi
   2a675:	5e                   	pop    esi
   2a676:	5a                   	pop    edx
   2a677:	59                   	pop    ecx
   2a678:	5b                   	pop    ebx
   2a679:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_18:
   2a67a:	b8 3c 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_71                             ; fixup: num: 6923, src obj: 1, src ofs: 0x2a67b, dst obj: 3, dst ofs: 0x853c
   2a67f:	e8 0c 21 04 00       	call   check_script_flag
   2a684:	84 c0                	test   al,al
   2a686:	74 1d                	je     talk_to_SHERIFF_DWAYNE_branch_19
   2a688:	bb 02 00 00 00       	mov    ebx,0x2
   2a68d:	ba 60 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_72                             ; fixup: num: 6922, src obj: 1, src ofs: 0x2a68e, dst obj: 3, dst ofs: 0x8560
   2a692:	b8 e3 34 00 00       	mov    eax,0x34e3
   2a697:	e8 f4 ff 03 00       	call   play_wav
   2a69c:	31 c0                	xor    eax,eax
   2a69e:	5d                   	pop    ebp
   2a69f:	5f                   	pop    edi
   2a6a0:	5e                   	pop    esi
   2a6a1:	5a                   	pop    edx
   2a6a2:	59                   	pop    ecx
   2a6a3:	5b                   	pop    ebx
   2a6a4:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_19:
   2a6a5:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 6921, src obj: 1, src ofs: 0x2a6a6, dst obj: 3, dst ofs: 0x25ac4
   2a6aa:	ba 67 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_73                             ; fixup: num: 6920, src obj: 1, src ofs: 0x2a6ab, dst obj: 3, dst ofs: 0x8567
   2a6af:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   2a6b2:	e8 a3 6d 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2a6b7:	85 c0                	test   eax,eax
   2a6b9:	75 51                	jne    talk_to_SHERIFF_DWAYNE_branch_21
   2a6bb:	b8 70 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_74                             ; fixup: num: 6919, src obj: 1, src ofs: 0x2a6bc, dst obj: 3, dst ofs: 0x8570
   2a6c0:	e8 cb 20 04 00       	call   check_script_flag
   2a6c5:	84 c0                	test   al,al
   2a6c7:	75 29                	jne    talk_to_SHERIFF_DWAYNE_branch_20
   2a6c9:	ba 82 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_75                             ; fixup: num: 6918, src obj: 1, src ofs: 0x2a6ca, dst obj: 3, dst ofs: 0x8582
   2a6ce:	b8 da 34 00 00       	mov    eax,0x34da
   2a6d3:	31 db                	xor    ebx,ebx
   2a6d5:	e8 b6 ff 03 00       	call   play_wav
   2a6da:	ba 01 00 00 00       	mov    edx,0x1
   2a6df:	b8 89 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_76                             ; fixup: num: 6917, src obj: 1, src ofs: 0x2a6e0, dst obj: 3, dst ofs: 0x8589
   2a6e4:	e8 f7 20 04 00       	call   set_script_flag
   2a6e9:	31 c0                	xor    eax,eax
   2a6eb:	5d                   	pop    ebp
   2a6ec:	5f                   	pop    edi
   2a6ed:	5e                   	pop    esi
   2a6ee:	5a                   	pop    edx
   2a6ef:	59                   	pop    ecx
   2a6f0:	5b                   	pop    ebx
   2a6f1:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_20:
   2a6f2:	ba 9b 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_77                             ; fixup: num: 6916, src obj: 1, src ofs: 0x2a6f3, dst obj: 3, dst ofs: 0x859b
   2a6f7:	b8 95 33 00 00       	mov    eax,0x3395
   2a6fc:	31 db                	xor    ebx,ebx
   2a6fe:	e8 8d ff 03 00       	call   play_wav
   2a703:	31 c0                	xor    eax,eax
   2a705:	5d                   	pop    ebp
   2a706:	5f                   	pop    edi
   2a707:	5e                   	pop    esi
   2a708:	5a                   	pop    edx
   2a709:	59                   	pop    ecx
   2a70a:	5b                   	pop    ebx
   2a70b:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_21:
   2a70c:	b8 a2 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_78                             ; fixup: num: 6934, src obj: 1, src ofs: 0x2a70d, dst obj: 3, dst ofs: 0x85a2
   2a711:	e8 7a 20 04 00       	call   check_script_flag
   2a716:	84 c0                	test   al,al
   2a718:	0f 84 86 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_22
   2a71e:	b8 b9 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_79                             ; fixup: num: 6933, src obj: 1, src ofs: 0x2a71f, dst obj: 3, dst ofs: 0x85b9
   2a723:	e8 68 20 04 00       	call   check_script_flag
   2a728:	84 c0                	test   al,al
   2a72a:	75 78                	jne    talk_to_SHERIFF_DWAYNE_branch_22
   2a72c:	83 3d ac 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_9,0x0             ; fixup: num: 6932, src obj: 1, src ofs: 0x2a72e, dst obj: 3, dst ofs: 0x22fac
   2a733:	75 6f                	jne    talk_to_SHERIFF_DWAYNE_branch_22
   2a735:	ba 01 00 00 00       	mov    edx,0x1
   2a73a:	31 c0                	xor    eax,eax
   2a73c:	bb 01 00 00 00       	mov    ebx,0x1
   2a741:	e8 1a db ff ff       	call   DAY_AFTER_PC_RESCUED_KARIN
   2a746:	e8 75 e4 ff ff       	call   get_day
   2a74b:	ba ca 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_80                             ; fixup: num: 6931, src obj: 1, src ofs: 0x2a74c, dst obj: 3, dst ofs: 0x85ca
   2a750:	a3 9c 2f 02 00       	mov    ds:@obj3:SHERIFF_DWAYNE_variable_5,eax                       ; fixup: num: 6930, src obj: 1, src ofs: 0x2a751, dst obj: 3, dst ofs: 0x22f9c
   2a755:	b8 50 37 00 00       	mov    eax,0x3750
   2a75a:	89 1d ac 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_9,ebx             ; fixup: num: 6929, src obj: 1, src ofs: 0x2a75c, dst obj: 3, dst ofs: 0x22fac
   2a760:	e8 2b ff 03 00       	call   play_wav
   2a765:	ba d1 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_81                             ; fixup: num: 6928, src obj: 1, src ofs: 0x2a766, dst obj: 3, dst ofs: 0x85d1
   2a76a:	b8 54 37 00 00       	mov    eax,0x3754
   2a76f:	31 db                	xor    ebx,ebx
   2a771:	e8 1a ff 03 00       	call   play_wav
   2a776:	ba d4 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_82                             ; fixup: num: 6927, src obj: 1, src ofs: 0x2a777, dst obj: 3, dst ofs: 0x85d4
   2a77b:	b8 59 37 00 00       	mov    eax,0x3759
   2a780:	31 db                	xor    ebx,ebx
   2a782:	e8 09 ff 03 00       	call   play_wav
   2a787:	bb 01 00 00 00       	mov    ebx,0x1
   2a78c:	ba db 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_83                             ; fixup: num: 6926, src obj: 1, src ofs: 0x2a78d, dst obj: 3, dst ofs: 0x85db
   2a791:	b8 5d 37 00 00       	mov    eax,0x375d
   2a796:	e8 f5 fe 03 00       	call   play_wav
   2a79b:	31 c0                	xor    eax,eax
   2a79d:	5d                   	pop    ebp
   2a79e:	5f                   	pop    edi
   2a79f:	5e                   	pop    esi
   2a7a0:	5a                   	pop    edx
   2a7a1:	59                   	pop    ecx
   2a7a2:	5b                   	pop    ebx
   2a7a3:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_22:
   2a7a4:	b8 e2 85 00 00       	mov    eax,@obj3:dwayne_cpp_variable_84                             ; fixup: num: 6925, src obj: 1, src ofs: 0x2a7a5, dst obj: 3, dst ofs: 0x85e2
   2a7a9:	e8 e2 1f 04 00       	call   check_script_flag
   2a7ae:	84 c0                	test   al,al
   2a7b0:	74 16                	je     talk_to_SHERIFF_DWAYNE_branch_23
   2a7b2:	ba 01 00 00 00       	mov    edx,0x1
   2a7b7:	31 c0                	xor    eax,eax
   2a7b9:	e8 a2 da ff ff       	call   DAY_AFTER_PC_RESCUED_KARIN
   2a7be:	e8 fd e3 ff ff       	call   get_day
   2a7c3:	a3 9c 2f 02 00       	mov    ds:@obj3:SHERIFF_DWAYNE_variable_5,eax                       ; fixup: num: 6944, src obj: 1, src ofs: 0x2a7c4, dst obj: 3, dst ofs: 0x22f9c
talk_to_SHERIFF_DWAYNE_branch_23:
   2a7c8:	be f4 85 00 00       	mov    esi,@obj3:dwayne_cpp_variable_85                             ; fixup: num: 6943, src obj: 1, src ofs: 0x2a7c9, dst obj: 3, dst ofs: 0x85f4
   2a7cd:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6942, src obj: 1, src ofs: 0x2a7ce, dst obj: 3, dst ofs: 0x295c0
   2a7d2:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_24:
   2a7d3:	8a 06                	mov    al,BYTE PTR [esi]
   2a7d5:	88 07                	mov    BYTE PTR [edi],al
   2a7d7:	3c 00                	cmp    al,0x0
   2a7d9:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_25
   2a7db:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2a7de:	83 c6 02             	add    esi,0x2
   2a7e1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2a7e4:	83 c7 02             	add    edi,0x2
   2a7e7:	3c 00                	cmp    al,0x0
   2a7e9:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_24
talk_to_SHERIFF_DWAYNE_branch_25:
   2a7eb:	5f                   	pop    edi
   2a7ec:	8b 0d bc 94 02 00    	mov    ecx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 6941, src obj: 1, src ofs: 0x2a7ee, dst obj: 3, dst ofs: 0x294bc
   2a7f2:	85 c9                	test   ecx,ecx
   2a7f4:	0f 84 35 0b 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_82
   2a7fa:	ba f5 85 00 00       	mov    edx,@obj3:dwayne_cpp_variable_86                             ; fixup: num: 6940, src obj: 1, src ofs: 0x2a7fb, dst obj: 3, dst ofs: 0x85f5
   2a7ff:	89 c8                	mov    eax,ecx
   2a801:	e8 2a bc 04 00       	call   strcmp_
   2a806:	85 c0                	test   eax,eax
   2a808:	75 62                	jne    talk_to_SHERIFF_DWAYNE_branch_26
   2a80a:	ba 01 00 00 00       	mov    edx,0x1
   2a80f:	e8 0c db ff ff       	call   SHOWN_BUTTON_AROUND
   2a814:	31 db                	xor    ebx,ebx
   2a816:	ba 03 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_87                             ; fixup: num: 6939, src obj: 1, src ofs: 0x2a817, dst obj: 3, dst ofs: 0x8603
   2a81b:	b8 9b 33 00 00       	mov    eax,0x339b
   2a820:	e8 6b fe 03 00       	call   play_wav
   2a825:	ba 0a 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_88                             ; fixup: num: 6938, src obj: 1, src ofs: 0x2a826, dst obj: 3, dst ofs: 0x860a
   2a82a:	b8 a0 33 00 00       	mov    eax,0x33a0
   2a82f:	31 db                	xor    ebx,ebx
   2a831:	e8 5a fe 03 00       	call   play_wav
   2a836:	ba 0d 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_89                             ; fixup: num: 6937, src obj: 1, src ofs: 0x2a837, dst obj: 3, dst ofs: 0x860d
   2a83b:	b8 a5 33 00 00       	mov    eax,0x33a5
   2a840:	31 db                	xor    ebx,ebx
   2a842:	e8 49 fe 03 00       	call   play_wav
   2a847:	ba 14 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_90                             ; fixup: num: 6936, src obj: 1, src ofs: 0x2a848, dst obj: 3, dst ofs: 0x8614
   2a84c:	b8 a9 33 00 00       	mov    eax,0x33a9
   2a851:	31 db                	xor    ebx,ebx
   2a853:	e8 38 fe 03 00       	call   play_wav
   2a858:	bb 02 00 00 00       	mov    ebx,0x2
   2a85d:	ba 17 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_91                             ; fixup: num: 6935, src obj: 1, src ofs: 0x2a85e, dst obj: 3, dst ofs: 0x8617
   2a862:	b8 ad 33 00 00       	mov    eax,0x33ad
   2a867:	e9 b5 0a 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_81
talk_to_SHERIFF_DWAYNE_branch_26:
   2a86c:	ba 1e 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_92                             ; fixup: num: 6955, src obj: 1, src ofs: 0x2a86d, dst obj: 3, dst ofs: 0x861e
   2a871:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6954, src obj: 1, src ofs: 0x2a872, dst obj: 3, dst ofs: 0x294bc
   2a876:	e8 b5 bb 04 00       	call   strcmp_
   2a87b:	85 c0                	test   eax,eax
   2a87d:	75 66                	jne    talk_to_SHERIFF_DWAYNE_branch_27
   2a87f:	ba 01 00 00 00       	mov    edx,0x1
   2a884:	bb 01 00 00 00       	mov    ebx,0x1
   2a889:	e8 02 db ff ff       	call   SHOW_SHERIFF_KARIN_S_PURSE
   2a88e:	ba 26 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_93                             ; fixup: num: 6953, src obj: 1, src ofs: 0x2a88f, dst obj: 3, dst ofs: 0x8626
   2a893:	b8 cb 37 00 00       	mov    eax,0x37cb
   2a898:	e8 f3 fd 03 00       	call   play_wav
   2a89d:	bb 03 00 00 00       	mov    ebx,0x3
   2a8a2:	ba 2d 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_94                             ; fixup: num: 6952, src obj: 1, src ofs: 0x2a8a3, dst obj: 3, dst ofs: 0x862d
   2a8a7:	b8 cf 37 00 00       	mov    eax,0x37cf
   2a8ac:	e8 df fd 03 00       	call   play_wav
   2a8b1:	bb 03 00 00 00       	mov    ebx,0x3
   2a8b6:	ba 30 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_95                             ; fixup: num: 6951, src obj: 1, src ofs: 0x2a8b7, dst obj: 3, dst ofs: 0x8630
   2a8bb:	b8 b4 37 00 00       	mov    eax,0x37b4
   2a8c0:	e8 cb fd 03 00       	call   play_wav
   2a8c5:	ba 37 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_96                             ; fixup: num: 6950, src obj: 1, src ofs: 0x2a8c6, dst obj: 3, dst ofs: 0x8637
   2a8ca:	b8 c1 37 00 00       	mov    eax,0x37c1
   2a8cf:	31 db                	xor    ebx,ebx
   2a8d1:	e8 ba fd 03 00       	call   play_wav
   2a8d6:	ba 3e 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_97                             ; fixup: num: 6949, src obj: 1, src ofs: 0x2a8d7, dst obj: 3, dst ofs: 0x863e
   2a8db:	b8 c5 37 00 00       	mov    eax,0x37c5
   2a8e0:	e9 3a 0a 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_80
talk_to_SHERIFF_DWAYNE_branch_27:
   2a8e5:	ba 41 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_98                             ; fixup: num: 6948, src obj: 1, src ofs: 0x2a8e6, dst obj: 3, dst ofs: 0x8641
   2a8ea:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6947, src obj: 1, src ofs: 0x2a8eb, dst obj: 3, dst ofs: 0x294bc
   2a8ef:	e8 3c bb 04 00       	call   strcmp_
   2a8f4:	85 c0                	test   eax,eax
   2a8f6:	74 17                	je     talk_to_SHERIFF_DWAYNE_branch_28
   2a8f8:	ba 55 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_99                             ; fixup: num: 6946, src obj: 1, src ofs: 0x2a8f9, dst obj: 3, dst ofs: 0x8655
   2a8fd:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6945, src obj: 1, src ofs: 0x2a8fe, dst obj: 3, dst ofs: 0x294bc
   2a902:	e8 29 bb 04 00       	call   strcmp_
   2a907:	85 c0                	test   eax,eax
   2a909:	0f 85 d9 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_33
talk_to_SHERIFF_DWAYNE_branch_28:
   2a90f:	bb 02 00 00 00       	mov    ebx,0x2
   2a914:	ba 64 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_100                            ; fixup: num: 6962, src obj: 1, src ofs: 0x2a915, dst obj: 3, dst ofs: 0x8664
   2a919:	b8 b9 33 00 00       	mov    eax,0x33b9
   2a91e:	e8 6d fd 03 00       	call   play_wav
   2a923:	b8 6e 00 00 00       	mov    eax,0x6e
   2a928:	e8 73 f8 ff ff       	call   GetDlgFileString
   2a92d:	e8 de 05 04 00       	call   get_response
   2a932:	83 f8 01             	cmp    eax,0x1
   2a935:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_29
   2a937:	bb 02 00 00 00       	mov    ebx,0x2
   2a93c:	ba 6b 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_101                            ; fixup: num: 6961, src obj: 1, src ofs: 0x2a93d, dst obj: 3, dst ofs: 0x866b
   2a941:	b8 c3 33 00 00       	mov    eax,0x33c3
   2a946:	eb 11                	jmp    talk_to_SHERIFF_DWAYNE_branch_30
talk_to_SHERIFF_DWAYNE_branch_29:
   2a948:	83 f8 02             	cmp    eax,0x2
   2a94b:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_31
   2a94d:	ba 72 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_102                            ; fixup: num: 6960, src obj: 1, src ofs: 0x2a94e, dst obj: 3, dst ofs: 0x8672
   2a952:	89 c3                	mov    ebx,eax
   2a954:	b8 c7 33 00 00       	mov    eax,0x33c7
talk_to_SHERIFF_DWAYNE_branch_30:
   2a959:	e8 32 fd 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_31:
   2a95e:	bb 02 00 00 00       	mov    ebx,0x2
   2a963:	ba 79 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_103                            ; fixup: num: 6959, src obj: 1, src ofs: 0x2a964, dst obj: 3, dst ofs: 0x8679
   2a968:	b8 cb 33 00 00       	mov    eax,0x33cb
   2a96d:	e8 1e fd 03 00       	call   play_wav
   2a972:	ba 7c 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_104                            ; fixup: num: 6958, src obj: 1, src ofs: 0x2a973, dst obj: 3, dst ofs: 0x867c
   2a977:	b8 d2 33 00 00       	mov    eax,0x33d2
   2a97c:	31 db                	xor    ebx,ebx
   2a97e:	e8 0d fd 03 00       	call   play_wav
   2a983:	b8 6f 00 00 00       	mov    eax,0x6f
   2a988:	e8 13 f8 ff ff       	call   GetDlgFileString
   2a98d:	e8 7e 05 04 00       	call   get_response
   2a992:	83 f8 01             	cmp    eax,0x1
   2a995:	75 24                	jne    talk_to_SHERIFF_DWAYNE_branch_32
   2a997:	ba 83 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_105                            ; fixup: num: 6957, src obj: 1, src ofs: 0x2a998, dst obj: 3, dst ofs: 0x8683
   2a99c:	b8 e0 33 00 00       	mov    eax,0x33e0
   2a9a1:	31 db                	xor    ebx,ebx
   2a9a3:	e8 e8 fc 03 00       	call   play_wav
   2a9a8:	c7 05 a8 2f 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_8,0x1    ; fixup: num: 6956, src obj: 1, src ofs: 0x2a9aa, dst obj: 3, dst ofs: 0x22fa8
   2a9b2:	31 c0                	xor    eax,eax
   2a9b4:	5d                   	pop    ebp
   2a9b5:	5f                   	pop    edi
   2a9b6:	5e                   	pop    esi
   2a9b7:	5a                   	pop    edx
   2a9b8:	59                   	pop    ecx
   2a9b9:	5b                   	pop    ebx
   2a9ba:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_32:
   2a9bb:	83 f8 02             	cmp    eax,0x2
   2a9be:	0f 85 b9 19 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_169
   2a9c4:	ba 8a 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_106                            ; fixup: num: 6832, src obj: 1, src ofs: 0x2a9c5, dst obj: 3, dst ofs: 0x868a
   2a9c9:	89 c3                	mov    ebx,eax
   2a9cb:	b8 e7 33 00 00       	mov    eax,0x33e7
   2a9d0:	e8 bb fc 03 00       	call   play_wav
   2a9d5:	b8 91 86 00 00       	mov    eax,@obj3:dwayne_cpp_variable_107                            ; fixup: num: 6831, src obj: 1, src ofs: 0x2a9d6, dst obj: 3, dst ofs: 0x8691
   2a9da:	e8 a1 21 04 00       	call   ExecuteCommand
   2a9df:	31 c0                	xor    eax,eax
   2a9e1:	5d                   	pop    ebp
   2a9e2:	5f                   	pop    edi
   2a9e3:	5e                   	pop    esi
   2a9e4:	5a                   	pop    edx
   2a9e5:	59                   	pop    ecx
   2a9e6:	5b                   	pop    ebx
   2a9e7:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_33:
   2a9e8:	ba a0 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_108                            ; fixup: num: 6830, src obj: 1, src ofs: 0x2a9e9, dst obj: 3, dst ofs: 0x86a0
   2a9ed:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6829, src obj: 1, src ofs: 0x2a9ee, dst obj: 3, dst ofs: 0x294bc
   2a9f2:	e8 39 ba 04 00       	call   strcmp_
   2a9f7:	85 c0                	test   eax,eax
   2a9f9:	74 17                	je     talk_to_SHERIFF_DWAYNE_branch_34
   2a9fb:	ba aa 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_109                            ; fixup: num: 6828, src obj: 1, src ofs: 0x2a9fc, dst obj: 3, dst ofs: 0x86aa
   2aa00:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6827, src obj: 1, src ofs: 0x2aa01, dst obj: 3, dst ofs: 0x294bc
   2aa05:	e8 26 ba 04 00       	call   strcmp_
   2aa0a:	85 c0                	test   eax,eax
   2aa0c:	0f 85 4d 02 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_47
talk_to_SHERIFF_DWAYNE_branch_34:
   2aa12:	a1 a8 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_8                       ; fixup: num: 6826, src obj: 1, src ofs: 0x2aa13, dst obj: 3, dst ofs: 0x22fa8
   2aa17:	85 c0                	test   eax,eax
   2aa19:	0f 85 d9 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_39
   2aa1f:	bb 02 00 00 00       	mov    ebx,0x2
   2aa24:	ba af 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_110                            ; fixup: num: 6825, src obj: 1, src ofs: 0x2aa25, dst obj: 3, dst ofs: 0x86af
   2aa29:	b8 f4 33 00 00       	mov    eax,0x33f4
   2aa2e:	e8 5d fc 03 00       	call   play_wav
   2aa33:	b8 70 00 00 00       	mov    eax,0x70
   2aa38:	e8 63 f7 ff ff       	call   GetDlgFileString
   2aa3d:	e8 ce 04 04 00       	call   get_response
   2aa42:	83 f8 01             	cmp    eax,0x1
   2aa45:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_35
   2aa47:	bb 02 00 00 00       	mov    ebx,0x2
   2aa4c:	ba b6 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_111                            ; fixup: num: 6964, src obj: 1, src ofs: 0x2aa4d, dst obj: 3, dst ofs: 0x86b6
   2aa51:	b8 c3 33 00 00       	mov    eax,0x33c3
   2aa56:	eb 11                	jmp    talk_to_SHERIFF_DWAYNE_branch_36
talk_to_SHERIFF_DWAYNE_branch_35:
   2aa58:	83 f8 02             	cmp    eax,0x2
   2aa5b:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_37
   2aa5d:	ba bd 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_112                            ; fixup: num: 6963, src obj: 1, src ofs: 0x2aa5e, dst obj: 3, dst ofs: 0x86bd
   2aa62:	89 c3                	mov    ebx,eax
   2aa64:	b8 03 34 00 00       	mov    eax,0x3403
talk_to_SHERIFF_DWAYNE_branch_36:
   2aa69:	e8 22 fc 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_37:
   2aa6e:	bb 02 00 00 00       	mov    ebx,0x2
   2aa73:	ba c4 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_113                            ; fixup: num: 6840, src obj: 1, src ofs: 0x2aa74, dst obj: 3, dst ofs: 0x86c4
   2aa78:	b8 07 34 00 00       	mov    eax,0x3407
   2aa7d:	e8 0e fc 03 00       	call   play_wav
   2aa82:	ba c7 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_114                            ; fixup: num: 6839, src obj: 1, src ofs: 0x2aa83, dst obj: 3, dst ofs: 0x86c7
   2aa87:	b8 0d 34 00 00       	mov    eax,0x340d
   2aa8c:	31 db                	xor    ebx,ebx
   2aa8e:	e8 fd fb 03 00       	call   play_wav
   2aa93:	b8 71 00 00 00       	mov    eax,0x71
   2aa98:	e8 03 f7 ff ff       	call   GetDlgFileString
   2aa9d:	e8 6e 04 04 00       	call   get_response
   2aaa2:	83 f8 01             	cmp    eax,0x1
   2aaa5:	75 24                	jne    talk_to_SHERIFF_DWAYNE_branch_38
   2aaa7:	ba ce 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_115                            ; fixup: num: 6838, src obj: 1, src ofs: 0x2aaa8, dst obj: 3, dst ofs: 0x86ce
   2aaac:	b8 1a 34 00 00       	mov    eax,0x341a
   2aab1:	31 db                	xor    ebx,ebx
   2aab3:	e8 d8 fb 03 00       	call   play_wav
   2aab8:	b8 d5 86 00 00       	mov    eax,@obj3:dwayne_cpp_variable_116                            ; fixup: num: 6837, src obj: 1, src ofs: 0x2aab9, dst obj: 3, dst ofs: 0x86d5
   2aabd:	e8 be 20 04 00       	call   ExecuteCommand
   2aac2:	31 c0                	xor    eax,eax
   2aac4:	5d                   	pop    ebp
   2aac5:	5f                   	pop    edi
   2aac6:	5e                   	pop    esi
   2aac7:	5a                   	pop    edx
   2aac8:	59                   	pop    ecx
   2aac9:	5b                   	pop    ebx
   2aaca:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_38:
   2aacb:	83 f8 02             	cmp    eax,0x2
   2aace:	0f 85 a9 18 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_169
   2aad4:	ba e4 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_117                            ; fixup: num: 6836, src obj: 1, src ofs: 0x2aad5, dst obj: 3, dst ofs: 0x86e4
   2aad9:	89 c3                	mov    ebx,eax
   2aadb:	b8 22 34 00 00       	mov    eax,0x3422
   2aae0:	e8 ab fb 03 00       	call   play_wav
   2aae5:	b8 eb 86 00 00       	mov    eax,@obj3:dwayne_cpp_variable_118                            ; fixup: num: 6835, src obj: 1, src ofs: 0x2aae6, dst obj: 3, dst ofs: 0x86eb
   2aaea:	e8 91 20 04 00       	call   ExecuteCommand
   2aaef:	31 c0                	xor    eax,eax
   2aaf1:	5d                   	pop    ebp
   2aaf2:	5f                   	pop    edi
   2aaf3:	5e                   	pop    esi
   2aaf4:	5a                   	pop    edx
   2aaf5:	59                   	pop    ecx
   2aaf6:	5b                   	pop    ebx
   2aaf7:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_39:
   2aaf8:	ba fa 86 00 00       	mov    edx,@obj3:dwayne_cpp_variable_119                            ; fixup: num: 6834, src obj: 1, src ofs: 0x2aaf9, dst obj: 3, dst ofs: 0x86fa
   2aafd:	b8 2c 34 00 00       	mov    eax,0x342c
   2ab02:	31 db                	xor    ebx,ebx
   2ab04:	e8 87 fb 03 00       	call   play_wav
   2ab09:	ba 01 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_120                            ; fixup: num: 6833, src obj: 1, src ofs: 0x2ab0a, dst obj: 3, dst ofs: 0x8701
   2ab0e:	b8 30 34 00 00       	mov    eax,0x3430
   2ab13:	31 db                	xor    ebx,ebx
   2ab15:	e8 76 fb 03 00       	call   play_wav
   2ab1a:	bb 02 00 00 00       	mov    ebx,0x2
   2ab1f:	ba 04 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_121                            ; fixup: num: 6851, src obj: 1, src ofs: 0x2ab20, dst obj: 3, dst ofs: 0x8704
   2ab24:	b8 35 34 00 00       	mov    eax,0x3435
   2ab29:	e8 62 fb 03 00       	call   play_wav
   2ab2e:	b8 72 00 00 00       	mov    eax,0x72
   2ab33:	e8 68 f6 ff ff       	call   GetDlgFileString
   2ab38:	e8 d3 03 04 00       	call   get_response
   2ab3d:	83 f8 01             	cmp    eax,0x1
   2ab40:	75 27                	jne    talk_to_SHERIFF_DWAYNE_branch_40
   2ab42:	bb 02 00 00 00       	mov    ebx,0x2
   2ab47:	ba 0b 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_122                            ; fixup: num: 6850, src obj: 1, src ofs: 0x2ab48, dst obj: 3, dst ofs: 0x870b
   2ab4c:	b8 40 34 00 00       	mov    eax,0x3440
   2ab51:	e8 3a fb 03 00       	call   play_wav
   2ab56:	b8 12 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_123                            ; fixup: num: 6849, src obj: 1, src ofs: 0x2ab57, dst obj: 3, dst ofs: 0x8712
   2ab5b:	e8 20 20 04 00       	call   ExecuteCommand
   2ab60:	31 c0                	xor    eax,eax
   2ab62:	5d                   	pop    ebp
   2ab63:	5f                   	pop    edi
   2ab64:	5e                   	pop    esi
   2ab65:	5a                   	pop    edx
   2ab66:	59                   	pop    ecx
   2ab67:	5b                   	pop    ebx
   2ab68:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_40:
   2ab69:	83 f8 02             	cmp    eax,0x2
   2ab6c:	0f 85 0b 18 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_169
   2ab72:	ba 21 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_124                            ; fixup: num: 6848, src obj: 1, src ofs: 0x2ab73, dst obj: 3, dst ofs: 0x8721
   2ab77:	b8 48 34 00 00       	mov    eax,0x3448
   2ab7c:	31 db                	xor    ebx,ebx
   2ab7e:	e8 0d fb 03 00       	call   play_wav
   2ab83:	b8 a8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_1                              ; fixup: num: 6847, src obj: 1, src ofs: 0x2ab84, dst obj: 3, dst ofs: 0x81a8
   2ab88:	e8 e3 1c 04 00       	call   check_inventory
   2ab8d:	84 c0                	test   al,al
   2ab8f:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_41
   2ab91:	ba b2 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_2                              ; fixup: num: 6846, src obj: 1, src ofs: 0x2ab92, dst obj: 3, dst ofs: 0x81b2
   2ab96:	b8 bc 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_3                              ; fixup: num: 6845, src obj: 1, src ofs: 0x2ab97, dst obj: 3, dst ofs: 0x81bc
   2ab9b:	31 db                	xor    ebx,ebx
   2ab9d:	e8 6e 83 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_41:
   2aba2:	b8 c6 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_4                              ; fixup: num: 6844, src obj: 1, src ofs: 0x2aba3, dst obj: 3, dst ofs: 0x81c6
   2aba7:	e8 c4 1c 04 00       	call   check_inventory
   2abac:	84 c0                	test   al,al
   2abae:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_42
   2abb0:	ba da 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_5                              ; fixup: num: 6843, src obj: 1, src ofs: 0x2abb1, dst obj: 3, dst ofs: 0x81da
   2abb5:	b8 ee 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_6                              ; fixup: num: 6842, src obj: 1, src ofs: 0x2abb6, dst obj: 3, dst ofs: 0x81ee
   2abba:	31 db                	xor    ebx,ebx
   2abbc:	e8 4f 83 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_42:
   2abc1:	b8 f8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_7                              ; fixup: num: 6841, src obj: 1, src ofs: 0x2abc2, dst obj: 3, dst ofs: 0x81f8
   2abc6:	e8 a5 1c 04 00       	call   check_inventory
   2abcb:	84 c0                	test   al,al
   2abcd:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_43
   2abcf:	ba fd 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_8                              ; fixup: num: 6867, src obj: 1, src ofs: 0x2abd0, dst obj: 3, dst ofs: 0x81fd
   2abd4:	b8 02 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_9                              ; fixup: num: 6866, src obj: 1, src ofs: 0x2abd5, dst obj: 3, dst ofs: 0x8202
   2abd9:	31 db                	xor    ebx,ebx
   2abdb:	e8 30 83 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_43:
   2abe0:	b8 0c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_10                             ; fixup: num: 6865, src obj: 1, src ofs: 0x2abe1, dst obj: 3, dst ofs: 0x820c
   2abe5:	e8 86 1c 04 00       	call   check_inventory
   2abea:	84 c0                	test   al,al
   2abec:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_44
   2abee:	ba 1b 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_11                             ; fixup: num: 6864, src obj: 1, src ofs: 0x2abef, dst obj: 3, dst ofs: 0x821b
   2abf3:	b8 2a 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_12                             ; fixup: num: 6863, src obj: 1, src ofs: 0x2abf4, dst obj: 3, dst ofs: 0x822a
   2abf8:	31 db                	xor    ebx,ebx
   2abfa:	e8 11 83 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_44:
   2abff:	b8 34 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_13                             ; fixup: num: 6862, src obj: 1, src ofs: 0x2ac00, dst obj: 3, dst ofs: 0x8234
   2ac04:	e8 67 1c 04 00       	call   check_inventory
   2ac09:	84 c0                	test   al,al
   2ac0b:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_45
   2ac0d:	ba 3c 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_14                             ; fixup: num: 6861, src obj: 1, src ofs: 0x2ac0e, dst obj: 3, dst ofs: 0x823c
   2ac12:	b8 44 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_15                             ; fixup: num: 6860, src obj: 1, src ofs: 0x2ac13, dst obj: 3, dst ofs: 0x8244
   2ac17:	31 db                	xor    ebx,ebx
   2ac19:	e8 f2 82 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_45:
   2ac1e:	b8 48 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_16                             ; fixup: num: 6859, src obj: 1, src ofs: 0x2ac1f, dst obj: 3, dst ofs: 0x8248
   2ac23:	e8 48 1c 04 00       	call   check_inventory
   2ac28:	84 c0                	test   al,al
   2ac2a:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_46
   2ac2c:	ba 5a 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_17                             ; fixup: num: 6858, src obj: 1, src ofs: 0x2ac2d, dst obj: 3, dst ofs: 0x825a
   2ac31:	b8 6c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_18                             ; fixup: num: 6857, src obj: 1, src ofs: 0x2ac32, dst obj: 3, dst ofs: 0x826c
   2ac36:	31 db                	xor    ebx,ebx
   2ac38:	e8 d3 82 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_46:
   2ac3d:	b8 28 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_125                            ; fixup: num: 6856, src obj: 1, src ofs: 0x2ac3e, dst obj: 3, dst ofs: 0x8728
   2ac42:	ba 01 00 00 00       	mov    edx,0x1
   2ac47:	e8 64 1c 04 00       	call   add_inventory
   2ac4c:	b8 33 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_126                            ; fixup: num: 6855, src obj: 1, src ofs: 0x2ac4d, dst obj: 3, dst ofs: 0x8733
   2ac51:	e8 8a 1b 04 00       	call   set_script_flag
   2ac56:	31 c0                	xor    eax,eax
   2ac58:	5d                   	pop    ebp
   2ac59:	5f                   	pop    edi
   2ac5a:	5e                   	pop    esi
   2ac5b:	5a                   	pop    edx
   2ac5c:	59                   	pop    ecx
   2ac5d:	5b                   	pop    ebx
   2ac5e:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_47:
   2ac5f:	ba 45 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_127                            ; fixup: num: 6854, src obj: 1, src ofs: 0x2ac60, dst obj: 3, dst ofs: 0x8745
   2ac64:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6853, src obj: 1, src ofs: 0x2ac65, dst obj: 3, dst ofs: 0x294bc
   2ac69:	e8 c2 b7 04 00       	call   strcmp_
   2ac6e:	85 c0                	test   eax,eax
   2ac70:	74 17                	je     talk_to_SHERIFF_DWAYNE_branch_48
   2ac72:	ba 4c 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_128                            ; fixup: num: 6852, src obj: 1, src ofs: 0x2ac73, dst obj: 3, dst ofs: 0x874c
   2ac77:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6876, src obj: 1, src ofs: 0x2ac78, dst obj: 3, dst ofs: 0x294bc
   2ac7c:	e8 af b7 04 00       	call   strcmp_
   2ac81:	85 c0                	test   eax,eax
   2ac83:	0f 85 03 01 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_51
talk_to_SHERIFF_DWAYNE_branch_48:
   2ac89:	b8 54 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_129                            ; fixup: num: 6875, src obj: 1, src ofs: 0x2ac8a, dst obj: 3, dst ofs: 0x8754
   2ac8e:	e8 fd 1a 04 00       	call   check_script_flag
   2ac93:	84 c0                	test   al,al
   2ac95:	0f 84 f1 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_51
   2ac9b:	ba 01 00 00 00       	mov    edx,0x1
   2aca0:	31 c0                	xor    eax,eax
   2aca2:	e8 a9 d6 ff ff       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   2aca7:	31 db                	xor    ebx,ebx
   2aca9:	ba 66 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_130                            ; fixup: num: 6874, src obj: 1, src ofs: 0x2acaa, dst obj: 3, dst ofs: 0x8766
   2acae:	b8 52 34 00 00       	mov    eax,0x3452
   2acb3:	e8 d8 f9 03 00       	call   play_wav
   2acb8:	ba 6d 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_131                            ; fixup: num: 6873, src obj: 1, src ofs: 0x2acb9, dst obj: 3, dst ofs: 0x876d
   2acbd:	b8 57 34 00 00       	mov    eax,0x3457
   2acc2:	31 db                	xor    ebx,ebx
   2acc4:	e8 c7 f9 03 00       	call   play_wav
   2acc9:	ba 70 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_132                            ; fixup: num: 6872, src obj: 1, src ofs: 0x2acca, dst obj: 3, dst ofs: 0x8770
   2acce:	b8 5c 34 00 00       	mov    eax,0x345c
   2acd3:	31 db                	xor    ebx,ebx
   2acd5:	e8 b6 f9 03 00       	call   play_wav
   2acda:	bb 02 00 00 00       	mov    ebx,0x2
   2acdf:	ba 77 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_133                            ; fixup: num: 6871, src obj: 1, src ofs: 0x2ace0, dst obj: 3, dst ofs: 0x8777
   2ace4:	b8 60 34 00 00       	mov    eax,0x3460
   2ace9:	e8 a2 f9 03 00       	call   play_wav
   2acee:	ba 7a 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_134                            ; fixup: num: 6870, src obj: 1, src ofs: 0x2acef, dst obj: 3, dst ofs: 0x877a
   2acf3:	b8 64 34 00 00       	mov    eax,0x3464
   2acf8:	31 db                	xor    ebx,ebx
   2acfa:	e8 91 f9 03 00       	call   play_wav
   2acff:	bb 02 00 00 00       	mov    ebx,0x2
   2ad04:	ba 81 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_135                            ; fixup: num: 6869, src obj: 1, src ofs: 0x2ad05, dst obj: 3, dst ofs: 0x8781
   2ad09:	b8 6a 34 00 00       	mov    eax,0x346a
   2ad0e:	e8 7d f9 03 00       	call   play_wav
   2ad13:	ba 84 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_136                            ; fixup: num: 6868, src obj: 1, src ofs: 0x2ad14, dst obj: 3, dst ofs: 0x8784
   2ad18:	b8 6e 34 00 00       	mov    eax,0x346e
   2ad1d:	31 db                	xor    ebx,ebx
   2ad1f:	e8 6c f9 03 00       	call   play_wav
   2ad24:	bb 04 00 00 00       	mov    ebx,0x4
   2ad29:	ba 8b 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_137                            ; fixup: num: 6888, src obj: 1, src ofs: 0x2ad2a, dst obj: 3, dst ofs: 0x878b
   2ad2e:	b8 74 34 00 00       	mov    eax,0x3474
   2ad33:	e8 58 f9 03 00       	call   play_wav
   2ad38:	bb 02 00 00 00       	mov    ebx,0x2
   2ad3d:	ba 8e 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_138                            ; fixup: num: 6887, src obj: 1, src ofs: 0x2ad3e, dst obj: 3, dst ofs: 0x878e
   2ad42:	b8 78 34 00 00       	mov    eax,0x3478
   2ad47:	e8 44 f9 03 00       	call   play_wav
   2ad4c:	b8 95 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_139                            ; fixup: num: 6886, src obj: 1, src ofs: 0x2ad4d, dst obj: 3, dst ofs: 0x8795
   2ad51:	31 d2                	xor    edx,edx
   2ad53:	e8 e8 1e 04 00       	call   reset_item_to_initial_settings
   2ad58:	b8 9c 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_140                            ; fixup: num: 6885, src obj: 1, src ofs: 0x2ad59, dst obj: 3, dst ofs: 0x879c
   2ad5d:	31 d2                	xor    edx,edx
   2ad5f:	e8 dc 1e 04 00       	call   reset_item_to_initial_settings
   2ad64:	b8 a4 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_141                            ; fixup: num: 6884, src obj: 1, src ofs: 0x2ad65, dst obj: 3, dst ofs: 0x87a4
   2ad69:	e8 22 1a 04 00       	call   check_script_flag
   2ad6e:	84 c0                	test   al,al
   2ad70:	74 07                	je     talk_to_SHERIFF_DWAYNE_branch_49
   2ad72:	b8 b5 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_142                            ; fixup: num: 6883, src obj: 1, src ofs: 0x2ad73, dst obj: 3, dst ofs: 0x87b5
   2ad77:	eb 05                	jmp    talk_to_SHERIFF_DWAYNE_branch_50
talk_to_SHERIFF_DWAYNE_branch_49:
   2ad79:	b8 c1 87 00 00       	mov    eax,@obj3:dwayne_cpp_variable_143                            ; fixup: num: 6882, src obj: 1, src ofs: 0x2ad7a, dst obj: 3, dst ofs: 0x87c1
talk_to_SHERIFF_DWAYNE_branch_50:
   2ad7e:	e8 fd 1d 04 00       	call   ExecuteCommand
   2ad83:	31 c0                	xor    eax,eax
   2ad85:	5d                   	pop    ebp
   2ad86:	5f                   	pop    edi
   2ad87:	5e                   	pop    esi
   2ad88:	5a                   	pop    edx
   2ad89:	59                   	pop    ecx
   2ad8a:	5b                   	pop    ebx
   2ad8b:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_51:
   2ad8c:	ba cd 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_144                            ; fixup: num: 6881, src obj: 1, src ofs: 0x2ad8d, dst obj: 3, dst ofs: 0x87cd
   2ad91:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6880, src obj: 1, src ofs: 0x2ad92, dst obj: 3, dst ofs: 0x294bc
   2ad96:	e8 95 b6 04 00       	call   strcmp_
   2ad9b:	85 c0                	test   eax,eax
   2ad9d:	75 49                	jne    talk_to_SHERIFF_DWAYNE_branch_52
   2ad9f:	ba 01 00 00 00       	mov    edx,0x1
   2ada4:	bb 03 00 00 00       	mov    ebx,0x3
   2ada9:	e8 c2 d5 ff ff       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   2adae:	ba e5 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_145                            ; fixup: num: 6879, src obj: 1, src ofs: 0x2adaf, dst obj: 3, dst ofs: 0x87e5
   2adb3:	b8 75 39 00 00       	mov    eax,0x3975
   2adb8:	e8 d3 f8 03 00       	call   play_wav
   2adbd:	ba ec 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_146                            ; fixup: num: 6878, src obj: 1, src ofs: 0x2adbe, dst obj: 3, dst ofs: 0x87ec
   2adc2:	b8 79 39 00 00       	mov    eax,0x3979
   2adc7:	31 db                	xor    ebx,ebx
   2adc9:	e8 c2 f8 03 00       	call   play_wav
   2adce:	ba ef 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_147                            ; fixup: num: 6877, src obj: 1, src ofs: 0x2adcf, dst obj: 3, dst ofs: 0x87ef
   2add3:	b8 7e 39 00 00       	mov    eax,0x397e
   2add8:	31 db                	xor    ebx,ebx
   2adda:	e8 b1 f8 03 00       	call   play_wav
   2addf:	31 c0                	xor    eax,eax
   2ade1:	5d                   	pop    ebp
   2ade2:	5f                   	pop    edi
   2ade3:	5e                   	pop    esi
   2ade4:	5a                   	pop    edx
   2ade5:	59                   	pop    ecx
   2ade6:	5b                   	pop    ebx
   2ade7:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_52:
   2ade8:	ba f6 87 00 00       	mov    edx,@obj3:dwayne_cpp_variable_148                            ; fixup: num: 6797, src obj: 1, src ofs: 0x2ade9, dst obj: 3, dst ofs: 0x87f6
   2aded:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6796, src obj: 1, src ofs: 0x2adee, dst obj: 3, dst ofs: 0x294bc
   2adf2:	e8 39 b6 04 00       	call   strcmp_
   2adf7:	85 c0                	test   eax,eax
   2adf9:	74 17                	je     talk_to_SHERIFF_DWAYNE_branch_53
   2adfb:	ba 03 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_149                            ; fixup: num: 6894, src obj: 1, src ofs: 0x2adfc, dst obj: 3, dst ofs: 0x8803
   2ae00:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6893, src obj: 1, src ofs: 0x2ae01, dst obj: 3, dst ofs: 0x294bc
   2ae05:	e8 26 b6 04 00       	call   strcmp_
   2ae0a:	85 c0                	test   eax,eax
   2ae0c:	0f 85 4c 01 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_58
talk_to_SHERIFF_DWAYNE_branch_53:
   2ae12:	ba 01 00 00 00       	mov    edx,0x1
   2ae17:	31 c0                	xor    eax,eax
   2ae19:	bb 02 00 00 00       	mov    ebx,0x2
   2ae1e:	e8 3d d5 ff ff       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   2ae23:	ba 14 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_150                            ; fixup: num: 6892, src obj: 1, src ofs: 0x2ae24, dst obj: 3, dst ofs: 0x8814
   2ae28:	b8 42 39 00 00       	mov    eax,0x3942
   2ae2d:	e8 5e f8 03 00       	call   play_wav
   2ae32:	b8 01 00 00 00       	mov    eax,0x1
   2ae37:	31 d2                	xor    edx,edx
   2ae39:	e8 c2 d4 ff ff       	call   MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY
   2ae3e:	85 c0                	test   eax,eax
   2ae40:	0f 84 9e 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_56
   2ae46:	ba 1b 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_151                            ; fixup: num: 6891, src obj: 1, src ofs: 0x2ae47, dst obj: 3, dst ofs: 0x881b
   2ae4b:	b8 49 39 00 00       	mov    eax,0x3949
   2ae50:	31 db                	xor    ebx,ebx
   2ae52:	e8 39 f8 03 00       	call   play_wav
   2ae57:	ba 1e 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_152                            ; fixup: num: 6890, src obj: 1, src ofs: 0x2ae58, dst obj: 3, dst ofs: 0x881e
   2ae5c:	b8 50 39 00 00       	mov    eax,0x3950
   2ae61:	31 db                	xor    ebx,ebx
   2ae63:	e8 28 f8 03 00       	call   play_wav
   2ae68:	bb 04 00 00 00       	mov    ebx,0x4
   2ae6d:	ba 25 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_153                            ; fixup: num: 6889, src obj: 1, src ofs: 0x2ae6e, dst obj: 3, dst ofs: 0x8825
   2ae72:	b8 55 39 00 00       	mov    eax,0x3955
   2ae77:	e8 14 f8 03 00       	call   play_wav
   2ae7c:	bb 01 00 00 00       	mov    ebx,0x1
   2ae81:	ba 28 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_154                            ; fixup: num: 6812, src obj: 1, src ofs: 0x2ae82, dst obj: 3, dst ofs: 0x8828
   2ae86:	b8 59 39 00 00       	mov    eax,0x3959
   2ae8b:	e8 00 f8 03 00       	call   play_wav
   2ae90:	ba 2f 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_155                            ; fixup: num: 6811, src obj: 1, src ofs: 0x2ae91, dst obj: 3, dst ofs: 0x882f
   2ae95:	b8 6d 39 00 00       	mov    eax,0x396d
   2ae9a:	31 db                	xor    ebx,ebx
   2ae9c:	e8 ef f7 03 00       	call   play_wav
   2aea1:	ba 36 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_156                            ; fixup: num: 6810, src obj: 1, src ofs: 0x2aea2, dst obj: 3, dst ofs: 0x8836
   2aea6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6809, src obj: 1, src ofs: 0x2aea7, dst obj: 3, dst ofs: 0x294bc
   2aeab:	e8 80 b5 04 00       	call   strcmp_
   2aeb0:	85 c0                	test   eax,eax
   2aeb2:	75 0c                	jne    talk_to_SHERIFF_DWAYNE_branch_54
   2aeb4:	ba 43 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_157                            ; fixup: num: 6808, src obj: 1, src ofs: 0x2aeb5, dst obj: 3, dst ofs: 0x8843
   2aeb9:	b8 50 88 00 00       	mov    eax,@obj3:dwayne_cpp_variable_158                            ; fixup: num: 6807, src obj: 1, src ofs: 0x2aeba, dst obj: 3, dst ofs: 0x8850
   2aebe:	eb 0a                	jmp    talk_to_SHERIFF_DWAYNE_branch_55
talk_to_SHERIFF_DWAYNE_branch_54:
   2aec0:	ba 5a 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_159                            ; fixup: num: 6806, src obj: 1, src ofs: 0x2aec1, dst obj: 3, dst ofs: 0x885a
   2aec5:	b8 6b 88 00 00       	mov    eax,@obj3:dwayne_cpp_variable_160                            ; fixup: num: 6805, src obj: 1, src ofs: 0x2aec6, dst obj: 3, dst ofs: 0x886b
talk_to_SHERIFF_DWAYNE_branch_55:
   2aeca:	31 db                	xor    ebx,ebx
   2aecc:	e8 3f 80 02 00       	call   set_object
   2aed1:	b8 75 88 00 00       	mov    eax,@obj3:dwayne_cpp_variable_161                            ; fixup: num: 6804, src obj: 1, src ofs: 0x2aed2, dst obj: 3, dst ofs: 0x8875
   2aed6:	e8 a5 1c 04 00       	call   ExecuteCommand
   2aedb:	31 c0                	xor    eax,eax
   2aedd:	5d                   	pop    ebp
   2aede:	5f                   	pop    edi
   2aedf:	5e                   	pop    esi
   2aee0:	5a                   	pop    edx
   2aee1:	59                   	pop    ecx
   2aee2:	5b                   	pop    ebx
   2aee3:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_56:
   2aee4:	ba 81 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_162                            ; fixup: num: 6803, src obj: 1, src ofs: 0x2aee5, dst obj: 3, dst ofs: 0x8881
   2aee9:	b8 61 39 00 00       	mov    eax,0x3961
   2aeee:	31 db                	xor    ebx,ebx
   2aef0:	e8 9b f7 03 00       	call   play_wav
   2aef5:	ba 84 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_163                            ; fixup: num: 6802, src obj: 1, src ofs: 0x2aef6, dst obj: 3, dst ofs: 0x8884
   2aefa:	b8 67 39 00 00       	mov    eax,0x3967
   2aeff:	31 db                	xor    ebx,ebx
   2af01:	e8 8a f7 03 00       	call   play_wav
   2af06:	ba 8b 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_164                            ; fixup: num: 6801, src obj: 1, src ofs: 0x2af07, dst obj: 3, dst ofs: 0x888b
   2af0b:	b8 6d 39 00 00       	mov    eax,0x396d
   2af10:	31 db                	xor    ebx,ebx
   2af12:	e8 79 f7 03 00       	call   play_wav
   2af17:	ba 92 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_165                            ; fixup: num: 6800, src obj: 1, src ofs: 0x2af18, dst obj: 3, dst ofs: 0x8892
   2af1c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6799, src obj: 1, src ofs: 0x2af1d, dst obj: 3, dst ofs: 0x294bc
   2af21:	e8 0a b5 04 00       	call   strcmp_
   2af26:	85 c0                	test   eax,eax
   2af28:	75 1a                	jne    talk_to_SHERIFF_DWAYNE_branch_57
   2af2a:	ba 9f 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_166                            ; fixup: num: 6798, src obj: 1, src ofs: 0x2af2b, dst obj: 3, dst ofs: 0x889f
   2af2f:	b8 ac 88 00 00       	mov    eax,@obj3:dwayne_cpp_variable_167                            ; fixup: num: 6822, src obj: 1, src ofs: 0x2af30, dst obj: 3, dst ofs: 0x88ac
   2af34:	31 db                	xor    ebx,ebx
   2af36:	e8 d5 7f 02 00       	call   set_object
   2af3b:	31 c0                	xor    eax,eax
   2af3d:	5d                   	pop    ebp
   2af3e:	5f                   	pop    edi
   2af3f:	5e                   	pop    esi
   2af40:	5a                   	pop    edx
   2af41:	59                   	pop    ecx
   2af42:	5b                   	pop    ebx
   2af43:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_57:
   2af44:	ba b6 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_168                            ; fixup: num: 6821, src obj: 1, src ofs: 0x2af45, dst obj: 3, dst ofs: 0x88b6
   2af49:	b8 c7 88 00 00       	mov    eax,@obj3:dwayne_cpp_variable_169                            ; fixup: num: 6820, src obj: 1, src ofs: 0x2af4a, dst obj: 3, dst ofs: 0x88c7
   2af4e:	31 db                	xor    ebx,ebx
   2af50:	e8 bb 7f 02 00       	call   set_object
   2af55:	31 c0                	xor    eax,eax
   2af57:	5d                   	pop    ebp
   2af58:	5f                   	pop    edi
   2af59:	5e                   	pop    esi
   2af5a:	5a                   	pop    edx
   2af5b:	59                   	pop    ecx
   2af5c:	5b                   	pop    ebx
   2af5d:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_58:
   2af5e:	a1 98 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_4                       ; fixup: num: 6819, src obj: 1, src ofs: 0x2af5f, dst obj: 3, dst ofs: 0x22f98
   2af63:	85 c0                	test   eax,eax
   2af65:	0f 84 89 01 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_68
   2af6b:	ba d1 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_170                            ; fixup: num: 6818, src obj: 1, src ofs: 0x2af6c, dst obj: 3, dst ofs: 0x88d1
   2af70:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6817, src obj: 1, src ofs: 0x2af71, dst obj: 3, dst ofs: 0x294bc
   2af75:	e8 b6 b4 04 00       	call   strcmp_
   2af7a:	85 c0                	test   eax,eax
   2af7c:	0f 85 72 01 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_68
   2af82:	ba d9 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_171                            ; fixup: num: 6816, src obj: 1, src ofs: 0x2af83, dst obj: 3, dst ofs: 0x88d9
   2af87:	b8 86 36 00 00       	mov    eax,0x3686
   2af8c:	31 db                	xor    ebx,ebx
   2af8e:	e8 fd f6 03 00       	call   play_wav
   2af93:	ba e0 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_172                            ; fixup: num: 6815, src obj: 1, src ofs: 0x2af94, dst obj: 3, dst ofs: 0x88e0
   2af98:	b8 8a 36 00 00       	mov    eax,0x368a
   2af9d:	31 db                	xor    ebx,ebx
   2af9f:	e8 ec f6 03 00       	call   play_wav
   2afa4:	ba e3 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_173                            ; fixup: num: 6814, src obj: 1, src ofs: 0x2afa5, dst obj: 3, dst ofs: 0x88e3
   2afa9:	b8 90 36 00 00       	mov    eax,0x3690
   2afae:	31 db                	xor    ebx,ebx
   2afb0:	e8 db f6 03 00       	call   play_wav
   2afb5:	b8 73 00 00 00       	mov    eax,0x73
   2afba:	e8 e1 f1 ff ff       	call   GetDlgFileString
   2afbf:	e8 4c ff 03 00       	call   get_response
   2afc4:	83 f8 01             	cmp    eax,0x1
   2afc7:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_59
   2afc9:	bb 02 00 00 00       	mov    ebx,0x2
   2afce:	ba ea 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_174                            ; fixup: num: 6813, src obj: 1, src ofs: 0x2afcf, dst obj: 3, dst ofs: 0x88ea
   2afd3:	b8 9b 36 00 00       	mov    eax,0x369b
   2afd8:	eb 39                	jmp    talk_to_SHERIFF_DWAYNE_branch_60
talk_to_SHERIFF_DWAYNE_branch_59:
   2afda:	83 f8 02             	cmp    eax,0x2
   2afdd:	75 39                	jne    talk_to_SHERIFF_DWAYNE_branch_61
   2afdf:	ba f1 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_175                            ; fixup: num: 6824, src obj: 1, src ofs: 0x2afe0, dst obj: 3, dst ofs: 0x88f1
   2afe4:	b8 a3 36 00 00       	mov    eax,0x36a3
   2afe9:	31 db                	xor    ebx,ebx
   2afeb:	e8 a0 f6 03 00       	call   play_wav
   2aff0:	bb 02 00 00 00       	mov    ebx,0x2
   2aff5:	ba f8 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_176                            ; fixup: num: 6823, src obj: 1, src ofs: 0x2aff6, dst obj: 3, dst ofs: 0x88f8
   2affa:	b8 a8 36 00 00       	mov    eax,0x36a8
   2afff:	e8 8c f6 03 00       	call   play_wav
   2b004:	bb 02 00 00 00       	mov    ebx,0x2
   2b009:	ba fb 88 00 00       	mov    edx,@obj3:dwayne_cpp_variable_177                            ; fixup: num: 7192, src obj: 1, src ofs: 0x2b00a, dst obj: 3, dst ofs: 0x88fb
   2b00e:	b8 ac 36 00 00       	mov    eax,0x36ac
talk_to_SHERIFF_DWAYNE_branch_60:
   2b013:	e8 78 f6 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_61:
   2b018:	b8 a8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_1                              ; fixup: num: 7191, src obj: 1, src ofs: 0x2b019, dst obj: 3, dst ofs: 0x81a8
   2b01d:	e8 4e 18 04 00       	call   check_inventory
   2b022:	84 c0                	test   al,al
   2b024:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_62
   2b026:	ba b2 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_2                              ; fixup: num: 7190, src obj: 1, src ofs: 0x2b027, dst obj: 3, dst ofs: 0x81b2
   2b02b:	b8 bc 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_3                              ; fixup: num: 7189, src obj: 1, src ofs: 0x2b02c, dst obj: 3, dst ofs: 0x81bc
   2b030:	31 db                	xor    ebx,ebx
   2b032:	e8 d9 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_62:
   2b037:	b8 c6 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_4                              ; fixup: num: 7188, src obj: 1, src ofs: 0x2b038, dst obj: 3, dst ofs: 0x81c6
   2b03c:	e8 2f 18 04 00       	call   check_inventory
   2b041:	84 c0                	test   al,al
   2b043:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_63
   2b045:	ba da 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_5                              ; fixup: num: 7187, src obj: 1, src ofs: 0x2b046, dst obj: 3, dst ofs: 0x81da
   2b04a:	b8 ee 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_6                              ; fixup: num: 7186, src obj: 1, src ofs: 0x2b04b, dst obj: 3, dst ofs: 0x81ee
   2b04f:	31 db                	xor    ebx,ebx
   2b051:	e8 ba 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_63:
   2b056:	b8 f8 81 00 00       	mov    eax,@obj3:dwayne_cpp_variable_7                              ; fixup: num: 7185, src obj: 1, src ofs: 0x2b057, dst obj: 3, dst ofs: 0x81f8
   2b05b:	e8 10 18 04 00       	call   check_inventory
   2b060:	84 c0                	test   al,al
   2b062:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_64
   2b064:	ba fd 81 00 00       	mov    edx,@obj3:dwayne_cpp_variable_8                              ; fixup: num: 7184, src obj: 1, src ofs: 0x2b065, dst obj: 3, dst ofs: 0x81fd
   2b069:	b8 02 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_9                              ; fixup: num: 7183, src obj: 1, src ofs: 0x2b06a, dst obj: 3, dst ofs: 0x8202
   2b06e:	31 db                	xor    ebx,ebx
   2b070:	e8 9b 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_64:
   2b075:	b8 0c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_10                             ; fixup: num: 7182, src obj: 1, src ofs: 0x2b076, dst obj: 3, dst ofs: 0x820c
   2b07a:	e8 f1 17 04 00       	call   check_inventory
   2b07f:	84 c0                	test   al,al
   2b081:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_65
   2b083:	ba 1b 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_11                             ; fixup: num: 7181, src obj: 1, src ofs: 0x2b084, dst obj: 3, dst ofs: 0x821b
   2b088:	b8 2a 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_12                             ; fixup: num: 7180, src obj: 1, src ofs: 0x2b089, dst obj: 3, dst ofs: 0x822a
   2b08d:	31 db                	xor    ebx,ebx
   2b08f:	e8 7c 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_65:
   2b094:	b8 34 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_13                             ; fixup: num: 7205, src obj: 1, src ofs: 0x2b095, dst obj: 3, dst ofs: 0x8234
   2b099:	e8 d2 17 04 00       	call   check_inventory
   2b09e:	84 c0                	test   al,al
   2b0a0:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_66
   2b0a2:	ba 3c 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_14                             ; fixup: num: 7204, src obj: 1, src ofs: 0x2b0a3, dst obj: 3, dst ofs: 0x823c
   2b0a7:	b8 44 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_15                             ; fixup: num: 7203, src obj: 1, src ofs: 0x2b0a8, dst obj: 3, dst ofs: 0x8244
   2b0ac:	31 db                	xor    ebx,ebx
   2b0ae:	e8 5d 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_66:
   2b0b3:	b8 48 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_16                             ; fixup: num: 7202, src obj: 1, src ofs: 0x2b0b4, dst obj: 3, dst ofs: 0x8248
   2b0b8:	e8 b3 17 04 00       	call   check_inventory
   2b0bd:	84 c0                	test   al,al
   2b0bf:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_67
   2b0c1:	ba 5a 82 00 00       	mov    edx,@obj3:dwayne_cpp_variable_17                             ; fixup: num: 7201, src obj: 1, src ofs: 0x2b0c2, dst obj: 3, dst ofs: 0x825a
   2b0c6:	b8 6c 82 00 00       	mov    eax,@obj3:dwayne_cpp_variable_18                             ; fixup: num: 7200, src obj: 1, src ofs: 0x2b0c7, dst obj: 3, dst ofs: 0x826c
   2b0cb:	31 db                	xor    ebx,ebx
   2b0cd:	e8 3e 7e 02 00       	call   set_object
talk_to_SHERIFF_DWAYNE_branch_67:
   2b0d2:	b8 02 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_178                            ; fixup: num: 7199, src obj: 1, src ofs: 0x2b0d3, dst obj: 3, dst ofs: 0x8902
   2b0d7:	ba 01 00 00 00       	mov    edx,0x1
   2b0dc:	e8 cf 17 04 00       	call   add_inventory
   2b0e1:	b8 0d 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_179                            ; fixup: num: 7198, src obj: 1, src ofs: 0x2b0e2, dst obj: 3, dst ofs: 0x890d
   2b0e6:	e8 f5 16 04 00       	call   set_script_flag
   2b0eb:	31 c0                	xor    eax,eax
   2b0ed:	5d                   	pop    ebp
   2b0ee:	5f                   	pop    edi
   2b0ef:	5e                   	pop    esi
   2b0f0:	5a                   	pop    edx
   2b0f1:	59                   	pop    ecx
   2b0f2:	5b                   	pop    ebx
   2b0f3:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_68:
   2b0f4:	ba 1f 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_180                            ; fixup: num: 7197, src obj: 1, src ofs: 0x2b0f5, dst obj: 3, dst ofs: 0x891f
   2b0f9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 7196, src obj: 1, src ofs: 0x2b0fa, dst obj: 3, dst ofs: 0x294bc
   2b0fe:	e8 2d b3 04 00       	call   strcmp_
   2b103:	85 c0                	test   eax,eax
   2b105:	74 17                	je     talk_to_SHERIFF_DWAYNE_branch_69
   2b107:	ba 27 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_181                            ; fixup: num: 7195, src obj: 1, src ofs: 0x2b108, dst obj: 3, dst ofs: 0x8927
   2b10c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 7194, src obj: 1, src ofs: 0x2b10d, dst obj: 3, dst ofs: 0x294bc
   2b111:	e8 1a b3 04 00       	call   strcmp_
   2b116:	85 c0                	test   eax,eax
   2b118:	0f 85 f7 01 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_79
talk_to_SHERIFF_DWAYNE_branch_69:
   2b11e:	ba 39 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_182                            ; fixup: num: 7193, src obj: 1, src ofs: 0x2b11f, dst obj: 3, dst ofs: 0x8939
   2b123:	b8 08 36 00 00       	mov    eax,0x3608
   2b128:	31 db                	xor    ebx,ebx
   2b12a:	e8 61 f5 03 00       	call   play_wav
   2b12f:	b8 74 00 00 00       	mov    eax,0x74
   2b134:	e8 67 f0 ff ff       	call   GetDlgFileString
   2b139:	e8 d2 fd 03 00       	call   get_response
   2b13e:	83 f8 01             	cmp    eax,0x1
   2b141:	75 0c                	jne    talk_to_SHERIFF_DWAYNE_branch_70
   2b143:	ba 40 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_183                            ; fixup: num: 7213, src obj: 1, src ofs: 0x2b144, dst obj: 3, dst ofs: 0x8940
   2b148:	b8 13 36 00 00       	mov    eax,0x3613
   2b14d:	eb 0f                	jmp    talk_to_SHERIFF_DWAYNE_branch_71
talk_to_SHERIFF_DWAYNE_branch_70:
   2b14f:	83 f8 02             	cmp    eax,0x2
   2b152:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_72
   2b154:	ba 47 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_184                            ; fixup: num: 7212, src obj: 1, src ofs: 0x2b155, dst obj: 3, dst ofs: 0x8947
   2b159:	b8 18 36 00 00       	mov    eax,0x3618
talk_to_SHERIFF_DWAYNE_branch_71:
   2b15e:	31 db                	xor    ebx,ebx
   2b160:	e8 2b f5 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_72:
   2b165:	ba 4e 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_185                            ; fixup: num: 7211, src obj: 1, src ofs: 0x2b166, dst obj: 3, dst ofs: 0x894e
   2b16a:	b8 1c 36 00 00       	mov    eax,0x361c
   2b16f:	31 db                	xor    ebx,ebx
   2b171:	e8 1a f5 03 00       	call   play_wav
   2b176:	b8 75 00 00 00       	mov    eax,0x75
   2b17b:	e8 20 f0 ff ff       	call   GetDlgFileString
   2b180:	e8 8b fd 03 00       	call   get_response
   2b185:	83 f8 01             	cmp    eax,0x1
   2b188:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_73
   2b18a:	bb 02 00 00 00       	mov    ebx,0x2
   2b18f:	ba 55 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_186                            ; fixup: num: 7210, src obj: 1, src ofs: 0x2b190, dst obj: 3, dst ofs: 0x8955
   2b194:	b8 29 36 00 00       	mov    eax,0x3629
   2b199:	eb 11                	jmp    talk_to_SHERIFF_DWAYNE_branch_74
talk_to_SHERIFF_DWAYNE_branch_73:
   2b19b:	83 f8 02             	cmp    eax,0x2
   2b19e:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_75
   2b1a0:	ba 5c 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_187                            ; fixup: num: 7209, src obj: 1, src ofs: 0x2b1a1, dst obj: 3, dst ofs: 0x895c
   2b1a5:	b8 2d 36 00 00       	mov    eax,0x362d
   2b1aa:	31 db                	xor    ebx,ebx
talk_to_SHERIFF_DWAYNE_branch_74:
   2b1ac:	e8 df f4 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_75:
   2b1b1:	b8 76 00 00 00       	mov    eax,0x76
   2b1b6:	ba 63 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_188                            ; fixup: num: 7208, src obj: 1, src ofs: 0x2b1b7, dst obj: 3, dst ofs: 0x8963
   2b1bb:	e8 e0 ef ff ff       	call   GetDlgFileString
   2b1c0:	e8 4b fd 03 00       	call   get_response
   2b1c5:	89 c3                	mov    ebx,eax
   2b1c7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 7207, src obj: 1, src ofs: 0x2b1c8, dst obj: 3, dst ofs: 0x294bc
   2b1cc:	e8 5f b2 04 00       	call   strcmp_
   2b1d1:	85 c0                	test   eax,eax
   2b1d3:	75 46                	jne    talk_to_SHERIFF_DWAYNE_branch_76
   2b1d5:	ba 6b 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_189                            ; fixup: num: 7206, src obj: 1, src ofs: 0x2b1d6, dst obj: 3, dst ofs: 0x896b
   2b1da:	b8 3b 36 00 00       	mov    eax,0x363b
   2b1df:	31 db                	xor    ebx,ebx
   2b1e1:	e8 aa f4 03 00       	call   play_wav
   2b1e6:	ba 72 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_190                            ; fixup: num: 7221, src obj: 1, src ofs: 0x2b1e7, dst obj: 3, dst ofs: 0x8972
   2b1eb:	b8 41 36 00 00       	mov    eax,0x3641
   2b1f0:	31 db                	xor    ebx,ebx
   2b1f2:	e8 99 f4 03 00       	call   play_wav
   2b1f7:	ba 75 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_191                            ; fixup: num: 7220, src obj: 1, src ofs: 0x2b1f8, dst obj: 3, dst ofs: 0x8975
   2b1fc:	b8 45 36 00 00       	mov    eax,0x3645
   2b201:	31 db                	xor    ebx,ebx
   2b203:	e8 88 f4 03 00       	call   play_wav
   2b208:	b8 7c 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_192                            ; fixup: num: 7219, src obj: 1, src ofs: 0x2b209, dst obj: 3, dst ofs: 0x897c
   2b20d:	e8 6e 19 04 00       	call   ExecuteCommand
   2b212:	31 c0                	xor    eax,eax
   2b214:	5d                   	pop    ebp
   2b215:	5f                   	pop    edi
   2b216:	5e                   	pop    esi
   2b217:	5a                   	pop    edx
   2b218:	59                   	pop    ecx
   2b219:	5b                   	pop    ebx
   2b21a:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_76:
   2b21b:	83 fb 01             	cmp    ebx,0x1
   2b21e:	0f 85 c3 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_78
   2b224:	ba 8b 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_193                            ; fixup: num: 7218, src obj: 1, src ofs: 0x2b225, dst obj: 3, dst ofs: 0x898b
   2b229:	b8 4e 36 00 00       	mov    eax,0x364e
   2b22e:	31 db                	xor    ebx,ebx
   2b230:	e8 5b f4 03 00       	call   play_wav
   2b235:	ba 92 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_194                            ; fixup: num: 7217, src obj: 1, src ofs: 0x2b236, dst obj: 3, dst ofs: 0x8992
   2b23a:	b8 56 36 00 00       	mov    eax,0x3656
   2b23f:	31 db                	xor    ebx,ebx
   2b241:	e8 4a f4 03 00       	call   play_wav
   2b246:	ba 95 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_195                            ; fixup: num: 7216, src obj: 1, src ofs: 0x2b247, dst obj: 3, dst ofs: 0x8995
   2b24b:	b8 5b 36 00 00       	mov    eax,0x365b
   2b250:	31 db                	xor    ebx,ebx
   2b252:	e8 39 f4 03 00       	call   play_wav
   2b257:	b8 77 00 00 00       	mov    eax,0x77
   2b25c:	e8 3f ef ff ff       	call   GetDlgFileString
   2b261:	e8 aa fc 03 00       	call   get_response
   2b266:	83 f8 01             	cmp    eax,0x1
   2b269:	75 24                	jne    talk_to_SHERIFF_DWAYNE_branch_77
   2b26b:	ba 9c 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_196                            ; fixup: num: 7215, src obj: 1, src ofs: 0x2b26c, dst obj: 3, dst ofs: 0x899c
   2b270:	b8 65 36 00 00       	mov    eax,0x3665
   2b275:	31 db                	xor    ebx,ebx
   2b277:	e8 14 f4 03 00       	call   play_wav
   2b27c:	c7 05 98 2f 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_4,0x1    ; fixup: num: 7214, src obj: 1, src ofs: 0x2b27e, dst obj: 3, dst ofs: 0x22f98
   2b286:	31 c0                	xor    eax,eax
   2b288:	5d                   	pop    ebp
   2b289:	5f                   	pop    edi
   2b28a:	5e                   	pop    esi
   2b28b:	5a                   	pop    edx
   2b28c:	59                   	pop    ecx
   2b28d:	5b                   	pop    ebx
   2b28e:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_77:
   2b28f:	83 f8 02             	cmp    eax,0x2
   2b292:	0f 85 e5 10 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_169
   2b298:	bb 03 00 00 00       	mov    ebx,0x3
   2b29d:	ba a3 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_197                            ; fixup: num: 7231, src obj: 1, src ofs: 0x2b29e, dst obj: 3, dst ofs: 0x89a3
   2b2a2:	b8 6b 36 00 00       	mov    eax,0x366b
   2b2a7:	e8 e4 f3 03 00       	call   play_wav
   2b2ac:	bb 02 00 00 00       	mov    ebx,0x2
   2b2b1:	ba aa 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_198                            ; fixup: num: 7230, src obj: 1, src ofs: 0x2b2b2, dst obj: 3, dst ofs: 0x89aa
   2b2b6:	b8 70 36 00 00       	mov    eax,0x3670
   2b2bb:	e8 d0 f3 03 00       	call   play_wav
   2b2c0:	bb 02 00 00 00       	mov    ebx,0x2
   2b2c5:	ba ad 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_199                            ; fixup: num: 7229, src obj: 1, src ofs: 0x2b2c6, dst obj: 3, dst ofs: 0x89ad
   2b2ca:	b8 74 36 00 00       	mov    eax,0x3674
   2b2cf:	e8 bc f3 03 00       	call   play_wav
   2b2d4:	b8 b4 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_200                            ; fixup: num: 7228, src obj: 1, src ofs: 0x2b2d5, dst obj: 3, dst ofs: 0x89b4
   2b2d9:	e8 a2 18 04 00       	call   ExecuteCommand
   2b2de:	31 c0                	xor    eax,eax
   2b2e0:	5d                   	pop    ebp
   2b2e1:	5f                   	pop    edi
   2b2e2:	5e                   	pop    esi
   2b2e3:	5a                   	pop    edx
   2b2e4:	59                   	pop    ecx
   2b2e5:	5b                   	pop    ebx
   2b2e6:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_78:
   2b2e7:	bb 01 00 00 00       	mov    ebx,0x1
   2b2ec:	ba c3 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_201                            ; fixup: num: 7227, src obj: 1, src ofs: 0x2b2ed, dst obj: 3, dst ofs: 0x89c3
   2b2f1:	b8 7b 36 00 00       	mov    eax,0x367b
   2b2f6:	e8 95 f3 03 00       	call   play_wav
   2b2fb:	ba ca 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_202                            ; fixup: num: 7226, src obj: 1, src ofs: 0x2b2fc, dst obj: 3, dst ofs: 0x89ca
   2b300:	b8 dc 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_203                            ; fixup: num: 7225, src obj: 1, src ofs: 0x2b301, dst obj: 3, dst ofs: 0x89dc
   2b305:	31 db                	xor    ebx,ebx
   2b307:	e8 04 7c 02 00       	call   set_object
   2b30c:	31 c0                	xor    eax,eax
   2b30e:	5d                   	pop    ebp
   2b30f:	5f                   	pop    edi
   2b310:	5e                   	pop    esi
   2b311:	5a                   	pop    edx
   2b312:	59                   	pop    ecx
   2b313:	5b                   	pop    ebx
   2b314:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_79:
   2b315:	ba e0 89 00 00       	mov    edx,@obj3:dwayne_cpp_variable_204                            ; fixup: num: 7224, src obj: 1, src ofs: 0x2b316, dst obj: 3, dst ofs: 0x89e0
   2b31a:	b8 35 39 00 00       	mov    eax,0x3935
talk_to_SHERIFF_DWAYNE_branch_80:
   2b31f:	31 db                	xor    ebx,ebx
talk_to_SHERIFF_DWAYNE_branch_81:
   2b321:	e8 6a f3 03 00       	call   play_wav
   2b326:	31 c0                	xor    eax,eax
   2b328:	5d                   	pop    ebp
   2b329:	5f                   	pop    edi
   2b32a:	5e                   	pop    esi
   2b32b:	5a                   	pop    edx
   2b32c:	59                   	pop    ecx
   2b32d:	5b                   	pop    ebx
   2b32e:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_82:
   2b32f:	a1 8c 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_1                       ; fixup: num: 7223, src obj: 1, src ofs: 0x2b330, dst obj: 3, dst ofs: 0x22f8c
   2b334:	85 c0                	test   eax,eax
   2b336:	0f 84 ec 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_84
   2b33c:	b8 e7 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_205                            ; fixup: num: 7222, src obj: 1, src ofs: 0x2b33d, dst obj: 3, dst ofs: 0x89e7
   2b341:	e8 4a 14 04 00       	call   check_script_flag
   2b346:	84 c0                	test   al,al
   2b348:	0f 84 da 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_84
   2b34e:	b8 01 00 00 00       	mov    eax,0x1
   2b353:	bb 01 00 00 00       	mov    ebx,0x1
   2b358:	a3 90 2f 02 00       	mov    ds:@obj3:SHERIFF_DWAYNE_variable_2,eax                       ; fixup: num: 7241, src obj: 1, src ofs: 0x2b359, dst obj: 3, dst ofs: 0x22f90
   2b35d:	89 c2                	mov    edx,eax
   2b35f:	b8 f8 89 00 00       	mov    eax,@obj3:dwayne_cpp_variable_206                            ; fixup: num: 7240, src obj: 1, src ofs: 0x2b360, dst obj: 3, dst ofs: 0x89f8
   2b364:	89 0d 8c 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_1,ecx             ; fixup: num: 7239, src obj: 1, src ofs: 0x2b366, dst obj: 3, dst ofs: 0x22f8c
   2b36a:	e8 71 14 04 00       	call   set_script_flag
   2b36f:	ba 0a 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_207                            ; fixup: num: 7238, src obj: 1, src ofs: 0x2b370, dst obj: 3, dst ofs: 0x8a0a
   2b374:	b8 82 34 00 00       	mov    eax,0x3482
   2b379:	e8 12 f3 03 00       	call   play_wav
   2b37e:	ba 11 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_208                            ; fixup: num: 7237, src obj: 1, src ofs: 0x2b37f, dst obj: 3, dst ofs: 0x8a11
   2b383:	b8 86 34 00 00       	mov    eax,0x3486
   2b388:	31 db                	xor    ebx,ebx
   2b38a:	e8 01 f3 03 00       	call   play_wav
   2b38f:	bb 01 00 00 00       	mov    ebx,0x1
   2b394:	ba 14 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_209                            ; fixup: num: 7236, src obj: 1, src ofs: 0x2b395, dst obj: 3, dst ofs: 0x8a14
   2b399:	b8 8b 34 00 00       	mov    eax,0x348b
   2b39e:	e8 ed f2 03 00       	call   play_wav
   2b3a3:	ba 1b 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_210                            ; fixup: num: 7235, src obj: 1, src ofs: 0x2b3a4, dst obj: 3, dst ofs: 0x8a1b
   2b3a8:	b8 90 34 00 00       	mov    eax,0x3490
   2b3ad:	31 db                	xor    ebx,ebx
   2b3af:	e8 dc f2 03 00       	call   play_wav
   2b3b4:	b8 20 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_211                            ; fixup: num: 7234, src obj: 1, src ofs: 0x2b3b5, dst obj: 3, dst ofs: 0x8a20
   2b3b9:	e8 d2 13 04 00       	call   check_script_flag
   2b3be:	84 c0                	test   al,al
   2b3c0:	74 20                	je     talk_to_SHERIFF_DWAYNE_branch_83
   2b3c2:	bb 03 00 00 00       	mov    ebx,0x3
   2b3c7:	ba 2f 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_212                            ; fixup: num: 7233, src obj: 1, src ofs: 0x2b3c8, dst obj: 3, dst ofs: 0x8a2f
   2b3cc:	b8 96 34 00 00       	mov    eax,0x3496
   2b3d1:	e8 ba f2 03 00       	call   play_wav
   2b3d6:	ba 01 00 00 00       	mov    edx,0x1
   2b3db:	31 c0                	xor    eax,eax
   2b3dd:	e8 6e ce ff ff       	call   PC_HEARD_OF_KARINS_KIDNAPPING
talk_to_SHERIFF_DWAYNE_branch_83:
   2b3e2:	bb 01 00 00 00       	mov    ebx,0x1
   2b3e7:	ba 34 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_213                            ; fixup: num: 7232, src obj: 1, src ofs: 0x2b3e8, dst obj: 3, dst ofs: 0x8a34
   2b3ec:	b8 9b 34 00 00       	mov    eax,0x349b
   2b3f1:	e8 9a f2 03 00       	call   play_wav
   2b3f6:	a1 88 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE                                  ; fixup: num: 7117, src obj: 1, src ofs: 0x2b3f7, dst obj: 3, dst ofs: 0x22f88
   2b3fb:	85 c0                	test   eax,eax
   2b3fd:	0f 84 38 01 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_90
   2b403:	ba 3b 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_214                            ; fixup: num: 7116, src obj: 1, src ofs: 0x2b404, dst obj: 3, dst ofs: 0x8a3b
   2b408:	b8 a0 34 00 00       	mov    eax,0x34a0
   2b40d:	31 db                	xor    ebx,ebx
   2b40f:	e8 7c f2 03 00       	call   play_wav
   2b414:	bb 01 00 00 00       	mov    ebx,0x1
   2b419:	ba 3e 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_215                            ; fixup: num: 7115, src obj: 1, src ofs: 0x2b41a, dst obj: 3, dst ofs: 0x8a3e
   2b41e:	b8 a4 34 00 00       	mov    eax,0x34a4
   2b423:	e9 0e 01 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_89
talk_to_SHERIFF_DWAYNE_branch_84:
   2b428:	a1 90 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_2                       ; fixup: num: 7114, src obj: 1, src ofs: 0x2b429, dst obj: 3, dst ofs: 0x22f90
   2b42d:	85 c0                	test   eax,eax
   2b42f:	74 1f                	je     talk_to_SHERIFF_DWAYNE_branch_85
   2b431:	b8 45 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_216                            ; fixup: num: 7249, src obj: 1, src ofs: 0x2b432, dst obj: 3, dst ofs: 0x8a45
   2b436:	e8 55 13 04 00       	call   check_script_flag
   2b43b:	84 c0                	test   al,al
   2b43d:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_85
   2b43f:	ba 56 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_217                            ; fixup: num: 7248, src obj: 1, src ofs: 0x2b440, dst obj: 3, dst ofs: 0x8a56
   2b444:	b8 ac 34 00 00       	mov    eax,0x34ac
   2b449:	31 db                	xor    ebx,ebx
   2b44b:	e9 e6 00 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_89
talk_to_SHERIFF_DWAYNE_branch_85:
   2b450:	a1 88 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE                                  ; fixup: num: 7247, src obj: 1, src ofs: 0x2b451, dst obj: 3, dst ofs: 0x22f88
   2b455:	85 c0                	test   eax,eax
   2b457:	0f 84 c1 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_88
   2b45d:	b8 5d 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_218                            ; fixup: num: 7246, src obj: 1, src ofs: 0x2b45e, dst obj: 3, dst ofs: 0x8a5d
   2b462:	e8 29 13 04 00       	call   check_script_flag
   2b467:	84 c0                	test   al,al
   2b469:	0f 85 af 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_88
   2b46f:	bf 01 00 00 00       	mov    edi,0x1
   2b474:	31 f6                	xor    esi,esi
   2b476:	b8 6e 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_219                            ; fixup: num: 7245, src obj: 1, src ofs: 0x2b477, dst obj: 3, dst ofs: 0x8a6e
   2b47b:	89 35 88 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE,esi                        ; fixup: num: 7244, src obj: 1, src ofs: 0x2b47d, dst obj: 3, dst ofs: 0x22f88
   2b481:	89 fa                	mov    edx,edi
   2b483:	89 3d 94 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_3,edi             ; fixup: num: 7243, src obj: 1, src ofs: 0x2b485, dst obj: 3, dst ofs: 0x22f94
   2b489:	e8 52 13 04 00       	call   set_script_flag
   2b48e:	89 fb                	mov    ebx,edi
   2b490:	ba 80 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_220                            ; fixup: num: 7242, src obj: 1, src ofs: 0x2b491, dst obj: 3, dst ofs: 0x8a80
   2b495:	b8 45 32 00 00       	mov    eax,0x3245
   2b49a:	e8 f1 f1 03 00       	call   play_wav
   2b49f:	ba 87 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_221                            ; fixup: num: 7124, src obj: 1, src ofs: 0x2b4a0, dst obj: 3, dst ofs: 0x8a87
   2b4a4:	b8 4a 32 00 00       	mov    eax,0x324a
   2b4a9:	89 fb                	mov    ebx,edi
   2b4ab:	e8 e0 f1 03 00       	call   play_wav
   2b4b0:	ba 8e 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_222                            ; fixup: num: 7123, src obj: 1, src ofs: 0x2b4b1, dst obj: 3, dst ofs: 0x8a8e
   2b4b5:	b8 4e 32 00 00       	mov    eax,0x324e
   2b4ba:	31 db                	xor    ebx,ebx
   2b4bc:	e8 cf f1 03 00       	call   play_wav
   2b4c1:	ba 91 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_223                            ; fixup: num: 7122, src obj: 1, src ofs: 0x2b4c2, dst obj: 3, dst ofs: 0x8a91
   2b4c6:	b8 52 32 00 00       	mov    eax,0x3252
   2b4cb:	31 db                	xor    ebx,ebx
   2b4cd:	e8 be f1 03 00       	call   play_wav
   2b4d2:	b8 78 00 00 00       	mov    eax,0x78
   2b4d7:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7121, src obj: 1, src ofs: 0x2b4d8, dst obj: 3, dst ofs: 0x295c0
   2b4dc:	e8 bf ec ff ff       	call   GetDlgFileString
   2b4e1:	89 c6                	mov    esi,eax
   2b4e3:	31 d2                	xor    edx,edx
   2b4e5:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_86:
   2b4e6:	8a 06                	mov    al,BYTE PTR [esi]
   2b4e8:	88 07                	mov    BYTE PTR [edi],al
   2b4ea:	3c 00                	cmp    al,0x0
   2b4ec:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_87
   2b4ee:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2b4f1:	83 c6 02             	add    esi,0x2
   2b4f4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2b4f7:	83 c7 02             	add    edi,0x2
   2b4fa:	3c 00                	cmp    al,0x0
   2b4fc:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_86
talk_to_SHERIFF_DWAYNE_branch_87:
   2b4fe:	5f                   	pop    edi
   2b4ff:	b8 01 00 00 00       	mov    eax,0x1
   2b504:	e8 37 cd ff ff       	call   BOYLE_SPOKE_OF_GAS_CAN
   2b509:	85 c0                	test   eax,eax
   2b50b:	74 2e                	je     talk_to_SHERIFF_DWAYNE_branch_90
   2b50d:	ba 01 00 00 00       	mov    edx,0x1
   2b512:	b8 98 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_224                            ; fixup: num: 7120, src obj: 1, src ofs: 0x2b513, dst obj: 3, dst ofs: 0x8a98
   2b517:	e8 c4 12 04 00       	call   set_script_flag
   2b51c:	eb 1d                	jmp    talk_to_SHERIFF_DWAYNE_branch_90
talk_to_SHERIFF_DWAYNE_branch_88:
   2b51e:	a1 94 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_3                       ; fixup: num: 7119, src obj: 1, src ofs: 0x2b51f, dst obj: 3, dst ofs: 0x22f94
   2b523:	85 c0                	test   eax,eax
   2b525:	74 14                	je     talk_to_SHERIFF_DWAYNE_branch_90
   2b527:	bb 02 00 00 00       	mov    ebx,0x2
   2b52c:	ba a5 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_225                            ; fixup: num: 7118, src obj: 1, src ofs: 0x2b52d, dst obj: 3, dst ofs: 0x8aa5
   2b531:	b8 d3 34 00 00       	mov    eax,0x34d3
talk_to_SHERIFF_DWAYNE_branch_89:
   2b536:	e8 55 f1 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_90:
   2b53b:	b8 01 00 00 00       	mov    eax,0x1
   2b540:	31 d2                	xor    edx,edx
   2b542:	e8 b9 cf ff ff       	call   DUCK_COVER_MIDGAME_HAS_PLAYED
   2b547:	85 c0                	test   eax,eax
   2b549:	0f 84 77 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_94
   2b54f:	83 3d b0 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_10,0x0            ; fixup: num: 7132, src obj: 1, src ofs: 0x2b551, dst obj: 3, dst ofs: 0x22fb0
   2b556:	75 6e                	jne    talk_to_SHERIFF_DWAYNE_branch_94
   2b558:	bb 01 00 00 00       	mov    ebx,0x1
   2b55d:	ba ac 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_226                            ; fixup: num: 7131, src obj: 1, src ofs: 0x2b55e, dst obj: 3, dst ofs: 0x8aac
   2b562:	b8 b3 34 00 00       	mov    eax,0x34b3
   2b567:	89 1d b0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_10,ebx            ; fixup: num: 7130, src obj: 1, src ofs: 0x2b569, dst obj: 3, dst ofs: 0x22fb0
   2b56d:	31 db                	xor    ebx,ebx
   2b56f:	e8 1c f1 03 00       	call   play_wav
   2b574:	b8 79 00 00 00       	mov    eax,0x79
   2b579:	e8 22 ec ff ff       	call   GetDlgFileString
   2b57e:	e8 8d f9 03 00       	call   get_response
   2b583:	83 f8 01             	cmp    eax,0x1
   2b586:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_91
   2b588:	bb 02 00 00 00       	mov    ebx,0x2
   2b58d:	ba b3 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_227                            ; fixup: num: 7129, src obj: 1, src ofs: 0x2b58e, dst obj: 3, dst ofs: 0x8ab3
   2b592:	b8 bf 34 00 00       	mov    eax,0x34bf
   2b597:	eb 14                	jmp    talk_to_SHERIFF_DWAYNE_branch_92
talk_to_SHERIFF_DWAYNE_branch_91:
   2b599:	83 f8 02             	cmp    eax,0x2
   2b59c:	75 14                	jne    talk_to_SHERIFF_DWAYNE_branch_93
   2b59e:	bb 01 00 00 00       	mov    ebx,0x1
   2b5a3:	ba ba 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_228                            ; fixup: num: 7128, src obj: 1, src ofs: 0x2b5a4, dst obj: 3, dst ofs: 0x8aba
   2b5a8:	b8 c5 34 00 00       	mov    eax,0x34c5
talk_to_SHERIFF_DWAYNE_branch_92:
   2b5ad:	e8 de f0 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_93:
   2b5b2:	bb 01 00 00 00       	mov    ebx,0x1
   2b5b7:	ba c1 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_229                            ; fixup: num: 7127, src obj: 1, src ofs: 0x2b5b8, dst obj: 3, dst ofs: 0x8ac1
   2b5bc:	b8 cb 34 00 00       	mov    eax,0x34cb
   2b5c1:	e8 ca f0 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_94:
   2b5c6:	b8 01 00 00 00       	mov    eax,0x1
   2b5cb:	31 d2                	xor    edx,edx
   2b5cd:	e8 5e cd ff ff       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   2b5d2:	85 c0                	test   eax,eax
   2b5d4:	0f 84 99 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_95
   2b5da:	83 3d b4 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_11,0x0            ; fixup: num: 7126, src obj: 1, src ofs: 0x2b5dc, dst obj: 3, dst ofs: 0x22fb4
   2b5e1:	0f 85 8c 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_95
   2b5e7:	be 01 00 00 00       	mov    esi,0x1
   2b5ec:	bb 02 00 00 00       	mov    ebx,0x2
   2b5f1:	ba c8 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_230                            ; fixup: num: 7125, src obj: 1, src ofs: 0x2b5f2, dst obj: 3, dst ofs: 0x8ac8
   2b5f6:	b8 5f 35 00 00       	mov    eax,0x355f
   2b5fb:	89 35 b4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_11,esi            ; fixup: num: 7142, src obj: 1, src ofs: 0x2b5fd, dst obj: 3, dst ofs: 0x22fb4
   2b601:	e8 8a f0 03 00       	call   play_wav
   2b606:	89 f0                	mov    eax,esi
   2b608:	31 d2                	xor    edx,edx
   2b60a:	e8 31 cd ff ff       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   2b60f:	85 c0                	test   eax,eax
   2b611:	74 60                	je     talk_to_SHERIFF_DWAYNE_branch_95
   2b613:	bb 02 00 00 00       	mov    ebx,0x2
   2b618:	ba cf 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_231                            ; fixup: num: 7141, src obj: 1, src ofs: 0x2b619, dst obj: 3, dst ofs: 0x8acf
   2b61d:	b8 65 35 00 00       	mov    eax,0x3565
   2b622:	e8 69 f0 03 00       	call   play_wav
   2b627:	bb 02 00 00 00       	mov    ebx,0x2
   2b62c:	ba d6 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_232                            ; fixup: num: 7140, src obj: 1, src ofs: 0x2b62d, dst obj: 3, dst ofs: 0x8ad6
   2b631:	b8 6a 35 00 00       	mov    eax,0x356a
   2b636:	e8 55 f0 03 00       	call   play_wav
   2b63b:	bb 02 00 00 00       	mov    ebx,0x2
   2b640:	ba dd 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_233                            ; fixup: num: 7139, src obj: 1, src ofs: 0x2b641, dst obj: 3, dst ofs: 0x8add
   2b645:	b8 6f 35 00 00       	mov    eax,0x356f
   2b64a:	e8 41 f0 03 00       	call   play_wav
   2b64f:	ba e0 8a 00 00       	mov    edx,@obj3:dwayne_cpp_variable_234                            ; fixup: num: 7138, src obj: 1, src ofs: 0x2b650, dst obj: 3, dst ofs: 0x8ae0
   2b654:	b8 73 35 00 00       	mov    eax,0x3573
   2b659:	31 db                	xor    ebx,ebx
   2b65b:	e8 30 f0 03 00       	call   play_wav
   2b660:	b8 e7 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_235                            ; fixup: num: 7137, src obj: 1, src ofs: 0x2b661, dst obj: 3, dst ofs: 0x8ae7
   2b665:	e8 16 15 04 00       	call   ExecuteCommand
   2b66a:	31 c0                	xor    eax,eax
   2b66c:	5d                   	pop    ebp
   2b66d:	5f                   	pop    edi
   2b66e:	5e                   	pop    esi
   2b66f:	5a                   	pop    edx
   2b670:	59                   	pop    ecx
   2b671:	5b                   	pop    ebx
   2b672:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_95:
   2b673:	b8 f6 8a 00 00       	mov    eax,@obj3:dwayne_cpp_variable_236                            ; fixup: num: 7136, src obj: 1, src ofs: 0x2b674, dst obj: 3, dst ofs: 0x8af6
   2b678:	e8 13 11 04 00       	call   check_script_flag
   2b67d:	84 c0                	test   al,al
   2b67f:	0f 85 c8 02 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_109
   2b685:	b8 07 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_237                            ; fixup: num: 7135, src obj: 1, src ofs: 0x2b686, dst obj: 3, dst ofs: 0x8b07
   2b68a:	e8 01 11 04 00       	call   check_script_flag
   2b68f:	84 c0                	test   al,al
   2b691:	74 25                	je     talk_to_SHERIFF_DWAYNE_branch_96
   2b693:	83 3d b8 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_12,0x0            ; fixup: num: 7134, src obj: 1, src ofs: 0x2b695, dst obj: 3, dst ofs: 0x22fb8
   2b69a:	75 1c                	jne    talk_to_SHERIFF_DWAYNE_branch_96
   2b69c:	bd 01 00 00 00       	mov    ebp,0x1
   2b6a1:	ba 18 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_238                            ; fixup: num: 7133, src obj: 1, src ofs: 0x2b6a2, dst obj: 3, dst ofs: 0x8b18
   2b6a6:	b8 8b 35 00 00       	mov    eax,0x358b
   2b6ab:	89 eb                	mov    ebx,ebp
   2b6ad:	89 2d b8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_12,ebp            ; fixup: num: 7155, src obj: 1, src ofs: 0x2b6af, dst obj: 3, dst ofs: 0x22fb8
   2b6b3:	e8 d8 ef 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_96:
   2b6b8:	b8 1f 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_239                            ; fixup: num: 7154, src obj: 1, src ofs: 0x2b6b9, dst obj: 3, dst ofs: 0x8b1f
   2b6bd:	e8 ce 10 04 00       	call   check_script_flag
   2b6c2:	84 c0                	test   al,al
   2b6c4:	74 28                	je     talk_to_SHERIFF_DWAYNE_branch_97
   2b6c6:	83 3d bc 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_13,0x0            ; fixup: num: 7153, src obj: 1, src ofs: 0x2b6c8, dst obj: 3, dst ofs: 0x22fbc
   2b6cd:	75 1f                	jne    talk_to_SHERIFF_DWAYNE_branch_97
   2b6cf:	ba 01 00 00 00       	mov    edx,0x1
   2b6d4:	bb 02 00 00 00       	mov    ebx,0x2
   2b6d9:	b8 94 35 00 00       	mov    eax,0x3594
   2b6de:	89 15 bc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_13,edx            ; fixup: num: 7152, src obj: 1, src ofs: 0x2b6e0, dst obj: 3, dst ofs: 0x22fbc
   2b6e4:	ba 33 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_240                            ; fixup: num: 7151, src obj: 1, src ofs: 0x2b6e5, dst obj: 3, dst ofs: 0x8b33
   2b6e9:	e8 a2 ef 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_97:
   2b6ee:	b8 3a 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_241                            ; fixup: num: 7150, src obj: 1, src ofs: 0x2b6ef, dst obj: 3, dst ofs: 0x8b3a
   2b6f3:	e8 98 10 04 00       	call   check_script_flag
   2b6f8:	84 c0                	test   al,al
   2b6fa:	74 46                	je     talk_to_SHERIFF_DWAYNE_branch_98
   2b6fc:	8b 1d c0 2f 02 00    	mov    ebx,DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_14            ; fixup: num: 7149, src obj: 1, src ofs: 0x2b6fe, dst obj: 3, dst ofs: 0x22fc0
   2b702:	85 db                	test   ebx,ebx
   2b704:	75 3c                	jne    talk_to_SHERIFF_DWAYNE_branch_98
   2b706:	b9 01 00 00 00       	mov    ecx,0x1
   2b70b:	ba 4d 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_242                            ; fixup: num: 7148, src obj: 1, src ofs: 0x2b70c, dst obj: 3, dst ofs: 0x8b4d
   2b710:	b8 9d 35 00 00       	mov    eax,0x359d
   2b715:	89 0d c0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_14,ecx            ; fixup: num: 7147, src obj: 1, src ofs: 0x2b717, dst obj: 3, dst ofs: 0x22fc0
   2b71b:	e8 70 ef 03 00       	call   play_wav
   2b720:	ba 54 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_243                            ; fixup: num: 7146, src obj: 1, src ofs: 0x2b721, dst obj: 3, dst ofs: 0x8b54
   2b725:	b8 a4 35 00 00       	mov    eax,0x35a4
   2b72a:	31 db                	xor    ebx,ebx
   2b72c:	e8 5f ef 03 00       	call   play_wav
   2b731:	ba 5b 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_244                            ; fixup: num: 7145, src obj: 1, src ofs: 0x2b732, dst obj: 3, dst ofs: 0x8b5b
   2b736:	b8 ab 35 00 00       	mov    eax,0x35ab
   2b73b:	31 db                	xor    ebx,ebx
   2b73d:	e8 4e ef 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_98:
   2b742:	b8 62 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_245                            ; fixup: num: 7144, src obj: 1, src ofs: 0x2b743, dst obj: 3, dst ofs: 0x8b62
   2b747:	e8 44 10 04 00       	call   check_script_flag
   2b74c:	84 c0                	test   al,al
   2b74e:	74 5e                	je     talk_to_SHERIFF_DWAYNE_branch_99
   2b750:	83 3d c4 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_15,0x0            ; fixup: num: 7143, src obj: 1, src ofs: 0x2b752, dst obj: 3, dst ofs: 0x22fc4
   2b757:	75 55                	jne    talk_to_SHERIFF_DWAYNE_branch_99
   2b759:	bf 01 00 00 00       	mov    edi,0x1
   2b75e:	bb 03 00 00 00       	mov    ebx,0x3
   2b763:	ba 6f 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_246                            ; fixup: num: 7167, src obj: 1, src ofs: 0x2b764, dst obj: 3, dst ofs: 0x8b6f
   2b768:	b8 bc 35 00 00       	mov    eax,0x35bc
   2b76d:	89 3d c4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_15,edi            ; fixup: num: 7166, src obj: 1, src ofs: 0x2b76f, dst obj: 3, dst ofs: 0x22fc4
   2b773:	e8 18 ef 03 00       	call   play_wav
   2b778:	b8 76 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_247                            ; fixup: num: 7165, src obj: 1, src ofs: 0x2b779, dst obj: 3, dst ofs: 0x8b76
   2b77d:	e8 0e 10 04 00       	call   check_script_flag
   2b782:	84 c0                	test   al,al
   2b784:	74 28                	je     talk_to_SHERIFF_DWAYNE_branch_99
   2b786:	bb 03 00 00 00       	mov    ebx,0x3
   2b78b:	ba 88 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_248                            ; fixup: num: 7164, src obj: 1, src ofs: 0x2b78c, dst obj: 3, dst ofs: 0x8b88
   2b790:	b8 c1 35 00 00       	mov    eax,0x35c1
   2b795:	e8 f6 ee 03 00       	call   play_wav
   2b79a:	bb 03 00 00 00       	mov    ebx,0x3
   2b79f:	ba 8f 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_249                            ; fixup: num: 7163, src obj: 1, src ofs: 0x2b7a0, dst obj: 3, dst ofs: 0x8b8f
   2b7a4:	b8 c5 35 00 00       	mov    eax,0x35c5
   2b7a9:	e8 e2 ee 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_99:
   2b7ae:	b8 96 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_250                            ; fixup: num: 7162, src obj: 1, src ofs: 0x2b7af, dst obj: 3, dst ofs: 0x8b96
   2b7b3:	e8 d8 0f 04 00       	call   check_script_flag
   2b7b8:	84 c0                	test   al,al
   2b7ba:	74 24                	je     talk_to_SHERIFF_DWAYNE_branch_100
   2b7bc:	83 3d c8 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_16,0x0            ; fixup: num: 7161, src obj: 1, src ofs: 0x2b7be, dst obj: 3, dst ofs: 0x22fc8
   2b7c3:	75 1b                	jne    talk_to_SHERIFF_DWAYNE_branch_100
   2b7c5:	b8 01 00 00 00       	mov    eax,0x1
   2b7ca:	ba a6 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_251                            ; fixup: num: 7160, src obj: 1, src ofs: 0x2b7cb, dst obj: 3, dst ofs: 0x8ba6
   2b7cf:	31 db                	xor    ebx,ebx
   2b7d1:	a3 c8 2f 02 00       	mov    ds:@obj3:SHERIFF_DWAYNE_variable_16,eax                      ; fixup: num: 7159, src obj: 1, src ofs: 0x2b7d2, dst obj: 3, dst ofs: 0x22fc8
   2b7d6:	b8 cd 35 00 00       	mov    eax,0x35cd
   2b7db:	e8 b0 ee 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_100:
   2b7e0:	b8 ad 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_252                            ; fixup: num: 7158, src obj: 1, src ofs: 0x2b7e1, dst obj: 3, dst ofs: 0x8bad
   2b7e5:	e8 a6 0f 04 00       	call   check_script_flag
   2b7ea:	84 c0                	test   al,al
   2b7ec:	74 25                	je     talk_to_SHERIFF_DWAYNE_branch_101
   2b7ee:	83 3d cc 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_17,0x0            ; fixup: num: 7157, src obj: 1, src ofs: 0x2b7f0, dst obj: 3, dst ofs: 0x22fcc
   2b7f5:	75 1c                	jne    talk_to_SHERIFF_DWAYNE_branch_101
   2b7f7:	bb 01 00 00 00       	mov    ebx,0x1
   2b7fc:	ba c3 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_253                            ; fixup: num: 7156, src obj: 1, src ofs: 0x2b7fd, dst obj: 3, dst ofs: 0x8bc3
   2b801:	b8 d7 35 00 00       	mov    eax,0x35d7
   2b806:	89 1d cc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_17,ebx            ; fixup: num: 7178, src obj: 1, src ofs: 0x2b808, dst obj: 3, dst ofs: 0x22fcc
   2b80c:	31 db                	xor    ebx,ebx
   2b80e:	e8 7d ee 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_101:
   2b813:	b8 ca 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_254                            ; fixup: num: 7177, src obj: 1, src ofs: 0x2b814, dst obj: 3, dst ofs: 0x8bca
   2b818:	e8 73 0f 04 00       	call   check_script_flag
   2b81d:	84 c0                	test   al,al
   2b81f:	74 50                	je     talk_to_SHERIFF_DWAYNE_branch_102
   2b821:	83 3d d0 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_18,0x0            ; fixup: num: 7176, src obj: 1, src ofs: 0x2b823, dst obj: 3, dst ofs: 0x22fd0
   2b828:	75 47                	jne    talk_to_SHERIFF_DWAYNE_branch_102
   2b82a:	be 01 00 00 00       	mov    esi,0x1
   2b82f:	bb 02 00 00 00       	mov    ebx,0x2
   2b834:	ba dc 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_255                            ; fixup: num: 7175, src obj: 1, src ofs: 0x2b835, dst obj: 3, dst ofs: 0x8bdc
   2b839:	b8 f6 35 00 00       	mov    eax,0x35f6
   2b83e:	89 35 d0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_18,esi            ; fixup: num: 7174, src obj: 1, src ofs: 0x2b840, dst obj: 3, dst ofs: 0x22fd0
   2b844:	e8 47 ee 03 00       	call   play_wav
   2b849:	bb 02 00 00 00       	mov    ebx,0x2
   2b84e:	ba e3 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_256                            ; fixup: num: 7173, src obj: 1, src ofs: 0x2b84f, dst obj: 3, dst ofs: 0x8be3
   2b853:	b8 fb 35 00 00       	mov    eax,0x35fb
   2b858:	e8 33 ee 03 00       	call   play_wav
   2b85d:	bb 02 00 00 00       	mov    ebx,0x2
   2b862:	ba ea 8b 00 00       	mov    edx,@obj3:dwayne_cpp_variable_257                            ; fixup: num: 7172, src obj: 1, src ofs: 0x2b863, dst obj: 3, dst ofs: 0x8bea
   2b867:	b8 01 36 00 00       	mov    eax,0x3601
   2b86c:	e8 1f ee 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_102:
   2b871:	b8 f1 8b 00 00       	mov    eax,@obj3:dwayne_cpp_variable_258                            ; fixup: num: 7171, src obj: 1, src ofs: 0x2b872, dst obj: 3, dst ofs: 0x8bf1
   2b876:	e8 15 0f 04 00       	call   check_script_flag
   2b87b:	84 c0                	test   al,al
   2b87d:	0f 84 ca 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_109
   2b883:	83 3d d4 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_19,0x0            ; fixup: num: 7170, src obj: 1, src ofs: 0x2b885, dst obj: 3, dst ofs: 0x22fd4
   2b88a:	0f 85 bd 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_109
   2b890:	bd 01 00 00 00       	mov    ebp,0x1
   2b895:	bb 03 00 00 00       	mov    ebx,0x3
   2b89a:	ba 00 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_259                            ; fixup: num: 7169, src obj: 1, src ofs: 0x2b89b, dst obj: 3, dst ofs: 0x8c00
   2b89f:	b8 b2 36 00 00       	mov    eax,0x36b2
   2b8a4:	89 2d d4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_19,ebp            ; fixup: num: 7168, src obj: 1, src ofs: 0x2b8a6, dst obj: 3, dst ofs: 0x22fd4
   2b8aa:	e8 e1 ed 03 00       	call   play_wav
   2b8af:	89 ea                	mov    edx,ebp
   2b8b1:	31 c0                	xor    eax,eax
   2b8b3:	e8 98 c9 ff ff       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   2b8b8:	b8 7b 00 00 00       	mov    eax,0x7b
   2b8bd:	e8 de e8 ff ff       	call   GetDlgFileString
   2b8c2:	e8 49 f6 03 00       	call   get_response
   2b8c7:	39 e8                	cmp    eax,ebp
   2b8c9:	75 0c                	jne    talk_to_SHERIFF_DWAYNE_branch_103
   2b8cb:	ba 07 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_260                            ; fixup: num: 7050, src obj: 1, src ofs: 0x2b8cc, dst obj: 3, dst ofs: 0x8c07
   2b8d0:	b8 bd 36 00 00       	mov    eax,0x36bd
   2b8d5:	eb 0f                	jmp    talk_to_SHERIFF_DWAYNE_branch_104
talk_to_SHERIFF_DWAYNE_branch_103:
   2b8d7:	83 f8 02             	cmp    eax,0x2
   2b8da:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_105
   2b8dc:	ba 0e 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_261                            ; fixup: num: 7049, src obj: 1, src ofs: 0x2b8dd, dst obj: 3, dst ofs: 0x8c0e
   2b8e1:	b8 c1 36 00 00       	mov    eax,0x36c1
talk_to_SHERIFF_DWAYNE_branch_104:
   2b8e6:	31 db                	xor    ebx,ebx
   2b8e8:	e8 a3 ed 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_105:
   2b8ed:	ba 15 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_262                            ; fixup: num: 7048, src obj: 1, src ofs: 0x2b8ee, dst obj: 3, dst ofs: 0x8c15
   2b8f2:	b8 c5 36 00 00       	mov    eax,0x36c5
   2b8f7:	31 db                	xor    ebx,ebx
   2b8f9:	e8 92 ed 03 00       	call   play_wav
   2b8fe:	b8 7c 00 00 00       	mov    eax,0x7c
   2b903:	e8 98 e8 ff ff       	call   GetDlgFileString
   2b908:	e8 03 f6 03 00       	call   get_response
   2b90d:	83 f8 01             	cmp    eax,0x1
   2b910:	75 0e                	jne    talk_to_SHERIFF_DWAYNE_branch_106
   2b912:	ba 1c 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_263                            ; fixup: num: 7047, src obj: 1, src ofs: 0x2b913, dst obj: 3, dst ofs: 0x8c1c
   2b917:	b8 d0 36 00 00       	mov    eax,0x36d0
   2b91c:	31 db                	xor    ebx,ebx
   2b91e:	eb 14                	jmp    talk_to_SHERIFF_DWAYNE_branch_107
talk_to_SHERIFF_DWAYNE_branch_106:
   2b920:	83 f8 02             	cmp    eax,0x2
   2b923:	75 14                	jne    talk_to_SHERIFF_DWAYNE_branch_108
   2b925:	bb 01 00 00 00       	mov    ebx,0x1
   2b92a:	ba 23 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_264                            ; fixup: num: 7046, src obj: 1, src ofs: 0x2b92b, dst obj: 3, dst ofs: 0x8c23
   2b92f:	b8 d6 36 00 00       	mov    eax,0x36d6
talk_to_SHERIFF_DWAYNE_branch_107:
   2b934:	e8 57 ed 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_108:
   2b939:	bb 01 00 00 00       	mov    ebx,0x1
   2b93e:	ba 2a 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_265                            ; fixup: num: 7179, src obj: 1, src ofs: 0x2b93f, dst obj: 3, dst ofs: 0x8c2a
   2b943:	b8 e7 36 00 00       	mov    eax,0x36e7
   2b948:	e8 43 ed 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_109:
   2b94d:	b8 01 00 00 00       	mov    eax,0x1
   2b952:	31 d2                	xor    edx,edx
   2b954:	e8 07 c9 ff ff       	call   DAY_AFTER_PC_RESCUED_KARIN
   2b959:	85 c0                	test   eax,eax
   2b95b:	74 6b                	je     talk_to_SHERIFF_DWAYNE_branch_110
   2b95d:	e8 5e d2 ff ff       	call   get_day
   2b962:	3b 05 9c 2f 02 00    	cmp    eax,DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_5             ; fixup: num: 7059, src obj: 1, src ofs: 0x2b964, dst obj: 3, dst ofs: 0x22f9c
   2b968:	74 5e                	je     talk_to_SHERIFF_DWAYNE_branch_110
   2b96a:	8b 1d d8 2f 02 00    	mov    ebx,DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_20            ; fixup: num: 7058, src obj: 1, src ofs: 0x2b96c, dst obj: 3, dst ofs: 0x22fd8
   2b970:	85 db                	test   ebx,ebx
   2b972:	75 54                	jne    talk_to_SHERIFF_DWAYNE_branch_110
   2b974:	b9 01 00 00 00       	mov    ecx,0x1
   2b979:	31 d2                	xor    edx,edx
   2b97b:	31 c0                	xor    eax,eax
   2b97d:	89 0d d8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_20,ecx            ; fixup: num: 7057, src obj: 1, src ofs: 0x2b97f, dst obj: 3, dst ofs: 0x22fd8
   2b983:	e8 d8 c8 ff ff       	call   DAY_AFTER_PC_RESCUED_KARIN
   2b988:	ba 31 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_266                            ; fixup: num: 7056, src obj: 1, src ofs: 0x2b989, dst obj: 3, dst ofs: 0x8c31
   2b98d:	b8 80 37 00 00       	mov    eax,0x3780
   2b992:	e8 f9 ec 03 00       	call   play_wav
   2b997:	bb 04 00 00 00       	mov    ebx,0x4
   2b99c:	ba 38 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_267                            ; fixup: num: 7055, src obj: 1, src ofs: 0x2b99d, dst obj: 3, dst ofs: 0x8c38
   2b9a1:	b8 86 37 00 00       	mov    eax,0x3786
   2b9a6:	e8 e5 ec 03 00       	call   play_wav
   2b9ab:	bb 02 00 00 00       	mov    ebx,0x2
   2b9b0:	ba 3b 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_268                            ; fixup: num: 7054, src obj: 1, src ofs: 0x2b9b1, dst obj: 3, dst ofs: 0x8c3b
   2b9b5:	b8 8a 37 00 00       	mov    eax,0x378a
   2b9ba:	e8 d1 ec 03 00       	call   play_wav
   2b9bf:	89 ca                	mov    edx,ecx
   2b9c1:	31 c0                	xor    eax,eax
   2b9c3:	e8 b8 ca ff ff       	call   SHERIFF_ALREADY_TOLD_PC_HE_DIDN_T_BELIEVE_KARIN
talk_to_SHERIFF_DWAYNE_branch_110:
   2b9c8:	b8 42 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_269                            ; fixup: num: 7053, src obj: 1, src ofs: 0x2b9c9, dst obj: 3, dst ofs: 0x8c42
   2b9cd:	e8 be 0d 04 00       	call   check_script_flag
   2b9d2:	84 c0                	test   al,al
   2b9d4:	0f 84 e3 00 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_115
   2b9da:	b8 01 00 00 00       	mov    eax,0x1
   2b9df:	31 d2                	xor    edx,edx
   2b9e1:	e8 aa c9 ff ff       	call   SHOW_SHERIFF_KARIN_S_PURSE
   2b9e6:	85 c0                	test   eax,eax
   2b9e8:	0f 85 cf 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_115
   2b9ee:	b8 53 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_270                            ; fixup: num: 7052, src obj: 1, src ofs: 0x2b9ef, dst obj: 3, dst ofs: 0x8c53
   2b9f3:	e8 98 0d 04 00       	call   check_script_flag
   2b9f8:	84 c0                	test   al,al
   2b9fa:	0f 85 bd 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_115
   2ba00:	83 3d dc 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_21,0x0            ; fixup: num: 7051, src obj: 1, src ofs: 0x2ba02, dst obj: 3, dst ofs: 0x22fdc
   2ba07:	0f 85 b0 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_115
   2ba0d:	bf 01 00 00 00       	mov    edi,0x1
   2ba12:	ba 64 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_271                            ; fixup: num: 7068, src obj: 1, src ofs: 0x2ba13, dst obj: 3, dst ofs: 0x8c64
   2ba17:	b8 93 37 00 00       	mov    eax,0x3793
   2ba1c:	31 db                	xor    ebx,ebx
   2ba1e:	89 3d dc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_21,edi            ; fixup: num: 7067, src obj: 1, src ofs: 0x2ba20, dst obj: 3, dst ofs: 0x22fdc
   2ba24:	e8 67 ec 03 00       	call   play_wav
   2ba29:	b8 7f 00 00 00       	mov    eax,0x7f
   2ba2e:	e8 6d e7 ff ff       	call   GetDlgFileString
   2ba33:	e8 d8 f4 03 00       	call   get_response
   2ba38:	39 f8                	cmp    eax,edi
   2ba3a:	75 0f                	jne    talk_to_SHERIFF_DWAYNE_branch_111
   2ba3c:	ba 6b 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_272                            ; fixup: num: 7066, src obj: 1, src ofs: 0x2ba3d, dst obj: 3, dst ofs: 0x8c6b
   2ba41:	b8 9d 37 00 00       	mov    eax,0x379d
   2ba46:	e9 2b 09 00 00       	jmp    talk_to_SHERIFF_DWAYNE_branch_167
talk_to_SHERIFF_DWAYNE_branch_111:
   2ba4b:	83 f8 02             	cmp    eax,0x2
   2ba4e:	75 6d                	jne    talk_to_SHERIFF_DWAYNE_branch_115
   2ba50:	ba 72 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_273                            ; fixup: num: 7065, src obj: 1, src ofs: 0x2ba51, dst obj: 3, dst ofs: 0x8c72
   2ba55:	89 c3                	mov    ebx,eax
   2ba57:	b8 a4 37 00 00       	mov    eax,0x37a4
   2ba5c:	e8 2f ec 03 00       	call   play_wav
   2ba61:	b8 80 00 00 00       	mov    eax,0x80
   2ba66:	e8 35 e7 ff ff       	call   GetDlgFileString
   2ba6b:	e8 a0 f4 03 00       	call   get_response
   2ba70:	39 f8                	cmp    eax,edi
   2ba72:	75 0e                	jne    talk_to_SHERIFF_DWAYNE_branch_112
   2ba74:	ba 79 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_274                            ; fixup: num: 7064, src obj: 1, src ofs: 0x2ba75, dst obj: 3, dst ofs: 0x8c79
   2ba79:	b8 ae 37 00 00       	mov    eax,0x37ae
   2ba7e:	31 db                	xor    ebx,ebx
   2ba80:	eb 14                	jmp    talk_to_SHERIFF_DWAYNE_branch_113
talk_to_SHERIFF_DWAYNE_branch_112:
   2ba82:	83 f8 02             	cmp    eax,0x2
   2ba85:	75 14                	jne    talk_to_SHERIFF_DWAYNE_branch_114
   2ba87:	bb 03 00 00 00       	mov    ebx,0x3
   2ba8c:	ba 80 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_275                            ; fixup: num: 7063, src obj: 1, src ofs: 0x2ba8d, dst obj: 3, dst ofs: 0x8c80
   2ba91:	b8 b4 37 00 00       	mov    eax,0x37b4
talk_to_SHERIFF_DWAYNE_branch_113:
   2ba96:	e8 f5 eb 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_114:
   2ba9b:	ba 87 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_276                            ; fixup: num: 7062, src obj: 1, src ofs: 0x2ba9c, dst obj: 3, dst ofs: 0x8c87
   2baa0:	b8 c1 37 00 00       	mov    eax,0x37c1
   2baa5:	31 db                	xor    ebx,ebx
   2baa7:	e8 e4 eb 03 00       	call   play_wav
   2baac:	ba 8e 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_277                            ; fixup: num: 7061, src obj: 1, src ofs: 0x2baad, dst obj: 3, dst ofs: 0x8c8e
   2bab1:	b8 c5 37 00 00       	mov    eax,0x37c5
   2bab6:	31 db                	xor    ebx,ebx
   2bab8:	e8 d3 eb 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_115:
   2babd:	b8 91 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_278                            ; fixup: num: 7060, src obj: 1, src ofs: 0x2babe, dst obj: 3, dst ofs: 0x8c91
   2bac2:	e8 79 0d 04 00       	call   npc_alive
   2bac7:	84 c0                	test   al,al
   2bac9:	0f 85 94 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_118
   2bacf:	b8 97 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_279                            ; fixup: num: 7077, src obj: 1, src ofs: 0x2bad0, dst obj: 3, dst ofs: 0x8c97
   2bad4:	e8 b7 0c 04 00       	call   check_script_flag
   2bad9:	84 c0                	test   al,al
   2badb:	0f 85 82 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_118
   2bae1:	83 3d e0 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_22,0x0            ; fixup: num: 7076, src obj: 1, src ofs: 0x2bae3, dst obj: 3, dst ofs: 0x22fe0
   2bae8:	0f 85 75 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_118
   2baee:	b8 01 00 00 00       	mov    eax,0x1
   2baf3:	bb 03 00 00 00       	mov    ebx,0x3
   2baf8:	ba a8 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_280                            ; fixup: num: 7075, src obj: 1, src ofs: 0x2baf9, dst obj: 3, dst ofs: 0x8ca8
   2bafd:	a3 e0 2f 02 00       	mov    ds:@obj3:SHERIFF_DWAYNE_variable_22,eax                      ; fixup: num: 7074, src obj: 1, src ofs: 0x2bafe, dst obj: 3, dst ofs: 0x22fe0
   2bb02:	b8 55 38 00 00       	mov    eax,0x3855
   2bb07:	e8 84 eb 03 00       	call   play_wav
   2bb0c:	b8 af 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_281                            ; fixup: num: 7073, src obj: 1, src ofs: 0x2bb0d, dst obj: 3, dst ofs: 0x8caf
   2bb11:	e8 7a 0c 04 00       	call   check_script_flag
   2bb16:	84 c0                	test   al,al
   2bb18:	74 49                	je     talk_to_SHERIFF_DWAYNE_branch_118
   2bb1a:	ba be 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_282                            ; fixup: num: 7072, src obj: 1, src ofs: 0x2bb1b, dst obj: 3, dst ofs: 0x8cbe
   2bb1f:	b8 f8 37 00 00       	mov    eax,0x37f8
   2bb24:	31 db                	xor    ebx,ebx
   2bb26:	e8 65 eb 03 00       	call   play_wav
   2bb2b:	b8 81 00 00 00       	mov    eax,0x81
   2bb30:	e8 6b e6 ff ff       	call   GetDlgFileString
   2bb35:	e8 d6 f3 03 00       	call   get_response
   2bb3a:	83 f8 01             	cmp    eax,0x1
   2bb3d:	75 0e                	jne    talk_to_SHERIFF_DWAYNE_branch_116
   2bb3f:	ba c5 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_283                            ; fixup: num: 7071, src obj: 1, src ofs: 0x2bb40, dst obj: 3, dst ofs: 0x8cc5
   2bb44:	89 c3                	mov    ebx,eax
   2bb46:	b8 05 38 00 00       	mov    eax,0x3805
   2bb4b:	eb 11                	jmp    talk_to_SHERIFF_DWAYNE_branch_117
talk_to_SHERIFF_DWAYNE_branch_116:
   2bb4d:	83 f8 02             	cmp    eax,0x2
   2bb50:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_118
   2bb52:	ba cc 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_284                            ; fixup: num: 7070, src obj: 1, src ofs: 0x2bb53, dst obj: 3, dst ofs: 0x8ccc
   2bb57:	b8 0c 38 00 00       	mov    eax,0x380c
   2bb5c:	31 db                	xor    ebx,ebx
talk_to_SHERIFF_DWAYNE_branch_117:
   2bb5e:	e8 2d eb 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_118:
   2bb63:	b8 d3 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_285                            ; fixup: num: 7069, src obj: 1, src ofs: 0x2bb64, dst obj: 3, dst ofs: 0x8cd3
   2bb68:	e8 d3 0c 04 00       	call   npc_alive
   2bb6d:	84 c0                	test   al,al
   2bb6f:	75 33                	jne    talk_to_SHERIFF_DWAYNE_branch_119
   2bb71:	b8 dc 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_286                            ; fixup: num: 7090, src obj: 1, src ofs: 0x2bb72, dst obj: 3, dst ofs: 0x8cdc
   2bb76:	e8 15 0c 04 00       	call   check_script_flag
   2bb7b:	84 c0                	test   al,al
   2bb7d:	75 25                	jne    talk_to_SHERIFF_DWAYNE_branch_119
   2bb7f:	83 3d e4 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_23,0x0            ; fixup: num: 7089, src obj: 1, src ofs: 0x2bb81, dst obj: 3, dst ofs: 0x22fe4
   2bb86:	75 1c                	jne    talk_to_SHERIFF_DWAYNE_branch_119
   2bb88:	bb 01 00 00 00       	mov    ebx,0x1
   2bb8d:	ba ed 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_287                            ; fixup: num: 7088, src obj: 1, src ofs: 0x2bb8e, dst obj: 3, dst ofs: 0x8ced
   2bb92:	b8 ce 38 00 00       	mov    eax,0x38ce
   2bb97:	89 1d e4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_23,ebx            ; fixup: num: 7087, src obj: 1, src ofs: 0x2bb99, dst obj: 3, dst ofs: 0x22fe4
   2bb9d:	31 db                	xor    ebx,ebx
   2bb9f:	e8 ec ea 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_119:
   2bba4:	b8 f4 8c 00 00       	mov    eax,@obj3:dwayne_cpp_variable_288                            ; fixup: num: 7086, src obj: 1, src ofs: 0x2bba5, dst obj: 3, dst ofs: 0x8cf4
   2bba9:	e8 e2 0b 04 00       	call   check_script_flag
   2bbae:	84 c0                	test   al,al
   2bbb0:	74 28                	je     talk_to_SHERIFF_DWAYNE_branch_120
   2bbb2:	83 3d e8 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_24,0x0            ; fixup: num: 7085, src obj: 1, src ofs: 0x2bbb4, dst obj: 3, dst ofs: 0x22fe8
   2bbb9:	75 1f                	jne    talk_to_SHERIFF_DWAYNE_branch_120
   2bbbb:	be 01 00 00 00       	mov    esi,0x1
   2bbc0:	bb 03 00 00 00       	mov    ebx,0x3
   2bbc5:	ba fe 8c 00 00       	mov    edx,@obj3:dwayne_cpp_variable_289                            ; fixup: num: 7084, src obj: 1, src ofs: 0x2bbc6, dst obj: 3, dst ofs: 0x8cfe
   2bbca:	b8 f1 38 00 00       	mov    eax,0x38f1
   2bbcf:	89 35 e8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_24,esi            ; fixup: num: 7083, src obj: 1, src ofs: 0x2bbd1, dst obj: 3, dst ofs: 0x22fe8
   2bbd5:	e8 b6 ea 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_120:
   2bbda:	b8 05 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_290                            ; fixup: num: 7082, src obj: 1, src ofs: 0x2bbdb, dst obj: 3, dst ofs: 0x8d05
   2bbdf:	e8 5c 0c 04 00       	call   npc_alive
   2bbe4:	84 c0                	test   al,al
   2bbe6:	75 52                	jne    talk_to_SHERIFF_DWAYNE_branch_123
   2bbe8:	b8 0e 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_291                            ; fixup: num: 7081, src obj: 1, src ofs: 0x2bbe9, dst obj: 3, dst ofs: 0x8d0e
   2bbed:	e8 9e 0b 04 00       	call   check_script_flag
   2bbf2:	84 c0                	test   al,al
   2bbf4:	75 44                	jne    talk_to_SHERIFF_DWAYNE_branch_123
   2bbf6:	83 3d ec 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_25,0x0            ; fixup: num: 7080, src obj: 1, src ofs: 0x2bbf8, dst obj: 3, dst ofs: 0x22fec
   2bbfd:	75 3b                	jne    talk_to_SHERIFF_DWAYNE_branch_123
   2bbff:	bd 01 00 00 00       	mov    ebp,0x1
   2bc04:	b8 1f 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_292                            ; fixup: num: 7079, src obj: 1, src ofs: 0x2bc05, dst obj: 3, dst ofs: 0x8d1f
   2bc09:	89 2d ec 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_25,ebp            ; fixup: num: 7078, src obj: 1, src ofs: 0x2bc0b, dst obj: 3, dst ofs: 0x22fec
   2bc0f:	e8 5c 0c 04 00       	call   check_inventory
   2bc14:	84 c0                	test   al,al
   2bc16:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_121
   2bc18:	bb 03 00 00 00       	mov    ebx,0x3
   2bc1d:	ba 27 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_293                            ; fixup: num: 7097, src obj: 1, src ofs: 0x2bc1e, dst obj: 3, dst ofs: 0x8d27
   2bc22:	b8 04 39 00 00       	mov    eax,0x3904
   2bc27:	eb 0c                	jmp    talk_to_SHERIFF_DWAYNE_branch_122
talk_to_SHERIFF_DWAYNE_branch_121:
   2bc29:	ba 2e 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_294                            ; fixup: num: 7096, src obj: 1, src ofs: 0x2bc2a, dst obj: 3, dst ofs: 0x8d2e
   2bc2e:	b8 0f 39 00 00       	mov    eax,0x390f
   2bc33:	89 eb                	mov    ebx,ebp
talk_to_SHERIFF_DWAYNE_branch_122:
   2bc35:	e8 56 ea 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_123:
   2bc3a:	be 35 8d 00 00       	mov    esi,@obj3:dwayne_cpp_variable_295                            ; fixup: num: 7095, src obj: 1, src ofs: 0x2bc3b, dst obj: 3, dst ofs: 0x8d35
   2bc3f:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 7094, src obj: 1, src ofs: 0x2bc40, dst obj: 3, dst ofs: 0x294c0
   2bc44:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_124:
   2bc45:	8a 06                	mov    al,BYTE PTR [esi]
   2bc47:	88 07                	mov    BYTE PTR [edi],al
   2bc49:	3c 00                	cmp    al,0x0
   2bc4b:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_125
   2bc4d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bc50:	83 c6 02             	add    esi,0x2
   2bc53:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2bc56:	83 c7 02             	add    edi,0x2
   2bc59:	3c 00                	cmp    al,0x0
   2bc5b:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_124
talk_to_SHERIFF_DWAYNE_branch_125:
   2bc5d:	5f                   	pop    edi
   2bc5e:	89 fd                	mov    ebp,edi
   2bc60:	31 c9                	xor    ecx,ecx
talk_to_SHERIFF_DWAYNE_branch_126:
   2bc62:	b8 82 00 00 00       	mov    eax,0x82
   2bc67:	e8 34 e5 ff ff       	call   GetDlgFileString
   2bc6c:	89 c2                	mov    edx,eax
   2bc6e:	89 e8                	mov    eax,ebp
   2bc70:	e8 e5 57 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bc75:	85 c0                	test   eax,eax
   2bc77:	0f 84 ef 06 00 00    	je     talk_to_SHERIFF_DWAYNE_branch_166
   2bc7d:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 7093, src obj: 1, src ofs: 0x2bc7e, dst obj: 3, dst ofs: 0x295c0
   2bc82:	e8 b9 fd 03 00       	call   show_keywords
   2bc87:	b8 83 00 00 00       	mov    eax,0x83
   2bc8c:	e8 0f e5 ff ff       	call   GetDlgFileString
   2bc91:	89 c2                	mov    edx,eax
   2bc93:	89 e8                	mov    eax,ebp
   2bc95:	e8 c0 57 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bc9a:	85 c0                	test   eax,eax
   2bc9c:	75 3e                	jne    talk_to_SHERIFF_DWAYNE_branch_129
   2bc9e:	ba 36 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_296                            ; fixup: num: 7092, src obj: 1, src ofs: 0x2bc9f, dst obj: 3, dst ofs: 0x8d36
   2bca3:	b8 6e 32 00 00       	mov    eax,0x326e
   2bca8:	89 cb                	mov    ebx,ecx
   2bcaa:	e8 e1 e9 03 00       	call   play_wav
   2bcaf:	b8 84 00 00 00       	mov    eax,0x84
   2bcb4:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7091, src obj: 1, src ofs: 0x2bcb5, dst obj: 3, dst ofs: 0x295c0
   2bcb9:	e8 e2 e4 ff ff       	call   GetDlgFileString
   2bcbe:	89 c6                	mov    esi,eax
   2bcc0:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_127:
   2bcc1:	8a 06                	mov    al,BYTE PTR [esi]
   2bcc3:	88 07                	mov    BYTE PTR [edi],al
   2bcc5:	3c 00                	cmp    al,0x0
   2bcc7:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_128
   2bcc9:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bccc:	83 c6 02             	add    esi,0x2
   2bccf:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2bcd2:	83 c7 02             	add    edi,0x2
   2bcd5:	3c 00                	cmp    al,0x0
   2bcd7:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_127
talk_to_SHERIFF_DWAYNE_branch_128:
   2bcd9:	5f                   	pop    edi
   2bcda:	eb 86                	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_129:
   2bcdc:	b8 85 00 00 00       	mov    eax,0x85
   2bce1:	e8 ba e4 ff ff       	call   GetDlgFileString
   2bce6:	89 c2                	mov    edx,eax
   2bce8:	89 e8                	mov    eax,ebp
   2bcea:	e8 6b 57 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bcef:	85 c0                	test   eax,eax
   2bcf1:	74 32                	je     talk_to_SHERIFF_DWAYNE_branch_130
   2bcf3:	b8 86 00 00 00       	mov    eax,0x86
   2bcf8:	e8 a3 e4 ff ff       	call   GetDlgFileString
   2bcfd:	89 c2                	mov    edx,eax
   2bcff:	89 e8                	mov    eax,ebp
   2bd01:	e8 54 57 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bd06:	85 c0                	test   eax,eax
   2bd08:	74 1b                	je     talk_to_SHERIFF_DWAYNE_branch_130
   2bd0a:	b8 87 00 00 00       	mov    eax,0x87
   2bd0f:	e8 8c e4 ff ff       	call   GetDlgFileString
   2bd14:	89 c2                	mov    edx,eax
   2bd16:	89 e8                	mov    eax,ebp
   2bd18:	e8 3d 57 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bd1d:	85 c0                	test   eax,eax
   2bd1f:	0f 85 e8 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_133
talk_to_SHERIFF_DWAYNE_branch_130:
   2bd25:	b8 3d 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_297                            ; fixup: num: 7102, src obj: 1, src ofs: 0x2bd26, dst obj: 3, dst ofs: 0x8d3d
   2bd2a:	e8 61 0a 04 00       	call   check_script_flag
   2bd2f:	84 c0                	test   al,al
   2bd31:	0f 85 d6 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_133
   2bd37:	ba 4e 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_298                            ; fixup: num: 7101, src obj: 1, src ofs: 0x2bd38, dst obj: 3, dst ofs: 0x8d4e
   2bd3c:	b8 7b 32 00 00       	mov    eax,0x327b
   2bd41:	89 cb                	mov    ebx,ecx
   2bd43:	e8 48 e9 03 00       	call   play_wav
   2bd48:	bb 02 00 00 00       	mov    ebx,0x2
   2bd4d:	ba 55 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_299                            ; fixup: num: 7100, src obj: 1, src ofs: 0x2bd4e, dst obj: 3, dst ofs: 0x8d55
   2bd52:	b8 80 32 00 00       	mov    eax,0x3280
   2bd57:	e8 34 e9 03 00       	call   play_wav
   2bd5c:	ba 58 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_300                            ; fixup: num: 7099, src obj: 1, src ofs: 0x2bd5d, dst obj: 3, dst ofs: 0x8d58
   2bd61:	b8 85 32 00 00       	mov    eax,0x3285
   2bd66:	89 cb                	mov    ebx,ecx
   2bd68:	e8 23 e9 03 00       	call   play_wav
   2bd6d:	ba 01 00 00 00       	mov    edx,0x1
   2bd72:	89 c8                	mov    eax,ecx
   2bd74:	bb 01 00 00 00       	mov    ebx,0x1
   2bd79:	e8 62 c6 ff ff       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   2bd7e:	ba 5f 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_301                            ; fixup: num: 7098, src obj: 1, src ofs: 0x2bd7f, dst obj: 3, dst ofs: 0x8d5f
   2bd83:	b8 8b 32 00 00       	mov    eax,0x328b
   2bd88:	e8 03 e9 03 00       	call   play_wav
   2bd8d:	bb 02 00 00 00       	mov    ebx,0x2
   2bd92:	ba 66 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_302                            ; fixup: num: 7107, src obj: 1, src ofs: 0x2bd93, dst obj: 3, dst ofs: 0x8d66
   2bd97:	b8 90 32 00 00       	mov    eax,0x3290
   2bd9c:	e8 ef e8 03 00       	call   play_wav
   2bda1:	bb 03 00 00 00       	mov    ebx,0x3
   2bda6:	ba 6d 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_303                            ; fixup: num: 7106, src obj: 1, src ofs: 0x2bda7, dst obj: 3, dst ofs: 0x8d6d
   2bdab:	b8 94 32 00 00       	mov    eax,0x3294
   2bdb0:	e8 db e8 03 00       	call   play_wav
   2bdb5:	bb 04 00 00 00       	mov    ebx,0x4
   2bdba:	ba 74 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_304                            ; fixup: num: 7105, src obj: 1, src ofs: 0x2bdbb, dst obj: 3, dst ofs: 0x8d74
   2bdbf:	b8 99 32 00 00       	mov    eax,0x3299
   2bdc4:	e8 c7 e8 03 00       	call   play_wav
   2bdc9:	bb 01 00 00 00       	mov    ebx,0x1
   2bdce:	ba 77 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_305                            ; fixup: num: 7104, src obj: 1, src ofs: 0x2bdcf, dst obj: 3, dst ofs: 0x8d77
   2bdd3:	b8 9e 32 00 00       	mov    eax,0x329e
   2bdd8:	e8 b3 e8 03 00       	call   play_wav
   2bddd:	b8 89 00 00 00       	mov    eax,0x89
   2bde2:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7103, src obj: 1, src ofs: 0x2bde3, dst obj: 3, dst ofs: 0x295c0
   2bde7:	e8 b4 e3 ff ff       	call   GetDlgFileString
   2bdec:	89 c6                	mov    esi,eax
   2bdee:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_131:
   2bdef:	8a 06                	mov    al,BYTE PTR [esi]
   2bdf1:	88 07                	mov    BYTE PTR [edi],al
   2bdf3:	3c 00                	cmp    al,0x0
   2bdf5:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_132
   2bdf7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bdfa:	83 c6 02             	add    esi,0x2
   2bdfd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2be00:	83 c7 02             	add    edi,0x2
   2be03:	3c 00                	cmp    al,0x0
   2be05:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_131
talk_to_SHERIFF_DWAYNE_branch_132:
   2be07:	5f                   	pop    edi
   2be08:	e9 55 fe ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_133:
   2be0d:	b8 8c 00 00 00       	mov    eax,0x8c
   2be12:	e8 89 e3 ff ff       	call   GetDlgFileString
   2be17:	89 c2                	mov    edx,eax
   2be19:	89 e8                	mov    eax,ebp
   2be1b:	e8 3a 56 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2be20:	85 c0                	test   eax,eax
   2be22:	74 1b                	je     talk_to_SHERIFF_DWAYNE_branch_134
   2be24:	b8 8d 00 00 00       	mov    eax,0x8d
   2be29:	e8 72 e3 ff ff       	call   GetDlgFileString
   2be2e:	89 c2                	mov    edx,eax
   2be30:	89 e8                	mov    eax,ebp
   2be32:	e8 23 56 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2be37:	85 c0                	test   eax,eax
   2be39:	0f 85 ac 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_137
talk_to_SHERIFF_DWAYNE_branch_134:
   2be3f:	b8 7e 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_306                            ; fixup: num: 7035, src obj: 1, src ofs: 0x2be40, dst obj: 3, dst ofs: 0x8d7e
   2be44:	e8 47 09 04 00       	call   check_script_flag
   2be49:	84 c0                	test   al,al
   2be4b:	0f 85 9a 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_137
   2be51:	bb 01 00 00 00       	mov    ebx,0x1
   2be56:	ba 8f 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_307                            ; fixup: num: 7034, src obj: 1, src ofs: 0x2be57, dst obj: 3, dst ofs: 0x8d8f
   2be5b:	b8 bf 32 00 00       	mov    eax,0x32bf
   2be60:	e8 2b e8 03 00       	call   play_wav
   2be65:	ba 96 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_308                            ; fixup: num: 7113, src obj: 1, src ofs: 0x2be66, dst obj: 3, dst ofs: 0x8d96
   2be6a:	b8 c1 32 00 00       	mov    eax,0x32c1
   2be6f:	89 cb                	mov    ebx,ecx
   2be71:	e8 1a e8 03 00       	call   play_wav
   2be76:	bb 03 00 00 00       	mov    ebx,0x3
   2be7b:	ba 9d 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_309                            ; fixup: num: 7112, src obj: 1, src ofs: 0x2be7c, dst obj: 3, dst ofs: 0x8d9d
   2be80:	b8 c7 32 00 00       	mov    eax,0x32c7
   2be85:	e8 06 e8 03 00       	call   play_wav
   2be8a:	ba a4 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_310                            ; fixup: num: 7111, src obj: 1, src ofs: 0x2be8b, dst obj: 3, dst ofs: 0x8da4
   2be8f:	b8 cb 32 00 00       	mov    eax,0x32cb
   2be94:	89 cb                	mov    ebx,ecx
   2be96:	e8 f5 e7 03 00       	call   play_wav
   2be9b:	bb 01 00 00 00       	mov    ebx,0x1
   2bea0:	ba ab 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_311                            ; fixup: num: 7110, src obj: 1, src ofs: 0x2bea1, dst obj: 3, dst ofs: 0x8dab
   2bea5:	b8 d1 32 00 00       	mov    eax,0x32d1
   2beaa:	e8 e1 e7 03 00       	call   play_wav
   2beaf:	b8 b2 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_312                            ; fixup: num: 7109, src obj: 1, src ofs: 0x2beb0, dst obj: 3, dst ofs: 0x8db2
   2beb4:	89 ca                	mov    edx,ecx
   2beb6:	e8 65 de 03 00       	call   Load_head
   2bebb:	b8 8e 00 00 00       	mov    eax,0x8e
   2bec0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7108, src obj: 1, src ofs: 0x2bec1, dst obj: 3, dst ofs: 0x295c0
   2bec5:	e8 d6 e2 ff ff       	call   GetDlgFileString
   2beca:	89 c6                	mov    esi,eax
   2becc:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_135:
   2becd:	8a 06                	mov    al,BYTE PTR [esi]
   2becf:	88 07                	mov    BYTE PTR [edi],al
   2bed1:	3c 00                	cmp    al,0x0
   2bed3:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_136
   2bed5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bed8:	83 c6 02             	add    esi,0x2
   2bedb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2bede:	83 c7 02             	add    edi,0x2
   2bee1:	3c 00                	cmp    al,0x0
   2bee3:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_135
talk_to_SHERIFF_DWAYNE_branch_136:
   2bee5:	5f                   	pop    edi
   2bee6:	e9 77 fd ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_137:
   2beeb:	b8 8f 00 00 00       	mov    eax,0x8f
   2bef0:	e8 ab e2 ff ff       	call   GetDlgFileString
   2bef5:	89 c2                	mov    edx,eax
   2bef7:	89 e8                	mov    eax,ebp
   2bef9:	e8 5c 55 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2befe:	85 c0                	test   eax,eax
   2bf00:	75 66                	jne    talk_to_SHERIFF_DWAYNE_branch_140
   2bf02:	ba b9 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_313                            ; fixup: num: 7040, src obj: 1, src ofs: 0x2bf03, dst obj: 3, dst ofs: 0x8db9
   2bf07:	b8 db 32 00 00       	mov    eax,0x32db
   2bf0c:	89 cb                	mov    ebx,ecx
   2bf0e:	e8 7d e7 03 00       	call   play_wav
   2bf13:	bb 04 00 00 00       	mov    ebx,0x4
   2bf18:	ba c0 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_314                            ; fixup: num: 7039, src obj: 1, src ofs: 0x2bf19, dst obj: 3, dst ofs: 0x8dc0
   2bf1d:	b8 e2 32 00 00       	mov    eax,0x32e2
   2bf22:	e8 69 e7 03 00       	call   play_wav
   2bf27:	ba c3 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_315                            ; fixup: num: 7038, src obj: 1, src ofs: 0x2bf28, dst obj: 3, dst ofs: 0x8dc3
   2bf2c:	b8 e6 32 00 00       	mov    eax,0x32e6
   2bf31:	89 cb                	mov    ebx,ecx
   2bf33:	e8 58 e7 03 00       	call   play_wav
   2bf38:	b8 90 00 00 00       	mov    eax,0x90
   2bf3d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7037, src obj: 1, src ofs: 0x2bf3e, dst obj: 3, dst ofs: 0x295c0
   2bf42:	e8 59 e2 ff ff       	call   GetDlgFileString
   2bf47:	89 c6                	mov    esi,eax
   2bf49:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_138:
   2bf4a:	8a 06                	mov    al,BYTE PTR [esi]
   2bf4c:	88 07                	mov    BYTE PTR [edi],al
   2bf4e:	3c 00                	cmp    al,0x0
   2bf50:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_139
   2bf52:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bf55:	83 c6 02             	add    esi,0x2
   2bf58:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2bf5b:	83 c7 02             	add    edi,0x2
   2bf5e:	3c 00                	cmp    al,0x0
   2bf60:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_138
talk_to_SHERIFF_DWAYNE_branch_139:
   2bf62:	5f                   	pop    edi
   2bf63:	e9 fa fc ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_140:
   2bf68:	b8 91 00 00 00       	mov    eax,0x91
   2bf6d:	e8 2e e2 ff ff       	call   GetDlgFileString
   2bf72:	89 c2                	mov    edx,eax
   2bf74:	89 e8                	mov    eax,ebp
   2bf76:	e8 df 54 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2bf7b:	85 c0                	test   eax,eax
   2bf7d:	0f 85 85 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_143
   2bf83:	ba ca 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_316                            ; fixup: num: 7036, src obj: 1, src ofs: 0x2bf84, dst obj: 3, dst ofs: 0x8dca
   2bf88:	b8 f2 32 00 00       	mov    eax,0x32f2
   2bf8d:	89 cb                	mov    ebx,ecx
   2bf8f:	e8 fc e6 03 00       	call   play_wav
   2bf94:	ba d1 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_317                            ; fixup: num: 7045, src obj: 1, src ofs: 0x2bf95, dst obj: 3, dst ofs: 0x8dd1
   2bf99:	b8 f9 32 00 00       	mov    eax,0x32f9
   2bf9e:	89 cb                	mov    ebx,ecx
   2bfa0:	e8 eb e6 03 00       	call   play_wav
   2bfa5:	ba d4 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_318                            ; fixup: num: 7044, src obj: 1, src ofs: 0x2bfa6, dst obj: 3, dst ofs: 0x8dd4
   2bfaa:	b8 fd 32 00 00       	mov    eax,0x32fd
   2bfaf:	89 cb                	mov    ebx,ecx
   2bfb1:	e8 da e6 03 00       	call   play_wav
   2bfb6:	ba db 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_319                            ; fixup: num: 7043, src obj: 1, src ofs: 0x2bfb7, dst obj: 3, dst ofs: 0x8ddb
   2bfbb:	b8 fe 32 00 00       	mov    eax,0x32fe
   2bfc0:	89 cb                	mov    ebx,ecx
   2bfc2:	e8 c9 e6 03 00       	call   play_wav
   2bfc7:	ba e2 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_320                            ; fixup: num: 7042, src obj: 1, src ofs: 0x2bfc8, dst obj: 3, dst ofs: 0x8de2
   2bfcc:	b8 ff 32 00 00       	mov    eax,0x32ff
   2bfd1:	89 cb                	mov    ebx,ecx
   2bfd3:	e8 b8 e6 03 00       	call   play_wav
   2bfd8:	b8 92 00 00 00       	mov    eax,0x92
   2bfdd:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7041, src obj: 1, src ofs: 0x2bfde, dst obj: 3, dst ofs: 0x295c0
   2bfe2:	e8 b9 e1 ff ff       	call   GetDlgFileString
   2bfe7:	89 c6                	mov    esi,eax
   2bfe9:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_141:
   2bfea:	8a 06                	mov    al,BYTE PTR [esi]
   2bfec:	88 07                	mov    BYTE PTR [edi],al
   2bfee:	3c 00                	cmp    al,0x0
   2bff0:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_142
   2bff2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2bff5:	83 c6 02             	add    esi,0x2
   2bff8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2bffb:	83 c7 02             	add    edi,0x2
   2bffe:	3c 00                	cmp    al,0x0
   2c000:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_141
talk_to_SHERIFF_DWAYNE_branch_142:
   2c002:	5f                   	pop    edi
   2c003:	e9 5a fc ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_143:
   2c008:	b8 93 00 00 00       	mov    eax,0x93
   2c00d:	e8 8e e1 ff ff       	call   GetDlgFileString
   2c012:	89 c2                	mov    edx,eax
   2c014:	89 e8                	mov    eax,ebp
   2c016:	e8 3f 54 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c01b:	85 c0                	test   eax,eax
   2c01d:	0f 85 b6 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_148
   2c023:	b8 e9 8d 00 00       	mov    eax,@obj3:dwayne_cpp_variable_321                            ; fixup: num: 7475, src obj: 1, src ofs: 0x2c024, dst obj: 3, dst ofs: 0x8de9
   2c028:	e8 63 07 04 00       	call   check_script_flag
   2c02d:	84 c0                	test   al,al
   2c02f:	75 31                	jne    talk_to_SHERIFF_DWAYNE_branch_144
   2c031:	bb 01 00 00 00       	mov    ebx,0x1
   2c036:	ba fe 8d 00 00       	mov    edx,@obj3:dwayne_cpp_variable_322                            ; fixup: num: 7474, src obj: 1, src ofs: 0x2c037, dst obj: 3, dst ofs: 0x8dfe
   2c03b:	b8 0d 33 00 00       	mov    eax,0x330d
   2c040:	e8 4b e6 03 00       	call   play_wav
   2c045:	ba 05 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_323                            ; fixup: num: 7482, src obj: 1, src ofs: 0x2c046, dst obj: 3, dst ofs: 0x8e05
   2c04a:	b8 14 33 00 00       	mov    eax,0x3314
   2c04f:	89 cb                	mov    ebx,ecx
   2c051:	e8 3a e6 03 00       	call   play_wav
   2c056:	ba 08 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_324                            ; fixup: num: 7481, src obj: 1, src ofs: 0x2c057, dst obj: 3, dst ofs: 0x8e08
   2c05b:	b8 18 33 00 00       	mov    eax,0x3318
   2c060:	eb 2f                	jmp    talk_to_SHERIFF_DWAYNE_branch_145
talk_to_SHERIFF_DWAYNE_branch_144:
   2c062:	bb 03 00 00 00       	mov    ebx,0x3
   2c067:	ba 0f 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_325                            ; fixup: num: 7480, src obj: 1, src ofs: 0x2c068, dst obj: 3, dst ofs: 0x8e0f
   2c06c:	b8 1f 33 00 00       	mov    eax,0x331f
   2c071:	e8 1a e6 03 00       	call   play_wav
   2c076:	ba 16 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_326                            ; fixup: num: 7479, src obj: 1, src ofs: 0x2c077, dst obj: 3, dst ofs: 0x8e16
   2c07b:	b8 20 33 00 00       	mov    eax,0x3320
   2c080:	89 cb                	mov    ebx,ecx
   2c082:	e8 09 e6 03 00       	call   play_wav
   2c087:	ba 1d 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_327                            ; fixup: num: 7478, src obj: 1, src ofs: 0x2c088, dst obj: 3, dst ofs: 0x8e1d
   2c08c:	b8 21 33 00 00       	mov    eax,0x3321
talk_to_SHERIFF_DWAYNE_branch_145:
   2c091:	89 cb                	mov    ebx,ecx
   2c093:	e8 f8 e5 03 00       	call   play_wav
   2c098:	ba 24 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_328                            ; fixup: num: 7477, src obj: 1, src ofs: 0x2c099, dst obj: 3, dst ofs: 0x8e24
   2c09d:	b8 2c 33 00 00       	mov    eax,0x332c
   2c0a2:	89 cb                	mov    ebx,ecx
   2c0a4:	e8 e7 e5 03 00       	call   play_wav
   2c0a9:	b8 94 00 00 00       	mov    eax,0x94
   2c0ae:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7476, src obj: 1, src ofs: 0x2c0af, dst obj: 3, dst ofs: 0x295c0
   2c0b3:	e8 e8 e0 ff ff       	call   GetDlgFileString
   2c0b8:	89 c6                	mov    esi,eax
   2c0ba:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_146:
   2c0bb:	8a 06                	mov    al,BYTE PTR [esi]
   2c0bd:	88 07                	mov    BYTE PTR [edi],al
   2c0bf:	3c 00                	cmp    al,0x0
   2c0c1:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_147
   2c0c3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2c0c6:	83 c6 02             	add    esi,0x2
   2c0c9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2c0cc:	83 c7 02             	add    edi,0x2
   2c0cf:	3c 00                	cmp    al,0x0
   2c0d1:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_146
talk_to_SHERIFF_DWAYNE_branch_147:
   2c0d3:	5f                   	pop    edi
   2c0d4:	e9 89 fb ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_148:
   2c0d9:	b8 95 00 00 00       	mov    eax,0x95
   2c0de:	e8 bd e0 ff ff       	call   GetDlgFileString
   2c0e3:	89 c2                	mov    edx,eax
   2c0e5:	89 e8                	mov    eax,ebp
   2c0e7:	e8 6e 53 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c0ec:	85 c0                	test   eax,eax
   2c0ee:	0f 85 b3 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_154
   2c0f4:	ba 01 00 00 00       	mov    edx,0x1
   2c0f9:	89 c8                	mov    eax,ecx
   2c0fb:	bb 01 00 00 00       	mov    ebx,0x1
   2c100:	e8 bb c3 ff ff       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   2c105:	ba 2b 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_329                            ; fixup: num: 7488, src obj: 1, src ofs: 0x2c106, dst obj: 3, dst ofs: 0x8e2b
   2c10a:	b8 39 33 00 00       	mov    eax,0x3339
   2c10f:	e8 7c e5 03 00       	call   play_wav
   2c114:	b8 96 00 00 00       	mov    eax,0x96
   2c119:	e8 82 e0 ff ff       	call   GetDlgFileString
   2c11e:	e8 ed ed 03 00       	call   get_response
   2c123:	83 f8 01             	cmp    eax,0x1
   2c126:	75 39                	jne    talk_to_SHERIFF_DWAYNE_branch_149
   2c128:	bb 02 00 00 00       	mov    ebx,0x2
   2c12d:	ba 32 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_330                            ; fixup: num: 7487, src obj: 1, src ofs: 0x2c12e, dst obj: 3, dst ofs: 0x8e32
   2c132:	b8 45 33 00 00       	mov    eax,0x3345
   2c137:	e8 54 e5 03 00       	call   play_wav
   2c13c:	bb 02 00 00 00       	mov    ebx,0x2
   2c141:	ba 39 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_331                            ; fixup: num: 7486, src obj: 1, src ofs: 0x2c142, dst obj: 3, dst ofs: 0x8e39
   2c146:	b8 46 33 00 00       	mov    eax,0x3346
   2c14b:	e8 40 e5 03 00       	call   play_wav
   2c150:	bb 02 00 00 00       	mov    ebx,0x2
   2c155:	ba 40 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_332                            ; fixup: num: 7485, src obj: 1, src ofs: 0x2c156, dst obj: 3, dst ofs: 0x8e40
   2c15a:	b8 47 33 00 00       	mov    eax,0x3347
   2c15f:	eb 11                	jmp    talk_to_SHERIFF_DWAYNE_branch_150
talk_to_SHERIFF_DWAYNE_branch_149:
   2c161:	83 f8 02             	cmp    eax,0x2
   2c164:	75 11                	jne    talk_to_SHERIFF_DWAYNE_branch_151
   2c166:	ba 47 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_333                            ; fixup: num: 7484, src obj: 1, src ofs: 0x2c167, dst obj: 3, dst ofs: 0x8e47
   2c16b:	b8 50 33 00 00       	mov    eax,0x3350
   2c170:	89 cb                	mov    ebx,ecx
talk_to_SHERIFF_DWAYNE_branch_150:
   2c172:	e8 19 e5 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_151:
   2c177:	b8 97 00 00 00       	mov    eax,0x97
   2c17c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7483, src obj: 1, src ofs: 0x2c17d, dst obj: 3, dst ofs: 0x295c0
   2c181:	e8 1a e0 ff ff       	call   GetDlgFileString
   2c186:	89 c6                	mov    esi,eax
   2c188:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_152:
   2c189:	8a 06                	mov    al,BYTE PTR [esi]
   2c18b:	88 07                	mov    BYTE PTR [edi],al
   2c18d:	3c 00                	cmp    al,0x0
   2c18f:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_153
   2c191:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2c194:	83 c6 02             	add    esi,0x2
   2c197:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2c19a:	83 c7 02             	add    edi,0x2
   2c19d:	3c 00                	cmp    al,0x0
   2c19f:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_152
talk_to_SHERIFF_DWAYNE_branch_153:
   2c1a1:	5f                   	pop    edi
   2c1a2:	e9 bb fa ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_154:
   2c1a7:	b8 98 00 00 00       	mov    eax,0x98
   2c1ac:	e8 ef df ff ff       	call   GetDlgFileString
   2c1b1:	89 c2                	mov    edx,eax
   2c1b3:	89 e8                	mov    eax,ebp
   2c1b5:	e8 a0 52 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c1ba:	85 c0                	test   eax,eax
   2c1bc:	0f 85 b5 00 00 00    	jne    talk_to_SHERIFF_DWAYNE_branch_159
   2c1c2:	bb 02 00 00 00       	mov    ebx,0x2
   2c1c7:	ba 4e 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_334                            ; fixup: num: 7495, src obj: 1, src ofs: 0x2c1c8, dst obj: 3, dst ofs: 0x8e4e
   2c1cc:	b8 5b 33 00 00       	mov    eax,0x335b
   2c1d1:	e8 ba e4 03 00       	call   play_wav
   2c1d6:	bb 02 00 00 00       	mov    ebx,0x2
   2c1db:	ba 55 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_335                            ; fixup: num: 7494, src obj: 1, src ofs: 0x2c1dc, dst obj: 3, dst ofs: 0x8e55
   2c1e0:	b8 60 33 00 00       	mov    eax,0x3360
   2c1e5:	e8 a6 e4 03 00       	call   play_wav
   2c1ea:	bb 03 00 00 00       	mov    ebx,0x3
   2c1ef:	ba 58 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_336                            ; fixup: num: 7493, src obj: 1, src ofs: 0x2c1f0, dst obj: 3, dst ofs: 0x8e58
   2c1f4:	b8 64 33 00 00       	mov    eax,0x3364
   2c1f9:	e8 92 e4 03 00       	call   play_wav
   2c1fe:	b8 01 00 00 00       	mov    eax,0x1
   2c203:	89 ca                	mov    edx,ecx
   2c205:	e8 d6 c1 ff ff       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   2c20a:	85 c0                	test   eax,eax
   2c20c:	74 11                	je     talk_to_SHERIFF_DWAYNE_branch_155
   2c20e:	bb 02 00 00 00       	mov    ebx,0x2
   2c213:	ba 5f 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_337                            ; fixup: num: 7492, src obj: 1, src ofs: 0x2c214, dst obj: 3, dst ofs: 0x8e5f
   2c218:	b8 68 33 00 00       	mov    eax,0x3368
   2c21d:	eb 0f                	jmp    talk_to_SHERIFF_DWAYNE_branch_156
talk_to_SHERIFF_DWAYNE_branch_155:
   2c21f:	bb 02 00 00 00       	mov    ebx,0x2
   2c224:	ba 62 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_338                            ; fixup: num: 7491, src obj: 1, src ofs: 0x2c225, dst obj: 3, dst ofs: 0x8e62
   2c229:	b8 6c 33 00 00       	mov    eax,0x336c
talk_to_SHERIFF_DWAYNE_branch_156:
   2c22e:	e8 5d e4 03 00       	call   play_wav
   2c233:	bb 02 00 00 00       	mov    ebx,0x2
   2c238:	ba 65 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_339                            ; fixup: num: 7490, src obj: 1, src ofs: 0x2c239, dst obj: 3, dst ofs: 0x8e65
   2c23d:	b8 70 33 00 00       	mov    eax,0x3370
   2c242:	e8 49 e4 03 00       	call   play_wav
   2c247:	b8 99 00 00 00       	mov    eax,0x99
   2c24c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7489, src obj: 1, src ofs: 0x2c24d, dst obj: 3, dst ofs: 0x295c0
   2c251:	e8 4a df ff ff       	call   GetDlgFileString
   2c256:	89 c6                	mov    esi,eax
   2c258:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_157:
   2c259:	8a 06                	mov    al,BYTE PTR [esi]
   2c25b:	88 07                	mov    BYTE PTR [edi],al
   2c25d:	3c 00                	cmp    al,0x0
   2c25f:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_158
   2c261:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2c264:	83 c6 02             	add    esi,0x2
   2c267:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2c26a:	83 c7 02             	add    edi,0x2
   2c26d:	3c 00                	cmp    al,0x0
   2c26f:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_157
talk_to_SHERIFF_DWAYNE_branch_158:
   2c271:	5f                   	pop    edi
   2c272:	e9 eb f9 ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_159:
   2c277:	b8 9a 00 00 00       	mov    eax,0x9a
   2c27c:	e8 1f df ff ff       	call   GetDlgFileString
   2c281:	89 c2                	mov    edx,eax
   2c283:	89 e8                	mov    eax,ebp
   2c285:	e8 d0 51 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c28a:	85 c0                	test   eax,eax
   2c28c:	75 44                	jne    talk_to_SHERIFF_DWAYNE_branch_162
   2c28e:	bb 02 00 00 00       	mov    ebx,0x2
   2c293:	ba 6c 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_340                            ; fixup: num: 7499, src obj: 1, src ofs: 0x2c294, dst obj: 3, dst ofs: 0x8e6c
   2c298:	b8 7a 33 00 00       	mov    eax,0x337a
   2c29d:	e8 ee e3 03 00       	call   play_wav
   2c2a2:	b8 9b 00 00 00       	mov    eax,0x9b
   2c2a7:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7498, src obj: 1, src ofs: 0x2c2a8, dst obj: 3, dst ofs: 0x295c0
   2c2ac:	e8 ef de ff ff       	call   GetDlgFileString
   2c2b1:	89 c6                	mov    esi,eax
   2c2b3:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_160:
   2c2b4:	8a 06                	mov    al,BYTE PTR [esi]
   2c2b6:	88 07                	mov    BYTE PTR [edi],al
   2c2b8:	3c 00                	cmp    al,0x0
   2c2ba:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_161
   2c2bc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2c2bf:	83 c6 02             	add    esi,0x2
   2c2c2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2c2c5:	83 c7 02             	add    edi,0x2
   2c2c8:	3c 00                	cmp    al,0x0
   2c2ca:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_160
talk_to_SHERIFF_DWAYNE_branch_161:
   2c2cc:	5f                   	pop    edi
   2c2cd:	e9 90 f9 ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_162:
   2c2d2:	b8 9c 00 00 00       	mov    eax,0x9c
   2c2d7:	e8 c4 de ff ff       	call   GetDlgFileString
   2c2dc:	89 c2                	mov    edx,eax
   2c2de:	89 e8                	mov    eax,ebp
   2c2e0:	e8 75 51 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c2e5:	85 c0                	test   eax,eax
   2c2e7:	75 52                	jne    talk_to_SHERIFF_DWAYNE_branch_165
   2c2e9:	ba 73 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_341                            ; fixup: num: 7497, src obj: 1, src ofs: 0x2c2ea, dst obj: 3, dst ofs: 0x8e73
   2c2ee:	b8 86 33 00 00       	mov    eax,0x3386
   2c2f3:	89 cb                	mov    ebx,ecx
   2c2f5:	e8 96 e3 03 00       	call   play_wav
   2c2fa:	ba 7a 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_342                            ; fixup: num: 7496, src obj: 1, src ofs: 0x2c2fb, dst obj: 3, dst ofs: 0x8e7a
   2c2ff:	b8 87 33 00 00       	mov    eax,0x3387
   2c304:	89 cb                	mov    ebx,ecx
   2c306:	e8 85 e3 03 00       	call   play_wav
   2c30b:	b8 9d 00 00 00       	mov    eax,0x9d
   2c310:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 7506, src obj: 1, src ofs: 0x2c311, dst obj: 3, dst ofs: 0x295c0
   2c315:	e8 86 de ff ff       	call   GetDlgFileString
   2c31a:	89 c6                	mov    esi,eax
   2c31c:	57                   	push   edi
talk_to_SHERIFF_DWAYNE_branch_163:
   2c31d:	8a 06                	mov    al,BYTE PTR [esi]
   2c31f:	88 07                	mov    BYTE PTR [edi],al
   2c321:	3c 00                	cmp    al,0x0
   2c323:	74 10                	je     talk_to_SHERIFF_DWAYNE_branch_164
   2c325:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2c328:	83 c6 02             	add    esi,0x2
   2c32b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2c32e:	83 c7 02             	add    edi,0x2
   2c331:	3c 00                	cmp    al,0x0
   2c333:	75 e8                	jne    talk_to_SHERIFF_DWAYNE_branch_163
talk_to_SHERIFF_DWAYNE_branch_164:
   2c335:	5f                   	pop    edi
   2c336:	e9 27 f9 ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_165:
   2c33b:	b8 9e 00 00 00       	mov    eax,0x9e
   2c340:	e8 5b de ff ff       	call   GetDlgFileString
   2c345:	89 c2                	mov    edx,eax
   2c347:	89 e8                	mov    eax,ebp
   2c349:	e8 0c 51 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2c34e:	85 c0                	test   eax,eax
   2c350:	0f 84 0c f9 ff ff    	je     talk_to_SHERIFF_DWAYNE_branch_126
   2c356:	ba 81 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_343                            ; fixup: num: 7505, src obj: 1, src ofs: 0x2c357, dst obj: 3, dst ofs: 0x8e81
   2c35b:	b8 3c 39 00 00       	mov    eax,0x393c
   2c360:	89 cb                	mov    ebx,ecx
   2c362:	e8 29 e3 03 00       	call   play_wav
   2c367:	e9 f6 f8 ff ff       	jmp    talk_to_SHERIFF_DWAYNE_branch_126
talk_to_SHERIFF_DWAYNE_branch_166:
   2c36c:	ba 88 8e 00 00       	mov    edx,@obj3:dwayne_cpp_variable_344                            ; fixup: num: 7504, src obj: 1, src ofs: 0x2c36d, dst obj: 3, dst ofs: 0x8e88
   2c371:	b8 95 33 00 00       	mov    eax,0x3395
talk_to_SHERIFF_DWAYNE_branch_167:
   2c376:	31 db                	xor    ebx,ebx
talk_to_SHERIFF_DWAYNE_branch_168:
   2c378:	e8 13 e3 03 00       	call   play_wav
talk_to_SHERIFF_DWAYNE_branch_169:
   2c37d:	31 c0                	xor    eax,eax
   2c37f:	5d                   	pop    ebp
   2c380:	5f                   	pop    edi
   2c381:	5e                   	pop    esi
   2c382:	5a                   	pop    edx
   2c383:	59                   	pop    ecx
   2c384:	5b                   	pop    ebx
   2c385:	c3                   	ret    
talk_to_SHERIFF_DWAYNE_branch_170:
   2c386:	89 15 88 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE,edx                        ; fixup: num: 7503, src obj: 1, src ofs: 0x2c388, dst obj: 3, dst ofs: 0x22f88
   2c38c:	a1 88 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE                                  ; fixup: num: 7502, src obj: 1, src ofs: 0x2c38d, dst obj: 3, dst ofs: 0x22f88
   2c391:	c3                   	ret    
   2c392:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c398:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   2c39e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'FIRST_CONVERSATION_IN_OFFICE'       -
;-------------------------------------------------
FIRST_CONVERSATION_IN_OFFICE:
   2c3a0:	85 c0                	test   eax,eax
   2c3a2:	74 e2                	je     talk_to_SHERIFF_DWAYNE_branch_170
   2c3a4:	a1 88 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE                                  ; fixup: num: 7501, src obj: 1, src ofs: 0x2c3a5, dst obj: 3, dst ofs: 0x22f88
   2c3a9:	c3                   	ret    
FIRST_CONVERSATION_IN_OFFICE_branch_1:
   2c3aa:	89 15 8c 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_1,edx             ; fixup: num: 7500, src obj: 1, src ofs: 0x2c3ac, dst obj: 3, dst ofs: 0x22f8c
   2c3b0:	a1 8c 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_1                       ; fixup: num: 7522, src obj: 1, src ofs: 0x2c3b1, dst obj: 3, dst ofs: 0x22f8c
   2c3b5:	c3                   	ret    
   2c3b6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c3bc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'FIRST_CONVERSATION_IN_DNA_S_DINER'  -
;-------------------------------------------------
FIRST_CONVERSATION_IN_DNA_S_DINER:
   2c3c0:	85 c0                	test   eax,eax
   2c3c2:	74 e6                	je     FIRST_CONVERSATION_IN_OFFICE_branch_1
   2c3c4:	a1 8c 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_1                       ; fixup: num: 7521, src obj: 1, src ofs: 0x2c3c5, dst obj: 3, dst ofs: 0x22f8c
   2c3c9:	c3                   	ret    
FIRST_CONVERSATION_IN_DNA_S_DINER_branch_1:
   2c3ca:	89 15 90 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_2,edx             ; fixup: num: 7520, src obj: 1, src ofs: 0x2c3cc, dst obj: 3, dst ofs: 0x22f90
   2c3d0:	a1 90 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_2                       ; fixup: num: 7519, src obj: 1, src ofs: 0x2c3d1, dst obj: 3, dst ofs: 0x22f90
   2c3d5:	c3                   	ret    
   2c3d6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c3dc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'DEFAULT_DINER_CONVERSATION'         -
;-------------------------------------------------
DEFAULT_DINER_CONVERSATION:
   2c3e0:	85 c0                	test   eax,eax
   2c3e2:	74 e6                	je     FIRST_CONVERSATION_IN_DNA_S_DINER_branch_1
   2c3e4:	a1 90 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_2                       ; fixup: num: 7518, src obj: 1, src ofs: 0x2c3e5, dst obj: 3, dst ofs: 0x22f90
   2c3e9:	c3                   	ret    
DEFAULT_DINER_CONVERSATION_branch_1:
   2c3ea:	89 15 94 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_3,edx             ; fixup: num: 7517, src obj: 1, src ofs: 0x2c3ec, dst obj: 3, dst ofs: 0x22f94
   2c3f0:	a1 94 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_3                       ; fixup: num: 7516, src obj: 1, src ofs: 0x2c3f1, dst obj: 3, dst ofs: 0x22f94
   2c3f5:	c3                   	ret    
   2c3f6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c3fc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'DEFAULT_OFFICE_CONVERSATION'        -
;-------------------------------------------------
DEFAULT_OFFICE_CONVERSATION:
   2c400:	85 c0                	test   eax,eax
   2c402:	74 e6                	je     DEFAULT_DINER_CONVERSATION_branch_1
   2c404:	a1 94 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_3                       ; fixup: num: 7515, src obj: 1, src ofs: 0x2c405, dst obj: 3, dst ofs: 0x22f94
   2c409:	c3                   	ret    
DEFAULT_OFFICE_CONVERSATION_branch_1:
   2c40a:	89 15 98 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_4,edx             ; fixup: num: 7514, src obj: 1, src ofs: 0x2c40c, dst obj: 3, dst ofs: 0x22f98
   2c410:	a1 98 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_4                       ; fixup: num: 7513, src obj: 1, src ofs: 0x2c411, dst obj: 3, dst ofs: 0x22f98
   2c415:	c3                   	ret    
   2c416:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c41c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'IF_RETURN_WITH_TV_OWNERSHIP_DOCUME  -
;  NT_AND_SHOW_HIM'                              -
;-------------------------------------------------
IF_RETURN_WITH_TV_OWNERSHIP_DOCUMENT_AND_SHOW_HIM:
   2c420:	85 c0                	test   eax,eax
   2c422:	74 e6                	je     DEFAULT_OFFICE_CONVERSATION_branch_1
   2c424:	a1 98 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_4                       ; fixup: num: 7512, src obj: 1, src ofs: 0x2c425, dst obj: 3, dst ofs: 0x22f98
   2c429:	c3                   	ret    
IF_RETURN_WITH_TV_OWNERSHIP_DOCUMENT_AND_SHOW_HIM_branch_1:
   2c42a:	89 15 a0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_6,edx             ; fixup: num: 7511, src obj: 1, src ofs: 0x2c42c, dst obj: 3, dst ofs: 0x22fa0
   2c430:	a1 a0 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_6                       ; fixup: num: 7510, src obj: 1, src ofs: 0x2c431, dst obj: 3, dst ofs: 0x22fa0
   2c435:	c3                   	ret    
   2c436:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c43c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'TRIED_1'                            -
;-------------------------------------------------
TRIED_1:
   2c440:	85 c0                	test   eax,eax
   2c442:	74 e6                	je     IF_RETURN_WITH_TV_OWNERSHIP_DOCUMENT_AND_SHOW_HIM_branch_1
   2c444:	a1 a0 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_6                       ; fixup: num: 7509, src obj: 1, src ofs: 0x2c445, dst obj: 3, dst ofs: 0x22fa0
   2c449:	c3                   	ret    
TRIED_1_branch_1:
   2c44a:	89 15 a4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_7,edx             ; fixup: num: 7508, src obj: 1, src ofs: 0x2c44c, dst obj: 3, dst ofs: 0x22fa4
   2c450:	a1 a4 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_7                       ; fixup: num: 7507, src obj: 1, src ofs: 0x2c451, dst obj: 3, dst ofs: 0x22fa4
   2c455:	c3                   	ret    
   2c456:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c45c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'TRIED_2'                            -
;-------------------------------------------------
TRIED_2:
   2c460:	85 c0                	test   eax,eax
   2c462:	74 e6                	je     TRIED_1_branch_1
   2c464:	a1 a4 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_7                       ; fixup: num: 7427, src obj: 1, src ofs: 0x2c465, dst obj: 3, dst ofs: 0x22fa4
   2c469:	c3                   	ret    
TRIED_2_branch_1:
   2c46a:	89 15 a8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_8,edx             ; fixup: num: 7426, src obj: 1, src ofs: 0x2c46c, dst obj: 3, dst ofs: 0x22fa8
   2c470:	a1 a8 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_8                       ; fixup: num: 7425, src obj: 1, src ofs: 0x2c471, dst obj: 3, dst ofs: 0x22fa8
   2c475:	c3                   	ret    
   2c476:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2c47c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SHOWN_COPY'                         -
;-------------------------------------------------
SHOWN_COPY:
   2c480:	85 c0                	test   eax,eax
   2c482:	74 e6                	je     TRIED_2_branch_1
   2c484:	a1 a8 2f 02 00       	mov    eax,ds:@obj3:SHERIFF_DWAYNE_variable_8                       ; fixup: num: 7424, src obj: 1, src ofs: 0x2c485, dst obj: 3, dst ofs: 0x22fa8
   2c489:	c3                   	ret    
   2c48a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'SHERIFF_DWAYNE_initialize'          -
;-------------------------------------------------
SHERIFF_DWAYNE_initialize:
   2c490:	51                   	push   ecx
   2c491:	52                   	push   edx
   2c492:	ba 01 00 00 00       	mov    edx,0x1
   2c497:	31 c9                	xor    ecx,ecx
   2c499:	89 15 88 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE,edx                        ; fixup: num: 7423, src obj: 1, src ofs: 0x2c49b, dst obj: 3, dst ofs: 0x22f88
   2c49f:	89 15 8c 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_1,edx             ; fixup: num: 7422, src obj: 1, src ofs: 0x2c4a1, dst obj: 3, dst ofs: 0x22f8c
   2c4a5:	89 0d 90 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_2,ecx             ; fixup: num: 7421, src obj: 1, src ofs: 0x2c4a7, dst obj: 3, dst ofs: 0x22f90
   2c4ab:	89 0d 94 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_3,ecx             ; fixup: num: 7420, src obj: 1, src ofs: 0x2c4ad, dst obj: 3, dst ofs: 0x22f94
   2c4b1:	89 0d 98 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_4,ecx             ; fixup: num: 7419, src obj: 1, src ofs: 0x2c4b3, dst obj: 3, dst ofs: 0x22f98
   2c4b7:	89 0d a8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_8,ecx             ; fixup: num: 7418, src obj: 1, src ofs: 0x2c4b9, dst obj: 3, dst ofs: 0x22fa8
   2c4bd:	89 0d a0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_6,ecx             ; fixup: num: 7417, src obj: 1, src ofs: 0x2c4bf, dst obj: 3, dst ofs: 0x22fa0
   2c4c3:	89 0d a4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_7,ecx             ; fixup: num: 7535, src obj: 1, src ofs: 0x2c4c5, dst obj: 3, dst ofs: 0x22fa4
   2c4c9:	89 0d ac 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_9,ecx             ; fixup: num: 7534, src obj: 1, src ofs: 0x2c4cb, dst obj: 3, dst ofs: 0x22fac
   2c4cf:	89 0d b0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_10,ecx            ; fixup: num: 7533, src obj: 1, src ofs: 0x2c4d1, dst obj: 3, dst ofs: 0x22fb0
   2c4d5:	89 0d b4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_11,ecx            ; fixup: num: 7532, src obj: 1, src ofs: 0x2c4d7, dst obj: 3, dst ofs: 0x22fb4
   2c4db:	89 0d b8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_12,ecx            ; fixup: num: 7531, src obj: 1, src ofs: 0x2c4dd, dst obj: 3, dst ofs: 0x22fb8
   2c4e1:	89 0d bc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_13,ecx            ; fixup: num: 7530, src obj: 1, src ofs: 0x2c4e3, dst obj: 3, dst ofs: 0x22fbc
   2c4e7:	89 0d c0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_14,ecx            ; fixup: num: 7529, src obj: 1, src ofs: 0x2c4e9, dst obj: 3, dst ofs: 0x22fc0
   2c4ed:	89 0d c4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_15,ecx            ; fixup: num: 7528, src obj: 1, src ofs: 0x2c4ef, dst obj: 3, dst ofs: 0x22fc4
   2c4f3:	89 0d c8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_16,ecx            ; fixup: num: 7527, src obj: 1, src ofs: 0x2c4f5, dst obj: 3, dst ofs: 0x22fc8
   2c4f9:	89 0d cc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_17,ecx            ; fixup: num: 7526, src obj: 1, src ofs: 0x2c4fb, dst obj: 3, dst ofs: 0x22fcc
   2c4ff:	89 0d d0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_18,ecx            ; fixup: num: 7525, src obj: 1, src ofs: 0x2c501, dst obj: 3, dst ofs: 0x22fd0
   2c505:	89 0d d4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_19,ecx            ; fixup: num: 7524, src obj: 1, src ofs: 0x2c507, dst obj: 3, dst ofs: 0x22fd4
   2c50b:	89 0d d8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_20,ecx            ; fixup: num: 7523, src obj: 1, src ofs: 0x2c50d, dst obj: 3, dst ofs: 0x22fd8
   2c511:	89 0d dc 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_21,ecx            ; fixup: num: 7432, src obj: 1, src ofs: 0x2c513, dst obj: 3, dst ofs: 0x22fdc
   2c517:	89 0d e0 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_22,ecx            ; fixup: num: 7431, src obj: 1, src ofs: 0x2c519, dst obj: 3, dst ofs: 0x22fe0
   2c51d:	89 0d e4 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_23,ecx            ; fixup: num: 7430, src obj: 1, src ofs: 0x2c51f, dst obj: 3, dst ofs: 0x22fe4
   2c523:	89 0d e8 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_24,ecx            ; fixup: num: 7429, src obj: 1, src ofs: 0x2c525, dst obj: 3, dst ofs: 0x22fe8
   2c529:	89 0d ec 2f 02 00    	mov    DWORD PTR ds:@obj3:SHERIFF_DWAYNE_variable_25,ecx            ; fixup: num: 7428, src obj: 1, src ofs: 0x2c52b, dst obj: 3, dst ofs: 0x22fec
   2c52f:	5a                   	pop    edx
   2c530:	59                   	pop    ecx
   2c531:	c3                   	ret    
;-------------------------------------------------
;  Bad code 61 (zero after ret):                 -
;-------------------------------------------------
;  2c530:	59                   	pop    ecx
;  2c531:	c3                   	ret    
;  2c532:	00 00                	add    BYTE PTR [eax],al
;  2c534:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (14 bytes):                      -
;-------------------------------------------------
   2c532:	00 00 00 00 00 00 .. 	db     14 dup(0x00)
;-------------------------------------------------
;  End of bad code 61                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 66 (D:\SOURCE\dwayne.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 66: D:\SOURCE\dwayne.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
dwayne_cpp_variable_1:
    81a8:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
dwayne_cpp_variable_2:
    81b2:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
dwayne_cpp_variable_3:
    81bc:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_4:
    81c6:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
dwayne_cpp_variable_5:
    81da:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
dwayne_cpp_variable_6:
    81ee:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_7:
    81f8:	4e 4f 54 45 00       	db     "NOTE",0x00
dwayne_cpp_variable_8:
    81fd:	4e 4f 54 45 00       	db     "NOTE",0x00
dwayne_cpp_variable_9:
    8202:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_10:
    820c:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
dwayne_cpp_variable_11:
    821b:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
dwayne_cpp_variable_12:
    822a:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_13:
    8234:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_14:
    823c:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_15:
    8244:	52 41 48 00          	db     "RAH",0x00
dwayne_cpp_variable_16:
    8248:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
dwayne_cpp_variable_17:
    825a:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
dwayne_cpp_variable_18:
    826c:	52 41 48 00          	db     "RAH",0x00
dwayne_cpp_variable_19:
    8270:	41 52 52 45 53 54 5f 46 4c 41 47 00 	db     "ARREST_FLAG",0x00
dwayne_cpp_variable_20:
    827c:	41 52 52 45 53 54 5f 46 4c 41 47 00 	db     "ARREST_FLAG",0x00
dwayne_cpp_variable_21:
    8288:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4d 4f 59 4e 41 48 41 4e 00 	db     "PC_BUSTED_KILLED_MOYNAHAN",0x00
dwayne_cpp_variable_22:
    82a2:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_23:
    82a9:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4d 4f 59 4e 41 48 41 4e 00 	db     "PC_BUSTED_KILLED_MOYNAHAN",0x00
dwayne_cpp_variable_24:
    82c3:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4a 49 4d 4d 59 00 	db     "PC_BUSTED_KILLED_JIMMY",0x00
dwayne_cpp_variable_25:
    82da:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_26:
    82e1:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4a 49 4d 4d 59 00 	db     "PC_BUSTED_KILLED_JIMMY",0x00
dwayne_cpp_variable_27:
    82f8:	4b 49 4c 4c 45 44 5f 4a 49 4d 4d 59 00 	db     "KILLED_JIMMY",0x00
dwayne_cpp_variable_28:
    8305:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4a 4f 48 4e 53 4f 4e 00 	db     "PC_BUSTED_KILLED_JOHNSON",0x00
dwayne_cpp_variable_29:
    831e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_30:
    8325:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4a 4f 48 4e 53 4f 4e 00 	db     "PC_BUSTED_KILLED_JOHNSON",0x00
dwayne_cpp_variable_31:
    833e:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 50 48 45 4c 50 53 00 	db     "PC_BUSTED_KILLED_PHELPS",0x00
dwayne_cpp_variable_32:
    8356:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_33:
    835d:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 50 48 45 4c 50 53 00 	db     "PC_BUSTED_KILLED_PHELPS",0x00
dwayne_cpp_variable_34:
    8375:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4f 52 45 49 4c 4c 59 00 	db     "PC_BUSTED_KILLED_OREILLY",0x00
dwayne_cpp_variable_35:
    838e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_36:
    8395:	50 43 5f 42 55 53 54 45 44 5f 4b 49 4c 4c 45 44 5f 4f 52 45 49 4c 4c 59 00 	db     "PC_BUSTED_KILLED_OREILLY",0x00
dwayne_cpp_variable_37:
    83ae:	4b 49 4c 4c 45 44 5f 4f 52 45 49 4c 4c 59 00 	db     "KILLED_OREILLY",0x00
dwayne_cpp_variable_38:
    83bd:	49 46 5f 4b 49 4c 4c 5f 50 4f 54 54 53 44 41 4d 5f 41 54 5f 47 52 41 56 45 00 	db     "IF_KILL_POTTSDAM_AT_GRAVE",0x00
dwayne_cpp_variable_39:
    83d7:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_40:
    83de:	49 46 5f 4b 49 4c 4c 5f 50 4f 54 54 53 44 41 4d 5f 41 54 5f 47 52 41 56 45 00 	db     "IF_KILL_POTTSDAM_AT_GRAVE",0x00
dwayne_cpp_variable_41:
    83f8:	47 45 4e 45 52 49 43 5f 42 55 53 54 00 	db     "GENERIC_BUST",0x00
dwayne_cpp_variable_42:
    8405:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_43:
    840c:	47 45 4e 45 52 49 43 5f 42 55 53 54 00 	db     "GENERIC_BUST",0x00
dwayne_cpp_variable_44:
    8419:	44 4e 41 4c 46 54 5f 50 45 52 56 45 52 54 00 	db     "DNALFT_PERVERT",0x00
dwayne_cpp_variable_45:
    8428:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_46:
    842f:	44 4e 41 4c 46 54 5f 50 45 52 56 45 52 54 00 	db     "DNALFT_PERVERT",0x00
dwayne_cpp_variable_47:
    843e:	50 43 5f 48 41 53 5f 47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "PC_HAS_GOOJF_CARD",0x00
dwayne_cpp_variable_48:
    8450:	50 43 5f 46 52 59 5f 49 4e 5f 43 48 41 49 52 00 	db     "PC_FRY_IN_CHAIR",0x00
dwayne_cpp_variable_49:
    8460:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_50:
    8467:	50 43 5f 4b 49 4c 4c 45 44 5f 41 4e 59 4f 4e 45 00 	db     "PC_KILLED_ANYONE",0x00
dwayne_cpp_variable_51:
    8478:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_52:
    847f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8480:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8481:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_53:
    8482:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_54:
    8489:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_55:
    8490:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_56:
    8497:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8498:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8499:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_57:
    849a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_58:
    84a1:	50 43 5f 48 41 53 5f 47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "PC_HAS_GOOJF_CARD",0x00
dwayne_cpp_variable_59:
    84b3:	47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "GOOJF_CARD",0x00
dwayne_cpp_variable_60:
    84be:	52 41 48 00          	db     "RAH",0x00
dwayne_cpp_variable_61:
    84c2:	50 43 5f 46 52 59 5f 49 4e 5f 43 48 41 49 52 00 	db     "PC_FRY_IN_CHAIR",0x00
dwayne_cpp_variable_62:
    84d2:	42 55 53 54 45 44 5f 54 48 49 52 44 00 	db     "BUSTED_THIRD",0x00
dwayne_cpp_variable_63:
    84df:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_64:
    84e6:	42 55 53 54 45 44 5f 54 57 49 43 45 00 	db     "BUSTED_TWICE",0x00
dwayne_cpp_variable_65:
    84f3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_66:
    84fa:	42 55 53 54 45 44 5f 4f 4e 43 45 00 	db     "BUSTED_ONCE",0x00
dwayne_cpp_variable_67:
    8506:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_68:
    850d:	43 48 45 43 4b 5f 45 56 49 44 45 4e 43 45 5f 44 4f 4f 52 00 	db     "CHECK_EVIDENCE_DOOR",0x00
dwayne_cpp_variable_69:
    8521:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_70:
    8528:	43 48 45 43 4b 5f 45 56 49 44 45 4e 43 45 5f 44 4f 4f 52 00 	db     "CHECK_EVIDENCE_DOOR",0x00
dwayne_cpp_variable_71:
    853c:	50 43 5f 54 52 49 45 53 5f 54 4f 5f 54 41 4b 45 5f 53 54 45 50 48 41 4e 49 45 53 5f 52 45 4d 41 49 4e 53 00 	db     "PC_TRIES_TO_TAKE_STEPHANIES_REMAINS",0x00
dwayne_cpp_variable_72:
    8560:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_73:
    8567:	53 54 5f 42 45 44 52 4d 00 	db     "ST_BEDRM",0x00
dwayne_cpp_variable_74:
    8570:	53 44 5f 54 41 4c 4b 45 44 5f 4f 46 5f 43 41 52 44 00 	db     "SD_TALKED_OF_CARD",0x00
dwayne_cpp_variable_75:
    8582:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_76:
    8589:	53 44 5f 54 41 4c 4b 45 44 5f 4f 46 5f 43 41 52 44 00 	db     "SD_TALKED_OF_CARD",0x00
dwayne_cpp_variable_77:
    859b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_78:
    85a2:	42 52 49 4e 47 5f 4b 41 52 49 4e 5f 54 4f 5f 53 48 45 52 49 46 46 00 	db     "BRING_KARIN_TO_SHERIFF",0x00
dwayne_cpp_variable_79:
    85b9:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_80:
    85ca:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_81:
    85d1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    85d2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    85d3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_82:
    85d4:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_83:
    85db:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_84:
    85e2:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
dwayne_cpp_variable_85:
    85f4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_86:
    85f5:	42 4f 59 4c 45 53 5f 42 55 54 54 4f 4e 00 	db     "BOYLES_BUTTON",0x00
dwayne_cpp_variable_87:
    8603:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_88:
    860a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    860b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    860c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_89:
    860d:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_90:
    8614:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8615:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8616:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_91:
    8617:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_92:
    861e:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
dwayne_cpp_variable_93:
    8626:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_94:
    862d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    862e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    862f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_95:
    8630:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_96:
    8637:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_97:
    863e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    863f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8640:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_98:
    8641:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
dwayne_cpp_variable_99:
    8655:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
dwayne_cpp_variable_100:
    8664:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_101:
    866b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_102:
    8672:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_103:
    8679:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    867a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    867b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_104:
    867c:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_105:
    8683:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_106:
    868a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_107:
    8691:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_108:
    86a0:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
dwayne_cpp_variable_109:
    86aa:	4e 4f 54 45 00       	db     "NOTE",0x00
dwayne_cpp_variable_110:
    86af:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_111:
    86b6:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_112:
    86bd:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_113:
    86c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    86c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    86c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_114:
    86c7:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_115:
    86ce:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_116:
    86d5:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_117:
    86e4:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_118:
    86eb:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_119:
    86fa:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_120:
    8701:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8702:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8703:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_121:
    8704:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_122:
    870b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_123:
    8712:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_124:
    8721:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_125:
    8728:	47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "GOOJF_CARD",0x00
dwayne_cpp_variable_126:
    8733:	50 43 5f 48 41 53 5f 47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "PC_HAS_GOOJF_CARD",0x00
dwayne_cpp_variable_127:
    8745:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
dwayne_cpp_variable_128:
    874c:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
dwayne_cpp_variable_129:
    8754:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
dwayne_cpp_variable_130:
    8766:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_131:
    876d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    876e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    876f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_132:
    8770:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_133:
    8777:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8778:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8779:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_134:
    877a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_135:
    8781:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8782:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8783:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_136:
    8784:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_137:
    878b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    878c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    878d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_138:
    878e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_139:
    8795:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
dwayne_cpp_variable_140:
    879c:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
dwayne_cpp_variable_141:
    87a4:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_142:
    87b5:	43 41 4c 4c 5f 50 4f 4c 49 43 45 00 	db     "CALL_POLICE",0x00
dwayne_cpp_variable_143:
    87c1:	4c 45 44 47 45 52 5f 42 55 53 54 00 	db     "LEDGER_BUST",0x00
dwayne_cpp_variable_144:
    87cd:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
dwayne_cpp_variable_145:
    87e5:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_146:
    87ec:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    87ed:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    87ee:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_147:
    87ef:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_148:
    87f6:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dwayne_cpp_variable_149:
    8803:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
dwayne_cpp_variable_150:
    8814:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_151:
    881b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    881c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    881d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_152:
    881e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_153:
    8825:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8826:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8827:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_154:
    8828:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_155:
    882f:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_156:
    8836:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dwayne_cpp_variable_157:
    8843:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dwayne_cpp_variable_158:
    8850:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_159:
    885a:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
dwayne_cpp_variable_160:
    886b:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_161:
    8875:	43 41 4c 4c 5f 50 4f 4c 49 43 45 00 	db     "CALL_POLICE",0x00
dwayne_cpp_variable_162:
    8881:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8882:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8883:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_163:
    8884:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_164:
    888b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_165:
    8892:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dwayne_cpp_variable_166:
    889f:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
dwayne_cpp_variable_167:
    88ac:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_168:
    88b6:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
dwayne_cpp_variable_169:
    88c7:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
dwayne_cpp_variable_170:
    88d1:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_171:
    88d9:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_172:
    88e0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    88e1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    88e2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_173:
    88e3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_174:
    88ea:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_175:
    88f1:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_176:
    88f8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    88f9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    88fa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_177:
    88fb:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_178:
    8902:	47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "GOOJF_CARD",0x00
dwayne_cpp_variable_179:
    890d:	50 43 5f 48 41 53 5f 47 4f 4f 4a 46 5f 43 41 52 44 00 	db     "PC_HAS_GOOJF_CARD",0x00
dwayne_cpp_variable_180:
    891f:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_181:
    8927:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
dwayne_cpp_variable_182:
    8939:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_183:
    8940:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_184:
    8947:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_185:
    894e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_186:
    8955:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_187:
    895c:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_188:
    8963:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_189:
    896b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_190:
    8972:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8973:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8974:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_191:
    8975:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_192:
    897c:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_193:
    898b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_194:
    8992:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8993:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8994:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_195:
    8995:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_196:
    899c:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_197:
    89a3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_198:
    89aa:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    89ab:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    89ac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_199:
    89ad:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_200:
    89b4:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_201:
    89c3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_202:
    89ca:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
dwayne_cpp_variable_203:
    89dc:	52 41 48 00          	db     "RAH",0x00
dwayne_cpp_variable_204:
    89e0:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_205:
    89e7:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_206:
    89f8:	44 57 41 59 4e 45 5f 49 4e 54 52 4f 44 55 43 45 44 00 	db     "DWAYNE_INTRODUCED",0x00
dwayne_cpp_variable_207:
    8a0a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_208:
    8a11:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8a12:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8a13:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_209:
    8a14:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_210:
    8a1b:	45 44 4e 41 00       	db     "EDNA",0x00
dwayne_cpp_variable_211:
    8a20:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
dwayne_cpp_variable_212:
    8a2f:	45 44 4e 41 00       	db     "EDNA",0x00
dwayne_cpp_variable_213:
    8a34:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_214:
    8a3b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8a3c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8a3d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_215:
    8a3e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_216:
    8a45:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_217:
    8a56:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_218:
    8a5d:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_219:
    8a6e:	44 57 41 59 4e 45 5f 49 4e 54 52 4f 44 55 43 45 44 00 	db     "DWAYNE_INTRODUCED",0x00
dwayne_cpp_variable_220:
    8a80:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_221:
    8a87:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dwayne_cpp_variable_222:
    8a8e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8a8f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8a90:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_223:
    8a91:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_224:
    8a98:	4d 4f 56 45 5f 53 48 45 52 49 46 46 00 	db     "MOVE_SHERIFF",0x00
dwayne_cpp_variable_225:
    8aa5:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_226:
    8aac:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_227:
    8ab3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_228:
    8aba:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_229:
    8ac1:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_230:
    8ac8:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_231:
    8acf:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_232:
    8ad6:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_233:
    8add:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8ade:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8adf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_234:
    8ae0:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_235:
    8ae7:	50 43 5f 46 52 59 5f 44 41 44 44 59 5f 31 00 	db     "PC_FRY_DADDY_1",0x00
dwayne_cpp_variable_236:
    8af6:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_237:
    8b07:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
dwayne_cpp_variable_238:
    8b18:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_239:
    8b1f:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
dwayne_cpp_variable_240:
    8b33:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_241:
    8b3a:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
dwayne_cpp_variable_242:
    8b4d:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_243:
    8b54:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_244:
    8b5b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_245:
    8b62:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
dwayne_cpp_variable_246:
    8b6f:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_247:
    8b76:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
dwayne_cpp_variable_248:
    8b88:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_249:
    8b8f:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_250:
    8b96:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
dwayne_cpp_variable_251:
    8ba6:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_252:
    8bad:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
dwayne_cpp_variable_253:
    8bc3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_254:
    8bca:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
dwayne_cpp_variable_255:
    8bdc:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_256:
    8be3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_257:
    8bea:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_258:
    8bf1:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
dwayne_cpp_variable_259:
    8c00:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_260:
    8c07:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_261:
    8c0e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_262:
    8c15:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_263:
    8c1c:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_264:
    8c23:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_265:
    8c2a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_266:
    8c31:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_267:
    8c38:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8c39:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8c3a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_268:
    8c3b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_269:
    8c42:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
dwayne_cpp_variable_270:
    8c53:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_271:
    8c64:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_272:
    8c6b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_273:
    8c72:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_274:
    8c79:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_275:
    8c80:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_276:
    8c87:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_277:
    8c8e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8c8f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8c90:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_278:
    8c91:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
dwayne_cpp_variable_279:
    8c97:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_280:
    8ca8:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_281:
    8caf:	4a 49 4d 4d 59 5f 41 54 54 41 43 4b 45 44 00 	db     "JIMMY_ATTACKED",0x00
dwayne_cpp_variable_282:
    8cbe:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_283:
    8cc5:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_284:
    8ccc:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_285:
    8cd3:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
dwayne_cpp_variable_286:
    8cdc:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_287:
    8ced:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_288:
    8cf4:	45 44 4e 41 5f 48 55 4e 47 00 	db     "EDNA_HUNG",0x00
dwayne_cpp_variable_289:
    8cfe:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_290:
    8d05:	4d 43 4b 4e 49 47 48 54 00 	db     "MCKNIGHT",0x00
dwayne_cpp_variable_291:
    8d0e:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_292:
    8d1f:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
dwayne_cpp_variable_293:
    8d27:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_294:
    8d2e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_295:
    8d35:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_296:
    8d36:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_297:
    8d3d:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_298:
    8d4e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_299:
    8d55:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8d56:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8d57:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_300:
    8d58:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_301:
    8d5f:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dwayne_cpp_variable_302:
    8d66:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_303:
    8d6d:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dwayne_cpp_variable_304:
    8d74:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8d75:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8d76:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_305:
    8d77:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_306:
    8d7e:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
dwayne_cpp_variable_307:
    8d8f:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_308:
    8d96:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_309:
    8d9d:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dwayne_cpp_variable_310:
    8da4:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_311:
    8dab:	4c 4f 4f 4d 49 53 00 	db     "LOOMIS",0x00
dwayne_cpp_variable_312:
    8db2:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_313:
    8db9:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_314:
    8dc0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8dc1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8dc2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_315:
    8dc3:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_316:
    8dca:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_317:
    8dd1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8dd2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8dd3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_318:
    8dd4:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_319:
    8ddb:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_320:
    8de2:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_321:
    8de9:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
dwayne_cpp_variable_322:
    8dfe:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_323:
    8e05:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8e06:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8e07:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_324:
    8e08:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_325:
    8e0f:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_326:
    8e16:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_327:
    8e1d:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_328:
    8e24:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_329:
    8e2b:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_330:
    8e32:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_331:
    8e39:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_332:
    8e40:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_333:
    8e47:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_334:
    8e4e:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_335:
    8e55:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8e56:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8e57:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_336:
    8e58:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_337:
    8e5f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8e60:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8e61:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_338:
    8e62:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8e63:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8e64:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
dwayne_cpp_variable_339:
    8e65:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_340:
    8e6c:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_341:
    8e73:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_342:
    8e7a:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_343:
    8e81:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
dwayne_cpp_variable_344:
    8e88:	44 57 41 59 4e 45 00 	db     "DWAYNE",0x00
    8e8f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 66 (D:\SOURCE\dwayne.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 66: D:\SOURCE\dwayne.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
SHERIFF_DWAYNE:                                                                                     ; access size: DWORD
   22f88:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_1:                                                                          ; access size: DWORD
   22f8c:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_2:                                                                          ; access size: DWORD
   22f90:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_3:                                                                          ; access size: DWORD
   22f94:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_4:                                                                          ; access size: DWORD
   22f98:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_5:                                                                          ; access size: DWORD
   22f9c:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_6:                                                                          ; access size: DWORD
   22fa0:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_7:                                                                          ; access size: DWORD
   22fa4:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_8:                                                                          ; access size: DWORD
   22fa8:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_9:                                                                          ; access size: DWORD
   22fac:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_10:                                                                         ; access size: DWORD
   22fb0:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_11:                                                                         ; access size: DWORD
   22fb4:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_12:                                                                         ; access size: DWORD
   22fb8:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_13:                                                                         ; access size: DWORD
   22fbc:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_14:                                                                         ; access size: DWORD
   22fc0:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_15:                                                                         ; access size: DWORD
   22fc4:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_16:                                                                         ; access size: DWORD
   22fc8:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_17:                                                                         ; access size: DWORD
   22fcc:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_18:                                                                         ; access size: DWORD
   22fd0:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_19:                                                                         ; access size: DWORD
   22fd4:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_20:                                                                         ; access size: DWORD
   22fd8:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_21:                                                                         ; access size: DWORD
   22fdc:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_22:                                                                         ; access size: DWORD
   22fe0:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_23:                                                                         ; access size: DWORD
   22fe4:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_24:                                                                         ; access size: DWORD
   22fe8:	00 00 00 00          	dd     0x00000000
SHERIFF_DWAYNE_variable_25:                                                                         ; access size: DWORD
   22fec:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 66 (D:\SOURCE\dwayne.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------