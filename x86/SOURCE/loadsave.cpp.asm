;-------------------------------------------------------------------------------
;                                                                              -
;  Module 86: D:\SOURCE\loadsave.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'save_game2'                         -
;-------------------------------------------------
save_game2:
   532c0:	53                   	push   ebx
   532c1:	51                   	push   ecx
   532c2:	52                   	push   edx
   532c3:	56                   	push   esi
   532c4:	57                   	push   edi
   532c5:	55                   	push   ebp
   532c6:	89 e5                	mov    ebp,esp
   532c8:	81 ec 1c 38 00 00    	sub    esp,0x381c
   532ce:	81 ed 82 00 00 00    	sub    ebp,0x82
   532d4:	bb 01 00 00 00       	mov    ebx,0x1
   532d9:	8b 0d 08 3f 01 00    	mov    ecx,DWORD PTR ds:@obj3:game_in_progress                      ; fixup: num: 12962, src obj: 1, src ofs: 0x532db, dst obj: 3, dst ofs: 0x13f08
   532df:	30 e4                	xor    ah,ah
   532e1:	31 d2                	xor    edx,edx
   532e3:	88 65 7a             	mov    BYTE PTR [ebp+0x7a],ah
   532e6:	88 65 7e             	mov    BYTE PTR [ebp+0x7e],ah
   532e9:	89 55 6a             	mov    DWORD PTR [ebp+0x6a],edx
   532ec:	89 5d 6e             	mov    DWORD PTR [ebp+0x6e],ebx
   532ef:	85 c9                	test   ecx,ecx
   532f1:	75 07                	jne    save_game2_branch_1
   532f3:	30 c0                	xor    al,al
   532f5:	e9 c0 15 00 00       	jmp    save_game2_branch_105
save_game2_branch_1:
   532fa:	89 d8                	mov    eax,ebx
   532fc:	e8 1f 30 00 00       	call   update_lists_xyz
   53301:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 12961, src obj: 1, src ofs: 0x53302, dst obj: 3, dst ofs: 0x25ac4
   53306:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
   5330a:	74 26                	je     save_game2_branch_2
   5330c:	b8 50 cb 00 00       	mov    eax,@obj3:loadsave_cpp_variable_1                            ; fixup: num: 12960, src obj: 1, src ofs: 0x5330d, dst obj: 3, dst ofs: 0xcb50
   53311:	e8 7a 94 01 00       	call   check_script_flag
   53316:	84 c0                	test   al,al
   53318:	75 18                	jne    save_game2_branch_2
   5331a:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 12959, src obj: 1, src ofs: 0x5331c, dst obj: 3, dst ofs: 0x10fb4
   53320:	dc 05 29 cc 00 00    	fadd   QWORD PTR ds:@obj3:loadsave_cpp_variable_19                  ; fixup: num: 12958, src obj: 1, src ofs: 0x53322, dst obj: 3, dst ofs: 0xcc29
   53326:	6a 00                	push   0x0
   53328:	6a 00                	push   0x0
   5332a:	83 ec 08             	sub    esp,0x8
   5332d:	dd 1c 24             	fstp   QWORD PTR [esp]
   53330:	eb 12                	jmp    save_game2_branch_3
save_game2_branch_2:
   53332:	6a 00                	push   0x0
   53334:	6a 00                	push   0x0
   53336:	8b 35 b8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12957, src obj: 1, src ofs: 0x53338, dst obj: 3, dst ofs: 0x10fb8
   5333c:	56                   	push   esi
   5333d:	8b 3d b4 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12956, src obj: 1, src ofs: 0x5333f, dst obj: 3, dst ofs: 0x10fb4
   53343:	57                   	push   edi
save_game2_branch_3:
   53344:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12955, src obj: 1, src ofs: 0x53345, dst obj: 3, dst ofs: 0x26084
   53349:	e8 e2 06 fc ff       	call   fade
   5334e:	8d 85 56 ff ff ff    	lea    eax,[ebp-0xaa]
   53354:	30 db                	xor    bl,bl
   53356:	31 d2                	xor    edx,edx
   53358:	88 1d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bl                                ; fixup: num: 12954, src obj: 1, src ofs: 0x5335a, dst obj: 3, dst ofs: 0x2607e
   5335e:	bb 64 00 00 00       	mov    ebx,0x64
   53363:	e8 68 e0 01 00       	call   memset_
   53368:	bb 64 00 00 00       	mov    ebx,0x64
   5336d:	8d 85 f2 fe ff ff    	lea    eax,[ebp-0x10e]
   53373:	31 d2                	xor    edx,edx
   53375:	e8 56 e0 01 00       	call   memset_
   5337a:	bb 00 19 00 00       	mov    ebx,0x1900
   5337f:	8d 85 66 e1 ff ff    	lea    eax,[ebp-0x1e9a]
   53385:	31 d2                	xor    edx,edx
   53387:	e8 44 e0 01 00       	call   memset_
   5338c:	bb 00 19 00 00       	mov    ebx,0x1900
   53391:	8d 85 66 c8 ff ff    	lea    eax,[ebp-0x379a]
   53397:	31 d2                	xor    edx,edx
   53399:	b9 f4 00 00 00       	mov    ecx,0xf4
   5339e:	e8 2d e0 01 00       	call   memset_
   533a3:	bb 59 cb 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_2                            ; fixup: num: 12968, src obj: 1, src ofs: 0x533a4, dst obj: 3, dst ofs: 0xcb59
   533a8:	8d 95 66 fa ff ff    	lea    edx,[ebp-0x59a]
   533ae:	b8 66 cb 00 00       	mov    eax,@obj3:loadsave_cpp_variable_3                            ; fixup: num: 12967, src obj: 1, src ofs: 0x533af, dst obj: 3, dst ofs: 0xcb66
   533b3:	e8 28 9a fb ff       	call   XFILE_read2
   533b8:	b8 4c 00 00 00       	mov    eax,0x4c
   533bd:	e8 56 eb 01 00       	call   W?$nwn(ui)pnv
   533c2:	85 c0                	test   eax,eax
   533c4:	74 25                	je     save_game2_branch_4
   533c6:	6a 00                	push   0x0
   533c8:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 12966, src obj: 1, src ofs: 0x533c9, dst obj: 1, dst ofs: 0x71493
   533cd:	6a 00                	push   0x0
   533cf:	6a 00                	push   0x0
   533d1:	6a 01                	push   0x1
   533d3:	68 00 00 48 c2       	push   0xc2480000
   533d8:	bb 82 cb 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_4                            ; fixup: num: 12965, src obj: 1, src ofs: 0x533d9, dst obj: 3, dst ofs: 0xcb82
   533dd:	6a 00                	push   0x0
   533df:	ba 8a cb 00 00       	mov    edx,@obj3:loadsave_cpp_variable_5                            ; fixup: num: 12964, src obj: 1, src ofs: 0x533e0, dst obj: 3, dst ofs: 0xcb8a
   533e4:	31 c9                	xor    ecx,ecx
   533e6:	e8 f5 78 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
save_game2_branch_4:
   533eb:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
   533ee:	89 c2                	mov    edx,eax
   533f0:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12963, src obj: 1, src ofs: 0x533f1, dst obj: 3, dst ofs: 0x25a88
   533f5:	e8 36 8d ff ff       	call   insert_bitmap
   533fa:	31 c0                	xor    eax,eax
   533fc:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   533ff:	bf 19 00 00 00       	mov    edi,0x19
   53404:	31 f6                	xor    esi,esi
save_game2_branch_5:
   53406:	b8 50 00 00 00       	mov    eax,0x50
   5340b:	e8 08 eb 01 00       	call   W?$nwn(ui)pnv
   53410:	85 c0                	test   eax,eax
   53412:	74 23                	je     save_game2_branch_6
   53414:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   53417:	6b d3 11             	imul   edx,ebx,0x11
   5341a:	56                   	push   esi
   5341b:	6a ce                	push   0xffffffce
   5341d:	83 c2 19             	add    edx,0x19
   53420:	52                   	push   edx
   53421:	6a 08                	push   0x8
   53423:	8b 14 9d 20 3c 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:ls_text]                          ; fixup: num: 12974, src obj: 1, src ofs: 0x53426, dst obj: 3, dst ofs: 0x13c20
   5342a:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 12973, src obj: 1, src ofs: 0x5342c, dst obj: 3, dst ofs: 0x25bd0
   53430:	89 d1                	mov    ecx,edx
   53432:	e8 c9 67 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
save_game2_branch_6:
   53437:	8b 55 62             	mov    edx,DWORD PTR [ebp+0x62]
   5343a:	8d 4a 01             	lea    ecx,[edx+0x1]
   5343d:	89 84 95 56 ff ff ff 	mov    DWORD PTR [ebp+edx*4-0xaa],eax
   53444:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   53447:	39 cf                	cmp    edi,ecx
   53449:	7f bb                	jg     save_game2_branch_5
   5344b:	ba a7 cb 00 00       	mov    edx,@obj3:loadsave_cpp_variable_6                            ; fixup: num: 12972, src obj: 1, src ofs: 0x5344c, dst obj: 3, dst ofs: 0xcba7
   53450:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 12971, src obj: 1, src ofs: 0x53451, dst obj: 3, dst ofs: 0x32438
   53455:	e8 76 a3 01 00       	call   get
   5345a:	50                   	push   eax
   5345b:	68 ac cb 00 00       	push   @obj3:loadsave_cpp_variable_7                                ; fixup: num: 12970, src obj: 1, src ofs: 0x5345c, dst obj: 3, dst ofs: 0xcbac
   53460:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   53466:	50                   	push   eax
   53467:	e8 75 d7 01 00       	call   sprintf_
   5346c:	83 c4 0c             	add    esp,0xc
   5346f:	68 02 02 00 00       	push   0x202
   53474:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   5347a:	50                   	push   eax
   5347b:	e8 f6 e0 01 00       	call   open_
   53480:	83 c4 08             	add    esp,0x8
   53483:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 12969, src obj: 1, src ofs: 0x53484, dst obj: 3, dst ofs: 0x25b30
   53488:	83 f8 ff             	cmp    eax,0xffffffff
   5348b:	75 05                	jne    save_game2_branch_7
   5348d:	e9 c7 00 00 00       	jmp    save_game2_branch_11
save_game2_branch_7:
   53492:	bb 0a 00 00 00       	mov    ebx,0xa
   53497:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 12861, src obj: 1, src ofs: 0x53498, dst obj: 3, dst ofs: 0x17e5c
   5349c:	e8 c2 ea 01 00       	call   read_
   534a1:	31 db                	xor    ebx,ebx
   534a3:	89 5d 62             	mov    DWORD PTR [ebp+0x62],ebx
save_game2_branch_8:
   534a6:	8b 55 62             	mov    edx,DWORD PTR [ebp+0x62]
   534a9:	8d 85 66 e1 ff ff    	lea    eax,[ebp-0x1e9a]
   534af:	c1 e2 08             	shl    edx,0x8
   534b2:	bb fa 00 00 00       	mov    ebx,0xfa
   534b7:	01 c2                	add    edx,eax
   534b9:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12860, src obj: 1, src ofs: 0x534ba, dst obj: 3, dst ofs: 0x25b30
   534be:	e8 a0 ea 01 00       	call   read_
   534c3:	8b 7d 62             	mov    edi,DWORD PTR [ebp+0x62]
   534c6:	8d 85 66 e1 ff ff    	lea    eax,[ebp-0x1e9a]
   534cc:	c1 e7 08             	shl    edi,0x8
   534cf:	01 c7                	add    edi,eax
   534d1:	29 c9                	sub    ecx,ecx
   534d3:	49                   	dec    ecx
   534d4:	31 c0                	xor    eax,eax
   534d6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   534d8:	f7 d1                	not    ecx
   534da:	49                   	dec    ecx
   534db:	85 c9                	test   ecx,ecx
   534dd:	74 65                	je     save_game2_branch_10
   534df:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   534e2:	8d 95 66 c8 ff ff    	lea    edx,[ebp-0x379a]
   534e8:	50                   	push   eax
   534e9:	c1 e0 08             	shl    eax,0x8
   534ec:	68 bb cb 00 00       	push   @obj3:loadsave_cpp_variable_8                                ; fixup: num: 12976, src obj: 1, src ofs: 0x534ed, dst obj: 3, dst ofs: 0xcbbb
   534f1:	01 d0                	add    eax,edx
   534f3:	50                   	push   eax
   534f4:	e8 e8 d6 01 00       	call   sprintf_
   534f9:	83 c4 0c             	add    esp,0xc
   534fc:	b8 50 00 00 00       	mov    eax,0x50
   53501:	e8 12 ea 01 00       	call   W?$nwn(ui)pnv
   53506:	85 c0                	test   eax,eax
   53508:	74 30                	je     save_game2_branch_9
   5350a:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   5350d:	6b d3 11             	imul   edx,ebx,0x11
   53510:	6a 00                	push   0x0
   53512:	6a ce                	push   0xffffffce
   53514:	83 c2 19             	add    edx,0x19
   53517:	8d 8d 66 c8 ff ff    	lea    ecx,[ebp-0x379a]
   5351d:	52                   	push   edx
   5351e:	8d b5 66 e1 ff ff    	lea    esi,[ebp-0x1e9a]
   53524:	89 da                	mov    edx,ebx
   53526:	6a 50                	push   0x50
   53528:	c1 e2 08             	shl    edx,0x8
   5352b:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 12975, src obj: 1, src ofs: 0x5352d, dst obj: 3, dst ofs: 0x25bcc
   53531:	01 d1                	add    ecx,edx
   53533:	01 f2                	add    edx,esi
   53535:	e8 c6 66 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
save_game2_branch_9:
   5353a:	8b 55 62             	mov    edx,DWORD PTR [ebp+0x62]
   5353d:	89 84 95 f2 fe ff ff 	mov    DWORD PTR [ebp+edx*4-0x10e],eax
save_game2_branch_10:
   53544:	8b 4d 62             	mov    ecx,DWORD PTR [ebp+0x62]
   53547:	41                   	inc    ecx
   53548:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   5354b:	83 f9 19             	cmp    ecx,0x19
   5354e:	0f 8c 52 ff ff ff    	jl     save_game2_branch_8
   53554:	e9 8f 00 00 00       	jmp    save_game2_branch_15
save_game2_branch_11:
   53559:	68 80 01 00 00       	push   0x180
   5355e:	68 22 02 00 00       	push   0x222
   53563:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   53569:	50                   	push   eax
   5356a:	e8 07 e0 01 00       	call   open_
   5356f:	83 c4 0c             	add    esp,0xc
   53572:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 12865, src obj: 1, src ofs: 0x53573, dst obj: 3, dst ofs: 0x25b30
   53577:	83 f8 ff             	cmp    eax,0xffffffff
   5357a:	74 76                	je     save_game2_branch_16
   5357c:	bb 0a 00 00 00       	mov    ebx,0xa
   53581:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 12864, src obj: 1, src ofs: 0x53582, dst obj: 3, dst ofs: 0x17e5c
   53586:	e8 39 e2 01 00       	call   write_
   5358b:	31 d2                	xor    edx,edx
   5358d:	b9 c6 cb 00 00       	mov    ecx,@obj3:loadsave_cpp_variable_9                            ; fixup: num: 12863, src obj: 1, src ofs: 0x5358e, dst obj: 3, dst ofs: 0xcbc6
   53592:	89 55 62             	mov    DWORD PTR [ebp+0x62],edx
save_game2_branch_12:
   53595:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53598:	8d bd 66 e1 ff ff    	lea    edi,[ebp-0x1e9a]
   5359e:	c1 e0 08             	shl    eax,0x8
   535a1:	89 ce                	mov    esi,ecx
   535a3:	01 c7                	add    edi,eax
   535a5:	57                   	push   edi
save_game2_branch_13:
   535a6:	8a 06                	mov    al,BYTE PTR [esi]
   535a8:	88 07                	mov    BYTE PTR [edi],al
   535aa:	3c 00                	cmp    al,0x0
   535ac:	74 10                	je     save_game2_branch_14
   535ae:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   535b1:	83 c6 02             	add    esi,0x2
   535b4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   535b7:	83 c7 02             	add    edi,0x2
   535ba:	3c 00                	cmp    al,0x0
   535bc:	75 e8                	jne    save_game2_branch_13
save_game2_branch_14:
   535be:	5f                   	pop    edi
   535bf:	8b 55 62             	mov    edx,DWORD PTR [ebp+0x62]
   535c2:	8d 85 66 e1 ff ff    	lea    eax,[ebp-0x1e9a]
   535c8:	c1 e2 08             	shl    edx,0x8
   535cb:	bb fa 00 00 00       	mov    ebx,0xfa
   535d0:	01 c2                	add    edx,eax
   535d2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12862, src obj: 1, src ofs: 0x535d3, dst obj: 3, dst ofs: 0x25b30
   535d7:	e8 e8 e1 01 00       	call   write_
   535dc:	8b 75 62             	mov    esi,DWORD PTR [ebp+0x62]
   535df:	46                   	inc    esi
   535e0:	89 75 62             	mov    DWORD PTR [ebp+0x62],esi
   535e3:	83 fe 19             	cmp    esi,0x19
   535e6:	7c ad                	jl     save_game2_branch_12
save_game2_branch_15:
   535e8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12876, src obj: 1, src ofs: 0x535e9, dst obj: 3, dst ofs: 0x25b30
   535ed:	e8 1e e9 01 00       	call   close_
save_game2_branch_16:
   535f2:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12875, src obj: 1, src ofs: 0x535f3, dst obj: 3, dst ofs: 0x25a84
   535f7:	e8 a4 a6 ff ff       	call   update_mod_84
   535fc:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12874, src obj: 1, src ofs: 0x535fe, dst obj: 3, dst ofs: 0x10fb8
   53602:	57                   	push   edi
   53603:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 12873, src obj: 1, src ofs: 0x53604, dst obj: 3, dst ofs: 0x10fb4
   53608:	50                   	push   eax
   53609:	6a 00                	push   0x0
   5360b:	30 ff                	xor    bh,bh
   5360d:	6a 00                	push   0x0
   5360f:	8d 85 66 fa ff ff    	lea    eax,[ebp-0x59a]
   53615:	88 7d 76             	mov    BYTE PTR [ebp+0x76],bh
   53618:	e8 13 04 fc ff       	call   fade
save_game2_branch_17:
   5361d:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 12872, src obj: 1, src ofs: 0x5361e, dst obj: 3, dst ofs: 0x25a84
   53622:	e8 79 a6 ff ff       	call   update_mod_84
   53627:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12871, src obj: 1, src ofs: 0x53628, dst obj: 3, dst ofs: 0x1a1d4
   5362c:	e8 6f 83 fb ff       	call   update_mod_9
   53631:	83 3d 78 59 02 00 08 	cmp    DWORD PTR ds:@obj3:mouse_x,0x8                               ; fixup: num: 12870, src obj: 1, src ofs: 0x53633, dst obj: 3, dst ofs: 0x25978
   53638:	7c 28                	jl     save_game2_branch_18
   5363a:	81 3d 78 59 02 00 7b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x27b                    ; fixup: num: 12869, src obj: 1, src ofs: 0x5363c, dst obj: 3, dst ofs: 0x25978
   53644:	7f 1c                	jg     save_game2_branch_18
   53646:	83 3d 7c 59 02 00 19 	cmp    DWORD PTR ds:@obj3:mouse_y,0x19                              ; fixup: num: 12868, src obj: 1, src ofs: 0x53648, dst obj: 3, dst ofs: 0x2597c
   5364d:	7c 13                	jl     save_game2_branch_18
   5364f:	81 3d 7c 59 02 00 c2 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1c2                    ; fixup: num: 12867, src obj: 1, src ofs: 0x53651, dst obj: 3, dst ofs: 0x2597c
   53659:	7f 07                	jg     save_game2_branch_18
   5365b:	b8 01 00 00 00       	mov    eax,0x1
   53660:	eb 02                	jmp    save_game2_branch_19
save_game2_branch_18:
   53662:	31 c0                	xor    eax,eax
save_game2_branch_19:
   53664:	85 c0                	test   eax,eax
   53666:	74 6e                	je     save_game2_branch_23
   53668:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 12866, src obj: 1, src ofs: 0x53669, dst obj: 3, dst ofs: 0x2597c
   5366d:	83 e8 19             	sub    eax,0x19
   53670:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   53673:	85 c0                	test   eax,eax
   53675:	7d 05                	jge    save_game2_branch_20
   53677:	31 c0                	xor    eax,eax
   53679:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
save_game2_branch_20:
   5367c:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5367f:	89 c2                	mov    edx,eax
   53681:	bb 11 00 00 00       	mov    ebx,0x11
   53686:	c1 fa 1f             	sar    edx,0x1f
   53689:	f7 fb                	idiv   ebx
   5368b:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   5368e:	83 f8 19             	cmp    eax,0x19
   53691:	7c 07                	jl     save_game2_branch_21
   53693:	c7 45 62 18 00 00 00 	mov    DWORD PTR [ebp+0x62],0x18
save_game2_branch_21:
   5369a:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5369d:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
   536a0:	31 c0                	xor    eax,eax
   536a2:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12882, src obj: 1, src ofs: 0x536a3, dst obj: 3, dst ofs: 0x25974
   536a7:	83 f8 01             	cmp    eax,0x1
   536aa:	75 2a                	jne    save_game2_branch_23
   536ac:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 12881, src obj: 1, src ofs: 0x536ad, dst obj: 3, dst ofs: 0x1a1d4
   536b1:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 12880, src obj: 1, src ofs: 0x536b2, dst obj: 3, dst ofs: 0x25a84
save_game2_branch_22:
   536b6:	31 c0                	xor    eax,eax
   536b8:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12879, src obj: 1, src ofs: 0x536b9, dst obj: 3, dst ofs: 0x25974
   536bd:	83 f8 01             	cmp    eax,0x1
   536c0:	0f 85 d5 01 00 00    	jne    save_game2_branch_39
   536c6:	89 d0                	mov    eax,edx
   536c8:	e8 d3 82 fb ff       	call   update_mod_9
   536cd:	89 d8                	mov    eax,ebx
   536cf:	e8 cc a5 ff ff       	call   update_mod_84
   536d4:	eb e0                	jmp    save_game2_branch_22
save_game2_branch_23:
   536d6:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   536d9:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   536dc:	39 c8                	cmp    eax,ecx
   536de:	0f 84 dd 00 00 00    	je     save_game2_branch_30
   536e4:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
   536eb:	8b b4 28 56 ff ff ff 	mov    esi,DWORD PTR [eax+ebp*1-0xaa]
   536f2:	85 f6                	test   esi,esi
   536f4:	74 1c                	je     save_game2_branch_25
   536f6:	89 f0                	mov    eax,esi
   536f8:	74 0c                	je     save_game2_branch_24
   536fa:	31 d2                	xor    edx,edx
   536fc:	e8 1f 68 ff ff       	call   W?$dt:TEXTBM$n()_
   53701:	e8 72 e9 01 00       	call   W?$dln(pnv)v
save_game2_branch_24:
   53706:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   53709:	31 ff                	xor    edi,edi
   5370b:	89 bc 85 56 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0xaa],edi
save_game2_branch_25:
   53712:	b8 50 00 00 00       	mov    eax,0x50
   53717:	e8 fc e7 01 00       	call   W?$nwn(ui)pnv
   5371c:	85 c0                	test   eax,eax
   5371e:	74 24                	je     save_game2_branch_26
   53720:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   53723:	6b d3 11             	imul   edx,ebx,0x11
   53726:	6a 00                	push   0x0
   53728:	6a ce                	push   0xffffffce
   5372a:	83 c2 19             	add    edx,0x19
   5372d:	52                   	push   edx
   5372e:	6a 08                	push   0x8
   53730:	8b 14 9d 20 3c 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:ls_text]                          ; fixup: num: 12878, src obj: 1, src ofs: 0x53733, dst obj: 3, dst ofs: 0x13c20
   53737:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 12877, src obj: 1, src ofs: 0x53739, dst obj: 3, dst ofs: 0x25bcc
   5373d:	89 d1                	mov    ecx,edx
   5373f:	e8 bc 64 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
save_game2_branch_26:
   53744:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   53747:	89 84 95 56 ff ff ff 	mov    DWORD PTR [ebp+edx*4-0xaa],eax
   5374e:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   53751:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   53758:	8b 8c 28 56 ff ff ff 	mov    ecx,DWORD PTR [eax+ebp*1-0xaa]
   5375f:	85 c9                	test   ecx,ecx
   53761:	74 1c                	je     save_game2_branch_28
   53763:	89 c8                	mov    eax,ecx
   53765:	74 0c                	je     save_game2_branch_27
   53767:	31 d2                	xor    edx,edx
   53769:	e8 b2 67 ff ff       	call   W?$dt:TEXTBM$n()_
   5376e:	e8 05 e9 01 00       	call   W?$dln(pnv)v
save_game2_branch_27:
   53773:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   53776:	31 f6                	xor    esi,esi
   53778:	89 b4 85 56 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0xaa],esi
save_game2_branch_28:
   5377f:	b8 50 00 00 00       	mov    eax,0x50
   53784:	e8 8f e7 01 00       	call   W?$nwn(ui)pnv
   53789:	85 c0                	test   eax,eax
   5378b:	74 24                	je     save_game2_branch_29
   5378d:	8b 7d 6e             	mov    edi,DWORD PTR [ebp+0x6e]
   53790:	6b d7 11             	imul   edx,edi,0x11
   53793:	6a 00                	push   0x0
   53795:	6a ce                	push   0xffffffce
   53797:	83 c2 19             	add    edx,0x19
   5379a:	52                   	push   edx
   5379b:	6a 08                	push   0x8
   5379d:	8b 14 bd 20 3c 01 00 	mov    edx,DWORD PTR [edi*4+@obj3:ls_text]                          ; fixup: num: 12888, src obj: 1, src ofs: 0x537a0, dst obj: 3, dst ofs: 0x13c20
   537a4:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 12887, src obj: 1, src ofs: 0x537a6, dst obj: 3, dst ofs: 0x25bd0
   537aa:	89 d1                	mov    ecx,edx
   537ac:	e8 4f 64 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
save_game2_branch_29:
   537b1:	8b 55 6e             	mov    edx,DWORD PTR [ebp+0x6e]
   537b4:	89 84 95 56 ff ff ff 	mov    DWORD PTR [ebp+edx*4-0xaa],eax
   537bb:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   537be:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
save_game2_branch_30:
   537c1:	31 c0                	xor    eax,eax
   537c3:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12886, src obj: 1, src ofs: 0x537c4, dst obj: 3, dst ofs: 0x25974
   537c8:	83 f8 01             	cmp    eax,0x1
   537cb:	0f 85 a5 00 00 00    	jne    save_game2_branch_37
   537d1:	ba d4 a1 01 00       	mov    edx,@obj3:music                                              ; fixup: num: 12885, src obj: 1, src ofs: 0x537d2, dst obj: 3, dst ofs: 0x1a1d4
   537d6:	bb 84 5a 02 00       	mov    ebx,@obj3:the_screen                                         ; fixup: num: 12884, src obj: 1, src ofs: 0x537d7, dst obj: 3, dst ofs: 0x25a84
save_game2_branch_31:
   537db:	31 c0                	xor    eax,eax
   537dd:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12883, src obj: 1, src ofs: 0x537de, dst obj: 3, dst ofs: 0x25974
   537e2:	83 f8 01             	cmp    eax,0x1
   537e5:	75 10                	jne    save_game2_branch_32
   537e7:	89 d0                	mov    eax,edx
   537e9:	e8 b2 81 fb ff       	call   update_mod_9
   537ee:	89 d8                	mov    eax,ebx
   537f0:	e8 ab a4 ff ff       	call   update_mod_84
   537f5:	eb e4                	jmp    save_game2_branch_31
save_game2_branch_32:
   537f7:	83 3d 78 59 02 00 03 	cmp    DWORD PTR ds:@obj3:mouse_x,0x3                               ; fixup: num: 12898, src obj: 1, src ofs: 0x537f9, dst obj: 3, dst ofs: 0x25978
   537fe:	7c 2b                	jl     save_game2_branch_33
   53800:	81 3d 78 59 02 00 3d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x13d                    ; fixup: num: 12897, src obj: 1, src ofs: 0x53802, dst obj: 3, dst ofs: 0x25978
   5380a:	7f 1f                	jg     save_game2_branch_33
   5380c:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 12896, src obj: 1, src ofs: 0x5380e, dst obj: 3, dst ofs: 0x2597c
   53816:	7c 13                	jl     save_game2_branch_33
   53818:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 12895, src obj: 1, src ofs: 0x5381a, dst obj: 3, dst ofs: 0x2597c
   53822:	7f 07                	jg     save_game2_branch_33
   53824:	b8 01 00 00 00       	mov    eax,0x1
   53829:	eb 02                	jmp    save_game2_branch_34
save_game2_branch_33:
   5382b:	31 c0                	xor    eax,eax
save_game2_branch_34:
   5382d:	85 c0                	test   eax,eax
   5382f:	0f 85 66 00 00 00    	jne    save_game2_branch_39
   53835:	81 3d 78 59 02 00 41 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x141                    ; fixup: num: 12894, src obj: 1, src ofs: 0x53837, dst obj: 3, dst ofs: 0x25978
   5383f:	7c 2b                	jl     save_game2_branch_35
   53841:	81 3d 78 59 02 00 7b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x27b                    ; fixup: num: 12893, src obj: 1, src ofs: 0x53843, dst obj: 3, dst ofs: 0x25978
   5384b:	7f 1f                	jg     save_game2_branch_35
   5384d:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 12892, src obj: 1, src ofs: 0x5384f, dst obj: 3, dst ofs: 0x2597c
   53857:	7c 13                	jl     save_game2_branch_35
   53859:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 12891, src obj: 1, src ofs: 0x5385b, dst obj: 3, dst ofs: 0x2597c
   53863:	7f 07                	jg     save_game2_branch_35
   53865:	b8 01 00 00 00       	mov    eax,0x1
   5386a:	eb 02                	jmp    save_game2_branch_36
save_game2_branch_35:
   5386c:	31 c0                	xor    eax,eax
save_game2_branch_36:
   5386e:	85 c0                	test   eax,eax
   53870:	74 04                	je     save_game2_branch_37
   53872:	c6 45 76 01          	mov    BYTE PTR [ebp+0x76],0x1
save_game2_branch_37:
   53876:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12890, src obj: 1, src ofs: 0x53879, dst obj: 3, dst ofs: 0x25908
   5387d:	83 f8 01             	cmp    eax,0x1
   53880:	75 09                	jne    save_game2_branch_38
   53882:	c6 45 76 01          	mov    BYTE PTR [ebp+0x76],0x1
   53886:	e9 5b 03 00 00       	jmp    save_game2_branch_61
save_game2_branch_38:
   5388b:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12889, src obj: 1, src ofs: 0x5388e, dst obj: 3, dst ofs: 0x25908
   53892:	83 f8 1c             	cmp    eax,0x1c
   53895:	0f 85 4b 03 00 00    	jne    save_game2_branch_61
save_game2_branch_39:
   5389b:	8b 75 6a             	mov    esi,DWORD PTR [ebp+0x6a]
   5389e:	8d 85 66 e1 ff ff    	lea    eax,[ebp-0x1e9a]
   538a4:	c1 e6 08             	shl    esi,0x8
   538a7:	01 c6                	add    esi,eax
   538a9:	89 f7                	mov    edi,esi
   538ab:	29 c9                	sub    ecx,ecx
   538ad:	49                   	dec    ecx
   538ae:	31 c0                	xor    eax,eax
   538b0:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   538b2:	f7 d1                	not    ecx
   538b4:	49                   	dec    ecx
   538b5:	85 c9                	test   ecx,ecx
   538b7:	74 53                	je     save_game2_branch_43
   538b9:	8d bd 66 fd ff ff    	lea    edi,[ebp-0x29a]
   538bf:	57                   	push   edi
save_game2_branch_40:
   538c0:	8a 06                	mov    al,BYTE PTR [esi]
   538c2:	88 07                	mov    BYTE PTR [edi],al
   538c4:	3c 00                	cmp    al,0x0
   538c6:	74 10                	je     save_game2_branch_41
   538c8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   538cb:	83 c6 02             	add    esi,0x2
   538ce:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   538d1:	83 c7 02             	add    edi,0x2
   538d4:	3c 00                	cmp    al,0x0
   538d6:	75 e8                	jne    save_game2_branch_40
save_game2_branch_41:
   538d8:	5f                   	pop    edi
   538d9:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   538dc:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   538e3:	8b 9c 28 f2 fe ff ff 	mov    ebx,DWORD PTR [eax+ebp*1-0x10e]
   538ea:	85 db                	test   ebx,ebx
   538ec:	74 43                	je     save_game2_branch_46
   538ee:	89 d8                	mov    eax,ebx
   538f0:	74 0c                	je     save_game2_branch_42
   538f2:	31 d2                	xor    edx,edx
   538f4:	e8 27 66 ff ff       	call   W?$dt:TEXTBM$n()_
   538f9:	e8 7a e7 01 00       	call   W?$dln(pnv)v
save_game2_branch_42:
   538fe:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   53901:	31 c9                	xor    ecx,ecx
   53903:	89 8c 85 f2 fe ff ff 	mov    DWORD PTR [ebp+eax*4-0x10e],ecx
   5390a:	eb 25                	jmp    save_game2_branch_46
save_game2_branch_43:
   5390c:	be c7 cb 00 00       	mov    esi,@obj3:loadsave_cpp_variable_10                           ; fixup: num: 12901, src obj: 1, src ofs: 0x5390d, dst obj: 3, dst ofs: 0xcbc7
   53911:	8d bd 66 fd ff ff    	lea    edi,[ebp-0x29a]
   53917:	57                   	push   edi
save_game2_branch_44:
   53918:	8a 06                	mov    al,BYTE PTR [esi]
   5391a:	88 07                	mov    BYTE PTR [edi],al
   5391c:	3c 00                	cmp    al,0x0
   5391e:	74 10                	je     save_game2_branch_45
   53920:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   53923:	83 c6 02             	add    esi,0x2
   53926:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   53929:	83 c7 02             	add    edi,0x2
   5392c:	3c 00                	cmp    al,0x0
   5392e:	75 e8                	jne    save_game2_branch_44
save_game2_branch_45:
   53930:	5f                   	pop    edi
save_game2_branch_46:
   53931:	8b 35 78 59 02 00    	mov    esi,DWORD PTR ds:@obj3:mouse_x                               ; fixup: num: 12900, src obj: 1, src ofs: 0x53933, dst obj: 3, dst ofs: 0x25978
   53937:	8b 3d 7c 59 02 00    	mov    edi,DWORD PTR ds:@obj3:mouse_y                               ; fixup: num: 12899, src obj: 1, src ofs: 0x53939, dst obj: 3, dst ofs: 0x2597c
   5393d:	b8 14 00 00 00       	mov    eax,0x14
   53942:	a3 78 59 02 00       	mov    ds:@obj3:mouse_x,eax                                         ; fixup: num: 12906, src obj: 1, src ofs: 0x53943, dst obj: 3, dst ofs: 0x25978
   53947:	ba ce 01 00 00       	mov    edx,0x1ce
   5394c:	89 15 7c 59 02 00    	mov    DWORD PTR ds:@obj3:mouse_y,edx                               ; fixup: num: 12905, src obj: 1, src ofs: 0x5394e, dst obj: 3, dst ofs: 0x2597c
   53952:	80 3d 71 59 02 00 00 	cmp    BYTE PTR ds:@obj3:mouse_initialized,0x0                      ; fixup: num: 12904, src obj: 1, src ofs: 0x53954, dst obj: 3, dst ofs: 0x25971
   53959:	74 21                	je     save_game2_branch_47
   5395b:	bb 04 00 00 00       	mov    ebx,0x4
   53960:	66 89 45 c2          	mov    WORD PTR [ebp-0x3e],ax
   53964:	66 89 55 c6          	mov    WORD PTR [ebp-0x3a],dx
   53968:	8d 55 ba             	lea    edx,[ebp-0x46]
   5396b:	b8 33 00 00 00       	mov    eax,0x33
   53970:	66 89 5d ba          	mov    WORD PTR [ebp-0x46],bx
   53974:	8d 5d ba             	lea    ebx,[ebp-0x46]
   53977:	e8 20 d7 01 00       	call   int386_
