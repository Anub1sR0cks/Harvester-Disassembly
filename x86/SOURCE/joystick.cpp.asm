;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init'                           -
;-------------------------------------------------
.fn_init:
    4490:	52                   	push   edx
    4491:	b8 6c 2b 01 00       	mov    eax,@obj3:joystick_cpp_variable_18                           ; fixup: num: 297, src obj: 1, src ofs: 0x4492, dst obj: 3, dst ofs: 0x12b6c
    4496:	e8 37 dc 06 00       	call   __wcpp_2_mod_register__
    449b:	b8 74 7e 01 00       	mov    eax,@obj3:joystick_1                                         ; fixup: num: 296, src obj: 1, src ofs: 0x449c, dst obj: 3, dst ofs: 0x17e74
    44a0:	ba 01 00 00 00       	mov    edx,0x1
    44a5:	e8 96 00 00 00       	call   W?$ct:joystick$n()_
    44aa:	89 15 74 2b 01 00    	mov    DWORD PTR ds:@obj3:joystick_cpp_variable_19,edx              ; fixup: num: 295, src obj: 1, src ofs: 0x44ac, dst obj: 3, dst ofs: 0x12b74
.fn_init_branch_1:
    44b0:	5a                   	pop    edx
    44b1:	c3                   	ret    
    44b2:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    44b8:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    44be:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'JOYSTICK_update_raw'                -
;-------------------------------------------------
JOYSTICK_update_raw:
    44c0:	53                   	push   ebx
    44c1:	52                   	push   edx
    44c2:	89 c3                	mov    ebx,eax
    44c4:	80 38 00             	cmp    BYTE PTR [eax],0x0
    44c7:	74 6b                	je     JOYSTICK_update_raw_branch_4
    44c9:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
    44d0:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
    44d3:	ba 01 02 00 00       	mov    edx,0x201
    44d8:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
    44db:	30 c0                	xor    al,al
    44dd:	fa                   	cli    
    44de:	ee                   	out    dx,al
JOYSTICK_update_raw_branch_1:
    44df:	ba 01 02 00 00       	mov    edx,0x201
    44e4:	29 c0                	sub    eax,eax
    44e6:	ec                   	in     al,dx
    44e7:	88 c4                	mov    ah,al
    44e9:	31 d2                	xor    edx,edx
    44eb:	24 01                	and    al,0x1
    44ed:	88 c2                	mov    dl,al
    44ef:	85 d2                	test   edx,edx
    44f1:	74 03                	je     JOYSTICK_update_raw_branch_2
    44f3:	ff 43 04             	inc    DWORD PTR [ebx+0x4]
JOYSTICK_update_raw_branch_2:
    44f6:	88 e0                	mov    al,ah
    44f8:	31 d2                	xor    edx,edx
    44fa:	24 02                	and    al,0x2
    44fc:	88 c2                	mov    dl,al
    44fe:	85 d2                	test   edx,edx
    4500:	74 03                	je     JOYSTICK_update_raw_branch_3
    4502:	ff 43 08             	inc    DWORD PTR [ebx+0x8]
JOYSTICK_update_raw_branch_3:
    4505:	88 e0                	mov    al,ah
    4507:	31 d2                	xor    edx,edx
    4509:	24 03                	and    al,0x3
    450b:	88 c2                	mov    dl,al
    450d:	85 d2                	test   edx,edx
    450f:	75 ce                	jne    JOYSTICK_update_raw_branch_1
    4511:	88 e2                	mov    dl,ah
    4513:	80 e2 10             	and    dl,0x10
    4516:	fb                   	sti    
    4517:	fc                   	cld    
    4518:	85 d2                	test   edx,edx
    451a:	0f 94 c0             	sete   al
    451d:	88 43 01             	mov    BYTE PTR [ebx+0x1],al
    4520:	88 e0                	mov    al,ah
    4522:	24 20                	and    al,0x20
    4524:	25 ff 00 00 00       	and    eax,0xff
    4529:	0f 94 c0             	sete   al
    452c:	25 ff 00 00 00       	and    eax,0xff
    4531:	88 43 02             	mov    BYTE PTR [ebx+0x2],al
JOYSTICK_update_raw_branch_4:
    4534:	5a                   	pop    edx
    4535:	5b                   	pop    ebx
    4536:	c3                   	ret    
    4537:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    453d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'W?$ct:joystick$n()_'                -
;-------------------------------------------------
W?$ct:joystick$n()_:
    4540:	53                   	push   ebx
    4541:	51                   	push   ecx
    4542:	52                   	push   edx
    4543:	83 ec 1c             	sub    esp,0x1c
    4546:	89 c1                	mov    ecx,eax
    4548:	c6 40 02 00          	mov    BYTE PTR [eax+0x2],0x0
    454c:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    4553:	c7 40 18 00 00 00 00 	mov    DWORD PTR [eax+0x18],0x0
    455a:	8a 50 02             	mov    dl,BYTE PTR [eax+0x2]
    455d:	88 50 01             	mov    BYTE PTR [eax+0x1],dl
    4560:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    4563:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    4566:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
    4569:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
    456c:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    456f:	89 e3                	mov    ebx,esp
    4571:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    4574:	b4 84                	mov    ah,0x84
    4576:	ba 01 00 00 00       	mov    edx,0x1
    457b:	88 64 24 01          	mov    BYTE PTR [esp+0x1],ah
    457f:	66 89 54 24 0c       	mov    WORD PTR [esp+0xc],dx
    4584:	89 e2                	mov    edx,esp
    4586:	b8 15 00 00 00       	mov    eax,0x15
    458b:	e8 0c cb 06 00       	call   int386_
    4590:	66 83 3c 24 00       	cmp    WORD PTR [esp],0x0
    4595:	75 08                	jne    W?$ct:joystick$n()__branch_1
    4597:	66 83 7c 24 04 00    	cmp    WORD PTR [esp+0x4],0x0
    459d:	74 05                	je     W?$ct:joystick$n()__branch_2
