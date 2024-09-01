;-------------------------------------------------------------------------------
;                                                                              -
;  Module 47: D:\SOURCE\sergeant.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_SERGEANT_AT_ARMS'           -
;-------------------------------------------------
talk_to_SERGEANT_AT_ARMS:
   20340:	53                   	push   ebx
   20341:	51                   	push   ecx
   20342:	52                   	push   edx
   20343:	56                   	push   esi
   20344:	57                   	push   edi
   20345:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4864, src obj: 1, src ofs: 0x20347, dst obj: 3, dst ofs: 0x294bc
   2034b:	85 d2                	test   edx,edx
   2034d:	0f 84 7d 00 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_1
   20353:	89 d0                	mov    eax,edx
   20355:	ba 28 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_1                            ; fixup: num: 4863, src obj: 1, src ofs: 0x20356, dst obj: 3, dst ofs: 0x5428
   2035a:	e8 d1 60 05 00       	call   strcmp_
   2035f:	85 c0                	test   eax,eax
   20361:	0f 84 fa 04 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_19
   20367:	ba 34 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_2                            ; fixup: num: 4862, src obj: 1, src ofs: 0x20368, dst obj: 3, dst ofs: 0x5434
   2036c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4861, src obj: 1, src ofs: 0x2036d, dst obj: 3, dst ofs: 0x294bc
   20371:	e8 ba 60 05 00       	call   strcmp_
   20376:	85 c0                	test   eax,eax
   20378:	0f 84 2b 06 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_25
   2037e:	ba 3d 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_3                            ; fixup: num: 4860, src obj: 1, src ofs: 0x2037f, dst obj: 3, dst ofs: 0x543d
   20383:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4859, src obj: 1, src ofs: 0x20384, dst obj: 3, dst ofs: 0x294bc
   20388:	e8 a3 60 05 00       	call   strcmp_
   2038d:	85 c0                	test   eax,eax
   2038f:	0f 84 28 08 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_34
   20395:	ba 59 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_4                            ; fixup: num: 4858, src obj: 1, src ofs: 0x20396, dst obj: 3, dst ofs: 0x5459
   2039a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4857, src obj: 1, src ofs: 0x2039b, dst obj: 3, dst ofs: 0x294bc
   2039f:	e8 8c 60 05 00       	call   strcmp_
   203a4:	85 c0                	test   eax,eax
   203a6:	0f 84 ef 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_7
   203ac:	ba 60 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_5                            ; fixup: num: 4856, src obj: 1, src ofs: 0x203ad, dst obj: 3, dst ofs: 0x5460
   203b1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4855, src obj: 1, src ofs: 0x203b2, dst obj: 3, dst ofs: 0x294bc
   203b6:	e8 75 60 05 00       	call   strcmp_
   203bb:	85 c0                	test   eax,eax
   203bd:	74 23                	je     talk_to_SERGEANT_AT_ARMS_branch_2
   203bf:	ba 68 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_6                            ; fixup: num: 4854, src obj: 1, src ofs: 0x203c0, dst obj: 3, dst ofs: 0x5468
   203c4:	b8 fa 42 00 00       	mov    eax,0x42fa
   203c9:	31 db                	xor    ebx,ebx
   203cb:	e9 f6 0b 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_50
talk_to_SERGEANT_AT_ARMS_branch_1:
   203d0:	b8 71 54 00 00       	mov    eax,@obj3:sergeant_cpp_variable_7                            ; fixup: num: 4853, src obj: 1, src ofs: 0x203d1, dst obj: 3, dst ofs: 0x5471
   203d5:	e8 b6 c3 04 00       	call   check_script_flag
   203da:	84 c0                	test   al,al
   203dc:	0f 84 87 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_6
talk_to_SERGEANT_AT_ARMS_branch_2:
   203e2:	ba 01 00 00 00       	mov    edx,0x1
   203e7:	31 c0                	xor    eax,eax
   203e9:	e8 02 80 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   203ee:	ba 01 00 00 00       	mov    edx,0x1
   203f3:	31 c0                	xor    eax,eax
   203f5:	bb 01 00 00 00       	mov    ebx,0x1
   203fa:	e8 d1 7f 00 00       	call   TURNED_IN_APPLICATION
   203ff:	89 d9                	mov    ecx,ebx
   20401:	ba 87 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_8                            ; fixup: num: 4880, src obj: 1, src ofs: 0x20402, dst obj: 3, dst ofs: 0x5487
   20406:	b8 8f 54 00 00       	mov    eax,@obj3:sergeant_cpp_variable_9                            ; fixup: num: 4879, src obj: 1, src ofs: 0x20407, dst obj: 3, dst ofs: 0x548f
   2040b:	89 1d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,ebx                      ; fixup: num: 4878, src obj: 1, src ofs: 0x2040d, dst obj: 3, dst ofs: 0x22d4c
   20411:	89 1d 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,ebx           ; fixup: num: 4877, src obj: 1, src ofs: 0x20413, dst obj: 3, dst ofs: 0x22d50
   20417:	89 1d 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,ebx           ; fixup: num: 4876, src obj: 1, src ofs: 0x20419, dst obj: 3, dst ofs: 0x22d54
   2041d:	89 1d 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,ebx           ; fixup: num: 4875, src obj: 1, src ofs: 0x2041f, dst obj: 3, dst ofs: 0x22d58
   20423:	89 1d 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,ebx           ; fixup: num: 4874, src obj: 1, src ofs: 0x20425, dst obj: 3, dst ofs: 0x22d5c
   20429:	89 1d 60 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_5,ebx           ; fixup: num: 4873, src obj: 1, src ofs: 0x2042b, dst obj: 3, dst ofs: 0x22d60
   2042f:	89 1d 64 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_6,ebx           ; fixup: num: 4872, src obj: 1, src ofs: 0x20431, dst obj: 3, dst ofs: 0x22d64
   20435:	89 1d 68 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_7,ebx           ; fixup: num: 4871, src obj: 1, src ofs: 0x20437, dst obj: 3, dst ofs: 0x22d68
   2043b:	89 1d 6c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_8,ebx           ; fixup: num: 4870, src obj: 1, src ofs: 0x2043d, dst obj: 3, dst ofs: 0x22d6c
   20441:	31 db                	xor    ebx,ebx
   20443:	e8 c8 2a 03 00       	call   set_object
   20448:	ba 93 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_10                           ; fixup: num: 4869, src obj: 1, src ofs: 0x20449, dst obj: 3, dst ofs: 0x5493
   2044d:	b8 33 43 00 00       	mov    eax,0x4333
   20452:	89 cb                	mov    ebx,ecx
   20454:	e8 37 a2 04 00       	call   play_wav
   20459:	e8 c2 85 00 00       	call   HANDING_PC_BLADED_HARVESTER_WEAPON
   2045e:	ba 9c 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_11                           ; fixup: num: 4868, src obj: 1, src ofs: 0x2045f, dst obj: 3, dst ofs: 0x549c
   20463:	b8 3f 43 00 00       	mov    eax,0x433f
   20468:	31 db                	xor    ebx,ebx
   2046a:	e8 21 a2 04 00       	call   play_wav
   2046f:	bb 02 00 00 00       	mov    ebx,0x2
   20474:	ba a5 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_12                           ; fixup: num: 4867, src obj: 1, src ofs: 0x20475, dst obj: 3, dst ofs: 0x54a5
   20479:	b8 44 43 00 00       	mov    eax,0x4344
   2047e:	e8 0d a2 04 00       	call   play_wav
   20483:	ba a8 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_13                           ; fixup: num: 4866, src obj: 1, src ofs: 0x20484, dst obj: 3, dst ofs: 0x54a8
   20488:	b8 48 43 00 00       	mov    eax,0x4348
   2048d:	31 db                	xor    ebx,ebx
   2048f:	e8 fc a1 04 00       	call   play_wav
   20494:	ba b1 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_14                           ; fixup: num: 4865, src obj: 1, src ofs: 0x20495, dst obj: 3, dst ofs: 0x54b1
   20499:	b8 4f 43 00 00       	mov    eax,0x434f
   2049e:	31 db                	xor    ebx,ebx
   204a0:	e8 eb a1 04 00       	call   play_wav
   204a5:	ba b4 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_15                           ; fixup: num: 4757, src obj: 1, src ofs: 0x204a6, dst obj: 3, dst ofs: 0x54b4
   204aa:	b8 53 43 00 00       	mov    eax,0x4353
   204af:	89 cb                	mov    ebx,ecx
   204b1:	e8 da a1 04 00       	call   play_wav
   204b6:	b8 ad 02 00 00       	mov    eax,0x2ad
   204bb:	e8 e0 9c 00 00       	call   GetDlgFileString
   204c0:	e8 4b aa 04 00       	call   get_response
   204c5:	39 c8                	cmp    eax,ecx
   204c7:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_3
   204c9:	bb 03 00 00 00       	mov    ebx,0x3
   204ce:	ba bd 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_16                           ; fixup: num: 4756, src obj: 1, src ofs: 0x204cf, dst obj: 3, dst ofs: 0x54bd
   204d3:	b8 5f 43 00 00       	mov    eax,0x435f
   204d8:	eb 11                	jmp    talk_to_SERGEANT_AT_ARMS_branch_4
talk_to_SERGEANT_AT_ARMS_branch_3:
   204da:	83 f8 02             	cmp    eax,0x2
   204dd:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_5
   204df:	ba c6 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_17                           ; fixup: num: 4755, src obj: 1, src ofs: 0x204e0, dst obj: 3, dst ofs: 0x54c6
   204e4:	b8 64 43 00 00       	mov    eax,0x4364
   204e9:	31 db                	xor    ebx,ebx
talk_to_SERGEANT_AT_ARMS_branch_4:
   204eb:	e8 a0 a1 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_5:
   204f0:	ba cf 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_18                           ; fixup: num: 4754, src obj: 1, src ofs: 0x204f1, dst obj: 3, dst ofs: 0x54cf
   204f5:	b8 68 43 00 00       	mov    eax,0x4368
   204fa:	31 db                	xor    ebx,ebx
   204fc:	e8 8f a1 04 00       	call   play_wav
   20501:	bb 02 00 00 00       	mov    ebx,0x2
   20506:	ba d8 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_19                           ; fixup: num: 4753, src obj: 1, src ofs: 0x20507, dst obj: 3, dst ofs: 0x54d8
   2050b:	b8 72 43 00 00       	mov    eax,0x4372
   20510:	e8 7b a1 04 00       	call   play_wav
   20515:	ba db 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_20                           ; fixup: num: 4883, src obj: 1, src ofs: 0x20516, dst obj: 3, dst ofs: 0x54db
   2051a:	b8 76 43 00 00       	mov    eax,0x4376
   2051f:	31 db                	xor    ebx,ebx
   20521:	e8 6a a1 04 00       	call   play_wav
   20526:	bb 02 00 00 00       	mov    ebx,0x2
   2052b:	ba e4 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_21                           ; fixup: num: 4882, src obj: 1, src ofs: 0x2052c, dst obj: 3, dst ofs: 0x54e4
   20530:	b8 81 43 00 00       	mov    eax,0x4381
   20535:	e8 56 a1 04 00       	call   play_wav
   2053a:	ba e7 54 00 00       	mov    edx,@obj3:sergeant_cpp_variable_22                           ; fixup: num: 4881, src obj: 1, src ofs: 0x2053b, dst obj: 3, dst ofs: 0x54e7
   2053f:	b8 85 43 00 00       	mov    eax,0x4385
   20544:	31 db                	xor    ebx,ebx
   20546:	e8 45 a1 04 00       	call   play_wav
   2054b:	e8 a0 2f 04 00       	call   NoLighting
   20550:	e8 db 84 00 00       	call   SGT_AT_ARMS_EXTENDING_ARM_TO_OPEN_LODGE_DOORS
   20555:	b8 03 00 00 00       	mov    eax,0x3
   2055a:	31 d2                	xor    edx,edx
   2055c:	e8 3f 83 01 00       	call   cd_change_requestor
   20561:	31 c0                	xor    eax,eax
   20563:	5f                   	pop    edi
   20564:	5e                   	pop    esi
   20565:	5a                   	pop    edx
   20566:	59                   	pop    ecx
   20567:	5b                   	pop    ebx
   20568:	c3                   	ret    
