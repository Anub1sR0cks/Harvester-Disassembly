;-------------------------------------------------------------------------------
;                                                                              -
;  Module 62: D:\SOURCE\sparky.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_FIREMAN_SPARKY'             -
;-------------------------------------------------
talk_to_FIREMAN_SPARKY:
   29240:	53                   	push   ebx
   29241:	51                   	push   ecx
   29242:	52                   	push   edx
   29243:	56                   	push   esi
   29244:	57                   	push   edi
   29245:	55                   	push   ebp
   29246:	b8 3c 7d 00 00       	mov    eax,@obj3:sparky_cpp_variable_1                              ; fixup: num: 6757, src obj: 1, src ofs: 0x29247, dst obj: 3, dst ofs: 0x7d3c
   2924b:	e8 40 35 04 00       	call   check_script_flag
   29250:	84 c0                	test   al,al
   29252:	74 1d                	je     talk_to_FIREMAN_SPARKY_branch_1
   29254:	b8 56 7d 00 00       	mov    eax,@obj3:sparky_cpp_variable_2                              ; fixup: num: 6756, src obj: 1, src ofs: 0x29255, dst obj: 3, dst ofs: 0x7d56
   29259:	31 d2                	xor    edx,edx
   2925b:	e8 80 35 04 00       	call   set_script_flag
   29260:	31 db                	xor    ebx,ebx
   29262:	ba 70 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_3                              ; fixup: num: 6755, src obj: 1, src ofs: 0x29263, dst obj: 3, dst ofs: 0x7d70
   29267:	b8 a4 03 00 00       	mov    eax,0x3a4
   2926c:	e9 d4 03 00 00       	jmp    talk_to_FIREMAN_SPARKY_branch_24
talk_to_FIREMAN_SPARKY_branch_1:
   29271:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 6754, src obj: 1, src ofs: 0x29273, dst obj: 3, dst ofs: 0x294bc
   29277:	85 d2                	test   edx,edx
   29279:	74 1d                	je     talk_to_FIREMAN_SPARKY_branch_2
   2927b:	bb 02 00 00 00       	mov    ebx,0x2
   29280:	ba 77 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_4                              ; fixup: num: 6753, src obj: 1, src ofs: 0x29281, dst obj: 3, dst ofs: 0x7d77
   29285:	b8 c7 03 00 00       	mov    eax,0x3c7
   2928a:	e8 01 14 04 00       	call   play_wav
   2928f:	31 c0                	xor    eax,eax
   29291:	5d                   	pop    ebp
   29292:	5f                   	pop    edi
   29293:	5e                   	pop    esi
   29294:	5a                   	pop    edx
   29295:	59                   	pop    ecx
   29296:	5b                   	pop    ebx
   29297:	c3                   	ret    
