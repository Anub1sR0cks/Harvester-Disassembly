;-------------------------------------------------------------------------------
;                                                                              -
;  Module 64: D:\SOURCE\mr_parso.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_CLEM_PARSONS'            -
;-------------------------------------------------
talk_to_MR_CLEM_PARSONS:
   297c0:	53                   	push   ebx
   297c1:	51                   	push   ecx
   297c2:	52                   	push   edx
   297c3:	56                   	push   esi
   297c4:	57                   	push   edi
   297c5:	55                   	push   ebp
   297c6:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 6693, src obj: 1, src ofs: 0x297c8, dst obj: 3, dst ofs: 0x294bc
   297cc:	85 d2                	test   edx,edx
   297ce:	0f 84 09 02 00 00    	je     talk_to_MR_CLEM_PARSONS_branch_11
   297d4:	89 d0                	mov    eax,edx
   297d6:	ba 80 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_1                            ; fixup: num: 6692, src obj: 1, src ofs: 0x297d7, dst obj: 3, dst ofs: 0x7e80
   297db:	e8 50 cc 04 00       	call   strcmp_
   297e0:	85 c0                	test   eax,eax
   297e2:	75 1e                	jne    talk_to_MR_CLEM_PARSONS_branch_1
   297e4:	ba 01 00 00 00       	mov    edx,0x1
   297e9:	bb 01 00 00 00       	mov    ebx,0x1
   297ee:	e8 7d eb ff ff       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   297f3:	ba 98 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_2                            ; fixup: num: 6691, src obj: 1, src ofs: 0x297f4, dst obj: 3, dst ofs: 0x7e98
   297f8:	b8 77 0e 00 00       	mov    eax,0xe77
   297fd:	e9 cd 01 00 00       	jmp    talk_to_MR_CLEM_PARSONS_branch_10
talk_to_MR_CLEM_PARSONS_branch_1:
   29802:	ba a0 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_3                            ; fixup: num: 6690, src obj: 1, src ofs: 0x29803, dst obj: 3, dst ofs: 0x7ea0
   29807:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6689, src obj: 1, src ofs: 0x29808, dst obj: 3, dst ofs: 0x294bc
   2980c:	e8 1f cc 04 00       	call   strcmp_
   29811:	85 c0                	test   eax,eax
   29813:	74 13                	je     talk_to_MR_CLEM_PARSONS_branch_2
   29815:	ba ad 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_4                            ; fixup: num: 6688, src obj: 1, src ofs: 0x29816, dst obj: 3, dst ofs: 0x7ead
   2981a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6687, src obj: 1, src ofs: 0x2981b, dst obj: 3, dst ofs: 0x294bc
   2981f:	e8 0c cc 04 00       	call   strcmp_
   29824:	85 c0                	test   eax,eax
   29826:	75 58                	jne    talk_to_MR_CLEM_PARSONS_branch_3
talk_to_MR_CLEM_PARSONS_branch_2:
   29828:	ba 01 00 00 00       	mov    edx,0x1
   2982d:	31 c0                	xor    eax,eax
   2982f:	e8 2c eb ff ff       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   29834:	31 db                	xor    ebx,ebx
   29836:	ba be 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_5                            ; fixup: num: 6686, src obj: 1, src ofs: 0x29837, dst obj: 3, dst ofs: 0x7ebe
   2983b:	b8 7e 0e 00 00       	mov    eax,0xe7e
   29840:	e8 4b 0e 04 00       	call   play_wav
   29845:	b8 01 00 00 00       	mov    eax,0x1
   2984a:	31 d2                	xor    edx,edx
   2984c:	e8 7f ea ff ff       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   29851:	85 c0                	test   eax,eax
   29853:	0f 84 ba 06 00 00    	je     talk_to_MR_CLEM_PARSONS_branch_37
   29859:	ba c6 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_6                            ; fixup: num: 6705, src obj: 1, src ofs: 0x2985a, dst obj: 3, dst ofs: 0x7ec6
   2985e:	b8 84 0e 00 00       	mov    eax,0xe84
   29863:	31 db                	xor    ebx,ebx
   29865:	e8 26 0e 04 00       	call   play_wav
   2986a:	ba c9 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_7                            ; fixup: num: 6704, src obj: 1, src ofs: 0x2986b, dst obj: 3, dst ofs: 0x7ec9
   2986f:	b8 88 0e 00 00       	mov    eax,0xe88
   29874:	31 db                	xor    ebx,ebx
   29876:	e8 15 0e 04 00       	call   play_wav
   2987b:	e9 93 06 00 00       	jmp    talk_to_MR_CLEM_PARSONS_branch_37
talk_to_MR_CLEM_PARSONS_branch_3:
   29880:	ba d1 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_8                            ; fixup: num: 6703, src obj: 1, src ofs: 0x29881, dst obj: 3, dst ofs: 0x7ed1
   29885:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6702, src obj: 1, src ofs: 0x29886, dst obj: 3, dst ofs: 0x294bc
   2988a:	e8 a1 cb 04 00       	call   strcmp_
   2988f:	85 c0                	test   eax,eax
   29891:	74 13                	je     talk_to_MR_CLEM_PARSONS_branch_4
   29893:	ba d8 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_9                            ; fixup: num: 6701, src obj: 1, src ofs: 0x29894, dst obj: 3, dst ofs: 0x7ed8
   29898:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6700, src obj: 1, src ofs: 0x29899, dst obj: 3, dst ofs: 0x294bc
   2989d:	e8 8e cb 04 00       	call   strcmp_
   298a2:	85 c0                	test   eax,eax
   298a4:	75 34                	jne    talk_to_MR_CLEM_PARSONS_branch_5
talk_to_MR_CLEM_PARSONS_branch_4:
   298a6:	b8 e0 7e 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_10                           ; fixup: num: 6699, src obj: 1, src ofs: 0x298a7, dst obj: 3, dst ofs: 0x7ee0
   298ab:	e8 e0 2e 04 00       	call   check_script_flag
   298b0:	84 c0                	test   al,al
   298b2:	74 26                	je     talk_to_MR_CLEM_PARSONS_branch_5
   298b4:	ba 01 00 00 00       	mov    edx,0x1
   298b9:	31 c0                	xor    eax,eax
   298bb:	e8 90 ea ff ff       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   298c0:	31 db                	xor    ebx,ebx
   298c2:	ba f2 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_11                           ; fixup: num: 6698, src obj: 1, src ofs: 0x298c3, dst obj: 3, dst ofs: 0x7ef2
   298c7:	b8 8e 0e 00 00       	mov    eax,0xe8e
   298cc:	e8 bf 0d 04 00       	call   play_wav
   298d1:	31 c0                	xor    eax,eax
   298d3:	5d                   	pop    ebp
   298d4:	5f                   	pop    edi
   298d5:	5e                   	pop    esi
   298d6:	5a                   	pop    edx
   298d7:	59                   	pop    ecx
   298d8:	5b                   	pop    ebx
   298d9:	c3                   	ret    