save_game2_branch_47:
   5397c:	ba 7f 02 00 00       	mov    edx,0x27f
   53981:	8a 3d 71 59 02 00    	mov    bh,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 12903, src obj: 1, src ofs: 0x53983, dst obj: 3, dst ofs: 0x25971
   53987:	31 c0                	xor    eax,eax
   53989:	84 ff                	test   bh,bh
   5398b:	74 21                	je     save_game2_branch_48
   5398d:	b9 07 00 00 00       	mov    ecx,0x7
   53992:	8d 5d d6             	lea    ebx,[ebp-0x2a]
   53995:	66 89 45 de          	mov    WORD PTR [ebp-0x22],ax
   53999:	66 89 55 e2          	mov    WORD PTR [ebp-0x1e],dx
   5399d:	8d 55 d6             	lea    edx,[ebp-0x2a]
   539a0:	b8 33 00 00 00       	mov    eax,0x33
   539a5:	66 89 4d d6          	mov    WORD PTR [ebp-0x2a],cx
   539a9:	e8 ee d6 01 00       	call   int386_
save_game2_branch_48:
   539ae:	ba cc 01 00 00       	mov    edx,0x1cc
   539b3:	8a 0d 71 59 02 00    	mov    cl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 12902, src obj: 1, src ofs: 0x539b5, dst obj: 3, dst ofs: 0x25971
   539b9:	b8 dc 01 00 00       	mov    eax,0x1dc
   539be:	84 c9                	test   cl,cl
   539c0:	74 21                	je     save_game2_branch_49
   539c2:	bb 08 00 00 00       	mov    ebx,0x8
   539c7:	66 89 55 32          	mov    WORD PTR [ebp+0x32],dx
   539cb:	66 89 45 36          	mov    WORD PTR [ebp+0x36],ax
   539cf:	8d 55 2a             	lea    edx,[ebp+0x2a]
   539d2:	b8 33 00 00 00       	mov    eax,0x33
   539d7:	66 89 5d 2a          	mov    WORD PTR [ebp+0x2a],bx
   539db:	8d 5d 2a             	lea    ebx,[ebp+0x2a]
   539de:	e8 b9 d6 01 00       	call   int386_
save_game2_branch_49:
   539e3:	b8 50 00 00 00       	mov    eax,0x50
   539e8:	e8 2b e5 01 00       	call   W?$nwn(ui)pnv
   539ed:	85 c0                	test   eax,eax
   539ef:	74 22                	je     save_game2_branch_50
   539f1:	6b 55 6a 11          	imul   edx,DWORD PTR [ebp+0x6a],0x11
   539f5:	6a 00                	push   0x0
   539f7:	6a 00                	push   0x0
   539f9:	6a ce                	push   0xffffffce
   539fb:	83 c2 19             	add    edx,0x19
   539fe:	52                   	push   edx
   539ff:	b9 c8 cb 00 00       	mov    ecx,@obj3:loadsave_cpp_variable_11                           ; fixup: num: 12912, src obj: 1, src ofs: 0x53a00, dst obj: 3, dst ofs: 0xcbc8
   53a04:	6a 50                	push   0x50
   53a06:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 12911, src obj: 1, src ofs: 0x53a08, dst obj: 3, dst ofs: 0x25bcc
   53a0c:	31 d2                	xor    edx,edx
   53a0e:	e8 2d 65 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiiii)_
save_game2_branch_50:
   53a13:	8d 8d 66 fd ff ff    	lea    ecx,[ebp-0x29a]
   53a19:	bb f6 00 00 00       	mov    ebx,0xf6
   53a1e:	8b 15 cc 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 12910, src obj: 1, src ofs: 0x53a20, dst obj: 3, dst ofs: 0x25bcc
   53a24:	89 45 72             	mov    DWORD PTR [ebp+0x72],eax
   53a27:	e8 b4 65 ff ff       	call   text_entry
   53a2c:	ba 7f 02 00 00       	mov    edx,0x27f
   53a31:	8a 1d 71 59 02 00    	mov    bl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 12909, src obj: 1, src ofs: 0x53a33, dst obj: 3, dst ofs: 0x25971
   53a37:	89 c1                	mov    ecx,eax
   53a39:	31 c0                	xor    eax,eax
   53a3b:	84 db                	test   bl,bl
   53a3d:	74 21                	je     save_game2_branch_51
   53a3f:	bb 07 00 00 00       	mov    ebx,0x7
   53a44:	66 89 45 4e          	mov    WORD PTR [ebp+0x4e],ax
   53a48:	66 89 55 52          	mov    WORD PTR [ebp+0x52],dx
   53a4c:	8d 55 46             	lea    edx,[ebp+0x46]
   53a4f:	b8 33 00 00 00       	mov    eax,0x33
   53a54:	66 89 5d 46          	mov    WORD PTR [ebp+0x46],bx
   53a58:	8d 5d 46             	lea    ebx,[ebp+0x46]
   53a5b:	e8 3c d6 01 00       	call   int386_
save_game2_branch_51:
   53a60:	b8 df 01 00 00       	mov    eax,0x1df
   53a65:	8a 3d 71 59 02 00    	mov    bh,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 12908, src obj: 1, src ofs: 0x53a67, dst obj: 3, dst ofs: 0x25971
   53a6b:	31 d2                	xor    edx,edx
   53a6d:	84 ff                	test   bh,bh
   53a6f:	74 21                	je     save_game2_branch_52
   53a71:	bb 08 00 00 00       	mov    ebx,0x8
   53a76:	66 89 55 fa          	mov    WORD PTR [ebp-0x6],dx
   53a7a:	66 89 45 fe          	mov    WORD PTR [ebp-0x2],ax
   53a7e:	8d 55 f2             	lea    edx,[ebp-0xe]
   53a81:	b8 33 00 00 00       	mov    eax,0x33
   53a86:	66 89 5d f2          	mov    WORD PTR [ebp-0xe],bx
   53a8a:	8d 5d f2             	lea    ebx,[ebp-0xe]
   53a8d:	e8 0a d6 01 00       	call   int386_
save_game2_branch_52:
   53a92:	8a 15 71 59 02 00    	mov    dl,BYTE PTR ds:@obj3:mouse_initialized                       ; fixup: num: 12907, src obj: 1, src ofs: 0x53a94, dst obj: 3, dst ofs: 0x25971
   53a98:	89 f8                	mov    eax,edi
   53a9a:	84 d2                	test   dl,dl
   53a9c:	74 21                	je     save_game2_branch_53
   53a9e:	bf 04 00 00 00       	mov    edi,0x4
   53aa3:	8d 5d 0e             	lea    ebx,[ebp+0xe]
   53aa6:	8d 55 0e             	lea    edx,[ebp+0xe]
   53aa9:	66 89 75 16          	mov    WORD PTR [ebp+0x16],si
   53aad:	66 89 45 1a          	mov    WORD PTR [ebp+0x1a],ax
   53ab1:	b8 33 00 00 00       	mov    eax,0x33
   53ab6:	66 89 7d 0e          	mov    WORD PTR [ebp+0xe],di
   53aba:	e8 dd d5 01 00       	call   int386_
save_game2_branch_53:
   53abf:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   53ac2:	8d 95 66 e1 ff ff    	lea    edx,[ebp-0x1e9a]
   53ac8:	c1 e3 08             	shl    ebx,0x8
   53acb:	01 da                	add    edx,ebx
   53acd:	85 c9                	test   ecx,ecx
   53acf:	0f 84 9b 00 00 00    	je     save_game2_branch_58
   53ad5:	89 ce                	mov    esi,ecx
   53ad7:	89 d7                	mov    edi,edx
   53ad9:	57                   	push   edi
save_game2_branch_54:
   53ada:	8a 06                	mov    al,BYTE PTR [esi]
   53adc:	88 07                	mov    BYTE PTR [edi],al
   53ade:	3c 00                	cmp    al,0x0
   53ae0:	74 10                	je     save_game2_branch_55
   53ae2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   53ae5:	83 c6 02             	add    esi,0x2
   53ae8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   53aeb:	83 c7 02             	add    edi,0x2
   53aee:	3c 00                	cmp    al,0x0
   53af0:	75 e8                	jne    save_game2_branch_54
save_game2_branch_55:
   53af2:	5f                   	pop    edi
   53af3:	68 80 01 00 00       	push   0x180
   53af8:	68 22 02 00 00       	push   0x222
   53afd:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   53b03:	50                   	push   eax
   53b04:	e8 6d da 01 00       	call   open_
   53b09:	83 c4 0c             	add    esp,0xc
   53b0c:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 12915, src obj: 1, src ofs: 0x53b0d, dst obj: 3, dst ofs: 0x25b30
   53b11:	83 f8 ff             	cmp    eax,0xffffffff
   53b14:	74 49                	je     save_game2_branch_57
   53b16:	bb 0a 00 00 00       	mov    ebx,0xa
   53b1b:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 12914, src obj: 1, src ofs: 0x53b1c, dst obj: 3, dst ofs: 0x17e5c
   53b20:	be fa 00 00 00       	mov    esi,0xfa
   53b25:	31 ff                	xor    edi,edi
   53b27:	e8 98 dc 01 00       	call   write_
   53b2c:	89 7d 62             	mov    DWORD PTR [ebp+0x62],edi
save_game2_branch_56:
   53b2f:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53b32:	8d 95 66 e1 ff ff    	lea    edx,[ebp-0x1e9a]
   53b38:	c1 e0 08             	shl    eax,0x8
   53b3b:	89 f3                	mov    ebx,esi
   53b3d:	01 c2                	add    edx,eax
   53b3f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12913, src obj: 1, src ofs: 0x53b40, dst obj: 3, dst ofs: 0x25b30
   53b44:	e8 7b dc 01 00       	call   write_
   53b49:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53b4c:	40                   	inc    eax
   53b4d:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   53b50:	83 f8 19             	cmp    eax,0x19
   53b53:	7c da                	jl     save_game2_branch_56
   53b55:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12806, src obj: 1, src ofs: 0x53b56, dst obj: 3, dst ofs: 0x25b30
   53b5a:	e8 b1 e3 01 00       	call   close_
save_game2_branch_57:
   53b5f:	89 c8                	mov    eax,ecx
   53b61:	b6 01                	mov    dh,0x1
   53b63:	e8 80 d8 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   53b68:	88 75 7e             	mov    BYTE PTR [ebp+0x7e],dh
   53b6b:	88 75 76             	mov    BYTE PTR [ebp+0x76],dh
   53b6e:	eb 5f                	jmp    save_game2_branch_60
save_game2_branch_58:
   53b70:	8d bd 66 fd ff ff    	lea    edi,[ebp-0x29a]
   53b76:	29 c9                	sub    ecx,ecx
   53b78:	49                   	dec    ecx
   53b79:	31 c0                	xor    eax,eax
   53b7b:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   53b7d:	f7 d1                	not    ecx
   53b7f:	49                   	dec    ecx
   53b80:	85 c9                	test   ecx,ecx
   53b82:	74 4b                	je     save_game2_branch_60
   53b84:	8b 4d 6a             	mov    ecx,DWORD PTR [ebp+0x6a]
   53b87:	51                   	push   ecx
   53b88:	8d 8d 66 c8 ff ff    	lea    ecx,[ebp-0x379a]
   53b8e:	68 d3 cb 00 00       	push   @obj3:loadsave_cpp_variable_12                               ; fixup: num: 12805, src obj: 1, src ofs: 0x53b8f, dst obj: 3, dst ofs: 0xcbd3
   53b93:	01 d9                	add    ecx,ebx
   53b95:	51                   	push   ecx
   53b96:	e8 46 d0 01 00       	call   sprintf_
   53b9b:	83 c4 0c             	add    esp,0xc
   53b9e:	b8 50 00 00 00       	mov    eax,0x50
   53ba3:	e8 70 e3 01 00       	call   W?$nwn(ui)pnv
   53ba8:	85 c0                	test   eax,eax
   53baa:	74 19                	je     save_game2_branch_59
   53bac:	6b 5d 6a 11          	imul   ebx,DWORD PTR [ebp+0x6a],0x11
   53bb0:	6a 00                	push   0x0
   53bb2:	6a ce                	push   0xffffffce
   53bb4:	83 c3 19             	add    ebx,0x19
   53bb7:	53                   	push   ebx
   53bb8:	6a 50                	push   0x50
   53bba:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 12916, src obj: 1, src ofs: 0x53bbc, dst obj: 3, dst ofs: 0x25bcc
   53bc0:	e8 3b 60 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
save_game2_branch_59:
   53bc5:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   53bc8:	89 84 95 f2 fe ff ff 	mov    DWORD PTR [ebp+edx*4-0x10e],eax
save_game2_branch_60:
   53bcf:	8b 5d 72             	mov    ebx,DWORD PTR [ebp+0x72]
   53bd2:	85 db                	test   ebx,ebx
   53bd4:	74 10                	je     save_game2_branch_61
   53bd6:	74 0e                	je     save_game2_branch_61
   53bd8:	89 d8                	mov    eax,ebx
   53bda:	31 d2                	xor    edx,edx
   53bdc:	e8 3f 63 ff ff       	call   W?$dt:TEXTBM$n()_
   53be1:	e8 92 e4 01 00       	call   W?$dln(pnv)v
save_game2_branch_61:
   53be6:	80 7d 76 00          	cmp    BYTE PTR [ebp+0x76],0x0
   53bea:	75 05                	jne    save_game2_branch_62
   53bec:	e9 2c fa ff ff       	jmp    save_game2_branch_17
save_game2_branch_62:
   53bf1:	be 18 00 00 00       	mov    esi,0x18
   53bf6:	31 db                	xor    ebx,ebx
   53bf8:	89 75 62             	mov    DWORD PTR [ebp+0x62],esi
save_game2_branch_63:
   53bfb:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53bfe:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   53c05:	8b bc 28 56 ff ff ff 	mov    edi,DWORD PTR [eax+ebp*1-0xaa]
   53c0c:	39 fb                	cmp    ebx,edi
   53c0e:	74 1c                	je     save_game2_branch_65
   53c10:	89 f8                	mov    eax,edi
   53c12:	85 ff                	test   edi,edi
   53c14:	74 0c                	je     save_game2_branch_64
   53c16:	89 da                	mov    edx,ebx
   53c18:	e8 03 63 ff ff       	call   W?$dt:TEXTBM$n()_
   53c1d:	e8 56 e4 01 00       	call   W?$dln(pnv)v
save_game2_branch_64:
   53c22:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53c25:	89 9c 85 56 ff ff ff 	mov    DWORD PTR [ebp+eax*4-0xaa],ebx
save_game2_branch_65:
   53c2c:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53c2f:	48                   	dec    eax
   53c30:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
   53c33:	39 c3                	cmp    ebx,eax
   53c35:	7e c4                	jle    save_game2_branch_63
   53c37:	c7 45 62 18 00 00 00 	mov    DWORD PTR [ebp+0x62],0x18
   53c3e:	31 db                	xor    ebx,ebx
save_game2_branch_66:
   53c40:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53c43:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   53c4a:	8b 8c 28 f2 fe ff ff 	mov    ecx,DWORD PTR [eax+ebp*1-0x10e]
   53c51:	39 cb                	cmp    ebx,ecx
   53c53:	74 1c                	je     save_game2_branch_68
   53c55:	89 c8                	mov    eax,ecx
   53c57:	85 c9                	test   ecx,ecx
   53c59:	74 0c                	je     save_game2_branch_67
   53c5b:	89 da                	mov    edx,ebx
   53c5d:	e8 be 62 ff ff       	call   W?$dt:TEXTBM$n()_
   53c62:	e8 11 e4 01 00       	call   W?$dln(pnv)v
save_game2_branch_67:
   53c67:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   53c6a:	89 9c 85 f2 fe ff ff 	mov    DWORD PTR [ebp+eax*4-0x10e],ebx
save_game2_branch_68:
   53c71:	8b 75 62             	mov    esi,DWORD PTR [ebp+0x62]
   53c74:	4e                   	dec    esi
   53c75:	89 75 62             	mov    DWORD PTR [ebp+0x62],esi
   53c78:	39 f3                	cmp    ebx,esi
   53c7a:	7e c4                	jle    save_game2_branch_66
   53c7c:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   53c7f:	85 c0                	test   eax,eax
   53c81:	74 21                	je     save_game2_branch_69
   53c83:	89 c2                	mov    edx,eax
   53c85:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12807, src obj: 1, src ofs: 0x53c86, dst obj: 3, dst ofs: 0x25a88
   53c8a:	e8 61 8a ff ff       	call   remove_bitmap
   53c8f:	83 7d 66 00          	cmp    DWORD PTR [ebp+0x66],0x0
   53c93:	74 0f                	je     save_game2_branch_69
   53c95:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   53c98:	31 d2                	xor    edx,edx
   53c9a:	e8 01 77 fe ff       	call   W?$dt:BTMAP$n()_
   53c9f:	e8 d4 e3 01 00       	call   W?$dln(pnv)v
save_game2_branch_69:
   53ca4:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12816, src obj: 1, src ofs: 0x53ca5, dst obj: 3, dst ofs: 0x1a1d4
   53ca9:	8a 4d 7e             	mov    cl,BYTE PTR [ebp+0x7e]
   53cac:	e8 ef 7c fb ff       	call   update_mod_9
   53cb1:	84 c9                	test   cl,cl
   53cb3:	0f 84 d7 0b 00 00    	je     save_game2_branch_104
   53cb9:	b8 0a 00 00 00       	mov    eax,0xa
   53cbe:	e8 d0 d7 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   53cc3:	89 c1                	mov    ecx,eax
   53cc5:	85 c0                	test   eax,eax
   53cc7:	75 0f                	jne    save_game2_branch_70
   53cc9:	bb de cb 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_13                           ; fixup: num: 12815, src obj: 1, src ofs: 0x53cca, dst obj: 3, dst ofs: 0xcbde
   53cce:	ba 15 02 00 00       	mov    edx,0x215
   53cd3:	e8 58 43 fe ff       	call   _error_report
save_game2_branch_70:
   53cd8:	bb 0a 00 00 00       	mov    ebx,0xa
   53cdd:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   53ce0:	89 ca                	mov    edx,ecx
   53ce2:	e8 8a 2f 02 00       	call   itoa_                                                        ; aliases: itoa_, _itoa_
   53ce7:	50                   	push   eax
   53ce8:	ba f6 cb 00 00       	mov    edx,@obj3:loadsave_cpp_variable_14                           ; fixup: num: 12814, src obj: 1, src ofs: 0x53ce9, dst obj: 3, dst ofs: 0xcbf6
   53ced:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 12813, src obj: 1, src ofs: 0x53cee, dst obj: 3, dst ofs: 0x32438
   53cf2:	e8 d9 9a 01 00       	call   get
   53cf7:	50                   	push   eax
   53cf8:	68 fb cb 00 00       	push   @obj3:loadsave_cpp_variable_15                               ; fixup: num: 12812, src obj: 1, src ofs: 0x53cf9, dst obj: 3, dst ofs: 0xcbfb
   53cfd:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   53d03:	50                   	push   eax
   53d04:	e8 d8 ce 01 00       	call   sprintf_
   53d09:	83 c4 10             	add    esp,0x10
   53d0c:	89 c8                	mov    eax,ecx
   53d0e:	e8 d5 d6 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   53d13:	68 80 01 00 00       	push   0x180
   53d18:	68 22 02 00 00       	push   0x222
   53d1d:	8d 85 62 fe ff ff    	lea    eax,[ebp-0x19e]
   53d23:	50                   	push   eax
   53d24:	e8 4d d8 01 00       	call   open_
   53d29:	83 c4 0c             	add    esp,0xc
   53d2c:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 12811, src obj: 1, src ofs: 0x53d2d, dst obj: 3, dst ofs: 0x25b30
   53d31:	83 f8 ff             	cmp    eax,0xffffffff
   53d34:	0f 84 4a 0b 00 00    	je     save_game2_branch_103
   53d3a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12810, src obj: 1, src ofs: 0x53d3b, dst obj: 3, dst ofs: 0x1a1d4
   53d3f:	e8 5c 7c fb ff       	call   update_mod_9
   53d44:	8b 1d a8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 12809, src obj: 1, src ofs: 0x53d46, dst obj: 3, dst ofs: 0x10fa8
   53d4a:	53                   	push   ebx
   53d4b:	68 05 cc 00 00       	push   @obj3:loadsave_cpp_variable_16                               ; fixup: num: 12808, src obj: 1, src ofs: 0x53d4c, dst obj: 3, dst ofs: 0xcc05
   53d50:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 12829, src obj: 1, src ofs: 0x53d51, dst obj: 3, dst ofs: 0x237fc
   53d55:	ba a8 0f 01 00       	mov    edx,@obj3:current_cd                                         ; fixup: num: 12828, src obj: 1, src ofs: 0x53d56, dst obj: 3, dst ofs: 0x10fa8
   53d5a:	e8 82 ce 01 00       	call   sprintf_
   53d5f:	83 c4 0c             	add    esp,0xc
   53d62:	bb 04 00 00 00       	mov    ebx,0x4
   53d67:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12827, src obj: 1, src ofs: 0x53d68, dst obj: 3, dst ofs: 0x25b30
   53d6c:	e8 53 da 01 00       	call   write_
   53d71:	bb 01 00 00 00       	mov    ebx,0x1
   53d76:	ba b1 3e 01 00       	mov    edx,@obj3:show_pc                                            ; fixup: num: 12826, src obj: 1, src ofs: 0x53d77, dst obj: 3, dst ofs: 0x13eb1
   53d7b:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12825, src obj: 1, src ofs: 0x53d7c, dst obj: 3, dst ofs: 0x25b30
   53d80:	e8 3f da 01 00       	call   write_
   53d85:	bb 08 00 00 00       	mov    ebx,0x8
   53d8a:	ba 8c 60 02 00       	mov    edx,@obj3:game_time                                          ; fixup: num: 12824, src obj: 1, src ofs: 0x53d8b, dst obj: 3, dst ofs: 0x2608c
   53d8f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12823, src obj: 1, src ofs: 0x53d90, dst obj: 3, dst ofs: 0x25b30
   53d94:	e8 2b da 01 00       	call   write_
   53d99:	8b 3d c4 5a 02 00    	mov    edi,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12822, src obj: 1, src ofs: 0x53d9b, dst obj: 3, dst ofs: 0x25ac4
   53d9f:	bb 04 00 00 00       	mov    ebx,0x4
   53da4:	8b 7f 2c             	mov    edi,DWORD PTR [edi+0x2c]
   53da7:	8d 55 62             	lea    edx,[ebp+0x62]
   53daa:	29 c9                	sub    ecx,ecx
   53dac:	49                   	dec    ecx
   53dad:	31 c0                	xor    eax,eax
   53daf:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   53db1:	f7 d1                	not    ecx
   53db3:	49                   	dec    ecx
   53db4:	41                   	inc    ecx
   53db5:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12821, src obj: 1, src ofs: 0x53db6, dst obj: 3, dst ofs: 0x25b30
   53dba:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   53dbd:	e8 02 da 01 00       	call   write_
   53dc2:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 12820, src obj: 1, src ofs: 0x53dc4, dst obj: 3, dst ofs: 0x25ac4
   53dc8:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   53dcb:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12819, src obj: 1, src ofs: 0x53dcc, dst obj: 3, dst ofs: 0x25b30
   53dd0:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   53dd3:	e8 ec d9 01 00       	call   write_
   53dd8:	bb 04 00 00 00       	mov    ebx,0x4
   53ddd:	8b 3d a8 60 02 00    	mov    edi,DWORD PTR ds:@obj3:last_room                             ; fixup: num: 12818, src obj: 1, src ofs: 0x53ddf, dst obj: 3, dst ofs: 0x260a8
   53de3:	8d 55 62             	lea    edx,[ebp+0x62]
   53de6:	29 c9                	sub    ecx,ecx
   53de8:	49                   	dec    ecx
   53de9:	31 c0                	xor    eax,eax
   53deb:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   53ded:	f7 d1                	not    ecx
   53def:	49                   	dec    ecx
   53df0:	41                   	inc    ecx
   53df1:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12817, src obj: 1, src ofs: 0x53df2, dst obj: 3, dst ofs: 0x25b30
   53df6:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   53df9:	e8 c6 d9 01 00       	call   write_
   53dfe:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   53e01:	8b 15 a8 60 02 00    	mov    edx,DWORD PTR ds:@obj3:last_room                             ; fixup: num: 12840, src obj: 1, src ofs: 0x53e03, dst obj: 3, dst ofs: 0x260a8
   53e07:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12839, src obj: 1, src ofs: 0x53e08, dst obj: 3, dst ofs: 0x25b30
   53e0c:	e8 b3 d9 01 00       	call   write_
   53e11:	bb 04 00 00 00       	mov    ebx,0x4
   53e16:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12838, src obj: 1, src ofs: 0x53e18, dst obj: 3, dst ofs: 0x25bd4
   53e1c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12837, src obj: 1, src ofs: 0x53e1d, dst obj: 3, dst ofs: 0x25b30
   53e21:	81 c2 9c 11 00 00    	add    edx,0x119c
   53e27:	e8 98 d9 01 00       	call   write_
   53e2c:	bb 04 00 00 00       	mov    ebx,0x4
   53e31:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12836, src obj: 1, src ofs: 0x53e33, dst obj: 3, dst ofs: 0x25bd4
   53e37:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12835, src obj: 1, src ofs: 0x53e38, dst obj: 3, dst ofs: 0x25b30
   53e3c:	81 c2 84 11 00 00    	add    edx,0x1184
   53e42:	e8 7d d9 01 00       	call   write_
   53e47:	bb 04 00 00 00       	mov    ebx,0x4
   53e4c:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12834, src obj: 1, src ofs: 0x53e4e, dst obj: 3, dst ofs: 0x25bd4
   53e52:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12833, src obj: 1, src ofs: 0x53e53, dst obj: 3, dst ofs: 0x25b30
   53e57:	81 c2 bc 11 00 00    	add    edx,0x11bc
   53e5d:	e8 62 d9 01 00       	call   write_
   53e62:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12832, src obj: 1, src ofs: 0x53e64, dst obj: 3, dst ofs: 0x25bd4
   53e68:	8b 5a 3c             	mov    ebx,DWORD PTR [edx+0x3c]
   53e6b:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
   53e6e:	8b 4a 24             	mov    ecx,DWORD PTR [edx+0x24]
   53e71:	89 c2                	mov    edx,eax
   53e73:	c1 fa 1f             	sar    edx,0x1f
   53e76:	2b c2                	sub    eax,edx
   53e78:	d1 f8                	sar    eax,1
   53e7a:	01 cb                	add    ebx,ecx
   53e7c:	8d 55 62             	lea    edx,[ebp+0x62]
   53e7f:	01 c3                	add    ebx,eax
   53e81:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12831, src obj: 1, src ofs: 0x53e82, dst obj: 3, dst ofs: 0x25b30
   53e86:	89 5d 62             	mov    DWORD PTR [ebp+0x62],ebx
   53e89:	bb 04 00 00 00       	mov    ebx,0x4
   53e8e:	e8 31 d9 01 00       	call   write_
   53e93:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12830, src obj: 1, src ofs: 0x53e95, dst obj: 3, dst ofs: 0x25bd4
   53e99:	8b 42 40             	mov    eax,DWORD PTR [edx+0x40]
   53e9c:	8b 72 28             	mov    esi,DWORD PTR [edx+0x28]
   53e9f:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
   53ea2:	01 f0                	add    eax,esi
   53ea4:	bb 04 00 00 00       	mov    ebx,0x4
   53ea9:	01 c2                	add    edx,eax
   53eab:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12850, src obj: 1, src ofs: 0x53eac, dst obj: 3, dst ofs: 0x25b30
   53eb0:	89 55 62             	mov    DWORD PTR [ebp+0x62],edx
   53eb3:	8d 55 62             	lea    edx,[ebp+0x62]
   53eb6:	e8 09 d9 01 00       	call   write_
   53ebb:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 12849, src obj: 1, src ofs: 0x53ebc, dst obj: 3, dst ofs: 0x25bd4
   53ec0:	d9 40 1c             	fld    DWORD PTR [eax+0x1c]
   53ec3:	e8 80 1e 02 00       	call   __CHP
   53ec8:	bb 04 00 00 00       	mov    ebx,0x4
   53ecd:	8d 55 62             	lea    edx,[ebp+0x62]
   53ed0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12848, src obj: 1, src ofs: 0x53ed1, dst obj: 3, dst ofs: 0x25b30
   53ed5:	db 5d 62             	fistp  DWORD PTR [ebp+0x62]
   53ed8:	e8 e7 d8 01 00       	call   write_
   53edd:	bb 04 00 00 00       	mov    ebx,0x4
   53ee2:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 12847, src obj: 1, src ofs: 0x53ee4, dst obj: 3, dst ofs: 0x25bd4
   53ee8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12846, src obj: 1, src ofs: 0x53ee9, dst obj: 3, dst ofs: 0x25b30
   53eed:	81 c2 a0 11 00 00    	add    edx,0x11a0
   53ef3:	e8 cc d8 01 00       	call   write_
   53ef8:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12845, src obj: 1, src ofs: 0x53ef9, dst obj: 3, dst ofs: 0x1a1d4
   53efd:	31 ff                	xor    edi,edi
   53eff:	e8 9c 7a fb ff       	call   update_mod_9
   53f04:	a1 90 5a 02 00       	mov    eax,ds:@obj3:anim_list                                       ; fixup: num: 12844, src obj: 1, src ofs: 0x53f05, dst obj: 3, dst ofs: 0x25a90
   53f09:	89 7d 62             	mov    DWORD PTR [ebp+0x62],edi
   53f0c:	85 c0                	test   eax,eax
   53f0e:	74 0a                	je     save_game2_branch_72
save_game2_branch_71:
   53f10:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   53f13:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
   53f16:	85 c0                	test   eax,eax
   53f18:	75 f6                	jne    save_game2_branch_71
save_game2_branch_72:
   53f1a:	bb 04 00 00 00       	mov    ebx,0x4
   53f1f:	8d 55 62             	lea    edx,[ebp+0x62]
   53f22:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12843, src obj: 1, src ofs: 0x53f23, dst obj: 3, dst ofs: 0x25b30
   53f27:	e8 98 d8 01 00       	call   write_
   53f2c:	8b 35 90 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 12842, src obj: 1, src ofs: 0x53f2e, dst obj: 3, dst ofs: 0x25a90
   53f32:	85 f6                	test   esi,esi
   53f34:	0f 84 7a 00 00 00    	je     save_game2_branch_74
save_game2_branch_73:
   53f3a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12841, src obj: 1, src ofs: 0x53f3b, dst obj: 3, dst ofs: 0x1a1d4
   53f3f:	bb 04 00 00 00       	mov    ebx,0x4
   53f44:	e8 57 7a fb ff       	call   update_mod_9
   53f49:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
   53f4c:	8d 55 62             	lea    edx,[ebp+0x62]
   53f4f:	29 c9                	sub    ecx,ecx
   53f51:	49                   	dec    ecx
   53f52:	31 c0                	xor    eax,eax
   53f54:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   53f56:	f7 d1                	not    ecx
   53f58:	49                   	dec    ecx
   53f59:	41                   	inc    ecx
   53f5a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12859, src obj: 1, src ofs: 0x53f5b, dst obj: 3, dst ofs: 0x25b30
   53f5f:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   53f62:	e8 5d d8 01 00       	call   write_
   53f67:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   53f6a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12858, src obj: 1, src ofs: 0x53f6b, dst obj: 3, dst ofs: 0x25b30
   53f6f:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
   53f72:	e8 4d d8 01 00       	call   write_
   53f77:	bb 01 00 00 00       	mov    ebx,0x1
   53f7c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12857, src obj: 1, src ofs: 0x53f7d, dst obj: 3, dst ofs: 0x25b30
   53f81:	8d 56 1c             	lea    edx,[esi+0x1c]
   53f84:	e8 3b d8 01 00       	call   write_
   53f89:	bb 01 00 00 00       	mov    ebx,0x1
   53f8e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12856, src obj: 1, src ofs: 0x53f8f, dst obj: 3, dst ofs: 0x25b30
   53f93:	8d 56 1d             	lea    edx,[esi+0x1d]
   53f96:	e8 29 d8 01 00       	call   write_
   53f9b:	bb 04 00 00 00       	mov    ebx,0x4
   53fa0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12855, src obj: 1, src ofs: 0x53fa1, dst obj: 3, dst ofs: 0x25b30
   53fa5:	8d 56 24             	lea    edx,[esi+0x24]
   53fa8:	e8 17 d8 01 00       	call   write_
   53fad:	8b 76 28             	mov    esi,DWORD PTR [esi+0x28]
   53fb0:	85 f6                	test   esi,esi
   53fb2:	75 86                	jne    save_game2_branch_73
save_game2_branch_74:
   53fb4:	31 db                	xor    ebx,ebx
   53fb6:	a1 a4 5a 02 00       	mov    eax,ds:@obj3:flag_list                                       ; fixup: num: 12854, src obj: 1, src ofs: 0x53fb7, dst obj: 3, dst ofs: 0x25aa4
   53fbb:	89 5d 62             	mov    DWORD PTR [ebp+0x62],ebx
   53fbe:	85 c0                	test   eax,eax
   53fc0:	74 0a                	je     save_game2_branch_76
save_game2_branch_75:
   53fc2:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   53fc5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
   53fc8:	85 c0                	test   eax,eax
   53fca:	75 f6                	jne    save_game2_branch_75
save_game2_branch_76:
   53fcc:	bb 04 00 00 00       	mov    ebx,0x4
   53fd1:	8d 55 62             	lea    edx,[ebp+0x62]
   53fd4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 12853, src obj: 1, src ofs: 0x53fd5, dst obj: 3, dst ofs: 0x25b30
   53fd9:	e8 e6 d7 01 00       	call   write_
   53fde:	8b 35 a4 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 12852, src obj: 1, src ofs: 0x53fe0, dst obj: 3, dst ofs: 0x25aa4
   53fe4:	85 f6                	test   esi,esi
   53fe6:	74 54                	je     save_game2_branch_78
save_game2_branch_77:
   53fe8:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 12851, src obj: 1, src ofs: 0x53fe9, dst obj: 3, dst ofs: 0x1a1d4
   53fed:	bb 04 00 00 00       	mov    ebx,0x4
   53ff2:	e8 a9 79 fb ff       	call   update_mod_9
   53ff7:	8b 3e                	mov    edi,DWORD PTR [esi]
   53ff9:	8d 55 62             	lea    edx,[ebp+0x62]
   53ffc:	29 c9                	sub    ecx,ecx
   53ffe:	49                   	dec    ecx
   53fff:	31 c0                	xor    eax,eax
   54001:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54003:	f7 d1                	not    ecx
   54005:	49                   	dec    ecx
   54006:	41                   	inc    ecx
   54007:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13169, src obj: 1, src ofs: 0x54008, dst obj: 3, dst ofs: 0x25b30
   5400c:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   5400f:	e8 b0 d7 01 00       	call   write_
   54014:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   54017:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13168, src obj: 1, src ofs: 0x54018, dst obj: 3, dst ofs: 0x25b30
   5401c:	8b 16                	mov    edx,DWORD PTR [esi]
   5401e:	e8 a1 d7 01 00       	call   write_
   54023:	bb 01 00 00 00       	mov    ebx,0x1
   54028:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13167, src obj: 1, src ofs: 0x54029, dst obj: 3, dst ofs: 0x25b30
   5402d:	8d 56 04             	lea    edx,[esi+0x4]
   54030:	e8 8f d7 01 00       	call   write_
   54035:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
   54038:	85 f6                	test   esi,esi
   5403a:	75 ac                	jne    save_game2_branch_77
save_game2_branch_78:
   5403c:	31 f6                	xor    esi,esi
   5403e:	a1 b4 5a 02 00       	mov    eax,ds:@obj3:monster_list                                    ; fixup: num: 13166, src obj: 1, src ofs: 0x5403f, dst obj: 3, dst ofs: 0x25ab4
   54043:	89 75 62             	mov    DWORD PTR [ebp+0x62],esi
   54046:	85 c0                	test   eax,eax
   54048:	74 0d                	je     save_game2_branch_80