W?$ct:joystick$n()__branch_1:
    459f:	c6 01 01             	mov    BYTE PTR [ecx],0x1
    45a2:	eb 03                	jmp    W?$ct:joystick$n()__branch_3
W?$ct:joystick$n()__branch_2:
    45a4:	c6 01 00             	mov    BYTE PTR [ecx],0x0
W?$ct:joystick$n()__branch_3:
    45a7:	89 c8                	mov    eax,ecx
    45a9:	83 c4 1c             	add    esp,0x1c
    45ac:	5a                   	pop    edx
    45ad:	59                   	pop    ecx
    45ae:	5b                   	pop    ebx
    45af:	90                   	nop

;-------------------------------------------------
;  Function 'W?$dt:joystick$n()_'                -
;-------------------------------------------------
W?$dt:joystick$n()_:
    45b0:	c3                   	ret    
    45b1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    45b7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    45bd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'update'                             -
;-------------------------------------------------
update:
    45c0:	53                   	push   ebx
    45c1:	51                   	push   ecx
    45c2:	52                   	push   edx
    45c3:	56                   	push   esi
    45c4:	55                   	push   ebp
    45c5:	89 c3                	mov    ebx,eax
    45c7:	80 38 00             	cmp    BYTE PTR [eax],0x0
    45ca:	0f 84 8d 00 00 00    	je     update_branch_6
    45d0:	89 d8                	mov    eax,ebx
    45d2:	e8 e9 fe ff ff       	call   JOYSTICK_update_raw
    45d7:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
    45da:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
    45dd:	39 d0                	cmp    eax,edx
    45df:	77 09                	ja     update_branch_1
    45e1:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
    45e8:	eb 07                	jmp    update_branch_2
update_branch_1:
    45ea:	89 c1                	mov    ecx,eax
    45ec:	29 d1                	sub    ecx,edx
    45ee:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
update_branch_2:
    45f1:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
    45f4:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
    45f7:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    45fe:	8b 73 0c             	mov    esi,DWORD PTR [ebx+0xc]
    4601:	01 d0                	add    eax,edx
    4603:	29 f1                	sub    ecx,esi
    4605:	01 c0                	add    eax,eax
    4607:	31 d2                	xor    edx,edx
    4609:	f7 f1                	div    ecx
    460b:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
    460e:	83 f8 0a             	cmp    eax,0xa
    4611:	76 07                	jbe    update_branch_3
    4613:	c7 43 04 0a 00 00 00 	mov    DWORD PTR [ebx+0x4],0xa
update_branch_3:
    461a:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
    461d:	8b 6b 14             	mov    ebp,DWORD PTR [ebx+0x14]
    4620:	39 e8                	cmp    eax,ebp
    4622:	77 09                	ja     update_branch_4
    4624:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
    462b:	eb 07                	jmp    update_branch_5
update_branch_4:
    462d:	89 c2                	mov    edx,eax
    462f:	29 ea                	sub    edx,ebp
    4631:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
update_branch_5:
    4634:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
    4637:	2b 43 14             	sub    eax,DWORD PTR [ebx+0x14]
    463a:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
    463d:	89 c1                	mov    ecx,eax
    463f:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
    4646:	01 d0                	add    eax,edx
    4648:	01 c0                	add    eax,eax
    464a:	31 d2                	xor    edx,edx
    464c:	f7 f1                	div    ecx
    464e:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
    4651:	83 f8 0a             	cmp    eax,0xa
    4654:	76 07                	jbe    update_branch_6
    4656:	c7 43 08 0a 00 00 00 	mov    DWORD PTR [ebx+0x8],0xa
update_branch_6:
    465d:	5d                   	pop    ebp
    465e:	5e                   	pop    esi
    465f:	5a                   	pop    edx
    4660:	59                   	pop    ecx
    4661:	5b                   	pop    ebx
    4662:	c3                   	ret    
    4663:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    4669:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
    466f:	90                   	nop

;-------------------------------------------------
;  Function 'test'                               -
;-------------------------------------------------
test:
    4670:	53                   	push   ebx
    4671:	51                   	push   ecx
    4672:	52                   	push   edx
    4673:	56                   	push   esi
    4674:	57                   	push   edi
    4675:	55                   	push   ebp
    4676:	89 c1                	mov    ecx,eax
    4678:	80 38 00             	cmp    BYTE PTR [eax],0x0
    467b:	0f 84 41 01 00 00    	je     test_branch_17
    4681:	8a 11                	mov    dl,BYTE PTR [ecx]
    4683:	89 cb                	mov    ebx,ecx
    4685:	84 d2                	test   dl,dl
    4687:	0f 84 7c 00 00 00    	je     test_branch_9
test_branch_1:
    468d:	89 d8                	mov    eax,ebx
    468f:	e8 2c fe ff ff       	call   JOYSTICK_update_raw
    4694:	80 7b 01 00          	cmp    BYTE PTR [ebx+0x1],0x0
    4698:	75 06                	jne    test_branch_2
    469a:	80 7b 02 00          	cmp    BYTE PTR [ebx+0x2],0x0
    469e:	74 ed                	je     test_branch_1
test_branch_2:
    46a0:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
    46a3:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
    46a6:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
    46a9:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
    46ac:	b8 f4 01 00 00       	mov    eax,0x1f4
    46b1:	e8 2c da 06 00       	call   delay_
test_branch_3:
    46b6:	80 7b 01 00          	cmp    BYTE PTR [ebx+0x1],0x0
    46ba:	75 06                	jne    test_branch_4
    46bc:	80 7b 02 00          	cmp    BYTE PTR [ebx+0x2],0x0
    46c0:	74 09                	je     test_branch_5