talk_to_MR_CLEM_PARSONS_branch_5:
   298da:	ba fa 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_12                           ; fixup: num: 6697, src obj: 1, src ofs: 0x298db, dst obj: 3, dst ofs: 0x7efa
   298df:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6696, src obj: 1, src ofs: 0x298e0, dst obj: 3, dst ofs: 0x294bc
   298e4:	e8 47 cb 04 00       	call   strcmp_
   298e9:	85 c0                	test   eax,eax
   298eb:	74 39                	je     talk_to_MR_CLEM_PARSONS_branch_6
   298ed:	ba ff 7e 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_13                           ; fixup: num: 6695, src obj: 1, src ofs: 0x298ee, dst obj: 3, dst ofs: 0x7eff
   298f2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6694, src obj: 1, src ofs: 0x298f3, dst obj: 3, dst ofs: 0x294bc
   298f7:	e8 34 cb 04 00       	call   strcmp_
   298fc:	85 c0                	test   eax,eax
   298fe:	74 26                	je     talk_to_MR_CLEM_PARSONS_branch_6
   29900:	ba 0e 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_14                           ; fixup: num: 6717, src obj: 1, src ofs: 0x29901, dst obj: 3, dst ofs: 0x7f0e
   29905:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6716, src obj: 1, src ofs: 0x29906, dst obj: 3, dst ofs: 0x294bc
   2990a:	e8 21 cb 04 00       	call   strcmp_
   2990f:	85 c0                	test   eax,eax
   29911:	74 13                	je     talk_to_MR_CLEM_PARSONS_branch_6
   29913:	ba 18 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_15                           ; fixup: num: 6715, src obj: 1, src ofs: 0x29914, dst obj: 3, dst ofs: 0x7f18
   29918:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6714, src obj: 1, src ofs: 0x29919, dst obj: 3, dst ofs: 0x294bc
   2991d:	e8 0e cb 04 00       	call   strcmp_
   29922:	85 c0                	test   eax,eax
   29924:	75 4b                	jne    talk_to_MR_CLEM_PARSONS_branch_7
talk_to_MR_CLEM_PARSONS_branch_6:
   29926:	ba 01 00 00 00       	mov    edx,0x1
   2992b:	31 c0                	xor    eax,eax
   2992d:	e8 fe e9 ff ff       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   29932:	31 db                	xor    ebx,ebx
   29934:	ba 2c 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_16                           ; fixup: num: 6713, src obj: 1, src ofs: 0x29935, dst obj: 3, dst ofs: 0x7f2c
   29939:	b8 95 0e 00 00       	mov    eax,0xe95
   2993e:	e8 4d 0d 04 00       	call   play_wav
   29943:	ba 34 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_17                           ; fixup: num: 6712, src obj: 1, src ofs: 0x29944, dst obj: 3, dst ofs: 0x7f34
   29948:	b8 99 0e 00 00       	mov    eax,0xe99
   2994d:	31 db                	xor    ebx,ebx
   2994f:	e8 3c 0d 04 00       	call   play_wav
   29954:	bb 01 00 00 00       	mov    ebx,0x1
   29959:	ba 37 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_18                           ; fixup: num: 6711, src obj: 1, src ofs: 0x2995a, dst obj: 3, dst ofs: 0x7f37
   2995e:	b8 9d 0e 00 00       	mov    eax,0xe9d
   29963:	e8 28 0d 04 00       	call   play_wav
   29968:	31 c0                	xor    eax,eax
   2996a:	5d                   	pop    ebp
   2996b:	5f                   	pop    edi
   2996c:	5e                   	pop    esi
   2996d:	5a                   	pop    edx
   2996e:	59                   	pop    ecx
   2996f:	5b                   	pop    ebx
   29970:	c3                   	ret    
talk_to_MR_CLEM_PARSONS_branch_7:
   29971:	ba 3f 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_19                           ; fixup: num: 6710, src obj: 1, src ofs: 0x29972, dst obj: 3, dst ofs: 0x7f3f
   29976:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6709, src obj: 1, src ofs: 0x29977, dst obj: 3, dst ofs: 0x294bc
   2997b:	e8 b0 ca 04 00       	call   strcmp_
   29980:	85 c0                	test   eax,eax
   29982:	74 13                	je     talk_to_MR_CLEM_PARSONS_branch_8
   29984:	ba 47 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_20                           ; fixup: num: 6708, src obj: 1, src ofs: 0x29985, dst obj: 3, dst ofs: 0x7f47
   29989:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6707, src obj: 1, src ofs: 0x2998a, dst obj: 3, dst ofs: 0x294bc
   2998e:	e8 9d ca 04 00       	call   strcmp_
   29993:	85 c0                	test   eax,eax
   29995:	75 29                	jne    talk_to_MR_CLEM_PARSONS_branch_9
talk_to_MR_CLEM_PARSONS_branch_8:
   29997:	ba 01 00 00 00       	mov    edx,0x1
   2999c:	31 c0                	xor    eax,eax
   2999e:	bb 01 00 00 00       	mov    ebx,0x1
   299a3:	e8 98 e9 ff ff       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   299a8:	ba 59 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_21                           ; fixup: num: 6706, src obj: 1, src ofs: 0x299a9, dst obj: 3, dst ofs: 0x7f59
   299ad:	b8 a4 0e 00 00       	mov    eax,0xea4
   299b2:	e8 d9 0c 04 00       	call   play_wav
   299b7:	31 c0                	xor    eax,eax
   299b9:	5d                   	pop    ebp
   299ba:	5f                   	pop    edi
   299bb:	5e                   	pop    esi
   299bc:	5a                   	pop    edx
   299bd:	59                   	pop    ecx
   299be:	5b                   	pop    ebx
   299bf:	c3                   	ret    
talk_to_MR_CLEM_PARSONS_branch_9:
   299c0:	bb 02 00 00 00       	mov    ebx,0x2
   299c5:	ba 61 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_22                           ; fixup: num: 6725, src obj: 1, src ofs: 0x299c6, dst obj: 3, dst ofs: 0x7f61
   299ca:	b8 71 0e 00 00       	mov    eax,0xe71