talk_to_SERGEANT_AT_ARMS_branch_6:
   20569:	b8 f0 54 00 00       	mov    eax,@obj3:sergeant_cpp_variable_23                           ; fixup: num: 4770, src obj: 1, src ofs: 0x2056a, dst obj: 3, dst ofs: 0x54f0
   2056e:	e8 1d c2 04 00       	call   check_script_flag
   20573:	84 c0                	test   al,al
   20575:	0f 84 46 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_11
   2057b:	b8 02 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_24                           ; fixup: num: 4769, src obj: 1, src ofs: 0x2057c, dst obj: 3, dst ofs: 0x5502
   20580:	e8 eb c2 04 00       	call   check_inventory
   20585:	84 c0                	test   al,al
   20587:	75 12                	jne    talk_to_SERGEANT_AT_ARMS_branch_7
   20589:	b8 09 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_25                           ; fixup: num: 4768, src obj: 1, src ofs: 0x2058a, dst obj: 3, dst ofs: 0x5509
   2058e:	e8 fd c1 04 00       	call   check_script_flag
   20593:	84 c0                	test   al,al
   20595:	0f 84 26 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_11
talk_to_SERGEANT_AT_ARMS_branch_7:
   2059b:	ba 01 00 00 00       	mov    edx,0x1
   205a0:	31 c0                	xor    eax,eax
   205a2:	e8 49 7e 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   205a7:	ba 01 00 00 00       	mov    edx,0x1
   205ac:	31 c0                	xor    eax,eax
   205ae:	be 01 00 00 00       	mov    esi,0x1
   205b3:	e8 18 7e 00 00       	call   TURNED_IN_APPLICATION
   205b8:	89 f3                	mov    ebx,esi
   205ba:	ba 22 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_26                           ; fixup: num: 4767, src obj: 1, src ofs: 0x205bb, dst obj: 3, dst ofs: 0x5522
   205bf:	b8 2c 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_27                           ; fixup: num: 4766, src obj: 1, src ofs: 0x205c0, dst obj: 3, dst ofs: 0x552c
   205c4:	89 35 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,esi                      ; fixup: num: 4765, src obj: 1, src ofs: 0x205c6, dst obj: 3, dst ofs: 0x22d4c
   205ca:	89 35 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,esi           ; fixup: num: 4764, src obj: 1, src ofs: 0x205cc, dst obj: 3, dst ofs: 0x22d50
   205d0:	89 35 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,esi           ; fixup: num: 4763, src obj: 1, src ofs: 0x205d2, dst obj: 3, dst ofs: 0x22d54
   205d6:	89 35 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,esi           ; fixup: num: 4762, src obj: 1, src ofs: 0x205d8, dst obj: 3, dst ofs: 0x22d58
   205dc:	89 35 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,esi           ; fixup: num: 4761, src obj: 1, src ofs: 0x205de, dst obj: 3, dst ofs: 0x22d5c
   205e2:	89 35 60 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_5,esi           ; fixup: num: 4760, src obj: 1, src ofs: 0x205e4, dst obj: 3, dst ofs: 0x22d60
   205e8:	89 35 64 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_6,esi           ; fixup: num: 4759, src obj: 1, src ofs: 0x205ea, dst obj: 3, dst ofs: 0x22d64
   205ee:	31 f3                	xor    ebx,esi
   205f0:	89 35 68 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_7,esi           ; fixup: num: 4758, src obj: 1, src ofs: 0x205f2, dst obj: 3, dst ofs: 0x22d68
   205f6:	e8 15 29 03 00       	call   set_object
   205fb:	ba 35 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_28                           ; fixup: num: 4781, src obj: 1, src ofs: 0x205fc, dst obj: 3, dst ofs: 0x5535
   20600:	b8 3c 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_29                           ; fixup: num: 4780, src obj: 1, src ofs: 0x20601, dst obj: 3, dst ofs: 0x553c
   20605:	31 db                	xor    ebx,ebx
   20607:	e8 04 29 03 00       	call   set_object
   2060c:	b8 40 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_30                           ; fixup: num: 4779, src obj: 1, src ofs: 0x2060d, dst obj: 3, dst ofs: 0x5540
   20611:	89 f2                	mov    edx,esi
   20613:	e8 c8 c1 04 00       	call   set_script_flag
   20618:	b8 59 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_31                           ; fixup: num: 4778, src obj: 1, src ofs: 0x20619, dst obj: 3, dst ofs: 0x5559
   2061d:	89 f2                	mov    edx,esi
   2061f:	31 db                	xor    ebx,ebx
   20621:	e8 ba c1 04 00       	call   set_script_flag
   20626:	b8 70 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_32                           ; fixup: num: 4777, src obj: 1, src ofs: 0x20627, dst obj: 3, dst ofs: 0x5570
   2062b:	31 d2                	xor    edx,edx
   2062d:	e8 7e c4 04 00       	call   SetNpc
   20632:	b8 80 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_33                           ; fixup: num: 4776, src obj: 1, src ofs: 0x20633, dst obj: 3, dst ofs: 0x5580
   20637:	31 db                	xor    ebx,ebx
   20639:	31 d2                	xor    edx,edx
   2063b:	e8 70 c4 04 00       	call   SetNpc
   20640:	b8 93 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_34                           ; fixup: num: 4775, src obj: 1, src ofs: 0x20641, dst obj: 3, dst ofs: 0x5593
   20645:	89 f3                	mov    ebx,esi
   20647:	89 f2                	mov    edx,esi
   20649:	e8 62 c4 04 00       	call   SetNpc
   2064e:	e8 2d 85 00 00       	call   SERGEANT_LOOKS_AT_CARD_INVITATION
   20653:	ba 9d 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_35                           ; fixup: num: 4774, src obj: 1, src ofs: 0x20654, dst obj: 3, dst ofs: 0x559d
   20658:	b8 05 43 00 00       	mov    eax,0x4305
   2065d:	31 db                	xor    ebx,ebx
   2065f:	e8 2c a0 04 00       	call   play_wav
   20664:	bb 02 00 00 00       	mov    ebx,0x2
   20669:	ba a0 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_36                           ; fixup: num: 4773, src obj: 1, src ofs: 0x2066a, dst obj: 3, dst ofs: 0x55a0
   2066e:	b8 09 43 00 00       	mov    eax,0x4309
   20673:	e8 18 a0 04 00       	call   play_wav
   20678:	b8 ae 02 00 00       	mov    eax,0x2ae
   2067d:	e8 1e 9b 00 00       	call   GetDlgFileString
   20682:	e8 89 a8 04 00       	call   get_response
   20687:	39 f0                	cmp    eax,esi
   20689:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_8
   2068b:	bb 02 00 00 00       	mov    ebx,0x2
   20690:	ba a9 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_37                           ; fixup: num: 4772, src obj: 1, src ofs: 0x20691, dst obj: 3, dst ofs: 0x55a9
   20695:	b8 14 43 00 00       	mov    eax,0x4314
   2069a:	eb 11                	jmp    talk_to_SERGEANT_AT_ARMS_branch_9
talk_to_SERGEANT_AT_ARMS_branch_8:
   2069c:	83 f8 02             	cmp    eax,0x2
   2069f:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_10
   206a1:	ba b2 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_38                           ; fixup: num: 4771, src obj: 1, src ofs: 0x206a2, dst obj: 3, dst ofs: 0x55b2
   206a6:	89 c3                	mov    ebx,eax
   206a8:	b8 19 43 00 00       	mov    eax,0x4319
talk_to_SERGEANT_AT_ARMS_branch_9:
   206ad:	e8 de 9f 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_10:
   206b2:	ba bb 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_39                           ; fixup: num: 4793, src obj: 1, src ofs: 0x206b3, dst obj: 3, dst ofs: 0x55bb
   206b7:	b8 1d 43 00 00       	mov    eax,0x431d
   206bc:	e9 d1 08 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_11:
   206c1:	b8 c4 55 00 00       	mov    eax,@obj3:sergeant_cpp_variable_40                           ; fixup: num: 4792, src obj: 1, src ofs: 0x206c2, dst obj: 3, dst ofs: 0x55c4
   206c6:	e8 c5 c0 04 00       	call   check_script_flag
   206cb:	84 c0                	test   al,al
   206cd:	0f 84 7c 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_18
   206d3:	ba 01 00 00 00       	mov    edx,0x1
   206d8:	31 c0                	xor    eax,eax
   206da:	e8 11 7d 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   206df:	ba 01 00 00 00       	mov    edx,0x1
   206e4:	31 c0                	xor    eax,eax
   206e6:	bb 01 00 00 00       	mov    ebx,0x1
   206eb:	e8 e0 7c 00 00       	call   TURNED_IN_APPLICATION
   206f0:	89 d9                	mov    ecx,ebx
   206f2:	ba d1 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_41                           ; fixup: num: 4791, src obj: 1, src ofs: 0x206f3, dst obj: 3, dst ofs: 0x55d1
   206f7:	b8 b5 42 00 00       	mov    eax,0x42b5
   206fc:	89 1d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,ebx                      ; fixup: num: 4790, src obj: 1, src ofs: 0x206fe, dst obj: 3, dst ofs: 0x22d4c
   20702:	89 1d 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,ebx           ; fixup: num: 4789, src obj: 1, src ofs: 0x20704, dst obj: 3, dst ofs: 0x22d50
   20708:	89 1d 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,ebx           ; fixup: num: 4788, src obj: 1, src ofs: 0x2070a, dst obj: 3, dst ofs: 0x22d54
   2070e:	89 1d 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,ebx           ; fixup: num: 4787, src obj: 1, src ofs: 0x20710, dst obj: 3, dst ofs: 0x22d58
   20714:	89 1d 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,ebx           ; fixup: num: 4786, src obj: 1, src ofs: 0x20716, dst obj: 3, dst ofs: 0x22d5c
   2071a:	89 1d 60 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_5,ebx           ; fixup: num: 4785, src obj: 1, src ofs: 0x2071c, dst obj: 3, dst ofs: 0x22d60
   20720:	89 1d 64 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_6,ebx           ; fixup: num: 4784, src obj: 1, src ofs: 0x20722, dst obj: 3, dst ofs: 0x22d64
   20726:	e8 65 9f 04 00       	call   play_wav
   2072b:	ba da 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_42                           ; fixup: num: 4783, src obj: 1, src ofs: 0x2072c, dst obj: 3, dst ofs: 0x55da
   20730:	b8 b9 42 00 00       	mov    eax,0x42b9
   20735:	31 db                	xor    ebx,ebx
   20737:	e8 54 9f 04 00       	call   play_wav
   2073c:	b8 af 02 00 00       	mov    eax,0x2af
   20741:	e8 5a 9a 00 00       	call   GetDlgFileString
   20746:	e8 c5 a7 04 00       	call   get_response
   2074b:	39 c8                	cmp    eax,ecx
   2074d:	75 0c                	jne    talk_to_SERGEANT_AT_ARMS_branch_12
   2074f:	ba e3 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_43                           ; fixup: num: 4782, src obj: 1, src ofs: 0x20750, dst obj: 3, dst ofs: 0x55e3
   20754:	b8 c5 42 00 00       	mov    eax,0x42c5
   20759:	eb 0f                	jmp    talk_to_SERGEANT_AT_ARMS_branch_13
