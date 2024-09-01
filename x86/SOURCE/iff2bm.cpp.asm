;-------------------------------------------------------------------------------
;                                                                              -
;  Module 13: D:\SOURCE\iff2bm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'iff2bm'                             -
;-------------------------------------------------
iff2bm:
   114a0:	51                   	push   ecx
   114a1:	56                   	push   esi
   114a2:	57                   	push   edi
   114a3:	55                   	push   ebp
   114a4:	83 ec 58             	sub    esp,0x58
   114a7:	89 c1                	mov    ecx,eax
   114a9:	89 d5                	mov    ebp,edx
   114ab:	52                   	push   edx
   114ac:	50                   	push   eax
   114ad:	68 b0 12 00 00       	push   @obj3:iff2bm_cpp_variable_1                                  ; fixup: num: 1884, src obj: 1, src ofs: 0x114ae, dst obj: 3, dst ofs: 0x12b0
   114b2:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1883, src obj: 1, src ofs: 0x114b3, dst obj: 3, dst ofs: 0x237fc
   114b7:	ba d0 12 00 00       	mov    edx,@obj3:iff2bm_cpp_variable_2                              ; fixup: num: 1882, src obj: 1, src ofs: 0x114b8, dst obj: 3, dst ofs: 0x12d0
   114bc:	e8 20 f7 05 00       	call   sprintf_
   114c1:	83 c4 10             	add    esp,0x10
   114c4:	89 c8                	mov    eax,ecx
   114c6:	89 1d 94 2a 02 00    	mov    DWORD PTR ds:@obj3:bm_number_of_colors,ebx                   ; fixup: num: 1881, src obj: 1, src ofs: 0x114c8, dst obj: 3, dst ofs: 0x22a94
   114cc:	e8 d7 f8 05 00       	call   fopen_
   114d1:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   114d5:	85 c0                	test   eax,eax
   114d7:	0f 84 d4 07 00 00    	je     iff2bm_branch_60
   114dd:	ba d3 12 00 00       	mov    edx,@obj3:iff2bm_cpp_variable_3                              ; fixup: num: 1880, src obj: 1, src ofs: 0x114de, dst obj: 3, dst ofs: 0x12d3
   114e2:	89 e8                	mov    eax,ebp
   114e4:	e8 bf f8 05 00       	call   fopen_
   114e9:	a3 8c 2a 02 00       	mov    ds:@obj3:output_file,eax                                     ; fixup: num: 1879, src obj: 1, src ofs: 0x114ea, dst obj: 3, dst ofs: 0x22a8c
   114ee:	85 c0                	test   eax,eax
   114f0:	75 0f                	jne    iff2bm_branch_1
   114f2:	bb d7 12 00 00       	mov    ebx,@obj3:iff2bm_cpp_variable_4                              ; fixup: num: 1878, src obj: 1, src ofs: 0x114f3, dst obj: 3, dst ofs: 0x12d7
   114f7:	ba 41 00 00 00       	mov    edx,0x41
   114fc:	e8 2f 6b 02 00       	call   _error_report
iff2bm_branch_1:
   11501:	89 ea                	mov    edx,ebp
   11503:	31 f6                	xor    esi,esi
   11505:	eb 02                	jmp    iff2bm_branch_3
iff2bm_branch_2:
   11507:	42                   	inc    edx
   11508:	46                   	inc    esi
iff2bm_branch_3:
   11509:	89 ef                	mov    edi,ebp
   1150b:	29 c9                	sub    ecx,ecx
   1150d:	49                   	dec    ecx
   1150e:	31 c0                	xor    eax,eax
   11510:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   11512:	f7 d1                	not    ecx
   11514:	49                   	dec    ecx
   11515:	39 ce                	cmp    esi,ecx
   11517:	73 05                	jae    iff2bm_branch_4
   11519:	80 3a 2e             	cmp    BYTE PTR [edx],0x2e
   1151c:	75 e9                	jne    iff2bm_branch_2
iff2bm_branch_4:
   1151e:	89 ef                	mov    edi,ebp
   11520:	29 c9                	sub    ecx,ecx
   11522:	49                   	dec    ecx
   11523:	31 c0                	xor    eax,eax
   11525:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   11527:	f7 d1                	not    ecx
   11529:	49                   	dec    ecx
   1152a:	8d 41 05             	lea    eax,[ecx+0x5]
   1152d:	e8 61 ff 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   11532:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
   11536:	85 c0                	test   eax,eax
   11538:	75 0f                	jne    iff2bm_branch_5
   1153a:	bb ec 12 00 00       	mov    ebx,@obj3:iff2bm_cpp_variable_5                              ; fixup: num: 1877, src obj: 1, src ofs: 0x1153b, dst obj: 3, dst ofs: 0x12ec
   1153f:	ba 44 00 00 00       	mov    edx,0x44
   11544:	e8 e7 6a 02 00       	call   _error_report
iff2bm_branch_5:
   11549:	85 f6                	test   esi,esi
   1154b:	7e 14                	jle    iff2bm_branch_6
   1154d:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   11551:	89 f3                	mov    ebx,esi
   11553:	89 ea                	mov    edx,ebp
   11555:	e8 54 48 06 00       	call   strncpy_
   1155a:	03 74 24 2c          	add    esi,DWORD PTR [esp+0x2c]
   1155e:	c6 06 00             	mov    BYTE PTR [esi],0x0
iff2bm_branch_6:
   11561:	be 0d 13 00 00       	mov    esi,@obj3:iff2bm_cpp_variable_6                              ; fixup: num: 1896, src obj: 1, src ofs: 0x11562, dst obj: 3, dst ofs: 0x130d
   11566:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
   1156a:	57                   	push   edi
   1156b:	2b c9                	sub    ecx,ecx
   1156d:	49                   	dec    ecx
   1156e:	b0 00                	mov    al,0x0
   11570:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   11572:	4f                   	dec    edi
iff2bm_branch_7:
   11573:	8a 06                	mov    al,BYTE PTR [esi]
   11575:	88 07                	mov    BYTE PTR [edi],al
   11577:	3c 00                	cmp    al,0x0
   11579:	74 10                	je     iff2bm_branch_8
   1157b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1157e:	83 c6 02             	add    esi,0x2
   11581:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   11584:	83 c7 02             	add    edi,0x2
   11587:	3c 00                	cmp    al,0x0
   11589:	75 e8                	jne    iff2bm_branch_7
iff2bm_branch_8:
   1158b:	5f                   	pop    edi
   1158c:	57                   	push   edi
   1158d:	68 12 13 00 00       	push   @obj3:iff2bm_cpp_variable_7                                  ; fixup: num: 1895, src obj: 1, src ofs: 0x1158e, dst obj: 3, dst ofs: 0x1312
   11592:	68 fc 37 02 00       	push   @obj3:log_buffer                                             ; fixup: num: 1894, src obj: 1, src ofs: 0x11593, dst obj: 3, dst ofs: 0x237fc
   11597:	e8 45 f6 05 00       	call   sprintf_
   1159c:	83 c4 0c             	add    esp,0xc
   1159f:	ba 26 13 00 00       	mov    edx,@obj3:iff2bm_cpp_variable_8                              ; fixup: num: 1893, src obj: 1, src ofs: 0x115a0, dst obj: 3, dst ofs: 0x1326
   115a4:	89 f8                	mov    eax,edi
   115a6:	e8 fd f7 05 00       	call   fopen_
   115ab:	a3 90 2a 02 00       	mov    ds:@obj3:pal_file,eax                                        ; fixup: num: 1892, src obj: 1, src ofs: 0x115ac, dst obj: 3, dst ofs: 0x22a90
   115b0:	85 c0                	test   eax,eax
   115b2:	75 0f                	jne    iff2bm_branch_9
   115b4:	bb 2a 13 00 00       	mov    ebx,@obj3:iff2bm_cpp_variable_9                              ; fixup: num: 1891, src obj: 1, src ofs: 0x115b5, dst obj: 3, dst ofs: 0x132a
   115b9:	ba 4d 00 00 00       	mov    edx,0x4d
   115be:	e8 6d 6a 02 00       	call   _error_report
iff2bm_branch_9:
   115c3:	b9 10 25 01 00       	mov    ecx,@obj1:dosetup                                            ; fixup: num: 1890, src obj: 1, src ofs: 0x115c4, dst obj: 1, dst ofs: 0x12510
   115c8:	be 40 25 01 00       	mov    esi,@obj1:doclosedown                                        ; fixup: num: 1889, src obj: 1, src ofs: 0x115c9, dst obj: 1, dst ofs: 0x12540
   115cd:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   115d1:	bf 70 27 02 00       	mov    edi,@obj3:fi                                                 ; fixup: num: 1888, src obj: 1, src ofs: 0x115d2, dst obj: 3, dst ofs: 0x22770
   115d6:	bb 04 00 00 00       	mov    ebx,0x4
   115db:	ba 01 00 00 00       	mov    edx,0x1
   115e0:	89 0d 80 2a 02 00    	mov    DWORD PTR ds:@obj3:fi_variable_2,ecx                         ; fixup: num: 1887, src obj: 1, src ofs: 0x115e2, dst obj: 3, dst ofs: 0x22a80
   115e6:	89 35 84 2a 02 00    	mov    DWORD PTR ds:@obj3:fi_variable_3,esi                         ; fixup: num: 1886, src obj: 1, src ofs: 0x115e8, dst obj: 3, dst ofs: 0x22a84
   115ec:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
   115f0:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
   115f4:	bf 44 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_10                             ; fixup: num: 1885, src obj: 1, src ofs: 0x115f5, dst obj: 3, dst ofs: 0x1344
   115f9:	89 c1                	mov    ecx,eax
   115fb:	8d 44 24 24          	lea    eax,[esp+0x24]
   115ff:	8d 74 24 24          	lea    esi,[esp+0x24]
   11603:	e8 cb 47 06 00       	call   fread_
   11608:	b9 04 00 00 00       	mov    ecx,0x4
   1160d:	31 c0                	xor    eax,eax
   1160f:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11611:	74 05                	je     iff2bm_branch_10
   11613:	19 c0                	sbb    eax,eax
   11615:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_10:
   11618:	85 c0                	test   eax,eax
   1161a:	74 3e                	je     iff2bm_branch_13
   1161c:	b9 04 00 00 00       	mov    ecx,0x4
   11621:	bf 49 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_11                             ; fixup: num: 1898, src obj: 1, src ofs: 0x11622, dst obj: 3, dst ofs: 0x1349
   11626:	8d 74 24 24          	lea    esi,[esp+0x24]
   1162a:	31 c0                	xor    eax,eax
   1162c:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   1162e:	74 05                	je     iff2bm_branch_11
   11630:	19 c0                	sbb    eax,eax
   11632:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_11:
   11635:	85 c0                	test   eax,eax
   11637:	74 21                	je     iff2bm_branch_13
   11639:	b9 04 00 00 00       	mov    ecx,0x4
   1163e:	bf 4e 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_12                             ; fixup: num: 1897, src obj: 1, src ofs: 0x1163f, dst obj: 3, dst ofs: 0x134e
   11643:	8d 74 24 24          	lea    esi,[esp+0x24]
   11647:	31 c0                	xor    eax,eax
   11649:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   1164b:	74 05                	je     iff2bm_branch_12
   1164d:	19 c0                	sbb    eax,eax
   1164f:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_12:
   11652:	85 c0                	test   eax,eax
   11654:	0f 85 0f 06 00 00    	jne    iff2bm_branch_57
iff2bm_branch_13:
   1165a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   1165e:	bb 04 00 00 00       	mov    ebx,0x4
   11663:	ba 01 00 00 00       	mov    edx,0x1
   11668:	8d 44 24 18          	lea    eax,[esp+0x18]
   1166c:	8b 74 24 38          	mov    esi,DWORD PTR [esp+0x38]
   11670:	e8 5e 47 06 00       	call   fread_
   11675:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   11679:	bb 04 00 00 00       	mov    ebx,0x4
   1167e:	83 c6 0c             	add    esi,0xc
   11681:	ba 01 00 00 00       	mov    edx,0x1
   11686:	89 f0                	mov    eax,esi
   11688:	8b 6c 24 38          	mov    ebp,DWORD PTR [esp+0x38]
   1168c:	e8 42 47 06 00       	call   fread_
   11691:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11695:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
   11699:	83 c0 10             	add    eax,0x10
   1169c:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
   116a0:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