save_game2_branch_79:
   5404a:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   5404d:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
   54053:	85 c0                	test   eax,eax
   54055:	75 f3                	jne    save_game2_branch_79
save_game2_branch_80:
   54057:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   5405a:	50                   	push   eax
   5405b:	68 13 cc 00 00       	push   @obj3:loadsave_cpp_variable_17                               ; fixup: num: 13165, src obj: 1, src ofs: 0x5405c, dst obj: 3, dst ofs: 0xcc13
   54060:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13164, src obj: 1, src ofs: 0x54061, dst obj: 3, dst ofs: 0x237fc
   54065:	bb 04 00 00 00       	mov    ebx,0x4
   5406a:	e8 72 cb 01 00       	call   sprintf_
   5406f:	83 c4 0c             	add    esp,0xc
   54072:	8d 55 62             	lea    edx,[ebp+0x62]
   54075:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13163, src obj: 1, src ofs: 0x54076, dst obj: 3, dst ofs: 0x25b30
   5407a:	e8 45 d7 01 00       	call   write_
   5407f:	8b 35 b4 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 13162, src obj: 1, src ofs: 0x54081, dst obj: 3, dst ofs: 0x25ab4
   54085:	85 f6                	test   esi,esi
   54087:	0f 84 f5 00 00 00    	je     save_game2_branch_82
save_game2_branch_81:
   5408d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13161, src obj: 1, src ofs: 0x5408e, dst obj: 3, dst ofs: 0x1a1d4
   54092:	bb 04 00 00 00       	mov    ebx,0x4
   54097:	e8 04 79 fb ff       	call   update_mod_9
   5409c:	8b 7e 34             	mov    edi,DWORD PTR [esi+0x34]
   5409f:	8d 55 62             	lea    edx,[ebp+0x62]
   540a2:	29 c9                	sub    ecx,ecx
   540a4:	49                   	dec    ecx
   540a5:	31 c0                	xor    eax,eax
   540a7:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   540a9:	f7 d1                	not    ecx
   540ab:	49                   	dec    ecx
   540ac:	41                   	inc    ecx
   540ad:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13160, src obj: 1, src ofs: 0x540ae, dst obj: 3, dst ofs: 0x25b30
   540b2:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   540b5:	e8 0a d7 01 00       	call   write_
   540ba:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   540bd:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13178, src obj: 1, src ofs: 0x540be, dst obj: 3, dst ofs: 0x25b30
   540c2:	8b 56 34             	mov    edx,DWORD PTR [esi+0x34]
   540c5:	e8 fa d6 01 00       	call   write_
   540ca:	bb 04 00 00 00       	mov    ebx,0x4
   540cf:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13177, src obj: 1, src ofs: 0x540d0, dst obj: 3, dst ofs: 0x25b30
   540d4:	8d 56 14             	lea    edx,[esi+0x14]
   540d7:	e8 e8 d6 01 00       	call   write_
   540dc:	bb 01 00 00 00       	mov    ebx,0x1
   540e1:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13176, src obj: 1, src ofs: 0x540e2, dst obj: 3, dst ofs: 0x25b30
   540e6:	8d 96 80 00 00 00    	lea    edx,[esi+0x80]
   540ec:	e8 d3 d6 01 00       	call   write_
   540f1:	bb 01 00 00 00       	mov    ebx,0x1
   540f6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13175, src obj: 1, src ofs: 0x540f7, dst obj: 3, dst ofs: 0x25b30
   540fb:	8d 96 81 00 00 00    	lea    edx,[esi+0x81]
   54101:	e8 be d6 01 00       	call   write_
   54106:	bb 01 00 00 00       	mov    ebx,0x1
   5410b:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13174, src obj: 1, src ofs: 0x5410c, dst obj: 3, dst ofs: 0x25b30
   54110:	8d 96 84 00 00 00    	lea    edx,[esi+0x84]
   54116:	e8 a9 d6 01 00       	call   write_
   5411b:	bb 04 00 00 00       	mov    ebx,0x4
   54120:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13173, src obj: 1, src ofs: 0x54121, dst obj: 3, dst ofs: 0x25b30
   54125:	8d 56 28             	lea    edx,[esi+0x28]
   54128:	e8 97 d6 01 00       	call   write_
   5412d:	bb 04 00 00 00       	mov    ebx,0x4
   54132:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13172, src obj: 1, src ofs: 0x54133, dst obj: 3, dst ofs: 0x25b30
   54137:	89 f2                	mov    edx,esi
   54139:	e8 86 d6 01 00       	call   write_
   5413e:	bb 04 00 00 00       	mov    ebx,0x4
   54143:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13171, src obj: 1, src ofs: 0x54144, dst obj: 3, dst ofs: 0x25b30
   54148:	8d 56 04             	lea    edx,[esi+0x4]
   5414b:	e8 74 d6 01 00       	call   write_
   54150:	bb 04 00 00 00       	mov    ebx,0x4
   54155:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13170, src obj: 1, src ofs: 0x54156, dst obj: 3, dst ofs: 0x25b30
   5415a:	8d 56 08             	lea    edx,[esi+0x8]
   5415d:	e8 62 d6 01 00       	call   write_
   54162:	bb 04 00 00 00       	mov    ebx,0x4
   54167:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13186, src obj: 1, src ofs: 0x54168, dst obj: 3, dst ofs: 0x25b30
   5416c:	8d 56 24             	lea    edx,[esi+0x24]
   5416f:	e8 50 d6 01 00       	call   write_
   54174:	8b b6 90 00 00 00    	mov    esi,DWORD PTR [esi+0x90]
   5417a:	85 f6                	test   esi,esi
   5417c:	0f 85 0b ff ff ff    	jne    save_game2_branch_81
save_game2_branch_82:
   54182:	31 d2                	xor    edx,edx
   54184:	a1 b8 5a 02 00       	mov    eax,ds:@obj3:npc_list                                        ; fixup: num: 13185, src obj: 1, src ofs: 0x54185, dst obj: 3, dst ofs: 0x25ab8
   54189:	89 55 62             	mov    DWORD PTR [ebp+0x62],edx
   5418c:	85 c0                	test   eax,eax
   5418e:	74 0a                	je     save_game2_branch_84
save_game2_branch_83:
   54190:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   54193:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
   54196:	85 c0                	test   eax,eax
   54198:	75 f6                	jne    save_game2_branch_83
save_game2_branch_84:
   5419a:	bb 04 00 00 00       	mov    ebx,0x4
   5419f:	8d 55 62             	lea    edx,[ebp+0x62]
   541a2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13184, src obj: 1, src ofs: 0x541a3, dst obj: 3, dst ofs: 0x25b30
   541a7:	e8 18 d6 01 00       	call   write_
   541ac:	8b 35 b8 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 13183, src obj: 1, src ofs: 0x541ae, dst obj: 3, dst ofs: 0x25ab8
   541b2:	85 f6                	test   esi,esi
   541b4:	0f 84 90 00 00 00    	je     save_game2_branch_86
save_game2_branch_85:
   541ba:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13182, src obj: 1, src ofs: 0x541bb, dst obj: 3, dst ofs: 0x1a1d4
   541bf:	bb 04 00 00 00       	mov    ebx,0x4
   541c4:	e8 d7 77 fb ff       	call   update_mod_9
   541c9:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
   541cc:	8d 55 62             	lea    edx,[ebp+0x62]
   541cf:	29 c9                	sub    ecx,ecx
   541d1:	49                   	dec    ecx
   541d2:	31 c0                	xor    eax,eax
   541d4:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   541d6:	f7 d1                	not    ecx
   541d8:	49                   	dec    ecx
   541d9:	41                   	inc    ecx
   541da:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13181, src obj: 1, src ofs: 0x541db, dst obj: 3, dst ofs: 0x25b30
   541df:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   541e2:	e8 dd d5 01 00       	call   write_
   541e7:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   541ea:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13180, src obj: 1, src ofs: 0x541eb, dst obj: 3, dst ofs: 0x25b30
   541ef:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
   541f2:	e8 cd d5 01 00       	call   write_
   541f7:	bb 01 00 00 00       	mov    ebx,0x1
   541fc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13179, src obj: 1, src ofs: 0x541fd, dst obj: 3, dst ofs: 0x25b30
   54201:	8d 56 25             	lea    edx,[esi+0x25]
   54204:	e8 bb d5 01 00       	call   write_
   54209:	bb 01 00 00 00       	mov    ebx,0x1
   5420e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13194, src obj: 1, src ofs: 0x5420f, dst obj: 3, dst ofs: 0x25b30
   54213:	8d 56 26             	lea    edx,[esi+0x26]
   54216:	e8 a9 d5 01 00       	call   write_
   5421b:	bb 01 00 00 00       	mov    ebx,0x1
   54220:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13193, src obj: 1, src ofs: 0x54221, dst obj: 3, dst ofs: 0x25b30
   54225:	8d 56 24             	lea    edx,[esi+0x24]
   54228:	e8 97 d5 01 00       	call   write_
   5422d:	bb 04 00 00 00       	mov    ebx,0x4
   54232:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13192, src obj: 1, src ofs: 0x54233, dst obj: 3, dst ofs: 0x25b30
   54237:	8d 56 2c             	lea    edx,[esi+0x2c]
   5423a:	e8 85 d5 01 00       	call   write_
   5423f:	8b 76 38             	mov    esi,DWORD PTR [esi+0x38]
   54242:	85 f6                	test   esi,esi
   54244:	0f 85 70 ff ff ff    	jne    save_game2_branch_85
save_game2_branch_86:
   5424a:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13191, src obj: 1, src ofs: 0x5424b, dst obj: 3, dst ofs: 0x1a1d4
   5424f:	e8 4c 77 fb ff       	call   update_mod_9
   54254:	31 c9                	xor    ecx,ecx
   54256:	a1 bc 5a 02 00       	mov    eax,ds:@obj3:object_list                                     ; fixup: num: 13190, src obj: 1, src ofs: 0x54257, dst obj: 3, dst ofs: 0x25abc
   5425b:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   5425e:	85 c0                	test   eax,eax
   54260:	74 11                	je     save_game2_branch_89
   54262:	31 d2                	xor    edx,edx
save_game2_branch_87:
   54264:	3b 50 30             	cmp    edx,DWORD PTR [eax+0x30]
   54267:	74 03                	je     save_game2_branch_88
   54269:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
save_game2_branch_88:
   5426c:	8b 40 54             	mov    eax,DWORD PTR [eax+0x54]
   5426f:	85 c0                	test   eax,eax
   54271:	75 f1                	jne    save_game2_branch_87
save_game2_branch_89:
   54273:	bb 04 00 00 00       	mov    ebx,0x4
   54278:	8d 55 62             	lea    edx,[ebp+0x62]
   5427b:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13189, src obj: 1, src ofs: 0x5427c, dst obj: 3, dst ofs: 0x25b30
   54280:	e8 3f d5 01 00       	call   write_
   54285:	8b 35 bc 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 13188, src obj: 1, src ofs: 0x54287, dst obj: 3, dst ofs: 0x25abc
   5428b:	85 f6                	test   esi,esi
   5428d:	0f 84 df 00 00 00    	je     save_game2_branch_92
save_game2_branch_90:
   54293:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
   54297:	0f 84 ca 00 00 00    	je     save_game2_branch_91
   5429d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13187, src obj: 1, src ofs: 0x5429e, dst obj: 3, dst ofs: 0x1a1d4
   542a2:	bb 04 00 00 00       	mov    ebx,0x4
   542a7:	e8 f4 76 fb ff       	call   update_mod_9
   542ac:	8b 7e 30             	mov    edi,DWORD PTR [esi+0x30]
   542af:	8d 55 62             	lea    edx,[ebp+0x62]
   542b2:	29 c9                	sub    ecx,ecx
   542b4:	49                   	dec    ecx
   542b5:	31 c0                	xor    eax,eax
   542b7:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   542b9:	f7 d1                	not    ecx
   542bb:	49                   	dec    ecx
   542bc:	41                   	inc    ecx
   542bd:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13203, src obj: 1, src ofs: 0x542be, dst obj: 3, dst ofs: 0x25b30
   542c2:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   542c5:	e8 fa d4 01 00       	call   write_
   542ca:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   542cd:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13202, src obj: 1, src ofs: 0x542ce, dst obj: 3, dst ofs: 0x25b30
   542d2:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
   542d5:	e8 ea d4 01 00       	call   write_
   542da:	bb 04 00 00 00       	mov    ebx,0x4
   542df:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13201, src obj: 1, src ofs: 0x542e0, dst obj: 3, dst ofs: 0x25b30
   542e4:	8d 56 0c             	lea    edx,[esi+0xc]
   542e7:	e8 d8 d4 01 00       	call   write_
   542ec:	bb 04 00 00 00       	mov    ebx,0x4
   542f1:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13200, src obj: 1, src ofs: 0x542f2, dst obj: 3, dst ofs: 0x25b30
   542f6:	8d 56 10             	lea    edx,[esi+0x10]
   542f9:	e8 c6 d4 01 00       	call   write_
   542fe:	bb 04 00 00 00       	mov    ebx,0x4
   54303:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13199, src obj: 1, src ofs: 0x54304, dst obj: 3, dst ofs: 0x25b30
   54308:	8d 56 14             	lea    edx,[esi+0x14]
   5430b:	e8 b4 d4 01 00       	call   write_
   54310:	bb 04 00 00 00       	mov    ebx,0x4
   54315:	8b 7e 3c             	mov    edi,DWORD PTR [esi+0x3c]
   54318:	8d 55 62             	lea    edx,[ebp+0x62]
   5431b:	29 c9                	sub    ecx,ecx
   5431d:	49                   	dec    ecx
   5431e:	31 c0                	xor    eax,eax
   54320:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54322:	f7 d1                	not    ecx
   54324:	49                   	dec    ecx
   54325:	41                   	inc    ecx
   54326:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13198, src obj: 1, src ofs: 0x54327, dst obj: 3, dst ofs: 0x25b30
   5432b:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   5432e:	e8 91 d4 01 00       	call   write_
   54333:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   54336:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13197, src obj: 1, src ofs: 0x54337, dst obj: 3, dst ofs: 0x25b30
   5433b:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
   5433e:	e8 81 d4 01 00       	call   write_
   54343:	bb 01 00 00 00       	mov    ebx,0x1
   54348:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13196, src obj: 1, src ofs: 0x54349, dst obj: 3, dst ofs: 0x25b30
   5434d:	8d 56 4d             	lea    edx,[esi+0x4d]
   54350:	e8 6f d4 01 00       	call   write_
   54355:	bb 01 00 00 00       	mov    ebx,0x1
   5435a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13195, src obj: 1, src ofs: 0x5435b, dst obj: 3, dst ofs: 0x25b30
   5435f:	8d 56 4f             	lea    edx,[esi+0x4f]
   54362:	e8 5d d4 01 00       	call   write_
save_game2_branch_91:
   54367:	8b 76 54             	mov    esi,DWORD PTR [esi+0x54]
   5436a:	85 f6                	test   esi,esi
   5436c:	0f 85 21 ff ff ff    	jne    save_game2_branch_90
save_game2_branch_92:
   54372:	31 d2                	xor    edx,edx
   54374:	a1 c0 5a 02 00       	mov    eax,ds:@obj3:region_list                                     ; fixup: num: 13211, src obj: 1, src ofs: 0x54375, dst obj: 3, dst ofs: 0x25ac0
   54379:	89 55 62             	mov    DWORD PTR [ebp+0x62],edx
   5437c:	85 c0                	test   eax,eax
   5437e:	74 0a                	je     save_game2_branch_94
save_game2_branch_93:
   54380:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   54383:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   54386:	85 c0                	test   eax,eax
   54388:	75 f6                	jne    save_game2_branch_93
save_game2_branch_94:
   5438a:	bb 04 00 00 00       	mov    ebx,0x4
   5438f:	8d 55 62             	lea    edx,[ebp+0x62]
   54392:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13210, src obj: 1, src ofs: 0x54393, dst obj: 3, dst ofs: 0x25b30
   54397:	e8 28 d4 01 00       	call   write_
   5439c:	8b 35 c0 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 13209, src obj: 1, src ofs: 0x5439e, dst obj: 3, dst ofs: 0x25ac0
   543a2:	85 f6                	test   esi,esi
   543a4:	74 56                	je     save_game2_branch_96
save_game2_branch_95:
   543a6:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13208, src obj: 1, src ofs: 0x543a7, dst obj: 3, dst ofs: 0x1a1d4
   543ab:	bb 04 00 00 00       	mov    ebx,0x4
   543b0:	e8 eb 75 fb ff       	call   update_mod_9
   543b5:	8b 7e 1c             	mov    edi,DWORD PTR [esi+0x1c]
   543b8:	8d 55 62             	lea    edx,[ebp+0x62]
   543bb:	29 c9                	sub    ecx,ecx
   543bd:	49                   	dec    ecx
   543be:	31 c0                	xor    eax,eax
   543c0:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   543c2:	f7 d1                	not    ecx
   543c4:	49                   	dec    ecx
   543c5:	41                   	inc    ecx
   543c6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13207, src obj: 1, src ofs: 0x543c7, dst obj: 3, dst ofs: 0x25b30
   543cb:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   543ce:	e8 f1 d3 01 00       	call   write_
   543d3:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   543d6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13206, src obj: 1, src ofs: 0x543d7, dst obj: 3, dst ofs: 0x25b30
   543db:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
   543de:	e8 e1 d3 01 00       	call   write_
   543e3:	bb 01 00 00 00       	mov    ebx,0x1
   543e8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13205, src obj: 1, src ofs: 0x543e9, dst obj: 3, dst ofs: 0x25b30
   543ed:	8d 56 28             	lea    edx,[esi+0x28]
   543f0:	e8 cf d3 01 00       	call   write_
   543f5:	8b 76 2c             	mov    esi,DWORD PTR [esi+0x2c]
   543f8:	85 f6                	test   esi,esi
   543fa:	75 aa                	jne    save_game2_branch_95
save_game2_branch_96:
   543fc:	31 c9                	xor    ecx,ecx
   543fe:	a1 d0 5a 02 00       	mov    eax,ds:@obj3:timer_list                                      ; fixup: num: 13204, src obj: 1, src ofs: 0x543ff, dst obj: 3, dst ofs: 0x25ad0
   54403:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   54406:	85 c0                	test   eax,eax
   54408:	74 0a                	je     save_game2_branch_98
save_game2_branch_97:
   5440a:	ff 45 62             	inc    DWORD PTR [ebp+0x62]
   5440d:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
   54410:	85 c0                	test   eax,eax
   54412:	75 f6                	jne    save_game2_branch_97
save_game2_branch_98:
   54414:	8b 7d 62             	mov    edi,DWORD PTR [ebp+0x62]
   54417:	57                   	push   edi
   54418:	68 1f cc 00 00       	push   @obj3:loadsave_cpp_variable_18                               ; fixup: num: 13109, src obj: 1, src ofs: 0x54419, dst obj: 3, dst ofs: 0xcc1f
   5441d:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13108, src obj: 1, src ofs: 0x5441e, dst obj: 3, dst ofs: 0x237fc
   54422:	bb 04 00 00 00       	mov    ebx,0x4
   54427:	e8 b5 c7 01 00       	call   sprintf_
   5442c:	83 c4 0c             	add    esp,0xc
   5442f:	8d 55 62             	lea    edx,[ebp+0x62]
   54432:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13107, src obj: 1, src ofs: 0x54433, dst obj: 3, dst ofs: 0x25b30
   54437:	e8 88 d3 01 00       	call   write_
   5443c:	8b 35 d0 5a 02 00    	mov    esi,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 13106, src obj: 1, src ofs: 0x5443e, dst obj: 3, dst ofs: 0x25ad0
   54442:	85 f6                	test   esi,esi
   54444:	74 68                	je     save_game2_branch_100
save_game2_branch_99:
   54446:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13105, src obj: 1, src ofs: 0x54447, dst obj: 3, dst ofs: 0x1a1d4
   5444b:	bb 04 00 00 00       	mov    ebx,0x4
   54450:	e8 4b 75 fb ff       	call   update_mod_9
   54455:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
   54458:	8d 55 62             	lea    edx,[ebp+0x62]
   5445b:	29 c9                	sub    ecx,ecx
   5445d:	49                   	dec    ecx
   5445e:	31 c0                	xor    eax,eax
   54460:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54462:	f7 d1                	not    ecx
   54464:	49                   	dec    ecx
   54465:	41                   	inc    ecx
   54466:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13104, src obj: 1, src ofs: 0x54467, dst obj: 3, dst ofs: 0x25b30
   5446b:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   5446e:	e8 51 d3 01 00       	call   write_
   54473:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   54476:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13103, src obj: 1, src ofs: 0x54477, dst obj: 3, dst ofs: 0x25b30
   5447b:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
   5447e:	e8 41 d3 01 00       	call   write_
   54483:	bb 01 00 00 00       	mov    ebx,0x1
   54488:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13216, src obj: 1, src ofs: 0x54489, dst obj: 3, dst ofs: 0x25b30
   5448d:	8d 56 14             	lea    edx,[esi+0x14]
   54490:	e8 2f d3 01 00       	call   write_
   54495:	bb 04 00 00 00       	mov    ebx,0x4
   5449a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13215, src obj: 1, src ofs: 0x5449b, dst obj: 3, dst ofs: 0x25b30
   5449f:	8d 56 04             	lea    edx,[esi+0x4]
   544a2:	e8 1d d3 01 00       	call   write_
   544a7:	8b 76 18             	mov    esi,DWORD PTR [esi+0x18]
   544aa:	85 f6                	test   esi,esi
   544ac:	75 98                	jne    save_game2_branch_99
save_game2_branch_100:
   544ae:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13214, src obj: 1, src ofs: 0x544af, dst obj: 3, dst ofs: 0x1a1d4
   544b3:	bb 28 00 00 00       	mov    ebx,0x28
   544b8:	ba 4c 2d 02 00       	mov    edx,@obj3:SERGEANT_AT_ARMS                                   ; fixup: num: 13213, src obj: 1, src ofs: 0x544b9, dst obj: 3, dst ofs: 0x22d4c
   544bd:	e8 de 74 fb ff       	call   update_mod_9
   544c2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13212, src obj: 1, src ofs: 0x544c3, dst obj: 3, dst ofs: 0x25b30
   544c7:	e8 f8 d2 01 00       	call   write_
   544cc:	bb 18 00 00 00       	mov    ebx,0x18
   544d1:	ba b8 2c 02 00       	mov    edx,@obj3:POSTMASTER_BOYLE                                   ; fixup: num: 13118, src obj: 1, src ofs: 0x544d2, dst obj: 3, dst ofs: 0x22cb8
   544d6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13117, src obj: 1, src ofs: 0x544d7, dst obj: 3, dst ofs: 0x25b30
   544db:	e8 e4 d2 01 00       	call   write_
   544e0:	bb 68 00 00 00       	mov    ebx,0x68
   544e5:	ba 88 2f 02 00       	mov    edx,@obj3:SHERIFF_DWAYNE                                     ; fixup: num: 13116, src obj: 1, src ofs: 0x544e6, dst obj: 3, dst ofs: 0x22f88
   544ea:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13115, src obj: 1, src ofs: 0x544eb, dst obj: 3, dst ofs: 0x25b30
   544ef:	e8 d0 d2 01 00       	call   write_
   544f4:	bb 10 00 00 00       	mov    ebx,0x10
   544f9:	ba 14 2e 02 00       	mov    edx,@obj3:DEPUTY_LOOMIS                                      ; fixup: num: 13114, src obj: 1, src ofs: 0x544fa, dst obj: 3, dst ofs: 0x22e14
   544fe:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13113, src obj: 1, src ofs: 0x544ff, dst obj: 3, dst ofs: 0x25b30
   54503:	e8 bc d2 01 00       	call   write_
   54508:	bb 58 00 00 00       	mov    ebx,0x58
   5450d:	ba 74 2d 02 00       	mov    edx,@obj3:MOM                                                ; fixup: num: 13112, src obj: 1, src ofs: 0x5450e, dst obj: 3, dst ofs: 0x22d74
   54512:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13111, src obj: 1, src ofs: 0x54513, dst obj: 3, dst ofs: 0x25b30
   54517:	e8 a8 d2 01 00       	call   write_
   5451c:	bb 2c 00 00 00       	mov    ebx,0x2c
   54521:	ba e8 2d 02 00       	mov    edx,@obj3:HANK                                               ; fixup: num: 13110, src obj: 1, src ofs: 0x54522, dst obj: 3, dst ofs: 0x22de8
   54526:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13129, src obj: 1, src ofs: 0x54527, dst obj: 3, dst ofs: 0x25b30
   5452b:	e8 94 d2 01 00       	call   write_
   54530:	bb 04 00 00 00       	mov    ebx,0x4
   54535:	ba 94 2c 02 00       	mov    edx,@obj3:DAD                                                ; fixup: num: 13128, src obj: 1, src ofs: 0x54536, dst obj: 3, dst ofs: 0x22c94
   5453a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13127, src obj: 1, src ofs: 0x5453b, dst obj: 3, dst ofs: 0x25b30
   5453f:	e8 80 d2 01 00       	call   write_
   54544:	bb 4c 00 00 00       	mov    ebx,0x4c
   54549:	ba f4 2a 02 00       	mov    edx,@obj3:MR_POTTSDAM                                        ; fixup: num: 13126, src obj: 1, src ofs: 0x5454a, dst obj: 3, dst ofs: 0x22af4
   5454e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13125, src obj: 1, src ofs: 0x5454f, dst obj: 3, dst ofs: 0x25b30
   54553:	e8 6c d2 01 00       	call   write_
   54558:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13124, src obj: 1, src ofs: 0x54559, dst obj: 3, dst ofs: 0x1a1d4
   5455d:	bb 24 00 00 00       	mov    ebx,0x24
   54562:	ba 24 2d 02 00       	mov    edx,@obj3:MRS_POTTSDAM                                       ; fixup: num: 13123, src obj: 1, src ofs: 0x54563, dst obj: 3, dst ofs: 0x22d24
   54567:	e8 34 74 fb ff       	call   update_mod_9
   5456c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13122, src obj: 1, src ofs: 0x5456d, dst obj: 3, dst ofs: 0x25b30
   54571:	e8 4e d2 01 00       	call   write_
   54576:	bb 4c 00 00 00       	mov    ebx,0x4c
   5457b:	ba 4c 2e 02 00       	mov    edx,@obj3:STEPHANIE                                          ; fixup: num: 13121, src obj: 1, src ofs: 0x5457c, dst obj: 3, dst ofs: 0x22e4c
   54580:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13120, src obj: 1, src ofs: 0x54581, dst obj: 3, dst ofs: 0x25b30
   54585:	e8 3a d2 01 00       	call   write_
   5458a:	bb 30 00 00 00       	mov    ebx,0x30
   5458f:	ba f4 2b 02 00       	mov    edx,@obj3:MR_JOHNSON                                         ; fixup: num: 13119, src obj: 1, src ofs: 0x54590, dst obj: 3, dst ofs: 0x22bf4
   54594:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13137, src obj: 1, src ofs: 0x54595, dst obj: 3, dst ofs: 0x25b30
   54599:	e8 26 d2 01 00       	call   write_
   5459e:	bb 3c 00 00 00       	mov    ebx,0x3c
   545a3:	ba b8 2a 02 00       	mov    edx,@obj3:MR_MOYNAHAN                                        ; fixup: num: 13136, src obj: 1, src ofs: 0x545a4, dst obj: 3, dst ofs: 0x22ab8
   545a8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13135, src obj: 1, src ofs: 0x545a9, dst obj: 3, dst ofs: 0x25b30
   545ad:	e8 12 d2 01 00       	call   write_
   545b2:	bb 18 00 00 00       	mov    ebx,0x18
   545b7:	ba 30 2c 02 00       	mov    edx,@obj3:MR_PETE_SWELL                                      ; fixup: num: 13134, src obj: 1, src ofs: 0x545b8, dst obj: 3, dst ofs: 0x22c30
   545bc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13133, src obj: 1, src ofs: 0x545bd, dst obj: 3, dst ofs: 0x25b30
   545c1:	e8 fe d1 01 00       	call   write_
   545c6:	bb 1c 00 00 00       	mov    ebx,0x1c
   545cb:	ba 68 2f 02 00       	mov    edx,@obj3:MR_CLEM_PARSONS                                    ; fixup: num: 13132, src obj: 1, src ofs: 0x545cc, dst obj: 3, dst ofs: 0x22f68
   545d0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13131, src obj: 1, src ofs: 0x545d1, dst obj: 3, dst ofs: 0x25b30
   545d5:	e8 ea d1 01 00       	call   write_
   545da:	bb 0c 00 00 00       	mov    ebx,0xc
   545df:	ba ac 2c 02 00       	mov    edx,@obj3:MR_MCKNIGHT                                        ; fixup: num: 13130, src obj: 1, src ofs: 0x545e0, dst obj: 3, dst ofs: 0x22cac
   545e4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13146, src obj: 1, src ofs: 0x545e5, dst obj: 3, dst ofs: 0x25b30
   545e9:	e8 d6 d1 01 00       	call   write_
   545ee:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13145, src obj: 1, src ofs: 0x545ef, dst obj: 3, dst ofs: 0x1a1d4
   545f3:	bb 0c 00 00 00       	mov    ebx,0xc
   545f8:	ba 24 2c 02 00       	mov    edx,@obj3:JIMMY_JAMES                                        ; fixup: num: 13144, src obj: 1, src ofs: 0x545f9, dst obj: 3, dst ofs: 0x22c24
   545fd:	e8 9e 73 fb ff       	call   update_mod_9
   54602:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13143, src obj: 1, src ofs: 0x54603, dst obj: 3, dst ofs: 0x25b30
   54607:	e8 b8 d1 01 00       	call   write_
   5460c:	bb 28 00 00 00       	mov    ebx,0x28
   54611:	ba 24 2e 02 00       	mov    edx,@obj3:EDNA_FITZPATRICK                                   ; fixup: num: 13142, src obj: 1, src ofs: 0x54612, dst obj: 3, dst ofs: 0x22e24
   54616:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13141, src obj: 1, src ofs: 0x54617, dst obj: 3, dst ofs: 0x25b30
   5461b:	e8 a4 d1 01 00       	call   write_
   54620:	bb 1c 00 00 00       	mov    ebx,0x1c
   54625:	ba 9c 2a 02 00       	mov    edx,@obj3:MISS_WHALEY                                        ; fixup: num: 13140, src obj: 1, src ofs: 0x54626, dst obj: 3, dst ofs: 0x22a9c
   5462a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13139, src obj: 1, src ofs: 0x5462b, dst obj: 3, dst ofs: 0x25b30
   5462f:	e8 90 d1 01 00       	call   write_
   54634:	bb 3c 00 00 00       	mov    ebx,0x3c
   54639:	ba 48 2c 02 00       	mov    edx,@obj3:MRS_PHELPS                                         ; fixup: num: 13138, src obj: 1, src ofs: 0x5463a, dst obj: 3, dst ofs: 0x22c48
   5463e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13154, src obj: 1, src ofs: 0x5463f, dst obj: 3, dst ofs: 0x25b30
   54643:	e8 7c d1 01 00       	call   write_
   54648:	bb 38 00 00 00       	mov    ebx,0x38
   5464d:	ba dc 2c 02 00       	mov    edx,@obj3:PRINCIPAL_HERRILL                                  ; fixup: num: 13153, src obj: 1, src ofs: 0x5464e, dst obj: 3, dst ofs: 0x22cdc
   54652:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13152, src obj: 1, src ofs: 0x54653, dst obj: 3, dst ofs: 0x25b30
   54657:	e8 68 d1 01 00       	call   write_
   5465c:	bb 04 00 00 00       	mov    ebx,0x4
   54661:	ba 48 2d 02 00       	mov    edx,@obj3:THE_WASP_WOMAN                                     ; fixup: num: 13151, src obj: 1, src ofs: 0x54662, dst obj: 3, dst ofs: 0x22d48
   54666:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13150, src obj: 1, src ofs: 0x54667, dst obj: 3, dst ofs: 0x25b30
   5466b:	e8 54 d1 01 00       	call   write_
   54670:	bb 20 00 00 00       	mov    ebx,0x20
   54675:	ba 40 2f 02 00       	mov    edx,@obj3:FIREMAN_SPARKY                                     ; fixup: num: 13149, src obj: 1, src ofs: 0x54676, dst obj: 3, dst ofs: 0x22f40
   5467a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13148, src obj: 1, src ofs: 0x5467b, dst obj: 3, dst ofs: 0x25b30
   5467f:	e8 40 d1 01 00       	call   write_
   54684:	bb 0c 00 00 00       	mov    ebx,0xc
   54689:	ba d0 2d 02 00       	mov    edx,@obj3:FIRST_FIREMAN                                      ; fixup: num: 13147, src obj: 1, src ofs: 0x5468a, dst obj: 3, dst ofs: 0x22dd0
   5468e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13052, src obj: 1, src ofs: 0x5468f, dst obj: 3, dst ofs: 0x25b30
   54693:	e8 2c d1 01 00       	call   write_
   54698:	bb 0c 00 00 00       	mov    ebx,0xc
   5469d:	ba dc 2d 02 00       	mov    edx,@obj3:SECOND_FIREMAN                                     ; fixup: num: 13051, src obj: 1, src ofs: 0x5469e, dst obj: 3, dst ofs: 0x22ddc
   546a2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13050, src obj: 1, src ofs: 0x546a3, dst obj: 3, dst ofs: 0x25b30
   546a7:	e8 18 d1 01 00       	call   write_
   546ac:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13049, src obj: 1, src ofs: 0x546ad, dst obj: 3, dst ofs: 0x1a1d4
   546b1:	bb 0c 00 00 00       	mov    ebx,0xc
   546b6:	ba 14 2d 02 00       	mov    edx,@obj3:KARIN                                              ; fixup: num: 13048, src obj: 1, src ofs: 0x546b7, dst obj: 3, dst ofs: 0x22d14
   546bb:	e8 e0 72 fb ff       	call   update_mod_9
   546c0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13047, src obj: 1, src ofs: 0x546c1, dst obj: 3, dst ofs: 0x25b30
   546c5:	e8 fa d0 01 00       	call   write_
   546ca:	bb 08 00 00 00       	mov    ebx,0x8
   546cf:	ba d0 2c 02 00       	mov    edx,@obj3:NUDE_MAN                                           ; fixup: num: 13159, src obj: 1, src ofs: 0x546d0, dst obj: 3, dst ofs: 0x22cd0
   546d4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13158, src obj: 1, src ofs: 0x546d5, dst obj: 3, dst ofs: 0x25b30
   546d9:	e8 e6 d0 01 00       	call   write_
   546de:	bb 0c 00 00 00       	mov    ebx,0xc
   546e3:	ba 84 2c 02 00       	mov    edx,@obj3:PAT_O_REILLY_BUTCHE                                ; fixup: num: 13157, src obj: 1, src ofs: 0x546e4, dst obj: 3, dst ofs: 0x22c84
   546e8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13156, src obj: 1, src ofs: 0x546e9, dst obj: 3, dst ofs: 0x25b30
   546ed:	e8 d2 d0 01 00       	call   write_
   546f2:	bb 0c 00 00 00       	mov    ebx,0xc
   546f7:	ba 34 2f 02 00       	mov    edx,@obj3:RANGE_RYDER                                        ; fixup: num: 13155, src obj: 1, src ofs: 0x546f8, dst obj: 3, dst ofs: 0x22f34
   546fc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13061, src obj: 1, src ofs: 0x546fd, dst obj: 3, dst ofs: 0x25b30
   54701:	e8 be d0 01 00       	call   write_
   54706:	bb 10 00 00 00       	mov    ebx,0x10
   5470b:	ba 9c 2c 02 00       	mov    edx,@obj3:COLONEL_BUSTER_MONRO                               ; fixup: num: 13060, src obj: 1, src ofs: 0x5470c, dst obj: 3, dst ofs: 0x22c9c
   54710:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13059, src obj: 1, src ofs: 0x54711, dst obj: 3, dst ofs: 0x25b30
   54715:	e8 aa d0 01 00       	call   write_
   5471a:	bb 04 00 00 00       	mov    ebx,0x4
   5471f:	ba cc 2d 02 00       	mov    edx,@obj3:DARK_WOMAN                                         ; fixup: num: 13058, src obj: 1, src ofs: 0x54720, dst obj: 3, dst ofs: 0x22dcc
   54724:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13057, src obj: 1, src ofs: 0x54725, dst obj: 3, dst ofs: 0x25b30
   54729:	e8 96 d0 01 00       	call   write_
   5472e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13056, src obj: 1, src ofs: 0x5472f, dst obj: 3, dst ofs: 0x1a1d4
   54733:	bb 08 00 00 00       	mov    ebx,0x8
   54738:	ba 60 2f 02 00       	mov    edx,@obj3:MEMBERSHIP_DIRECTOR                                ; fixup: num: 13055, src obj: 1, src ofs: 0x54739, dst obj: 3, dst ofs: 0x22f60
   5473d:	e8 5e 72 fb ff       	call   update_mod_9
   54742:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13054, src obj: 1, src ofs: 0x54743, dst obj: 3, dst ofs: 0x25b30
   54747:	e8 78 d0 01 00       	call   write_
   5474c:	bb 04 00 00 00       	mov    ebx,0x4
   54751:	ba 98 2c 02 00       	mov    edx,@obj3:MOTHER                                             ; fixup: num: 13053, src obj: 1, src ofs: 0x54752, dst obj: 3, dst ofs: 0x22c98
   54756:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13074, src obj: 1, src ofs: 0x54757, dst obj: 3, dst ofs: 0x25b30
   5475b:	e8 64 d0 01 00       	call   write_
   54760:	bb 04 00 00 00       	mov    ebx,0x4
   54765:	ba 20 2d 02 00       	mov    edx,@obj3:VALET                                              ; fixup: num: 13073, src obj: 1, src ofs: 0x54766, dst obj: 3, dst ofs: 0x22d20
   5476a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13072, src obj: 1, src ofs: 0x5476b, dst obj: 3, dst ofs: 0x25b30
   5476f:	e8 50 d0 01 00       	call   write_
   54774:	bb 04 00 00 00       	mov    ebx,0x4
   54779:	ba d8 2c 02 00       	mov    edx,@obj3:CLOAK_ATTENDANT                                    ; fixup: num: 13071, src obj: 1, src ofs: 0x5477a, dst obj: 3, dst ofs: 0x22cd8
   5477e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13070, src obj: 1, src ofs: 0x5477f, dst obj: 3, dst ofs: 0x25b30
   54783:	e8 3c d0 01 00       	call   write_
   54788:	bb 04 00 00 00       	mov    ebx,0x4
   5478d:	ba 90 2c 02 00       	mov    edx,@obj3:INQUISITOR                                         ; fixup: num: 13069, src obj: 1, src ofs: 0x5478e, dst obj: 3, dst ofs: 0x22c90
   54792:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13068, src obj: 1, src ofs: 0x54793, dst obj: 3, dst ofs: 0x25b30
   54797:	e8 28 d0 01 00       	call   write_
   5479c:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13067, src obj: 1, src ofs: 0x5479d, dst obj: 3, dst ofs: 0x1a1d4
   547a1:	bb 9c 00 00 00       	mov    ebx,0x9c
   547a6:	ba 98 2e 02 00       	mov    edx,@obj3:GLOBAL                                             ; fixup: num: 13066, src obj: 1, src ofs: 0x547a7, dst obj: 3, dst ofs: 0x22e98
   547ab:	e8 f0 71 fb ff       	call   update_mod_9
   547b0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13065, src obj: 1, src ofs: 0x547b1, dst obj: 3, dst ofs: 0x25b30
   547b5:	e8 0a d0 01 00       	call   write_
   547ba:	bb 04 00 00 00       	mov    ebx,0x4
   547bf:	ba 6c 5b 02 00       	mov    edx,@obj3:shotgun_shells                                     ; fixup: num: 13064, src obj: 1, src ofs: 0x547c0, dst obj: 3, dst ofs: 0x25b6c
   547c4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13063, src obj: 1, src ofs: 0x547c5, dst obj: 3, dst ofs: 0x25b30
   547c9:	e8 f6 cf 01 00       	call   write_
   547ce:	bb 04 00 00 00       	mov    ebx,0x4
   547d3:	ba 64 5b 02 00       	mov    edx,@obj3:bullets                                            ; fixup: num: 13062, src obj: 1, src ofs: 0x547d4, dst obj: 3, dst ofs: 0x25b64
   547d8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13087, src obj: 1, src ofs: 0x547d9, dst obj: 3, dst ofs: 0x25b30
   547dd:	e8 e2 cf 01 00       	call   write_
   547e2:	bb 04 00 00 00       	mov    ebx,0x4
   547e7:	ba 68 5b 02 00       	mov    edx,@obj3:mmbullets                                          ; fixup: num: 13086, src obj: 1, src ofs: 0x547e8, dst obj: 3, dst ofs: 0x25b68
   547ec:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13085, src obj: 1, src ofs: 0x547ed, dst obj: 3, dst ofs: 0x25b30
   547f1:	e8 ce cf 01 00       	call   write_
   547f6:	bb 04 00 00 00       	mov    ebx,0x4
   547fb:	ba 5c 5b 02 00       	mov    edx,@obj3:nails                                              ; fixup: num: 13084, src obj: 1, src ofs: 0x547fc, dst obj: 3, dst ofs: 0x25b5c
   54800:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13083, src obj: 1, src ofs: 0x54801, dst obj: 3, dst ofs: 0x25b30
   54805:	e8 ba cf 01 00       	call   write_
   5480a:	bb 04 00 00 00       	mov    ebx,0x4
   5480f:	ba 60 5b 02 00       	mov    edx,@obj3:gascans                                            ; fixup: num: 13082, src obj: 1, src ofs: 0x54810, dst obj: 3, dst ofs: 0x25b60
   54814:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13081, src obj: 1, src ofs: 0x54815, dst obj: 3, dst ofs: 0x25b30
   54819:	e8 a6 cf 01 00       	call   write_
   5481e:	a1 80 60 02 00       	mov    eax,ds:@obj3:current_music_file                              ; fixup: num: 13080, src obj: 1, src ofs: 0x5481f, dst obj: 3, dst ofs: 0x26080
   54823:	85 c0                	test   eax,eax
   54825:	74 2d                	je     save_game2_branch_101
   54827:	bb 04 00 00 00       	mov    ebx,0x4
   5482c:	89 c7                	mov    edi,eax
   5482e:	8d 55 62             	lea    edx,[ebp+0x62]
   54831:	29 c9                	sub    ecx,ecx
   54833:	49                   	dec    ecx
   54834:	31 c0                	xor    eax,eax
   54836:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54838:	f7 d1                	not    ecx
   5483a:	49                   	dec    ecx
   5483b:	41                   	inc    ecx
   5483c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13079, src obj: 1, src ofs: 0x5483d, dst obj: 3, dst ofs: 0x25b30
   54841:	89 4d 62             	mov    DWORD PTR [ebp+0x62],ecx
   54844:	e8 7b cf 01 00       	call   write_
   54849:	8b 5d 62             	mov    ebx,DWORD PTR [ebp+0x62]
   5484c:	8b 15 80 60 02 00    	mov    edx,DWORD PTR ds:@obj3:current_music_file                    ; fixup: num: 13078, src obj: 1, src ofs: 0x5484e, dst obj: 3, dst ofs: 0x26080
   54852:	eb 0b                	jmp    save_game2_branch_102