talk_to_SERGEANT_AT_ARMS_branch_12:
   2075b:	83 f8 02             	cmp    eax,0x2
   2075e:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_14
   20760:	ba ec 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_44                           ; fixup: num: 4802, src obj: 1, src ofs: 0x20761, dst obj: 3, dst ofs: 0x55ec
   20765:	b8 cb 42 00 00       	mov    eax,0x42cb
talk_to_SERGEANT_AT_ARMS_branch_13:
   2076a:	31 db                	xor    ebx,ebx
   2076c:	e8 1f 9f 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_14:
   20771:	bb 01 00 00 00       	mov    ebx,0x1
   20776:	ba f5 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_45                           ; fixup: num: 4801, src obj: 1, src ofs: 0x20777, dst obj: 3, dst ofs: 0x55f5
   2077b:	b8 d2 42 00 00       	mov    eax,0x42d2
   20780:	e8 0b 9f 04 00       	call   play_wav
   20785:	b8 b0 02 00 00       	mov    eax,0x2b0
   2078a:	e8 11 9a 00 00       	call   GetDlgFileString
   2078f:	e8 7c a7 04 00       	call   get_response
   20794:	83 f8 01             	cmp    eax,0x1
   20797:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_15
   20799:	bb 02 00 00 00       	mov    ebx,0x2
   2079e:	ba fe 55 00 00       	mov    edx,@obj3:sergeant_cpp_variable_46                           ; fixup: num: 4800, src obj: 1, src ofs: 0x2079f, dst obj: 3, dst ofs: 0x55fe
   207a3:	b8 de 42 00 00       	mov    eax,0x42de
   207a8:	eb 11                	jmp    talk_to_SERGEANT_AT_ARMS_branch_16
talk_to_SERGEANT_AT_ARMS_branch_15:
   207aa:	83 f8 02             	cmp    eax,0x2
   207ad:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_17
   207af:	ba 07 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_47                           ; fixup: num: 4799, src obj: 1, src ofs: 0x207b0, dst obj: 3, dst ofs: 0x5607
   207b4:	b8 e3 42 00 00       	mov    eax,0x42e3
   207b9:	31 db                	xor    ebx,ebx
talk_to_SERGEANT_AT_ARMS_branch_16:
   207bb:	e8 d0 9e 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_17:
   207c0:	ba 10 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_48                           ; fixup: num: 4798, src obj: 1, src ofs: 0x207c1, dst obj: 3, dst ofs: 0x5610
   207c5:	b8 e9 42 00 00       	mov    eax,0x42e9
   207ca:	31 db                	xor    ebx,ebx
   207cc:	e8 bf 9e 04 00       	call   play_wav
   207d1:	ba 19 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_49                           ; fixup: num: 4797, src obj: 1, src ofs: 0x207d2, dst obj: 3, dst ofs: 0x5619
   207d6:	b8 ef 42 00 00       	mov    eax,0x42ef
   207db:	31 db                	xor    ebx,ebx
   207dd:	e8 ae 9e 04 00       	call   play_wav
   207e2:	ba 1c 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_50                           ; fixup: num: 4796, src obj: 1, src ofs: 0x207e3, dst obj: 3, dst ofs: 0x561c
   207e7:	b8 f3 42 00 00       	mov    eax,0x42f3
   207ec:	31 db                	xor    ebx,ebx
   207ee:	e8 9d 9e 04 00       	call   play_wav
   207f3:	bb 01 00 00 00       	mov    ebx,0x1
   207f8:	ba 25 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_51                           ; fixup: num: 4795, src obj: 1, src ofs: 0x207f9, dst obj: 3, dst ofs: 0x5625
   207fd:	b8 2c 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_52                           ; fixup: num: 4794, src obj: 1, src ofs: 0x207fe, dst obj: 3, dst ofs: 0x562c
   20802:	e8 09 27 03 00       	call   set_object
   20807:	bb 01 00 00 00       	mov    ebx,0x1
   2080c:	ba 35 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_53                           ; fixup: num: 4816, src obj: 1, src ofs: 0x2080d, dst obj: 3, dst ofs: 0x5635
   20811:	b8 3f 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_54                           ; fixup: num: 4815, src obj: 1, src ofs: 0x20812, dst obj: 3, dst ofs: 0x563f
   20816:	e8 f5 26 03 00       	call   set_object
   2081b:	bb 01 00 00 00       	mov    ebx,0x1
   20820:	b8 48 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_55                           ; fixup: num: 4814, src obj: 1, src ofs: 0x20821, dst obj: 3, dst ofs: 0x5648
   20825:	89 da                	mov    edx,ebx
   20827:	e8 84 c2 04 00       	call   SetNpc
   2082c:	ba 01 00 00 00       	mov    edx,0x1
   20831:	b8 58 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_56                           ; fixup: num: 4813, src obj: 1, src ofs: 0x20832, dst obj: 3, dst ofs: 0x5658
   20836:	e8 a5 bf 04 00       	call   set_script_flag
   2083b:	ba 01 00 00 00       	mov    edx,0x1
   20840:	b8 6a 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_57                           ; fixup: num: 4812, src obj: 1, src ofs: 0x20841, dst obj: 3, dst ofs: 0x566a
   20845:	e8 96 bf 04 00       	call   set_script_flag
   2084a:	e9 4a 07 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_18:
   2084f:	b8 8e 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_58                           ; fixup: num: 4811, src obj: 1, src ofs: 0x20850, dst obj: 3, dst ofs: 0x568e
   20854:	e8 37 bf 04 00       	call   check_script_flag
   20859:	84 c0                	test   al,al
   2085b:	0f 84 36 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_24
talk_to_SERGEANT_AT_ARMS_branch_19:
   20861:	ba 01 00 00 00       	mov    edx,0x1
   20866:	31 c0                	xor    eax,eax
   20868:	e8 83 7b 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   2086d:	ba 01 00 00 00       	mov    edx,0x1
   20872:	31 c0                	xor    eax,eax
   20874:	e8 57 7b 00 00       	call   TURNED_IN_APPLICATION
   20879:	b8 01 00 00 00       	mov    eax,0x1
   2087e:	ba a1 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_59                           ; fixup: num: 4810, src obj: 1, src ofs: 0x2087f, dst obj: 3, dst ofs: 0x56a1
   20883:	a3 4c 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS,eax                                ; fixup: num: 4809, src obj: 1, src ofs: 0x20884, dst obj: 3, dst ofs: 0x22d4c
   20888:	a3 50 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_1,eax                     ; fixup: num: 4808, src obj: 1, src ofs: 0x20889, dst obj: 3, dst ofs: 0x22d50
   2088d:	89 c3                	mov    ebx,eax
   2088f:	a3 54 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_2,eax                     ; fixup: num: 4807, src obj: 1, src ofs: 0x20890, dst obj: 3, dst ofs: 0x22d54
   20894:	89 c1                	mov    ecx,eax
   20896:	a3 58 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_3,eax                     ; fixup: num: 4806, src obj: 1, src ofs: 0x20897, dst obj: 3, dst ofs: 0x22d58
   2089b:	a3 5c 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_4,eax                     ; fixup: num: 4805, src obj: 1, src ofs: 0x2089c, dst obj: 3, dst ofs: 0x22d5c
   208a0:	a3 60 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_5,eax                     ; fixup: num: 4804, src obj: 1, src ofs: 0x208a1, dst obj: 3, dst ofs: 0x22d60
   208a5:	31 c3                	xor    ebx,eax
   208a7:	b8 ad 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_60                           ; fixup: num: 4803, src obj: 1, src ofs: 0x208a8, dst obj: 3, dst ofs: 0x56ad
   208ac:	e8 5f 26 03 00       	call   set_object
   208b1:	b8 b1 56 00 00       	mov    eax,@obj3:sergeant_cpp_variable_61                           ; fixup: num: 4689, src obj: 1, src ofs: 0x208b2, dst obj: 3, dst ofs: 0x56b1
   208b6:	89 ca                	mov    edx,ecx
   208b8:	e8 23 bf 04 00       	call   set_script_flag
   208bd:	89 cb                	mov    ebx,ecx
   208bf:	ba c3 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_62                           ; fixup: num: 4688, src obj: 1, src ofs: 0x208c0, dst obj: 3, dst ofs: 0x56c3
   208c4:	b8 6f 42 00 00       	mov    eax,0x426f
   208c9:	e8 c2 9d 04 00       	call   play_wav
   208ce:	ba cc 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_63                           ; fixup: num: 4687, src obj: 1, src ofs: 0x208cf, dst obj: 3, dst ofs: 0x56cc
   208d3:	b8 74 42 00 00       	mov    eax,0x4274
   208d8:	31 db                	xor    ebx,ebx
   208da:	e8 b1 9d 04 00       	call   play_wav
   208df:	b8 b1 02 00 00       	mov    eax,0x2b1
   208e4:	e8 b7 98 00 00       	call   GetDlgFileString
   208e9:	e8 22 a6 04 00       	call   get_response
   208ee:	39 c8                	cmp    eax,ecx
   208f0:	75 0c                	jne    talk_to_SERGEANT_AT_ARMS_branch_20
   208f2:	ba d5 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_64                           ; fixup: num: 4686, src obj: 1, src ofs: 0x208f3, dst obj: 3, dst ofs: 0x56d5
   208f7:	b8 81 42 00 00       	mov    eax,0x4281
   208fc:	eb 0f                	jmp    talk_to_SERGEANT_AT_ARMS_branch_21
talk_to_SERGEANT_AT_ARMS_branch_20:
   208fe:	83 f8 02             	cmp    eax,0x2
   20901:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_22
   20903:	ba de 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_65                           ; fixup: num: 4685, src obj: 1, src ofs: 0x20904, dst obj: 3, dst ofs: 0x56de
   20908:	b8 89 42 00 00       	mov    eax,0x4289
talk_to_SERGEANT_AT_ARMS_branch_21:
   2090d:	31 db                	xor    ebx,ebx
   2090f:	e8 7c 9d 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_22:
   20914:	ba e7 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_66                           ; fixup: num: 4819, src obj: 1, src ofs: 0x20915, dst obj: 3, dst ofs: 0x56e7
   20919:	b8 8d 42 00 00       	mov    eax,0x428d
   2091e:	31 db                	xor    ebx,ebx
   20920:	e8 6b 9d 04 00       	call   play_wav
   20925:	ba f0 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_67                           ; fixup: num: 4818, src obj: 1, src ofs: 0x20926, dst obj: 3, dst ofs: 0x56f0
   2092a:	b8 99 42 00 00       	mov    eax,0x4299
   2092f:	31 db                	xor    ebx,ebx
   20931:	e8 5a 9d 04 00       	call   play_wav
   20936:	b8 b2 02 00 00       	mov    eax,0x2b2
   2093b:	e8 60 98 00 00       	call   GetDlgFileString
   20940:	e8 cb a5 04 00       	call   get_response
   20945:	83 f8 01             	cmp    eax,0x1
   20948:	75 35                	jne    talk_to_SERGEANT_AT_ARMS_branch_23
   2094a:	bb 03 00 00 00       	mov    ebx,0x3
   2094f:	ba f9 56 00 00       	mov    edx,@obj3:sergeant_cpp_variable_68                           ; fixup: num: 4817, src obj: 1, src ofs: 0x20950, dst obj: 3, dst ofs: 0x56f9
   20954:	b8 a4 42 00 00       	mov    eax,0x42a4
   20959:	e8 32 9d 04 00       	call   play_wav
   2095e:	b8 02 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_69                           ; fixup: num: 4701, src obj: 1, src ofs: 0x2095f, dst obj: 3, dst ofs: 0x5702
   20963:	e8 28 be 04 00       	call   check_script_flag
   20968:	84 c0                	test   al,al
   2096a:	0f 84 29 06 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_49
   20970:	ba 13 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_70                           ; fixup: num: 4700, src obj: 1, src ofs: 0x20971, dst obj: 3, dst ofs: 0x5713
   20975:	b8 a8 42 00 00       	mov    eax,0x42a8
   2097a:	e9 13 06 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_23:
   2097f:	83 f8 02             	cmp    eax,0x2
   20982:	0f 85 11 06 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_49
   20988:	ba 1c 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_71                           ; fixup: num: 4699, src obj: 1, src ofs: 0x20989, dst obj: 3, dst ofs: 0x571c
   2098d:	b8 ad 42 00 00       	mov    eax,0x42ad
   20992:	e9 fb 05 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_24:
   20997:	b8 25 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_72                           ; fixup: num: 4698, src obj: 1, src ofs: 0x20998, dst obj: 3, dst ofs: 0x5725
   2099c:	e8 ef bd 04 00       	call   check_script_flag
   209a1:	84 c0                	test   al,al
   209a3:	0f 84 22 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_29
