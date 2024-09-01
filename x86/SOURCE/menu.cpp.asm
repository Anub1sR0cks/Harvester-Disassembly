;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function '.fn_init_mod_88'                    -
;-------------------------------------------------
.fn_init_mod_88:
   57340:	52                   	push   edx
   57341:	b8 84 3c 01 00       	mov    eax,@obj3:menu_cpp_variable_200                              ; fixup: num: 13848, src obj: 1, src ofs: 0x57342, dst obj: 3, dst ofs: 0x13c84
   57346:	e8 87 ad 01 00       	call   __wcpp_2_mod_register__
   5734b:	ba f8 d2 00 00       	mov    edx,@obj3:menu_cpp_variable_1                                ; fixup: num: 13847, src obj: 1, src ofs: 0x5734c, dst obj: 3, dst ofs: 0xd2f8
   57350:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13846, src obj: 1, src ofs: 0x57351, dst obj: 3, dst ofs: 0x25b3c
   57355:	e8 06 63 01 00       	call   W?$ct:environment$n(pna)_
   5735a:	c7 05 8c 3c 01 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:menu_cpp_variable_201,0x1        ; fixup: num: 13845, src obj: 1, src ofs: 0x5735c, dst obj: 3, dst ofs: 0x13c8c
   57364:	5a                   	pop    edx
   57365:	c3                   	ret    
   57366:	8b c0                	mov    eax,eax
.fn_init_mod_88_reference_1:                                                                        ; access size: DWORDS
   57368:	21 91 05 00 ac 91    	and    DWORD PTR [ecx-0x6e53fffb],edx                               ; fixup: num: 13844, src obj: 1, src ofs: 0x57368, dst obj: 1, dst ofs: 0x59121; fixup: num: 13843, src obj: 1, src ofs: 0x5736c, dst obj: 1, dst ofs: 0x591ac
   5736e:	05 00 f3 91 05       	add    eax,@obj1:menu_reference_700                                 ; fixup: num: 13842, src obj: 1, src ofs: 0x57370, dst obj: 1, dst ofs: 0x591f3
   57373:	00 8e 9c 05 00 2f    	add    BYTE PTR [esi+0x2f00059c],cl                                 ; fixup: num: 13841, src obj: 1, src ofs: 0x57374, dst obj: 1, dst ofs: 0x59c8e; fixup: num: 13840, src obj: 1, src ofs: 0x57378, dst obj: 1, dst ofs: 0x5812f
; misplaced item, should be at offset 0x57378
.fn_init_mod_88_reference_2:                                                                        ; access size: DWORDS
   57379:	81 05 00 7f 83 05 00 f5 83 05 	add    DWORD PTR ds:@obj1:menu_reference_200,@obj1:menu_reference_300; fixup: num: 13839, src obj: 1, src ofs: 0x5737c, dst obj: 1, dst ofs: 0x5837f; fixup: num: 13838, src obj: 1, src ofs: 0x57380, dst obj: 1, dst ofs: 0x583f5
   57383:	00 fb                	add    bl,bh                                                        ; fixup: num: 13837, src obj: 1, src ofs: 0x57384, dst obj: 1, dst ofs: 0x584fb
   57385:	84 05 00 42 a0 05    	test   BYTE PTR ds:@obj1:menu_reference_900,al                      ; fixup: num: 13836, src obj: 1, src ofs: 0x57388, dst obj: 1, dst ofs: 0x5a042
   5738b:	00 fc                	add    ah,bh                                                        ; fixup: num: 13835, src obj: 1, src ofs: 0x5738c, dst obj: 1, dst ofs: 0x5a2fc
   5738d:	a2 05 00         	mov    ds:0x51530005,al

;-------------------------------------------------
;  Function 'menu'                               -
;-------------------------------------------------
menu:
   57390:	53                   	push   ebx
   57391:	51                   	push   ecx
   57392:	52                   	push   edx
   57393:	56                   	push   esi
   57394:	57                   	push   edi
   57395:	55                   	push   ebp
   57396:	89 e5                	mov    ebp,esp
   57398:	81 ec 60 0e 00 00    	sub    esp,0xe60
   5739e:	81 ed 82 00 00 00    	sub    ebp,0x82
   573a4:	31 d2                	xor    edx,edx
   573a6:	b4 01                	mov    ah,0x1
   573a8:	89 55 b6             	mov    DWORD PTR [ebp-0x4a],edx
   573ab:	88 65 72             	mov    BYTE PTR [ebp+0x72],ah
   573ae:	ba 01 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_2                                ; fixup: num: 13834, src obj: 1, src ofs: 0x573af, dst obj: 3, dst ofs: 0xd301
   573b3:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13833, src obj: 1, src ofs: 0x573b4, dst obj: 3, dst ofs: 0x25b3c
   573b8:	8d bd e2 fd ff ff    	lea    edi,[ebp-0x21e]
   573be:	e8 0d 64 01 00       	call   get
   573c3:	89 c6                	mov    esi,eax
   573c5:	ba 0d d3 00 00       	mov    edx,@obj3:menu_cpp_variable_3                                ; fixup: num: 13832, src obj: 1, src ofs: 0x573c6, dst obj: 3, dst ofs: 0xd30d
   573ca:	57                   	push   edi
menu_branch_1:
   573cb:	8a 06                	mov    al,BYTE PTR [esi]
   573cd:	88 07                	mov    BYTE PTR [edi],al
   573cf:	3c 00                	cmp    al,0x0
   573d1:	74 10                	je     menu_branch_2
   573d3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   573d6:	83 c6 02             	add    esi,0x2
   573d9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   573dc:	83 c7 02             	add    edi,0x2
   573df:	3c 00                	cmp    al,0x0
   573e1:	75 e8                	jne    menu_branch_1
menu_branch_2:
   573e3:	5f                   	pop    edi
   573e4:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13831, src obj: 1, src ofs: 0x573e5, dst obj: 3, dst ofs: 0x25b3c
   573e9:	8d bd 00 fe ff ff    	lea    edi,[ebp-0x200]
   573ef:	e8 dc 63 01 00       	call   get
   573f4:	89 c6                	mov    esi,eax
   573f6:	ba 19 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_4                                ; fixup: num: 13855, src obj: 1, src ofs: 0x573f7, dst obj: 3, dst ofs: 0xd319
   573fb:	57                   	push   edi
menu_branch_3:
   573fc:	8a 06                	mov    al,BYTE PTR [esi]
   573fe:	88 07                	mov    BYTE PTR [edi],al
   57400:	3c 00                	cmp    al,0x0
   57402:	74 10                	je     menu_branch_4
   57404:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   57407:	83 c6 02             	add    esi,0x2
   5740a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5740d:	83 c7 02             	add    edi,0x2
   57410:	3c 00                	cmp    al,0x0
   57412:	75 e8                	jne    menu_branch_3
menu_branch_4:
   57414:	5f                   	pop    edi
   57415:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13854, src obj: 1, src ofs: 0x57416, dst obj: 3, dst ofs: 0x25b3c
   5741a:	8d bd 1e fe ff ff    	lea    edi,[ebp-0x1e2]
   57420:	e8 ab 63 01 00       	call   get
   57425:	89 c6                	mov    esi,eax
   57427:	ba 25 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_5                                ; fixup: num: 13853, src obj: 1, src ofs: 0x57428, dst obj: 3, dst ofs: 0xd325
   5742c:	57                   	push   edi
menu_branch_5:
   5742d:	8a 06                	mov    al,BYTE PTR [esi]
   5742f:	88 07                	mov    BYTE PTR [edi],al
   57431:	3c 00                	cmp    al,0x0
   57433:	74 10                	je     menu_branch_6
   57435:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   57438:	83 c6 02             	add    esi,0x2
   5743b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5743e:	83 c7 02             	add    edi,0x2
   57441:	3c 00                	cmp    al,0x0
   57443:	75 e8                	jne    menu_branch_5
menu_branch_6:
   57445:	5f                   	pop    edi
   57446:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13852, src obj: 1, src ofs: 0x57447, dst obj: 3, dst ofs: 0x25b3c
   5744b:	8d bd 3c fe ff ff    	lea    edi,[ebp-0x1c4]
   57451:	e8 7a 63 01 00       	call   get
   57456:	89 c6                	mov    esi,eax
   57458:	ba 31 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_6                                ; fixup: num: 13851, src obj: 1, src ofs: 0x57459, dst obj: 3, dst ofs: 0xd331
   5745d:	57                   	push   edi
menu_branch_7:
   5745e:	8a 06                	mov    al,BYTE PTR [esi]
   57460:	88 07                	mov    BYTE PTR [edi],al
   57462:	3c 00                	cmp    al,0x0
   57464:	74 10                	je     menu_branch_8
   57466:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   57469:	83 c6 02             	add    esi,0x2
   5746c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5746f:	83 c7 02             	add    edi,0x2
   57472:	3c 00                	cmp    al,0x0
   57474:	75 e8                	jne    menu_branch_7
menu_branch_8:
   57476:	5f                   	pop    edi
   57477:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13850, src obj: 1, src ofs: 0x57478, dst obj: 3, dst ofs: 0x25b3c
   5747c:	8d bd 5a fe ff ff    	lea    edi,[ebp-0x1a6]
   57482:	e8 49 63 01 00       	call   get
   57487:	89 c6                	mov    esi,eax
   57489:	ba 3d d3 00 00       	mov    edx,@obj3:menu_cpp_variable_7                                ; fixup: num: 13849, src obj: 1, src ofs: 0x5748a, dst obj: 3, dst ofs: 0xd33d
   5748e:	57                   	push   edi
menu_branch_9:
   5748f:	8a 06                	mov    al,BYTE PTR [esi]
   57491:	88 07                	mov    BYTE PTR [edi],al
   57493:	3c 00                	cmp    al,0x0
   57495:	74 10                	je     menu_branch_10
   57497:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5749a:	83 c6 02             	add    esi,0x2
   5749d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   574a0:	83 c7 02             	add    edi,0x2
   574a3:	3c 00                	cmp    al,0x0
   574a5:	75 e8                	jne    menu_branch_9
menu_branch_10:
   574a7:	5f                   	pop    edi
   574a8:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13861, src obj: 1, src ofs: 0x574a9, dst obj: 3, dst ofs: 0x25b3c
   574ad:	8d bd 78 fe ff ff    	lea    edi,[ebp-0x188]
   574b3:	e8 18 63 01 00       	call   get
   574b8:	89 c6                	mov    esi,eax
   574ba:	57                   	push   edi
menu_branch_11:
   574bb:	8a 06                	mov    al,BYTE PTR [esi]
   574bd:	88 07                	mov    BYTE PTR [edi],al
   574bf:	3c 00                	cmp    al,0x0
   574c1:	74 10                	je     menu_branch_12
   574c3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   574c6:	83 c6 02             	add    esi,0x2
   574c9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   574cc:	83 c7 02             	add    edi,0x2
   574cf:	3c 00                	cmp    al,0x0
   574d1:	75 e8                	jne    menu_branch_11
menu_branch_12:
   574d3:	5f                   	pop    edi
   574d4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13860, src obj: 1, src ofs: 0x574d5, dst obj: 3, dst ofs: 0x1a1d4
   574d9:	ba 07 00 00 00       	mov    edx,0x7
   574de:	e8 bd 44 fb ff       	call   update_mod_9
   574e3:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13859, src obj: 1, src ofs: 0x574e4, dst obj: 3, dst ofs: 0x26094
   574e8:	e8 a3 24 01 00       	call   set_pointer
   574ed:	e8 6e 8f 01 00       	call   PauseActiveTimers
   574f2:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13858, src obj: 1, src ofs: 0x574f3, dst obj: 3, dst ofs: 0x1a1d4
   574f7:	e8 a4 44 fb ff       	call   update_mod_9
   574fc:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13857, src obj: 1, src ofs: 0x574fd, dst obj: 3, dst ofs: 0x25a88
   57501:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 13856, src obj: 1, src ofs: 0x57503, dst obj: 3, dst ofs: 0x260b4
   57507:	e8 24 4c ff ff       	call   insert_bitmap
   5750c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13871, src obj: 1, src ofs: 0x5750d, dst obj: 3, dst ofs: 0x1a1d4
   57511:	e8 8a 44 fb ff       	call   update_mod_9
   57516:	b8 49 d3 00 00       	mov    eax,@obj3:menu_cpp_variable_8                                ; fixup: num: 13870, src obj: 1, src ofs: 0x57517, dst obj: 3, dst ofs: 0xd349
   5751b:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 13869, src obj: 1, src ofs: 0x5751d, dst obj: 3, dst ofs: 0x25bbc
   57521:	e8 5a 15 ff ff       	call   stringheightCFN
   57526:	8a 15 9c 60 02 00    	mov    dl,BYTE PTR ds:@obj3:combat_mode                             ; fixup: num: 13868, src obj: 1, src ofs: 0x57528, dst obj: 3, dst ofs: 0x2609c
   5752c:	89 45 e6             	mov    DWORD PTR [ebp-0x1a],eax
   5752f:	84 d2                	test   dl,dl
   57531:	74 32                	je     menu_branch_15
   57533:	be 4b d3 00 00       	mov    esi,@obj3:menu_cpp_variable_9                                ; fixup: num: 13867, src obj: 1, src ofs: 0x57534, dst obj: 3, dst ofs: 0xd34b
   57538:	8d bd 00 fe ff ff    	lea    edi,[ebp-0x200]
   5753e:	57                   	push   edi
menu_branch_13:
   5753f:	8a 06                	mov    al,BYTE PTR [esi]
   57541:	88 07                	mov    BYTE PTR [edi],al
   57543:	3c 00                	cmp    al,0x0
   57545:	74 10                	je     menu_branch_14
   57547:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5754a:	83 c6 02             	add    esi,0x2
   5754d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   57550:	83 c7 02             	add    edi,0x2
   57553:	3c 00                	cmp    al,0x0
   57555:	75 e8                	jne    menu_branch_13
menu_branch_14:
   57557:	5f                   	pop    edi
   57558:	be 4d d3 00 00       	mov    esi,@obj3:menu_cpp_variable_10                               ; fixup: num: 13866, src obj: 1, src ofs: 0x57559, dst obj: 3, dst ofs: 0xd34d
   5755d:	8d bd 1e fe ff ff    	lea    edi,[ebp-0x1e2]
   57563:	eb 1d                	jmp    menu_branch_17
menu_branch_15:
   57565:	80 3d b1 3e 01 00 00 	cmp    BYTE PTR ds:@obj3:show_pc,0x0                                ; fixup: num: 13865, src obj: 1, src ofs: 0x57567, dst obj: 3, dst ofs: 0x13eb1
   5756c:	74 09                	je     menu_branch_16
   5756e:	83 3d 08 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:game_in_progress,0x0                      ; fixup: num: 13864, src obj: 1, src ofs: 0x57570, dst obj: 3, dst ofs: 0x13f08
   57575:	75 25                	jne    menu_branch_20
menu_branch_16:
   57577:	be 4f d3 00 00       	mov    esi,@obj3:menu_cpp_variable_11                               ; fixup: num: 13863, src obj: 1, src ofs: 0x57578, dst obj: 3, dst ofs: 0xd34f
   5757c:	8d bd 00 fe ff ff    	lea    edi,[ebp-0x200]
menu_branch_17:
   57582:	57                   	push   edi
menu_branch_18:
   57583:	8a 06                	mov    al,BYTE PTR [esi]
   57585:	88 07                	mov    BYTE PTR [edi],al
   57587:	3c 00                	cmp    al,0x0
   57589:	74 10                	je     menu_branch_19
   5758b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5758e:	83 c6 02             	add    esi,0x2
   57591:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   57594:	83 c7 02             	add    edi,0x2
   57597:	3c 00                	cmp    al,0x0
   57599:	75 e8                	jne    menu_branch_18
menu_branch_19:
   5759b:	5f                   	pop    edi
menu_branch_20:
   5759c:	31 ff                	xor    edi,edi
   5759e:	eb 0b                	jmp    menu_branch_22
menu_branch_21:
   575a0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13862, src obj: 1, src ofs: 0x575a1, dst obj: 3, dst ofs: 0x1a1d4
   575a5:	e8 f6 43 fb ff       	call   update_mod_9
   575aa:	47                   	inc    edi
menu_branch_22:
   575ab:	83 ff 06             	cmp    edi,0x6
   575ae:	0f 8d 7c 00 00 00    	jge    menu_branch_24
   575b4:	b8 50 00 00 00       	mov    eax,0x50
   575b9:	e8 5a a9 01 00       	call   W?$nwn(ui)pnv
   575be:	89 45 ca             	mov    DWORD PTR [ebp-0x36],eax
   575c1:	85 c0                	test   eax,eax
   575c3:	74 4b                	je     menu_branch_23
   575c5:	8b 45 e6             	mov    eax,DWORD PTR [ebp-0x1a]
   575c8:	0f af c7             	imul   eax,edi
   575cb:	6a 00                	push   0x0
   575cd:	89 fe                	mov    esi,edi
   575cf:	6a ce                	push   0xffffffce
   575d1:	c1 e6 04             	shl    esi,0x4
   575d4:	83 c0 64             	add    eax,0x64
   575d7:	29 fe                	sub    esi,edi
   575d9:	50                   	push   eax
   575da:	8d 04 36             	lea    eax,[esi+esi*1]
   575dd:	8d b5 e2 fd ff ff    	lea    esi,[ebp-0x21e]
   575e3:	01 c6                	add    esi,eax
   575e5:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13875, src obj: 1, src ofs: 0x575e7, dst obj: 3, dst ofs: 0x25bc0
   575eb:	89 f0                	mov    eax,esi
   575ed:	e8 3e 13 ff ff       	call   stringwidthCFN
   575f2:	ba 7f 02 00 00       	mov    edx,0x27f
   575f7:	29 c2                	sub    edx,eax
   575f9:	89 d0                	mov    eax,edx
   575fb:	89 f1                	mov    ecx,esi
   575fd:	d1 e8                	shr    eax,1
   575ff:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13874, src obj: 1, src ofs: 0x57601, dst obj: 3, dst ofs: 0x25bc0
   57605:	50                   	push   eax
   57606:	89 f2                	mov    edx,esi
   57608:	8b 45 ca             	mov    eax,DWORD PTR [ebp-0x36]
   5760b:	e8 f0 25 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_23:
   57610:	89 c2                	mov    edx,eax
   57612:	89 54 bd 92          	mov    DWORD PTR [ebp+edi*4-0x6e],edx
   57616:	85 d2                	test   edx,edx
   57618:	75 86                	jne    menu_branch_21
   5761a:	bb 51 d3 00 00       	mov    ebx,@obj3:menu_cpp_variable_12                               ; fixup: num: 13873, src obj: 1, src ofs: 0x5761b, dst obj: 3, dst ofs: 0xd351
   5761f:	ba 78 00 00 00       	mov    edx,0x78
   57624:	31 c0                	xor    eax,eax
   57626:	e8 05 0a fe ff       	call   _error_report
   5762b:	e9 70 ff ff ff       	jmp    menu_branch_21
menu_branch_24:
   57630:	68 84 01 00 00       	push   0x184
   57635:	b9 e5 01 00 00       	mov    ecx,0x1e5
   5763a:	ba a0 00 00 00       	mov    edx,0xa0
   5763f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13872, src obj: 1, src ofs: 0x57640, dst obj: 3, dst ofs: 0x25a84
   57644:	31 db                	xor    ebx,ebx
   57646:	e8 15 64 ff ff       	call   refresh_area
menu_branch_25:
   5764b:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13887, src obj: 1, src ofs: 0x5764e, dst obj: 3, dst ofs: 0x25908
   57652:	83 f8 01             	cmp    eax,0x1
   57655:	74 f4                	je     menu_branch_25
   57657:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13886, src obj: 1, src ofs: 0x57658, dst obj: 3, dst ofs: 0x25a84
   5765c:	e8 3f 66 ff ff       	call   update_mod_84
menu_branch_26:
   57661:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 13885, src obj: 1, src ofs: 0x57664, dst obj: 3, dst ofs: 0x25908
   57669:	74 0b                	je     menu_branch_27
   5766b:	31 f6                	xor    esi,esi
   5766d:	66 89 35 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,si                                 ; fixup: num: 13884, src obj: 1, src ofs: 0x57670, dst obj: 3, dst ofs: 0x25908
   57674:	eb eb                	jmp    menu_branch_26
menu_branch_27:
   57676:	a1 bc 5b 02 00       	mov    eax,ds:@obj3:harvfont                                        ; fixup: num: 13883, src obj: 1, src ofs: 0x57677, dst obj: 3, dst ofs: 0x25bbc
   5767b:	b9 63 00 00 00       	mov    ecx,0x63
   57680:	e8 2b 14 ff ff       	call   fontdepthCFN
   57685:	83 c0 02             	add    eax,0x2
   57688:	89 4d ea             	mov    DWORD PTR [ebp-0x16],ecx
   5768b:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
menu_branch_28:
   5768e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13882, src obj: 1, src ofs: 0x5768f, dst obj: 3, dst ofs: 0x1a1d4
   57693:	e8 08 43 fb ff       	call   update_mod_9
menu_branch_29:
   57698:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13881, src obj: 1, src ofs: 0x57699, dst obj: 3, dst ofs: 0x25a84
   5769d:	e8 fe 65 ff ff       	call   update_mod_84
   576a2:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13880, src obj: 1, src ofs: 0x576a3, dst obj: 3, dst ofs: 0x1a1d4
   576a7:	e8 f4 42 fb ff       	call   update_mod_9
   576ac:	8b 3d 7c 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13879, src obj: 1, src ofs: 0x576ae, dst obj: 3, dst ofs: 0x2597c
   576b2:	83 ef 64             	sub    edi,0x64
   576b5:	83 ff 01             	cmp    edi,0x1
   576b8:	7d 05                	jge    menu_branch_30
   576ba:	bf 01 00 00 00       	mov    edi,0x1
menu_branch_30:
   576bf:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   576c2:	89 fa                	mov    edx,edi
   576c4:	89 f8                	mov    eax,edi
   576c6:	c1 fa 1f             	sar    edx,0x1f
   576c9:	f7 fe                	idiv   esi
   576cb:	89 c7                	mov    edi,eax
   576cd:	83 f8 06             	cmp    eax,0x6
   576d0:	7c 05                	jl     menu_branch_31
   576d2:	bf 05 00 00 00       	mov    edi,0x5
menu_branch_31:
   576d7:	31 c0                	xor    eax,eax
   576d9:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 13878, src obj: 1, src ofs: 0x576da, dst obj: 3, dst ofs: 0x25974
   576de:	83 f8 01             	cmp    eax,0x1
   576e1:	0f 85 a2 07 00 00    	jne    menu_branch_88
menu_branch_32:
   576e7:	31 c0                	xor    eax,eax
   576e9:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 13877, src obj: 1, src ofs: 0x576ea, dst obj: 3, dst ofs: 0x25974
   576ee:	83 f8 01             	cmp    eax,0x1
   576f1:	75 16                	jne    menu_branch_33
   576f3:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13876, src obj: 1, src ofs: 0x576f4, dst obj: 3, dst ofs: 0x25a84
   576f8:	e8 a3 65 ff ff       	call   update_mod_84
   576fd:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13776, src obj: 1, src ofs: 0x576fe, dst obj: 3, dst ofs: 0x1a1d4
   57702:	e8 99 42 fb ff       	call   update_mod_9
   57707:	eb de                	jmp    menu_branch_32
menu_branch_33:
   57709:	85 ff                	test   edi,edi
   5770b:	74 09                	je     menu_branch_34
   5770d:	83 ff 05             	cmp    edi,0x5
   57710:	0f 85 c1 09 00 00    	jne    menu_branch_107
menu_branch_34:
   57716:	b8 4c 00 00 00       	mov    eax,0x4c
   5771b:	e8 f8 a7 01 00       	call   W?$nwn(ui)pnv
   57720:	85 c0                	test   eax,eax
   57722:	74 2b                	je     menu_branch_35
   57724:	6a 00                	push   0x0
   57726:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13775, src obj: 1, src ofs: 0x57727, dst obj: 1, dst ofs: 0x71493
   5772b:	6a 00                	push   0x0
   5772d:	6a 00                	push   0x0
   5772f:	6a 01                	push   0x1
   57731:	68 00 00 4c c2       	push   0xc24c0000
   57736:	b9 a7 00 00 00       	mov    ecx,0xa7
   5773b:	68 c8 00 00 00       	push   0xc8
   57740:	bb 69 d3 00 00       	mov    ebx,@obj3:menu_cpp_variable_13                               ; fixup: num: 13774, src obj: 1, src ofs: 0x57741, dst obj: 3, dst ofs: 0xd369
   57745:	ba 74 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_14                               ; fixup: num: 13773, src obj: 1, src ofs: 0x57746, dst obj: 3, dst ofs: 0xd374
   5774a:	e8 91 35 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_35:
   5774f:	89 45 c6             	mov    DWORD PTR [ebp-0x3a],eax
   57752:	85 c0                	test   eax,eax
   57754:	75 0f                	jne    menu_branch_36
   57756:	bb 91 d3 00 00       	mov    ebx,@obj3:menu_cpp_variable_15                               ; fixup: num: 13772, src obj: 1, src ofs: 0x57757, dst obj: 3, dst ofs: 0xd391
   5775b:	ba a6 00 00 00       	mov    edx,0xa6
   57760:	e8 cb 08 fe ff       	call   _error_report
menu_branch_36:
   57765:	8b 55 c6             	mov    edx,DWORD PTR [ebp-0x3a]
   57768:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13771, src obj: 1, src ofs: 0x57769, dst obj: 3, dst ofs: 0x25a88
   5776d:	e8 be 49 ff ff       	call   insert_bitmap
   57772:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13770, src obj: 1, src ofs: 0x57773, dst obj: 3, dst ofs: 0x1a1d4
   57777:	e8 24 42 fb ff       	call   update_mod_9
   5777c:	85 ff                	test   edi,edi
   5777e:	75 42                	jne    menu_branch_37
   57780:	b8 50 00 00 00       	mov    eax,0x50
   57785:	e8 8e a7 01 00       	call   W?$nwn(ui)pnv
   5778a:	89 c6                	mov    esi,eax
   5778c:	85 c0                	test   eax,eax
   5778e:	74 73                	je     menu_branch_38
   57790:	57                   	push   edi
   57791:	6a cd                	push   0xffffffcd
   57793:	68 d6 00 00 00       	push   0xd6
   57798:	ba b5 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_17                               ; fixup: num: 13769, src obj: 1, src ofs: 0x57799, dst obj: 3, dst ofs: 0xd3b5
   5779d:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13768, src obj: 1, src ofs: 0x5779e, dst obj: 3, dst ofs: 0x25b3c
   577a2:	68 ea 00 00 00       	push   0xea
   577a7:	b9 a9 d3 00 00       	mov    ecx,@obj3:menu_cpp_variable_16                               ; fixup: num: 13787, src obj: 1, src ofs: 0x577a8, dst obj: 3, dst ofs: 0xd3a9
   577ac:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13786, src obj: 1, src ofs: 0x577ae, dst obj: 3, dst ofs: 0x25bcc
   577b2:	e8 19 60 01 00       	call   get
   577b7:	89 c2                	mov    edx,eax
   577b9:	89 f0                	mov    eax,esi
   577bb:	e8 40 24 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   577c0:	eb 41                	jmp    menu_branch_38
menu_branch_37:
   577c2:	b8 50 00 00 00       	mov    eax,0x50
   577c7:	e8 4c a7 01 00       	call   W?$nwn(ui)pnv
   577cc:	89 c6                	mov    esi,eax
   577ce:	85 c0                	test   eax,eax
   577d0:	74 31                	je     menu_branch_38
   577d2:	6a 00                	push   0x0
   577d4:	6a cd                	push   0xffffffcd
   577d6:	68 d6 00 00 00       	push   0xd6
   577db:	ba c9 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_19                               ; fixup: num: 13785, src obj: 1, src ofs: 0x577dc, dst obj: 3, dst ofs: 0xd3c9
   577e0:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13784, src obj: 1, src ofs: 0x577e1, dst obj: 3, dst ofs: 0x25b3c
   577e5:	68 ea 00 00 00       	push   0xea
   577ea:	b9 bd d3 00 00       	mov    ecx,@obj3:menu_cpp_variable_18                               ; fixup: num: 13783, src obj: 1, src ofs: 0x577eb, dst obj: 3, dst ofs: 0xd3bd
   577ef:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13782, src obj: 1, src ofs: 0x577f1, dst obj: 3, dst ofs: 0x25bcc
   577f5:	e8 d6 5f 01 00       	call   get
   577fa:	89 c2                	mov    edx,eax
   577fc:	89 f0                	mov    eax,esi
   577fe:	e8 fd 23 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_38:
   57803:	89 45 be             	mov    DWORD PTR [ebp-0x42],eax
   57806:	8b 45 be             	mov    eax,DWORD PTR [ebp-0x42]
   57809:	85 c0                	test   eax,eax
   5780b:	75 0f                	jne    menu_branch_39
   5780d:	bb d2 d3 00 00       	mov    ebx,@obj3:menu_cpp_variable_20                               ; fixup: num: 13781, src obj: 1, src ofs: 0x5780e, dst obj: 3, dst ofs: 0xd3d2
   57812:	ba ad 00 00 00       	mov    edx,0xad
   57817:	e8 14 08 fe ff       	call   _error_report
menu_branch_39:
   5781c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13780, src obj: 1, src ofs: 0x5781d, dst obj: 3, dst ofs: 0x1a1d4
   57821:	e8 7a 41 fb ff       	call   update_mod_9
   57826:	b8 50 00 00 00       	mov    eax,0x50
   5782b:	e8 e8 a6 01 00       	call   W?$nwn(ui)pnv
   57830:	89 c6                	mov    esi,eax
   57832:	85 c0                	test   eax,eax
   57834:	74 31                	je     menu_branch_40
   57836:	6a 00                	push   0x0
   57838:	6a cd                	push   0xffffffcd
   5783a:	68 f8 00 00 00       	push   0xf8
   5783f:	ba f3 d3 00 00       	mov    edx,@obj3:menu_cpp_variable_22                               ; fixup: num: 13779, src obj: 1, src ofs: 0x57840, dst obj: 3, dst ofs: 0xd3f3
   57844:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13778, src obj: 1, src ofs: 0x57845, dst obj: 3, dst ofs: 0x25b3c
   57849:	68 dc 00 00 00       	push   0xdc
   5784e:	b9 ea d3 00 00       	mov    ecx,@obj3:menu_cpp_variable_21                               ; fixup: num: 13777, src obj: 1, src ofs: 0x5784f, dst obj: 3, dst ofs: 0xd3ea
   57853:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13798, src obj: 1, src ofs: 0x57855, dst obj: 3, dst ofs: 0x25bd0
   57859:	e8 72 5f 01 00       	call   get
   5785e:	89 c2                	mov    edx,eax
   57860:	89 f0                	mov    eax,esi
   57862:	e8 99 23 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_40:
   57867:	89 c6                	mov    esi,eax
   57869:	85 c0                	test   eax,eax
   5786b:	75 0f                	jne    menu_branch_41
   5786d:	bb f7 d3 00 00       	mov    ebx,@obj3:menu_cpp_variable_23                               ; fixup: num: 13797, src obj: 1, src ofs: 0x5786e, dst obj: 3, dst ofs: 0xd3f7
   57872:	ba b0 00 00 00       	mov    edx,0xb0
   57877:	e8 b4 07 fe ff       	call   _error_report
menu_branch_41:
   5787c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13796, src obj: 1, src ofs: 0x5787d, dst obj: 3, dst ofs: 0x1a1d4
   57881:	e8 1a 41 fb ff       	call   update_mod_9
   57886:	b8 50 00 00 00       	mov    eax,0x50
   5788b:	e8 88 a6 01 00       	call   W?$nwn(ui)pnv
   57890:	89 45 ba             	mov    DWORD PTR [ebp-0x46],eax
   57893:	85 c0                	test   eax,eax
   57895:	74 32                	je     menu_branch_42
   57897:	6a 00                	push   0x0
   57899:	6a cd                	push   0xffffffcd
   5789b:	68 f8 00 00 00       	push   0xf8
   578a0:	ba 17 d4 00 00       	mov    edx,@obj3:menu_cpp_variable_25                               ; fixup: num: 13795, src obj: 1, src ofs: 0x578a1, dst obj: 3, dst ofs: 0xd417
   578a5:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13794, src obj: 1, src ofs: 0x578a6, dst obj: 3, dst ofs: 0x25b3c
   578aa:	68 7c 01 00 00       	push   0x17c
   578af:	b9 0f d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_24                               ; fixup: num: 13793, src obj: 1, src ofs: 0x578b0, dst obj: 3, dst ofs: 0xd40f
   578b4:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13792, src obj: 1, src ofs: 0x578b6, dst obj: 3, dst ofs: 0x25bd0
   578ba:	e8 11 5f 01 00       	call   get
   578bf:	89 c2                	mov    edx,eax
   578c1:	8b 45 ba             	mov    eax,DWORD PTR [ebp-0x46]
   578c4:	e8 37 23 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_42:
   578c9:	89 45 c2             	mov    DWORD PTR [ebp-0x3e],eax
   578cc:	85 c0                	test   eax,eax
   578ce:	75 0f                	jne    menu_branch_43
   578d0:	bb 1a d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_26                               ; fixup: num: 13791, src obj: 1, src ofs: 0x578d1, dst obj: 3, dst ofs: 0xd41a
   578d5:	ba b3 00 00 00       	mov    edx,0xb3
   578da:	e8 51 07 fe ff       	call   _error_report
menu_branch_43:
   578df:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13790, src obj: 1, src ofs: 0x578e0, dst obj: 3, dst ofs: 0x1a1d4
   578e4:	bb ff ff ff ff       	mov    ebx,0xffffffff
   578e9:	e8 b2 40 fb ff       	call   update_mod_9
   578ee:	89 5d ee             	mov    DWORD PTR [ebp-0x12],ebx
   578f1:	89 5d f2             	mov    DWORD PTR [ebp-0xe],ebx
menu_branch_44:
   578f4:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13789, src obj: 1, src ofs: 0x578f5, dst obj: 3, dst ofs: 0x25a84
   578f9:	e8 a2 63 ff ff       	call   update_mod_84
   578fe:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13788, src obj: 1, src ofs: 0x578ff, dst obj: 3, dst ofs: 0x1a1d4
   57903:	e8 98 40 fb ff       	call   update_mod_9
   57908:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 13811, src obj: 1, src ofs: 0x5790a, dst obj: 3, dst ofs: 0x25972
   5790f:	75 0c                	jne    menu_branch_45
   57911:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13810, src obj: 1, src ofs: 0x57914, dst obj: 3, dst ofs: 0x25908
   57918:	83 f8 01             	cmp    eax,0x1
   5791b:	75 2f                	jne    menu_branch_47
menu_branch_45:
   5791d:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13809, src obj: 1, src ofs: 0x57920, dst obj: 3, dst ofs: 0x25908
   57924:	83 f8 01             	cmp    eax,0x1
   57927:	74 0d                	je     menu_branch_46
   57929:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 13808, src obj: 1, src ofs: 0x5792b, dst obj: 3, dst ofs: 0x25972
   57930:	0f 84 ae 04 00 00    	je     menu_branch_83
menu_branch_46:
   57936:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13807, src obj: 1, src ofs: 0x57937, dst obj: 3, dst ofs: 0x1a1d4
   5793b:	e8 60 40 fb ff       	call   update_mod_9
   57940:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13806, src obj: 1, src ofs: 0x57941, dst obj: 3, dst ofs: 0x25a84
   57945:	e8 56 63 ff ff       	call   update_mod_84
   5794a:	eb d1                	jmp    menu_branch_45
menu_branch_47:
   5794c:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13805, src obj: 1, src ofs: 0x5794f, dst obj: 3, dst ofs: 0x25908
   57953:	83 f8 15             	cmp    eax,0x15
   57956:	75 2d                	jne    menu_branch_49
   57958:	c7 45 ee 01 00 00 00 	mov    DWORD PTR [ebp-0x12],0x1
menu_branch_48:
   5795f:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13804, src obj: 1, src ofs: 0x57962, dst obj: 3, dst ofs: 0x25908
   57966:	83 f8 15             	cmp    eax,0x15
   57969:	0f 85 75 04 00 00    	jne    menu_branch_83
   5796f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13803, src obj: 1, src ofs: 0x57970, dst obj: 3, dst ofs: 0x1a1d4
   57974:	e8 27 40 fb ff       	call   update_mod_9
   57979:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13802, src obj: 1, src ofs: 0x5797a, dst obj: 3, dst ofs: 0x25a84
   5797e:	e8 1d 63 ff ff       	call   update_mod_84
   57983:	eb da                	jmp    menu_branch_48
menu_branch_49:
   57985:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13801, src obj: 1, src ofs: 0x57988, dst obj: 3, dst ofs: 0x25908
   5798c:	83 f8 31             	cmp    eax,0x31
   5798f:	75 2b                	jne    menu_branch_51
   57991:	31 c0                	xor    eax,eax
   57993:	89 45 ee             	mov    DWORD PTR [ebp-0x12],eax
menu_branch_50:
   57996:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13800, src obj: 1, src ofs: 0x57999, dst obj: 3, dst ofs: 0x25908
   5799d:	83 f8 31             	cmp    eax,0x31
   579a0:	0f 85 3e 04 00 00    	jne    menu_branch_83
   579a6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13799, src obj: 1, src ofs: 0x579a7, dst obj: 3, dst ofs: 0x1a1d4
   579ab:	e8 f0 3f fb ff       	call   update_mod_9
   579b0:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13820, src obj: 1, src ofs: 0x579b1, dst obj: 3, dst ofs: 0x25a84
   579b5:	e8 e6 62 ff ff       	call   update_mod_84
   579ba:	eb da                	jmp    menu_branch_50
menu_branch_51:
   579bc:	81 3d 78 59 02 00 d2 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xd2                     ; fixup: num: 13819, src obj: 1, src ofs: 0x579be, dst obj: 3, dst ofs: 0x25978
   579c6:	7c 2b                	jl     menu_branch_52
   579c8:	81 3d 78 59 02 00 04 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x104                    ; fixup: num: 13818, src obj: 1, src ofs: 0x579ca, dst obj: 3, dst ofs: 0x25978
   579d2:	7f 1f                	jg     menu_branch_52
   579d4:	81 3d 7c 59 02 00 ee 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xee                     ; fixup: num: 13817, src obj: 1, src ofs: 0x579d6, dst obj: 3, dst ofs: 0x2597c
   579de:	7c 13                	jl     menu_branch_52
   579e0:	81 3d 7c 59 02 00 08 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x108                    ; fixup: num: 13816, src obj: 1, src ofs: 0x579e2, dst obj: 3, dst ofs: 0x2597c
   579ea:	7f 07                	jg     menu_branch_52
   579ec:	b8 01 00 00 00       	mov    eax,0x1
   579f1:	eb 02                	jmp    menu_branch_53
menu_branch_52:
   579f3:	31 c0                	xor    eax,eax
menu_branch_53:
   579f5:	85 c0                	test   eax,eax
   579f7:	0f 84 41 01 00 00    	je     menu_branch_63
   579fd:	83 7d f2 01          	cmp    DWORD PTR [ebp-0xe],0x1
   57a01:	0f 84 00 01 00 00    	je     menu_branch_61
   57a07:	85 f6                	test   esi,esi
   57a09:	74 10                	je     menu_branch_54
   57a0b:	74 0e                	je     menu_branch_54
   57a0d:	89 f0                	mov    eax,esi
   57a0f:	31 d2                	xor    edx,edx
   57a11:	e8 0a 25 ff ff       	call   W?$dt:TEXTBM$n()_
   57a16:	e8 5d a6 01 00       	call   W?$dln(pnv)v
menu_branch_54:
   57a1b:	b8 50 00 00 00       	mov    eax,0x50
   57a20:	e8 f3 a4 01 00       	call   W?$nwn(ui)pnv
   57a25:	89 c6                	mov    esi,eax
   57a27:	85 c0                	test   eax,eax
   57a29:	74 31                	je     menu_branch_55
   57a2b:	6a 00                	push   0x0
   57a2d:	6a cd                	push   0xffffffcd
   57a2f:	68 f8 00 00 00       	push   0xf8
   57a34:	ba 3b d4 00 00       	mov    edx,@obj3:menu_cpp_variable_28                               ; fixup: num: 13815, src obj: 1, src ofs: 0x57a35, dst obj: 3, dst ofs: 0xd43b
   57a39:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13814, src obj: 1, src ofs: 0x57a3a, dst obj: 3, dst ofs: 0x25b3c
   57a3e:	68 dc 00 00 00       	push   0xdc
   57a43:	b9 32 d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_27                               ; fixup: num: 13813, src obj: 1, src ofs: 0x57a44, dst obj: 3, dst ofs: 0xd432
   57a48:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13812, src obj: 1, src ofs: 0x57a4a, dst obj: 3, dst ofs: 0x25bcc
   57a4e:	e8 7d 5d 01 00       	call   get
   57a53:	89 c2                	mov    edx,eax
   57a55:	89 f0                	mov    eax,esi
   57a57:	e8 a4 21 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_55:
   57a5c:	89 c6                	mov    esi,eax
   57a5e:	85 c0                	test   eax,eax
   57a60:	75 0f                	jne    menu_branch_56
   57a62:	bb 3f d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_29                               ; fixup: num: 13710, src obj: 1, src ofs: 0x57a63, dst obj: 3, dst ofs: 0xd43f
   57a67:	ba db 00 00 00       	mov    edx,0xdb
   57a6c:	e8 bf 05 fe ff       	call   _error_report
menu_branch_56:
   57a71:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13828, src obj: 1, src ofs: 0x57a72, dst obj: 3, dst ofs: 0x1a1d4
   57a76:	8b 5d f2             	mov    ebx,DWORD PTR [ebp-0xe]
   57a79:	e8 22 3f fb ff       	call   update_mod_9
   57a7e:	85 db                	test   ebx,ebx
   57a80:	0f 85 7a 00 00 00    	jne    menu_branch_60
   57a86:	8b 4d c2             	mov    ecx,DWORD PTR [ebp-0x3e]
   57a89:	85 c9                	test   ecx,ecx
   57a8b:	74 10                	je     menu_branch_57
   57a8d:	74 0e                	je     menu_branch_57
   57a8f:	89 c8                	mov    eax,ecx
   57a91:	31 d2                	xor    edx,edx
   57a93:	e8 88 24 ff ff       	call   W?$dt:TEXTBM$n()_
   57a98:	e8 db a5 01 00       	call   W?$dln(pnv)v
menu_branch_57:
   57a9d:	b8 50 00 00 00       	mov    eax,0x50
   57aa2:	e8 71 a4 01 00       	call   W?$nwn(ui)pnv
   57aa7:	89 45 d6             	mov    DWORD PTR [ebp-0x2a],eax
   57aaa:	85 c0                	test   eax,eax
   57aac:	74 32                	je     menu_branch_58
   57aae:	6a 00                	push   0x0
   57ab0:	6a cd                	push   0xffffffcd
   57ab2:	68 f8 00 00 00       	push   0xf8
   57ab7:	ba 5f d4 00 00       	mov    edx,@obj3:menu_cpp_variable_31                               ; fixup: num: 13827, src obj: 1, src ofs: 0x57ab8, dst obj: 3, dst ofs: 0xd45f
   57abc:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13826, src obj: 1, src ofs: 0x57abd, dst obj: 3, dst ofs: 0x25b3c
   57ac1:	68 7c 01 00 00       	push   0x17c
   57ac6:	b9 57 d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_30                               ; fixup: num: 13825, src obj: 1, src ofs: 0x57ac7, dst obj: 3, dst ofs: 0xd457
   57acb:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13824, src obj: 1, src ofs: 0x57acd, dst obj: 3, dst ofs: 0x25bd0
   57ad1:	e8 fa 5c 01 00       	call   get
   57ad6:	89 c2                	mov    edx,eax
   57ad8:	8b 45 d6             	mov    eax,DWORD PTR [ebp-0x2a]
   57adb:	e8 20 21 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_58:
   57ae0:	89 45 c2             	mov    DWORD PTR [ebp-0x3e],eax
   57ae3:	85 c0                	test   eax,eax
   57ae5:	75 0f                	jne    menu_branch_59
   57ae7:	bb 62 d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_32                               ; fixup: num: 13823, src obj: 1, src ofs: 0x57ae8, dst obj: 3, dst ofs: 0xd462
   57aec:	ba e4 00 00 00       	mov    edx,0xe4
   57af1:	e8 3a 05 fe ff       	call   _error_report
menu_branch_59:
   57af6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13822, src obj: 1, src ofs: 0x57af7, dst obj: 3, dst ofs: 0x1a1d4
   57afb:	e8 a0 3e fb ff       	call   update_mod_9
menu_branch_60:
   57b00:	c7 45 f2 01 00 00 00 	mov    DWORD PTR [ebp-0xe],0x1
menu_branch_61:
   57b07:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13821, src obj: 1, src ofs: 0x57b09, dst obj: 3, dst ofs: 0x25974
   57b0e:	0f 84 e0 fd ff ff    	je     menu_branch_44
   57b14:	c7 45 ee 01 00 00 00 	mov    DWORD PTR [ebp-0x12],0x1
menu_branch_62:
   57b1b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13717, src obj: 1, src ofs: 0x57b1d, dst obj: 3, dst ofs: 0x25974
   57b22:	0f 84 bc 02 00 00    	je     menu_branch_83
   57b28:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13716, src obj: 1, src ofs: 0x57b29, dst obj: 3, dst ofs: 0x1a1d4
   57b2d:	e8 6e 3e fb ff       	call   update_mod_9
   57b32:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13715, src obj: 1, src ofs: 0x57b33, dst obj: 3, dst ofs: 0x25a84
   57b37:	e8 64 61 ff ff       	call   update_mod_84
   57b3c:	eb dd                	jmp    menu_branch_62
menu_branch_63:
   57b3e:	81 3d 78 59 02 00 72 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x172                    ; fixup: num: 13714, src obj: 1, src ofs: 0x57b40, dst obj: 3, dst ofs: 0x25978
   57b48:	7c 2b                	jl     menu_branch_64
   57b4a:	81 3d 78 59 02 00 9a 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x19a                    ; fixup: num: 13713, src obj: 1, src ofs: 0x57b4c, dst obj: 3, dst ofs: 0x25978
   57b54:	7f 1f                	jg     menu_branch_64
   57b56:	81 3d 7c 59 02 00 ee 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0xee                     ; fixup: num: 13712, src obj: 1, src ofs: 0x57b58, dst obj: 3, dst ofs: 0x2597c
   57b60:	7c 13                	jl     menu_branch_64
   57b62:	81 3d 7c 59 02 00 08 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x108                    ; fixup: num: 13711, src obj: 1, src ofs: 0x57b64, dst obj: 3, dst ofs: 0x2597c
   57b6c:	7f 07                	jg     menu_branch_64
   57b6e:	b8 01 00 00 00       	mov    eax,0x1
   57b73:	eb 02                	jmp    menu_branch_65
menu_branch_64:
   57b75:	31 c0                	xor    eax,eax
menu_branch_65:
   57b77:	85 c0                	test   eax,eax
   57b79:	0f 84 44 01 00 00    	je     menu_branch_75
   57b7f:	83 7d f2 00          	cmp    DWORD PTR [ebp-0xe],0x0
   57b83:	0f 84 7a 00 00 00    	je     menu_branch_69
   57b89:	8b 4d c2             	mov    ecx,DWORD PTR [ebp-0x3e]
   57b8c:	85 c9                	test   ecx,ecx
   57b8e:	74 10                	je     menu_branch_66
   57b90:	74 0e                	je     menu_branch_66
   57b92:	89 c8                	mov    eax,ecx
   57b94:	31 d2                	xor    edx,edx
   57b96:	e8 85 23 ff ff       	call   W?$dt:TEXTBM$n()_
   57b9b:	e8 d8 a4 01 00       	call   W?$dln(pnv)v
menu_branch_66:
   57ba0:	b8 50 00 00 00       	mov    eax,0x50
   57ba5:	e8 6e a3 01 00       	call   W?$nwn(ui)pnv
   57baa:	89 45 da             	mov    DWORD PTR [ebp-0x26],eax
   57bad:	85 c0                	test   eax,eax
   57baf:	74 32                	je     menu_branch_67
   57bb1:	6a 00                	push   0x0
   57bb3:	6a cd                	push   0xffffffcd
   57bb5:	68 f8 00 00 00       	push   0xf8
   57bba:	ba 82 d4 00 00       	mov    edx,@obj3:menu_cpp_variable_34                               ; fixup: num: 13728, src obj: 1, src ofs: 0x57bbb, dst obj: 3, dst ofs: 0xd482
   57bbf:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13727, src obj: 1, src ofs: 0x57bc0, dst obj: 3, dst ofs: 0x25b3c
   57bc4:	68 7c 01 00 00       	push   0x17c
   57bc9:	b9 7a d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_33                               ; fixup: num: 13726, src obj: 1, src ofs: 0x57bca, dst obj: 3, dst ofs: 0xd47a
   57bce:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13725, src obj: 1, src ofs: 0x57bd0, dst obj: 3, dst ofs: 0x25bcc
   57bd4:	e8 f7 5b 01 00       	call   get
   57bd9:	89 c2                	mov    edx,eax
   57bdb:	8b 45 da             	mov    eax,DWORD PTR [ebp-0x26]
   57bde:	e8 1d 20 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_67:
   57be3:	89 45 c2             	mov    DWORD PTR [ebp-0x3e],eax
   57be6:	85 c0                	test   eax,eax
   57be8:	75 0f                	jne    menu_branch_68
   57bea:	bb 85 d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_35                               ; fixup: num: 13724, src obj: 1, src ofs: 0x57beb, dst obj: 3, dst ofs: 0xd485
   57bef:	ba fc 00 00 00       	mov    edx,0xfc
   57bf4:	e8 37 04 fe ff       	call   _error_report
menu_branch_68:
   57bf9:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13723, src obj: 1, src ofs: 0x57bfa, dst obj: 3, dst ofs: 0x1a1d4
   57bfe:	e8 9d 3d fb ff       	call   update_mod_9
menu_branch_69:
   57c03:	83 7d f2 01          	cmp    DWORD PTR [ebp-0xe],0x1
   57c07:	0f 85 7e 00 00 00    	jne    menu_branch_73
   57c0d:	85 f6                	test   esi,esi
   57c0f:	74 10                	je     menu_branch_70
   57c11:	74 0e                	je     menu_branch_70
   57c13:	89 f0                	mov    eax,esi
   57c15:	31 d2                	xor    edx,edx
   57c17:	e8 04 23 ff ff       	call   W?$dt:TEXTBM$n()_
   57c1c:	e8 57 a4 01 00       	call   W?$dln(pnv)v
menu_branch_70:
   57c21:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13722, src obj: 1, src ofs: 0x57c22, dst obj: 3, dst ofs: 0x1a1d4
   57c26:	e8 75 3d fb ff       	call   update_mod_9
   57c2b:	b8 50 00 00 00       	mov    eax,0x50
   57c30:	e8 e3 a2 01 00       	call   W?$nwn(ui)pnv
   57c35:	89 c6                	mov    esi,eax
   57c37:	85 c0                	test   eax,eax
   57c39:	74 31                	je     menu_branch_71
   57c3b:	6a 00                	push   0x0
   57c3d:	6a cd                	push   0xffffffcd
   57c3f:	68 f8 00 00 00       	push   0xf8
   57c44:	ba a6 d4 00 00       	mov    edx,@obj3:menu_cpp_variable_37                               ; fixup: num: 13721, src obj: 1, src ofs: 0x57c45, dst obj: 3, dst ofs: 0xd4a6
   57c49:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13720, src obj: 1, src ofs: 0x57c4a, dst obj: 3, dst ofs: 0x25b3c
   57c4e:	68 dc 00 00 00       	push   0xdc
   57c53:	b9 9d d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_36                               ; fixup: num: 13719, src obj: 1, src ofs: 0x57c54, dst obj: 3, dst ofs: 0xd49d
   57c58:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13718, src obj: 1, src ofs: 0x57c5a, dst obj: 3, dst ofs: 0x25bd0
   57c5e:	e8 6d 5b 01 00       	call   get
   57c63:	89 c2                	mov    edx,eax
   57c65:	89 f0                	mov    eax,esi
   57c67:	e8 94 1f ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_71:
   57c6c:	89 c6                	mov    esi,eax
   57c6e:	85 c0                	test   eax,eax
   57c70:	75 0f                	jne    menu_branch_72
   57c72:	bb aa d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_38                               ; fixup: num: 13737, src obj: 1, src ofs: 0x57c73, dst obj: 3, dst ofs: 0xd4aa
   57c77:	ba 07 01 00 00       	mov    edx,0x107
   57c7c:	e8 af 03 fe ff       	call   _error_report
menu_branch_72:
   57c81:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13736, src obj: 1, src ofs: 0x57c82, dst obj: 3, dst ofs: 0x1a1d4
   57c86:	e8 15 3d fb ff       	call   update_mod_9
menu_branch_73:
   57c8b:	31 c9                	xor    ecx,ecx
   57c8d:	89 4d f2             	mov    DWORD PTR [ebp-0xe],ecx
   57c90:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13735, src obj: 1, src ofs: 0x57c92, dst obj: 3, dst ofs: 0x25974
   57c97:	0f 84 57 fc ff ff    	je     menu_branch_44
   57c9d:	89 4d ee             	mov    DWORD PTR [ebp-0x12],ecx
menu_branch_74:
   57ca0:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 13734, src obj: 1, src ofs: 0x57ca2, dst obj: 3, dst ofs: 0x25974
   57ca7:	0f 84 37 01 00 00    	je     menu_branch_83
   57cad:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13733, src obj: 1, src ofs: 0x57cae, dst obj: 3, dst ofs: 0x1a1d4
   57cb2:	e8 e9 3c fb ff       	call   update_mod_9
   57cb7:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13732, src obj: 1, src ofs: 0x57cb8, dst obj: 3, dst ofs: 0x25a84
   57cbc:	e8 df 5f ff ff       	call   update_mod_84
   57cc1:	eb dd                	jmp    menu_branch_74
menu_branch_75:
   57cc3:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   57cc6:	83 f8 01             	cmp    eax,0x1
   57cc9:	0f 85 7d 00 00 00    	jne    menu_branch_78
   57ccf:	85 f6                	test   esi,esi
   57cd1:	74 10                	je     menu_branch_76
   57cd3:	74 0e                	je     menu_branch_76
   57cd5:	89 f0                	mov    eax,esi
   57cd7:	31 d2                	xor    edx,edx
   57cd9:	e8 42 22 ff ff       	call   W?$dt:TEXTBM$n()_
   57cde:	e8 95 a3 01 00       	call   W?$dln(pnv)v
menu_branch_76:
   57ce3:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13731, src obj: 1, src ofs: 0x57ce4, dst obj: 3, dst ofs: 0x1a1d4
   57ce8:	e8 b3 3c fb ff       	call   update_mod_9
   57ced:	b8 50 00 00 00       	mov    eax,0x50
   57cf2:	e8 21 a2 01 00       	call   W?$nwn(ui)pnv
   57cf7:	89 c6                	mov    esi,eax
   57cf9:	85 c0                	test   eax,eax
   57cfb:	74 31                	je     menu_branch_77
   57cfd:	6a 00                	push   0x0
   57cff:	6a cd                	push   0xffffffcd
   57d01:	68 f8 00 00 00       	push   0xf8
   57d06:	ba cb d4 00 00       	mov    edx,@obj3:menu_cpp_variable_40                               ; fixup: num: 13730, src obj: 1, src ofs: 0x57d07, dst obj: 3, dst ofs: 0xd4cb
   57d0b:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13729, src obj: 1, src ofs: 0x57d0c, dst obj: 3, dst ofs: 0x25b3c
   57d10:	68 dc 00 00 00       	push   0xdc
   57d15:	b9 c2 d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_39                               ; fixup: num: 13746, src obj: 1, src ofs: 0x57d16, dst obj: 3, dst ofs: 0xd4c2
   57d1a:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13745, src obj: 1, src ofs: 0x57d1c, dst obj: 3, dst ofs: 0x25bd0
   57d20:	e8 ab 5a 01 00       	call   get
   57d25:	89 c2                	mov    edx,eax
   57d27:	89 f0                	mov    eax,esi
   57d29:	e8 d2 1e ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_77:
   57d2e:	89 c6                	mov    esi,eax
   57d30:	85 c0                	test   eax,eax
   57d32:	0f 85 96 00 00 00    	jne    menu_branch_81
   57d38:	bb cf d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_41                               ; fixup: num: 13744, src obj: 1, src ofs: 0x57d39, dst obj: 3, dst ofs: 0xd4cf
   57d3d:	ba 1d 01 00 00       	mov    edx,0x11d
   57d42:	e8 e9 02 fe ff       	call   _error_report
   57d47:	e9 82 00 00 00       	jmp    menu_branch_81
menu_branch_78:
   57d4c:	85 c0                	test   eax,eax
   57d4e:	0f 85 84 00 00 00    	jne    menu_branch_82
   57d54:	8b 5d c2             	mov    ebx,DWORD PTR [ebp-0x3e]
   57d57:	85 db                	test   ebx,ebx
   57d59:	74 10                	je     menu_branch_79
   57d5b:	74 0e                	je     menu_branch_79
   57d5d:	89 d8                	mov    eax,ebx
   57d5f:	31 d2                	xor    edx,edx
   57d61:	e8 ba 21 ff ff       	call   W?$dt:TEXTBM$n()_
   57d66:	e8 0d a3 01 00       	call   W?$dln(pnv)v
menu_branch_79:
   57d6b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13743, src obj: 1, src ofs: 0x57d6c, dst obj: 3, dst ofs: 0x1a1d4
   57d70:	e8 2b 3c fb ff       	call   update_mod_9
   57d75:	b8 50 00 00 00       	mov    eax,0x50
   57d7a:	e8 99 a1 01 00       	call   W?$nwn(ui)pnv
   57d7f:	89 45 ce             	mov    DWORD PTR [ebp-0x32],eax
   57d82:	85 c0                	test   eax,eax
   57d84:	74 32                	je     menu_branch_80
   57d86:	6a 00                	push   0x0
   57d88:	6a cd                	push   0xffffffcd
   57d8a:	68 f8 00 00 00       	push   0xf8
   57d8f:	ba ef d4 00 00       	mov    edx,@obj3:menu_cpp_variable_43                               ; fixup: num: 13742, src obj: 1, src ofs: 0x57d90, dst obj: 3, dst ofs: 0xd4ef
   57d94:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 13741, src obj: 1, src ofs: 0x57d95, dst obj: 3, dst ofs: 0x25b3c
   57d99:	68 7c 01 00 00       	push   0x17c
   57d9e:	b9 e7 d4 00 00       	mov    ecx,@obj3:menu_cpp_variable_42                               ; fixup: num: 13740, src obj: 1, src ofs: 0x57d9f, dst obj: 3, dst ofs: 0xd4e7
   57da3:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13739, src obj: 1, src ofs: 0x57da5, dst obj: 3, dst ofs: 0x25bd0
   57da9:	e8 22 5a 01 00       	call   get
   57dae:	89 c2                	mov    edx,eax
   57db0:	8b 45 ce             	mov    eax,DWORD PTR [ebp-0x32]
   57db3:	e8 48 1e ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_80:
   57db8:	89 45 c2             	mov    DWORD PTR [ebp-0x3e],eax
   57dbb:	85 c0                	test   eax,eax
   57dbd:	75 0f                	jne    menu_branch_81
   57dbf:	bb f2 d4 00 00       	mov    ebx,@obj3:menu_cpp_variable_44                               ; fixup: num: 13738, src obj: 1, src ofs: 0x57dc0, dst obj: 3, dst ofs: 0xd4f2
   57dc4:	ba 28 01 00 00       	mov    edx,0x128
   57dc9:	e8 62 02 fe ff       	call   _error_report
menu_branch_81:
   57dce:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13752, src obj: 1, src ofs: 0x57dcf, dst obj: 3, dst ofs: 0x1a1d4
   57dd3:	e8 c8 3b fb ff       	call   update_mod_9
menu_branch_82:
   57dd8:	c7 45 f2 ff ff ff ff 	mov    DWORD PTR [ebp-0xe],0xffffffff
   57ddf:	e9 10 fb ff ff       	jmp    menu_branch_44
menu_branch_83:
   57de4:	8b 5d be             	mov    ebx,DWORD PTR [ebp-0x42]
   57de7:	85 db                	test   ebx,ebx
   57de9:	74 10                	je     menu_branch_84
   57deb:	74 0e                	je     menu_branch_84
   57ded:	89 d8                	mov    eax,ebx
   57def:	31 d2                	xor    edx,edx
   57df1:	e8 2a 21 ff ff       	call   W?$dt:TEXTBM$n()_
   57df6:	e8 7d a2 01 00       	call   W?$dln(pnv)v
menu_branch_84:
   57dfb:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13751, src obj: 1, src ofs: 0x57dfc, dst obj: 3, dst ofs: 0x1a1d4
   57e00:	e8 9b 3b fb ff       	call   update_mod_9
   57e05:	85 f6                	test   esi,esi
   57e07:	74 10                	je     menu_branch_85
   57e09:	74 0e                	je     menu_branch_85
   57e0b:	89 f0                	mov    eax,esi
   57e0d:	31 d2                	xor    edx,edx
   57e0f:	e8 0c 21 ff ff       	call   W?$dt:TEXTBM$n()_
   57e14:	e8 5f a2 01 00       	call   W?$dln(pnv)v
menu_branch_85:
   57e19:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13750, src obj: 1, src ofs: 0x57e1a, dst obj: 3, dst ofs: 0x1a1d4
   57e1e:	8b 75 c2             	mov    esi,DWORD PTR [ebp-0x3e]
   57e21:	e8 7a 3b fb ff       	call   update_mod_9
   57e26:	85 f6                	test   esi,esi
   57e28:	74 10                	je     menu_branch_86
   57e2a:	74 0e                	je     menu_branch_86
   57e2c:	89 f0                	mov    eax,esi
   57e2e:	31 d2                	xor    edx,edx
   57e30:	e8 eb 20 ff ff       	call   W?$dt:TEXTBM$n()_
   57e35:	e8 3e a2 01 00       	call   W?$dln(pnv)v
menu_branch_86:
   57e3a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13749, src obj: 1, src ofs: 0x57e3b, dst obj: 3, dst ofs: 0x1a1d4
   57e3f:	8b 55 c6             	mov    edx,DWORD PTR [ebp-0x3a]
   57e42:	e8 59 3b fb ff       	call   update_mod_9
   57e47:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13748, src obj: 1, src ofs: 0x57e48, dst obj: 3, dst ofs: 0x25a88
   57e4c:	e8 9f 48 ff ff       	call   remove_bitmap
   57e51:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13747, src obj: 1, src ofs: 0x57e52, dst obj: 3, dst ofs: 0x1a1d4
   57e56:	8b 55 c6             	mov    edx,DWORD PTR [ebp-0x3a]
   57e59:	e8 42 3b fb ff       	call   update_mod_9
   57e5e:	85 d2                	test   edx,edx
   57e60:	74 11                	je     menu_branch_87
   57e62:	74 0f                	je     menu_branch_87
   57e64:	8b 45 c6             	mov    eax,DWORD PTR [ebp-0x3a]
   57e67:	31 d2                	xor    edx,edx
   57e69:	e8 32 35 fe ff       	call   W?$dt:BTMAP$n()_
   57e6e:	e8 05 a2 01 00       	call   W?$dln(pnv)v
menu_branch_87:
   57e73:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13761, src obj: 1, src ofs: 0x57e74, dst obj: 3, dst ofs: 0x1a1d4
   57e78:	8b 4d ee             	mov    ecx,DWORD PTR [ebp-0x12]
   57e7b:	e8 20 3b fb ff       	call   update_mod_9
   57e80:	83 f9 01             	cmp    ecx,0x1
   57e83:	0f 84 4e 02 00 00    	je     menu_branch_107
menu_branch_88:
   57e89:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13760, src obj: 1, src ofs: 0x57e8c, dst obj: 3, dst ofs: 0x25908
   57e90:	83 f8 01             	cmp    eax,0x1
   57e93:	74 0c                	je     menu_branch_89
   57e95:	31 c0                	xor    eax,eax
   57e97:	a0 72 59 02 00       	mov    al,ds:@obj3:right_button                                     ; fixup: num: 13759, src obj: 1, src ofs: 0x57e98, dst obj: 3, dst ofs: 0x25972
   57e9c:	83 f8 01             	cmp    eax,0x1
   57e9f:	75 0a                	jne    menu_branch_90
menu_branch_89:
   57ea1:	bf ff ff ff ff       	mov    edi,0xffffffff
   57ea6:	e9 2c 02 00 00       	jmp    menu_branch_107
menu_branch_90:
   57eab:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13758, src obj: 1, src ofs: 0x57eae, dst obj: 3, dst ofs: 0x25908
   57eb2:	83 f8 31             	cmp    eax,0x31
   57eb5:	75 07                	jne    menu_branch_91
   57eb7:	31 ff                	xor    edi,edi
   57eb9:	e9 58 f8 ff ff       	jmp    menu_branch_34
menu_branch_91:
   57ebe:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13757, src obj: 1, src ofs: 0x57ec1, dst obj: 3, dst ofs: 0x25908
   57ec5:	83 f8 1f             	cmp    eax,0x1f
   57ec8:	75 0a                	jne    menu_branch_92
   57eca:	bf 01 00 00 00       	mov    edi,0x1
   57ecf:	e9 03 02 00 00       	jmp    menu_branch_107
menu_branch_92:
   57ed4:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13756, src obj: 1, src ofs: 0x57ed7, dst obj: 3, dst ofs: 0x25908
   57edb:	83 f8 26             	cmp    eax,0x26
   57ede:	75 0a                	jne    menu_branch_93
   57ee0:	bf 02 00 00 00       	mov    edi,0x2
   57ee5:	e9 ed 01 00 00       	jmp    menu_branch_107
menu_branch_93:
   57eea:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13755, src obj: 1, src ofs: 0x57eed, dst obj: 3, dst ofs: 0x25908
   57ef1:	83 f8 18             	cmp    eax,0x18
   57ef4:	75 0a                	jne    menu_branch_94
   57ef6:	bf 03 00 00 00       	mov    edi,0x3
   57efb:	e9 d7 01 00 00       	jmp    menu_branch_107
menu_branch_94:
   57f00:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13754, src obj: 1, src ofs: 0x57f03, dst obj: 3, dst ofs: 0x25908
   57f07:	83 f8 23             	cmp    eax,0x23
   57f0a:	75 0a                	jne    menu_branch_95
   57f0c:	bf 04 00 00 00       	mov    edi,0x4
   57f11:	e9 c1 01 00 00       	jmp    menu_branch_107
menu_branch_95:
   57f16:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13753, src obj: 1, src ofs: 0x57f19, dst obj: 3, dst ofs: 0x25908
   57f1d:	83 f8 10             	cmp    eax,0x10
   57f20:	75 0a                	jne    menu_branch_96
   57f22:	bf 05 00 00 00       	mov    edi,0x5
   57f27:	e9 ea f7 ff ff       	jmp    menu_branch_34
menu_branch_96:
   57f2c:	3b 7d ea             	cmp    edi,DWORD PTR [ebp-0x16]
   57f2f:	75 0a                	jne    menu_branch_97
   57f31:	80 7d 72 00          	cmp    BYTE PTR [ebp+0x72],0x0
   57f35:	0f 84 5d f7 ff ff    	je     menu_branch_29
menu_branch_97:
   57f3b:	8d 14 bd 00 00 00 00 	lea    edx,[edi*4+0x0]
   57f42:	83 7c 2a 92 00       	cmp    DWORD PTR [edx+ebp*1-0x6e],0x0
   57f47:	74 2e                	je     menu_branch_99
   57f49:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13765, src obj: 1, src ofs: 0x57f4a, dst obj: 3, dst ofs: 0x1a1d4
   57f4e:	e8 4d 3a fb ff       	call   update_mod_9
   57f53:	8b 44 2a 92          	mov    eax,DWORD PTR [edx+ebp*1-0x6e]
   57f57:	85 c0                	test   eax,eax
   57f59:	74 0c                	je     menu_branch_98
   57f5b:	31 d2                	xor    edx,edx
   57f5d:	e8 be 1f ff ff       	call   W?$dt:TEXTBM$n()_
   57f62:	e8 11 a1 01 00       	call   W?$dln(pnv)v
menu_branch_98:
   57f67:	31 d2                	xor    edx,edx
   57f69:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13764, src obj: 1, src ofs: 0x57f6a, dst obj: 3, dst ofs: 0x1a1d4
   57f6e:	89 54 bd 92          	mov    DWORD PTR [ebp+edi*4-0x6e],edx
   57f72:	e8 29 3a fb ff       	call   update_mod_9
menu_branch_99:
   57f77:	b8 50 00 00 00       	mov    eax,0x50
   57f7c:	e8 97 9f 01 00       	call   W?$nwn(ui)pnv
   57f81:	89 45 d2             	mov    DWORD PTR [ebp-0x2e],eax
   57f84:	85 c0                	test   eax,eax
   57f86:	74 4b                	je     menu_branch_100
   57f88:	8b 45 e6             	mov    eax,DWORD PTR [ebp-0x1a]
   57f8b:	0f af c7             	imul   eax,edi
   57f8e:	6a 00                	push   0x0
   57f90:	89 fe                	mov    esi,edi
   57f92:	6a ce                	push   0xffffffce
   57f94:	c1 e6 04             	shl    esi,0x4
   57f97:	83 c0 64             	add    eax,0x64
   57f9a:	29 fe                	sub    esi,edi
   57f9c:	50                   	push   eax
   57f9d:	8d 04 36             	lea    eax,[esi+esi*1]
   57fa0:	8d b5 e2 fd ff ff    	lea    esi,[ebp-0x21e]
   57fa6:	01 c6                	add    esi,eax
   57fa8:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 13763, src obj: 1, src ofs: 0x57faa, dst obj: 3, dst ofs: 0x25bbc
   57fae:	89 f0                	mov    eax,esi
   57fb0:	e8 7b 09 ff ff       	call   stringwidthCFN
   57fb5:	ba 7f 02 00 00       	mov    edx,0x27f
   57fba:	29 c2                	sub    edx,eax
   57fbc:	89 d0                	mov    eax,edx
   57fbe:	89 f1                	mov    ecx,esi
   57fc0:	d1 e8                	shr    eax,1
   57fc2:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 13762, src obj: 1, src ofs: 0x57fc4, dst obj: 3, dst ofs: 0x25bbc
   57fc8:	50                   	push   eax
   57fc9:	89 f2                	mov    edx,esi
   57fcb:	8b 45 d2             	mov    eax,DWORD PTR [ebp-0x2e]
   57fce:	e8 2d 1c ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_100:
   57fd3:	89 44 bd 92          	mov    DWORD PTR [ebp+edi*4-0x6e],eax
   57fd7:	85 c0                	test   eax,eax
   57fd9:	75 0f                	jne    menu_branch_101
   57fdb:	bb 0a d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_45                               ; fixup: num: 13767, src obj: 1, src ofs: 0x57fdc, dst obj: 3, dst ofs: 0xd50a
   57fe0:	ba 94 01 00 00       	mov    edx,0x194
   57fe5:	e8 46 00 fe ff       	call   _error_report
menu_branch_101:
   57fea:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13766, src obj: 1, src ofs: 0x57feb, dst obj: 3, dst ofs: 0x1a1d4
   57fef:	e8 ac 39 fb ff       	call   update_mod_9
   57ff4:	31 c0                	xor    eax,eax
   57ff6:	8a 45 72             	mov    al,BYTE PTR [ebp+0x72]
   57ff9:	85 c0                	test   eax,eax
   57ffb:	0f 85 c9 00 00 00    	jne    menu_branch_106
   58001:	8b 55 ea             	mov    edx,DWORD PTR [ebp-0x16]
   58004:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
   5800b:	83 7c 2a 92 00       	cmp    DWORD PTR [edx+ebp*1-0x6e],0x0
   58010:	74 31                	je     menu_branch_103
   58012:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14095, src obj: 1, src ofs: 0x58013, dst obj: 3, dst ofs: 0x1a1d4
   58017:	e8 84 39 fb ff       	call   update_mod_9
   5801c:	8b 44 2a 92          	mov    eax,DWORD PTR [edx+ebp*1-0x6e]
   58020:	85 c0                	test   eax,eax
   58022:	74 0c                	je     menu_branch_102
   58024:	31 d2                	xor    edx,edx
   58026:	e8 f5 1e ff ff       	call   W?$dt:TEXTBM$n()_
   5802b:	e8 48 a0 01 00       	call   W?$dln(pnv)v
menu_branch_102:
   58030:	8b 45 ea             	mov    eax,DWORD PTR [ebp-0x16]
   58033:	31 d2                	xor    edx,edx
   58035:	89 54 85 92          	mov    DWORD PTR [ebp+eax*4-0x6e],edx
   58039:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14094, src obj: 1, src ofs: 0x5803a, dst obj: 3, dst ofs: 0x1a1d4
   5803e:	e8 5d 39 fb ff       	call   update_mod_9
menu_branch_103:
   58043:	b8 50 00 00 00       	mov    eax,0x50
   58048:	e8 cb 9e 01 00       	call   W?$nwn(ui)pnv
   5804d:	89 45 0a             	mov    DWORD PTR [ebp+0xa],eax
   58050:	85 c0                	test   eax,eax
   58052:	74 4e                	je     menu_branch_104
   58054:	8b 45 ea             	mov    eax,DWORD PTR [ebp-0x16]
   58057:	0f af 45 e6          	imul   eax,DWORD PTR [ebp-0x1a]
   5805b:	6a 00                	push   0x0
   5805d:	6a ce                	push   0xffffffce
   5805f:	83 c0 64             	add    eax,0x64
   58062:	50                   	push   eax
   58063:	8b 45 ea             	mov    eax,DWORD PTR [ebp-0x16]
   58066:	89 c6                	mov    esi,eax
   58068:	c1 e6 04             	shl    esi,0x4
   5806b:	29 c6                	sub    esi,eax
   5806d:	8d 85 e2 fd ff ff    	lea    eax,[ebp-0x21e]
   58073:	01 f6                	add    esi,esi
   58075:	01 c6                	add    esi,eax
   58077:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14093, src obj: 1, src ofs: 0x58079, dst obj: 3, dst ofs: 0x25bc0
   5807d:	89 f0                	mov    eax,esi
   5807f:	e8 ac 08 ff ff       	call   stringwidthCFN
   58084:	ba 7f 02 00 00       	mov    edx,0x27f
   58089:	29 c2                	sub    edx,eax
   5808b:	89 d0                	mov    eax,edx
   5808d:	89 f1                	mov    ecx,esi
   5808f:	d1 e8                	shr    eax,1
   58091:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14100, src obj: 1, src ofs: 0x58093, dst obj: 3, dst ofs: 0x25bc0
   58097:	50                   	push   eax
   58098:	89 f2                	mov    edx,esi
   5809a:	8b 45 0a             	mov    eax,DWORD PTR [ebp+0xa]
   5809d:	e8 5e 1b ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_104:
   580a2:	89 c6                	mov    esi,eax
   580a4:	8b 45 ea             	mov    eax,DWORD PTR [ebp-0x16]
   580a7:	89 74 85 92          	mov    DWORD PTR [ebp+eax*4-0x6e],esi
   580ab:	85 f6                	test   esi,esi
   580ad:	75 11                	jne    menu_branch_105
   580af:	bb 22 d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_46                               ; fixup: num: 14099, src obj: 1, src ofs: 0x580b0, dst obj: 3, dst ofs: 0xd522
   580b4:	ba a9 01 00 00       	mov    edx,0x1a9
   580b9:	31 c0                	xor    eax,eax
   580bb:	e8 70 ff fd ff       	call   _error_report
menu_branch_105:
   580c0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14098, src obj: 1, src ofs: 0x580c1, dst obj: 3, dst ofs: 0x1a1d4
   580c5:	e8 d6 38 fb ff       	call   update_mod_9
menu_branch_106:
   580ca:	30 f6                	xor    dh,dh
   580cc:	89 7d ea             	mov    DWORD PTR [ebp-0x16],edi
   580cf:	88 75 72             	mov    BYTE PTR [ebp+0x72],dh
   580d2:	e9 c1 f5 ff ff       	jmp    menu_branch_29
menu_branch_107:
   580d7:	83 3d 08 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:game_in_progress,0x0                      ; fixup: num: 14097, src obj: 1, src ofs: 0x580d9, dst obj: 3, dst ofs: 0x13f08
   580de:	75 12                	jne    menu_branch_108
   580e0:	83 ff 01             	cmp    edi,0x1
   580e3:	0f 84 a5 f5 ff ff    	je     menu_branch_28
   580e9:	83 ff ff             	cmp    edi,0xffffffff
   580ec:	0f 84 9c f5 ff ff    	je     menu_branch_28
menu_branch_108:
   580f2:	bb 05 00 00 00       	mov    ebx,0x5
   580f7:	eb 01                	jmp    menu_branch_110
menu_branch_109:
   580f9:	4b                   	dec    ebx
menu_branch_110:
   580fa:	85 db                	test   ebx,ebx
   580fc:	0f 8c 7f 22 00 00    	jl     menu_branch_346
   58102:	83 7c 9d 92 00       	cmp    DWORD PTR [ebp+ebx*4-0x6e],0x0
   58107:	74 f0                	je     menu_branch_109
   58109:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14096, src obj: 1, src ofs: 0x5810a, dst obj: 3, dst ofs: 0x1a1d4
   5810e:	e8 8d 38 fb ff       	call   update_mod_9
   58113:	8b 44 9d 92          	mov    eax,DWORD PTR [ebp+ebx*4-0x6e]
   58117:	85 c0                	test   eax,eax
   58119:	74 0c                	je     menu_branch_111
   5811b:	31 d2                	xor    edx,edx
   5811d:	e8 fe 1d ff ff       	call   W?$dt:TEXTBM$n()_
   58122:	e8 51 9f 01 00       	call   W?$dln(pnv)v
menu_branch_111:
   58127:	31 d2                	xor    edx,edx
   58129:	89 54 9d 92          	mov    DWORD PTR [ebp+ebx*4-0x6e],edx
   5812d:	eb ca                	jmp    menu_branch_109
menu_reference_1:
   5812f:	b8 14 00 00 00       	mov    eax,0x14
   58134:	ba 6b 02 00 00       	mov    edx,0x26b
   58139:	bb 01 00 00 00       	mov    ebx,0x1
   5813e:	a3 08 3c 01 00       	mov    ds:@obj3:move_min_x,eax                                      ; fixup: num: 14108, src obj: 1, src ofs: 0x5813f, dst obj: 3, dst ofs: 0x13c08
   58143:	89 15 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,edx                            ; fixup: num: 14107, src obj: 1, src ofs: 0x58145, dst obj: 3, dst ofs: 0x13c0c
   58149:	89 1d 08 3f 01 00    	mov    DWORD PTR ds:@obj3:game_in_progress,ebx                      ; fixup: num: 14106, src obj: 1, src ofs: 0x5814b, dst obj: 3, dst ofs: 0x13f08
   5814f:	e8 3c fd 00 00       	call   Clear_using_on_bm
   58154:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14105, src obj: 1, src ofs: 0x58155, dst obj: 3, dst ofs: 0x25a88
   58159:	e8 82 48 ff ff       	call   remove_all
   5815e:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14104, src obj: 1, src ofs: 0x5815f, dst obj: 3, dst ofs: 0x25bd4
   58163:	e8 f8 40 fe ff       	call   hide
   58168:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14103, src obj: 1, src ofs: 0x58169, dst obj: 3, dst ofs: 0x25bd4
   5816d:	ba 00 01 00 00       	mov    edx,0x100
   58172:	e8 c9 e8 fe ff       	call   clear_mod_76
   58177:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14102, src obj: 1, src ofs: 0x58178, dst obj: 3, dst ofs: 0x26094
   5817c:	30 db                	xor    bl,bl
   5817e:	e8 dd 40 fe ff       	call   hide
   58183:	31 c0                	xor    eax,eax
   58185:	88 1d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bl                                ; fixup: num: 14101, src obj: 1, src ofs: 0x58187, dst obj: 3, dst ofs: 0x2607e
   5818b:	e8 50 a5 fb ff       	call   setvgapalette
   58190:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14115, src obj: 1, src ofs: 0x58191, dst obj: 3, dst ofs: 0x1a1d4
   58195:	e8 06 38 fb ff       	call   update_mod_9
   5819a:	83 3d a8 0f 01 00 01 	cmp    DWORD PTR ds:@obj3:current_cd,0x1                            ; fixup: num: 14114, src obj: 1, src ofs: 0x5819c, dst obj: 3, dst ofs: 0x10fa8
   581a1:	74 52                	je     menu_branch_112
   581a3:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14113, src obj: 1, src ofs: 0x581a4, dst obj: 3, dst ofs: 0x26094
   581a8:	e8 e3 40 fe ff       	call   show
   581ad:	31 d2                	xor    edx,edx
   581af:	b8 01 00 00 00       	mov    eax,0x1
   581b4:	e8 e7 06 fe ff       	call   cd_change_requestor
   581b9:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14112, src obj: 1, src ofs: 0x581ba, dst obj: 3, dst ofs: 0x26094
   581be:	e8 9d 40 fe ff       	call   hide
   581c3:	6a 01                	push   0x1
   581c5:	b9 e0 01 00 00       	mov    ecx,0x1e0
   581ca:	bb 80 02 00 00       	mov    ebx,0x280
   581cf:	6a 00                	push   0x0
   581d1:	31 d2                	xor    edx,edx
   581d3:	31 c0                	xor    eax,eax
   581d5:	e8 76 d5 fa ff       	call   VESA_rectangle
   581da:	83 ec 04             	sub    esp,0x4
   581dd:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14111, src obj: 1, src ofs: 0x581df, dst obj: 3, dst ofs: 0x10fb4
   581e3:	d9 1c 24             	fstp   DWORD PTR [esp]
   581e6:	ba 00 01 00 00       	mov    edx,0x100
   581eb:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14110, src obj: 1, src ofs: 0x581ec, dst obj: 3, dst ofs: 0x26084
   581f0:	e8 7b a5 fb ff       	call   setvgapalette_mod_14
menu_branch_112:
   581f5:	80 3d a7 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:play_intro,0x0                             ; fixup: num: 14109, src obj: 1, src ofs: 0x581f7, dst obj: 3, dst ofs: 0x10fa7
   581fc:	74 11                	je     menu_branch_113
   581fe:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14124, src obj: 1, src ofs: 0x581ff, dst obj: 3, dst ofs: 0x1a1d4
   58203:	31 d2                	xor    edx,edx
   58205:	e8 b6 3d fb ff       	call   change_music_file
   5820a:	e8 11 a5 00 00       	call   harvester_intro
menu_branch_113:
   5820f:	e8 9c 1e fd ff       	call   initialize_dialog_flags
   58214:	b0 07                	mov    al,0x7
   58216:	ba 3a d5 00 00       	mov    edx,@obj3:menu_cpp_variable_47                               ; fixup: num: 14123, src obj: 1, src ofs: 0x58217, dst obj: 3, dst ofs: 0xd53a
   5821b:	30 c9                	xor    cl,cl
   5821d:	31 f6                	xor    esi,esi
   5821f:	88 0d 90 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_1,cl                    ; fixup: num: 14122, src obj: 1, src ofs: 0x58221, dst obj: 3, dst ofs: 0x26090
   58225:	88 0d 91 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_2,cl                    ; fixup: num: 14121, src obj: 1, src ofs: 0x58227, dst obj: 3, dst ofs: 0x26091
   5822b:	a2 92 60 02 00       	mov    ds:@obj3:game_time_variable_3,al                             ; fixup: num: 14120, src obj: 1, src ofs: 0x5822c, dst obj: 3, dst ofs: 0x26092
   58230:	89 35 6c 5b 02 00    	mov    DWORD PTR ds:@obj3:shotgun_shells,esi                        ; fixup: num: 14119, src obj: 1, src ofs: 0x58232, dst obj: 3, dst ofs: 0x25b6c
   58236:	89 35 64 5b 02 00    	mov    DWORD PTR ds:@obj3:bullets,esi                               ; fixup: num: 14118, src obj: 1, src ofs: 0x58238, dst obj: 3, dst ofs: 0x25b64
   5823c:	89 35 68 5b 02 00    	mov    DWORD PTR ds:@obj3:mmbullets,esi                             ; fixup: num: 14117, src obj: 1, src ofs: 0x5823e, dst obj: 3, dst ofs: 0x25b68
   58242:	89 35 60 5b 02 00    	mov    DWORD PTR ds:@obj3:gascans,esi                               ; fixup: num: 14116, src obj: 1, src ofs: 0x58244, dst obj: 3, dst ofs: 0x25b60
   58248:	b4 01                	mov    ah,0x1
   5824a:	89 35 5c 5b 02 00    	mov    DWORD PTR ds:@obj3:nails,esi                                 ; fixup: num: 14139, src obj: 1, src ofs: 0x5824c, dst obj: 3, dst ofs: 0x25b5c
   58250:	88 25 93 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_4,ah                    ; fixup: num: 14138, src obj: 1, src ofs: 0x58252, dst obj: 3, dst ofs: 0x26093
   58256:	e8 f5 81 ff ff       	call   clear_script_data
   5825b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14137, src obj: 1, src ofs: 0x5825c, dst obj: 3, dst ofs: 0x32438
   58260:	e8 6b 55 01 00       	call   get
   58265:	e8 16 fc fd ff       	call   script_reload
   5826a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14136, src obj: 1, src ofs: 0x5826b, dst obj: 3, dst ofs: 0x1a1d4
   5826f:	e8 2c 37 fb ff       	call   update_mod_9
   58274:	e8 07 eb fd ff       	call   outer
   58279:	80 3d 14 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:script_errors,0x0                          ; fixup: num: 14135, src obj: 1, src ofs: 0x5827b, dst obj: 3, dst ofs: 0x25b14
   58280:	74 11                	je     menu_branch_114
   58282:	bb 3f d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_48                               ; fixup: num: 14134, src obj: 1, src ofs: 0x58283, dst obj: 3, dst ofs: 0xd53f
   58287:	ba a5 05 00 00       	mov    edx,0x5a5
   5828c:	31 c0                	xor    eax,eax
   5828e:	e8 9d fd fd ff       	call   _error_report
menu_branch_114:
   58293:	b6 01                	mov    dh,0x1
   58295:	be 01 00 00 00       	mov    esi,0x1
   5829a:	8d 7d aa             	lea    edi,[ebp-0x56]
   5829d:	31 c9                	xor    ecx,ecx
   5829f:	30 db                	xor    bl,bl
   582a1:	89 0d a8 60 02 00    	mov    DWORD PTR ds:@obj3:last_room,ecx                             ; fixup: num: 14133, src obj: 1, src ofs: 0x582a3, dst obj: 3, dst ofs: 0x260a8
   582a7:	88 35 b1 3e 01 00    	mov    BYTE PTR ds:@obj3:show_pc,dh                                 ; fixup: num: 14132, src obj: 1, src ofs: 0x582a9, dst obj: 3, dst ofs: 0x13eb1
   582ad:	89 35 4c 7e 01 00    	mov    DWORD PTR ds:@obj3:starting_new_game,esi                     ; fixup: num: 14131, src obj: 1, src ofs: 0x582af, dst obj: 3, dst ofs: 0x17e4c
   582b3:	be 56 d5 00 00       	mov    esi,@obj3:menu_cpp_variable_49                               ; fixup: num: 14130, src obj: 1, src ofs: 0x582b4, dst obj: 3, dst ofs: 0xd556
   582b8:	88 1d 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,bl                             ; fixup: num: 14129, src obj: 1, src ofs: 0x582ba, dst obj: 3, dst ofs: 0x2609c
   582be:	57                   	push   edi
menu_branch_115:
   582bf:	8a 06                	mov    al,BYTE PTR [esi]
   582c1:	88 07                	mov    BYTE PTR [edi],al
   582c3:	3c 00                	cmp    al,0x0
   582c5:	74 10                	je     menu_branch_116
   582c7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   582ca:	83 c6 02             	add    esi,0x2
   582cd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   582d0:	83 c7 02             	add    edi,0x2
   582d3:	3c 00                	cmp    al,0x0
   582d5:	75 e8                	jne    menu_branch_115
menu_branch_116:
   582d7:	5f                   	pop    edi
   582d8:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14128, src obj: 1, src ofs: 0x582d9, dst obj: 3, dst ofs: 0x25bd4
   582dd:	be 5c d5 00 00       	mov    esi,@obj3:menu_cpp_variable_50                               ; fixup: num: 14127, src obj: 1, src ofs: 0x582de, dst obj: 3, dst ofs: 0xd55c
   582e2:	e8 a9 3f fe ff       	call   show
   582e7:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14126, src obj: 1, src ofs: 0x582e8, dst obj: 3, dst ofs: 0x26094
   582ec:	bf 80 5b 02 00       	mov    edi,@obj3:start_room                                         ; fixup: num: 14125, src obj: 1, src ofs: 0x582ed, dst obj: 3, dst ofs: 0x25b80
   582f1:	e8 9a 3f fe ff       	call   show
   582f6:	57                   	push   edi
menu_branch_117:
   582f7:	8a 06                	mov    al,BYTE PTR [esi]
   582f9:	88 07                	mov    BYTE PTR [edi],al
   582fb:	3c 00                	cmp    al,0x0
   582fd:	74 10                	je     menu_branch_118
   582ff:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58302:	83 c6 02             	add    esi,0x2
   58305:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58308:	83 c7 02             	add    edi,0x2
   5830b:	3c 00                	cmp    al,0x0
   5830d:	75 e8                	jne    menu_branch_117
menu_branch_118:
   5830f:	5f                   	pop    edi
   58310:	8d 45 aa             	lea    eax,[ebp-0x56]
   58313:	e8 28 b2 00 00       	call   room_setup
menu_branch_119:
   58318:	83 3d 08 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:game_in_progress,0x0                      ; fixup: num: 14150, src obj: 1, src ofs: 0x5831a, dst obj: 3, dst ofs: 0x13f08
   5831f:	74 0a                	je     menu_branch_120
   58321:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14149, src obj: 1, src ofs: 0x58322, dst obj: 3, dst ofs: 0x25a84
   58326:	e8 75 59 ff ff       	call   update_mod_84
menu_branch_120:
   5832b:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14148, src obj: 1, src ofs: 0x5832e, dst obj: 3, dst ofs: 0x25908
   58332:	83 f8 2d             	cmp    eax,0x2d
   58335:	74 f4                	je     menu_branch_120
menu_branch_121:
   58337:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14147, src obj: 1, src ofs: 0x5833a, dst obj: 3, dst ofs: 0x25908
   5833e:	83 f8 01             	cmp    eax,0x1
   58341:	74 f4                	je     menu_branch_121
menu_branch_122:
   58343:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14146, src obj: 1, src ofs: 0x58345, dst obj: 3, dst ofs: 0x25974
   5834a:	75 f7                	jne    menu_branch_122
   5834c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14145, src obj: 1, src ofs: 0x5834d, dst obj: 3, dst ofs: 0x1a1d4
   58351:	e8 4a 36 fb ff       	call   update_mod_9
   58356:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14144, src obj: 1, src ofs: 0x58357, dst obj: 3, dst ofs: 0x1a1d4
   5835b:	e8 40 36 fb ff       	call   update_mod_9
   58360:	e8 3b 81 01 00       	call   ResumeActiveTimers
   58365:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14143, src obj: 1, src ofs: 0x58366, dst obj: 3, dst ofs: 0x1a1d4
   5836a:	e8 31 36 fb ff       	call   update_mod_9
   5836f:	8b 45 b6             	mov    eax,DWORD PTR [ebp-0x4a]
   58372:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   58378:	5d                   	pop    ebp
   58379:	5f                   	pop    edi
   5837a:	5e                   	pop    esi
   5837b:	5a                   	pop    edx
   5837c:	59                   	pop    ecx
   5837d:	5b                   	pop    ebx
   5837e:	c3                   	ret    
menu_reference_2:                                                                                   ; access size: DWORD
   5837f:	80 3d b1 3e 01 00 00 	cmp    BYTE PTR ds:@obj3:show_pc,0x0                                ; fixup: num: 14142, src obj: 1, src ofs: 0x58381, dst obj: 3, dst ofs: 0x13eb1
   58386:	74 90                	je     menu_branch_119
   58388:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 14141, src obj: 1, src ofs: 0x5838a, dst obj: 3, dst ofs: 0x2609c
   5838f:	75 87                	jne    menu_branch_119
   58391:	e8 2a af ff ff       	call   save_game2
   58396:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14140, src obj: 1, src ofs: 0x58397, dst obj: 3, dst ofs: 0x25a84
   5839b:	e8 00 59 ff ff       	call   update_mod_84
   583a0:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 14044, src obj: 1, src ofs: 0x583a1, dst obj: 3, dst ofs: 0x25ac4
   583a5:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
   583a9:	74 22                	je     menu_branch_123
   583ab:	b8 62 d5 00 00       	mov    eax,@obj3:menu_cpp_variable_51                               ; fixup: num: 14043, src obj: 1, src ofs: 0x583ac, dst obj: 3, dst ofs: 0xd562
   583b0:	e8 db 43 01 00       	call   check_script_flag
   583b5:	84 c0                	test   al,al
   583b7:	75 14                	jne    menu_branch_123
   583b9:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14042, src obj: 1, src ofs: 0x583bb, dst obj: 3, dst ofs: 0x10fb4
   583bf:	dc 05 02 dd 00 00    	fadd   QWORD PTR ds:@obj3:menu_cpp_variable_175                     ; fixup: num: 14041, src obj: 1, src ofs: 0x583c1, dst obj: 3, dst ofs: 0xdd02
   583c5:	83 ec 08             	sub    esp,0x8
   583c8:	dd 1c 24             	fstp   QWORD PTR [esp]
   583cb:	eb 0e                	jmp    menu_branch_124
menu_branch_123:
   583cd:	8b 35 b8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 14040, src obj: 1, src ofs: 0x583cf, dst obj: 3, dst ofs: 0x10fb8
   583d3:	56                   	push   esi
   583d4:	8b 3d b4 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 14039, src obj: 1, src ofs: 0x583d6, dst obj: 3, dst ofs: 0x10fb4
   583da:	57                   	push   edi
menu_branch_124:
   583db:	6a 00                	push   0x0
   583dd:	6a 00                	push   0x0
   583df:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14038, src obj: 1, src ofs: 0x583e0, dst obj: 3, dst ofs: 0x26084
   583e4:	e8 47 b6 fb ff       	call   fade
   583e9:	c6 05 7e 60 02 00 01 	mov    BYTE PTR ds:@obj3:faded_in,0x1                               ; fixup: num: 14037, src obj: 1, src ofs: 0x583eb, dst obj: 3, dst ofs: 0x2607e
   583f0:	e9 23 ff ff ff       	jmp    menu_branch_119
menu_reference_3:
   583f5:	80 3d 9c 60 02 00 00 	cmp    BYTE PTR ds:@obj3:combat_mode,0x0                            ; fixup: num: 14036, src obj: 1, src ofs: 0x583f7, dst obj: 3, dst ofs: 0x2609c
   583fc:	0f 85 16 ff ff ff    	jne    menu_branch_119
   58402:	b9 14 00 00 00       	mov    ecx,0x14
   58407:	be 6b 02 00 00       	mov    esi,0x26b
   5840c:	89 0d 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,ecx                            ; fixup: num: 14035, src obj: 1, src ofs: 0x5840e, dst obj: 3, dst ofs: 0x13c08
   58412:	89 35 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,esi                            ; fixup: num: 14034, src obj: 1, src ofs: 0x58414, dst obj: 3, dst ofs: 0x13c0c
   58418:	e8 f3 c4 ff ff       	call   load_game2
   5841d:	8b 3d 08 3f 01 00    	mov    edi,DWORD PTR ds:@obj3:game_in_progress                      ; fixup: num: 14033, src obj: 1, src ofs: 0x5841f, dst obj: 3, dst ofs: 0x13f08
   58423:	85 ff                	test   edi,edi
   58425:	74 71                	je     menu_branch_126
   58427:	84 c0                	test   al,al
   58429:	0f 85 e9 fe ff ff    	jne    menu_branch_119
   5842f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14032, src obj: 1, src ofs: 0x58430, dst obj: 3, dst ofs: 0x25a84
   58434:	e8 67 58 ff ff       	call   update_mod_84
   58439:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 14031, src obj: 1, src ofs: 0x5843a, dst obj: 3, dst ofs: 0x25ac4
   5843e:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
   58442:	74 33                	je     menu_branch_125
   58444:	b8 6b d5 00 00       	mov    eax,@obj3:menu_cpp_variable_52                               ; fixup: num: 14030, src obj: 1, src ofs: 0x58445, dst obj: 3, dst ofs: 0xd56b
   58449:	e8 42 43 01 00       	call   check_script_flag
   5844e:	84 c0                	test   al,al
   58450:	75 25                	jne    menu_branch_125
   58452:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14055, src obj: 1, src ofs: 0x58454, dst obj: 3, dst ofs: 0x10fb4
   58458:	dc 05 02 dd 00 00    	fadd   QWORD PTR ds:@obj3:menu_cpp_variable_175                     ; fixup: num: 14054, src obj: 1, src ofs: 0x5845a, dst obj: 3, dst ofs: 0xdd02
   5845e:	83 ec 08             	sub    esp,0x8
   58461:	dd 1c 24             	fstp   QWORD PTR [esp]
   58464:	6a 00                	push   0x0
   58466:	6a 00                	push   0x0
   58468:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14053, src obj: 1, src ofs: 0x58469, dst obj: 3, dst ofs: 0x26084
   5846d:	e8 be b5 fb ff       	call   fade
   58472:	e9 a1 fe ff ff       	jmp    menu_branch_119
menu_branch_125:
   58477:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 14052, src obj: 1, src ofs: 0x58479, dst obj: 3, dst ofs: 0x10fb8
   5847d:	53                   	push   ebx
   5847e:	8b 0d b4 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 14051, src obj: 1, src ofs: 0x58480, dst obj: 3, dst ofs: 0x10fb4
   58484:	51                   	push   ecx
   58485:	6a 00                	push   0x0
   58487:	6a 00                	push   0x0
   58489:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14050, src obj: 1, src ofs: 0x5848a, dst obj: 3, dst ofs: 0x26084
   5848e:	e8 9d b5 fb ff       	call   fade
   58493:	e9 80 fe ff ff       	jmp    menu_branch_119
menu_branch_126:
   58498:	57                   	push   edi
   58499:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5849e:	bb 80 02 00 00       	mov    ebx,0x280
   584a3:	57                   	push   edi
   584a4:	31 d2                	xor    edx,edx
   584a6:	31 c0                	xor    eax,eax
   584a8:	e8 a3 d2 fa ff       	call   VESA_rectangle
   584ad:	b9 09 02 00 00       	mov    ecx,0x209
   584b2:	bb 74 d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_53                               ; fixup: num: 14049, src obj: 1, src ofs: 0x584b3, dst obj: 3, dst ofs: 0xd574
   584b7:	8d 95 22 f5 ff ff    	lea    edx,[ebp-0xade]
   584bd:	b8 7d d5 00 00       	mov    eax,@obj3:menu_cpp_variable_54                               ; fixup: num: 14048, src obj: 1, src ofs: 0x584be, dst obj: 3, dst ofs: 0xd57d
   584c2:	e8 19 49 fb ff       	call   XFILE_read2
   584c7:	85 c0                	test   eax,eax
   584c9:	75 0f                	jne    menu_branch_127
   584cb:	bb 99 d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_55                               ; fixup: num: 14047, src obj: 1, src ofs: 0x584cc, dst obj: 3, dst ofs: 0xd599
   584d0:	ba 0a 02 00 00       	mov    edx,0x20a
   584d5:	e8 56 fb fd ff       	call   _error_report
menu_branch_127:
   584da:	a1 b8 0f 01 00       	mov    eax,ds:@obj3:pal_gamma_variable_1                            ; fixup: num: 14046, src obj: 1, src ofs: 0x584db, dst obj: 3, dst ofs: 0x10fb8
   584df:	50                   	push   eax
   584e0:	8b 15 b4 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 14045, src obj: 1, src ofs: 0x584e2, dst obj: 3, dst ofs: 0x10fb4
   584e6:	52                   	push   edx
   584e7:	6a 00                	push   0x0
   584e9:	6a 00                	push   0x0
   584eb:	8d 85 22 f5 ff ff    	lea    eax,[ebp-0xade]
   584f1:	e8 3a b5 fb ff       	call   fade
   584f6:	e9 1d fe ff ff       	jmp    menu_branch_119
menu_reference_4:
   584fb:	ba ca d5 00 00       	mov    edx,@obj3:menu_cpp_variable_56                               ; fixup: num: 14063, src obj: 1, src ofs: 0x584fc, dst obj: 3, dst ofs: 0xd5ca
   58500:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14062, src obj: 1, src ofs: 0x58501, dst obj: 3, dst ofs: 0x25b3c
   58505:	8d bd 82 fc ff ff    	lea    edi,[ebp-0x37e]
   5850b:	e8 c0 52 01 00       	call   get
   58510:	30 db                	xor    bl,bl
   58512:	ba d9 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_57                               ; fixup: num: 14061, src obj: 1, src ofs: 0x58513, dst obj: 3, dst ofs: 0xd5d9
   58517:	88 5d 6a             	mov    BYTE PTR [ebp+0x6a],bl
   5851a:	88 5d 7e             	mov    BYTE PTR [ebp+0x7e],bl
   5851d:	89 c6                	mov    esi,eax
   5851f:	88 5d 76             	mov    BYTE PTR [ebp+0x76],bl
   58522:	57                   	push   edi
menu_branch_128:
   58523:	8a 06                	mov    al,BYTE PTR [esi]
   58525:	88 07                	mov    BYTE PTR [edi],al
   58527:	3c 00                	cmp    al,0x0
   58529:	74 10                	je     menu_branch_129
   5852b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5852e:	83 c6 02             	add    esi,0x2
   58531:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58534:	83 c7 02             	add    edi,0x2
   58537:	3c 00                	cmp    al,0x0
   58539:	75 e8                	jne    menu_branch_128
menu_branch_129:
   5853b:	5f                   	pop    edi
   5853c:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14060, src obj: 1, src ofs: 0x5853d, dst obj: 3, dst ofs: 0x25b3c
   58541:	8d bd b4 fc ff ff    	lea    edi,[ebp-0x34c]
   58547:	e8 84 52 01 00       	call   get
   5854c:	89 c6                	mov    esi,eax
   5854e:	ba e8 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_58                               ; fixup: num: 14059, src obj: 1, src ofs: 0x5854f, dst obj: 3, dst ofs: 0xd5e8
   58553:	57                   	push   edi
menu_branch_130:
   58554:	8a 06                	mov    al,BYTE PTR [esi]
   58556:	88 07                	mov    BYTE PTR [edi],al
   58558:	3c 00                	cmp    al,0x0
   5855a:	74 10                	je     menu_branch_131
   5855c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5855f:	83 c6 02             	add    esi,0x2
   58562:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58565:	83 c7 02             	add    edi,0x2
   58568:	3c 00                	cmp    al,0x0
   5856a:	75 e8                	jne    menu_branch_130
menu_branch_131:
   5856c:	5f                   	pop    edi
   5856d:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14058, src obj: 1, src ofs: 0x5856e, dst obj: 3, dst ofs: 0x25b3c
   58572:	8d bd e6 fc ff ff    	lea    edi,[ebp-0x31a]
   58578:	e8 53 52 01 00       	call   get
   5857d:	89 c6                	mov    esi,eax
   5857f:	ba f7 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_59                               ; fixup: num: 14057, src obj: 1, src ofs: 0x58580, dst obj: 3, dst ofs: 0xd5f7
   58584:	57                   	push   edi
menu_branch_132:
   58585:	8a 06                	mov    al,BYTE PTR [esi]
   58587:	88 07                	mov    BYTE PTR [edi],al
   58589:	3c 00                	cmp    al,0x0
   5858b:	74 10                	je     menu_branch_133
   5858d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58590:	83 c6 02             	add    esi,0x2
   58593:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58596:	83 c7 02             	add    edi,0x2
   58599:	3c 00                	cmp    al,0x0
   5859b:	75 e8                	jne    menu_branch_132
menu_branch_133:
   5859d:	5f                   	pop    edi
   5859e:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14056, src obj: 1, src ofs: 0x5859f, dst obj: 3, dst ofs: 0x25b3c
   585a3:	8d bd 18 fd ff ff    	lea    edi,[ebp-0x2e8]
   585a9:	e8 22 52 01 00       	call   get
   585ae:	89 c6                	mov    esi,eax
   585b0:	ba 06 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_60                               ; fixup: num: 14069, src obj: 1, src ofs: 0x585b1, dst obj: 3, dst ofs: 0xd606
   585b5:	57                   	push   edi
menu_branch_134:
   585b6:	8a 06                	mov    al,BYTE PTR [esi]
   585b8:	88 07                	mov    BYTE PTR [edi],al
   585ba:	3c 00                	cmp    al,0x0
   585bc:	74 10                	je     menu_branch_135
   585be:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   585c1:	83 c6 02             	add    esi,0x2
   585c4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   585c7:	83 c7 02             	add    edi,0x2
   585ca:	3c 00                	cmp    al,0x0
   585cc:	75 e8                	jne    menu_branch_134
menu_branch_135:
   585ce:	5f                   	pop    edi
   585cf:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14068, src obj: 1, src ofs: 0x585d0, dst obj: 3, dst ofs: 0x25b3c
   585d4:	8d bd 4a fd ff ff    	lea    edi,[ebp-0x2b6]
   585da:	e8 f1 51 01 00       	call   get
   585df:	89 c6                	mov    esi,eax
   585e1:	ba 15 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_61                               ; fixup: num: 14067, src obj: 1, src ofs: 0x585e2, dst obj: 3, dst ofs: 0xd615
   585e6:	57                   	push   edi
menu_branch_136:
   585e7:	8a 06                	mov    al,BYTE PTR [esi]
   585e9:	88 07                	mov    BYTE PTR [edi],al
   585eb:	3c 00                	cmp    al,0x0
   585ed:	74 10                	je     menu_branch_137
   585ef:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   585f2:	83 c6 02             	add    esi,0x2
   585f5:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   585f8:	83 c7 02             	add    edi,0x2
   585fb:	3c 00                	cmp    al,0x0
   585fd:	75 e8                	jne    menu_branch_136
menu_branch_137:
   585ff:	5f                   	pop    edi
   58600:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14066, src obj: 1, src ofs: 0x58601, dst obj: 3, dst ofs: 0x25b3c
   58605:	8d bd 7c fd ff ff    	lea    edi,[ebp-0x284]
   5860b:	e8 c0 51 01 00       	call   get
   58610:	89 c6                	mov    esi,eax
   58612:	ba 24 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_62                               ; fixup: num: 14065, src obj: 1, src ofs: 0x58613, dst obj: 3, dst ofs: 0xd624
   58617:	57                   	push   edi
menu_branch_138:
   58618:	8a 06                	mov    al,BYTE PTR [esi]
   5861a:	88 07                	mov    BYTE PTR [edi],al
   5861c:	3c 00                	cmp    al,0x0
   5861e:	74 10                	je     menu_branch_139
   58620:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58623:	83 c6 02             	add    esi,0x2
   58626:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58629:	83 c7 02             	add    edi,0x2
   5862c:	3c 00                	cmp    al,0x0
   5862e:	75 e8                	jne    menu_branch_138
menu_branch_139:
   58630:	5f                   	pop    edi
   58631:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14064, src obj: 1, src ofs: 0x58632, dst obj: 3, dst ofs: 0x25b3c
   58636:	8d bd ae fd ff ff    	lea    edi,[ebp-0x252]
   5863c:	e8 8f 51 01 00       	call   get
   58641:	89 c6                	mov    esi,eax
   58643:	bb 30 02 00 00       	mov    ebx,0x230
   58648:	57                   	push   edi
menu_branch_140:
   58649:	8a 06                	mov    al,BYTE PTR [esi]
   5864b:	88 07                	mov    BYTE PTR [edi],al
   5864d:	3c 00                	cmp    al,0x0
   5864f:	74 10                	je     menu_branch_141
   58651:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58654:	83 c6 02             	add    esi,0x2
   58657:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5865a:	83 c7 02             	add    edi,0x2
   5865d:	3c 00                	cmp    al,0x0
   5865f:	75 e8                	jne    menu_branch_140
menu_branch_141:
   58661:	5f                   	pop    edi
   58662:	31 d2                	xor    edx,edx
   58664:	8d 85 22 f8 ff ff    	lea    eax,[ebp-0x7de]
   5866a:	e8 61 8d 01 00       	call   memset_
   5866f:	bb 30 02 00 00       	mov    ebx,0x230
   58674:	8d 85 52 fa ff ff    	lea    eax,[ebp-0x5ae]
   5867a:	31 d2                	xor    edx,edx
   5867c:	e8 4f 8d 01 00       	call   memset_
   58681:	b8 88 00 00 00       	mov    eax,0x88
   58686:	e8 8d 98 01 00       	call   W?$nwn(ui)pnv
   5868b:	85 c0                	test   eax,eax
   5868d:	74 0a                	je     menu_branch_142
   5868f:	ba 33 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_63                               ; fixup: num: 14078, src obj: 1, src ofs: 0x58690, dst obj: 3, dst ofs: 0xd633
   58694:	e8 d7 fd fa ff       	call   W?$ct:SOUND$n(pna)_
menu_branch_142:
   58699:	89 45 3a             	mov    DWORD PTR [ebp+0x3a],eax
   5869c:	85 c0                	test   eax,eax
   5869e:	75 0f                	jne    menu_branch_143
   586a0:	bb 4e d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_64                               ; fixup: num: 14077, src obj: 1, src ofs: 0x586a1, dst obj: 3, dst ofs: 0xd64e
   586a5:	ba 7a 02 00 00       	mov    edx,0x27a
   586aa:	e8 81 f9 fd ff       	call   _error_report
menu_branch_143:
   586af:	b8 66 d6 00 00       	mov    eax,@obj3:menu_cpp_variable_65                               ; fixup: num: 14076, src obj: 1, src ofs: 0x586b0, dst obj: 3, dst ofs: 0xd666
   586b4:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14075, src obj: 1, src ofs: 0x586b6, dst obj: 3, dst ofs: 0x25bbc
   586ba:	e8 c1 03 ff ff       	call   stringheightCFN
   586bf:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 14074, src obj: 1, src ofs: 0x586c1, dst obj: 3, dst ofs: 0x260b4
   586c5:	89 45 42             	mov    DWORD PTR [ebp+0x42],eax
   586c8:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14073, src obj: 1, src ofs: 0x586c9, dst obj: 3, dst ofs: 0x25a88
   586cd:	e8 5e 3a ff ff       	call   insert_bitmap
   586d2:	b8 4c 00 00 00       	mov    eax,0x4c
   586d7:	e8 3c 98 01 00       	call   W?$nwn(ui)pnv
   586dc:	85 c0                	test   eax,eax
   586de:	74 28                	je     menu_branch_144
   586e0:	6a 00                	push   0x0
   586e2:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14072, src obj: 1, src ofs: 0x586e3, dst obj: 1, dst ofs: 0x71493
   586e7:	6a 00                	push   0x0
   586e9:	6a 00                	push   0x0
   586eb:	6a 01                	push   0x1
   586ed:	68 00 00 48 c2       	push   0xc2480000
   586f2:	b9 68 01 00 00       	mov    ecx,0x168
   586f7:	6a 68                	push   0x68
   586f9:	bb 68 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_66                               ; fixup: num: 14071, src obj: 1, src ofs: 0x586fa, dst obj: 3, dst ofs: 0xd668
   586fe:	ba 70 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_67                               ; fixup: num: 14070, src obj: 1, src ofs: 0x586ff, dst obj: 3, dst ofs: 0xd670
   58703:	e8 d8 25 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_144:
   58708:	89 45 22             	mov    DWORD PTR [ebp+0x22],eax
   5870b:	85 c0                	test   eax,eax
   5870d:	75 0f                	jne    menu_branch_145
   5870f:	bb 8b d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_68                               ; fixup: num: 14087, src obj: 1, src ofs: 0x58710, dst obj: 3, dst ofs: 0xd68b
   58714:	ba 7f 02 00 00       	mov    edx,0x27f
   58719:	e8 12 f9 fd ff       	call   _error_report
menu_branch_145:
   5871e:	b8 4c 00 00 00       	mov    eax,0x4c
   58723:	e8 f0 97 01 00       	call   W?$nwn(ui)pnv
   58728:	85 c0                	test   eax,eax
   5872a:	74 2d                	je     menu_branch_146
   5872c:	6a 00                	push   0x0
   5872e:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14086, src obj: 1, src ofs: 0x5872f, dst obj: 1, dst ofs: 0x71493
   58733:	6a 00                	push   0x0
   58735:	6a 00                	push   0x0
   58737:	6a 01                	push   0x1
   58739:	68 00 00 48 c2       	push   0xc2480000
   5873e:	8b 55 42             	mov    edx,DWORD PTR [ebp+0x42]
   58741:	83 c2 68             	add    edx,0x68
   58744:	b9 68 01 00 00       	mov    ecx,0x168
   58749:	52                   	push   edx
   5874a:	bb a3 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_69                               ; fixup: num: 14085, src obj: 1, src ofs: 0x5874b, dst obj: 3, dst ofs: 0xd6a3
   5874f:	ba ab d6 00 00       	mov    edx,@obj3:menu_cpp_variable_70                               ; fixup: num: 14084, src obj: 1, src ofs: 0x58750, dst obj: 3, dst ofs: 0xd6ab
   58754:	e8 87 25 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_146:
   58759:	89 45 26             	mov    DWORD PTR [ebp+0x26],eax
   5875c:	85 c0                	test   eax,eax
   5875e:	75 0f                	jne    menu_branch_147
   58760:	bb c6 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_71                               ; fixup: num: 14083, src obj: 1, src ofs: 0x58761, dst obj: 3, dst ofs: 0xd6c6
   58765:	ba 81 02 00 00       	mov    edx,0x281
   5876a:	e8 c1 f8 fd ff       	call   _error_report
menu_branch_147:
   5876f:	b8 4c 00 00 00       	mov    eax,0x4c
   58774:	e8 9f 97 01 00       	call   W?$nwn(ui)pnv
   58779:	85 c0                	test   eax,eax
   5877b:	74 32                	je     menu_branch_148
   5877d:	6a 00                	push   0x0
   5877f:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14082, src obj: 1, src ofs: 0x58780, dst obj: 1, dst ofs: 0x71493
   58784:	6a 00                	push   0x0
   58786:	6a 00                	push   0x0
   58788:	6a 01                	push   0x1
   5878a:	68 00 00 48 c2       	push   0xc2480000
   5878f:	8b 55 42             	mov    edx,DWORD PTR [ebp+0x42]
   58792:	8b 5d 42             	mov    ebx,DWORD PTR [ebp+0x42]
   58795:	83 c2 68             	add    edx,0x68
   58798:	01 da                	add    edx,ebx
   5879a:	b9 68 01 00 00       	mov    ecx,0x168
   5879f:	52                   	push   edx
   587a0:	bb de d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_72                               ; fixup: num: 14081, src obj: 1, src ofs: 0x587a1, dst obj: 3, dst ofs: 0xd6de
   587a5:	ba e6 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_73                               ; fixup: num: 14080, src obj: 1, src ofs: 0x587a6, dst obj: 3, dst ofs: 0xd6e6
   587aa:	e8 31 25 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_148:
   587af:	89 45 2a             	mov    DWORD PTR [ebp+0x2a],eax
   587b2:	85 c0                	test   eax,eax
   587b4:	75 0f                	jne    menu_branch_149
   587b6:	bb 01 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_74                               ; fixup: num: 14079, src obj: 1, src ofs: 0x587b7, dst obj: 3, dst ofs: 0xd701
   587bb:	ba 83 02 00 00       	mov    edx,0x283
   587c0:	e8 6b f8 fd ff       	call   _error_report
menu_branch_149:
   587c5:	b8 4c 00 00 00       	mov    eax,0x4c
   587ca:	e8 49 97 01 00       	call   W?$nwn(ui)pnv
   587cf:	85 c0                	test   eax,eax
   587d1:	74 41                	je     menu_branch_150
   587d3:	6a 00                	push   0x0
   587d5:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13973, src obj: 1, src ofs: 0x587d6, dst obj: 1, dst ofs: 0x71493
   587da:	6a 00                	push   0x0
   587dc:	6a 00                	push   0x0
   587de:	6a 01                	push   0x1
   587e0:	68 00 00 48 c2       	push   0xc2480000
   587e5:	8b 15 ac 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 13972, src obj: 1, src ofs: 0x587e7, dst obj: 3, dst ofs: 0x10fac
   587eb:	8d 34 95 00 00 00 00 	lea    esi,[edx*4+0x0]
   587f2:	01 d6                	add    esi,edx
   587f4:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   587fb:	bb 19 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_75                               ; fixup: num: 14092, src obj: 1, src ofs: 0x587fc, dst obj: 3, dst ofs: 0xd719
   58800:	29 d6                	sub    esi,edx
   58802:	6a 6c                	push   0x6c
   58804:	ba 24 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_76                               ; fixup: num: 14091, src obj: 1, src ofs: 0x58805, dst obj: 3, dst ofs: 0xd724
   58809:	8d 8e 6f 01 00 00    	lea    ecx,[esi+0x16f]
   5880f:	e8 cc 24 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_150:
   58814:	89 45 2e             	mov    DWORD PTR [ebp+0x2e],eax
   58817:	85 c0                	test   eax,eax
   58819:	75 0f                	jne    menu_branch_151
   5881b:	bb 41 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_77                               ; fixup: num: 14090, src obj: 1, src ofs: 0x5881c, dst obj: 3, dst ofs: 0xd741
   58820:	ba 85 02 00 00       	mov    edx,0x285
   58825:	e8 06 f8 fd ff       	call   _error_report
menu_branch_151:
   5882a:	b8 4c 00 00 00       	mov    eax,0x4c
   5882f:	e8 e4 96 01 00       	call   W?$nwn(ui)pnv
   58834:	85 c0                	test   eax,eax
   58836:	74 46                	je     menu_branch_152
   58838:	6a 00                	push   0x0
   5883a:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14089, src obj: 1, src ofs: 0x5883b, dst obj: 1, dst ofs: 0x71493
   5883f:	6a 00                	push   0x0
   58841:	6a 00                	push   0x0
   58843:	6a 01                	push   0x1
   58845:	68 00 00 48 c2       	push   0xc2480000
   5884a:	8b 55 42             	mov    edx,DWORD PTR [ebp+0x42]
   5884d:	83 c2 6c             	add    edx,0x6c
   58850:	52                   	push   edx
   58851:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14088, src obj: 1, src ofs: 0x58853, dst obj: 3, dst ofs: 0x10fb0
   58857:	8d 34 95 00 00 00 00 	lea    esi,[edx*4+0x0]
   5885e:	01 d6                	add    esi,edx
   58860:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   58867:	bb 59 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_78                               ; fixup: num: 13981, src obj: 1, src ofs: 0x58868, dst obj: 3, dst ofs: 0xd759
   5886c:	29 d6                	sub    esi,edx
   5886e:	ba 64 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_79                               ; fixup: num: 13980, src obj: 1, src ofs: 0x5886f, dst obj: 3, dst ofs: 0xd764
   58873:	8d 8e 6f 01 00 00    	lea    ecx,[esi+0x16f]
   58879:	e8 62 24 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_152:
   5887e:	89 45 32             	mov    DWORD PTR [ebp+0x32],eax
   58881:	85 c0                	test   eax,eax
   58883:	75 0f                	jne    menu_branch_153
   58885:	bb 81 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_80                               ; fixup: num: 13979, src obj: 1, src ofs: 0x58886, dst obj: 3, dst ofs: 0xd781
   5888a:	ba 87 02 00 00       	mov    edx,0x287
   5888f:	e8 9c f7 fd ff       	call   _error_report
menu_branch_153:
   58894:	b8 4c 00 00 00       	mov    eax,0x4c
   58899:	e8 7a 96 01 00       	call   W?$nwn(ui)pnv
   5889e:	85 c0                	test   eax,eax
   588a0:	74 4b                	je     menu_branch_154
   588a2:	6a 00                	push   0x0
   588a4:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13978, src obj: 1, src ofs: 0x588a5, dst obj: 1, dst ofs: 0x71493
   588a9:	6a 00                	push   0x0
   588ab:	6a 00                	push   0x0
   588ad:	6a 01                	push   0x1
   588af:	68 00 00 48 c2       	push   0xc2480000
   588b4:	8b 55 42             	mov    edx,DWORD PTR [ebp+0x42]
   588b7:	8b 4d 42             	mov    ecx,DWORD PTR [ebp+0x42]
   588ba:	83 c2 6c             	add    edx,0x6c
   588bd:	01 ca                	add    edx,ecx
   588bf:	52                   	push   edx
   588c0:	8b 15 54 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 13977, src obj: 1, src ofs: 0x588c2, dst obj: 3, dst ofs: 0x17e54
   588c6:	8d 34 95 00 00 00 00 	lea    esi,[edx*4+0x0]
   588cd:	01 d6                	add    esi,edx
   588cf:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   588d6:	bb 99 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_81                               ; fixup: num: 13976, src obj: 1, src ofs: 0x588d7, dst obj: 3, dst ofs: 0xd799
   588db:	29 d6                	sub    esi,edx
   588dd:	ba a4 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_82                               ; fixup: num: 13975, src obj: 1, src ofs: 0x588de, dst obj: 3, dst ofs: 0xd7a4
   588e2:	8d 8e 6f 01 00 00    	lea    ecx,[esi+0x16f]
   588e8:	e8 f3 23 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_154:
   588ed:	89 45 36             	mov    DWORD PTR [ebp+0x36],eax
   588f0:	85 c0                	test   eax,eax
   588f2:	75 0f                	jne    menu_branch_155
   588f4:	bb c1 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_83                               ; fixup: num: 13974, src obj: 1, src ofs: 0x588f5, dst obj: 3, dst ofs: 0xd7c1
   588f9:	ba 89 02 00 00       	mov    edx,0x289
   588fe:	e8 2d f7 fd ff       	call   _error_report
menu_branch_155:
   58903:	31 f6                	xor    esi,esi
   58905:	89 75 e2             	mov    DWORD PTR [ebp-0x1e],esi
   58908:	eb 03                	jmp    menu_branch_157
menu_branch_156:
   5890a:	ff 45 e2             	inc    DWORD PTR [ebp-0x1e]
menu_branch_157:
   5890d:	8b 7d e2             	mov    edi,DWORD PTR [ebp-0x1e]
   58910:	83 ff 07             	cmp    edi,0x7
   58913:	0f 8d e6 00 00 00    	jge    menu_branch_163
   58919:	89 f9                	mov    ecx,edi
   5891b:	6b d7 32             	imul   edx,edi,0x32
   5891e:	8d 85 82 fc ff ff    	lea    eax,[ebp-0x37e]
   58924:	8d 34 bd 00 00 00 00 	lea    esi,[edi*4+0x0]
   5892b:	01 c2                	add    edx,eax
   5892d:	01 fe                	add    esi,edi
   5892f:	8d 85 22 f8 ff ff    	lea    eax,[ebp-0x7de]
   58935:	c1 e6 04             	shl    esi,0x4
   58938:	01 f0                	add    eax,esi
   5893a:	89 d6                	mov    esi,edx
   5893c:	89 c7                	mov    edi,eax
   5893e:	89 45 f6             	mov    DWORD PTR [ebp-0xa],eax
   58941:	57                   	push   edi
menu_branch_158:
   58942:	8a 06                	mov    al,BYTE PTR [esi]
   58944:	88 07                	mov    BYTE PTR [edi],al
   58946:	3c 00                	cmp    al,0x0
   58948:	74 10                	je     menu_branch_159
   5894a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5894d:	83 c6 02             	add    esi,0x2
   58950:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58953:	83 c7 02             	add    edi,0x2
   58956:	3c 00                	cmp    al,0x0
   58958:	75 e8                	jne    menu_branch_158
menu_branch_159:
   5895a:	5f                   	pop    edi
   5895b:	89 c8                	mov    eax,ecx
   5895d:	e8 0e 36 00 00       	call   add_on_off_text
   58962:	89 c6                	mov    esi,eax
   58964:	57                   	push   edi
   58965:	2b c9                	sub    ecx,ecx
   58967:	49                   	dec    ecx
   58968:	b0 00                	mov    al,0x0
   5896a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5896c:	4f                   	dec    edi
menu_branch_160:
   5896d:	8a 06                	mov    al,BYTE PTR [esi]
   5896f:	88 07                	mov    BYTE PTR [edi],al
   58971:	3c 00                	cmp    al,0x0
   58973:	74 10                	je     menu_branch_161
   58975:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58978:	83 c6 02             	add    esi,0x2
   5897b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5897e:	83 c7 02             	add    edi,0x2
   58981:	3c 00                	cmp    al,0x0
   58983:	75 e8                	jne    menu_branch_160
menu_branch_161:
   58985:	5f                   	pop    edi
   58986:	b8 50 00 00 00       	mov    eax,0x50
   5898b:	89 55 46             	mov    DWORD PTR [ebp+0x46],edx
   5898e:	e8 85 95 01 00       	call   W?$nwn(ui)pnv
   58993:	89 c6                	mov    esi,eax
   58995:	85 c0                	test   eax,eax
   58997:	74 3c                	je     menu_branch_162
   58999:	8b 45 e2             	mov    eax,DWORD PTR [ebp-0x1e]
   5899c:	0f af 45 42          	imul   eax,DWORD PTR [ebp+0x42]
   589a0:	6a 00                	push   0x0
   589a2:	6a ce                	push   0xffffffce
   589a4:	83 c0 64             	add    eax,0x64
   589a7:	50                   	push   eax
   589a8:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13982, src obj: 1, src ofs: 0x589aa, dst obj: 3, dst ofs: 0x25bc0
   589ae:	8b 45 f6             	mov    eax,DWORD PTR [ebp-0xa]
   589b1:	e8 7a ff fe ff       	call   stringwidthCFN
   589b6:	ba 7f 02 00 00       	mov    edx,0x27f
   589bb:	29 c2                	sub    edx,eax
   589bd:	89 d0                	mov    eax,edx
   589bf:	8b 4d 46             	mov    ecx,DWORD PTR [ebp+0x46]
   589c2:	d1 e8                	shr    eax,1
   589c4:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13991, src obj: 1, src ofs: 0x589c6, dst obj: 3, dst ofs: 0x25bc0
   589ca:	50                   	push   eax
   589cb:	8b 55 f6             	mov    edx,DWORD PTR [ebp-0xa]
   589ce:	89 f0                	mov    eax,esi
   589d0:	e8 2b 12 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_162:
   589d5:	89 c2                	mov    edx,eax
   589d7:	8b 45 e2             	mov    eax,DWORD PTR [ebp-0x1e]
   589da:	89 94 85 76 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0x8a],edx
   589e1:	85 d2                	test   edx,edx
   589e3:	0f 85 21 ff ff ff    	jne    menu_branch_156
   589e9:	bb d9 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_84                               ; fixup: num: 13990, src obj: 1, src ofs: 0x589ea, dst obj: 3, dst ofs: 0xd7d9
   589ee:	ba 9b 02 00 00       	mov    edx,0x29b
   589f3:	31 c0                	xor    eax,eax
   589f5:	e8 36 f6 fd ff       	call   _error_report
   589fa:	e9 0b ff ff ff       	jmp    menu_branch_156
menu_branch_163:
   589ff:	8b 55 22             	mov    edx,DWORD PTR [ebp+0x22]
   58a02:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13989, src obj: 1, src ofs: 0x58a03, dst obj: 3, dst ofs: 0x25a88
   58a07:	e8 24 37 ff ff       	call   insert_bitmap
   58a0c:	8b 55 26             	mov    edx,DWORD PTR [ebp+0x26]
   58a0f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13988, src obj: 1, src ofs: 0x58a10, dst obj: 3, dst ofs: 0x25a88
   58a14:	e8 17 37 ff ff       	call   insert_bitmap
   58a19:	8b 55 2a             	mov    edx,DWORD PTR [ebp+0x2a]
   58a1c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13987, src obj: 1, src ofs: 0x58a1d, dst obj: 3, dst ofs: 0x25a88
   58a21:	e8 0a 37 ff ff       	call   insert_bitmap
   58a26:	8b 55 2e             	mov    edx,DWORD PTR [ebp+0x2e]
   58a29:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13986, src obj: 1, src ofs: 0x58a2a, dst obj: 3, dst ofs: 0x25a88
   58a2e:	e8 fd 36 ff ff       	call   insert_bitmap
   58a33:	8b 55 32             	mov    edx,DWORD PTR [ebp+0x32]
   58a36:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13985, src obj: 1, src ofs: 0x58a37, dst obj: 3, dst ofs: 0x25a88
   58a3b:	b9 3a 02 00 00       	mov    ecx,0x23a
   58a40:	e8 eb 36 ff ff       	call   insert_bitmap
   58a45:	8b 55 36             	mov    edx,DWORD PTR [ebp+0x36]
   58a48:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13984, src obj: 1, src ofs: 0x58a49, dst obj: 3, dst ofs: 0x25a88
   58a4d:	31 db                	xor    ebx,ebx
   58a4f:	e8 dc 36 ff ff       	call   insert_bitmap
   58a54:	68 b4 01 00 00       	push   0x1b4
   58a59:	31 c0                	xor    eax,eax
   58a5b:	ba 58 00 00 00       	mov    edx,0x58
   58a60:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   58a63:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13983, src obj: 1, src ofs: 0x58a64, dst obj: 3, dst ofs: 0x25a84
   58a68:	e8 f3 4f ff ff       	call   refresh_area
   58a6d:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14002, src obj: 1, src ofs: 0x58a6e, dst obj: 3, dst ofs: 0x25a84
   58a72:	e8 29 52 ff ff       	call   update_mod_84
menu_branch_164:
   58a77:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14001, src obj: 1, src ofs: 0x58a7a, dst obj: 3, dst ofs: 0x25908
   58a7e:	83 f8 18             	cmp    eax,0x18
   58a81:	74 f4                	je     menu_branch_164
menu_branch_165:
   58a83:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14000, src obj: 1, src ofs: 0x58a85, dst obj: 3, dst ofs: 0x25974
   58a8a:	75 f7                	jne    menu_branch_165
menu_branch_166:
   58a8c:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 13999, src obj: 1, src ofs: 0x58a8f, dst obj: 3, dst ofs: 0x25908
   58a94:	74 0b                	je     menu_branch_167
   58a96:	31 c9                	xor    ecx,ecx
   58a98:	66 89 0d 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,cx                                 ; fixup: num: 13998, src obj: 1, src ofs: 0x58a9b, dst obj: 3, dst ofs: 0x25908
   58a9f:	eb eb                	jmp    menu_branch_166
menu_branch_167:
   58aa1:	a1 bc 5b 02 00       	mov    eax,ds:@obj3:harvfont                                        ; fixup: num: 13997, src obj: 1, src ofs: 0x58aa2, dst obj: 3, dst ofs: 0x25bbc
   58aa6:	ba 01 00 00 00       	mov    edx,0x1
   58aab:	e8 00 00 ff ff       	call   fontdepthCFN
   58ab0:	83 c0 02             	add    eax,0x2
   58ab3:	89 55 de             	mov    DWORD PTR [ebp-0x22],edx
   58ab6:	89 45 4e             	mov    DWORD PTR [ebp+0x4e],eax
menu_branch_168:
   58ab9:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13996, src obj: 1, src ofs: 0x58aba, dst obj: 3, dst ofs: 0x25a84
   58abe:	e8 dd 51 ff ff       	call   update_mod_84
   58ac3:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13995, src obj: 1, src ofs: 0x58ac4, dst obj: 3, dst ofs: 0x1a1d4
   58ac8:	e8 d3 2e fb ff       	call   update_mod_9
   58acd:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13994, src obj: 1, src ofs: 0x58ace, dst obj: 3, dst ofs: 0x2597c
   58ad2:	83 e8 64             	sub    eax,0x64
   58ad5:	89 45 3e             	mov    DWORD PTR [ebp+0x3e],eax
   58ad8:	83 f8 01             	cmp    eax,0x1
   58adb:	7d 07                	jge    menu_branch_169
   58add:	c7 45 3e 01 00 00 00 	mov    DWORD PTR [ebp+0x3e],0x1
menu_branch_169:
   58ae4:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   58ae7:	89 c2                	mov    edx,eax
   58ae9:	8b 75 4e             	mov    esi,DWORD PTR [ebp+0x4e]
   58aec:	c1 fa 1f             	sar    edx,0x1f
   58aef:	f7 fe                	idiv   esi
   58af1:	89 45 3e             	mov    DWORD PTR [ebp+0x3e],eax
   58af4:	83 f8 07             	cmp    eax,0x7
   58af7:	7c 07                	jl     menu_branch_170
   58af9:	c7 45 3e 06 00 00 00 	mov    DWORD PTR [ebp+0x3e],0x6
menu_branch_170:
   58b00:	31 c0                	xor    eax,eax
   58b02:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 13993, src obj: 1, src ofs: 0x58b03, dst obj: 3, dst ofs: 0x25974
   58b07:	83 f8 01             	cmp    eax,0x1
   58b0a:	0f 85 04 03 00 00    	jne    menu_branch_182
   58b10:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 13992, src obj: 1, src ofs: 0x58b12, dst obj: 3, dst ofs: 0x25978
   58b1a:	7c 21                	jl     menu_branch_171
   58b1c:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 14012, src obj: 1, src ofs: 0x58b1e, dst obj: 3, dst ofs: 0x25978
   58b26:	7f 15                	jg     menu_branch_171
   58b28:	83 3d 7c 59 02 00 6c 	cmp    DWORD PTR ds:@obj3:mouse_y,0x6c                              ; fixup: num: 14011, src obj: 1, src ofs: 0x58b2a, dst obj: 3, dst ofs: 0x2597c
   58b2f:	7c 0c                	jl     menu_branch_171
   58b31:	81 3d 7c 59 02 00 8a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x8a                     ; fixup: num: 14010, src obj: 1, src ofs: 0x58b33, dst obj: 3, dst ofs: 0x2597c
   58b3b:	7e 02                	jle    menu_branch_172
menu_branch_171:
   58b3d:	31 c0                	xor    eax,eax
menu_branch_172:
   58b3f:	85 c0                	test   eax,eax
   58b41:	0f 84 c5 00 00 00    	je     menu_branch_174
   58b47:	ba f1 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_85                               ; fixup: num: 14009, src obj: 1, src ofs: 0x58b48, dst obj: 3, dst ofs: 0xd7f1
   58b4c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14008, src obj: 1, src ofs: 0x58b4d, dst obj: 3, dst ofs: 0x25a88
   58b51:	e8 9a 35 ff ff       	call   get_bitmap
   58b56:	89 c7                	mov    edi,eax
   58b58:	89 c2                	mov    edx,eax
   58b5a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14007, src obj: 1, src ofs: 0x58b5b, dst obj: 3, dst ofs: 0x25a88
   58b5f:	e8 8c 3b ff ff       	call   remove_bitmap
   58b64:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 14006, src obj: 1, src ofs: 0x58b66, dst obj: 3, dst ofs: 0x25978
   58b6a:	81 ea 6f 01 00 00    	sub    edx,0x16f
   58b70:	bb 13 00 00 00       	mov    ebx,0x13
   58b75:	89 d0                	mov    eax,edx
   58b77:	c1 fa 1f             	sar    edx,0x1f
   58b7a:	f7 fb                	idiv   ebx
   58b7c:	68 00 00 48 c2       	push   0xc2480000
   58b81:	89 c1                	mov    ecx,eax
   58b83:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
   58b8a:	01 c6                	add    esi,eax
   58b8c:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   58b93:	29 c6                	sub    esi,eax
   58b95:	bb 6c 00 00 00       	mov    ebx,0x6c
   58b9a:	8d 96 6f 01 00 00    	lea    edx,[esi+0x16f]
   58ba0:	89 f8                	mov    eax,edi
   58ba2:	e8 49 2b fe ff       	call   set_xyz
   58ba7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14005, src obj: 1, src ofs: 0x58ba8, dst obj: 3, dst ofs: 0x25a88
   58bac:	89 fa                	mov    edx,edi
   58bae:	e8 7d 35 ff ff       	call   insert_bitmap
   58bb3:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14004, src obj: 1, src ofs: 0x58bb4, dst obj: 3, dst ofs: 0x25a84
   58bb8:	e8 e3 50 ff ff       	call   update_mod_84
   58bbd:	3b 0d ac 0f 01 00    	cmp    ecx,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 14003, src obj: 1, src ofs: 0x58bbf, dst obj: 3, dst ofs: 0x10fac
   58bc3:	0f 84 4b 02 00 00    	je     menu_branch_182
   58bc9:	89 0d ac 0f 01 00    	mov    DWORD PTR ds:@obj3:fx_volume,ecx                             ; fixup: num: 14021, src obj: 1, src ofs: 0x58bcb, dst obj: 3, dst ofs: 0x10fac
   58bcf:	66 8b 14 4d be 0f 01 00 	mov    dx,WORD PTR [ecx*2+@obj3:volume_table]                    ; fixup: num: 14020, src obj: 1, src ofs: 0x58bd3, dst obj: 3, dst ofs: 0x10fbe
   58bd7:	8b 45 3a             	mov    eax,DWORD PTR [ebp+0x3a]
   58bda:	81 e2 ff ff 00 00    	and    edx,0xffff
   58be0:	e8 6b 0d fb ff       	call   set_volume
   58be5:	80 7d 7e 00          	cmp    BYTE PTR [ebp+0x7e],0x0
   58be9:	74 14                	je     menu_branch_173
   58beb:	8b 45 3a             	mov    eax,DWORD PTR [ebp+0x3a]
   58bee:	e8 ed 0c fb ff       	call   playing
   58bf3:	84 c0                	test   al,al
   58bf5:	74 08                	je     menu_branch_173
   58bf7:	8b 45 3a             	mov    eax,DWORD PTR [ebp+0x3a]
   58bfa:	e8 41 0c fb ff       	call   stop
menu_branch_173:
   58bff:	8b 45 3a             	mov    eax,DWORD PTR [ebp+0x3a]
   58c02:	e8 a9 0b fb ff       	call   play
   58c07:	e9 08 02 00 00       	jmp    menu_branch_182
menu_branch_174:
   58c0c:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 14019, src obj: 1, src ofs: 0x58c0e, dst obj: 3, dst ofs: 0x25978
   58c16:	7c 31                	jl     menu_branch_175
   58c18:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 14018, src obj: 1, src ofs: 0x58c1a, dst obj: 3, dst ofs: 0x25978
   58c22:	7f 25                	jg     menu_branch_175
   58c24:	8b 45 42             	mov    eax,DWORD PTR [ebp+0x42]
   58c27:	83 c0 6c             	add    eax,0x6c
   58c2a:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 14017, src obj: 1, src ofs: 0x58c2c, dst obj: 3, dst ofs: 0x2597c
   58c30:	7f 17                	jg     menu_branch_175
   58c32:	8b 45 42             	mov    eax,DWORD PTR [ebp+0x42]
   58c35:	05 8a 00 00 00       	add    eax,0x8a
   58c3a:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 14016, src obj: 1, src ofs: 0x58c3c, dst obj: 3, dst ofs: 0x2597c
   58c40:	7c 07                	jl     menu_branch_175
   58c42:	b8 01 00 00 00       	mov    eax,0x1
   58c47:	eb 02                	jmp    menu_branch_176
menu_branch_175:
   58c49:	31 c0                	xor    eax,eax
menu_branch_176:
   58c4b:	8b 55 42             	mov    edx,DWORD PTR [ebp+0x42]
   58c4e:	83 c2 6c             	add    edx,0x6c
   58c51:	89 55 5e             	mov    DWORD PTR [ebp+0x5e],edx
   58c54:	85 c0                	test   eax,eax
   58c56:	0f 84 c6 00 00 00    	je     menu_branch_178
   58c5c:	ba fc d7 00 00       	mov    edx,@obj3:menu_cpp_variable_86                               ; fixup: num: 14015, src obj: 1, src ofs: 0x58c5d, dst obj: 3, dst ofs: 0xd7fc
   58c61:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14014, src obj: 1, src ofs: 0x58c62, dst obj: 3, dst ofs: 0x25a88
   58c66:	e8 85 34 ff ff       	call   get_bitmap
   58c6b:	89 c7                	mov    edi,eax
   58c6d:	89 c2                	mov    edx,eax
   58c6f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14013, src obj: 1, src ofs: 0x58c70, dst obj: 3, dst ofs: 0x25a88
   58c74:	e8 77 3a ff ff       	call   remove_bitmap
   58c79:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13949, src obj: 1, src ofs: 0x58c7b, dst obj: 3, dst ofs: 0x25978
   58c7f:	81 ea 6f 01 00 00    	sub    edx,0x16f
   58c85:	bb 13 00 00 00       	mov    ebx,0x13
   58c8a:	89 d0                	mov    eax,edx
   58c8c:	c1 fa 1f             	sar    edx,0x1f
   58c8f:	f7 fb                	idiv   ebx
   58c91:	68 00 00 48 c2       	push   0xc2480000
   58c96:	89 c1                	mov    ecx,eax
   58c98:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
   58c9f:	01 c6                	add    esi,eax
   58ca1:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   58ca8:	29 c6                	sub    esi,eax
   58caa:	8b 5d 5e             	mov    ebx,DWORD PTR [ebp+0x5e]
   58cad:	8d 96 6f 01 00 00    	lea    edx,[esi+0x16f]
   58cb3:	89 f8                	mov    eax,edi
   58cb5:	e8 36 2a fe ff       	call   set_xyz
   58cba:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13948, src obj: 1, src ofs: 0x58cbb, dst obj: 3, dst ofs: 0x25a88
   58cbf:	89 fa                	mov    edx,edi
   58cc1:	e8 6a 34 ff ff       	call   insert_bitmap
   58cc6:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13947, src obj: 1, src ofs: 0x58cc7, dst obj: 3, dst ofs: 0x25a84
   58ccb:	e8 d0 4f ff ff       	call   update_mod_84
   58cd0:	3b 0d b0 0f 01 00    	cmp    ecx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14029, src obj: 1, src ofs: 0x58cd2, dst obj: 3, dst ofs: 0x10fb0
   58cd6:	0f 84 38 01 00 00    	je     menu_branch_182
   58cdc:	89 0d b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,ecx                          ; fixup: num: 14028, src obj: 1, src ofs: 0x58cde, dst obj: 3, dst ofs: 0x10fb0
   58ce2:	85 c9                	test   ecx,ecx
   58ce4:	75 0f                	jne    menu_branch_177
   58ce6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14027, src obj: 1, src ofs: 0x58ce7, dst obj: 3, dst ofs: 0x1a1d4
   58ceb:	e8 30 19 fb ff       	call   pause
   58cf0:	e9 1f 01 00 00       	jmp    menu_branch_182
menu_branch_177:
   58cf5:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14026, src obj: 1, src ofs: 0x58cf6, dst obj: 3, dst ofs: 0x1a1d4
   58cfa:	e8 41 1a fb ff       	call   resume
   58cff:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14025, src obj: 1, src ofs: 0x58d01, dst obj: 3, dst ofs: 0x10fb0
   58d05:	66 8b 14 55 be 0f 01 00 	mov    dx,WORD PTR [edx*2+@obj3:volume_table]                    ; fixup: num: 14024, src obj: 1, src ofs: 0x58d09, dst obj: 3, dst ofs: 0x10fbe
   58d0d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14023, src obj: 1, src ofs: 0x58d0e, dst obj: 3, dst ofs: 0x1a1d4
   58d12:	81 e2 ff ff 00 00    	and    edx,0xffff
   58d18:	e8 33 0c fb ff       	call   set_volume
   58d1d:	e9 f2 00 00 00       	jmp    menu_branch_182
menu_branch_178:
   58d22:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 14022, src obj: 1, src ofs: 0x58d24, dst obj: 3, dst ofs: 0x25978
   58d2c:	7c 2c                	jl     menu_branch_179
   58d2e:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 13958, src obj: 1, src ofs: 0x58d30, dst obj: 3, dst ofs: 0x25978
   58d38:	7f 20                	jg     menu_branch_179
   58d3a:	8b 7d 42             	mov    edi,DWORD PTR [ebp+0x42]
   58d3d:	8d 04 3a             	lea    eax,[edx+edi*1]
   58d40:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13957, src obj: 1, src ofs: 0x58d42, dst obj: 3, dst ofs: 0x2597c
   58d46:	7f 12                	jg     menu_branch_179
   58d48:	83 c0 1e             	add    eax,0x1e
   58d4b:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 13956, src obj: 1, src ofs: 0x58d4d, dst obj: 3, dst ofs: 0x2597c
   58d51:	7c 07                	jl     menu_branch_179
   58d53:	b8 01 00 00 00       	mov    eax,0x1
   58d58:	eb 02                	jmp    menu_branch_180
menu_branch_179:
   58d5a:	31 c0                	xor    eax,eax
menu_branch_180:
   58d5c:	85 c0                	test   eax,eax
   58d5e:	0f 84 ac 00 00 00    	je     menu_branch_181
   58d64:	8b 5d 42             	mov    ebx,DWORD PTR [ebp+0x42]
   58d67:	ba 07 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_87                               ; fixup: num: 13955, src obj: 1, src ofs: 0x58d68, dst obj: 3, dst ofs: 0xd807
   58d6c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13954, src obj: 1, src ofs: 0x58d6d, dst obj: 3, dst ofs: 0x25a88
   58d71:	8b 4d 42             	mov    ecx,DWORD PTR [ebp+0x42]
   58d74:	e8 77 33 ff ff       	call   get_bitmap
   58d79:	83 c3 6c             	add    ebx,0x6c
   58d7c:	89 c7                	mov    edi,eax
   58d7e:	89 c2                	mov    edx,eax
   58d80:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13953, src obj: 1, src ofs: 0x58d81, dst obj: 3, dst ofs: 0x25a88
   58d85:	01 cb                	add    ebx,ecx
   58d87:	e8 64 39 ff ff       	call   remove_bitmap
   58d8c:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 13952, src obj: 1, src ofs: 0x58d8e, dst obj: 3, dst ofs: 0x25978
   58d92:	81 ea 6f 01 00 00    	sub    edx,0x16f
   58d98:	b9 13 00 00 00       	mov    ecx,0x13
   58d9d:	89 d0                	mov    eax,edx
   58d9f:	c1 fa 1f             	sar    edx,0x1f
   58da2:	f7 f9                	idiv   ecx
   58da4:	68 00 00 48 c2       	push   0xc2480000
   58da9:	89 c1                	mov    ecx,eax
   58dab:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
   58db2:	01 c6                	add    esi,eax
   58db4:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   58dbb:	29 c6                	sub    esi,eax
   58dbd:	8d 96 6f 01 00 00    	lea    edx,[esi+0x16f]
   58dc3:	89 f8                	mov    eax,edi
   58dc5:	e8 26 29 fe ff       	call   set_xyz
   58dca:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13951, src obj: 1, src ofs: 0x58dcb, dst obj: 3, dst ofs: 0x25a88
   58dcf:	89 fa                	mov    edx,edi
   58dd1:	e8 5a 33 ff ff       	call   insert_bitmap
   58dd6:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13950, src obj: 1, src ofs: 0x58dd7, dst obj: 3, dst ofs: 0x25a84
   58ddb:	e8 c0 4e ff ff       	call   update_mod_84
   58de0:	3b 0d 54 7e 01 00    	cmp    ecx,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 13968, src obj: 1, src ofs: 0x58de2, dst obj: 3, dst ofs: 0x17e54
   58de6:	74 2c                	je     menu_branch_182
   58de8:	89 0d 54 7e 01 00    	mov    DWORD PTR ds:@obj3:gamma_correction,ecx                      ; fixup: num: 13967, src obj: 1, src ofs: 0x58dea, dst obj: 3, dst ofs: 0x17e54
   58dee:	e8 ad 98 fb ff       	call   set_pal_gamma
   58df3:	83 ec 04             	sub    esp,0x4
   58df6:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 13966, src obj: 1, src ofs: 0x58df8, dst obj: 3, dst ofs: 0x10fb4
   58dfc:	d9 1c 24             	fstp   DWORD PTR [esp]
   58dff:	ba 00 01 00 00       	mov    edx,0x100
   58e04:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13965, src obj: 1, src ofs: 0x58e05, dst obj: 3, dst ofs: 0x26084
   58e09:	e8 62 99 fb ff       	call   setvgapalette_mod_14
   58e0e:	eb 04                	jmp    menu_branch_182
menu_branch_181:
   58e10:	c6 45 76 01          	mov    BYTE PTR [ebp+0x76],0x1
menu_branch_182:
   58e14:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13964, src obj: 1, src ofs: 0x58e17, dst obj: 3, dst ofs: 0x25908
   58e1b:	83 f8 01             	cmp    eax,0x1
   58e1e:	0f 84 3f 10 00 00    	je     menu_branch_309
   58e24:	31 c0                	xor    eax,eax
   58e26:	a0 72 59 02 00       	mov    al,ds:@obj3:right_button                                     ; fixup: num: 13963, src obj: 1, src ofs: 0x58e27, dst obj: 3, dst ofs: 0x25972
   58e2b:	83 f8 01             	cmp    eax,0x1
   58e2e:	0f 84 2f 10 00 00    	je     menu_branch_309
   58e34:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13962, src obj: 1, src ofs: 0x58e37, dst obj: 3, dst ofs: 0x25908
   58e3b:	83 f8 14             	cmp    eax,0x14
   58e3e:	75 0b                	jne    menu_branch_183
   58e40:	c6 45 76 01          	mov    BYTE PTR [ebp+0x76],0x1
   58e44:	c7 45 3e 03 00 00 00 	mov    DWORD PTR [ebp+0x3e],0x3
menu_branch_183:
   58e4b:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13961, src obj: 1, src ofs: 0x58e4e, dst obj: 3, dst ofs: 0x25908
   58e52:	83 f8 22             	cmp    eax,0x22
   58e55:	75 0d                	jne    menu_branch_184
   58e57:	b6 01                	mov    dh,0x1
   58e59:	bb 04 00 00 00       	mov    ebx,0x4
   58e5e:	88 75 76             	mov    BYTE PTR [ebp+0x76],dh
   58e61:	89 5d 3e             	mov    DWORD PTR [ebp+0x3e],ebx
menu_branch_184:
   58e64:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13960, src obj: 1, src ofs: 0x58e67, dst obj: 3, dst ofs: 0x25908
   58e6b:	83 f8 10             	cmp    eax,0x10
   58e6e:	75 0d                	jne    menu_branch_185
   58e70:	b3 01                	mov    bl,0x1
   58e72:	b9 05 00 00 00       	mov    ecx,0x5
   58e77:	88 5d 76             	mov    BYTE PTR [ebp+0x76],bl
   58e7a:	89 4d 3e             	mov    DWORD PTR [ebp+0x3e],ecx
menu_branch_185:
   58e7d:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 13959, src obj: 1, src ofs: 0x58e80, dst obj: 3, dst ofs: 0x25908
   58e84:	83 f8 19             	cmp    eax,0x19
   58e87:	75 0d                	jne    menu_branch_186
   58e89:	b7 01                	mov    bh,0x1
   58e8b:	be 06 00 00 00       	mov    esi,0x6
   58e90:	88 7d 76             	mov    BYTE PTR [ebp+0x76],bh
   58e93:	89 75 3e             	mov    DWORD PTR [ebp+0x3e],esi
menu_branch_186:
   58e96:	8b 45 de             	mov    eax,DWORD PTR [ebp-0x22]
   58e99:	3b 45 3e             	cmp    eax,DWORD PTR [ebp+0x3e]
   58e9c:	75 0a                	jne    menu_branch_187
   58e9e:	80 7d 6a 00          	cmp    BYTE PTR [ebp+0x6a],0x0
   58ea2:	0f 84 6a 02 00 00    	je     menu_branch_207
menu_branch_187:
   58ea8:	8b 45 de             	mov    eax,DWORD PTR [ebp-0x22]
   58eab:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   58eb2:	8b 94 28 76 ff ff ff 	mov    edx,DWORD PTR [eax+ebp*1-0x8a]
   58eb9:	85 d2                	test   edx,edx
   58ebb:	74 1c                	je     menu_branch_189
   58ebd:	89 d0                	mov    eax,edx
   58ebf:	74 0c                	je     menu_branch_188
   58ec1:	31 d2                	xor    edx,edx
   58ec3:	e8 58 10 ff ff       	call   W?$dt:TEXTBM$n()_
   58ec8:	e8 ab 91 01 00       	call   W?$dln(pnv)v
menu_branch_188:
   58ecd:	8b 45 de             	mov    eax,DWORD PTR [ebp-0x22]
   58ed0:	31 db                	xor    ebx,ebx
   58ed2:	89 9c 85 76 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0x8a],ebx
menu_branch_189:
   58ed9:	8b 4d de             	mov    ecx,DWORD PTR [ebp-0x22]
   58edc:	6b d1 32             	imul   edx,ecx,0x32
   58edf:	8d 85 82 fc ff ff    	lea    eax,[ebp-0x37e]
   58ee5:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
   58eec:	01 c2                	add    edx,eax
   58eee:	01 ce                	add    esi,ecx
   58ef0:	8d 85 22 f8 ff ff    	lea    eax,[ebp-0x7de]
   58ef6:	c1 e6 04             	shl    esi,0x4
   58ef9:	01 f0                	add    eax,esi
   58efb:	89 d6                	mov    esi,edx
   58efd:	89 c7                	mov    edi,eax
   58eff:	89 45 fa             	mov    DWORD PTR [ebp-0x6],eax
   58f02:	57                   	push   edi
menu_branch_190:
   58f03:	8a 06                	mov    al,BYTE PTR [esi]
   58f05:	88 07                	mov    BYTE PTR [edi],al
   58f07:	3c 00                	cmp    al,0x0
   58f09:	74 10                	je     menu_branch_191
   58f0b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58f0e:	83 c6 02             	add    esi,0x2
   58f11:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58f14:	83 c7 02             	add    edi,0x2
   58f17:	3c 00                	cmp    al,0x0
   58f19:	75 e8                	jne    menu_branch_190
menu_branch_191:
   58f1b:	5f                   	pop    edi
   58f1c:	89 c8                	mov    eax,ecx
   58f1e:	e8 4d 30 00 00       	call   add_on_off_text
   58f23:	89 c6                	mov    esi,eax
   58f25:	57                   	push   edi
   58f26:	2b c9                	sub    ecx,ecx
   58f28:	49                   	dec    ecx
   58f29:	b0 00                	mov    al,0x0
   58f2b:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   58f2d:	4f                   	dec    edi
menu_branch_192:
   58f2e:	8a 06                	mov    al,BYTE PTR [esi]
   58f30:	88 07                	mov    BYTE PTR [edi],al
   58f32:	3c 00                	cmp    al,0x0
   58f34:	74 10                	je     menu_branch_193
   58f36:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   58f39:	83 c6 02             	add    esi,0x2
   58f3c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   58f3f:	83 c7 02             	add    edi,0x2
   58f42:	3c 00                	cmp    al,0x0
   58f44:	75 e8                	jne    menu_branch_192
menu_branch_193:
   58f46:	5f                   	pop    edi
   58f47:	b8 50 00 00 00       	mov    eax,0x50
   58f4c:	89 55 5a             	mov    DWORD PTR [ebp+0x5a],edx
   58f4f:	e8 c4 8f 01 00       	call   W?$nwn(ui)pnv
   58f54:	89 c6                	mov    esi,eax
   58f56:	85 c0                	test   eax,eax
   58f58:	74 3c                	je     menu_branch_194
   58f5a:	8b 45 de             	mov    eax,DWORD PTR [ebp-0x22]
   58f5d:	0f af 45 42          	imul   eax,DWORD PTR [ebp+0x42]
   58f61:	6a 00                	push   0x0
   58f63:	6a ce                	push   0xffffffce
   58f65:	83 c0 64             	add    eax,0x64
   58f68:	50                   	push   eax
   58f69:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13971, src obj: 1, src ofs: 0x58f6b, dst obj: 3, dst ofs: 0x25bc0
   58f6f:	8b 45 fa             	mov    eax,DWORD PTR [ebp-0x6]
   58f72:	e8 b9 f9 fe ff       	call   stringwidthCFN
   58f77:	ba 7f 02 00 00       	mov    edx,0x27f
   58f7c:	29 c2                	sub    edx,eax
   58f7e:	89 d0                	mov    eax,edx
   58f80:	8b 4d 5a             	mov    ecx,DWORD PTR [ebp+0x5a]
   58f83:	d1 e8                	shr    eax,1
   58f85:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 13970, src obj: 1, src ofs: 0x58f87, dst obj: 3, dst ofs: 0x25bc0
   58f8b:	50                   	push   eax
   58f8c:	8b 55 fa             	mov    edx,DWORD PTR [ebp-0x6]
   58f8f:	89 f0                	mov    eax,esi
   58f91:	e8 6a 0c ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_194:
   58f96:	89 c2                	mov    edx,eax
   58f98:	8b 45 de             	mov    eax,DWORD PTR [ebp-0x22]
   58f9b:	89 94 85 76 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0x8a],edx
   58fa2:	85 d2                	test   edx,edx
   58fa4:	75 11                	jne    menu_branch_195
   58fa6:	bb 12 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_88                               ; fixup: num: 13969, src obj: 1, src ofs: 0x58fa7, dst obj: 3, dst ofs: 0xd812
   58fab:	ba 38 03 00 00       	mov    edx,0x338
   58fb0:	31 c0                	xor    eax,eax
   58fb2:	e8 79 f0 fd ff       	call   _error_report
menu_branch_195:
   58fb7:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   58fba:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   58fc1:	8b 9c 28 76 ff ff ff 	mov    ebx,DWORD PTR [eax+ebp*1-0x8a]
   58fc8:	85 db                	test   ebx,ebx
   58fca:	74 1c                	je     menu_branch_197
   58fcc:	89 d8                	mov    eax,ebx
   58fce:	74 0c                	je     menu_branch_196
   58fd0:	31 d2                	xor    edx,edx
   58fd2:	e8 49 0f ff ff       	call   W?$dt:TEXTBM$n()_
   58fd7:	e8 9c 90 01 00       	call   W?$dln(pnv)v
menu_branch_196:
   58fdc:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   58fdf:	31 c9                	xor    ecx,ecx
   58fe1:	89 8c 85 76 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0x8a],ecx
menu_branch_197:
   58fe8:	8b 75 3e             	mov    esi,DWORD PTR [ebp+0x3e]
   58feb:	6b d6 32             	imul   edx,esi,0x32
   58fee:	8d 85 82 fc ff ff    	lea    eax,[ebp-0x37e]
   58ff4:	01 c2                	add    edx,eax
   58ff6:	89 f0                	mov    eax,esi
   58ff8:	8d 34 b5 00 00 00 00 	lea    esi,[esi*4+0x0]
   58fff:	01 c6                	add    esi,eax
   59001:	8d 85 22 f8 ff ff    	lea    eax,[ebp-0x7de]
   59007:	c1 e6 04             	shl    esi,0x4
   5900a:	01 f0                	add    eax,esi
   5900c:	89 d6                	mov    esi,edx
   5900e:	89 c7                	mov    edi,eax
   59010:	89 45 fe             	mov    DWORD PTR [ebp-0x2],eax
   59013:	57                   	push   edi
menu_branch_198:
   59014:	8a 06                	mov    al,BYTE PTR [esi]
   59016:	88 07                	mov    BYTE PTR [edi],al
   59018:	3c 00                	cmp    al,0x0
   5901a:	74 10                	je     menu_branch_199
   5901c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5901f:	83 c6 02             	add    esi,0x2
   59022:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   59025:	83 c7 02             	add    edi,0x2
   59028:	3c 00                	cmp    al,0x0
   5902a:	75 e8                	jne    menu_branch_198
menu_branch_199:
   5902c:	5f                   	pop    edi
   5902d:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   59030:	e8 3b 2f 00 00       	call   add_on_off_text
   59035:	89 c6                	mov    esi,eax
   59037:	57                   	push   edi
   59038:	2b c9                	sub    ecx,ecx
   5903a:	49                   	dec    ecx
   5903b:	b0 00                	mov    al,0x0
   5903d:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5903f:	4f                   	dec    edi
menu_branch_200:
   59040:	8a 06                	mov    al,BYTE PTR [esi]
   59042:	88 07                	mov    BYTE PTR [edi],al
   59044:	3c 00                	cmp    al,0x0
   59046:	74 10                	je     menu_branch_201
   59048:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5904b:	83 c6 02             	add    esi,0x2
   5904e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   59051:	83 c7 02             	add    edi,0x2
   59054:	3c 00                	cmp    al,0x0
   59056:	75 e8                	jne    menu_branch_200
menu_branch_201:
   59058:	5f                   	pop    edi
   59059:	b8 50 00 00 00       	mov    eax,0x50
   5905e:	89 55 52             	mov    DWORD PTR [ebp+0x52],edx
   59061:	e8 b2 8e 01 00       	call   W?$nwn(ui)pnv
   59066:	89 c6                	mov    esi,eax
   59068:	85 c0                	test   eax,eax
   5906a:	74 3c                	je     menu_branch_202
   5906c:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   5906f:	0f af 45 42          	imul   eax,DWORD PTR [ebp+0x42]
   59073:	6a 00                	push   0x0
   59075:	6a ce                	push   0xffffffce
   59077:	83 c0 64             	add    eax,0x64
   5907a:	50                   	push   eax
   5907b:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14305, src obj: 1, src ofs: 0x5907d, dst obj: 3, dst ofs: 0x25bbc
   59081:	8b 45 fe             	mov    eax,DWORD PTR [ebp-0x2]
   59084:	e8 a7 f8 fe ff       	call   stringwidthCFN
   59089:	ba 7f 02 00 00       	mov    edx,0x27f
   5908e:	29 c2                	sub    edx,eax
   59090:	89 d0                	mov    eax,edx
   59092:	8b 4d 52             	mov    ecx,DWORD PTR [ebp+0x52]
   59095:	d1 e8                	shr    eax,1
   59097:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14304, src obj: 1, src ofs: 0x59099, dst obj: 3, dst ofs: 0x25bbc
   5909d:	50                   	push   eax
   5909e:	8b 55 fe             	mov    edx,DWORD PTR [ebp-0x2]
   590a1:	89 f0                	mov    eax,esi
   590a3:	e8 58 0b ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_202:
   590a8:	89 c2                	mov    edx,eax
   590aa:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   590ad:	89 94 85 76 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0x8a],edx
   590b4:	85 d2                	test   edx,edx
   590b6:	75 11                	jne    menu_branch_203
   590b8:	bb 2a d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_89                               ; fixup: num: 14316, src obj: 1, src ofs: 0x590b9, dst obj: 3, dst ofs: 0xd82a
   590bd:	ba 4c 03 00 00       	mov    edx,0x34c
   590c2:	31 c0                	xor    eax,eax
   590c4:	e8 67 ef fd ff       	call   _error_report
menu_branch_203:
   590c9:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   590cc:	30 ed                	xor    ch,ch
   590ce:	89 45 de             	mov    DWORD PTR [ebp-0x22],eax
   590d1:	88 6d 6a             	mov    BYTE PTR [ebp+0x6a],ch
menu_branch_204:
   590d4:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14315, src obj: 1, src ofs: 0x590d7, dst obj: 3, dst ofs: 0x25908
   590db:	83 f8 1c             	cmp    eax,0x1c
   590de:	74 0c                	je     menu_branch_205
   590e0:	31 c0                	xor    eax,eax
   590e2:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 14314, src obj: 1, src ofs: 0x590e3, dst obj: 3, dst ofs: 0x25974
   590e7:	83 f8 01             	cmp    eax,0x1
   590ea:	75 16                	jne    menu_branch_206
menu_branch_205:
   590ec:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14313, src obj: 1, src ofs: 0x590ed, dst obj: 3, dst ofs: 0x25a84
   590f1:	e8 aa 4b ff ff       	call   update_mod_84
   590f6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14312, src obj: 1, src ofs: 0x590f7, dst obj: 3, dst ofs: 0x1a1d4
   590fb:	e8 a0 28 fb ff       	call   update_mod_9
   59100:	eb d2                	jmp    menu_branch_204
menu_branch_206:
   59102:	31 db                	xor    ebx,ebx
   59104:	66 89 1d 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,bx                                 ; fixup: num: 14311, src obj: 1, src ofs: 0x59107, dst obj: 3, dst ofs: 0x25908
   5910b:	30 c0                	xor    al,al
   5910d:	a2 74 59 02 00       	mov    ds:@obj3:left_button,al                                      ; fixup: num: 14310, src obj: 1, src ofs: 0x5910e, dst obj: 3, dst ofs: 0x25974
menu_branch_207:
   59112:	80 7d 76 00          	cmp    BYTE PTR [ebp+0x76],0x0
   59116:	0f 85 2b 0d 00 00    	jne    menu_branch_308
   5911c:	e9 98 f9 ff ff       	jmp    menu_branch_168
menu_reference_5:
   59121:	8a 2d 58 7e 01 00    	mov    ch,BYTE PTR ds:@obj3:text_dialog                             ; fixup: num: 14309, src obj: 1, src ofs: 0x59123, dst obj: 3, dst ofs: 0x17e58
   59127:	31 c0                	xor    eax,eax
   59129:	fe c5                	inc    ch
   5912b:	88 e8                	mov    al,ch
   5912d:	88 2d 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,ch                             ; fixup: num: 14308, src obj: 1, src ofs: 0x5912f, dst obj: 3, dst ofs: 0x17e58
   59133:	83 f8 02             	cmp    eax,0x2
   59136:	7e 07                	jle    menu_branch_208
   59138:	30 e8                	xor    al,ch
   5913a:	a2 58 7e 01 00       	mov    ds:@obj3:text_dialog,al                                      ; fixup: num: 14307, src obj: 1, src ofs: 0x5913b, dst obj: 3, dst ofs: 0x17e58
menu_branch_208:
   5913f:	b4 01                	mov    ah,0x1
   59141:	88 65 6a             	mov    BYTE PTR [ebp+0x6a],ah
   59144:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 14306, src obj: 1, src ofs: 0x59145, dst obj: 3, dst ofs: 0x17e58
   59149:	38 e0                	cmp    al,ah
   5914b:	72 56                	jb     menu_branch_212
   5914d:	76 22                	jbe    menu_branch_210
   5914f:	3c 02                	cmp    al,0x2
   59151:	74 37                	je     menu_branch_211
   59153:	e9 3e fd ff ff       	jmp    menu_branch_186
menu_branch_209:
   59158:	bb 42 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_90                               ; fixup: num: 14333, src obj: 1, src ofs: 0x59159, dst obj: 3, dst ofs: 0xd842
   5915d:	ba 45 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_91                               ; fixup: num: 14332, src obj: 1, src ofs: 0x5915e, dst obj: 3, dst ofs: 0xd845
   59162:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14331, src obj: 1, src ofs: 0x59163, dst obj: 3, dst ofs: 0x32438
   59167:	e8 04 47 01 00       	call   set
   5916c:	e9 25 fd ff ff       	jmp    menu_branch_186
menu_branch_210:
   59171:	bb 4a d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_92                               ; fixup: num: 14330, src obj: 1, src ofs: 0x59172, dst obj: 3, dst ofs: 0xd84a
   59176:	ba 4e d8 00 00       	mov    edx,@obj3:menu_cpp_variable_93                               ; fixup: num: 14329, src obj: 1, src ofs: 0x59177, dst obj: 3, dst ofs: 0xd84e
   5917b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14328, src obj: 1, src ofs: 0x5917c, dst obj: 3, dst ofs: 0x32438
   59180:	e8 eb 46 01 00       	call   set
   59185:	e9 0c fd ff ff       	jmp    menu_branch_186
menu_branch_211:
   5918a:	bb 53 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_94                               ; fixup: num: 14327, src obj: 1, src ofs: 0x5918b, dst obj: 3, dst ofs: 0xd853
   5918f:	ba 59 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_95                               ; fixup: num: 14326, src obj: 1, src ofs: 0x59190, dst obj: 3, dst ofs: 0xd859
   59194:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14325, src obj: 1, src ofs: 0x59195, dst obj: 3, dst ofs: 0x32438
   59199:	e8 d2 46 01 00       	call   set
   5919e:	e9 f3 fc ff ff       	jmp    menu_branch_186
menu_branch_212:
   591a3:	84 c0                	test   al,al
   591a5:	74 b1                	je     menu_branch_209
   591a7:	e9 ea fc ff ff       	jmp    menu_branch_186
menu_reference_6:
   591ac:	8a 1d bc 0f 01 00    	mov    bl,BYTE PTR ds:@obj3:gore                                    ; fixup: num: 14324, src obj: 1, src ofs: 0x591ae, dst obj: 3, dst ofs: 0x10fbc
   591b2:	80 f3 01             	xor    bl,0x1
   591b5:	88 1d bc 0f 01 00    	mov    BYTE PTR ds:@obj3:gore,bl                                    ; fixup: num: 14323, src obj: 1, src ofs: 0x591b7, dst obj: 3, dst ofs: 0x10fbc
   591bb:	c6 45 6a 01          	mov    BYTE PTR [ebp+0x6a],0x1
   591bf:	74 19                	je     menu_branch_213
   591c1:	bb 5e d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_96                               ; fixup: num: 14322, src obj: 1, src ofs: 0x591c2, dst obj: 3, dst ofs: 0xd85e
   591c6:	ba 62 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_97                               ; fixup: num: 14321, src obj: 1, src ofs: 0x591c7, dst obj: 3, dst ofs: 0xd862
   591cb:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14320, src obj: 1, src ofs: 0x591cc, dst obj: 3, dst ofs: 0x32438
   591d0:	e8 9b 46 01 00       	call   set
   591d5:	e9 bc fc ff ff       	jmp    menu_branch_186
menu_branch_213:
   591da:	bb 67 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_98                               ; fixup: num: 14319, src obj: 1, src ofs: 0x591db, dst obj: 3, dst ofs: 0xd867
   591df:	ba 6a d8 00 00       	mov    edx,@obj3:menu_cpp_variable_99                               ; fixup: num: 14318, src obj: 1, src ofs: 0x591e0, dst obj: 3, dst ofs: 0xd86a
   591e4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14317, src obj: 1, src ofs: 0x591e5, dst obj: 3, dst ofs: 0x32438
   591e9:	e8 82 46 01 00       	call   set
   591ee:	e9 a3 fc ff ff       	jmp    menu_branch_186
menu_reference_7:
   591f3:	b3 01                	mov    bl,0x1
   591f5:	88 5d 6a             	mov    BYTE PTR [ebp+0x6a],bl
   591f8:	8a 3d 39 5b 02 00    	mov    bh,BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc       ; fixup: num: 14343, src obj: 1, src ofs: 0x591fa, dst obj: 3, dst ofs: 0x25b39
   591fe:	84 df                	test   bh,bl
   59200:	75 21                	jne    menu_branch_214
   59202:	88 f9                	mov    cl,bh
   59204:	08 d9                	or     cl,bl
   59206:	88 0d 39 5b 02 00    	mov    BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc,cl       ; fixup: num: 14342, src obj: 1, src ofs: 0x59208, dst obj: 3, dst ofs: 0x25b39
   5920c:	e8 c6 d2 01 00       	call   rand_
   59211:	89 c2                	mov    edx,eax
   59213:	bb 28 00 00 00       	mov    ebx,0x28
   59218:	c1 fa 1f             	sar    edx,0x1f
   5921b:	f7 fb                	idiv   ebx
   5921d:	89 15 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,edx                                  ; fixup: num: 14341, src obj: 1, src ofs: 0x5921f, dst obj: 3, dst ofs: 0x25b34
menu_branch_214:
   59223:	b8 72 d8 00 00       	mov    eax,@obj3:menu_cpp_variable_101                              ; fixup: num: 14340, src obj: 1, src ofs: 0x59224, dst obj: 3, dst ofs: 0xd872
   59228:	ba 6f d8 00 00       	mov    edx,@obj3:menu_cpp_variable_100                              ; fixup: num: 14339, src obj: 1, src ofs: 0x59229, dst obj: 3, dst ofs: 0xd86f
   5922d:	e8 4e 5b fb ff       	call   XFILE_map_cd
   59232:	e8 71 7b 01 00       	call   fopen_
   59237:	89 c6                	mov    esi,eax
   59239:	85 c0                	test   eax,eax
   5923b:	75 31                	jne    menu_branch_215
   5923d:	b8 7e d8 00 00       	mov    eax,@obj3:menu_cpp_variable_102                              ; fixup: num: 14338, src obj: 1, src ofs: 0x5923e, dst obj: 3, dst ofs: 0xd87e
   59242:	e8 39 5b fb ff       	call   XFILE_map_cd
   59247:	50                   	push   eax
   59248:	68 8a d8 00 00       	push   @obj3:menu_cpp_variable_103                                  ; fixup: num: 14337, src obj: 1, src ofs: 0x59249, dst obj: 3, dst ofs: 0xd88a
   5924d:	8d 85 26 ff ff ff    	lea    eax,[ebp-0xda]
   59253:	50                   	push   eax
   59254:	8d 9d 26 ff ff ff    	lea    ebx,[ebp-0xda]
   5925a:	e8 82 79 01 00       	call   sprintf_
   5925f:	83 c4 0c             	add    esp,0xc
   59262:	ba c9 05 00 00       	mov    edx,0x5c9
   59267:	31 c0                	xor    eax,eax
   59269:	e8 c2 ed fd ff       	call   _error_report
menu_branch_215:
   5926e:	b8 4c 00 00 00       	mov    eax,0x4c
   59273:	e8 a0 8c 01 00       	call   W?$nwn(ui)pnv
   59278:	85 c0                	test   eax,eax
   5927a:	74 2b                	je     menu_branch_216
   5927c:	6a 00                	push   0x0
   5927e:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14336, src obj: 1, src ofs: 0x5927f, dst obj: 1, dst ofs: 0x71493
   59283:	6a 00                	push   0x0
   59285:	6a 00                	push   0x0
   59287:	6a 01                	push   0x1
   59289:	68 00 00 70 c2       	push   0xc2700000
   5928e:	b9 a7 00 00 00       	mov    ecx,0xa7
   59293:	68 c8 00 00 00       	push   0xc8
   59298:	bb a1 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_104                              ; fixup: num: 14335, src obj: 1, src ofs: 0x59299, dst obj: 3, dst ofs: 0xd8a1
   5929d:	ba aa d8 00 00       	mov    edx,@obj3:menu_cpp_variable_105                              ; fixup: num: 14334, src obj: 1, src ofs: 0x5929e, dst obj: 3, dst ofs: 0xd8aa
   592a2:	e8 39 1a fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_216:
   592a7:	89 45 06             	mov    DWORD PTR [ebp+0x6],eax
   592aa:	85 c0                	test   eax,eax
   592ac:	75 0f                	jne    menu_branch_217
   592ae:	bb c3 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_106                              ; fixup: num: 14351, src obj: 1, src ofs: 0x592af, dst obj: 3, dst ofs: 0xd8c3
   592b3:	ba cd 05 00 00       	mov    edx,0x5cd
   592b8:	e8 73 ed fd ff       	call   _error_report
menu_branch_217:
   592bd:	8b 55 06             	mov    edx,DWORD PTR [ebp+0x6]
   592c0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14350, src obj: 1, src ofs: 0x592c1, dst obj: 3, dst ofs: 0x25a88
   592c5:	e8 66 2e ff ff       	call   insert_bitmap
   592ca:	b8 80 00 00 00       	mov    eax,0x80
   592cf:	e8 bf 81 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   592d4:	89 45 02             	mov    DWORD PTR [ebp+0x2],eax
   592d7:	85 c0                	test   eax,eax
   592d9:	75 0f                	jne    menu_branch_218
   592db:	bb db d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_107                              ; fixup: num: 14349, src obj: 1, src ofs: 0x592dc, dst obj: 3, dst ofs: 0xd8db
   592e0:	ba d1 05 00 00       	mov    edx,0x5d1
   592e5:	e8 46 ed fd ff       	call   _error_report
menu_branch_218:
   592ea:	80 3d 38 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:been_here_mod_88,0x0                       ; fixup: num: 14348, src obj: 1, src ofs: 0x592ec, dst obj: 3, dst ofs: 0x25b38
   592f1:	75 42                	jne    menu_branch_222
   592f3:	31 c9                	xor    ecx,ecx
   592f5:	31 ff                	xor    edi,edi
   592f7:	eb 01                	jmp    menu_branch_220
menu_branch_219:
   592f9:	47                   	inc    edi
menu_branch_220:
   592fa:	3b 3d 34 5b 02 00    	cmp    edi,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14347, src obj: 1, src ofs: 0x592fc, dst obj: 3, dst ofs: 0x25b34
   59300:	7d 23                	jge    menu_branch_221
   59302:	ba 7f 00 00 00       	mov    edx,0x7f
   59307:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   5930a:	89 f3                	mov    ebx,esi
   5930c:	e8 df 9a 01 00       	call   fgets_
   59311:	8a 66 0c             	mov    ah,BYTE PTR [esi+0xc]
   59314:	41                   	inc    ecx
   59315:	f6 c4 10             	test   ah,0x10
   59318:	74 df                	je     menu_branch_219
   5931a:	89 f0                	mov    eax,esi
   5931c:	e8 7a d9 01 00       	call   rewind_
   59321:	31 c9                	xor    ecx,ecx
   59323:	eb d4                	jmp    menu_branch_219
menu_branch_221:
   59325:	41                   	inc    ecx
   59326:	b0 01                	mov    al,0x1
   59328:	89 0d 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,ecx                                  ; fixup: num: 14346, src obj: 1, src ofs: 0x5932a, dst obj: 3, dst ofs: 0x25b34
   5932e:	a2 38 5b 02 00       	mov    ds:@obj3:been_here_mod_88,al                                 ; fixup: num: 14345, src obj: 1, src ofs: 0x5932f, dst obj: 3, dst ofs: 0x25b38
   59333:	eb 1e                	jmp    menu_branch_225
menu_branch_222:
   59335:	31 c9                	xor    ecx,ecx
   59337:	eb 10                	jmp    menu_branch_224
menu_branch_223:
   59339:	ba 7f 00 00 00       	mov    edx,0x7f
   5933e:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   59341:	89 f3                	mov    ebx,esi
   59343:	e8 a8 9a 01 00       	call   fgets_
   59348:	41                   	inc    ecx
menu_branch_224:
   59349:	a1 34 5b 02 00       	mov    eax,ds:@obj3:line                                            ; fixup: num: 14344, src obj: 1, src ofs: 0x5934a, dst obj: 3, dst ofs: 0x25b34
   5934e:	48                   	dec    eax
   5934f:	39 c1                	cmp    ecx,eax
   59351:	7c e6                	jl     menu_branch_223
menu_branch_225:
   59353:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14362, src obj: 1, src ofs: 0x59354, dst obj: 3, dst ofs: 0x1a1d4
   59358:	ba 7f 00 00 00       	mov    edx,0x7f
   5935d:	e8 3e 26 fb ff       	call   update_mod_9
   59362:	89 f3                	mov    ebx,esi
   59364:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   59367:	e8 84 9a 01 00       	call   fgets_
   5936c:	85 c0                	test   eax,eax
   5936e:	75 1e                	jne    menu_branch_226
   59370:	89 f0                	mov    eax,esi
   59372:	e8 24 d9 01 00       	call   rewind_
   59377:	89 f3                	mov    ebx,esi
   59379:	31 d2                	xor    edx,edx
   5937b:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   5937e:	89 15 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,edx                                  ; fixup: num: 14361, src obj: 1, src ofs: 0x59380, dst obj: 3, dst ofs: 0x25b34
   59384:	ba 7f 00 00 00       	mov    edx,0x7f
   59389:	e8 62 9a 01 00       	call   fgets_
menu_branch_226:
   5938e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14360, src obj: 1, src ofs: 0x5938f, dst obj: 3, dst ofs: 0x1a1d4
   59393:	e8 08 26 fb ff       	call   update_mod_9
   59398:	30 d2                	xor    dl,dl
   5939a:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   5939d:	8b 1d 34 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14359, src obj: 1, src ofs: 0x5939f, dst obj: 3, dst ofs: 0x25b34
   593a3:	88 55 7a             	mov    BYTE PTR [ebp+0x7a],dl
   593a6:	88 55 6e             	mov    BYTE PTR [ebp+0x6e],dl
   593a9:	ba f6 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_109                              ; fixup: num: 14358, src obj: 1, src ofs: 0x593aa, dst obj: 3, dst ofs: 0xd8f6
   593ae:	89 45 1e             	mov    DWORD PTR [ebp+0x1e],eax
   593b1:	43                   	inc    ebx
   593b2:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14357, src obj: 1, src ofs: 0x593b3, dst obj: 3, dst ofs: 0x32438
   593b7:	89 1d 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,ebx                                  ; fixup: num: 14356, src obj: 1, src ofs: 0x593b9, dst obj: 3, dst ofs: 0x25b34
   593bd:	e8 0e 44 01 00       	call   get
   593c2:	ba f3 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_108                              ; fixup: num: 14355, src obj: 1, src ofs: 0x593c3, dst obj: 3, dst ofs: 0xd8f3
   593c7:	e8 64 d0 01 00       	call   strcmp_
   593cc:	85 c0                	test   eax,eax
   593ce:	75 50                	jne    menu_branch_228
   593d0:	b7 01                	mov    bh,0x1
   593d2:	b8 50 00 00 00       	mov    eax,0x50
   593d7:	88 3d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,bh                           ; fixup: num: 14354, src obj: 1, src ofs: 0x593d9, dst obj: 3, dst ofs: 0x10fa6
   593dd:	e8 36 8b 01 00       	call   W?$nwn(ui)pnv
   593e2:	85 c0                	test   eax,eax
   593e4:	74 23                	je     menu_branch_227
   593e6:	6a 00                	push   0x0
   593e8:	6a c3                	push   0xffffffc3
   593ea:	68 16 01 00 00       	push   0x116
   593ef:	b9 01 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_110                              ; fixup: num: 14353, src obj: 1, src ofs: 0x593f0, dst obj: 3, dst ofs: 0xd901
   593f4:	68 02 01 00 00       	push   0x102
   593f9:	ba 0e d9 00 00       	mov    edx,@obj3:menu_cpp_variable_111                              ; fixup: num: 14352, src obj: 1, src ofs: 0x593fa, dst obj: 3, dst ofs: 0xd90e
   593fe:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14249, src obj: 1, src ofs: 0x59400, dst obj: 3, dst ofs: 0x25bd0
   59404:	e8 f7 07 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_227:
   59409:	89 c7                	mov    edi,eax
   5940b:	85 c0                	test   eax,eax
   5940d:	75 5f                	jne    menu_branch_230
   5940f:	bb 1b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_112                              ; fixup: num: 14248, src obj: 1, src ofs: 0x59410, dst obj: 3, dst ofs: 0xd91b
   59414:	ba 86 06 00 00       	mov    edx,0x686
   59419:	e8 12 ec fd ff       	call   _error_report
   5941e:	eb 4e                	jmp    menu_branch_230
menu_branch_228:
   59420:	30 db                	xor    bl,bl
   59422:	b8 50 00 00 00       	mov    eax,0x50
   59427:	88 1d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,bl                           ; fixup: num: 14247, src obj: 1, src ofs: 0x59429, dst obj: 3, dst ofs: 0x10fa6
   5942d:	e8 e6 8a 01 00       	call   W?$nwn(ui)pnv
   59432:	85 c0                	test   eax,eax
   59434:	74 23                	je     menu_branch_229
   59436:	6a 00                	push   0x0
   59438:	6a c3                	push   0xffffffc3
   5943a:	68 16 01 00 00       	push   0x116
   5943f:	b9 33 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_113                              ; fixup: num: 14246, src obj: 1, src ofs: 0x59440, dst obj: 3, dst ofs: 0xd933
   59444:	68 02 01 00 00       	push   0x102
   59449:	ba 40 d9 00 00       	mov    edx,@obj3:menu_cpp_variable_114                              ; fixup: num: 14245, src obj: 1, src ofs: 0x5944a, dst obj: 3, dst ofs: 0xd940
   5944e:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14244, src obj: 1, src ofs: 0x59450, dst obj: 3, dst ofs: 0x25bd0
   59454:	e8 a7 07 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_229:
   59459:	89 c7                	mov    edi,eax
   5945b:	85 c0                	test   eax,eax
   5945d:	75 0f                	jne    menu_branch_230
   5945f:	bb 4e d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_115                              ; fixup: num: 14243, src obj: 1, src ofs: 0x59460, dst obj: 3, dst ofs: 0xd94e
   59464:	ba 8d 06 00 00       	mov    edx,0x68d
   59469:	e8 c2 eb fd ff       	call   _error_report
menu_branch_230:
   5946e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14365, src obj: 1, src ofs: 0x5946f, dst obj: 3, dst ofs: 0x1a1d4
   59473:	e8 28 25 fb ff       	call   update_mod_9
   59478:	83 7d 1e 00          	cmp    DWORD PTR [ebp+0x1e],0x0
   5947c:	75 11                	jne    menu_branch_231
   5947e:	bb 66 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_116                              ; fixup: num: 14364, src obj: 1, src ofs: 0x5947f, dst obj: 3, dst ofs: 0xd966
   59483:	ba 91 06 00 00       	mov    edx,0x691
   59488:	31 c0                	xor    eax,eax
   5948a:	e8 a1 eb fd ff       	call   _error_report
menu_branch_231:
   5948f:	b8 50 00 00 00       	mov    eax,0x50
   59494:	e8 7f 8a 01 00       	call   W?$nwn(ui)pnv
   59499:	85 c0                	test   eax,eax
   5949b:	74 24                	je     menu_branch_232
   5949d:	68 2c 01 00 00       	push   0x12c
   594a2:	6a c3                	push   0xffffffc3
   594a4:	68 e4 00 00 00       	push   0xe4
   594a9:	b9 82 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_117                              ; fixup: num: 14363, src obj: 1, src ofs: 0x594aa, dst obj: 3, dst ofs: 0xd982
   594ae:	68 b4 00 00 00       	push   0xb4
   594b3:	8b 55 1e             	mov    edx,DWORD PTR [ebp+0x1e]
   594b6:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 14260, src obj: 1, src ofs: 0x594b8, dst obj: 3, dst ofs: 0x25bc4
   594bc:	e8 3f 07 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_232:
   594c1:	89 45 56             	mov    DWORD PTR [ebp+0x56],eax
   594c4:	85 c0                	test   eax,eax
   594c6:	75 0f                	jne    menu_branch_233
   594c8:	bb 8b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_118                              ; fixup: num: 14259, src obj: 1, src ofs: 0x594c9, dst obj: 3, dst ofs: 0xd98b
   594cd:	ba 93 06 00 00       	mov    edx,0x693
   594d2:	e8 59 eb fd ff       	call   _error_report
menu_branch_233:
   594d7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14258, src obj: 1, src ofs: 0x594d8, dst obj: 3, dst ofs: 0x1a1d4
   594dc:	e8 bf 24 fb ff       	call   update_mod_9
   594e1:	b8 50 00 00 00       	mov    eax,0x50
   594e6:	e8 2d 8a 01 00       	call   W?$nwn(ui)pnv
   594eb:	85 c0                	test   eax,eax
   594ed:	74 23                	je     menu_branch_234
   594ef:	6a 00                	push   0x0
   594f1:	6a c3                	push   0xffffffc3
   594f3:	68 16 01 00 00       	push   0x116
   594f8:	b9 a3 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_119                              ; fixup: num: 14257, src obj: 1, src ofs: 0x594f9, dst obj: 3, dst ofs: 0xd9a3
   594fd:	68 b4 00 00 00       	push   0xb4
   59502:	ba af d9 00 00       	mov    edx,@obj3:menu_cpp_variable_120                              ; fixup: num: 14256, src obj: 1, src ofs: 0x59503, dst obj: 3, dst ofs: 0xd9af
   59507:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14255, src obj: 1, src ofs: 0x59509, dst obj: 3, dst ofs: 0x25bd0
   5950d:	e8 ee 06 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_234:
   59512:	89 45 0e             	mov    DWORD PTR [ebp+0xe],eax
   59515:	85 c0                	test   eax,eax
   59517:	75 0f                	jne    menu_branch_235
   59519:	bb b4 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_121                              ; fixup: num: 14254, src obj: 1, src ofs: 0x5951a, dst obj: 3, dst ofs: 0xd9b4
   5951e:	ba 98 06 00 00       	mov    edx,0x698
   59523:	e8 08 eb fd ff       	call   _error_report
menu_branch_235:
   59528:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14253, src obj: 1, src ofs: 0x59529, dst obj: 3, dst ofs: 0x1a1d4
   5952d:	e8 6e 24 fb ff       	call   update_mod_9
   59532:	b8 50 00 00 00       	mov    eax,0x50
   59537:	e8 dc 89 01 00       	call   W?$nwn(ui)pnv
   5953c:	85 c0                	test   eax,eax
   5953e:	74 23                	je     menu_branch_236
   59540:	6a 00                	push   0x0
   59542:	6a c3                	push   0xffffffc3
   59544:	68 16 01 00 00       	push   0x116
   59549:	b9 cc d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_122                              ; fixup: num: 14252, src obj: 1, src ofs: 0x5954a, dst obj: 3, dst ofs: 0xd9cc
   5954e:	68 a4 01 00 00       	push   0x1a4
   59553:	ba da d9 00 00       	mov    edx,@obj3:menu_cpp_variable_123                              ; fixup: num: 14251, src obj: 1, src ofs: 0x59554, dst obj: 3, dst ofs: 0xd9da
   59558:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14250, src obj: 1, src ofs: 0x5955a, dst obj: 3, dst ofs: 0x25bd0
   5955e:	e8 9d 06 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_236:
   59563:	89 45 12             	mov    DWORD PTR [ebp+0x12],eax
   59566:	85 c0                	test   eax,eax
   59568:	75 0f                	jne    menu_branch_237
   5956a:	bb df d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_124                              ; fixup: num: 14270, src obj: 1, src ofs: 0x5956b, dst obj: 3, dst ofs: 0xd9df
   5956f:	ba 9d 06 00 00       	mov    edx,0x69d
   59574:	e8 b7 ea fd ff       	call   _error_report
menu_branch_237:
   59579:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14269, src obj: 1, src ofs: 0x5957a, dst obj: 3, dst ofs: 0x1a1d4
   5957e:	e8 1d 24 fb ff       	call   update_mod_9
menu_branch_238:
   59583:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14268, src obj: 1, src ofs: 0x59584, dst obj: 3, dst ofs: 0x25a84
   59588:	e8 13 47 ff ff       	call   update_mod_84
   5958d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14267, src obj: 1, src ofs: 0x5958e, dst obj: 3, dst ofs: 0x1a1d4
   59592:	e8 09 24 fb ff       	call   update_mod_9
   59597:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14266, src obj: 1, src ofs: 0x5959a, dst obj: 3, dst ofs: 0x25908
   5959e:	83 f8 01             	cmp    eax,0x1
   595a1:	75 13                	jne    menu_branch_240
   595a3:	b1 01                	mov    cl,0x1
menu_branch_239:
   595a5:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14265, src obj: 1, src ofs: 0x595a8, dst obj: 3, dst ofs: 0x25908
   595ac:	83 f8 01             	cmp    eax,0x1
   595af:	74 f4                	je     menu_branch_239
   595b1:	e9 20 06 00 00       	jmp    menu_branch_287
menu_branch_240:
   595b6:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14264, src obj: 1, src ofs: 0x595b8, dst obj: 3, dst ofs: 0x25978
   595c0:	7c 2b                	jl     menu_branch_241
   595c2:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14263, src obj: 1, src ofs: 0x595c4, dst obj: 3, dst ofs: 0x25978
   595cc:	7f 1f                	jg     menu_branch_241
   595ce:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14262, src obj: 1, src ofs: 0x595d0, dst obj: 3, dst ofs: 0x2597c
   595d8:	7c 13                	jl     menu_branch_241
   595da:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14261, src obj: 1, src ofs: 0x595dc, dst obj: 3, dst ofs: 0x2597c
   595e4:	7f 07                	jg     menu_branch_241
   595e6:	b8 01 00 00 00       	mov    eax,0x1
   595eb:	eb 02                	jmp    menu_branch_242
menu_branch_241:
   595ed:	31 c0                	xor    eax,eax
menu_branch_242:
   595ef:	85 c0                	test   eax,eax
   595f1:	74 65                	je     menu_branch_245
   595f3:	80 7d 7a 00          	cmp    BYTE PTR [ebp+0x7a],0x0
   595f7:	75 5f                	jne    menu_branch_245
   595f9:	b5 01                	mov    ch,0x1
   595fb:	8b 45 0e             	mov    eax,DWORD PTR [ebp+0xe]
   595fe:	88 6d 7a             	mov    BYTE PTR [ebp+0x7a],ch
   59601:	85 c0                	test   eax,eax
   59603:	74 0c                	je     menu_branch_243
   59605:	31 d2                	xor    edx,edx
   59607:	e8 14 09 ff ff       	call   W?$dt:TEXTBM$n()_
   5960c:	e8 67 8a 01 00       	call   W?$dln(pnv)v
menu_branch_243:
   59611:	b8 50 00 00 00       	mov    eax,0x50
   59616:	e8 fd 88 01 00       	call   W?$nwn(ui)pnv
   5961b:	85 c0                	test   eax,eax
   5961d:	74 23                	je     menu_branch_244
   5961f:	6a 00                	push   0x0
   59621:	6a c3                	push   0xffffffc3
   59623:	68 16 01 00 00       	push   0x116
   59628:	b9 f7 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_125                              ; fixup: num: 14278, src obj: 1, src ofs: 0x59629, dst obj: 3, dst ofs: 0xd9f7
   5962d:	68 b4 00 00 00       	push   0xb4
   59632:	ba 03 da 00 00       	mov    edx,@obj3:menu_cpp_variable_126                              ; fixup: num: 14277, src obj: 1, src ofs: 0x59633, dst obj: 3, dst ofs: 0xda03
   59637:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14276, src obj: 1, src ofs: 0x59639, dst obj: 3, dst ofs: 0x25bcc
   5963d:	e8 be 05 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_244:
   59642:	89 45 0e             	mov    DWORD PTR [ebp+0xe],eax
   59645:	85 c0                	test   eax,eax
   59647:	75 0f                	jne    menu_branch_245
   59649:	bb 08 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_127                              ; fixup: num: 14275, src obj: 1, src ofs: 0x5964a, dst obj: 3, dst ofs: 0xda08
   5964e:	ba b0 06 00 00       	mov    edx,0x6b0
   59653:	e8 d8 e9 fd ff       	call   _error_report
menu_branch_245:
   59658:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14274, src obj: 1, src ofs: 0x5965a, dst obj: 3, dst ofs: 0x25978
   59662:	7c 2b                	jl     menu_branch_246
   59664:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14273, src obj: 1, src ofs: 0x59666, dst obj: 3, dst ofs: 0x25978
   5966e:	7f 1f                	jg     menu_branch_246
   59670:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14272, src obj: 1, src ofs: 0x59672, dst obj: 3, dst ofs: 0x2597c
   5967a:	7c 13                	jl     menu_branch_246
   5967c:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14271, src obj: 1, src ofs: 0x5967e, dst obj: 3, dst ofs: 0x2597c
   59686:	7f 07                	jg     menu_branch_246
   59688:	b8 01 00 00 00       	mov    eax,0x1
   5968d:	eb 02                	jmp    menu_branch_247
menu_branch_246:
   5968f:	31 c0                	xor    eax,eax
menu_branch_247:
   59691:	85 c0                	test   eax,eax
   59693:	75 68                	jne    menu_branch_250
   59695:	80 7d 7a 00          	cmp    BYTE PTR [ebp+0x7a],0x0
   59699:	74 62                	je     menu_branch_250
   5969b:	30 e4                	xor    ah,ah
   5969d:	8b 55 0e             	mov    edx,DWORD PTR [ebp+0xe]
   596a0:	88 65 7a             	mov    BYTE PTR [ebp+0x7a],ah
   596a3:	85 d2                	test   edx,edx
   596a5:	74 0f                	je     menu_branch_248
   596a7:	8b 45 0e             	mov    eax,DWORD PTR [ebp+0xe]
   596aa:	31 d2                	xor    edx,edx
   596ac:	e8 6f 08 ff ff       	call   W?$dt:TEXTBM$n()_
   596b1:	e8 c2 89 01 00       	call   W?$dln(pnv)v
menu_branch_248:
   596b6:	b8 50 00 00 00       	mov    eax,0x50
   596bb:	e8 58 88 01 00       	call   W?$nwn(ui)pnv
   596c0:	85 c0                	test   eax,eax
   596c2:	74 23                	je     menu_branch_249
   596c4:	6a 00                	push   0x0
   596c6:	6a c3                	push   0xffffffc3
   596c8:	68 16 01 00 00       	push   0x116
   596cd:	b9 20 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_128                              ; fixup: num: 14290, src obj: 1, src ofs: 0x596ce, dst obj: 3, dst ofs: 0xda20
   596d2:	68 b4 00 00 00       	push   0xb4
   596d7:	ba 2c da 00 00       	mov    edx,@obj3:menu_cpp_variable_129                              ; fixup: num: 14289, src obj: 1, src ofs: 0x596d8, dst obj: 3, dst ofs: 0xda2c
   596dc:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14288, src obj: 1, src ofs: 0x596de, dst obj: 3, dst ofs: 0x25bd0
   596e2:	e8 19 05 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_249:
   596e7:	89 45 0e             	mov    DWORD PTR [ebp+0xe],eax
   596ea:	85 c0                	test   eax,eax
   596ec:	75 0f                	jne    menu_branch_250
   596ee:	bb 31 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_130                              ; fixup: num: 14287, src obj: 1, src ofs: 0x596ef, dst obj: 3, dst ofs: 0xda31
   596f3:	ba b8 06 00 00       	mov    edx,0x6b8
   596f8:	e8 33 e9 fd ff       	call   _error_report
menu_branch_250:
   596fd:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14286, src obj: 1, src ofs: 0x596ff, dst obj: 3, dst ofs: 0x25974
   59704:	74 58                	je     menu_branch_254
   59706:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14285, src obj: 1, src ofs: 0x59708, dst obj: 3, dst ofs: 0x25978
   59710:	7c 2b                	jl     menu_branch_251
   59712:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14284, src obj: 1, src ofs: 0x59714, dst obj: 3, dst ofs: 0x25978
   5971c:	7f 1f                	jg     menu_branch_251
   5971e:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14283, src obj: 1, src ofs: 0x59720, dst obj: 3, dst ofs: 0x2597c
   59728:	7c 13                	jl     menu_branch_251
   5972a:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14282, src obj: 1, src ofs: 0x5972c, dst obj: 3, dst ofs: 0x2597c
   59734:	7f 07                	jg     menu_branch_251
   59736:	b8 01 00 00 00       	mov    eax,0x1
   5973b:	eb 02                	jmp    menu_branch_252
menu_branch_251:
   5973d:	31 c0                	xor    eax,eax
menu_branch_252:
   5973f:	85 c0                	test   eax,eax
   59741:	74 1b                	je     menu_branch_254
   59743:	b1 01                	mov    cl,0x1
menu_branch_253:
   59745:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14281, src obj: 1, src ofs: 0x59747, dst obj: 3, dst ofs: 0x25974
   5974c:	0f 84 84 04 00 00    	je     menu_branch_287
   59752:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14280, src obj: 1, src ofs: 0x59753, dst obj: 3, dst ofs: 0x1a1d4
   59757:	e8 44 22 fb ff       	call   update_mod_9
   5975c:	eb e7                	jmp    menu_branch_253
menu_branch_254:
   5975e:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14279, src obj: 1, src ofs: 0x59760, dst obj: 3, dst ofs: 0x25978
   59768:	7c 2b                	jl     menu_branch_255
   5976a:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14299, src obj: 1, src ofs: 0x5976c, dst obj: 3, dst ofs: 0x25978
   59774:	7f 1f                	jg     menu_branch_255
   59776:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14298, src obj: 1, src ofs: 0x59778, dst obj: 3, dst ofs: 0x2597c
   59780:	7c 13                	jl     menu_branch_255
   59782:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14297, src obj: 1, src ofs: 0x59784, dst obj: 3, dst ofs: 0x2597c
   5978c:	7f 07                	jg     menu_branch_255
   5978e:	b8 01 00 00 00       	mov    eax,0x1
   59793:	eb 02                	jmp    menu_branch_256
menu_branch_255:
   59795:	31 c0                	xor    eax,eax
menu_branch_256:
   59797:	85 c0                	test   eax,eax
   59799:	74 66                	je     menu_branch_259
   5979b:	80 7d 6e 00          	cmp    BYTE PTR [ebp+0x6e],0x0
   5979f:	75 60                	jne    menu_branch_259
   597a1:	c6 45 6e 01          	mov    BYTE PTR [ebp+0x6e],0x1
   597a5:	8b 5d 12             	mov    ebx,DWORD PTR [ebp+0x12]
   597a8:	85 db                	test   ebx,ebx
   597aa:	74 0e                	je     menu_branch_257
   597ac:	89 d8                	mov    eax,ebx
   597ae:	31 d2                	xor    edx,edx
   597b0:	e8 6b 07 ff ff       	call   W?$dt:TEXTBM$n()_
   597b5:	e8 be 88 01 00       	call   W?$dln(pnv)v
menu_branch_257:
   597ba:	b8 50 00 00 00       	mov    eax,0x50
   597bf:	e8 54 87 01 00       	call   W?$nwn(ui)pnv
   597c4:	85 c0                	test   eax,eax
   597c6:	74 23                	je     menu_branch_258
   597c8:	6a 00                	push   0x0
   597ca:	6a c3                	push   0xffffffc3
   597cc:	68 16 01 00 00       	push   0x116
   597d1:	b9 49 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_131                              ; fixup: num: 14296, src obj: 1, src ofs: 0x597d2, dst obj: 3, dst ofs: 0xda49
   597d6:	68 a4 01 00 00       	push   0x1a4
   597db:	ba 57 da 00 00       	mov    edx,@obj3:menu_cpp_variable_132                              ; fixup: num: 14295, src obj: 1, src ofs: 0x597dc, dst obj: 3, dst ofs: 0xda57
   597e0:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14294, src obj: 1, src ofs: 0x597e2, dst obj: 3, dst ofs: 0x25bcc
   597e6:	e8 15 04 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_258:
   597eb:	89 45 12             	mov    DWORD PTR [ebp+0x12],eax
   597ee:	85 c0                	test   eax,eax
   597f0:	75 0f                	jne    menu_branch_259
   597f2:	bb 5c da 00 00       	mov    ebx,@obj3:menu_cpp_variable_133                              ; fixup: num: 14293, src obj: 1, src ofs: 0x597f3, dst obj: 3, dst ofs: 0xda5c
   597f7:	ba c7 06 00 00       	mov    edx,0x6c7
   597fc:	e8 2f e8 fd ff       	call   _error_report
menu_branch_259:
   59801:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14292, src obj: 1, src ofs: 0x59803, dst obj: 3, dst ofs: 0x25978
   5980b:	7c 2b                	jl     menu_branch_260
   5980d:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14291, src obj: 1, src ofs: 0x5980f, dst obj: 3, dst ofs: 0x25978
   59817:	7f 1f                	jg     menu_branch_260
   59819:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14186, src obj: 1, src ofs: 0x5981b, dst obj: 3, dst ofs: 0x2597c
   59823:	7c 13                	jl     menu_branch_260
   59825:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14185, src obj: 1, src ofs: 0x59827, dst obj: 3, dst ofs: 0x2597c
   5982f:	7f 07                	jg     menu_branch_260
   59831:	b8 01 00 00 00       	mov    eax,0x1
   59836:	eb 02                	jmp    menu_branch_261
menu_branch_260:
   59838:	31 c0                	xor    eax,eax
menu_branch_261:
   5983a:	85 c0                	test   eax,eax
   5983c:	75 67                	jne    menu_branch_264
   5983e:	80 7d 6e 00          	cmp    BYTE PTR [ebp+0x6e],0x0
   59842:	74 61                	je     menu_branch_264
   59844:	30 c9                	xor    cl,cl
   59846:	88 4d 6e             	mov    BYTE PTR [ebp+0x6e],cl
   59849:	8b 4d 12             	mov    ecx,DWORD PTR [ebp+0x12]
   5984c:	85 c9                	test   ecx,ecx
   5984e:	74 0e                	je     menu_branch_262
   59850:	89 c8                	mov    eax,ecx
   59852:	31 d2                	xor    edx,edx
   59854:	e8 c7 06 ff ff       	call   W?$dt:TEXTBM$n()_
   59859:	e8 1a 88 01 00       	call   W?$dln(pnv)v
menu_branch_262:
   5985e:	b8 50 00 00 00       	mov    eax,0x50
   59863:	e8 b0 86 01 00       	call   W?$nwn(ui)pnv
   59868:	85 c0                	test   eax,eax
   5986a:	74 23                	je     menu_branch_263
   5986c:	6a 00                	push   0x0
   5986e:	6a c3                	push   0xffffffc3
   59870:	68 16 01 00 00       	push   0x116
   59875:	b9 74 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_134                              ; fixup: num: 14184, src obj: 1, src ofs: 0x59876, dst obj: 3, dst ofs: 0xda74
   5987a:	68 a4 01 00 00       	push   0x1a4
   5987f:	ba 82 da 00 00       	mov    edx,@obj3:menu_cpp_variable_135                              ; fixup: num: 14183, src obj: 1, src ofs: 0x59880, dst obj: 3, dst ofs: 0xda82
   59884:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14182, src obj: 1, src ofs: 0x59886, dst obj: 3, dst ofs: 0x25bd0
   5988a:	e8 71 03 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_263:
   5988f:	89 45 12             	mov    DWORD PTR [ebp+0x12],eax
   59892:	85 c0                	test   eax,eax
   59894:	75 0f                	jne    menu_branch_264
   59896:	bb 87 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_136                              ; fixup: num: 14303, src obj: 1, src ofs: 0x59897, dst obj: 3, dst ofs: 0xda87
   5989b:	ba cf 06 00 00       	mov    edx,0x6cf
   598a0:	e8 8b e7 fd ff       	call   _error_report
menu_branch_264:
   598a5:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14302, src obj: 1, src ofs: 0x598a7, dst obj: 3, dst ofs: 0x25974
   598ac:	74 58                	je     menu_branch_268
   598ae:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14301, src obj: 1, src ofs: 0x598b0, dst obj: 3, dst ofs: 0x25978
   598b8:	7c 2b                	jl     menu_branch_265
   598ba:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14300, src obj: 1, src ofs: 0x598bc, dst obj: 3, dst ofs: 0x25978
   598c4:	7f 1f                	jg     menu_branch_265
   598c6:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14195, src obj: 1, src ofs: 0x598c8, dst obj: 3, dst ofs: 0x2597c
   598d0:	7c 13                	jl     menu_branch_265
   598d2:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14194, src obj: 1, src ofs: 0x598d4, dst obj: 3, dst ofs: 0x2597c
   598dc:	7f 07                	jg     menu_branch_265
   598de:	b8 01 00 00 00       	mov    eax,0x1
   598e3:	eb 02                	jmp    menu_branch_266
menu_branch_265:
   598e5:	31 c0                	xor    eax,eax
menu_branch_266:
   598e7:	85 c0                	test   eax,eax
   598e9:	74 1b                	je     menu_branch_268
   598eb:	30 c9                	xor    cl,cl
menu_branch_267:
   598ed:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14193, src obj: 1, src ofs: 0x598ef, dst obj: 3, dst ofs: 0x25974
   598f4:	0f 84 dc 02 00 00    	je     menu_branch_287
   598fa:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14192, src obj: 1, src ofs: 0x598fb, dst obj: 3, dst ofs: 0x1a1d4
   598ff:	e8 9c 20 fb ff       	call   update_mod_9
   59904:	eb e7                	jmp    menu_branch_267
menu_branch_268:
   59906:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14191, src obj: 1, src ofs: 0x59908, dst obj: 3, dst ofs: 0x25978
   59910:	7c 2b                	jl     menu_branch_269
   59912:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14190, src obj: 1, src ofs: 0x59914, dst obj: 3, dst ofs: 0x25978
   5991c:	7f 1f                	jg     menu_branch_269
   5991e:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14189, src obj: 1, src ofs: 0x59920, dst obj: 3, dst ofs: 0x2597c
   59928:	7c 13                	jl     menu_branch_269
   5992a:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14188, src obj: 1, src ofs: 0x5992c, dst obj: 3, dst ofs: 0x2597c
   59934:	7f 07                	jg     menu_branch_269
   59936:	b8 01 00 00 00       	mov    eax,0x1
   5993b:	eb 02                	jmp    menu_branch_270
menu_branch_269:
   5993d:	31 c0                	xor    eax,eax
menu_branch_270:
   5993f:	85 c0                	test   eax,eax
   59941:	0f 84 a4 00 00 00    	je     menu_branch_274
   59947:	80 7d 66 00          	cmp    BYTE PTR [ebp+0x66],0x0
   5994b:	0f 85 9a 00 00 00    	jne    menu_branch_274
   59951:	c6 45 66 01          	mov    BYTE PTR [ebp+0x66],0x1
   59955:	85 ff                	test   edi,edi
   59957:	74 0e                	je     menu_branch_271
   59959:	89 f8                	mov    eax,edi
   5995b:	31 d2                	xor    edx,edx
   5995d:	e8 be 05 ff ff       	call   W?$dt:TEXTBM$n()_
   59962:	e8 11 87 01 00       	call   W?$dln(pnv)v
menu_branch_271:
   59967:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 14187, src obj: 1, src ofs: 0x59969, dst obj: 3, dst ofs: 0x10fa6
   5996e:	74 33                	je     menu_branch_272
   59970:	b8 50 00 00 00       	mov    eax,0x50
   59975:	e8 9e 85 01 00       	call   W?$nwn(ui)pnv
   5997a:	85 c0                	test   eax,eax
   5997c:	74 56                	je     menu_branch_273
   5997e:	6a 00                	push   0x0
   59980:	6a c3                	push   0xffffffc3
   59982:	68 16 01 00 00       	push   0x116
   59987:	b9 9f da 00 00       	mov    ecx,@obj3:menu_cpp_variable_137                              ; fixup: num: 14206, src obj: 1, src ofs: 0x59988, dst obj: 3, dst ofs: 0xda9f
   5998c:	68 02 01 00 00       	push   0x102
   59991:	ba ac da 00 00       	mov    edx,@obj3:menu_cpp_variable_138                              ; fixup: num: 14205, src obj: 1, src ofs: 0x59992, dst obj: 3, dst ofs: 0xdaac
   59996:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14204, src obj: 1, src ofs: 0x59998, dst obj: 3, dst ofs: 0x25bcc
   5999c:	e8 5f 02 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   599a1:	eb 31                	jmp    menu_branch_273
menu_branch_272:
   599a3:	b8 50 00 00 00       	mov    eax,0x50
   599a8:	e8 6b 85 01 00       	call   W?$nwn(ui)pnv
   599ad:	85 c0                	test   eax,eax
   599af:	74 23                	je     menu_branch_273
   599b1:	6a 00                	push   0x0
   599b3:	6a c3                	push   0xffffffc3
   599b5:	68 16 01 00 00       	push   0x116
   599ba:	b9 bb da 00 00       	mov    ecx,@obj3:menu_cpp_variable_139                              ; fixup: num: 14203, src obj: 1, src ofs: 0x599bb, dst obj: 3, dst ofs: 0xdabb
   599bf:	68 02 01 00 00       	push   0x102
   599c4:	ba c8 da 00 00       	mov    edx,@obj3:menu_cpp_variable_140                              ; fixup: num: 14202, src obj: 1, src ofs: 0x599c5, dst obj: 3, dst ofs: 0xdac8
   599c9:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14201, src obj: 1, src ofs: 0x599cb, dst obj: 3, dst ofs: 0x25bcc
   599cf:	e8 2c 02 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_273:
   599d4:	89 c7                	mov    edi,eax
   599d6:	85 ff                	test   edi,edi
   599d8:	75 11                	jne    menu_branch_274
   599da:	bb d8 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_141                              ; fixup: num: 14200, src obj: 1, src ofs: 0x599db, dst obj: 3, dst ofs: 0xdad8
   599df:	ba df 06 00 00       	mov    edx,0x6df
   599e4:	31 c0                	xor    eax,eax
   599e6:	e8 45 e6 fd ff       	call   _error_report
menu_branch_274:
   599eb:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14199, src obj: 1, src ofs: 0x599ed, dst obj: 3, dst ofs: 0x25978
   599f5:	7c 2b                	jl     menu_branch_275
   599f7:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14198, src obj: 1, src ofs: 0x599f9, dst obj: 3, dst ofs: 0x25978
   59a01:	7f 1f                	jg     menu_branch_275
   59a03:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14197, src obj: 1, src ofs: 0x59a05, dst obj: 3, dst ofs: 0x2597c
   59a0d:	7c 13                	jl     menu_branch_275
   59a0f:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14196, src obj: 1, src ofs: 0x59a11, dst obj: 3, dst ofs: 0x2597c
   59a19:	7f 07                	jg     menu_branch_275
   59a1b:	b8 01 00 00 00       	mov    eax,0x1
   59a20:	eb 02                	jmp    menu_branch_276
menu_branch_275:
   59a22:	31 c0                	xor    eax,eax
menu_branch_276:
   59a24:	85 c0                	test   eax,eax
   59a26:	0f 85 a5 00 00 00    	jne    menu_branch_280
   59a2c:	80 7d 66 00          	cmp    BYTE PTR [ebp+0x66],0x0
   59a30:	0f 84 9b 00 00 00    	je     menu_branch_280
   59a36:	30 db                	xor    bl,bl
   59a38:	88 5d 66             	mov    BYTE PTR [ebp+0x66],bl
   59a3b:	85 ff                	test   edi,edi
   59a3d:	74 0e                	je     menu_branch_277
   59a3f:	89 f8                	mov    eax,edi
   59a41:	31 d2                	xor    edx,edx
   59a43:	e8 d8 04 ff ff       	call   W?$dt:TEXTBM$n()_
   59a48:	e8 2b 86 01 00       	call   W?$dln(pnv)v
menu_branch_277:
   59a4d:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 14214, src obj: 1, src ofs: 0x59a4f, dst obj: 3, dst ofs: 0x10fa6
   59a54:	74 33                	je     menu_branch_278
   59a56:	b8 50 00 00 00       	mov    eax,0x50
   59a5b:	e8 b8 84 01 00       	call   W?$nwn(ui)pnv
   59a60:	85 c0                	test   eax,eax
   59a62:	74 56                	je     menu_branch_279
   59a64:	6a 00                	push   0x0
   59a66:	6a c3                	push   0xffffffc3
   59a68:	68 16 01 00 00       	push   0x116
   59a6d:	b9 f0 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_142                              ; fixup: num: 14213, src obj: 1, src ofs: 0x59a6e, dst obj: 3, dst ofs: 0xdaf0
   59a72:	68 02 01 00 00       	push   0x102
   59a77:	ba fd da 00 00       	mov    edx,@obj3:menu_cpp_variable_143                              ; fixup: num: 14212, src obj: 1, src ofs: 0x59a78, dst obj: 3, dst ofs: 0xdafd
   59a7c:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14211, src obj: 1, src ofs: 0x59a7e, dst obj: 3, dst ofs: 0x25bd0
   59a82:	e8 79 01 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   59a87:	eb 31                	jmp    menu_branch_279
menu_branch_278:
   59a89:	b8 50 00 00 00       	mov    eax,0x50
   59a8e:	e8 85 84 01 00       	call   W?$nwn(ui)pnv
   59a93:	85 c0                	test   eax,eax
   59a95:	74 23                	je     menu_branch_279
   59a97:	6a 00                	push   0x0
   59a99:	6a c3                	push   0xffffffc3
   59a9b:	68 16 01 00 00       	push   0x116
   59aa0:	b9 0c db 00 00       	mov    ecx,@obj3:menu_cpp_variable_144                              ; fixup: num: 14210, src obj: 1, src ofs: 0x59aa1, dst obj: 3, dst ofs: 0xdb0c
   59aa5:	68 02 01 00 00       	push   0x102
   59aaa:	ba 19 db 00 00       	mov    edx,@obj3:menu_cpp_variable_145                              ; fixup: num: 14209, src obj: 1, src ofs: 0x59aab, dst obj: 3, dst ofs: 0xdb19
   59aaf:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14208, src obj: 1, src ofs: 0x59ab1, dst obj: 3, dst ofs: 0x25bd0
   59ab5:	e8 46 01 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_279:
   59aba:	89 c7                	mov    edi,eax
   59abc:	85 ff                	test   edi,edi
   59abe:	75 11                	jne    menu_branch_280
   59ac0:	bb 29 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_146                              ; fixup: num: 14207, src obj: 1, src ofs: 0x59ac1, dst obj: 3, dst ofs: 0xdb29
   59ac5:	ba e9 06 00 00       	mov    edx,0x6e9
   59aca:	31 c0                	xor    eax,eax
   59acc:	e8 5f e5 fd ff       	call   _error_report
menu_branch_280:
   59ad1:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14224, src obj: 1, src ofs: 0x59ad3, dst obj: 3, dst ofs: 0x25974
   59ad8:	0f 84 a5 fa ff ff    	je     menu_branch_238
   59ade:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14223, src obj: 1, src ofs: 0x59ae0, dst obj: 3, dst ofs: 0x25978
   59ae8:	7c 2b                	jl     menu_branch_281
   59aea:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14222, src obj: 1, src ofs: 0x59aec, dst obj: 3, dst ofs: 0x25978
   59af4:	7f 1f                	jg     menu_branch_281
   59af6:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14221, src obj: 1, src ofs: 0x59af8, dst obj: 3, dst ofs: 0x2597c
   59b00:	7c 13                	jl     menu_branch_281
   59b02:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14220, src obj: 1, src ofs: 0x59b04, dst obj: 3, dst ofs: 0x2597c
   59b0c:	7f 07                	jg     menu_branch_281
   59b0e:	b8 01 00 00 00       	mov    eax,0x1
   59b13:	eb 02                	jmp    menu_branch_282
menu_branch_281:
   59b15:	31 c0                	xor    eax,eax
menu_branch_282:
   59b17:	85 c0                	test   eax,eax
   59b19:	0f 84 64 fa ff ff    	je     menu_branch_238
   59b1f:	85 ff                	test   edi,edi
   59b21:	74 0e                	je     menu_branch_283
   59b23:	89 f8                	mov    eax,edi
   59b25:	31 d2                	xor    edx,edx
   59b27:	e8 f4 03 ff ff       	call   W?$dt:TEXTBM$n()_
   59b2c:	e8 47 85 01 00       	call   W?$dln(pnv)v
menu_branch_283:
   59b31:	8a 2d a6 0f 01 00    	mov    ch,BYTE PTR ds:@obj3:use_quicktips                           ; fixup: num: 14219, src obj: 1, src ofs: 0x59b33, dst obj: 3, dst ofs: 0x10fa6
   59b37:	80 f5 01             	xor    ch,0x1
   59b3a:	88 2d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,ch                           ; fixup: num: 14218, src obj: 1, src ofs: 0x59b3c, dst obj: 3, dst ofs: 0x10fa6
   59b40:	74 33                	je     menu_branch_284
   59b42:	b8 50 00 00 00       	mov    eax,0x50
   59b47:	e8 cc 83 01 00       	call   W?$nwn(ui)pnv
   59b4c:	85 c0                	test   eax,eax
   59b4e:	74 56                	je     menu_branch_285
   59b50:	6a 00                	push   0x0
   59b52:	6a c3                	push   0xffffffc3
   59b54:	68 16 01 00 00       	push   0x116
   59b59:	b9 41 db 00 00       	mov    ecx,@obj3:menu_cpp_variable_147                              ; fixup: num: 14217, src obj: 1, src ofs: 0x59b5a, dst obj: 3, dst ofs: 0xdb41
   59b5e:	68 02 01 00 00       	push   0x102
   59b63:	ba 4e db 00 00       	mov    edx,@obj3:menu_cpp_variable_148                              ; fixup: num: 14216, src obj: 1, src ofs: 0x59b64, dst obj: 3, dst ofs: 0xdb4e
   59b68:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14215, src obj: 1, src ofs: 0x59b6a, dst obj: 3, dst ofs: 0x25bcc
   59b6e:	e8 8d 00 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   59b73:	eb 31                	jmp    menu_branch_285
menu_branch_284:
   59b75:	b8 50 00 00 00       	mov    eax,0x50
   59b7a:	e8 99 83 01 00       	call   W?$nwn(ui)pnv
   59b7f:	85 c0                	test   eax,eax
   59b81:	74 23                	je     menu_branch_285
   59b83:	6a 00                	push   0x0
   59b85:	6a c3                	push   0xffffffc3
   59b87:	68 16 01 00 00       	push   0x116
   59b8c:	b9 5d db 00 00       	mov    ecx,@obj3:menu_cpp_variable_149                              ; fixup: num: 14236, src obj: 1, src ofs: 0x59b8d, dst obj: 3, dst ofs: 0xdb5d
   59b91:	68 02 01 00 00       	push   0x102
   59b96:	ba 6a db 00 00       	mov    edx,@obj3:menu_cpp_variable_150                              ; fixup: num: 14235, src obj: 1, src ofs: 0x59b97, dst obj: 3, dst ofs: 0xdb6a
   59b9b:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14234, src obj: 1, src ofs: 0x59b9d, dst obj: 3, dst ofs: 0x25bcc
   59ba1:	e8 5a 00 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_branch_285:
   59ba6:	89 c7                	mov    edi,eax
   59ba8:	85 ff                	test   edi,edi
   59baa:	75 11                	jne    menu_branch_286
   59bac:	bb 7a db 00 00       	mov    ebx,@obj3:menu_cpp_variable_151                              ; fixup: num: 14233, src obj: 1, src ofs: 0x59bad, dst obj: 3, dst ofs: 0xdb7a
   59bb1:	ba f5 06 00 00       	mov    edx,0x6f5
   59bb6:	31 c0                	xor    eax,eax
   59bb8:	e8 73 e4 fd ff       	call   _error_report
menu_branch_286:
   59bbd:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14232, src obj: 1, src ofs: 0x59bbf, dst obj: 3, dst ofs: 0x25974
   59bc4:	0f 84 b9 f9 ff ff    	je     menu_branch_238
   59bca:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14231, src obj: 1, src ofs: 0x59bcb, dst obj: 3, dst ofs: 0x1a1d4
   59bcf:	e8 cc 1d fb ff       	call   update_mod_9
   59bd4:	eb e7                	jmp    menu_branch_286
menu_branch_287:
   59bd6:	31 c0                	xor    eax,eax
   59bd8:	a0 a6 0f 01 00       	mov    al,ds:@obj3:use_quicktips                                    ; fixup: num: 14230, src obj: 1, src ofs: 0x59bd9, dst obj: 3, dst ofs: 0x10fa6
   59bdd:	85 c0                	test   eax,eax
   59bdf:	75 0c                	jne    menu_branch_288
   59be1:	bb 92 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_152                              ; fixup: num: 14229, src obj: 1, src ofs: 0x59be2, dst obj: 3, dst ofs: 0xdb92
   59be6:	ba 96 db 00 00       	mov    edx,@obj3:menu_cpp_variable_153                              ; fixup: num: 14228, src obj: 1, src ofs: 0x59be7, dst obj: 3, dst ofs: 0xdb96
   59beb:	eb 0a                	jmp    menu_branch_289
menu_branch_288:
   59bed:	bb a1 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_154                              ; fixup: num: 14227, src obj: 1, src ofs: 0x59bee, dst obj: 3, dst ofs: 0xdba1
   59bf2:	ba a4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_155                              ; fixup: num: 14226, src obj: 1, src ofs: 0x59bf3, dst obj: 3, dst ofs: 0xdba4
menu_branch_289:
   59bf7:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14225, src obj: 1, src ofs: 0x59bf8, dst obj: 3, dst ofs: 0x32438
   59bfc:	e8 6f 3c 01 00       	call   set
   59c01:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
   59c04:	85 c0                	test   eax,eax
   59c06:	74 0c                	je     menu_branch_290
   59c08:	31 d2                	xor    edx,edx
   59c0a:	e8 11 03 ff ff       	call   W?$dt:TEXTBM$n()_
   59c0f:	e8 64 84 01 00       	call   W?$dln(pnv)v
menu_branch_290:
   59c14:	83 7d 0e 00          	cmp    DWORD PTR [ebp+0xe],0x0
   59c18:	74 0f                	je     menu_branch_291
   59c1a:	8b 45 0e             	mov    eax,DWORD PTR [ebp+0xe]
   59c1d:	31 d2                	xor    edx,edx
   59c1f:	e8 fc 02 ff ff       	call   W?$dt:TEXTBM$n()_
   59c24:	e8 4f 84 01 00       	call   W?$dln(pnv)v
menu_branch_291:
   59c29:	85 ff                	test   edi,edi
   59c2b:	74 0e                	je     menu_branch_292
   59c2d:	89 f8                	mov    eax,edi
   59c2f:	31 d2                	xor    edx,edx
   59c31:	e8 ea 02 ff ff       	call   W?$dt:TEXTBM$n()_
   59c36:	e8 3d 84 01 00       	call   W?$dln(pnv)v
menu_branch_292:
   59c3b:	8b 5d 12             	mov    ebx,DWORD PTR [ebp+0x12]
   59c3e:	85 db                	test   ebx,ebx
   59c40:	74 0e                	je     menu_branch_293
   59c42:	89 d8                	mov    eax,ebx
   59c44:	31 d2                	xor    edx,edx
   59c46:	e8 d5 02 ff ff       	call   W?$dt:TEXTBM$n()_
   59c4b:	e8 28 84 01 00       	call   W?$dln(pnv)v
menu_branch_293:
   59c50:	84 c9                	test   cl,cl
   59c52:	0f 84 fb f6 ff ff    	je     menu_branch_225
   59c58:	89 f0                	mov    eax,esi
   59c5a:	8b 55 06             	mov    edx,DWORD PTR [ebp+0x6]
   59c5d:	e8 dc 71 01 00       	call   fclose_
   59c62:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14240, src obj: 1, src ofs: 0x59c63, dst obj: 3, dst ofs: 0x25a88
   59c67:	8b 4d 06             	mov    ecx,DWORD PTR [ebp+0x6]
   59c6a:	e8 81 2a ff ff       	call   remove_bitmap
   59c6f:	85 c9                	test   ecx,ecx
   59c71:	74 0e                	je     menu_branch_294
   59c73:	89 c8                	mov    eax,ecx
   59c75:	31 d2                	xor    edx,edx
   59c77:	e8 24 17 fe ff       	call   W?$dt:BTMAP$n()_
   59c7c:	e8 f7 83 01 00       	call   W?$dln(pnv)v
menu_branch_294:
   59c81:	8b 45 02             	mov    eax,DWORD PTR [ebp+0x2]
   59c84:	e8 5f 77 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   59c89:	e9 08 f2 ff ff       	jmp    menu_branch_186
menu_reference_8:
   59c8e:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14239, src obj: 1, src ofs: 0x59c8f, dst obj: 3, dst ofs: 0x17e5c
   59c93:	b6 01                	mov    dh,0x1
   59c95:	29 c9                	sub    ecx,ecx
   59c97:	49                   	dec    ecx
   59c98:	31 c0                	xor    eax,eax
   59c9a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   59c9c:	f7 d1                	not    ecx
   59c9e:	49                   	dec    ecx
   59c9f:	88 75 6a             	mov    BYTE PTR [ebp+0x6a],dh
   59ca2:	85 c9                	test   ecx,ecx
   59ca4:	74 29                	je     menu_branch_297
   59ca6:	be af db 00 00       	mov    esi,@obj3:menu_cpp_variable_156                              ; fixup: num: 14238, src obj: 1, src ofs: 0x59ca7, dst obj: 3, dst ofs: 0xdbaf
   59cab:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14237, src obj: 1, src ofs: 0x59cac, dst obj: 3, dst ofs: 0x17e5c
   59cb0:	57                   	push   edi
menu_branch_295:
   59cb1:	8a 06                	mov    al,BYTE PTR [esi]
   59cb3:	88 07                	mov    BYTE PTR [edi],al
   59cb5:	3c 00                	cmp    al,0x0
   59cb7:	74 10                	je     menu_branch_296
   59cb9:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   59cbc:	83 c6 02             	add    esi,0x2
   59cbf:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   59cc2:	83 c7 02             	add    edi,0x2
   59cc5:	3c 00                	cmp    al,0x0
   59cc7:	75 e8                	jne    menu_branch_295
menu_branch_296:
   59cc9:	5f                   	pop    edi
   59cca:	e9 ed 00 00 00       	jmp    menu_branch_305
menu_branch_297:
   59ccf:	31 db                	xor    ebx,ebx
   59cd1:	eb 01                	jmp    menu_branch_299
menu_branch_298:
   59cd3:	43                   	inc    ebx
menu_branch_299:
   59cd4:	83 fb 07             	cmp    ebx,0x7
   59cd7:	7d 2d                	jge    menu_branch_301
   59cd9:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
   59ce0:	8b 8c 28 76 ff ff ff 	mov    ecx,DWORD PTR [eax+ebp*1-0x8a]
   59ce7:	85 c9                	test   ecx,ecx
   59ce9:	74 e8                	je     menu_branch_298
   59ceb:	89 c8                	mov    eax,ecx
   59ced:	74 0c                	je     menu_branch_300
   59cef:	31 d2                	xor    edx,edx
   59cf1:	e8 2a 02 ff ff       	call   W?$dt:TEXTBM$n()_
   59cf6:	e8 7d 83 01 00       	call   W?$dln(pnv)v
menu_branch_300:
   59cfb:	31 f6                	xor    esi,esi
   59cfd:	89 b4 9d 76 ff ff ff 	mov    DWORD PTR [ebp+ebx*4-0x8a],esi
   59d04:	eb cd                	jmp    menu_branch_298
menu_branch_301:
   59d06:	8b 55 22             	mov    edx,DWORD PTR [ebp+0x22]
   59d09:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14156, src obj: 1, src ofs: 0x59d0a, dst obj: 3, dst ofs: 0x25a88
   59d0e:	e8 dd 29 ff ff       	call   remove_bitmap
   59d13:	8b 55 26             	mov    edx,DWORD PTR [ebp+0x26]
   59d16:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14155, src obj: 1, src ofs: 0x59d17, dst obj: 3, dst ofs: 0x25a88
   59d1b:	e8 d0 29 ff ff       	call   remove_bitmap
   59d20:	8b 55 2a             	mov    edx,DWORD PTR [ebp+0x2a]
   59d23:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14154, src obj: 1, src ofs: 0x59d24, dst obj: 3, dst ofs: 0x25a88
   59d28:	e8 c3 29 ff ff       	call   remove_bitmap
   59d2d:	8b 55 2e             	mov    edx,DWORD PTR [ebp+0x2e]
   59d30:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14153, src obj: 1, src ofs: 0x59d31, dst obj: 3, dst ofs: 0x25a88
   59d35:	e8 b6 29 ff ff       	call   remove_bitmap
   59d3a:	8b 55 32             	mov    edx,DWORD PTR [ebp+0x32]
   59d3d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14152, src obj: 1, src ofs: 0x59d3e, dst obj: 3, dst ofs: 0x25a88
   59d42:	b9 3a 02 00 00       	mov    ecx,0x23a
   59d47:	e8 a4 29 ff ff       	call   remove_bitmap
   59d4c:	8b 55 36             	mov    edx,DWORD PTR [ebp+0x36]
   59d4f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14151, src obj: 1, src ofs: 0x59d50, dst obj: 3, dst ofs: 0x25a88
   59d54:	31 db                	xor    ebx,ebx
   59d56:	e8 95 29 ff ff       	call   remove_bitmap
   59d5b:	68 b4 01 00 00       	push   0x1b4
   59d60:	ba 58 00 00 00       	mov    edx,0x58
   59d65:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14242, src obj: 1, src ofs: 0x59d66, dst obj: 3, dst ofs: 0x25a84
   59d6a:	e8 f1 3c ff ff       	call   refresh_area
   59d6f:	e8 5c 25 00 00       	call   prompt_password
   59d74:	89 c3                	mov    ebx,eax
   59d76:	85 c0                	test   eax,eax
   59d78:	74 3b                	je     menu_branch_304
   59d7a:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14241, src obj: 1, src ofs: 0x59d7b, dst obj: 3, dst ofs: 0x17e5c
   59d7f:	89 c6                	mov    esi,eax
   59d81:	57                   	push   edi
menu_branch_302:
   59d82:	8a 06                	mov    al,BYTE PTR [esi]
   59d84:	88 07                	mov    BYTE PTR [edi],al
   59d86:	3c 00                	cmp    al,0x0
   59d88:	74 10                	je     menu_branch_303
   59d8a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   59d8d:	83 c6 02             	add    esi,0x2
   59d90:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   59d93:	83 c7 02             	add    edi,0x2
   59d96:	3c 00                	cmp    al,0x0
   59d98:	75 e8                	jne    menu_branch_302
menu_branch_303:
   59d9a:	5f                   	pop    edi
   59d9b:	57                   	push   edi
   59d9c:	68 b0 db 00 00       	push   @obj3:menu_cpp_variable_157                                  ; fixup: num: 14163, src obj: 1, src ofs: 0x59d9d, dst obj: 3, dst ofs: 0xdbb0
   59da1:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 14162, src obj: 1, src ofs: 0x59da2, dst obj: 3, dst ofs: 0x237fc
   59da6:	e8 36 6e 01 00       	call   sprintf_
   59dab:	83 c4 0c             	add    esp,0xc
   59dae:	89 d8                	mov    eax,ebx
   59db0:	e8 33 76 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
menu_branch_304:
   59db5:	c7 45 62 01 00 00 00 	mov    DWORD PTR [ebp+0x62],0x1
menu_branch_305:
   59dbc:	ba ca db 00 00       	mov    edx,@obj3:menu_cpp_variable_158                              ; fixup: num: 14161, src obj: 1, src ofs: 0x59dbd, dst obj: 3, dst ofs: 0xdbca
   59dc1:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14160, src obj: 1, src ofs: 0x59dc2, dst obj: 3, dst ofs: 0x32438
   59dc6:	e8 05 3a 01 00       	call   get
   59dcb:	50                   	push   eax
   59dcc:	68 cf db 00 00       	push   @obj3:menu_cpp_variable_159                                  ; fixup: num: 14159, src obj: 1, src ofs: 0x59dcd, dst obj: 3, dst ofs: 0xdbcf
   59dd1:	8d 85 96 fe ff ff    	lea    eax,[ebp-0x16a]
   59dd7:	50                   	push   eax
   59dd8:	e8 04 6e 01 00       	call   sprintf_
   59ddd:	83 c4 0c             	add    esp,0xc
   59de0:	68 02 02 00 00       	push   0x202
   59de5:	8d 85 96 fe ff ff    	lea    eax,[ebp-0x16a]
   59deb:	50                   	push   eax
   59dec:	e8 85 77 01 00       	call   open_
   59df1:	89 c1                	mov    ecx,eax
   59df3:	83 c4 08             	add    esp,0x8
   59df6:	83 f8 ff             	cmp    eax,0xffffffff
   59df9:	74 0c                	je     menu_branch_306
   59dfb:	bb 0a 00 00 00       	mov    ebx,0xa
   59e00:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 14158, src obj: 1, src ofs: 0x59e01, dst obj: 3, dst ofs: 0x17e5c
   59e05:	eb 25                	jmp    menu_branch_307
menu_branch_306:
   59e07:	68 80 01 00 00       	push   0x180
   59e0c:	68 22 02 00 00       	push   0x222
   59e11:	8d 85 96 fe ff ff    	lea    eax,[ebp-0x16a]
   59e17:	50                   	push   eax
   59e18:	bb 0a 00 00 00       	mov    ebx,0xa
   59e1d:	e8 54 77 01 00       	call   open_
   59e22:	83 c4 0c             	add    esp,0xc
   59e25:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 14157, src obj: 1, src ofs: 0x59e26, dst obj: 3, dst ofs: 0x17e5c
   59e2a:	89 c1                	mov    ecx,eax
menu_branch_307:
   59e2c:	e8 93 79 01 00       	call   write_
   59e31:	89 c8                	mov    eax,ecx
   59e33:	e8 d8 80 01 00       	call   close_
   59e38:	83 7d 62 00          	cmp    DWORD PTR [ebp+0x62],0x0
   59e3c:	0f 85 c1 ea ff ff    	jne    menu_branch_155
   59e42:	e9 4f f0 ff ff       	jmp    menu_branch_186
menu_branch_308:
   59e47:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   59e4a:	30 d2                	xor    dl,dl
   59e4c:	83 e8 03             	sub    eax,0x3
   59e4f:	88 55 76             	mov    BYTE PTR [ebp+0x76],dl
   59e52:	83 f8 03             	cmp    eax,0x3
   59e55:	0f 87 3b f0 ff ff    	ja     menu_branch_186
   59e5b:	2e ff 24 85 68 73 05 00 	jmp    DWORD PTR cs:[eax*4+@obj1:.fn_init_mod_88_reference_1]    ; fixup: num: 14174, src obj: 1, src ofs: 0x59e5f, dst obj: 1, dst ofs: 0x57368
menu_branch_309:
   59e63:	ba de db 00 00       	mov    edx,@obj3:menu_cpp_variable_160                              ; fixup: num: 14173, src obj: 1, src ofs: 0x59e64, dst obj: 3, dst ofs: 0xdbde
   59e68:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14172, src obj: 1, src ofs: 0x59e69, dst obj: 3, dst ofs: 0x32438
   59e6d:	8b 1d 54 7e 01 00    	mov    ebx,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 14171, src obj: 1, src ofs: 0x59e6f, dst obj: 3, dst ofs: 0x17e54
   59e73:	e8 08 3d 01 00       	call   set_mod_92
   59e78:	ba e4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_161                              ; fixup: num: 14170, src obj: 1, src ofs: 0x59e79, dst obj: 3, dst ofs: 0xdbe4
   59e7d:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14169, src obj: 1, src ofs: 0x59e7e, dst obj: 3, dst ofs: 0x32438
   59e82:	8b 1d ac 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 14168, src obj: 1, src ofs: 0x59e84, dst obj: 3, dst ofs: 0x10fac
   59e88:	e8 f3 3c 01 00       	call   set_mod_92
   59e8d:	ba ee db 00 00       	mov    edx,@obj3:menu_cpp_variable_162                              ; fixup: num: 14167, src obj: 1, src ofs: 0x59e8e, dst obj: 3, dst ofs: 0xdbee
   59e92:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14166, src obj: 1, src ofs: 0x59e93, dst obj: 3, dst ofs: 0x32438
   59e97:	8b 1d b0 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14165, src obj: 1, src ofs: 0x59e99, dst obj: 3, dst ofs: 0x10fb0
   59e9d:	b9 06 00 00 00       	mov    ecx,0x6
   59ea2:	e8 d9 3c 01 00       	call   set_mod_92
   59ea7:	eb 01                	jmp    menu_branch_311
menu_branch_310:
   59ea9:	49                   	dec    ecx
menu_branch_311:
   59eaa:	85 c9                	test   ecx,ecx
   59eac:	7c 2d                	jl     menu_branch_313
   59eae:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
   59eb5:	8b 94 28 76 ff ff ff 	mov    edx,DWORD PTR [eax+ebp*1-0x8a]
   59ebc:	85 d2                	test   edx,edx
   59ebe:	74 e9                	je     menu_branch_310
   59ec0:	89 d0                	mov    eax,edx
   59ec2:	74 0c                	je     menu_branch_312
   59ec4:	31 d2                	xor    edx,edx
   59ec6:	e8 55 00 ff ff       	call   W?$dt:TEXTBM$n()_
   59ecb:	e8 a8 81 01 00       	call   W?$dln(pnv)v
menu_branch_312:
   59ed0:	31 db                	xor    ebx,ebx
   59ed2:	89 9c 8d 76 ff ff ff 	mov    DWORD PTR [ebp+ecx*4-0x8a],ebx
   59ed9:	eb ce                	jmp    menu_branch_310
menu_branch_313:
   59edb:	8b 75 22             	mov    esi,DWORD PTR [ebp+0x22]
   59ede:	85 f6                	test   esi,esi
   59ee0:	74 1e                	je     menu_branch_314
   59ee2:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14164, src obj: 1, src ofs: 0x59ee3, dst obj: 3, dst ofs: 0x25a88
   59ee7:	89 f2                	mov    edx,esi
   59ee9:	e8 02 28 ff ff       	call   remove_bitmap
   59eee:	85 f6                	test   esi,esi
   59ef0:	74 0e                	je     menu_branch_314
   59ef2:	89 f0                	mov    eax,esi
   59ef4:	31 d2                	xor    edx,edx
   59ef6:	e8 a5 14 fe ff       	call   W?$dt:BTMAP$n()_
   59efb:	e8 78 81 01 00       	call   W?$dln(pnv)v
menu_branch_314:
   59f00:	8b 45 26             	mov    eax,DWORD PTR [ebp+0x26]
   59f03:	85 c0                	test   eax,eax
   59f05:	74 21                	je     menu_branch_315
   59f07:	89 c2                	mov    edx,eax
   59f09:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14178, src obj: 1, src ofs: 0x59f0a, dst obj: 3, dst ofs: 0x25a88
   59f0e:	e8 dd 27 ff ff       	call   remove_bitmap
   59f13:	83 7d 26 00          	cmp    DWORD PTR [ebp+0x26],0x0
   59f17:	74 0f                	je     menu_branch_315
   59f19:	8b 45 26             	mov    eax,DWORD PTR [ebp+0x26]
   59f1c:	31 d2                	xor    edx,edx
   59f1e:	e8 7d 14 fe ff       	call   W?$dt:BTMAP$n()_
   59f23:	e8 50 81 01 00       	call   W?$dln(pnv)v
menu_branch_315:
   59f28:	8b 5d 2a             	mov    ebx,DWORD PTR [ebp+0x2a]
   59f2b:	85 db                	test   ebx,ebx
   59f2d:	74 1e                	je     menu_branch_316
   59f2f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14177, src obj: 1, src ofs: 0x59f30, dst obj: 3, dst ofs: 0x25a88
   59f34:	89 da                	mov    edx,ebx
   59f36:	e8 b5 27 ff ff       	call   remove_bitmap
   59f3b:	85 db                	test   ebx,ebx
   59f3d:	74 0e                	je     menu_branch_316
   59f3f:	89 d8                	mov    eax,ebx
   59f41:	31 d2                	xor    edx,edx
   59f43:	e8 58 14 fe ff       	call   W?$dt:BTMAP$n()_
   59f48:	e8 2b 81 01 00       	call   W?$dln(pnv)v
menu_branch_316:
   59f4d:	8b 75 2e             	mov    esi,DWORD PTR [ebp+0x2e]
   59f50:	85 f6                	test   esi,esi
   59f52:	74 1e                	je     menu_branch_317
   59f54:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14176, src obj: 1, src ofs: 0x59f55, dst obj: 3, dst ofs: 0x25a88
   59f59:	89 f2                	mov    edx,esi
   59f5b:	e8 90 27 ff ff       	call   remove_bitmap
   59f60:	85 f6                	test   esi,esi
   59f62:	74 0e                	je     menu_branch_317
   59f64:	89 f0                	mov    eax,esi
   59f66:	31 d2                	xor    edx,edx
   59f68:	e8 33 14 fe ff       	call   W?$dt:BTMAP$n()_
   59f6d:	e8 06 81 01 00       	call   W?$dln(pnv)v
menu_branch_317:
   59f72:	8b 45 32             	mov    eax,DWORD PTR [ebp+0x32]
   59f75:	85 c0                	test   eax,eax
   59f77:	74 21                	je     menu_branch_318
   59f79:	89 c2                	mov    edx,eax
   59f7b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14175, src obj: 1, src ofs: 0x59f7c, dst obj: 3, dst ofs: 0x25a88
   59f80:	e8 6b 27 ff ff       	call   remove_bitmap
   59f85:	83 7d 32 00          	cmp    DWORD PTR [ebp+0x32],0x0
   59f89:	74 0f                	je     menu_branch_318
   59f8b:	8b 45 32             	mov    eax,DWORD PTR [ebp+0x32]
   59f8e:	31 d2                	xor    edx,edx
   59f90:	e8 0b 14 fe ff       	call   W?$dt:BTMAP$n()_
   59f95:	e8 de 80 01 00       	call   W?$dln(pnv)v
menu_branch_318:
   59f9a:	8b 5d 36             	mov    ebx,DWORD PTR [ebp+0x36]
   59f9d:	85 db                	test   ebx,ebx
   59f9f:	74 1e                	je     menu_branch_319
   59fa1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14181, src obj: 1, src ofs: 0x59fa2, dst obj: 3, dst ofs: 0x25a88
   59fa6:	89 da                	mov    edx,ebx
   59fa8:	e8 43 27 ff ff       	call   remove_bitmap
   59fad:	85 db                	test   ebx,ebx
   59faf:	74 0e                	je     menu_branch_319
   59fb1:	89 d8                	mov    eax,ebx
   59fb3:	31 d2                	xor    edx,edx
   59fb5:	e8 e6 13 fe ff       	call   W?$dt:BTMAP$n()_
   59fba:	e8 b9 80 01 00       	call   W?$dln(pnv)v
menu_branch_319:
   59fbf:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14180, src obj: 1, src ofs: 0x59fc0, dst obj: 3, dst ofs: 0x25a88
   59fc4:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 14179, src obj: 1, src ofs: 0x59fc6, dst obj: 3, dst ofs: 0x260b4
   59fca:	8b 75 3a             	mov    esi,DWORD PTR [ebp+0x3a]
   59fcd:	e8 1e 27 ff ff       	call   remove_bitmap
   59fd2:	85 f6                	test   esi,esi
   59fd4:	74 2d                	je     menu_branch_321
   59fd6:	80 7d 7e 00          	cmp    BYTE PTR [ebp+0x7e],0x0
   59fda:	74 12                	je     menu_branch_320
   59fdc:	89 f0                	mov    eax,esi
   59fde:	e8 fd f8 fa ff       	call   playing
   59fe3:	84 c0                	test   al,al
   59fe5:	74 07                	je     menu_branch_320
   59fe7:	89 f0                	mov    eax,esi
   59fe9:	e8 52 f8 fa ff       	call   stop
menu_branch_320:
   59fee:	8b 7d 3a             	mov    edi,DWORD PTR [ebp+0x3a]
   59ff1:	85 ff                	test   edi,edi
   59ff3:	74 0e                	je     menu_branch_321
   59ff5:	89 f8                	mov    eax,edi
   59ff7:	31 d2                	xor    edx,edx
   59ff9:	e8 32 ea fa ff       	call   W?$dt:SOUND$n()_
   59ffe:	e8 75 80 01 00       	call   W?$dln(pnv)v
menu_branch_321:
   5a003:	68 b4 01 00 00       	push   0x1b4
   5a008:	b9 3a 02 00 00       	mov    ecx,0x23a
   5a00d:	ba 58 00 00 00       	mov    edx,0x58
   5a012:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14499, src obj: 1, src ofs: 0x5a013, dst obj: 3, dst ofs: 0x25a84
   5a017:	31 db                	xor    ebx,ebx
   5a019:	e8 42 3a ff ff       	call   refresh_area
   5a01e:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14498, src obj: 1, src ofs: 0x5a01f, dst obj: 3, dst ofs: 0x25a84
   5a023:	e8 78 3c ff ff       	call   update_mod_84
menu_branch_322:
   5a028:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14497, src obj: 1, src ofs: 0x5a02b, dst obj: 3, dst ofs: 0x25908
   5a02f:	83 f8 01             	cmp    eax,0x1
   5a032:	74 f4                	je     menu_branch_322
menu_branch_323:
   5a034:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14496, src obj: 1, src ofs: 0x5a036, dst obj: 3, dst ofs: 0x25974
   5a03b:	75 f7                	jne    menu_branch_323
   5a03d:	e9 d6 e2 ff ff       	jmp    menu_branch_119
menu_reference_9:                                                                                   ; access size: BYTE
   5a042:	6a 00                	push   0x0
   5a044:	ba 00 01 00 00       	mov    edx,0x100
   5a049:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5a04e:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14507, src obj: 1, src ofs: 0x5a04f, dst obj: 3, dst ofs: 0x26084
   5a053:	31 ff                	xor    edi,edi
   5a055:	e8 16 87 fb ff       	call   setvgapalette_mod_14
   5a05a:	57                   	push   edi
   5a05b:	bb 80 02 00 00       	mov    ebx,0x280
   5a060:	31 d2                	xor    edx,edx
   5a062:	57                   	push   edi
   5a063:	31 c0                	xor    eax,eax
   5a065:	89 7d 1a             	mov    DWORD PTR [ebp+0x1a],edi
   5a068:	e8 e3 b6 fa ff       	call   VESA_rectangle
   5a06d:	e8 ee 63 01 00       	call   PauseActiveTimers
menu_branch_324:
   5a072:	8b 45 1a             	mov    eax,DWORD PTR [ebp+0x1a]
   5a075:	85 c0                	test   eax,eax
   5a077:	0f 86 87 00 00 00    	jbe    menu_branch_328
   5a07d:	83 f8 01             	cmp    eax,0x1
   5a080:	0f 84 ea 00 00 00    	je     menu_branch_330
menu_branch_325:
   5a086:	83 7d 16 00          	cmp    DWORD PTR [ebp+0x16],0x0
   5a08a:	75 11                	jne    menu_branch_326
   5a08c:	bb e1 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_173                              ; fixup: num: 14506, src obj: 1, src ofs: 0x5a08d, dst obj: 3, dst ofs: 0xdce1
   5a091:	ba 1d 05 00 00       	mov    edx,0x51d
   5a096:	31 c0                	xor    eax,eax
   5a098:	e8 93 df fd ff       	call   _error_report
menu_branch_326:
   5a09d:	8b 55 16             	mov    edx,DWORD PTR [ebp+0x16]
   5a0a0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14505, src obj: 1, src ofs: 0x5a0a1, dst obj: 3, dst ofs: 0x25a88
   5a0a5:	e8 86 20 ff ff       	call   insert_bitmap
   5a0aa:	83 ec 04             	sub    esp,0x4
   5a0ad:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14504, src obj: 1, src ofs: 0x5a0af, dst obj: 3, dst ofs: 0x10fb4
   5a0b3:	d9 1c 24             	fstp   DWORD PTR [esp]
   5a0b6:	ba 00 01 00 00       	mov    edx,0x100
   5a0bb:	8d 85 22 f2 ff ff    	lea    eax,[ebp-0xdde]
   5a0c1:	e8 aa 86 fb ff       	call   setvgapalette_mod_14
menu_branch_327:
   5a0c6:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 14503, src obj: 1, src ofs: 0x5a0c8, dst obj: 3, dst ofs: 0x25972
   5a0cd:	0f 85 09 01 00 00    	jne    menu_branch_332
   5a0d3:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14502, src obj: 1, src ofs: 0x5a0d5, dst obj: 3, dst ofs: 0x25974
   5a0da:	0f 85 fc 00 00 00    	jne    menu_branch_332
   5a0e0:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 14501, src obj: 1, src ofs: 0x5a0e3, dst obj: 3, dst ofs: 0x25908
   5a0e8:	0f 85 ee 00 00 00    	jne    menu_branch_332
   5a0ee:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14500, src obj: 1, src ofs: 0x5a0ef, dst obj: 3, dst ofs: 0x25a84
   5a0f3:	e8 a8 3b ff ff       	call   update_mod_84
   5a0f8:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14517, src obj: 1, src ofs: 0x5a0f9, dst obj: 3, dst ofs: 0x1a1d4
   5a0fd:	e8 9e 18 fb ff       	call   update_mod_9
   5a102:	eb c2                	jmp    menu_branch_327
menu_branch_328:
   5a104:	b8 4c 00 00 00       	mov    eax,0x4c
   5a109:	e8 0a 7e 01 00       	call   W?$nwn(ui)pnv
   5a10e:	85 c0                	test   eax,eax
   5a110:	74 25                	je     menu_branch_329
   5a112:	6a 00                	push   0x0
   5a114:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14516, src obj: 1, src ofs: 0x5a115, dst obj: 1, dst ofs: 0x71493
   5a119:	6a 00                	push   0x0
   5a11b:	6a 00                	push   0x0
   5a11d:	6a 01                	push   0x1
   5a11f:	68 00 00 70 c2       	push   0xc2700000
   5a124:	bb fb db 00 00       	mov    ebx,@obj3:menu_cpp_variable_163                              ; fixup: num: 14515, src obj: 1, src ofs: 0x5a125, dst obj: 3, dst ofs: 0xdbfb
   5a129:	6a 00                	push   0x0
   5a12b:	ba 00 dc 00 00       	mov    edx,@obj3:menu_cpp_variable_164                              ; fixup: num: 14514, src obj: 1, src ofs: 0x5a12c, dst obj: 3, dst ofs: 0xdc00
   5a130:	31 c9                	xor    ecx,ecx
   5a132:	e8 a9 0b fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_329:
   5a137:	b9 0c 05 00 00       	mov    ecx,0x50c
   5a13c:	bb 1a dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_165                              ; fixup: num: 14513, src obj: 1, src ofs: 0x5a13d, dst obj: 3, dst ofs: 0xdc1a
   5a141:	8d 95 22 f2 ff ff    	lea    edx,[ebp-0xdde]
   5a147:	89 45 16             	mov    DWORD PTR [ebp+0x16],eax
   5a14a:	b8 23 dc 00 00       	mov    eax,@obj3:menu_cpp_variable_166                              ; fixup: num: 14512, src obj: 1, src ofs: 0x5a14b, dst obj: 3, dst ofs: 0xdc23
   5a14f:	e8 8c 2c fb ff       	call   XFILE_read2
   5a154:	85 c0                	test   eax,eax
   5a156:	0f 85 2a ff ff ff    	jne    menu_branch_325
   5a15c:	bb 3f dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_167                              ; fixup: num: 14511, src obj: 1, src ofs: 0x5a15d, dst obj: 3, dst ofs: 0xdc3f
   5a161:	ba 0d 05 00 00       	mov    edx,0x50d
   5a166:	e8 c5 de fd ff       	call   _error_report
   5a16b:	e9 16 ff ff ff       	jmp    menu_branch_325
menu_branch_330:
   5a170:	b8 4c 00 00 00       	mov    eax,0x4c
   5a175:	e8 9e 7d 01 00       	call   W?$nwn(ui)pnv
   5a17a:	85 c0                	test   eax,eax
   5a17c:	74 25                	je     menu_branch_331
   5a17e:	6a 00                	push   0x0
   5a180:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14510, src obj: 1, src ofs: 0x5a181, dst obj: 1, dst ofs: 0x71493
   5a185:	6a 00                	push   0x0
   5a187:	6a 00                	push   0x0
   5a189:	6a 01                	push   0x1
   5a18b:	68 00 00 70 c2       	push   0xc2700000
   5a190:	bb 70 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_168                              ; fixup: num: 14509, src obj: 1, src ofs: 0x5a191, dst obj: 3, dst ofs: 0xdc70
   5a195:	6a 00                	push   0x0
   5a197:	ba 75 dc 00 00       	mov    edx,@obj3:menu_cpp_variable_169                              ; fixup: num: 14508, src obj: 1, src ofs: 0x5a198, dst obj: 3, dst ofs: 0xdc75
   5a19c:	31 c9                	xor    ecx,ecx
   5a19e:	e8 3d 0b fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_branch_331:
   5a1a3:	b9 11 05 00 00       	mov    ecx,0x511
   5a1a8:	bb 8f dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_170                              ; fixup: num: 14529, src obj: 1, src ofs: 0x5a1a9, dst obj: 3, dst ofs: 0xdc8f
   5a1ad:	8d 95 22 f2 ff ff    	lea    edx,[ebp-0xdde]
   5a1b3:	89 45 16             	mov    DWORD PTR [ebp+0x16],eax
   5a1b6:	b8 98 dc 00 00       	mov    eax,@obj3:menu_cpp_variable_171                              ; fixup: num: 14528, src obj: 1, src ofs: 0x5a1b7, dst obj: 3, dst ofs: 0xdc98
   5a1bb:	e8 20 2c fb ff       	call   XFILE_read2
   5a1c0:	85 c0                	test   eax,eax
   5a1c2:	0f 85 be fe ff ff    	jne    menu_branch_325
   5a1c8:	bb b4 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_172                              ; fixup: num: 14527, src obj: 1, src ofs: 0x5a1c9, dst obj: 3, dst ofs: 0xdcb4
   5a1cd:	ba 12 05 00 00       	mov    edx,0x512
   5a1d2:	e8 59 de fd ff       	call   _error_report
   5a1d7:	e9 aa fe ff ff       	jmp    menu_branch_325
menu_branch_332:
   5a1dc:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14526, src obj: 1, src ofs: 0x5a1df, dst obj: 3, dst ofs: 0x25908
   5a1e3:	83 f8 01             	cmp    eax,0x1
   5a1e6:	74 0c                	je     menu_branch_333
   5a1e8:	31 c0                	xor    eax,eax
   5a1ea:	a0 72 59 02 00       	mov    al,ds:@obj3:right_button                                     ; fixup: num: 14525, src obj: 1, src ofs: 0x5a1eb, dst obj: 3, dst ofs: 0x25972
   5a1ef:	83 f8 01             	cmp    eax,0x1
   5a1f2:	75 45                	jne    menu_branch_336
menu_branch_333:
   5a1f4:	8b 55 16             	mov    edx,DWORD PTR [ebp+0x16]
   5a1f7:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14524, src obj: 1, src ofs: 0x5a1f8, dst obj: 3, dst ofs: 0x25a88
   5a1fc:	e8 ef 24 ff ff       	call   remove_bitmap
   5a201:	8b 45 16             	mov    eax,DWORD PTR [ebp+0x16]
   5a204:	85 c0                	test   eax,eax
   5a206:	74 0e                	je     menu_branch_334
   5a208:	74 0c                	je     menu_branch_334
   5a20a:	31 d2                	xor    edx,edx
   5a20c:	e8 8f 11 fe ff       	call   W?$dt:BTMAP$n()_
   5a211:	e8 62 7e 01 00       	call   W?$dln(pnv)v
menu_branch_334:
   5a216:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 14523, src obj: 1, src ofs: 0x5a218, dst obj: 3, dst ofs: 0x25972
   5a21d:	75 0e                	jne    menu_branch_335
   5a21f:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 14522, src obj: 1, src ofs: 0x5a222, dst obj: 3, dst ofs: 0x25908
   5a227:	0f 84 6a 00 00 00    	je     menu_branch_341
menu_branch_335:
   5a22d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14521, src obj: 1, src ofs: 0x5a22e, dst obj: 3, dst ofs: 0x1a1d4
   5a232:	e8 69 17 fb ff       	call   update_mod_9
   5a237:	eb dd                	jmp    menu_branch_334
menu_branch_336:
   5a239:	80 75 1a 01          	xor    BYTE PTR [ebp+0x1a],0x1
menu_branch_337:
   5a23d:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 14520, src obj: 1, src ofs: 0x5a23f, dst obj: 3, dst ofs: 0x25972
   5a244:	75 13                	jne    menu_branch_338
   5a246:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14519, src obj: 1, src ofs: 0x5a248, dst obj: 3, dst ofs: 0x25974
   5a24d:	75 0a                	jne    menu_branch_338
   5a24f:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 14518, src obj: 1, src ofs: 0x5a252, dst obj: 3, dst ofs: 0x25908
   5a257:	74 0c                	je     menu_branch_339
menu_branch_338:
   5a259:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14537, src obj: 1, src ofs: 0x5a25a, dst obj: 3, dst ofs: 0x1a1d4
   5a25e:	e8 3d 17 fb ff       	call   update_mod_9
   5a263:	eb d8                	jmp    menu_branch_337
menu_branch_339:
   5a265:	8b 55 16             	mov    edx,DWORD PTR [ebp+0x16]
   5a268:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14536, src obj: 1, src ofs: 0x5a269, dst obj: 3, dst ofs: 0x25a88
   5a26d:	8b 4d 16             	mov    ecx,DWORD PTR [ebp+0x16]
   5a270:	e8 7b 24 ff ff       	call   remove_bitmap
   5a275:	85 c9                	test   ecx,ecx
   5a277:	0f 84 f5 fd ff ff    	je     menu_branch_324
   5a27d:	74 0e                	je     menu_branch_340
   5a27f:	89 c8                	mov    eax,ecx
   5a281:	31 d2                	xor    edx,edx
   5a283:	e8 18 11 fe ff       	call   W?$dt:BTMAP$n()_
   5a288:	e8 eb 7d 01 00       	call   W?$dln(pnv)v
menu_branch_340:
   5a28d:	31 ff                	xor    edi,edi
   5a28f:	89 7d 16             	mov    DWORD PTR [ebp+0x16],edi
   5a292:	e9 db fd ff ff       	jmp    menu_branch_324
menu_branch_341:
   5a297:	6a 00                	push   0x0
   5a299:	ba 00 01 00 00       	mov    edx,0x100
   5a29e:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14535, src obj: 1, src ofs: 0x5a29f, dst obj: 3, dst ofs: 0x26084
   5a2a3:	e8 c8 84 fb ff       	call   setvgapalette_mod_14
   5a2a8:	6a 00                	push   0x0
   5a2aa:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5a2af:	bb 80 02 00 00       	mov    ebx,0x280
   5a2b4:	6a 00                	push   0x0
   5a2b6:	31 d2                	xor    edx,edx
   5a2b8:	31 c0                	xor    eax,eax
   5a2ba:	e8 91 b4 fa ff       	call   VESA_rectangle
   5a2bf:	83 ec 04             	sub    esp,0x4
   5a2c2:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14534, src obj: 1, src ofs: 0x5a2c4, dst obj: 3, dst ofs: 0x10fb4
   5a2c8:	d9 1c 24             	fstp   DWORD PTR [esp]
   5a2cb:	ba 00 01 00 00       	mov    edx,0x100
   5a2d0:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14533, src obj: 1, src ofs: 0x5a2d1, dst obj: 3, dst ofs: 0x26084
   5a2d5:	e8 96 84 fb ff       	call   setvgapalette_mod_14
   5a2da:	e8 c1 61 01 00       	call   ResumeActiveTimers
   5a2df:	e8 7c 61 01 00       	call   PauseActiveTimers
menu_branch_342:
   5a2e4:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 14532, src obj: 1, src ofs: 0x5a2e7, dst obj: 3, dst ofs: 0x25908
   5a2ec:	0f 84 26 e0 ff ff    	je     menu_branch_119
   5a2f2:	31 c0                	xor    eax,eax
   5a2f4:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 14531, src obj: 1, src ofs: 0x5a2f6, dst obj: 3, dst ofs: 0x25908
   5a2fa:	eb e8                	jmp    menu_branch_342
menu_reference_10:
   5a2fc:	83 3d 08 3f 01 00 00 	cmp    DWORD PTR ds:@obj3:game_in_progress,0x0                      ; fixup: num: 14530, src obj: 1, src ofs: 0x5a2fe, dst obj: 3, dst ofs: 0x13f08
   5a303:	74 59                	je     menu_branch_344
   5a305:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 14550, src obj: 1, src ofs: 0x5a306, dst obj: 3, dst ofs: 0x25ac4
   5a30a:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
   5a30e:	74 30                	je     menu_branch_343
   5a310:	b8 f9 dc 00 00       	mov    eax,@obj3:menu_cpp_variable_174                              ; fixup: num: 14549, src obj: 1, src ofs: 0x5a311, dst obj: 3, dst ofs: 0xdcf9
   5a315:	e8 76 24 01 00       	call   check_script_flag
   5a31a:	84 c0                	test   al,al
   5a31c:	75 22                	jne    menu_branch_343
   5a31e:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14548, src obj: 1, src ofs: 0x5a320, dst obj: 3, dst ofs: 0x10fb4
   5a324:	dc 05 02 dd 00 00    	fadd   QWORD PTR ds:@obj3:menu_cpp_variable_175                     ; fixup: num: 14547, src obj: 1, src ofs: 0x5a326, dst obj: 3, dst ofs: 0xdd02
   5a32a:	6a 00                	push   0x0
   5a32c:	6a 00                	push   0x0
   5a32e:	83 ec 08             	sub    esp,0x8
   5a331:	dd 1c 24             	fstp   QWORD PTR [esp]
   5a334:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14546, src obj: 1, src ofs: 0x5a335, dst obj: 3, dst ofs: 0x26084
   5a339:	e8 f2 96 fb ff       	call   fade
   5a33e:	eb 2c                	jmp    menu_branch_345
menu_branch_343:
   5a340:	6a 00                	push   0x0
   5a342:	6a 00                	push   0x0
   5a344:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 14545, src obj: 1, src ofs: 0x5a346, dst obj: 3, dst ofs: 0x10fb8
   5a34a:	53                   	push   ebx
   5a34b:	8b 0d b4 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 14544, src obj: 1, src ofs: 0x5a34d, dst obj: 3, dst ofs: 0x10fb4
   5a351:	51                   	push   ecx
   5a352:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14543, src obj: 1, src ofs: 0x5a353, dst obj: 3, dst ofs: 0x26084
   5a357:	e8 d4 96 fb ff       	call   fade
   5a35c:	eb 0e                	jmp    menu_branch_345
menu_branch_344:
   5a35e:	6a 00                	push   0x0
   5a360:	ba 00 01 00 00       	mov    edx,0x100
   5a365:	31 c0                	xor    eax,eax
   5a367:	e8 04 84 fb ff       	call   setvgapalette_mod_14
menu_branch_345:
   5a36c:	30 ff                	xor    bh,bh
   5a36e:	be ff ff ff ff       	mov    esi,0xffffffff
   5a373:	88 3d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bh                                ; fixup: num: 14542, src obj: 1, src ofs: 0x5a375, dst obj: 3, dst ofs: 0x2607e
   5a379:	89 75 b6             	mov    DWORD PTR [ebp-0x4a],esi
   5a37c:	e9 97 df ff ff       	jmp    menu_branch_119
menu_branch_346:
   5a381:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14541, src obj: 1, src ofs: 0x5a382, dst obj: 3, dst ofs: 0x1a1d4
   5a386:	e8 15 16 fb ff       	call   update_mod_9
   5a38b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14540, src obj: 1, src ofs: 0x5a38c, dst obj: 3, dst ofs: 0x25a88
   5a390:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 14539, src obj: 1, src ofs: 0x5a392, dst obj: 3, dst ofs: 0x260b4
   5a396:	b9 e5 01 00 00       	mov    ecx,0x1e5
   5a39b:	e8 50 23 ff ff       	call   remove_bitmap
   5a3a0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14538, src obj: 1, src ofs: 0x5a3a1, dst obj: 3, dst ofs: 0x1a1d4
   5a3a5:	31 db                	xor    ebx,ebx
   5a3a7:	e8 f4 15 fb ff       	call   update_mod_9
   5a3ac:	68 84 01 00 00       	push   0x184
   5a3b1:	ba a0 00 00 00       	mov    edx,0xa0
   5a3b6:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14440, src obj: 1, src ofs: 0x5a3b7, dst obj: 3, dst ofs: 0x25a84
   5a3bb:	e8 a0 36 ff ff       	call   refresh_area
   5a3c0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14439, src obj: 1, src ofs: 0x5a3c1, dst obj: 3, dst ofs: 0x1a1d4
   5a3c5:	e8 d6 15 fb ff       	call   update_mod_9
   5a3ca:	83 ff 05             	cmp    edi,0x5
   5a3cd:	0f 87 45 df ff ff    	ja     menu_branch_119
   5a3d3:	2e ff 24 bd 78 73 05 00 	jmp    DWORD PTR cs:[edi*4+@obj1:.fn_init_mod_88_reference_2]    ; fixup: num: 14438, src obj: 1, src ofs: 0x5a3d7, dst obj: 1, dst ofs: 0x57378
   5a3db:	90                   	nop
menu_reference_11:                                                                                  ; access size: DWORDS
   5a3dc:	14 b0                	adc    al,0xb0                                                      ; fixup: num: 14437, src obj: 1, src ofs: 0x5a3dc, dst obj: 1, dst ofs: 0x5b014
   5a3de:	05 00 a0 b0 05       	add    eax,@obj1:menu_options_reference_200                         ; fixup: num: 14436, src obj: 1, src ofs: 0x5a3e0, dst obj: 1, dst ofs: 0x5b0a0
   5a3e3:	00 e8                	add    al,ch                                                        ; fixup: num: 14435, src obj: 1, src ofs: 0x5a3e4, dst obj: 1, dst ofs: 0x5b0e8
   5a3e5:	b0 05                	mov    al,0x5
   5a3e7:	00 aa bb 05 00 8d    	add    BYTE PTR [edx-0x72fffa45],ch                                 ; fixup: num: 14434, src obj: 1, src ofs: 0x5a3e8, dst obj: 1, dst ofs: 0x5bbaa
   5a3ed:	44                   	inc    esp
   5a3ee:	20 00                	and    BYTE PTR [eax],al

;-------------------------------------------------
;  Function 'menu_options'                       -
;-------------------------------------------------
menu_options:
   5a3f0:	53                   	push   ebx
   5a3f1:	51                   	push   ecx
   5a3f2:	52                   	push   edx
   5a3f3:	56                   	push   esi
   5a3f4:	57                   	push   edi
   5a3f5:	55                   	push   ebp
   5a3f6:	89 e5                	mov    ebp,esp
   5a3f8:	81 ec 54 07 00 00    	sub    esp,0x754
   5a3fe:	81 ed 82 00 00 00    	sub    ebp,0x82
   5a404:	30 e4                	xor    ah,ah
   5a406:	ba ca d5 00 00       	mov    edx,@obj3:menu_cpp_variable_56                               ; fixup: num: 14555, src obj: 1, src ofs: 0x5a407, dst obj: 3, dst ofs: 0xd5ca
   5a40b:	88 65 7a             	mov    BYTE PTR [ebp+0x7a],ah
   5a40e:	88 65 7e             	mov    BYTE PTR [ebp+0x7e],ah
   5a411:	88 65 6a             	mov    BYTE PTR [ebp+0x6a],ah
   5a414:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14554, src obj: 1, src ofs: 0x5a415, dst obj: 3, dst ofs: 0x25b3c
   5a419:	8d bd 8e fd ff ff    	lea    edi,[ebp-0x272]
   5a41f:	e8 ac 33 01 00       	call   get
   5a424:	89 c6                	mov    esi,eax
   5a426:	ba d9 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_57                               ; fixup: num: 14553, src obj: 1, src ofs: 0x5a427, dst obj: 3, dst ofs: 0xd5d9
   5a42b:	57                   	push   edi
menu_options_branch_1:
   5a42c:	8a 06                	mov    al,BYTE PTR [esi]
   5a42e:	88 07                	mov    BYTE PTR [edi],al
   5a430:	3c 00                	cmp    al,0x0
   5a432:	74 10                	je     menu_options_branch_2
   5a434:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a437:	83 c6 02             	add    esi,0x2
   5a43a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a43d:	83 c7 02             	add    edi,0x2
   5a440:	3c 00                	cmp    al,0x0
   5a442:	75 e8                	jne    menu_options_branch_1
menu_options_branch_2:
   5a444:	5f                   	pop    edi
   5a445:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14552, src obj: 1, src ofs: 0x5a446, dst obj: 3, dst ofs: 0x25b3c
   5a44a:	8d bd c0 fd ff ff    	lea    edi,[ebp-0x240]
   5a450:	e8 7b 33 01 00       	call   get
   5a455:	89 c6                	mov    esi,eax
   5a457:	ba e8 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_58                               ; fixup: num: 14551, src obj: 1, src ofs: 0x5a458, dst obj: 3, dst ofs: 0xd5e8
   5a45c:	57                   	push   edi
menu_options_branch_3:
   5a45d:	8a 06                	mov    al,BYTE PTR [esi]
   5a45f:	88 07                	mov    BYTE PTR [edi],al
   5a461:	3c 00                	cmp    al,0x0
   5a463:	74 10                	je     menu_options_branch_4
   5a465:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a468:	83 c6 02             	add    esi,0x2
   5a46b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a46e:	83 c7 02             	add    edi,0x2
   5a471:	3c 00                	cmp    al,0x0
   5a473:	75 e8                	jne    menu_options_branch_3
menu_options_branch_4:
   5a475:	5f                   	pop    edi
   5a476:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14447, src obj: 1, src ofs: 0x5a477, dst obj: 3, dst ofs: 0x25b3c
   5a47b:	8d bd f2 fd ff ff    	lea    edi,[ebp-0x20e]
   5a481:	e8 4a 33 01 00       	call   get
   5a486:	89 c6                	mov    esi,eax
   5a488:	ba f7 d5 00 00       	mov    edx,@obj3:menu_cpp_variable_59                               ; fixup: num: 14446, src obj: 1, src ofs: 0x5a489, dst obj: 3, dst ofs: 0xd5f7
   5a48d:	57                   	push   edi
menu_options_branch_5:
   5a48e:	8a 06                	mov    al,BYTE PTR [esi]
   5a490:	88 07                	mov    BYTE PTR [edi],al
   5a492:	3c 00                	cmp    al,0x0
   5a494:	74 10                	je     menu_options_branch_6
   5a496:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a499:	83 c6 02             	add    esi,0x2
   5a49c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a49f:	83 c7 02             	add    edi,0x2
   5a4a2:	3c 00                	cmp    al,0x0
   5a4a4:	75 e8                	jne    menu_options_branch_5
menu_options_branch_6:
   5a4a6:	5f                   	pop    edi
   5a4a7:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14445, src obj: 1, src ofs: 0x5a4a8, dst obj: 3, dst ofs: 0x25b3c
   5a4ac:	8d bd 24 fe ff ff    	lea    edi,[ebp-0x1dc]
   5a4b2:	e8 19 33 01 00       	call   get
   5a4b7:	89 c6                	mov    esi,eax
   5a4b9:	ba 06 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_60                               ; fixup: num: 14444, src obj: 1, src ofs: 0x5a4ba, dst obj: 3, dst ofs: 0xd606
   5a4be:	57                   	push   edi
menu_options_branch_7:
   5a4bf:	8a 06                	mov    al,BYTE PTR [esi]
   5a4c1:	88 07                	mov    BYTE PTR [edi],al
   5a4c3:	3c 00                	cmp    al,0x0
   5a4c5:	74 10                	je     menu_options_branch_8
   5a4c7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a4ca:	83 c6 02             	add    esi,0x2
   5a4cd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a4d0:	83 c7 02             	add    edi,0x2
   5a4d3:	3c 00                	cmp    al,0x0
   5a4d5:	75 e8                	jne    menu_options_branch_7
menu_options_branch_8:
   5a4d7:	5f                   	pop    edi
   5a4d8:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14443, src obj: 1, src ofs: 0x5a4d9, dst obj: 3, dst ofs: 0x25b3c
   5a4dd:	8d bd 56 fe ff ff    	lea    edi,[ebp-0x1aa]
   5a4e3:	e8 e8 32 01 00       	call   get
   5a4e8:	89 c6                	mov    esi,eax
   5a4ea:	ba 15 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_61                               ; fixup: num: 14442, src obj: 1, src ofs: 0x5a4eb, dst obj: 3, dst ofs: 0xd615
   5a4ef:	57                   	push   edi
menu_options_branch_9:
   5a4f0:	8a 06                	mov    al,BYTE PTR [esi]
   5a4f2:	88 07                	mov    BYTE PTR [edi],al
   5a4f4:	3c 00                	cmp    al,0x0
   5a4f6:	74 10                	je     menu_options_branch_10
   5a4f8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a4fb:	83 c6 02             	add    esi,0x2
   5a4fe:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a501:	83 c7 02             	add    edi,0x2
   5a504:	3c 00                	cmp    al,0x0
   5a506:	75 e8                	jne    menu_options_branch_9
menu_options_branch_10:
   5a508:	5f                   	pop    edi
   5a509:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14441, src obj: 1, src ofs: 0x5a50a, dst obj: 3, dst ofs: 0x25b3c
   5a50e:	8d bd 88 fe ff ff    	lea    edi,[ebp-0x178]
   5a514:	e8 b7 32 01 00       	call   get
   5a519:	89 c6                	mov    esi,eax
   5a51b:	ba 24 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_62                               ; fixup: num: 14453, src obj: 1, src ofs: 0x5a51c, dst obj: 3, dst ofs: 0xd624
   5a520:	57                   	push   edi
menu_options_branch_11:
   5a521:	8a 06                	mov    al,BYTE PTR [esi]
   5a523:	88 07                	mov    BYTE PTR [edi],al
   5a525:	3c 00                	cmp    al,0x0
   5a527:	74 10                	je     menu_options_branch_12
   5a529:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a52c:	83 c6 02             	add    esi,0x2
   5a52f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a532:	83 c7 02             	add    edi,0x2
   5a535:	3c 00                	cmp    al,0x0
   5a537:	75 e8                	jne    menu_options_branch_11
menu_options_branch_12:
   5a539:	5f                   	pop    edi
   5a53a:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14452, src obj: 1, src ofs: 0x5a53b, dst obj: 3, dst ofs: 0x25b3c
   5a53f:	8d bd ba fe ff ff    	lea    edi,[ebp-0x146]
   5a545:	e8 86 32 01 00       	call   get
   5a54a:	89 c6                	mov    esi,eax
   5a54c:	bb 30 02 00 00       	mov    ebx,0x230
   5a551:	57                   	push   edi
menu_options_branch_13:
   5a552:	8a 06                	mov    al,BYTE PTR [esi]
   5a554:	88 07                	mov    BYTE PTR [edi],al
   5a556:	3c 00                	cmp    al,0x0
   5a558:	74 10                	je     menu_options_branch_14
   5a55a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a55d:	83 c6 02             	add    esi,0x2
   5a560:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a563:	83 c7 02             	add    edi,0x2
   5a566:	3c 00                	cmp    al,0x0
   5a568:	75 e8                	jne    menu_options_branch_13
menu_options_branch_14:
   5a56a:	5f                   	pop    edi
   5a56b:	31 d2                	xor    edx,edx
   5a56d:	8d 85 2e f9 ff ff    	lea    eax,[ebp-0x6d2]
   5a573:	e8 58 6e 01 00       	call   memset_
   5a578:	bb 30 02 00 00       	mov    ebx,0x230
   5a57d:	8d 85 5e fb ff ff    	lea    eax,[ebp-0x4a2]
   5a583:	31 d2                	xor    edx,edx
   5a585:	e8 46 6e 01 00       	call   memset_
   5a58a:	b8 88 00 00 00       	mov    eax,0x88
   5a58f:	e8 84 79 01 00       	call   W?$nwn(ui)pnv
   5a594:	85 c0                	test   eax,eax
   5a596:	74 0a                	je     menu_options_branch_15
   5a598:	ba 33 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_63                               ; fixup: num: 14451, src obj: 1, src ofs: 0x5a599, dst obj: 3, dst ofs: 0xd633
   5a59d:	e8 ce de fa ff       	call   W?$ct:SOUND$n(pna)_
menu_options_branch_15:
   5a5a2:	89 45 5e             	mov    DWORD PTR [ebp+0x5e],eax
   5a5a5:	85 c0                	test   eax,eax
   5a5a7:	75 0f                	jne    menu_options_branch_16
   5a5a9:	bb 4e d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_64                               ; fixup: num: 14450, src obj: 1, src ofs: 0x5a5aa, dst obj: 3, dst ofs: 0xd64e
   5a5ae:	ba 7a 02 00 00       	mov    edx,0x27a
   5a5b3:	e8 78 da fd ff       	call   _error_report
menu_options_branch_16:
   5a5b8:	b8 66 d6 00 00       	mov    eax,@obj3:menu_cpp_variable_65                               ; fixup: num: 14449, src obj: 1, src ofs: 0x5a5b9, dst obj: 3, dst ofs: 0xd666
   5a5bd:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14448, src obj: 1, src ofs: 0x5a5bf, dst obj: 3, dst ofs: 0x25bbc
   5a5c3:	e8 b8 e4 fe ff       	call   stringheightCFN
   5a5c8:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 14463, src obj: 1, src ofs: 0x5a5ca, dst obj: 3, dst ofs: 0x260b4
   5a5ce:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
   5a5d1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14462, src obj: 1, src ofs: 0x5a5d2, dst obj: 3, dst ofs: 0x25a88
   5a5d6:	e8 55 1b ff ff       	call   insert_bitmap
   5a5db:	b8 4c 00 00 00       	mov    eax,0x4c
   5a5e0:	e8 33 79 01 00       	call   W?$nwn(ui)pnv
   5a5e5:	85 c0                	test   eax,eax
   5a5e7:	74 28                	je     menu_options_branch_17
   5a5e9:	6a 00                	push   0x0
   5a5eb:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14461, src obj: 1, src ofs: 0x5a5ec, dst obj: 1, dst ofs: 0x71493
   5a5f0:	6a 00                	push   0x0
   5a5f2:	6a 00                	push   0x0
   5a5f4:	6a 01                	push   0x1
   5a5f6:	68 00 00 48 c2       	push   0xc2480000
   5a5fb:	b9 68 01 00 00       	mov    ecx,0x168
   5a600:	6a 68                	push   0x68
   5a602:	bb 68 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_66                               ; fixup: num: 14460, src obj: 1, src ofs: 0x5a603, dst obj: 3, dst ofs: 0xd668
   5a607:	ba 70 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_67                               ; fixup: num: 14459, src obj: 1, src ofs: 0x5a608, dst obj: 3, dst ofs: 0xd670
   5a60c:	e8 cf 06 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_17:
   5a611:	89 45 52             	mov    DWORD PTR [ebp+0x52],eax
   5a614:	85 c0                	test   eax,eax
   5a616:	75 0f                	jne    menu_options_branch_18
   5a618:	bb 8b d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_68                               ; fixup: num: 14458, src obj: 1, src ofs: 0x5a619, dst obj: 3, dst ofs: 0xd68b
   5a61d:	ba 7f 02 00 00       	mov    edx,0x27f
   5a622:	e8 09 da fd ff       	call   _error_report
menu_options_branch_18:
   5a627:	b8 4c 00 00 00       	mov    eax,0x4c
   5a62c:	e8 e7 78 01 00       	call   W?$nwn(ui)pnv
   5a631:	85 c0                	test   eax,eax
   5a633:	74 2d                	je     menu_options_branch_19
   5a635:	6a 00                	push   0x0
   5a637:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14457, src obj: 1, src ofs: 0x5a638, dst obj: 1, dst ofs: 0x71493
   5a63c:	6a 00                	push   0x0
   5a63e:	6a 00                	push   0x0
   5a640:	6a 01                	push   0x1
   5a642:	68 00 00 48 c2       	push   0xc2480000
   5a647:	8b 55 66             	mov    edx,DWORD PTR [ebp+0x66]
   5a64a:	83 c2 68             	add    edx,0x68
   5a64d:	b9 68 01 00 00       	mov    ecx,0x168
   5a652:	52                   	push   edx
   5a653:	bb a3 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_69                               ; fixup: num: 14456, src obj: 1, src ofs: 0x5a654, dst obj: 3, dst ofs: 0xd6a3
   5a658:	ba ab d6 00 00       	mov    edx,@obj3:menu_cpp_variable_70                               ; fixup: num: 14455, src obj: 1, src ofs: 0x5a659, dst obj: 3, dst ofs: 0xd6ab
   5a65d:	e8 7e 06 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_19:
   5a662:	89 45 ea             	mov    DWORD PTR [ebp-0x16],eax
   5a665:	85 c0                	test   eax,eax
   5a667:	75 0f                	jne    menu_options_branch_20
   5a669:	bb c6 d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_71                               ; fixup: num: 14454, src obj: 1, src ofs: 0x5a66a, dst obj: 3, dst ofs: 0xd6c6
   5a66e:	ba 81 02 00 00       	mov    edx,0x281
   5a673:	e8 b8 d9 fd ff       	call   _error_report
menu_options_branch_20:
   5a678:	b8 4c 00 00 00       	mov    eax,0x4c
   5a67d:	e8 96 78 01 00       	call   W?$nwn(ui)pnv
   5a682:	85 c0                	test   eax,eax
   5a684:	74 32                	je     menu_options_branch_21
   5a686:	6a 00                	push   0x0
   5a688:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14471, src obj: 1, src ofs: 0x5a689, dst obj: 1, dst ofs: 0x71493
   5a68d:	6a 00                	push   0x0
   5a68f:	6a 00                	push   0x0
   5a691:	6a 01                	push   0x1
   5a693:	68 00 00 48 c2       	push   0xc2480000
   5a698:	8b 55 66             	mov    edx,DWORD PTR [ebp+0x66]
   5a69b:	8b 5d 66             	mov    ebx,DWORD PTR [ebp+0x66]
   5a69e:	83 c2 68             	add    edx,0x68
   5a6a1:	01 da                	add    edx,ebx
   5a6a3:	b9 68 01 00 00       	mov    ecx,0x168
   5a6a8:	52                   	push   edx
   5a6a9:	bb de d6 00 00       	mov    ebx,@obj3:menu_cpp_variable_72                               ; fixup: num: 14470, src obj: 1, src ofs: 0x5a6aa, dst obj: 3, dst ofs: 0xd6de
   5a6ae:	ba e6 d6 00 00       	mov    edx,@obj3:menu_cpp_variable_73                               ; fixup: num: 14469, src obj: 1, src ofs: 0x5a6af, dst obj: 3, dst ofs: 0xd6e6
   5a6b3:	e8 28 06 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_21:
   5a6b8:	89 45 ee             	mov    DWORD PTR [ebp-0x12],eax
   5a6bb:	85 c0                	test   eax,eax
   5a6bd:	75 0f                	jne    menu_options_branch_22
   5a6bf:	bb 01 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_74                               ; fixup: num: 14468, src obj: 1, src ofs: 0x5a6c0, dst obj: 3, dst ofs: 0xd701
   5a6c4:	ba 83 02 00 00       	mov    edx,0x283
   5a6c9:	e8 62 d9 fd ff       	call   _error_report
menu_options_branch_22:
   5a6ce:	b8 4c 00 00 00       	mov    eax,0x4c
   5a6d3:	e8 40 78 01 00       	call   W?$nwn(ui)pnv
   5a6d8:	89 c6                	mov    esi,eax
   5a6da:	85 c0                	test   eax,eax
   5a6dc:	74 43                	je     menu_options_branch_23
   5a6de:	6a 00                	push   0x0
   5a6e0:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14467, src obj: 1, src ofs: 0x5a6e1, dst obj: 1, dst ofs: 0x71493
   5a6e5:	6a 00                	push   0x0
   5a6e7:	6a 00                	push   0x0
   5a6e9:	6a 01                	push   0x1
   5a6eb:	68 00 00 48 c2       	push   0xc2480000
   5a6f0:	8b 15 ac 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 14466, src obj: 1, src ofs: 0x5a6f2, dst obj: 3, dst ofs: 0x10fac
   5a6f6:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   5a6fd:	01 d0                	add    eax,edx
   5a6ff:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5a706:	29 d0                	sub    eax,edx
   5a708:	bb 19 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_75                               ; fixup: num: 14465, src obj: 1, src ofs: 0x5a709, dst obj: 3, dst ofs: 0xd719
   5a70d:	8d 88 6f 01 00 00    	lea    ecx,[eax+0x16f]
   5a713:	6a 6c                	push   0x6c
   5a715:	ba 24 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_76                               ; fixup: num: 14464, src obj: 1, src ofs: 0x5a716, dst obj: 3, dst ofs: 0xd724
   5a71a:	89 f0                	mov    eax,esi
   5a71c:	e8 bf 05 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_23:
   5a721:	89 45 56             	mov    DWORD PTR [ebp+0x56],eax
   5a724:	85 c0                	test   eax,eax
   5a726:	75 0f                	jne    menu_options_branch_24
   5a728:	bb 41 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_77                               ; fixup: num: 14478, src obj: 1, src ofs: 0x5a729, dst obj: 3, dst ofs: 0xd741
   5a72d:	ba 85 02 00 00       	mov    edx,0x285
   5a732:	e8 f9 d8 fd ff       	call   _error_report
menu_options_branch_24:
   5a737:	b8 4c 00 00 00       	mov    eax,0x4c
   5a73c:	e8 d7 77 01 00       	call   W?$nwn(ui)pnv
   5a741:	89 c6                	mov    esi,eax
   5a743:	85 c0                	test   eax,eax
   5a745:	74 48                	je     menu_options_branch_25
   5a747:	6a 00                	push   0x0
   5a749:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14477, src obj: 1, src ofs: 0x5a74a, dst obj: 1, dst ofs: 0x71493
   5a74e:	6a 00                	push   0x0
   5a750:	6a 00                	push   0x0
   5a752:	6a 01                	push   0x1
   5a754:	68 00 00 48 c2       	push   0xc2480000
   5a759:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   5a75c:	83 c0 6c             	add    eax,0x6c
   5a75f:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14476, src obj: 1, src ofs: 0x5a761, dst obj: 3, dst ofs: 0x10fb0
   5a765:	50                   	push   eax
   5a766:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   5a76d:	01 d0                	add    eax,edx
   5a76f:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5a776:	29 d0                	sub    eax,edx
   5a778:	bb 59 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_78                               ; fixup: num: 14475, src obj: 1, src ofs: 0x5a779, dst obj: 3, dst ofs: 0xd759
   5a77d:	8d 88 6f 01 00 00    	lea    ecx,[eax+0x16f]
   5a783:	ba 64 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_79                               ; fixup: num: 14474, src obj: 1, src ofs: 0x5a784, dst obj: 3, dst ofs: 0xd764
   5a788:	89 f0                	mov    eax,esi
   5a78a:	e8 51 05 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_25:
   5a78f:	89 45 5a             	mov    DWORD PTR [ebp+0x5a],eax
   5a792:	85 c0                	test   eax,eax
   5a794:	75 0f                	jne    menu_options_branch_26
   5a796:	bb 81 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_80                               ; fixup: num: 14473, src obj: 1, src ofs: 0x5a797, dst obj: 3, dst ofs: 0xd781
   5a79b:	ba 87 02 00 00       	mov    edx,0x287
   5a7a0:	e8 8b d8 fd ff       	call   _error_report
menu_options_branch_26:
   5a7a5:	b8 4c 00 00 00       	mov    eax,0x4c
   5a7aa:	e8 69 77 01 00       	call   W?$nwn(ui)pnv
   5a7af:	89 c6                	mov    esi,eax
   5a7b1:	85 c0                	test   eax,eax
   5a7b3:	74 4d                	je     menu_options_branch_27
   5a7b5:	6a 00                	push   0x0
   5a7b7:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14472, src obj: 1, src ofs: 0x5a7b8, dst obj: 1, dst ofs: 0x71493
   5a7bc:	6a 00                	push   0x0
   5a7be:	6a 00                	push   0x0
   5a7c0:	6a 01                	push   0x1
   5a7c2:	68 00 00 48 c2       	push   0xc2480000
   5a7c7:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   5a7ca:	8b 4d 66             	mov    ecx,DWORD PTR [ebp+0x66]
   5a7cd:	83 c0 6c             	add    eax,0x6c
   5a7d0:	01 c8                	add    eax,ecx
   5a7d2:	8b 15 54 7e 01 00    	mov    edx,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 14482, src obj: 1, src ofs: 0x5a7d4, dst obj: 3, dst ofs: 0x17e54
   5a7d8:	50                   	push   eax
   5a7d9:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
   5a7e0:	01 d0                	add    eax,edx
   5a7e2:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5a7e9:	29 d0                	sub    eax,edx
   5a7eb:	bb 99 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_81                               ; fixup: num: 14481, src obj: 1, src ofs: 0x5a7ec, dst obj: 3, dst ofs: 0xd799
   5a7f0:	8d 88 6f 01 00 00    	lea    ecx,[eax+0x16f]
   5a7f6:	ba a4 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_82                               ; fixup: num: 14480, src obj: 1, src ofs: 0x5a7f7, dst obj: 3, dst ofs: 0xd7a4
   5a7fb:	89 f0                	mov    eax,esi
   5a7fd:	e8 de 04 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_27:
   5a802:	89 45 fa             	mov    DWORD PTR [ebp-0x6],eax
   5a805:	85 c0                	test   eax,eax
   5a807:	75 0f                	jne    menu_options_branch_28
   5a809:	bb c1 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_83                               ; fixup: num: 14479, src obj: 1, src ofs: 0x5a80a, dst obj: 3, dst ofs: 0xd7c1
   5a80e:	ba 89 02 00 00       	mov    edx,0x289
   5a813:	e8 18 d8 fd ff       	call   _error_report
menu_options_branch_28:
   5a818:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   5a81b:	83 c0 6c             	add    eax,0x6c
   5a81e:	8b 75 66             	mov    esi,DWORD PTR [ebp+0x66]
   5a821:	89 45 0a             	mov    DWORD PTR [ebp+0xa],eax
   5a824:	01 f0                	add    eax,esi
   5a826:	89 45 0e             	mov    DWORD PTR [ebp+0xe],eax
   5a829:	8d 86 8a 00 00 00    	lea    eax,[esi+0x8a]
   5a82f:	89 45 06             	mov    DWORD PTR [ebp+0x6],eax
menu_options_branch_29:
   5a832:	8d 85 2e f9 ff ff    	lea    eax,[ebp-0x6d2]
   5a838:	89 45 3e             	mov    DWORD PTR [ebp+0x3e],eax
   5a83b:	8d 85 8e fd ff ff    	lea    eax,[ebp-0x272]
   5a841:	89 45 42             	mov    DWORD PTR [ebp+0x42],eax
   5a844:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   5a847:	31 ff                	xor    edi,edi
   5a849:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
   5a84c:	0f af c7             	imul   eax,edi
   5a84f:	89 7d f6             	mov    DWORD PTR [ebp-0xa],edi
   5a852:	83 c0 64             	add    eax,0x64
   5a855:	89 7d 4e             	mov    DWORD PTR [ebp+0x4e],edi
   5a858:	89 45 46             	mov    DWORD PTR [ebp+0x46],eax
   5a85b:	eb 36                	jmp    menu_options_branch_31
menu_options_branch_30:
   5a85d:	8b 4d 3e             	mov    ecx,DWORD PTR [ebp+0x3e]
   5a860:	8b 75 42             	mov    esi,DWORD PTR [ebp+0x42]
   5a863:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   5a866:	8b 7d 46             	mov    edi,DWORD PTR [ebp+0x46]
   5a869:	8b 55 f6             	mov    edx,DWORD PTR [ebp-0xa]
   5a86c:	83 c1 50             	add    ecx,0x50
   5a86f:	83 c6 32             	add    esi,0x32
   5a872:	42                   	inc    edx
   5a873:	01 c7                	add    edi,eax
   5a875:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   5a878:	89 4d 3e             	mov    DWORD PTR [ebp+0x3e],ecx
   5a87b:	89 75 42             	mov    DWORD PTR [ebp+0x42],esi
   5a87e:	89 7d 46             	mov    DWORD PTR [ebp+0x46],edi
   5a881:	83 c0 04             	add    eax,0x4
   5a884:	89 55 f6             	mov    DWORD PTR [ebp-0xa],edx
   5a887:	89 45 4e             	mov    DWORD PTR [ebp+0x4e],eax
   5a88a:	83 fa 07             	cmp    edx,0x7
   5a88d:	0f 8d b4 00 00 00    	jge    menu_options_branch_37
menu_options_branch_31:
   5a893:	8b 75 42             	mov    esi,DWORD PTR [ebp+0x42]
   5a896:	8b 7d 3e             	mov    edi,DWORD PTR [ebp+0x3e]
   5a899:	57                   	push   edi
menu_options_branch_32:
   5a89a:	8a 06                	mov    al,BYTE PTR [esi]
   5a89c:	88 07                	mov    BYTE PTR [edi],al
   5a89e:	3c 00                	cmp    al,0x0
   5a8a0:	74 10                	je     menu_options_branch_33
   5a8a2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a8a5:	83 c6 02             	add    esi,0x2
   5a8a8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a8ab:	83 c7 02             	add    edi,0x2
   5a8ae:	3c 00                	cmp    al,0x0
   5a8b0:	75 e8                	jne    menu_options_branch_32
menu_options_branch_33:
   5a8b2:	5f                   	pop    edi
   5a8b3:	8b 45 f6             	mov    eax,DWORD PTR [ebp-0xa]
   5a8b6:	e8 b5 16 00 00       	call   add_on_off_text
   5a8bb:	89 c6                	mov    esi,eax
   5a8bd:	57                   	push   edi
   5a8be:	2b c9                	sub    ecx,ecx
   5a8c0:	49                   	dec    ecx
   5a8c1:	b0 00                	mov    al,0x0
   5a8c3:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5a8c5:	4f                   	dec    edi
menu_options_branch_34:
   5a8c6:	8a 06                	mov    al,BYTE PTR [esi]
   5a8c8:	88 07                	mov    BYTE PTR [edi],al
   5a8ca:	3c 00                	cmp    al,0x0
   5a8cc:	74 10                	je     menu_options_branch_35
   5a8ce:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5a8d1:	83 c6 02             	add    esi,0x2
   5a8d4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5a8d7:	83 c7 02             	add    edi,0x2
   5a8da:	3c 00                	cmp    al,0x0
   5a8dc:	75 e8                	jne    menu_options_branch_34
menu_options_branch_35:
   5a8de:	5f                   	pop    edi
   5a8df:	b8 50 00 00 00       	mov    eax,0x50
   5a8e4:	e8 2f 76 01 00       	call   W?$nwn(ui)pnv
   5a8e9:	89 c6                	mov    esi,eax
   5a8eb:	85 c0                	test   eax,eax
   5a8ed:	74 35                	je     menu_options_branch_36
   5a8ef:	6a 00                	push   0x0
   5a8f1:	6a ce                	push   0xffffffce
   5a8f3:	8b 7d 46             	mov    edi,DWORD PTR [ebp+0x46]
   5a8f6:	57                   	push   edi
   5a8f7:	8b 45 3e             	mov    eax,DWORD PTR [ebp+0x3e]
   5a8fa:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14484, src obj: 1, src ofs: 0x5a8fc, dst obj: 3, dst ofs: 0x25bc0
   5a900:	e8 2b e0 fe ff       	call   stringwidthCFN
   5a905:	ba 7f 02 00 00       	mov    edx,0x27f
   5a90a:	29 c2                	sub    edx,eax
   5a90c:	89 d0                	mov    eax,edx
   5a90e:	8b 4d 42             	mov    ecx,DWORD PTR [ebp+0x42]
   5a911:	d1 e8                	shr    eax,1
   5a913:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14483, src obj: 1, src ofs: 0x5a915, dst obj: 3, dst ofs: 0x25bc0
   5a919:	50                   	push   eax
   5a91a:	8b 55 3e             	mov    edx,DWORD PTR [ebp+0x3e]
   5a91d:	89 f0                	mov    eax,esi
   5a91f:	e8 dc f2 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_36:
   5a924:	8b 55 4e             	mov    edx,DWORD PTR [ebp+0x4e]
   5a927:	89 44 2a ce          	mov    DWORD PTR [edx+ebp*1-0x32],eax
   5a92b:	85 c0                	test   eax,eax
   5a92d:	0f 85 2a ff ff ff    	jne    menu_options_branch_30
   5a933:	bb d9 d7 00 00       	mov    ebx,@obj3:menu_cpp_variable_84                               ; fixup: num: 14377, src obj: 1, src ofs: 0x5a934, dst obj: 3, dst ofs: 0xd7d9
   5a938:	ba 9b 02 00 00       	mov    edx,0x29b
   5a93d:	e8 ee d6 fd ff       	call   _error_report
   5a942:	e9 16 ff ff ff       	jmp    menu_options_branch_30
menu_options_branch_37:
   5a947:	8b 55 52             	mov    edx,DWORD PTR [ebp+0x52]
   5a94a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14495, src obj: 1, src ofs: 0x5a94b, dst obj: 3, dst ofs: 0x25a88
   5a94f:	e8 dc 17 ff ff       	call   insert_bitmap
   5a954:	8b 55 ea             	mov    edx,DWORD PTR [ebp-0x16]
   5a957:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14494, src obj: 1, src ofs: 0x5a958, dst obj: 3, dst ofs: 0x25a88
   5a95c:	e8 cf 17 ff ff       	call   insert_bitmap
   5a961:	8b 55 ee             	mov    edx,DWORD PTR [ebp-0x12]
   5a964:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14493, src obj: 1, src ofs: 0x5a965, dst obj: 3, dst ofs: 0x25a88
   5a969:	31 c9                	xor    ecx,ecx
   5a96b:	e8 c0 17 ff ff       	call   insert_bitmap
   5a970:	8b 55 56             	mov    edx,DWORD PTR [ebp+0x56]
   5a973:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14492, src obj: 1, src ofs: 0x5a974, dst obj: 3, dst ofs: 0x25a88
   5a978:	31 db                	xor    ebx,ebx
   5a97a:	e8 b1 17 ff ff       	call   insert_bitmap
   5a97f:	8b 55 5a             	mov    edx,DWORD PTR [ebp+0x5a]
   5a982:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14491, src obj: 1, src ofs: 0x5a983, dst obj: 3, dst ofs: 0x25a88
   5a987:	89 4d fe             	mov    DWORD PTR [ebp-0x2],ecx
   5a98a:	e8 a1 17 ff ff       	call   insert_bitmap
   5a98f:	8b 55 fa             	mov    edx,DWORD PTR [ebp-0x6]
   5a992:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14490, src obj: 1, src ofs: 0x5a993, dst obj: 3, dst ofs: 0x25a88
   5a997:	b9 3a 02 00 00       	mov    ecx,0x23a
   5a99c:	e8 8f 17 ff ff       	call   insert_bitmap
   5a9a1:	68 b4 01 00 00       	push   0x1b4
   5a9a6:	ba 58 00 00 00       	mov    edx,0x58
   5a9ab:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14489, src obj: 1, src ofs: 0x5a9ac, dst obj: 3, dst ofs: 0x25a84
   5a9b0:	e8 ab 30 ff ff       	call   refresh_area
   5a9b5:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14488, src obj: 1, src ofs: 0x5a9b6, dst obj: 3, dst ofs: 0x25a84
   5a9ba:	e8 e1 32 ff ff       	call   update_mod_84
menu_options_branch_38:
   5a9bf:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14487, src obj: 1, src ofs: 0x5a9c2, dst obj: 3, dst ofs: 0x25908
   5a9c6:	83 f8 18             	cmp    eax,0x18
   5a9c9:	74 f4                	je     menu_options_branch_38
menu_options_branch_39:
   5a9cb:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14486, src obj: 1, src ofs: 0x5a9cd, dst obj: 3, dst ofs: 0x25974
   5a9d2:	75 f7                	jne    menu_options_branch_39
   5a9d4:	31 c0                	xor    eax,eax
menu_options_branch_40:
   5a9d6:	66 3b 05 08 59 02 00 	cmp    ax,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 14485, src obj: 1, src ofs: 0x5a9d9, dst obj: 3, dst ofs: 0x25908
   5a9dd:	74 08                	je     menu_options_branch_41
   5a9df:	66 a3 08 59 02 00    	mov    ds:@obj3:raw_key,ax                                          ; fixup: num: 14387, src obj: 1, src ofs: 0x5a9e1, dst obj: 3, dst ofs: 0x25908
   5a9e5:	eb ef                	jmp    menu_options_branch_40
menu_options_branch_41:
   5a9e7:	a1 bc 5b 02 00       	mov    eax,ds:@obj3:harvfont                                        ; fixup: num: 14386, src obj: 1, src ofs: 0x5a9e8, dst obj: 3, dst ofs: 0x25bbc
   5a9ec:	bb 01 00 00 00       	mov    ebx,0x1
   5a9f1:	e8 ba e0 fe ff       	call   fontdepthCFN
   5a9f6:	83 c0 02             	add    eax,0x2
   5a9f9:	89 5d f2             	mov    DWORD PTR [ebp-0xe],ebx
   5a9fc:	89 45 02             	mov    DWORD PTR [ebp+0x2],eax
menu_options_branch_42:
   5a9ff:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14385, src obj: 1, src ofs: 0x5aa00, dst obj: 3, dst ofs: 0x25a84
   5aa04:	e8 97 32 ff ff       	call   update_mod_84
   5aa09:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14384, src obj: 1, src ofs: 0x5aa0a, dst obj: 3, dst ofs: 0x1a1d4
   5aa0e:	e8 8d 0f fb ff       	call   update_mod_9
   5aa13:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 14383, src obj: 1, src ofs: 0x5aa14, dst obj: 3, dst ofs: 0x2597c
   5aa18:	83 e8 64             	sub    eax,0x64
   5aa1b:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   5aa1e:	83 f8 01             	cmp    eax,0x1
   5aa21:	7d 07                	jge    menu_options_branch_43
   5aa23:	c7 45 62 01 00 00 00 	mov    DWORD PTR [ebp+0x62],0x1
menu_options_branch_43:
   5aa2a:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5aa2d:	89 c2                	mov    edx,eax
   5aa2f:	8b 7d 02             	mov    edi,DWORD PTR [ebp+0x2]
   5aa32:	c1 fa 1f             	sar    edx,0x1f
   5aa35:	f7 ff                	idiv   edi
   5aa37:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   5aa3a:	83 f8 07             	cmp    eax,0x7
   5aa3d:	7c 07                	jl     menu_options_branch_44
   5aa3f:	c7 45 62 06 00 00 00 	mov    DWORD PTR [ebp+0x62],0x6
menu_options_branch_44:
   5aa46:	31 c0                	xor    eax,eax
   5aa48:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 14382, src obj: 1, src ofs: 0x5aa49, dst obj: 3, dst ofs: 0x25974
   5aa4d:	83 f8 01             	cmp    eax,0x1
   5aa50:	0f 85 bd 02 00 00    	jne    menu_options_branch_56
   5aa56:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 14381, src obj: 1, src ofs: 0x5aa58, dst obj: 3, dst ofs: 0x25978
   5aa60:	7c 21                	jl     menu_options_branch_45
   5aa62:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 14380, src obj: 1, src ofs: 0x5aa64, dst obj: 3, dst ofs: 0x25978
   5aa6c:	7f 15                	jg     menu_options_branch_45
   5aa6e:	83 3d 7c 59 02 00 6c 	cmp    DWORD PTR ds:@obj3:mouse_y,0x6c                              ; fixup: num: 14379, src obj: 1, src ofs: 0x5aa70, dst obj: 3, dst ofs: 0x2597c
   5aa75:	7c 0c                	jl     menu_options_branch_45
   5aa77:	81 3d 7c 59 02 00 8a 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x8a                     ; fixup: num: 14378, src obj: 1, src ofs: 0x5aa79, dst obj: 3, dst ofs: 0x2597c
   5aa81:	7e 02                	jle    menu_options_branch_46
menu_options_branch_45:
   5aa83:	31 c0                	xor    eax,eax
menu_options_branch_46:
   5aa85:	85 c0                	test   eax,eax
   5aa87:	0f 84 b7 00 00 00    	je     menu_options_branch_48
   5aa8d:	ba f1 d7 00 00       	mov    edx,@obj3:menu_cpp_variable_85                               ; fixup: num: 14396, src obj: 1, src ofs: 0x5aa8e, dst obj: 3, dst ofs: 0xd7f1
   5aa92:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14395, src obj: 1, src ofs: 0x5aa93, dst obj: 3, dst ofs: 0x25a88
   5aa97:	e8 54 16 ff ff       	call   get_bitmap
   5aa9c:	89 c1                	mov    ecx,eax
   5aa9e:	89 c2                	mov    edx,eax
   5aaa0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14394, src obj: 1, src ofs: 0x5aaa1, dst obj: 3, dst ofs: 0x25a88
   5aaa5:	e8 46 1c ff ff       	call   remove_bitmap
   5aaaa:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 14393, src obj: 1, src ofs: 0x5aaac, dst obj: 3, dst ofs: 0x25978
   5aab0:	81 ea 6f 01 00 00    	sub    edx,0x16f
   5aab6:	bb 13 00 00 00       	mov    ebx,0x13
   5aabb:	89 d0                	mov    eax,edx
   5aabd:	c1 fa 1f             	sar    edx,0x1f
   5aac0:	f7 fb                	idiv   ebx
   5aac2:	89 c6                	mov    esi,eax
   5aac4:	6b d0 13             	imul   edx,eax,0x13
   5aac7:	68 00 00 48 c2       	push   0xc2480000
   5aacc:	bb 6c 00 00 00       	mov    ebx,0x6c
   5aad1:	81 c2 6f 01 00 00    	add    edx,0x16f
   5aad7:	89 c8                	mov    eax,ecx
   5aad9:	e8 12 0c fe ff       	call   set_xyz
   5aade:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14392, src obj: 1, src ofs: 0x5aadf, dst obj: 3, dst ofs: 0x25a88
   5aae3:	89 ca                	mov    edx,ecx
   5aae5:	e8 46 16 ff ff       	call   insert_bitmap
   5aaea:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14391, src obj: 1, src ofs: 0x5aaeb, dst obj: 3, dst ofs: 0x25a84
   5aaef:	e8 ac 31 ff ff       	call   update_mod_84
   5aaf4:	3b 35 ac 0f 01 00    	cmp    esi,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 14390, src obj: 1, src ofs: 0x5aaf6, dst obj: 3, dst ofs: 0x10fac
   5aafa:	0f 84 13 02 00 00    	je     menu_options_branch_56
   5ab00:	89 35 ac 0f 01 00    	mov    DWORD PTR ds:@obj3:fx_volume,esi                             ; fixup: num: 14389, src obj: 1, src ofs: 0x5ab02, dst obj: 3, dst ofs: 0x10fac
   5ab06:	66 8b 14 75 be 0f 01 00 	mov    dx,WORD PTR [esi*2+@obj3:volume_table]                    ; fixup: num: 14388, src obj: 1, src ofs: 0x5ab0a, dst obj: 3, dst ofs: 0x10fbe
   5ab0e:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5ab11:	81 e2 ff ff 00 00    	and    edx,0xffff
   5ab17:	8a 4d 7e             	mov    cl,BYTE PTR [ebp+0x7e]
   5ab1a:	e8 31 ee fa ff       	call   set_volume
   5ab1f:	84 c9                	test   cl,cl
   5ab21:	74 14                	je     menu_options_branch_47
   5ab23:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5ab26:	e8 b5 ed fa ff       	call   playing
   5ab2b:	84 c0                	test   al,al
   5ab2d:	74 08                	je     menu_options_branch_47
   5ab2f:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5ab32:	e8 09 ed fa ff       	call   stop
menu_options_branch_47:
   5ab37:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5ab3a:	e8 71 ec fa ff       	call   play
   5ab3f:	e9 cf 01 00 00       	jmp    menu_options_branch_56
menu_options_branch_48:
   5ab44:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 14406, src obj: 1, src ofs: 0x5ab46, dst obj: 3, dst ofs: 0x25978
   5ab4e:	7c 27                	jl     menu_options_branch_49
   5ab50:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 14405, src obj: 1, src ofs: 0x5ab52, dst obj: 3, dst ofs: 0x25978
   5ab5a:	7f 1b                	jg     menu_options_branch_49
   5ab5c:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 14404, src obj: 1, src ofs: 0x5ab5d, dst obj: 3, dst ofs: 0x2597c
   5ab61:	3b 45 0a             	cmp    eax,DWORD PTR [ebp+0xa]
   5ab64:	7c 11                	jl     menu_options_branch_49
   5ab66:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 14403, src obj: 1, src ofs: 0x5ab67, dst obj: 3, dst ofs: 0x2597c
   5ab6b:	3b 45 06             	cmp    eax,DWORD PTR [ebp+0x6]
   5ab6e:	7f 07                	jg     menu_options_branch_49
   5ab70:	b8 01 00 00 00       	mov    eax,0x1
   5ab75:	eb 02                	jmp    menu_options_branch_50
menu_options_branch_49:
   5ab77:	31 c0                	xor    eax,eax
menu_options_branch_50:
   5ab79:	85 c0                	test   eax,eax
   5ab7b:	0f 84 b7 00 00 00    	je     menu_options_branch_52
   5ab81:	ba fc d7 00 00       	mov    edx,@obj3:menu_cpp_variable_86                               ; fixup: num: 14402, src obj: 1, src ofs: 0x5ab82, dst obj: 3, dst ofs: 0xd7fc
   5ab86:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14401, src obj: 1, src ofs: 0x5ab87, dst obj: 3, dst ofs: 0x25a88
   5ab8b:	e8 60 15 ff ff       	call   get_bitmap
   5ab90:	89 c1                	mov    ecx,eax
   5ab92:	89 c2                	mov    edx,eax
   5ab94:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14400, src obj: 1, src ofs: 0x5ab95, dst obj: 3, dst ofs: 0x25a88
   5ab99:	e8 52 1b ff ff       	call   remove_bitmap
   5ab9e:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 14399, src obj: 1, src ofs: 0x5aba0, dst obj: 3, dst ofs: 0x25978
   5aba4:	81 ea 6f 01 00 00    	sub    edx,0x16f
   5abaa:	bb 13 00 00 00       	mov    ebx,0x13
   5abaf:	89 d0                	mov    eax,edx
   5abb1:	c1 fa 1f             	sar    edx,0x1f
   5abb4:	f7 fb                	idiv   ebx
   5abb6:	89 c6                	mov    esi,eax
   5abb8:	6b d0 13             	imul   edx,eax,0x13
   5abbb:	68 00 00 48 c2       	push   0xc2480000
   5abc0:	8b 5d 0a             	mov    ebx,DWORD PTR [ebp+0xa]
   5abc3:	81 c2 6f 01 00 00    	add    edx,0x16f
   5abc9:	89 c8                	mov    eax,ecx
   5abcb:	e8 20 0b fe ff       	call   set_xyz
   5abd0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14398, src obj: 1, src ofs: 0x5abd1, dst obj: 3, dst ofs: 0x25a88
   5abd5:	89 ca                	mov    edx,ecx
   5abd7:	e8 54 15 ff ff       	call   insert_bitmap
   5abdc:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14397, src obj: 1, src ofs: 0x5abdd, dst obj: 3, dst ofs: 0x25a84
   5abe1:	e8 ba 30 ff ff       	call   update_mod_84
   5abe6:	3b 35 b0 0f 01 00    	cmp    esi,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14420, src obj: 1, src ofs: 0x5abe8, dst obj: 3, dst ofs: 0x10fb0
   5abec:	0f 84 21 01 00 00    	je     menu_options_branch_56
   5abf2:	89 35 b0 0f 01 00    	mov    DWORD PTR ds:@obj3:music_volume,esi                          ; fixup: num: 14419, src obj: 1, src ofs: 0x5abf4, dst obj: 3, dst ofs: 0x10fb0
   5abf8:	85 f6                	test   esi,esi
   5abfa:	75 0f                	jne    menu_options_branch_51
   5abfc:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14418, src obj: 1, src ofs: 0x5abfd, dst obj: 3, dst ofs: 0x1a1d4
   5ac01:	e8 1a fa fa ff       	call   pause
   5ac06:	e9 08 01 00 00       	jmp    menu_options_branch_56
menu_options_branch_51:
   5ac0b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14417, src obj: 1, src ofs: 0x5ac0c, dst obj: 3, dst ofs: 0x1a1d4
   5ac10:	e8 2b fb fa ff       	call   resume
   5ac15:	8b 15 b0 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14416, src obj: 1, src ofs: 0x5ac17, dst obj: 3, dst ofs: 0x10fb0
   5ac1b:	66 8b 14 55 be 0f 01 00 	mov    dx,WORD PTR [edx*2+@obj3:volume_table]                    ; fixup: num: 14415, src obj: 1, src ofs: 0x5ac1f, dst obj: 3, dst ofs: 0x10fbe
   5ac23:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14414, src obj: 1, src ofs: 0x5ac24, dst obj: 3, dst ofs: 0x1a1d4
   5ac28:	81 e2 ff ff 00 00    	and    edx,0xffff
   5ac2e:	e8 1d ed fa ff       	call   set_volume
   5ac33:	e9 db 00 00 00       	jmp    menu_options_branch_56
menu_options_branch_52:
   5ac38:	81 3d 78 59 02 00 6f 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16f                    ; fixup: num: 14413, src obj: 1, src ofs: 0x5ac3a, dst obj: 3, dst ofs: 0x25978
   5ac42:	7c 2c                	jl     menu_options_branch_53
   5ac44:	81 3d 78 59 02 00 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x22b                    ; fixup: num: 14412, src obj: 1, src ofs: 0x5ac46, dst obj: 3, dst ofs: 0x25978
   5ac4e:	7f 20                	jg     menu_options_branch_53
   5ac50:	8b 45 0a             	mov    eax,DWORD PTR [ebp+0xa]
   5ac53:	03 45 66             	add    eax,DWORD PTR [ebp+0x66]
   5ac56:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 14411, src obj: 1, src ofs: 0x5ac58, dst obj: 3, dst ofs: 0x2597c
   5ac5c:	7f 12                	jg     menu_options_branch_53
   5ac5e:	83 c0 1e             	add    eax,0x1e
   5ac61:	3b 05 7c 59 02 00    	cmp    eax,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 14410, src obj: 1, src ofs: 0x5ac63, dst obj: 3, dst ofs: 0x2597c
   5ac67:	7c 07                	jl     menu_options_branch_53
   5ac69:	b8 01 00 00 00       	mov    eax,0x1
   5ac6e:	eb 02                	jmp    menu_options_branch_54
menu_options_branch_53:
   5ac70:	31 c0                	xor    eax,eax
menu_options_branch_54:
   5ac72:	85 c0                	test   eax,eax
   5ac74:	0f 84 95 00 00 00    	je     menu_options_branch_55
   5ac7a:	ba 07 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_87                               ; fixup: num: 14409, src obj: 1, src ofs: 0x5ac7b, dst obj: 3, dst ofs: 0xd807
   5ac7f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14408, src obj: 1, src ofs: 0x5ac80, dst obj: 3, dst ofs: 0x25a88
   5ac84:	e8 67 14 ff ff       	call   get_bitmap
   5ac89:	89 c1                	mov    ecx,eax
   5ac8b:	89 c2                	mov    edx,eax
   5ac8d:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14407, src obj: 1, src ofs: 0x5ac8e, dst obj: 3, dst ofs: 0x25a88
   5ac92:	e8 59 1a ff ff       	call   remove_bitmap
   5ac97:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 14430, src obj: 1, src ofs: 0x5ac99, dst obj: 3, dst ofs: 0x25978
   5ac9d:	81 ea 6f 01 00 00    	sub    edx,0x16f
   5aca3:	bb 13 00 00 00       	mov    ebx,0x13
   5aca8:	89 d0                	mov    eax,edx
   5acaa:	c1 fa 1f             	sar    edx,0x1f
   5acad:	f7 fb                	idiv   ebx
   5acaf:	89 c6                	mov    esi,eax
   5acb1:	6b d0 13             	imul   edx,eax,0x13
   5acb4:	68 00 00 48 c2       	push   0xc2480000
   5acb9:	8b 5d 0e             	mov    ebx,DWORD PTR [ebp+0xe]
   5acbc:	81 c2 6f 01 00 00    	add    edx,0x16f
   5acc2:	89 c8                	mov    eax,ecx
   5acc4:	e8 27 0a fe ff       	call   set_xyz
   5acc9:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14429, src obj: 1, src ofs: 0x5acca, dst obj: 3, dst ofs: 0x25a88
   5acce:	89 ca                	mov    edx,ecx
   5acd0:	e8 5b 14 ff ff       	call   insert_bitmap
   5acd5:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14428, src obj: 1, src ofs: 0x5acd6, dst obj: 3, dst ofs: 0x25a84
   5acda:	e8 c1 2f ff ff       	call   update_mod_84
   5acdf:	3b 35 54 7e 01 00    	cmp    esi,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 14427, src obj: 1, src ofs: 0x5ace1, dst obj: 3, dst ofs: 0x17e54
   5ace5:	74 2c                	je     menu_options_branch_56
   5ace7:	89 35 54 7e 01 00    	mov    DWORD PTR ds:@obj3:gamma_correction,esi                      ; fixup: num: 14426, src obj: 1, src ofs: 0x5ace9, dst obj: 3, dst ofs: 0x17e54
   5aced:	e8 ae 79 fb ff       	call   set_pal_gamma
   5acf2:	83 ec 04             	sub    esp,0x4
   5acf5:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14425, src obj: 1, src ofs: 0x5acf7, dst obj: 3, dst ofs: 0x10fb4
   5acfb:	d9 1c 24             	fstp   DWORD PTR [esp]
   5acfe:	ba 00 01 00 00       	mov    edx,0x100
   5ad03:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14424, src obj: 1, src ofs: 0x5ad04, dst obj: 3, dst ofs: 0x26084
   5ad08:	e8 63 7a fb ff       	call   setvgapalette_mod_14
   5ad0d:	eb 04                	jmp    menu_options_branch_56
menu_options_branch_55:
   5ad0f:	c6 45 6a 01          	mov    BYTE PTR [ebp+0x6a],0x1
menu_options_branch_56:
   5ad13:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14423, src obj: 1, src ofs: 0x5ad16, dst obj: 3, dst ofs: 0x25908
   5ad1a:	83 f8 01             	cmp    eax,0x1
   5ad1d:	0f 84 52 10 00 00    	je     menu_options_branch_184
   5ad23:	31 c0                	xor    eax,eax
   5ad25:	a0 72 59 02 00       	mov    al,ds:@obj3:right_button                                     ; fixup: num: 14422, src obj: 1, src ofs: 0x5ad26, dst obj: 3, dst ofs: 0x25972
   5ad2a:	83 f8 01             	cmp    eax,0x1
   5ad2d:	0f 84 42 10 00 00    	je     menu_options_branch_184
   5ad33:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14421, src obj: 1, src ofs: 0x5ad36, dst obj: 3, dst ofs: 0x25908
   5ad3a:	83 f8 14             	cmp    eax,0x14
   5ad3d:	75 0d                	jne    menu_options_branch_57
   5ad3f:	b5 01                	mov    ch,0x1
   5ad41:	bb 03 00 00 00       	mov    ebx,0x3
   5ad46:	88 6d 6a             	mov    BYTE PTR [ebp+0x6a],ch
   5ad49:	89 5d 62             	mov    DWORD PTR [ebp+0x62],ebx
menu_options_branch_57:
   5ad4c:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14433, src obj: 1, src ofs: 0x5ad4f, dst obj: 3, dst ofs: 0x25908
   5ad53:	83 f8 22             	cmp    eax,0x22
   5ad56:	75 0d                	jne    menu_options_branch_58
   5ad58:	b0 01                	mov    al,0x1
   5ad5a:	b9 04 00 00 00       	mov    ecx,0x4
   5ad5f:	88 45 6a             	mov    BYTE PTR [ebp+0x6a],al
   5ad62:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
menu_options_branch_58:
   5ad65:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14432, src obj: 1, src ofs: 0x5ad68, dst obj: 3, dst ofs: 0x25908
   5ad6c:	83 f8 10             	cmp    eax,0x10
   5ad6f:	75 0d                	jne    menu_options_branch_59
   5ad71:	b4 01                	mov    ah,0x1
   5ad73:	be 05 00 00 00       	mov    esi,0x5
   5ad78:	88 65 6a             	mov    BYTE PTR [ebp+0x6a],ah
   5ad7b:	89 75 62             	mov    DWORD PTR [ebp+0x62],esi
menu_options_branch_59:
   5ad7e:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14431, src obj: 1, src ofs: 0x5ad81, dst obj: 3, dst ofs: 0x25908
   5ad85:	83 f8 19             	cmp    eax,0x19
   5ad88:	75 0d                	jne    menu_options_branch_60
   5ad8a:	b2 01                	mov    dl,0x1
   5ad8c:	bf 06 00 00 00       	mov    edi,0x6
   5ad91:	88 55 6a             	mov    BYTE PTR [ebp+0x6a],dl
   5ad94:	89 7d 62             	mov    DWORD PTR [ebp+0x62],edi
menu_options_branch_60:
   5ad97:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5ad9a:	83 e8 03             	sub    eax,0x3
   5ad9d:	89 45 32             	mov    DWORD PTR [ebp+0x32],eax
   5ada0:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5ada3:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5adaa:	8b 7d 66             	mov    edi,DWORD PTR [ebp+0x66]
   5adad:	89 45 1a             	mov    DWORD PTR [ebp+0x1a],eax
   5adb0:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5adb3:	0f af c7             	imul   eax,edi
   5adb6:	83 c0 64             	add    eax,0x64
   5adb9:	8b 55 62             	mov    edx,DWORD PTR [ebp+0x62]
   5adbc:	89 45 16             	mov    DWORD PTR [ebp+0x16],eax
   5adbf:	6b c2 32             	imul   eax,edx,0x32
   5adc2:	6b d2 50             	imul   edx,edx,0x50
   5adc5:	89 45 36             	mov    DWORD PTR [ebp+0x36],eax
   5adc8:	8d 85 2e f9 ff ff    	lea    eax,[ebp-0x6d2]
   5adce:	01 d0                	add    eax,edx
   5add0:	89 45 3a             	mov    DWORD PTR [ebp+0x3a],eax
menu_options_branch_61:
   5add3:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   5add6:	3b 45 62             	cmp    eax,DWORD PTR [ebp+0x62]
   5add9:	75 0a                	jne    menu_options_branch_62
   5addb:	80 7d 7a 00          	cmp    BYTE PTR [ebp+0x7a],0x0
   5addf:	0f 84 20 02 00 00    	je     menu_options_branch_82
menu_options_branch_62:
   5ade5:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   5ade8:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5adef:	8b 74 28 ce          	mov    esi,DWORD PTR [eax+ebp*1-0x32]
   5adf3:	85 f6                	test   esi,esi
   5adf5:	74 19                	je     menu_options_branch_64
   5adf7:	89 f0                	mov    eax,esi
   5adf9:	74 0c                	je     menu_options_branch_63
   5adfb:	31 d2                	xor    edx,edx
   5adfd:	e8 1e f1 fe ff       	call   W?$dt:TEXTBM$n()_
   5ae02:	e8 71 72 01 00       	call   W?$dln(pnv)v
menu_options_branch_63:
   5ae07:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   5ae0a:	31 ff                	xor    edi,edi
   5ae0c:	89 7c 85 ce          	mov    DWORD PTR [ebp+eax*4-0x32],edi
menu_options_branch_64:
   5ae10:	6b 5d f2 32          	imul   ebx,DWORD PTR [ebp-0xe],0x32
   5ae14:	8b 4d f2             	mov    ecx,DWORD PTR [ebp-0xe]
   5ae17:	6b d1 50             	imul   edx,ecx,0x50
   5ae1a:	8d 85 8e fd ff ff    	lea    eax,[ebp-0x272]
   5ae20:	01 c3                	add    ebx,eax
   5ae22:	8d 85 2e f9 ff ff    	lea    eax,[ebp-0x6d2]
   5ae28:	01 d0                	add    eax,edx
   5ae2a:	89 de                	mov    esi,ebx
   5ae2c:	89 c7                	mov    edi,eax
   5ae2e:	89 45 12             	mov    DWORD PTR [ebp+0x12],eax
   5ae31:	57                   	push   edi
menu_options_branch_65:
   5ae32:	8a 06                	mov    al,BYTE PTR [esi]
   5ae34:	88 07                	mov    BYTE PTR [edi],al
   5ae36:	3c 00                	cmp    al,0x0
   5ae38:	74 10                	je     menu_options_branch_66
   5ae3a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5ae3d:	83 c6 02             	add    esi,0x2
   5ae40:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5ae43:	83 c7 02             	add    edi,0x2
   5ae46:	3c 00                	cmp    al,0x0
   5ae48:	75 e8                	jne    menu_options_branch_65
menu_options_branch_66:
   5ae4a:	5f                   	pop    edi
   5ae4b:	89 c8                	mov    eax,ecx
   5ae4d:	e8 1e 11 00 00       	call   add_on_off_text
   5ae52:	89 c6                	mov    esi,eax
   5ae54:	57                   	push   edi
   5ae55:	2b c9                	sub    ecx,ecx
   5ae57:	49                   	dec    ecx
   5ae58:	b0 00                	mov    al,0x0
   5ae5a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5ae5c:	4f                   	dec    edi
menu_options_branch_67:
   5ae5d:	8a 06                	mov    al,BYTE PTR [esi]
   5ae5f:	88 07                	mov    BYTE PTR [edi],al
   5ae61:	3c 00                	cmp    al,0x0
   5ae63:	74 10                	je     menu_options_branch_68
   5ae65:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5ae68:	83 c6 02             	add    esi,0x2
   5ae6b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5ae6e:	83 c7 02             	add    edi,0x2
   5ae71:	3c 00                	cmp    al,0x0
   5ae73:	75 e8                	jne    menu_options_branch_67
menu_options_branch_68:
   5ae75:	5f                   	pop    edi
   5ae76:	b8 50 00 00 00       	mov    eax,0x50
   5ae7b:	e8 98 70 01 00       	call   W?$nwn(ui)pnv
   5ae80:	89 c6                	mov    esi,eax
   5ae82:	85 c0                	test   eax,eax
   5ae84:	74 3c                	je     menu_options_branch_69
   5ae86:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   5ae89:	0f af 45 66          	imul   eax,DWORD PTR [ebp+0x66]
   5ae8d:	6a 00                	push   0x0
   5ae8f:	6a ce                	push   0xffffffce
   5ae91:	83 c0 64             	add    eax,0x64
   5ae94:	50                   	push   eax
   5ae95:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14366, src obj: 1, src ofs: 0x5ae97, dst obj: 3, dst ofs: 0x25bc0
   5ae9b:	8b 45 12             	mov    eax,DWORD PTR [ebp+0x12]
   5ae9e:	e8 8d da fe ff       	call   stringwidthCFN
   5aea3:	ba 7f 02 00 00       	mov    edx,0x27f
   5aea8:	29 c2                	sub    edx,eax
   5aeaa:	89 d0                	mov    eax,edx
   5aeac:	d1 e8                	shr    eax,1
   5aeae:	89 d9                	mov    ecx,ebx
   5aeb0:	50                   	push   eax
   5aeb1:	a1 c0 5b 02 00       	mov    eax,ds:@obj3:harvfnt2                                        ; fixup: num: 14368, src obj: 1, src ofs: 0x5aeb2, dst obj: 3, dst ofs: 0x25bc0
   5aeb6:	8b 55 12             	mov    edx,DWORD PTR [ebp+0x12]
   5aeb9:	89 c3                	mov    ebx,eax
   5aebb:	89 f0                	mov    eax,esi
   5aebd:	e8 3e ed fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_69:
   5aec2:	89 c2                	mov    edx,eax
   5aec4:	8b 45 f2             	mov    eax,DWORD PTR [ebp-0xe]
   5aec7:	89 54 85 ce          	mov    DWORD PTR [ebp+eax*4-0x32],edx
   5aecb:	85 d2                	test   edx,edx
   5aecd:	75 11                	jne    menu_options_branch_70
   5aecf:	bb 12 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_88                               ; fixup: num: 14367, src obj: 1, src ofs: 0x5aed0, dst obj: 3, dst ofs: 0xd812
   5aed4:	ba 38 03 00 00       	mov    edx,0x338
   5aed9:	31 c0                	xor    eax,eax
   5aedb:	e8 50 d1 fd ff       	call   _error_report
menu_options_branch_70:
   5aee0:	8b 45 1a             	mov    eax,DWORD PTR [ebp+0x1a]
   5aee3:	8b 5c 28 ce          	mov    ebx,DWORD PTR [eax+ebp*1-0x32]
   5aee7:	85 db                	test   ebx,ebx
   5aee9:	74 19                	je     menu_options_branch_72
   5aeeb:	89 d8                	mov    eax,ebx
   5aeed:	74 0c                	je     menu_options_branch_71
   5aeef:	31 d2                	xor    edx,edx
   5aef1:	e8 2a f0 fe ff       	call   W?$dt:TEXTBM$n()_
   5aef6:	e8 7d 71 01 00       	call   W?$dln(pnv)v
menu_options_branch_71:
   5aefb:	8b 45 1a             	mov    eax,DWORD PTR [ebp+0x1a]
   5aefe:	31 c9                	xor    ecx,ecx
   5af00:	89 4c 28 ce          	mov    DWORD PTR [eax+ebp*1-0x32],ecx
menu_options_branch_72:
   5af04:	8d 9d 8e fd ff ff    	lea    ebx,[ebp-0x272]
   5af0a:	03 5d 36             	add    ebx,DWORD PTR [ebp+0x36]
   5af0d:	8b 7d 3a             	mov    edi,DWORD PTR [ebp+0x3a]
   5af10:	89 de                	mov    esi,ebx
   5af12:	57                   	push   edi
menu_options_branch_73:
   5af13:	8a 06                	mov    al,BYTE PTR [esi]
   5af15:	88 07                	mov    BYTE PTR [edi],al
   5af17:	3c 00                	cmp    al,0x0
   5af19:	74 10                	je     menu_options_branch_74
   5af1b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5af1e:	83 c6 02             	add    esi,0x2
   5af21:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5af24:	83 c7 02             	add    edi,0x2
   5af27:	3c 00                	cmp    al,0x0
   5af29:	75 e8                	jne    menu_options_branch_73
menu_options_branch_74:
   5af2b:	5f                   	pop    edi
   5af2c:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5af2f:	e8 3c 10 00 00       	call   add_on_off_text
   5af34:	89 c6                	mov    esi,eax
   5af36:	57                   	push   edi
   5af37:	2b c9                	sub    ecx,ecx
   5af39:	49                   	dec    ecx
   5af3a:	b0 00                	mov    al,0x0
   5af3c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5af3e:	4f                   	dec    edi
menu_options_branch_75:
   5af3f:	8a 06                	mov    al,BYTE PTR [esi]
   5af41:	88 07                	mov    BYTE PTR [edi],al
   5af43:	3c 00                	cmp    al,0x0
   5af45:	74 10                	je     menu_options_branch_76
   5af47:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5af4a:	83 c6 02             	add    esi,0x2
   5af4d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5af50:	83 c7 02             	add    edi,0x2
   5af53:	3c 00                	cmp    al,0x0
   5af55:	75 e8                	jne    menu_options_branch_75
menu_options_branch_76:
   5af57:	5f                   	pop    edi
   5af58:	b8 50 00 00 00       	mov    eax,0x50
   5af5d:	e8 b6 6f 01 00       	call   W?$nwn(ui)pnv
   5af62:	89 c6                	mov    esi,eax
   5af64:	85 c0                	test   eax,eax
   5af66:	74 35                	je     menu_options_branch_77
   5af68:	6a 00                	push   0x0
   5af6a:	6a ce                	push   0xffffffce
   5af6c:	8b 7d 16             	mov    edi,DWORD PTR [ebp+0x16]
   5af6f:	57                   	push   edi
   5af70:	8b 45 3a             	mov    eax,DWORD PTR [ebp+0x3a]
   5af73:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14376, src obj: 1, src ofs: 0x5af75, dst obj: 3, dst ofs: 0x25bbc
   5af79:	e8 b2 d9 fe ff       	call   stringwidthCFN
   5af7e:	ba 7f 02 00 00       	mov    edx,0x27f
   5af83:	29 c2                	sub    edx,eax
   5af85:	89 d0                	mov    eax,edx
   5af87:	d1 e8                	shr    eax,1
   5af89:	89 d9                	mov    ecx,ebx
   5af8b:	50                   	push   eax
   5af8c:	a1 bc 5b 02 00       	mov    eax,ds:@obj3:harvfont                                        ; fixup: num: 14375, src obj: 1, src ofs: 0x5af8d, dst obj: 3, dst ofs: 0x25bbc
   5af91:	8b 55 3a             	mov    edx,DWORD PTR [ebp+0x3a]
   5af94:	89 c3                	mov    ebx,eax
   5af96:	89 f0                	mov    eax,esi
   5af98:	e8 63 ec fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_77:
   5af9d:	8b 55 1a             	mov    edx,DWORD PTR [ebp+0x1a]
   5afa0:	89 44 2a ce          	mov    DWORD PTR [edx+ebp*1-0x32],eax
   5afa4:	85 c0                	test   eax,eax
   5afa6:	75 0f                	jne    menu_options_branch_78
   5afa8:	bb 2a d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_89                               ; fixup: num: 14374, src obj: 1, src ofs: 0x5afa9, dst obj: 3, dst ofs: 0xd82a
   5afad:	ba 4c 03 00 00       	mov    edx,0x34c
   5afb2:	e8 79 d0 fd ff       	call   _error_report
menu_options_branch_78:
   5afb7:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5afba:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 14373, src obj: 1, src ofs: 0x5afbb, dst obj: 3, dst ofs: 0x1a1d4
   5afbf:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 14372, src obj: 1, src ofs: 0x5afc0, dst obj: 3, dst ofs: 0x25a84
   5afc4:	30 c9                	xor    cl,cl
   5afc6:	89 45 f2             	mov    DWORD PTR [ebp-0xe],eax
   5afc9:	88 4d 7a             	mov    BYTE PTR [ebp+0x7a],cl
menu_options_branch_79:
   5afcc:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14371, src obj: 1, src ofs: 0x5afcf, dst obj: 3, dst ofs: 0x25908
   5afd3:	83 f8 1c             	cmp    eax,0x1c
   5afd6:	74 0c                	je     menu_options_branch_80
   5afd8:	31 c0                	xor    eax,eax
   5afda:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 14370, src obj: 1, src ofs: 0x5afdb, dst obj: 3, dst ofs: 0x25974
   5afdf:	83 f8 01             	cmp    eax,0x1
   5afe2:	75 10                	jne    menu_options_branch_81
menu_options_branch_80:
   5afe4:	89 d0                	mov    eax,edx
   5afe6:	e8 b5 2c ff ff       	call   update_mod_84
   5afeb:	89 d8                	mov    eax,ebx
   5afed:	e8 ae 09 fb ff       	call   update_mod_9
   5aff2:	eb d8                	jmp    menu_options_branch_79
menu_options_branch_81:
   5aff4:	31 db                	xor    ebx,ebx
   5aff6:	66 89 1d 08 59 02 00 	mov    WORD PTR ds:@obj3:raw_key,bx                                 ; fixup: num: 14369, src obj: 1, src ofs: 0x5aff9, dst obj: 3, dst ofs: 0x25908
   5affd:	30 ed                	xor    ch,ch
   5afff:	88 2d 74 59 02 00    	mov    BYTE PTR ds:@obj3:left_button,ch                             ; fixup: num: 14723, src obj: 1, src ofs: 0x5b001, dst obj: 3, dst ofs: 0x25974
menu_options_branch_82:
   5b005:	80 7d 6a 00          	cmp    BYTE PTR [ebp+0x6a],0x0
   5b009:	0f 85 4b 0d 00 00    	jne    menu_options_branch_183
   5b00f:	e9 eb f9 ff ff       	jmp    menu_options_branch_42
menu_options_reference_1:
   5b014:	8a 15 58 7e 01 00    	mov    dl,BYTE PTR ds:@obj3:text_dialog                             ; fixup: num: 14738, src obj: 1, src ofs: 0x5b016, dst obj: 3, dst ofs: 0x17e58
   5b01a:	31 d8                	xor    eax,ebx
   5b01c:	fe c2                	inc    dl
   5b01e:	88 d0                	mov    al,dl
   5b020:	88 15 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,dl                             ; fixup: num: 14737, src obj: 1, src ofs: 0x5b022, dst obj: 3, dst ofs: 0x17e58
   5b026:	83 f8 02             	cmp    eax,0x2
   5b029:	7e 08                	jle    menu_options_branch_83
   5b02b:	30 f6                	xor    dh,dh
   5b02d:	88 35 58 7e 01 00    	mov    BYTE PTR ds:@obj3:text_dialog,dh                             ; fixup: num: 14736, src obj: 1, src ofs: 0x5b02f, dst obj: 3, dst ofs: 0x17e58
menu_options_branch_83:
   5b033:	b3 01                	mov    bl,0x1
   5b035:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 14735, src obj: 1, src ofs: 0x5b036, dst obj: 3, dst ofs: 0x17e58
   5b03a:	88 5d 7a             	mov    BYTE PTR [ebp+0x7a],bl
   5b03d:	38 d8                	cmp    al,bl
   5b03f:	72 56                	jb     menu_options_branch_87
   5b041:	76 22                	jbe    menu_options_branch_85
   5b043:	3c 02                	cmp    al,0x2
   5b045:	74 37                	je     menu_options_branch_86
   5b047:	e9 87 fd ff ff       	jmp    menu_options_branch_61
menu_options_branch_84:
   5b04c:	bb 42 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_90                               ; fixup: num: 14734, src obj: 1, src ofs: 0x5b04d, dst obj: 3, dst ofs: 0xd842
   5b051:	ba 45 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_91                               ; fixup: num: 14733, src obj: 1, src ofs: 0x5b052, dst obj: 3, dst ofs: 0xd845
   5b056:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14732, src obj: 1, src ofs: 0x5b057, dst obj: 3, dst ofs: 0x32438
   5b05b:	e8 10 28 01 00       	call   set
   5b060:	e9 6e fd ff ff       	jmp    menu_options_branch_61
menu_options_branch_85:
   5b065:	bb 4a d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_92                               ; fixup: num: 14731, src obj: 1, src ofs: 0x5b066, dst obj: 3, dst ofs: 0xd84a
   5b06a:	ba 4e d8 00 00       	mov    edx,@obj3:menu_cpp_variable_93                               ; fixup: num: 14730, src obj: 1, src ofs: 0x5b06b, dst obj: 3, dst ofs: 0xd84e
   5b06f:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14729, src obj: 1, src ofs: 0x5b070, dst obj: 3, dst ofs: 0x32438
   5b074:	e8 f7 27 01 00       	call   set
   5b079:	e9 55 fd ff ff       	jmp    menu_options_branch_61
menu_options_branch_86:
   5b07e:	bb 53 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_94                               ; fixup: num: 14728, src obj: 1, src ofs: 0x5b07f, dst obj: 3, dst ofs: 0xd853
   5b083:	ba 59 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_95                               ; fixup: num: 14727, src obj: 1, src ofs: 0x5b084, dst obj: 3, dst ofs: 0xd859
   5b088:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14726, src obj: 1, src ofs: 0x5b089, dst obj: 3, dst ofs: 0x32438
   5b08d:	e8 de 27 01 00       	call   set
   5b092:	e9 3c fd ff ff       	jmp    menu_options_branch_61
menu_options_branch_87:
   5b097:	84 c0                	test   al,al
   5b099:	74 b1                	je     menu_options_branch_84
   5b09b:	e9 33 fd ff ff       	jmp    menu_options_branch_61
menu_options_reference_2:
   5b0a0:	b0 01                	mov    al,0x1
   5b0a2:	8a 2d bc 0f 01 00    	mov    ch,BYTE PTR ds:@obj3:gore                                    ; fixup: num: 14725, src obj: 1, src ofs: 0x5b0a4, dst obj: 3, dst ofs: 0x10fbc
   5b0a8:	88 45 7a             	mov    BYTE PTR [ebp+0x7a],al
   5b0ab:	80 f5 01             	xor    ch,0x1
   5b0ae:	88 2d bc 0f 01 00    	mov    BYTE PTR ds:@obj3:gore,ch                                    ; fixup: num: 14724, src obj: 1, src ofs: 0x5b0b0, dst obj: 3, dst ofs: 0x10fbc
   5b0b4:	74 19                	je     menu_options_branch_88
   5b0b6:	bb 5e d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_96                               ; fixup: num: 14751, src obj: 1, src ofs: 0x5b0b7, dst obj: 3, dst ofs: 0xd85e
   5b0bb:	ba 62 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_97                               ; fixup: num: 14750, src obj: 1, src ofs: 0x5b0bc, dst obj: 3, dst ofs: 0xd862
   5b0c0:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14749, src obj: 1, src ofs: 0x5b0c1, dst obj: 3, dst ofs: 0x32438
   5b0c5:	e8 a6 27 01 00       	call   set
   5b0ca:	e9 04 fd ff ff       	jmp    menu_options_branch_61
menu_options_branch_88:
   5b0cf:	bb 67 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_98                               ; fixup: num: 14748, src obj: 1, src ofs: 0x5b0d0, dst obj: 3, dst ofs: 0xd867
   5b0d4:	ba 6a d8 00 00       	mov    edx,@obj3:menu_cpp_variable_99                               ; fixup: num: 14747, src obj: 1, src ofs: 0x5b0d5, dst obj: 3, dst ofs: 0xd86a
   5b0d9:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14746, src obj: 1, src ofs: 0x5b0da, dst obj: 3, dst ofs: 0x32438
   5b0de:	e8 8d 27 01 00       	call   set
   5b0e3:	e9 eb fc ff ff       	jmp    menu_options_branch_61
menu_options_reference_3:
   5b0e8:	b6 01                	mov    dh,0x1
   5b0ea:	8a 1d 39 5b 02 00    	mov    bl,BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc       ; fixup: num: 14745, src obj: 1, src ofs: 0x5b0ec, dst obj: 3, dst ofs: 0x25b39
   5b0f0:	88 75 7a             	mov    BYTE PTR [ebp+0x7a],dh
   5b0f3:	84 f3                	test   bl,dh
   5b0f5:	75 21                	jne    menu_options_branch_89
   5b0f7:	88 df                	mov    bh,bl
   5b0f9:	08 f7                	or     bh,dh
   5b0fb:	88 3d 39 5b 02 00    	mov    BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc,bh       ; fixup: num: 14744, src obj: 1, src ofs: 0x5b0fd, dst obj: 3, dst ofs: 0x25b39
   5b101:	e8 d1 b3 01 00       	call   rand_
   5b106:	89 c2                	mov    edx,eax
   5b108:	bb 28 00 00 00       	mov    ebx,0x28
   5b10d:	c1 fa 1f             	sar    edx,0x1f
   5b110:	f7 fb                	idiv   ebx
   5b112:	89 15 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,edx                                  ; fixup: num: 14743, src obj: 1, src ofs: 0x5b114, dst obj: 3, dst ofs: 0x25b34
menu_options_branch_89:
   5b118:	b8 72 d8 00 00       	mov    eax,@obj3:menu_cpp_variable_101                              ; fixup: num: 14742, src obj: 1, src ofs: 0x5b119, dst obj: 3, dst ofs: 0xd872
   5b11d:	ba 6f d8 00 00       	mov    edx,@obj3:menu_cpp_variable_100                              ; fixup: num: 14741, src obj: 1, src ofs: 0x5b11e, dst obj: 3, dst ofs: 0xd86f
   5b122:	e8 59 3c fb ff       	call   XFILE_map_cd
   5b127:	e8 7c 5c 01 00       	call   fopen_
   5b12c:	89 45 1e             	mov    DWORD PTR [ebp+0x1e],eax
   5b12f:	85 c0                	test   eax,eax
   5b131:	75 31                	jne    menu_options_branch_90
   5b133:	b8 7e d8 00 00       	mov    eax,@obj3:menu_cpp_variable_102                              ; fixup: num: 14740, src obj: 1, src ofs: 0x5b134, dst obj: 3, dst ofs: 0xd87e
   5b138:	e8 43 3c fb ff       	call   XFILE_map_cd
   5b13d:	50                   	push   eax
   5b13e:	68 8a d8 00 00       	push   @obj3:menu_cpp_variable_103                                  ; fixup: num: 14739, src obj: 1, src ofs: 0x5b13f, dst obj: 3, dst ofs: 0xd88a
   5b143:	8d 85 7e ff ff ff    	lea    eax,[ebp-0x82]
   5b149:	50                   	push   eax
   5b14a:	8d 9d 7e ff ff ff    	lea    ebx,[ebp-0x82]
   5b150:	e8 8c 5a 01 00       	call   sprintf_
   5b155:	83 c4 0c             	add    esp,0xc
   5b158:	ba c9 05 00 00       	mov    edx,0x5c9
   5b15d:	31 c0                	xor    eax,eax
   5b15f:	e8 cc ce fd ff       	call   _error_report
menu_options_branch_90:
   5b164:	b8 4c 00 00 00       	mov    eax,0x4c
   5b169:	e8 aa 6d 01 00       	call   W?$nwn(ui)pnv
   5b16e:	85 c0                	test   eax,eax
   5b170:	74 2b                	je     menu_options_branch_91
   5b172:	6a 00                	push   0x0
   5b174:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14760, src obj: 1, src ofs: 0x5b175, dst obj: 1, dst ofs: 0x71493
   5b179:	6a 00                	push   0x0
   5b17b:	6a 00                	push   0x0
   5b17d:	6a 01                	push   0x1
   5b17f:	68 00 00 70 c2       	push   0xc2700000
   5b184:	b9 a7 00 00 00       	mov    ecx,0xa7
   5b189:	68 c8 00 00 00       	push   0xc8
   5b18e:	bb a1 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_104                              ; fixup: num: 14759, src obj: 1, src ofs: 0x5b18f, dst obj: 3, dst ofs: 0xd8a1
   5b193:	ba aa d8 00 00       	mov    edx,@obj3:menu_cpp_variable_105                              ; fixup: num: 14758, src obj: 1, src ofs: 0x5b194, dst obj: 3, dst ofs: 0xd8aa
   5b198:	e8 43 fb fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
menu_options_branch_91:
   5b19d:	89 45 26             	mov    DWORD PTR [ebp+0x26],eax
   5b1a0:	85 c0                	test   eax,eax
   5b1a2:	75 0f                	jne    menu_options_branch_92
   5b1a4:	bb c3 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_106                              ; fixup: num: 14757, src obj: 1, src ofs: 0x5b1a5, dst obj: 3, dst ofs: 0xd8c3
   5b1a9:	ba cd 05 00 00       	mov    edx,0x5cd
   5b1ae:	e8 7d ce fd ff       	call   _error_report
menu_options_branch_92:
   5b1b3:	8b 55 26             	mov    edx,DWORD PTR [ebp+0x26]
   5b1b6:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14756, src obj: 1, src ofs: 0x5b1b7, dst obj: 3, dst ofs: 0x25a88
   5b1bb:	e8 70 0f ff ff       	call   insert_bitmap
   5b1c0:	b8 80 00 00 00       	mov    eax,0x80
   5b1c5:	e8 c9 62 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   5b1ca:	89 45 22             	mov    DWORD PTR [ebp+0x22],eax
   5b1cd:	85 c0                	test   eax,eax
   5b1cf:	75 0f                	jne    menu_options_branch_93
   5b1d1:	bb db d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_107                              ; fixup: num: 14755, src obj: 1, src ofs: 0x5b1d2, dst obj: 3, dst ofs: 0xd8db
   5b1d6:	ba d1 05 00 00       	mov    edx,0x5d1
   5b1db:	e8 50 ce fd ff       	call   _error_report
menu_options_branch_93:
   5b1e0:	80 3d 38 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:been_here_mod_88,0x0                       ; fixup: num: 14754, src obj: 1, src ofs: 0x5b1e2, dst obj: 3, dst ofs: 0x25b38
   5b1e7:	75 51                	jne    menu_options_branch_97
   5b1e9:	8b 0d 34 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14753, src obj: 1, src ofs: 0x5b1eb, dst obj: 3, dst ofs: 0x25b34
   5b1ef:	31 f6                	xor    esi,esi
   5b1f1:	31 ff                	xor    edi,edi
   5b1f3:	85 c9                	test   ecx,ecx
   5b1f5:	7e 32                	jle    menu_options_branch_96
   5b1f7:	eb 0b                	jmp    menu_options_branch_95
menu_options_branch_94:
   5b1f9:	8b 15 34 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14752, src obj: 1, src ofs: 0x5b1fb, dst obj: 3, dst ofs: 0x25b34
   5b1ff:	47                   	inc    edi
   5b200:	39 d7                	cmp    edi,edx
   5b202:	7d 25                	jge    menu_options_branch_96
menu_options_branch_95:
   5b204:	8b 5d 1e             	mov    ebx,DWORD PTR [ebp+0x1e]
   5b207:	ba 7f 00 00 00       	mov    edx,0x7f
   5b20c:	8b 45 22             	mov    eax,DWORD PTR [ebp+0x22]
   5b20f:	e8 dc 7b 01 00       	call   fgets_
   5b214:	8b 45 1e             	mov    eax,DWORD PTR [ebp+0x1e]
   5b217:	8a 48 0c             	mov    cl,BYTE PTR [eax+0xc]
   5b21a:	46                   	inc    esi
   5b21b:	f6 c1 10             	test   cl,0x10
   5b21e:	74 d9                	je     menu_options_branch_94
   5b220:	e8 76 ba 01 00       	call   rewind_
   5b225:	31 f6                	xor    esi,esi
   5b227:	eb d0                	jmp    menu_options_branch_94
menu_options_branch_96:
   5b229:	46                   	inc    esi
   5b22a:	b7 01                	mov    bh,0x1
   5b22c:	89 35 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,esi                                  ; fixup: num: 14770, src obj: 1, src ofs: 0x5b22e, dst obj: 3, dst ofs: 0x25b34
   5b232:	88 3d 38 5b 02 00    	mov    BYTE PTR ds:@obj3:been_here_mod_88,bh                        ; fixup: num: 14769, src obj: 1, src ofs: 0x5b234, dst obj: 3, dst ofs: 0x25b38
   5b238:	eb 1f                	jmp    menu_options_branch_100
menu_options_branch_97:
   5b23a:	31 f6                	xor    esi,esi
   5b23c:	eb 11                	jmp    menu_options_branch_99
menu_options_branch_98:
   5b23e:	8b 5d 1e             	mov    ebx,DWORD PTR [ebp+0x1e]
   5b241:	ba 7f 00 00 00       	mov    edx,0x7f
   5b246:	8b 45 22             	mov    eax,DWORD PTR [ebp+0x22]
   5b249:	e8 a2 7b 01 00       	call   fgets_
   5b24e:	46                   	inc    esi
menu_options_branch_99:
   5b24f:	a1 34 5b 02 00       	mov    eax,ds:@obj3:line                                            ; fixup: num: 14768, src obj: 1, src ofs: 0x5b250, dst obj: 3, dst ofs: 0x25b34
   5b254:	48                   	dec    eax
   5b255:	39 c6                	cmp    esi,eax
   5b257:	7c e5                	jl     menu_options_branch_98
menu_options_branch_100:
   5b259:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14767, src obj: 1, src ofs: 0x5b25a, dst obj: 3, dst ofs: 0x1a1d4
   5b25e:	8b 5d 1e             	mov    ebx,DWORD PTR [ebp+0x1e]
   5b261:	ba 7f 00 00 00       	mov    edx,0x7f
   5b266:	e8 35 07 fb ff       	call   update_mod_9
   5b26b:	8b 45 22             	mov    eax,DWORD PTR [ebp+0x22]
   5b26e:	e8 7d 7b 01 00       	call   fgets_
   5b273:	85 c0                	test   eax,eax
   5b275:	75 20                	jne    menu_options_branch_101
   5b277:	8b 45 1e             	mov    eax,DWORD PTR [ebp+0x1e]
   5b27a:	ba 7f 00 00 00       	mov    edx,0x7f
   5b27f:	e8 17 ba 01 00       	call   rewind_
   5b284:	31 db                	xor    ebx,ebx
   5b286:	8b 45 22             	mov    eax,DWORD PTR [ebp+0x22]
   5b289:	89 1d 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,ebx                                  ; fixup: num: 14766, src obj: 1, src ofs: 0x5b28b, dst obj: 3, dst ofs: 0x25b34
   5b28f:	8b 5d 1e             	mov    ebx,DWORD PTR [ebp+0x1e]
   5b292:	e8 59 7b 01 00       	call   fgets_
menu_options_branch_101:
   5b297:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14765, src obj: 1, src ofs: 0x5b298, dst obj: 3, dst ofs: 0x1a1d4
   5b29c:	30 ed                	xor    ch,ch
   5b29e:	e8 fd 06 fb ff       	call   update_mod_9
   5b2a3:	88 6d 6e             	mov    BYTE PTR [ebp+0x6e],ch
   5b2a6:	88 6d 72             	mov    BYTE PTR [ebp+0x72],ch
   5b2a9:	8b 0d 34 5b 02 00    	mov    ecx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14764, src obj: 1, src ofs: 0x5b2ab, dst obj: 3, dst ofs: 0x25b34
   5b2af:	ba f6 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_109                              ; fixup: num: 14763, src obj: 1, src ofs: 0x5b2b0, dst obj: 3, dst ofs: 0xd8f6
   5b2b4:	41                   	inc    ecx
   5b2b5:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14762, src obj: 1, src ofs: 0x5b2b6, dst obj: 3, dst ofs: 0x32438
   5b2ba:	89 0d 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,ecx                                  ; fixup: num: 14761, src obj: 1, src ofs: 0x5b2bc, dst obj: 3, dst ofs: 0x25b34
   5b2c0:	e8 0b 25 01 00       	call   get
   5b2c5:	ba f3 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_108                              ; fixup: num: 14781, src obj: 1, src ofs: 0x5b2c6, dst obj: 3, dst ofs: 0xd8f3
   5b2ca:	8b 7d 22             	mov    edi,DWORD PTR [ebp+0x22]
   5b2cd:	e8 5e b1 01 00       	call   strcmp_
   5b2d2:	85 c0                	test   eax,eax
   5b2d4:	75 50                	jne    menu_options_branch_103
   5b2d6:	b2 01                	mov    dl,0x1
   5b2d8:	b8 50 00 00 00       	mov    eax,0x50
   5b2dd:	88 15 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dl                           ; fixup: num: 14780, src obj: 1, src ofs: 0x5b2df, dst obj: 3, dst ofs: 0x10fa6
   5b2e3:	e8 30 6c 01 00       	call   W?$nwn(ui)pnv
   5b2e8:	85 c0                	test   eax,eax
   5b2ea:	74 23                	je     menu_options_branch_102
   5b2ec:	6a 00                	push   0x0
   5b2ee:	6a c3                	push   0xffffffc3
   5b2f0:	68 16 01 00 00       	push   0x116
   5b2f5:	b9 01 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_110                              ; fixup: num: 14779, src obj: 1, src ofs: 0x5b2f6, dst obj: 3, dst ofs: 0xd901
   5b2fa:	68 02 01 00 00       	push   0x102
   5b2ff:	ba 0e d9 00 00       	mov    edx,@obj3:menu_cpp_variable_111                              ; fixup: num: 14778, src obj: 1, src ofs: 0x5b300, dst obj: 3, dst ofs: 0xd90e
   5b304:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14777, src obj: 1, src ofs: 0x5b306, dst obj: 3, dst ofs: 0x25bd0
   5b30a:	e8 f1 e8 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_102:
   5b30f:	89 c6                	mov    esi,eax
   5b311:	85 c0                	test   eax,eax
   5b313:	75 5f                	jne    menu_options_branch_105
   5b315:	bb 1b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_112                              ; fixup: num: 14776, src obj: 1, src ofs: 0x5b316, dst obj: 3, dst ofs: 0xd91b
   5b31a:	ba 86 06 00 00       	mov    edx,0x686
   5b31f:	e8 0c cd fd ff       	call   _error_report
   5b324:	eb 4e                	jmp    menu_options_branch_105
menu_options_branch_103:
   5b326:	30 e4                	xor    ah,ah
   5b328:	88 25 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,ah                           ; fixup: num: 14775, src obj: 1, src ofs: 0x5b32a, dst obj: 3, dst ofs: 0x10fa6
   5b32e:	b8 50 00 00 00       	mov    eax,0x50
   5b333:	e8 e0 6b 01 00       	call   W?$nwn(ui)pnv
   5b338:	85 c0                	test   eax,eax
   5b33a:	74 23                	je     menu_options_branch_104
   5b33c:	6a 00                	push   0x0
   5b33e:	6a c3                	push   0xffffffc3
   5b340:	68 16 01 00 00       	push   0x116
   5b345:	b9 33 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_113                              ; fixup: num: 14774, src obj: 1, src ofs: 0x5b346, dst obj: 3, dst ofs: 0xd933
   5b34a:	68 02 01 00 00       	push   0x102
   5b34f:	ba 40 d9 00 00       	mov    edx,@obj3:menu_cpp_variable_114                              ; fixup: num: 14773, src obj: 1, src ofs: 0x5b350, dst obj: 3, dst ofs: 0xd940
   5b354:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14772, src obj: 1, src ofs: 0x5b356, dst obj: 3, dst ofs: 0x25bd0
   5b35a:	e8 a1 e8 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_104:
   5b35f:	89 c6                	mov    esi,eax
   5b361:	85 c0                	test   eax,eax
   5b363:	75 0f                	jne    menu_options_branch_105
   5b365:	bb 4e d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_115                              ; fixup: num: 14771, src obj: 1, src ofs: 0x5b366, dst obj: 3, dst ofs: 0xd94e
   5b36a:	ba 8d 06 00 00       	mov    edx,0x68d
   5b36f:	e8 bc cc fd ff       	call   _error_report
menu_options_branch_105:
   5b374:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14667, src obj: 1, src ofs: 0x5b375, dst obj: 3, dst ofs: 0x1a1d4
   5b379:	e8 22 06 fb ff       	call   update_mod_9
   5b37e:	85 ff                	test   edi,edi
   5b380:	75 11                	jne    menu_options_branch_106
   5b382:	bb 66 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_116                              ; fixup: num: 14666, src obj: 1, src ofs: 0x5b383, dst obj: 3, dst ofs: 0xd966
   5b387:	ba 91 06 00 00       	mov    edx,0x691
   5b38c:	31 c0                	xor    eax,eax
   5b38e:	e8 9d cc fd ff       	call   _error_report
menu_options_branch_106:
   5b393:	b8 50 00 00 00       	mov    eax,0x50
   5b398:	e8 7b 6b 01 00       	call   W?$nwn(ui)pnv
   5b39d:	85 c0                	test   eax,eax
   5b39f:	74 23                	je     menu_options_branch_107
   5b3a1:	68 2c 01 00 00       	push   0x12c
   5b3a6:	6a c3                	push   0xffffffc3
   5b3a8:	68 e4 00 00 00       	push   0xe4
   5b3ad:	b9 82 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_117                              ; fixup: num: 14665, src obj: 1, src ofs: 0x5b3ae, dst obj: 3, dst ofs: 0xd982
   5b3b2:	68 b4 00 00 00       	push   0xb4
   5b3b7:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 14664, src obj: 1, src ofs: 0x5b3b9, dst obj: 3, dst ofs: 0x25bc4
   5b3bd:	89 fa                	mov    edx,edi
   5b3bf:	e8 3c e8 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_107:
   5b3c4:	89 45 2a             	mov    DWORD PTR [ebp+0x2a],eax
   5b3c7:	85 c0                	test   eax,eax
   5b3c9:	75 0f                	jne    menu_options_branch_108
   5b3cb:	bb 8b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_118                              ; fixup: num: 14663, src obj: 1, src ofs: 0x5b3cc, dst obj: 3, dst ofs: 0xd98b
   5b3d0:	ba 93 06 00 00       	mov    edx,0x693
   5b3d5:	e8 56 cc fd ff       	call   _error_report
menu_options_branch_108:
   5b3da:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14785, src obj: 1, src ofs: 0x5b3db, dst obj: 3, dst ofs: 0x1a1d4
   5b3df:	e8 bc 05 fb ff       	call   update_mod_9
   5b3e4:	b8 50 00 00 00       	mov    eax,0x50
   5b3e9:	e8 2a 6b 01 00       	call   W?$nwn(ui)pnv
   5b3ee:	85 c0                	test   eax,eax
   5b3f0:	74 23                	je     menu_options_branch_109
   5b3f2:	6a 00                	push   0x0
   5b3f4:	6a c3                	push   0xffffffc3
   5b3f6:	68 16 01 00 00       	push   0x116
   5b3fb:	b9 a3 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_119                              ; fixup: num: 14784, src obj: 1, src ofs: 0x5b3fc, dst obj: 3, dst ofs: 0xd9a3
   5b400:	68 b4 00 00 00       	push   0xb4
   5b405:	ba af d9 00 00       	mov    edx,@obj3:menu_cpp_variable_120                              ; fixup: num: 14783, src obj: 1, src ofs: 0x5b406, dst obj: 3, dst ofs: 0xd9af
   5b40a:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14782, src obj: 1, src ofs: 0x5b40c, dst obj: 3, dst ofs: 0x25bd0
   5b410:	e8 eb e7 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_109:
   5b415:	89 c7                	mov    edi,eax
   5b417:	85 c0                	test   eax,eax
   5b419:	75 0f                	jne    menu_options_branch_110
   5b41b:	bb b4 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_121                              ; fixup: num: 14680, src obj: 1, src ofs: 0x5b41c, dst obj: 3, dst ofs: 0xd9b4
   5b420:	ba 98 06 00 00       	mov    edx,0x698
   5b425:	e8 06 cc fd ff       	call   _error_report
menu_options_branch_110:
   5b42a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14679, src obj: 1, src ofs: 0x5b42b, dst obj: 3, dst ofs: 0x1a1d4
   5b42f:	e8 6c 05 fb ff       	call   update_mod_9
   5b434:	b8 50 00 00 00       	mov    eax,0x50
   5b439:	e8 da 6a 01 00       	call   W?$nwn(ui)pnv
   5b43e:	85 c0                	test   eax,eax
   5b440:	74 23                	je     menu_options_branch_111
   5b442:	6a 00                	push   0x0
   5b444:	6a c3                	push   0xffffffc3
   5b446:	68 16 01 00 00       	push   0x116
   5b44b:	b9 cc d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_122                              ; fixup: num: 14678, src obj: 1, src ofs: 0x5b44c, dst obj: 3, dst ofs: 0xd9cc
   5b450:	68 a4 01 00 00       	push   0x1a4
   5b455:	ba da d9 00 00       	mov    edx,@obj3:menu_cpp_variable_123                              ; fixup: num: 14677, src obj: 1, src ofs: 0x5b456, dst obj: 3, dst ofs: 0xd9da
   5b45a:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14676, src obj: 1, src ofs: 0x5b45c, dst obj: 3, dst ofs: 0x25bd0
   5b460:	e8 9b e7 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_111:
   5b465:	89 45 2e             	mov    DWORD PTR [ebp+0x2e],eax
   5b468:	85 c0                	test   eax,eax
   5b46a:	75 0f                	jne    menu_options_branch_112
   5b46c:	bb df d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_124                              ; fixup: num: 14675, src obj: 1, src ofs: 0x5b46d, dst obj: 3, dst ofs: 0xd9df
   5b471:	ba 9d 06 00 00       	mov    edx,0x69d
   5b476:	e8 b5 cb fd ff       	call   _error_report
menu_options_branch_112:
   5b47b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14674, src obj: 1, src ofs: 0x5b47c, dst obj: 3, dst ofs: 0x1a1d4
   5b480:	e8 1b 05 fb ff       	call   update_mod_9
menu_options_branch_113:
   5b485:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14673, src obj: 1, src ofs: 0x5b486, dst obj: 3, dst ofs: 0x25a84
   5b48a:	e8 11 28 ff ff       	call   update_mod_84
   5b48f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14672, src obj: 1, src ofs: 0x5b490, dst obj: 3, dst ofs: 0x1a1d4
   5b494:	e8 07 05 fb ff       	call   update_mod_9
   5b499:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14671, src obj: 1, src ofs: 0x5b49c, dst obj: 3, dst ofs: 0x25908
   5b4a0:	83 f8 01             	cmp    eax,0x1
   5b4a3:	75 13                	jne    menu_options_branch_115
   5b4a5:	b1 01                	mov    cl,0x1
menu_options_branch_114:
   5b4a7:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14670, src obj: 1, src ofs: 0x5b4aa, dst obj: 3, dst ofs: 0x25908
   5b4ae:	83 f8 01             	cmp    eax,0x1
   5b4b1:	74 f4                	je     menu_options_branch_114
   5b4b3:	e9 3a 06 00 00       	jmp    menu_options_branch_162
menu_options_branch_115:
   5b4b8:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14669, src obj: 1, src ofs: 0x5b4ba, dst obj: 3, dst ofs: 0x25978
   5b4c2:	7c 2b                	jl     menu_options_branch_116
   5b4c4:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14668, src obj: 1, src ofs: 0x5b4c6, dst obj: 3, dst ofs: 0x25978
   5b4ce:	7f 1f                	jg     menu_options_branch_116
   5b4d0:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14689, src obj: 1, src ofs: 0x5b4d2, dst obj: 3, dst ofs: 0x2597c
   5b4da:	7c 13                	jl     menu_options_branch_116
   5b4dc:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14688, src obj: 1, src ofs: 0x5b4de, dst obj: 3, dst ofs: 0x2597c
   5b4e6:	7f 07                	jg     menu_options_branch_116
   5b4e8:	b8 01 00 00 00       	mov    eax,0x1
   5b4ed:	eb 02                	jmp    menu_options_branch_117
menu_options_branch_116:
   5b4ef:	31 c0                	xor    eax,eax
menu_options_branch_117:
   5b4f1:	85 c0                	test   eax,eax
   5b4f3:	74 62                	je     menu_options_branch_120
   5b4f5:	80 7d 6e 00          	cmp    BYTE PTR [ebp+0x6e],0x0
   5b4f9:	75 5c                	jne    menu_options_branch_120
   5b4fb:	c6 45 6e 01          	mov    BYTE PTR [ebp+0x6e],0x1
   5b4ff:	85 ff                	test   edi,edi
   5b501:	74 0e                	je     menu_options_branch_118
   5b503:	89 f8                	mov    eax,edi
   5b505:	31 d2                	xor    edx,edx
   5b507:	e8 14 ea fe ff       	call   W?$dt:TEXTBM$n()_
   5b50c:	e8 67 6b 01 00       	call   W?$dln(pnv)v
menu_options_branch_118:
   5b511:	b8 50 00 00 00       	mov    eax,0x50
   5b516:	e8 fd 69 01 00       	call   W?$nwn(ui)pnv
   5b51b:	85 c0                	test   eax,eax
   5b51d:	74 23                	je     menu_options_branch_119
   5b51f:	6a 00                	push   0x0
   5b521:	6a c3                	push   0xffffffc3
   5b523:	68 16 01 00 00       	push   0x116
   5b528:	b9 f7 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_125                              ; fixup: num: 14687, src obj: 1, src ofs: 0x5b529, dst obj: 3, dst ofs: 0xd9f7
   5b52d:	68 b4 00 00 00       	push   0xb4
   5b532:	ba 03 da 00 00       	mov    edx,@obj3:menu_cpp_variable_126                              ; fixup: num: 14686, src obj: 1, src ofs: 0x5b533, dst obj: 3, dst ofs: 0xda03
   5b537:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14685, src obj: 1, src ofs: 0x5b539, dst obj: 3, dst ofs: 0x25bcc
   5b53d:	e8 be e6 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_119:
   5b542:	89 c7                	mov    edi,eax
   5b544:	85 c0                	test   eax,eax
   5b546:	75 0f                	jne    menu_options_branch_120
   5b548:	bb 08 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_127                              ; fixup: num: 14684, src obj: 1, src ofs: 0x5b549, dst obj: 3, dst ofs: 0xda08
   5b54d:	ba b0 06 00 00       	mov    edx,0x6b0
   5b552:	e8 d9 ca fd ff       	call   _error_report
menu_options_branch_120:
   5b557:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14683, src obj: 1, src ofs: 0x5b559, dst obj: 3, dst ofs: 0x25978
   5b561:	7c 2b                	jl     menu_options_branch_121
   5b563:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14682, src obj: 1, src ofs: 0x5b565, dst obj: 3, dst ofs: 0x25978
   5b56d:	7f 1f                	jg     menu_options_branch_121
   5b56f:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14681, src obj: 1, src ofs: 0x5b571, dst obj: 3, dst ofs: 0x2597c
   5b579:	7c 13                	jl     menu_options_branch_121
   5b57b:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14698, src obj: 1, src ofs: 0x5b57d, dst obj: 3, dst ofs: 0x2597c
   5b585:	7f 07                	jg     menu_options_branch_121
   5b587:	b8 01 00 00 00       	mov    eax,0x1
   5b58c:	eb 02                	jmp    menu_options_branch_122
menu_options_branch_121:
   5b58e:	31 c0                	xor    eax,eax
menu_options_branch_122:
   5b590:	85 c0                	test   eax,eax
   5b592:	75 63                	jne    menu_options_branch_125
   5b594:	80 7d 6e 00          	cmp    BYTE PTR [ebp+0x6e],0x0
   5b598:	74 5d                	je     menu_options_branch_125
   5b59a:	30 c9                	xor    cl,cl
   5b59c:	88 4d 6e             	mov    BYTE PTR [ebp+0x6e],cl
   5b59f:	85 ff                	test   edi,edi
   5b5a1:	74 0e                	je     menu_options_branch_123
   5b5a3:	89 f8                	mov    eax,edi
   5b5a5:	31 d2                	xor    edx,edx
   5b5a7:	e8 74 e9 fe ff       	call   W?$dt:TEXTBM$n()_
   5b5ac:	e8 c7 6a 01 00       	call   W?$dln(pnv)v
menu_options_branch_123:
   5b5b1:	b8 50 00 00 00       	mov    eax,0x50
   5b5b6:	e8 5d 69 01 00       	call   W?$nwn(ui)pnv
   5b5bb:	85 c0                	test   eax,eax
   5b5bd:	74 23                	je     menu_options_branch_124
   5b5bf:	6a 00                	push   0x0
   5b5c1:	6a c3                	push   0xffffffc3
   5b5c3:	68 16 01 00 00       	push   0x116
   5b5c8:	b9 20 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_128                              ; fixup: num: 14697, src obj: 1, src ofs: 0x5b5c9, dst obj: 3, dst ofs: 0xda20
   5b5cd:	68 b4 00 00 00       	push   0xb4
   5b5d2:	ba 2c da 00 00       	mov    edx,@obj3:menu_cpp_variable_129                              ; fixup: num: 14696, src obj: 1, src ofs: 0x5b5d3, dst obj: 3, dst ofs: 0xda2c
   5b5d7:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14695, src obj: 1, src ofs: 0x5b5d9, dst obj: 3, dst ofs: 0x25bd0
   5b5dd:	e8 1e e6 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_124:
   5b5e2:	89 c7                	mov    edi,eax
   5b5e4:	85 c0                	test   eax,eax
   5b5e6:	75 0f                	jne    menu_options_branch_125
   5b5e8:	bb 31 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_130                              ; fixup: num: 14694, src obj: 1, src ofs: 0x5b5e9, dst obj: 3, dst ofs: 0xda31
   5b5ed:	ba b8 06 00 00       	mov    edx,0x6b8
   5b5f2:	e8 39 ca fd ff       	call   _error_report
menu_options_branch_125:
   5b5f7:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14693, src obj: 1, src ofs: 0x5b5f9, dst obj: 3, dst ofs: 0x25974
   5b5fe:	0f 84 66 00 00 00    	je     menu_options_branch_129
   5b604:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14692, src obj: 1, src ofs: 0x5b606, dst obj: 3, dst ofs: 0x25978
   5b60e:	7c 2b                	jl     menu_options_branch_126
   5b610:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14691, src obj: 1, src ofs: 0x5b612, dst obj: 3, dst ofs: 0x25978
   5b61a:	7f 1f                	jg     menu_options_branch_126
   5b61c:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14690, src obj: 1, src ofs: 0x5b61e, dst obj: 3, dst ofs: 0x2597c
   5b626:	7c 13                	jl     menu_options_branch_126
   5b628:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14706, src obj: 1, src ofs: 0x5b62a, dst obj: 3, dst ofs: 0x2597c
   5b632:	7f 07                	jg     menu_options_branch_126
   5b634:	b8 01 00 00 00       	mov    eax,0x1
   5b639:	eb 02                	jmp    menu_options_branch_127
menu_options_branch_126:
   5b63b:	31 c0                	xor    eax,eax
menu_options_branch_127:
   5b63d:	85 c0                	test   eax,eax
   5b63f:	74 29                	je     menu_options_branch_129
   5b641:	b1 01                	mov    cl,0x1
   5b643:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14705, src obj: 1, src ofs: 0x5b645, dst obj: 3, dst ofs: 0x25974
   5b64a:	0f 84 a2 04 00 00    	je     menu_options_branch_162
   5b650:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 14704, src obj: 1, src ofs: 0x5b651, dst obj: 3, dst ofs: 0x1a1d4
menu_options_branch_128:
   5b655:	89 d0                	mov    eax,edx
   5b657:	e8 44 03 fb ff       	call   update_mod_9
   5b65c:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14703, src obj: 1, src ofs: 0x5b65e, dst obj: 3, dst ofs: 0x25974
   5b663:	75 f0                	jne    menu_options_branch_128
   5b665:	e9 88 04 00 00       	jmp    menu_options_branch_162
menu_options_branch_129:
   5b66a:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14702, src obj: 1, src ofs: 0x5b66c, dst obj: 3, dst ofs: 0x25978
   5b674:	7c 2b                	jl     menu_options_branch_130
   5b676:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14701, src obj: 1, src ofs: 0x5b678, dst obj: 3, dst ofs: 0x25978
   5b680:	7f 1f                	jg     menu_options_branch_130
   5b682:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14700, src obj: 1, src ofs: 0x5b684, dst obj: 3, dst ofs: 0x2597c
   5b68c:	7c 13                	jl     menu_options_branch_130
   5b68e:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14699, src obj: 1, src ofs: 0x5b690, dst obj: 3, dst ofs: 0x2597c
   5b698:	7f 07                	jg     menu_options_branch_130
   5b69a:	b8 01 00 00 00       	mov    eax,0x1
   5b69f:	eb 02                	jmp    menu_options_branch_131
menu_options_branch_130:
   5b6a1:	31 c0                	xor    eax,eax
menu_options_branch_131:
   5b6a3:	85 c0                	test   eax,eax
   5b6a5:	74 64                	je     menu_options_branch_134
   5b6a7:	80 7d 72 00          	cmp    BYTE PTR [ebp+0x72],0x0
   5b6ab:	75 5e                	jne    menu_options_branch_134
   5b6ad:	c6 45 72 01          	mov    BYTE PTR [ebp+0x72],0x1
   5b6b1:	8b 45 2e             	mov    eax,DWORD PTR [ebp+0x2e]
   5b6b4:	85 c0                	test   eax,eax
   5b6b6:	74 0c                	je     menu_options_branch_132
   5b6b8:	31 d2                	xor    edx,edx
   5b6ba:	e8 61 e8 fe ff       	call   W?$dt:TEXTBM$n()_
   5b6bf:	e8 b4 69 01 00       	call   W?$dln(pnv)v
menu_options_branch_132:
   5b6c4:	b8 50 00 00 00       	mov    eax,0x50
   5b6c9:	e8 4a 68 01 00       	call   W?$nwn(ui)pnv
   5b6ce:	85 c0                	test   eax,eax
   5b6d0:	74 23                	je     menu_options_branch_133
   5b6d2:	6a 00                	push   0x0
   5b6d4:	6a c3                	push   0xffffffc3
   5b6d6:	68 16 01 00 00       	push   0x116
   5b6db:	b9 49 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_131                              ; fixup: num: 14715, src obj: 1, src ofs: 0x5b6dc, dst obj: 3, dst ofs: 0xda49
   5b6e0:	68 a4 01 00 00       	push   0x1a4
   5b6e5:	ba 57 da 00 00       	mov    edx,@obj3:menu_cpp_variable_132                              ; fixup: num: 14714, src obj: 1, src ofs: 0x5b6e6, dst obj: 3, dst ofs: 0xda57
   5b6ea:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14713, src obj: 1, src ofs: 0x5b6ec, dst obj: 3, dst ofs: 0x25bcc
   5b6f0:	e8 0b e5 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_133:
   5b6f5:	89 45 2e             	mov    DWORD PTR [ebp+0x2e],eax
   5b6f8:	85 c0                	test   eax,eax
   5b6fa:	75 0f                	jne    menu_options_branch_134
   5b6fc:	bb 5c da 00 00       	mov    ebx,@obj3:menu_cpp_variable_133                              ; fixup: num: 14712, src obj: 1, src ofs: 0x5b6fd, dst obj: 3, dst ofs: 0xda5c
   5b701:	ba c7 06 00 00       	mov    edx,0x6c7
   5b706:	e8 25 c9 fd ff       	call   _error_report
menu_options_branch_134:
   5b70b:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14711, src obj: 1, src ofs: 0x5b70d, dst obj: 3, dst ofs: 0x25978
   5b715:	7c 2b                	jl     menu_options_branch_135
   5b717:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14710, src obj: 1, src ofs: 0x5b719, dst obj: 3, dst ofs: 0x25978
   5b721:	7f 1f                	jg     menu_options_branch_135
   5b723:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14709, src obj: 1, src ofs: 0x5b725, dst obj: 3, dst ofs: 0x2597c
   5b72d:	7c 13                	jl     menu_options_branch_135
   5b72f:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14708, src obj: 1, src ofs: 0x5b731, dst obj: 3, dst ofs: 0x2597c
   5b739:	7f 07                	jg     menu_options_branch_135
   5b73b:	b8 01 00 00 00       	mov    eax,0x1
   5b740:	eb 02                	jmp    menu_options_branch_136
menu_options_branch_135:
   5b742:	31 c0                	xor    eax,eax
menu_options_branch_136:
   5b744:	85 c0                	test   eax,eax
   5b746:	75 67                	jne    menu_options_branch_139
   5b748:	80 7d 72 00          	cmp    BYTE PTR [ebp+0x72],0x0
   5b74c:	74 61                	je     menu_options_branch_139
   5b74e:	30 f6                	xor    dh,dh
   5b750:	88 75 72             	mov    BYTE PTR [ebp+0x72],dh
   5b753:	83 7d 2e 00          	cmp    DWORD PTR [ebp+0x2e],0x0
   5b757:	74 0f                	je     menu_options_branch_137
   5b759:	8b 45 2e             	mov    eax,DWORD PTR [ebp+0x2e]
   5b75c:	31 d2                	xor    edx,edx
   5b75e:	e8 bd e7 fe ff       	call   W?$dt:TEXTBM$n()_
   5b763:	e8 10 69 01 00       	call   W?$dln(pnv)v
menu_options_branch_137:
   5b768:	b8 50 00 00 00       	mov    eax,0x50
   5b76d:	e8 a6 67 01 00       	call   W?$nwn(ui)pnv
   5b772:	85 c0                	test   eax,eax
   5b774:	74 23                	je     menu_options_branch_138
   5b776:	6a 00                	push   0x0
   5b778:	6a c3                	push   0xffffffc3
   5b77a:	68 16 01 00 00       	push   0x116
   5b77f:	b9 74 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_134                              ; fixup: num: 14707, src obj: 1, src ofs: 0x5b780, dst obj: 3, dst ofs: 0xda74
   5b784:	68 a4 01 00 00       	push   0x1a4
   5b789:	ba 82 da 00 00       	mov    edx,@obj3:menu_cpp_variable_135                              ; fixup: num: 14606, src obj: 1, src ofs: 0x5b78a, dst obj: 3, dst ofs: 0xda82
   5b78e:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14605, src obj: 1, src ofs: 0x5b790, dst obj: 3, dst ofs: 0x25bd0
   5b794:	e8 67 e4 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_138:
   5b799:	89 45 2e             	mov    DWORD PTR [ebp+0x2e],eax
   5b79c:	85 c0                	test   eax,eax
   5b79e:	75 0f                	jne    menu_options_branch_139
   5b7a0:	bb 87 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_136                              ; fixup: num: 14604, src obj: 1, src ofs: 0x5b7a1, dst obj: 3, dst ofs: 0xda87
   5b7a5:	ba cf 06 00 00       	mov    edx,0x6cf
   5b7aa:	e8 81 c8 fd ff       	call   _error_report
menu_options_branch_139:
   5b7af:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14603, src obj: 1, src ofs: 0x5b7b1, dst obj: 3, dst ofs: 0x25974
   5b7b6:	0f 84 66 00 00 00    	je     menu_options_branch_143
   5b7bc:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14602, src obj: 1, src ofs: 0x5b7be, dst obj: 3, dst ofs: 0x25978
   5b7c6:	7c 2b                	jl     menu_options_branch_140
   5b7c8:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14601, src obj: 1, src ofs: 0x5b7ca, dst obj: 3, dst ofs: 0x25978
   5b7d2:	7f 1f                	jg     menu_options_branch_140
   5b7d4:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14722, src obj: 1, src ofs: 0x5b7d6, dst obj: 3, dst ofs: 0x2597c
   5b7de:	7c 13                	jl     menu_options_branch_140
   5b7e0:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14721, src obj: 1, src ofs: 0x5b7e2, dst obj: 3, dst ofs: 0x2597c
   5b7ea:	7f 07                	jg     menu_options_branch_140
   5b7ec:	b8 01 00 00 00       	mov    eax,0x1
   5b7f1:	eb 02                	jmp    menu_options_branch_141
menu_options_branch_140:
   5b7f3:	31 c0                	xor    eax,eax
menu_options_branch_141:
   5b7f5:	85 c0                	test   eax,eax
   5b7f7:	74 29                	je     menu_options_branch_143
   5b7f9:	30 c9                	xor    cl,cl
   5b7fb:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14720, src obj: 1, src ofs: 0x5b7fd, dst obj: 3, dst ofs: 0x25974
   5b802:	0f 84 ea 02 00 00    	je     menu_options_branch_162
   5b808:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 14719, src obj: 1, src ofs: 0x5b809, dst obj: 3, dst ofs: 0x1a1d4
menu_options_branch_142:
   5b80d:	89 d0                	mov    eax,edx
   5b80f:	e8 8c 01 fb ff       	call   update_mod_9
   5b814:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14718, src obj: 1, src ofs: 0x5b816, dst obj: 3, dst ofs: 0x25974
   5b81b:	75 f0                	jne    menu_options_branch_142
   5b81d:	e9 d0 02 00 00       	jmp    menu_options_branch_162
menu_options_branch_143:
   5b822:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14717, src obj: 1, src ofs: 0x5b824, dst obj: 3, dst ofs: 0x25978
   5b82c:	7c 2b                	jl     menu_options_branch_144
   5b82e:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14716, src obj: 1, src ofs: 0x5b830, dst obj: 3, dst ofs: 0x25978
   5b838:	7f 1f                	jg     menu_options_branch_144
   5b83a:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14614, src obj: 1, src ofs: 0x5b83c, dst obj: 3, dst ofs: 0x2597c
   5b844:	7c 13                	jl     menu_options_branch_144
   5b846:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14613, src obj: 1, src ofs: 0x5b848, dst obj: 3, dst ofs: 0x2597c
   5b850:	7f 07                	jg     menu_options_branch_144
   5b852:	b8 01 00 00 00       	mov    eax,0x1
   5b857:	eb 02                	jmp    menu_options_branch_145
menu_options_branch_144:
   5b859:	31 c0                	xor    eax,eax
menu_options_branch_145:
   5b85b:	85 c0                	test   eax,eax
   5b85d:	0f 84 a4 00 00 00    	je     menu_options_branch_149
   5b863:	80 7d 76 00          	cmp    BYTE PTR [ebp+0x76],0x0
   5b867:	0f 85 9a 00 00 00    	jne    menu_options_branch_149
   5b86d:	c6 45 76 01          	mov    BYTE PTR [ebp+0x76],0x1
   5b871:	85 f6                	test   esi,esi
   5b873:	74 0e                	je     menu_options_branch_146
   5b875:	89 f0                	mov    eax,esi
   5b877:	31 d2                	xor    edx,edx
   5b879:	e8 a2 e6 fe ff       	call   W?$dt:TEXTBM$n()_
   5b87e:	e8 f5 67 01 00       	call   W?$dln(pnv)v
menu_options_branch_146:
   5b883:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 14612, src obj: 1, src ofs: 0x5b885, dst obj: 3, dst ofs: 0x10fa6
   5b88a:	74 33                	je     menu_options_branch_147
   5b88c:	b8 50 00 00 00       	mov    eax,0x50
   5b891:	e8 82 66 01 00       	call   W?$nwn(ui)pnv
   5b896:	85 c0                	test   eax,eax
   5b898:	74 56                	je     menu_options_branch_148
   5b89a:	6a 00                	push   0x0
   5b89c:	6a c3                	push   0xffffffc3
   5b89e:	68 16 01 00 00       	push   0x116
   5b8a3:	b9 9f da 00 00       	mov    ecx,@obj3:menu_cpp_variable_137                              ; fixup: num: 14611, src obj: 1, src ofs: 0x5b8a4, dst obj: 3, dst ofs: 0xda9f
   5b8a8:	68 02 01 00 00       	push   0x102
   5b8ad:	ba ac da 00 00       	mov    edx,@obj3:menu_cpp_variable_138                              ; fixup: num: 14610, src obj: 1, src ofs: 0x5b8ae, dst obj: 3, dst ofs: 0xdaac
   5b8b2:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14609, src obj: 1, src ofs: 0x5b8b4, dst obj: 3, dst ofs: 0x25bcc
   5b8b8:	e8 43 e3 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5b8bd:	eb 31                	jmp    menu_options_branch_148
menu_options_branch_147:
   5b8bf:	b8 50 00 00 00       	mov    eax,0x50
   5b8c4:	e8 4f 66 01 00       	call   W?$nwn(ui)pnv
   5b8c9:	85 c0                	test   eax,eax
   5b8cb:	74 23                	je     menu_options_branch_148
   5b8cd:	6a 00                	push   0x0
   5b8cf:	6a c3                	push   0xffffffc3
   5b8d1:	68 16 01 00 00       	push   0x116
   5b8d6:	b9 bb da 00 00       	mov    ecx,@obj3:menu_cpp_variable_139                              ; fixup: num: 14608, src obj: 1, src ofs: 0x5b8d7, dst obj: 3, dst ofs: 0xdabb
   5b8db:	68 02 01 00 00       	push   0x102
   5b8e0:	ba c8 da 00 00       	mov    edx,@obj3:menu_cpp_variable_140                              ; fixup: num: 14607, src obj: 1, src ofs: 0x5b8e1, dst obj: 3, dst ofs: 0xdac8
   5b8e5:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14622, src obj: 1, src ofs: 0x5b8e7, dst obj: 3, dst ofs: 0x25bcc
   5b8eb:	e8 10 e3 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_148:
   5b8f0:	89 c6                	mov    esi,eax
   5b8f2:	85 f6                	test   esi,esi
   5b8f4:	75 11                	jne    menu_options_branch_149
   5b8f6:	bb d8 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_141                              ; fixup: num: 14621, src obj: 1, src ofs: 0x5b8f7, dst obj: 3, dst ofs: 0xdad8
   5b8fb:	ba df 06 00 00       	mov    edx,0x6df
   5b900:	31 c0                	xor    eax,eax
   5b902:	e8 29 c7 fd ff       	call   _error_report
menu_options_branch_149:
   5b907:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14620, src obj: 1, src ofs: 0x5b909, dst obj: 3, dst ofs: 0x25978
   5b911:	7c 2b                	jl     menu_options_branch_150
   5b913:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14619, src obj: 1, src ofs: 0x5b915, dst obj: 3, dst ofs: 0x25978
   5b91d:	7f 1f                	jg     menu_options_branch_150
   5b91f:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14618, src obj: 1, src ofs: 0x5b921, dst obj: 3, dst ofs: 0x2597c
   5b929:	7c 13                	jl     menu_options_branch_150
   5b92b:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14617, src obj: 1, src ofs: 0x5b92d, dst obj: 3, dst ofs: 0x2597c
   5b935:	7f 07                	jg     menu_options_branch_150
   5b937:	b8 01 00 00 00       	mov    eax,0x1
   5b93c:	eb 02                	jmp    menu_options_branch_151
menu_options_branch_150:
   5b93e:	31 c0                	xor    eax,eax
menu_options_branch_151:
   5b940:	85 c0                	test   eax,eax
   5b942:	0f 85 a5 00 00 00    	jne    menu_options_branch_155
   5b948:	80 7d 76 00          	cmp    BYTE PTR [ebp+0x76],0x0
   5b94c:	0f 84 9b 00 00 00    	je     menu_options_branch_155
   5b952:	30 e4                	xor    ah,ah
   5b954:	88 65 76             	mov    BYTE PTR [ebp+0x76],ah
   5b957:	85 f6                	test   esi,esi
   5b959:	74 0e                	je     menu_options_branch_152
   5b95b:	89 f0                	mov    eax,esi
   5b95d:	31 d2                	xor    edx,edx
   5b95f:	e8 bc e5 fe ff       	call   W?$dt:TEXTBM$n()_
   5b964:	e8 0f 67 01 00       	call   W?$dln(pnv)v
menu_options_branch_152:
   5b969:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 14616, src obj: 1, src ofs: 0x5b96b, dst obj: 3, dst ofs: 0x10fa6
   5b970:	74 33                	je     menu_options_branch_153
   5b972:	b8 50 00 00 00       	mov    eax,0x50
   5b977:	e8 9c 65 01 00       	call   W?$nwn(ui)pnv
   5b97c:	85 c0                	test   eax,eax
   5b97e:	74 56                	je     menu_options_branch_154
   5b980:	6a 00                	push   0x0
   5b982:	6a c3                	push   0xffffffc3
   5b984:	68 16 01 00 00       	push   0x116
   5b989:	b9 f0 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_142                              ; fixup: num: 14615, src obj: 1, src ofs: 0x5b98a, dst obj: 3, dst ofs: 0xdaf0
   5b98e:	68 02 01 00 00       	push   0x102
   5b993:	ba fd da 00 00       	mov    edx,@obj3:menu_cpp_variable_143                              ; fixup: num: 14633, src obj: 1, src ofs: 0x5b994, dst obj: 3, dst ofs: 0xdafd
   5b998:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14632, src obj: 1, src ofs: 0x5b99a, dst obj: 3, dst ofs: 0x25bd0
   5b99e:	e8 5d e2 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5b9a3:	eb 31                	jmp    menu_options_branch_154
menu_options_branch_153:
   5b9a5:	b8 50 00 00 00       	mov    eax,0x50
   5b9aa:	e8 69 65 01 00       	call   W?$nwn(ui)pnv
   5b9af:	85 c0                	test   eax,eax
   5b9b1:	74 23                	je     menu_options_branch_154
   5b9b3:	6a 00                	push   0x0
   5b9b5:	6a c3                	push   0xffffffc3
   5b9b7:	68 16 01 00 00       	push   0x116
   5b9bc:	b9 0c db 00 00       	mov    ecx,@obj3:menu_cpp_variable_144                              ; fixup: num: 14631, src obj: 1, src ofs: 0x5b9bd, dst obj: 3, dst ofs: 0xdb0c
   5b9c1:	68 02 01 00 00       	push   0x102
   5b9c6:	ba 19 db 00 00       	mov    edx,@obj3:menu_cpp_variable_145                              ; fixup: num: 14630, src obj: 1, src ofs: 0x5b9c7, dst obj: 3, dst ofs: 0xdb19
   5b9cb:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14629, src obj: 1, src ofs: 0x5b9cd, dst obj: 3, dst ofs: 0x25bd0
   5b9d1:	e8 2a e2 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_154:
   5b9d6:	89 c6                	mov    esi,eax
   5b9d8:	85 f6                	test   esi,esi
   5b9da:	75 11                	jne    menu_options_branch_155
   5b9dc:	bb 29 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_146                              ; fixup: num: 14628, src obj: 1, src ofs: 0x5b9dd, dst obj: 3, dst ofs: 0xdb29
   5b9e1:	ba e9 06 00 00       	mov    edx,0x6e9
   5b9e6:	31 c0                	xor    eax,eax
   5b9e8:	e8 43 c6 fd ff       	call   _error_report
menu_options_branch_155:
   5b9ed:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14627, src obj: 1, src ofs: 0x5b9ef, dst obj: 3, dst ofs: 0x25974
   5b9f4:	0f 84 8b fa ff ff    	je     menu_options_branch_113
   5b9fa:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14626, src obj: 1, src ofs: 0x5b9fc, dst obj: 3, dst ofs: 0x25978
   5ba04:	7c 2b                	jl     menu_options_branch_156
   5ba06:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14625, src obj: 1, src ofs: 0x5ba08, dst obj: 3, dst ofs: 0x25978
   5ba10:	7f 1f                	jg     menu_options_branch_156
   5ba12:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14624, src obj: 1, src ofs: 0x5ba14, dst obj: 3, dst ofs: 0x2597c
   5ba1c:	7c 13                	jl     menu_options_branch_156
   5ba1e:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14623, src obj: 1, src ofs: 0x5ba20, dst obj: 3, dst ofs: 0x2597c
   5ba28:	7f 07                	jg     menu_options_branch_156
   5ba2a:	b8 01 00 00 00       	mov    eax,0x1
   5ba2f:	eb 02                	jmp    menu_options_branch_157
menu_options_branch_156:
   5ba31:	31 c0                	xor    eax,eax
menu_options_branch_157:
   5ba33:	85 c0                	test   eax,eax
   5ba35:	0f 84 4a fa ff ff    	je     menu_options_branch_113
   5ba3b:	85 f6                	test   esi,esi
   5ba3d:	74 0e                	je     menu_options_branch_158
   5ba3f:	89 f0                	mov    eax,esi
   5ba41:	31 d2                	xor    edx,edx
   5ba43:	e8 d8 e4 fe ff       	call   W?$dt:TEXTBM$n()_
   5ba48:	e8 2b 66 01 00       	call   W?$dln(pnv)v
menu_options_branch_158:
   5ba4d:	8a 1d a6 0f 01 00    	mov    bl,BYTE PTR ds:@obj3:use_quicktips                           ; fixup: num: 14644, src obj: 1, src ofs: 0x5ba4f, dst obj: 3, dst ofs: 0x10fa6
   5ba53:	80 f3 01             	xor    bl,0x1
   5ba56:	88 1d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,bl                           ; fixup: num: 14643, src obj: 1, src ofs: 0x5ba58, dst obj: 3, dst ofs: 0x10fa6
   5ba5c:	74 33                	je     menu_options_branch_159
   5ba5e:	b8 50 00 00 00       	mov    eax,0x50
   5ba63:	e8 b0 64 01 00       	call   W?$nwn(ui)pnv
   5ba68:	85 c0                	test   eax,eax
   5ba6a:	74 56                	je     menu_options_branch_160
   5ba6c:	6a 00                	push   0x0
   5ba6e:	6a c3                	push   0xffffffc3
   5ba70:	68 16 01 00 00       	push   0x116
   5ba75:	b9 41 db 00 00       	mov    ecx,@obj3:menu_cpp_variable_147                              ; fixup: num: 14642, src obj: 1, src ofs: 0x5ba76, dst obj: 3, dst ofs: 0xdb41
   5ba7a:	68 02 01 00 00       	push   0x102
   5ba7f:	ba 4e db 00 00       	mov    edx,@obj3:menu_cpp_variable_148                              ; fixup: num: 14641, src obj: 1, src ofs: 0x5ba80, dst obj: 3, dst ofs: 0xdb4e
   5ba84:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14640, src obj: 1, src ofs: 0x5ba86, dst obj: 3, dst ofs: 0x25bcc
   5ba8a:	e8 71 e1 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5ba8f:	eb 31                	jmp    menu_options_branch_160
menu_options_branch_159:
   5ba91:	b8 50 00 00 00       	mov    eax,0x50
   5ba96:	e8 7d 64 01 00       	call   W?$nwn(ui)pnv
   5ba9b:	85 c0                	test   eax,eax
   5ba9d:	74 23                	je     menu_options_branch_160
   5ba9f:	6a 00                	push   0x0
   5baa1:	6a c3                	push   0xffffffc3
   5baa3:	68 16 01 00 00       	push   0x116
   5baa8:	b9 5d db 00 00       	mov    ecx,@obj3:menu_cpp_variable_149                              ; fixup: num: 14639, src obj: 1, src ofs: 0x5baa9, dst obj: 3, dst ofs: 0xdb5d
   5baad:	68 02 01 00 00       	push   0x102
   5bab2:	ba 6a db 00 00       	mov    edx,@obj3:menu_cpp_variable_150                              ; fixup: num: 14638, src obj: 1, src ofs: 0x5bab3, dst obj: 3, dst ofs: 0xdb6a
   5bab7:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14637, src obj: 1, src ofs: 0x5bab9, dst obj: 3, dst ofs: 0x25bcc
   5babd:	e8 3e e1 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
menu_options_branch_160:
   5bac2:	89 c6                	mov    esi,eax
   5bac4:	85 f6                	test   esi,esi
   5bac6:	75 11                	jne    menu_options_branch_161
   5bac8:	bb 7a db 00 00       	mov    ebx,@obj3:menu_cpp_variable_151                              ; fixup: num: 14636, src obj: 1, src ofs: 0x5bac9, dst obj: 3, dst ofs: 0xdb7a
   5bacd:	ba f5 06 00 00       	mov    edx,0x6f5
   5bad2:	31 c0                	xor    eax,eax
   5bad4:	e8 57 c5 fd ff       	call   _error_report
menu_options_branch_161:
   5bad9:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14635, src obj: 1, src ofs: 0x5badb, dst obj: 3, dst ofs: 0x25974
   5bae0:	0f 84 9f f9 ff ff    	je     menu_options_branch_113
   5bae6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14634, src obj: 1, src ofs: 0x5bae7, dst obj: 3, dst ofs: 0x1a1d4
   5baeb:	e8 b0 fe fa ff       	call   update_mod_9
   5baf0:	eb e7                	jmp    menu_options_branch_161
menu_options_branch_162:
   5baf2:	31 c0                	xor    eax,eax
   5baf4:	a0 a6 0f 01 00       	mov    al,ds:@obj3:use_quicktips                                    ; fixup: num: 14651, src obj: 1, src ofs: 0x5baf5, dst obj: 3, dst ofs: 0x10fa6
   5baf9:	85 c0                	test   eax,eax
   5bafb:	75 0c                	jne    menu_options_branch_163
   5bafd:	bb 92 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_152                              ; fixup: num: 14650, src obj: 1, src ofs: 0x5bafe, dst obj: 3, dst ofs: 0xdb92
   5bb02:	ba 96 db 00 00       	mov    edx,@obj3:menu_cpp_variable_153                              ; fixup: num: 14649, src obj: 1, src ofs: 0x5bb03, dst obj: 3, dst ofs: 0xdb96
   5bb07:	eb 0a                	jmp    menu_options_branch_164
menu_options_branch_163:
   5bb09:	bb a1 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_154                              ; fixup: num: 14648, src obj: 1, src ofs: 0x5bb0a, dst obj: 3, dst ofs: 0xdba1
   5bb0e:	ba a4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_155                              ; fixup: num: 14647, src obj: 1, src ofs: 0x5bb0f, dst obj: 3, dst ofs: 0xdba4
menu_options_branch_164:
   5bb13:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14646, src obj: 1, src ofs: 0x5bb14, dst obj: 3, dst ofs: 0x32438
   5bb18:	e8 53 1d 01 00       	call   set
   5bb1d:	8b 5d 2a             	mov    ebx,DWORD PTR [ebp+0x2a]
   5bb20:	85 db                	test   ebx,ebx
   5bb22:	74 0e                	je     menu_options_branch_165
   5bb24:	89 d8                	mov    eax,ebx
   5bb26:	31 d2                	xor    edx,edx
   5bb28:	e8 f3 e3 fe ff       	call   W?$dt:TEXTBM$n()_
   5bb2d:	e8 46 65 01 00       	call   W?$dln(pnv)v
menu_options_branch_165:
   5bb32:	85 ff                	test   edi,edi
   5bb34:	74 0e                	je     menu_options_branch_166
   5bb36:	89 f8                	mov    eax,edi
   5bb38:	31 d2                	xor    edx,edx
   5bb3a:	e8 e1 e3 fe ff       	call   W?$dt:TEXTBM$n()_
   5bb3f:	e8 34 65 01 00       	call   W?$dln(pnv)v
menu_options_branch_166:
   5bb44:	85 f6                	test   esi,esi
   5bb46:	74 0e                	je     menu_options_branch_167
   5bb48:	89 f0                	mov    eax,esi
   5bb4a:	31 d2                	xor    edx,edx
   5bb4c:	e8 cf e3 fe ff       	call   W?$dt:TEXTBM$n()_
   5bb51:	e8 22 65 01 00       	call   W?$dln(pnv)v
menu_options_branch_167:
   5bb56:	8b 75 2e             	mov    esi,DWORD PTR [ebp+0x2e]
   5bb59:	85 f6                	test   esi,esi
   5bb5b:	74 0e                	je     menu_options_branch_168
   5bb5d:	89 f0                	mov    eax,esi
   5bb5f:	31 d2                	xor    edx,edx
   5bb61:	e8 ba e3 fe ff       	call   W?$dt:TEXTBM$n()_
   5bb66:	e8 0d 65 01 00       	call   W?$dln(pnv)v
menu_options_branch_168:
   5bb6b:	84 c9                	test   cl,cl
   5bb6d:	0f 84 e6 f6 ff ff    	je     menu_options_branch_100
   5bb73:	8b 45 1e             	mov    eax,DWORD PTR [ebp+0x1e]
   5bb76:	8b 55 26             	mov    edx,DWORD PTR [ebp+0x26]
   5bb79:	e8 c0 52 01 00       	call   fclose_
   5bb7e:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14645, src obj: 1, src ofs: 0x5bb7f, dst obj: 3, dst ofs: 0x25a88
   5bb83:	8b 7d 26             	mov    edi,DWORD PTR [ebp+0x26]
   5bb86:	e8 65 0b ff ff       	call   remove_bitmap
   5bb8b:	85 ff                	test   edi,edi
   5bb8d:	74 0e                	je     menu_options_branch_169
   5bb8f:	89 f8                	mov    eax,edi
   5bb91:	31 d2                	xor    edx,edx
   5bb93:	e8 08 f8 fd ff       	call   W?$dt:BTMAP$n()_
   5bb98:	e8 db 64 01 00       	call   W?$dln(pnv)v
menu_options_branch_169:
   5bb9d:	8b 45 22             	mov    eax,DWORD PTR [ebp+0x22]
   5bba0:	e8 43 58 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5bba5:	e9 29 f2 ff ff       	jmp    menu_options_branch_61
menu_options_reference_4:
   5bbaa:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14658, src obj: 1, src ofs: 0x5bbab, dst obj: 3, dst ofs: 0x17e5c
   5bbaf:	b2 01                	mov    dl,0x1
   5bbb1:	29 c9                	sub    ecx,ecx
   5bbb3:	49                   	dec    ecx
   5bbb4:	31 c0                	xor    eax,eax
   5bbb6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5bbb8:	f7 d1                	not    ecx
   5bbba:	49                   	dec    ecx
   5bbbb:	88 55 7a             	mov    BYTE PTR [ebp+0x7a],dl
   5bbbe:	85 c9                	test   ecx,ecx
   5bbc0:	74 29                	je     menu_options_branch_172
   5bbc2:	be af db 00 00       	mov    esi,@obj3:menu_cpp_variable_156                              ; fixup: num: 14657, src obj: 1, src ofs: 0x5bbc3, dst obj: 3, dst ofs: 0xdbaf
   5bbc7:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14656, src obj: 1, src ofs: 0x5bbc8, dst obj: 3, dst ofs: 0x17e5c
   5bbcc:	57                   	push   edi
menu_options_branch_170:
   5bbcd:	8a 06                	mov    al,BYTE PTR [esi]
   5bbcf:	88 07                	mov    BYTE PTR [edi],al
   5bbd1:	3c 00                	cmp    al,0x0
   5bbd3:	74 10                	je     menu_options_branch_171
   5bbd5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5bbd8:	83 c6 02             	add    esi,0x2
   5bbdb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5bbde:	83 c7 02             	add    edi,0x2
   5bbe1:	3c 00                	cmp    al,0x0
   5bbe3:	75 e8                	jne    menu_options_branch_170
menu_options_branch_171:
   5bbe5:	5f                   	pop    edi
   5bbe6:	e9 e4 00 00 00       	jmp    menu_options_branch_180
menu_options_branch_172:
   5bbeb:	31 db                	xor    ebx,ebx
   5bbed:	31 f6                	xor    esi,esi
   5bbef:	eb 08                	jmp    menu_options_branch_174
menu_options_branch_173:
   5bbf1:	83 c3 04             	add    ebx,0x4
   5bbf4:	83 fb 1c             	cmp    ebx,0x1c
   5bbf7:	74 20                	je     menu_options_branch_176
menu_options_branch_174:
   5bbf9:	8b 7c 2b ce          	mov    edi,DWORD PTR [ebx+ebp*1-0x32]
   5bbfd:	39 fe                	cmp    esi,edi
   5bbff:	74 f0                	je     menu_options_branch_173
   5bc01:	89 f8                	mov    eax,edi
   5bc03:	85 ff                	test   edi,edi
   5bc05:	74 0c                	je     menu_options_branch_175
   5bc07:	89 f2                	mov    edx,esi
   5bc09:	e8 12 e3 fe ff       	call   W?$dt:TEXTBM$n()_
   5bc0e:	e8 65 64 01 00       	call   W?$dln(pnv)v
menu_options_branch_175:
   5bc13:	89 74 2b ce          	mov    DWORD PTR [ebx+ebp*1-0x32],esi
   5bc17:	eb d8                	jmp    menu_options_branch_173
menu_options_branch_176:
   5bc19:	8b 55 52             	mov    edx,DWORD PTR [ebp+0x52]
   5bc1c:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14655, src obj: 1, src ofs: 0x5bc1d, dst obj: 3, dst ofs: 0x25a88
   5bc21:	e8 ca 0a ff ff       	call   remove_bitmap
   5bc26:	8b 55 ea             	mov    edx,DWORD PTR [ebp-0x16]
   5bc29:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14654, src obj: 1, src ofs: 0x5bc2a, dst obj: 3, dst ofs: 0x25a88
   5bc2e:	e8 bd 0a ff ff       	call   remove_bitmap
   5bc33:	8b 55 ee             	mov    edx,DWORD PTR [ebp-0x12]
   5bc36:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14653, src obj: 1, src ofs: 0x5bc37, dst obj: 3, dst ofs: 0x25a88
   5bc3b:	e8 b0 0a ff ff       	call   remove_bitmap
   5bc40:	8b 55 56             	mov    edx,DWORD PTR [ebp+0x56]
   5bc43:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14652, src obj: 1, src ofs: 0x5bc44, dst obj: 3, dst ofs: 0x25a88
   5bc48:	e8 a3 0a ff ff       	call   remove_bitmap
   5bc4d:	8b 55 5a             	mov    edx,DWORD PTR [ebp+0x5a]
   5bc50:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14560, src obj: 1, src ofs: 0x5bc51, dst obj: 3, dst ofs: 0x25a88
   5bc55:	b9 3a 02 00 00       	mov    ecx,0x23a
   5bc5a:	e8 91 0a ff ff       	call   remove_bitmap
   5bc5f:	8b 55 fa             	mov    edx,DWORD PTR [ebp-0x6]
   5bc62:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14559, src obj: 1, src ofs: 0x5bc63, dst obj: 3, dst ofs: 0x25a88
   5bc67:	31 db                	xor    ebx,ebx
   5bc69:	e8 82 0a ff ff       	call   remove_bitmap
   5bc6e:	68 b4 01 00 00       	push   0x1b4
   5bc73:	ba 58 00 00 00       	mov    edx,0x58
   5bc78:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14558, src obj: 1, src ofs: 0x5bc79, dst obj: 3, dst ofs: 0x25a84
   5bc7d:	e8 de 1d ff ff       	call   refresh_area
   5bc82:	e8 49 06 00 00       	call   prompt_password
   5bc87:	89 c3                	mov    ebx,eax
   5bc89:	85 c0                	test   eax,eax
   5bc8b:	74 3b                	je     menu_options_branch_179
   5bc8d:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14557, src obj: 1, src ofs: 0x5bc8e, dst obj: 3, dst ofs: 0x17e5c
   5bc92:	89 c6                	mov    esi,eax
   5bc94:	57                   	push   edi
menu_options_branch_177:
   5bc95:	8a 06                	mov    al,BYTE PTR [esi]
   5bc97:	88 07                	mov    BYTE PTR [edi],al
   5bc99:	3c 00                	cmp    al,0x0
   5bc9b:	74 10                	je     menu_options_branch_178
   5bc9d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5bca0:	83 c6 02             	add    esi,0x2
   5bca3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5bca6:	83 c7 02             	add    edi,0x2
   5bca9:	3c 00                	cmp    al,0x0
   5bcab:	75 e8                	jne    menu_options_branch_177
menu_options_branch_178:
   5bcad:	5f                   	pop    edi
   5bcae:	57                   	push   edi
   5bcaf:	68 b0 db 00 00       	push   @obj3:menu_cpp_variable_157                                  ; fixup: num: 14556, src obj: 1, src ofs: 0x5bcb0, dst obj: 3, dst ofs: 0xdbb0
   5bcb4:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 14662, src obj: 1, src ofs: 0x5bcb5, dst obj: 3, dst ofs: 0x237fc
   5bcb9:	e8 23 4f 01 00       	call   sprintf_
   5bcbe:	83 c4 0c             	add    esp,0xc
   5bcc1:	89 d8                	mov    eax,ebx
   5bcc3:	e8 20 57 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
menu_options_branch_179:
   5bcc8:	c7 45 fe 01 00 00 00 	mov    DWORD PTR [ebp-0x2],0x1
menu_options_branch_180:
   5bccf:	ba ca db 00 00       	mov    edx,@obj3:menu_cpp_variable_158                              ; fixup: num: 14661, src obj: 1, src ofs: 0x5bcd0, dst obj: 3, dst ofs: 0xdbca
   5bcd4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14660, src obj: 1, src ofs: 0x5bcd5, dst obj: 3, dst ofs: 0x32438
   5bcd9:	e8 f2 1a 01 00       	call   get
   5bcde:	50                   	push   eax
   5bcdf:	68 cf db 00 00       	push   @obj3:menu_cpp_variable_159                                  ; fixup: num: 14659, src obj: 1, src ofs: 0x5bce0, dst obj: 3, dst ofs: 0xdbcf
   5bce4:	8d 85 ee fe ff ff    	lea    eax,[ebp-0x112]
   5bcea:	50                   	push   eax
   5bceb:	e8 f1 4e 01 00       	call   sprintf_
   5bcf0:	83 c4 0c             	add    esp,0xc
   5bcf3:	68 02 02 00 00       	push   0x202
   5bcf8:	8d 85 ee fe ff ff    	lea    eax,[ebp-0x112]
   5bcfe:	50                   	push   eax
   5bcff:	e8 72 58 01 00       	call   open_
   5bd04:	89 c6                	mov    esi,eax
   5bd06:	83 c4 08             	add    esp,0x8
   5bd09:	83 f8 ff             	cmp    eax,0xffffffff
   5bd0c:	74 0c                	je     menu_options_branch_181
   5bd0e:	bb 0a 00 00 00       	mov    ebx,0xa
   5bd13:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 14570, src obj: 1, src ofs: 0x5bd14, dst obj: 3, dst ofs: 0x17e5c
   5bd18:	eb 25                	jmp    menu_options_branch_182
menu_options_branch_181:
   5bd1a:	68 80 01 00 00       	push   0x180
   5bd1f:	68 22 02 00 00       	push   0x222
   5bd24:	8d 85 ee fe ff ff    	lea    eax,[ebp-0x112]
   5bd2a:	50                   	push   eax
   5bd2b:	bb 0a 00 00 00       	mov    ebx,0xa
   5bd30:	e8 41 58 01 00       	call   open_
   5bd35:	83 c4 0c             	add    esp,0xc
   5bd38:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 14569, src obj: 1, src ofs: 0x5bd39, dst obj: 3, dst ofs: 0x17e5c
   5bd3d:	89 c6                	mov    esi,eax
menu_options_branch_182:
   5bd3f:	e8 80 5a 01 00       	call   write_
   5bd44:	89 f0                	mov    eax,esi
   5bd46:	e8 c5 61 01 00       	call   close_
   5bd4b:	83 7d fe 00          	cmp    DWORD PTR [ebp-0x2],0x0
   5bd4f:	0f 85 dd ea ff ff    	jne    menu_options_branch_29
   5bd55:	e9 79 f0 ff ff       	jmp    menu_options_branch_61
menu_options_branch_183:
   5bd5a:	30 e4                	xor    ah,ah
   5bd5c:	8b 5d 32             	mov    ebx,DWORD PTR [ebp+0x32]
   5bd5f:	88 65 6a             	mov    BYTE PTR [ebp+0x6a],ah
   5bd62:	83 fb 03             	cmp    ebx,0x3
   5bd65:	0f 87 68 f0 ff ff    	ja     menu_options_branch_61
   5bd6b:	89 d8                	mov    eax,ebx
   5bd6d:	2e ff 24 85 dc a3 05 00 	jmp    DWORD PTR cs:[eax*4+@obj1:menu_reference_11]              ; fixup: num: 14568, src obj: 1, src ofs: 0x5bd71, dst obj: 1, dst ofs: 0x5a3dc
menu_options_branch_184:
   5bd75:	ba de db 00 00       	mov    edx,@obj3:menu_cpp_variable_160                              ; fixup: num: 14567, src obj: 1, src ofs: 0x5bd76, dst obj: 3, dst ofs: 0xdbde
   5bd7a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14566, src obj: 1, src ofs: 0x5bd7b, dst obj: 3, dst ofs: 0x32438
   5bd7f:	8b 1d 54 7e 01 00    	mov    ebx,DWORD PTR ds:@obj3:gamma_correction                      ; fixup: num: 14565, src obj: 1, src ofs: 0x5bd81, dst obj: 3, dst ofs: 0x17e54
   5bd85:	e8 f6 1d 01 00       	call   set_mod_92
   5bd8a:	ba e4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_161                              ; fixup: num: 14564, src obj: 1, src ofs: 0x5bd8b, dst obj: 3, dst ofs: 0xdbe4
   5bd8f:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14563, src obj: 1, src ofs: 0x5bd90, dst obj: 3, dst ofs: 0x32438
   5bd94:	8b 1d ac 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:fx_volume                             ; fixup: num: 14562, src obj: 1, src ofs: 0x5bd96, dst obj: 3, dst ofs: 0x10fac
   5bd9a:	e8 e1 1d 01 00       	call   set_mod_92
   5bd9f:	ba ee db 00 00       	mov    edx,@obj3:menu_cpp_variable_162                              ; fixup: num: 14561, src obj: 1, src ofs: 0x5bda0, dst obj: 3, dst ofs: 0xdbee
   5bda4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14575, src obj: 1, src ofs: 0x5bda5, dst obj: 3, dst ofs: 0x32438
   5bda9:	8b 1d b0 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:music_volume                          ; fixup: num: 14574, src obj: 1, src ofs: 0x5bdab, dst obj: 3, dst ofs: 0x10fb0
   5bdaf:	b9 18 00 00 00       	mov    ecx,0x18
   5bdb4:	e8 c7 1d 01 00       	call   set_mod_92
   5bdb9:	31 db                	xor    ebx,ebx
   5bdbb:	eb 08                	jmp    menu_options_branch_186
menu_options_branch_185:
   5bdbd:	83 e9 04             	sub    ecx,0x4
   5bdc0:	83 f9 fc             	cmp    ecx,0xfffffffc
   5bdc3:	74 20                	je     menu_options_branch_188
menu_options_branch_186:
   5bdc5:	8b 74 29 ce          	mov    esi,DWORD PTR [ecx+ebp*1-0x32]
   5bdc9:	39 f3                	cmp    ebx,esi
   5bdcb:	74 f0                	je     menu_options_branch_185
   5bdcd:	89 f0                	mov    eax,esi
   5bdcf:	85 f6                	test   esi,esi
   5bdd1:	74 0c                	je     menu_options_branch_187
   5bdd3:	89 da                	mov    edx,ebx
   5bdd5:	e8 46 e1 fe ff       	call   W?$dt:TEXTBM$n()_
   5bdda:	e8 99 62 01 00       	call   W?$dln(pnv)v
menu_options_branch_187:
   5bddf:	89 5c 29 ce          	mov    DWORD PTR [ecx+ebp*1-0x32],ebx
   5bde3:	eb d8                	jmp    menu_options_branch_185
menu_options_branch_188:
   5bde5:	8b 45 52             	mov    eax,DWORD PTR [ebp+0x52]
   5bde8:	85 c0                	test   eax,eax
   5bdea:	74 21                	je     menu_options_branch_189
   5bdec:	89 c2                	mov    edx,eax
   5bdee:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14573, src obj: 1, src ofs: 0x5bdef, dst obj: 3, dst ofs: 0x25a88
   5bdf3:	e8 f8 08 ff ff       	call   remove_bitmap
   5bdf8:	83 7d 52 00          	cmp    DWORD PTR [ebp+0x52],0x0
   5bdfc:	74 0f                	je     menu_options_branch_189
   5bdfe:	8b 45 52             	mov    eax,DWORD PTR [ebp+0x52]
   5be01:	31 d2                	xor    edx,edx
   5be03:	e8 98 f5 fd ff       	call   W?$dt:BTMAP$n()_
   5be08:	e8 6b 62 01 00       	call   W?$dln(pnv)v
menu_options_branch_189:
   5be0d:	8b 5d ea             	mov    ebx,DWORD PTR [ebp-0x16]
   5be10:	85 db                	test   ebx,ebx
   5be12:	74 1e                	je     menu_options_branch_190
   5be14:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14572, src obj: 1, src ofs: 0x5be15, dst obj: 3, dst ofs: 0x25a88
   5be19:	89 da                	mov    edx,ebx
   5be1b:	e8 d0 08 ff ff       	call   remove_bitmap
   5be20:	85 db                	test   ebx,ebx
   5be22:	74 0e                	je     menu_options_branch_190
   5be24:	89 d8                	mov    eax,ebx
   5be26:	31 d2                	xor    edx,edx
   5be28:	e8 73 f5 fd ff       	call   W?$dt:BTMAP$n()_
   5be2d:	e8 46 62 01 00       	call   W?$dln(pnv)v
menu_options_branch_190:
   5be32:	8b 75 ee             	mov    esi,DWORD PTR [ebp-0x12]
   5be35:	85 f6                	test   esi,esi
   5be37:	74 1e                	je     menu_options_branch_191
   5be39:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14571, src obj: 1, src ofs: 0x5be3a, dst obj: 3, dst ofs: 0x25a88
   5be3e:	89 f2                	mov    edx,esi
   5be40:	e8 ab 08 ff ff       	call   remove_bitmap
   5be45:	85 f6                	test   esi,esi
   5be47:	74 0e                	je     menu_options_branch_191
   5be49:	89 f0                	mov    eax,esi
   5be4b:	31 d2                	xor    edx,edx
   5be4d:	e8 4e f5 fd ff       	call   W?$dt:BTMAP$n()_
   5be52:	e8 21 62 01 00       	call   W?$dln(pnv)v
menu_options_branch_191:
   5be57:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
   5be5a:	85 c0                	test   eax,eax
   5be5c:	74 21                	je     menu_options_branch_192
   5be5e:	89 c2                	mov    edx,eax
   5be60:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14580, src obj: 1, src ofs: 0x5be61, dst obj: 3, dst ofs: 0x25a88
   5be65:	e8 86 08 ff ff       	call   remove_bitmap
   5be6a:	83 7d 56 00          	cmp    DWORD PTR [ebp+0x56],0x0
   5be6e:	74 0f                	je     menu_options_branch_192
   5be70:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
   5be73:	31 d2                	xor    edx,edx
   5be75:	e8 26 f5 fd ff       	call   W?$dt:BTMAP$n()_
   5be7a:	e8 f9 61 01 00       	call   W?$dln(pnv)v
menu_options_branch_192:
   5be7f:	8b 5d 5a             	mov    ebx,DWORD PTR [ebp+0x5a]
   5be82:	85 db                	test   ebx,ebx
   5be84:	74 1e                	je     menu_options_branch_193
   5be86:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14579, src obj: 1, src ofs: 0x5be87, dst obj: 3, dst ofs: 0x25a88
   5be8b:	89 da                	mov    edx,ebx
   5be8d:	e8 5e 08 ff ff       	call   remove_bitmap
   5be92:	85 db                	test   ebx,ebx
   5be94:	74 0e                	je     menu_options_branch_193
   5be96:	89 d8                	mov    eax,ebx
   5be98:	31 d2                	xor    edx,edx
   5be9a:	e8 01 f5 fd ff       	call   W?$dt:BTMAP$n()_
   5be9f:	e8 d4 61 01 00       	call   W?$dln(pnv)v
menu_options_branch_193:
   5bea4:	8b 75 fa             	mov    esi,DWORD PTR [ebp-0x6]
   5bea7:	85 f6                	test   esi,esi
   5bea9:	74 1e                	je     menu_options_branch_194
   5beab:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14578, src obj: 1, src ofs: 0x5beac, dst obj: 3, dst ofs: 0x25a88
   5beb0:	89 f2                	mov    edx,esi
   5beb2:	e8 39 08 ff ff       	call   remove_bitmap
   5beb7:	85 f6                	test   esi,esi
   5beb9:	74 0e                	je     menu_options_branch_194
   5bebb:	89 f0                	mov    eax,esi
   5bebd:	31 d2                	xor    edx,edx
   5bebf:	e8 dc f4 fd ff       	call   W?$dt:BTMAP$n()_
   5bec4:	e8 af 61 01 00       	call   W?$dln(pnv)v
menu_options_branch_194:
   5bec9:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14577, src obj: 1, src ofs: 0x5beca, dst obj: 3, dst ofs: 0x25a88
   5bece:	8b 15 b4 60 02 00    	mov    edx,DWORD PTR ds:@obj3:harv_logo_btmap                       ; fixup: num: 14576, src obj: 1, src ofs: 0x5bed0, dst obj: 3, dst ofs: 0x260b4
   5bed4:	e8 17 08 ff ff       	call   remove_bitmap
   5bed9:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5bedc:	85 c0                	test   eax,eax
   5bede:	74 2c                	je     menu_options_branch_196
   5bee0:	80 7d 7e 00          	cmp    BYTE PTR [ebp+0x7e],0x0
   5bee4:	74 11                	je     menu_options_branch_195
   5bee6:	e8 f5 d9 fa ff       	call   playing
   5beeb:	84 c0                	test   al,al
   5beed:	74 08                	je     menu_options_branch_195
   5beef:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5bef2:	e8 49 d9 fa ff       	call   stop
menu_options_branch_195:
   5bef7:	83 7d 5e 00          	cmp    DWORD PTR [ebp+0x5e],0x0
   5befb:	74 0f                	je     menu_options_branch_196
   5befd:	8b 45 5e             	mov    eax,DWORD PTR [ebp+0x5e]
   5bf00:	31 d2                	xor    edx,edx
   5bf02:	e8 29 cb fa ff       	call   W?$dt:SOUND$n()_
   5bf07:	e8 6c 61 01 00       	call   W?$dln(pnv)v
menu_options_branch_196:
   5bf0c:	68 b4 01 00 00       	push   0x1b4
   5bf11:	b9 3a 02 00 00       	mov    ecx,0x23a
   5bf16:	ba 58 00 00 00       	mov    edx,0x58
   5bf1b:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14591, src obj: 1, src ofs: 0x5bf1c, dst obj: 3, dst ofs: 0x25a84
   5bf20:	31 db                	xor    ebx,ebx
   5bf22:	e8 39 1b ff ff       	call   refresh_area
   5bf27:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14590, src obj: 1, src ofs: 0x5bf28, dst obj: 3, dst ofs: 0x25a84
   5bf2c:	e8 6f 1d ff ff       	call   update_mod_84
menu_options_branch_197:
   5bf31:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14589, src obj: 1, src ofs: 0x5bf34, dst obj: 3, dst ofs: 0x25908
   5bf38:	83 f8 01             	cmp    eax,0x1
   5bf3b:	74 f4                	je     menu_options_branch_197
menu_options_branch_198:
   5bf3d:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14588, src obj: 1, src ofs: 0x5bf3f, dst obj: 3, dst ofs: 0x25974
   5bf44:	75 f7                	jne    menu_options_branch_198
   5bf46:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   5bf4c:	5d                   	pop    ebp
   5bf4d:	5f                   	pop    edi
   5bf4e:	5e                   	pop    esi
   5bf4f:	5a                   	pop    edx
   5bf50:	59                   	pop    ecx
   5bf51:	5b                   	pop    ebx
   5bf52:	c3                   	ret    
   5bf53:	90                   	nop
menu_options_reference_5:                                                                           ; access size: DWORDS
   5bf54:	26 c0 05 00 6d c0 05 00 	rol    BYTE PTR es:@obj1:add_on_off_text_reference_200,0x0       ; fixup: num: 14587, src obj: 1, src ofs: 0x5bf54, dst obj: 1, dst ofs: 0x5c026; fixup: num: 14586, src obj: 1, src ofs: 0x5bf58, dst obj: 1, dst ofs: 0x5c06d
   5bf5c:	2d c1 05 00 c8       	sub    eax,0xc80005c1                                               ; fixup: num: 14585, src obj: 1, src ofs: 0x5bf5c, dst obj: 1, dst ofs: 0x5c12d; fixup: num: 14584, src obj: 1, src ofs: 0x5bf60, dst obj: 1, dst ofs: 0x5c0c8
   5bf61:	c0 05 00 8d 80 00 00 	rol    BYTE PTR ds:0x808d00,0x0
   5bf68:	00 00                	add    BYTE PTR [eax],al
   5bf6a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'add_on_off_text'                    -
;-------------------------------------------------
add_on_off_text:
   5bf70:	51                   	push   ecx
   5bf71:	52                   	push   edx
   5bf72:	56                   	push   esi
   5bf73:	57                   	push   edi
   5bf74:	89 c1                	mov    ecx,eax
   5bf76:	be 0a dd 00 00       	mov    esi,@obj3:menu_cpp_variable_176                              ; fixup: num: 14583, src obj: 1, src ofs: 0x5bf77, dst obj: 3, dst ofs: 0xdd0a
   5bf7b:	bf 4c 5b 02 00       	mov    edi,@obj3:buf                                                ; fixup: num: 14582, src obj: 1, src ofs: 0x5bf7c, dst obj: 3, dst ofs: 0x25b4c
   5bf80:	57                   	push   edi
add_on_off_text_branch_1:
   5bf81:	8a 06                	mov    al,BYTE PTR [esi]
   5bf83:	88 07                	mov    BYTE PTR [edi],al
   5bf85:	3c 00                	cmp    al,0x0
   5bf87:	74 10                	je     add_on_off_text_branch_2
   5bf89:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5bf8c:	83 c6 02             	add    esi,0x2
   5bf8f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5bf92:	83 c7 02             	add    edi,0x2
   5bf95:	3c 00                	cmp    al,0x0
   5bf97:	75 e8                	jne    add_on_off_text_branch_1
add_on_off_text_branch_2:
   5bf99:	5f                   	pop    edi
   5bf9a:	8d 41 fd             	lea    eax,[ecx-0x3]
   5bf9d:	83 f8 03             	cmp    eax,0x3
   5bfa0:	0f 87 87 01 00 00    	ja     add_on_off_text_reference_4
   5bfa6:	2e ff 24 85 54 bf 05 00 	jmp    DWORD PTR cs:[eax*4+@obj1:menu_options_reference_5]       ; fixup: num: 14581, src obj: 1, src ofs: 0x5bfaa, dst obj: 1, dst ofs: 0x5bf54
add_on_off_text_branch_3:
   5bfae:	ba 0b dd 00 00       	mov    edx,@obj3:menu_cpp_variable_177                              ; fixup: num: 14600, src obj: 1, src ofs: 0x5bfaf, dst obj: 3, dst ofs: 0xdd0b
   5bfb3:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14599, src obj: 1, src ofs: 0x5bfb4, dst obj: 3, dst ofs: 0x25b3c
   5bfb8:	e8 13 18 01 00       	call   get
   5bfbd:	50                   	push   eax
   5bfbe:	68 0e dd 00 00       	push   @obj3:menu_cpp_variable_178                                  ; fixup: num: 14598, src obj: 1, src ofs: 0x5bfbf, dst obj: 3, dst ofs: 0xdd0e
   5bfc3:	57                   	push   edi
   5bfc4:	e8 18 4c 01 00       	call   sprintf_
   5bfc9:	83 c4 0c             	add    esp,0xc
   5bfcc:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14597, src obj: 1, src ofs: 0x5bfcd, dst obj: 3, dst ofs: 0x25b4c
   5bfd1:	5f                   	pop    edi
   5bfd2:	5e                   	pop    esi
   5bfd3:	5a                   	pop    edx
   5bfd4:	59                   	pop    ecx
   5bfd5:	c3                   	ret    
add_on_off_text_branch_4:
   5bfd6:	ba 14 dd 00 00       	mov    edx,@obj3:menu_cpp_variable_179                              ; fixup: num: 14596, src obj: 1, src ofs: 0x5bfd7, dst obj: 3, dst ofs: 0xdd14
   5bfdb:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14595, src obj: 1, src ofs: 0x5bfdc, dst obj: 3, dst ofs: 0x25b3c
   5bfe0:	e8 eb 17 01 00       	call   get
   5bfe5:	50                   	push   eax
   5bfe6:	68 18 dd 00 00       	push   @obj3:menu_cpp_variable_180                                  ; fixup: num: 14594, src obj: 1, src ofs: 0x5bfe7, dst obj: 3, dst ofs: 0xdd18
   5bfeb:	57                   	push   edi
   5bfec:	e8 f0 4b 01 00       	call   sprintf_
   5bff1:	83 c4 0c             	add    esp,0xc
   5bff4:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14593, src obj: 1, src ofs: 0x5bff5, dst obj: 3, dst ofs: 0x25b4c
   5bff9:	5f                   	pop    edi
   5bffa:	5e                   	pop    esi
   5bffb:	5a                   	pop    edx
   5bffc:	59                   	pop    ecx
   5bffd:	c3                   	ret    
add_on_off_text_branch_5:
   5bffe:	ba 1e dd 00 00       	mov    edx,@obj3:menu_cpp_variable_181                              ; fixup: num: 14592, src obj: 1, src ofs: 0x5bfff, dst obj: 3, dst ofs: 0xdd1e; fixup: num: 14963, src obj: 1, src ofs: 0x5bfff, dst obj: 3, dst ofs: 0xdd1e
   5c003:	b8 3c 5b 02 00       	mov    eax,@obj3:menu_ini                                           ; fixup: num: 14962, src obj: 1, src ofs: 0x5c004, dst obj: 3, dst ofs: 0x25b3c
   5c008:	e8 c3 17 01 00       	call   get
   5c00d:	50                   	push   eax
   5c00e:	68 24 dd 00 00       	push   @obj3:menu_cpp_variable_182                                  ; fixup: num: 14961, src obj: 1, src ofs: 0x5c00f, dst obj: 3, dst ofs: 0xdd24
   5c013:	57                   	push   edi
   5c014:	e8 c8 4b 01 00       	call   sprintf_
   5c019:	83 c4 0c             	add    esp,0xc
   5c01c:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14960, src obj: 1, src ofs: 0x5c01d, dst obj: 3, dst ofs: 0x25b4c
   5c021:	5f                   	pop    edi
   5c022:	5e                   	pop    esi
   5c023:	5a                   	pop    edx
   5c024:	59                   	pop    ecx
   5c025:	c3                   	ret    
add_on_off_text_reference_1:
   5c026:	a0 58 7e 01 00       	mov    al,ds:@obj3:text_dialog                                      ; fixup: num: 14959, src obj: 1, src ofs: 0x5c027, dst obj: 3, dst ofs: 0x17e58
   5c02b:	3c 01                	cmp    al,0x1
   5c02d:	72 08                	jb     add_on_off_text_branch_6
   5c02f:	76 a5                	jbe    add_on_off_text_branch_4
   5c031:	3c 02                	cmp    al,0x2
   5c033:	74 c9                	je     add_on_off_text_branch_5
   5c035:	eb 08                	jmp    add_on_off_text_branch_7
add_on_off_text_branch_6:
   5c037:	84 c0                	test   al,al
   5c039:	0f 84 6f ff ff ff    	je     add_on_off_text_branch_3
add_on_off_text_branch_7:
   5c03f:	be 2a dd 00 00       	mov    esi,@obj3:menu_cpp_variable_183                              ; fixup: num: 14958, src obj: 1, src ofs: 0x5c040, dst obj: 3, dst ofs: 0xdd2a
   5c044:	bf 4c 5b 02 00       	mov    edi,@obj3:buf                                                ; fixup: num: 14957, src obj: 1, src ofs: 0x5c045, dst obj: 3, dst ofs: 0x25b4c
   5c049:	57                   	push   edi
add_on_off_text_branch_8:
   5c04a:	8a 06                	mov    al,BYTE PTR [esi]
   5c04c:	88 07                	mov    BYTE PTR [edi],al
   5c04e:	3c 00                	cmp    al,0x0
   5c050:	74 10                	je     add_on_off_text_branch_9
   5c052:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c055:	83 c6 02             	add    esi,0x2
   5c058:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c05b:	83 c7 02             	add    edi,0x2
   5c05e:	3c 00                	cmp    al,0x0
   5c060:	75 e8                	jne    add_on_off_text_branch_8
add_on_off_text_branch_9:
   5c062:	5f                   	pop    edi
   5c063:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14975, src obj: 1, src ofs: 0x5c064, dst obj: 3, dst ofs: 0x25b4c
   5c068:	5f                   	pop    edi
   5c069:	5e                   	pop    esi
   5c06a:	5a                   	pop    edx
   5c06b:	59                   	pop    ecx
   5c06c:	c3                   	ret    
add_on_off_text_reference_2:                                                                        ; access size: BYTE
   5c06d:	80 3d bc 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:gore,0x0                                   ; fixup: num: 14974, src obj: 1, src ofs: 0x5c06f, dst obj: 3, dst ofs: 0x10fbc
   5c074:	74 29                	je     add_on_off_text_branch_12
   5c076:	be 35 dd 00 00       	mov    esi,@obj3:menu_cpp_variable_184                              ; fixup: num: 14973, src obj: 1, src ofs: 0x5c077, dst obj: 3, dst ofs: 0xdd35
   5c07b:	57                   	push   edi
add_on_off_text_branch_10:
   5c07c:	8a 06                	mov    al,BYTE PTR [esi]
   5c07e:	88 07                	mov    BYTE PTR [edi],al
   5c080:	3c 00                	cmp    al,0x0
   5c082:	74 10                	je     add_on_off_text_branch_11
   5c084:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c087:	83 c6 02             	add    esi,0x2
   5c08a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c08d:	83 c7 02             	add    edi,0x2
   5c090:	3c 00                	cmp    al,0x0
   5c092:	75 e8                	jne    add_on_off_text_branch_10
add_on_off_text_branch_11:
   5c094:	5f                   	pop    edi
   5c095:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14972, src obj: 1, src ofs: 0x5c096, dst obj: 3, dst ofs: 0x25b4c
   5c09a:	5f                   	pop    edi
   5c09b:	5e                   	pop    esi
   5c09c:	5a                   	pop    edx
   5c09d:	59                   	pop    ecx
   5c09e:	c3                   	ret    
add_on_off_text_branch_12:
   5c09f:	be 3b dd 00 00       	mov    esi,@obj3:menu_cpp_variable_185                              ; fixup: num: 14971, src obj: 1, src ofs: 0x5c0a0, dst obj: 3, dst ofs: 0xdd3b
   5c0a4:	57                   	push   edi
add_on_off_text_branch_13:
   5c0a5:	8a 06                	mov    al,BYTE PTR [esi]
   5c0a7:	88 07                	mov    BYTE PTR [edi],al
   5c0a9:	3c 00                	cmp    al,0x0
   5c0ab:	74 10                	je     add_on_off_text_branch_14
   5c0ad:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c0b0:	83 c6 02             	add    esi,0x2
   5c0b3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c0b6:	83 c7 02             	add    edi,0x2
   5c0b9:	3c 00                	cmp    al,0x0
   5c0bb:	75 e8                	jne    add_on_off_text_branch_13
add_on_off_text_branch_14:
   5c0bd:	5f                   	pop    edi
   5c0be:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14970, src obj: 1, src ofs: 0x5c0bf, dst obj: 3, dst ofs: 0x25b4c
   5c0c3:	5f                   	pop    edi
   5c0c4:	5e                   	pop    esi
   5c0c5:	5a                   	pop    edx
   5c0c6:	59                   	pop    ecx
   5c0c7:	c3                   	ret    
add_on_off_text_reference_3:
   5c0c8:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14969, src obj: 1, src ofs: 0x5c0c9, dst obj: 3, dst ofs: 0x17e5c
   5c0cd:	29 c9                	sub    ecx,ecx
   5c0cf:	49                   	dec    ecx
   5c0d0:	31 c0                	xor    eax,eax
   5c0d2:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5c0d4:	f7 d1                	not    ecx
   5c0d6:	49                   	dec    ecx
   5c0d7:	85 c9                	test   ecx,ecx
   5c0d9:	74 2e                	je     add_on_off_text_branch_17
   5c0db:	be 42 dd 00 00       	mov    esi,@obj3:menu_cpp_variable_186                              ; fixup: num: 14968, src obj: 1, src ofs: 0x5c0dc, dst obj: 3, dst ofs: 0xdd42
   5c0e0:	bf 4c 5b 02 00       	mov    edi,@obj3:buf                                                ; fixup: num: 14967, src obj: 1, src ofs: 0x5c0e1, dst obj: 3, dst ofs: 0x25b4c
   5c0e5:	57                   	push   edi
add_on_off_text_branch_15:
   5c0e6:	8a 06                	mov    al,BYTE PTR [esi]
   5c0e8:	88 07                	mov    BYTE PTR [edi],al
   5c0ea:	3c 00                	cmp    al,0x0
   5c0ec:	74 10                	je     add_on_off_text_branch_16
   5c0ee:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c0f1:	83 c6 02             	add    esi,0x2
   5c0f4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c0f7:	83 c7 02             	add    edi,0x2
   5c0fa:	3c 00                	cmp    al,0x0
   5c0fc:	75 e8                	jne    add_on_off_text_branch_15
add_on_off_text_branch_16:
   5c0fe:	5f                   	pop    edi
   5c0ff:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14966, src obj: 1, src ofs: 0x5c100, dst obj: 3, dst ofs: 0x25b4c
   5c104:	5f                   	pop    edi
   5c105:	5e                   	pop    esi
   5c106:	5a                   	pop    edx
   5c107:	59                   	pop    ecx
   5c108:	c3                   	ret    
add_on_off_text_branch_17:
   5c109:	be 48 dd 00 00       	mov    esi,@obj3:menu_cpp_variable_187                              ; fixup: num: 14965, src obj: 1, src ofs: 0x5c10a, dst obj: 3, dst ofs: 0xdd48
   5c10e:	bf 4c 5b 02 00       	mov    edi,@obj3:buf                                                ; fixup: num: 14964, src obj: 1, src ofs: 0x5c10f, dst obj: 3, dst ofs: 0x25b4c
   5c113:	57                   	push   edi
add_on_off_text_branch_18:
   5c114:	8a 06                	mov    al,BYTE PTR [esi]
   5c116:	88 07                	mov    BYTE PTR [edi],al
   5c118:	3c 00                	cmp    al,0x0
   5c11a:	74 10                	je     add_on_off_text_branch_19
   5c11c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c11f:	83 c6 02             	add    esi,0x2
   5c122:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c125:	83 c7 02             	add    edi,0x2
   5c128:	3c 00                	cmp    al,0x0
   5c12a:	75 e8                	jne    add_on_off_text_branch_18
add_on_off_text_branch_19:
   5c12c:	5f                   	pop    edi
add_on_off_text_reference_4:
   5c12d:	b8 4c 5b 02 00       	mov    eax,@obj3:buf                                                ; fixup: num: 14981, src obj: 1, src ofs: 0x5c12e, dst obj: 3, dst ofs: 0x25b4c
   5c132:	5f                   	pop    edi
   5c133:	5e                   	pop    esi
   5c134:	5a                   	pop    edx
   5c135:	59                   	pop    ecx
   5c136:	c3                   	ret    
   5c137:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c13d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'update_slider'                      -
;-------------------------------------------------
update_slider:
   5c140:	51                   	push   ecx
   5c141:	56                   	push   esi
   5c142:	89 c2                	mov    edx,eax
   5c144:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14980, src obj: 1, src ofs: 0x5c145, dst obj: 3, dst ofs: 0x25a88
   5c149:	e8 a2 ff fe ff       	call   get_bitmap
   5c14e:	89 c1                	mov    ecx,eax
   5c150:	89 c2                	mov    edx,eax
   5c152:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14979, src obj: 1, src ofs: 0x5c153, dst obj: 3, dst ofs: 0x25a88
   5c157:	e8 94 05 ff ff       	call   remove_bitmap
   5c15c:	8b 15 78 59 02 00    	mov    edx,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 14978, src obj: 1, src ofs: 0x5c15e, dst obj: 3, dst ofs: 0x25978
   5c162:	81 ea 6f 01 00 00    	sub    edx,0x16f
   5c168:	be 13 00 00 00       	mov    esi,0x13
   5c16d:	89 d0                	mov    eax,edx
   5c16f:	c1 fa 1f             	sar    edx,0x1f
   5c172:	f7 fe                	idiv   esi
   5c174:	68 00 00 48 c2       	push   0xc2480000
   5c179:	89 c6                	mov    esi,eax
   5c17b:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5c182:	01 f0                	add    eax,esi
   5c184:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   5c18b:	29 f0                	sub    eax,esi
   5c18d:	8d 90 6f 01 00 00    	lea    edx,[eax+0x16f]
   5c193:	89 c8                	mov    eax,ecx
   5c195:	e8 56 f5 fd ff       	call   set_xyz
   5c19a:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14977, src obj: 1, src ofs: 0x5c19b, dst obj: 3, dst ofs: 0x25a88
   5c19f:	89 ca                	mov    edx,ecx
   5c1a1:	e8 8a ff fe ff       	call   insert_bitmap
   5c1a6:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14976, src obj: 1, src ofs: 0x5c1a7, dst obj: 3, dst ofs: 0x25a84
   5c1ab:	e8 f0 1a ff ff       	call   update_mod_84
   5c1b0:	89 f0                	mov    eax,esi
   5c1b2:	5e                   	pop    esi
   5c1b3:	59                   	pop    ecx
   5c1b4:	c3                   	ret    
   5c1b5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c1bb:	8d 52 00             	lea    edx,[edx+0x0]
   5c1be:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'get_parental_password'              -
;-------------------------------------------------
get_parental_password:
   5c1c0:	53                   	push   ebx
   5c1c1:	51                   	push   ecx
   5c1c2:	52                   	push   edx
   5c1c3:	56                   	push   esi
   5c1c4:	57                   	push   edi
   5c1c5:	81 ec 90 00 00 00    	sub    esp,0x90
   5c1cb:	ba 4f dd 00 00       	mov    edx,@obj3:menu_cpp_variable_188                              ; fixup: num: 14990, src obj: 1, src ofs: 0x5c1cc, dst obj: 3, dst ofs: 0xdd4f
   5c1d0:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14989, src obj: 1, src ofs: 0x5c1d1, dst obj: 3, dst ofs: 0x32438
   5c1d5:	e8 f6 15 01 00       	call   get
   5c1da:	50                   	push   eax
   5c1db:	68 54 dd 00 00       	push   @obj3:menu_cpp_variable_189                                  ; fixup: num: 14988, src obj: 1, src ofs: 0x5c1dc, dst obj: 3, dst ofs: 0xdd54
   5c1e0:	8d 44 24 08          	lea    eax,[esp+0x8]
   5c1e4:	50                   	push   eax
   5c1e5:	e8 f7 49 01 00       	call   sprintf_
   5c1ea:	83 c4 0c             	add    esp,0xc
   5c1ed:	68 02 02 00 00       	push   0x202
   5c1f2:	8d 44 24 04          	lea    eax,[esp+0x4]
   5c1f6:	50                   	push   eax
   5c1f7:	e8 7a 53 01 00       	call   open_
   5c1fc:	89 c6                	mov    esi,eax
   5c1fe:	83 c4 08             	add    esp,0x8
   5c201:	83 f8 ff             	cmp    eax,0xffffffff
   5c204:	74 2f                	je     get_parental_password_branch_1
   5c206:	89 e0                	mov    eax,esp
   5c208:	50                   	push   eax
   5c209:	68 63 dd 00 00       	push   @obj3:menu_cpp_variable_190                                  ; fixup: num: 14987, src obj: 1, src ofs: 0x5c20a, dst obj: 3, dst ofs: 0xdd63
   5c20e:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 14986, src obj: 1, src ofs: 0x5c20f, dst obj: 3, dst ofs: 0x237fc
   5c213:	bb 0a 00 00 00       	mov    ebx,0xa
   5c218:	e8 c4 49 01 00       	call   sprintf_
   5c21d:	83 c4 0c             	add    esp,0xc
   5c220:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 14985, src obj: 1, src ofs: 0x5c221, dst obj: 3, dst ofs: 0x17e5c
   5c225:	89 f0                	mov    eax,esi
   5c227:	e8 37 5d 01 00       	call   read_
   5c22c:	89 f0                	mov    eax,esi
   5c22e:	e8 dd 5c 01 00       	call   close_
   5c233:	eb 24                	jmp    get_parental_password_branch_4
get_parental_password_branch_1:
   5c235:	be 88 dd 00 00       	mov    esi,@obj3:menu_cpp_variable_191                              ; fixup: num: 14984, src obj: 1, src ofs: 0x5c236, dst obj: 3, dst ofs: 0xdd88
   5c23a:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14983, src obj: 1, src ofs: 0x5c23b, dst obj: 3, dst ofs: 0x17e5c
   5c23f:	57                   	push   edi
get_parental_password_branch_2:
   5c240:	8a 06                	mov    al,BYTE PTR [esi]
   5c242:	88 07                	mov    BYTE PTR [edi],al
   5c244:	3c 00                	cmp    al,0x0
   5c246:	74 10                	je     get_parental_password_branch_3
   5c248:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c24b:	83 c6 02             	add    esi,0x2
   5c24e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c251:	83 c7 02             	add    edi,0x2
   5c254:	3c 00                	cmp    al,0x0
   5c256:	75 e8                	jne    get_parental_password_branch_2
get_parental_password_branch_3:
   5c258:	5f                   	pop    edi
get_parental_password_branch_4:
   5c259:	bf 5c 7e 01 00       	mov    edi,@obj3:parental_pw                                        ; fixup: num: 14982, src obj: 1, src ofs: 0x5c25a, dst obj: 3, dst ofs: 0x17e5c
   5c25e:	29 c9                	sub    ecx,ecx
   5c260:	49                   	dec    ecx
   5c261:	31 c0                	xor    eax,eax
   5c263:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   5c265:	f7 d1                	not    ecx
   5c267:	49                   	dec    ecx
   5c268:	85 c9                	test   ecx,ecx
   5c26a:	74 49                	je     get_parental_password_branch_7
   5c26c:	e8 5f 00 00 00       	call   prompt_password
   5c271:	89 c6                	mov    esi,eax
   5c273:	85 c0                	test   eax,eax
   5c275:	74 10                	je     get_parental_password_branch_5
   5c277:	89 c2                	mov    edx,eax
   5c279:	b8 5c 7e 01 00       	mov    eax,@obj3:parental_pw                                        ; fixup: num: 14997, src obj: 1, src ofs: 0x5c27a, dst obj: 3, dst ofs: 0x17e5c
   5c27e:	e8 d7 51 01 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   5c283:	85 c0                	test   eax,eax
   5c285:	74 27                	je     get_parental_password_branch_6
get_parental_password_branch_5:
   5c287:	89 f0                	mov    eax,esi
   5c289:	e8 5a 51 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5c28e:	b8 03 00 00 00       	mov    eax,0x3
   5c293:	e8 08 8b fa ff       	call   set_super_VGA_video_mode
   5c298:	b8 89 dd 00 00       	mov    eax,@obj3:menu_cpp_variable_192                              ; fixup: num: 14996, src obj: 1, src ofs: 0x5c299, dst obj: 3, dst ofs: 0xdd89
   5c29d:	e8 cd 4d 01 00       	call   puts_
   5c2a2:	b8 01 00 00 00       	mov    eax,0x1
   5c2a7:	31 f6                	xor    esi,esi
   5c2a9:	e8 0a 4e 01 00       	call   exit_
get_parental_password_branch_6:
   5c2ae:	89 f0                	mov    eax,esi
   5c2b0:	e8 33 51 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
get_parental_password_branch_7:
   5c2b5:	81 c4 90 00 00 00    	add    esp,0x90
   5c2bb:	5f                   	pop    edi
   5c2bc:	5e                   	pop    esi
   5c2bd:	5a                   	pop    edx
   5c2be:	59                   	pop    ecx
   5c2bf:	5b                   	pop    ebx
   5c2c0:	c3                   	ret    
   5c2c1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c2c7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5c2cd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'prompt_password'                    -
;-------------------------------------------------
prompt_password:
   5c2d0:	53                   	push   ebx
   5c2d1:	51                   	push   ecx
   5c2d2:	52                   	push   edx
   5c2d3:	56                   	push   esi
   5c2d4:	57                   	push   edi
   5c2d5:	b8 50 00 00 00       	mov    eax,0x50
   5c2da:	e8 39 5c 01 00       	call   W?$nwn(ui)pnv
   5c2df:	89 c6                	mov    esi,eax
   5c2e1:	85 c0                	test   eax,eax
   5c2e3:	74 3c                	je     prompt_password_branch_1
   5c2e5:	6a 00                	push   0x0
   5c2e7:	6a ce                	push   0xffffffce
   5c2e9:	68 a0 00 00 00       	push   0xa0
   5c2ee:	b8 9b dd 00 00       	mov    eax,@obj3:menu_cpp_variable_193                              ; fixup: num: 14995, src obj: 1, src ofs: 0x5c2ef, dst obj: 3, dst ofs: 0xdd9b
   5c2f3:	8b 15 bc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14994, src obj: 1, src ofs: 0x5c2f5, dst obj: 3, dst ofs: 0x25bbc
   5c2f9:	e8 32 c6 fe ff       	call   stringwidthCFN
   5c2fe:	ba 7f 02 00 00       	mov    edx,0x27f
   5c303:	29 c2                	sub    edx,eax
   5c305:	89 d0                	mov    eax,edx
   5c307:	b9 aa dd 00 00       	mov    ecx,@obj3:menu_cpp_variable_194                              ; fixup: num: 14993, src obj: 1, src ofs: 0x5c308, dst obj: 3, dst ofs: 0xddaa
   5c30c:	d1 e8                	shr    eax,1
   5c30e:	8b 1d bc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfont                              ; fixup: num: 14992, src obj: 1, src ofs: 0x5c310, dst obj: 3, dst ofs: 0x25bbc
   5c314:	50                   	push   eax
   5c315:	ba ad dd 00 00       	mov    edx,@obj3:menu_cpp_variable_195                              ; fixup: num: 14991, src obj: 1, src ofs: 0x5c316, dst obj: 3, dst ofs: 0xddad
   5c31a:	89 f0                	mov    eax,esi
   5c31c:	e8 df d8 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
prompt_password_branch_1:
   5c321:	89 c7                	mov    edi,eax
   5c323:	85 c0                	test   eax,eax
   5c325:	75 0f                	jne    prompt_password_branch_2
   5c327:	bb bc dd 00 00       	mov    ebx,@obj3:menu_cpp_variable_196                              ; fixup: num: 15004, src obj: 1, src ofs: 0x5c328, dst obj: 3, dst ofs: 0xddbc
   5c32c:	ba e6 04 00 00       	mov    edx,0x4e6
   5c331:	e8 fa bc fd ff       	call   _error_report
prompt_password_branch_2:
   5c336:	b8 50 00 00 00       	mov    eax,0x50
   5c33b:	e8 d8 5b 01 00       	call   W?$nwn(ui)pnv
   5c340:	85 c0                	test   eax,eax
   5c342:	74 22                	je     prompt_password_branch_3
   5c344:	6a 00                	push   0x0
   5c346:	6a 00                	push   0x0
   5c348:	6a ce                	push   0xffffffce
   5c34a:	68 dc 00 00 00       	push   0xdc
   5c34f:	b9 d4 dd 00 00       	mov    ecx,@obj3:menu_cpp_variable_197                              ; fixup: num: 15003, src obj: 1, src ofs: 0x5c350, dst obj: 3, dst ofs: 0xddd4
   5c354:	68 dc 00 00 00       	push   0xdc
   5c359:	8b 1d c0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 15002, src obj: 1, src ofs: 0x5c35b, dst obj: 3, dst ofs: 0x25bc0
   5c35f:	31 d2                	xor    edx,edx
   5c361:	e8 da db fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
prompt_password_branch_3:
   5c366:	89 c6                	mov    esi,eax
   5c368:	85 c0                	test   eax,eax
   5c36a:	75 0f                	jne    prompt_password_branch_4
   5c36c:	bb df dd 00 00       	mov    ebx,@obj3:menu_cpp_variable_198                              ; fixup: num: 15001, src obj: 1, src ofs: 0x5c36d, dst obj: 3, dst ofs: 0xdddf
   5c371:	ba ef 04 00 00       	mov    edx,0x4ef
   5c376:	e8 b5 bc fd ff       	call   _error_report
prompt_password_branch_4:
   5c37b:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 15000, src obj: 1, src ofs: 0x5c37c, dst obj: 3, dst ofs: 0x26094
   5c380:	bb 08 00 00 00       	mov    ebx,0x8
   5c385:	e8 d6 fe fd ff       	call   hide
   5c38a:	31 c9                	xor    ecx,ecx
   5c38c:	8b 15 c0 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:harvfnt2                              ; fixup: num: 14999, src obj: 1, src ofs: 0x5c38e, dst obj: 3, dst ofs: 0x25bc0
   5c392:	89 f0                	mov    eax,esi
   5c394:	e8 47 dc fe ff       	call   text_entry
   5c399:	89 c3                	mov    ebx,eax
   5c39b:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14998, src obj: 1, src ofs: 0x5c39c, dst obj: 3, dst ofs: 0x26094
   5c3a0:	e8 eb fe fd ff       	call   show
   5c3a5:	85 ff                	test   edi,edi
   5c3a7:	74 0e                	je     prompt_password_branch_5
   5c3a9:	89 f8                	mov    eax,edi
   5c3ab:	31 d2                	xor    edx,edx
   5c3ad:	e8 6e db fe ff       	call   W?$dt:TEXTBM$n()_
   5c3b2:	e8 c1 5c 01 00       	call   W?$dln(pnv)v
prompt_password_branch_5:
   5c3b7:	85 f6                	test   esi,esi
   5c3b9:	74 0e                	je     prompt_password_branch_6
   5c3bb:	89 f0                	mov    eax,esi
   5c3bd:	31 d2                	xor    edx,edx
   5c3bf:	e8 5c db fe ff       	call   W?$dt:TEXTBM$n()_
   5c3c4:	e8 af 5c 01 00       	call   W?$dln(pnv)v
prompt_password_branch_6:
   5c3c9:	89 d8                	mov    eax,ebx
   5c3cb:	5f                   	pop    edi
   5c3cc:	5e                   	pop    esi
   5c3cd:	5a                   	pop    edx
   5c3ce:	59                   	pop    ecx
   5c3cf:	5b                   	pop    ebx
   5c3d0:	c3                   	ret    
   5c3d1:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c3d7:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5c3dd:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'Help'                               -
;-------------------------------------------------
Help:
   5c3e0:	53                   	push   ebx
   5c3e1:	51                   	push   ecx
   5c3e2:	52                   	push   edx
   5c3e3:	56                   	push   esi
   5c3e4:	57                   	push   edi
   5c3e5:	55                   	push   ebp
   5c3e6:	89 e5                	mov    ebp,esp
   5c3e8:	81 ec 00 03 00 00    	sub    esp,0x300
   5c3ee:	6a 00                	push   0x0
   5c3f0:	ba 00 01 00 00       	mov    edx,0x100
   5c3f5:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 15010, src obj: 1, src ofs: 0x5c3f6, dst obj: 3, dst ofs: 0x26084
   5c3fa:	31 ff                	xor    edi,edi
   5c3fc:	e8 6f 63 fb ff       	call   setvgapalette_mod_14
   5c401:	57                   	push   edi
   5c402:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5c407:	bb 80 02 00 00       	mov    ebx,0x280
   5c40c:	57                   	push   edi
   5c40d:	31 d2                	xor    edx,edx
   5c40f:	31 c0                	xor    eax,eax
   5c411:	e8 3a 93 fa ff       	call   VESA_rectangle
   5c416:	e8 45 40 01 00       	call   PauseActiveTimers
Help_branch_1:
   5c41b:	85 ff                	test   edi,edi
   5c41d:	0f 86 e0 00 00 00    	jbe    Help_branch_10
   5c423:	83 ff 01             	cmp    edi,0x1
   5c426:	0f 84 42 01 00 00    	je     Help_branch_12
Help_branch_2:
   5c42c:	85 f6                	test   esi,esi
   5c42e:	75 11                	jne    Help_branch_3
   5c430:	bb e1 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_173                              ; fixup: num: 15009, src obj: 1, src ofs: 0x5c431, dst obj: 3, dst ofs: 0xdce1
   5c435:	ba 1d 05 00 00       	mov    edx,0x51d
   5c43a:	31 c0                	xor    eax,eax
   5c43c:	e8 ef bb fd ff       	call   _error_report
Help_branch_3:
   5c441:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 15008, src obj: 1, src ofs: 0x5c442, dst obj: 3, dst ofs: 0x25a88
   5c446:	89 f2                	mov    edx,esi
   5c448:	e8 e3 fc fe ff       	call   insert_bitmap
   5c44d:	83 ec 04             	sub    esp,0x4
   5c450:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 15007, src obj: 1, src ofs: 0x5c452, dst obj: 3, dst ofs: 0x10fb4
   5c456:	d9 1c 24             	fstp   DWORD PTR [esp]
   5c459:	ba 00 01 00 00       	mov    edx,0x100
   5c45e:	8d 85 00 fd ff ff    	lea    eax,[ebp-0x300]
   5c464:	e8 07 63 fb ff       	call   setvgapalette_mod_14
   5c469:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 15006, src obj: 1, src ofs: 0x5c46b, dst obj: 3, dst ofs: 0x25972
   5c470:	75 30                	jne    Help_branch_5
Help_branch_4:
   5c472:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15005, src obj: 1, src ofs: 0x5c474, dst obj: 3, dst ofs: 0x25974
   5c479:	75 27                	jne    Help_branch_5
   5c47b:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 14902, src obj: 1, src ofs: 0x5c47e, dst obj: 3, dst ofs: 0x25908
   5c483:	75 1d                	jne    Help_branch_5
   5c485:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14901, src obj: 1, src ofs: 0x5c486, dst obj: 3, dst ofs: 0x25a84
   5c48a:	e8 11 18 ff ff       	call   update_mod_84
   5c48f:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14900, src obj: 1, src ofs: 0x5c490, dst obj: 3, dst ofs: 0x1a1d4
   5c494:	e8 07 f5 fa ff       	call   update_mod_9
   5c499:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 14899, src obj: 1, src ofs: 0x5c49b, dst obj: 3, dst ofs: 0x25972
   5c4a0:	74 d0                	je     Help_branch_4
Help_branch_5:
   5c4a2:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14898, src obj: 1, src ofs: 0x5c4a5, dst obj: 3, dst ofs: 0x25908
   5c4a9:	83 f8 01             	cmp    eax,0x1
   5c4ac:	74 10                	je     Help_branch_6
   5c4ae:	31 c0                	xor    eax,eax
   5c4b0:	a0 72 59 02 00       	mov    al,ds:@obj3:right_button                                     ; fixup: num: 15017, src obj: 1, src ofs: 0x5c4b1, dst obj: 3, dst ofs: 0x25972
   5c4b5:	83 f8 01             	cmp    eax,0x1
   5c4b8:	0f 85 1a 01 00 00    	jne    Help_branch_14
Help_branch_6:
   5c4be:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 15016, src obj: 1, src ofs: 0x5c4bf, dst obj: 3, dst ofs: 0x25a88
   5c4c3:	89 f2                	mov    edx,esi
   5c4c5:	e8 26 02 ff ff       	call   remove_bitmap
   5c4ca:	85 f6                	test   esi,esi
   5c4cc:	74 10                	je     Help_branch_7
   5c4ce:	74 0e                	je     Help_branch_7
   5c4d0:	89 f0                	mov    eax,esi
   5c4d2:	31 d2                	xor    edx,edx
   5c4d4:	e8 c7 ee fd ff       	call   W?$dt:BTMAP$n()_
   5c4d9:	e8 9a 5b 01 00       	call   W?$dln(pnv)v
Help_branch_7:
   5c4de:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 15015, src obj: 1, src ofs: 0x5c4df, dst obj: 3, dst ofs: 0x1a1d4
Help_branch_8:
   5c4e3:	80 3d 72 59 02 00 00 	cmp    BYTE PTR ds:@obj3:right_button,0x0                           ; fixup: num: 15014, src obj: 1, src ofs: 0x5c4e5, dst obj: 3, dst ofs: 0x25972
   5c4ea:	75 0e                	jne    Help_branch_9
   5c4ec:	66 83 3d 08 59 02 00 00 	cmp    WORD PTR ds:@obj3:raw_key,0x0                             ; fixup: num: 15013, src obj: 1, src ofs: 0x5c4ef, dst obj: 3, dst ofs: 0x25908
   5c4f4:	0f 84 36 01 00 00    	je     Help_branch_19
Help_branch_9:
   5c4fa:	89 d0                	mov    eax,edx
   5c4fc:	e8 9f f4 fa ff       	call   update_mod_9
   5c501:	eb e0                	jmp    Help_branch_8
Help_branch_10:
   5c503:	b8 4c 00 00 00       	mov    eax,0x4c
   5c508:	e8 0b 5a 01 00       	call   W?$nwn(ui)pnv
   5c50d:	85 c0                	test   eax,eax
   5c50f:	74 25                	je     Help_branch_11
   5c511:	6a 00                	push   0x0
   5c513:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 15012, src obj: 1, src ofs: 0x5c514, dst obj: 1, dst ofs: 0x71493
   5c518:	6a 00                	push   0x0
   5c51a:	6a 00                	push   0x0
   5c51c:	6a 01                	push   0x1
   5c51e:	68 00 00 70 c2       	push   0xc2700000
   5c523:	bb fb db 00 00       	mov    ebx,@obj3:menu_cpp_variable_163                              ; fixup: num: 15011, src obj: 1, src ofs: 0x5c524, dst obj: 3, dst ofs: 0xdbfb
   5c528:	6a 00                	push   0x0
   5c52a:	ba 00 dc 00 00       	mov    edx,@obj3:menu_cpp_variable_164                              ; fixup: num: 14912, src obj: 1, src ofs: 0x5c52b, dst obj: 3, dst ofs: 0xdc00
   5c52f:	31 c9                	xor    ecx,ecx
   5c531:	e8 aa e7 fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
Help_branch_11:
   5c536:	b9 0c 05 00 00       	mov    ecx,0x50c
   5c53b:	bb 1a dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_165                              ; fixup: num: 14911, src obj: 1, src ofs: 0x5c53c, dst obj: 3, dst ofs: 0xdc1a
   5c540:	8d 95 00 fd ff ff    	lea    edx,[ebp-0x300]
   5c546:	89 c6                	mov    esi,eax
   5c548:	b8 23 dc 00 00       	mov    eax,@obj3:menu_cpp_variable_166                              ; fixup: num: 14910, src obj: 1, src ofs: 0x5c549, dst obj: 3, dst ofs: 0xdc23
   5c54d:	e8 8e 08 fb ff       	call   XFILE_read2
   5c552:	85 c0                	test   eax,eax
   5c554:	0f 85 d2 fe ff ff    	jne    Help_branch_2
   5c55a:	bb 3f dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_167                              ; fixup: num: 14909, src obj: 1, src ofs: 0x5c55b, dst obj: 3, dst ofs: 0xdc3f
   5c55f:	ba 0d 05 00 00       	mov    edx,0x50d
   5c564:	e8 c7 ba fd ff       	call   _error_report
   5c569:	e9 be fe ff ff       	jmp    Help_branch_2
Help_branch_12:
   5c56e:	b8 4c 00 00 00       	mov    eax,0x4c
   5c573:	e8 a0 59 01 00       	call   W?$nwn(ui)pnv
   5c578:	85 c0                	test   eax,eax
   5c57a:	74 24                	je     Help_branch_13
   5c57c:	6a 00                	push   0x0
   5c57e:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14908, src obj: 1, src ofs: 0x5c57f, dst obj: 1, dst ofs: 0x71493
   5c583:	6a 00                	push   0x0
   5c585:	6a 00                	push   0x0
   5c587:	57                   	push   edi
   5c588:	68 00 00 70 c2       	push   0xc2700000
   5c58d:	bb 70 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_168                              ; fixup: num: 14907, src obj: 1, src ofs: 0x5c58e, dst obj: 3, dst ofs: 0xdc70
   5c592:	6a 00                	push   0x0
   5c594:	ba 75 dc 00 00       	mov    edx,@obj3:menu_cpp_variable_169                              ; fixup: num: 14906, src obj: 1, src ofs: 0x5c595, dst obj: 3, dst ofs: 0xdc75
   5c599:	31 c9                	xor    ecx,ecx
   5c59b:	e8 40 e7 fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
Help_branch_13:
   5c5a0:	b9 11 05 00 00       	mov    ecx,0x511
   5c5a5:	bb 8f dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_170                              ; fixup: num: 14905, src obj: 1, src ofs: 0x5c5a6, dst obj: 3, dst ofs: 0xdc8f
   5c5aa:	8d 95 00 fd ff ff    	lea    edx,[ebp-0x300]
   5c5b0:	89 c6                	mov    esi,eax
   5c5b2:	b8 98 dc 00 00       	mov    eax,@obj3:menu_cpp_variable_171                              ; fixup: num: 14904, src obj: 1, src ofs: 0x5c5b3, dst obj: 3, dst ofs: 0xdc98
   5c5b7:	e8 24 08 fb ff       	call   XFILE_read2
   5c5bc:	85 c0                	test   eax,eax
   5c5be:	0f 85 68 fe ff ff    	jne    Help_branch_2
   5c5c4:	bb b4 dc 00 00       	mov    ebx,@obj3:menu_cpp_variable_172                              ; fixup: num: 14903, src obj: 1, src ofs: 0x5c5c5, dst obj: 3, dst ofs: 0xdcb4
   5c5c9:	ba 12 05 00 00       	mov    edx,0x512
   5c5ce:	e8 5d ba fd ff       	call   _error_report
   5c5d3:	e9 54 fe ff ff       	jmp    Help_branch_2
Help_branch_14:
   5c5d8:	66 83 f7 01          	xor    di,0x1
   5c5dc:	31 d2                	xor    edx,edx
Help_branch_15:
   5c5de:	8a 1d 72 59 02 00    	mov    bl,BYTE PTR ds:@obj3:right_button                            ; fixup: num: 14920, src obj: 1, src ofs: 0x5c5e0, dst obj: 3, dst ofs: 0x25972
   5c5e4:	38 da                	cmp    dl,bl
   5c5e6:	75 11                	jne    Help_branch_16
   5c5e8:	3a 1d 74 59 02 00    	cmp    bl,BYTE PTR ds:@obj3:left_button                             ; fixup: num: 14919, src obj: 1, src ofs: 0x5c5ea, dst obj: 3, dst ofs: 0x25974
   5c5ee:	75 09                	jne    Help_branch_16
   5c5f0:	66 3b 15 08 59 02 00 	cmp    dx,WORD PTR ds:@obj3:raw_key                                 ; fixup: num: 14918, src obj: 1, src ofs: 0x5c5f3, dst obj: 3, dst ofs: 0x25908
   5c5f7:	74 0c                	je     Help_branch_17
Help_branch_16:
   5c5f9:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14917, src obj: 1, src ofs: 0x5c5fa, dst obj: 3, dst ofs: 0x1a1d4
   5c5fe:	e8 9d f3 fa ff       	call   update_mod_9
   5c603:	eb d9                	jmp    Help_branch_15
Help_branch_17:
   5c605:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14916, src obj: 1, src ofs: 0x5c606, dst obj: 3, dst ofs: 0x25a88
   5c60a:	89 f2                	mov    edx,esi
   5c60c:	e8 df 00 ff ff       	call   remove_bitmap
   5c611:	85 f6                	test   esi,esi
   5c613:	0f 84 02 fe ff ff    	je     Help_branch_1
   5c619:	74 0e                	je     Help_branch_18
   5c61b:	89 f0                	mov    eax,esi
   5c61d:	31 d2                	xor    edx,edx
   5c61f:	e8 7c ed fd ff       	call   W?$dt:BTMAP$n()_
   5c624:	e8 4f 5a 01 00       	call   W?$dln(pnv)v
Help_branch_18:
   5c629:	31 f6                	xor    esi,esi
   5c62b:	e9 eb fd ff ff       	jmp    Help_branch_1
Help_branch_19:
   5c630:	6a 00                	push   0x0
   5c632:	ba 00 01 00 00       	mov    edx,0x100
   5c637:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14915, src obj: 1, src ofs: 0x5c638, dst obj: 3, dst ofs: 0x26084
   5c63c:	e8 2f 61 fb ff       	call   setvgapalette_mod_14
   5c641:	6a 00                	push   0x0
   5c643:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5c648:	bb 80 02 00 00       	mov    ebx,0x280
   5c64d:	6a 00                	push   0x0
   5c64f:	31 d2                	xor    edx,edx
   5c651:	31 c0                	xor    eax,eax
   5c653:	e8 f8 90 fa ff       	call   VESA_rectangle
   5c658:	83 ec 04             	sub    esp,0x4
   5c65b:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14914, src obj: 1, src ofs: 0x5c65d, dst obj: 3, dst ofs: 0x10fb4
   5c661:	d9 1c 24             	fstp   DWORD PTR [esp]
   5c664:	ba 00 01 00 00       	mov    edx,0x100
   5c669:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14913, src obj: 1, src ofs: 0x5c66a, dst obj: 3, dst ofs: 0x26084
   5c66e:	e8 fd 60 fb ff       	call   setvgapalette_mod_14
   5c673:	e8 28 3e 01 00       	call   ResumeActiveTimers
   5c678:	89 ec                	mov    esp,ebp
   5c67a:	5d                   	pop    ebp
   5c67b:	5f                   	pop    edi
   5c67c:	5e                   	pop    esi
   5c67d:	5a                   	pop    edx
   5c67e:	59                   	pop    ecx
   5c67f:	5b                   	pop    ebx
   5c680:	c3                   	ret    
   5c681:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c687:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   5c68d:	8d 40 00             	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'new_game'                           -
;-------------------------------------------------
new_game:
   5c690:	53                   	push   ebx
   5c691:	51                   	push   ecx
   5c692:	52                   	push   edx
   5c693:	56                   	push   esi
   5c694:	57                   	push   edi
   5c695:	83 ec 0c             	sub    esp,0xc
   5c698:	ba 14 00 00 00       	mov    edx,0x14
   5c69d:	bb 6b 02 00 00       	mov    ebx,0x26b
   5c6a2:	b9 01 00 00 00       	mov    ecx,0x1
   5c6a7:	89 15 08 3c 01 00    	mov    DWORD PTR ds:@obj3:move_min_x,edx                            ; fixup: num: 14932, src obj: 1, src ofs: 0x5c6a9, dst obj: 3, dst ofs: 0x13c08
   5c6ad:	89 1d 0c 3c 01 00    	mov    DWORD PTR ds:@obj3:move_max_x,ebx                            ; fixup: num: 14931, src obj: 1, src ofs: 0x5c6af, dst obj: 3, dst ofs: 0x13c0c
   5c6b3:	89 0d 08 3f 01 00    	mov    DWORD PTR ds:@obj3:game_in_progress,ecx                      ; fixup: num: 14930, src obj: 1, src ofs: 0x5c6b5, dst obj: 3, dst ofs: 0x13f08
   5c6b9:	e8 d2 b7 00 00       	call   Clear_using_on_bm
   5c6be:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14929, src obj: 1, src ofs: 0x5c6bf, dst obj: 3, dst ofs: 0x25a88
   5c6c3:	e8 18 03 ff ff       	call   remove_all
   5c6c8:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14928, src obj: 1, src ofs: 0x5c6c9, dst obj: 3, dst ofs: 0x25bd4
   5c6cd:	e8 8e fb fd ff       	call   hide
   5c6d2:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14927, src obj: 1, src ofs: 0x5c6d3, dst obj: 3, dst ofs: 0x25bd4
   5c6d7:	e8 64 a3 fe ff       	call   clear_mod_76
   5c6dc:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14926, src obj: 1, src ofs: 0x5c6dd, dst obj: 3, dst ofs: 0x26094
   5c6e1:	e8 7a fb fd ff       	call   hide
   5c6e6:	30 e4                	xor    ah,ah
   5c6e8:	ba 00 01 00 00       	mov    edx,0x100
   5c6ed:	88 25 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,ah                                ; fixup: num: 14925, src obj: 1, src ofs: 0x5c6ef, dst obj: 3, dst ofs: 0x2607e
   5c6f3:	31 c0                	xor    eax,eax
   5c6f5:	e8 e6 5f fb ff       	call   setvgapalette
   5c6fa:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14924, src obj: 1, src ofs: 0x5c6fb, dst obj: 3, dst ofs: 0x1a1d4
   5c6ff:	e8 9c f2 fa ff       	call   update_mod_9
   5c704:	3b 0d a8 0f 01 00    	cmp    ecx,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 14923, src obj: 1, src ofs: 0x5c706, dst obj: 3, dst ofs: 0x10fa8
   5c70a:	74 4e                	je     new_game_branch_1
   5c70c:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14922, src obj: 1, src ofs: 0x5c70d, dst obj: 3, dst ofs: 0x26094
   5c711:	e8 7a fb fd ff       	call   show
   5c716:	31 d2                	xor    edx,edx
   5c718:	89 c8                	mov    eax,ecx
   5c71a:	e8 81 c1 fd ff       	call   cd_change_requestor
   5c71f:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14921, src obj: 1, src ofs: 0x5c720, dst obj: 3, dst ofs: 0x26094
   5c724:	e8 37 fb fd ff       	call   hide
   5c729:	51                   	push   ecx
   5c72a:	bb 80 02 00 00       	mov    ebx,0x280
   5c72f:	31 d2                	xor    edx,edx
   5c731:	6a 00                	push   0x0
   5c733:	31 c0                	xor    eax,eax
   5c735:	b9 e0 01 00 00       	mov    ecx,0x1e0
   5c73a:	e8 11 90 fa ff       	call   VESA_rectangle
   5c73f:	83 ec 04             	sub    esp,0x4
   5c742:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 14950, src obj: 1, src ofs: 0x5c744, dst obj: 3, dst ofs: 0x10fb4
   5c748:	d9 1c 24             	fstp   DWORD PTR [esp]
   5c74b:	ba 00 01 00 00       	mov    edx,0x100
   5c750:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 14949, src obj: 1, src ofs: 0x5c751, dst obj: 3, dst ofs: 0x26084
   5c755:	e8 16 60 fb ff       	call   setvgapalette_mod_14
new_game_branch_1:
   5c75a:	80 3d a7 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:play_intro,0x0                             ; fixup: num: 14948, src obj: 1, src ofs: 0x5c75c, dst obj: 3, dst ofs: 0x10fa7
   5c761:	74 11                	je     new_game_branch_2
   5c763:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14947, src obj: 1, src ofs: 0x5c764, dst obj: 3, dst ofs: 0x1a1d4
   5c768:	31 d2                	xor    edx,edx
   5c76a:	e8 51 f8 fa ff       	call   change_music_file
   5c76f:	e8 ac 5f 00 00       	call   harvester_intro
new_game_branch_2:
   5c774:	e8 37 d9 fc ff       	call   initialize_dialog_flags
   5c779:	b7 07                	mov    bh,0x7
   5c77b:	b1 01                	mov    cl,0x1
   5c77d:	30 f6                	xor    dh,dh
   5c77f:	31 ff                	xor    edi,edi
   5c781:	88 35 90 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_1,dh                    ; fixup: num: 14946, src obj: 1, src ofs: 0x5c783, dst obj: 3, dst ofs: 0x26090
   5c787:	88 35 91 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_2,dh                    ; fixup: num: 14945, src obj: 1, src ofs: 0x5c789, dst obj: 3, dst ofs: 0x26091
   5c78d:	88 3d 92 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_3,bh                    ; fixup: num: 14944, src obj: 1, src ofs: 0x5c78f, dst obj: 3, dst ofs: 0x26092
   5c793:	88 0d 93 60 02 00    	mov    BYTE PTR ds:@obj3:game_time_variable_4,cl                    ; fixup: num: 14943, src obj: 1, src ofs: 0x5c795, dst obj: 3, dst ofs: 0x26093
   5c799:	89 3d 6c 5b 02 00    	mov    DWORD PTR ds:@obj3:shotgun_shells,edi                        ; fixup: num: 14942, src obj: 1, src ofs: 0x5c79b, dst obj: 3, dst ofs: 0x25b6c
   5c79f:	89 3d 64 5b 02 00    	mov    DWORD PTR ds:@obj3:bullets,edi                               ; fixup: num: 14941, src obj: 1, src ofs: 0x5c7a1, dst obj: 3, dst ofs: 0x25b64
   5c7a5:	89 3d 68 5b 02 00    	mov    DWORD PTR ds:@obj3:mmbullets,edi                             ; fixup: num: 14940, src obj: 1, src ofs: 0x5c7a7, dst obj: 3, dst ofs: 0x25b68
   5c7ab:	89 3d 60 5b 02 00    	mov    DWORD PTR ds:@obj3:gascans,edi                               ; fixup: num: 14939, src obj: 1, src ofs: 0x5c7ad, dst obj: 3, dst ofs: 0x25b60
   5c7b1:	89 3d 5c 5b 02 00    	mov    DWORD PTR ds:@obj3:nails,edi                                 ; fixup: num: 14938, src obj: 1, src ofs: 0x5c7b3, dst obj: 3, dst ofs: 0x25b5c
   5c7b7:	e8 94 3c ff ff       	call   clear_script_data
   5c7bc:	ba 3a d5 00 00       	mov    edx,@obj3:menu_cpp_variable_47                               ; fixup: num: 14937, src obj: 1, src ofs: 0x5c7bd, dst obj: 3, dst ofs: 0xd53a
   5c7c1:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14936, src obj: 1, src ofs: 0x5c7c2, dst obj: 3, dst ofs: 0x32438
   5c7c6:	e8 05 10 01 00       	call   get
   5c7cb:	e8 b0 b6 fd ff       	call   script_reload
   5c7d0:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14935, src obj: 1, src ofs: 0x5c7d1, dst obj: 3, dst ofs: 0x1a1d4
   5c7d5:	e8 c6 f1 fa ff       	call   update_mod_9
   5c7da:	e8 a1 a5 fd ff       	call   outer
   5c7df:	80 3d 14 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:script_errors,0x0                          ; fixup: num: 14934, src obj: 1, src ofs: 0x5c7e1, dst obj: 3, dst ofs: 0x25b14
   5c7e6:	74 11                	je     new_game_branch_3
   5c7e8:	bb 3f d5 00 00       	mov    ebx,@obj3:menu_cpp_variable_48                               ; fixup: num: 14933, src obj: 1, src ofs: 0x5c7e9, dst obj: 3, dst ofs: 0xd53f
   5c7ed:	ba a5 05 00 00       	mov    edx,0x5a5
   5c7f2:	31 c0                	xor    eax,eax
   5c7f4:	e8 37 b8 fd ff       	call   _error_report
new_game_branch_3:
   5c7f9:	b0 01                	mov    al,0x1
   5c7fb:	be 01 00 00 00       	mov    esi,0x1
   5c800:	31 c9                	xor    ecx,ecx
   5c802:	89 e7                	mov    edi,esp
   5c804:	89 0d a8 60 02 00    	mov    DWORD PTR ds:@obj3:last_room,ecx                             ; fixup: num: 14838, src obj: 1, src ofs: 0x5c806, dst obj: 3, dst ofs: 0x260a8
   5c80a:	a2 b1 3e 01 00       	mov    ds:@obj3:show_pc,al                                          ; fixup: num: 14837, src obj: 1, src ofs: 0x5c80b, dst obj: 3, dst ofs: 0x13eb1
   5c80f:	89 35 4c 7e 01 00    	mov    DWORD PTR ds:@obj3:starting_new_game,esi                     ; fixup: num: 14836, src obj: 1, src ofs: 0x5c811, dst obj: 3, dst ofs: 0x17e4c
   5c815:	30 e4                	xor    ah,ah
   5c817:	be 56 d5 00 00       	mov    esi,@obj3:menu_cpp_variable_49                               ; fixup: num: 14956, src obj: 1, src ofs: 0x5c818, dst obj: 3, dst ofs: 0xd556
   5c81c:	88 25 9c 60 02 00    	mov    BYTE PTR ds:@obj3:combat_mode,ah                             ; fixup: num: 14955, src obj: 1, src ofs: 0x5c81e, dst obj: 3, dst ofs: 0x2609c
   5c822:	57                   	push   edi
new_game_branch_4:
   5c823:	8a 06                	mov    al,BYTE PTR [esi]
   5c825:	88 07                	mov    BYTE PTR [edi],al
   5c827:	3c 00                	cmp    al,0x0
   5c829:	74 10                	je     new_game_branch_5
   5c82b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c82e:	83 c6 02             	add    esi,0x2
   5c831:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c834:	83 c7 02             	add    edi,0x2
   5c837:	3c 00                	cmp    al,0x0
   5c839:	75 e8                	jne    new_game_branch_4
new_game_branch_5:
   5c83b:	5f                   	pop    edi
   5c83c:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 14954, src obj: 1, src ofs: 0x5c83d, dst obj: 3, dst ofs: 0x25bd4
   5c841:	be 5c d5 00 00       	mov    esi,@obj3:menu_cpp_variable_50                               ; fixup: num: 14953, src obj: 1, src ofs: 0x5c842, dst obj: 3, dst ofs: 0xd55c
   5c846:	e8 45 fa fd ff       	call   show
   5c84b:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 14952, src obj: 1, src ofs: 0x5c84c, dst obj: 3, dst ofs: 0x26094
   5c850:	bf 80 5b 02 00       	mov    edi,@obj3:start_room                                         ; fixup: num: 14951, src obj: 1, src ofs: 0x5c851, dst obj: 3, dst ofs: 0x25b80
   5c855:	e8 36 fa fd ff       	call   show
   5c85a:	57                   	push   edi
new_game_branch_6:
   5c85b:	8a 06                	mov    al,BYTE PTR [esi]
   5c85d:	88 07                	mov    BYTE PTR [edi],al
   5c85f:	3c 00                	cmp    al,0x0
   5c861:	74 10                	je     new_game_branch_7
   5c863:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   5c866:	83 c6 02             	add    esi,0x2
   5c869:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5c86c:	83 c7 02             	add    edi,0x2
   5c86f:	3c 00                	cmp    al,0x0
   5c871:	75 e8                	jne    new_game_branch_6
new_game_branch_7:
   5c873:	5f                   	pop    edi
   5c874:	89 e0                	mov    eax,esp
   5c876:	e8 c5 6c 00 00       	call   room_setup
   5c87b:	83 c4 0c             	add    esp,0xc
   5c87e:	5f                   	pop    edi
   5c87f:	5e                   	pop    esi
   5c880:	5a                   	pop    edx
   5c881:	59                   	pop    ecx
   5c882:	5b                   	pop    ebx
   5c883:	c3                   	ret    
   5c884:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5c88a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'ShowTips'                           -
;-------------------------------------------------
ShowTips:
   5c890:	53                   	push   ebx
   5c891:	51                   	push   ecx
   5c892:	52                   	push   edx
   5c893:	56                   	push   esi
   5c894:	57                   	push   edi
   5c895:	55                   	push   ebp
   5c896:	89 e5                	mov    ebp,esp
   5c898:	83 ec 70             	sub    esp,0x70
   5c89b:	8a 25 39 5b 02 00    	mov    ah,BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc       ; fixup: num: 14848, src obj: 1, src ofs: 0x5c89d, dst obj: 3, dst ofs: 0x25b39
   5c8a1:	f6 c4 01             	test   ah,0x1
   5c8a4:	75 22                	jne    ShowTips_branch_1
   5c8a6:	88 e2                	mov    dl,ah
   5c8a8:	80 ca 01             	or     dl,0x1
   5c8ab:	88 15 39 5b 02 00    	mov    BYTE PTR ds:@obj3:W?$Wbi00$:.0$:?ShowTips$n()vn[]uc,dl       ; fixup: num: 14847, src obj: 1, src ofs: 0x5c8ad, dst obj: 3, dst ofs: 0x25b39
   5c8b1:	e8 21 9c 01 00       	call   rand_
   5c8b6:	89 c2                	mov    edx,eax
   5c8b8:	bb 28 00 00 00       	mov    ebx,0x28
   5c8bd:	c1 fa 1f             	sar    edx,0x1f
   5c8c0:	f7 fb                	idiv   ebx
   5c8c2:	89 15 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,edx                                  ; fixup: num: 14846, src obj: 1, src ofs: 0x5c8c4, dst obj: 3, dst ofs: 0x25b34
ShowTips_branch_1:
   5c8c8:	b8 72 d8 00 00       	mov    eax,@obj3:menu_cpp_variable_101                              ; fixup: num: 14845, src obj: 1, src ofs: 0x5c8c9, dst obj: 3, dst ofs: 0xd872
   5c8cd:	ba 6f d8 00 00       	mov    edx,@obj3:menu_cpp_variable_100                              ; fixup: num: 14844, src obj: 1, src ofs: 0x5c8ce, dst obj: 3, dst ofs: 0xd86f
   5c8d2:	e8 a9 24 fb ff       	call   XFILE_map_cd
   5c8d7:	e8 cc 44 01 00       	call   fopen_
   5c8dc:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
   5c8df:	85 c0                	test   eax,eax
   5c8e1:	75 2b                	jne    ShowTips_branch_2
   5c8e3:	b8 7e d8 00 00       	mov    eax,@obj3:menu_cpp_variable_102                              ; fixup: num: 14843, src obj: 1, src ofs: 0x5c8e4, dst obj: 3, dst ofs: 0xd87e
   5c8e8:	e8 93 24 fb ff       	call   XFILE_map_cd
   5c8ed:	50                   	push   eax
   5c8ee:	68 8a d8 00 00       	push   @obj3:menu_cpp_variable_103                                  ; fixup: num: 14842, src obj: 1, src ofs: 0x5c8ef, dst obj: 3, dst ofs: 0xd88a
   5c8f3:	8d 45 90             	lea    eax,[ebp-0x70]
   5c8f6:	50                   	push   eax
   5c8f7:	8d 5d 90             	lea    ebx,[ebp-0x70]
   5c8fa:	e8 e2 42 01 00       	call   sprintf_
   5c8ff:	83 c4 0c             	add    esp,0xc
   5c902:	ba c9 05 00 00       	mov    edx,0x5c9
   5c907:	31 c0                	xor    eax,eax
   5c909:	e8 22 b7 fd ff       	call   _error_report
ShowTips_branch_2:
   5c90e:	b8 4c 00 00 00       	mov    eax,0x4c
   5c913:	e8 00 56 01 00       	call   W?$nwn(ui)pnv
   5c918:	85 c0                	test   eax,eax
   5c91a:	74 2b                	je     ShowTips_branch_3
   5c91c:	6a 00                	push   0x0
   5c91e:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 14841, src obj: 1, src ofs: 0x5c91f, dst obj: 1, dst ofs: 0x71493
   5c923:	6a 00                	push   0x0
   5c925:	6a 00                	push   0x0
   5c927:	6a 01                	push   0x1
   5c929:	68 00 00 70 c2       	push   0xc2700000
   5c92e:	b9 a7 00 00 00       	mov    ecx,0xa7
   5c933:	68 c8 00 00 00       	push   0xc8
   5c938:	bb a1 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_104                              ; fixup: num: 14840, src obj: 1, src ofs: 0x5c939, dst obj: 3, dst ofs: 0xd8a1
   5c93d:	ba aa d8 00 00       	mov    edx,@obj3:menu_cpp_variable_105                              ; fixup: num: 14839, src obj: 1, src ofs: 0x5c93e, dst obj: 3, dst ofs: 0xd8aa
   5c942:	e8 99 e3 fd ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
ShowTips_branch_3:
   5c947:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
   5c94a:	85 c0                	test   eax,eax
   5c94c:	75 0f                	jne    ShowTips_branch_4
   5c94e:	bb c3 d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_106                              ; fixup: num: 14856, src obj: 1, src ofs: 0x5c94f, dst obj: 3, dst ofs: 0xd8c3
   5c953:	ba cd 05 00 00       	mov    edx,0x5cd
   5c958:	e8 d3 b6 fd ff       	call   _error_report
ShowTips_branch_4:
   5c95d:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
   5c960:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 14855, src obj: 1, src ofs: 0x5c961, dst obj: 3, dst ofs: 0x25a88
   5c965:	e8 c6 f7 fe ff       	call   insert_bitmap
   5c96a:	b8 80 00 00 00       	mov    eax,0x80
   5c96f:	e8 1f 4b 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   5c974:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
   5c977:	85 c0                	test   eax,eax
   5c979:	75 0f                	jne    ShowTips_branch_5
   5c97b:	bb db d8 00 00       	mov    ebx,@obj3:menu_cpp_variable_107                              ; fixup: num: 14854, src obj: 1, src ofs: 0x5c97c, dst obj: 3, dst ofs: 0xd8db
   5c980:	ba d1 05 00 00       	mov    edx,0x5d1
   5c985:	e8 a6 b6 fd ff       	call   _error_report
ShowTips_branch_5:
   5c98a:	80 3d 38 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:been_here_mod_88,0x0                       ; fixup: num: 14853, src obj: 1, src ofs: 0x5c98c, dst obj: 3, dst ofs: 0x25b38
   5c991:	75 51                	jne    ShowTips_branch_9
   5c993:	8b 15 34 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14852, src obj: 1, src ofs: 0x5c995, dst obj: 3, dst ofs: 0x25b34
   5c999:	31 f6                	xor    esi,esi
   5c99b:	31 ff                	xor    edi,edi
   5c99d:	85 d2                	test   edx,edx
   5c99f:	7e 32                	jle    ShowTips_branch_8
   5c9a1:	eb 0b                	jmp    ShowTips_branch_7
ShowTips_branch_6:
   5c9a3:	8b 1d 34 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14851, src obj: 1, src ofs: 0x5c9a5, dst obj: 3, dst ofs: 0x25b34
   5c9a9:	47                   	inc    edi
   5c9aa:	39 df                	cmp    edi,ebx
   5c9ac:	7d 25                	jge    ShowTips_branch_8
ShowTips_branch_7:
   5c9ae:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
   5c9b1:	ba 7f 00 00 00       	mov    edx,0x7f
   5c9b6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
   5c9b9:	e8 32 64 01 00       	call   fgets_
   5c9be:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
   5c9c1:	8a 78 0c             	mov    bh,BYTE PTR [eax+0xc]
   5c9c4:	46                   	inc    esi
   5c9c5:	f6 c7 10             	test   bh,0x10
   5c9c8:	74 d9                	je     ShowTips_branch_6
   5c9ca:	e8 cc a2 01 00       	call   rewind_
   5c9cf:	31 f6                	xor    esi,esi
   5c9d1:	eb d0                	jmp    ShowTips_branch_6
ShowTips_branch_8:
   5c9d3:	46                   	inc    esi
   5c9d4:	b3 01                	mov    bl,0x1
   5c9d6:	89 35 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,esi                                  ; fixup: num: 14850, src obj: 1, src ofs: 0x5c9d8, dst obj: 3, dst ofs: 0x25b34
   5c9dc:	88 1d 38 5b 02 00    	mov    BYTE PTR ds:@obj3:been_here_mod_88,bl                        ; fixup: num: 14849, src obj: 1, src ofs: 0x5c9de, dst obj: 3, dst ofs: 0x25b38
   5c9e2:	eb 21                	jmp    ShowTips_branch_12
ShowTips_branch_9:
   5c9e4:	31 f6                	xor    esi,esi
   5c9e6:	bf 7f 00 00 00       	mov    edi,0x7f
   5c9eb:	eb 0e                	jmp    ShowTips_branch_11
ShowTips_branch_10:
   5c9ed:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
   5c9f0:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
   5c9f3:	89 fa                	mov    edx,edi
   5c9f5:	e8 f6 63 01 00       	call   fgets_
   5c9fa:	46                   	inc    esi
ShowTips_branch_11:
   5c9fb:	a1 34 5b 02 00       	mov    eax,ds:@obj3:line                                            ; fixup: num: 14866, src obj: 1, src ofs: 0x5c9fc, dst obj: 3, dst ofs: 0x25b34
   5ca00:	48                   	dec    eax
   5ca01:	39 c6                	cmp    esi,eax
   5ca03:	7c e8                	jl     ShowTips_branch_10
ShowTips_branch_12:
   5ca05:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14865, src obj: 1, src ofs: 0x5ca06, dst obj: 3, dst ofs: 0x1a1d4
   5ca0a:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
   5ca0d:	ba 7f 00 00 00       	mov    edx,0x7f
   5ca12:	e8 89 ef fa ff       	call   update_mod_9
   5ca17:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
   5ca1a:	e8 d1 63 01 00       	call   fgets_
   5ca1f:	85 c0                	test   eax,eax
   5ca21:	75 20                	jne    ShowTips_branch_13
   5ca23:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
   5ca26:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
   5ca29:	ba 7f 00 00 00       	mov    edx,0x7f
   5ca2e:	e8 68 a2 01 00       	call   rewind_
   5ca33:	31 c9                	xor    ecx,ecx
   5ca35:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
   5ca38:	89 0d 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,ecx                                  ; fixup: num: 14864, src obj: 1, src ofs: 0x5ca3a, dst obj: 3, dst ofs: 0x25b34
   5ca3e:	e8 ad 63 01 00       	call   fgets_
ShowTips_branch_13:
   5ca43:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14863, src obj: 1, src ofs: 0x5ca44, dst obj: 3, dst ofs: 0x1a1d4
   5ca48:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
   5ca4b:	ba f6 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_109                              ; fixup: num: 14862, src obj: 1, src ofs: 0x5ca4c, dst obj: 3, dst ofs: 0xd8f6
   5ca50:	e8 4b ef fa ff       	call   update_mod_9
   5ca55:	30 c9                	xor    cl,cl
   5ca57:	8b 35 34 5b 02 00    	mov    esi,DWORD PTR ds:@obj3:line                                  ; fixup: num: 14861, src obj: 1, src ofs: 0x5ca59, dst obj: 3, dst ofs: 0x25b34
   5ca5d:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 14860, src obj: 1, src ofs: 0x5ca5e, dst obj: 3, dst ofs: 0x32438
   5ca62:	46                   	inc    esi
   5ca63:	88 4d fc             	mov    BYTE PTR [ebp-0x4],cl
   5ca66:	89 35 34 5b 02 00    	mov    DWORD PTR ds:@obj3:line,esi                                  ; fixup: num: 14859, src obj: 1, src ofs: 0x5ca68, dst obj: 3, dst ofs: 0x25b34
   5ca6c:	e8 5f 0d 01 00       	call   get
   5ca71:	ba f3 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_108                              ; fixup: num: 14858, src obj: 1, src ofs: 0x5ca72, dst obj: 3, dst ofs: 0xd8f3
   5ca76:	88 4d f4             	mov    BYTE PTR [ebp-0xc],cl
   5ca79:	e8 b2 99 01 00       	call   strcmp_
   5ca7e:	85 c0                	test   eax,eax
   5ca80:	75 4f                	jne    ShowTips_branch_15
   5ca82:	c6 05 a6 0f 01 00 01 	mov    BYTE PTR ds:@obj3:use_quicktips,0x1                          ; fixup: num: 14857, src obj: 1, src ofs: 0x5ca84, dst obj: 3, dst ofs: 0x10fa6
   5ca89:	b8 50 00 00 00       	mov    eax,0x50
   5ca8e:	e8 85 54 01 00       	call   W?$nwn(ui)pnv
   5ca93:	85 c0                	test   eax,eax
   5ca95:	74 23                	je     ShowTips_branch_14
   5ca97:	6a 00                	push   0x0
   5ca99:	6a c3                	push   0xffffffc3
   5ca9b:	68 16 01 00 00       	push   0x116
   5caa0:	b9 01 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_110                              ; fixup: num: 14877, src obj: 1, src ofs: 0x5caa1, dst obj: 3, dst ofs: 0xd901
   5caa5:	68 02 01 00 00       	push   0x102
   5caaa:	ba 0e d9 00 00       	mov    edx,@obj3:menu_cpp_variable_111                              ; fixup: num: 14876, src obj: 1, src ofs: 0x5caab, dst obj: 3, dst ofs: 0xd90e
   5caaf:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14875, src obj: 1, src ofs: 0x5cab1, dst obj: 3, dst ofs: 0x25bd0
   5cab5:	e8 46 d1 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_14:
   5caba:	89 c6                	mov    esi,eax
   5cabc:	85 c0                	test   eax,eax
   5cabe:	75 5d                	jne    ShowTips_branch_17
   5cac0:	bb 1b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_112                              ; fixup: num: 14874, src obj: 1, src ofs: 0x5cac1, dst obj: 3, dst ofs: 0xd91b
   5cac5:	ba 86 06 00 00       	mov    edx,0x686
   5caca:	e8 61 b5 fd ff       	call   _error_report
   5cacf:	eb 4c                	jmp    ShowTips_branch_17
ShowTips_branch_15:
   5cad1:	b8 50 00 00 00       	mov    eax,0x50
   5cad6:	88 0d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,cl                           ; fixup: num: 14873, src obj: 1, src ofs: 0x5cad8, dst obj: 3, dst ofs: 0x10fa6
   5cadc:	e8 37 54 01 00       	call   W?$nwn(ui)pnv
   5cae1:	85 c0                	test   eax,eax
   5cae3:	74 23                	je     ShowTips_branch_16
   5cae5:	6a 00                	push   0x0
   5cae7:	6a c3                	push   0xffffffc3
   5cae9:	68 16 01 00 00       	push   0x116
   5caee:	b9 33 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_113                              ; fixup: num: 14872, src obj: 1, src ofs: 0x5caef, dst obj: 3, dst ofs: 0xd933
   5caf3:	68 02 01 00 00       	push   0x102
   5caf8:	ba 40 d9 00 00       	mov    edx,@obj3:menu_cpp_variable_114                              ; fixup: num: 14871, src obj: 1, src ofs: 0x5caf9, dst obj: 3, dst ofs: 0xd940
   5cafd:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14870, src obj: 1, src ofs: 0x5caff, dst obj: 3, dst ofs: 0x25bd0
   5cb03:	e8 f8 d0 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_16:
   5cb08:	89 c6                	mov    esi,eax
   5cb0a:	85 c0                	test   eax,eax
   5cb0c:	75 0f                	jne    ShowTips_branch_17
   5cb0e:	bb 4e d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_115                              ; fixup: num: 14869, src obj: 1, src ofs: 0x5cb0f, dst obj: 3, dst ofs: 0xd94e
   5cb13:	ba 8d 06 00 00       	mov    edx,0x68d
   5cb18:	e8 13 b5 fd ff       	call   _error_report
ShowTips_branch_17:
   5cb1d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14868, src obj: 1, src ofs: 0x5cb1e, dst obj: 3, dst ofs: 0x1a1d4
   5cb22:	e8 79 ee fa ff       	call   update_mod_9
   5cb27:	85 ff                	test   edi,edi
   5cb29:	75 11                	jne    ShowTips_branch_18
   5cb2b:	bb 66 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_116                              ; fixup: num: 14867, src obj: 1, src ofs: 0x5cb2c, dst obj: 3, dst ofs: 0xd966
   5cb30:	ba 91 06 00 00       	mov    edx,0x691
   5cb35:	31 c0                	xor    eax,eax
   5cb37:	e8 f4 b4 fd ff       	call   _error_report
ShowTips_branch_18:
   5cb3c:	b8 50 00 00 00       	mov    eax,0x50
   5cb41:	e8 d2 53 01 00       	call   W?$nwn(ui)pnv
   5cb46:	85 c0                	test   eax,eax
   5cb48:	74 23                	je     ShowTips_branch_19
   5cb4a:	68 2c 01 00 00       	push   0x12c
   5cb4f:	6a c3                	push   0xffffffc3
   5cb51:	68 e4 00 00 00       	push   0xe4
   5cb56:	b9 82 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_117                              ; fixup: num: 14887, src obj: 1, src ofs: 0x5cb57, dst obj: 3, dst ofs: 0xd982
   5cb5b:	68 b4 00 00 00       	push   0xb4
   5cb60:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 14886, src obj: 1, src ofs: 0x5cb62, dst obj: 3, dst ofs: 0x25bc4
   5cb66:	89 fa                	mov    edx,edi
   5cb68:	e8 93 d0 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_19:
   5cb6d:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
   5cb70:	85 c0                	test   eax,eax
   5cb72:	75 0f                	jne    ShowTips_branch_20
   5cb74:	bb 8b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_118                              ; fixup: num: 14885, src obj: 1, src ofs: 0x5cb75, dst obj: 3, dst ofs: 0xd98b
   5cb79:	ba 93 06 00 00       	mov    edx,0x693
   5cb7e:	e8 ad b4 fd ff       	call   _error_report
ShowTips_branch_20:
   5cb83:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14884, src obj: 1, src ofs: 0x5cb84, dst obj: 3, dst ofs: 0x1a1d4
   5cb88:	e8 13 ee fa ff       	call   update_mod_9
   5cb8d:	b8 50 00 00 00       	mov    eax,0x50
   5cb92:	e8 81 53 01 00       	call   W?$nwn(ui)pnv
   5cb97:	85 c0                	test   eax,eax
   5cb99:	74 23                	je     ShowTips_branch_21
   5cb9b:	6a 00                	push   0x0
   5cb9d:	6a c3                	push   0xffffffc3
   5cb9f:	68 16 01 00 00       	push   0x116
   5cba4:	b9 a3 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_119                              ; fixup: num: 14883, src obj: 1, src ofs: 0x5cba5, dst obj: 3, dst ofs: 0xd9a3
   5cba9:	68 b4 00 00 00       	push   0xb4
   5cbae:	ba af d9 00 00       	mov    edx,@obj3:menu_cpp_variable_120                              ; fixup: num: 14882, src obj: 1, src ofs: 0x5cbaf, dst obj: 3, dst ofs: 0xd9af
   5cbb3:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14881, src obj: 1, src ofs: 0x5cbb5, dst obj: 3, dst ofs: 0x25bd0
   5cbb9:	e8 42 d0 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_21:
   5cbbe:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
   5cbc1:	85 c0                	test   eax,eax
   5cbc3:	75 0f                	jne    ShowTips_branch_22
   5cbc5:	bb b4 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_121                              ; fixup: num: 14880, src obj: 1, src ofs: 0x5cbc6, dst obj: 3, dst ofs: 0xd9b4
   5cbca:	ba 98 06 00 00       	mov    edx,0x698
   5cbcf:	e8 5c b4 fd ff       	call   _error_report
ShowTips_branch_22:
   5cbd4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14879, src obj: 1, src ofs: 0x5cbd5, dst obj: 3, dst ofs: 0x1a1d4
   5cbd9:	e8 c2 ed fa ff       	call   update_mod_9
   5cbde:	b8 50 00 00 00       	mov    eax,0x50
   5cbe3:	e8 30 53 01 00       	call   W?$nwn(ui)pnv
   5cbe8:	85 c0                	test   eax,eax
   5cbea:	74 23                	je     ShowTips_branch_23
   5cbec:	6a 00                	push   0x0
   5cbee:	6a c3                	push   0xffffffc3
   5cbf0:	68 16 01 00 00       	push   0x116
   5cbf5:	b9 cc d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_122                              ; fixup: num: 14878, src obj: 1, src ofs: 0x5cbf6, dst obj: 3, dst ofs: 0xd9cc
   5cbfa:	68 a4 01 00 00       	push   0x1a4
   5cbff:	ba da d9 00 00       	mov    edx,@obj3:menu_cpp_variable_123                              ; fixup: num: 14787, src obj: 1, src ofs: 0x5cc00, dst obj: 3, dst ofs: 0xd9da
   5cc04:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14786, src obj: 1, src ofs: 0x5cc06, dst obj: 3, dst ofs: 0x25bd0
   5cc0a:	e8 f1 cf fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_23:
   5cc0f:	89 c7                	mov    edi,eax
   5cc11:	85 c0                	test   eax,eax
   5cc13:	75 0f                	jne    ShowTips_branch_24
   5cc15:	bb df d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_124                              ; fixup: num: 14897, src obj: 1, src ofs: 0x5cc16, dst obj: 3, dst ofs: 0xd9df
   5cc1a:	ba 9d 06 00 00       	mov    edx,0x69d
   5cc1f:	e8 0c b4 fd ff       	call   _error_report
ShowTips_branch_24:
   5cc24:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14896, src obj: 1, src ofs: 0x5cc25, dst obj: 3, dst ofs: 0x1a1d4
   5cc29:	e8 72 ed fa ff       	call   update_mod_9
ShowTips_branch_25:
   5cc2e:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 14895, src obj: 1, src ofs: 0x5cc2f, dst obj: 3, dst ofs: 0x25a84
   5cc33:	e8 68 10 ff ff       	call   update_mod_84
   5cc38:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 14894, src obj: 1, src ofs: 0x5cc39, dst obj: 3, dst ofs: 0x1a1d4
   5cc3d:	e8 5e ed fa ff       	call   update_mod_9
   5cc42:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14893, src obj: 1, src ofs: 0x5cc45, dst obj: 3, dst ofs: 0x25908
   5cc49:	83 f8 01             	cmp    eax,0x1
   5cc4c:	75 13                	jne    ShowTips_branch_27
   5cc4e:	b1 01                	mov    cl,0x1
ShowTips_branch_26:
   5cc50:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 14892, src obj: 1, src ofs: 0x5cc53, dst obj: 3, dst ofs: 0x25908
   5cc57:	83 f8 01             	cmp    eax,0x1
   5cc5a:	74 f4                	je     ShowTips_branch_26
   5cc5c:	e9 3c 06 00 00       	jmp    ShowTips_branch_74
ShowTips_branch_27:
   5cc61:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14891, src obj: 1, src ofs: 0x5cc63, dst obj: 3, dst ofs: 0x25978
   5cc6b:	7c 2b                	jl     ShowTips_branch_28
   5cc6d:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14890, src obj: 1, src ofs: 0x5cc6f, dst obj: 3, dst ofs: 0x25978
   5cc77:	7f 1f                	jg     ShowTips_branch_28
   5cc79:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14889, src obj: 1, src ofs: 0x5cc7b, dst obj: 3, dst ofs: 0x2597c
   5cc83:	7c 13                	jl     ShowTips_branch_28
   5cc85:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14888, src obj: 1, src ofs: 0x5cc87, dst obj: 3, dst ofs: 0x2597c
   5cc8f:	7f 07                	jg     ShowTips_branch_28
   5cc91:	b8 01 00 00 00       	mov    eax,0x1
   5cc96:	eb 02                	jmp    ShowTips_branch_29
ShowTips_branch_28:
   5cc98:	31 c0                	xor    eax,eax
ShowTips_branch_29:
   5cc9a:	85 c0                	test   eax,eax
   5cc9c:	74 65                	je     ShowTips_branch_32
   5cc9e:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
   5cca2:	75 5f                	jne    ShowTips_branch_32
   5cca4:	b6 01                	mov    dh,0x1
   5cca6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
   5cca9:	88 75 fc             	mov    BYTE PTR [ebp-0x4],dh
   5ccac:	85 c0                	test   eax,eax
   5ccae:	74 0c                	je     ShowTips_branch_30
   5ccb0:	31 d2                	xor    edx,edx
   5ccb2:	e8 69 d2 fe ff       	call   W?$dt:TEXTBM$n()_
   5ccb7:	e8 bc 53 01 00       	call   W?$dln(pnv)v
ShowTips_branch_30:
   5ccbc:	b8 50 00 00 00       	mov    eax,0x50
   5ccc1:	e8 52 52 01 00       	call   W?$nwn(ui)pnv
   5ccc6:	85 c0                	test   eax,eax
   5ccc8:	74 23                	je     ShowTips_branch_31
   5ccca:	6a 00                	push   0x0
   5cccc:	6a c3                	push   0xffffffc3
   5ccce:	68 16 01 00 00       	push   0x116
   5ccd3:	b9 f7 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_125                              ; fixup: num: 14795, src obj: 1, src ofs: 0x5ccd4, dst obj: 3, dst ofs: 0xd9f7
   5ccd8:	68 b4 00 00 00       	push   0xb4
   5ccdd:	ba 03 da 00 00       	mov    edx,@obj3:menu_cpp_variable_126                              ; fixup: num: 14794, src obj: 1, src ofs: 0x5ccde, dst obj: 3, dst ofs: 0xda03
   5cce2:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14793, src obj: 1, src ofs: 0x5cce4, dst obj: 3, dst ofs: 0x25bcc
   5cce8:	e8 13 cf fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_31:
   5cced:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
   5ccf0:	85 c0                	test   eax,eax
   5ccf2:	75 0f                	jne    ShowTips_branch_32
   5ccf4:	bb 08 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_127                              ; fixup: num: 14792, src obj: 1, src ofs: 0x5ccf5, dst obj: 3, dst ofs: 0xda08
   5ccf9:	ba b0 06 00 00       	mov    edx,0x6b0
   5ccfe:	e8 2d b3 fd ff       	call   _error_report
ShowTips_branch_32:
   5cd03:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14791, src obj: 1, src ofs: 0x5cd05, dst obj: 3, dst ofs: 0x25978
   5cd0d:	7c 2b                	jl     ShowTips_branch_33
   5cd0f:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14790, src obj: 1, src ofs: 0x5cd11, dst obj: 3, dst ofs: 0x25978
   5cd19:	7f 1f                	jg     ShowTips_branch_33
   5cd1b:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14789, src obj: 1, src ofs: 0x5cd1d, dst obj: 3, dst ofs: 0x2597c
   5cd25:	7c 13                	jl     ShowTips_branch_33
   5cd27:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14788, src obj: 1, src ofs: 0x5cd29, dst obj: 3, dst ofs: 0x2597c
   5cd31:	7f 07                	jg     ShowTips_branch_33
   5cd33:	b8 01 00 00 00       	mov    eax,0x1
   5cd38:	eb 02                	jmp    ShowTips_branch_34
ShowTips_branch_33:
   5cd3a:	31 c0                	xor    eax,eax
ShowTips_branch_34:
   5cd3c:	85 c0                	test   eax,eax
   5cd3e:	75 68                	jne    ShowTips_branch_37
   5cd40:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
   5cd44:	74 62                	je     ShowTips_branch_37
   5cd46:	30 ff                	xor    bh,bh
   5cd48:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
   5cd4b:	88 7d fc             	mov    BYTE PTR [ebp-0x4],bh
   5cd4e:	85 d2                	test   edx,edx
   5cd50:	74 0f                	je     ShowTips_branch_35
   5cd52:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
   5cd55:	31 d2                	xor    edx,edx
   5cd57:	e8 c4 d1 fe ff       	call   W?$dt:TEXTBM$n()_
   5cd5c:	e8 17 53 01 00       	call   W?$dln(pnv)v
ShowTips_branch_35:
   5cd61:	b8 50 00 00 00       	mov    eax,0x50
   5cd66:	e8 ad 51 01 00       	call   W?$nwn(ui)pnv
   5cd6b:	85 c0                	test   eax,eax
   5cd6d:	74 23                	je     ShowTips_branch_36
   5cd6f:	6a 00                	push   0x0
   5cd71:	6a c3                	push   0xffffffc3
   5cd73:	68 16 01 00 00       	push   0x116
   5cd78:	b9 20 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_128                              ; fixup: num: 14806, src obj: 1, src ofs: 0x5cd79, dst obj: 3, dst ofs: 0xda20
   5cd7d:	68 b4 00 00 00       	push   0xb4
   5cd82:	ba 2c da 00 00       	mov    edx,@obj3:menu_cpp_variable_129                              ; fixup: num: 14805, src obj: 1, src ofs: 0x5cd83, dst obj: 3, dst ofs: 0xda2c
   5cd87:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14804, src obj: 1, src ofs: 0x5cd89, dst obj: 3, dst ofs: 0x25bd0
   5cd8d:	e8 6e ce fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_36:
   5cd92:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
   5cd95:	85 c0                	test   eax,eax
   5cd97:	75 0f                	jne    ShowTips_branch_37
   5cd99:	bb 31 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_130                              ; fixup: num: 14803, src obj: 1, src ofs: 0x5cd9a, dst obj: 3, dst ofs: 0xda31
   5cd9e:	ba b8 06 00 00       	mov    edx,0x6b8
   5cda3:	e8 88 b2 fd ff       	call   _error_report
ShowTips_branch_37:
   5cda8:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14802, src obj: 1, src ofs: 0x5cdaa, dst obj: 3, dst ofs: 0x25974
   5cdaf:	0f 84 66 00 00 00    	je     ShowTips_branch_41
   5cdb5:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 14801, src obj: 1, src ofs: 0x5cdb7, dst obj: 3, dst ofs: 0x25978
   5cdbf:	7c 2b                	jl     ShowTips_branch_38
   5cdc1:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 14800, src obj: 1, src ofs: 0x5cdc3, dst obj: 3, dst ofs: 0x25978
   5cdcb:	7f 1f                	jg     ShowTips_branch_38
   5cdcd:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14799, src obj: 1, src ofs: 0x5cdcf, dst obj: 3, dst ofs: 0x2597c
   5cdd7:	7c 13                	jl     ShowTips_branch_38
   5cdd9:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14798, src obj: 1, src ofs: 0x5cddb, dst obj: 3, dst ofs: 0x2597c
   5cde3:	7f 07                	jg     ShowTips_branch_38
   5cde5:	b8 01 00 00 00       	mov    eax,0x1
   5cdea:	eb 02                	jmp    ShowTips_branch_39
ShowTips_branch_38:
   5cdec:	31 c0                	xor    eax,eax
ShowTips_branch_39:
   5cdee:	85 c0                	test   eax,eax
   5cdf0:	74 29                	je     ShowTips_branch_41
   5cdf2:	b1 01                	mov    cl,0x1
   5cdf4:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14797, src obj: 1, src ofs: 0x5cdf6, dst obj: 3, dst ofs: 0x25974
   5cdfb:	0f 84 9c 04 00 00    	je     ShowTips_branch_74
   5ce01:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 14796, src obj: 1, src ofs: 0x5ce02, dst obj: 3, dst ofs: 0x1a1d4
ShowTips_branch_40:
   5ce06:	89 d0                	mov    eax,edx
   5ce08:	e8 93 eb fa ff       	call   update_mod_9
   5ce0d:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14815, src obj: 1, src ofs: 0x5ce0f, dst obj: 3, dst ofs: 0x25974
   5ce14:	75 f0                	jne    ShowTips_branch_40
   5ce16:	e9 82 04 00 00       	jmp    ShowTips_branch_74
ShowTips_branch_41:
   5ce1b:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14814, src obj: 1, src ofs: 0x5ce1d, dst obj: 3, dst ofs: 0x25978
   5ce25:	7c 2b                	jl     ShowTips_branch_42
   5ce27:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14813, src obj: 1, src ofs: 0x5ce29, dst obj: 3, dst ofs: 0x25978
   5ce31:	7f 1f                	jg     ShowTips_branch_42
   5ce33:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14812, src obj: 1, src ofs: 0x5ce35, dst obj: 3, dst ofs: 0x2597c
   5ce3d:	7c 13                	jl     ShowTips_branch_42
   5ce3f:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14811, src obj: 1, src ofs: 0x5ce41, dst obj: 3, dst ofs: 0x2597c
   5ce49:	7f 07                	jg     ShowTips_branch_42
   5ce4b:	b8 01 00 00 00       	mov    eax,0x1
   5ce50:	eb 02                	jmp    ShowTips_branch_43
ShowTips_branch_42:
   5ce52:	31 c0                	xor    eax,eax
ShowTips_branch_43:
   5ce54:	85 c0                	test   eax,eax
   5ce56:	74 62                	je     ShowTips_branch_46
   5ce58:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
   5ce5c:	75 5c                	jne    ShowTips_branch_46
   5ce5e:	c6 45 f4 01          	mov    BYTE PTR [ebp-0xc],0x1
   5ce62:	85 ff                	test   edi,edi
   5ce64:	74 0e                	je     ShowTips_branch_44
   5ce66:	89 f8                	mov    eax,edi
   5ce68:	31 d2                	xor    edx,edx
   5ce6a:	e8 b1 d0 fe ff       	call   W?$dt:TEXTBM$n()_
   5ce6f:	e8 04 52 01 00       	call   W?$dln(pnv)v
ShowTips_branch_44:
   5ce74:	b8 50 00 00 00       	mov    eax,0x50
   5ce79:	e8 9a 50 01 00       	call   W?$nwn(ui)pnv
   5ce7e:	85 c0                	test   eax,eax
   5ce80:	74 23                	je     ShowTips_branch_45
   5ce82:	6a 00                	push   0x0
   5ce84:	6a c3                	push   0xffffffc3
   5ce86:	68 16 01 00 00       	push   0x116
   5ce8b:	b9 49 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_131                              ; fixup: num: 14810, src obj: 1, src ofs: 0x5ce8c, dst obj: 3, dst ofs: 0xda49
   5ce90:	68 a4 01 00 00       	push   0x1a4
   5ce95:	ba 57 da 00 00       	mov    edx,@obj3:menu_cpp_variable_132                              ; fixup: num: 14809, src obj: 1, src ofs: 0x5ce96, dst obj: 3, dst ofs: 0xda57
   5ce9a:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 14808, src obj: 1, src ofs: 0x5ce9c, dst obj: 3, dst ofs: 0x25bcc
   5cea0:	e8 5b cd fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_45:
   5cea5:	89 c7                	mov    edi,eax
   5cea7:	85 c0                	test   eax,eax
   5cea9:	75 0f                	jne    ShowTips_branch_46
   5ceab:	bb 5c da 00 00       	mov    ebx,@obj3:menu_cpp_variable_133                              ; fixup: num: 14807, src obj: 1, src ofs: 0x5ceac, dst obj: 3, dst ofs: 0xda5c
   5ceb0:	ba c7 06 00 00       	mov    edx,0x6c7
   5ceb5:	e8 76 b1 fd ff       	call   _error_report
ShowTips_branch_46:
   5ceba:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14824, src obj: 1, src ofs: 0x5cebc, dst obj: 3, dst ofs: 0x25978
   5cec4:	7c 2b                	jl     ShowTips_branch_47
   5cec6:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14823, src obj: 1, src ofs: 0x5cec8, dst obj: 3, dst ofs: 0x25978
   5ced0:	7f 1f                	jg     ShowTips_branch_47
   5ced2:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14822, src obj: 1, src ofs: 0x5ced4, dst obj: 3, dst ofs: 0x2597c
   5cedc:	7c 13                	jl     ShowTips_branch_47
   5cede:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14821, src obj: 1, src ofs: 0x5cee0, dst obj: 3, dst ofs: 0x2597c
   5cee8:	7f 07                	jg     ShowTips_branch_47
   5ceea:	b8 01 00 00 00       	mov    eax,0x1
   5ceef:	eb 02                	jmp    ShowTips_branch_48
ShowTips_branch_47:
   5cef1:	31 c0                	xor    eax,eax
ShowTips_branch_48:
   5cef3:	85 c0                	test   eax,eax
   5cef5:	75 63                	jne    ShowTips_branch_51
   5cef7:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
   5cefb:	74 5d                	je     ShowTips_branch_51
   5cefd:	30 d2                	xor    dl,dl
   5ceff:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
   5cf02:	85 ff                	test   edi,edi
   5cf04:	74 0e                	je     ShowTips_branch_49
   5cf06:	89 f8                	mov    eax,edi
   5cf08:	31 d2                	xor    edx,edx
   5cf0a:	e8 11 d0 fe ff       	call   W?$dt:TEXTBM$n()_
   5cf0f:	e8 64 51 01 00       	call   W?$dln(pnv)v
ShowTips_branch_49:
   5cf14:	b8 50 00 00 00       	mov    eax,0x50
   5cf19:	e8 fa 4f 01 00       	call   W?$nwn(ui)pnv
   5cf1e:	85 c0                	test   eax,eax
   5cf20:	74 23                	je     ShowTips_branch_50
   5cf22:	6a 00                	push   0x0
   5cf24:	6a c3                	push   0xffffffc3
   5cf26:	68 16 01 00 00       	push   0x116
   5cf2b:	b9 74 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_134                              ; fixup: num: 14820, src obj: 1, src ofs: 0x5cf2c, dst obj: 3, dst ofs: 0xda74
   5cf30:	68 a4 01 00 00       	push   0x1a4
   5cf35:	ba 82 da 00 00       	mov    edx,@obj3:menu_cpp_variable_135                              ; fixup: num: 14819, src obj: 1, src ofs: 0x5cf36, dst obj: 3, dst ofs: 0xda82
   5cf3a:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 14818, src obj: 1, src ofs: 0x5cf3c, dst obj: 3, dst ofs: 0x25bd0
   5cf40:	e8 bb cc fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_50:
   5cf45:	89 c7                	mov    edi,eax
   5cf47:	85 c0                	test   eax,eax
   5cf49:	75 0f                	jne    ShowTips_branch_51
   5cf4b:	bb 87 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_136                              ; fixup: num: 14817, src obj: 1, src ofs: 0x5cf4c, dst obj: 3, dst ofs: 0xda87
   5cf50:	ba cf 06 00 00       	mov    edx,0x6cf
   5cf55:	e8 d6 b0 fd ff       	call   _error_report
ShowTips_branch_51:
   5cf5a:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14816, src obj: 1, src ofs: 0x5cf5c, dst obj: 3, dst ofs: 0x25974
   5cf61:	0f 84 66 00 00 00    	je     ShowTips_branch_55
   5cf67:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 14835, src obj: 1, src ofs: 0x5cf69, dst obj: 3, dst ofs: 0x25978
   5cf71:	7c 2b                	jl     ShowTips_branch_52
   5cf73:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 14834, src obj: 1, src ofs: 0x5cf75, dst obj: 3, dst ofs: 0x25978
   5cf7d:	7f 1f                	jg     ShowTips_branch_52
   5cf7f:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14833, src obj: 1, src ofs: 0x5cf81, dst obj: 3, dst ofs: 0x2597c
   5cf89:	7c 13                	jl     ShowTips_branch_52
   5cf8b:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14832, src obj: 1, src ofs: 0x5cf8d, dst obj: 3, dst ofs: 0x2597c
   5cf95:	7f 07                	jg     ShowTips_branch_52
   5cf97:	b8 01 00 00 00       	mov    eax,0x1
   5cf9c:	eb 02                	jmp    ShowTips_branch_53
ShowTips_branch_52:
   5cf9e:	31 c0                	xor    eax,eax
ShowTips_branch_53:
   5cfa0:	85 c0                	test   eax,eax
   5cfa2:	74 29                	je     ShowTips_branch_55
   5cfa4:	30 c9                	xor    cl,cl
   5cfa6:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14831, src obj: 1, src ofs: 0x5cfa8, dst obj: 3, dst ofs: 0x25974
   5cfad:	0f 84 ea 02 00 00    	je     ShowTips_branch_74
   5cfb3:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 14830, src obj: 1, src ofs: 0x5cfb4, dst obj: 3, dst ofs: 0x1a1d4
ShowTips_branch_54:
   5cfb8:	89 d0                	mov    eax,edx
   5cfba:	e8 e1 e9 fa ff       	call   update_mod_9
   5cfbf:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 14829, src obj: 1, src ofs: 0x5cfc1, dst obj: 3, dst ofs: 0x25974
   5cfc6:	75 f0                	jne    ShowTips_branch_54
   5cfc8:	e9 d0 02 00 00       	jmp    ShowTips_branch_74
ShowTips_branch_55:
   5cfcd:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 14828, src obj: 1, src ofs: 0x5cfcf, dst obj: 3, dst ofs: 0x25978
   5cfd7:	7c 2b                	jl     ShowTips_branch_56
   5cfd9:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 14827, src obj: 1, src ofs: 0x5cfdb, dst obj: 3, dst ofs: 0x25978
   5cfe3:	7f 1f                	jg     ShowTips_branch_56
   5cfe5:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 14826, src obj: 1, src ofs: 0x5cfe7, dst obj: 3, dst ofs: 0x2597c
   5cfef:	7c 13                	jl     ShowTips_branch_56
   5cff1:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 14825, src obj: 1, src ofs: 0x5cff3, dst obj: 3, dst ofs: 0x2597c
   5cffb:	7f 07                	jg     ShowTips_branch_56
   5cffd:	b8 01 00 00 00       	mov    eax,0x1
   5d002:	eb 02                	jmp    ShowTips_branch_57
ShowTips_branch_56:
   5d004:	31 c0                	xor    eax,eax
ShowTips_branch_57:
   5d006:	85 c0                	test   eax,eax
   5d008:	0f 84 a4 00 00 00    	je     ShowTips_branch_61
   5d00e:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
   5d012:	0f 85 9a 00 00 00    	jne    ShowTips_branch_61
   5d018:	c6 45 f8 01          	mov    BYTE PTR [ebp-0x8],0x1
   5d01c:	85 f6                	test   esi,esi
   5d01e:	74 0e                	je     ShowTips_branch_58
   5d020:	89 f0                	mov    eax,esi
   5d022:	31 d2                	xor    edx,edx
   5d024:	e8 f7 ce fe ff       	call   W?$dt:TEXTBM$n()_
   5d029:	e8 4a 50 01 00       	call   W?$dln(pnv)v
ShowTips_branch_58:
   5d02e:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 15207, src obj: 1, src ofs: 0x5d030, dst obj: 3, dst ofs: 0x10fa6
   5d035:	74 33                	je     ShowTips_branch_59
   5d037:	b8 50 00 00 00       	mov    eax,0x50
   5d03c:	e8 d7 4e 01 00       	call   W?$nwn(ui)pnv
   5d041:	85 c0                	test   eax,eax
   5d043:	74 56                	je     ShowTips_branch_60
   5d045:	6a 00                	push   0x0
   5d047:	6a c3                	push   0xffffffc3
   5d049:	68 16 01 00 00       	push   0x116
   5d04e:	b9 9f da 00 00       	mov    ecx,@obj3:menu_cpp_variable_137                              ; fixup: num: 15206, src obj: 1, src ofs: 0x5d04f, dst obj: 3, dst ofs: 0xda9f
   5d053:	68 02 01 00 00       	push   0x102
   5d058:	ba ac da 00 00       	mov    edx,@obj3:menu_cpp_variable_138                              ; fixup: num: 15205, src obj: 1, src ofs: 0x5d059, dst obj: 3, dst ofs: 0xdaac
   5d05d:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15204, src obj: 1, src ofs: 0x5d05f, dst obj: 3, dst ofs: 0x25bcc
   5d063:	e8 98 cb fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5d068:	eb 31                	jmp    ShowTips_branch_60
ShowTips_branch_59:
   5d06a:	b8 50 00 00 00       	mov    eax,0x50
   5d06f:	e8 a4 4e 01 00       	call   W?$nwn(ui)pnv
   5d074:	85 c0                	test   eax,eax
   5d076:	74 23                	je     ShowTips_branch_60
   5d078:	6a 00                	push   0x0
   5d07a:	6a c3                	push   0xffffffc3
   5d07c:	68 16 01 00 00       	push   0x116
   5d081:	b9 bb da 00 00       	mov    ecx,@obj3:menu_cpp_variable_139                              ; fixup: num: 15203, src obj: 1, src ofs: 0x5d082, dst obj: 3, dst ofs: 0xdabb
   5d086:	68 02 01 00 00       	push   0x102
   5d08b:	ba c8 da 00 00       	mov    edx,@obj3:menu_cpp_variable_140                              ; fixup: num: 15202, src obj: 1, src ofs: 0x5d08c, dst obj: 3, dst ofs: 0xdac8
   5d090:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15201, src obj: 1, src ofs: 0x5d092, dst obj: 3, dst ofs: 0x25bcc
   5d096:	e8 65 cb fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_60:
   5d09b:	89 c6                	mov    esi,eax
   5d09d:	85 f6                	test   esi,esi
   5d09f:	75 11                	jne    ShowTips_branch_61
   5d0a1:	bb d8 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_141                              ; fixup: num: 15200, src obj: 1, src ofs: 0x5d0a2, dst obj: 3, dst ofs: 0xdad8
   5d0a6:	ba df 06 00 00       	mov    edx,0x6df
   5d0ab:	31 c0                	xor    eax,eax
   5d0ad:	e8 7e af fd ff       	call   _error_report
ShowTips_branch_61:
   5d0b2:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 15199, src obj: 1, src ofs: 0x5d0b4, dst obj: 3, dst ofs: 0x25978
   5d0bc:	7c 2b                	jl     ShowTips_branch_62
   5d0be:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 15215, src obj: 1, src ofs: 0x5d0c0, dst obj: 3, dst ofs: 0x25978
   5d0c8:	7f 1f                	jg     ShowTips_branch_62
   5d0ca:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15214, src obj: 1, src ofs: 0x5d0cc, dst obj: 3, dst ofs: 0x2597c
   5d0d4:	7c 13                	jl     ShowTips_branch_62
   5d0d6:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15213, src obj: 1, src ofs: 0x5d0d8, dst obj: 3, dst ofs: 0x2597c
   5d0e0:	7f 07                	jg     ShowTips_branch_62
   5d0e2:	b8 01 00 00 00       	mov    eax,0x1
   5d0e7:	eb 02                	jmp    ShowTips_branch_63
ShowTips_branch_62:
   5d0e9:	31 c0                	xor    eax,eax
ShowTips_branch_63:
   5d0eb:	85 c0                	test   eax,eax
   5d0ed:	0f 85 a5 00 00 00    	jne    ShowTips_branch_67
   5d0f3:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
   5d0f7:	0f 84 9b 00 00 00    	je     ShowTips_branch_67
   5d0fd:	30 c0                	xor    al,al
   5d0ff:	88 45 f8             	mov    BYTE PTR [ebp-0x8],al
   5d102:	85 f6                	test   esi,esi
   5d104:	74 0e                	je     ShowTips_branch_64
   5d106:	89 f0                	mov    eax,esi
   5d108:	31 d2                	xor    edx,edx
   5d10a:	e8 11 ce fe ff       	call   W?$dt:TEXTBM$n()_
   5d10f:	e8 64 4f 01 00       	call   W?$dln(pnv)v
ShowTips_branch_64:
   5d114:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 15212, src obj: 1, src ofs: 0x5d116, dst obj: 3, dst ofs: 0x10fa6
   5d11b:	74 33                	je     ShowTips_branch_65
   5d11d:	b8 50 00 00 00       	mov    eax,0x50
   5d122:	e8 f1 4d 01 00       	call   W?$nwn(ui)pnv
   5d127:	85 c0                	test   eax,eax
   5d129:	74 56                	je     ShowTips_branch_66
   5d12b:	6a 00                	push   0x0
   5d12d:	6a c3                	push   0xffffffc3
   5d12f:	68 16 01 00 00       	push   0x116
   5d134:	b9 f0 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_142                              ; fixup: num: 15211, src obj: 1, src ofs: 0x5d135, dst obj: 3, dst ofs: 0xdaf0
   5d139:	68 02 01 00 00       	push   0x102
   5d13e:	ba fd da 00 00       	mov    edx,@obj3:menu_cpp_variable_143                              ; fixup: num: 15210, src obj: 1, src ofs: 0x5d13f, dst obj: 3, dst ofs: 0xdafd
   5d143:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15209, src obj: 1, src ofs: 0x5d145, dst obj: 3, dst ofs: 0x25bd0
   5d149:	e8 b2 ca fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5d14e:	eb 31                	jmp    ShowTips_branch_66
ShowTips_branch_65:
   5d150:	b8 50 00 00 00       	mov    eax,0x50
   5d155:	e8 be 4d 01 00       	call   W?$nwn(ui)pnv
   5d15a:	85 c0                	test   eax,eax
   5d15c:	74 23                	je     ShowTips_branch_66
   5d15e:	6a 00                	push   0x0
   5d160:	6a c3                	push   0xffffffc3
   5d162:	68 16 01 00 00       	push   0x116
   5d167:	b9 0c db 00 00       	mov    ecx,@obj3:menu_cpp_variable_144                              ; fixup: num: 15208, src obj: 1, src ofs: 0x5d168, dst obj: 3, dst ofs: 0xdb0c
   5d16c:	68 02 01 00 00       	push   0x102
   5d171:	ba 19 db 00 00       	mov    edx,@obj3:menu_cpp_variable_145                              ; fixup: num: 15225, src obj: 1, src ofs: 0x5d172, dst obj: 3, dst ofs: 0xdb19
   5d176:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15224, src obj: 1, src ofs: 0x5d178, dst obj: 3, dst ofs: 0x25bd0
   5d17c:	e8 7f ca fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_66:
   5d181:	89 c6                	mov    esi,eax
   5d183:	85 f6                	test   esi,esi
   5d185:	75 11                	jne    ShowTips_branch_67
   5d187:	bb 29 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_146                              ; fixup: num: 15223, src obj: 1, src ofs: 0x5d188, dst obj: 3, dst ofs: 0xdb29
   5d18c:	ba e9 06 00 00       	mov    edx,0x6e9
   5d191:	31 c0                	xor    eax,eax
   5d193:	e8 98 ae fd ff       	call   _error_report
ShowTips_branch_67:
   5d198:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15222, src obj: 1, src ofs: 0x5d19a, dst obj: 3, dst ofs: 0x25974
   5d19f:	0f 84 89 fa ff ff    	je     ShowTips_branch_25
   5d1a5:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 15221, src obj: 1, src ofs: 0x5d1a7, dst obj: 3, dst ofs: 0x25978
   5d1af:	7c 2b                	jl     ShowTips_branch_68
   5d1b1:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 15220, src obj: 1, src ofs: 0x5d1b3, dst obj: 3, dst ofs: 0x25978
   5d1bb:	7f 1f                	jg     ShowTips_branch_68
   5d1bd:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15219, src obj: 1, src ofs: 0x5d1bf, dst obj: 3, dst ofs: 0x2597c
   5d1c7:	7c 13                	jl     ShowTips_branch_68
   5d1c9:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15218, src obj: 1, src ofs: 0x5d1cb, dst obj: 3, dst ofs: 0x2597c
   5d1d3:	7f 07                	jg     ShowTips_branch_68
   5d1d5:	b8 01 00 00 00       	mov    eax,0x1
   5d1da:	eb 02                	jmp    ShowTips_branch_69
ShowTips_branch_68:
   5d1dc:	31 c0                	xor    eax,eax
ShowTips_branch_69:
   5d1de:	85 c0                	test   eax,eax
   5d1e0:	0f 84 48 fa ff ff    	je     ShowTips_branch_25
   5d1e6:	85 f6                	test   esi,esi
   5d1e8:	74 0e                	je     ShowTips_branch_70
   5d1ea:	89 f0                	mov    eax,esi
   5d1ec:	31 d2                	xor    edx,edx
   5d1ee:	e8 2d cd fe ff       	call   W?$dt:TEXTBM$n()_
   5d1f3:	e8 80 4e 01 00       	call   W?$dln(pnv)v
ShowTips_branch_70:
   5d1f8:	8a 35 a6 0f 01 00    	mov    dh,BYTE PTR ds:@obj3:use_quicktips                           ; fixup: num: 15217, src obj: 1, src ofs: 0x5d1fa, dst obj: 3, dst ofs: 0x10fa6
   5d1fe:	80 f6 01             	xor    dh,0x1
   5d201:	88 35 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dh                           ; fixup: num: 15216, src obj: 1, src ofs: 0x5d203, dst obj: 3, dst ofs: 0x10fa6
   5d207:	74 33                	je     ShowTips_branch_71
   5d209:	b8 50 00 00 00       	mov    eax,0x50
   5d20e:	e8 05 4d 01 00       	call   W?$nwn(ui)pnv
   5d213:	85 c0                	test   eax,eax
   5d215:	74 56                	je     ShowTips_branch_72
   5d217:	6a 00                	push   0x0
   5d219:	6a c3                	push   0xffffffc3
   5d21b:	68 16 01 00 00       	push   0x116
   5d220:	b9 41 db 00 00       	mov    ecx,@obj3:menu_cpp_variable_147                              ; fixup: num: 15240, src obj: 1, src ofs: 0x5d221, dst obj: 3, dst ofs: 0xdb41
   5d225:	68 02 01 00 00       	push   0x102
   5d22a:	ba 4e db 00 00       	mov    edx,@obj3:menu_cpp_variable_148                              ; fixup: num: 15239, src obj: 1, src ofs: 0x5d22b, dst obj: 3, dst ofs: 0xdb4e
   5d22f:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15238, src obj: 1, src ofs: 0x5d231, dst obj: 3, dst ofs: 0x25bcc
   5d235:	e8 c6 c9 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5d23a:	eb 31                	jmp    ShowTips_branch_72
ShowTips_branch_71:
   5d23c:	b8 50 00 00 00       	mov    eax,0x50
   5d241:	e8 d2 4c 01 00       	call   W?$nwn(ui)pnv
   5d246:	85 c0                	test   eax,eax
   5d248:	74 23                	je     ShowTips_branch_72
   5d24a:	6a 00                	push   0x0
   5d24c:	6a c3                	push   0xffffffc3
   5d24e:	68 16 01 00 00       	push   0x116
   5d253:	b9 5d db 00 00       	mov    ecx,@obj3:menu_cpp_variable_149                              ; fixup: num: 15237, src obj: 1, src ofs: 0x5d254, dst obj: 3, dst ofs: 0xdb5d
   5d258:	68 02 01 00 00       	push   0x102
   5d25d:	ba 6a db 00 00       	mov    edx,@obj3:menu_cpp_variable_150                              ; fixup: num: 15236, src obj: 1, src ofs: 0x5d25e, dst obj: 3, dst ofs: 0xdb6a
   5d262:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15235, src obj: 1, src ofs: 0x5d264, dst obj: 3, dst ofs: 0x25bcc
   5d268:	e8 93 c9 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTips_branch_72:
   5d26d:	89 c6                	mov    esi,eax
   5d26f:	85 f6                	test   esi,esi
   5d271:	75 11                	jne    ShowTips_branch_73
   5d273:	bb 7a db 00 00       	mov    ebx,@obj3:menu_cpp_variable_151                              ; fixup: num: 15234, src obj: 1, src ofs: 0x5d274, dst obj: 3, dst ofs: 0xdb7a
   5d278:	ba f5 06 00 00       	mov    edx,0x6f5
   5d27d:	31 c0                	xor    eax,eax
   5d27f:	e8 ac ad fd ff       	call   _error_report
ShowTips_branch_73:
   5d284:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15233, src obj: 1, src ofs: 0x5d286, dst obj: 3, dst ofs: 0x25974
   5d28b:	0f 84 9d f9 ff ff    	je     ShowTips_branch_25
   5d291:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15232, src obj: 1, src ofs: 0x5d292, dst obj: 3, dst ofs: 0x1a1d4
   5d296:	e8 05 e7 fa ff       	call   update_mod_9
   5d29b:	eb e7                	jmp    ShowTips_branch_73
ShowTips_branch_74:
   5d29d:	31 c0                	xor    eax,eax
   5d29f:	a0 a6 0f 01 00       	mov    al,ds:@obj3:use_quicktips                                    ; fixup: num: 15231, src obj: 1, src ofs: 0x5d2a0, dst obj: 3, dst ofs: 0x10fa6
   5d2a4:	85 c0                	test   eax,eax
   5d2a6:	75 0c                	jne    ShowTips_branch_75
   5d2a8:	bb 92 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_152                              ; fixup: num: 15230, src obj: 1, src ofs: 0x5d2a9, dst obj: 3, dst ofs: 0xdb92
   5d2ad:	ba 96 db 00 00       	mov    edx,@obj3:menu_cpp_variable_153                              ; fixup: num: 15229, src obj: 1, src ofs: 0x5d2ae, dst obj: 3, dst ofs: 0xdb96
   5d2b2:	eb 0a                	jmp    ShowTips_branch_76
ShowTips_branch_75:
   5d2b4:	bb a1 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_154                              ; fixup: num: 15228, src obj: 1, src ofs: 0x5d2b5, dst obj: 3, dst ofs: 0xdba1
   5d2b9:	ba a4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_155                              ; fixup: num: 15227, src obj: 1, src ofs: 0x5d2ba, dst obj: 3, dst ofs: 0xdba4
ShowTips_branch_76:
   5d2be:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 15226, src obj: 1, src ofs: 0x5d2bf, dst obj: 3, dst ofs: 0x32438
   5d2c3:	e8 a8 05 01 00       	call   set
   5d2c8:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
   5d2cb:	85 db                	test   ebx,ebx
   5d2cd:	74 0e                	je     ShowTips_branch_77
   5d2cf:	89 d8                	mov    eax,ebx
   5d2d1:	31 d2                	xor    edx,edx
   5d2d3:	e8 48 cc fe ff       	call   W?$dt:TEXTBM$n()_
   5d2d8:	e8 9b 4d 01 00       	call   W?$dln(pnv)v
ShowTips_branch_77:
   5d2dd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
   5d2e0:	85 c0                	test   eax,eax
   5d2e2:	74 0c                	je     ShowTips_branch_78
   5d2e4:	31 d2                	xor    edx,edx
   5d2e6:	e8 35 cc fe ff       	call   W?$dt:TEXTBM$n()_
   5d2eb:	e8 88 4d 01 00       	call   W?$dln(pnv)v
ShowTips_branch_78:
   5d2f0:	85 f6                	test   esi,esi
   5d2f2:	74 0e                	je     ShowTips_branch_79
   5d2f4:	89 f0                	mov    eax,esi
   5d2f6:	31 d2                	xor    edx,edx
   5d2f8:	e8 23 cc fe ff       	call   W?$dt:TEXTBM$n()_
   5d2fd:	e8 76 4d 01 00       	call   W?$dln(pnv)v
ShowTips_branch_79:
   5d302:	85 ff                	test   edi,edi
   5d304:	74 0e                	je     ShowTips_branch_80
   5d306:	89 f8                	mov    eax,edi
   5d308:	31 d2                	xor    edx,edx
   5d30a:	e8 11 cc fe ff       	call   W?$dt:TEXTBM$n()_
   5d30f:	e8 64 4d 01 00       	call   W?$dln(pnv)v
ShowTips_branch_80:
   5d314:	84 c9                	test   cl,cl
   5d316:	0f 84 e9 f6 ff ff    	je     ShowTips_branch_12
   5d31c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
   5d31f:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
   5d322:	e8 17 3b 01 00       	call   fclose_
   5d327:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 15242, src obj: 1, src ofs: 0x5d328, dst obj: 3, dst ofs: 0x25a88
   5d32c:	e8 bf f3 fe ff       	call   remove_bitmap
   5d331:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
   5d335:	74 0f                	je     ShowTips_branch_81
   5d337:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
   5d33a:	31 d2                	xor    edx,edx
   5d33c:	e8 5f e0 fd ff       	call   W?$dt:BTMAP$n()_
   5d341:	e8 32 4d 01 00       	call   W?$dln(pnv)v
ShowTips_branch_81:
   5d346:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
   5d349:	e8 9a 40 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5d34e:	89 ec                	mov    esp,ebp
   5d350:	5d                   	pop    ebp
   5d351:	5f                   	pop    edi
   5d352:	5e                   	pop    esi
   5d353:	5a                   	pop    edx
   5d354:	59                   	pop    ecx
   5d355:	5b                   	pop    ebx
   5d356:	c3                   	ret    
   5d357:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   5d35d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'ShowTip'                            -
;-------------------------------------------------
ShowTip:
   5d360:	53                   	push   ebx
   5d361:	51                   	push   ecx
   5d362:	52                   	push   edx
   5d363:	56                   	push   esi
   5d364:	57                   	push   edi
   5d365:	55                   	push   ebp
   5d366:	83 ec 10             	sub    esp,0x10
   5d369:	89 c7                	mov    edi,eax
   5d36b:	30 e4                	xor    ah,ah
   5d36d:	ba f6 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_109                              ; fixup: num: 15241, src obj: 1, src ofs: 0x5d36e, dst obj: 3, dst ofs: 0xd8f6
   5d372:	88 64 24 08          	mov    BYTE PTR [esp+0x8],ah
   5d376:	88 64 24 0c          	mov    BYTE PTR [esp+0xc],ah
   5d37a:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 15254, src obj: 1, src ofs: 0x5d37b, dst obj: 3, dst ofs: 0x32438
   5d37f:	e8 4c 04 01 00       	call   get
   5d384:	ba f3 d8 00 00       	mov    edx,@obj3:menu_cpp_variable_108                              ; fixup: num: 15253, src obj: 1, src ofs: 0x5d385, dst obj: 3, dst ofs: 0xd8f3
   5d389:	e8 a2 90 01 00       	call   strcmp_
   5d38e:	85 c0                	test   eax,eax
   5d390:	75 50                	jne    ShowTip_branch_2
   5d392:	b3 01                	mov    bl,0x1
   5d394:	b8 50 00 00 00       	mov    eax,0x50
   5d399:	88 1d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,bl                           ; fixup: num: 15252, src obj: 1, src ofs: 0x5d39b, dst obj: 3, dst ofs: 0x10fa6
   5d39f:	e8 74 4b 01 00       	call   W?$nwn(ui)pnv
   5d3a4:	85 c0                	test   eax,eax
   5d3a6:	74 23                	je     ShowTip_branch_1
   5d3a8:	6a 00                	push   0x0
   5d3aa:	6a c3                	push   0xffffffc3
   5d3ac:	68 16 01 00 00       	push   0x116
   5d3b1:	b9 01 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_110                              ; fixup: num: 15251, src obj: 1, src ofs: 0x5d3b2, dst obj: 3, dst ofs: 0xd901
   5d3b6:	68 02 01 00 00       	push   0x102
   5d3bb:	ba 0e d9 00 00       	mov    edx,@obj3:menu_cpp_variable_111                              ; fixup: num: 15250, src obj: 1, src ofs: 0x5d3bc, dst obj: 3, dst ofs: 0xd90e
   5d3c0:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15249, src obj: 1, src ofs: 0x5d3c2, dst obj: 3, dst ofs: 0x25bd0
   5d3c6:	e8 35 c8 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_1:
   5d3cb:	89 c6                	mov    esi,eax
   5d3cd:	85 c0                	test   eax,eax
   5d3cf:	75 5f                	jne    ShowTip_branch_4
   5d3d1:	bb 1b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_112                              ; fixup: num: 15248, src obj: 1, src ofs: 0x5d3d2, dst obj: 3, dst ofs: 0xd91b
   5d3d6:	ba 86 06 00 00       	mov    edx,0x686
   5d3db:	e8 50 ac fd ff       	call   _error_report
   5d3e0:	eb 4e                	jmp    ShowTip_branch_4
ShowTip_branch_2:
   5d3e2:	30 f6                	xor    dh,dh
   5d3e4:	b8 50 00 00 00       	mov    eax,0x50
   5d3e9:	88 35 a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,dh                           ; fixup: num: 15247, src obj: 1, src ofs: 0x5d3eb, dst obj: 3, dst ofs: 0x10fa6
   5d3ef:	e8 24 4b 01 00       	call   W?$nwn(ui)pnv
   5d3f4:	85 c0                	test   eax,eax
   5d3f6:	74 23                	je     ShowTip_branch_3
   5d3f8:	6a 00                	push   0x0
   5d3fa:	6a c3                	push   0xffffffc3
   5d3fc:	68 16 01 00 00       	push   0x116
   5d401:	b9 33 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_113                              ; fixup: num: 15246, src obj: 1, src ofs: 0x5d402, dst obj: 3, dst ofs: 0xd933
   5d406:	68 02 01 00 00       	push   0x102
   5d40b:	ba 40 d9 00 00       	mov    edx,@obj3:menu_cpp_variable_114                              ; fixup: num: 15245, src obj: 1, src ofs: 0x5d40c, dst obj: 3, dst ofs: 0xd940
   5d410:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15244, src obj: 1, src ofs: 0x5d412, dst obj: 3, dst ofs: 0x25bd0
   5d416:	e8 e5 c7 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_3:
   5d41b:	89 c6                	mov    esi,eax
   5d41d:	85 c0                	test   eax,eax
   5d41f:	75 0f                	jne    ShowTip_branch_4
   5d421:	bb 4e d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_115                              ; fixup: num: 15243, src obj: 1, src ofs: 0x5d422, dst obj: 3, dst ofs: 0xd94e
   5d426:	ba 8d 06 00 00       	mov    edx,0x68d
   5d42b:	e8 00 ac fd ff       	call   _error_report
ShowTip_branch_4:
   5d430:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15139, src obj: 1, src ofs: 0x5d431, dst obj: 3, dst ofs: 0x1a1d4
   5d435:	e8 66 e5 fa ff       	call   update_mod_9
   5d43a:	85 ff                	test   edi,edi
   5d43c:	75 11                	jne    ShowTip_branch_5
   5d43e:	bb 66 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_116                              ; fixup: num: 15262, src obj: 1, src ofs: 0x5d43f, dst obj: 3, dst ofs: 0xd966
   5d443:	ba 91 06 00 00       	mov    edx,0x691
   5d448:	31 c0                	xor    eax,eax
   5d44a:	e8 e1 ab fd ff       	call   _error_report
ShowTip_branch_5:
   5d44f:	b8 50 00 00 00       	mov    eax,0x50
   5d454:	e8 bf 4a 01 00       	call   W?$nwn(ui)pnv
   5d459:	85 c0                	test   eax,eax
   5d45b:	74 23                	je     ShowTip_branch_6
   5d45d:	68 2c 01 00 00       	push   0x12c
   5d462:	6a c3                	push   0xffffffc3
   5d464:	68 e4 00 00 00       	push   0xe4
   5d469:	b9 82 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_117                              ; fixup: num: 15261, src obj: 1, src ofs: 0x5d46a, dst obj: 3, dst ofs: 0xd982
   5d46e:	68 b4 00 00 00       	push   0xb4
   5d473:	8b 1d c4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:textfont                              ; fixup: num: 15260, src obj: 1, src ofs: 0x5d475, dst obj: 3, dst ofs: 0x25bc4
   5d479:	89 fa                	mov    edx,edi
   5d47b:	e8 80 c7 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_6:
   5d480:	89 04 24             	mov    DWORD PTR [esp],eax
   5d483:	85 c0                	test   eax,eax
   5d485:	75 0f                	jne    ShowTip_branch_7
   5d487:	bb 8b d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_118                              ; fixup: num: 15259, src obj: 1, src ofs: 0x5d488, dst obj: 3, dst ofs: 0xd98b
   5d48c:	ba 93 06 00 00       	mov    edx,0x693
   5d491:	e8 9a ab fd ff       	call   _error_report
ShowTip_branch_7:
   5d496:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15258, src obj: 1, src ofs: 0x5d497, dst obj: 3, dst ofs: 0x1a1d4
   5d49b:	e8 00 e5 fa ff       	call   update_mod_9
   5d4a0:	b8 50 00 00 00       	mov    eax,0x50
   5d4a5:	e8 6e 4a 01 00       	call   W?$nwn(ui)pnv
   5d4aa:	85 c0                	test   eax,eax
   5d4ac:	74 23                	je     ShowTip_branch_8
   5d4ae:	6a 00                	push   0x0
   5d4b0:	6a c3                	push   0xffffffc3
   5d4b2:	68 16 01 00 00       	push   0x116
   5d4b7:	b9 a3 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_119                              ; fixup: num: 15257, src obj: 1, src ofs: 0x5d4b8, dst obj: 3, dst ofs: 0xd9a3
   5d4bc:	68 b4 00 00 00       	push   0xb4
   5d4c1:	ba af d9 00 00       	mov    edx,@obj3:menu_cpp_variable_120                              ; fixup: num: 15256, src obj: 1, src ofs: 0x5d4c2, dst obj: 3, dst ofs: 0xd9af
   5d4c6:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15255, src obj: 1, src ofs: 0x5d4c8, dst obj: 3, dst ofs: 0x25bd0
   5d4cc:	e8 2f c7 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_8:
   5d4d1:	89 c5                	mov    ebp,eax
   5d4d3:	85 c0                	test   eax,eax
   5d4d5:	75 0f                	jne    ShowTip_branch_9
   5d4d7:	bb b4 d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_121                              ; fixup: num: 15151, src obj: 1, src ofs: 0x5d4d8, dst obj: 3, dst ofs: 0xd9b4
   5d4dc:	ba 98 06 00 00       	mov    edx,0x698
   5d4e1:	e8 4a ab fd ff       	call   _error_report
ShowTip_branch_9:
   5d4e6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15150, src obj: 1, src ofs: 0x5d4e7, dst obj: 3, dst ofs: 0x1a1d4
   5d4eb:	e8 b0 e4 fa ff       	call   update_mod_9
   5d4f0:	b8 50 00 00 00       	mov    eax,0x50
   5d4f5:	e8 1e 4a 01 00       	call   W?$nwn(ui)pnv
   5d4fa:	85 c0                	test   eax,eax
   5d4fc:	74 23                	je     ShowTip_branch_10
   5d4fe:	6a 00                	push   0x0
   5d500:	6a c3                	push   0xffffffc3
   5d502:	68 16 01 00 00       	push   0x116
   5d507:	b9 cc d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_122                              ; fixup: num: 15149, src obj: 1, src ofs: 0x5d508, dst obj: 3, dst ofs: 0xd9cc
   5d50c:	68 a4 01 00 00       	push   0x1a4
   5d511:	ba da d9 00 00       	mov    edx,@obj3:menu_cpp_variable_123                              ; fixup: num: 15148, src obj: 1, src ofs: 0x5d512, dst obj: 3, dst ofs: 0xd9da
   5d516:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15147, src obj: 1, src ofs: 0x5d518, dst obj: 3, dst ofs: 0x25bd0
   5d51c:	e8 df c6 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_10:
   5d521:	89 c7                	mov    edi,eax
   5d523:	85 c0                	test   eax,eax
   5d525:	75 0f                	jne    ShowTip_branch_11
   5d527:	bb df d9 00 00       	mov    ebx,@obj3:menu_cpp_variable_124                              ; fixup: num: 15146, src obj: 1, src ofs: 0x5d528, dst obj: 3, dst ofs: 0xd9df
   5d52c:	ba 9d 06 00 00       	mov    edx,0x69d
   5d531:	e8 fa aa fd ff       	call   _error_report
ShowTip_branch_11:
   5d536:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15145, src obj: 1, src ofs: 0x5d537, dst obj: 3, dst ofs: 0x1a1d4
   5d53b:	e8 60 e4 fa ff       	call   update_mod_9
ShowTip_branch_12:
   5d540:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 15144, src obj: 1, src ofs: 0x5d541, dst obj: 3, dst ofs: 0x25a84
   5d545:	e8 56 07 ff ff       	call   update_mod_84
   5d54a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15143, src obj: 1, src ofs: 0x5d54b, dst obj: 3, dst ofs: 0x1a1d4
   5d54f:	e8 4c e4 fa ff       	call   update_mod_9
   5d554:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 15142, src obj: 1, src ofs: 0x5d557, dst obj: 3, dst ofs: 0x25908
   5d55b:	83 f8 01             	cmp    eax,0x1
   5d55e:	75 13                	jne    ShowTip_branch_14
   5d560:	b1 01                	mov    cl,0x1
ShowTip_branch_13:
   5d562:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 15141, src obj: 1, src ofs: 0x5d565, dst obj: 3, dst ofs: 0x25908
   5d569:	83 f8 01             	cmp    eax,0x1
   5d56c:	74 f4                	je     ShowTip_branch_13
   5d56e:	e9 40 06 00 00       	jmp    ShowTip_branch_61
ShowTip_branch_14:
   5d573:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 15140, src obj: 1, src ofs: 0x5d575, dst obj: 3, dst ofs: 0x25978
   5d57d:	7c 2b                	jl     ShowTip_branch_15
   5d57f:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 15160, src obj: 1, src ofs: 0x5d581, dst obj: 3, dst ofs: 0x25978
   5d589:	7f 1f                	jg     ShowTip_branch_15
   5d58b:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15159, src obj: 1, src ofs: 0x5d58d, dst obj: 3, dst ofs: 0x2597c
   5d595:	7c 13                	jl     ShowTip_branch_15
   5d597:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15158, src obj: 1, src ofs: 0x5d599, dst obj: 3, dst ofs: 0x2597c
   5d5a1:	7f 07                	jg     ShowTip_branch_15
   5d5a3:	b8 01 00 00 00       	mov    eax,0x1
   5d5a8:	eb 02                	jmp    ShowTip_branch_16
ShowTip_branch_15:
   5d5aa:	31 c0                	xor    eax,eax
ShowTip_branch_16:
   5d5ac:	85 c0                	test   eax,eax
   5d5ae:	74 64                	je     ShowTip_branch_19
   5d5b0:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
   5d5b5:	75 5d                	jne    ShowTip_branch_19
   5d5b7:	c6 44 24 08 01       	mov    BYTE PTR [esp+0x8],0x1
   5d5bc:	85 ed                	test   ebp,ebp
   5d5be:	74 0e                	je     ShowTip_branch_17
   5d5c0:	89 e8                	mov    eax,ebp
   5d5c2:	31 d2                	xor    edx,edx
   5d5c4:	e8 57 c9 fe ff       	call   W?$dt:TEXTBM$n()_
   5d5c9:	e8 aa 4a 01 00       	call   W?$dln(pnv)v
ShowTip_branch_17:
   5d5ce:	b8 50 00 00 00       	mov    eax,0x50
   5d5d3:	e8 40 49 01 00       	call   W?$nwn(ui)pnv
   5d5d8:	85 c0                	test   eax,eax
   5d5da:	74 23                	je     ShowTip_branch_18
   5d5dc:	6a 00                	push   0x0
   5d5de:	6a c3                	push   0xffffffc3
   5d5e0:	68 16 01 00 00       	push   0x116
   5d5e5:	b9 f7 d9 00 00       	mov    ecx,@obj3:menu_cpp_variable_125                              ; fixup: num: 15157, src obj: 1, src ofs: 0x5d5e6, dst obj: 3, dst ofs: 0xd9f7
   5d5ea:	68 b4 00 00 00       	push   0xb4
   5d5ef:	ba 03 da 00 00       	mov    edx,@obj3:menu_cpp_variable_126                              ; fixup: num: 15156, src obj: 1, src ofs: 0x5d5f0, dst obj: 3, dst ofs: 0xda03
   5d5f4:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15155, src obj: 1, src ofs: 0x5d5f6, dst obj: 3, dst ofs: 0x25bcc
   5d5fa:	e8 01 c6 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_18:
   5d5ff:	89 c5                	mov    ebp,eax
   5d601:	85 c0                	test   eax,eax
   5d603:	75 0f                	jne    ShowTip_branch_19
   5d605:	bb 08 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_127                              ; fixup: num: 15154, src obj: 1, src ofs: 0x5d606, dst obj: 3, dst ofs: 0xda08
   5d60a:	ba b0 06 00 00       	mov    edx,0x6b0
   5d60f:	e8 1c aa fd ff       	call   _error_report
ShowTip_branch_19:
   5d614:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 15153, src obj: 1, src ofs: 0x5d616, dst obj: 3, dst ofs: 0x25978
   5d61e:	7c 2b                	jl     ShowTip_branch_20
   5d620:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 15152, src obj: 1, src ofs: 0x5d622, dst obj: 3, dst ofs: 0x25978
   5d62a:	7f 1f                	jg     ShowTip_branch_20
   5d62c:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15169, src obj: 1, src ofs: 0x5d62e, dst obj: 3, dst ofs: 0x2597c
   5d636:	7c 13                	jl     ShowTip_branch_20
   5d638:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15168, src obj: 1, src ofs: 0x5d63a, dst obj: 3, dst ofs: 0x2597c
   5d642:	7f 07                	jg     ShowTip_branch_20
   5d644:	b8 01 00 00 00       	mov    eax,0x1
   5d649:	eb 02                	jmp    ShowTip_branch_21
ShowTip_branch_20:
   5d64b:	31 c0                	xor    eax,eax
ShowTip_branch_21:
   5d64d:	85 c0                	test   eax,eax
   5d64f:	75 65                	jne    ShowTip_branch_24
   5d651:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
   5d656:	74 5e                	je     ShowTip_branch_24
   5d658:	30 c0                	xor    al,al
   5d65a:	88 44 24 08          	mov    BYTE PTR [esp+0x8],al
   5d65e:	85 ed                	test   ebp,ebp
   5d660:	74 0e                	je     ShowTip_branch_22
   5d662:	89 e8                	mov    eax,ebp
   5d664:	31 d2                	xor    edx,edx
   5d666:	e8 b5 c8 fe ff       	call   W?$dt:TEXTBM$n()_
   5d66b:	e8 08 4a 01 00       	call   W?$dln(pnv)v
ShowTip_branch_22:
   5d670:	b8 50 00 00 00       	mov    eax,0x50
   5d675:	e8 9e 48 01 00       	call   W?$nwn(ui)pnv
   5d67a:	85 c0                	test   eax,eax
   5d67c:	74 23                	je     ShowTip_branch_23
   5d67e:	6a 00                	push   0x0
   5d680:	6a c3                	push   0xffffffc3
   5d682:	68 16 01 00 00       	push   0x116
   5d687:	b9 20 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_128                              ; fixup: num: 15167, src obj: 1, src ofs: 0x5d688, dst obj: 3, dst ofs: 0xda20
   5d68c:	68 b4 00 00 00       	push   0xb4
   5d691:	ba 2c da 00 00       	mov    edx,@obj3:menu_cpp_variable_129                              ; fixup: num: 15166, src obj: 1, src ofs: 0x5d692, dst obj: 3, dst ofs: 0xda2c
   5d696:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15165, src obj: 1, src ofs: 0x5d698, dst obj: 3, dst ofs: 0x25bd0
   5d69c:	e8 5f c5 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_23:
   5d6a1:	89 c5                	mov    ebp,eax
   5d6a3:	85 c0                	test   eax,eax
   5d6a5:	75 0f                	jne    ShowTip_branch_24
   5d6a7:	bb 31 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_130                              ; fixup: num: 15164, src obj: 1, src ofs: 0x5d6a8, dst obj: 3, dst ofs: 0xda31
   5d6ac:	ba b8 06 00 00       	mov    edx,0x6b8
   5d6b1:	e8 7a a9 fd ff       	call   _error_report
ShowTip_branch_24:
   5d6b6:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15163, src obj: 1, src ofs: 0x5d6b8, dst obj: 3, dst ofs: 0x25974
   5d6bd:	0f 84 66 00 00 00    	je     ShowTip_branch_28
   5d6c3:	81 3d 78 59 02 00 b4 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xb4                     ; fixup: num: 15162, src obj: 1, src ofs: 0x5d6c5, dst obj: 3, dst ofs: 0x25978
   5d6cd:	7c 2b                	jl     ShowTip_branch_25
   5d6cf:	81 3d 78 59 02 00 ed 00 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0xed                     ; fixup: num: 15161, src obj: 1, src ofs: 0x5d6d1, dst obj: 3, dst ofs: 0x25978
   5d6d9:	7f 1f                	jg     ShowTip_branch_25
   5d6db:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15178, src obj: 1, src ofs: 0x5d6dd, dst obj: 3, dst ofs: 0x2597c
   5d6e5:	7c 13                	jl     ShowTip_branch_25
   5d6e7:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15177, src obj: 1, src ofs: 0x5d6e9, dst obj: 3, dst ofs: 0x2597c
   5d6f1:	7f 07                	jg     ShowTip_branch_25
   5d6f3:	b8 01 00 00 00       	mov    eax,0x1
   5d6f8:	eb 02                	jmp    ShowTip_branch_26
ShowTip_branch_25:
   5d6fa:	31 c0                	xor    eax,eax
ShowTip_branch_26:
   5d6fc:	85 c0                	test   eax,eax
   5d6fe:	74 29                	je     ShowTip_branch_28
   5d700:	b1 01                	mov    cl,0x1
   5d702:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15176, src obj: 1, src ofs: 0x5d704, dst obj: 3, dst ofs: 0x25974
   5d709:	0f 84 a4 04 00 00    	je     ShowTip_branch_61
   5d70f:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 15175, src obj: 1, src ofs: 0x5d710, dst obj: 3, dst ofs: 0x1a1d4
ShowTip_branch_27:
   5d714:	89 d8                	mov    eax,ebx
   5d716:	e8 85 e2 fa ff       	call   update_mod_9
   5d71b:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15174, src obj: 1, src ofs: 0x5d71d, dst obj: 3, dst ofs: 0x25974
   5d722:	75 f0                	jne    ShowTip_branch_27
   5d724:	e9 8a 04 00 00       	jmp    ShowTip_branch_61
ShowTip_branch_28:
   5d729:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 15173, src obj: 1, src ofs: 0x5d72b, dst obj: 3, dst ofs: 0x25978
   5d733:	7c 2b                	jl     ShowTip_branch_29
   5d735:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 15172, src obj: 1, src ofs: 0x5d737, dst obj: 3, dst ofs: 0x25978
   5d73f:	7f 1f                	jg     ShowTip_branch_29
   5d741:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15171, src obj: 1, src ofs: 0x5d743, dst obj: 3, dst ofs: 0x2597c
   5d74b:	7c 13                	jl     ShowTip_branch_29
   5d74d:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15170, src obj: 1, src ofs: 0x5d74f, dst obj: 3, dst ofs: 0x2597c
   5d757:	7f 07                	jg     ShowTip_branch_29
   5d759:	b8 01 00 00 00       	mov    eax,0x1
   5d75e:	eb 02                	jmp    ShowTip_branch_30
ShowTip_branch_29:
   5d760:	31 c0                	xor    eax,eax
ShowTip_branch_30:
   5d762:	85 c0                	test   eax,eax
   5d764:	74 64                	je     ShowTip_branch_33
   5d766:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
   5d76b:	75 5d                	jne    ShowTip_branch_33
   5d76d:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
   5d772:	85 ff                	test   edi,edi
   5d774:	74 0e                	je     ShowTip_branch_31
   5d776:	89 f8                	mov    eax,edi
   5d778:	31 d2                	xor    edx,edx
   5d77a:	e8 a1 c7 fe ff       	call   W?$dt:TEXTBM$n()_
   5d77f:	e8 f4 48 01 00       	call   W?$dln(pnv)v
ShowTip_branch_31:
   5d784:	b8 50 00 00 00       	mov    eax,0x50
   5d789:	e8 8a 47 01 00       	call   W?$nwn(ui)pnv
   5d78e:	85 c0                	test   eax,eax
   5d790:	74 23                	je     ShowTip_branch_32
   5d792:	6a 00                	push   0x0
   5d794:	6a c3                	push   0xffffffc3
   5d796:	68 16 01 00 00       	push   0x116
   5d79b:	b9 49 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_131                              ; fixup: num: 15186, src obj: 1, src ofs: 0x5d79c, dst obj: 3, dst ofs: 0xda49
   5d7a0:	68 a4 01 00 00       	push   0x1a4
   5d7a5:	ba 57 da 00 00       	mov    edx,@obj3:menu_cpp_variable_132                              ; fixup: num: 15185, src obj: 1, src ofs: 0x5d7a6, dst obj: 3, dst ofs: 0xda57
   5d7aa:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15184, src obj: 1, src ofs: 0x5d7ac, dst obj: 3, dst ofs: 0x25bcc
   5d7b0:	e8 4b c4 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_32:
   5d7b5:	89 c7                	mov    edi,eax
   5d7b7:	85 c0                	test   eax,eax
   5d7b9:	75 0f                	jne    ShowTip_branch_33
   5d7bb:	bb 5c da 00 00       	mov    ebx,@obj3:menu_cpp_variable_133                              ; fixup: num: 15183, src obj: 1, src ofs: 0x5d7bc, dst obj: 3, dst ofs: 0xda5c
   5d7c0:	ba c7 06 00 00       	mov    edx,0x6c7
   5d7c5:	e8 66 a8 fd ff       	call   _error_report
ShowTip_branch_33:
   5d7ca:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 15182, src obj: 1, src ofs: 0x5d7cc, dst obj: 3, dst ofs: 0x25978
   5d7d4:	7c 2b                	jl     ShowTip_branch_34
   5d7d6:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 15181, src obj: 1, src ofs: 0x5d7d8, dst obj: 3, dst ofs: 0x25978
   5d7e0:	7f 1f                	jg     ShowTip_branch_34
   5d7e2:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15180, src obj: 1, src ofs: 0x5d7e4, dst obj: 3, dst ofs: 0x2597c
   5d7ec:	7c 13                	jl     ShowTip_branch_34
   5d7ee:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15179, src obj: 1, src ofs: 0x5d7f0, dst obj: 3, dst ofs: 0x2597c
   5d7f8:	7f 07                	jg     ShowTip_branch_34
   5d7fa:	b8 01 00 00 00       	mov    eax,0x1
   5d7ff:	eb 02                	jmp    ShowTip_branch_35
ShowTip_branch_34:
   5d801:	31 c0                	xor    eax,eax
ShowTip_branch_35:
   5d803:	85 c0                	test   eax,eax
   5d805:	75 65                	jne    ShowTip_branch_38
   5d807:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
   5d80c:	74 5e                	je     ShowTip_branch_38
   5d80e:	30 ff                	xor    bh,bh
   5d810:	88 7c 24 0c          	mov    BYTE PTR [esp+0xc],bh
   5d814:	85 ff                	test   edi,edi
   5d816:	74 0e                	je     ShowTip_branch_36
   5d818:	89 f8                	mov    eax,edi
   5d81a:	31 d2                	xor    edx,edx
   5d81c:	e8 ff c6 fe ff       	call   W?$dt:TEXTBM$n()_
   5d821:	e8 52 48 01 00       	call   W?$dln(pnv)v
ShowTip_branch_36:
   5d826:	b8 50 00 00 00       	mov    eax,0x50
   5d82b:	e8 e8 46 01 00       	call   W?$nwn(ui)pnv
   5d830:	85 c0                	test   eax,eax
   5d832:	74 23                	je     ShowTip_branch_37
   5d834:	6a 00                	push   0x0
   5d836:	6a c3                	push   0xffffffc3
   5d838:	68 16 01 00 00       	push   0x116
   5d83d:	b9 74 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_134                              ; fixup: num: 15077, src obj: 1, src ofs: 0x5d83e, dst obj: 3, dst ofs: 0xda74
   5d842:	68 a4 01 00 00       	push   0x1a4
   5d847:	ba 82 da 00 00       	mov    edx,@obj3:menu_cpp_variable_135                              ; fixup: num: 15198, src obj: 1, src ofs: 0x5d848, dst obj: 3, dst ofs: 0xda82
   5d84c:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15197, src obj: 1, src ofs: 0x5d84e, dst obj: 3, dst ofs: 0x25bd0
   5d852:	e8 a9 c3 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_37:
   5d857:	89 c7                	mov    edi,eax
   5d859:	85 c0                	test   eax,eax
   5d85b:	75 0f                	jne    ShowTip_branch_38
   5d85d:	bb 87 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_136                              ; fixup: num: 15196, src obj: 1, src ofs: 0x5d85e, dst obj: 3, dst ofs: 0xda87
   5d862:	ba cf 06 00 00       	mov    edx,0x6cf
   5d867:	e8 c4 a7 fd ff       	call   _error_report
ShowTip_branch_38:
   5d86c:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15195, src obj: 1, src ofs: 0x5d86e, dst obj: 3, dst ofs: 0x25974
   5d873:	0f 84 66 00 00 00    	je     ShowTip_branch_42
   5d879:	81 3d 78 59 02 00 a4 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1a4                    ; fixup: num: 15194, src obj: 1, src ofs: 0x5d87b, dst obj: 3, dst ofs: 0x25978
   5d883:	7c 2b                	jl     ShowTip_branch_39
   5d885:	81 3d 78 59 02 00 eb 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x1eb                    ; fixup: num: 15193, src obj: 1, src ofs: 0x5d887, dst obj: 3, dst ofs: 0x25978
   5d88f:	7f 1f                	jg     ShowTip_branch_39
   5d891:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15192, src obj: 1, src ofs: 0x5d893, dst obj: 3, dst ofs: 0x2597c
   5d89b:	7c 13                	jl     ShowTip_branch_39
   5d89d:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15191, src obj: 1, src ofs: 0x5d89f, dst obj: 3, dst ofs: 0x2597c
   5d8a7:	7f 07                	jg     ShowTip_branch_39
   5d8a9:	b8 01 00 00 00       	mov    eax,0x1
   5d8ae:	eb 02                	jmp    ShowTip_branch_40
ShowTip_branch_39:
   5d8b0:	31 c0                	xor    eax,eax
ShowTip_branch_40:
   5d8b2:	85 c0                	test   eax,eax
   5d8b4:	74 29                	je     ShowTip_branch_42
   5d8b6:	30 c9                	xor    cl,cl
   5d8b8:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15190, src obj: 1, src ofs: 0x5d8ba, dst obj: 3, dst ofs: 0x25974
   5d8bf:	0f 84 ee 02 00 00    	je     ShowTip_branch_61
   5d8c5:	bb d4 a1 01 00       	mov    ebx,@obj3:music                                              ; fixup: num: 15189, src obj: 1, src ofs: 0x5d8c6, dst obj: 3, dst ofs: 0x1a1d4
ShowTip_branch_41:
   5d8ca:	89 d8                	mov    eax,ebx
   5d8cc:	e8 cf e0 fa ff       	call   update_mod_9
   5d8d1:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15188, src obj: 1, src ofs: 0x5d8d3, dst obj: 3, dst ofs: 0x25974
   5d8d8:	75 f0                	jne    ShowTip_branch_41
   5d8da:	e9 d4 02 00 00       	jmp    ShowTip_branch_61
ShowTip_branch_42:
   5d8df:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 15187, src obj: 1, src ofs: 0x5d8e1, dst obj: 3, dst ofs: 0x25978
   5d8e9:	7c 2b                	jl     ShowTip_branch_43
   5d8eb:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 15084, src obj: 1, src ofs: 0x5d8ed, dst obj: 3, dst ofs: 0x25978
   5d8f5:	7f 1f                	jg     ShowTip_branch_43
   5d8f7:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15083, src obj: 1, src ofs: 0x5d8f9, dst obj: 3, dst ofs: 0x2597c
   5d901:	7c 13                	jl     ShowTip_branch_43
   5d903:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15082, src obj: 1, src ofs: 0x5d905, dst obj: 3, dst ofs: 0x2597c
   5d90d:	7f 07                	jg     ShowTip_branch_43
   5d90f:	b8 01 00 00 00       	mov    eax,0x1
   5d914:	eb 02                	jmp    ShowTip_branch_44
ShowTip_branch_43:
   5d916:	31 c0                	xor    eax,eax
ShowTip_branch_44:
   5d918:	85 c0                	test   eax,eax
   5d91a:	0f 84 a6 00 00 00    	je     ShowTip_branch_48
   5d920:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
   5d925:	0f 85 9b 00 00 00    	jne    ShowTip_branch_48
   5d92b:	c6 44 24 04 01       	mov    BYTE PTR [esp+0x4],0x1
   5d930:	85 f6                	test   esi,esi
   5d932:	74 0e                	je     ShowTip_branch_45
   5d934:	89 f0                	mov    eax,esi
   5d936:	31 d2                	xor    edx,edx
   5d938:	e8 e3 c5 fe ff       	call   W?$dt:TEXTBM$n()_
   5d93d:	e8 36 47 01 00       	call   W?$dln(pnv)v
ShowTip_branch_45:
   5d942:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 15081, src obj: 1, src ofs: 0x5d944, dst obj: 3, dst ofs: 0x10fa6
   5d949:	74 33                	je     ShowTip_branch_46
   5d94b:	b8 50 00 00 00       	mov    eax,0x50
   5d950:	e8 c3 45 01 00       	call   W?$nwn(ui)pnv
   5d955:	85 c0                	test   eax,eax
   5d957:	74 56                	je     ShowTip_branch_47
   5d959:	6a 00                	push   0x0
   5d95b:	6a c3                	push   0xffffffc3
   5d95d:	68 16 01 00 00       	push   0x116
   5d962:	b9 9f da 00 00       	mov    ecx,@obj3:menu_cpp_variable_137                              ; fixup: num: 15080, src obj: 1, src ofs: 0x5d963, dst obj: 3, dst ofs: 0xda9f
   5d967:	68 02 01 00 00       	push   0x102
   5d96c:	ba ac da 00 00       	mov    edx,@obj3:menu_cpp_variable_138                              ; fixup: num: 15079, src obj: 1, src ofs: 0x5d96d, dst obj: 3, dst ofs: 0xdaac
   5d971:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15078, src obj: 1, src ofs: 0x5d973, dst obj: 3, dst ofs: 0x25bcc
   5d977:	e8 84 c2 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5d97c:	eb 31                	jmp    ShowTip_branch_47
ShowTip_branch_46:
   5d97e:	b8 50 00 00 00       	mov    eax,0x50
   5d983:	e8 90 45 01 00       	call   W?$nwn(ui)pnv
   5d988:	85 c0                	test   eax,eax
   5d98a:	74 23                	je     ShowTip_branch_47
   5d98c:	6a 00                	push   0x0
   5d98e:	6a c3                	push   0xffffffc3
   5d990:	68 16 01 00 00       	push   0x116
   5d995:	b9 bb da 00 00       	mov    ecx,@obj3:menu_cpp_variable_139                              ; fixup: num: 15093, src obj: 1, src ofs: 0x5d996, dst obj: 3, dst ofs: 0xdabb
   5d99a:	68 02 01 00 00       	push   0x102
   5d99f:	ba c8 da 00 00       	mov    edx,@obj3:menu_cpp_variable_140                              ; fixup: num: 15092, src obj: 1, src ofs: 0x5d9a0, dst obj: 3, dst ofs: 0xdac8
   5d9a4:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15091, src obj: 1, src ofs: 0x5d9a6, dst obj: 3, dst ofs: 0x25bcc
   5d9aa:	e8 51 c2 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_47:
   5d9af:	89 c6                	mov    esi,eax
   5d9b1:	85 f6                	test   esi,esi
   5d9b3:	75 11                	jne    ShowTip_branch_48
   5d9b5:	bb d8 da 00 00       	mov    ebx,@obj3:menu_cpp_variable_141                              ; fixup: num: 15090, src obj: 1, src ofs: 0x5d9b6, dst obj: 3, dst ofs: 0xdad8
   5d9ba:	ba df 06 00 00       	mov    edx,0x6df
   5d9bf:	31 c0                	xor    eax,eax
   5d9c1:	e8 6a a6 fd ff       	call   _error_report
ShowTip_branch_48:
   5d9c6:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 15089, src obj: 1, src ofs: 0x5d9c8, dst obj: 3, dst ofs: 0x25978
   5d9d0:	7c 2b                	jl     ShowTip_branch_49
   5d9d2:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 15088, src obj: 1, src ofs: 0x5d9d4, dst obj: 3, dst ofs: 0x25978
   5d9dc:	7f 1f                	jg     ShowTip_branch_49
   5d9de:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15087, src obj: 1, src ofs: 0x5d9e0, dst obj: 3, dst ofs: 0x2597c
   5d9e8:	7c 13                	jl     ShowTip_branch_49
   5d9ea:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15086, src obj: 1, src ofs: 0x5d9ec, dst obj: 3, dst ofs: 0x2597c
   5d9f4:	7f 07                	jg     ShowTip_branch_49
   5d9f6:	b8 01 00 00 00       	mov    eax,0x1
   5d9fb:	eb 02                	jmp    ShowTip_branch_50
ShowTip_branch_49:
   5d9fd:	31 c0                	xor    eax,eax
ShowTip_branch_50:
   5d9ff:	85 c0                	test   eax,eax
   5da01:	0f 85 a7 00 00 00    	jne    ShowTip_branch_54
   5da07:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
   5da0c:	0f 84 9c 00 00 00    	je     ShowTip_branch_54
   5da12:	30 f6                	xor    dh,dh
   5da14:	88 74 24 04          	mov    BYTE PTR [esp+0x4],dh
   5da18:	85 f6                	test   esi,esi
   5da1a:	74 0e                	je     ShowTip_branch_51
   5da1c:	89 f0                	mov    eax,esi
   5da1e:	31 d2                	xor    edx,edx
   5da20:	e8 fb c4 fe ff       	call   W?$dt:TEXTBM$n()_
   5da25:	e8 4e 46 01 00       	call   W?$dln(pnv)v
ShowTip_branch_51:
   5da2a:	80 3d a6 0f 01 00 00 	cmp    BYTE PTR ds:@obj3:use_quicktips,0x0                          ; fixup: num: 15085, src obj: 1, src ofs: 0x5da2c, dst obj: 3, dst ofs: 0x10fa6
   5da31:	74 33                	je     ShowTip_branch_52
   5da33:	b8 50 00 00 00       	mov    eax,0x50
   5da38:	e8 db 44 01 00       	call   W?$nwn(ui)pnv
   5da3d:	85 c0                	test   eax,eax
   5da3f:	74 56                	je     ShowTip_branch_53
   5da41:	6a 00                	push   0x0
   5da43:	6a c3                	push   0xffffffc3
   5da45:	68 16 01 00 00       	push   0x116
   5da4a:	b9 f0 da 00 00       	mov    ecx,@obj3:menu_cpp_variable_142                              ; fixup: num: 15105, src obj: 1, src ofs: 0x5da4b, dst obj: 3, dst ofs: 0xdaf0
   5da4f:	68 02 01 00 00       	push   0x102
   5da54:	ba fd da 00 00       	mov    edx,@obj3:menu_cpp_variable_143                              ; fixup: num: 15104, src obj: 1, src ofs: 0x5da55, dst obj: 3, dst ofs: 0xdafd
   5da59:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15103, src obj: 1, src ofs: 0x5da5b, dst obj: 3, dst ofs: 0x25bd0
   5da5f:	e8 9c c1 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5da64:	eb 31                	jmp    ShowTip_branch_53
ShowTip_branch_52:
   5da66:	b8 50 00 00 00       	mov    eax,0x50
   5da6b:	e8 a8 44 01 00       	call   W?$nwn(ui)pnv
   5da70:	85 c0                	test   eax,eax
   5da72:	74 23                	je     ShowTip_branch_53
   5da74:	6a 00                	push   0x0
   5da76:	6a c3                	push   0xffffffc3
   5da78:	68 16 01 00 00       	push   0x116
   5da7d:	b9 0c db 00 00       	mov    ecx,@obj3:menu_cpp_variable_144                              ; fixup: num: 15102, src obj: 1, src ofs: 0x5da7e, dst obj: 3, dst ofs: 0xdb0c
   5da82:	68 02 01 00 00       	push   0x102
   5da87:	ba 19 db 00 00       	mov    edx,@obj3:menu_cpp_variable_145                              ; fixup: num: 15101, src obj: 1, src ofs: 0x5da88, dst obj: 3, dst ofs: 0xdb19
   5da8c:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 15100, src obj: 1, src ofs: 0x5da8e, dst obj: 3, dst ofs: 0x25bd0
   5da92:	e8 69 c1 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_53:
   5da97:	89 c6                	mov    esi,eax
   5da99:	85 f6                	test   esi,esi
   5da9b:	75 11                	jne    ShowTip_branch_54
   5da9d:	bb 29 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_146                              ; fixup: num: 15099, src obj: 1, src ofs: 0x5da9e, dst obj: 3, dst ofs: 0xdb29
   5daa2:	ba e9 06 00 00       	mov    edx,0x6e9
   5daa7:	31 c0                	xor    eax,eax
   5daa9:	e8 82 a5 fd ff       	call   _error_report
ShowTip_branch_54:
   5daae:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15098, src obj: 1, src ofs: 0x5dab0, dst obj: 3, dst ofs: 0x25974
   5dab5:	0f 84 85 fa ff ff    	je     ShowTip_branch_12
   5dabb:	81 3d 78 59 02 00 02 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x102                    ; fixup: num: 15097, src obj: 1, src ofs: 0x5dabd, dst obj: 3, dst ofs: 0x25978
   5dac5:	7c 2b                	jl     ShowTip_branch_55
   5dac7:	81 3d 78 59 02 00 6d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x16d                    ; fixup: num: 15096, src obj: 1, src ofs: 0x5dac9, dst obj: 3, dst ofs: 0x25978
   5dad1:	7f 1f                	jg     ShowTip_branch_55
   5dad3:	81 3d 7c 59 02 00 18 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x118                    ; fixup: num: 15095, src obj: 1, src ofs: 0x5dad5, dst obj: 3, dst ofs: 0x2597c
   5dadd:	7c 13                	jl     ShowTip_branch_55
   5dadf:	81 3d 7c 59 02 00 22 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x122                    ; fixup: num: 15094, src obj: 1, src ofs: 0x5dae1, dst obj: 3, dst ofs: 0x2597c
   5dae9:	7f 07                	jg     ShowTip_branch_55
   5daeb:	b8 01 00 00 00       	mov    eax,0x1
   5daf0:	eb 02                	jmp    ShowTip_branch_56
ShowTip_branch_55:
   5daf2:	31 c0                	xor    eax,eax
ShowTip_branch_56:
   5daf4:	85 c0                	test   eax,eax
   5daf6:	0f 84 44 fa ff ff    	je     ShowTip_branch_12
   5dafc:	85 f6                	test   esi,esi
   5dafe:	74 0e                	je     ShowTip_branch_57
   5db00:	89 f0                	mov    eax,esi
   5db02:	31 d2                	xor    edx,edx
   5db04:	e8 17 c4 fe ff       	call   W?$dt:TEXTBM$n()_
   5db09:	e8 6a 45 01 00       	call   W?$dln(pnv)v
ShowTip_branch_57:
   5db0e:	8a 0d a6 0f 01 00    	mov    cl,BYTE PTR ds:@obj3:use_quicktips                           ; fixup: num: 15115, src obj: 1, src ofs: 0x5db10, dst obj: 3, dst ofs: 0x10fa6
   5db14:	80 f1 01             	xor    cl,0x1
   5db17:	88 0d a6 0f 01 00    	mov    BYTE PTR ds:@obj3:use_quicktips,cl                           ; fixup: num: 15114, src obj: 1, src ofs: 0x5db19, dst obj: 3, dst ofs: 0x10fa6
   5db1d:	74 33                	je     ShowTip_branch_58
   5db1f:	b8 50 00 00 00       	mov    eax,0x50
   5db24:	e8 ef 43 01 00       	call   W?$nwn(ui)pnv
   5db29:	85 c0                	test   eax,eax
   5db2b:	74 56                	je     ShowTip_branch_59
   5db2d:	6a 00                	push   0x0
   5db2f:	6a c3                	push   0xffffffc3
   5db31:	68 16 01 00 00       	push   0x116
   5db36:	b9 41 db 00 00       	mov    ecx,@obj3:menu_cpp_variable_147                              ; fixup: num: 15113, src obj: 1, src ofs: 0x5db37, dst obj: 3, dst ofs: 0xdb41
   5db3b:	68 02 01 00 00       	push   0x102
   5db40:	ba 4e db 00 00       	mov    edx,@obj3:menu_cpp_variable_148                              ; fixup: num: 15112, src obj: 1, src ofs: 0x5db41, dst obj: 3, dst ofs: 0xdb4e
   5db45:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15111, src obj: 1, src ofs: 0x5db47, dst obj: 3, dst ofs: 0x25bcc
   5db4b:	e8 b0 c0 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
   5db50:	eb 31                	jmp    ShowTip_branch_59
ShowTip_branch_58:
   5db52:	b8 50 00 00 00       	mov    eax,0x50
   5db57:	e8 bc 43 01 00       	call   W?$nwn(ui)pnv
   5db5c:	85 c0                	test   eax,eax
   5db5e:	74 23                	je     ShowTip_branch_59
   5db60:	6a 00                	push   0x0
   5db62:	6a c3                	push   0xffffffc3
   5db64:	68 16 01 00 00       	push   0x116
   5db69:	b9 5d db 00 00       	mov    ecx,@obj3:menu_cpp_variable_149                              ; fixup: num: 15110, src obj: 1, src ofs: 0x5db6a, dst obj: 3, dst ofs: 0xdb5d
   5db6e:	68 02 01 00 00       	push   0x102
   5db73:	ba 6a db 00 00       	mov    edx,@obj3:menu_cpp_variable_150                              ; fixup: num: 15109, src obj: 1, src ofs: 0x5db74, dst obj: 3, dst ofs: 0xdb6a
   5db78:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 15108, src obj: 1, src ofs: 0x5db7a, dst obj: 3, dst ofs: 0x25bcc
   5db7e:	e8 7d c0 fe ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
ShowTip_branch_59:
   5db83:	89 c6                	mov    esi,eax
   5db85:	85 f6                	test   esi,esi
   5db87:	75 11                	jne    ShowTip_branch_60
   5db89:	bb 7a db 00 00       	mov    ebx,@obj3:menu_cpp_variable_151                              ; fixup: num: 15107, src obj: 1, src ofs: 0x5db8a, dst obj: 3, dst ofs: 0xdb7a
   5db8e:	ba f5 06 00 00       	mov    edx,0x6f5
   5db93:	31 c0                	xor    eax,eax
   5db95:	e8 96 a4 fd ff       	call   _error_report
ShowTip_branch_60:
   5db9a:	80 3d 74 59 02 00 00 	cmp    BYTE PTR ds:@obj3:left_button,0x0                            ; fixup: num: 15106, src obj: 1, src ofs: 0x5db9c, dst obj: 3, dst ofs: 0x25974
   5dba1:	0f 84 99 f9 ff ff    	je     ShowTip_branch_12
   5dba7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 15122, src obj: 1, src ofs: 0x5dba8, dst obj: 3, dst ofs: 0x1a1d4
   5dbac:	e8 ef dd fa ff       	call   update_mod_9
   5dbb1:	eb e7                	jmp    ShowTip_branch_60
ShowTip_branch_61:
   5dbb3:	31 c0                	xor    eax,eax
   5dbb5:	a0 a6 0f 01 00       	mov    al,ds:@obj3:use_quicktips                                    ; fixup: num: 15121, src obj: 1, src ofs: 0x5dbb6, dst obj: 3, dst ofs: 0x10fa6
   5dbba:	85 c0                	test   eax,eax
   5dbbc:	75 0c                	jne    ShowTip_branch_62
   5dbbe:	bb 92 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_152                              ; fixup: num: 15120, src obj: 1, src ofs: 0x5dbbf, dst obj: 3, dst ofs: 0xdb92
   5dbc3:	ba 96 db 00 00       	mov    edx,@obj3:menu_cpp_variable_153                              ; fixup: num: 15119, src obj: 1, src ofs: 0x5dbc4, dst obj: 3, dst ofs: 0xdb96
   5dbc8:	eb 0a                	jmp    ShowTip_branch_63
ShowTip_branch_62:
   5dbca:	bb a1 db 00 00       	mov    ebx,@obj3:menu_cpp_variable_154                              ; fixup: num: 15118, src obj: 1, src ofs: 0x5dbcb, dst obj: 3, dst ofs: 0xdba1
   5dbcf:	ba a4 db 00 00       	mov    edx,@obj3:menu_cpp_variable_155                              ; fixup: num: 15117, src obj: 1, src ofs: 0x5dbd0, dst obj: 3, dst ofs: 0xdba4
ShowTip_branch_63:
   5dbd4:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 15116, src obj: 1, src ofs: 0x5dbd5, dst obj: 3, dst ofs: 0x32438
   5dbd9:	e8 92 fc 00 00       	call   set
   5dbde:	83 3c 24 00          	cmp    DWORD PTR [esp],0x0
   5dbe2:	74 0f                	je     ShowTip_branch_64
   5dbe4:	8b 04 24             	mov    eax,DWORD PTR [esp]
   5dbe7:	31 d2                	xor    edx,edx
   5dbe9:	e8 32 c3 fe ff       	call   W?$dt:TEXTBM$n()_
   5dbee:	e8 85 44 01 00       	call   W?$dln(pnv)v
ShowTip_branch_64:
   5dbf3:	85 ed                	test   ebp,ebp
   5dbf5:	74 0e                	je     ShowTip_branch_65
   5dbf7:	89 e8                	mov    eax,ebp
   5dbf9:	31 d2                	xor    edx,edx
   5dbfb:	e8 20 c3 fe ff       	call   W?$dt:TEXTBM$n()_
   5dc00:	e8 73 44 01 00       	call   W?$dln(pnv)v
ShowTip_branch_65:
   5dc05:	85 f6                	test   esi,esi
   5dc07:	74 0e                	je     ShowTip_branch_66
   5dc09:	89 f0                	mov    eax,esi
   5dc0b:	31 d2                	xor    edx,edx
   5dc0d:	e8 0e c3 fe ff       	call   W?$dt:TEXTBM$n()_
   5dc12:	e8 61 44 01 00       	call   W?$dln(pnv)v
ShowTip_branch_66:
   5dc17:	85 ff                	test   edi,edi
   5dc19:	74 0e                	je     ShowTip_branch_67
   5dc1b:	89 f8                	mov    eax,edi
   5dc1d:	31 d2                	xor    edx,edx
   5dc1f:	e8 fc c2 fe ff       	call   W?$dt:TEXTBM$n()_
   5dc24:	e8 4f 44 01 00       	call   W?$dln(pnv)v
ShowTip_branch_67:
   5dc29:	88 c8                	mov    al,cl
   5dc2b:	83 c4 10             	add    esp,0x10
   5dc2e:	5d                   	pop    ebp
   5dc2f:	5f                   	pop    edi
   5dc30:	5e                   	pop    esi
   5dc31:	5a                   	pop    edx
   5dc32:	59                   	pop    ecx
   5dc33:	5b                   	pop    ebx
   5dc34:	c3                   	ret    
;-------------------------------------------------
;  Bad code 88 (zero after ret):                 -
;-------------------------------------------------
;  5dc33:	5b                   	pop    ebx
;  5dc34:	c3                   	ret    
;  5dc35:	00 00                	add    BYTE PTR [eax],al
;  5dc37:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (11 bytes):                      -
;-------------------------------------------------
   5dc35:	00 00 00 00 00 00 .. 	db     11 dup(0x00)
;-------------------------------------------------
;  End of bad code 88                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
menu_cpp_variable_1:
    d2f8:	6d 65 6e 75 2e 69 6e 69 00 	db     "menu.ini",0x00
menu_cpp_variable_2:
    d301:	6d 61 69 6e 5f 6d 65 6e 75 5f 31 00 	db     "main_menu_1",0x00
menu_cpp_variable_3:
    d30d:	6d 61 69 6e 5f 6d 65 6e 75 5f 32 00 	db     "main_menu_2",0x00
menu_cpp_variable_4:
    d319:	6d 61 69 6e 5f 6d 65 6e 75 5f 33 00 	db     "main_menu_3",0x00
menu_cpp_variable_5:
    d325:	6d 61 69 6e 5f 6d 65 6e 75 5f 34 00 	db     "main_menu_4",0x00
menu_cpp_variable_6:
    d331:	6d 61 69 6e 5f 6d 65 6e 75 5f 35 00 	db     "main_menu_5",0x00
menu_cpp_variable_7:
    d33d:	6d 61 69 6e 5f 6d 65 6e 75 5f 36 00 	db     "main_menu_6",0x00
menu_cpp_variable_8:
    d349:	4d                   	db     0x4d                                                         ; dec:  77, chr: 'M'
    d34a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_9:
    d34b:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
    d34c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_10:
    d34d:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
    d34e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_11:
    d34f:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
    d350:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_12:
    d351:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_13:
    d369:	56 45 52 49 46 59 5f 42 4f 58 00 	db     "VERIFY_BOX",0x00
menu_cpp_variable_14:
    d374:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 74 65 78 74 62 6f 78 34 2e 62 6d 00 	db     "1:\graphic\other\textbox4.bm",0x00
menu_cpp_variable_15:
    d391:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_16:
    d3a9:	56 45 52 49 46 59 5f 54 45 58 54 00 	db     "VERIFY_TEXT",0x00
menu_cpp_variable_17:
    d3b5:	6e 65 77 67 61 6d 65 00 	db     "newgame",0x00
menu_cpp_variable_18:
    d3bd:	56 45 52 49 46 59 5f 54 45 58 54 00 	db     "VERIFY_TEXT",0x00
menu_cpp_variable_19:
    d3c9:	71 75 69 74 67 61 6d 65 00 	db     "quitgame",0x00
menu_cpp_variable_20:
    d3d2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_21:
    d3ea:	59 45 53 5f 54 45 58 54 00 	db     "YES_TEXT",0x00
menu_cpp_variable_22:
    d3f3:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_23:
    d3f7:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_24:
    d40f:	4e 4f 5f 54 45 58 54 00 	db     "NO_TEXT",0x00
menu_cpp_variable_25:
    d417:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d418:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d419:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_26:
    d41a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_27:
    d432:	59 45 53 5f 54 45 58 54 00 	db     "YES_TEXT",0x00
menu_cpp_variable_28:
    d43b:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_29:
    d43f:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_30:
    d457:	4e 4f 5f 54 45 58 54 00 	db     "NO_TEXT",0x00
menu_cpp_variable_31:
    d45f:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d460:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d461:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_32:
    d462:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_33:
    d47a:	4e 4f 5f 54 45 58 54 00 	db     "NO_TEXT",0x00
menu_cpp_variable_34:
    d482:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d483:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d484:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_35:
    d485:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_36:
    d49d:	59 45 53 5f 54 45 58 54 00 	db     "YES_TEXT",0x00
menu_cpp_variable_37:
    d4a6:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_38:
    d4aa:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_39:
    d4c2:	59 45 53 5f 54 45 58 54 00 	db     "YES_TEXT",0x00
menu_cpp_variable_40:
    d4cb:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_41:
    d4cf:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_42:
    d4e7:	4e 4f 5f 54 45 58 54 00 	db     "NO_TEXT",0x00
menu_cpp_variable_43:
    d4ef:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d4f0:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d4f1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_44:
    d4f2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_45:
    d50a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_46:
    d522:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_47:
    d53a:	54 4f 57 4e 00       	db     "TOWN",0x00
menu_cpp_variable_48:
    d53f:	53 63 72 69 70 74 20 65 72 72 6f 72 73 20 64 65 74 65 63 74 65 64 00 	db     "Script errors detected",0x00
menu_cpp_variable_49:
    d556:	53 54 41 52 54 00    	db     "START",0x00
menu_cpp_variable_50:
    d55c:	53 54 41 52 54 00    	db     "START",0x00
menu_cpp_variable_51:
    d562:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
menu_cpp_variable_52:
    d56b:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
menu_cpp_variable_53:
    d574:	6d 65 6e 75 2e 63 70 70 00 	db     "menu.cpp",0x00
menu_cpp_variable_54:
    d57d:	31 3a 5c 47 52 41 50 48 49 43 5c 50 41 4c 5c 47 41 4d 45 4f 56 45 52 2e 50 41 4c 00 	db     "1:\GRAPHIC\PAL\GAMEOVER.PAL",0x00
menu_cpp_variable_55:
    d599:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 31 3a 5c 47 52 41 50 48 49 43 5c 50 41 4c 5c 47 41 4d 45 4f 56 45 52 2e 50 41 4c 00 	db     "Unable to open file: 1:\GRAPHIC\PAL\GAMEOVER.PAL",0x00
menu_cpp_variable_56:
    d5ca:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 31 00 	db     "options_menu_1",0x00
menu_cpp_variable_57:
    d5d9:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 32 00 	db     "options_menu_2",0x00
menu_cpp_variable_58:
    d5e8:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 33 00 	db     "options_menu_3",0x00
menu_cpp_variable_59:
    d5f7:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 34 00 	db     "options_menu_4",0x00
menu_cpp_variable_60:
    d606:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 35 00 	db     "options_menu_5",0x00
menu_cpp_variable_61:
    d615:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 36 00 	db     "options_menu_6",0x00
menu_cpp_variable_62:
    d624:	6f 70 74 69 6f 6e 73 5f 6d 65 6e 75 5f 37 00 	db     "options_menu_7",0x00
menu_cpp_variable_63:
    d633:	31 3a 5c 53 4f 55 4e 44 5c 45 46 46 45 43 54 53 5c 57 48 49 50 32 2e 57 41 56 00 	db     "1:\SOUND\EFFECTS\WHIP2.WAV",0x00
menu_cpp_variable_64:
    d64e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_65:
    d666:	4d                   	db     0x4d                                                         ; dec:  77, chr: 'M'
    d667:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_66:
    d668:	53 4c 49 44 45 52 31 00 	db     "SLIDER1",0x00
menu_cpp_variable_67:
    d670:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 76 6f 6c 75 6d 65 2e 62 6d 00 	db     "1:\graphic\other\volume.bm",0x00
menu_cpp_variable_68:
    d68b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_69:
    d6a3:	53 4c 49 44 45 52 32 00 	db     "SLIDER2",0x00
menu_cpp_variable_70:
    d6ab:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 76 6f 6c 75 6d 65 2e 62 6d 00 	db     "1:\graphic\other\volume.bm",0x00
menu_cpp_variable_71:
    d6c6:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_72:
    d6de:	53 4c 49 44 45 52 33 00 	db     "SLIDER3",0x00
menu_cpp_variable_73:
    d6e6:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 76 6f 6c 75 6d 65 2e 62 6d 00 	db     "1:\graphic\other\volume.bm",0x00
menu_cpp_variable_74:
    d701:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_75:
    d719:	49 4e 44 49 43 41 54 4f 52 31 00 	db     "INDICATOR1",0x00
menu_cpp_variable_76:
    d724:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 69 6e 64 69 63 61 74 72 2e 62 6d 00 	db     "1:\graphic\other\indicatr.bm",0x00
menu_cpp_variable_77:
    d741:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_78:
    d759:	49 4e 44 49 43 41 54 4f 52 32 00 	db     "INDICATOR2",0x00
menu_cpp_variable_79:
    d764:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 69 6e 64 69 63 61 74 72 2e 62 6d 00 	db     "1:\graphic\other\indicatr.bm",0x00
menu_cpp_variable_80:
    d781:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_81:
    d799:	49 4e 44 49 43 41 54 4f 52 33 00 	db     "INDICATOR3",0x00
menu_cpp_variable_82:
    d7a4:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 69 6e 64 69 63 61 74 72 2e 62 6d 00 	db     "1:\graphic\other\indicatr.bm",0x00
menu_cpp_variable_83:
    d7c1:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_84:
    d7d9:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_85:
    d7f1:	49 4e 44 49 43 41 54 4f 52 31 00 	db     "INDICATOR1",0x00
menu_cpp_variable_86:
    d7fc:	49 4e 44 49 43 41 54 4f 52 32 00 	db     "INDICATOR2",0x00
menu_cpp_variable_87:
    d807:	49 4e 44 49 43 41 54 4f 52 33 00 	db     "INDICATOR3",0x00
menu_cpp_variable_88:
    d812:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_89:
    d82a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_90:
    d842:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d843:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d844:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_91:
    d845:	54 45 58 54 00       	db     "TEXT",0x00
menu_cpp_variable_92:
    d84a:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_93:
    d84e:	54 45 58 54 00       	db     "TEXT",0x00
menu_cpp_variable_94:
    d853:	63 6c 69 63 6b 00    	db     "click",0x00
menu_cpp_variable_95:
    d859:	54 45 58 54 00       	db     "TEXT",0x00
menu_cpp_variable_96:
    d85e:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_97:
    d862:	47 4f 52 45 00       	db     "GORE",0x00
menu_cpp_variable_98:
    d867:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    d868:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    d869:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_99:
    d86a:	47 4f 52 45 00       	db     "GORE",0x00
menu_cpp_variable_100:
    d86f:	72                   	db     0x72                                                         ; dec: 114, chr: 'r'
    d870:	74                   	db     0x74                                                         ; dec: 116, chr: 't'
    d871:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_101:
    d872:	61 64 6a 68 65 61 64 2e 72 63 73 00 	db     "adjhead.rcs",0x00
menu_cpp_variable_102:
    d87e:	41 44 4a 48 45 41 44 2e 52 43 53 00 	db     "ADJHEAD.RCS",0x00
menu_cpp_variable_103:
    d88a:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 20 25 73 00 	db     "Unable to open file %s",0x00
menu_cpp_variable_104:
    d8a1:	54 49 50 53 5f 42 4f 58 00 	db     "TIPS_BOX",0x00
menu_cpp_variable_105:
    d8aa:	31 3a 5c 47 52 41 50 48 49 43 5c 4f 54 48 45 52 5c 54 49 50 53 2e 42 4d 00 	db     "1:\GRAPHIC\OTHER\TIPS.BM",0x00
menu_cpp_variable_106:
    d8c3:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_107:
    d8db:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_108:
    d8f3:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
    d8f4:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
    d8f5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_109:
    d8f6:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
menu_cpp_variable_110:
    d901:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_111:
    d90e:	53 68 6f 77 5f 54 69 70 73 5f 4f 4e 00 	db     "Show_Tips_ON",0x00
menu_cpp_variable_112:
    d91b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_113:
    d933:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_114:
    d940:	53 68 6f 77 5f 54 69 70 73 5f 4f 46 46 00 	db     "Show_Tips_OFF",0x00
menu_cpp_variable_115:
    d94e:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_116:
    d966:	49 6e 74 65 72 6e 61 6c 20 65 72 72 6f 72 3a 20 73 74 72 20 3d 3d 20 4e 55 4c 4c 00 	db     "Internal error: str == NULL",0x00
menu_cpp_variable_117:
    d982:	53 54 52 5f 54 45 58 54 00 	db     "STR_TEXT",0x00
menu_cpp_variable_118:
    d98b:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_119:
    d9a3:	43 41 4e 43 45 4c 5f 54 45 58 54 00 	db     "CANCEL_TEXT",0x00
menu_cpp_variable_120:
    d9af:	45 78 69 74 00       	db     "Exit",0x00
menu_cpp_variable_121:
    d9b4:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_122:
    d9cc:	4e 45 58 54 5f 54 49 50 5f 54 45 58 54 00 	db     "NEXT_TIP_TEXT",0x00
menu_cpp_variable_123:
    d9da:	4e 65 78 74 00       	db     "Next",0x00
menu_cpp_variable_124:
    d9df:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_125:
    d9f7:	43 41 4e 43 45 4c 5f 54 45 58 54 00 	db     "CANCEL_TEXT",0x00
menu_cpp_variable_126:
    da03:	45 78 69 74 00       	db     "Exit",0x00
menu_cpp_variable_127:
    da08:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_128:
    da20:	43 41 4e 43 45 4c 5f 54 45 58 54 00 	db     "CANCEL_TEXT",0x00
menu_cpp_variable_129:
    da2c:	45 78 69 74 00       	db     "Exit",0x00
menu_cpp_variable_130:
    da31:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_131:
    da49:	4e 45 58 54 5f 54 49 50 5f 54 45 58 54 00 	db     "NEXT_TIP_TEXT",0x00
menu_cpp_variable_132:
    da57:	4e 65 78 74 00       	db     "Next",0x00
menu_cpp_variable_133:
    da5c:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_134:
    da74:	4e 45 58 54 5f 54 49 50 5f 54 45 58 54 00 	db     "NEXT_TIP_TEXT",0x00
menu_cpp_variable_135:
    da82:	4e 65 78 74 00       	db     "Next",0x00
menu_cpp_variable_136:
    da87:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_137:
    da9f:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_138:
    daac:	53 68 6f 77 5f 54 69 70 73 5f 4f 4e 20 20 00 	db     "Show_Tips_ON  ",0x00
menu_cpp_variable_139:
    dabb:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_140:
    dac8:	53 68 6f 77 5f 54 69 70 73 5f 4f 46 46 20 20 00 	db     "Show_Tips_OFF  ",0x00
menu_cpp_variable_141:
    dad8:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_142:
    daf0:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_143:
    dafd:	53 68 6f 77 5f 54 69 70 73 5f 4f 4e 20 20 00 	db     "Show_Tips_ON  ",0x00
menu_cpp_variable_144:
    db0c:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_145:
    db19:	53 68 6f 77 5f 54 69 70 73 5f 4f 46 46 20 20 00 	db     "Show_Tips_OFF  ",0x00
menu_cpp_variable_146:
    db29:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_147:
    db41:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_148:
    db4e:	53 68 6f 77 5f 54 69 70 73 5f 4f 4e 20 20 00 	db     "Show_Tips_ON  ",0x00
menu_cpp_variable_149:
    db5d:	54 49 50 53 5f 4f 4e 5f 54 45 58 54 00 	db     "TIPS_ON_TEXT",0x00
menu_cpp_variable_150:
    db6a:	53 68 6f 77 5f 54 69 70 73 5f 4f 46 46 20 20 00 	db     "Show_Tips_OFF  ",0x00
menu_cpp_variable_151:
    db7a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_152:
    db92:	4f 46 46 00          	db     "OFF",0x00
menu_cpp_variable_153:
    db96:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
menu_cpp_variable_154:
    dba1:	4f                   	db     0x4f                                                         ; dec:  79, chr: 'O'
    dba2:	4e                   	db     0x4e                                                         ; dec:  78, chr: 'N'
    dba3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_155:
    dba4:	51 55 49 43 4b 5f 54 49 50 53 00 	db     "QUICK_TIPS",0x00
menu_cpp_variable_156:
    dbaf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_157:
    dbb0:	70 61 72 65 6e 74 61 6c 5f 70 77 20 6e 6f 77 20 69 73 20 3d 20 27 25 73 27 00 	db     "parental_pw now is = '%s'",0x00
menu_cpp_variable_158:
    dbca:	53 41 56 45 00       	db     "SAVE",0x00
menu_cpp_variable_159:
    dbcf:	25 73 4c 4f 41 44 53 41 56 45 2e 44 45 53 00 	db     "%sLOADSAVE.DES",0x00
menu_cpp_variable_160:
    dbde:	47 41 4d 4d 41 00    	db     "GAMMA",0x00
menu_cpp_variable_161:
    dbe4:	46 58 5f 56 4f 4c 55 4d 45 00 	db     "FX_VOLUME",0x00
menu_cpp_variable_162:
    dbee:	4d 55 53 49 43 5f 56 4f 4c 55 4d 45 00 	db     "MUSIC_VOLUME",0x00
menu_cpp_variable_163:
    dbfb:	48 45 4c 50 00       	db     "HELP",0x00
menu_cpp_variable_164:
    dc00:	67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 6d 6f 75 73 68 65 6c 70 2e 62 6d 00 	db     "graphic\other\moushelp.bm",0x00
menu_cpp_variable_165:
    dc1a:	6d 65 6e 75 2e 63 70 70 00 	db     "menu.cpp",0x00
menu_cpp_variable_166:
    dc23:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 6d 6f 75 73 68 65 6c 70 2e 70 61 6c 00 	db     "1:\graphic\pal\moushelp.pal",0x00
menu_cpp_variable_167:
    dc3f:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 6d 6f 75 73 68 65 6c 70 2e 70 61 6c 00 	db     "Unable to open file: 1:\graphic\pal\moushelp.pal",0x00
menu_cpp_variable_168:
    dc70:	48 45 4c 50 00       	db     "HELP",0x00
menu_cpp_variable_169:
    dc75:	67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 6b 65 79 73 68 65 6c 70 2e 62 6d 00 	db     "graphic\other\keyshelp.bm",0x00
menu_cpp_variable_170:
    dc8f:	6d 65 6e 75 2e 63 70 70 00 	db     "menu.cpp",0x00
menu_cpp_variable_171:
    dc98:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 6b 65 79 73 68 65 6c 70 2e 70 61 6c 00 	db     "1:\graphic\pal\keyshelp.pal",0x00
menu_cpp_variable_172:
    dcb4:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 66 69 6c 65 3a 20 31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 6b 65 79 73 2e 70 61 6c 00 	db     "Unable to open file: 1:\graphic\pal\keys.pal",0x00
menu_cpp_variable_173:
    dce1:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_174:
    dcf9:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
menu_cpp_variable_175:                                                                              ; access size: QWORD
    dd02:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
menu_cpp_variable_176:
    dd0a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_177:
    dd0b:	6e                   	db     0x6e                                                         ; dec: 110, chr: 'n'
    dd0c:	6f                   	db     0x6f                                                         ; dec: 111, chr: 'o'
    dd0d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_178:
    dd0e:	20 2d 20 25 73 00    	db     " - %s",0x00
menu_cpp_variable_179:
    dd14:	79 65 73 00          	db     "yes",0x00
menu_cpp_variable_180:
    dd18:	20 2d 20 25 73 00    	db     " - %s",0x00
menu_cpp_variable_181:
    dd1e:	63 6c 69 63 6b 00    	db     "click",0x00
menu_cpp_variable_182:
    dd24:	20 2d 20 25 73 00    	db     " - %s",0x00
menu_cpp_variable_183:
    dd2a:	20 2d 20 55 6e 6b 6e 6f 77 6e 00 	db     " - Unknown",0x00
menu_cpp_variable_184:
    dd35:	20 2d 20 4f 6e 00    	db     " - On",0x00
menu_cpp_variable_185:
    dd3b:	20 2d 20 4f 66 66 00 	db     " - Off",0x00
menu_cpp_variable_186:
    dd42:	20 2d 20 4f 6e 00    	db     " - On",0x00
menu_cpp_variable_187:
    dd48:	20 2d 20 4f 66 66 00 	db     " - Off",0x00
menu_cpp_variable_188:
    dd4f:	53 41 56 45 00       	db     "SAVE",0x00
menu_cpp_variable_189:
    dd54:	25 73 4c 4f 41 44 53 41 56 45 2e 44 45 53 00 	db     "%sLOADSAVE.DES",0x00
menu_cpp_variable_190:
    dd63:	4c 6f 61 64 69 6e 67 20 50 61 72 65 6e 74 61 6c 20 50 61 73 73 77 6f 72 64 20 46 69 6c 65 3a 20 27 25 73 27 00 	db     "Loading Parental Password File: '%s'",0x00
menu_cpp_variable_191:
    dd88:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_192:
    dd89:	49 6e 76 61 6c 69 64 20 70 61 73 73 77 6f 72 64 2e 00 	db     "Invalid password.",0x00
menu_cpp_variable_193:
    dd9b:	45 4e 54 45 52 20 50 41 53 53 57 4f 52 44 00 	db     "ENTER PASSWORD",0x00
menu_cpp_variable_194:
    ddaa:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    ddab:	57                   	db     0x57                                                         ; dec:  87, chr: 'W'
    ddac:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
menu_cpp_variable_195:
    ddad:	45 4e 54 45 52 20 50 41 53 53 57 4f 52 44 00 	db     "ENTER PASSWORD",0x00
menu_cpp_variable_196:
    ddbc:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
menu_cpp_variable_197:
    ddd4:	54 45 58 54 5f 45 4e 54 52 59 00 	db     "TEXT_ENTRY",0x00
menu_cpp_variable_198:
    dddf:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
    ddf7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
menu_cpp_variable_199:
   10d6c:	03                   	db     0x03                                                         ; dec:   3, chr: ''
   10d6d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
   10d70:	00 d7 06 00          	dd     @obj1:W?$dt:environment$n()_                                 ; fixup: num: 21352, src obj: 3, src ofs: 0x10d70, dst obj: 1, dst ofs: 0x6d700
   10d74:	3c 5b 02 00          	dd     @obj3:menu_ini                                               ; fixup: num: 21351, src obj: 3, src ofs: 0x10d74, dst obj: 3, dst ofs: 0x25b3c
W?$Wts0fn$environment$$$nx[]uc:
   10d78:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   10d79:	40 d6 06 00          	dd     @obj1:W?$ct:environment$n()_                                 ; fixup: num: 21355, src obj: 3, src ofs: 0x10d79, dst obj: 1, dst ofs: 0x6d640
   10d7d:	48 14 07 00          	dd     @obj1:__wcpp_2_undefed_cdtor__                               ; fixup: num: 21354, src obj: 3, src ofs: 0x10d7d, dst obj: 1, dst ofs: 0x71448
   10d81:	00 d7 06 00          	dd     @obj1:W?$dt:environment$n()_                                 ; fixup: num: 21353, src obj: 3, src ofs: 0x10d81, dst obj: 1, dst ofs: 0x6d700
   10d85:	10                   	db     0x10                                                         ; dec:  16, chr: ''
   10d86:	00 00 00 00 00 00    	db     6 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
menu_cpp_variable_200:
   13c84:	00 00 00 00          	db     4 dup(0x00)                                                  ; dec:   0, chr: '\0'
   13c88:	6c 0d 01 00          	dd     @obj3:menu_cpp_variable_199                                  ; fixup: num: 21435, src obj: 3, src ofs: 0x13c88, dst obj: 3, dst ofs: 0x10d6c
menu_cpp_variable_201:                                                                              ; access size: DWORD
   13c8c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
.mod_init_mod_88:
   16dbc:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
   16dbd:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   16dbe:	40 73 05 00          	dd     @obj1:.fn_init_mod_88                                        ; fixup: num: 21655, src obj: 3, src ofs: 0x16dbe, dst obj: 1, dst ofs: 0x57340

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 88: D:\SOURCE\menu.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
line:                                                                                               ; access size: DWORD
   25b34:	00 00 00 00          	dd     0x00000000
been_here_mod_88:                                                                                   ; access size: BYTE
   25b38:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
W?$Wbi00$:.0$:?ShowTips$n()vn[]uc:                                                                  ; access size: BYTE
   25b39:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'
menu_ini:
   25b3c:	00 00 00 00 00 00 .. 	db     16 dup(0x00)                                                 ; dec:   0, chr: '\0'
buf:
   25b4c:	00 00 00 00 00 00 .. 	db     12 dup(0x00)                                                 ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 88 (D:\SOURCE\menu.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------