test_branch_4:
    46c2:	89 d8                	mov    eax,ebx
    46c4:	e8 f7 fd ff ff       	call   JOYSTICK_update_raw
    46c9:	eb eb                	jmp    test_branch_3
test_branch_5:
    46cb:	89 d8                	mov    eax,ebx
    46cd:	e8 ee fd ff ff       	call   JOYSTICK_update_raw
    46d2:	80 7b 01 00          	cmp    BYTE PTR [ebx+0x1],0x0
    46d6:	75 06                	jne    test_branch_6
    46d8:	80 7b 02 00          	cmp    BYTE PTR [ebx+0x2],0x0
    46dc:	74 ed                	je     test_branch_5
test_branch_6:
    46de:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
    46e1:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
    46e4:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
    46e7:	89 43 18             	mov    DWORD PTR [ebx+0x18],eax
    46ea:	b8 f4 01 00 00       	mov    eax,0x1f4
    46ef:	e8 ee d9 06 00       	call   delay_
test_branch_7:
    46f4:	80 7b 01 00          	cmp    BYTE PTR [ebx+0x1],0x0
    46f8:	75 06                	jne    test_branch_8
    46fa:	80 7b 02 00          	cmp    BYTE PTR [ebx+0x2],0x0
    46fe:	74 09                	je     test_branch_9
test_branch_8:
    4700:	89 d8                	mov    eax,ebx
    4702:	e8 b9 fd ff ff       	call   JOYSTICK_update_raw
    4707:	eb eb                	jmp    test_branch_7
test_branch_9:
    4709:	bf 0a 00 00 00       	mov    edi,0xa
test_branch_10:
    470e:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 298, src obj: 1, src ofs: 0x4711, dst obj: 3, dst ofs: 0x25908
    4716:	0f 85 a6 00 00 00    	jne    test_branch_17
    471c:	8a 31                	mov    dh,BYTE PTR [ecx]
    471e:	89 cb                	mov    ebx,ecx
    4720:	84 f6                	test   dh,dh
    4722:	0f 84 6f 00 00 00    	je     test_branch_16
    4728:	89 c8                	mov    eax,ecx
    472a:	e8 91 fd ff ff       	call   JOYSTICK_update_raw
    472f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
    4732:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
    4735:	39 d0                	cmp    eax,edx
    4737:	77 09                	ja     test_branch_11
    4739:	c7 41 04 00 00 00 00 	mov    DWORD PTR [ecx+0x4],0x0
    4740:	eb 07                	jmp    test_branch_12
test_branch_11:
    4742:	89 c6                	mov    esi,eax
    4744:	29 d6                	sub    esi,edx
    4746:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
test_branch_12:
    4749:	6b 43 04 0a          	imul   eax,DWORD PTR [ebx+0x4],0xa
    474d:	8b 73 10             	mov    esi,DWORD PTR [ebx+0x10]
    4750:	2b 73 0c             	sub    esi,DWORD PTR [ebx+0xc]
    4753:	31 d2                	xor    edx,edx
    4755:	f7 f6                	div    esi
    4757:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
    475a:	39 c7                	cmp    edi,eax
    475c:	73 03                	jae    test_branch_13
    475e:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
test_branch_13:
    4761:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
    4764:	8b 6b 14             	mov    ebp,DWORD PTR [ebx+0x14]
    4767:	39 e8                	cmp    eax,ebp
    4769:	77 09                	ja     test_branch_14
    476b:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
    4772:	eb 07                	jmp    test_branch_15
test_branch_14:
    4774:	89 c2                	mov    edx,eax
    4776:	29 ea                	sub    edx,ebp
    4778:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
test_branch_15:
    477b:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
    477e:	2b 43 14             	sub    eax,DWORD PTR [ebx+0x14]
    4781:	8b 6b 08             	mov    ebp,DWORD PTR [ebx+0x8]
    4784:	89 c6                	mov    esi,eax
    4786:	6b c5 0a             	imul   eax,ebp,0xa
    4789:	31 d2                	xor    edx,edx
    478b:	f7 f6                	div    esi
    478d:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
    4790:	39 c7                	cmp    edi,eax
    4792:	73 03                	jae    test_branch_16
    4794:	89 7b 08             	mov    DWORD PTR [ebx+0x8],edi
test_branch_16:
    4797:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
    479a:	52                   	push   edx
    479b:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
    479e:	31 c0                	xor    eax,eax
    47a0:	53                   	push   ebx
    47a1:	8a 41 02             	mov    al,BYTE PTR [ecx+0x2]
    47a4:	50                   	push   eax
    47a5:	31 c0                	xor    eax,eax
    47a7:	8a 41 01             	mov    al,BYTE PTR [ecx+0x1]
    47aa:	50                   	push   eax
    47ab:	68 90 04 00 00       	push   @obj3:joystick_cpp_variable_1                                ; fixup: num: 300, src obj: 1, src ofs: 0x47ac, dst obj: 3, dst ofs: 0x490
    47b0:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 299, src obj: 1, src ofs: 0x47b1, dst obj: 3, dst ofs: 0x237fc
    47b5:	e8 27 c4 06 00       	call   sprintf_
    47ba:	83 c4 18             	add    esp,0x18
    47bd:	e9 4c ff ff ff       	jmp    test_branch_10
test_branch_17:
    47c2:	5d                   	pop    ebp
    47c3:	5f                   	pop    edi
    47c4:	5e                   	pop    esi
    47c5:	5a                   	pop    edx
    47c6:	59                   	pop    ecx
    47c7:	5b                   	pop    ebx
    47c8:	c3                   	ret    
    47c9:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
    47cf:	90                   	nop