talk_to_MR_CLEM_PARSONS_branch_10:
   299cf:	e8 bc 0c 04 00       	call   play_wav
   299d4:	31 c0                	xor    eax,eax
   299d6:	5d                   	pop    ebp
   299d7:	5f                   	pop    edi
   299d8:	5e                   	pop    esi
   299d9:	5a                   	pop    edx
   299da:	59                   	pop    ecx
   299db:	5b                   	pop    ebx
   299dc:	c3                   	ret    
talk_to_MR_CLEM_PARSONS_branch_11:
   299dd:	a1 68 2f 02 00       	mov    eax,ds:@obj3:MR_CLEM_PARSONS                                 ; fixup: num: 6724, src obj: 1, src ofs: 0x299de, dst obj: 3, dst ofs: 0x22f68
   299e2:	85 c0                	test   eax,eax
   299e4:	0f 84 7d 00 00 00    	je     talk_to_MR_CLEM_PARSONS_branch_14
   299ea:	bb 01 00 00 00       	mov    ebx,0x1
   299ef:	b8 cc 0d 00 00       	mov    eax,0xdcc
   299f4:	89 15 68 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS,edx                       ; fixup: num: 6723, src obj: 1, src ofs: 0x299f6, dst obj: 3, dst ofs: 0x22f68
   299fa:	ba 69 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_23                           ; fixup: num: 6722, src obj: 1, src ofs: 0x299fb, dst obj: 3, dst ofs: 0x7f69
   299ff:	e8 8c 0c 04 00       	call   play_wav
   29a04:	ba 71 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_24                           ; fixup: num: 6721, src obj: 1, src ofs: 0x29a05, dst obj: 3, dst ofs: 0x7f71
   29a09:	b8 d2 0d 00 00       	mov    eax,0xdd2
   29a0e:	31 db                	xor    ebx,ebx
   29a10:	e8 7b 0c 04 00       	call   play_wav
   29a15:	ba 77 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_25                           ; fixup: num: 6720, src obj: 1, src ofs: 0x29a16, dst obj: 3, dst ofs: 0x7f77
   29a1a:	b8 d6 0d 00 00       	mov    eax,0xdd6
   29a1f:	31 db                	xor    ebx,ebx
   29a21:	e8 6a 0c 04 00       	call   play_wav
   29a26:	bb 01 00 00 00       	mov    ebx,0x1
   29a2b:	ba 7f 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_26                           ; fixup: num: 6719, src obj: 1, src ofs: 0x29a2c, dst obj: 3, dst ofs: 0x7f7f
   29a30:	b8 e3 0d 00 00       	mov    eax,0xde3
   29a35:	e8 56 0c 04 00       	call   play_wav
   29a3a:	b8 c5 01 00 00       	mov    eax,0x1c5
   29a3f:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6718, src obj: 1, src ofs: 0x29a40, dst obj: 3, dst ofs: 0x295c0
   29a44:	e8 57 07 00 00       	call   GetDlgFileString
   29a49:	89 c6                	mov    esi,eax
   29a4b:	57                   	push   edi
talk_to_MR_CLEM_PARSONS_branch_12:
   29a4c:	8a 06                	mov    al,BYTE PTR [esi]
   29a4e:	88 07                	mov    BYTE PTR [edi],al
   29a50:	3c 00                	cmp    al,0x0
   29a52:	74 10                	je     talk_to_MR_CLEM_PARSONS_branch_13
   29a54:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29a57:	83 c6 02             	add    esi,0x2
   29a5a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29a5d:	83 c7 02             	add    edi,0x2
   29a60:	3c 00                	cmp    al,0x0
   29a62:	75 e8                	jne    talk_to_MR_CLEM_PARSONS_branch_12
talk_to_MR_CLEM_PARSONS_branch_13:
   29a64:	5f                   	pop    edi
   29a65:	eb 14                	jmp    talk_to_MR_CLEM_PARSONS_branch_15