talk_to_SERGEANT_AT_ARMS_branch_25:
   209a9:	ba 01 00 00 00       	mov    edx,0x1
   209ae:	31 c0                	xor    eax,eax
   209b0:	e8 3b 7a 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   209b5:	ba 01 00 00 00       	mov    edx,0x1
   209ba:	31 c0                	xor    eax,eax
   209bc:	bb 01 00 00 00       	mov    ebx,0x1
   209c1:	e8 0a 7a 00 00       	call   TURNED_IN_APPLICATION
   209c6:	89 d9                	mov    ecx,ebx
   209c8:	89 1d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,ebx                      ; fixup: num: 4697, src obj: 1, src ofs: 0x209ca, dst obj: 3, dst ofs: 0x22d4c
   209ce:	89 1d 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,ebx           ; fixup: num: 4696, src obj: 1, src ofs: 0x209d0, dst obj: 3, dst ofs: 0x22d50
   209d4:	89 1d 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,ebx           ; fixup: num: 4695, src obj: 1, src ofs: 0x209d6, dst obj: 3, dst ofs: 0x22d54
   209da:	89 1d 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,ebx           ; fixup: num: 4694, src obj: 1, src ofs: 0x209dc, dst obj: 3, dst ofs: 0x22d58
   209e0:	89 da                	mov    edx,ebx
   209e2:	31 c0                	xor    eax,eax
   209e4:	89 1d 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,ebx           ; fixup: num: 4693, src obj: 1, src ofs: 0x209e6, dst obj: 3, dst ofs: 0x22d5c
   209ea:	e8 e1 79 00 00       	call   TURNED_IN_APPLICATION
   209ef:	ba 39 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_73                           ; fixup: num: 4692, src obj: 1, src ofs: 0x209f0, dst obj: 3, dst ofs: 0x5739
   209f4:	b8 42 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_74                           ; fixup: num: 4691, src obj: 1, src ofs: 0x209f5, dst obj: 3, dst ofs: 0x5742
   209f9:	31 db                	xor    ebx,ebx
   209fb:	e8 10 25 03 00       	call   set_object
   20a00:	ba 46 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_75                           ; fixup: num: 4690, src obj: 1, src ofs: 0x20a01, dst obj: 3, dst ofs: 0x5746
   20a05:	b8 41 42 00 00       	mov    eax,0x4241
   20a0a:	89 cb                	mov    ebx,ecx
   20a0c:	e8 7f 9c 04 00       	call   play_wav
   20a11:	ba 4f 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_76                           ; fixup: num: 4713, src obj: 1, src ofs: 0x20a12, dst obj: 3, dst ofs: 0x574f
   20a16:	b8 45 42 00 00       	mov    eax,0x4245
   20a1b:	89 cb                	mov    ebx,ecx
   20a1d:	e8 6e 9c 04 00       	call   play_wav
   20a22:	ba 58 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_77                           ; fixup: num: 4712, src obj: 1, src ofs: 0x20a23, dst obj: 3, dst ofs: 0x5758
   20a27:	b8 52 42 00 00       	mov    eax,0x4252
   20a2c:	31 db                	xor    ebx,ebx
   20a2e:	e8 5d 9c 04 00       	call   play_wav
   20a33:	b8 b3 02 00 00       	mov    eax,0x2b3
   20a38:	e8 63 97 00 00       	call   GetDlgFileString
   20a3d:	e8 ce a4 04 00       	call   get_response
   20a42:	39 c8                	cmp    eax,ecx
   20a44:	75 0e                	jne    talk_to_SERGEANT_AT_ARMS_branch_26
   20a46:	ba 61 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_78                           ; fixup: num: 4711, src obj: 1, src ofs: 0x20a47, dst obj: 3, dst ofs: 0x5761
   20a4b:	89 c3                	mov    ebx,eax
   20a4d:	b8 5e 42 00 00       	mov    eax,0x425e
   20a52:	eb 11                	jmp    talk_to_SERGEANT_AT_ARMS_branch_27
talk_to_SERGEANT_AT_ARMS_branch_26:
   20a54:	83 f8 02             	cmp    eax,0x2
   20a57:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_28
   20a59:	ba 6a 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_79                           ; fixup: num: 4710, src obj: 1, src ofs: 0x20a5a, dst obj: 3, dst ofs: 0x576a
   20a5e:	b8 66 42 00 00       	mov    eax,0x4266
   20a63:	89 cb                	mov    ebx,ecx
talk_to_SERGEANT_AT_ARMS_branch_27:
   20a65:	e8 26 9c 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_28:
   20a6a:	ba 73 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_80                           ; fixup: num: 4709, src obj: 1, src ofs: 0x20a6b, dst obj: 3, dst ofs: 0x5773
   20a6f:	b8 7c 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_81                           ; fixup: num: 4708, src obj: 1, src ofs: 0x20a70, dst obj: 3, dst ofs: 0x577c
   20a74:	31 db                	xor    ebx,ebx
   20a76:	e8 95 24 03 00       	call   set_object
   20a7b:	ba 01 00 00 00       	mov    edx,0x1
   20a80:	b8 80 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_82                           ; fixup: num: 4707, src obj: 1, src ofs: 0x20a81, dst obj: 3, dst ofs: 0x5780
   20a85:	e8 56 bd 04 00       	call   set_script_flag
   20a8a:	ba 01 00 00 00       	mov    edx,0x1
   20a8f:	b8 90 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_83                           ; fixup: num: 4706, src obj: 1, src ofs: 0x20a90, dst obj: 3, dst ofs: 0x5790
   20a94:	e8 47 bd 04 00       	call   set_script_flag
   20a99:	ba a3 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_84                           ; fixup: num: 4705, src obj: 1, src ofs: 0x20a9a, dst obj: 3, dst ofs: 0x57a3
   20a9e:	b8 a9 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_85                           ; fixup: num: 4704, src obj: 1, src ofs: 0x20a9f, dst obj: 3, dst ofs: 0x57a9
   20aa3:	e8 98 be 04 00       	call   KillNpc
   20aa8:	ba b0 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_86                           ; fixup: num: 4703, src obj: 1, src ofs: 0x20aa9, dst obj: 3, dst ofs: 0x57b0
   20aad:	b8 b6 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_87                           ; fixup: num: 4702, src obj: 1, src ofs: 0x20aae, dst obj: 3, dst ofs: 0x57b6
   20ab2:	e8 89 be 04 00       	call   KillNpc
   20ab7:	ba bf 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_88                           ; fixup: num: 4723, src obj: 1, src ofs: 0x20ab8, dst obj: 3, dst ofs: 0x57bf
   20abc:	b8 c5 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_89                           ; fixup: num: 4722, src obj: 1, src ofs: 0x20abd, dst obj: 3, dst ofs: 0x57c5
   20ac1:	e8 7a be 04 00       	call   KillNpc
   20ac6:	e9 ce 04 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_29:
   20acb:	b8 ce 57 00 00       	mov    eax,@obj3:sergeant_cpp_variable_90                           ; fixup: num: 4721, src obj: 1, src ofs: 0x20acc, dst obj: 3, dst ofs: 0x57ce
   20ad0:	e8 bb bc 04 00       	call   check_script_flag
   20ad5:	84 c0                	test   al,al
   20ad7:	0f 84 ce 00 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_33
   20add:	ba 01 00 00 00       	mov    edx,0x1
   20ae2:	31 c0                	xor    eax,eax
   20ae4:	e8 07 79 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   20ae9:	ba 01 00 00 00       	mov    edx,0x1
   20aee:	31 c0                	xor    eax,eax
   20af0:	bf 01 00 00 00       	mov    edi,0x1
   20af5:	e8 d6 78 00 00       	call   TURNED_IN_APPLICATION
   20afa:	89 fb                	mov    ebx,edi
   20afc:	89 3d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,edi                      ; fixup: num: 4720, src obj: 1, src ofs: 0x20afe, dst obj: 3, dst ofs: 0x22d4c
   20b02:	89 3d 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,edi           ; fixup: num: 4719, src obj: 1, src ofs: 0x20b04, dst obj: 3, dst ofs: 0x22d50
   20b08:	89 f8                	mov    eax,edi
   20b0a:	89 fa                	mov    edx,edi
   20b0c:	31 f8                	xor    eax,edi
   20b0e:	89 3d 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,edi           ; fixup: num: 4718, src obj: 1, src ofs: 0x20b10, dst obj: 3, dst ofs: 0x22d54
   20b14:	e8 c7 79 00 00       	call   IF_HAS_BEEN_TASKED_WITH_STEALING_BOLT
   20b19:	ba df 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_91                           ; fixup: num: 4717, src obj: 1, src ofs: 0x20b1a, dst obj: 3, dst ofs: 0x57df
   20b1e:	b8 0d 42 00 00       	mov    eax,0x420d
   20b23:	e8 68 9b 04 00       	call   play_wav
   20b28:	ba e8 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_92                           ; fixup: num: 4716, src obj: 1, src ofs: 0x20b29, dst obj: 3, dst ofs: 0x57e8
   20b2d:	b8 1e 42 00 00       	mov    eax,0x421e
   20b32:	31 db                	xor    ebx,ebx
   20b34:	e8 57 9b 04 00       	call   play_wav
   20b39:	b8 b4 02 00 00       	mov    eax,0x2b4
   20b3e:	e8 5d 96 00 00       	call   GetDlgFileString
   20b43:	e8 c8 a3 04 00       	call   get_response
   20b48:	39 f8                	cmp    eax,edi
   20b4a:	75 0e                	jne    talk_to_SERGEANT_AT_ARMS_branch_30
   20b4c:	ba f1 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_93                           ; fixup: num: 4715, src obj: 1, src ofs: 0x20b4d, dst obj: 3, dst ofs: 0x57f1
   20b51:	b8 2a 42 00 00       	mov    eax,0x422a
   20b56:	31 db                	xor    ebx,ebx
   20b58:	eb 25                	jmp    talk_to_SERGEANT_AT_ARMS_branch_31