iff2bm_branch_14:
   116a4:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   116a8:	bb 04 00 00 00       	mov    ebx,0x4
   116ad:	ba 01 00 00 00       	mov    edx,0x1
   116b2:	8d 44 24 24          	lea    eax,[esp+0x24]
   116b6:	e8 18 47 06 00       	call   fread_
   116bb:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   116bf:	bb 04 00 00 00       	mov    ebx,0x4
   116c4:	ba 01 00 00 00       	mov    edx,0x1
   116c9:	8d 44 24 18          	lea    eax,[esp+0x18]
   116cd:	e8 01 47 06 00       	call   fread_
   116d2:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   116d6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   116da:	81 e2 00 00 00 ff    	and    edx,0xff000000
   116e0:	25 00 00 ff 00       	and    eax,0xff0000
   116e5:	c1 ea 18             	shr    edx,0x18
   116e8:	c1 e8 08             	shr    eax,0x8
   116eb:	01 c2                	add    edx,eax
   116ed:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   116f1:	25 00 ff 00 00       	and    eax,0xff00
   116f6:	c1 e0 08             	shl    eax,0x8
   116f9:	01 d0                	add    eax,edx
   116fb:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   116ff:	81 e2 ff 00 00 00    	and    edx,0xff
   11705:	c1 e2 18             	shl    edx,0x18
   11708:	01 d0                	add    eax,edx
   1170a:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
   1170e:	a8 01                	test   al,0x1
   11710:	74 05                	je     iff2bm_branch_15
   11712:	40                   	inc    eax
   11713:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
iff2bm_branch_15:
   11717:	31 c0                	xor    eax,eax
   11719:	8a 44 24 27          	mov    al,BYTE PTR [esp+0x27]
   1171d:	50                   	push   eax
   1171e:	31 c0                	xor    eax,eax
   11720:	8a 44 24 2a          	mov    al,BYTE PTR [esp+0x2a]
   11724:	50                   	push   eax
   11725:	31 c0                	xor    eax,eax
   11727:	8a 44 24 2d          	mov    al,BYTE PTR [esp+0x2d]
   1172b:	50                   	push   eax
   1172c:	31 c0                	xor    eax,eax
   1172e:	8a 44 24 30          	mov    al,BYTE PTR [esp+0x30]
   11732:	50                   	push   eax
   11733:	68 53 13 00 00       	push   @obj3:iff2bm_cpp_variable_13                                 ; fixup: num: 1900, src obj: 1, src ofs: 0x11734, dst obj: 3, dst ofs: 0x1353
   11738:	b9 04 00 00 00       	mov    ecx,0x4
   1173d:	e8 10 f4 05 00       	call   printf_
   11742:	83 c4 14             	add    esp,0x14
   11745:	bf 68 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_14                             ; fixup: num: 1899, src obj: 1, src ofs: 0x11746, dst obj: 3, dst ofs: 0x1368
   1174a:	8d 74 24 24          	lea    esi,[esp+0x24]
   1174e:	31 c0                	xor    eax,eax
   11750:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11752:	74 05                	je     iff2bm_branch_16
   11754:	19 c0                	sbb    eax,eax
   11756:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_16:
   11759:	85 c0                	test   eax,eax
   1175b:	0f 85 c8 00 00 00    	jne    iff2bm_branch_19
   11761:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   11765:	bb 14 00 00 00       	mov    ebx,0x14
   1176a:	ba 01 00 00 00       	mov    edx,0x1
   1176f:	89 e0                	mov    eax,esp
   11771:	e8 5d 46 06 00       	call   fread_
   11776:	83 f8 14             	cmp    eax,0x14
   11779:	0f 85 ea 04 00 00    	jne    iff2bm_branch_57
   1177f:	8b 04 24             	mov    eax,DWORD PTR [esp]
   11782:	30 c0                	xor    al,al
   11784:	89 c2                	mov    edx,eax
   11786:	81 e2 ff ff 00 00    	and    edx,0xffff
   1178c:	8b 04 24             	mov    eax,DWORD PTR [esp]
   1178f:	c1 fa 08             	sar    edx,0x8
   11792:	30 e4                	xor    ah,ah
   11794:	25 ff ff 00 00       	and    eax,0xffff
   11799:	c1 e0 08             	shl    eax,0x8
   1179c:	09 d0                	or     eax,edx
   1179e:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   117a2:	66 89 02             	mov    WORD PTR [edx],ax
   117a5:	8b 44 24 02          	mov    eax,DWORD PTR [esp+0x2]
   117a9:	31 d2                	xor    edx,edx
   117ab:	30 c0                	xor    al,al
   117ad:	66 89 c2             	mov    dx,ax
   117b0:	8b 44 24 02          	mov    eax,DWORD PTR [esp+0x2]
   117b4:	c1 fa 08             	sar    edx,0x8
   117b7:	30 e4                	xor    ah,ah
   117b9:	25 ff ff 00 00       	and    eax,0xffff
   117be:	c1 e0 08             	shl    eax,0x8
   117c1:	09 d0                	or     eax,edx
   117c3:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   117c7:	b9 04 00 00 00       	mov    ecx,0x4
   117cc:	66 89 42 02          	mov    WORD PTR [edx+0x2],ax
   117d0:	31 c0                	xor    eax,eax
   117d2:	bf 6d 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_15                             ; fixup: num: 1901, src obj: 1, src ofs: 0x117d3, dst obj: 3, dst ofs: 0x136d
   117d7:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   117db:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   117df:	66 89 42 06          	mov    WORD PTR [edx+0x6],ax
   117e3:	31 c0                	xor    eax,eax
   117e5:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   117e7:	74 05                	je     iff2bm_branch_17
   117e9:	19 c0                	sbb    eax,eax
   117eb:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_17:
   117ee:	85 c0                	test   eax,eax
   117f0:	75 2b                	jne    iff2bm_branch_18
   117f2:	0f bf 12             	movsx  edx,WORD PTR [edx]
   117f5:	83 c2 07             	add    edx,0x7
   117f8:	89 d0                	mov    eax,edx
   117fa:	c1 fa 1f             	sar    edx,0x1f
   117fd:	c1 e2 03             	shl    edx,0x3
   11800:	1b c2                	sbb    eax,edx
   11802:	c1 f8 03             	sar    eax,0x3
   11805:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   11809:	0f bf 52 06          	movsx  edx,WORD PTR [edx+0x6]
   1180d:	0f af c2             	imul   eax,edx
   11810:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   11814:	66 89 42 04          	mov    WORD PTR [edx+0x4],ax
   11818:	e9 1d 04 00 00       	jmp    iff2bm_branch_54
iff2bm_branch_18:
   1181d:	66 8b 02             	mov    ax,WORD PTR [edx]
   11820:	66 89 42 04          	mov    WORD PTR [edx+0x4],ax
   11824:	e9 11 04 00 00       	jmp    iff2bm_branch_54
iff2bm_branch_19:
   11829:	b9 04 00 00 00       	mov    ecx,0x4
   1182e:	bf 72 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_16                             ; fixup: num: 1902, src obj: 1, src ofs: 0x1182f, dst obj: 3, dst ofs: 0x1372
   11833:	8d 74 24 24          	lea    esi,[esp+0x24]
   11837:	31 c0                	xor    eax,eax
   11839:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   1183b:	74 05                	je     iff2bm_branch_20
   1183d:	19 c0                	sbb    eax,eax
   1183f:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_20:
   11842:	85 c0                	test   eax,eax
   11844:	75 6f                	jne    iff2bm_branch_23
   11846:	0f bf 44 24 18       	movsx  eax,WORD PTR [esp+0x18]
   1184b:	3d 00 03 00 00       	cmp    eax,0x300
   11850:	7f 2e                	jg     iff2bm_branch_21
   11852:	0f bf 5c 24 18       	movsx  ebx,WORD PTR [esp+0x18]
   11857:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   1185b:	ba 01 00 00 00       	mov    edx,0x1
   11860:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   11864:	e8 6a 45 06 00       	call   fread_
   11869:	0f bf 54 24 18       	movsx  edx,WORD PTR [esp+0x18]
   1186e:	39 d0                	cmp    eax,edx
   11870:	0f 84 c4 03 00 00    	je     iff2bm_branch_54
   11876:	ba 02 00 00 00       	mov    edx,0x2
   1187b:	e9 ee 03 00 00       	jmp    iff2bm_branch_58
iff2bm_branch_21:
   11880:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   11884:	bb 00 03 00 00       	mov    ebx,0x300
   11889:	ba 01 00 00 00       	mov    edx,0x1
   1188e:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   11892:	e8 3c 45 06 00       	call   fread_
   11897:	3d 00 03 00 00       	cmp    eax,0x300
   1189c:	74 0a                	je     iff2bm_branch_22
   1189e:	ba 02 00 00 00       	mov    edx,0x2
   118a3:	e9 c6 03 00 00       	jmp    iff2bm_branch_58
iff2bm_branch_22:
   118a8:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
   118ac:	31 db                	xor    ebx,ebx
   118ae:	29 c2                	sub    edx,eax
   118b0:	e9 7c 03 00 00       	jmp    iff2bm_branch_53
iff2bm_branch_23:
   118b5:	b9 04 00 00 00       	mov    ecx,0x4
   118ba:	bf 77 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_17                             ; fixup: num: 1903, src obj: 1, src ofs: 0x118bb, dst obj: 3, dst ofs: 0x1377
   118bf:	8d 74 24 24          	lea    esi,[esp+0x24]
   118c3:	31 c0                	xor    eax,eax
   118c5:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   118c7:	74 05                	je     iff2bm_branch_24
   118c9:	19 c0                	sbb    eax,eax
   118cb:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_24:
   118ce:	85 c0                	test   eax,eax
   118d0:	0f 85 52 03 00 00    	jne    iff2bm_branch_52
   118d6:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   118da:	89 c2                	mov    edx,eax
   118dc:	ff 92 10 03 00 00    	call   DWORD PTR [edx+0x310]
   118e2:	85 c0                	test   eax,eax
   118e4:	74 0a                	je     iff2bm_branch_25
   118e6:	ba 03 00 00 00       	mov    edx,0x3
   118eb:	e9 7e 03 00 00       	jmp    iff2bm_branch_58
iff2bm_branch_25:
   118f0:	89 d0                	mov    eax,edx
   118f2:	0f bf 00             	movsx  eax,WORD PTR [eax]
   118f5:	e8 99 fb 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   118fa:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
   118fe:	85 c0                	test   eax,eax
   11900:	0f 84 fa 02 00 00    	je     iff2bm_branch_50
   11906:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   1190a:	31 d2                	xor    edx,edx
   1190c:	66 8b 58 02          	mov    bx,WORD PTR [eax+0x2]
   11910:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
   11914:	66 85 db             	test   bx,bx
   11917:	7f 1f                	jg     iff2bm_branch_27
   11919:	e9 f3 02 00 00       	jmp    iff2bm_branch_51
iff2bm_branch_26:
   1191e:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
   11922:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
   11926:	41                   	inc    ecx
   11927:	66 8b 72 02          	mov    si,WORD PTR [edx+0x2]
   1192b:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
   1192f:	66 39 f1             	cmp    cx,si
   11932:	0f 8d d9 02 00 00    	jge    iff2bm_branch_51
iff2bm_branch_27:
   11938:	80 7c 24 0a 00       	cmp    BYTE PTR [esp+0xa],0x0
   1193d:	0f 84 87 00 00 00    	je     iff2bm_branch_33
   11943:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11947:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   1194b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   1194f:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
   11953:	31 d2                	xor    edx,edx
   11955:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
iff2bm_branch_28:
   11959:	89 c8                	mov    eax,ecx
   1195b:	e8 3d 46 06 00       	call   fgetc_
   11960:	89 c3                	mov    ebx,eax
   11962:	30 e7                	xor    bh,ah
   11964:	30 e4                	xor    ah,ah
   11966:	24 80                	and    al,0x80
   11968:	98                   	cwde   
   11969:	66 89 5c 24 4c       	mov    WORD PTR [esp+0x4c],bx
   1196e:	85 c0                	test   eax,eax
   11970:	74 33                	je     iff2bm_branch_30
   11972:	0f bf c3             	movsx  eax,bx
   11975:	3d 80 00 00 00       	cmp    eax,0x80
   1197a:	74 43                	je     iff2bm_branch_32
   1197c:	89 c8                	mov    eax,ecx
   1197e:	f7 d3                	not    ebx
   11980:	e8 18 46 06 00       	call   fgetc_
   11985:	30 ff                	xor    bh,bh
   11987:	66 89 44 24 4c       	mov    WORD PTR [esp+0x4c],ax
   1198c:	83 c3 02             	add    ebx,0x2