talk_to_MR_CLEM_PARSONS_branch_14:
   29a67:	bb 02 00 00 00       	mov    ebx,0x2
   29a6c:	ba 87 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_27                           ; fixup: num: 6607, src obj: 1, src ofs: 0x29a6d, dst obj: 3, dst ofs: 0x7f87
   29a71:	b8 65 0e 00 00       	mov    eax,0xe65
   29a76:	e8 15 0c 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_15:
   29a7b:	b8 8f 7f 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_28                           ; fixup: num: 6606, src obj: 1, src ofs: 0x29a7c, dst obj: 3, dst ofs: 0x7f8f
   29a80:	e8 0b 2d 04 00       	call   check_script_flag
   29a85:	84 c0                	test   al,al
   29a87:	74 4a                	je     talk_to_MR_CLEM_PARSONS_branch_16
   29a89:	83 3d 6c 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_1,0x0            ; fixup: num: 6605, src obj: 1, src ofs: 0x29a8b, dst obj: 3, dst ofs: 0x22f6c
   29a90:	75 41                	jne    talk_to_MR_CLEM_PARSONS_branch_16
   29a92:	be 01 00 00 00       	mov    esi,0x1
   29a97:	bb 03 00 00 00       	mov    ebx,0x3
   29a9c:	ba a4 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_29                           ; fixup: num: 6604, src obj: 1, src ofs: 0x29a9d, dst obj: 3, dst ofs: 0x7fa4
   29aa1:	b8 ab 0e 00 00       	mov    eax,0xeab
   29aa6:	89 35 6c 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_1,esi            ; fixup: num: 6603, src obj: 1, src ofs: 0x29aa8, dst obj: 3, dst ofs: 0x22f6c
   29aac:	e8 df 0b 04 00       	call   play_wav
   29ab1:	ba ac 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_30                           ; fixup: num: 6602, src obj: 1, src ofs: 0x29ab2, dst obj: 3, dst ofs: 0x7fac
   29ab6:	b8 b3 0e 00 00       	mov    eax,0xeb3
   29abb:	31 db                	xor    ebx,ebx
   29abd:	e8 ce 0b 04 00       	call   play_wav
   29ac2:	ba b2 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_31                           ; fixup: num: 6731, src obj: 1, src ofs: 0x29ac3, dst obj: 3, dst ofs: 0x7fb2
   29ac7:	b8 b7 0e 00 00       	mov    eax,0xeb7
   29acc:	89 f3                	mov    ebx,esi
   29ace:	e8 bd 0b 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_16:
   29ad3:	b8 ba 7f 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_32                           ; fixup: num: 6730, src obj: 1, src ofs: 0x29ad4, dst obj: 3, dst ofs: 0x7fba
   29ad8:	e8 b3 2c 04 00       	call   check_script_flag
   29add:	84 c0                	test   al,al
   29adf:	74 3c                	je     talk_to_MR_CLEM_PARSONS_branch_17
   29ae1:	83 3d 70 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_2,0x0            ; fixup: num: 6729, src obj: 1, src ofs: 0x29ae3, dst obj: 3, dst ofs: 0x22f70
   29ae8:	75 33                	jne    talk_to_MR_CLEM_PARSONS_branch_17
   29aea:	bd 01 00 00 00       	mov    ebp,0x1
   29aef:	bb 02 00 00 00       	mov    ebx,0x2
   29af4:	ba cb 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_33                           ; fixup: num: 6728, src obj: 1, src ofs: 0x29af5, dst obj: 3, dst ofs: 0x7fcb
   29af9:	b8 c2 0e 00 00       	mov    eax,0xec2
   29afe:	89 2d 70 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_2,ebp            ; fixup: num: 6727, src obj: 1, src ofs: 0x29b00, dst obj: 3, dst ofs: 0x22f70
   29b04:	e8 87 0b 04 00       	call   play_wav
   29b09:	bb 02 00 00 00       	mov    ebx,0x2
   29b0e:	ba d3 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_34                           ; fixup: num: 6726, src obj: 1, src ofs: 0x29b0f, dst obj: 3, dst ofs: 0x7fd3
   29b13:	b8 c9 0e 00 00       	mov    eax,0xec9
   29b18:	e8 73 0b 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_17:
   29b1d:	b8 db 7f 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_35                           ; fixup: num: 6620, src obj: 1, src ofs: 0x29b1e, dst obj: 3, dst ofs: 0x7fdb
   29b22:	e8 69 2c 04 00       	call   check_script_flag
   29b27:	84 c0                	test   al,al
   29b29:	74 28                	je     talk_to_MR_CLEM_PARSONS_branch_18
   29b2b:	83 3d 74 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_3,0x0            ; fixup: num: 6619, src obj: 1, src ofs: 0x29b2d, dst obj: 3, dst ofs: 0x22f74
   29b32:	75 1f                	jne    talk_to_MR_CLEM_PARSONS_branch_18
   29b34:	ba 01 00 00 00       	mov    edx,0x1
   29b39:	bb 03 00 00 00       	mov    ebx,0x3
   29b3e:	b8 d2 0e 00 00       	mov    eax,0xed2
   29b43:	89 15 74 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_3,edx            ; fixup: num: 6618, src obj: 1, src ofs: 0x29b45, dst obj: 3, dst ofs: 0x22f74
   29b49:	ba ee 7f 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_36                           ; fixup: num: 6617, src obj: 1, src ofs: 0x29b4a, dst obj: 3, dst ofs: 0x7fee
   29b4e:	e8 3d 0b 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_18:
   29b53:	b8 f6 7f 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_37                           ; fixup: num: 6616, src obj: 1, src ofs: 0x29b54, dst obj: 3, dst ofs: 0x7ff6
   29b58:	e8 33 2c 04 00       	call   check_script_flag
   29b5d:	84 c0                	test   al,al
   29b5f:	74 28                	je     talk_to_MR_CLEM_PARSONS_branch_19
   29b61:	83 3d 78 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_4,0x0            ; fixup: num: 6615, src obj: 1, src ofs: 0x29b63, dst obj: 3, dst ofs: 0x22f78
   29b68:	75 1f                	jne    talk_to_MR_CLEM_PARSONS_branch_19
   29b6a:	b9 01 00 00 00       	mov    ecx,0x1
   29b6f:	bb 02 00 00 00       	mov    ebx,0x2
   29b74:	ba 03 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_38                           ; fixup: num: 6614, src obj: 1, src ofs: 0x29b75, dst obj: 3, dst ofs: 0x8003
   29b79:	b8 dd 0e 00 00       	mov    eax,0xedd
   29b7e:	89 0d 78 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_4,ecx            ; fixup: num: 6613, src obj: 1, src ofs: 0x29b80, dst obj: 3, dst ofs: 0x22f78
   29b84:	e8 07 0b 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_19:
   29b89:	b8 0b 80 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_39                           ; fixup: num: 6612, src obj: 1, src ofs: 0x29b8a, dst obj: 3, dst ofs: 0x800b
   29b8e:	e8 fd 2b 04 00       	call   check_script_flag
   29b93:	84 c0                	test   al,al
   29b95:	74 67                	je     talk_to_MR_CLEM_PARSONS_branch_20
   29b97:	83 3d 7c 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_5,0x0            ; fixup: num: 6611, src obj: 1, src ofs: 0x29b99, dst obj: 3, dst ofs: 0x22f7c
   29b9e:	75 5e                	jne    talk_to_MR_CLEM_PARSONS_branch_20
   29ba0:	bf 01 00 00 00       	mov    edi,0x1
   29ba5:	ba 1d 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_40                           ; fixup: num: 6610, src obj: 1, src ofs: 0x29ba6, dst obj: 3, dst ofs: 0x801d
   29baa:	b8 e5 0e 00 00       	mov    eax,0xee5
   29baf:	31 db                	xor    ebx,ebx
   29bb1:	89 3d 7c 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_5,edi            ; fixup: num: 6609, src obj: 1, src ofs: 0x29bb3, dst obj: 3, dst ofs: 0x22f7c
   29bb7:	e8 d4 0a 04 00       	call   play_wav
   29bbc:	ba 25 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_41                           ; fixup: num: 6608, src obj: 1, src ofs: 0x29bbd, dst obj: 3, dst ofs: 0x8025
   29bc1:	b8 ea 0e 00 00       	mov    eax,0xeea
   29bc6:	89 fb                	mov    ebx,edi
   29bc8:	e8 c3 0a 04 00       	call   play_wav
   29bcd:	ba 2b 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_42                           ; fixup: num: 6631, src obj: 1, src ofs: 0x29bce, dst obj: 3, dst ofs: 0x802b
   29bd2:	b8 ef 0e 00 00       	mov    eax,0xeef
   29bd7:	31 db                	xor    ebx,ebx
   29bd9:	e8 b2 0a 04 00       	call   play_wav
   29bde:	bb 03 00 00 00       	mov    ebx,0x3
   29be3:	ba 33 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_43                           ; fixup: num: 6630, src obj: 1, src ofs: 0x29be4, dst obj: 3, dst ofs: 0x8033
   29be8:	b8 f4 0e 00 00       	mov    eax,0xef4
   29bed:	e8 9e 0a 04 00       	call   play_wav
   29bf2:	b8 39 80 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_44                           ; fixup: num: 6629, src obj: 1, src ofs: 0x29bf3, dst obj: 3, dst ofs: 0x8039
   29bf7:	31 d2                	xor    edx,edx
   29bf9:	e8 22 01 04 00       	call   Load_head