save_game2_branch_101:
   54854:	bb 04 00 00 00       	mov    ebx,0x4
   54859:	8d 55 62             	lea    edx,[ebp+0x62]
   5485c:	89 45 62             	mov    DWORD PTR [ebp+0x62],eax
save_game2_branch_102:
   5485f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13077, src obj: 1, src ofs: 0x54860, dst obj: 3, dst ofs: 0x25b30
   54864:	e8 5b cf 01 00       	call   write_
   54869:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13076, src obj: 1, src ofs: 0x5486a, dst obj: 3, dst ofs: 0x1a1d4
   5486e:	e8 2d 71 fb ff       	call   update_mod_9
   54873:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13075, src obj: 1, src ofs: 0x54874, dst obj: 3, dst ofs: 0x25b30
   54878:	b5 01                	mov    ch,0x1
   5487a:	e8 91 d6 01 00       	call   close_
   5487f:	88 6d 7a             	mov    BYTE PTR [ebp+0x7a],ch
   54882:	eb 0c                	jmp    save_game2_branch_104
save_game2_branch_103:
   54884:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12992, src obj: 1, src ofs: 0x54887, dst obj: 3, dst ofs: 0x25908
   5488b:	83 f8 39             	cmp    eax,0x39
   5488e:	75 f4                	jne    save_game2_branch_103
save_game2_branch_104:
   54890:	6a 00                	push   0x0
   54892:	6a 00                	push   0x0
   54894:	8b 1d b8 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12991, src obj: 1, src ofs: 0x54896, dst obj: 3, dst ofs: 0x10fb8
   5489a:	53                   	push   ebx
   5489b:	8b 0d b4 0f 01 00    	mov    ecx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12990, src obj: 1, src ofs: 0x5489d, dst obj: 3, dst ofs: 0x10fb4
   548a1:	51                   	push   ecx
   548a2:	8d 85 66 fa ff ff    	lea    eax,[ebp-0x59a]
   548a8:	e8 83 f1 fb ff       	call   fade
   548ad:	e8 50 d8 01 00       	call   clock_
   548b2:	a3 80 59 02 00       	mov    ds:@obj3:last_mouse_click_time,eax                           ; fixup: num: 12989, src obj: 1, src ofs: 0x548b3, dst obj: 3, dst ofs: 0x25980
   548b7:	8a 45 7a             	mov    al,BYTE PTR [ebp+0x7a]
save_game2_branch_105:
   548ba:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   548c0:	5d                   	pop    ebp
   548c1:	5f                   	pop    edi
   548c2:	5e                   	pop    esi
   548c3:	5a                   	pop    edx
   548c4:	59                   	pop    ecx
   548c5:	5b                   	pop    ebx
   548c6:	c3                   	ret    
   548c7:	90                   	nop
save_game2_reference_1:                                                                             ; access size: DWORDS
   548c8:	8e 54 05 00          	mov    ss,WORD PTR [ebp+eax*1+0x0]                                  ; fixup: num: 12988, src obj: 1, src ofs: 0x548c8, dst obj: 1, dst ofs: 0x5548e
   548cc:	80 54 05 00 72       	adc    BYTE PTR [ebp+eax*1+0x0],0x72                                ; fixup: num: 13102, src obj: 1, src ofs: 0x548cc, dst obj: 1, dst ofs: 0x55480; fixup: num: 13101, src obj: 1, src ofs: 0x548d0, dst obj: 1, dst ofs: 0x55472
   548d1:	54                   	push   esp
   548d2:	05 00 9c 54 05       	add    eax,@obj1:load_game2_reference_400                           ; fixup: num: 13100, src obj: 1, src ofs: 0x548d4, dst obj: 1, dst ofs: 0x5549c
   548d7:	00 8e 54 05 00 a8    	add    BYTE PTR [esi-0x57fffaac],cl                                 ; fixup: num: 13099, src obj: 1, src ofs: 0x548d8, dst obj: 1, dst ofs: 0x5548e; fixup: num: 13098, src obj: 1, src ofs: 0x548dc, dst obj: 1, dst ofs: 0x554a8
   548dd:	54                   	push   esp
   548de:	05 00 a8 54 05       	add    eax,@obj1:load_game2_reference_500                           ; fixup: num: 13097, src obj: 1, src ofs: 0x548e0, dst obj: 1, dst ofs: 0x554a8
   548e3:	00 80 54 05 00 a8    	add    BYTE PTR [eax-0x57fffaac],al                                 ; fixup: num: 13096, src obj: 1, src ofs: 0x548e4, dst obj: 1, dst ofs: 0x55480; fixup: num: 13095, src obj: 1, src ofs: 0x548e8, dst obj: 1, dst ofs: 0x554a8
   548e9:	54                   	push   esp
   548ea:	05 00 a8 54 05       	add    eax,@obj1:load_game2_reference_500                           ; fixup: num: 13094, src obj: 1, src ofs: 0x548ec, dst obj: 1, dst ofs: 0x554a8
   548ef:	00 a8 54 05 00 9c    	add    BYTE PTR [eax-0x63fffaac],ch                                 ; fixup: num: 13093, src obj: 1, src ofs: 0x548f0, dst obj: 1, dst ofs: 0x554a8; fixup: num: 13092, src obj: 1, src ofs: 0x548f4, dst obj: 1, dst ofs: 0x5549c
   548f5:	54                   	push   esp
   548f6:	05 00 a8 54 05       	add    eax,@obj1:load_game2_reference_500                           ; fixup: num: 13091, src obj: 1, src ofs: 0x548f8, dst obj: 1, dst ofs: 0x554a8
   548fb:	00 a8 54 05 00 72    	add    BYTE PTR [eax+0x72000554],ch                                 ; fixup: num: 13090, src obj: 1, src ofs: 0x548fc, dst obj: 1, dst ofs: 0x554a8; fixup: num: 13089, src obj: 1, src ofs: 0x54900, dst obj: 1, dst ofs: 0x55472
   54901:	54                   	push   esp
   54902:	05 00 8d 80 00       	add    eax,0x808d00
   54907:	00 00                	add    BYTE PTR [eax],al
   54909:	00 8d 92 00 00 00    	add    BYTE PTR [ebp+0x92],cl
   5490f:	00               	add    BYTE PTR [ebx+0x51],dl

;-------------------------------------------------
;  Function 'load_game2'                         -
;-------------------------------------------------
load_game2:
   54910:	53                   	push   ebx
   54911:	51                   	push   ecx
   54912:	52                   	push   edx
   54913:	56                   	push   esi
   54914:	57                   	push   edi
   54915:	55                   	push   ebp
   54916:	89 e5                	mov    ebp,esp
   54918:	81 ec 10 37 00 00    	sub    esp,0x3710
   5491e:	81 ed 82 00 00 00    	sub    ebp,0x82
   54924:	bb 01 00 00 00       	mov    ebx,0x1
   54929:	8b 0d 08 3f 01 00    	mov    ecx,DWORD PTR ds:@obj3:game_in_progress                      ; fixup: num: 13088, src obj: 1, src ofs: 0x5492b, dst obj: 3, dst ofs: 0x13f08
   5492f:	30 e4                	xor    ah,ah
   54931:	31 d2                	xor    edx,edx
   54933:	88 65 7e             	mov    BYTE PTR [ebp+0x7e],ah
   54936:	88 65 76             	mov    BYTE PTR [ebp+0x76],ah
   54939:	89 55 66             	mov    DWORD PTR [ebp+0x66],edx
   5493c:	89 5d 6a             	mov    DWORD PTR [ebp+0x6a],ebx
   5493f:	85 c9                	test   ecx,ecx
   54941:	74 60                	je     load_game2_branch_2
   54943:	89 d8                	mov    eax,ebx
   54945:	e8 d6 19 00 00       	call   update_lists_xyz
   5494a:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 13001, src obj: 1, src ofs: 0x5494b, dst obj: 3, dst ofs: 0x25ac4
   5494f:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
   54953:	74 30                	je     load_game2_branch_1
   54955:	b8 31 cc 00 00       	mov    eax,@obj3:loadsave_cpp_variable_20                           ; fixup: num: 13000, src obj: 1, src ofs: 0x54956, dst obj: 3, dst ofs: 0xcc31
   5495a:	e8 31 7e 01 00       	call   check_script_flag
   5495f:	84 c0                	test   al,al
   54961:	75 22                	jne    load_game2_branch_1
   54963:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 12999, src obj: 1, src ofs: 0x54965, dst obj: 3, dst ofs: 0x10fb4
   54969:	dc 05 d9 cf 00 00    	fadd   QWORD PTR ds:@obj3:loadsave_cpp_variable_65                  ; fixup: num: 12998, src obj: 1, src ofs: 0x5496b, dst obj: 3, dst ofs: 0xcfd9
   5496f:	6a 00                	push   0x0
   54971:	6a 00                	push   0x0
   54973:	83 ec 08             	sub    esp,0x8
   54976:	dd 1c 24             	fstp   QWORD PTR [esp]
   54979:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12997, src obj: 1, src ofs: 0x5497a, dst obj: 3, dst ofs: 0x26084
   5497e:	e8 ad f0 fb ff       	call   fade
   54983:	eb 2a                	jmp    load_game2_branch_3
load_game2_branch_1:
   54985:	6a 00                	push   0x0
   54987:	6a 00                	push   0x0
   54989:	8b 35 b8 0f 01 00    	mov    esi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12996, src obj: 1, src ofs: 0x5498b, dst obj: 3, dst ofs: 0x10fb8
   5498f:	56                   	push   esi
   54990:	8b 3d b4 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12995, src obj: 1, src ofs: 0x54992, dst obj: 3, dst ofs: 0x10fb4
   54996:	57                   	push   edi
   54997:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 12994, src obj: 1, src ofs: 0x54998, dst obj: 3, dst ofs: 0x26084
   5499c:	e8 8f f0 fb ff       	call   fade
   549a1:	eb 0c                	jmp    load_game2_branch_3
load_game2_branch_2:
   549a3:	ba 00 01 00 00       	mov    edx,0x100
   549a8:	31 c0                	xor    eax,eax
   549aa:	e8 31 dd fb ff       	call   setvgapalette
load_game2_branch_3:
   549af:	8d 45 e6             	lea    eax,[ebp-0x1a]
   549b2:	30 db                	xor    bl,bl
   549b4:	31 d2                	xor    edx,edx
   549b6:	88 1d 7e 60 02 00    	mov    BYTE PTR ds:@obj3:faded_in,bl                                ; fixup: num: 12993, src obj: 1, src ofs: 0x549b8, dst obj: 3, dst ofs: 0x2607e
   549bc:	bb 64 00 00 00       	mov    ebx,0x64
   549c1:	e8 0a ca 01 00       	call   memset_
   549c6:	bb 64 00 00 00       	mov    ebx,0x64
   549cb:	8d 45 82             	lea    eax,[ebp-0x7e]
   549ce:	31 d2                	xor    edx,edx
   549d0:	e8 fb c9 01 00       	call   memset_
   549d5:	bb 00 19 00 00       	mov    ebx,0x1900
   549da:	8d 85 72 c9 ff ff    	lea    eax,[ebp-0x368e]
   549e0:	31 d2                	xor    edx,edx
   549e2:	e8 e9 c9 01 00       	call   memset_
   549e7:	bb 00 19 00 00       	mov    ebx,0x1900
   549ec:	8d 85 72 e2 ff ff    	lea    eax,[ebp-0x1d8e]
   549f2:	31 d2                	xor    edx,edx
   549f4:	b9 c0 03 00 00       	mov    ecx,0x3c0
   549f9:	e8 d2 c9 01 00       	call   memset_
   549fe:	bb 3a cc 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_21                           ; fixup: num: 13009, src obj: 1, src ofs: 0x549ff, dst obj: 3, dst ofs: 0xcc3a
   54a03:	8d 95 72 fb ff ff    	lea    edx,[ebp-0x48e]
   54a09:	b8 47 cc 00 00       	mov    eax,@obj3:loadsave_cpp_variable_22                           ; fixup: num: 13008, src obj: 1, src ofs: 0x54a0a, dst obj: 3, dst ofs: 0xcc47
   54a0e:	e8 cd 83 fb ff       	call   XFILE_read2
   54a13:	b8 4c 00 00 00       	mov    eax,0x4c
   54a18:	e8 fb d4 01 00       	call   W?$nwn(ui)pnv
   54a1d:	85 c0                	test   eax,eax
   54a1f:	74 25                	je     load_game2_branch_4
   54a21:	6a 00                	push   0x0
   54a23:	68 93 14 07 00       	push   @obj1:_nmalloc_                                              ; aliases: _nmalloc_, malloc_; fixup: num: 13007, src obj: 1, src ofs: 0x54a24, dst obj: 1, dst ofs: 0x71493
   54a28:	6a 00                	push   0x0
   54a2a:	6a 00                	push   0x0
   54a2c:	6a 01                	push   0x1
   54a2e:	68 00 00 48 c2       	push   0xc2480000
   54a33:	bb 63 cc 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_23                           ; fixup: num: 13006, src obj: 1, src ofs: 0x54a34, dst obj: 3, dst ofs: 0xcc63
   54a38:	6a 00                	push   0x0
   54a3a:	ba 6b cc 00 00       	mov    edx,@obj3:loadsave_cpp_variable_24                           ; fixup: num: 13005, src obj: 1, src ofs: 0x54a3b, dst obj: 3, dst ofs: 0xcc6b
   54a3f:	31 c9                	xor    ecx,ecx
   54a41:	e8 9a 62 fe ff       	call   W?$ct:BTMAP$n(pnapnaiibiucucpn(ui)pnvpnuc)_
load_game2_branch_4:
   54a46:	89 45 5e             	mov    DWORD PTR [ebp+0x5e],eax
   54a49:	89 c2                	mov    edx,eax
   54a4b:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13004, src obj: 1, src ofs: 0x54a4c, dst obj: 3, dst ofs: 0x25a88
   54a50:	e8 db 76 ff ff       	call   insert_bitmap
   54a55:	31 c0                	xor    eax,eax
   54a57:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
   54a5a:	be 50 00 00 00       	mov    esi,0x50
   54a5f:	bf 19 00 00 00       	mov    edi,0x19
load_game2_branch_5:
   54a64:	89 f0                	mov    eax,esi
   54a66:	e8 ad d4 01 00       	call   W?$nwn(ui)pnv
   54a6b:	85 c0                	test   eax,eax
   54a6d:	74 24                	je     load_game2_branch_6
   54a6f:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   54a72:	6b d3 11             	imul   edx,ebx,0x11
   54a75:	6a 00                	push   0x0
   54a77:	6a ce                	push   0xffffffce
   54a79:	83 c2 19             	add    edx,0x19
   54a7c:	52                   	push   edx
   54a7d:	6a 08                	push   0x8
   54a7f:	8b 14 9d 20 3c 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:ls_text]                          ; fixup: num: 13003, src obj: 1, src ofs: 0x54a82, dst obj: 3, dst ofs: 0x13c20
   54a86:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13002, src obj: 1, src ofs: 0x54a88, dst obj: 3, dst ofs: 0x25bd0
   54a8c:	89 d1                	mov    ecx,edx
   54a8e:	e8 6d 51 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
load_game2_branch_6:
   54a93:	8b 55 4a             	mov    edx,DWORD PTR [ebp+0x4a]
   54a96:	8d 4a 01             	lea    ecx,[edx+0x1]
   54a99:	89 44 95 e6          	mov    DWORD PTR [ebp+edx*4-0x1a],eax
   54a9d:	89 4d 4a             	mov    DWORD PTR [ebp+0x4a],ecx
   54aa0:	39 cf                	cmp    edi,ecx
   54aa2:	7f c0                	jg     load_game2_branch_5
   54aa4:	ba 88 cc 00 00       	mov    edx,@obj3:loadsave_cpp_variable_25                           ; fixup: num: 13015, src obj: 1, src ofs: 0x54aa5, dst obj: 3, dst ofs: 0xcc88
   54aa9:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 13014, src obj: 1, src ofs: 0x54aaa, dst obj: 3, dst ofs: 0x32438
   54aae:	e8 1d 8d 01 00       	call   get
   54ab3:	50                   	push   eax
   54ab4:	68 8d cc 00 00       	push   @obj3:loadsave_cpp_variable_26                               ; fixup: num: 13013, src obj: 1, src ofs: 0x54ab5, dst obj: 3, dst ofs: 0xcc8d
   54ab9:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   54abf:	50                   	push   eax
   54ac0:	e8 1c c1 01 00       	call   sprintf_
   54ac5:	83 c4 0c             	add    esp,0xc
   54ac8:	68 02 02 00 00       	push   0x202
   54acd:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   54ad3:	50                   	push   eax
   54ad4:	e8 9d ca 01 00       	call   open_
   54ad9:	83 c4 08             	add    esp,0x8
   54adc:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 13012, src obj: 1, src ofs: 0x54add, dst obj: 3, dst ofs: 0x25b30
   54ae1:	83 f8 ff             	cmp    eax,0xffffffff
   54ae4:	75 05                	jne    load_game2_branch_7
   54ae6:	e9 c4 00 00 00       	jmp    load_game2_branch_11
load_game2_branch_7:
   54aeb:	bb 0a 00 00 00       	mov    ebx,0xa
   54af0:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 13011, src obj: 1, src ofs: 0x54af1, dst obj: 3, dst ofs: 0x17e5c
   54af5:	e8 69 d4 01 00       	call   read_
   54afa:	31 db                	xor    ebx,ebx
   54afc:	89 5d 4a             	mov    DWORD PTR [ebp+0x4a],ebx
load_game2_branch_8:
   54aff:	8b 55 4a             	mov    edx,DWORD PTR [ebp+0x4a]
   54b02:	8d 85 72 c9 ff ff    	lea    eax,[ebp-0x368e]
   54b08:	c1 e2 08             	shl    edx,0x8
   54b0b:	bb fa 00 00 00       	mov    ebx,0xfa
   54b10:	01 c2                	add    edx,eax
   54b12:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13010, src obj: 1, src ofs: 0x54b13, dst obj: 3, dst ofs: 0x25b30
   54b17:	e8 47 d4 01 00       	call   read_
   54b1c:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54b1f:	8d bd 72 c9 ff ff    	lea    edi,[ebp-0x368e]
   54b25:	c1 e0 08             	shl    eax,0x8
   54b28:	01 c7                	add    edi,eax
   54b2a:	29 c9                	sub    ecx,ecx
   54b2c:	49                   	dec    ecx
   54b2d:	31 c0                	xor    eax,eax
   54b2f:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54b31:	f7 d1                	not    ecx
   54b33:	49                   	dec    ecx
   54b34:	85 c9                	test   ecx,ecx
   54b36:	74 62                	je     load_game2_branch_10
   54b38:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54b3b:	8d 95 72 e2 ff ff    	lea    edx,[ebp-0x1d8e]
   54b41:	50                   	push   eax
   54b42:	c1 e0 08             	shl    eax,0x8
   54b45:	68 9c cc 00 00       	push   @obj3:loadsave_cpp_variable_27                               ; fixup: num: 13019, src obj: 1, src ofs: 0x54b46, dst obj: 3, dst ofs: 0xcc9c
   54b4a:	01 d0                	add    eax,edx
   54b4c:	50                   	push   eax
   54b4d:	e8 8f c0 01 00       	call   sprintf_
   54b52:	83 c4 0c             	add    esp,0xc
   54b55:	b8 50 00 00 00       	mov    eax,0x50
   54b5a:	e8 b9 d3 01 00       	call   W?$nwn(ui)pnv
   54b5f:	85 c0                	test   eax,eax
   54b61:	74 30                	je     load_game2_branch_9
   54b63:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   54b66:	6b d3 11             	imul   edx,ebx,0x11
   54b69:	6a 00                	push   0x0
   54b6b:	6a ce                	push   0xffffffce
   54b6d:	83 c2 19             	add    edx,0x19
   54b70:	8d 8d 72 e2 ff ff    	lea    ecx,[ebp-0x1d8e]
   54b76:	52                   	push   edx
   54b77:	8d b5 72 c9 ff ff    	lea    esi,[ebp-0x368e]
   54b7d:	89 da                	mov    edx,ebx
   54b7f:	6a 50                	push   0x50
   54b81:	c1 e2 08             	shl    edx,0x8
   54b84:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13018, src obj: 1, src ofs: 0x54b86, dst obj: 3, dst ofs: 0x25bcc
   54b8a:	01 d1                	add    ecx,edx
   54b8c:	01 f2                	add    edx,esi
   54b8e:	e8 6d 50 ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
load_game2_branch_9:
   54b93:	8b 55 4a             	mov    edx,DWORD PTR [ebp+0x4a]
   54b96:	89 44 95 82          	mov    DWORD PTR [ebp+edx*4-0x7e],eax
load_game2_branch_10:
   54b9a:	8b 4d 4a             	mov    ecx,DWORD PTR [ebp+0x4a]
   54b9d:	41                   	inc    ecx
   54b9e:	89 4d 4a             	mov    DWORD PTR [ebp+0x4a],ecx
   54ba1:	83 f9 19             	cmp    ecx,0x19
   54ba4:	0f 8c 55 ff ff ff    	jl     load_game2_branch_8
   54baa:	e9 8f 00 00 00       	jmp    load_game2_branch_15
load_game2_branch_11:
   54baf:	68 80 01 00 00       	push   0x180
   54bb4:	68 22 02 00 00       	push   0x222
   54bb9:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   54bbf:	50                   	push   eax
   54bc0:	e8 b1 c9 01 00       	call   open_
   54bc5:	83 c4 0c             	add    esp,0xc
   54bc8:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 13017, src obj: 1, src ofs: 0x54bc9, dst obj: 3, dst ofs: 0x25b30
   54bcd:	83 f8 ff             	cmp    eax,0xffffffff
   54bd0:	74 76                	je     load_game2_branch_16
   54bd2:	bb 0a 00 00 00       	mov    ebx,0xa
   54bd7:	ba 5c 7e 01 00       	mov    edx,@obj3:parental_pw                                        ; fixup: num: 13016, src obj: 1, src ofs: 0x54bd8, dst obj: 3, dst ofs: 0x17e5c
   54bdc:	e8 e3 cb 01 00       	call   write_
   54be1:	31 d2                	xor    edx,edx
   54be3:	89 55 4a             	mov    DWORD PTR [ebp+0x4a],edx
   54be6:	b9 fa 00 00 00       	mov    ecx,0xfa
load_game2_branch_12:
   54beb:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54bee:	8d bd 72 c9 ff ff    	lea    edi,[ebp-0x368e]
   54bf4:	c1 e0 08             	shl    eax,0x8
   54bf7:	be a4 cc 00 00       	mov    esi,@obj3:loadsave_cpp_variable_28                           ; fixup: num: 13028, src obj: 1, src ofs: 0x54bf8, dst obj: 3, dst ofs: 0xcca4
   54bfc:	01 c7                	add    edi,eax
   54bfe:	57                   	push   edi
load_game2_branch_13:
   54bff:	8a 06                	mov    al,BYTE PTR [esi]
   54c01:	88 07                	mov    BYTE PTR [edi],al
   54c03:	3c 00                	cmp    al,0x0
   54c05:	74 10                	je     load_game2_branch_14
   54c07:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   54c0a:	83 c6 02             	add    esi,0x2
   54c0d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   54c10:	83 c7 02             	add    edi,0x2
   54c13:	3c 00                	cmp    al,0x0
   54c15:	75 e8                	jne    load_game2_branch_13
load_game2_branch_14:
   54c17:	5f                   	pop    edi
   54c18:	8b 55 4a             	mov    edx,DWORD PTR [ebp+0x4a]
   54c1b:	8d 85 72 c9 ff ff    	lea    eax,[ebp-0x368e]
   54c21:	c1 e2 08             	shl    edx,0x8
   54c24:	89 cb                	mov    ebx,ecx
   54c26:	01 c2                	add    edx,eax
   54c28:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13027, src obj: 1, src ofs: 0x54c29, dst obj: 3, dst ofs: 0x25b30
   54c2d:	e8 92 cb 01 00       	call   write_
   54c32:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   54c35:	46                   	inc    esi
   54c36:	89 75 4a             	mov    DWORD PTR [ebp+0x4a],esi
   54c39:	83 fe 19             	cmp    esi,0x19
   54c3c:	7c ad                	jl     load_game2_branch_12
load_game2_branch_15:
   54c3e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13026, src obj: 1, src ofs: 0x54c3f, dst obj: 3, dst ofs: 0x25b30
   54c43:	e8 c8 d2 01 00       	call   close_
load_game2_branch_16:
   54c48:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13025, src obj: 1, src ofs: 0x54c49, dst obj: 3, dst ofs: 0x25a84
   54c4d:	e8 4e 90 ff ff       	call   update_mod_84
   54c52:	8b 3d b8 0f 01 00    	mov    edi,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 13024, src obj: 1, src ofs: 0x54c54, dst obj: 3, dst ofs: 0x10fb8
   54c58:	57                   	push   edi
   54c59:	a1 b4 0f 01 00       	mov    eax,ds:@obj3:pal_gamma                                       ; fixup: num: 13023, src obj: 1, src ofs: 0x54c5a, dst obj: 3, dst ofs: 0x10fb4
   54c5e:	50                   	push   eax
   54c5f:	6a 00                	push   0x0
   54c61:	be d4 a1 01 00       	mov    esi,@obj3:music                                              ; fixup: num: 13022, src obj: 1, src ofs: 0x54c62, dst obj: 3, dst ofs: 0x1a1d4
   54c66:	30 ff                	xor    bh,bh
   54c68:	6a 00                	push   0x0
   54c6a:	8d 85 72 fb ff ff    	lea    eax,[ebp-0x48e]
   54c70:	88 7d 72             	mov    BYTE PTR [ebp+0x72],bh
   54c73:	e8 b8 ed fb ff       	call   fade
load_game2_branch_17:
   54c78:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13021, src obj: 1, src ofs: 0x54c79, dst obj: 3, dst ofs: 0x25a84
   54c7d:	e8 1e 90 ff ff       	call   update_mod_84
   54c82:	89 f0                	mov    eax,esi
   54c84:	e8 17 6d fb ff       	call   update_mod_9
   54c89:	83 3d 78 59 02 00 08 	cmp    DWORD PTR ds:@obj3:mouse_x,0x8                               ; fixup: num: 13020, src obj: 1, src ofs: 0x54c8b, dst obj: 3, dst ofs: 0x25978
   54c90:	7c 28                	jl     load_game2_branch_18
   54c92:	81 3d 78 59 02 00 7b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x27b                    ; fixup: num: 13035, src obj: 1, src ofs: 0x54c94, dst obj: 3, dst ofs: 0x25978
   54c9c:	7f 1c                	jg     load_game2_branch_18
   54c9e:	83 3d 7c 59 02 00 19 	cmp    DWORD PTR ds:@obj3:mouse_y,0x19                              ; fixup: num: 13034, src obj: 1, src ofs: 0x54ca0, dst obj: 3, dst ofs: 0x2597c
   54ca5:	7c 13                	jl     load_game2_branch_18
   54ca7:	81 3d 7c 59 02 00 c2 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1c2                    ; fixup: num: 13033, src obj: 1, src ofs: 0x54ca9, dst obj: 3, dst ofs: 0x2597c
   54cb1:	7f 07                	jg     load_game2_branch_18
   54cb3:	b8 01 00 00 00       	mov    eax,0x1
   54cb8:	eb 02                	jmp    load_game2_branch_19
load_game2_branch_18:
   54cba:	31 c0                	xor    eax,eax
load_game2_branch_19:
   54cbc:	85 c0                	test   eax,eax
   54cbe:	74 69                	je     load_game2_branch_23
   54cc0:	a1 7c 59 02 00       	mov    eax,ds:@obj3:mouse_y                                         ; fixup: num: 13032, src obj: 1, src ofs: 0x54cc1, dst obj: 3, dst ofs: 0x2597c
   54cc5:	83 e8 19             	sub    eax,0x19
   54cc8:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
   54ccb:	85 c0                	test   eax,eax
   54ccd:	7d 05                	jge    load_game2_branch_20
   54ccf:	31 d2                	xor    edx,edx
   54cd1:	89 55 4a             	mov    DWORD PTR [ebp+0x4a],edx
load_game2_branch_20:
   54cd4:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54cd7:	89 c2                	mov    edx,eax
   54cd9:	bb 11 00 00 00       	mov    ebx,0x11
   54cde:	c1 fa 1f             	sar    edx,0x1f
   54ce1:	f7 fb                	idiv   ebx
   54ce3:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
   54ce6:	83 f8 19             	cmp    eax,0x19
   54ce9:	7c 07                	jl     load_game2_branch_21
   54ceb:	c7 45 4a 18 00 00 00 	mov    DWORD PTR [ebp+0x4a],0x18