talk_to_FIREMAN_SPARKY_branch_2:
   29298:	a1 40 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY                                  ; fixup: num: 6752, src obj: 1, src ofs: 0x29299, dst obj: 3, dst ofs: 0x22f40
   2929d:	85 c0                	test   eax,eax
   2929f:	0f 84 32 01 00 00    	je     talk_to_FIREMAN_SPARKY_branch_8
   292a5:	be 01 00 00 00       	mov    esi,0x1
   292aa:	89 15 40 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY,edx                        ; fixup: num: 6751, src obj: 1, src ofs: 0x292ac, dst obj: 3, dst ofs: 0x22f40
   292b0:	ba 7e 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_5                              ; fixup: num: 6750, src obj: 1, src ofs: 0x292b1, dst obj: 3, dst ofs: 0x7d7e
   292b5:	89 35 44 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_1,esi             ; fixup: num: 6749, src obj: 1, src ofs: 0x292b7, dst obj: 3, dst ofs: 0x22f44
   292bb:	e8 00 f9 ff ff       	call   get_day
   292c0:	89 f3                	mov    ebx,esi
   292c2:	a3 48 2f 02 00       	mov    ds:@obj3:FIREMAN_SPARKY_variable_2,eax                       ; fixup: num: 6748, src obj: 1, src ofs: 0x292c3, dst obj: 3, dst ofs: 0x22f48
   292c7:	b8 f7 02 00 00       	mov    eax,0x2f7
   292cc:	e8 bf 13 04 00       	call   play_wav
   292d1:	bb 02 00 00 00       	mov    ebx,0x2
   292d6:	ba 85 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_6                              ; fixup: num: 6747, src obj: 1, src ofs: 0x292d7, dst obj: 3, dst ofs: 0x7d85
   292db:	b8 fe 02 00 00       	mov    eax,0x2fe
   292e0:	e8 ab 13 04 00       	call   play_wav
   292e5:	ba 8c 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_7                              ; fixup: num: 6746, src obj: 1, src ofs: 0x292e6, dst obj: 3, dst ofs: 0x7d8c
   292ea:	b8 02 03 00 00       	mov    eax,0x302
   292ef:	31 db                	xor    ebx,ebx
   292f1:	e8 9a 13 04 00       	call   play_wav
   292f6:	e8 35 f3 ff ff       	call   SPARKY_THROWING_SPOTS_A_CUT_OF_MEAT
   292fb:	b8 93 7d 00 00       	mov    eax,@obj3:sparky_cpp_variable_8                              ; fixup: num: 6764, src obj: 1, src ofs: 0x292fc, dst obj: 3, dst ofs: 0x7d93
   29300:	ba a5 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_9                              ; fixup: num: 6763, src obj: 1, src ofs: 0x29301, dst obj: 3, dst ofs: 0x7da5
   29305:	e8 76 38 04 00       	call   ExecuteCommand
   2930a:	e8 81 f3 ff ff       	call   SPOTS_LICK
   2930f:	89 f3                	mov    ebx,esi
   29311:	b8 0d 03 00 00       	mov    eax,0x30d
   29316:	e8 75 13 04 00       	call   play_wav
   2931b:	b8 be 02 00 00       	mov    eax,0x2be
   29320:	e8 7b 0e 00 00       	call   GetDlgFileString
   29325:	e8 e6 1b 04 00       	call   get_response
   2932a:	39 f0                	cmp    eax,esi
   2932c:	75 4b                	jne    talk_to_FIREMAN_SPARKY_branch_3
   2932e:	89 f2                	mov    edx,esi
   29330:	31 f0                	xor    eax,esi
   29332:	e8 a9 f0 ff ff       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   29337:	89 f3                	mov    ebx,esi
   29339:	ba ac 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_10                             ; fixup: num: 6762, src obj: 1, src ofs: 0x2933a, dst obj: 3, dst ofs: 0x7dac
   2933e:	b8 19 03 00 00       	mov    eax,0x319
   29343:	e8 48 13 04 00       	call   play_wav
   29348:	ba b3 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_11                             ; fixup: num: 6761, src obj: 1, src ofs: 0x29349, dst obj: 3, dst ofs: 0x7db3
   2934d:	b8 22 03 00 00       	mov    eax,0x322
   29352:	31 db                	xor    ebx,ebx
   29354:	e8 37 13 04 00       	call   play_wav
   29359:	bb 04 00 00 00       	mov    ebx,0x4
   2935e:	ba b6 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_12                             ; fixup: num: 6760, src obj: 1, src ofs: 0x2935f, dst obj: 3, dst ofs: 0x7db6
   29363:	b8 26 03 00 00       	mov    eax,0x326
   29368:	e8 23 13 04 00       	call   play_wav
   2936d:	ba bd 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_13                             ; fixup: num: 6759, src obj: 1, src ofs: 0x2936e, dst obj: 3, dst ofs: 0x7dbd
   29372:	b8 30 03 00 00       	mov    eax,0x330
   29377:	eb 0f                	jmp    talk_to_FIREMAN_SPARKY_branch_4