;-------------------------------------------------
;  Function 'calibrate'                          -
;-------------------------------------------------
calibrate:
    47d0:	52                   	push   edx
    47d1:	89 c2                	mov    edx,eax
    47d3:	80 38 00             	cmp    BYTE PTR [eax],0x0
    47d6:	0f 84 d4 fc ff ff    	je     .fn_init_branch_1
calibrate_branch_1:
    47dc:	89 d0                	mov    eax,edx
    47de:	e8 dd fc ff ff       	call   JOYSTICK_update_raw
    47e3:	80 7a 01 00          	cmp    BYTE PTR [edx+0x1],0x0
    47e7:	75 06                	jne    calibrate_branch_2
    47e9:	80 7a 02 00          	cmp    BYTE PTR [edx+0x2],0x0
    47ed:	74 ed                	je     calibrate_branch_1
calibrate_branch_2:
    47ef:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
    47f2:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
    47f5:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
    47f8:	89 42 14             	mov    DWORD PTR [edx+0x14],eax
    47fb:	b8 f4 01 00 00       	mov    eax,0x1f4
    4800:	e8 dd d8 06 00       	call   delay_
calibrate_branch_3:
    4805:	80 7a 01 00          	cmp    BYTE PTR [edx+0x1],0x0
    4809:	75 06                	jne    calibrate_branch_4
    480b:	80 7a 02 00          	cmp    BYTE PTR [edx+0x2],0x0
    480f:	74 09                	je     calibrate_branch_5
calibrate_branch_4:
    4811:	89 d0                	mov    eax,edx
    4813:	e8 a8 fc ff ff       	call   JOYSTICK_update_raw
    4818:	eb eb                	jmp    calibrate_branch_3
calibrate_branch_5:
    481a:	89 d0                	mov    eax,edx
    481c:	e8 9f fc ff ff       	call   JOYSTICK_update_raw
    4821:	80 7a 01 00          	cmp    BYTE PTR [edx+0x1],0x0
    4825:	75 06                	jne    calibrate_branch_6
    4827:	80 7a 02 00          	cmp    BYTE PTR [edx+0x2],0x0
    482b:	74 ed                	je     calibrate_branch_5
calibrate_branch_6:
    482d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
    4830:	89 42 10             	mov    DWORD PTR [edx+0x10],eax
    4833:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
    4836:	89 42 18             	mov    DWORD PTR [edx+0x18],eax
    4839:	b8 f4 01 00 00       	mov    eax,0x1f4
    483e:	e8 9f d8 06 00       	call   delay_
calibrate_branch_7:
    4843:	80 7a 01 00          	cmp    BYTE PTR [edx+0x1],0x0
    4847:	75 0a                	jne    calibrate_branch_8
    4849:	80 7a 02 00          	cmp    BYTE PTR [edx+0x2],0x0
    484d:	0f 84 5d fc ff ff    	je     .fn_init_branch_1
calibrate_branch_8:
    4853:	89 d0                	mov    eax,edx
    4855:	e8 66 fc ff ff       	call   JOYSTICK_update_raw
    485a:	eb e7                	jmp    calibrate_branch_7
calibrate_reference_1:                                                                              ; access size: DWORDS
    485c:	be 4a 00 00 c6       	mov    esi,0xc600004a                                               ; fixup: num: 305, src obj: 1, src ofs: 0x485c, dst obj: 1, dst ofs: 0x4abe; fixup: num: 304, src obj: 1, src ofs: 0x4860, dst obj: 1, dst ofs: 0x4ac6
    4861:	4a                   	dec    edx
    4862:	00 00                	add    BYTE PTR [eax],al
    4864:	ce                   	into                                                                ; fixup: num: 303, src obj: 1, src ofs: 0x4864, dst obj: 1, dst ofs: 0x4ace
    4865:	4a                   	dec    edx
    4866:	00 00                	add    BYTE PTR [eax],al
    4868:	d6                   	(bad)                                                               ; fixup: num: 302, src obj: 1, src ofs: 0x4868, dst obj: 1, dst ofs: 0x4ad6
    4869:	4a                   	dec    edx
    486a:	00 00                	add    BYTE PTR [eax],al
    486c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'calibrate2'                         -
;-------------------------------------------------
calibrate2:
    4870:	53                   	push   ebx
    4871:	51                   	push   ecx
    4872:	52                   	push   edx
    4873:	56                   	push   esi
    4874:	57                   	push   edi
    4875:	55                   	push   ebp
    4876:	83 ec 68             	sub    esp,0x68
    4879:	89 c5                	mov    ebp,eax
    487b:	b9 0f 00 00 00       	mov    ecx,0xf
    4880:	89 e7                	mov    edi,esp
    4882:	be 78 2b 01 00       	mov    esi,@obj3:W?$Wsi0fwheres$n[][15]a$:.0$:?calibrate2$n()i:joystick$nx[][15]a; fixup: num: 301, src obj: 1, src ofs: 0x4883, dst obj: 3, dst ofs: 0x12b78
    4887:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    4889:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    488c:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
    4890:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    4893:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
    4897:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    489a:	31 d2                	xor    edx,edx
    489c:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
    48a0:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    48a3:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
    48a7:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
    48ab:	8a 65 00             	mov    ah,BYTE PTR [ebp+0x0]
    48ae:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
    48b2:	84 e4                	test   ah,ah
    48b4:	75 07                	jne    calibrate2_branch_1
    48b6:	31 c0                	xor    eax,eax
    48b8:	e9 0b 03 00 00       	jmp    calibrate2_branch_22