load_game2_branch_21:
   54cf2:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54cf5:	89 45 66             	mov    DWORD PTR [ebp+0x66],eax
   54cf8:	31 c0                	xor    eax,eax
   54cfa:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 13031, src obj: 1, src ofs: 0x54cfb, dst obj: 3, dst ofs: 0x25974
   54cff:	83 f8 01             	cmp    eax,0x1
   54d02:	75 25                	jne    load_game2_branch_23
   54d04:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 13030, src obj: 1, src ofs: 0x54d05, dst obj: 3, dst ofs: 0x25a84
load_game2_branch_22:
   54d09:	31 c0                	xor    eax,eax
   54d0b:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 13029, src obj: 1, src ofs: 0x54d0c, dst obj: 3, dst ofs: 0x25974
   54d10:	83 f8 01             	cmp    eax,0x1
   54d13:	0f 85 b7 01 00 00    	jne    load_game2_branch_39
   54d19:	89 f0                	mov    eax,esi
   54d1b:	e8 80 6c fb ff       	call   update_mod_9
   54d20:	89 d0                	mov    eax,edx
   54d22:	e8 79 8f ff ff       	call   update_mod_84
   54d27:	eb e0                	jmp    load_game2_branch_22
load_game2_branch_23:
   54d29:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   54d2c:	8b 7d 66             	mov    edi,DWORD PTR [ebp+0x66]
   54d2f:	39 f8                	cmp    eax,edi
   54d31:	0f 84 cb 00 00 00    	je     load_game2_branch_30
   54d37:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
   54d3e:	8b 54 28 e6          	mov    edx,DWORD PTR [eax+ebp*1-0x1a]
   54d42:	85 d2                	test   edx,edx
   54d44:	74 19                	je     load_game2_branch_25
   54d46:	89 d0                	mov    eax,edx
   54d48:	74 0c                	je     load_game2_branch_24
   54d4a:	31 d2                	xor    edx,edx
   54d4c:	e8 cf 51 ff ff       	call   W?$dt:TEXTBM$n()_
   54d51:	e8 22 d3 01 00       	call   W?$dln(pnv)v
load_game2_branch_24:
   54d56:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   54d59:	31 db                	xor    ebx,ebx
   54d5b:	89 5c 85 e6          	mov    DWORD PTR [ebp+eax*4-0x1a],ebx
load_game2_branch_25:
   54d5f:	b8 50 00 00 00       	mov    eax,0x50
   54d64:	e8 af d1 01 00       	call   W?$nwn(ui)pnv
   54d69:	85 c0                	test   eax,eax
   54d6b:	74 24                	je     load_game2_branch_26
   54d6d:	8b 4d 66             	mov    ecx,DWORD PTR [ebp+0x66]
   54d70:	6b d1 11             	imul   edx,ecx,0x11
   54d73:	6a 00                	push   0x0
   54d75:	6a ce                	push   0xffffffce
   54d77:	83 c2 19             	add    edx,0x19
   54d7a:	52                   	push   edx
   54d7b:	6a 08                	push   0x8
   54d7d:	8b 14 8d 20 3c 01 00 	mov    edx,DWORD PTR [ecx*4+@obj3:ls_text]                          ; fixup: num: 13039, src obj: 1, src ofs: 0x54d80, dst obj: 3, dst ofs: 0x13c20
   54d84:	8b 1d cc 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont1                              ; fixup: num: 13038, src obj: 1, src ofs: 0x54d86, dst obj: 3, dst ofs: 0x25bcc
   54d8a:	89 d1                	mov    ecx,edx
   54d8c:	e8 6f 4e ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
load_game2_branch_26:
   54d91:	8b 55 66             	mov    edx,DWORD PTR [ebp+0x66]
   54d94:	89 44 95 e6          	mov    DWORD PTR [ebp+edx*4-0x1a],eax
   54d98:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   54d9b:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   54da2:	8b 7c 28 e6          	mov    edi,DWORD PTR [eax+ebp*1-0x1a]
   54da6:	85 ff                	test   edi,edi
   54da8:	74 19                	je     load_game2_branch_28
   54daa:	89 f8                	mov    eax,edi
   54dac:	74 0c                	je     load_game2_branch_27
   54dae:	31 d2                	xor    edx,edx
   54db0:	e8 6b 51 ff ff       	call   W?$dt:TEXTBM$n()_
   54db5:	e8 be d2 01 00       	call   W?$dln(pnv)v
load_game2_branch_27:
   54dba:	8b 45 6a             	mov    eax,DWORD PTR [ebp+0x6a]
   54dbd:	31 d2                	xor    edx,edx
   54dbf:	89 54 85 e6          	mov    DWORD PTR [ebp+eax*4-0x1a],edx
load_game2_branch_28:
   54dc3:	b8 50 00 00 00       	mov    eax,0x50
   54dc8:	e8 4b d1 01 00       	call   W?$nwn(ui)pnv
   54dcd:	85 c0                	test   eax,eax
   54dcf:	74 24                	je     load_game2_branch_29
   54dd1:	8b 5d 6a             	mov    ebx,DWORD PTR [ebp+0x6a]
   54dd4:	6b d3 11             	imul   edx,ebx,0x11
   54dd7:	6a 00                	push   0x0
   54dd9:	6a ce                	push   0xffffffce
   54ddb:	83 c2 19             	add    edx,0x19
   54dde:	52                   	push   edx
   54ddf:	6a 08                	push   0x8
   54de1:	8b 14 9d 20 3c 01 00 	mov    edx,DWORD PTR [ebx*4+@obj3:ls_text]                          ; fixup: num: 13037, src obj: 1, src ofs: 0x54de4, dst obj: 3, dst ofs: 0x13c20
   54de8:	8b 1d d0 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:medfont2                              ; fixup: num: 13036, src obj: 1, src ofs: 0x54dea, dst obj: 3, dst ofs: 0x25bd0
   54dee:	89 d1                	mov    ecx,edx
   54df0:	e8 0b 4e ff ff       	call   W?$ct:TEXTBM$n(pnapn$_tagCFONT$$pnaiiii)_
load_game2_branch_29:
   54df5:	8b 55 6a             	mov    edx,DWORD PTR [ebp+0x6a]
   54df8:	89 44 95 e6          	mov    DWORD PTR [ebp+edx*4-0x1a],eax
   54dfc:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   54dff:	89 45 6a             	mov    DWORD PTR [ebp+0x6a],eax
load_game2_branch_30:
   54e02:	31 c0                	xor    eax,eax
   54e04:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12980, src obj: 1, src ofs: 0x54e05, dst obj: 3, dst ofs: 0x25974
   54e09:	83 f8 01             	cmp    eax,0x1
   54e0c:	0f 85 a0 00 00 00    	jne    load_game2_branch_37
   54e12:	ba 84 5a 02 00       	mov    edx,@obj3:the_screen                                         ; fixup: num: 12979, src obj: 1, src ofs: 0x54e13, dst obj: 3, dst ofs: 0x25a84
load_game2_branch_31:
   54e17:	31 c0                	xor    eax,eax
   54e19:	a0 74 59 02 00       	mov    al,ds:@obj3:left_button                                      ; fixup: num: 12978, src obj: 1, src ofs: 0x54e1a, dst obj: 3, dst ofs: 0x25974
   54e1e:	83 f8 01             	cmp    eax,0x1
   54e21:	75 10                	jne    load_game2_branch_32
   54e23:	89 f0                	mov    eax,esi
   54e25:	e8 76 6b fb ff       	call   update_mod_9
   54e2a:	89 d0                	mov    eax,edx
   54e2c:	e8 6f 8e ff ff       	call   update_mod_84
   54e31:	eb e4                	jmp    load_game2_branch_31
load_game2_branch_32:
   54e33:	83 3d 78 59 02 00 03 	cmp    DWORD PTR ds:@obj3:mouse_x,0x3                               ; fixup: num: 12977, src obj: 1, src ofs: 0x54e35, dst obj: 3, dst ofs: 0x25978
   54e3a:	7c 2b                	jl     load_game2_branch_33
   54e3c:	81 3d 78 59 02 00 3d 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x13d                    ; fixup: num: 13046, src obj: 1, src ofs: 0x54e3e, dst obj: 3, dst ofs: 0x25978
   54e46:	7f 1f                	jg     load_game2_branch_33
   54e48:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 13045, src obj: 1, src ofs: 0x54e4a, dst obj: 3, dst ofs: 0x2597c
   54e52:	7c 13                	jl     load_game2_branch_33
   54e54:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 13044, src obj: 1, src ofs: 0x54e56, dst obj: 3, dst ofs: 0x2597c
   54e5e:	7f 07                	jg     load_game2_branch_33
   54e60:	b8 01 00 00 00       	mov    eax,0x1
   54e65:	eb 02                	jmp    load_game2_branch_34
load_game2_branch_33:
   54e67:	31 c0                	xor    eax,eax
load_game2_branch_34:
   54e69:	85 c0                	test   eax,eax
   54e6b:	0f 85 5f 00 00 00    	jne    load_game2_branch_39
   54e71:	81 3d 78 59 02 00 41 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x141                    ; fixup: num: 13043, src obj: 1, src ofs: 0x54e73, dst obj: 3, dst ofs: 0x25978
   54e7b:	7c 2b                	jl     load_game2_branch_35
   54e7d:	81 3d 78 59 02 00 7b 02 00 00 	cmp    DWORD PTR ds:@obj3:mouse_x,0x27b                    ; fixup: num: 13042, src obj: 1, src ofs: 0x54e7f, dst obj: 3, dst ofs: 0x25978
   54e87:	7f 1f                	jg     load_game2_branch_35
   54e89:	81 3d 7c 59 02 00 cc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1cc                    ; fixup: num: 13041, src obj: 1, src ofs: 0x54e8b, dst obj: 3, dst ofs: 0x2597c
   54e93:	7c 13                	jl     load_game2_branch_35
   54e95:	81 3d 7c 59 02 00 dc 01 00 00 	cmp    DWORD PTR ds:@obj3:mouse_y,0x1dc                    ; fixup: num: 13040, src obj: 1, src ofs: 0x54e97, dst obj: 3, dst ofs: 0x2597c
   54e9f:	7f 07                	jg     load_game2_branch_35
   54ea1:	b8 01 00 00 00       	mov    eax,0x1
   54ea6:	eb 02                	jmp    load_game2_branch_36
load_game2_branch_35:
   54ea8:	31 c0                	xor    eax,eax
load_game2_branch_36:
   54eaa:	85 c0                	test   eax,eax
   54eac:	74 04                	je     load_game2_branch_37
   54eae:	c6 45 72 01          	mov    BYTE PTR [ebp+0x72],0x1
load_game2_branch_37:
   54eb2:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12982, src obj: 1, src ofs: 0x54eb5, dst obj: 3, dst ofs: 0x25908
   54eb9:	83 f8 01             	cmp    eax,0x1
   54ebc:	75 06                	jne    load_game2_branch_38
   54ebe:	c6 45 72 01          	mov    BYTE PTR [ebp+0x72],0x1
   54ec2:	eb 30                	jmp    load_game2_branch_40
load_game2_branch_38:
   54ec4:	0f bf 05 08 59 02 00 	movsx  eax,WORD PTR ds:@obj3:raw_key                                ; fixup: num: 12981, src obj: 1, src ofs: 0x54ec7, dst obj: 3, dst ofs: 0x25908
   54ecb:	83 f8 1c             	cmp    eax,0x1c
   54ece:	75 24                	jne    load_game2_branch_40
load_game2_branch_39:
   54ed0:	8b 7d 66             	mov    edi,DWORD PTR [ebp+0x66]
   54ed3:	8d 85 72 c9 ff ff    	lea    eax,[ebp-0x368e]
   54ed9:	c1 e7 08             	shl    edi,0x8
   54edc:	01 c7                	add    edi,eax
   54ede:	29 c9                	sub    ecx,ecx
   54ee0:	49                   	dec    ecx
   54ee1:	31 c0                	xor    eax,eax
   54ee3:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   54ee5:	f7 d1                	not    ecx
   54ee7:	49                   	dec    ecx
   54ee8:	85 c9                	test   ecx,ecx
   54eea:	74 08                	je     load_game2_branch_40
   54eec:	b0 01                	mov    al,0x1
   54eee:	88 45 76             	mov    BYTE PTR [ebp+0x76],al
   54ef1:	88 45 72             	mov    BYTE PTR [ebp+0x72],al
load_game2_branch_40:
   54ef4:	80 7d 72 00          	cmp    BYTE PTR [ebp+0x72],0x0
   54ef8:	75 05                	jne    load_game2_branch_41
   54efa:	e9 79 fd ff ff       	jmp    load_game2_branch_17
load_game2_branch_41:
   54eff:	ba 18 00 00 00       	mov    edx,0x18
   54f04:	31 db                	xor    ebx,ebx
   54f06:	89 55 4a             	mov    DWORD PTR [ebp+0x4a],edx
load_game2_branch_42:
   54f09:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54f0c:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   54f13:	8b 4c 28 e6          	mov    ecx,DWORD PTR [eax+ebp*1-0x1a]
   54f17:	39 cb                	cmp    ebx,ecx
   54f19:	74 19                	je     load_game2_branch_44
   54f1b:	89 c8                	mov    eax,ecx
   54f1d:	85 c9                	test   ecx,ecx
   54f1f:	74 0c                	je     load_game2_branch_43
   54f21:	89 da                	mov    edx,ebx
   54f23:	e8 f8 4f ff ff       	call   W?$dt:TEXTBM$n()_
   54f28:	e8 4b d1 01 00       	call   W?$dln(pnv)v
load_game2_branch_43:
   54f2d:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54f30:	89 5c 85 e6          	mov    DWORD PTR [ebp+eax*4-0x1a],ebx
load_game2_branch_44:
   54f34:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   54f37:	4e                   	dec    esi
   54f38:	89 75 4a             	mov    DWORD PTR [ebp+0x4a],esi
   54f3b:	39 f3                	cmp    ebx,esi
   54f3d:	7e ca                	jle    load_game2_branch_42
   54f3f:	b8 18 00 00 00       	mov    eax,0x18
   54f44:	31 db                	xor    ebx,ebx
   54f46:	89 45 4a             	mov    DWORD PTR [ebp+0x4a],eax
load_game2_branch_45:
   54f49:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54f4c:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
   54f53:	8b 54 28 82          	mov    edx,DWORD PTR [eax+ebp*1-0x7e]
   54f57:	39 d3                	cmp    ebx,edx
   54f59:	74 19                	je     load_game2_branch_47
   54f5b:	89 d0                	mov    eax,edx
   54f5d:	85 d2                	test   edx,edx
   54f5f:	74 0c                	je     load_game2_branch_46
   54f61:	89 da                	mov    edx,ebx
   54f63:	e8 b8 4f ff ff       	call   W?$dt:TEXTBM$n()_
   54f68:	e8 0b d1 01 00       	call   W?$dln(pnv)v
load_game2_branch_46:
   54f6d:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   54f70:	89 5c 85 82          	mov    DWORD PTR [ebp+eax*4-0x7e],ebx
load_game2_branch_47:
   54f74:	8b 4d 4a             	mov    ecx,DWORD PTR [ebp+0x4a]
   54f77:	49                   	dec    ecx
   54f78:	89 4d 4a             	mov    DWORD PTR [ebp+0x4a],ecx
   54f7b:	39 cb                	cmp    ebx,ecx
   54f7d:	7e ca                	jle    load_game2_branch_45
   54f7f:	8b 7d 5e             	mov    edi,DWORD PTR [ebp+0x5e]
   54f82:	85 ff                	test   edi,edi
   54f84:	74 1e                	je     load_game2_branch_48
   54f86:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12987, src obj: 1, src ofs: 0x54f87, dst obj: 3, dst ofs: 0x25a88
   54f8b:	89 fa                	mov    edx,edi
   54f8d:	e8 5e 77 ff ff       	call   remove_bitmap
   54f92:	85 ff                	test   edi,edi
   54f94:	74 0e                	je     load_game2_branch_48
   54f96:	89 f8                	mov    eax,edi
   54f98:	31 d2                	xor    edx,edx
   54f9a:	e8 01 64 fe ff       	call   W?$dt:BTMAP$n()_
   54f9f:	e8 d4 d0 01 00       	call   W?$dln(pnv)v
load_game2_branch_48:
   54fa4:	6a 00                	push   0x0
   54fa6:	6a 00                	push   0x0
   54fa8:	8b 15 b8 0f 01 00    	mov    edx,DWORD PTR ds:@obj3:pal_gamma_variable_1                  ; fixup: num: 12986, src obj: 1, src ofs: 0x54faa, dst obj: 3, dst ofs: 0x10fb8
   54fae:	52                   	push   edx
   54faf:	8b 1d b4 0f 01 00    	mov    ebx,DWORD PTR ds:@obj3:pal_gamma                             ; fixup: num: 12985, src obj: 1, src ofs: 0x54fb1, dst obj: 3, dst ofs: 0x10fb4
   54fb5:	53                   	push   ebx
   54fb6:	8d 85 72 fb ff ff    	lea    eax,[ebp-0x48e]
   54fbc:	8a 75 76             	mov    dh,BYTE PTR [ebp+0x76]
   54fbf:	e8 6c ea fb ff       	call   fade
   54fc4:	84 f6                	test   dh,dh
   54fc6:	0f 84 38 13 00 00    	je     load_game2_branch_121
   54fcc:	e8 bf 2e 01 00       	call   Clear_using_on_bm
   54fd1:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 12984, src obj: 1, src ofs: 0x54fd2, dst obj: 3, dst ofs: 0x25a88
   54fd6:	e8 05 7a ff ff       	call   remove_all
   54fdb:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 12983, src obj: 1, src ofs: 0x54fdc, dst obj: 3, dst ofs: 0x26094
   54fe0:	e8 7b 72 fe ff       	call   hide
   54fe5:	6a 01                	push   0x1
   54fe7:	b9 e0 01 00 00       	mov    ecx,0x1e0
   54fec:	bb 80 02 00 00       	mov    ebx,0x280
   54ff1:	6a 00                	push   0x0
   54ff3:	31 d2                	xor    edx,edx
   54ff5:	31 c0                	xor    eax,eax
   54ff7:	e8 54 07 fb ff       	call   VESA_rectangle
   54ffc:	b9 01 00 00 00       	mov    ecx,0x1
   55001:	b8 0a 00 00 00       	mov    eax,0xa
   55006:	89 0d 08 3f 01 00    	mov    DWORD PTR ds:@obj3:game_in_progress,ecx                      ; fixup: num: 13389, src obj: 1, src ofs: 0x55008, dst obj: 3, dst ofs: 0x13f08
   5500c:	e8 82 c4 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55011:	89 c1                	mov    ecx,eax
   55013:	85 c0                	test   eax,eax
   55015:	75 0f                	jne    load_game2_branch_49
   55017:	bb a5 cc 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_29                           ; fixup: num: 13388, src obj: 1, src ofs: 0x55018, dst obj: 3, dst ofs: 0xcca5
   5501c:	ba d0 04 00 00       	mov    edx,0x4d0
   55021:	e8 0a 30 fe ff       	call   _error_report
load_game2_branch_49:
   55026:	bb 0a 00 00 00       	mov    ebx,0xa
   5502b:	8b 45 66             	mov    eax,DWORD PTR [ebp+0x66]
   5502e:	89 ca                	mov    edx,ecx
   55030:	e8 3c 1c 02 00       	call   itoa_                                                        ; aliases: itoa_, _itoa_
   55035:	50                   	push   eax
   55036:	ba bd cc 00 00       	mov    edx,@obj3:loadsave_cpp_variable_30                           ; fixup: num: 13387, src obj: 1, src ofs: 0x55037, dst obj: 3, dst ofs: 0xccbd
   5503b:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 13386, src obj: 1, src ofs: 0x5503c, dst obj: 3, dst ofs: 0x32438
   55040:	e8 8b 87 01 00       	call   get
   55045:	50                   	push   eax
   55046:	68 c2 cc 00 00       	push   @obj3:loadsave_cpp_variable_31                               ; fixup: num: 13385, src obj: 1, src ofs: 0x55047, dst obj: 3, dst ofs: 0xccc2
   5504b:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   55051:	50                   	push   eax
   55052:	e8 8a bb 01 00       	call   sprintf_
   55057:	83 c4 10             	add    esp,0x10
   5505a:	89 c8                	mov    eax,ecx
   5505c:	e8 87 c3 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55061:	68 02 02 00 00       	push   0x202
   55066:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   5506c:	b3 01                	mov    bl,0x1
   5506e:	50                   	push   eax
   5506f:	88 1d 7d 60 02 00    	mov    BYTE PTR ds:@obj3:loading_game,bl                            ; fixup: num: 13384, src obj: 1, src ofs: 0x55071, dst obj: 3, dst ofs: 0x2607d
   55075:	e8 fc c4 01 00       	call   open_
   5507a:	83 c4 08             	add    esp,0x8
   5507d:	a3 30 5b 02 00       	mov    ds:@obj3:util_handle,eax                                     ; fixup: num: 13383, src obj: 1, src ofs: 0x5507e, dst obj: 3, dst ofs: 0x25b30
   55082:	83 f8 ff             	cmp    eax,0xffffffff
   55085:	0f 84 23 12 00 00    	je     load_game2_branch_119
   5508b:	bb 04 00 00 00       	mov    ebx,0x4
   55090:	8d 55 62             	lea    edx,[ebp+0x62]
   55093:	e8 cb ce 01 00       	call   read_
   55098:	83 7d 62 03          	cmp    DWORD PTR [ebp+0x62],0x3
   5509c:	75 07                	jne    load_game2_branch_50
   5509e:	c6 05 7c 60 02 00 01 	mov    BYTE PTR ds:@obj3:in_the_lodge,0x1                           ; fixup: num: 13382, src obj: 1, src ofs: 0x550a0, dst obj: 3, dst ofs: 0x2607c
load_game2_branch_50:
   550a5:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   550a8:	3b 05 a8 0f 01 00    	cmp    eax,DWORD PTR ds:@obj3:current_cd                            ; fixup: num: 13401, src obj: 1, src ofs: 0x550aa, dst obj: 3, dst ofs: 0x10fa8
   550ae:	74 38                	je     load_game2_branch_51
   550b0:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13400, src obj: 1, src ofs: 0x550b1, dst obj: 3, dst ofs: 0x26094
   550b5:	ba 01 00 00 00       	mov    edx,0x1
   550ba:	e8 d1 71 fe ff       	call   show
   550bf:	8b 45 62             	mov    eax,DWORD PTR [ebp+0x62]
   550c2:	e8 d9 37 fe ff       	call   cd_change_requestor
   550c7:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13399, src obj: 1, src ofs: 0x550c8, dst obj: 3, dst ofs: 0x26094
   550cc:	e8 8f 71 fe ff       	call   hide
   550d1:	6a 01                	push   0x1
   550d3:	b9 e0 01 00 00       	mov    ecx,0x1e0
   550d8:	bb 80 02 00 00       	mov    ebx,0x280
   550dd:	6a 00                	push   0x0
   550df:	31 d2                	xor    edx,edx
   550e1:	31 c0                	xor    eax,eax
   550e3:	e8 68 06 fb ff       	call   VESA_rectangle
load_game2_branch_51:
   550e8:	bb 01 00 00 00       	mov    ebx,0x1
   550ed:	ba b1 3e 01 00       	mov    edx,@obj3:show_pc                                            ; fixup: num: 13398, src obj: 1, src ofs: 0x550ee, dst obj: 3, dst ofs: 0x13eb1
   550f2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13397, src obj: 1, src ofs: 0x550f3, dst obj: 3, dst ofs: 0x25b30
   550f7:	e8 67 ce 01 00       	call   read_
   550fc:	83 ec 04             	sub    esp,0x4
   550ff:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 13396, src obj: 1, src ofs: 0x55101, dst obj: 3, dst ofs: 0x10fb4
   55105:	d9 1c 24             	fstp   DWORD PTR [esp]
   55108:	ba 00 01 00 00       	mov    edx,0x100
   5510d:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13395, src obj: 1, src ofs: 0x5510e, dst obj: 3, dst ofs: 0x26084
   55112:	e8 59 d6 fb ff       	call   setvgapalette_mod_14
   55117:	e8 34 b3 ff ff       	call   clear_script_data
   5511c:	ba cc cc 00 00       	mov    edx,@obj3:loadsave_cpp_variable_32                           ; fixup: num: 13394, src obj: 1, src ofs: 0x5511d, dst obj: 3, dst ofs: 0xcccc
   55121:	b8 38 24 03 00       	mov    eax,@obj3:configuration_environment                          ; fixup: num: 13393, src obj: 1, src ofs: 0x55122, dst obj: 3, dst ofs: 0x32438
   55126:	e8 a5 86 01 00       	call   get
   5512b:	e8 50 2d fe ff       	call   script_reload
   55130:	e8 4b 1c fe ff       	call   outer
   55135:	80 3d 14 5b 02 00 00 	cmp    BYTE PTR ds:@obj3:script_errors,0x0                          ; fixup: num: 13392, src obj: 1, src ofs: 0x55137, dst obj: 3, dst ofs: 0x25b14
   5513c:	74 11                	je     load_game2_branch_52
   5513e:	bb d1 cc 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_33                           ; fixup: num: 13391, src obj: 1, src ofs: 0x5513f, dst obj: 3, dst ofs: 0xccd1
   55143:	ba fa 04 00 00       	mov    edx,0x4fa
   55148:	31 c0                	xor    eax,eax
   5514a:	e8 e1 2e fe ff       	call   _error_report
load_game2_branch_52:
   5514f:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13390, src obj: 1, src ofs: 0x55150, dst obj: 3, dst ofs: 0x26084
   55154:	85 c0                	test   eax,eax
   55156:	75 1d                	jne    load_game2_branch_53
   55158:	b9 fc 04 00 00       	mov    ecx,0x4fc
   5515d:	bb e8 cc 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_34                           ; fixup: num: 13413, src obj: 1, src ofs: 0x5515e, dst obj: 3, dst ofs: 0xcce8
   55162:	b8 f5 cc 00 00       	mov    eax,@obj3:loadsave_cpp_variable_35                           ; fixup: num: 13412, src obj: 1, src ofs: 0x55163, dst obj: 3, dst ofs: 0xccf5
   55167:	31 d2                	xor    edx,edx
   55169:	e8 72 7c fb ff       	call   XFILE_read2
   5516e:	a3 84 60 02 00       	mov    ds:@obj3:palette,eax                                         ; fixup: num: 13411, src obj: 1, src ofs: 0x5516f, dst obj: 3, dst ofs: 0x26084
   55173:	eb 16                	jmp    load_game2_branch_54
load_game2_branch_53:
   55175:	b9 fd 04 00 00       	mov    ecx,0x4fd
   5517a:	bb 0d cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_36                           ; fixup: num: 13410, src obj: 1, src ofs: 0x5517b, dst obj: 3, dst ofs: 0xcd0d
   5517f:	89 c2                	mov    edx,eax
   55181:	b8 1a cd 00 00       	mov    eax,@obj3:loadsave_cpp_variable_37                           ; fixup: num: 13409, src obj: 1, src ofs: 0x55182, dst obj: 3, dst ofs: 0xcd1a
   55186:	e8 55 7c fb ff       	call   XFILE_read2
load_game2_branch_54:
   5518b:	b8 28 11 00 00       	mov    eax,0x1128
   55190:	e8 83 cd 01 00       	call   W?$nwn(ui)pnv
   55195:	85 c0                	test   eax,eax
   55197:	74 28                	je     load_game2_branch_55
   55199:	6a 00                	push   0x0
   5519b:	6a 00                	push   0x0
   5519d:	6a 01                	push   0x1
   5519f:	6a 00                	push   0x0
   551a1:	6a 00                	push   0x0
   551a3:	68 a0 00 00 00       	push   0xa0
   551a8:	b9 32 cd 00 00       	mov    ecx,@obj3:loadsave_cpp_variable_38                           ; fixup: num: 13408, src obj: 1, src ofs: 0x551a9, dst obj: 3, dst ofs: 0xcd32
   551ad:	68 fa 00 00 00       	push   0xfa
   551b2:	bb 0f 00 00 00       	mov    ebx,0xf
   551b7:	ba 3a cd 00 00       	mov    edx,@obj3:loadsave_cpp_variable_39                           ; fixup: num: 13407, src obj: 1, src ofs: 0x551b8, dst obj: 3, dst ofs: 0xcd3a
   551bc:	e8 5f 68 fe ff       	call   W?$ct:ANIMATION$n(pnaipnaiibiucucuc)_
load_game2_branch_55:
   551c1:	89 45 6e             	mov    DWORD PTR [ebp+0x6e],eax
   551c4:	85 c0                	test   eax,eax
   551c6:	75 0f                	jne    load_game2_branch_56
   551c8:	bb 54 cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_40                           ; fixup: num: 13406, src obj: 1, src ofs: 0x551c9, dst obj: 3, dst ofs: 0xcd54
   551cd:	ba 01 05 00 00       	mov    edx,0x501
   551d2:	e8 59 2e fe ff       	call   _error_report
load_game2_branch_56:
   551d7:	8b 55 6e             	mov    edx,DWORD PTR [ebp+0x6e]
   551da:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13405, src obj: 1, src ofs: 0x551db, dst obj: 3, dst ofs: 0x25a88
   551df:	e8 4c 6f ff ff       	call   insert_bitmap
   551e4:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13404, src obj: 1, src ofs: 0x551e5, dst obj: 3, dst ofs: 0x25a84
   551e9:	e8 b2 8a ff ff       	call   update_mod_84
   551ee:	83 ec 04             	sub    esp,0x4
   551f1:	dd 05 b4 0f 01 00    	fld    QWORD PTR ds:@obj3:pal_gamma                                 ; fixup: num: 13403, src obj: 1, src ofs: 0x551f3, dst obj: 3, dst ofs: 0x10fb4
   551f7:	d9 1c 24             	fstp   DWORD PTR [esp]
   551fa:	ba 00 01 00 00       	mov    edx,0x100
   551ff:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13402, src obj: 1, src ofs: 0x55200, dst obj: 3, dst ofs: 0x26084
   55204:	bb 08 00 00 00       	mov    ebx,0x8
   55209:	e8 62 d5 fb ff       	call   setvgapalette_mod_14
   5520e:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13423, src obj: 1, src ofs: 0x5520f, dst obj: 3, dst ofs: 0x1a1d4
   55213:	ba 8c 60 02 00       	mov    edx,@obj3:game_time                                          ; fixup: num: 13422, src obj: 1, src ofs: 0x55214, dst obj: 3, dst ofs: 0x2608c
   55218:	e8 83 67 fb ff       	call   update_mod_9
   5521d:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13421, src obj: 1, src ofs: 0x5521e, dst obj: 3, dst ofs: 0x25b30
   55222:	e8 3c cd 01 00       	call   read_
   55227:	bb 04 00 00 00       	mov    ebx,0x4
   5522c:	8d 55 4a             	lea    edx,[ebp+0x4a]
   5522f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13420, src obj: 1, src ofs: 0x55230, dst obj: 3, dst ofs: 0x25b30
   55234:	e8 2a cd 01 00       	call   read_
   55239:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   5523c:	e8 52 c2 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55241:	89 c1                	mov    ecx,eax
   55243:	85 c0                	test   eax,eax
   55245:	75 0f                	jne    load_game2_branch_57
   55247:	bb 86 cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_41                           ; fixup: num: 13419, src obj: 1, src ofs: 0x55248, dst obj: 3, dst ofs: 0xcd86
   5524c:	ba 0c 05 00 00       	mov    edx,0x50c
   55251:	e8 da 2d fe ff       	call   _error_report
load_game2_branch_57:
   55256:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55259:	e8 82 78 fe ff       	call   update_mod_76
   5525e:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13418, src obj: 1, src ofs: 0x5525f, dst obj: 3, dst ofs: 0x25a84
   55263:	89 ca                	mov    edx,ecx
   55265:	e8 36 8a ff ff       	call   update_mod_84
   5526a:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   5526d:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13417, src obj: 1, src ofs: 0x5526e, dst obj: 3, dst ofs: 0x25b30
   55272:	e8 ec cc 01 00       	call   read_
   55277:	8b 1d c8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 13416, src obj: 1, src ofs: 0x55279, dst obj: 3, dst ofs: 0x25ac8
   5527d:	85 db                	test   ebx,ebx
   5527f:	74 15                	je     load_game2_branch_59
load_game2_branch_58:
   55281:	89 ca                	mov    edx,ecx
   55283:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   55286:	e8 a5 11 02 00       	call   strcmp_
   5528b:	85 c0                	test   eax,eax
   5528d:	74 07                	je     load_game2_branch_59
   5528f:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   55292:	85 db                	test   ebx,ebx
   55294:	75 eb                	jne    load_game2_branch_58
load_game2_branch_59:
   55296:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   55299:	31 d2                	xor    edx,edx
   5529b:	a3 a4 60 02 00       	mov    ds:@obj3:next_room,eax                                       ; fixup: num: 13415, src obj: 1, src ofs: 0x5529c, dst obj: 3, dst ofs: 0x260a4
   552a0:	89 c8                	mov    eax,ecx
   552a2:	89 15 c4 5a 02 00    	mov    DWORD PTR ds:@obj3:current_room,edx                          ; fixup: num: 13414, src obj: 1, src ofs: 0x552a4, dst obj: 3, dst ofs: 0x25ac4
   552a8:	e8 3b c1 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   552ad:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   552b0:	e8 2b 78 fe ff       	call   update_mod_76
   552b5:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13433, src obj: 1, src ofs: 0x552b6, dst obj: 3, dst ofs: 0x25a84
   552ba:	e8 e1 89 ff ff       	call   update_mod_84
   552bf:	8b 1d 98 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 13432, src obj: 1, src ofs: 0x552c1, dst obj: 3, dst ofs: 0x25a98
   552c5:	85 db                	test   ebx,ebx
   552c7:	74 1a                	je     load_game2_branch_61
   552c9:	b9 9e cd 00 00       	mov    ecx,@obj3:loadsave_cpp_variable_42                           ; fixup: num: 13431, src obj: 1, src ofs: 0x552ca, dst obj: 3, dst ofs: 0xcd9e
load_game2_branch_60:
   552ce:	89 ca                	mov    edx,ecx
   552d0:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
   552d3:	e8 58 11 02 00       	call   strcmp_
   552d8:	85 c0                	test   eax,eax
   552da:	75 07                	jne    load_game2_branch_61
   552dc:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   552df:	85 db                	test   ebx,ebx
   552e1:	75 eb                	jne    load_game2_branch_60
load_game2_branch_61:
   552e3:	8d 55 4a             	lea    edx,[ebp+0x4a]
   552e6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13430, src obj: 1, src ofs: 0x552e7, dst obj: 3, dst ofs: 0x25b30
   552eb:	89 1d 9c 5a 02 00    	mov    DWORD PTR ds:@obj3:temp_entrance,ebx                         ; fixup: num: 13429, src obj: 1, src ofs: 0x552ed, dst obj: 3, dst ofs: 0x25a9c
   552f1:	bb 04 00 00 00       	mov    ebx,0x4
   552f6:	e8 68 cc 01 00       	call   read_
   552fb:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   552fe:	e8 90 c1 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55303:	89 c1                	mov    ecx,eax
   55305:	85 c0                	test   eax,eax
   55307:	75 0f                	jne    load_game2_branch_62
   55309:	bb a8 cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_43                           ; fixup: num: 13428, src obj: 1, src ofs: 0x5530a, dst obj: 3, dst ofs: 0xcda8
   5530e:	ba 31 05 00 00       	mov    edx,0x531
   55313:	e8 18 2d fe ff       	call   _error_report
load_game2_branch_62:
   55318:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   5531b:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13427, src obj: 1, src ofs: 0x5531c, dst obj: 3, dst ofs: 0x25b30
   55320:	89 ca                	mov    edx,ecx
   55322:	e8 3c cc 01 00       	call   read_
   55327:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5532a:	e8 b1 77 fe ff       	call   update_mod_76
   5532f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13426, src obj: 1, src ofs: 0x55330, dst obj: 3, dst ofs: 0x25a84
   55334:	e8 67 89 ff ff       	call   update_mod_84
   55339:	8b 1d c8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 13425, src obj: 1, src ofs: 0x5533b, dst obj: 3, dst ofs: 0x25ac8
   5533f:	85 db                	test   ebx,ebx
   55341:	74 15                	je     load_game2_branch_64