talk_to_FIREMAN_SPARKY_branch_3:
   29379:	83 f8 02             	cmp    eax,0x2
   2937c:	75 11                	jne    talk_to_FIREMAN_SPARKY_branch_5
   2937e:	ba c0 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_14                             ; fixup: num: 6758, src obj: 1, src ofs: 0x2937f, dst obj: 3, dst ofs: 0x7dc0
   29383:	b8 34 03 00 00       	mov    eax,0x334
talk_to_FIREMAN_SPARKY_branch_4:
   29388:	31 db                	xor    ebx,ebx
   2938a:	e8 01 13 04 00       	call   play_wav
talk_to_FIREMAN_SPARKY_branch_5:
   2938f:	e8 bc f2 ff ff       	call   SPARKY_S_SKETCH_OF_MAN_S_RUMP
   29394:	ba c7 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_15                             ; fixup: num: 6773, src obj: 1, src ofs: 0x29395, dst obj: 3, dst ofs: 0x7dc7
   29399:	b8 3f 03 00 00       	mov    eax,0x33f
   2939e:	31 db                	xor    ebx,ebx
   293a0:	e8 eb 12 04 00       	call   play_wav
   293a5:	e8 d6 f2 ff ff       	call   CU_OF_SPOTS_TONGUE_AS_HE_PANTS
   293aa:	b8 c1 02 00 00       	mov    eax,0x2c1
   293af:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6772, src obj: 1, src ofs: 0x293b0, dst obj: 3, dst ofs: 0x295c0
   293b4:	e8 e7 0d 00 00       	call   GetDlgFileString
   293b9:	89 c6                	mov    esi,eax
   293bb:	57                   	push   edi
talk_to_FIREMAN_SPARKY_branch_6:
   293bc:	8a 06                	mov    al,BYTE PTR [esi]
   293be:	88 07                	mov    BYTE PTR [edi],al
   293c0:	3c 00                	cmp    al,0x0
   293c2:	74 10                	je     talk_to_FIREMAN_SPARKY_branch_7
   293c4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   293c7:	83 c6 02             	add    esi,0x2
   293ca:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   293cd:	83 c7 02             	add    edi,0x2
   293d0:	3c 00                	cmp    al,0x0
   293d2:	75 e8                	jne    talk_to_FIREMAN_SPARKY_branch_6
talk_to_FIREMAN_SPARKY_branch_7:
   293d4:	5f                   	pop    edi
   293d5:	eb 6c                	jmp    talk_to_FIREMAN_SPARKY_branch_10
talk_to_FIREMAN_SPARKY_branch_8:
   293d7:	a1 44 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY_variable_1                       ; fixup: num: 6771, src obj: 1, src ofs: 0x293d8, dst obj: 3, dst ofs: 0x22f44
   293dc:	85 c0                	test   eax,eax
   293de:	74 63                	je     talk_to_FIREMAN_SPARKY_branch_10
   293e0:	e8 db f7 ff ff       	call   get_day
   293e5:	3b 05 48 2f 02 00    	cmp    eax,DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_2             ; fixup: num: 6770, src obj: 1, src ofs: 0x293e7, dst obj: 3, dst ofs: 0x22f48
   293eb:	74 42                	je     talk_to_FIREMAN_SPARKY_branch_9
   293ed:	bb 01 00 00 00       	mov    ebx,0x1
   293f2:	ba ce 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_16                             ; fixup: num: 6769, src obj: 1, src ofs: 0x293f3, dst obj: 3, dst ofs: 0x7dce
   293f7:	b8 ac 03 00 00       	mov    eax,0x3ac
   293fc:	e8 8f 12 04 00       	call   play_wav
   29401:	ba d5 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_17                             ; fixup: num: 6768, src obj: 1, src ofs: 0x29402, dst obj: 3, dst ofs: 0x7dd5
   29406:	b8 b0 03 00 00       	mov    eax,0x3b0
   2940b:	31 db                	xor    ebx,ebx
   2940d:	e8 7e 12 04 00       	call   play_wav
   29412:	ba d8 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_18                             ; fixup: num: 6767, src obj: 1, src ofs: 0x29413, dst obj: 3, dst ofs: 0x7dd8
   29417:	b8 b4 03 00 00       	mov    eax,0x3b4
   2941c:	31 db                	xor    ebx,ebx
   2941e:	e8 6d 12 04 00       	call   play_wav
   29423:	e8 98 f7 ff ff       	call   get_day
   29428:	a3 48 2f 02 00       	mov    ds:@obj3:FIREMAN_SPARKY_variable_2,eax                       ; fixup: num: 6766, src obj: 1, src ofs: 0x29429, dst obj: 3, dst ofs: 0x22f48
   2942d:	eb 14                	jmp    talk_to_FIREMAN_SPARKY_branch_10