calibrate2_branch_1:
    48bd:	b8 50 00 00 00       	mov    eax,0x50
    48c2:	e8 51 d6 06 00       	call   W?$nwn(ui)pnv
    48c7:	89 c6                	mov    esi,eax
    48c9:	85 c0                	test   eax,eax
    48cb:	74 39                	je     calibrate2_branch_2
    48cd:	52                   	push   edx
    48ce:	52                   	push   edx
    48cf:	6a ce                	push   0xffffffce
    48d1:	6a 64                	push   0x64
    48d3:	b8 a6 04 00 00       	mov    eax,@obj3:joystick_cpp_variable_2                            ; fixup: num: 314, src obj: 1, src ofs: 0x48d4, dst obj: 3, dst ofs: 0x4a6
    48d8:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 313, src obj: 1, src ofs: 0x48da, dst obj: 3, dst ofs: 0x25bbc
    48de:	e8 4d 40 04 00       	call   stringwidthCFN
    48e3:	ba 7f 02 00 00       	mov    edx,0x27f
    48e8:	29 c2                	sub    edx,eax
    48ea:	89 d0                	mov    eax,edx
    48ec:	b9 b2 04 00 00       	mov    ecx,@obj3:joystick_cpp_variable_3                            ; fixup: num: 312, src obj: 1, src ofs: 0x48ed, dst obj: 3, dst ofs: 0x4b2
    48f1:	d1 e8                	shr    eax,1
    48f3:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 311, src obj: 1, src ofs: 0x48f5, dst obj: 3, dst ofs: 0x25bbc
    48f9:	50                   	push   eax
    48fa:	ba b7 04 00 00       	mov    edx,@obj3:joystick_cpp_variable_4                            ; fixup: num: 310, src obj: 1, src ofs: 0x48fb, dst obj: 3, dst ofs: 0x4b7
    48ff:	89 f0                	mov    eax,esi
    4901:	e8 3a 56 04 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
calibrate2_branch_2:
    4906:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
    490a:	b8 50 00 00 00       	mov    eax,0x50
    490f:	e8 04 d6 06 00       	call   W?$nwn(ui)pnv
    4914:	89 c6                	mov    esi,eax
    4916:	85 c0                	test   eax,eax
    4918:	74 3e                	je     calibrate2_branch_3
    491a:	6a 00                	push   0x0
    491c:	6a 00                	push   0x0
    491e:	6a ce                	push   0xffffffce
    4920:	68 a0 00 00 00       	push   0xa0
    4925:	b8 c3 04 00 00       	mov    eax,@obj3:joystick_cpp_variable_5                            ; fixup: num: 309, src obj: 1, src ofs: 0x4926, dst obj: 3, dst ofs: 0x4c3
    492a:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 308, src obj: 1, src ofs: 0x492c, dst obj: 3, dst ofs: 0x25bbc
    4930:	e8 fb 3f 04 00       	call   stringwidthCFN
    4935:	ba 7f 02 00 00       	mov    edx,0x27f
    493a:	29 c2                	sub    edx,eax
    493c:	89 d0                	mov    eax,edx
    493e:	b9 d4 04 00 00       	mov    ecx,@obj3:joystick_cpp_variable_6                            ; fixup: num: 307, src obj: 1, src ofs: 0x493f, dst obj: 3, dst ofs: 0x4d4
    4943:	d1 e8                	shr    eax,1
    4945:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 306, src obj: 1, src ofs: 0x4947, dst obj: 3, dst ofs: 0x25bbc
    494b:	50                   	push   eax
    494c:	ba da 04 00 00       	mov    edx,@obj3:joystick_cpp_variable_7                            ; fixup: num: 322, src obj: 1, src ofs: 0x494d, dst obj: 3, dst ofs: 0x4da
    4951:	89 f0                	mov    eax,esi
    4953:	e8 e8 55 04 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
calibrate2_branch_3:
    4958:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
    495c:	b8 50 00 00 00       	mov    eax,0x50
    4961:	e8 b2 d5 06 00       	call   W?$nwn(ui)pnv
    4966:	89 c6                	mov    esi,eax
    4968:	85 c0                	test   eax,eax
    496a:	74 3e                	je     calibrate2_branch_4
    496c:	6a 00                	push   0x0
    496e:	6a 00                	push   0x0
    4970:	6a ce                	push   0xffffffce
    4972:	68 18 01 00 00       	push   0x118
    4977:	b8 eb 04 00 00       	mov    eax,@obj3:joystick_cpp_variable_8                            ; fixup: num: 321, src obj: 1, src ofs: 0x4978, dst obj: 3, dst ofs: 0x4eb
    497c:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 320, src obj: 1, src ofs: 0x497e, dst obj: 3, dst ofs: 0x25bbc
    4982:	e8 a9 3f 04 00       	call   stringwidthCFN
    4987:	ba 7f 02 00 00       	mov    edx,0x27f
    498c:	29 c2                	sub    edx,eax
    498e:	89 d0                	mov    eax,edx
    4990:	b9 fc 04 00 00       	mov    ecx,@obj3:joystick_cpp_variable_9                            ; fixup: num: 319, src obj: 1, src ofs: 0x4991, dst obj: 3, dst ofs: 0x4fc
    4995:	d1 e8                	shr    eax,1
    4997:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 318, src obj: 1, src ofs: 0x4999, dst obj: 3, dst ofs: 0x25bbc
    499d:	50                   	push   eax
    499e:	ba 04 05 00 00       	mov    edx,@obj3:joystick_cpp_variable_10                           ; fixup: num: 317, src obj: 1, src ofs: 0x499f, dst obj: 3, dst ofs: 0x504
    49a3:	89 f0                	mov    eax,esi
    49a5:	e8 96 55 04 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
calibrate2_branch_4:
    49aa:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
    49ae:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
    49b2:	83 f9 04             	cmp    ecx,0x4
    49b5:	0f 8d 8b 01 00 00    	jge    calibrate2_branch_16
    49bb:	89 ce                	mov    esi,ecx
    49bd:	c1 e6 04             	shl    esi,0x4
    49c0:	89 e0                	mov    eax,esp
    49c2:	29 ce                	sub    esi,ecx
    49c4:	01 c6                	add    esi,eax
    49c6:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
    49cd:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