talk_to_MR_CLEM_PARSONS_branch_20:
   29bfe:	b8 41 80 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_45                           ; fixup: num: 6628, src obj: 1, src ofs: 0x29bff, dst obj: 3, dst ofs: 0x8041
   29c03:	e8 88 2b 04 00       	call   check_script_flag
   29c08:	84 c0                	test   al,al
   29c0a:	74 47                	je     talk_to_MR_CLEM_PARSONS_branch_21
   29c0c:	83 3d 80 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_6,0x0            ; fixup: num: 6627, src obj: 1, src ofs: 0x29c0e, dst obj: 3, dst ofs: 0x22f80
   29c13:	75 3e                	jne    talk_to_MR_CLEM_PARSONS_branch_21
   29c15:	b8 01 00 00 00       	mov    eax,0x1
   29c1a:	bb 03 00 00 00       	mov    ebx,0x3
   29c1f:	ba 50 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_46                           ; fixup: num: 6626, src obj: 1, src ofs: 0x29c20, dst obj: 3, dst ofs: 0x8050
   29c24:	a3 80 2f 02 00       	mov    ds:@obj3:MR_CLEM_PARSONS_variable_6,eax                      ; fixup: num: 6625, src obj: 1, src ofs: 0x29c25, dst obj: 3, dst ofs: 0x22f80
   29c29:	b8 fa 0e 00 00       	mov    eax,0xefa
   29c2e:	e8 5d 0a 04 00       	call   play_wav
   29c33:	bb 03 00 00 00       	mov    ebx,0x3
   29c38:	ba 58 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_47                           ; fixup: num: 6624, src obj: 1, src ofs: 0x29c39, dst obj: 3, dst ofs: 0x8058
   29c3d:	b8 03 0f 00 00       	mov    eax,0xf03
   29c42:	e8 49 0a 04 00       	call   play_wav
   29c47:	b8 5e 80 00 00       	mov    eax,@obj3:mr_parso_cpp_variable_48                           ; fixup: num: 6623, src obj: 1, src ofs: 0x29c48, dst obj: 3, dst ofs: 0x805e
   29c4c:	31 d2                	xor    edx,edx
   29c4e:	e8 cd 00 04 00       	call   Load_head
talk_to_MR_CLEM_PARSONS_branch_21:
   29c53:	be 66 80 00 00       	mov    esi,@obj3:mr_parso_cpp_variable_49                           ; fixup: num: 6622, src obj: 1, src ofs: 0x29c54, dst obj: 3, dst ofs: 0x8066
   29c58:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 6621, src obj: 1, src ofs: 0x29c59, dst obj: 3, dst ofs: 0x294c0
   29c5d:	57                   	push   edi
talk_to_MR_CLEM_PARSONS_branch_22:
   29c5e:	8a 06                	mov    al,BYTE PTR [esi]
   29c60:	88 07                	mov    BYTE PTR [edi],al
   29c62:	3c 00                	cmp    al,0x0
   29c64:	74 10                	je     talk_to_MR_CLEM_PARSONS_branch_23
   29c66:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29c69:	83 c6 02             	add    esi,0x2
   29c6c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29c6f:	83 c7 02             	add    edi,0x2
   29c72:	3c 00                	cmp    al,0x0
   29c74:	75 e8                	jne    talk_to_MR_CLEM_PARSONS_branch_22
talk_to_MR_CLEM_PARSONS_branch_23:
   29c76:	5f                   	pop    edi
   29c77:	89 fd                	mov    ebp,edi
   29c79:	31 c9                	xor    ecx,ecx
talk_to_MR_CLEM_PARSONS_branch_24:
   29c7b:	b8 c6 01 00 00       	mov    eax,0x1c6
   29c80:	e8 1b 05 00 00       	call   GetDlgFileString
   29c85:	89 c2                	mov    edx,eax
   29c87:	89 e8                	mov    eax,ebp
   29c89:	e8 cc 77 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29c8e:	85 c0                	test   eax,eax
   29c90:	0f 84 6c 02 00 00    	je     talk_to_MR_CLEM_PARSONS_branch_36
   29c96:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 6637, src obj: 1, src ofs: 0x29c97, dst obj: 3, dst ofs: 0x295c0
   29c9b:	e8 a0 1d 04 00       	call   show_keywords
   29ca0:	b8 c7 01 00 00       	mov    eax,0x1c7
   29ca5:	e8 f6 04 00 00       	call   GetDlgFileString
   29caa:	89 c2                	mov    edx,eax
   29cac:	89 e8                	mov    eax,ebp
   29cae:	e8 a7 77 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29cb3:	85 c0                	test   eax,eax
   29cb5:	0f 85 7f 00 00 00    	jne    talk_to_MR_CLEM_PARSONS_branch_27
   29cbb:	ba 67 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_50                           ; fixup: num: 6636, src obj: 1, src ofs: 0x29cbc, dst obj: 3, dst ofs: 0x8067
   29cc0:	b8 ee 0d 00 00       	mov    eax,0xdee
   29cc5:	89 cb                	mov    ebx,ecx
   29cc7:	e8 c4 09 04 00       	call   play_wav
   29ccc:	e8 5f ea ff ff       	call   CU_OF_BARBER_S_POLE
   29cd1:	ba 6f 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_51                           ; fixup: num: 6635, src obj: 1, src ofs: 0x29cd2, dst obj: 3, dst ofs: 0x806f
   29cd6:	b8 f9 0d 00 00       	mov    eax,0xdf9
   29cdb:	89 cb                	mov    ebx,ecx
   29cdd:	e8 ae 09 04 00       	call   play_wav
   29ce2:	bb 01 00 00 00       	mov    ebx,0x1
   29ce7:	ba 77 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_52                           ; fixup: num: 6634, src obj: 1, src ofs: 0x29ce8, dst obj: 3, dst ofs: 0x8077
   29cec:	b8 00 0e 00 00       	mov    eax,0xe00
   29cf1:	e8 9a 09 04 00       	call   play_wav
   29cf6:	bb 02 00 00 00       	mov    ebx,0x2
   29cfb:	ba 7d 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_53                           ; fixup: num: 6633, src obj: 1, src ofs: 0x29cfc, dst obj: 3, dst ofs: 0x807d
   29d00:	b8 04 0e 00 00       	mov    eax,0xe04
   29d05:	e8 86 09 04 00       	call   play_wav
   29d0a:	b8 c8 01 00 00       	mov    eax,0x1c8
   29d0f:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6632, src obj: 1, src ofs: 0x29d10, dst obj: 3, dst ofs: 0x295c0
   29d14:	e8 87 04 00 00       	call   GetDlgFileString
   29d19:	89 c6                	mov    esi,eax
   29d1b:	57                   	push   edi