talk_to_FIREMAN_SPARKY_branch_9:
   2942f:	bb 01 00 00 00       	mov    ebx,0x1
   29434:	ba df 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_19                             ; fixup: num: 6765, src obj: 1, src ofs: 0x29435, dst obj: 3, dst ofs: 0x7ddf
   29439:	b8 bb 03 00 00       	mov    eax,0x3bb
   2943e:	e8 4d 12 04 00       	call   play_wav
talk_to_FIREMAN_SPARKY_branch_10:
   29443:	be e6 7d 00 00       	mov    esi,@obj3:sparky_cpp_variable_20                             ; fixup: num: 6778, src obj: 1, src ofs: 0x29444, dst obj: 3, dst ofs: 0x7de6
   29448:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 6777, src obj: 1, src ofs: 0x29449, dst obj: 3, dst ofs: 0x294c0
   2944d:	57                   	push   edi
talk_to_FIREMAN_SPARKY_branch_11:
   2944e:	8a 06                	mov    al,BYTE PTR [esi]
   29450:	88 07                	mov    BYTE PTR [edi],al
   29452:	3c 00                	cmp    al,0x0
   29454:	74 10                	je     talk_to_FIREMAN_SPARKY_branch_12
   29456:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29459:	83 c6 02             	add    esi,0x2
   2945c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2945f:	83 c7 02             	add    edi,0x2
   29462:	3c 00                	cmp    al,0x0
   29464:	75 e8                	jne    talk_to_FIREMAN_SPARKY_branch_11
talk_to_FIREMAN_SPARKY_branch_12:
   29466:	5f                   	pop    edi
   29467:	89 fd                	mov    ebp,edi
   29469:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6776, src obj: 1, src ofs: 0x2946a, dst obj: 3, dst ofs: 0x295c0
   2946e:	31 c9                	xor    ecx,ecx
talk_to_FIREMAN_SPARKY_branch_13:
   29470:	b8 c3 02 00 00       	mov    eax,0x2c3
   29475:	e8 26 0d 00 00       	call   GetDlgFileString
   2947a:	89 c2                	mov    edx,eax
   2947c:	89 e8                	mov    eax,ebp
   2947e:	e8 d7 7f 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29483:	85 c0                	test   eax,eax
   29485:	0f 84 ab 01 00 00    	je     talk_to_FIREMAN_SPARKY_branch_23
   2948b:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 6775, src obj: 1, src ofs: 0x2948c, dst obj: 3, dst ofs: 0x295c0
   29490:	e8 ab 25 04 00       	call   show_keywords
   29495:	b8 c4 02 00 00       	mov    eax,0x2c4
   2949a:	e8 01 0d 00 00       	call   GetDlgFileString
   2949f:	89 c2                	mov    edx,eax
   294a1:	89 e8                	mov    eax,ebp
   294a3:	e8 b2 7f 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   294a8:	85 c0                	test   eax,eax
   294aa:	74 17                	je     talk_to_FIREMAN_SPARKY_branch_14
   294ac:	b8 c5 02 00 00       	mov    eax,0x2c5
   294b1:	e8 ea 0c 00 00       	call   GetDlgFileString
   294b6:	89 c2                	mov    edx,eax
   294b8:	89 e8                	mov    eax,ebp
   294ba:	e8 9b 7f 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   294bf:	85 c0                	test   eax,eax
   294c1:	75 1b                	jne    talk_to_FIREMAN_SPARKY_branch_15