iff2bm_branch_29:
   1198f:	4b                   	dec    ebx
   11990:	66 83 fb ff          	cmp    bx,0xffff
   11994:	74 29                	je     iff2bm_branch_32
   11996:	0f bf c2             	movsx  eax,dx
   11999:	8d 3c 06             	lea    edi,[esi+eax*1]
   1199c:	8a 44 24 4c          	mov    al,BYTE PTR [esp+0x4c]
   119a0:	42                   	inc    edx
   119a1:	88 07                	mov    BYTE PTR [edi],al
   119a3:	eb ea                	jmp    iff2bm_branch_29
iff2bm_branch_30:
   119a5:	30 ff                	xor    bh,bh
   119a7:	43                   	inc    ebx
iff2bm_branch_31:
   119a8:	4b                   	dec    ebx
   119a9:	66 83 fb ff          	cmp    bx,0xffff
   119ad:	74 10                	je     iff2bm_branch_32
   119af:	89 c8                	mov    eax,ecx
   119b1:	e8 e7 45 06 00       	call   fgetc_
   119b6:	0f bf fa             	movsx  edi,dx
   119b9:	42                   	inc    edx
   119ba:	88 04 37             	mov    BYTE PTR [edi+esi*1],al
   119bd:	eb e9                	jmp    iff2bm_branch_31
iff2bm_branch_32:
   119bf:	66 3b 54 24 44       	cmp    dx,WORD PTR [esp+0x44]
   119c4:	7c 93                	jl     iff2bm_branch_28
   119c6:	89 d3                	mov    ebx,edx
   119c8:	eb 1c                	jmp    iff2bm_branch_34
iff2bm_branch_33:
   119ca:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
   119ce:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
   119d2:	ba 01 00 00 00       	mov    edx,0x1
   119d7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   119db:	0f bf 5b 04          	movsx  ebx,WORD PTR [ebx+0x4]
   119df:	e8 ef 43 06 00       	call   fread_
   119e4:	89 c3                	mov    ebx,eax
iff2bm_branch_34:
   119e6:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   119ea:	66 3b 58 04          	cmp    bx,WORD PTR [eax+0x4]
   119ee:	74 35                	je     iff2bm_branch_36
   119f0:	8b 2d 88 2a 02 00    	mov    ebp,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1905, src obj: 1, src ofs: 0x119f2, dst obj: 3, dst ofs: 0x22a88
   119f6:	85 ed                	test   ebp,ebp
   119f8:	74 07                	je     iff2bm_branch_35
   119fa:	89 e8                	mov    eax,ebp
   119fc:	e8 e7 f9 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
iff2bm_branch_35:
   11a01:	31 c0                	xor    eax,eax
   11a03:	a3 88 2a 02 00       	mov    ds:@obj3:buffer,eax                                          ; fixup: num: 1904, src obj: 1, src ofs: 0x11a04, dst obj: 3, dst ofs: 0x22a88
   11a08:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11a0c:	e8 d7 f9 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   11a11:	b8 7c 13 00 00       	mov    eax,@obj3:iff2bm_cpp_variable_18                             ; fixup: num: 1908, src obj: 1, src ofs: 0x11a12, dst obj: 3, dst ofs: 0x137c
   11a16:	ba 02 00 00 00       	mov    edx,0x2
   11a1b:	e8 4f f6 05 00       	call   puts_
   11a20:	e9 49 02 00 00       	jmp    iff2bm_branch_58
iff2bm_branch_36:
   11a25:	b9 04 00 00 00       	mov    ecx,0x4
   11a2a:	bf 8f 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_19                             ; fixup: num: 1907, src obj: 1, src ofs: 0x11a2b, dst obj: 3, dst ofs: 0x138f
   11a2f:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
   11a33:	31 c0                	xor    eax,eax
   11a35:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11a37:	74 05                	je     iff2bm_branch_37
   11a39:	19 c0                	sbb    eax,eax
   11a3b:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_37:
   11a3e:	85 c0                	test   eax,eax
   11a40:	74 32                	je     iff2bm_branch_39
   11a42:	b9 04 00 00 00       	mov    ecx,0x4
   11a47:	bf 94 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_20                             ; fixup: num: 1906, src obj: 1, src ofs: 0x11a48, dst obj: 3, dst ofs: 0x1394
   11a4c:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
   11a50:	31 c0                	xor    eax,eax
   11a52:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11a54:	74 05                	je     iff2bm_branch_38
   11a56:	19 c0                	sbb    eax,eax
   11a58:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_38:
   11a5b:	85 c0                	test   eax,eax
   11a5d:	0f 85 4d 01 00 00    	jne    iff2bm_branch_49
   11a63:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11a67:	0f bf 40 06          	movsx  eax,WORD PTR [eax+0x6]
   11a6b:	83 f8 08             	cmp    eax,0x8
   11a6e:	0f 8d 3c 01 00 00    	jge    iff2bm_branch_49
iff2bm_branch_39:
   11a74:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11a78:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   11a7c:	0f bf 45 00          	movsx  eax,WORD PTR [ebp+0x0]
   11a80:	e8 0e fa 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   11a85:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
   11a89:	85 c0                	test   eax,eax
   11a8b:	0f 84 a0 00 00 00    	je     iff2bm_branch_45
   11a91:	0f bf 55 00          	movsx  edx,WORD PTR [ebp+0x0]
   11a95:	83 c2 07             	add    edx,0x7
   11a98:	89 d0                	mov    eax,edx
   11a9a:	c1 fa 1f             	sar    edx,0x1f
   11a9d:	c1 e2 03             	shl    edx,0x3
   11aa0:	1b c2                	sbb    eax,edx
   11aa2:	c1 f8 03             	sar    eax,0x3
   11aa5:	66 8b 5d 00          	mov    bx,WORD PTR [ebp+0x0]
   11aa9:	31 ff                	xor    edi,edi
   11aab:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
   11aaf:	66 85 db             	test   bx,bx
   11ab2:	0f 8e 75 00 00 00    	jle    iff2bm_branch_44
   11ab8:	eb 0b                	jmp    iff2bm_branch_41
iff2bm_branch_40:
   11aba:	47                   	inc    edi
   11abb:	66 3b 7d 00          	cmp    di,WORD PTR [ebp+0x0]
   11abf:	0f 8d 68 00 00 00    	jge    iff2bm_branch_44
iff2bm_branch_41:
   11ac5:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
   11ac9:	0f bf c7             	movsx  eax,di
   11acc:	01 d8                	add    eax,ebx
   11ace:	c6 00 00             	mov    BYTE PTR [eax],0x0
   11ad1:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
   11ad5:	66 8b 75 06          	mov    si,WORD PTR [ebp+0x6]
   11ad9:	31 c0                	xor    eax,eax
   11adb:	66 85 f6             	test   si,si
   11ade:	7e da                	jle    iff2bm_branch_40
   11ae0:	89 fb                	mov    ebx,edi
   11ae2:	30 ff                	xor    bh,bh
   11ae4:	80 e3 07             	and    bl,0x7
   11ae7:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
iff2bm_branch_42:
   11aeb:	0f bf df             	movsx  ebx,di
   11aee:	89 d9                	mov    ecx,ebx
   11af0:	c1 f9 03             	sar    ecx,0x3
   11af3:	8a 0c 11             	mov    cl,BYTE PTR [ecx+edx*1]
   11af6:	0f bf 74 24 50       	movsx  esi,WORD PTR [esp+0x50]
   11afb:	81 e1 ff 00 00 00    	and    ecx,0xff
   11b01:	0f b6 b6 74 2e 01 00 	movzx  esi,BYTE PTR [esi+@obj3:masktable]                           ; fixup: num: 1912, src obj: 1, src ofs: 0x11b04, dst obj: 3, dst ofs: 0x12e74
   11b08:	85 f1                	test   ecx,esi
   11b0a:	74 11                	je     iff2bm_branch_43
   11b0c:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
   11b10:	0f bf f0             	movsx  esi,ax
   11b13:	01 cb                	add    ebx,ecx
   11b15:	8a 8e 7c 2e 01 00    	mov    cl,BYTE PTR [esi+@obj3:bittable]                             ; fixup: num: 1911, src obj: 1, src ofs: 0x11b17, dst obj: 3, dst ofs: 0x12e7c
   11b1b:	08 0b                	or     BYTE PTR [ebx],cl
iff2bm_branch_43:
   11b1d:	0f bf 5c 24 48       	movsx  ebx,WORD PTR [esp+0x48]
   11b22:	40                   	inc    eax
   11b23:	01 da                	add    edx,ebx
   11b25:	66 3b 45 06          	cmp    ax,WORD PTR [ebp+0x6]
   11b29:	7d 8f                	jge    iff2bm_branch_40
   11b2b:	eb be                	jmp    iff2bm_branch_42
iff2bm_branch_44:
   11b2d:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
iff2bm_branch_45:
   11b31:	89 c3                	mov    ebx,eax
   11b33:	85 c0                	test   eax,eax
   11b35:	75 2c                	jne    iff2bm_branch_47
   11b37:	8b 35 88 2a 02 00    	mov    esi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1910, src obj: 1, src ofs: 0x11b39, dst obj: 3, dst ofs: 0x22a88
   11b3d:	85 f6                	test   esi,esi
   11b3f:	74 07                	je     iff2bm_branch_46
   11b41:	89 f0                	mov    eax,esi
   11b43:	e8 a0 f8 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
iff2bm_branch_46:
   11b48:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11b4c:	31 ff                	xor    edi,edi
   11b4e:	ba 03 00 00 00       	mov    edx,0x3
   11b53:	89 3d 88 2a 02 00    	mov    DWORD PTR ds:@obj3:buffer,edi                                ; fixup: num: 1909, src obj: 1, src ofs: 0x11b55, dst obj: 3, dst ofs: 0x22a88
   11b59:	e8 8a f8 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   11b5e:	e9 0b 01 00 00       	jmp    iff2bm_branch_58
iff2bm_branch_47:
   11b63:	31 d2                	xor    edx,edx
   11b65:	66 8b 54 24 54       	mov    dx,WORD PTR [esp+0x54]
   11b6a:	85 d2                	test   edx,edx
   11b6c:	7c 36                	jl     iff2bm_branch_48
   11b6e:	0f bf 0d 72 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi_variable_1                          ; fixup: num: 1921, src obj: 1, src ofs: 0x11b71, dst obj: 3, dst ofs: 0x22772
   11b75:	39 ca                	cmp    edx,ecx
   11b77:	7d 2b                	jge    iff2bm_branch_48
   11b79:	0f bf 35 70 27 02 00 	movsx  esi,WORD PTR ds:@obj3:fi                                     ; fixup: num: 1920, src obj: 1, src ofs: 0x11b7c, dst obj: 3, dst ofs: 0x22770
   11b80:	0f af d6             	imul   edx,esi
   11b83:	0f bf 0d 70 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 1919, src obj: 1, src ofs: 0x11b86, dst obj: 3, dst ofs: 0x22770
   11b8a:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1918, src obj: 1, src ofs: 0x11b8c, dst obj: 3, dst ofs: 0x22a88
   11b90:	89 c6                	mov    esi,eax
   11b92:	01 d7                	add    edi,edx
   11b94:	57                   	push   edi
   11b95:	89 c8                	mov    eax,ecx
   11b97:	c1 e9 02             	shr    ecx,0x2
   11b9a:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   11b9c:	8a c8                	mov    cl,al
   11b9e:	80 e1 03             	and    cl,0x3
   11ba1:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   11ba3:	5f                   	pop    edi
iff2bm_branch_48:
   11ba4:	89 d8                	mov    eax,ebx
   11ba6:	e8 3d f8 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   11bab:	e9 6e fd ff ff       	jmp    iff2bm_branch_26
iff2bm_branch_49:
   11bb0:	31 c0                	xor    eax,eax
   11bb2:	66 8b 44 24 54       	mov    ax,WORD PTR [esp+0x54]
   11bb7:	85 c0                	test   eax,eax
   11bb9:	0f 8c 5f fd ff ff    	jl     iff2bm_branch_26
   11bbf:	0f bf 15 72 27 02 00 	movsx  edx,WORD PTR ds:@obj3:fi_variable_1                          ; fixup: num: 1917, src obj: 1, src ofs: 0x11bc2, dst obj: 3, dst ofs: 0x22772
   11bc6:	39 d0                	cmp    eax,edx
   11bc8:	0f 8d 50 fd ff ff    	jge    iff2bm_branch_26
   11bce:	0f bf 15 70 27 02 00 	movsx  edx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 1916, src obj: 1, src ofs: 0x11bd1, dst obj: 3, dst ofs: 0x22770
   11bd5:	0f af c2             	imul   eax,edx
   11bd8:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   11bdc:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1915, src obj: 1, src ofs: 0x11bde, dst obj: 3, dst ofs: 0x22a88
   11be2:	0f bf 0d 70 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 1914, src obj: 1, src ofs: 0x11be5, dst obj: 3, dst ofs: 0x22770
   11be9:	01 c7                	add    edi,eax
   11beb:	57                   	push   edi
   11bec:	89 c8                	mov    eax,ecx
   11bee:	c1 e9 02             	shr    ecx,0x2
   11bf1:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   11bf3:	8a c8                	mov    cl,al
   11bf5:	80 e1 03             	and    cl,0x3
   11bf8:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   11bfa:	5f                   	pop    edi
   11bfb:	e9 1e fd ff ff       	jmp    iff2bm_branch_26