talk_to_SERGEANT_AT_ARMS_branch_30:
   20b5a:	83 f8 02             	cmp    eax,0x2
   20b5d:	75 25                	jne    talk_to_SERGEANT_AT_ARMS_branch_32
   20b5f:	ba fa 57 00 00       	mov    edx,@obj3:sergeant_cpp_variable_94                           ; fixup: num: 4714, src obj: 1, src ofs: 0x20b60, dst obj: 3, dst ofs: 0x57fa
   20b64:	89 c3                	mov    ebx,eax
   20b66:	b8 2f 42 00 00       	mov    eax,0x422f
   20b6b:	e8 20 9b 04 00       	call   play_wav
   20b70:	bb 03 00 00 00       	mov    ebx,0x3
   20b75:	ba 03 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_95                           ; fixup: num: 4734, src obj: 1, src ofs: 0x20b76, dst obj: 3, dst ofs: 0x5803
   20b7a:	b8 39 42 00 00       	mov    eax,0x4239
talk_to_SERGEANT_AT_ARMS_branch_31:
   20b7f:	e8 0c 9b 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_32:
   20b84:	a1 58 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_3                     ; fixup: num: 4733, src obj: 1, src ofs: 0x20b85, dst obj: 3, dst ofs: 0x22d58
   20b89:	85 c0                	test   eax,eax
   20b8b:	0f 85 08 04 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_49
   20b91:	ba 01 00 00 00       	mov    edx,0x1
   20b96:	b8 0c 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_96                           ; fixup: num: 4732, src obj: 1, src ofs: 0x20b97, dst obj: 3, dst ofs: 0x580c
   20b9b:	89 15 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,edx           ; fixup: num: 4731, src obj: 1, src ofs: 0x20b9d, dst obj: 3, dst ofs: 0x22d58
   20ba1:	e8 da bf 04 00       	call   ExecuteCommand
   20ba6:	e9 ee 03 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_33:
   20bab:	b8 15 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_97                           ; fixup: num: 4730, src obj: 1, src ofs: 0x20bac, dst obj: 3, dst ofs: 0x5815
   20bb0:	e8 db bb 04 00       	call   check_script_flag
   20bb5:	84 c0                	test   al,al
   20bb7:	0f 84 c1 01 00 00    	je     talk_to_SERGEANT_AT_ARMS_branch_38
talk_to_SERGEANT_AT_ARMS_branch_34:
   20bbd:	ba 01 00 00 00       	mov    edx,0x1
   20bc2:	31 c0                	xor    eax,eax
   20bc4:	bf 01 00 00 00       	mov    edi,0x1
   20bc9:	e8 22 78 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   20bce:	31 db                	xor    ebx,ebx
   20bd0:	89 3d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,edi                      ; fixup: num: 4729, src obj: 1, src ofs: 0x20bd2, dst obj: 3, dst ofs: 0x22d4c
   20bd6:	89 fa                	mov    edx,edi
   20bd8:	31 c0                	xor    eax,eax
   20bda:	89 3d 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,edi           ; fixup: num: 4728, src obj: 1, src ofs: 0x20bdc, dst obj: 3, dst ofs: 0x22d50
   20be0:	e8 eb 77 00 00       	call   TURNED_IN_APPLICATION
   20be5:	ba 2e 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_98                           ; fixup: num: 4727, src obj: 1, src ofs: 0x20be6, dst obj: 3, dst ofs: 0x582e
   20bea:	b8 4a 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_99                           ; fixup: num: 4726, src obj: 1, src ofs: 0x20beb, dst obj: 3, dst ofs: 0x584a
   20bef:	e8 1c 23 03 00       	call   set_object
   20bf4:	b8 4e 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_100                          ; fixup: num: 4725, src obj: 1, src ofs: 0x20bf5, dst obj: 3, dst ofs: 0x584e
   20bf9:	e8 92 bb 04 00       	call   check_script_flag
   20bfe:	84 c0                	test   al,al
   20c00:	75 40                	jne    talk_to_SERGEANT_AT_ARMS_branch_35
   20c02:	ba 56 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_101                          ; fixup: num: 4724, src obj: 1, src ofs: 0x20c03, dst obj: 3, dst ofs: 0x5856
   20c07:	b8 cd 41 00 00       	mov    eax,0x41cd
   20c0c:	89 fb                	mov    ebx,edi
   20c0e:	e8 7d 9a 04 00       	call   play_wav
   20c13:	ba 5f 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_102                          ; fixup: num: 4744, src obj: 1, src ofs: 0x20c14, dst obj: 3, dst ofs: 0x585f
   20c18:	b8 92 42 00 00       	mov    eax,0x4292
   20c1d:	31 db                	xor    ebx,ebx
   20c1f:	e8 6c 9a 04 00       	call   play_wav
   20c24:	b8 68 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_103                          ; fixup: num: 4743, src obj: 1, src ofs: 0x20c25, dst obj: 3, dst ofs: 0x5868
   20c29:	89 fa                	mov    edx,edi
   20c2b:	e8 b0 bb 04 00       	call   set_script_flag
   20c30:	b8 70 58 00 00       	mov    eax,@obj3:sergeant_cpp_variable_104                          ; fixup: num: 4742, src obj: 1, src ofs: 0x20c31, dst obj: 3, dst ofs: 0x5870
   20c35:	e8 46 bf 04 00       	call   ExecuteCommand
   20c3a:	31 c0                	xor    eax,eax
   20c3c:	5f                   	pop    edi
   20c3d:	5e                   	pop    esi
   20c3e:	5a                   	pop    edx
   20c3f:	59                   	pop    ecx
   20c40:	5b                   	pop    ebx
   20c41:	c3                   	ret    
talk_to_SERGEANT_AT_ARMS_branch_35:
   20c42:	a1 54 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_2                     ; fixup: num: 4741, src obj: 1, src ofs: 0x20c43, dst obj: 3, dst ofs: 0x22d54
   20c47:	85 c0                	test   eax,eax
   20c49:	0f 85 fe 00 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_37
   20c4f:	ba 79 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_105                          ; fixup: num: 4740, src obj: 1, src ofs: 0x20c50, dst obj: 3, dst ofs: 0x5879
   20c54:	b8 d2 41 00 00       	mov    eax,0x41d2
   20c59:	89 fb                	mov    ebx,edi
   20c5b:	e8 30 9a 04 00       	call   play_wav
   20c60:	b8 b6 02 00 00       	mov    eax,0x2b6
   20c65:	e8 36 95 00 00       	call   GetDlgFileString
   20c6a:	e8 a1 a2 04 00       	call   get_response
   20c6f:	39 f8                	cmp    eax,edi
   20c71:	0f 85 85 00 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_36
   20c77:	ba 82 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_106                          ; fixup: num: 4739, src obj: 1, src ofs: 0x20c78, dst obj: 3, dst ofs: 0x5882
   20c7c:	b8 db 41 00 00       	mov    eax,0x41db
   20c81:	31 db                	xor    ebx,ebx
   20c83:	e8 08 9a 04 00       	call   play_wav
   20c88:	ba 8b 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_107                          ; fixup: num: 4738, src obj: 1, src ofs: 0x20c89, dst obj: 3, dst ofs: 0x588b
   20c8d:	b8 e2 41 00 00       	mov    eax,0x41e2
   20c92:	31 db                	xor    ebx,ebx
   20c94:	e8 f7 99 04 00       	call   play_wav
   20c99:	ba 8e 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_108                          ; fixup: num: 4737, src obj: 1, src ofs: 0x20c9a, dst obj: 3, dst ofs: 0x588e
   20c9e:	b8 e6 41 00 00       	mov    eax,0x41e6
   20ca3:	31 db                	xor    ebx,ebx
   20ca5:	e8 e6 99 04 00       	call   play_wav
   20caa:	bb 02 00 00 00       	mov    ebx,0x2
   20caf:	ba 97 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_109                          ; fixup: num: 4736, src obj: 1, src ofs: 0x20cb0, dst obj: 3, dst ofs: 0x5897
   20cb4:	b8 ec 41 00 00       	mov    eax,0x41ec
   20cb9:	e8 d2 99 04 00       	call   play_wav
   20cbe:	ba 9a 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_110                          ; fixup: num: 4735, src obj: 1, src ofs: 0x20cbf, dst obj: 3, dst ofs: 0x589a
   20cc3:	b8 f0 41 00 00       	mov    eax,0x41f0
   20cc8:	31 db                	xor    ebx,ebx
   20cca:	e8 c1 99 04 00       	call   play_wav
   20ccf:	ba a3 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_111                          ; fixup: num: 4648, src obj: 1, src ofs: 0x20cd0, dst obj: 3, dst ofs: 0x58a3
   20cd4:	b8 f6 41 00 00       	mov    eax,0x41f6
   20cd9:	31 db                	xor    ebx,ebx
   20cdb:	e8 b0 99 04 00       	call   play_wav
   20ce0:	ba a6 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_112                          ; fixup: num: 4752, src obj: 1, src ofs: 0x20ce1, dst obj: 3, dst ofs: 0x58a6
   20ce5:	b8 fa 41 00 00       	mov    eax,0x41fa
   20cea:	31 db                	xor    ebx,ebx
   20cec:	e8 9f 99 04 00       	call   play_wav
   20cf1:	89 3d 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,edi           ; fixup: num: 4751, src obj: 1, src ofs: 0x20cf3, dst obj: 3, dst ofs: 0x22d54
   20cf7:	e9 9d 02 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_36:
   20cfc:	83 f8 02             	cmp    eax,0x2
   20cff:	0f 85 94 02 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_49
   20d05:	bb 03 00 00 00       	mov    ebx,0x3
   20d0a:	ba af 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_113                          ; fixup: num: 4750, src obj: 1, src ofs: 0x20d0b, dst obj: 3, dst ofs: 0x58af
   20d0f:	b8 01 42 00 00       	mov    eax,0x4201
   20d14:	e8 77 99 04 00       	call   play_wav
   20d19:	bb 03 00 00 00       	mov    ebx,0x3
   20d1e:	ba b8 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_114                          ; fixup: num: 4749, src obj: 1, src ofs: 0x20d1f, dst obj: 3, dst ofs: 0x58b8
   20d23:	b8 02 42 00 00       	mov    eax,0x4202
   20d28:	e8 63 99 04 00       	call   play_wav
   20d2d:	bb 02 00 00 00       	mov    ebx,0x2
   20d32:	ba c1 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_115                          ; fixup: num: 4748, src obj: 1, src ofs: 0x20d33, dst obj: 3, dst ofs: 0x58c1
   20d37:	b8 03 42 00 00       	mov    eax,0x4203
   20d3c:	e8 4f 99 04 00       	call   play_wav
   20d41:	31 c0                	xor    eax,eax
   20d43:	a3 54 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_2,eax                     ; fixup: num: 4747, src obj: 1, src ofs: 0x20d44, dst obj: 3, dst ofs: 0x22d54
   20d48:	e9 4c 02 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_37:
   20d4d:	ba ca 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_116                          ; fixup: num: 4746, src obj: 1, src ofs: 0x20d4e, dst obj: 3, dst ofs: 0x58ca
   20d52:	b8 f0 41 00 00       	mov    eax,0x41f0
   20d57:	31 db                	xor    ebx,ebx
   20d59:	e8 32 99 04 00       	call   play_wav
   20d5e:	ba d3 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_117                          ; fixup: num: 4745, src obj: 1, src ofs: 0x20d5f, dst obj: 3, dst ofs: 0x58d3
   20d63:	b8 f6 41 00 00       	mov    eax,0x41f6
   20d68:	31 db                	xor    ebx,ebx
   20d6a:	e8 21 99 04 00       	call   play_wav
   20d6f:	ba d6 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_118                          ; fixup: num: 4657, src obj: 1, src ofs: 0x20d70, dst obj: 3, dst ofs: 0x58d6
   20d74:	b8 fa 41 00 00       	mov    eax,0x41fa
   20d79:	e9 14 02 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_38:
   20d7e:	a1 4c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS                                ; fixup: num: 4656, src obj: 1, src ofs: 0x20d7f, dst obj: 3, dst ofs: 0x22d4c
   20d83:	85 c0                	test   eax,eax
   20d85:	0f 85 74 01 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_44
   20d8b:	ba 01 00 00 00       	mov    edx,0x1
   20d90:	bb 01 00 00 00       	mov    ebx,0x1
   20d95:	e8 56 76 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   20d9a:	ba df 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_119                          ; fixup: num: 4655, src obj: 1, src ofs: 0x20d9b, dst obj: 3, dst ofs: 0x58df
   20d9f:	b8 3f 41 00 00       	mov    eax,0x413f
   20da4:	89 1d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,ebx                      ; fixup: num: 4654, src obj: 1, src ofs: 0x20da6, dst obj: 3, dst ofs: 0x22d4c
   20daa:	bb 02 00 00 00       	mov    ebx,0x2
   20daf:	e8 dc 98 04 00       	call   play_wav
   20db4:	ba e8 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_120                          ; fixup: num: 4653, src obj: 1, src ofs: 0x20db5, dst obj: 3, dst ofs: 0x58e8
   20db9:	b8 44 41 00 00       	mov    eax,0x4144
   20dbe:	31 db                	xor    ebx,ebx
   20dc0:	e8 cb 98 04 00       	call   play_wav
   20dc5:	ba eb 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_121                          ; fixup: num: 4652, src obj: 1, src ofs: 0x20dc6, dst obj: 3, dst ofs: 0x58eb
   20dca:	b8 45 41 00 00       	mov    eax,0x4145
   20dcf:	31 db                	xor    ebx,ebx
   20dd1:	e8 ba 98 04 00       	call   play_wav
   20dd6:	ba f4 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_122                          ; fixup: num: 4651, src obj: 1, src ofs: 0x20dd7, dst obj: 3, dst ofs: 0x58f4
   20ddb:	b8 46 41 00 00       	mov    eax,0x4146
   20de0:	31 db                	xor    ebx,ebx
   20de2:	e8 a9 98 04 00       	call   play_wav
   20de7:	bb 02 00 00 00       	mov    ebx,0x2
   20dec:	ba f7 58 00 00       	mov    edx,@obj3:sergeant_cpp_variable_123                          ; fixup: num: 4650, src obj: 1, src ofs: 0x20ded, dst obj: 3, dst ofs: 0x58f7
   20df1:	b8 48 41 00 00       	mov    eax,0x4148
   20df6:	e8 95 98 04 00       	call   play_wav
   20dfb:	b8 b7 02 00 00       	mov    eax,0x2b7
   20e00:	e8 9b 93 00 00       	call   GetDlgFileString
   20e05:	e8 06 a1 04 00       	call   get_response
   20e0a:	83 f8 01             	cmp    eax,0x1
   20e0d:	75 0e                	jne    talk_to_SERGEANT_AT_ARMS_branch_39
   20e0f:	ba 00 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_124                          ; fixup: num: 4649, src obj: 1, src ofs: 0x20e10, dst obj: 3, dst ofs: 0x5900
   20e14:	b8 53 41 00 00       	mov    eax,0x4153
   20e19:	31 db                	xor    ebx,ebx
   20e1b:	eb 14                	jmp    talk_to_SERGEANT_AT_ARMS_branch_40