talk_to_FIREMAN_SPARKY_branch_14:
   294c3:	bb 01 00 00 00       	mov    ebx,0x1
   294c8:	ba e7 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_21                             ; fixup: num: 6774, src obj: 1, src ofs: 0x294c9, dst obj: 3, dst ofs: 0x7de7
   294cd:	b8 4c 03 00 00       	mov    eax,0x34c
   294d2:	e8 b9 11 04 00       	call   play_wav
   294d7:	e8 84 f1 ff ff       	call   SPARKY_S_SKETCH_OF_MAN_S_RUMP_2
   294dc:	eb 92                	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_15:
   294de:	b8 c7 02 00 00       	mov    eax,0x2c7
   294e3:	e8 b8 0c 00 00       	call   GetDlgFileString
   294e8:	89 c2                	mov    edx,eax
   294ea:	89 e8                	mov    eax,ebp
   294ec:	e8 69 7f 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   294f1:	85 c0                	test   eax,eax
   294f3:	75 16                	jne    talk_to_FIREMAN_SPARKY_branch_16
   294f5:	ba ee 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_22                             ; fixup: num: 6781, src obj: 1, src ofs: 0x294f6, dst obj: 3, dst ofs: 0x7dee
   294fa:	b8 5f 03 00 00       	mov    eax,0x35f
   294ff:	89 cb                	mov    ebx,ecx
   29501:	e8 8a 11 04 00       	call   play_wav
   29506:	e9 65 ff ff ff       	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_16:
   2950b:	b8 c8 02 00 00       	mov    eax,0x2c8
   29510:	e8 8b 0c 00 00       	call   GetDlgFileString
   29515:	89 c2                	mov    edx,eax
   29517:	89 e8                	mov    eax,ebp
   29519:	e8 3c 7f 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2951e:	85 c0                	test   eax,eax
   29520:	75 4d                	jne    talk_to_FIREMAN_SPARKY_branch_19
   29522:	ba f5 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_23                             ; fixup: num: 6780, src obj: 1, src ofs: 0x29523, dst obj: 3, dst ofs: 0x7df5
   29527:	b8 6c 03 00 00       	mov    eax,0x36c
   2952c:	89 cb                	mov    ebx,ecx
   2952e:	e8 5d 11 04 00       	call   play_wav
   29533:	ba fc 7d 00 00       	mov    edx,@obj3:sparky_cpp_variable_24                             ; fixup: num: 6779, src obj: 1, src ofs: 0x29534, dst obj: 3, dst ofs: 0x7dfc
   29538:	b8 6d 03 00 00       	mov    eax,0x36d
   2953d:	89 cb                	mov    ebx,ecx
   2953f:	e8 4c 11 04 00       	call   play_wav
   29544:	b8 c9 02 00 00       	mov    eax,0x2c9
   29549:	e8 52 0c 00 00       	call   GetDlgFileString
   2954e:	89 c6                	mov    esi,eax
   29550:	57                   	push   edi
talk_to_FIREMAN_SPARKY_branch_17:
   29551:	8a 06                	mov    al,BYTE PTR [esi]
   29553:	88 07                	mov    BYTE PTR [edi],al
   29555:	3c 00                	cmp    al,0x0
   29557:	74 10                	je     talk_to_FIREMAN_SPARKY_branch_18
   29559:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2955c:	83 c6 02             	add    esi,0x2
   2955f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29562:	83 c7 02             	add    edi,0x2
   29565:	3c 00                	cmp    al,0x0
   29567:	75 e8                	jne    talk_to_FIREMAN_SPARKY_branch_17