iff2bm_branch_50:
   11c00:	b8 99 13 00 00       	mov    eax,@obj3:iff2bm_cpp_variable_21                             ; fixup: num: 1913, src obj: 1, src ofs: 0x11c01, dst obj: 3, dst ofs: 0x1399
   11c05:	ba 03 00 00 00       	mov    edx,0x3
   11c0a:	e8 60 f4 05 00       	call   puts_
   11c0f:	eb 5d                	jmp    iff2bm_branch_58
iff2bm_branch_51:
   11c11:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
   11c15:	e8 ce f7 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   11c1a:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
   11c1e:	89 c2                	mov    edx,eax
   11c20:	ff 92 14 03 00 00    	call   DWORD PTR [edx+0x314]
   11c26:	eb 12                	jmp    iff2bm_branch_54
iff2bm_branch_52:
   11c28:	bb 01 00 00 00       	mov    ebx,0x1
   11c2d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
iff2bm_branch_53:
   11c31:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   11c35:	e8 08 45 06 00       	call   fseek_
iff2bm_branch_54:
   11c3a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
   11c3e:	f6 40 0c 20          	test   BYTE PTR [eax+0xc],0x20
   11c42:	75 21                	jne    iff2bm_branch_56
   11c44:	b9 04 00 00 00       	mov    ecx,0x4
   11c49:	bf b1 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_22                             ; fixup: num: 1926, src obj: 1, src ofs: 0x11c4a, dst obj: 3, dst ofs: 0x13b1
   11c4e:	8d 74 24 24          	lea    esi,[esp+0x24]
   11c52:	31 c0                	xor    eax,eax
   11c54:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11c56:	74 05                	je     iff2bm_branch_55
   11c58:	19 c0                	sbb    eax,eax
   11c5a:	83 d8 ff             	sbb    eax,0xffffffff
iff2bm_branch_55:
   11c5d:	85 c0                	test   eax,eax
   11c5f:	0f 85 3f fa ff ff    	jne    iff2bm_branch_14
iff2bm_branch_56:
   11c65:	31 d2                	xor    edx,edx
   11c67:	eb 05                	jmp    iff2bm_branch_58
iff2bm_branch_57:
   11c69:	ba 01 00 00 00       	mov    edx,0x1
iff2bm_branch_58:
   11c6e:	85 d2                	test   edx,edx
   11c70:	74 11                	je     iff2bm_branch_59
   11c72:	bb b6 13 00 00       	mov    ebx,@obj3:iff2bm_cpp_variable_23                             ; fixup: num: 1925, src obj: 1, src ofs: 0x11c73, dst obj: 3, dst ofs: 0x13b6
   11c77:	ba 4f 00 00 00       	mov    edx,0x4f
   11c7c:	31 c0                	xor    eax,eax
   11c7e:	e8 ad 63 02 00       	call   _error_report
iff2bm_branch_59:
   11c83:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
   11c87:	e8 b2 f1 05 00       	call   fclose_
   11c8c:	a1 8c 2a 02 00       	mov    eax,ds:@obj3:output_file                                     ; fixup: num: 1924, src obj: 1, src ofs: 0x11c8d, dst obj: 3, dst ofs: 0x22a8c
   11c91:	e8 a8 f1 05 00       	call   fclose_
   11c96:	a1 90 2a 02 00       	mov    eax,ds:@obj3:pal_file                                        ; fixup: num: 1923, src obj: 1, src ofs: 0x11c97, dst obj: 3, dst ofs: 0x22a90
   11c9b:	e8 9e f1 05 00       	call   fclose_
   11ca0:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
   11ca4:	e8 3f f7 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   11ca9:	83 c4 58             	add    esp,0x58
   11cac:	5d                   	pop    ebp
   11cad:	5f                   	pop    edi
   11cae:	5e                   	pop    esi
   11caf:	59                   	pop    ecx
   11cb0:	c3                   	ret    
iff2bm_branch_60:
   11cb1:	bb e0 13 00 00       	mov    ebx,@obj3:iff2bm_cpp_variable_24                             ; fixup: num: 1922, src obj: 1, src ofs: 0x11cb2, dst obj: 3, dst ofs: 0x13e0
   11cb6:	ba 53 00 00 00       	mov    edx,0x53
   11cbb:	e8 70 63 02 00       	call   _error_report
   11cc0:	83 c4 58             	add    esp,0x58
   11cc3:	5d                   	pop    ebp
   11cc4:	5f                   	pop    edi
   11cc5:	5e                   	pop    esi
   11cc6:	59                   	pop    ecx
   11cc7:	c3                   	ret    
   11cc8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   11cce:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'unpackiff'                          -
;-------------------------------------------------
unpackiff:
   11cd0:	53                   	push   ebx
   11cd1:	51                   	push   ecx
   11cd2:	56                   	push   esi
   11cd3:	57                   	push   edi
   11cd4:	55                   	push   ebp
   11cd5:	83 ec 50             	sub    esp,0x50
   11cd8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
   11cdc:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
   11ce0:	bb 04 00 00 00       	mov    ebx,0x4
   11ce5:	ba 01 00 00 00       	mov    edx,0x1
   11cea:	bf 44 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_10                             ; fixup: num: 1929, src obj: 1, src ofs: 0x11ceb, dst obj: 3, dst ofs: 0x1344
   11cef:	89 c1                	mov    ecx,eax
   11cf1:	8d 44 24 2c          	lea    eax,[esp+0x2c]
   11cf5:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11cf9:	e8 d5 40 06 00       	call   fread_
   11cfe:	b9 04 00 00 00       	mov    ecx,0x4
   11d03:	31 c0                	xor    eax,eax
   11d05:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11d07:	74 05                	je     unpackiff_branch_1
   11d09:	19 c0                	sbb    eax,eax
   11d0b:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_1:
   11d0e:	85 c0                	test   eax,eax
   11d10:	74 3e                	je     unpackiff_branch_4
   11d12:	b9 04 00 00 00       	mov    ecx,0x4
   11d17:	bf 49 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_11                             ; fixup: num: 1928, src obj: 1, src ofs: 0x11d18, dst obj: 3, dst ofs: 0x1349
   11d1c:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11d20:	31 c0                	xor    eax,eax
   11d22:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11d24:	74 05                	je     unpackiff_branch_2
   11d26:	19 c0                	sbb    eax,eax
   11d28:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_2:
   11d2b:	85 c0                	test   eax,eax
   11d2d:	74 21                	je     unpackiff_branch_4
   11d2f:	b9 04 00 00 00       	mov    ecx,0x4
   11d34:	bf 4e 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_12                             ; fixup: num: 1927, src obj: 1, src ofs: 0x11d35, dst obj: 3, dst ofs: 0x134e
   11d39:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11d3d:	31 c0                	xor    eax,eax
   11d3f:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11d41:	74 05                	je     unpackiff_branch_3
   11d43:	19 c0                	sbb    eax,eax
   11d45:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_3:
   11d48:	85 c0                	test   eax,eax
   11d4a:	0f 85 35 06 00 00    	jne    unpackiff_branch_48
unpackiff_branch_4:
   11d50:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11d54:	bb 04 00 00 00       	mov    ebx,0x4
   11d59:	ba 01 00 00 00       	mov    edx,0x1
   11d5e:	8d 44 24 24          	lea    eax,[esp+0x24]
   11d62:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
   11d66:	e8 68 40 06 00       	call   fread_
   11d6b:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11d6f:	bb 04 00 00 00       	mov    ebx,0x4
   11d74:	83 c6 0c             	add    esi,0xc
   11d77:	ba 01 00 00 00       	mov    edx,0x1
   11d7c:	89 f0                	mov    eax,esi
   11d7e:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
   11d82:	e8 4c 40 06 00       	call   fread_
   11d87:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   11d8b:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
   11d8f:	83 c0 10             	add    eax,0x10
   11d92:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
   11d96:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
unpackiff_branch_5:
   11d9a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11d9e:	bb 04 00 00 00       	mov    ebx,0x4
   11da3:	ba 01 00 00 00       	mov    edx,0x1
   11da8:	8d 44 24 2c          	lea    eax,[esp+0x2c]
   11dac:	e8 22 40 06 00       	call   fread_
   11db1:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11db5:	bb 04 00 00 00       	mov    ebx,0x4
   11dba:	ba 01 00 00 00       	mov    edx,0x1
   11dbf:	8d 44 24 24          	lea    eax,[esp+0x24]
   11dc3:	e8 0b 40 06 00       	call   fread_
   11dc8:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   11dcc:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   11dd0:	81 e2 00 00 00 ff    	and    edx,0xff000000
   11dd6:	25 00 00 ff 00       	and    eax,0xff0000
   11ddb:	c1 ea 18             	shr    edx,0x18
   11dde:	c1 e8 08             	shr    eax,0x8
   11de1:	01 c2                	add    edx,eax
   11de3:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   11de7:	25 00 ff 00 00       	and    eax,0xff00
   11dec:	c1 e0 08             	shl    eax,0x8
   11def:	01 c2                	add    edx,eax
   11df1:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
   11df5:	25 ff 00 00 00       	and    eax,0xff
   11dfa:	c1 e0 18             	shl    eax,0x18
   11dfd:	01 d0                	add    eax,edx
   11dff:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
   11e03:	a8 01                	test   al,0x1
   11e05:	74 05                	je     unpackiff_branch_6
   11e07:	40                   	inc    eax
   11e08:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
unpackiff_branch_6:
   11e0c:	31 c0                	xor    eax,eax
   11e0e:	8a 44 24 2f          	mov    al,BYTE PTR [esp+0x2f]
   11e12:	50                   	push   eax
   11e13:	31 c0                	xor    eax,eax
   11e15:	8a 44 24 32          	mov    al,BYTE PTR [esp+0x32]
   11e19:	50                   	push   eax
   11e1a:	31 c0                	xor    eax,eax
   11e1c:	8a 44 24 35          	mov    al,BYTE PTR [esp+0x35]
   11e20:	50                   	push   eax
   11e21:	31 c0                	xor    eax,eax
   11e23:	8a 44 24 38          	mov    al,BYTE PTR [esp+0x38]
   11e27:	50                   	push   eax
   11e28:	68 53 13 00 00       	push   @obj3:iff2bm_cpp_variable_13                                 ; fixup: num: 1932, src obj: 1, src ofs: 0x11e29, dst obj: 3, dst ofs: 0x1353
   11e2d:	b9 04 00 00 00       	mov    ecx,0x4
   11e32:	e8 1b ed 05 00       	call   printf_
   11e37:	83 c4 14             	add    esp,0x14
   11e3a:	bf 68 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_14                             ; fixup: num: 1931, src obj: 1, src ofs: 0x11e3b, dst obj: 3, dst ofs: 0x1368
   11e3f:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11e43:	31 c0                	xor    eax,eax
   11e45:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11e47:	74 05                	je     unpackiff_branch_7
   11e49:	19 c0                	sbb    eax,eax
   11e4b:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_7:
   11e4e:	85 c0                	test   eax,eax
   11e50:	0f 85 c9 00 00 00    	jne    unpackiff_branch_10
   11e56:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11e5a:	bb 14 00 00 00       	mov    ebx,0x14
   11e5f:	ba 01 00 00 00       	mov    edx,0x1
   11e64:	89 e0                	mov    eax,esp
   11e66:	e8 68 3f 06 00       	call   fread_
   11e6b:	83 f8 14             	cmp    eax,0x14
   11e6e:	0f 85 11 05 00 00    	jne    unpackiff_branch_48
   11e74:	8b 04 24             	mov    eax,DWORD PTR [esp]
   11e77:	30 c0                	xor    al,al
   11e79:	89 c2                	mov    edx,eax
   11e7b:	81 e2 ff ff 00 00    	and    edx,0xffff
   11e81:	8b 04 24             	mov    eax,DWORD PTR [esp]
   11e84:	c1 fa 08             	sar    edx,0x8
   11e87:	30 e4                	xor    ah,ah
   11e89:	25 ff ff 00 00       	and    eax,0xffff
   11e8e:	c1 e0 08             	shl    eax,0x8
   11e91:	09 d0                	or     eax,edx
   11e93:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   11e97:	66 89 02             	mov    WORD PTR [edx],ax
   11e9a:	8b 44 24 02          	mov    eax,DWORD PTR [esp+0x2]
   11e9e:	30 c0                	xor    al,al
   11ea0:	25 ff ff 00 00       	and    eax,0xffff
   11ea5:	8b 54 24 02          	mov    edx,DWORD PTR [esp+0x2]
   11ea9:	c1 f8 08             	sar    eax,0x8
   11eac:	30 f6                	xor    dh,dh
   11eae:	81 e2 ff ff 00 00    	and    edx,0xffff
   11eb4:	c1 e2 08             	shl    edx,0x8
   11eb7:	09 d0                	or     eax,edx
   11eb9:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   11ebd:	b9 04 00 00 00       	mov    ecx,0x4
   11ec2:	66 89 42 02          	mov    WORD PTR [edx+0x2],ax
   11ec6:	31 c0                	xor    eax,eax
   11ec8:	bf 6d 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_15                             ; fixup: num: 1930, src obj: 1, src ofs: 0x11ec9, dst obj: 3, dst ofs: 0x136d
   11ecd:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
   11ed1:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   11ed5:	66 89 42 06          	mov    WORD PTR [edx+0x6],ax
   11ed9:	31 c0                	xor    eax,eax
   11edb:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11edd:	74 05                	je     unpackiff_branch_8
   11edf:	19 c0                	sbb    eax,eax
   11ee1:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_8:
   11ee4:	85 c0                	test   eax,eax
   11ee6:	75 2b                	jne    unpackiff_branch_9
   11ee8:	0f bf 12             	movsx  edx,WORD PTR [edx]
   11eeb:	83 c2 07             	add    edx,0x7
   11eee:	89 d0                	mov    eax,edx
   11ef0:	c1 fa 1f             	sar    edx,0x1f
   11ef3:	c1 e2 03             	shl    edx,0x3
   11ef6:	1b c2                	sbb    eax,edx
   11ef8:	c1 f8 03             	sar    eax,0x3
   11efb:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   11eff:	0f bf 52 06          	movsx  edx,WORD PTR [edx+0x6]
   11f03:	0f af c2             	imul   eax,edx
   11f06:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   11f0a:	66 89 42 04          	mov    WORD PTR [edx+0x4],ax
   11f0e:	e9 3a 04 00 00       	jmp    unpackiff_branch_45