load_game2_branch_63:
   55343:	89 ca                	mov    edx,ecx
   55345:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   55348:	e8 e3 10 02 00       	call   strcmp_
   5534d:	85 c0                	test   eax,eax
   5534f:	74 07                	je     load_game2_branch_64
   55351:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   55354:	85 db                	test   ebx,ebx
   55356:	75 eb                	jne    load_game2_branch_63
load_game2_branch_64:
   55358:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   5535b:	a3 a8 60 02 00       	mov    ds:@obj3:last_room,eax                                       ; fixup: num: 13424, src obj: 1, src ofs: 0x5535c, dst obj: 3, dst ofs: 0x260a8
   55360:	89 c8                	mov    eax,ecx
   55362:	e8 81 c0 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55367:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5536a:	8d 55 52             	lea    edx,[ebp+0x52]
   5536d:	e8 6e 77 fe ff       	call   update_mod_76
   55372:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13328, src obj: 1, src ofs: 0x55373, dst obj: 3, dst ofs: 0x25a84
   55377:	bb 04 00 00 00       	mov    ebx,0x4
   5537c:	e8 1f 89 ff ff       	call   update_mod_84
   55381:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13327, src obj: 1, src ofs: 0x55382, dst obj: 3, dst ofs: 0x25b30
   55386:	e8 d8 cb 01 00       	call   read_
   5538b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13326, src obj: 1, src ofs: 0x5538c, dst obj: 3, dst ofs: 0x1a1d4
   55390:	bb 04 00 00 00       	mov    ebx,0x4
   55395:	8d 55 56             	lea    edx,[ebp+0x56]
   55398:	e8 03 66 fb ff       	call   update_mod_9
   5539d:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13325, src obj: 1, src ofs: 0x5539e, dst obj: 3, dst ofs: 0x25b30
   553a2:	e8 bc cb 01 00       	call   read_
   553a7:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13324, src obj: 1, src ofs: 0x553a8, dst obj: 3, dst ofs: 0x1a1d4
   553ac:	bb 04 00 00 00       	mov    ebx,0x4
   553b1:	8d 55 5a             	lea    edx,[ebp+0x5a]
   553b4:	e8 e7 65 fb ff       	call   update_mod_9
   553b9:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13441, src obj: 1, src ofs: 0x553ba, dst obj: 3, dst ofs: 0x25b30
   553be:	e8 a0 cb 01 00       	call   read_
   553c3:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13440, src obj: 1, src ofs: 0x553c4, dst obj: 3, dst ofs: 0x1a1d4
   553c8:	bb 04 00 00 00       	mov    ebx,0x4
   553cd:	e8 ce 65 fb ff       	call   update_mod_9
   553d2:	8b 15 9c 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:temp_entrance                         ; fixup: num: 13439, src obj: 1, src ofs: 0x553d4, dst obj: 3, dst ofs: 0x25a9c
   553d8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13438, src obj: 1, src ofs: 0x553d9, dst obj: 3, dst ofs: 0x25b30
   553dd:	e8 81 cb 01 00       	call   read_
   553e2:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13437, src obj: 1, src ofs: 0x553e3, dst obj: 3, dst ofs: 0x1a1d4
   553e7:	bb 04 00 00 00       	mov    ebx,0x4
   553ec:	e8 af 65 fb ff       	call   update_mod_9
   553f1:	8b 15 9c 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:temp_entrance                         ; fixup: num: 13436, src obj: 1, src ofs: 0x553f3, dst obj: 3, dst ofs: 0x25a9c
   553f7:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13435, src obj: 1, src ofs: 0x553f8, dst obj: 3, dst ofs: 0x25b30
   553fc:	83 c2 04             	add    edx,0x4
   553ff:	e8 5f cb 01 00       	call   read_
   55404:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13434, src obj: 1, src ofs: 0x55405, dst obj: 3, dst ofs: 0x1a1d4
   55409:	bb 04 00 00 00       	mov    ebx,0x4
   5540e:	e8 8d 65 fb ff       	call   update_mod_9
   55413:	8b 15 9c 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:temp_entrance                         ; fixup: num: 13340, src obj: 1, src ofs: 0x55415, dst obj: 3, dst ofs: 0x25a9c
   55419:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13339, src obj: 1, src ofs: 0x5541a, dst obj: 3, dst ofs: 0x25b30
   5541e:	83 c2 08             	add    edx,0x8
   55421:	e8 3d cb 01 00       	call   read_
   55426:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13338, src obj: 1, src ofs: 0x55427, dst obj: 3, dst ofs: 0x1a1d4
   5542b:	bb 04 00 00 00       	mov    ebx,0x4
   55430:	8d 55 7a             	lea    edx,[ebp+0x7a]
   55433:	e8 68 65 fb ff       	call   update_mod_9
   55438:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13337, src obj: 1, src ofs: 0x55439, dst obj: 3, dst ofs: 0x25b30
   5543d:	e8 21 cb 01 00       	call   read_
   55442:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13336, src obj: 1, src ofs: 0x55443, dst obj: 3, dst ofs: 0x1a1d4
   55447:	e8 54 65 fb ff       	call   update_mod_9
   5544c:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5544f:	e8 8c 76 fe ff       	call   update_mod_76
   55454:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13335, src obj: 1, src ofs: 0x55455, dst obj: 3, dst ofs: 0x25a84
   55459:	e8 42 88 ff ff       	call   update_mod_84
   5545e:	8a 6d 7a             	mov    ch,BYTE PTR [ebp+0x7a]
   55461:	80 fd 0e             	cmp    ch,0xe
   55464:	77 42                	ja     load_game2_reference_5
   55466:	31 c0                	xor    eax,eax
   55468:	88 e8                	mov    al,ch
   5546a:	2e ff 24 85 c8 48 05 00 	jmp    DWORD PTR cs:[eax*4+@obj1:save_game2_reference_1]         ; fixup: num: 13334, src obj: 1, src ofs: 0x5546e, dst obj: 1, dst ofs: 0x548c8
load_game2_reference_1:
   55472:	a1 9c 5a 02 00       	mov    eax,ds:@obj3:temp_entrance                                   ; fixup: num: 13333, src obj: 1, src ofs: 0x55473, dst obj: 3, dst ofs: 0x25a9c
   55477:	c7 40 0c 02 00 00 00 	mov    DWORD PTR [eax+0xc],0x2
   5547e:	eb 28                	jmp    load_game2_reference_5
load_game2_reference_2:
   55480:	a1 9c 5a 02 00       	mov    eax,ds:@obj3:temp_entrance                                   ; fixup: num: 13332, src obj: 1, src ofs: 0x55481, dst obj: 3, dst ofs: 0x25a9c
   55485:	c7 40 0c 01 00 00 00 	mov    DWORD PTR [eax+0xc],0x1
   5548c:	eb 1a                	jmp    load_game2_reference_5
load_game2_reference_3:
   5548e:	a1 9c 5a 02 00       	mov    eax,ds:@obj3:temp_entrance                                   ; fixup: num: 13331, src obj: 1, src ofs: 0x5548f, dst obj: 3, dst ofs: 0x25a9c
   55493:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
   5549a:	eb 0c                	jmp    load_game2_reference_5
load_game2_reference_4:
   5549c:	a1 9c 5a 02 00       	mov    eax,ds:@obj3:temp_entrance                                   ; fixup: num: 13330, src obj: 1, src ofs: 0x5549d, dst obj: 3, dst ofs: 0x25a9c
   554a1:	c7 40 0c 03 00 00 00 	mov    DWORD PTR [eax+0xc],0x3
load_game2_reference_5:
   554a8:	bb 04 00 00 00       	mov    ebx,0x4
   554ad:	8d 55 4a             	lea    edx,[ebp+0x4a]
   554b0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13329, src obj: 1, src ofs: 0x554b1, dst obj: 3, dst ofs: 0x25b30
   554b5:	e8 a9 ca 01 00       	call   read_
   554ba:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   554bd:	e8 1e 76 fe ff       	call   update_mod_76
   554c2:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13349, src obj: 1, src ofs: 0x554c3, dst obj: 3, dst ofs: 0x25a84
   554c7:	e8 d4 87 ff ff       	call   update_mod_84
   554cc:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13348, src obj: 1, src ofs: 0x554cd, dst obj: 3, dst ofs: 0x1a1d4
   554d1:	e8 ca 64 fb ff       	call   update_mod_9
   554d6:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   554d9:	31 ff                	xor    edi,edi
   554db:	85 db                	test   ebx,ebx
   554dd:	0f 8e e4 00 00 00    	jle    load_game2_branch_70
   554e3:	eb 4a                	jmp    load_game2_branch_66
load_game2_branch_65:
   554e5:	bb 01 00 00 00       	mov    ebx,0x1
   554ea:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13347, src obj: 1, src ofs: 0x554eb, dst obj: 3, dst ofs: 0x25b30
   554ef:	8d 51 1c             	lea    edx,[ecx+0x1c]
   554f2:	e8 6c ca 01 00       	call   read_
   554f7:	bb 01 00 00 00       	mov    ebx,0x1
   554fc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13346, src obj: 1, src ofs: 0x554fd, dst obj: 3, dst ofs: 0x25b30
   55501:	8d 51 1d             	lea    edx,[ecx+0x1d]
   55504:	e8 5a ca 01 00       	call   read_
   55509:	bb 04 00 00 00       	mov    ebx,0x4
   5550e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13345, src obj: 1, src ofs: 0x5550f, dst obj: 3, dst ofs: 0x25b30
   55513:	8d 51 24             	lea    edx,[ecx+0x24]
   55516:	e8 48 ca 01 00       	call   read_
   5551b:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13344, src obj: 1, src ofs: 0x5551c, dst obj: 3, dst ofs: 0x1a1d4
   55520:	47                   	inc    edi
   55521:	e8 7a 64 fb ff       	call   update_mod_9
   55526:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55529:	0f 8d 98 00 00 00    	jge    load_game2_branch_70
load_game2_branch_66:
   5552f:	bb 04 00 00 00       	mov    ebx,0x4
   55534:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55537:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13343, src obj: 1, src ofs: 0x55538, dst obj: 3, dst ofs: 0x25b30
   5553c:	e8 22 ca 01 00       	call   read_
   55541:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   55544:	e8 4a bf 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55549:	89 c6                	mov    esi,eax
   5554b:	85 c0                	test   eax,eax
   5554d:	75 0f                	jne    load_game2_branch_67
   5554f:	bb c0 cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_44                           ; fixup: num: 13342, src obj: 1, src ofs: 0x55550, dst obj: 3, dst ofs: 0xcdc0
   55554:	ba 6e 05 00 00       	mov    edx,0x56e
   55559:	e8 d2 2a fe ff       	call   _error_report
load_game2_branch_67:
   5555e:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55561:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13341, src obj: 1, src ofs: 0x55562, dst obj: 3, dst ofs: 0x25b30
   55566:	89 f2                	mov    edx,esi
   55568:	e8 f6 c9 01 00       	call   read_
   5556d:	8b 0d 90 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:anim_list                             ; fixup: num: 13355, src obj: 1, src ofs: 0x5556f, dst obj: 3, dst ofs: 0x25a90
   55573:	85 c9                	test   ecx,ecx
   55575:	74 15                	je     load_game2_branch_69
load_game2_branch_68:
   55577:	89 f2                	mov    edx,esi
   55579:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
   5557c:	e8 af 0e 02 00       	call   strcmp_
   55581:	85 c0                	test   eax,eax
   55583:	74 07                	je     load_game2_branch_69
   55585:	8b 49 28             	mov    ecx,DWORD PTR [ecx+0x28]
   55588:	85 c9                	test   ecx,ecx
   5558a:	75 eb                	jne    load_game2_branch_68
load_game2_branch_69:
   5558c:	89 f0                	mov    eax,esi
   5558e:	e8 55 be 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55593:	85 c9                	test   ecx,ecx
   55595:	0f 85 4a ff ff ff    	jne    load_game2_branch_65
   5559b:	51                   	push   ecx
   5559c:	68 d8 cd 00 00       	push   @obj3:loadsave_cpp_variable_45                               ; fixup: num: 13354, src obj: 1, src ofs: 0x5559d, dst obj: 3, dst ofs: 0xcdd8
   555a1:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   555a7:	50                   	push   eax
   555a8:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   555ae:	e8 2e b6 01 00       	call   sprintf_
   555b3:	83 c4 0c             	add    esp,0xc
   555b6:	ba 7d 05 00 00       	mov    edx,0x57d
   555bb:	31 c0                	xor    eax,eax
   555bd:	e8 6e 2a fe ff       	call   _error_report
   555c2:	e9 1e ff ff ff       	jmp    load_game2_branch_65
load_game2_branch_70:
   555c7:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   555ca:	e8 11 75 fe ff       	call   update_mod_76
   555cf:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13353, src obj: 1, src ofs: 0x555d0, dst obj: 3, dst ofs: 0x25a84
   555d4:	bb 04 00 00 00       	mov    ebx,0x4
   555d9:	e8 c2 86 ff ff       	call   update_mod_84
   555de:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13352, src obj: 1, src ofs: 0x555df, dst obj: 3, dst ofs: 0x1a1d4
   555e3:	8d 55 4a             	lea    edx,[ebp+0x4a]
   555e6:	e8 b5 63 fb ff       	call   update_mod_9
   555eb:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13351, src obj: 1, src ofs: 0x555ec, dst obj: 3, dst ofs: 0x25b30
   555f0:	e8 6e c9 01 00       	call   read_
   555f5:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   555f8:	31 ff                	xor    edi,edi
   555fa:	85 f6                	test   esi,esi
   555fc:	0f 8e bf 00 00 00    	jle    load_game2_branch_76
   55602:	eb 26                	jmp    load_game2_branch_72
load_game2_branch_71:
   55604:	bb 01 00 00 00       	mov    ebx,0x1
   55609:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13350, src obj: 1, src ofs: 0x5560a, dst obj: 3, dst ofs: 0x25b30
   5560e:	8d 51 04             	lea    edx,[ecx+0x4]
   55611:	e8 4d c9 01 00       	call   read_
   55616:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13361, src obj: 1, src ofs: 0x55617, dst obj: 3, dst ofs: 0x1a1d4
   5561b:	47                   	inc    edi
   5561c:	e8 7f 63 fb ff       	call   update_mod_9
   55621:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55624:	0f 8d 97 00 00 00    	jge    load_game2_branch_76
load_game2_branch_72:
   5562a:	bb 04 00 00 00       	mov    ebx,0x4
   5562f:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55632:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13360, src obj: 1, src ofs: 0x55633, dst obj: 3, dst ofs: 0x25b30
   55637:	e8 27 c9 01 00       	call   read_
   5563c:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   5563f:	e8 4f be 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55644:	89 c6                	mov    esi,eax
   55646:	85 c0                	test   eax,eax
   55648:	75 0f                	jne    load_game2_branch_73
   5564a:	bb f7 cd 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_46                           ; fixup: num: 13359, src obj: 1, src ofs: 0x5564b, dst obj: 3, dst ofs: 0xcdf7
   5564f:	ba 90 05 00 00       	mov    edx,0x590
   55654:	e8 d7 29 fe ff       	call   _error_report
load_game2_branch_73:
   55659:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   5565c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13358, src obj: 1, src ofs: 0x5565d, dst obj: 3, dst ofs: 0x25b30
   55661:	89 f2                	mov    edx,esi
   55663:	e8 fb c8 01 00       	call   read_
   55668:	8b 0d a4 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:flag_list                             ; fixup: num: 13357, src obj: 1, src ofs: 0x5566a, dst obj: 3, dst ofs: 0x25aa4
   5566e:	85 c9                	test   ecx,ecx
   55670:	74 14                	je     load_game2_branch_75
load_game2_branch_74:
   55672:	89 f2                	mov    edx,esi
   55674:	8b 01                	mov    eax,DWORD PTR [ecx]
   55676:	e8 b5 0d 02 00       	call   strcmp_
   5567b:	85 c0                	test   eax,eax
   5567d:	74 07                	je     load_game2_branch_75
   5567f:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
   55682:	85 c9                	test   ecx,ecx
   55684:	75 ec                	jne    load_game2_branch_74
load_game2_branch_75:
   55686:	89 f0                	mov    eax,esi
   55688:	e8 5b bd 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5568d:	85 c9                	test   ecx,ecx
   5568f:	0f 85 6f ff ff ff    	jne    load_game2_branch_71
   55695:	51                   	push   ecx
   55696:	68 0f ce 00 00       	push   @obj3:loadsave_cpp_variable_47                               ; fixup: num: 13356, src obj: 1, src ofs: 0x55697, dst obj: 3, dst ofs: 0xce0f
   5569b:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   556a1:	50                   	push   eax
   556a2:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   556a8:	e8 34 b5 01 00       	call   sprintf_
   556ad:	83 c4 0c             	add    esp,0xc
   556b0:	ba 9c 05 00 00       	mov    edx,0x59c
   556b5:	31 c0                	xor    eax,eax
   556b7:	e8 74 29 fe ff       	call   _error_report
   556bc:	e9 43 ff ff ff       	jmp    load_game2_branch_71
load_game2_branch_76:
   556c1:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   556c4:	bb 04 00 00 00       	mov    ebx,0x4
   556c9:	e8 12 74 fe ff       	call   update_mod_76
   556ce:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13371, src obj: 1, src ofs: 0x556cf, dst obj: 3, dst ofs: 0x25a84
   556d3:	8d 55 4a             	lea    edx,[ebp+0x4a]
   556d6:	e8 c5 85 ff ff       	call   update_mod_84
   556db:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13370, src obj: 1, src ofs: 0x556dc, dst obj: 3, dst ofs: 0x25b30
   556e0:	e8 7e c8 01 00       	call   read_
   556e5:	8b 55 4a             	mov    edx,DWORD PTR [ebp+0x4a]
   556e8:	52                   	push   edx
   556e9:	68 2e ce 00 00       	push   @obj3:loadsave_cpp_variable_48                               ; fixup: num: 13369, src obj: 1, src ofs: 0x556ea, dst obj: 3, dst ofs: 0xce2e
   556ee:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13368, src obj: 1, src ofs: 0x556ef, dst obj: 3, dst ofs: 0x237fc
   556f3:	31 ff                	xor    edi,edi
   556f5:	e8 e7 b4 01 00       	call   sprintf_
   556fa:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   556fd:	83 c4 0c             	add    esp,0xc
   55700:	85 db                	test   ebx,ebx
   55702:	0f 8e 7a 01 00 00    	jle    load_game2_branch_82
   55708:	e9 c8 00 00 00       	jmp    load_game2_branch_78
load_game2_branch_77:
   5570d:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13367, src obj: 1, src ofs: 0x5570e, dst obj: 3, dst ofs: 0x1a1d4
   55712:	bb 04 00 00 00       	mov    ebx,0x4
   55717:	e8 84 62 fb ff       	call   update_mod_9
   5571c:	8d 51 14             	lea    edx,[ecx+0x14]
   5571f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13366, src obj: 1, src ofs: 0x55720, dst obj: 3, dst ofs: 0x25b30
   55724:	e8 3a c8 01 00       	call   read_
   55729:	bb 01 00 00 00       	mov    ebx,0x1
   5572e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13365, src obj: 1, src ofs: 0x5572f, dst obj: 3, dst ofs: 0x25b30
   55733:	8d 91 80 00 00 00    	lea    edx,[ecx+0x80]
   55739:	e8 25 c8 01 00       	call   read_
   5573e:	bb 01 00 00 00       	mov    ebx,0x1
   55743:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13364, src obj: 1, src ofs: 0x55744, dst obj: 3, dst ofs: 0x25b30
   55748:	8d 91 81 00 00 00    	lea    edx,[ecx+0x81]
   5574e:	e8 10 c8 01 00       	call   read_
   55753:	bb 01 00 00 00       	mov    ebx,0x1
   55758:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13363, src obj: 1, src ofs: 0x55759, dst obj: 3, dst ofs: 0x25b30
   5575d:	8d 91 84 00 00 00    	lea    edx,[ecx+0x84]
   55763:	e8 fb c7 01 00       	call   read_
   55768:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13362, src obj: 1, src ofs: 0x55769, dst obj: 3, dst ofs: 0x1a1d4
   5576d:	bb 04 00 00 00       	mov    ebx,0x4
   55772:	e8 29 62 fb ff       	call   update_mod_9
   55777:	8d 51 28             	lea    edx,[ecx+0x28]
   5577a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13380, src obj: 1, src ofs: 0x5577b, dst obj: 3, dst ofs: 0x25b30
   5577f:	e8 df c7 01 00       	call   read_
   55784:	bb 04 00 00 00       	mov    ebx,0x4
   55789:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13379, src obj: 1, src ofs: 0x5578a, dst obj: 3, dst ofs: 0x25b30
   5578e:	89 ca                	mov    edx,ecx
   55790:	e8 ce c7 01 00       	call   read_
   55795:	bb 04 00 00 00       	mov    ebx,0x4
   5579a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13378, src obj: 1, src ofs: 0x5579b, dst obj: 3, dst ofs: 0x25b30
   5579f:	8d 51 04             	lea    edx,[ecx+0x4]
   557a2:	e8 bc c7 01 00       	call   read_
   557a7:	bb 04 00 00 00       	mov    ebx,0x4
   557ac:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13377, src obj: 1, src ofs: 0x557ad, dst obj: 3, dst ofs: 0x25b30
   557b1:	8d 51 08             	lea    edx,[ecx+0x8]
   557b4:	e8 aa c7 01 00       	call   read_
   557b9:	bb 04 00 00 00       	mov    ebx,0x4
   557be:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13376, src obj: 1, src ofs: 0x557bf, dst obj: 3, dst ofs: 0x25b30
   557c3:	8d 51 24             	lea    edx,[ecx+0x24]
   557c6:	47                   	inc    edi
   557c7:	e8 97 c7 01 00       	call   read_
   557cc:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   557cf:	0f 8d ad 00 00 00    	jge    load_game2_branch_82
load_game2_branch_78:
   557d5:	bb 04 00 00 00       	mov    ebx,0x4
   557da:	8d 55 4e             	lea    edx,[ebp+0x4e]
   557dd:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13375, src obj: 1, src ofs: 0x557de, dst obj: 3, dst ofs: 0x25b30
   557e2:	e8 7c c7 01 00       	call   read_
   557e7:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   557ea:	e8 a4 bc 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   557ef:	89 c6                	mov    esi,eax
   557f1:	85 c0                	test   eax,eax
   557f3:	75 0f                	jne    load_game2_branch_79
   557f5:	bb 3a ce 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_49                           ; fixup: num: 13374, src obj: 1, src ofs: 0x557f6, dst obj: 3, dst ofs: 0xce3a
   557fa:	ba af 05 00 00       	mov    edx,0x5af
   557ff:	e8 2c 28 fe ff       	call   _error_report
load_game2_branch_79:
   55804:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55807:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13373, src obj: 1, src ofs: 0x55808, dst obj: 3, dst ofs: 0x25b30
   5580c:	89 f2                	mov    edx,esi
   5580e:	e8 50 c7 01 00       	call   read_
   55813:	8b 0d b4 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 13372, src obj: 1, src ofs: 0x55815, dst obj: 3, dst ofs: 0x25ab4
   55819:	85 c9                	test   ecx,ecx
   5581b:	74 18                	je     load_game2_branch_81
load_game2_branch_80:
   5581d:	89 f2                	mov    edx,esi
   5581f:	8b 41 34             	mov    eax,DWORD PTR [ecx+0x34]
   55822:	e8 09 0c 02 00       	call   strcmp_
   55827:	85 c0                	test   eax,eax
   55829:	74 0a                	je     load_game2_branch_81
   5582b:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
   55831:	85 c9                	test   ecx,ecx
   55833:	75 e8                	jne    load_game2_branch_80
load_game2_branch_81:
   55835:	89 f0                	mov    eax,esi
   55837:	e8 ac bb 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5583c:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5583f:	e8 9c 72 fe ff       	call   update_mod_76
   55844:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13269, src obj: 1, src ofs: 0x55845, dst obj: 3, dst ofs: 0x25a84
   55849:	e8 52 84 ff ff       	call   update_mod_84
   5584e:	85 c9                	test   ecx,ecx
   55850:	0f 85 b7 fe ff ff    	jne    load_game2_branch_77
   55856:	51                   	push   ecx
   55857:	68 52 ce 00 00       	push   @obj3:loadsave_cpp_variable_50                               ; fixup: num: 13268, src obj: 1, src ofs: 0x55858, dst obj: 3, dst ofs: 0xce52
   5585c:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   55862:	50                   	push   eax
   55863:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   55869:	e8 73 b3 01 00       	call   sprintf_
   5586e:	83 c4 0c             	add    esp,0xc
   55871:	ba be 05 00 00       	mov    edx,0x5be
   55876:	31 c0                	xor    eax,eax
   55878:	e8 b3 27 fe ff       	call   _error_report
   5587d:	e9 8b fe ff ff       	jmp    load_game2_branch_77
load_game2_branch_82:
   55882:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55885:	bb 04 00 00 00       	mov    ebx,0x4
   5588a:	e8 51 72 fe ff       	call   update_mod_76
   5588f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13267, src obj: 1, src ofs: 0x55890, dst obj: 3, dst ofs: 0x25a84
   55894:	8d 55 4a             	lea    edx,[ebp+0x4a]
   55897:	e8 04 84 ff ff       	call   update_mod_84
   5589c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13266, src obj: 1, src ofs: 0x5589d, dst obj: 3, dst ofs: 0x25b30
   558a1:	e8 bd c6 01 00       	call   read_
   558a6:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   558a9:	56                   	push   esi
   558aa:	68 74 ce 00 00       	push   @obj3:loadsave_cpp_variable_51                               ; fixup: num: 13265, src obj: 1, src ofs: 0x558ab, dst obj: 3, dst ofs: 0xce74
   558af:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13381, src obj: 1, src ofs: 0x558b0, dst obj: 3, dst ofs: 0x237fc
   558b4:	31 ff                	xor    edi,edi
   558b6:	e8 26 b3 01 00       	call   sprintf_
   558bb:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   558be:	83 c4 0c             	add    esp,0xc
   558c1:	85 c0                	test   eax,eax
   558c3:	0f 8e 08 01 00 00    	jle    load_game2_branch_88
   558c9:	eb 5c                	jmp    load_game2_branch_84
load_game2_branch_83:
   558cb:	bb 01 00 00 00       	mov    ebx,0x1
   558d0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13278, src obj: 1, src ofs: 0x558d1, dst obj: 3, dst ofs: 0x25b30
   558d5:	8d 51 25             	lea    edx,[ecx+0x25]
   558d8:	e8 86 c6 01 00       	call   read_
   558dd:	bb 01 00 00 00       	mov    ebx,0x1
   558e2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13277, src obj: 1, src ofs: 0x558e3, dst obj: 3, dst ofs: 0x25b30
   558e7:	8d 51 26             	lea    edx,[ecx+0x26]
   558ea:	e8 74 c6 01 00       	call   read_
   558ef:	bb 01 00 00 00       	mov    ebx,0x1
   558f4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13276, src obj: 1, src ofs: 0x558f5, dst obj: 3, dst ofs: 0x25b30
   558f9:	8d 51 24             	lea    edx,[ecx+0x24]
   558fc:	e8 62 c6 01 00       	call   read_
   55901:	bb 04 00 00 00       	mov    ebx,0x4
   55906:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13275, src obj: 1, src ofs: 0x55907, dst obj: 3, dst ofs: 0x25b30
   5590b:	8d 51 2c             	lea    edx,[ecx+0x2c]
   5590e:	e8 50 c6 01 00       	call   read_
   55913:	b8 d4 a1 01 00       	mov    eax,@obj3:music                                              ; fixup: num: 13274, src obj: 1, src ofs: 0x55914, dst obj: 3, dst ofs: 0x1a1d4
   55918:	47                   	inc    edi
   55919:	e8 82 60 fb ff       	call   update_mod_9
   5591e:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55921:	0f 8d aa 00 00 00    	jge    load_game2_branch_88
load_game2_branch_84:
   55927:	bb 04 00 00 00       	mov    ebx,0x4
   5592c:	8d 55 4e             	lea    edx,[ebp+0x4e]
   5592f:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13273, src obj: 1, src ofs: 0x55930, dst obj: 3, dst ofs: 0x25b30
   55934:	e8 2a c6 01 00       	call   read_
   55939:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   5593c:	e8 52 bb 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55941:	89 c6                	mov    esi,eax
   55943:	85 c0                	test   eax,eax
   55945:	75 0f                	jne    load_game2_branch_85
   55947:	bb 7c ce 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_52                           ; fixup: num: 13272, src obj: 1, src ofs: 0x55948, dst obj: 3, dst ofs: 0xce7c
   5594c:	ba d7 05 00 00       	mov    edx,0x5d7
   55951:	e8 da 26 fe ff       	call   _error_report
load_game2_branch_85:
   55956:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55959:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13271, src obj: 1, src ofs: 0x5595a, dst obj: 3, dst ofs: 0x25b30
   5595e:	89 f2                	mov    edx,esi
   55960:	e8 fe c5 01 00       	call   read_
   55965:	8b 0d b8 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:npc_list                              ; fixup: num: 13270, src obj: 1, src ofs: 0x55967, dst obj: 3, dst ofs: 0x25ab8
   5596b:	85 c9                	test   ecx,ecx
   5596d:	74 15                	je     load_game2_branch_87
load_game2_branch_86:
   5596f:	89 f2                	mov    edx,esi
   55971:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
   55974:	e8 b7 0a 02 00       	call   strcmp_
   55979:	85 c0                	test   eax,eax
   5597b:	74 07                	je     load_game2_branch_87
   5597d:	8b 49 38             	mov    ecx,DWORD PTR [ecx+0x38]
   55980:	85 c9                	test   ecx,ecx
   55982:	75 eb                	jne    load_game2_branch_86
load_game2_branch_87:
   55984:	89 f0                	mov    eax,esi
   55986:	e8 5d ba 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   5598b:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5598e:	e8 4d 71 fe ff       	call   update_mod_76
   55993:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13283, src obj: 1, src ofs: 0x55994, dst obj: 3, dst ofs: 0x25a84
   55998:	e8 03 83 ff ff       	call   update_mod_84
   5599d:	85 c9                	test   ecx,ecx
   5599f:	0f 85 26 ff ff ff    	jne    load_game2_branch_83
   559a5:	51                   	push   ecx
   559a6:	68 94 ce 00 00       	push   @obj3:loadsave_cpp_variable_53                               ; fixup: num: 13282, src obj: 1, src ofs: 0x559a7, dst obj: 3, dst ofs: 0xce94
   559ab:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   559b1:	50                   	push   eax
   559b2:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   559b8:	e8 24 b2 01 00       	call   sprintf_
   559bd:	83 c4 0c             	add    esp,0xc
   559c0:	ba e8 05 00 00       	mov    edx,0x5e8
   559c5:	31 c0                	xor    eax,eax
   559c7:	e8 64 26 fe ff       	call   _error_report
   559cc:	e9 fa fe ff ff       	jmp    load_game2_branch_83
load_game2_branch_88:
   559d1:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   559d4:	bb 04 00 00 00       	mov    ebx,0x4
   559d9:	e8 02 71 fe ff       	call   update_mod_76
   559de:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13281, src obj: 1, src ofs: 0x559df, dst obj: 3, dst ofs: 0x25a84
   559e3:	8d 55 4a             	lea    edx,[ebp+0x4a]
   559e6:	e8 b5 82 ff ff       	call   update_mod_84
   559eb:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13280, src obj: 1, src ofs: 0x559ec, dst obj: 3, dst ofs: 0x25b30
   559f0:	e8 6e c5 01 00       	call   read_
   559f5:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   559f8:	31 ff                	xor    edi,edi
   559fa:	85 db                	test   ebx,ebx
   559fc:	0f 8e ad 01 00 00    	jle    load_game2_branch_100
   55a02:	eb 6e                	jmp    load_game2_branch_93
load_game2_branch_89:
   55a04:	8b 1d c8 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:room_list                             ; fixup: num: 13279, src obj: 1, src ofs: 0x55a06, dst obj: 3, dst ofs: 0x25ac8
   55a0a:	85 db                	test   ebx,ebx
   55a0c:	74 1d                	je     load_game2_branch_92
load_game2_branch_90:
   55a0e:	89 f2                	mov    edx,esi
   55a10:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   55a13:	e8 18 0a 02 00       	call   strcmp_
   55a18:	85 c0                	test   eax,eax
   55a1a:	75 08                	jne    load_game2_branch_91
   55a1c:	8b 43 2c             	mov    eax,DWORD PTR [ebx+0x2c]
   55a1f:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   55a22:	eb 07                	jmp    load_game2_branch_92
load_game2_branch_91:
   55a24:	8b 5b 48             	mov    ebx,DWORD PTR [ebx+0x48]
   55a27:	85 db                	test   ebx,ebx
   55a29:	75 e3                	jne    load_game2_branch_90
load_game2_branch_92:
   55a2b:	89 f0                	mov    eax,esi
   55a2d:	e8 b6 b9 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55a32:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55a35:	bb 01 00 00 00       	mov    ebx,0x1
   55a3a:	e8 a1 70 fe ff       	call   update_mod_76
   55a3f:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13290, src obj: 1, src ofs: 0x55a40, dst obj: 3, dst ofs: 0x25a84
   55a44:	8d 51 4d             	lea    edx,[ecx+0x4d]
   55a47:	e8 54 82 ff ff       	call   update_mod_84
   55a4c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13289, src obj: 1, src ofs: 0x55a4d, dst obj: 3, dst ofs: 0x25b30
   55a51:	e8 0d c5 01 00       	call   read_
   55a56:	bb 01 00 00 00       	mov    ebx,0x1
   55a5b:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13288, src obj: 1, src ofs: 0x55a5c, dst obj: 3, dst ofs: 0x25b30
   55a60:	8d 51 4f             	lea    edx,[ecx+0x4f]
   55a63:	47                   	inc    edi
   55a64:	e8 fa c4 01 00       	call   read_
   55a69:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55a6c:	0f 8d 3d 01 00 00    	jge    load_game2_branch_100
load_game2_branch_93:
   55a72:	bb 04 00 00 00       	mov    ebx,0x4
   55a77:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55a7a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13287, src obj: 1, src ofs: 0x55a7b, dst obj: 3, dst ofs: 0x25b30
   55a7f:	e8 df c4 01 00       	call   read_
   55a84:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   55a87:	e8 07 ba 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55a8c:	89 c6                	mov    esi,eax
   55a8e:	85 c0                	test   eax,eax
   55a90:	75 0f                	jne    load_game2_branch_94
   55a92:	bb b2 ce 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_54                           ; fixup: num: 13286, src obj: 1, src ofs: 0x55a93, dst obj: 3, dst ofs: 0xceb2
   55a97:	ba fb 05 00 00       	mov    edx,0x5fb
   55a9c:	e8 8f 25 fe ff       	call   _error_report
load_game2_branch_94:
   55aa1:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55aa4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13285, src obj: 1, src ofs: 0x55aa5, dst obj: 3, dst ofs: 0x25b30
   55aa9:	89 f2                	mov    edx,esi
   55aab:	e8 b3 c4 01 00       	call   read_
   55ab0:	8b 0d bc 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:object_list                           ; fixup: num: 13284, src obj: 1, src ofs: 0x55ab2, dst obj: 3, dst ofs: 0x25abc
   55ab6:	85 c9                	test   ecx,ecx
   55ab8:	74 1b                	je     load_game2_branch_97
   55aba:	31 db                	xor    ebx,ebx
load_game2_branch_95:
   55abc:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
   55abf:	39 c3                	cmp    ebx,eax
   55ac1:	74 0b                	je     load_game2_branch_96
   55ac3:	89 f2                	mov    edx,esi
   55ac5:	e8 66 09 02 00       	call   strcmp_
   55aca:	85 c0                	test   eax,eax
   55acc:	74 07                	je     load_game2_branch_97
load_game2_branch_96:
   55ace:	8b 49 54             	mov    ecx,DWORD PTR [ecx+0x54]
   55ad1:	85 c9                	test   ecx,ecx
   55ad3:	75 e7                	jne    load_game2_branch_95