talk_to_FIREMAN_SPARKY_branch_18:
   29569:	5f                   	pop    edi
   2956a:	e9 01 ff ff ff       	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_19:
   2956f:	b8 ca 02 00 00       	mov    eax,0x2ca
   29574:	e8 27 0c 00 00       	call   GetDlgFileString
   29579:	89 c2                	mov    edx,eax
   2957b:	89 e8                	mov    eax,ebp
   2957d:	e8 d8 7e 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29582:	85 c0                	test   eax,eax
   29584:	74 17                	je     talk_to_FIREMAN_SPARKY_branch_20
   29586:	b8 cb 02 00 00       	mov    eax,0x2cb
   2958b:	e8 10 0c 00 00       	call   GetDlgFileString
   29590:	89 c2                	mov    edx,eax
   29592:	89 e8                	mov    eax,ebp
   29594:	e8 c1 7e 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29599:	85 c0                	test   eax,eax
   2959b:	75 65                	jne    talk_to_FIREMAN_SPARKY_branch_22
talk_to_FIREMAN_SPARKY_branch_20:
   2959d:	bb 03 00 00 00       	mov    ebx,0x3
   295a2:	ba 03 7e 00 00       	mov    edx,@obj3:sparky_cpp_variable_25                             ; fixup: num: 6786, src obj: 1, src ofs: 0x295a3, dst obj: 3, dst ofs: 0x7e03
   295a7:	b8 7a 03 00 00       	mov    eax,0x37a
   295ac:	e8 df 10 04 00       	call   play_wav
   295b1:	b8 cc 02 00 00       	mov    eax,0x2cc
   295b6:	e8 e5 0b 00 00       	call   GetDlgFileString
   295bb:	e8 50 19 04 00       	call   get_response
   295c0:	83 f8 01             	cmp    eax,0x1
   295c3:	75 1e                	jne    talk_to_FIREMAN_SPARKY_branch_21
   295c5:	bb 04 00 00 00       	mov    ebx,0x4
   295ca:	ba 0a 7e 00 00       	mov    edx,@obj3:sparky_cpp_variable_26                             ; fixup: num: 6785, src obj: 1, src ofs: 0x295cb, dst obj: 3, dst ofs: 0x7e0a
   295cf:	b8 8f 03 00 00       	mov    eax,0x38f
   295d4:	e8 b7 10 04 00       	call   play_wav
   295d9:	e8 92 f0 ff ff       	call   NUDE_MAN___
   295de:	e9 8d fe ff ff       	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_21:
   295e3:	83 f8 02             	cmp    eax,0x2
   295e6:	0f 85 84 fe ff ff    	jne    talk_to_FIREMAN_SPARKY_branch_13
   295ec:	ba 11 7e 00 00       	mov    edx,@obj3:sparky_cpp_variable_27                             ; fixup: num: 6784, src obj: 1, src ofs: 0x295ed, dst obj: 3, dst ofs: 0x7e11
   295f1:	b8 5f 03 00 00       	mov    eax,0x35f
   295f6:	89 cb                	mov    ebx,ecx
   295f8:	e8 93 10 04 00       	call   play_wav
   295fd:	e9 6e fe ff ff       	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_22:
   29602:	b8 ce 02 00 00       	mov    eax,0x2ce
   29607:	e8 94 0b 00 00       	call   GetDlgFileString
   2960c:	89 c2                	mov    edx,eax
   2960e:	89 e8                	mov    eax,ebp
   29610:	e8 45 7e 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29615:	85 c0                	test   eax,eax
   29617:	0f 84 53 fe ff ff    	je     talk_to_FIREMAN_SPARKY_branch_13
   2961d:	bb 01 00 00 00       	mov    ebx,0x1
   29622:	ba 18 7e 00 00       	mov    edx,@obj3:sparky_cpp_variable_28                             ; fixup: num: 6783, src obj: 1, src ofs: 0x29623, dst obj: 3, dst ofs: 0x7e18
   29627:	b8 c1 03 00 00       	mov    eax,0x3c1
   2962c:	e8 5f 10 04 00       	call   play_wav
   29631:	e9 3a fe ff ff       	jmp    talk_to_FIREMAN_SPARKY_branch_13