talk_to_SERGEANT_AT_ARMS_branch_39:
   20e1d:	83 f8 02             	cmp    eax,0x2
   20e20:	75 14                	jne    talk_to_SERGEANT_AT_ARMS_branch_41
   20e22:	bb 01 00 00 00       	mov    ebx,0x1
   20e27:	ba 09 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_125                          ; fixup: num: 4664, src obj: 1, src ofs: 0x20e28, dst obj: 3, dst ofs: 0x5909
   20e2c:	b8 57 41 00 00       	mov    eax,0x4157
talk_to_SERGEANT_AT_ARMS_branch_40:
   20e31:	e8 5a 98 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_41:
   20e36:	ba 12 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_126                          ; fixup: num: 4663, src obj: 1, src ofs: 0x20e37, dst obj: 3, dst ofs: 0x5912
   20e3b:	b8 5d 41 00 00       	mov    eax,0x415d
   20e40:	31 db                	xor    ebx,ebx
   20e42:	e8 49 98 04 00       	call   play_wav
   20e47:	b8 b8 02 00 00       	mov    eax,0x2b8
   20e4c:	e8 4f 93 00 00       	call   GetDlgFileString
   20e51:	e8 ba a0 04 00       	call   get_response
   20e56:	83 f8 01             	cmp    eax,0x1
   20e59:	75 73                	jne    talk_to_SERGEANT_AT_ARMS_branch_43
   20e5b:	ba 1b 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_127                          ; fixup: num: 4662, src obj: 1, src ofs: 0x20e5c, dst obj: 3, dst ofs: 0x591b
   20e60:	89 c3                	mov    ebx,eax
   20e62:	b8 68 41 00 00       	mov    eax,0x4168
   20e67:	e8 24 98 04 00       	call   play_wav
   20e6c:	ba 24 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_128                          ; fixup: num: 4661, src obj: 1, src ofs: 0x20e6d, dst obj: 3, dst ofs: 0x5924
   20e71:	b8 6c 41 00 00       	mov    eax,0x416c
   20e76:	31 db                	xor    ebx,ebx
   20e78:	e8 13 98 04 00       	call   play_wav
   20e7d:	bb 01 00 00 00       	mov    ebx,0x1
   20e82:	ba 27 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_129                          ; fixup: num: 4660, src obj: 1, src ofs: 0x20e83, dst obj: 3, dst ofs: 0x5927
   20e87:	b8 70 41 00 00       	mov    eax,0x4170
   20e8c:	e8 ff 97 04 00       	call   play_wav
   20e91:	b8 b9 02 00 00       	mov    eax,0x2b9
   20e96:	e8 05 93 00 00       	call   GetDlgFileString
   20e9b:	e8 70 a0 04 00       	call   get_response
   20ea0:	83 f8 01             	cmp    eax,0x1
   20ea3:	75 0f                	jne    talk_to_SERGEANT_AT_ARMS_branch_42
   20ea5:	ba 30 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_130                          ; fixup: num: 4659, src obj: 1, src ofs: 0x20ea6, dst obj: 3, dst ofs: 0x5930
   20eaa:	b8 7c 41 00 00       	mov    eax,0x417c
   20eaf:	e9 de 00 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_42:
   20eb4:	83 f8 02             	cmp    eax,0x2
   20eb7:	0f 85 dc 00 00 00    	jne    talk_to_SERGEANT_AT_ARMS_branch_49
   20ebd:	ba 39 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_131                          ; fixup: num: 4658, src obj: 1, src ofs: 0x20ebe, dst obj: 3, dst ofs: 0x5939
   20ec2:	89 c3                	mov    ebx,eax
   20ec4:	b8 82 41 00 00       	mov    eax,0x4182
   20ec9:	e9 c6 00 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_48
talk_to_SERGEANT_AT_ARMS_branch_43:
   20ece:	ba 42 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_132                          ; fixup: num: 4673, src obj: 1, src ofs: 0x20ecf, dst obj: 3, dst ofs: 0x5942
   20ed3:	b8 88 41 00 00       	mov    eax,0x4188
   20ed8:	31 db                	xor    ebx,ebx
   20eda:	e8 b1 97 04 00       	call   play_wav
   20edf:	ba 4b 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_133                          ; fixup: num: 4672, src obj: 1, src ofs: 0x20ee0, dst obj: 3, dst ofs: 0x594b
   20ee4:	b8 8e 41 00 00       	mov    eax,0x418e
   20ee9:	31 db                	xor    ebx,ebx
   20eeb:	e8 a0 97 04 00       	call   play_wav
   20ef0:	ba 4e 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_134                          ; fixup: num: 4671, src obj: 1, src ofs: 0x20ef1, dst obj: 3, dst ofs: 0x594e
   20ef5:	b8 92 41 00 00       	mov    eax,0x4192
   20efa:	e9 93 00 00 00       	jmp    talk_to_SERGEANT_AT_ARMS_branch_47
talk_to_SERGEANT_AT_ARMS_branch_44:
   20eff:	b9 01 00 00 00       	mov    ecx,0x1
   20f04:	ba 57 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_135                          ; fixup: num: 4670, src obj: 1, src ofs: 0x20f05, dst obj: 3, dst ofs: 0x5957
   20f09:	b8 ac 41 00 00       	mov    eax,0x41ac
   20f0e:	31 db                	xor    ebx,ebx
   20f10:	89 0d 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,ecx                      ; fixup: num: 4669, src obj: 1, src ofs: 0x20f12, dst obj: 3, dst ofs: 0x22d4c
   20f16:	e8 75 97 04 00       	call   play_wav
   20f1b:	b8 60 59 00 00       	mov    eax,@obj3:sergeant_cpp_variable_136                          ; fixup: num: 4668, src obj: 1, src ofs: 0x20f1c, dst obj: 3, dst ofs: 0x5960
   20f20:	e8 6b b8 04 00       	call   check_script_flag
   20f25:	84 c0                	test   al,al
   20f27:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_45
   20f29:	ba 6f 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_137                          ; fixup: num: 4667, src obj: 1, src ofs: 0x20f2a, dst obj: 3, dst ofs: 0x596f
   20f2e:	b8 b0 41 00 00       	mov    eax,0x41b0
   20f33:	31 db                	xor    ebx,ebx
   20f35:	e8 56 97 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_45:
   20f3a:	bb 03 00 00 00       	mov    ebx,0x3
   20f3f:	ba 72 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_138                          ; fixup: num: 4666, src obj: 1, src ofs: 0x20f40, dst obj: 3, dst ofs: 0x5972
   20f44:	b8 b4 41 00 00       	mov    eax,0x41b4
   20f49:	e8 42 97 04 00       	call   play_wav
   20f4e:	b8 bb 02 00 00       	mov    eax,0x2bb
   20f53:	e8 48 92 00 00       	call   GetDlgFileString
   20f58:	e8 b3 9f 04 00       	call   get_response
   20f5d:	83 f8 01             	cmp    eax,0x1
   20f60:	75 21                	jne    talk_to_SERGEANT_AT_ARMS_branch_46
   20f62:	bb 02 00 00 00       	mov    ebx,0x2
   20f67:	ba 7b 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_139                          ; fixup: num: 4665, src obj: 1, src ofs: 0x20f68, dst obj: 3, dst ofs: 0x597b
   20f6c:	b8 bf 41 00 00       	mov    eax,0x41bf
   20f71:	be 01 00 00 00       	mov    esi,0x1
   20f76:	e8 15 97 04 00       	call   play_wav
   20f7b:	89 35 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,esi           ; fixup: num: 4684, src obj: 1, src ofs: 0x20f7d, dst obj: 3, dst ofs: 0x22d50
   20f81:	eb 16                	jmp    talk_to_SERGEANT_AT_ARMS_branch_49
talk_to_SERGEANT_AT_ARMS_branch_46:
   20f83:	83 f8 02             	cmp    eax,0x2
   20f86:	75 11                	jne    talk_to_SERGEANT_AT_ARMS_branch_49
   20f88:	ba 84 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_140                          ; fixup: num: 4683, src obj: 1, src ofs: 0x20f89, dst obj: 3, dst ofs: 0x5984
   20f8d:	b8 c4 41 00 00       	mov    eax,0x41c4
talk_to_SERGEANT_AT_ARMS_branch_47:
   20f92:	31 db                	xor    ebx,ebx