talk_to_MR_CLEM_PARSONS_branch_25:
   29d1c:	8a 06                	mov    al,BYTE PTR [esi]
   29d1e:	88 07                	mov    BYTE PTR [edi],al
   29d20:	3c 00                	cmp    al,0x0
   29d22:	74 10                	je     talk_to_MR_CLEM_PARSONS_branch_26
   29d24:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29d27:	83 c6 02             	add    esi,0x2
   29d2a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29d2d:	83 c7 02             	add    edi,0x2
   29d30:	3c 00                	cmp    al,0x0
   29d32:	75 e8                	jne    talk_to_MR_CLEM_PARSONS_branch_25
talk_to_MR_CLEM_PARSONS_branch_26:
   29d34:	5f                   	pop    edi
   29d35:	e9 41 ff ff ff       	jmp    talk_to_MR_CLEM_PARSONS_branch_24
talk_to_MR_CLEM_PARSONS_branch_27:
   29d3a:	b8 c9 01 00 00       	mov    eax,0x1c9
   29d3f:	e8 5c 04 00 00       	call   GetDlgFileString
   29d44:	89 c2                	mov    edx,eax
   29d46:	89 e8                	mov    eax,ebp
   29d48:	e8 0d 77 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29d4d:	85 c0                	test   eax,eax
   29d4f:	75 41                	jne    talk_to_MR_CLEM_PARSONS_branch_30
   29d51:	ba 85 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_54                           ; fixup: num: 6642, src obj: 1, src ofs: 0x29d52, dst obj: 3, dst ofs: 0x8085
   29d56:	b8 0f 0e 00 00       	mov    eax,0xe0f
   29d5b:	89 cb                	mov    ebx,ecx
   29d5d:	e8 2e 09 04 00       	call   play_wav
   29d62:	b8 ca 01 00 00       	mov    eax,0x1ca
   29d67:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6641, src obj: 1, src ofs: 0x29d68, dst obj: 3, dst ofs: 0x295c0
   29d6c:	e8 2f 04 00 00       	call   GetDlgFileString
   29d71:	89 c6                	mov    esi,eax
   29d73:	57                   	push   edi
talk_to_MR_CLEM_PARSONS_branch_28:
   29d74:	8a 06                	mov    al,BYTE PTR [esi]
   29d76:	88 07                	mov    BYTE PTR [edi],al
   29d78:	3c 00                	cmp    al,0x0
   29d7a:	74 10                	je     talk_to_MR_CLEM_PARSONS_branch_29
   29d7c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29d7f:	83 c6 02             	add    esi,0x2
   29d82:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29d85:	83 c7 02             	add    edi,0x2
   29d88:	3c 00                	cmp    al,0x0
   29d8a:	75 e8                	jne    talk_to_MR_CLEM_PARSONS_branch_28
talk_to_MR_CLEM_PARSONS_branch_29:
   29d8c:	5f                   	pop    edi
   29d8d:	e9 e9 fe ff ff       	jmp    talk_to_MR_CLEM_PARSONS_branch_24
talk_to_MR_CLEM_PARSONS_branch_30:
   29d92:	b8 cb 01 00 00       	mov    eax,0x1cb
   29d97:	e8 04 04 00 00       	call   GetDlgFileString
   29d9c:	89 c2                	mov    edx,eax
   29d9e:	89 e8                	mov    eax,ebp
   29da0:	e8 b5 76 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29da5:	85 c0                	test   eax,eax
   29da7:	0f 85 9b 00 00 00    	jne    talk_to_MR_CLEM_PARSONS_branch_31
   29dad:	ba 8d 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_55                           ; fixup: num: 6640, src obj: 1, src ofs: 0x29dae, dst obj: 3, dst ofs: 0x808d
   29db2:	b8 1c 0e 00 00       	mov    eax,0xe1c
   29db7:	89 cb                	mov    ebx,ecx
   29db9:	e8 d2 08 04 00       	call   play_wav
   29dbe:	ba 95 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_56                           ; fixup: num: 6639, src obj: 1, src ofs: 0x29dbf, dst obj: 3, dst ofs: 0x8095
   29dc3:	b8 24 0e 00 00       	mov    eax,0xe24
   29dc8:	89 cb                	mov    ebx,ecx
   29dca:	e8 c1 08 04 00       	call   play_wav
   29dcf:	bb 01 00 00 00       	mov    ebx,0x1
   29dd4:	ba 98 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_57                           ; fixup: num: 6638, src obj: 1, src ofs: 0x29dd5, dst obj: 3, dst ofs: 0x8098
   29dd9:	b8 28 0e 00 00       	mov    eax,0xe28
   29dde:	e8 ad 08 04 00       	call   play_wav
   29de3:	e8 58 e9 ff ff       	call   ALIEN_HEAD_MOUNTED_ON_THE_WALL
   29de8:	ba a0 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_58                           ; fixup: num: 6647, src obj: 1, src ofs: 0x29de9, dst obj: 3, dst ofs: 0x80a0
   29ded:	b8 33 0e 00 00       	mov    eax,0xe33
   29df2:	89 cb                	mov    ebx,ecx
   29df4:	e8 97 08 04 00       	call   play_wav
   29df9:	ba a8 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_59                           ; fixup: num: 6646, src obj: 1, src ofs: 0x29dfa, dst obj: 3, dst ofs: 0x80a8
   29dfe:	b8 39 0e 00 00       	mov    eax,0xe39
   29e03:	89 cb                	mov    ebx,ecx
   29e05:	e8 86 08 04 00       	call   play_wav
   29e0a:	bb 02 00 00 00       	mov    ebx,0x2
   29e0f:	ba ae 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_60                           ; fixup: num: 6645, src obj: 1, src ofs: 0x29e10, dst obj: 3, dst ofs: 0x80ae
   29e14:	b8 3e 0e 00 00       	mov    eax,0xe3e
   29e19:	e8 72 08 04 00       	call   play_wav
   29e1e:	bb 01 00 00 00       	mov    ebx,0x1
   29e23:	ba b6 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_61                           ; fixup: num: 6644, src obj: 1, src ofs: 0x29e24, dst obj: 3, dst ofs: 0x80b6
   29e28:	b8 46 0e 00 00       	mov    eax,0xe46
   29e2d:	e8 5e 08 04 00       	call   play_wav
   29e32:	ba be 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_62                           ; fixup: num: 6643, src obj: 1, src ofs: 0x29e33, dst obj: 3, dst ofs: 0x80be
   29e37:	b8 4b 0e 00 00       	mov    eax,0xe4b
   29e3c:	89 cb                	mov    ebx,ecx
   29e3e:	e8 4d 08 04 00       	call   play_wav
   29e43:	e9 33 fe ff ff       	jmp    talk_to_MR_CLEM_PARSONS_branch_24