calibrate2_branch_5:
    49d1:	56                   	push   esi
    49d2:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
    49d6:	51                   	push   ecx
    49d7:	68 15 05 00 00       	push   @obj3:joystick_cpp_variable_11                               ; fixup: num: 316, src obj: 1, src ofs: 0x49d8, dst obj: 3, dst ofs: 0x515
    49dc:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 315, src obj: 1, src ofs: 0x49dd, dst obj: 3, dst ofs: 0x237fc
    49e1:	e8 fb c1 06 00       	call   sprintf_
    49e6:	83 c4 10             	add    esp,0x10
    49e9:	b8 50 00 00 00       	mov    eax,0x50
    49ee:	e8 25 d5 06 00       	call   W?$nwn(ui)pnv
    49f3:	89 c7                	mov    edi,eax
    49f5:	85 c0                	test   eax,eax
    49f7:	74 38                	je     calibrate2_branch_6
    49f9:	6a 00                	push   0x0
    49fb:	6a 00                	push   0x0
    49fd:	6a ce                	push   0xffffffce
    49ff:	68 dc 00 00 00       	push   0xdc
    4a04:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 330, src obj: 1, src ofs: 0x4a06, dst obj: 3, dst ofs: 0x25bc0
    4a0a:	89 f0                	mov    eax,esi
    4a0c:	e8 1f 3f 04 00       	call   stringwidthCFN
    4a11:	ba 7f 02 00 00       	mov    edx,0x27f
    4a16:	29 c2                	sub    edx,eax
    4a18:	89 d0                	mov    eax,edx
    4a1a:	b9 23 05 00 00       	mov    ecx,@obj3:joystick_cpp_variable_12                           ; fixup: num: 329, src obj: 1, src ofs: 0x4a1b, dst obj: 3, dst ofs: 0x523
    4a1f:	d1 e8                	shr    eax,1
    4a21:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 328, src obj: 1, src ofs: 0x4a23, dst obj: 3, dst ofs: 0x25bc0
    4a27:	50                   	push   eax
    4a28:	89 f2                	mov    edx,esi
    4a2a:	89 f8                	mov    eax,edi
    4a2c:	e8 0f 55 04 00       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
calibrate2_branch_6:
    4a31:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 327, src obj: 1, src ofs: 0x4a32, dst obj: 3, dst ofs: 0x1a1d4
    4a36:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
    4a3a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 326, src obj: 1, src ofs: 0x4a3b, dst obj: 3, dst ofs: 0x25a84
    4a3f:	31 d2                	xor    edx,edx
    4a41:	e8 5a 92 04 00       	call   update_mod_84
calibrate2_branch_7:
    4a46:	89 e8                	mov    eax,ebp
    4a48:	e8 73 fa ff ff       	call   JOYSTICK_update_raw
    4a4d:	89 d8                	mov    eax,ebx
    4a4f:	e8 4c 6f 00 00       	call   update_mod_9
    4a54:	8a 4d 01             	mov    cl,BYTE PTR [ebp+0x1]
    4a57:	38 ca                	cmp    dl,cl
    4a59:	75 0e                	jne    calibrate2_branch_8
    4a5b:	3a 4d 02             	cmp    cl,BYTE PTR [ebp+0x2]
    4a5e:	75 09                	jne    calibrate2_branch_8
    4a60:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 325, src obj: 1, src ofs: 0x4a63, dst obj: 3, dst ofs: 0x25908
    4a67:	74 dd                	je     calibrate2_branch_7
calibrate2_branch_8:
    4a69:	8b 7c 24 44          	mov    edi,DWORD PTR [esp+0x44]
    4a6d:	85 ff                	test   edi,edi
    4a6f:	74 16                	je     calibrate2_branch_10
    4a71:	74 0e                	je     calibrate2_branch_9
    4a73:	89 f8                	mov    eax,edi
    4a75:	31 d2                	xor    edx,edx
    4a77:	e8 a4 54 04 00       	call   W?$dt:TEXTBM$n()_
    4a7c:	e8 f7 d5 06 00       	call   W?$dln(pnv)v
calibrate2_branch_9:
    4a81:	31 d2                	xor    edx,edx
    4a83:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
calibrate2_branch_10:
    4a87:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 324, src obj: 1, src ofs: 0x4a88, dst obj: 3, dst ofs: 0x25a84
    4a8c:	e8 0f 92 04 00       	call   update_mod_84
    4a91:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 323, src obj: 1, src ofs: 0x4a94, dst obj: 3, dst ofs: 0x25908
    4a98:	83 f8 01             	cmp    eax,0x1
    4a9b:	75 41                	jne    calibrate2_branch_11
    4a9d:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
    4aa1:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    4aa4:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
    4aa8:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
    4aab:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
    4aaf:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
    4ab2:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
    4ab6:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
    4ab9:	e9 d8 00 00 00       	jmp    calibrate2_branch_17
calibrate2_reference_1:
    4abe:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
    4ac1:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    4ac4:	eb 2a                	jmp    calibrate2_branch_12
calibrate2_reference_2:
    4ac6:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
    4ac9:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
    4acc:	eb 22                	jmp    calibrate2_branch_12
calibrate2_reference_3:
    4ace:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    4ad1:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
    4ad4:	eb 1a                	jmp    calibrate2_branch_12
calibrate2_reference_4:
    4ad6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    4ad9:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
    4adc:	eb 12                	jmp    calibrate2_branch_12
calibrate2_branch_11:
    4ade:	83 7c 24 64 03       	cmp    DWORD PTR [esp+0x64],0x3
    4ae3:	77 0b                	ja     calibrate2_branch_12
    4ae5:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
    4ae9:	2e ff a0 5c 48 00 00 	jmp    DWORD PTR cs:[eax+@obj1:calibrate_reference_1]               ; fixup: num: 335, src obj: 1, src ofs: 0x4aec, dst obj: 1, dst ofs: 0x485c