load_game2_branch_97:
   55ad5:	85 c9                	test   ecx,ecx
   55ad7:	75 27                	jne    load_game2_branch_98
   55ad9:	56                   	push   esi
   55ada:	68 ca ce 00 00       	push   @obj3:loadsave_cpp_variable_55                               ; fixup: num: 13297, src obj: 1, src ofs: 0x55adb, dst obj: 3, dst ofs: 0xceca
   55adf:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   55ae5:	50                   	push   eax
   55ae6:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   55aec:	e8 f0 b0 01 00       	call   sprintf_
   55af1:	83 c4 0c             	add    esp,0xc
   55af4:	ba 0a 06 00 00       	mov    edx,0x60a
   55af9:	31 c0                	xor    eax,eax
   55afb:	e8 30 25 fe ff       	call   _error_report
load_game2_branch_98:
   55b00:	89 f0                	mov    eax,esi
   55b02:	e8 e1 b8 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55b07:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55b0a:	bb 04 00 00 00       	mov    ebx,0x4
   55b0f:	e8 cc 6f fe ff       	call   update_mod_76
   55b14:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13296, src obj: 1, src ofs: 0x55b15, dst obj: 3, dst ofs: 0x25a84
   55b19:	8d 51 0c             	lea    edx,[ecx+0xc]
   55b1c:	e8 7f 81 ff ff       	call   update_mod_84
   55b21:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13295, src obj: 1, src ofs: 0x55b22, dst obj: 3, dst ofs: 0x25b30
   55b26:	e8 38 c4 01 00       	call   read_
   55b2b:	bb 04 00 00 00       	mov    ebx,0x4
   55b30:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13294, src obj: 1, src ofs: 0x55b31, dst obj: 3, dst ofs: 0x25b30
   55b35:	8d 51 10             	lea    edx,[ecx+0x10]
   55b38:	e8 26 c4 01 00       	call   read_
   55b3d:	bb 04 00 00 00       	mov    ebx,0x4
   55b42:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13293, src obj: 1, src ofs: 0x55b43, dst obj: 3, dst ofs: 0x25b30
   55b47:	8d 51 14             	lea    edx,[ecx+0x14]
   55b4a:	e8 14 c4 01 00       	call   read_
   55b4f:	bb 04 00 00 00       	mov    ebx,0x4
   55b54:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55b57:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13292, src obj: 1, src ofs: 0x55b58, dst obj: 3, dst ofs: 0x25b30
   55b5c:	e8 02 c4 01 00       	call   read_
   55b61:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   55b64:	e8 2a b9 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55b69:	89 c6                	mov    esi,eax
   55b6b:	85 c0                	test   eax,eax
   55b6d:	75 0f                	jne    load_game2_branch_99
   55b6f:	bb eb ce 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_56                           ; fixup: num: 13291, src obj: 1, src ofs: 0x55b70, dst obj: 3, dst ofs: 0xceeb
   55b74:	ba 17 06 00 00       	mov    edx,0x617
   55b79:	e8 b2 24 fe ff       	call   _error_report
load_game2_branch_99:
   55b7e:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55b81:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13305, src obj: 1, src ofs: 0x55b82, dst obj: 3, dst ofs: 0x25b30
   55b86:	89 f2                	mov    edx,esi
   55b88:	e8 d6 c3 01 00       	call   read_
   55b8d:	8b 15 2c 41 01 00    	mov    edx,DWORD PTR ds:@obj3:INVENTORY_ROOM                        ; fixup: num: 13304, src obj: 1, src ofs: 0x55b8f, dst obj: 3, dst ofs: 0x1412c
   55b93:	89 f0                	mov    eax,esi
   55b95:	e8 96 08 02 00       	call   strcmp_
   55b9a:	85 c0                	test   eax,eax
   55b9c:	0f 85 62 fe ff ff    	jne    load_game2_branch_89
   55ba2:	a1 2c 41 01 00       	mov    eax,ds:@obj3:INVENTORY_ROOM                                  ; fixup: num: 13303, src obj: 1, src ofs: 0x55ba3, dst obj: 3, dst ofs: 0x1412c
   55ba7:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
   55baa:	e9 7c fe ff ff       	jmp    load_game2_branch_92
load_game2_branch_100:
   55baf:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55bb2:	bb 04 00 00 00       	mov    ebx,0x4
   55bb7:	e8 24 6f fe ff       	call   update_mod_76
   55bbc:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13302, src obj: 1, src ofs: 0x55bbd, dst obj: 3, dst ofs: 0x25a84
   55bc1:	8d 55 4a             	lea    edx,[ebp+0x4a]
   55bc4:	e8 d7 80 ff ff       	call   update_mod_84
   55bc9:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13301, src obj: 1, src ofs: 0x55bca, dst obj: 3, dst ofs: 0x25b30
   55bce:	e8 90 c3 01 00       	call   read_
   55bd3:	8b 5d 4a             	mov    ebx,DWORD PTR [ebp+0x4a]
   55bd6:	31 ff                	xor    edi,edi
   55bd8:	85 db                	test   ebx,ebx
   55bda:	0f 8e c8 00 00 00    	jle    load_game2_branch_106
   55be0:	eb 1c                	jmp    load_game2_branch_102
load_game2_branch_101:
   55be2:	bb 01 00 00 00       	mov    ebx,0x1
   55be7:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13300, src obj: 1, src ofs: 0x55be8, dst obj: 3, dst ofs: 0x25b30
   55bec:	8d 51 28             	lea    edx,[ecx+0x28]
   55bef:	e8 6f c3 01 00       	call   read_
   55bf4:	47                   	inc    edi
   55bf5:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55bf8:	0f 8d aa 00 00 00    	jge    load_game2_branch_106
load_game2_branch_102:
   55bfe:	bb 04 00 00 00       	mov    ebx,0x4
   55c03:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55c06:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13299, src obj: 1, src ofs: 0x55c07, dst obj: 3, dst ofs: 0x25b30
   55c0b:	e8 53 c3 01 00       	call   read_
   55c10:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   55c13:	e8 7b b8 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55c18:	89 c6                	mov    esi,eax
   55c1a:	85 c0                	test   eax,eax
   55c1c:	75 0f                	jne    load_game2_branch_103
   55c1e:	bb 03 cf 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_57                           ; fixup: num: 13298, src obj: 1, src ofs: 0x55c1f, dst obj: 3, dst ofs: 0xcf03
   55c23:	ba 3b 06 00 00       	mov    edx,0x63b
   55c28:	e8 03 24 fe ff       	call   _error_report
load_game2_branch_103:
   55c2d:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55c30:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13313, src obj: 1, src ofs: 0x55c31, dst obj: 3, dst ofs: 0x25b30
   55c35:	89 f2                	mov    edx,esi
   55c37:	e8 27 c3 01 00       	call   read_
   55c3c:	8b 0d c0 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:region_list                           ; fixup: num: 13312, src obj: 1, src ofs: 0x55c3e, dst obj: 3, dst ofs: 0x25ac0
   55c42:	85 c9                	test   ecx,ecx
   55c44:	74 15                	je     load_game2_branch_105
load_game2_branch_104:
   55c46:	89 f2                	mov    edx,esi
   55c48:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
   55c4b:	e8 e0 07 02 00       	call   strcmp_
   55c50:	85 c0                	test   eax,eax
   55c52:	74 07                	je     load_game2_branch_105
   55c54:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
   55c57:	85 c9                	test   ecx,ecx
   55c59:	75 eb                	jne    load_game2_branch_104
load_game2_branch_105:
   55c5b:	89 f0                	mov    eax,esi
   55c5d:	e8 86 b7 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55c62:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55c65:	e8 76 6e fe ff       	call   update_mod_76
   55c6a:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13311, src obj: 1, src ofs: 0x55c6b, dst obj: 3, dst ofs: 0x25a84
   55c6f:	e8 2c 80 ff ff       	call   update_mod_84
   55c74:	85 c9                	test   ecx,ecx
   55c76:	0f 85 66 ff ff ff    	jne    load_game2_branch_101
   55c7c:	51                   	push   ecx
   55c7d:	68 1b cf 00 00       	push   @obj3:loadsave_cpp_variable_58                               ; fixup: num: 13310, src obj: 1, src ofs: 0x55c7e, dst obj: 3, dst ofs: 0xcf1b
   55c82:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   55c88:	50                   	push   eax
   55c89:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   55c8f:	e8 4d af 01 00       	call   sprintf_
   55c94:	83 c4 0c             	add    esp,0xc
   55c97:	ba 4d 06 00 00       	mov    edx,0x64d
   55c9c:	31 c0                	xor    eax,eax
   55c9e:	e8 8d 23 fe ff       	call   _error_report
   55ca3:	e9 3a ff ff ff       	jmp    load_game2_branch_101
load_game2_branch_106:
   55ca8:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55cab:	bb 04 00 00 00       	mov    ebx,0x4
   55cb0:	e8 2b 6e fe ff       	call   update_mod_76
   55cb5:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13309, src obj: 1, src ofs: 0x55cb6, dst obj: 3, dst ofs: 0x25a84
   55cba:	8d 55 4a             	lea    edx,[ebp+0x4a]
   55cbd:	e8 de 7f ff ff       	call   update_mod_84
   55cc2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13308, src obj: 1, src ofs: 0x55cc3, dst obj: 3, dst ofs: 0x25b30
   55cc7:	e8 97 c2 01 00       	call   read_
   55ccc:	8b 75 4a             	mov    esi,DWORD PTR [ebp+0x4a]
   55ccf:	56                   	push   esi
   55cd0:	68 3c cf 00 00       	push   @obj3:loadsave_cpp_variable_59                               ; fixup: num: 13307, src obj: 1, src ofs: 0x55cd1, dst obj: 3, dst ofs: 0xcf3c
   55cd5:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13306, src obj: 1, src ofs: 0x55cd6, dst obj: 3, dst ofs: 0x237fc
   55cda:	31 ff                	xor    edi,edi
   55cdc:	e8 00 af 01 00       	call   sprintf_
   55ce1:	8b 45 4a             	mov    eax,DWORD PTR [ebp+0x4a]
   55ce4:	83 c4 0c             	add    esp,0xc
   55ce7:	85 c0                	test   eax,eax
   55ce9:	0f 8e da 00 00 00    	jle    load_game2_branch_112
   55cef:	eb 2e                	jmp    load_game2_branch_108
load_game2_branch_107:
   55cf1:	bb 01 00 00 00       	mov    ebx,0x1
   55cf6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13319, src obj: 1, src ofs: 0x55cf7, dst obj: 3, dst ofs: 0x25b30
   55cfb:	8d 51 14             	lea    edx,[ecx+0x14]
   55cfe:	e8 60 c2 01 00       	call   read_
   55d03:	bb 04 00 00 00       	mov    ebx,0x4
   55d08:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13318, src obj: 1, src ofs: 0x55d09, dst obj: 3, dst ofs: 0x25b30
   55d0d:	8d 51 04             	lea    edx,[ecx+0x4]
   55d10:	47                   	inc    edi
   55d11:	e8 4d c2 01 00       	call   read_
   55d16:	3b 7d 4a             	cmp    edi,DWORD PTR [ebp+0x4a]
   55d19:	0f 8d aa 00 00 00    	jge    load_game2_branch_112
load_game2_branch_108:
   55d1f:	bb 04 00 00 00       	mov    ebx,0x4
   55d24:	8d 55 4e             	lea    edx,[ebp+0x4e]
   55d27:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13317, src obj: 1, src ofs: 0x55d28, dst obj: 3, dst ofs: 0x25b30
   55d2c:	e8 32 c2 01 00       	call   read_
   55d31:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   55d34:	e8 5a b7 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   55d39:	89 c6                	mov    esi,eax
   55d3b:	85 c0                	test   eax,eax
   55d3d:	75 0f                	jne    load_game2_branch_109
   55d3f:	bb 46 cf 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_60                           ; fixup: num: 13316, src obj: 1, src ofs: 0x55d40, dst obj: 3, dst ofs: 0xcf46
   55d44:	ba 61 06 00 00       	mov    edx,0x661
   55d49:	e8 e2 22 fe ff       	call   _error_report
load_game2_branch_109:
   55d4e:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   55d51:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13315, src obj: 1, src ofs: 0x55d52, dst obj: 3, dst ofs: 0x25b30
   55d56:	89 f2                	mov    edx,esi
   55d58:	e8 06 c2 01 00       	call   read_
   55d5d:	8b 0d d0 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:timer_list                            ; fixup: num: 13314, src obj: 1, src ofs: 0x55d5f, dst obj: 3, dst ofs: 0x25ad0
   55d63:	85 c9                	test   ecx,ecx
   55d65:	74 15                	je     load_game2_branch_111
load_game2_branch_110:
   55d67:	89 f2                	mov    edx,esi
   55d69:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
   55d6c:	e8 bf 06 02 00       	call   strcmp_
   55d71:	85 c0                	test   eax,eax
   55d73:	74 07                	je     load_game2_branch_111
   55d75:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
   55d78:	85 c9                	test   ecx,ecx
   55d7a:	75 eb                	jne    load_game2_branch_110
load_game2_branch_111:
   55d7c:	89 f0                	mov    eax,esi
   55d7e:	e8 65 b6 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   55d83:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55d86:	e8 55 6d fe ff       	call   update_mod_76
   55d8b:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13222, src obj: 1, src ofs: 0x55d8c, dst obj: 3, dst ofs: 0x25a84
   55d90:	e8 0b 7f ff ff       	call   update_mod_84
   55d95:	85 c9                	test   ecx,ecx
   55d97:	0f 85 54 ff ff ff    	jne    load_game2_branch_107
   55d9d:	51                   	push   ecx
   55d9e:	68 5e cf 00 00       	push   @obj3:loadsave_cpp_variable_61                               ; fixup: num: 13221, src obj: 1, src ofs: 0x55d9f, dst obj: 3, dst ofs: 0xcf5e
   55da3:	8d 85 02 ff ff ff    	lea    eax,[ebp-0xfe]
   55da9:	50                   	push   eax
   55daa:	8d 9d 02 ff ff ff    	lea    ebx,[ebp-0xfe]
   55db0:	e8 2c ae 01 00       	call   sprintf_
   55db5:	83 c4 0c             	add    esp,0xc
   55db8:	ba 7a 06 00 00       	mov    edx,0x67a
   55dbd:	31 c0                	xor    eax,eax
   55dbf:	e8 6c 22 fe ff       	call   _error_report
   55dc4:	e9 28 ff ff ff       	jmp    load_game2_branch_107
load_game2_branch_112:
   55dc9:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55dcc:	e8 0f 6d fe ff       	call   update_mod_76
   55dd1:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13220, src obj: 1, src ofs: 0x55dd2, dst obj: 3, dst ofs: 0x25a84
   55dd6:	e8 c5 7e ff ff       	call   update_mod_84
   55ddb:	8b 1d d4 5b 02 00    	mov    ebx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 13219, src obj: 1, src ofs: 0x55ddd, dst obj: 3, dst ofs: 0x25bd4
   55de1:	8b 4d 5a             	mov    ecx,DWORD PTR [ebp+0x5a]
   55de4:	3b 8b bc 11 00 00    	cmp    ecx,DWORD PTR [ebx+0x11bc]
   55dea:	74 09                	je     load_game2_branch_113
   55dec:	89 ca                	mov    edx,ecx
   55dee:	89 d8                	mov    eax,ebx
   55df0:	e8 1b fe fe ff       	call   change_weapon
load_game2_branch_113:
   55df5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13218, src obj: 1, src ofs: 0x55df6, dst obj: 3, dst ofs: 0x25a88
   55dfa:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 13217, src obj: 1, src ofs: 0x55dfc, dst obj: 3, dst ofs: 0x25bd4
   55e00:	e8 eb 68 ff ff       	call   remove_bitmap
   55e05:	8b 45 5a             	mov    eax,DWORD PTR [ebp+0x5a]
   55e08:	8b 34 85 b4 3e 01 00 	mov    esi,DWORD PTR [eax*4+@obj3:pc_list]                          ; fixup: num: 13323, src obj: 1, src ofs: 0x55e0b, dst obj: 3, dst ofs: 0x13eb4
   55e0f:	56                   	push   esi
   55e10:	50                   	push   eax
   55e11:	68 7e cf 00 00       	push   @obj3:loadsave_cpp_variable_62                               ; fixup: num: 13322, src obj: 1, src ofs: 0x55e12, dst obj: 3, dst ofs: 0xcf7e
   55e16:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13321, src obj: 1, src ofs: 0x55e17, dst obj: 3, dst ofs: 0x237fc
   55e1b:	e8 c1 ad 01 00       	call   sprintf_
   55e20:	83 c4 10             	add    esp,0x10
   55e23:	6a 00                	push   0x0
   55e25:	31 db                	xor    ebx,ebx
   55e27:	31 d2                	xor    edx,edx
   55e29:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 13320, src obj: 1, src ofs: 0x55e2a, dst obj: 3, dst ofs: 0x25bd4
   55e2e:	e8 bd 58 fe ff       	call   set_xyz
   55e33:	8b 15 d4 5b 02 00    	mov    edx,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 13236, src obj: 1, src ofs: 0x55e35, dst obj: 3, dst ofs: 0x25bd4
   55e39:	8b 45 52             	mov    eax,DWORD PTR [ebp+0x52]
   55e3c:	89 82 9c 11 00 00    	mov    DWORD PTR [edx+0x119c],eax
   55e42:	8b 45 56             	mov    eax,DWORD PTR [ebp+0x56]
   55e45:	89 82 84 11 00 00    	mov    DWORD PTR [edx+0x1184],eax
   55e4b:	8a 45 7a             	mov    al,BYTE PTR [ebp+0x7a]
   55e4e:	88 82 a0 11 00 00    	mov    BYTE PTR [edx+0x11a0],al
   55e54:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55e57:	bb 28 00 00 00       	mov    ebx,0x28
   55e5c:	e8 7f 6c fe ff       	call   update_mod_76
   55e61:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13235, src obj: 1, src ofs: 0x55e62, dst obj: 3, dst ofs: 0x25a84
   55e66:	ba 4c 2d 02 00       	mov    edx,@obj3:SERGEANT_AT_ARMS                                   ; fixup: num: 13234, src obj: 1, src ofs: 0x55e67, dst obj: 3, dst ofs: 0x22d4c
   55e6b:	e8 30 7e ff ff       	call   update_mod_84
   55e70:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13233, src obj: 1, src ofs: 0x55e71, dst obj: 3, dst ofs: 0x25b30
   55e75:	e8 e9 c0 01 00       	call   read_
   55e7a:	bb 18 00 00 00       	mov    ebx,0x18
   55e7f:	ba b8 2c 02 00       	mov    edx,@obj3:POSTMASTER_BOYLE                                   ; fixup: num: 13232, src obj: 1, src ofs: 0x55e80, dst obj: 3, dst ofs: 0x22cb8
   55e84:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13231, src obj: 1, src ofs: 0x55e85, dst obj: 3, dst ofs: 0x25b30
   55e89:	e8 d5 c0 01 00       	call   read_
   55e8e:	bb 68 00 00 00       	mov    ebx,0x68
   55e93:	ba 88 2f 02 00       	mov    edx,@obj3:SHERIFF_DWAYNE                                     ; fixup: num: 13230, src obj: 1, src ofs: 0x55e94, dst obj: 3, dst ofs: 0x22f88
   55e98:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13229, src obj: 1, src ofs: 0x55e99, dst obj: 3, dst ofs: 0x25b30
   55e9d:	e8 c1 c0 01 00       	call   read_
   55ea2:	bb 10 00 00 00       	mov    ebx,0x10
   55ea7:	ba 14 2e 02 00       	mov    edx,@obj3:DEPUTY_LOOMIS                                      ; fixup: num: 13228, src obj: 1, src ofs: 0x55ea8, dst obj: 3, dst ofs: 0x22e14
   55eac:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13227, src obj: 1, src ofs: 0x55ead, dst obj: 3, dst ofs: 0x25b30
   55eb1:	e8 ad c0 01 00       	call   read_
   55eb6:	bb 58 00 00 00       	mov    ebx,0x58
   55ebb:	ba 74 2d 02 00       	mov    edx,@obj3:MOM                                                ; fixup: num: 13226, src obj: 1, src ofs: 0x55ebc, dst obj: 3, dst ofs: 0x22d74
   55ec0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13225, src obj: 1, src ofs: 0x55ec1, dst obj: 3, dst ofs: 0x25b30
   55ec5:	e8 99 c0 01 00       	call   read_
   55eca:	bb 2c 00 00 00       	mov    ebx,0x2c
   55ecf:	ba e8 2d 02 00       	mov    edx,@obj3:HANK                                               ; fixup: num: 13224, src obj: 1, src ofs: 0x55ed0, dst obj: 3, dst ofs: 0x22de8
   55ed4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13223, src obj: 1, src ofs: 0x55ed5, dst obj: 3, dst ofs: 0x25b30
   55ed9:	e8 85 c0 01 00       	call   read_
   55ede:	bb 04 00 00 00       	mov    ebx,0x4
   55ee3:	ba 94 2c 02 00       	mov    edx,@obj3:DAD                                                ; fixup: num: 13253, src obj: 1, src ofs: 0x55ee4, dst obj: 3, dst ofs: 0x22c94
   55ee8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13252, src obj: 1, src ofs: 0x55ee9, dst obj: 3, dst ofs: 0x25b30
   55eed:	e8 71 c0 01 00       	call   read_
   55ef2:	bb 4c 00 00 00       	mov    ebx,0x4c
   55ef7:	ba f4 2a 02 00       	mov    edx,@obj3:MR_POTTSDAM                                        ; fixup: num: 13251, src obj: 1, src ofs: 0x55ef8, dst obj: 3, dst ofs: 0x22af4
   55efc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13250, src obj: 1, src ofs: 0x55efd, dst obj: 3, dst ofs: 0x25b30
   55f01:	e8 5d c0 01 00       	call   read_
   55f06:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55f09:	bb 24 00 00 00       	mov    ebx,0x24
   55f0e:	e8 cd 6b fe ff       	call   update_mod_76
   55f13:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13249, src obj: 1, src ofs: 0x55f14, dst obj: 3, dst ofs: 0x25a84
   55f18:	ba 24 2d 02 00       	mov    edx,@obj3:MRS_POTTSDAM                                       ; fixup: num: 13248, src obj: 1, src ofs: 0x55f19, dst obj: 3, dst ofs: 0x22d24
   55f1d:	e8 7e 7d ff ff       	call   update_mod_84
   55f22:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13247, src obj: 1, src ofs: 0x55f23, dst obj: 3, dst ofs: 0x25b30
   55f27:	e8 37 c0 01 00       	call   read_
   55f2c:	bb 4c 00 00 00       	mov    ebx,0x4c
   55f31:	ba 4c 2e 02 00       	mov    edx,@obj3:STEPHANIE                                          ; fixup: num: 13246, src obj: 1, src ofs: 0x55f32, dst obj: 3, dst ofs: 0x22e4c
   55f36:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13245, src obj: 1, src ofs: 0x55f37, dst obj: 3, dst ofs: 0x25b30
   55f3b:	e8 23 c0 01 00       	call   read_
   55f40:	bb 30 00 00 00       	mov    ebx,0x30
   55f45:	ba f4 2b 02 00       	mov    edx,@obj3:MR_JOHNSON                                         ; fixup: num: 13244, src obj: 1, src ofs: 0x55f46, dst obj: 3, dst ofs: 0x22bf4
   55f4a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13243, src obj: 1, src ofs: 0x55f4b, dst obj: 3, dst ofs: 0x25b30
   55f4f:	e8 0f c0 01 00       	call   read_
   55f54:	bb 3c 00 00 00       	mov    ebx,0x3c
   55f59:	ba b8 2a 02 00       	mov    edx,@obj3:MR_MOYNAHAN                                        ; fixup: num: 13242, src obj: 1, src ofs: 0x55f5a, dst obj: 3, dst ofs: 0x22ab8
   55f5e:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13241, src obj: 1, src ofs: 0x55f5f, dst obj: 3, dst ofs: 0x25b30
   55f63:	e8 fb bf 01 00       	call   read_
   55f68:	bb 18 00 00 00       	mov    ebx,0x18
   55f6d:	ba 30 2c 02 00       	mov    edx,@obj3:MR_PETE_SWELL                                      ; fixup: num: 13240, src obj: 1, src ofs: 0x55f6e, dst obj: 3, dst ofs: 0x22c30
   55f72:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13239, src obj: 1, src ofs: 0x55f73, dst obj: 3, dst ofs: 0x25b30
   55f77:	e8 e7 bf 01 00       	call   read_
   55f7c:	bb 1c 00 00 00       	mov    ebx,0x1c
   55f81:	ba 68 2f 02 00       	mov    edx,@obj3:MR_CLEM_PARSONS                                    ; fixup: num: 13238, src obj: 1, src ofs: 0x55f82, dst obj: 3, dst ofs: 0x22f68
   55f86:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13237, src obj: 1, src ofs: 0x55f87, dst obj: 3, dst ofs: 0x25b30
   55f8b:	e8 d3 bf 01 00       	call   read_
   55f90:	bb 0c 00 00 00       	mov    ebx,0xc
   55f95:	ba ac 2c 02 00       	mov    edx,@obj3:MR_MCKNIGHT                                        ; fixup: num: 13264, src obj: 1, src ofs: 0x55f96, dst obj: 3, dst ofs: 0x22cac
   55f9a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13263, src obj: 1, src ofs: 0x55f9b, dst obj: 3, dst ofs: 0x25b30
   55f9f:	e8 bf bf 01 00       	call   read_
   55fa4:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   55fa7:	bb 0c 00 00 00       	mov    ebx,0xc
   55fac:	e8 2f 6b fe ff       	call   update_mod_76
   55fb1:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13262, src obj: 1, src ofs: 0x55fb2, dst obj: 3, dst ofs: 0x25a84
   55fb6:	ba 24 2c 02 00       	mov    edx,@obj3:JIMMY_JAMES                                        ; fixup: num: 13261, src obj: 1, src ofs: 0x55fb7, dst obj: 3, dst ofs: 0x22c24
   55fbb:	e8 e0 7c ff ff       	call   update_mod_84
   55fc0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13260, src obj: 1, src ofs: 0x55fc1, dst obj: 3, dst ofs: 0x25b30
   55fc5:	e8 99 bf 01 00       	call   read_
   55fca:	bb 28 00 00 00       	mov    ebx,0x28
   55fcf:	ba 24 2e 02 00       	mov    edx,@obj3:EDNA_FITZPATRICK                                   ; fixup: num: 13259, src obj: 1, src ofs: 0x55fd0, dst obj: 3, dst ofs: 0x22e24
   55fd4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13258, src obj: 1, src ofs: 0x55fd5, dst obj: 3, dst ofs: 0x25b30
   55fd9:	e8 85 bf 01 00       	call   read_
   55fde:	bb 1c 00 00 00       	mov    ebx,0x1c
   55fe3:	ba 9c 2a 02 00       	mov    edx,@obj3:MISS_WHALEY                                        ; fixup: num: 13257, src obj: 1, src ofs: 0x55fe4, dst obj: 3, dst ofs: 0x22a9c
   55fe8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13256, src obj: 1, src ofs: 0x55fe9, dst obj: 3, dst ofs: 0x25b30
   55fed:	e8 71 bf 01 00       	call   read_
   55ff2:	bb 3c 00 00 00       	mov    ebx,0x3c
   55ff7:	ba 48 2c 02 00       	mov    edx,@obj3:MRS_PHELPS                                         ; fixup: num: 13255, src obj: 1, src ofs: 0x55ff8, dst obj: 3, dst ofs: 0x22c48
   55ffc:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13254, src obj: 1, src ofs: 0x55ffd, dst obj: 3, dst ofs: 0x25b30; fixup: num: 13659, src obj: 1, src ofs: 0x55ffd, dst obj: 3, dst ofs: 0x25b30
   56001:	e8 5d bf 01 00       	call   read_
   56006:	bb 38 00 00 00       	mov    ebx,0x38
   5600b:	ba dc 2c 02 00       	mov    edx,@obj3:PRINCIPAL_HERRILL                                  ; fixup: num: 13658, src obj: 1, src ofs: 0x5600c, dst obj: 3, dst ofs: 0x22cdc
   56010:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13657, src obj: 1, src ofs: 0x56011, dst obj: 3, dst ofs: 0x25b30
   56015:	e8 49 bf 01 00       	call   read_
   5601a:	bb 04 00 00 00       	mov    ebx,0x4
   5601f:	ba 48 2d 02 00       	mov    edx,@obj3:THE_WASP_WOMAN                                     ; fixup: num: 13656, src obj: 1, src ofs: 0x56020, dst obj: 3, dst ofs: 0x22d48
   56024:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13655, src obj: 1, src ofs: 0x56025, dst obj: 3, dst ofs: 0x25b30
   56029:	e8 35 bf 01 00       	call   read_
   5602e:	bb 20 00 00 00       	mov    ebx,0x20
   56033:	ba 40 2f 02 00       	mov    edx,@obj3:FIREMAN_SPARKY                                     ; fixup: num: 13654, src obj: 1, src ofs: 0x56034, dst obj: 3, dst ofs: 0x22f40
   56038:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13653, src obj: 1, src ofs: 0x56039, dst obj: 3, dst ofs: 0x25b30
   5603d:	e8 21 bf 01 00       	call   read_
   56042:	bb 0c 00 00 00       	mov    ebx,0xc
   56047:	ba d0 2d 02 00       	mov    edx,@obj3:FIRST_FIREMAN                                      ; fixup: num: 13675, src obj: 1, src ofs: 0x56048, dst obj: 3, dst ofs: 0x22dd0
   5604c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13674, src obj: 1, src ofs: 0x5604d, dst obj: 3, dst ofs: 0x25b30
   56051:	e8 0d bf 01 00       	call   read_
   56056:	bb 0c 00 00 00       	mov    ebx,0xc
   5605b:	ba dc 2d 02 00       	mov    edx,@obj3:SECOND_FIREMAN                                     ; fixup: num: 13673, src obj: 1, src ofs: 0x5605c, dst obj: 3, dst ofs: 0x22ddc
   56060:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13672, src obj: 1, src ofs: 0x56061, dst obj: 3, dst ofs: 0x25b30
   56065:	e8 f9 be 01 00       	call   read_
   5606a:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5606d:	bb 0c 00 00 00       	mov    ebx,0xc
   56072:	e8 69 6a fe ff       	call   update_mod_76
   56077:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13671, src obj: 1, src ofs: 0x56078, dst obj: 3, dst ofs: 0x25a84
   5607c:	ba 14 2d 02 00       	mov    edx,@obj3:KARIN                                              ; fixup: num: 13670, src obj: 1, src ofs: 0x5607d, dst obj: 3, dst ofs: 0x22d14
   56081:	e8 1a 7c ff ff       	call   update_mod_84
   56086:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13669, src obj: 1, src ofs: 0x56087, dst obj: 3, dst ofs: 0x25b30
   5608b:	e8 d3 be 01 00       	call   read_
   56090:	bb 08 00 00 00       	mov    ebx,0x8
   56095:	ba d0 2c 02 00       	mov    edx,@obj3:NUDE_MAN                                           ; fixup: num: 13668, src obj: 1, src ofs: 0x56096, dst obj: 3, dst ofs: 0x22cd0
   5609a:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13667, src obj: 1, src ofs: 0x5609b, dst obj: 3, dst ofs: 0x25b30
   5609f:	e8 bf be 01 00       	call   read_
   560a4:	bb 0c 00 00 00       	mov    ebx,0xc
   560a9:	ba 84 2c 02 00       	mov    edx,@obj3:PAT_O_REILLY_BUTCHE                                ; fixup: num: 13666, src obj: 1, src ofs: 0x560aa, dst obj: 3, dst ofs: 0x22c84
   560ae:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13665, src obj: 1, src ofs: 0x560af, dst obj: 3, dst ofs: 0x25b30
   560b3:	e8 ab be 01 00       	call   read_
   560b8:	bb 0c 00 00 00       	mov    ebx,0xc
   560bd:	ba 34 2f 02 00       	mov    edx,@obj3:RANGE_RYDER                                        ; fixup: num: 13664, src obj: 1, src ofs: 0x560be, dst obj: 3, dst ofs: 0x22f34
   560c2:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13663, src obj: 1, src ofs: 0x560c3, dst obj: 3, dst ofs: 0x25b30
   560c7:	e8 97 be 01 00       	call   read_
   560cc:	bb 10 00 00 00       	mov    ebx,0x10
   560d1:	ba 9c 2c 02 00       	mov    edx,@obj3:COLONEL_BUSTER_MONRO                               ; fixup: num: 13662, src obj: 1, src ofs: 0x560d2, dst obj: 3, dst ofs: 0x22c9c
   560d6:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13661, src obj: 1, src ofs: 0x560d7, dst obj: 3, dst ofs: 0x25b30
   560db:	e8 83 be 01 00       	call   read_
   560e0:	bb 04 00 00 00       	mov    ebx,0x4
   560e5:	ba cc 2d 02 00       	mov    edx,@obj3:DARK_WOMAN                                         ; fixup: num: 13660, src obj: 1, src ofs: 0x560e6, dst obj: 3, dst ofs: 0x22dcc
   560ea:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13691, src obj: 1, src ofs: 0x560eb, dst obj: 3, dst ofs: 0x25b30
   560ef:	e8 6f be 01 00       	call   read_
   560f4:	bb 08 00 00 00       	mov    ebx,0x8
   560f9:	ba 60 2f 02 00       	mov    edx,@obj3:MEMBERSHIP_DIRECTOR                                ; fixup: num: 13690, src obj: 1, src ofs: 0x560fa, dst obj: 3, dst ofs: 0x22f60
   560fe:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13689, src obj: 1, src ofs: 0x560ff, dst obj: 3, dst ofs: 0x25b30
   56103:	e8 5b be 01 00       	call   read_
   56108:	bb 04 00 00 00       	mov    ebx,0x4
   5610d:	ba 98 2c 02 00       	mov    edx,@obj3:MOTHER                                             ; fixup: num: 13688, src obj: 1, src ofs: 0x5610e, dst obj: 3, dst ofs: 0x22c98
   56112:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13687, src obj: 1, src ofs: 0x56113, dst obj: 3, dst ofs: 0x25b30
   56117:	e8 47 be 01 00       	call   read_
   5611c:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5611f:	bb 04 00 00 00       	mov    ebx,0x4
   56124:	e8 b7 69 fe ff       	call   update_mod_76
   56129:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13686, src obj: 1, src ofs: 0x5612a, dst obj: 3, dst ofs: 0x25a84
   5612e:	ba 20 2d 02 00       	mov    edx,@obj3:VALET                                              ; fixup: num: 13685, src obj: 1, src ofs: 0x5612f, dst obj: 3, dst ofs: 0x22d20
   56133:	e8 68 7b ff ff       	call   update_mod_84
   56138:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13684, src obj: 1, src ofs: 0x56139, dst obj: 3, dst ofs: 0x25b30
   5613d:	e8 21 be 01 00       	call   read_
   56142:	bb 04 00 00 00       	mov    ebx,0x4
   56147:	ba d8 2c 02 00       	mov    edx,@obj3:CLOAK_ATTENDANT                                    ; fixup: num: 13683, src obj: 1, src ofs: 0x56148, dst obj: 3, dst ofs: 0x22cd8
   5614c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13682, src obj: 1, src ofs: 0x5614d, dst obj: 3, dst ofs: 0x25b30
   56151:	e8 0d be 01 00       	call   read_
   56156:	bb 04 00 00 00       	mov    ebx,0x4
   5615b:	ba 90 2c 02 00       	mov    edx,@obj3:INQUISITOR                                         ; fixup: num: 13681, src obj: 1, src ofs: 0x5615c, dst obj: 3, dst ofs: 0x22c90
   56160:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13680, src obj: 1, src ofs: 0x56161, dst obj: 3, dst ofs: 0x25b30
   56165:	e8 f9 bd 01 00       	call   read_
   5616a:	bb 9c 00 00 00       	mov    ebx,0x9c
   5616f:	ba 98 2e 02 00       	mov    edx,@obj3:GLOBAL                                             ; fixup: num: 13679, src obj: 1, src ofs: 0x56170, dst obj: 3, dst ofs: 0x22e98
   56174:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13678, src obj: 1, src ofs: 0x56175, dst obj: 3, dst ofs: 0x25b30
   56179:	e8 e5 bd 01 00       	call   read_
   5617e:	bb 04 00 00 00       	mov    ebx,0x4
   56183:	ba 6c 5b 02 00       	mov    edx,@obj3:shotgun_shells                                     ; fixup: num: 13677, src obj: 1, src ofs: 0x56184, dst obj: 3, dst ofs: 0x25b6c
   56188:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13676, src obj: 1, src ofs: 0x56189, dst obj: 3, dst ofs: 0x25b30
   5618d:	e8 d1 bd 01 00       	call   read_
   56192:	bb 04 00 00 00       	mov    ebx,0x4
   56197:	ba 64 5b 02 00       	mov    edx,@obj3:bullets                                            ; fixup: num: 13704, src obj: 1, src ofs: 0x56198, dst obj: 3, dst ofs: 0x25b64
   5619c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13703, src obj: 1, src ofs: 0x5619d, dst obj: 3, dst ofs: 0x25b30
   561a1:	e8 bd bd 01 00       	call   read_
   561a6:	bb 04 00 00 00       	mov    ebx,0x4
   561ab:	ba 68 5b 02 00       	mov    edx,@obj3:mmbullets                                          ; fixup: num: 13702, src obj: 1, src ofs: 0x561ac, dst obj: 3, dst ofs: 0x25b68
   561b0:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13701, src obj: 1, src ofs: 0x561b1, dst obj: 3, dst ofs: 0x25b30
   561b5:	e8 a9 bd 01 00       	call   read_
   561ba:	bb 04 00 00 00       	mov    ebx,0x4
   561bf:	ba 5c 5b 02 00       	mov    edx,@obj3:nails                                              ; fixup: num: 13700, src obj: 1, src ofs: 0x561c0, dst obj: 3, dst ofs: 0x25b5c
   561c4:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13699, src obj: 1, src ofs: 0x561c5, dst obj: 3, dst ofs: 0x25b30
   561c9:	e8 95 bd 01 00       	call   read_
   561ce:	bb 04 00 00 00       	mov    ebx,0x4
   561d3:	ba 60 5b 02 00       	mov    edx,@obj3:gascans                                            ; fixup: num: 13698, src obj: 1, src ofs: 0x561d4, dst obj: 3, dst ofs: 0x25b60
   561d8:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13697, src obj: 1, src ofs: 0x561d9, dst obj: 3, dst ofs: 0x25b30
   561dd:	e8 81 bd 01 00       	call   read_
   561e2:	a1 80 60 02 00       	mov    eax,ds:@obj3:current_music_file                              ; fixup: num: 13696, src obj: 1, src ofs: 0x561e3, dst obj: 3, dst ofs: 0x26080
   561e7:	85 c0                	test   eax,eax
   561e9:	74 05                	je     load_game2_branch_114
   561eb:	e8 f8 b1 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_game2_branch_114:
   561f0:	bb 04 00 00 00       	mov    ebx,0x4
   561f5:	31 d2                	xor    edx,edx
   561f7:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13695, src obj: 1, src ofs: 0x561f8, dst obj: 3, dst ofs: 0x25b30
   561fc:	89 15 80 60 02 00    	mov    DWORD PTR ds:@obj3:current_music_file,edx                    ; fixup: num: 13694, src obj: 1, src ofs: 0x561fe, dst obj: 3, dst ofs: 0x26080
   56202:	8d 55 4e             	lea    edx,[ebp+0x4e]
   56205:	e8 59 bd 01 00       	call   read_
   5620a:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   5620d:	85 db                	test   ebx,ebx
   5620f:	7e 5d                	jle    load_game2_branch_118
   56211:	89 d8                	mov    eax,ebx
   56213:	e8 7b b2 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   56218:	89 c1                	mov    ecx,eax
   5621a:	85 c0                	test   eax,eax
   5621c:	75 0f                	jne    load_game2_branch_115
   5621e:	bb 92 cf 00 00       	mov    ebx,@obj3:loadsave_cpp_variable_63                           ; fixup: num: 13693, src obj: 1, src ofs: 0x5621f, dst obj: 3, dst ofs: 0xcf92
   56223:	ba ea 06 00 00       	mov    edx,0x6ea
   56228:	e8 03 1e fe ff       	call   _error_report