unpackiff_branch_9:
   11f13:	66 8b 02             	mov    ax,WORD PTR [edx]
   11f16:	66 89 42 04          	mov    WORD PTR [edx+0x4],ax
   11f1a:	e9 2e 04 00 00       	jmp    unpackiff_branch_45
unpackiff_branch_10:
   11f1f:	b9 04 00 00 00       	mov    ecx,0x4
   11f24:	bf 72 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_16                             ; fixup: num: 1933, src obj: 1, src ofs: 0x11f25, dst obj: 3, dst ofs: 0x1372
   11f29:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11f2d:	31 c0                	xor    eax,eax
   11f2f:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11f31:	74 05                	je     unpackiff_branch_11
   11f33:	19 c0                	sbb    eax,eax
   11f35:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_11:
   11f38:	85 c0                	test   eax,eax
   11f3a:	75 6f                	jne    unpackiff_branch_14
   11f3c:	0f bf 44 24 24       	movsx  eax,WORD PTR [esp+0x24]
   11f41:	3d 00 03 00 00       	cmp    eax,0x300
   11f46:	7f 2e                	jg     unpackiff_branch_12
   11f48:	0f bf 5c 24 24       	movsx  ebx,WORD PTR [esp+0x24]
   11f4d:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11f51:	ba 01 00 00 00       	mov    edx,0x1
   11f56:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   11f5a:	e8 74 3e 06 00       	call   fread_
   11f5f:	0f bf 54 24 24       	movsx  edx,WORD PTR [esp+0x24]
   11f64:	39 d0                	cmp    eax,edx
   11f66:	0f 84 e1 03 00 00    	je     unpackiff_branch_45
   11f6c:	ba 02 00 00 00       	mov    edx,0x2
   11f71:	e9 14 04 00 00       	jmp    unpackiff_branch_49
unpackiff_branch_12:
   11f76:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   11f7a:	bb 00 03 00 00       	mov    ebx,0x300
   11f7f:	ba 01 00 00 00       	mov    edx,0x1
   11f84:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
   11f88:	e8 46 3e 06 00       	call   fread_
   11f8d:	3d 00 03 00 00       	cmp    eax,0x300
   11f92:	74 0a                	je     unpackiff_branch_13
   11f94:	ba 02 00 00 00       	mov    edx,0x2
   11f99:	e9 ec 03 00 00       	jmp    unpackiff_branch_49
unpackiff_branch_13:
   11f9e:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
   11fa2:	31 db                	xor    ebx,ebx
   11fa4:	29 c2                	sub    edx,eax
   11fa6:	e9 99 03 00 00       	jmp    unpackiff_branch_44
unpackiff_branch_14:
   11fab:	b9 04 00 00 00       	mov    ecx,0x4
   11fb0:	bf 77 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_17                             ; fixup: num: 1934, src obj: 1, src ofs: 0x11fb1, dst obj: 3, dst ofs: 0x1377
   11fb5:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   11fb9:	31 c0                	xor    eax,eax
   11fbb:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   11fbd:	74 05                	je     unpackiff_branch_15
   11fbf:	19 c0                	sbb    eax,eax
   11fc1:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_15:
   11fc4:	85 c0                	test   eax,eax
   11fc6:	0f 85 6f 03 00 00    	jne    unpackiff_branch_43
   11fcc:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   11fd0:	89 c2                	mov    edx,eax
   11fd2:	ff 92 10 03 00 00    	call   DWORD PTR [edx+0x310]
   11fd8:	85 c0                	test   eax,eax
   11fda:	74 10                	je     unpackiff_branch_16
   11fdc:	ba 03 00 00 00       	mov    edx,0x3
   11fe1:	89 d0                	mov    eax,edx
   11fe3:	83 c4 50             	add    esp,0x50
   11fe6:	5d                   	pop    ebp
   11fe7:	5f                   	pop    edi
   11fe8:	5e                   	pop    esi
   11fe9:	59                   	pop    ecx
   11fea:	5b                   	pop    ebx
   11feb:	c3                   	ret    
unpackiff_branch_16:
   11fec:	89 d0                	mov    eax,edx
   11fee:	0f bf 00             	movsx  eax,WORD PTR [eax]
   11ff1:	e8 9d f4 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   11ff6:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
   11ffa:	85 c0                	test   eax,eax
   11ffc:	0f 84 08 03 00 00    	je     unpackiff_branch_41
   12002:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   12006:	31 d2                	xor    edx,edx
   12008:	66 8b 58 02          	mov    bx,WORD PTR [eax+0x2]
   1200c:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
   12010:	66 85 db             	test   bx,bx
   12013:	7f 1f                	jg     unpackiff_branch_18
   12015:	e9 0a 03 00 00       	jmp    unpackiff_branch_42
unpackiff_branch_17:
   1201a:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
   1201e:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
   12022:	41                   	inc    ecx
   12023:	66 8b 72 02          	mov    si,WORD PTR [edx+0x2]
   12027:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
   1202b:	66 39 f1             	cmp    cx,si
   1202e:	0f 8d f0 02 00 00    	jge    unpackiff_branch_42
unpackiff_branch_18:
   12034:	80 7c 24 0a 00       	cmp    BYTE PTR [esp+0xa],0x0
   12039:	0f 84 87 00 00 00    	je     unpackiff_branch_24
   1203f:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   12043:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   12047:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   1204b:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
   1204f:	31 d2                	xor    edx,edx
   12051:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
unpackiff_branch_19:
   12055:	89 c8                	mov    eax,ecx
   12057:	e8 41 3f 06 00       	call   fgetc_
   1205c:	89 c3                	mov    ebx,eax
   1205e:	30 e7                	xor    bh,ah
   12060:	30 e4                	xor    ah,ah
   12062:	24 80                	and    al,0x80
   12064:	98                   	cwde   
   12065:	66 89 5c 24 44       	mov    WORD PTR [esp+0x44],bx
   1206a:	85 c0                	test   eax,eax
   1206c:	74 33                	je     unpackiff_branch_21
   1206e:	0f bf c3             	movsx  eax,bx
   12071:	3d 80 00 00 00       	cmp    eax,0x80
   12076:	74 43                	je     unpackiff_branch_23
   12078:	89 c8                	mov    eax,ecx
   1207a:	f7 d3                	not    ebx
   1207c:	e8 1c 3f 06 00       	call   fgetc_
   12081:	30 ff                	xor    bh,bh
   12083:	66 89 44 24 44       	mov    WORD PTR [esp+0x44],ax
   12088:	83 c3 02             	add    ebx,0x2
unpackiff_branch_20:
   1208b:	4b                   	dec    ebx
   1208c:	66 83 fb ff          	cmp    bx,0xffff
   12090:	74 29                	je     unpackiff_branch_23
   12092:	0f bf c2             	movsx  eax,dx
   12095:	8d 3c 06             	lea    edi,[esi+eax*1]
   12098:	8a 44 24 44          	mov    al,BYTE PTR [esp+0x44]
   1209c:	42                   	inc    edx
   1209d:	88 07                	mov    BYTE PTR [edi],al
   1209f:	eb ea                	jmp    unpackiff_branch_20
unpackiff_branch_21:
   120a1:	30 ff                	xor    bh,bh
   120a3:	43                   	inc    ebx
unpackiff_branch_22:
   120a4:	4b                   	dec    ebx
   120a5:	66 83 fb ff          	cmp    bx,0xffff
   120a9:	74 10                	je     unpackiff_branch_23
   120ab:	89 c8                	mov    eax,ecx
   120ad:	e8 eb 3e 06 00       	call   fgetc_
   120b2:	0f bf fa             	movsx  edi,dx
   120b5:	42                   	inc    edx
   120b6:	88 04 37             	mov    BYTE PTR [edi+esi*1],al
   120b9:	eb e9                	jmp    unpackiff_branch_22
unpackiff_branch_23:
   120bb:	66 3b 54 24 40       	cmp    dx,WORD PTR [esp+0x40]
   120c0:	7c 93                	jl     unpackiff_branch_19
   120c2:	89 d3                	mov    ebx,edx
   120c4:	eb 1c                	jmp    unpackiff_branch_25
unpackiff_branch_24:
   120c6:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
   120ca:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
   120ce:	ba 01 00 00 00       	mov    edx,0x1
   120d3:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   120d7:	0f bf 5b 04          	movsx  ebx,WORD PTR [ebx+0x4]
   120db:	e8 f3 3c 06 00       	call   fread_
   120e0:	89 c3                	mov    ebx,eax
unpackiff_branch_25:
   120e2:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   120e6:	66 3b 58 04          	cmp    bx,WORD PTR [eax+0x4]
   120ea:	74 3c                	je     unpackiff_branch_27
   120ec:	8b 15 88 2a 02 00    	mov    edx,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1994, src obj: 1, src ofs: 0x120ee, dst obj: 3, dst ofs: 0x22a88
   120f2:	85 d2                	test   edx,edx
   120f4:	74 07                	je     unpackiff_branch_26
   120f6:	89 d0                	mov    eax,edx
   120f8:	e8 eb f2 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
unpackiff_branch_26:
   120fd:	31 db                	xor    ebx,ebx
   120ff:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12103:	89 1d 88 2a 02 00    	mov    DWORD PTR ds:@obj3:buffer,ebx                                ; fixup: num: 1993, src obj: 1, src ofs: 0x12105, dst obj: 3, dst ofs: 0x22a88
   12109:	e8 da f2 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   1210e:	b8 7c 13 00 00       	mov    eax,@obj3:iff2bm_cpp_variable_18                             ; fixup: num: 1992, src obj: 1, src ofs: 0x1210f, dst obj: 3, dst ofs: 0x137c
   12113:	ba 02 00 00 00       	mov    edx,0x2
   12118:	e8 52 ef 05 00       	call   puts_
   1211d:	89 d0                	mov    eax,edx
   1211f:	83 c4 50             	add    esp,0x50
   12122:	5d                   	pop    ebp
   12123:	5f                   	pop    edi
   12124:	5e                   	pop    esi
   12125:	59                   	pop    ecx
   12126:	5b                   	pop    ebx
   12127:	c3                   	ret    