talk_to_MR_CLEM_PARSONS_branch_31:
   29e48:	b8 cd 01 00 00       	mov    eax,0x1cd
   29e4d:	e8 4e 03 00 00       	call   GetDlgFileString
   29e52:	89 c2                	mov    edx,eax
   29e54:	89 e8                	mov    eax,ebp
   29e56:	e8 ff 75 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29e5b:	85 c0                	test   eax,eax
   29e5d:	74 2e                	je     talk_to_MR_CLEM_PARSONS_branch_32
   29e5f:	b8 ce 01 00 00       	mov    eax,0x1ce
   29e64:	e8 37 03 00 00       	call   GetDlgFileString
   29e69:	89 c2                	mov    edx,eax
   29e6b:	89 e8                	mov    eax,ebp
   29e6d:	e8 e8 75 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29e72:	85 c0                	test   eax,eax
   29e74:	74 17                	je     talk_to_MR_CLEM_PARSONS_branch_32
   29e76:	b8 cf 01 00 00       	mov    eax,0x1cf
   29e7b:	e8 20 03 00 00       	call   GetDlgFileString
   29e80:	89 c2                	mov    edx,eax
   29e82:	89 e8                	mov    eax,ebp
   29e84:	e8 d1 75 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29e89:	85 c0                	test   eax,eax
   29e8b:	75 44                	jne    talk_to_MR_CLEM_PARSONS_branch_35
talk_to_MR_CLEM_PARSONS_branch_32:
   29e8d:	bb 02 00 00 00       	mov    ebx,0x2
   29e92:	ba c6 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_63                           ; fixup: num: 6654, src obj: 1, src ofs: 0x29e93, dst obj: 3, dst ofs: 0x80c6
   29e97:	b8 54 0e 00 00       	mov    eax,0xe54
   29e9c:	e8 ef 07 04 00       	call   play_wav
   29ea1:	b8 d0 01 00 00       	mov    eax,0x1d0
   29ea6:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6653, src obj: 1, src ofs: 0x29ea7, dst obj: 3, dst ofs: 0x295c0
   29eab:	e8 f0 02 00 00       	call   GetDlgFileString
   29eb0:	89 c6                	mov    esi,eax
   29eb2:	57                   	push   edi
talk_to_MR_CLEM_PARSONS_branch_33:
   29eb3:	8a 06                	mov    al,BYTE PTR [esi]
   29eb5:	88 07                	mov    BYTE PTR [edi],al
   29eb7:	3c 00                	cmp    al,0x0
   29eb9:	74 10                	je     talk_to_MR_CLEM_PARSONS_branch_34
   29ebb:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   29ebe:	83 c6 02             	add    esi,0x2
   29ec1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29ec4:	83 c7 02             	add    edi,0x2
   29ec7:	3c 00                	cmp    al,0x0
   29ec9:	75 e8                	jne    talk_to_MR_CLEM_PARSONS_branch_33
talk_to_MR_CLEM_PARSONS_branch_34:
   29ecb:	5f                   	pop    edi
   29ecc:	e9 aa fd ff ff       	jmp    talk_to_MR_CLEM_PARSONS_branch_24
talk_to_MR_CLEM_PARSONS_branch_35:
   29ed1:	b8 d1 01 00 00       	mov    eax,0x1d1
   29ed6:	e8 c5 02 00 00       	call   GetDlgFileString
   29edb:	89 c2                	mov    edx,eax
   29edd:	89 e8                	mov    eax,ebp
   29edf:	e8 76 75 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29ee4:	85 c0                	test   eax,eax
   29ee6:	0f 84 8f fd ff ff    	je     talk_to_MR_CLEM_PARSONS_branch_24
   29eec:	ba ce 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_64                           ; fixup: num: 6652, src obj: 1, src ofs: 0x29eed, dst obj: 3, dst ofs: 0x80ce
   29ef1:	b8 6b 0e 00 00       	mov    eax,0xe6b
   29ef6:	89 cb                	mov    ebx,ecx
   29ef8:	e8 93 07 04 00       	call   play_wav
   29efd:	e9 79 fd ff ff       	jmp    talk_to_MR_CLEM_PARSONS_branch_24
talk_to_MR_CLEM_PARSONS_branch_36:
   29f02:	ba d6 80 00 00       	mov    edx,@obj3:mr_parso_cpp_variable_65                           ; fixup: num: 6651, src obj: 1, src ofs: 0x29f03, dst obj: 3, dst ofs: 0x80d6
   29f07:	b8 5f 0e 00 00       	mov    eax,0xe5f
   29f0c:	31 db                	xor    ebx,ebx
   29f0e:	e8 7d 07 04 00       	call   play_wav
talk_to_MR_CLEM_PARSONS_branch_37:
   29f13:	31 c0                	xor    eax,eax
   29f15:	5d                   	pop    ebp
   29f16:	5f                   	pop    edi
   29f17:	5e                   	pop    esi
   29f18:	5a                   	pop    edx
   29f19:	59                   	pop    ecx
   29f1a:	5b                   	pop    ebx
   29f1b:	c3                   	ret    