calibrate2_branch_12:
    4af0:	b8 e8 03 00 00       	mov    eax,0x3e8
    4af5:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 334, src obj: 1, src ofs: 0x4af6, dst obj: 3, dst ofs: 0x1a1d4
    4afa:	e8 e3 d5 06 00       	call   delay_
    4aff:	31 d2                	xor    edx,edx
calibrate2_branch_13:
    4b01:	8a 45 01             	mov    al,BYTE PTR [ebp+0x1]
    4b04:	38 c2                	cmp    dl,al
    4b06:	75 0e                	jne    calibrate2_branch_14
    4b08:	3a 45 02             	cmp    al,BYTE PTR [ebp+0x2]
    4b0b:	75 09                	jne    calibrate2_branch_14
    4b0d:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 333, src obj: 1, src ofs: 0x4b10, dst obj: 3, dst ofs: 0x25908
    4b14:	74 10                	je     calibrate2_branch_15
calibrate2_branch_14:
    4b16:	89 e8                	mov    eax,ebp
    4b18:	e8 a3 f9 ff ff       	call   JOYSTICK_update_raw
    4b1d:	89 d8                	mov    eax,ebx
    4b1f:	e8 7c 6e 00 00       	call   update_mod_9
    4b24:	eb db                	jmp    calibrate2_branch_13
calibrate2_branch_15:
    4b26:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
    4b2a:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
    4b2e:	83 c6 0f             	add    esi,0xf
    4b31:	83 c7 04             	add    edi,0x4
    4b34:	40                   	inc    eax
    4b35:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
    4b39:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
    4b3d:	83 f8 04             	cmp    eax,0x4
    4b40:	0f 8c 8b fe ff ff    	jl     calibrate2_branch_5
calibrate2_branch_16:
    4b46:	ba 28 05 00 00       	mov    edx,@obj3:joystick_cpp_variable_13                           ; fixup: num: 332, src obj: 1, src ofs: 0x4b47, dst obj: 3, dst ofs: 0x528
    4b4b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 331, src obj: 1, src ofs: 0x4b4c, dst obj: 3, dst ofs: 0x32438
    4b50:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
    4b53:	e8 28 90 06 00       	call   set_mod_92
    4b58:	ba 37 05 00 00       	mov    edx,@obj3:joystick_cpp_variable_14                           ; fixup: num: 341, src obj: 1, src ofs: 0x4b59, dst obj: 3, dst ofs: 0x537
    4b5d:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 340, src obj: 1, src ofs: 0x4b5e, dst obj: 3, dst ofs: 0x32438
    4b62:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
    4b65:	e8 16 90 06 00       	call   set_mod_92
    4b6a:	ba 46 05 00 00       	mov    edx,@obj3:joystick_cpp_variable_15                           ; fixup: num: 339, src obj: 1, src ofs: 0x4b6b, dst obj: 3, dst ofs: 0x546
    4b6f:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 338, src obj: 1, src ofs: 0x4b70, dst obj: 3, dst ofs: 0x32438
    4b74:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
    4b77:	e8 04 90 06 00       	call   set_mod_92
    4b7c:	ba 55 05 00 00       	mov    edx,@obj3:joystick_cpp_variable_16                           ; fixup: num: 337, src obj: 1, src ofs: 0x4b7d, dst obj: 3, dst ofs: 0x555
    4b81:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 336, src obj: 1, src ofs: 0x4b82, dst obj: 3, dst ofs: 0x32438
    4b86:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
    4b89:	e8 f2 8f 06 00       	call   set_mod_92
    4b8e:	c7 44 24 50 01 00 00 00 	mov    DWORD PTR [esp+0x50],0x1
calibrate2_branch_17:
    4b96:	31 f6                	xor    esi,esi
    4b98:	31 db                	xor    ebx,ebx
    4b9a:	eb 08                	jmp    calibrate2_branch_19
calibrate2_branch_18:
    4b9c:	83 c6 04             	add    esi,0x4
    4b9f:	83 fe 10             	cmp    esi,0x10
    4ba2:	74 20                	je     calibrate2_branch_21
calibrate2_branch_19:
    4ba4:	8b 4c 34 3c          	mov    ecx,DWORD PTR [esp+esi*1+0x3c]
    4ba8:	39 cb                	cmp    ebx,ecx
    4baa:	74 f0                	je     calibrate2_branch_18
    4bac:	89 c8                	mov    eax,ecx
    4bae:	85 c9                	test   ecx,ecx
    4bb0:	74 0c                	je     calibrate2_branch_20
    4bb2:	89 da                	mov    edx,ebx
    4bb4:	e8 67 53 04 00       	call   W?$dt:TEXTBM$n()_
    4bb9:	e8 ba d4 06 00       	call   W?$dln(pnv)v
calibrate2_branch_20:
    4bbe:	89 5c 34 3c          	mov    DWORD PTR [esp+esi*1+0x3c],ebx
    4bc2:	eb d8                	jmp    calibrate2_branch_18
calibrate2_branch_21:
    4bc4:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
calibrate2_branch_22:
    4bc8:	83 c4 68             	add    esp,0x68
    4bcb:	5d                   	pop    ebp
    4bcc:	5f                   	pop    edi
    4bcd:	5e                   	pop    esi
    4bce:	5a                   	pop    edx
    4bcf:	59                   	pop    ecx
    4bd0:	5b                   	pop    ebx
    4bd1:	c3                   	ret    
;-------------------------------------------------
;  Bad code 5 (zero after ret):                  -
;-------------------------------------------------
;   4bd0:	5b                   	pop    ebx
;   4bd1:	c3                   	ret    
;   4bd2:	00 00                	add    BYTE PTR [eax],al
;   4bd4:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (14 bytes):                      -
;-------------------------------------------------
    4bd2:	00 00 00 00 00 00 .. 	db     14 dup(0x00)