talk_to_FIREMAN_SPARKY_branch_23:
   29636:	bb 01 00 00 00       	mov    ebx,0x1
   2963b:	ba 1f 7e 00 00       	mov    edx,@obj3:sparky_cpp_variable_29                             ; fixup: num: 6782, src obj: 1, src ofs: 0x2963c, dst obj: 3, dst ofs: 0x7e1f
   29640:	b8 9e 03 00 00       	mov    eax,0x39e
talk_to_FIREMAN_SPARKY_branch_24:
   29645:	e8 46 10 04 00       	call   play_wav
   2964a:	31 c0                	xor    eax,eax
   2964c:	5d                   	pop    ebp
   2964d:	5f                   	pop    edi
   2964e:	5e                   	pop    esi
   2964f:	5a                   	pop    edx
   29650:	59                   	pop    ecx
   29651:	5b                   	pop    ebx
   29652:	c3                   	ret    
talk_to_FIREMAN_SPARKY_branch_25:
   29653:	89 15 40 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY,edx                        ; fixup: num: 6670, src obj: 1, src ofs: 0x29655, dst obj: 3, dst ofs: 0x22f40
   29659:	a1 40 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY                                  ; fixup: num: 6669, src obj: 1, src ofs: 0x2965a, dst obj: 3, dst ofs: 0x22f40
   2965e:	c3                   	ret    
   2965f:	90                   	nop

;-------------------------------------------------
;  Function 'FIREMAN_SPARKY_FIRST_CONVERSATION'  -
;-------------------------------------------------
FIREMAN_SPARKY_FIRST_CONVERSATION:
   29660:	85 c0                	test   eax,eax
   29662:	74 ef                	je     talk_to_FIREMAN_SPARKY_branch_25
   29664:	a1 40 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY                                  ; fixup: num: 6668, src obj: 1, src ofs: 0x29665, dst obj: 3, dst ofs: 0x22f40
   29669:	c3                   	ret    
FIREMAN_SPARKY_FIRST_CONVERSATION_branch_1:
   2966a:	89 15 44 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_1,edx             ; fixup: num: 6667, src obj: 1, src ofs: 0x2966c, dst obj: 3, dst ofs: 0x22f44
   29670:	a1 44 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY_variable_1                       ; fixup: num: 6795, src obj: 1, src ofs: 0x29671, dst obj: 3, dst ofs: 0x22f44
   29675:	c3                   	ret    
   29676:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2967c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'FIREMAN_SPARKY_DEFAULT_CONVERSATION'         -
;-------------------------------------------------
FIREMAN_SPARKY_DEFAULT_CONVERSATION:
   29680:	85 c0                	test   eax,eax
   29682:	74 e6                	je     FIREMAN_SPARKY_FIRST_CONVERSATION_branch_1
   29684:	a1 44 2f 02 00       	mov    eax,ds:@obj3:FIREMAN_SPARKY_variable_1                       ; fixup: num: 6794, src obj: 1, src ofs: 0x29685, dst obj: 3, dst ofs: 0x22f44
   29689:	c3                   	ret    
   2968a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'FIREMAN_SPARKY_initialize'          -