load_game2_branch_115:
   5622d:	8b 5d 4e             	mov    ebx,DWORD PTR [ebp+0x4e]
   56230:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13692, src obj: 1, src ofs: 0x56231, dst obj: 3, dst ofs: 0x25b30
   56235:	89 ca                	mov    edx,ecx
   56237:	e8 27 bd 01 00       	call   read_
   5623c:	8b 45 4e             	mov    eax,DWORD PTR [ebp+0x4e]
   5623f:	89 ce                	mov    esi,ecx
   56241:	e8 4d b2 01 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   56246:	89 c7                	mov    edi,eax
   56248:	a3 80 60 02 00       	mov    ds:@obj3:current_music_file,eax                              ; fixup: num: 13596, src obj: 1, src ofs: 0x56249, dst obj: 3, dst ofs: 0x26080
   5624d:	57                   	push   edi
load_game2_branch_116:
   5624e:	8a 06                	mov    al,BYTE PTR [esi]
   56250:	88 07                	mov    BYTE PTR [edi],al
   56252:	3c 00                	cmp    al,0x0
   56254:	74 10                	je     load_game2_branch_117
   56256:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   56259:	83 c6 02             	add    esi,0x2
   5625c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   5625f:	83 c7 02             	add    edi,0x2
   56262:	3c 00                	cmp    al,0x0
   56264:	75 e8                	jne    load_game2_branch_116
load_game2_branch_117:
   56266:	5f                   	pop    edi
   56267:	89 c8                	mov    eax,ecx
   56269:	e8 7a b1 01 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
load_game2_branch_118:
   5626e:	a1 d4 5b 02 00       	mov    eax,ds:@obj3:pc                                              ; fixup: num: 13595, src obj: 1, src ofs: 0x5626f, dst obj: 3, dst ofs: 0x25bd4
   56273:	c6 80 b4 11 00 00 00 	mov    BYTE PTR [eax+0x11b4],0x0
   5627a:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   5627d:	e8 5e 68 fe ff       	call   update_mod_76
   56282:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13594, src obj: 1, src ofs: 0x56283, dst obj: 3, dst ofs: 0x25a84
   56287:	e8 14 7a ff ff       	call   update_mod_84
   5628c:	a1 30 5b 02 00       	mov    eax,ds:@obj3:util_handle                                     ; fixup: num: 13593, src obj: 1, src ofs: 0x5628d, dst obj: 3, dst ofs: 0x25b30
   56291:	e8 7a bc 01 00       	call   close_
   56296:	8b 45 6e             	mov    eax,DWORD PTR [ebp+0x6e]
   56299:	e8 42 68 fe ff       	call   update_mod_76
   5629e:	b8 84 5a 02 00       	mov    eax,@obj3:the_screen                                         ; fixup: num: 13592, src obj: 1, src ofs: 0x5629f, dst obj: 3, dst ofs: 0x25a84
   562a3:	e8 f8 79 ff ff       	call   update_mod_84
   562a8:	c6 45 7e 01          	mov    BYTE PTR [ebp+0x7e],0x1
   562ac:	eb 19                	jmp    load_game2_branch_120
load_game2_branch_119:
   562ae:	8d 85 72 fe ff ff    	lea    eax,[ebp-0x18e]
   562b4:	50                   	push   eax
   562b5:	68 aa cf 00 00       	push   @obj3:loadsave_cpp_variable_64                               ; fixup: num: 13709, src obj: 1, src ofs: 0x562b6, dst obj: 3, dst ofs: 0xcfaa
   562ba:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 13708, src obj: 1, src ofs: 0x562bb, dst obj: 3, dst ofs: 0x237fc
   562bf:	e8 1d a9 01 00       	call   sprintf_
   562c4:	83 c4 0c             	add    esp,0xc
load_game2_branch_120:
   562c7:	6a 00                	push   0x0
   562c9:	ba 00 01 00 00       	mov    edx,0x100
   562ce:	a1 84 60 02 00       	mov    eax,ds:@obj3:palette                                         ; fixup: num: 13707, src obj: 1, src ofs: 0x562cf, dst obj: 3, dst ofs: 0x26084
   562d3:	e8 98 c4 fb ff       	call   setvgapalette_mod_14
   562d8:	a1 94 60 02 00       	mov    eax,ds:@obj3:pointer                                         ; fixup: num: 13706, src obj: 1, src ofs: 0x562d9, dst obj: 3, dst ofs: 0x26094
   562dd:	8b 55 6e             	mov    edx,DWORD PTR [ebp+0x6e]
   562e0:	e8 ab 5f fe ff       	call   show
   562e5:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13705, src obj: 1, src ofs: 0x562e6, dst obj: 3, dst ofs: 0x25a88
   562ea:	8b 4d 6e             	mov    ecx,DWORD PTR [ebp+0x6e]
   562ed:	e8 fe 63 ff ff       	call   remove_bitmap
   562f2:	85 c9                	test   ecx,ecx
   562f4:	74 0e                	je     load_game2_branch_121
   562f6:	89 c8                	mov    eax,ecx
   562f8:	31 d2                	xor    edx,edx
   562fa:	e8 61 5c fe ff       	call   W?$dt:ANIMATION$n()_
   562ff:	e8 74 bd 01 00       	call   W?$dln(pnv)v
load_game2_branch_121:
   56304:	e8 f9 bd 01 00       	call   clock_
   56309:	a3 80 59 02 00       	mov    ds:@obj3:last_mouse_click_time,eax                           ; fixup: num: 13600, src obj: 1, src ofs: 0x5630a, dst obj: 3, dst ofs: 0x25980
   5630e:	8a 45 7e             	mov    al,BYTE PTR [ebp+0x7e]
   56311:	8d a5 82 00 00 00    	lea    esp,[ebp+0x82]
   56317:	5d                   	pop    ebp
   56318:	5f                   	pop    edi
   56319:	5e                   	pop    esi
   5631a:	5a                   	pop    edx
   5631b:	59                   	pop    ecx
   5631c:	5b                   	pop    ebx
   5631d:	c3                   	ret    
   5631e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'update_lists_xyz'                   -
;-------------------------------------------------
update_lists_xyz:
   56320:	53                   	push   ebx
   56321:	51                   	push   ecx
   56322:	52                   	push   edx
   56323:	56                   	push   esi
   56324:	57                   	push   edi
   56325:	83 ec 08             	sub    esp,0x8
   56328:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
   5632c:	8b 0d b4 5a 02 00    	mov    ecx,DWORD PTR ds:@obj3:monster_list                          ; fixup: num: 13599, src obj: 1, src ofs: 0x5632e, dst obj: 3, dst ofs: 0x25ab4
   56332:	85 c9                	test   ecx,ecx
   56334:	0f 84 80 00 00 00    	je     update_lists_xyz_branch_3
update_lists_xyz_branch_1:
   5633a:	8b 15 c4 5a 02 00    	mov    edx,DWORD PTR ds:@obj3:current_room                          ; fixup: num: 13598, src obj: 1, src ofs: 0x5633c, dst obj: 3, dst ofs: 0x25ac4
   56340:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
   56343:	8b 52 2c             	mov    edx,DWORD PTR [edx+0x2c]
   56346:	e8 e5 00 02 00       	call   strcmp_
   5634b:	85 c0                	test   eax,eax
   5634d:	75 61                	jne    update_lists_xyz_branch_2
   5634f:	b8 88 5a 02 00       	mov    eax,@obj3:the_list                                           ; fixup: num: 13597, src obj: 1, src ofs: 0x56350, dst obj: 3, dst ofs: 0x25a88
   56354:	8b 51 34             	mov    edx,DWORD PTR [ecx+0x34]
   56357:	e8 94 5d ff ff       	call   get_bitmap
   5635c:	89 c3                	mov    ebx,eax
   5635e:	85 c0                	test   eax,eax
   56360:	74 4e                	je     update_lists_xyz_branch_2
   56362:	8b 70 3c             	mov    esi,DWORD PTR [eax+0x3c]
   56365:	03 70 24             	add    esi,DWORD PTR [eax+0x24]
   56368:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
   5636b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   5636e:	c1 fa 1f             	sar    edx,0x1f
   56371:	2b c2                	sub    eax,edx
   56373:	d1 f8                	sar    eax,1
   56375:	01 c6                	add    esi,eax
   56377:	89 31                	mov    DWORD PTR [ecx],esi
   56379:	8b 53 40             	mov    edx,DWORD PTR [ebx+0x40]
   5637c:	8b 73 28             	mov    esi,DWORD PTR [ebx+0x28]
   5637f:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
   56382:	01 f2                	add    edx,esi
   56384:	01 c2                	add    edx,eax
   56386:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
   56389:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
   5638c:	89 c2                	mov    edx,eax
   5638e:	c1 fa 1f             	sar    edx,0x1f
   56391:	2b c2                	sub    eax,edx
   56393:	d1 f8                	sar    eax,1
   56395:	89 04 24             	mov    DWORD PTR [esp],eax
   56398:	db 04 24             	fild   DWORD PTR [esp]
   5639b:	d8 43 1c             	fadd   DWORD PTR [ebx+0x1c]
   5639e:	e8 a5 f9 01 00       	call   __CHP
   563a3:	db 59 08             	fistp  DWORD PTR [ecx+0x8]
   563a6:	0f be 83 a0 11 00 00 	movsx  eax,BYTE PTR [ebx+0x11a0]
   563ad:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
update_lists_xyz_branch_2:
   563b0:	8b 89 90 00 00 00    	mov    ecx,DWORD PTR [ecx+0x90]
   563b6:	85 c9                	test   ecx,ecx
   563b8:	75 80                	jne    update_lists_xyz_branch_1
update_lists_xyz_branch_3:
   563ba:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
   563bf:	0f 84 8b 00 00 00    	je     update_lists_xyz_branch_6
   563c5:	8b 1d 98 5a 02 00    	mov    ebx,DWORD PTR ds:@obj3:entrance_list                         ; fixup: num: 13604, src obj: 1, src ofs: 0x563c7, dst obj: 3, dst ofs: 0x25a98
   563cb:	85 db                	test   ebx,ebx
   563cd:	0f 84 7d 00 00 00    	je     update_lists_xyz_branch_6
update_lists_xyz_branch_4:
   563d3:	ba e1 cf 00 00       	mov    edx,@obj3:loadsave_cpp_variable_66                           ; fixup: num: 13603, src obj: 1, src ofs: 0x563d4, dst obj: 3, dst ofs: 0xcfe1
   563d8:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
   563db:	e8 50 00 02 00       	call   strcmp_
   563e0:	85 c0                	test   eax,eax
   563e2:	74 65                	je     update_lists_xyz_branch_5
   563e4:	8b 3d d4 5b 02 00    	mov    edi,DWORD PTR ds:@obj3:pc                                    ; fixup: num: 13602, src obj: 1, src ofs: 0x563e6, dst obj: 3, dst ofs: 0x25bd4
   563ea:	89 1d 9c 5a 02 00    	mov    DWORD PTR ds:@obj3:temp_entrance,ebx                         ; fixup: num: 13601, src obj: 1, src ofs: 0x563ec, dst obj: 3, dst ofs: 0x25a9c
   563f0:	85 ff                	test   edi,edi
   563f2:	74 5c                	je     update_lists_xyz_branch_6
   563f4:	8b 47 2c             	mov    eax,DWORD PTR [edi+0x2c]
   563f7:	89 c2                	mov    edx,eax
   563f9:	c1 fa 1f             	sar    edx,0x1f
   563fc:	2b c2                	sub    eax,edx
   563fe:	d1 f8                	sar    eax,1
   56400:	8b 77 3c             	mov    esi,DWORD PTR [edi+0x3c]
   56403:	03 77 24             	add    esi,DWORD PTR [edi+0x24]
   56406:	01 f0                	add    eax,esi
   56408:	89 03                	mov    DWORD PTR [ebx],eax
   5640a:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
   5640d:	8b 57 28             	mov    edx,DWORD PTR [edi+0x28]
   56410:	8b 77 30             	mov    esi,DWORD PTR [edi+0x30]
   56413:	01 d0                	add    eax,edx
   56415:	01 f0                	add    eax,esi
   56417:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
   5641a:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
   5641d:	89 c2                	mov    edx,eax
   5641f:	c1 fa 1f             	sar    edx,0x1f
   56422:	2b c2                	sub    eax,edx
   56424:	d1 f8                	sar    eax,1
   56426:	89 04 24             	mov    DWORD PTR [esp],eax
   56429:	db 04 24             	fild   DWORD PTR [esp]
   5642c:	d8 47 1c             	fadd   DWORD PTR [edi+0x1c]
   5642f:	e8 14 f9 01 00       	call   __CHP
   56434:	db 1c 24             	fistp  DWORD PTR [esp]
   56437:	8b 04 24             	mov    eax,DWORD PTR [esp]
   5643a:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
   5643d:	0f be 87 a0 11 00 00 	movsx  eax,BYTE PTR [edi+0x11a0]
   56444:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
   56447:	eb 07                	jmp    update_lists_xyz_branch_6
update_lists_xyz_branch_5:
   56449:	8b 5b 18             	mov    ebx,DWORD PTR [ebx+0x18]
   5644c:	85 db                	test   ebx,ebx
   5644e:	75 83                	jne    update_lists_xyz_branch_4
update_lists_xyz_branch_6:
   56450:	83 c4 08             	add    esp,0x8
   56453:	5f                   	pop    edi
   56454:	5e                   	pop    esi
   56455:	5a                   	pop    edx
   56456:	59                   	pop    ecx
   56457:	5b                   	pop    ebx
   56458:	c3                   	ret    
;-------------------------------------------------
;  Bad code 87 (zero after ret):                 -
;-------------------------------------------------
;  56457:	5b                   	pop    ebx
;  56458:	c3                   	ret    
;  56459:	00 00                	add    BYTE PTR [eax],al
;  5645b:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (7 bytes):                       -
;-------------------------------------------------
   56459:	00 00 00 00 00 00 .. 	db     7 dup(0x00)
;-------------------------------------------------
;  End of bad code 87                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 86 (D:\SOURCE\loadsave.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 86: D:\SOURCE\loadsave.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
loadsave_cpp_variable_1:
    cb50:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
loadsave_cpp_variable_2:
    cb59:	6c 6f 61 64 73 61 76 65 2e 63 70 70 00 	db     "loadsave.cpp",0x00
loadsave_cpp_variable_3:
    cb66:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 73 61 76 65 67 61 6d 65 2e 70 61 6c 00 	db     "1:\graphic\pal\savegame.pal",0x00
loadsave_cpp_variable_4:
    cb82:	42 4b 47 5f 42 4f 58 00 	db     "BKG_BOX",0x00
loadsave_cpp_variable_5:
    cb8a:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 73 61 76 65 67 61 6d 65 2e 62 6d 00 	db     "1:\graphic\other\savegame.bm",0x00
loadsave_cpp_variable_6:
    cba7:	53 41 56 45 00       	db     "SAVE",0x00
loadsave_cpp_variable_7:
    cbac:	25 73 4c 4f 41 44 53 41 56 45 2e 44 45 53 00 	db     "%sLOADSAVE.DES",0x00
loadsave_cpp_variable_8:
    cbbb:	44 45 53 43 5f 25 32 2e 32 69 00 	db     "DESC_%2.2i",0x00
loadsave_cpp_variable_9:
    cbc6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
loadsave_cpp_variable_10:
    cbc7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
loadsave_cpp_variable_11:
    cbc8:	54 45 58 54 5f 45 4e 54 52 59 00 	db     "TEXT_ENTRY",0x00
loadsave_cpp_variable_12:
    cbd3:	44 45 53 43 5f 25 32 2e 32 69 00 	db     "DESC_%2.2i",0x00
loadsave_cpp_variable_13:
    cbde:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_14:
    cbf6:	53 41 56 45 00       	db     "SAVE",0x00
loadsave_cpp_variable_15:
    cbfb:	25 73 53 41 56 45 2e 25 73 00 	db     "%sSAVE.%s",0x00
loadsave_cpp_variable_16:
    cc05:	63 75 72 72 65 6e 74 5f 63 64 3d 25 69 00 	db     "current_cd=%i",0x00
loadsave_cpp_variable_17:
    cc13:	25 69 20 6d 6f 6e 73 74 65 72 73 00 	db     "%i monsters",0x00
loadsave_cpp_variable_18:
    cc1f:	25 69 20 74 69 6d 65 72 73 00 	db     "%i timers",0x00
loadsave_cpp_variable_19:                                                                           ; access size: QWORD
    cc29:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
loadsave_cpp_variable_20:
    cc31:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
loadsave_cpp_variable_21:
    cc3a:	6c 6f 61 64 73 61 76 65 2e 63 70 70 00 	db     "loadsave.cpp",0x00
loadsave_cpp_variable_22:
    cc47:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 6c 6f 61 64 67 61 6d 65 2e 70 61 6c 00 	db     "1:\graphic\pal\loadgame.pal",0x00
loadsave_cpp_variable_23:
    cc63:	42 4b 47 5f 42 4f 58 00 	db     "BKG_BOX",0x00
loadsave_cpp_variable_24:
    cc6b:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 6c 6f 61 64 67 61 6d 65 2e 62 6d 00 	db     "1:\graphic\other\loadgame.bm",0x00
loadsave_cpp_variable_25:
    cc88:	53 41 56 45 00       	db     "SAVE",0x00
loadsave_cpp_variable_26:
    cc8d:	25 73 4c 4f 41 44 53 41 56 45 2e 44 45 53 00 	db     "%sLOADSAVE.DES",0x00
loadsave_cpp_variable_27:
    cc9c:	44 45 53 43 5f 25 69 00 	db     "DESC_%i",0x00
loadsave_cpp_variable_28:
    cca4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
loadsave_cpp_variable_29:
    cca5:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_30:
    ccbd:	53 41 56 45 00       	db     "SAVE",0x00
loadsave_cpp_variable_31:
    ccc2:	25 73 53 41 56 45 2e 25 73 00 	db     "%sSAVE.%s",0x00
loadsave_cpp_variable_32:
    cccc:	54 4f 57 4e 00       	db     "TOWN",0x00
loadsave_cpp_variable_33:
    ccd1:	53 63 72 69 70 74 20 65 72 72 6f 72 73 20 64 65 74 65 63 74 65 64 00 	db     "Script errors detected",0x00
loadsave_cpp_variable_34:
    cce8:	6c 6f 61 64 73 61 76 65 2e 63 70 70 00 	db     "loadsave.cpp",0x00
loadsave_cpp_variable_35:
    ccf5:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 77 61 69 74 2e 70 61 6c 00 	db     "1:\graphic\pal\wait.pal",0x00
loadsave_cpp_variable_36:
    cd0d:	6c 6f 61 64 73 61 76 65 2e 63 70 70 00 	db     "loadsave.cpp",0x00
loadsave_cpp_variable_37:
    cd1a:	31 3a 5c 67 72 61 70 68 69 63 5c 70 61 6c 5c 77 61 69 74 2e 70 61 6c 00 	db     "1:\graphic\pal\wait.pal",0x00
loadsave_cpp_variable_38:
    cd32:	57 41 49 54 5f 42 4d 00 	db     "WAIT_BM",0x00
loadsave_cpp_variable_39:
    cd3a:	31 3a 5c 67 72 61 70 68 69 63 5c 6f 74 68 65 72 5c 77 61 69 74 2e 61 62 6d 00 	db     "1:\graphic\other\wait.abm",0x00
loadsave_cpp_variable_40:
    cd54:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 20 74 72 79 69 6e 67 20 74 6f 20 27 6e 65 77 20 77 61 69 74 5f 61 6e 69 6d 27 00 	db     "Memory allocation error trying to 'new wait_anim'",0x00
loadsave_cpp_variable_41:
    cd86:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_42:
    cd9e:	53 41 56 45 5f 47 41 4d 45 00 	db     "SAVE_GAME",0x00
loadsave_cpp_variable_43:
    cda8:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_44:
    cdc0:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_45:
    cdd8:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 61 6e 69 6d 20 25 73 00 	db     "LOAD ERROR: can't find anim %s",0x00
loadsave_cpp_variable_46:
    cdf7:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_47:
    ce0f:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 66 6c 61 67 20 25 73 00 	db     "LOAD ERROR: can't find flag %s",0x00
loadsave_cpp_variable_48:
    ce2e:	25 69 20 6d 6f 6e 73 74 65 72 73 00 	db     "%i monsters",0x00
loadsave_cpp_variable_49:
    ce3a:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_50:
    ce52:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 6d 6f 6e 73 74 65 72 20 25 73 00 	db     "LOAD ERROR: can't find monster %s",0x00
loadsave_cpp_variable_51:
    ce74:	25 69 20 6e 70 63 73 00 	db     "%i npcs",0x00
loadsave_cpp_variable_52:
    ce7c:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_53:
    ce94:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 6e 70 63 20 25 73 00 	db     "LOAD ERROR: can't find npc %s",0x00
loadsave_cpp_variable_54:
    ceb2:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_55:
    ceca:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 6f 62 6a 65 63 74 20 25 73 00 	db     "LOAD ERROR: can't find object %s",0x00
loadsave_cpp_variable_56:
    ceeb:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_57:
    cf03:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_58:
    cf1b:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 72 65 67 69 6f 6e 20 25 73 00 	db     "LOAD ERROR: can't find region %s",0x00
loadsave_cpp_variable_59:
    cf3c:	25 69 20 74 69 6d 65 72 73 00 	db     "%i timers",0x00
loadsave_cpp_variable_60:
    cf46:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_61:
    cf5e:	4c 4f 41 44 20 45 52 52 4f 52 3a 20 63 61 6e 27 74 20 66 69 6e 64 20 74 69 6d 65 72 20 25 73 00 	db     "LOAD ERROR: can't find timer %s",0x00
loadsave_cpp_variable_62:
    cf7e:	6c 6f 61 64 20 6e 65 77 20 70 63 20 25 69 20 2d 20 25 73 00 	db     "load new pc %i - %s",0x00
loadsave_cpp_variable_63:
    cf92:	4d 65 6d 6f 72 79 20 61 6c 6c 6f 63 61 74 69 6f 6e 20 65 72 72 6f 72 00 	db     "Memory allocation error",0x00
loadsave_cpp_variable_64:
    cfaa:	6c 6f 61 64 5f 67 61 6d 65 28 29 3a 20 63 6f 75 6c 64 20 6e 6f 74 20 6f 70 65 6e 20 66 69 6c 65 20 27 25 73 27 20 74 6f 20 6c 6f 61 64 21 00 	db     "load_game(): could not open file '%s' to load!",0x00
loadsave_cpp_variable_65:                                                                           ; access size: QWORD
    cfd9:	9a 99 99 99 99 99 d9 bf 	dq     0xbfd999999999999a
loadsave_cpp_variable_66:
    cfe1:	53 41 56 45 5f 47 41 4d 45 00 	db     "SAVE_GAME",0x00
loadsave_cpp_variable_67:
    cfeb:	47 41 4d 45 20 30 31 00 	db     "GAME 01",0x00
loadsave_cpp_variable_68:
    cff3:	47 41 4d 45 20 30 32 00 	db     "GAME 02",0x00
loadsave_cpp_variable_69:
    cffb:	47 41 4d 45 20 30 33 00 	db     "GAME 03",0x00
loadsave_cpp_variable_70:
    d003:	47 41 4d 45 20 30 34 00 	db     "GAME 04",0x00
loadsave_cpp_variable_71:
    d00b:	47 41 4d 45 20 30 35 00 	db     "GAME 05",0x00
loadsave_cpp_variable_72:
    d013:	47 41 4d 45 20 30 36 00 	db     "GAME 06",0x00
loadsave_cpp_variable_73:
    d01b:	47 41 4d 45 20 30 37 00 	db     "GAME 07",0x00
loadsave_cpp_variable_74:
    d023:	47 41 4d 45 20 30 38 00 	db     "GAME 08",0x00
loadsave_cpp_variable_75:
    d02b:	47 41 4d 45 20 30 39 00 	db     "GAME 09",0x00
loadsave_cpp_variable_76:
    d033:	47 41 4d 45 20 31 30 00 	db     "GAME 10",0x00
loadsave_cpp_variable_77:
    d03b:	47 41 4d 45 20 31 31 00 	db     "GAME 11",0x00
loadsave_cpp_variable_78:
    d043:	47 41 4d 45 20 31 32 00 	db     "GAME 12",0x00
loadsave_cpp_variable_79:
    d04b:	47 41 4d 45 20 31 33 00 	db     "GAME 13",0x00
loadsave_cpp_variable_80:
    d053:	47 41 4d 45 20 31 34 00 	db     "GAME 14",0x00
loadsave_cpp_variable_81:
    d05b:	47 41 4d 45 20 31 35 00 	db     "GAME 15",0x00
loadsave_cpp_variable_82:
    d063:	47 41 4d 45 20 31 36 00 	db     "GAME 16",0x00
loadsave_cpp_variable_83:
    d06b:	47 41 4d 45 20 31 37 00 	db     "GAME 17",0x00
loadsave_cpp_variable_84:
    d073:	47 41 4d 45 20 31 38 00 	db     "GAME 18",0x00
loadsave_cpp_variable_85:
    d07b:	47 41 4d 45 20 31 39 00 	db     "GAME 19",0x00
loadsave_cpp_variable_86:
    d083:	47 41 4d 45 20 32 30 00 	db     "GAME 20",0x00
loadsave_cpp_variable_87:
    d08b:	47 41 4d 45 20 32 31 00 	db     "GAME 21",0x00
loadsave_cpp_variable_88:
    d093:	47 41 4d 45 20 32 32 00 	db     "GAME 22",0x00
loadsave_cpp_variable_89:
    d09b:	47 41 4d 45 20 32 33 00 	db     "GAME 23",0x00
loadsave_cpp_variable_90:
    d0a3:	47 41 4d 45 20 32 34 00 	db     "GAME 24",0x00
loadsave_cpp_variable_91:
    d0ab:	47 41 4d 45 20 32 35 00 	db     "GAME 25",0x00
    d0b3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 86 (D:\SOURCE\loadsave.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 86: D:\SOURCE\loadsave.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
ls_text:                                                                                            ; access size: DWORDS
   13c20:	eb cf 00 00          	dd     @obj3:loadsave_cpp_variable_67                               ; fixup: num: 21518, src obj: 3, src ofs: 0x13c20, dst obj: 3, dst ofs: 0xcfeb
   13c24:	f3 cf 00 00          	dd     @obj3:loadsave_cpp_variable_68                               ; fixup: num: 21517, src obj: 3, src ofs: 0x13c24, dst obj: 3, dst ofs: 0xcff3
   13c28:	fb cf 00 00          	dd     @obj3:loadsave_cpp_variable_69                               ; fixup: num: 21516, src obj: 3, src ofs: 0x13c28, dst obj: 3, dst ofs: 0xcffb
   13c2c:	03 d0 00 00          	dd     @obj3:loadsave_cpp_variable_70                               ; fixup: num: 21515, src obj: 3, src ofs: 0x13c2c, dst obj: 3, dst ofs: 0xd003
   13c30:	0b d0 00 00          	dd     @obj3:loadsave_cpp_variable_71                               ; fixup: num: 21514, src obj: 3, src ofs: 0x13c30, dst obj: 3, dst ofs: 0xd00b
   13c34:	13 d0 00 00          	dd     @obj3:loadsave_cpp_variable_72                               ; fixup: num: 21513, src obj: 3, src ofs: 0x13c34, dst obj: 3, dst ofs: 0xd013
   13c38:	1b d0 00 00          	dd     @obj3:loadsave_cpp_variable_73                               ; fixup: num: 21512, src obj: 3, src ofs: 0x13c38, dst obj: 3, dst ofs: 0xd01b
   13c3c:	23 d0 00 00          	dd     @obj3:loadsave_cpp_variable_74                               ; fixup: num: 21511, src obj: 3, src ofs: 0x13c3c, dst obj: 3, dst ofs: 0xd023
   13c40:	2b d0 00 00          	dd     @obj3:loadsave_cpp_variable_75                               ; fixup: num: 21510, src obj: 3, src ofs: 0x13c40, dst obj: 3, dst ofs: 0xd02b
   13c44:	33 d0 00 00          	dd     @obj3:loadsave_cpp_variable_76                               ; fixup: num: 21509, src obj: 3, src ofs: 0x13c44, dst obj: 3, dst ofs: 0xd033
   13c48:	3b d0 00 00          	dd     @obj3:loadsave_cpp_variable_77                               ; fixup: num: 21508, src obj: 3, src ofs: 0x13c48, dst obj: 3, dst ofs: 0xd03b
   13c4c:	43 d0 00 00          	dd     @obj3:loadsave_cpp_variable_78                               ; fixup: num: 21507, src obj: 3, src ofs: 0x13c4c, dst obj: 3, dst ofs: 0xd043
   13c50:	4b d0 00 00          	dd     @obj3:loadsave_cpp_variable_79                               ; fixup: num: 21506, src obj: 3, src ofs: 0x13c50, dst obj: 3, dst ofs: 0xd04b
   13c54:	53 d0 00 00          	dd     @obj3:loadsave_cpp_variable_80                               ; fixup: num: 21505, src obj: 3, src ofs: 0x13c54, dst obj: 3, dst ofs: 0xd053
   13c58:	5b d0 00 00          	dd     @obj3:loadsave_cpp_variable_81                               ; fixup: num: 21504, src obj: 3, src ofs: 0x13c58, dst obj: 3, dst ofs: 0xd05b
   13c5c:	63 d0 00 00          	dd     @obj3:loadsave_cpp_variable_82                               ; fixup: num: 21503, src obj: 3, src ofs: 0x13c5c, dst obj: 3, dst ofs: 0xd063
   13c60:	6b d0 00 00          	dd     @obj3:loadsave_cpp_variable_83                               ; fixup: num: 21502, src obj: 3, src ofs: 0x13c60, dst obj: 3, dst ofs: 0xd06b
   13c64:	73 d0 00 00          	dd     @obj3:loadsave_cpp_variable_84                               ; fixup: num: 21501, src obj: 3, src ofs: 0x13c64, dst obj: 3, dst ofs: 0xd073
   13c68:	7b d0 00 00          	dd     @obj3:loadsave_cpp_variable_85                               ; fixup: num: 21500, src obj: 3, src ofs: 0x13c68, dst obj: 3, dst ofs: 0xd07b
   13c6c:	83 d0 00 00          	dd     @obj3:loadsave_cpp_variable_86                               ; fixup: num: 21499, src obj: 3, src ofs: 0x13c6c, dst obj: 3, dst ofs: 0xd083
   13c70:	8b d0 00 00          	dd     @obj3:loadsave_cpp_variable_87                               ; fixup: num: 21498, src obj: 3, src ofs: 0x13c70, dst obj: 3, dst ofs: 0xd08b
   13c74:	93 d0 00 00          	dd     @obj3:loadsave_cpp_variable_88                               ; fixup: num: 21497, src obj: 3, src ofs: 0x13c74, dst obj: 3, dst ofs: 0xd093
   13c78:	9b d0 00 00          	dd     @obj3:loadsave_cpp_variable_89                               ; fixup: num: 21496, src obj: 3, src ofs: 0x13c78, dst obj: 3, dst ofs: 0xd09b
   13c7c:	a3 d0 00 00          	dd     @obj3:loadsave_cpp_variable_90                               ; fixup: num: 21495, src obj: 3, src ofs: 0x13c7c, dst obj: 3, dst ofs: 0xd0a3
   13c80:	ab d0 00 00          	dd     @obj3:loadsave_cpp_variable_91                               ; fixup: num: 21494, src obj: 3, src ofs: 0x13c80, dst obj: 3, dst ofs: 0xd0ab

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 86 (D:\SOURCE\loadsave.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 86: D:\SOURCE\loadsave.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
util_handle:                                                                                        ; access size: DWORD
   25b30:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 86 (D:\SOURCE\loadsave.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------