unpackiff_branch_27:
   12128:	b9 04 00 00 00       	mov    ecx,0x4
   1212d:	bf 8f 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_19                             ; fixup: num: 1991, src obj: 1, src ofs: 0x1212e, dst obj: 3, dst ofs: 0x138f
   12132:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   12136:	31 c0                	xor    eax,eax
   12138:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   1213a:	74 05                	je     unpackiff_branch_28
   1213c:	19 c0                	sbb    eax,eax
   1213e:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_28:
   12141:	85 c0                	test   eax,eax
   12143:	74 32                	je     unpackiff_branch_30
   12145:	b9 04 00 00 00       	mov    ecx,0x4
   1214a:	bf 94 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_20                             ; fixup: num: 1990, src obj: 1, src ofs: 0x1214b, dst obj: 3, dst ofs: 0x1394
   1214f:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
   12153:	31 c0                	xor    eax,eax
   12155:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   12157:	74 05                	je     unpackiff_branch_29
   12159:	19 c0                	sbb    eax,eax
   1215b:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_29:
   1215e:	85 c0                	test   eax,eax
   12160:	0f 85 54 01 00 00    	jne    unpackiff_branch_40
   12166:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   1216a:	0f bf 40 06          	movsx  eax,WORD PTR [eax+0x6]
   1216e:	83 f8 08             	cmp    eax,0x8
   12171:	0f 8d 43 01 00 00    	jge    unpackiff_branch_40
unpackiff_branch_30:
   12177:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   1217b:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
   1217f:	0f bf 45 00          	movsx  eax,WORD PTR [ebp+0x0]
   12183:	e8 0b f3 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   12188:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
   1218c:	85 c0                	test   eax,eax
   1218e:	0f 84 a1 00 00 00    	je     unpackiff_branch_36
   12194:	0f bf 55 00          	movsx  edx,WORD PTR [ebp+0x0]
   12198:	83 c2 07             	add    edx,0x7
   1219b:	89 d0                	mov    eax,edx
   1219d:	c1 fa 1f             	sar    edx,0x1f
   121a0:	c1 e2 03             	shl    edx,0x3
   121a3:	1b c2                	sbb    eax,edx
   121a5:	c1 f8 03             	sar    eax,0x3
   121a8:	66 8b 5d 00          	mov    bx,WORD PTR [ebp+0x0]
   121ac:	31 ff                	xor    edi,edi
   121ae:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
   121b2:	66 85 db             	test   bx,bx
   121b5:	0f 8e 76 00 00 00    	jle    unpackiff_branch_35
   121bb:	eb 0b                	jmp    unpackiff_branch_32
unpackiff_branch_31:
   121bd:	47                   	inc    edi
   121be:	66 3b 7d 00          	cmp    di,WORD PTR [ebp+0x0]
   121c2:	0f 8d 69 00 00 00    	jge    unpackiff_branch_35
unpackiff_branch_32:
   121c8:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
   121cc:	0f bf c7             	movsx  eax,di
   121cf:	01 c8                	add    eax,ecx
   121d1:	c6 00 00             	mov    BYTE PTR [eax],0x0
   121d4:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
   121d8:	66 8b 75 06          	mov    si,WORD PTR [ebp+0x6]
   121dc:	31 c0                	xor    eax,eax
   121de:	66 85 f6             	test   si,si
   121e1:	7e da                	jle    unpackiff_branch_31
   121e3:	89 fb                	mov    ebx,edi
   121e5:	30 ff                	xor    bh,bh
   121e7:	80 e3 07             	and    bl,0x7
   121ea:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
unpackiff_branch_33:
   121ee:	0f bf df             	movsx  ebx,di
   121f1:	89 d9                	mov    ecx,ebx
   121f3:	c1 f9 03             	sar    ecx,0x3
   121f6:	0f b6 34 11          	movzx  esi,BYTE PTR [ecx+edx*1]
   121fa:	0f bf 4c 24 4c       	movsx  ecx,WORD PTR [esp+0x4c]
   121ff:	8a 89 74 2e 01 00    	mov    cl,BYTE PTR [ecx+@obj3:masktable]                            ; fixup: num: 1996, src obj: 1, src ofs: 0x12201, dst obj: 3, dst ofs: 0x12e74
   12205:	81 e1 ff 00 00 00    	and    ecx,0xff
   1220b:	85 ce                	test   esi,ecx
   1220d:	74 0f                	je     unpackiff_branch_34
   1220f:	03 5c 24 38          	add    ebx,DWORD PTR [esp+0x38]
   12213:	0f bf f0             	movsx  esi,ax
   12216:	8a 8e 7c 2e 01 00    	mov    cl,BYTE PTR [esi+@obj3:bittable]                             ; fixup: num: 1995, src obj: 1, src ofs: 0x12218, dst obj: 3, dst ofs: 0x12e7c
   1221c:	08 0b                	or     BYTE PTR [ebx],cl
unpackiff_branch_34:
   1221e:	0f bf 5c 24 48       	movsx  ebx,WORD PTR [esp+0x48]
   12223:	40                   	inc    eax
   12224:	66 8b 4d 06          	mov    cx,WORD PTR [ebp+0x6]
   12228:	01 da                	add    edx,ebx
   1222a:	66 39 c8             	cmp    ax,cx
   1222d:	7d 8e                	jge    unpackiff_branch_31
   1222f:	eb bd                	jmp    unpackiff_branch_33
unpackiff_branch_35:
   12231:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
unpackiff_branch_36:
   12235:	89 c3                	mov    ebx,eax
   12237:	85 c0                	test   eax,eax
   12239:	75 32                	jne    unpackiff_branch_38
   1223b:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2004, src obj: 1, src ofs: 0x1223d, dst obj: 3, dst ofs: 0x22a88
   12241:	85 ff                	test   edi,edi
   12243:	74 07                	je     unpackiff_branch_37
   12245:	89 f8                	mov    eax,edi
   12247:	e8 9c f1 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
unpackiff_branch_37:
   1224c:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12250:	31 ed                	xor    ebp,ebp
   12252:	ba 03 00 00 00       	mov    edx,0x3
   12257:	89 2d 88 2a 02 00    	mov    DWORD PTR ds:@obj3:buffer,ebp                                ; fixup: num: 2003, src obj: 1, src ofs: 0x12259, dst obj: 3, dst ofs: 0x22a88
   1225d:	e8 86 f1 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   12262:	89 d0                	mov    eax,edx
   12264:	83 c4 50             	add    esp,0x50
   12267:	5d                   	pop    ebp
   12268:	5f                   	pop    edi
   12269:	5e                   	pop    esi
   1226a:	59                   	pop    ecx
   1226b:	5b                   	pop    ebx
   1226c:	c3                   	ret    
unpackiff_branch_38:
   1226d:	31 d2                	xor    edx,edx
   1226f:	66 8b 54 24 3c       	mov    dx,WORD PTR [esp+0x3c]
   12274:	85 d2                	test   edx,edx
   12276:	7c 36                	jl     unpackiff_branch_39
   12278:	0f bf 0d 72 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi_variable_1                          ; fixup: num: 2002, src obj: 1, src ofs: 0x1227b, dst obj: 3, dst ofs: 0x22772
   1227f:	39 ca                	cmp    edx,ecx
   12281:	7d 2b                	jge    unpackiff_branch_39
   12283:	0f bf 35 70 27 02 00 	movsx  esi,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2001, src obj: 1, src ofs: 0x12286, dst obj: 3, dst ofs: 0x22770
   1228a:	0f af d6             	imul   edx,esi
   1228d:	0f bf 0d 70 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2000, src obj: 1, src ofs: 0x12290, dst obj: 3, dst ofs: 0x22770
   12294:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 1999, src obj: 1, src ofs: 0x12296, dst obj: 3, dst ofs: 0x22a88
   1229a:	89 c6                	mov    esi,eax
   1229c:	01 d7                	add    edi,edx
   1229e:	57                   	push   edi
   1229f:	89 c8                	mov    eax,ecx
   122a1:	c1 e9 02             	shr    ecx,0x2
   122a4:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   122a6:	8a c8                	mov    cl,al
   122a8:	80 e1 03             	and    cl,0x3
   122ab:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   122ad:	5f                   	pop    edi
unpackiff_branch_39:
   122ae:	89 d8                	mov    eax,ebx
   122b0:	e8 33 f1 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   122b5:	e9 60 fd ff ff       	jmp    unpackiff_branch_17
unpackiff_branch_40:
   122ba:	31 c0                	xor    eax,eax
   122bc:	66 8b 44 24 3c       	mov    ax,WORD PTR [esp+0x3c]
   122c1:	85 c0                	test   eax,eax
   122c3:	0f 8c 51 fd ff ff    	jl     unpackiff_branch_17
   122c9:	0f bf 15 72 27 02 00 	movsx  edx,WORD PTR ds:@obj3:fi_variable_1                          ; fixup: num: 1998, src obj: 1, src ofs: 0x122cc, dst obj: 3, dst ofs: 0x22772
   122d0:	39 d0                	cmp    eax,edx
   122d2:	0f 8d 42 fd ff ff    	jge    unpackiff_branch_17
   122d8:	0f bf 15 70 27 02 00 	movsx  edx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 1997, src obj: 1, src ofs: 0x122db, dst obj: 3, dst ofs: 0x22770
   122df:	0f af c2             	imul   eax,edx
   122e2:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
   122e6:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2008, src obj: 1, src ofs: 0x122e8, dst obj: 3, dst ofs: 0x22a88
   122ec:	0f bf 0d 70 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2007, src obj: 1, src ofs: 0x122ef, dst obj: 3, dst ofs: 0x22770
   122f3:	01 c7                	add    edi,eax
   122f5:	57                   	push   edi
   122f6:	89 c8                	mov    eax,ecx
   122f8:	c1 e9 02             	shr    ecx,0x2
   122fb:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   122fd:	8a c8                	mov    cl,al
   122ff:	80 e1 03             	and    cl,0x3
   12302:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   12304:	5f                   	pop    edi
   12305:	e9 10 fd ff ff       	jmp    unpackiff_branch_17
unpackiff_branch_41:
   1230a:	b8 99 13 00 00       	mov    eax,@obj3:iff2bm_cpp_variable_21                             ; fixup: num: 2006, src obj: 1, src ofs: 0x1230b, dst obj: 3, dst ofs: 0x1399
   1230f:	ba 03 00 00 00       	mov    edx,0x3
   12314:	e8 56 ed 05 00       	call   puts_
   12319:	89 d0                	mov    eax,edx
   1231b:	83 c4 50             	add    esp,0x50
   1231e:	5d                   	pop    ebp
   1231f:	5f                   	pop    edi
   12320:	5e                   	pop    esi
   12321:	59                   	pop    ecx
   12322:	5b                   	pop    ebx
   12323:	c3                   	ret    
unpackiff_branch_42:
   12324:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
   12328:	e8 bb f0 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
   1232d:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
   12331:	89 c2                	mov    edx,eax
   12333:	ff 92 14 03 00 00    	call   DWORD PTR [edx+0x314]
   12339:	eb 12                	jmp    unpackiff_branch_45
unpackiff_branch_43:
   1233b:	bb 01 00 00 00       	mov    ebx,0x1
   12340:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
unpackiff_branch_44:
   12344:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   12348:	e8 f5 3d 06 00       	call   fseek_
unpackiff_branch_45:
   1234d:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
   12351:	f6 40 0c 20          	test   BYTE PTR [eax+0xc],0x20
   12355:	75 21                	jne    unpackiff_branch_47
   12357:	b9 04 00 00 00       	mov    ecx,0x4
   1235c:	bf b1 13 00 00       	mov    edi,@obj3:iff2bm_cpp_variable_22                             ; fixup: num: 2005, src obj: 1, src ofs: 0x1235d, dst obj: 3, dst ofs: 0x13b1
   12361:	8d 74 24 2c          	lea    esi,[esp+0x2c]
   12365:	31 c0                	xor    eax,eax
   12367:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
   12369:	74 05                	je     unpackiff_branch_46
   1236b:	19 c0                	sbb    eax,eax
   1236d:	83 d8 ff             	sbb    eax,0xffffffff
unpackiff_branch_46:
   12370:	85 c0                	test   eax,eax
   12372:	0f 85 22 fa ff ff    	jne    unpackiff_branch_5
unpackiff_branch_47:
   12378:	31 d2                	xor    edx,edx
   1237a:	89 d0                	mov    eax,edx
   1237c:	83 c4 50             	add    esp,0x50
   1237f:	5d                   	pop    ebp
   12380:	5f                   	pop    edi
   12381:	5e                   	pop    esi
   12382:	59                   	pop    ecx
   12383:	5b                   	pop    ebx
   12384:	c3                   	ret    
unpackiff_branch_48:
   12385:	ba 01 00 00 00       	mov    edx,0x1