;-------------------------------------------------
FIREMAN_SPARKY_initialize:
   29690:	53                   	push   ebx
   29691:	52                   	push   edx
   29692:	ba 01 00 00 00       	mov    edx,0x1
   29697:	31 db                	xor    ebx,ebx
   29699:	89 15 40 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY,edx                        ; fixup: num: 6793, src obj: 1, src ofs: 0x2969b, dst obj: 3, dst ofs: 0x22f40
   2969f:	89 1d 44 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_1,ebx             ; fixup: num: 6792, src obj: 1, src ofs: 0x296a1, dst obj: 3, dst ofs: 0x22f44
   296a5:	89 1d 4c 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_3,ebx             ; fixup: num: 6791, src obj: 1, src ofs: 0x296a7, dst obj: 3, dst ofs: 0x22f4c
   296ab:	89 1d 50 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_4,ebx             ; fixup: num: 6790, src obj: 1, src ofs: 0x296ad, dst obj: 3, dst ofs: 0x22f50
   296b1:	89 1d 54 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_5,ebx             ; fixup: num: 6789, src obj: 1, src ofs: 0x296b3, dst obj: 3, dst ofs: 0x22f54
   296b7:	89 1d 58 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_6,ebx             ; fixup: num: 6788, src obj: 1, src ofs: 0x296b9, dst obj: 3, dst ofs: 0x22f58
   296bd:	89 1d 5c 2f 02 00    	mov    DWORD PTR ds:@obj3:FIREMAN_SPARKY_variable_7,ebx             ; fixup: num: 6787, src obj: 1, src ofs: 0x296bf, dst obj: 3, dst ofs: 0x22f5c
   296c3:	5a                   	pop    edx
   296c4:	5b                   	pop    ebx
   296c5:	c3                   	ret    
;-------------------------------------------------
;  Bad code 57 (zero after ret):                 -
;-------------------------------------------------
;  296c4:	5b                   	pop    ebx
;  296c5:	c3                   	ret    
;  296c6:	00 00                	add    BYTE PTR [eax],al
;  296c8:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   296c6:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 57                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 62 (D:\SOURCE\sparky.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 62: D:\SOURCE\sparky.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
sparky_cpp_variable_1:
    7d3c:	50 43 5f 54 52 49 45 53 5f 54 4f 5f 54 55 52 4e 5f 4f 4e 5f 4c 49 47 48 54 00 	db     "PC_TRIES_TO_TURN_ON_LIGHT",0x00
sparky_cpp_variable_2:
    7d56:	50 43 5f 54 52 49 45 53 5f 54 4f 5f 54 55 52 4e 5f 4f 4e 5f 4c 49 47 48 54 00 	db     "PC_TRIES_TO_TURN_ON_LIGHT",0x00
sparky_cpp_variable_3:
    7d70:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_4:
    7d77:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_5:
    7d7e:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_6:
    7d85:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_7:
    7d8c:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_8:
    7d93:	53 50 41 52 4b 59 5f 53 50 4f 54 53 5f 4d 45 41 54 00 	db     "SPARKY_SPOTS_MEAT",0x00
sparky_cpp_variable_9:
    7da5:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_10:
    7dac:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_11:
    7db3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7db4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7db5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sparky_cpp_variable_12:
    7db6:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_13:
    7dbd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7dbe:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7dbf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sparky_cpp_variable_14:
    7dc0:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_15:
    7dc7:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_16:
    7dce:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_17:
    7dd5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7dd6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7dd7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sparky_cpp_variable_18:
    7dd8:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_19:
    7ddf:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_20:
    7de6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
sparky_cpp_variable_21:
    7de7:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_22:
    7dee:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_23:
    7df5:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_24:
    7dfc:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_25:
    7e03:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_26:
    7e0a:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_27:
    7e11:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_28:
    7e18:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
sparky_cpp_variable_29:
    7e1f:	53 50 41 52 4b 59 00 	db     "SPARKY",0x00
    7e26:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 62 (D:\SOURCE\sparky.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 62: D:\SOURCE\sparky.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
FIREMAN_SPARKY:                                                                                     ; access size: DWORD
   22f40:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_1:                                                                          ; access size: DWORD
   22f44:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_2:                                                                          ; access size: DWORD
   22f48:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_3:                                                                          ; access size: DWORD
   22f4c:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_4:                                                                          ; access size: DWORD
   22f50:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_5:                                                                          ; access size: DWORD
   22f54:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_6:                                                                          ; access size: DWORD
   22f58:	00 00 00 00          	dd     0x00000000
FIREMAN_SPARKY_variable_7:                                                                          ; access size: DWORD
   22f5c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 62 (D:\SOURCE\sparky.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------