talk_to_SERGEANT_AT_ARMS_branch_48:
   20f94:	e8 f7 96 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_49:
   20f99:	b8 8d 59 00 00       	mov    eax,@obj3:sergeant_cpp_variable_141                          ; fixup: num: 4682, src obj: 1, src ofs: 0x20f9a, dst obj: 3, dst ofs: 0x598d
   20f9e:	e8 ed b7 04 00       	call   check_script_flag
   20fa3:	84 c0                	test   al,al
   20fa5:	74 24                	je     talk_to_SERGEANT_AT_ARMS_branch_51
   20fa7:	83 3d 70 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_9,0x0           ; fixup: num: 4681, src obj: 1, src ofs: 0x20fa9, dst obj: 3, dst ofs: 0x22d70
   20fae:	75 1b                	jne    talk_to_SERGEANT_AT_ARMS_branch_51
   20fb0:	b8 01 00 00 00       	mov    eax,0x1
   20fb5:	ba 93 59 00 00       	mov    edx,@obj3:sergeant_cpp_variable_142                          ; fixup: num: 4680, src obj: 1, src ofs: 0x20fb6, dst obj: 3, dst ofs: 0x5993
   20fba:	a3 70 2d 02 00       	mov    ds:@obj3:SERGEANT_AT_ARMS_variable_9,eax                     ; fixup: num: 4679, src obj: 1, src ofs: 0x20fbb, dst obj: 3, dst ofs: 0x22d70
   20fbf:	89 c3                	mov    ebx,eax
   20fc1:	b8 24 43 00 00       	mov    eax,0x4324
talk_to_SERGEANT_AT_ARMS_branch_50:
   20fc6:	e8 c5 96 04 00       	call   play_wav
talk_to_SERGEANT_AT_ARMS_branch_51:
   20fcb:	31 c0                	xor    eax,eax
   20fcd:	5f                   	pop    edi
   20fce:	5e                   	pop    esi
   20fcf:	5a                   	pop    edx
   20fd0:	59                   	pop    ecx
   20fd1:	5b                   	pop    ebx
   20fd2:	c3                   	ret    
talk_to_SERGEANT_AT_ARMS_branch_52:
   20fd3:	89 15 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,edx                      ; fixup: num: 4678, src obj: 1, src ofs: 0x20fd5, dst obj: 3, dst ofs: 0x22d4c
   20fd9:	a1 4c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS                                ; fixup: num: 4677, src obj: 1, src ofs: 0x20fda, dst obj: 3, dst ofs: 0x22d4c
   20fde:	c3                   	ret    
   20fdf:	90                   	nop

;-------------------------------------------------
;  Function 'SERGEANT_TALK_1'                    -
;-------------------------------------------------
SERGEANT_TALK_1:
   20fe0:	85 c0                	test   eax,eax
   20fe2:	74 ef                	je     talk_to_SERGEANT_AT_ARMS_branch_52
   20fe4:	a1 4c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS                                ; fixup: num: 4676, src obj: 1, src ofs: 0x20fe5, dst obj: 3, dst ofs: 0x22d4c
   20fe9:	c3                   	ret    
SERGEANT_TALK_1_branch_1:
   20fea:	89 15 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,edx           ; fixup: num: 4675, src obj: 1, src ofs: 0x20fec, dst obj: 3, dst ofs: 0x22d50
   20ff0:	a1 50 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_1                     ; fixup: num: 4674, src obj: 1, src ofs: 0x20ff1, dst obj: 3, dst ofs: 0x22d50
   20ff5:	c3                   	ret    
   20ff6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   20ffc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_2'                    -
;-------------------------------------------------
SERGEANT_TALK_2:
   21000:	85 c0                	test   eax,eax
   21002:	74 e6                	je     SERGEANT_TALK_1_branch_1
   21004:	a1 50 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_1                     ; fixup: num: 5072, src obj: 1, src ofs: 0x21005, dst obj: 3, dst ofs: 0x22d50
   21009:	c3                   	ret    
SERGEANT_TALK_2_branch_1:
   2100a:	89 15 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,edx           ; fixup: num: 5071, src obj: 1, src ofs: 0x2100c, dst obj: 3, dst ofs: 0x22d54
   21010:	a1 54 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_2                     ; fixup: num: 5070, src obj: 1, src ofs: 0x21011, dst obj: 3, dst ofs: 0x22d54
   21015:	c3                   	ret    
   21016:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2101c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_3'                    -
;-------------------------------------------------
SERGEANT_TALK_3:
   21020:	85 c0                	test   eax,eax
   21022:	74 e6                	je     SERGEANT_TALK_2_branch_1
   21024:	a1 54 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_2                     ; fixup: num: 5089, src obj: 1, src ofs: 0x21025, dst obj: 3, dst ofs: 0x22d54
   21029:	c3                   	ret    
SERGEANT_TALK_3_branch_1:
   2102a:	89 15 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,edx           ; fixup: num: 5088, src obj: 1, src ofs: 0x2102c, dst obj: 3, dst ofs: 0x22d58
   21030:	a1 58 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_3                     ; fixup: num: 5087, src obj: 1, src ofs: 0x21031, dst obj: 3, dst ofs: 0x22d58
   21035:	c3                   	ret    
   21036:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2103c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_4'                    -
;-------------------------------------------------
SERGEANT_TALK_4:
   21040:	85 c0                	test   eax,eax
   21042:	74 e6                	je     SERGEANT_TALK_3_branch_1
   21044:	a1 58 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_3                     ; fixup: num: 5086, src obj: 1, src ofs: 0x21045, dst obj: 3, dst ofs: 0x22d58
   21049:	c3                   	ret    
SERGEANT_TALK_4_branch_1:
   2104a:	89 15 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,edx           ; fixup: num: 5085, src obj: 1, src ofs: 0x2104c, dst obj: 3, dst ofs: 0x22d5c
   21050:	a1 5c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_4                     ; fixup: num: 5084, src obj: 1, src ofs: 0x21051, dst obj: 3, dst ofs: 0x22d5c
   21055:	c3                   	ret    
   21056:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2105c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_5'                    -
;-------------------------------------------------
SERGEANT_TALK_5:
   21060:	85 c0                	test   eax,eax
   21062:	74 e6                	je     SERGEANT_TALK_4_branch_1
   21064:	a1 5c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_4                     ; fixup: num: 5083, src obj: 1, src ofs: 0x21065, dst obj: 3, dst ofs: 0x22d5c
   21069:	c3                   	ret    
SERGEANT_TALK_5_branch_1:
   2106a:	89 15 60 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_5,edx           ; fixup: num: 5082, src obj: 1, src ofs: 0x2106c, dst obj: 3, dst ofs: 0x22d60
   21070:	a1 60 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_5                     ; fixup: num: 5081, src obj: 1, src ofs: 0x21071, dst obj: 3, dst ofs: 0x22d60
   21075:	c3                   	ret    
   21076:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2107c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_6'                    -
;-------------------------------------------------
SERGEANT_TALK_6:
   21080:	85 c0                	test   eax,eax
   21082:	74 e6                	je     SERGEANT_TALK_5_branch_1
   21084:	a1 60 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_5                     ; fixup: num: 5080, src obj: 1, src ofs: 0x21085, dst obj: 3, dst ofs: 0x22d60
   21089:	c3                   	ret    
SERGEANT_TALK_6_branch_1:
   2108a:	89 15 64 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_6,edx           ; fixup: num: 5079, src obj: 1, src ofs: 0x2108c, dst obj: 3, dst ofs: 0x22d64
   21090:	a1 64 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_6                     ; fixup: num: 5078, src obj: 1, src ofs: 0x21091, dst obj: 3, dst ofs: 0x22d64
   21095:	c3                   	ret    
   21096:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2109c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_7'                    -
;-------------------------------------------------
SERGEANT_TALK_7:
   210a0:	85 c0                	test   eax,eax
   210a2:	74 e6                	je     SERGEANT_TALK_6_branch_1
   210a4:	a1 64 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_6                     ; fixup: num: 5077, src obj: 1, src ofs: 0x210a5, dst obj: 3, dst ofs: 0x22d64
   210a9:	c3                   	ret    
SERGEANT_TALK_7_branch_1:
   210aa:	89 15 68 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_7,edx           ; fixup: num: 5076, src obj: 1, src ofs: 0x210ac, dst obj: 3, dst ofs: 0x22d68
   210b0:	a1 68 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_7                     ; fixup: num: 5075, src obj: 1, src ofs: 0x210b1, dst obj: 3, dst ofs: 0x22d68
   210b5:	c3                   	ret    
   210b6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   210bc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_8'                    -
;-------------------------------------------------
SERGEANT_TALK_8:
   210c0:	85 c0                	test   eax,eax
   210c2:	74 e6                	je     SERGEANT_TALK_7_branch_1
   210c4:	a1 68 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_7                     ; fixup: num: 5074, src obj: 1, src ofs: 0x210c5, dst obj: 3, dst ofs: 0x22d68
   210c9:	c3                   	ret    
SERGEANT_TALK_8_branch_1:
   210ca:	89 15 6c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_8,edx           ; fixup: num: 5073, src obj: 1, src ofs: 0x210cc, dst obj: 3, dst ofs: 0x22d6c
   210d0:	a1 6c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_8                     ; fixup: num: 5101, src obj: 1, src ofs: 0x210d1, dst obj: 3, dst ofs: 0x22d6c
   210d5:	c3                   	ret    
   210d6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   210dc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_TALK_9'                    -
;-------------------------------------------------
SERGEANT_TALK_9:
   210e0:	85 c0                	test   eax,eax
   210e2:	74 e6                	je     SERGEANT_TALK_8_branch_1
   210e4:	a1 6c 2d 02 00       	mov    eax,ds:@obj3:SERGEANT_AT_ARMS_variable_8                     ; fixup: num: 5100, src obj: 1, src ofs: 0x210e5, dst obj: 3, dst ofs: 0x22d6c
   210e9:	c3                   	ret    
   210ea:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'SERGEANT_AT_ARMS_initialize'        -
;-------------------------------------------------
SERGEANT_AT_ARMS_initialize:
   210f0:	52                   	push   edx
   210f1:	31 d2                	xor    edx,edx
   210f3:	89 15 4c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS,edx                      ; fixup: num: 5099, src obj: 1, src ofs: 0x210f5, dst obj: 3, dst ofs: 0x22d4c
   210f9:	89 15 50 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_1,edx           ; fixup: num: 5098, src obj: 1, src ofs: 0x210fb, dst obj: 3, dst ofs: 0x22d50
   210ff:	89 15 54 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_2,edx           ; fixup: num: 5097, src obj: 1, src ofs: 0x21101, dst obj: 3, dst ofs: 0x22d54
   21105:	89 15 58 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_3,edx           ; fixup: num: 5096, src obj: 1, src ofs: 0x21107, dst obj: 3, dst ofs: 0x22d58
   2110b:	89 15 5c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_4,edx           ; fixup: num: 5095, src obj: 1, src ofs: 0x2110d, dst obj: 3, dst ofs: 0x22d5c
   21111:	89 15 60 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_5,edx           ; fixup: num: 5094, src obj: 1, src ofs: 0x21113, dst obj: 3, dst ofs: 0x22d60
   21117:	89 15 64 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_6,edx           ; fixup: num: 5093, src obj: 1, src ofs: 0x21119, dst obj: 3, dst ofs: 0x22d64
   2111d:	89 15 68 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_7,edx           ; fixup: num: 5092, src obj: 1, src ofs: 0x2111f, dst obj: 3, dst ofs: 0x22d68
   21123:	89 15 6c 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_8,edx           ; fixup: num: 5091, src obj: 1, src ofs: 0x21125, dst obj: 3, dst ofs: 0x22d6c
   21129:	89 15 70 2d 02 00    	mov    DWORD PTR ds:@obj3:SERGEANT_AT_ARMS_variable_9,edx           ; fixup: num: 5090, src obj: 1, src ofs: 0x2112b, dst obj: 3, dst ofs: 0x22d70
   2112f:	5a                   	pop    edx
   21130:	c3                   	ret    