unpackiff_branch_49:
   1238a:	89 d0                	mov    eax,edx
   1238c:	83 c4 50             	add    esp,0x50
   1238f:	5d                   	pop    ebp
   12390:	5f                   	pop    edi
   12391:	5e                   	pop    esi
   12392:	59                   	pop    ecx
   12393:	5b                   	pop    ebx
   12394:	c3                   	ret    
   12395:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1239b:	8d 52 00             	lea    edx,[edx+0x0]
   1239e:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'planes2bytes'                       -
;-------------------------------------------------
planes2bytes:
   123a0:	53                   	push   ebx
   123a1:	51                   	push   ecx
   123a2:	56                   	push   esi
   123a3:	57                   	push   edi
   123a4:	55                   	push   ebp
   123a5:	83 ec 10             	sub    esp,0x10
   123a8:	89 04 24             	mov    DWORD PTR [esp],eax
   123ab:	89 d5                	mov    ebp,edx
   123ad:	0f bf 02             	movsx  eax,WORD PTR [edx]
   123b0:	e8 de f0 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   123b5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
   123b9:	85 c0                	test   eax,eax
   123bb:	0f 84 ad 00 00 00    	je     planes2bytes_branch_6
   123c1:	0f bf 12             	movsx  edx,WORD PTR [edx]
   123c4:	83 c2 07             	add    edx,0x7
   123c7:	89 d0                	mov    eax,edx
   123c9:	c1 fa 1f             	sar    edx,0x1f
   123cc:	c1 e2 03             	shl    edx,0x3
   123cf:	1b c2                	sbb    eax,edx
   123d1:	c1 f8 03             	sar    eax,0x3
   123d4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
   123d8:	89 e8                	mov    eax,ebp
   123da:	66 8b 10             	mov    dx,WORD PTR [eax]
   123dd:	31 ff                	xor    edi,edi
   123df:	66 85 d2             	test   dx,dx
   123e2:	0f 8e 77 00 00 00    	jle    planes2bytes_branch_5
   123e8:	eb 0b                	jmp    planes2bytes_branch_2
planes2bytes_branch_1:
   123ea:	47                   	inc    edi
   123eb:	66 3b 7d 00          	cmp    di,WORD PTR [ebp+0x0]
   123ef:	0f 8d 6a 00 00 00    	jge    planes2bytes_branch_5
planes2bytes_branch_2:
   123f5:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   123f9:	0f bf df             	movsx  ebx,di
   123fc:	01 cb                	add    ebx,ecx
   123fe:	c6 03 00             	mov    BYTE PTR [ebx],0x0
   12401:	8b 14 24             	mov    edx,DWORD PTR [esp]
   12404:	66 8b 4d 06          	mov    cx,WORD PTR [ebp+0x6]
   12408:	31 c0                	xor    eax,eax
   1240a:	66 85 c9             	test   cx,cx
   1240d:	7e db                	jle    planes2bytes_branch_1
   1240f:	89 fb                	mov    ebx,edi
   12411:	30 ff                	xor    bh,bh
   12413:	80 e3 07             	and    bl,0x7
   12416:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
planes2bytes_branch_3:
   1241a:	0f bf df             	movsx  ebx,di
   1241d:	89 d9                	mov    ecx,ebx
   1241f:	c1 f9 03             	sar    ecx,0x3
   12422:	0f b6 34 11          	movzx  esi,BYTE PTR [ecx+edx*1]
   12426:	0f bf 4c 24 0c       	movsx  ecx,WORD PTR [esp+0xc]
   1242b:	8a 89 74 2e 01 00    	mov    cl,BYTE PTR [ecx+@obj3:masktable]                            ; fixup: num: 2009, src obj: 1, src ofs: 0x1242d, dst obj: 3, dst ofs: 0x12e74
   12431:	81 e1 ff 00 00 00    	and    ecx,0xff
   12437:	85 ce                	test   esi,ecx
   12439:	74 11                	je     planes2bytes_branch_4
   1243b:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
   1243f:	0f bf c8             	movsx  ecx,ax
   12442:	01 f3                	add    ebx,esi
   12444:	8a 89 7c 2e 01 00    	mov    cl,BYTE PTR [ecx+@obj3:bittable]                             ; fixup: num: 2010, src obj: 1, src ofs: 0x12446, dst obj: 3, dst ofs: 0x12e7c
   1244a:	08 0b                	or     BYTE PTR [ebx],cl
planes2bytes_branch_4:
   1244c:	0f bf 5c 24 08       	movsx  ebx,WORD PTR [esp+0x8]
   12451:	40                   	inc    eax
   12452:	66 8b 75 06          	mov    si,WORD PTR [ebp+0x6]
   12456:	01 da                	add    edx,ebx
   12458:	66 39 f0             	cmp    ax,si
   1245b:	7d 8d                	jge    planes2bytes_branch_1
   1245d:	eb bb                	jmp    planes2bytes_branch_3
planes2bytes_branch_5:
   1245f:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   12463:	89 c8                	mov    eax,ecx
   12465:	83 c4 10             	add    esp,0x10
   12468:	5d                   	pop    ebp
   12469:	5f                   	pop    edi
   1246a:	5e                   	pop    esi
   1246b:	59                   	pop    ecx
   1246c:	5b                   	pop    ebx
   1246d:	c3                   	ret    
planes2bytes_branch_6:
   1246e:	31 c9                	xor    ecx,ecx
   12470:	89 c8                	mov    eax,ecx
   12472:	83 c4 10             	add    esp,0x10
   12475:	5d                   	pop    ebp
   12476:	5f                   	pop    edi
   12477:	5e                   	pop    esi
   12478:	59                   	pop    ecx
   12479:	5b                   	pop    ebx
   1247a:	c3                   	ret    
   1247b:	8d 40 00             	lea    eax,[eax+0x0]
   1247e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'readline'                           -
;-------------------------------------------------
readline:
   12480:	51                   	push   ecx
   12481:	56                   	push   esi
   12482:	57                   	push   edi
   12483:	83 ec 08             	sub    esp,0x8
   12486:	89 c6                	mov    esi,eax
   12488:	89 d1                	mov    ecx,edx
   1248a:	89 1c 24             	mov    DWORD PTR [esp],ebx
   1248d:	31 d2                	xor    edx,edx
readline_branch_1:
   1248f:	89 c8                	mov    eax,ecx
   12491:	e8 07 3b 06 00       	call   fgetc_
   12496:	89 c3                	mov    ebx,eax
   12498:	30 e7                	xor    bh,ah
   1249a:	30 e4                	xor    ah,ah
   1249c:	24 80                	and    al,0x80
   1249e:	98                   	cwde   
   1249f:	66 89 5c 24 04       	mov    WORD PTR [esp+0x4],bx
   124a4:	85 c0                	test   eax,eax
   124a6:	74 37                	je     readline_branch_3
   124a8:	0f bf c3             	movsx  eax,bx
   124ab:	3d 80 00 00 00       	cmp    eax,0x80
   124b0:	74 47                	je     readline_branch_5
   124b2:	89 d8                	mov    eax,ebx
   124b4:	f7 d0                	not    eax
   124b6:	30 e4                	xor    ah,ah
   124b8:	89 c3                	mov    ebx,eax
   124ba:	89 c8                	mov    eax,ecx
   124bc:	83 c3 02             	add    ebx,0x2
   124bf:	e8 d9 3a 06 00       	call   fgetc_
   124c4:	66 89 44 24 04       	mov    WORD PTR [esp+0x4],ax
readline_branch_2:
   124c9:	4b                   	dec    ebx
   124ca:	66 83 fb ff          	cmp    bx,0xffff
   124ce:	74 29                	je     readline_branch_5
   124d0:	0f bf c2             	movsx  eax,dx
   124d3:	8d 3c 06             	lea    edi,[esi+eax*1]
   124d6:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
   124da:	42                   	inc    edx
   124db:	88 07                	mov    BYTE PTR [edi],al
   124dd:	eb ea                	jmp    readline_branch_2
readline_branch_3:
   124df:	30 ff                	xor    bh,bh
   124e1:	43                   	inc    ebx
readline_branch_4:
   124e2:	4b                   	dec    ebx
   124e3:	66 83 fb ff          	cmp    bx,0xffff
   124e7:	74 10                	je     readline_branch_5
   124e9:	89 c8                	mov    eax,ecx
   124eb:	e8 ad 3a 06 00       	call   fgetc_
   124f0:	0f bf fa             	movsx  edi,dx
   124f3:	42                   	inc    edx
   124f4:	88 04 37             	mov    BYTE PTR [edi+esi*1],al
   124f7:	eb e9                	jmp    readline_branch_4
readline_branch_5:
   124f9:	66 3b 14 24          	cmp    dx,WORD PTR [esp]
   124fd:	7c 90                	jl     readline_branch_1
   124ff:	89 d0                	mov    eax,edx
   12501:	83 c4 08             	add    esp,0x8
   12504:	5f                   	pop    edi
   12505:	5e                   	pop    esi
   12506:	59                   	pop    ecx
   12507:	c3                   	ret    
   12508:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1250e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'dosetup'                            -
;-------------------------------------------------
dosetup:
   12510:	52                   	push   edx
   12511:	0f bf 50 02          	movsx  edx,WORD PTR [eax+0x2]
   12515:	0f bf 00             	movsx  eax,WORD PTR [eax]
   12518:	0f af c2             	imul   eax,edx
   1251b:	e8 73 ef 05 00       	call   _nmalloc_                                                    ; aliases: _nmalloc_, malloc_
   12520:	a3 88 2a 02 00       	mov    ds:@obj3:buffer,eax                                          ; fixup: num: 2014, src obj: 1, src ofs: 0x12521, dst obj: 3, dst ofs: 0x22a88
   12525:	85 c0                	test   eax,eax
   12527:	75 07                	jne    dosetup_branch_1
   12529:	b8 03 00 00 00       	mov    eax,0x3
   1252e:	5a                   	pop    edx
   1252f:	c3                   	ret    
dosetup_branch_1:
   12530:	31 c0                	xor    eax,eax
   12532:	5a                   	pop    edx
   12533:	c3                   	ret    
   12534:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1253a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'doclosedown'                        -
;-------------------------------------------------
doclosedown:
   12540:	53                   	push   ebx
   12541:	51                   	push   ecx
   12542:	52                   	push   edx
   12543:	56                   	push   esi
   12544:	83 ec 04             	sub    esp,0x4
   12547:	89 c6                	mov    esi,eax
   12549:	bb 01 00 00 00       	mov    ebx,0x1
   1254e:	ba 04 00 00 00       	mov    edx,0x4
   12553:	0f bf 00             	movsx  eax,WORD PTR [eax]
   12556:	8b 0d 8c 2a 02 00    	mov    ecx,DWORD PTR ds:@obj3:output_file                           ; fixup: num: 2013, src obj: 1, src ofs: 0x12558, dst obj: 3, dst ofs: 0x22a8c
   1255c:	89 04 24             	mov    DWORD PTR [esp],eax
   1255f:	89 e0                	mov    eax,esp
   12561:	e8 d8 3c 06 00       	call   fwrite_
   12566:	bb 01 00 00 00       	mov    ebx,0x1
   1256b:	ba 04 00 00 00       	mov    edx,0x4
   12570:	0f bf 46 02          	movsx  eax,WORD PTR [esi+0x2]
   12574:	8b 0d 8c 2a 02 00    	mov    ecx,DWORD PTR ds:@obj3:output_file                           ; fixup: num: 2012, src obj: 1, src ofs: 0x12576, dst obj: 3, dst ofs: 0x22a8c
   1257a:	89 04 24             	mov    DWORD PTR [esp],eax
   1257d:	89 e0                	mov    eax,esp
   1257f:	e8 ba 3c 06 00       	call   fwrite_
   12584:	bb 01 00 00 00       	mov    ebx,0x1
   12589:	89 e0                	mov    eax,esp
   1258b:	31 d2                	xor    edx,edx
   1258d:	8b 0d 8c 2a 02 00    	mov    ecx,DWORD PTR ds:@obj3:output_file                           ; fixup: num: 2011, src obj: 1, src ofs: 0x1258f, dst obj: 3, dst ofs: 0x22a8c
   12593:	89 14 24             	mov    DWORD PTR [esp],edx
   12596:	ba 04 00 00 00       	mov    edx,0x4
   1259b:	e8 9e 3c 06 00       	call   fwrite_
   125a0:	0f bf 56 02          	movsx  edx,WORD PTR [esi+0x2]
   125a4:	0f bf 06             	movsx  eax,WORD PTR [esi]
   125a7:	0f af d0             	imul   edx,eax
   125aa:	bb 01 00 00 00       	mov    ebx,0x1
   125af:	8b 0d 8c 2a 02 00    	mov    ecx,DWORD PTR ds:@obj3:output_file                           ; fixup: num: 2023, src obj: 1, src ofs: 0x125b1, dst obj: 3, dst ofs: 0x22a8c
   125b5:	a1 88 2a 02 00       	mov    eax,ds:@obj3:buffer                                          ; fixup: num: 2022, src obj: 1, src ofs: 0x125b6, dst obj: 3, dst ofs: 0x22a88
   125ba:	e8 7f 3c 06 00       	call   fwrite_
   125bf:	8b 1d 88 2a 02 00    	mov    ebx,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2021, src obj: 1, src ofs: 0x125c1, dst obj: 3, dst ofs: 0x22a88
   125c5:	85 db                	test   ebx,ebx
   125c7:	74 07                	je     doclosedown_branch_1
   125c9:	89 d8                	mov    eax,ebx
   125cb:	e8 18 ee 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