;-------------------------------------------------
;  End of bad code 5                             -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
joystick_cpp_variable_1:
     490:	62 31 3a 25 69 20 62 32 3a 25 69 20 78 3a 25 69 20 79 3a 25 69 00 	db     "b1:%i b2:%i x:%i y:%i",0x00
joystick_cpp_variable_2:
     4a6:	43 41 4c 49 42 52 41 54 49 4f 4e 00 	db     "CALIBRATION",0x00
joystick_cpp_variable_3:
     4b2:	43 41 4c 4a 00       	db     "CALJ",0x00
joystick_cpp_variable_4:
     4b7:	43 41 4c 49 42 52 41 54 49 4f 4e 00 	db     "CALIBRATION",0x00
joystick_cpp_variable_5:
     4c3:	4d 4f 56 45 20 4a 4f 59 53 54 49 43 4b 20 54 4f 00 	db     "MOVE JOYSTICK TO",0x00
joystick_cpp_variable_6:
     4d4:	4d 4f 56 45 4a 00    	db     "MOVEJ",0x00
joystick_cpp_variable_7:
     4da:	4d 4f 56 45 20 4a 4f 59 53 54 49 43 4b 20 54 4f 00 	db     "MOVE JOYSTICK TO",0x00
joystick_cpp_variable_8:
     4eb:	41 4e 44 20 50 52 45 53 53 20 42 55 54 54 4f 4e 00 	db     "AND PRESS BUTTON",0x00
joystick_cpp_variable_9:
     4fc:	42 55 54 54 4f 4e 4a 00 	db     "BUTTONJ",0x00
joystick_cpp_variable_10:
     504:	41 4e 44 20 50 52 45 53 53 20 42 55 54 54 4f 4e 00 	db     "AND PRESS BUTTON",0x00
joystick_cpp_variable_11:
     515:	77 68 65 72 65 73 5b 25 64 5d 3d 25 73 00 	db     "wheres[%d]=%s",0x00
joystick_cpp_variable_12:
     523:	44 49 52 4a 00       	db     "DIRJ",0x00
joystick_cpp_variable_13:
     528:	4a 4f 59 53 54 49 43 4b 5f 58 5f 4d 49 4e 00 	db     "JOYSTICK_X_MIN",0x00
joystick_cpp_variable_14:
     537:	4a 4f 59 53 54 49 43 4b 5f 59 5f 4d 49 4e 00 	db     "JOYSTICK_Y_MIN",0x00
joystick_cpp_variable_15:
     546:	4a 4f 59 53 54 49 43 4b 5f 58 5f 4d 41 58 00 	db     "JOYSTICK_X_MAX",0x00
joystick_cpp_variable_16:
     555:	4a 4f 59 53 54 49 43 4b 5f 59 5f 4d 41 58 00 	db     "JOYSTICK_Y_MAX",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
joystick_cpp_variable_17:
   10c70:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10c71:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10c74:	b0 45 00 00          	dd     @obj1:W?$dt:joystick$n()_                                    ; fixup: num: 21313, src obj: 3, src ofs: 0x10c74, dst obj: 1, dst ofs: 0x45b0
   10c78:	74 7e 01 00          	dd     @obj3:joystick_1                                             ; fixup: num: 21312, src obj: 3, src ofs: 0x10c78, dst obj: 3, dst ofs: 0x17e74
W?$Wts0cn$joystick$$$nx[]uc:
   10c7c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10c7d:	40 45 00 00          	dd     @obj1:W?$ct:joystick$n()_                                    ; fixup: num: 21316, src obj: 3, src ofs: 0x10c7d, dst obj: 1, dst ofs: 0x4540
   10c81:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21315, src obj: 3, src ofs: 0x10c81, dst obj: 1, dst ofs: 0x71448
   10c85:	b0 45 00 00          	dd     @obj1:W?$dt:joystick$n()_                                    ; fixup: num: 21314, src obj: 3, src ofs: 0x10c85, dst obj: 1, dst ofs: 0x45b0
   10c89:	1c                   	db     0x1c                                                         ; dec:  28, chr: ''
   10c8a:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
joystick_cpp_variable_18:
   12b6c:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12b70:	70 0c 01 00          	dd     @obj3:joystick_cpp_variable_17                               ; fixup: num: 21365, src obj: 3, src ofs: 0x12b70, dst obj: 3, dst ofs: 0x10c70
joystick_cpp_variable_19:                                                                           ; access size: DWORD
   12b74:	00 00 00 00          	dd     0x00000000
W?$Wsi0fwheres$n[][15]a$:.0$:?calibrate2$n()i:joystick$nx[][15]a:
   12b78:	54 48 45 20 4c 45 46 54 00 	db     "THE LEFT",0x00
   12b81:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12b87:	54 48 45 20 52 49 47 48 54 00 	db     "THE RIGHT",0x00
   12b91:	00 00 00 00 00       	db     5 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12b96:	54 48 45 20 54 4f 50 00 	db     "THE TOP",0x00
   12b9e:	00 00 00 00 00 00 .. 	db     7 dup(0x00)                                                  ; dec:   0, chr: '\0'
   12ba5:	54 48 45 20 42 4f 54 54 4f 4d 00 	db     "THE BOTTOM",0x00
   12bb0:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init:
   16d92:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16d93:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16d94:	90 44 00 00          	dd     @obj1:.fn_init                                               ; fixup: num: 21648, src obj: 3, src ofs: 0x16d94, dst obj: 1, dst ofs: 0x4490

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 3: D:\SOURCE\joystick.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
joystick_1:
   17e74:	00 00 00 00 00 00 .. 	db     28 dup(0x00)                                                 ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 3 (D:\SOURCE\joystick.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------