talk_to_MR_CLEM_PARSONS_branch_38:
   29f1c:	89 15 68 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS,edx                       ; fixup: num: 6650, src obj: 1, src ofs: 0x29f1e, dst obj: 3, dst ofs: 0x22f68
   29f22:	a1 68 2f 02 00       	mov    eax,ds:@obj3:MR_CLEM_PARSONS                                 ; fixup: num: 6649, src obj: 1, src ofs: 0x29f23, dst obj: 3, dst ofs: 0x22f68
   29f27:	c3                   	ret    
   29f28:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   29f2e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function                                      -
;  'MR_CLEM_PARSONS_FIRST_CONVERSATION'          -
;-------------------------------------------------
MR_CLEM_PARSONS_FIRST_CONVERSATION:
   29f30:	85 c0                	test   eax,eax
   29f32:	74 e8                	je     talk_to_MR_CLEM_PARSONS_branch_38
   29f34:	a1 68 2f 02 00       	mov    eax,ds:@obj3:MR_CLEM_PARSONS                                 ; fixup: num: 6648, src obj: 1, src ofs: 0x29f35, dst obj: 3, dst ofs: 0x22f68
   29f39:	c3                   	ret    
   29f3a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_CLEM_PARSONS_initialize'         -
;-------------------------------------------------
MR_CLEM_PARSONS_initialize:
   29f40:	53                   	push   ebx
   29f41:	52                   	push   edx
   29f42:	ba 01 00 00 00       	mov    edx,0x1
   29f47:	31 db                	xor    ebx,ebx
   29f49:	89 15 68 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS,edx                       ; fixup: num: 6661, src obj: 1, src ofs: 0x29f4b, dst obj: 3, dst ofs: 0x22f68
   29f4f:	89 1d 6c 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_1,ebx            ; fixup: num: 6660, src obj: 1, src ofs: 0x29f51, dst obj: 3, dst ofs: 0x22f6c
   29f55:	89 1d 70 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_2,ebx            ; fixup: num: 6659, src obj: 1, src ofs: 0x29f57, dst obj: 3, dst ofs: 0x22f70
   29f5b:	89 1d 74 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_3,ebx            ; fixup: num: 6658, src obj: 1, src ofs: 0x29f5d, dst obj: 3, dst ofs: 0x22f74
   29f61:	89 1d 78 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_4,ebx            ; fixup: num: 6657, src obj: 1, src ofs: 0x29f63, dst obj: 3, dst ofs: 0x22f78
   29f67:	89 1d 7c 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_5,ebx            ; fixup: num: 6656, src obj: 1, src ofs: 0x29f69, dst obj: 3, dst ofs: 0x22f7c
   29f6d:	89 1d 80 2f 02 00    	mov    DWORD PTR ds:@obj3:MR_CLEM_PARSONS_variable_6,ebx            ; fixup: num: 6655, src obj: 1, src ofs: 0x29f6f, dst obj: 3, dst ofs: 0x22f80
   29f73:	5a                   	pop    edx
   29f74:	5b                   	pop    ebx
   29f75:	c3                   	ret    
;-------------------------------------------------
;  Bad code 59 (zero after ret):                 -
;-------------------------------------------------
;  29f74:	5b                   	pop    ebx
;  29f75:	c3                   	ret    
;  29f76:	00 00                	add    BYTE PTR [eax],al
;  29f78:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   29f76:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 59                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 64 (D:\SOURCE\mr_parso.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 64: D:\SOURCE\mr_parso.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_parso_cpp_variable_1:
    7e80:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_parso_cpp_variable_2:
    7e98:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_3:
    7ea0:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_parso_cpp_variable_4:
    7ead:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_parso_cpp_variable_5:
    7ebe:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_6:
    7ec6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7ec7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7ec8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_parso_cpp_variable_7:
    7ec9:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_8:
    7ed1:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_parso_cpp_variable_9:
    7ed8:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_parso_cpp_variable_10:
    7ee0:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_parso_cpp_variable_11:
    7ef2:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_12:
    7efa:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_parso_cpp_variable_13:
    7eff:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_parso_cpp_variable_14:
    7f0e:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_parso_cpp_variable_15:
    7f18:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_parso_cpp_variable_16:
    7f2c:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_17:
    7f34:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7f35:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7f36:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_parso_cpp_variable_18:
    7f37:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_19:
    7f3f:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
mr_parso_cpp_variable_20:
    7f47:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
mr_parso_cpp_variable_21:
    7f59:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_22:
    7f61:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_23:
    7f69:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_24:
    7f71:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_25:
    7f77:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_26:
    7f7f:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_27:
    7f87:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_28:
    7f8f:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_parso_cpp_variable_29:
    7fa4:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_30:
    7fac:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_31:
    7fb2:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_32:
    7fba:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
mr_parso_cpp_variable_33:
    7fcb:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_34:
    7fd3:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_35:
    7fdb:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
mr_parso_cpp_variable_36:
    7fee:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_37:
    7ff6:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mr_parso_cpp_variable_38:
    8003:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_39:
    800b:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
mr_parso_cpp_variable_40:
    801d:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_41:
    8025:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_42:
    802b:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_43:
    8033:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_44:
    8039:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_45:
    8041:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_parso_cpp_variable_46:
    8050:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_47:
    8058:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_48:
    805e:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_49:
    8066:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_parso_cpp_variable_50:
    8067:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_51:
    806f:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_52:
    8077:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_53:
    807d:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_54:
    8085:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_55:
    808d:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_56:
    8095:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    8096:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    8097:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_parso_cpp_variable_57:
    8098:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_58:
    80a0:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_59:
    80a8:	53 57 45 4c 4c 00    	db     "SWELL",0x00
mr_parso_cpp_variable_60:
    80ae:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_61:
    80b6:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_62:
    80be:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_63:
    80c6:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_64:
    80ce:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
mr_parso_cpp_variable_65:
    80d6:	50 41 52 53 4f 4e 53 00 	db     "PARSONS",0x00
    80de:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 64 (D:\SOURCE\mr_parso.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 64: D:\SOURCE\mr_parso.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_CLEM_PARSONS:                                                                                    ; access size: DWORD
   22f68:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_1:                                                                         ; access size: DWORD
   22f6c:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_2:                                                                         ; access size: DWORD
   22f70:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_3:                                                                         ; access size: DWORD
   22f74:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_4:                                                                         ; access size: DWORD
   22f78:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_5:                                                                         ; access size: DWORD
   22f7c:	00 00 00 00          	dd     0x00000000
MR_CLEM_PARSONS_variable_6:                                                                         ; access size: DWORD
   22f80:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 64 (D:\SOURCE\mr_parso.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------