;-------------------------------------------------
;  Bad code 42 (zero after ret):                 -
;-------------------------------------------------
;  2112f:	5a                   	pop    edx
;  21130:	c3                   	ret    
;  21131:	00 00                	add    BYTE PTR [eax],al
;  21133:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
   21131:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 42                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 47 (D:\SOURCE\sergeant.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 47: D:\SOURCE\sergeant.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
sergeant_cpp_variable_1:
    5428:	42 41 52 42 45 52 5f 50 4f 4c 45 00 	db     "BARBER_POLE",0x00
sergeant_cpp_variable_2:
    5434:	42 4f 4c 54 43 4c 54 48 00 	db     "BOLTCLTH",0x00
sergeant_cpp_variable_3:
    543d:	43 4f 4d 50 4c 45 54 45 44 5f 4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "COMPLETED_LODGE_APPLICATION",0x00
sergeant_cpp_variable_4:
    5459:	49 4e 56 49 54 45 00 	db     "INVITE",0x00
sergeant_cpp_variable_5:
    5460:	52 45 4d 41 49 4e 53 00 	db     "REMAINS",0x00
sergeant_cpp_variable_6:
    5468:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_7:
    5471:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
sergeant_cpp_variable_8:
    5487:	52 45 4d 41 49 4e 53 00 	db     "REMAINS",0x00
sergeant_cpp_variable_9:
    548f:	52 41 48 00          	db     "RAH",0x00
sergeant_cpp_variable_10:
    5493:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_11:
    549c:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_12:
    54a5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    54a6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    54a7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_13:
    54a8:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_14:
    54b1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    54b2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    54b3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_15:
    54b4:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_16:
    54bd:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_17:
    54c6:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_18:
    54cf:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_19:
    54d8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    54d9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    54da:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_20:
    54db:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_21:
    54e4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    54e5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    54e6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_22:
    54e7:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_23:
    54f0:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
sergeant_cpp_variable_24:
    5502:	49 4e 56 49 54 45 00 	db     "INVITE",0x00
sergeant_cpp_variable_25:
    5509:	54 41 4b 45 4e 5f 49 4e 56 49 54 45 5f 54 4f 5f 53 45 52 47 45 41 4e 54 00 	db     "TAKEN_INVITE_TO_SERGEANT",0x00
sergeant_cpp_variable_26:
    5522:	53 54 45 46 53 4b 55 4c 4c 00 	db     "STEFSKULL",0x00
sergeant_cpp_variable_27:
    552c:	53 54 5f 42 45 44 52 4d 00 	db     "ST_BEDRM",0x00
sergeant_cpp_variable_28:
    5535:	49 4e 56 49 54 45 00 	db     "INVITE",0x00
sergeant_cpp_variable_29:
    553c:	52 41 48 00          	db     "RAH",0x00
sergeant_cpp_variable_30:
    5540:	54 41 4b 45 4e 5f 49 4e 56 49 54 45 5f 54 4f 5f 53 45 52 47 45 41 4e 54 00 	db     "TAKEN_INVITE_TO_SERGEANT",0x00
sergeant_cpp_variable_31:
    5559:	4e 45 45 44 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "NEED_REMAINS_FOR_LODGE",0x00
sergeant_cpp_variable_32:
    5570:	44 57 41 59 4e 45 5f 53 54 5f 42 45 44 52 4d 00 	db     "DWAYNE_ST_BEDRM",0x00
sergeant_cpp_variable_33:
    5580:	4d 52 53 5f 50 4f 54 54 53 5f 53 54 5f 42 45 44 52 4d 00 	db     "MRS_POTTS_ST_BEDRM",0x00
sergeant_cpp_variable_34:
    5593:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
sergeant_cpp_variable_35:
    559d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    559e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    559f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_36:
    55a0:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_37:
    55a9:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_38:
    55b2:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_39:
    55bb:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_40:
    55c4:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
sergeant_cpp_variable_41:
    55d1:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_42:
    55da:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_43:
    55e3:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_44:
    55ec:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_45:
    55f5:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_46:
    55fe:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_47:
    5607:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_48:
    5610:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_49:
    5619:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    561a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    561b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_50:
    561c:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_51:
    5625:	49 4e 56 49 54 45 00 	db     "INVITE",0x00
sergeant_cpp_variable_52:
    562c:	53 54 5f 42 45 44 52 4d 00 	db     "ST_BEDRM",0x00
sergeant_cpp_variable_53:
    5635:	53 54 45 46 53 4b 55 4c 4c 00 	db     "STEFSKULL",0x00
sergeant_cpp_variable_54:
    563f:	53 54 5f 42 45 44 52 4d 00 	db     "ST_BEDRM",0x00
sergeant_cpp_variable_55:
    5648:	44 57 41 59 4e 45 5f 53 54 5f 42 45 44 52 4d 00 	db     "DWAYNE_ST_BEDRM",0x00
sergeant_cpp_variable_56:
    5658:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
sergeant_cpp_variable_57:
    566a:	53 54 45 50 48 41 4e 49 45 5f 44 45 41 44 5f 49 4e 5f 48 41 4c 4c 5f 4a 55 53 54 5f 4f 55 54 53 49 44 45 00 	db     "STEPHANIE_DEAD_IN_HALL_JUST_OUTSIDE",0x00
sergeant_cpp_variable_58:
    568e:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
sergeant_cpp_variable_59:
    56a1:	42 41 52 42 45 52 5f 50 4f 4c 45 00 	db     "BARBER_POLE",0x00
sergeant_cpp_variable_60:
    56ad:	52 41 48 00          	db     "RAH",0x00
sergeant_cpp_variable_61:
    56b1:	41 53 53 49 47 4e 45 44 5f 44 4e 41 5f 54 41 53 4b 00 	db     "ASSIGNED_DNA_TASK",0x00
sergeant_cpp_variable_62:
    56c3:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_63:
    56cc:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_64:
    56d5:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_65:
    56de:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_66:
    56e7:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_67:
    56f0:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_68:
    56f9:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_69:
    5702:	50 43 5f 4b 49 4c 4c 45 44 5f 41 4e 59 4f 4e 45 00 	db     "PC_KILLED_ANYONE",0x00
sergeant_cpp_variable_70:
    5713:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_71:
    571c:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_72:
    5725:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
sergeant_cpp_variable_73:
    5739:	42 4f 4c 54 43 4c 54 48 00 	db     "BOLTCLTH",0x00
sergeant_cpp_variable_74:
    5742:	52 41 48 00          	db     "RAH",0x00
sergeant_cpp_variable_75:
    5746:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_76:
    574f:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_77:
    5758:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_78:
    5761:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_79:
    576a:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_80:
    5773:	42 4f 4c 54 43 4c 54 48 00 	db     "BOLTCLTH",0x00
sergeant_cpp_variable_81:
    577c:	52 61 48 00          	db     "RaH",0x00
sergeant_cpp_variable_82:
    5780:	46 49 52 45 4d 45 4e 5f 53 55 49 43 49 44 45 00 	db     "FIREMEN_SUICIDE",0x00
sergeant_cpp_variable_83:
    5790:	41 53 53 49 47 4e 45 44 5f 50 4f 4c 45 5f 54 41 53 4b 00 	db     "ASSIGNED_POLE_TASK",0x00
sergeant_cpp_variable_84:
    57a3:	53 4c 41 53 48 00    	db     "SLASH",0x00
sergeant_cpp_variable_85:
    57a9:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sergeant_cpp_variable_86:
    57b0:	53 4c 41 53 48 00    	db     "SLASH",0x00
sergeant_cpp_variable_87:
    57b6:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
sergeant_cpp_variable_88:
    57bf:	53 4c 41 53 48 00    	db     "SLASH",0x00
sergeant_cpp_variable_89:
    57c5:	46 49 52 45 4d 41 4e 32 00 	db     "FIREMAN2",0x00
sergeant_cpp_variable_90:
    57ce:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
sergeant_cpp_variable_91:
    57df:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_92:
    57e8:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_93:
    57f1:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_94:
    57fa:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_95:
    5803:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_96:
    580c:	47 4f 5f 44 41 59 5f 33 00 	db     "GO_DAY_3",0x00
sergeant_cpp_variable_97:
    5815:	48 41 56 45 5f 43 4f 4d 50 4c 45 54 45 44 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_COMPLETED_LODGE_APP",0x00
sergeant_cpp_variable_98:
    582e:	43 4f 4d 50 4c 45 54 45 44 5f 4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "COMPLETED_LODGE_APPLICATION",0x00
sergeant_cpp_variable_99:
    584a:	52 41 48 00          	db     "RAH",0x00
sergeant_cpp_variable_100:
    584e:	51 55 45 53 54 5f 31 00 	db     "QUEST_1",0x00
sergeant_cpp_variable_101:
    5856:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_102:
    585f:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_103:
    5868:	51 55 45 53 54 5f 31 00 	db     "QUEST_1",0x00
sergeant_cpp_variable_104:
    5870:	47 4f 5f 44 41 59 5f 32 00 	db     "GO_DAY_2",0x00
sergeant_cpp_variable_105:
    5879:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_106:
    5882:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_107:
    588b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    588c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    588d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_108:
    588e:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_109:
    5897:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5898:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5899:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_110:
    589a:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_111:
    58a3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    58a4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    58a5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_112:
    58a6:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_113:
    58af:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_114:
    58b8:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_115:
    58c1:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_116:
    58ca:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_117:
    58d3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    58d4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    58d5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_118:
    58d6:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_119:
    58df:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_120:
    58e8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    58e9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    58ea:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_121:
    58eb:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_122:
    58f4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    58f5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    58f6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_123:
    58f7:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_124:
    5900:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_125:
    5909:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_126:
    5912:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_127:
    591b:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_128:
    5924:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5925:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5926:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_129:
    5927:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_130:
    5930:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_131:
    5939:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_132:
    5942:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_133:
    594b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    594c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    594d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_134:
    594e:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_135:
    5957:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_136:
    5960:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
sergeant_cpp_variable_137:
    596f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5970:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5971:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sergeant_cpp_variable_138:
    5972:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_139:
    597b:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_140:
    5984:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00
sergeant_cpp_variable_141:
    598d:	44 41 59 5f 35 00    	db     "DAY_5",0x00
sergeant_cpp_variable_142:
    5993:	53 45 52 47 45 41 4e 54 00 	db     "SERGEANT",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 47 (D:\SOURCE\sergeant.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 47: D:\SOURCE\sergeant.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
SERGEANT_AT_ARMS:                                                                                   ; access size: DWORD
   22d4c:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_1:                                                                        ; access size: DWORD
   22d50:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_2:                                                                        ; access size: DWORD
   22d54:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_3:                                                                        ; access size: DWORD
   22d58:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_4:                                                                        ; access size: DWORD
   22d5c:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_5:                                                                        ; access size: DWORD
   22d60:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_6:                                                                        ; access size: DWORD
   22d64:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_7:                                                                        ; access size: DWORD
   22d68:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_8:                                                                        ; access size: DWORD
   22d6c:	00 00 00 00          	dd     0x00000000
SERGEANT_AT_ARMS_variable_9:                                                                        ; access size: DWORD
   22d70:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 47 (D:\SOURCE\sergeant.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------