doclosedown_branch_1:
   125d0:	bb 01 00 00 00       	mov    ebx,0x1
   125d5:	ba 00 03 00 00       	mov    edx,0x300
   125da:	31 c9                	xor    ecx,ecx
   125dc:	8d 46 10             	lea    eax,[esi+0x10]
   125df:	89 0d 88 2a 02 00    	mov    DWORD PTR ds:@obj3:buffer,ecx                                ; fixup: num: 2020, src obj: 1, src ofs: 0x125e1, dst obj: 3, dst ofs: 0x22a88
   125e5:	8b 0d 90 2a 02 00    	mov    ecx,DWORD PTR ds:@obj3:pal_file                              ; fixup: num: 2019, src obj: 1, src ofs: 0x125e7, dst obj: 3, dst ofs: 0x22a90
   125eb:	e8 4e 3c 06 00       	call   fwrite_
   125f0:	31 c0                	xor    eax,eax
   125f2:	83 c4 04             	add    esp,0x4
   125f5:	5e                   	pop    esi
   125f6:	5a                   	pop    edx
   125f7:	59                   	pop    ecx
   125f8:	5b                   	pop    ebx
   125f9:	c3                   	ret    
   125fa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'putline'                            -
;-------------------------------------------------
putline:
   12600:	51                   	push   ecx
   12601:	56                   	push   esi
   12602:	57                   	push   edi
   12603:	81 e2 ff ff 00 00    	and    edx,0xffff
   12609:	85 d2                	test   edx,edx
   1260b:	7c 36                	jl     putline_branch_1
   1260d:	0f bf 0d 72 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi_variable_1                          ; fixup: num: 2018, src obj: 1, src ofs: 0x12610, dst obj: 3, dst ofs: 0x22772
   12614:	39 ca                	cmp    edx,ecx
   12616:	7d 2b                	jge    putline_branch_1
   12618:	0f bf 3d 70 27 02 00 	movsx  edi,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2017, src obj: 1, src ofs: 0x1261b, dst obj: 3, dst ofs: 0x22770
   1261f:	0f af d7             	imul   edx,edi
   12622:	0f bf 0d 70 27 02 00 	movsx  ecx,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2016, src obj: 1, src ofs: 0x12625, dst obj: 3, dst ofs: 0x22770
   12629:	8b 3d 88 2a 02 00    	mov    edi,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2015, src obj: 1, src ofs: 0x1262b, dst obj: 3, dst ofs: 0x22a88
   1262f:	89 c6                	mov    esi,eax
   12631:	01 d7                	add    edi,edx
   12633:	57                   	push   edi
   12634:	89 c8                	mov    eax,ecx
   12636:	c1 e9 02             	shr    ecx,0x2
   12639:	f2 a5                	repnz movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
   1263b:	8a c8                	mov    cl,al
   1263d:	80 e1 03             	and    cl,0x3
   12640:	f2 a4                	repnz movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
   12642:	5f                   	pop    edi
putline_branch_1:
   12643:	31 c0                	xor    eax,eax
   12645:	5f                   	pop    edi
   12646:	5e                   	pop    esi
   12647:	59                   	pop    ecx
   12648:	c3                   	ret    
   12649:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1264f:	90                   	nop

;-------------------------------------------------
;  Function 'getline'                            -
;-------------------------------------------------
getline:
   12650:	52                   	push   edx
   12651:	31 d2                	xor    edx,edx
   12653:	66 89 c2             	mov    dx,ax
   12656:	0f bf 05 70 27 02 00 	movsx  eax,WORD PTR ds:@obj3:fi                                     ; fixup: num: 2027, src obj: 1, src ofs: 0x12659, dst obj: 3, dst ofs: 0x22770
   1265d:	0f af c2             	imul   eax,edx
   12660:	8b 15 88 2a 02 00    	mov    edx,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2026, src obj: 1, src ofs: 0x12662, dst obj: 3, dst ofs: 0x22a88
   12666:	01 d0                	add    eax,edx
   12668:	5a                   	pop    edx
   12669:	c3                   	ret    
   1266a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'freebuffer'                         -
;-------------------------------------------------
freebuffer:
   12670:	53                   	push   ebx
   12671:	52                   	push   edx
   12672:	8b 15 88 2a 02 00    	mov    edx,DWORD PTR ds:@obj3:buffer                                ; fixup: num: 2025, src obj: 1, src ofs: 0x12674, dst obj: 3, dst ofs: 0x22a88
   12678:	85 d2                	test   edx,edx
   1267a:	74 07                	je     freebuffer_branch_1
   1267c:	89 d0                	mov    eax,edx
   1267e:	e8 65 ed 05 00       	call   _nfree_                                                      ; aliases: _nfree_, free_
freebuffer_branch_1:
   12683:	31 db                	xor    ebx,ebx
   12685:	89 1d 88 2a 02 00    	mov    DWORD PTR ds:@obj3:buffer,ebx                                ; fixup: num: 2024, src obj: 1, src ofs: 0x12687, dst obj: 3, dst ofs: 0x22a88
   1268b:	5a                   	pop    edx
   1268c:	5b                   	pop    ebx
   1268d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 16 (zero after ret):                 -
;-------------------------------------------------
;  1268c:	5b                   	pop    ebx
;  1268d:	c3                   	ret    
;  1268e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   1268e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 16                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 13 (D:\SOURCE\iff2bm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 13: D:\SOURCE\iff2bm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
iff2bm_cpp_variable_1:
    12b0:	69 66 66 32 62 6d 28 29 3a 20 63 6f 6e 76 65 72 74 69 6e 67 20 25 73 20 2d 2d 2d 3e 20 25 73 00 	db     "iff2bm(): converting %s ---> %s",0x00
iff2bm_cpp_variable_2:
    12d0:	72                   	db     0x72                                                         ; dec: 114, chr: 'r'
    12d1:	62                   	db     0x62                                                         ; dec:  98, chr: 'b'
    12d2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
iff2bm_cpp_variable_3:
    12d3:	77 2b 62 00          	db     "w+b",0x00
iff2bm_cpp_variable_4:
    12d7:	43 61 6e 6e 6f 74 20 6f 70 65 6e 20 62 6d 5f 6e 61 6d 65 2e 00 	db     "Cannot open bm_name.",0x00
iff2bm_cpp_variable_5:
    12ec:	69 66 66 32 62 6d 28 29 3a 20 63 61 6e 6e 6f 74 20 61 6c 6c 6f 63 61 74 65 20 6d 65 6d 6f 72 79 00 	db     "iff2bm(): cannot allocate memory",0x00
iff2bm_cpp_variable_6:
    130d:	2e 50 41 4c 00       	db     ".PAL",0x00
iff2bm_cpp_variable_7:
    1312:	70 61 6c 65 74 74 65 20 66 69 6c 65 6e 61 6d 65 3d 25 73 00 	db     "palette filename=%s",0x00
iff2bm_cpp_variable_8:
    1326:	77 2b 62 00          	db     "w+b",0x00
iff2bm_cpp_variable_9:
    132a:	43 61 6e 6e 6f 74 20 6f 70 65 6e 20 70 61 6c 65 74 74 65 20 66 69 6c 65 2e 00 	db     "Cannot open palette file.",0x00
iff2bm_cpp_variable_10:
    1344:	46 4f 52 4d 00       	db     "FORM",0x00
iff2bm_cpp_variable_11:
    1349:	4c 49 53 54 00       	db     "LIST",0x00
iff2bm_cpp_variable_12:
    134e:	43 41 54 20 00       	db     "CAT ",0x00
iff2bm_cpp_variable_13:
    1353:	43 68 75 6e 6b 20 54 79 70 65 3a 25 63 25 63 25 63 25 63 0a 00 	db     "Chunk Type:%c%c%c%c",0x0a,0x00
iff2bm_cpp_variable_14:
    1368:	42 4d 48 44 00       	db     "BMHD",0x00
iff2bm_cpp_variable_15:
    136d:	49 4c 42 4d 00       	db     "ILBM",0x00
iff2bm_cpp_variable_16:
    1372:	43 4d 41 50 00       	db     "CMAP",0x00
iff2bm_cpp_variable_17:
    1377:	42 4f 44 59 00       	db     "BODY",0x00
iff2bm_cpp_variable_18:
    137c:	42 41 44 20 52 45 41 44 20 49 4e 20 49 46 46 32 42 4d 00 	db     "BAD READ IN IFF2BM",0x00
iff2bm_cpp_variable_19:
    138f:	49 4c 42 4d 00       	db     "ILBM",0x00
iff2bm_cpp_variable_20:
    1394:	50 42 4d 20 00       	db     "PBM ",0x00
iff2bm_cpp_variable_21:
    1399:	4f 55 54 20 4f 46 20 4d 45 4d 4f 52 59 20 49 4e 20 27 42 4f 44 59 27 00 	db     "OUT OF MEMORY IN 'BODY'",0x00
iff2bm_cpp_variable_22:
    13b1:	42 4f 44 59 00       	db     "BODY",0x00
iff2bm_cpp_variable_23:
    13b6:	41 6e 20 65 72 72 6f 72 20 6f 63 63 75 72 65 64 20 63 6f 6e 76 65 72 74 69 6e 67 20 74 68 65 20 49 46 46 20 66 69 6c 65 2e 00 	db     "An error occured converting the IFF file.",0x00
iff2bm_cpp_variable_24:
    13e0:	55 6e 61 62 6c 65 20 74 6f 20 6f 70 65 6e 20 49 46 46 20 66 69 6c 65 2e 00 	db     "Unable to open IFF file.",0x00
    13f9:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 13 (D:\SOURCE\iff2bm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 13: D:\SOURCE\iff2bm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
masktable:                                                                                          ; access size: BYTES
   12e74:	80                   	db     0x80                                                         ; dec: 128, chr: ''
   12e75:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   12e76:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
   12e77:	10                   	db     0x10                                                         ; dec:  16, chr: ''
   12e78:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12e79:	04                   	db     0x04                                                         ; dec:   4, chr: ''
   12e7a:	02                   	db     0x02                                                         ; dec:   2, chr: ''
   12e7b:	01                   	db     0x01                                                         ; dec:   1, chr: ''
bittable:                                                                                           ; access size: BYTES
   12e7c:	01                   	db     0x01                                                         ; dec:   1, chr: ''
   12e7d:	02                   	db     0x02                                                         ; dec:   2, chr: ''
   12e7e:	04                   	db     0x04                                                         ; dec:   4, chr: ''
   12e7f:	08                   	db     0x08                                                         ; dec:   8, chr: '\b'
   12e80:	10                   	db     0x10                                                         ; dec:  16, chr: ''
   12e81:	20                   	db     0x20                                                         ; dec:  32, chr: ' '
   12e82:	40                   	db     0x40                                                         ; dec:  64, chr: '@'
   12e83:	80                   	db     0x80                                                         ; dec: 128, chr: ''

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 13 (D:\SOURCE\iff2bm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 13: D:\SOURCE\iff2bm.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
fi:                                                                                                 ; access size: WORD
   22770:	00 00                	dw     0x0000
fi_variable_1:                                                                                      ; access size: WORD
   22772:	00 00 00 00 00 00 .. 	dw     391 dup(0x0000)
fi_variable_2:                                                                                      ; access size: DWORD
   22a80:	00 00 00 00          	dd     0x00000000
fi_variable_3:                                                                                      ; access size: DWORD
   22a84:	00 00 00 00          	dd     0x00000000
buffer:                                                                                             ; access size: DWORD
   22a88:	00 00 00 00          	dd     0x00000000
output_file:                                                                                        ; access size: DWORD
   22a8c:	00 00 00 00          	dd     0x00000000
pal_file:                                                                                           ; access size: DWORD
   22a90:	00 00 00 00          	dd     0x00000000
bm_number_of_colors:                                                                                ; access size: DWORD
   22a94:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 13 (D:\SOURCE\iff2bm.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------