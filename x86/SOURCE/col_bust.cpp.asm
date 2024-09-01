;-------------------------------------------------------------------------------
;                                                                              -
;  Module 34: D:\SOURCE\col_bust.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_COLONEL_BUSTER_MONRO'       -
;-------------------------------------------------
talk_to_COLONEL_BUSTER_MONRO:
   1b7c0:	53                   	push   ebx
   1b7c1:	51                   	push   ecx
   1b7c2:	52                   	push   edx
   1b7c3:	56                   	push   esi
   1b7c4:	57                   	push   edi
   1b7c5:	55                   	push   ebp
   1b7c6:	be 60 3e 00 00       	mov    esi,@obj3:col_bust_cpp_variable_1                            ; fixup: num: 3758, src obj: 1, src ofs: 0x1b7c7, dst obj: 3, dst ofs: 0x3e60
   1b7cb:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3757, src obj: 1, src ofs: 0x1b7cc, dst obj: 3, dst ofs: 0x295c0
   1b7d0:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_1:
   1b7d1:	8a 06                	mov    al,BYTE PTR [esi]
   1b7d3:	88 07                	mov    BYTE PTR [edi],al
   1b7d5:	3c 00                	cmp    al,0x0
   1b7d7:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_2
   1b7d9:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1b7dc:	83 c6 02             	add    esi,0x2
   1b7df:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1b7e2:	83 c7 02             	add    edi,0x2
   1b7e5:	3c 00                	cmp    al,0x0
   1b7e7:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_1
talk_to_COLONEL_BUSTER_MONRO_branch_2:
   1b7e9:	5f                   	pop    edi
   1b7ea:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3756, src obj: 1, src ofs: 0x1b7ec, dst obj: 3, dst ofs: 0x294bc
   1b7f0:	85 d2                	test   edx,edx
   1b7f2:	0f 84 b5 01 00 00    	je     talk_to_COLONEL_BUSTER_MONRO_branch_10
   1b7f8:	89 d0                	mov    eax,edx
   1b7fa:	ba 61 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_2                            ; fixup: num: 3755, src obj: 1, src ofs: 0x1b7fb, dst obj: 3, dst ofs: 0x3e61
   1b7ff:	e8 2c ac 05 00       	call   strcmp_
   1b804:	85 c0                	test   eax,eax
   1b806:	75 1b                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_3
   1b808:	ba 01 00 00 00       	mov    edx,0x1
   1b80d:	e8 5e cb 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1b812:	31 db                	xor    ebx,ebx
   1b814:	ba 79 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_3                            ; fixup: num: 3754, src obj: 1, src ofs: 0x1b815, dst obj: 3, dst ofs: 0x3e79
   1b819:	b8 7b 18 00 00       	mov    eax,0x187b
   1b81e:	e9 45 0d 00 00       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_66
talk_to_COLONEL_BUSTER_MONRO_branch_3:
   1b823:	ba 80 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_4                            ; fixup: num: 3753, src obj: 1, src ofs: 0x1b824, dst obj: 3, dst ofs: 0x3e80
   1b828:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3752, src obj: 1, src ofs: 0x1b829, dst obj: 3, dst ofs: 0x294bc
   1b82d:	e8 fe ab 05 00       	call   strcmp_
   1b832:	85 c0                	test   eax,eax
   1b834:	74 13                	je     talk_to_COLONEL_BUSTER_MONRO_branch_4
   1b836:	ba 8d 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_5                            ; fixup: num: 3751, src obj: 1, src ofs: 0x1b837, dst obj: 3, dst ofs: 0x3e8d
   1b83b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3750, src obj: 1, src ofs: 0x1b83c, dst obj: 3, dst ofs: 0x294bc
   1b840:	e8 eb ab 05 00       	call   strcmp_
   1b845:	85 c0                	test   eax,eax
   1b847:	75 62                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_5
talk_to_COLONEL_BUSTER_MONRO_branch_4:
   1b849:	ba 01 00 00 00       	mov    edx,0x1
   1b84e:	31 c0                	xor    eax,eax
   1b850:	e8 0b cb 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1b855:	31 db                	xor    ebx,ebx
   1b857:	ba 9e 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_6                            ; fixup: num: 3749, src obj: 1, src ofs: 0x1b858, dst obj: 3, dst ofs: 0x3e9e
   1b85c:	b8 84 18 00 00       	mov    eax,0x1884
   1b861:	e8 2a ee 04 00       	call   play_wav
   1b866:	bb 04 00 00 00       	mov    ebx,0x4
   1b86b:	ba a5 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_7                            ; fixup: num: 3748, src obj: 1, src ofs: 0x1b86c, dst obj: 3, dst ofs: 0x3ea5
   1b870:	b8 89 18 00 00       	mov    eax,0x1889
   1b875:	e8 16 ee 04 00       	call   play_wav
   1b87a:	bb 02 00 00 00       	mov    ebx,0x2
   1b87f:	ba a8 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_8                            ; fixup: num: 3769, src obj: 1, src ofs: 0x1b880, dst obj: 3, dst ofs: 0x3ea8
   1b884:	b8 8e 18 00 00       	mov    eax,0x188e
   1b889:	e8 02 ee 04 00       	call   play_wav
   1b88e:	bb 02 00 00 00       	mov    ebx,0x2
   1b893:	ba af 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_9                            ; fixup: num: 3768, src obj: 1, src ofs: 0x1b894, dst obj: 3, dst ofs: 0x3eaf
   1b898:	b8 95 18 00 00       	mov    eax,0x1895
   1b89d:	e8 ee ed 04 00       	call   play_wav
   1b8a2:	31 c0                	xor    eax,eax
   1b8a4:	5d                   	pop    ebp
   1b8a5:	5f                   	pop    edi
   1b8a6:	5e                   	pop    esi
   1b8a7:	5a                   	pop    edx
   1b8a8:	59                   	pop    ecx
   1b8a9:	5b                   	pop    ebx
   1b8aa:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_5:
   1b8ab:	ba b6 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_10                           ; fixup: num: 3767, src obj: 1, src ofs: 0x1b8ac, dst obj: 3, dst ofs: 0x3eb6
   1b8b0:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3766, src obj: 1, src ofs: 0x1b8b1, dst obj: 3, dst ofs: 0x294bc
   1b8b5:	e8 76 ab 05 00       	call   strcmp_
   1b8ba:	85 c0                	test   eax,eax
   1b8bc:	74 3d                	je     talk_to_COLONEL_BUSTER_MONRO_branch_6
   1b8be:	ba c8 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_11                           ; fixup: num: 3765, src obj: 1, src ofs: 0x1b8bf, dst obj: 3, dst ofs: 0x3ec8
   1b8c3:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3764, src obj: 1, src ofs: 0x1b8c4, dst obj: 3, dst ofs: 0x294bc
   1b8c8:	e8 63 ab 05 00       	call   strcmp_
   1b8cd:	85 c0                	test   eax,eax
   1b8cf:	74 2a                	je     talk_to_COLONEL_BUSTER_MONRO_branch_6
   1b8d1:	ba d7 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_12                           ; fixup: num: 3763, src obj: 1, src ofs: 0x1b8d2, dst obj: 3, dst ofs: 0x3ed7
   1b8d6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3762, src obj: 1, src ofs: 0x1b8d7, dst obj: 3, dst ofs: 0x294bc
   1b8db:	e8 50 ab 05 00       	call   strcmp_
   1b8e0:	85 c0                	test   eax,eax
   1b8e2:	74 17                	je     talk_to_COLONEL_BUSTER_MONRO_branch_6
   1b8e4:	ba e1 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_13                           ; fixup: num: 3761, src obj: 1, src ofs: 0x1b8e5, dst obj: 3, dst ofs: 0x3ee1
   1b8e9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3760, src obj: 1, src ofs: 0x1b8ea, dst obj: 3, dst ofs: 0x294bc
   1b8ee:	e8 3d ab 05 00       	call   strcmp_
   1b8f3:	85 c0                	test   eax,eax
   1b8f5:	0f 85 98 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_9
talk_to_COLONEL_BUSTER_MONRO_branch_6:
   1b8fb:	ba 01 00 00 00       	mov    edx,0x1
   1b900:	31 c0                	xor    eax,eax
   1b902:	e8 29 ca 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1b907:	31 db                	xor    ebx,ebx
   1b909:	ba f5 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_14                           ; fixup: num: 3759, src obj: 1, src ofs: 0x1b90a, dst obj: 3, dst ofs: 0x3ef5
   1b90e:	b8 9b 18 00 00       	mov    eax,0x189b
   1b913:	e8 78 ed 04 00       	call   play_wav
   1b918:	b8 23 00 00 00       	mov    eax,0x23
   1b91d:	e8 7e e8 00 00       	call   GetDlgFileString
   1b922:	e8 e9 f5 04 00       	call   get_response
   1b927:	83 f8 01             	cmp    eax,0x1
   1b92a:	75 30                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_7
   1b92c:	ba fc 3e 00 00       	mov    edx,@obj3:col_bust_cpp_variable_15                           ; fixup: num: 3642, src obj: 1, src ofs: 0x1b92d, dst obj: 3, dst ofs: 0x3efc
   1b931:	89 c3                	mov    ebx,eax
   1b933:	b8 a6 18 00 00       	mov    eax,0x18a6
   1b938:	e8 53 ed 04 00       	call   play_wav
   1b93d:	ba 03 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_16                           ; fixup: num: 3641, src obj: 1, src ofs: 0x1b93e, dst obj: 3, dst ofs: 0x3f03
   1b942:	b8 aa 18 00 00       	mov    eax,0x18aa
   1b947:	31 db                	xor    ebx,ebx
   1b949:	e8 42 ed 04 00       	call   play_wav
   1b94e:	ba 06 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_17                           ; fixup: num: 3640, src obj: 1, src ofs: 0x1b94f, dst obj: 3, dst ofs: 0x3f06
   1b953:	b8 ae 18 00 00       	mov    eax,0x18ae
   1b958:	31 db                	xor    ebx,ebx
   1b95a:	eb 29                	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_8
talk_to_COLONEL_BUSTER_MONRO_branch_7:
   1b95c:	83 f8 02             	cmp    eax,0x2
   1b95f:	0f 85 08 0c 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_67
   1b965:	ba 0d 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_18                           ; fixup: num: 3639, src obj: 1, src ofs: 0x1b966, dst obj: 3, dst ofs: 0x3f0d
   1b96a:	89 c3                	mov    ebx,eax
   1b96c:	b8 b5 18 00 00       	mov    eax,0x18b5
   1b971:	e8 1a ed 04 00       	call   play_wav
   1b976:	bb 02 00 00 00       	mov    ebx,0x2
   1b97b:	ba 14 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_19                           ; fixup: num: 3638, src obj: 1, src ofs: 0x1b97c, dst obj: 3, dst ofs: 0x3f14
   1b980:	b8 be 18 00 00       	mov    eax,0x18be
talk_to_COLONEL_BUSTER_MONRO_branch_8:
   1b985:	e8 06 ed 04 00       	call   play_wav
   1b98a:	31 c0                	xor    eax,eax
   1b98c:	5d                   	pop    ebp
   1b98d:	5f                   	pop    edi
   1b98e:	5e                   	pop    esi
   1b98f:	5a                   	pop    edx
   1b990:	59                   	pop    ecx
   1b991:	5b                   	pop    ebx
   1b992:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_9:
   1b993:	ba 1b 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_20                           ; fixup: num: 3637, src obj: 1, src ofs: 0x1b994, dst obj: 3, dst ofs: 0x3f1b
   1b998:	b8 75 18 00 00       	mov    eax,0x1875
   1b99d:	31 db                	xor    ebx,ebx
   1b99f:	e8 ec ec 04 00       	call   play_wav
   1b9a4:	31 c0                	xor    eax,eax
   1b9a6:	5d                   	pop    ebp
   1b9a7:	5f                   	pop    edi
   1b9a8:	5e                   	pop    esi
   1b9a9:	5a                   	pop    edx
   1b9aa:	59                   	pop    ecx
   1b9ab:	5b                   	pop    ebx
   1b9ac:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_10:
   1b9ad:	a1 9c 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO                            ; fixup: num: 3636, src obj: 1, src ofs: 0x1b9ae, dst obj: 3, dst ofs: 0x22c9c
   1b9b2:	85 c0                	test   eax,eax
   1b9b4:	0f 84 3e 02 00 00    	je     talk_to_COLONEL_BUSTER_MONRO_branch_18
   1b9ba:	bb 01 00 00 00       	mov    ebx,0x1
   1b9bf:	b8 3c 16 00 00       	mov    eax,0x163c
   1b9c4:	89 15 9c 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO,edx                  ; fixup: num: 3770, src obj: 1, src ofs: 0x1b9c6, dst obj: 3, dst ofs: 0x22c9c
   1b9ca:	ba 22 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_21                           ; fixup: num: 3653, src obj: 1, src ofs: 0x1b9cb, dst obj: 3, dst ofs: 0x3f22
   1b9cf:	89 1d a0 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_1,ebx       ; fixup: num: 3652, src obj: 1, src ofs: 0x1b9d1, dst obj: 3, dst ofs: 0x22ca0
   1b9d5:	bb 02 00 00 00       	mov    ebx,0x2
   1b9da:	e8 b1 ec 04 00       	call   play_wav
   1b9df:	ba 29 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_22                           ; fixup: num: 3651, src obj: 1, src ofs: 0x1b9e0, dst obj: 3, dst ofs: 0x3f29
   1b9e4:	b8 40 16 00 00       	mov    eax,0x1640
   1b9e9:	31 db                	xor    ebx,ebx
   1b9eb:	e8 a0 ec 04 00       	call   play_wav
   1b9f0:	ba 2c 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_23                           ; fixup: num: 3650, src obj: 1, src ofs: 0x1b9f1, dst obj: 3, dst ofs: 0x3f2c
   1b9f5:	b8 44 16 00 00       	mov    eax,0x1644
   1b9fa:	31 db                	xor    ebx,ebx
   1b9fc:	e8 8f ec 04 00       	call   play_wav
   1ba01:	ba 33 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_24                           ; fixup: num: 3649, src obj: 1, src ofs: 0x1ba02, dst obj: 3, dst ofs: 0x3f33
   1ba06:	b8 49 16 00 00       	mov    eax,0x1649
   1ba0b:	31 db                	xor    ebx,ebx
   1ba0d:	e8 7e ec 04 00       	call   play_wav
   1ba12:	ba 36 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_25                           ; fixup: num: 3648, src obj: 1, src ofs: 0x1ba13, dst obj: 3, dst ofs: 0x3f36
   1ba17:	b8 4d 16 00 00       	mov    eax,0x164d
   1ba1c:	31 db                	xor    ebx,ebx
   1ba1e:	e8 6d ec 04 00       	call   play_wav
   1ba23:	ba 3d 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_26                           ; fixup: num: 3647, src obj: 1, src ofs: 0x1ba24, dst obj: 3, dst ofs: 0x3f3d
   1ba28:	b8 54 16 00 00       	mov    eax,0x1654
   1ba2d:	31 db                	xor    ebx,ebx
   1ba2f:	e8 5c ec 04 00       	call   play_wav
   1ba34:	ba 40 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_27                           ; fixup: num: 3646, src obj: 1, src ofs: 0x1ba35, dst obj: 3, dst ofs: 0x3f40
   1ba39:	b8 58 16 00 00       	mov    eax,0x1658
   1ba3e:	31 db                	xor    ebx,ebx
   1ba40:	e8 4b ec 04 00       	call   play_wav
   1ba45:	bb 04 00 00 00       	mov    ebx,0x4
   1ba4a:	ba 47 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_28                           ; fixup: num: 3645, src obj: 1, src ofs: 0x1ba4b, dst obj: 3, dst ofs: 0x3f47
   1ba4f:	b8 5e 16 00 00       	mov    eax,0x165e
   1ba54:	e8 37 ec 04 00       	call   play_wav
   1ba59:	ba 4a 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_29                           ; fixup: num: 3644, src obj: 1, src ofs: 0x1ba5a, dst obj: 3, dst ofs: 0x3f4a
   1ba5e:	b8 62 16 00 00       	mov    eax,0x1662
   1ba63:	31 db                	xor    ebx,ebx
   1ba65:	e8 26 ec 04 00       	call   play_wav
   1ba6a:	ba 51 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_30                           ; fixup: num: 3643, src obj: 1, src ofs: 0x1ba6b, dst obj: 3, dst ofs: 0x3f51
   1ba6f:	b8 69 16 00 00       	mov    eax,0x1669
   1ba74:	31 db                	xor    ebx,ebx
   1ba76:	e8 15 ec 04 00       	call   play_wav
   1ba7b:	ba 54 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_31                           ; fixup: num: 3660, src obj: 1, src ofs: 0x1ba7c, dst obj: 3, dst ofs: 0x3f54
   1ba80:	b8 6e 16 00 00       	mov    eax,0x166e
   1ba85:	31 db                	xor    ebx,ebx
   1ba87:	e8 04 ec 04 00       	call   play_wav
   1ba8c:	ba 5b 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_32                           ; fixup: num: 3659, src obj: 1, src ofs: 0x1ba8d, dst obj: 3, dst ofs: 0x3f5b
   1ba91:	b8 73 16 00 00       	mov    eax,0x1673
   1ba96:	31 db                	xor    ebx,ebx
   1ba98:	e8 f3 eb 04 00       	call   play_wav
   1ba9d:	ba 5e 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_33                           ; fixup: num: 3658, src obj: 1, src ofs: 0x1ba9e, dst obj: 3, dst ofs: 0x3f5e
   1baa2:	b8 77 16 00 00       	mov    eax,0x1677
   1baa7:	31 db                	xor    ebx,ebx
   1baa9:	e8 e2 eb 04 00       	call   play_wav
   1baae:	ba 65 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_34                           ; fixup: num: 3657, src obj: 1, src ofs: 0x1baaf, dst obj: 3, dst ofs: 0x3f65
   1bab3:	b8 7e 16 00 00       	mov    eax,0x167e
   1bab8:	31 db                	xor    ebx,ebx
   1baba:	e8 d1 eb 04 00       	call   play_wav
   1babf:	bb 02 00 00 00       	mov    ebx,0x2
   1bac4:	ba 6c 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_35                           ; fixup: num: 3656, src obj: 1, src ofs: 0x1bac5, dst obj: 3, dst ofs: 0x3f6c
   1bac9:	b8 82 16 00 00       	mov    eax,0x1682
   1bace:	e8 bd eb 04 00       	call   play_wav
   1bad3:	ba 73 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_36                           ; fixup: num: 3655, src obj: 1, src ofs: 0x1bad4, dst obj: 3, dst ofs: 0x3f73
   1bad8:	b8 8e 16 00 00       	mov    eax,0x168e
   1badd:	31 db                	xor    ebx,ebx
   1badf:	e8 ac eb 04 00       	call   play_wav
   1bae4:	b8 24 00 00 00       	mov    eax,0x24
   1bae9:	e8 b2 e6 00 00       	call   GetDlgFileString
   1baee:	89 c6                	mov    esi,eax
   1baf0:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_11:
   1baf1:	8a 06                	mov    al,BYTE PTR [esi]
   1baf3:	88 07                	mov    BYTE PTR [edi],al
   1baf5:	3c 00                	cmp    al,0x0
   1baf7:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_12
   1baf9:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1bafc:	83 c6 02             	add    esi,0x2
   1baff:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1bb02:	83 c7 02             	add    edi,0x2
   1bb05:	3c 00                	cmp    al,0x0
   1bb07:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_11
talk_to_COLONEL_BUSTER_MONRO_branch_12:
   1bb09:	5f                   	pop    edi
talk_to_COLONEL_BUSTER_MONRO_branch_13:
   1bb0a:	bd c0 94 02 00       	mov    ebp,@obj3:keyword                                            ; fixup: num: 3654, src obj: 1, src ofs: 0x1bb0b, dst obj: 3, dst ofs: 0x294c0
   1bb0f:	31 c9                	xor    ecx,ecx
talk_to_COLONEL_BUSTER_MONRO_branch_14:
   1bb11:	b8 27 00 00 00       	mov    eax,0x27
   1bb16:	e8 85 e6 00 00       	call   GetDlgFileString
   1bb1b:	89 c2                	mov    edx,eax
   1bb1d:	89 e8                	mov    eax,ebp
   1bb1f:	e8 36 59 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bb24:	85 c0                	test   eax,eax
   1bb26:	0f 84 30 0a 00 00    	je     talk_to_COLONEL_BUSTER_MONRO_branch_65
   1bb2c:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 3667, src obj: 1, src ofs: 0x1bb2d, dst obj: 3, dst ofs: 0x295c0
   1bb31:	e8 0a ff 04 00       	call   show_keywords
   1bb36:	b8 28 00 00 00       	mov    eax,0x28
   1bb3b:	e8 60 e6 00 00       	call   GetDlgFileString
   1bb40:	89 c2                	mov    edx,eax
   1bb42:	89 e8                	mov    eax,ebp
   1bb44:	e8 11 59 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bb49:	85 c0                	test   eax,eax
   1bb4b:	74 1b                	je     talk_to_COLONEL_BUSTER_MONRO_branch_15
   1bb4d:	b8 29 00 00 00       	mov    eax,0x29
   1bb52:	e8 49 e6 00 00       	call   GetDlgFileString
   1bb57:	89 c2                	mov    edx,eax
   1bb59:	89 e8                	mov    eax,ebp
   1bb5b:	e8 fa 58 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bb60:	85 c0                	test   eax,eax
   1bb62:	0f 85 45 02 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_24
talk_to_COLONEL_BUSTER_MONRO_branch_15:
   1bb68:	ba cd 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_50                           ; fixup: num: 3666, src obj: 1, src ofs: 0x1bb69, dst obj: 3, dst ofs: 0x3fcd
   1bb6d:	b8 98 16 00 00       	mov    eax,0x1698
   1bb72:	89 cb                	mov    ebx,ecx
   1bb74:	e8 17 eb 04 00       	call   play_wav
   1bb79:	bb 04 00 00 00       	mov    ebx,0x4
   1bb7e:	ba d4 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_51                           ; fixup: num: 3665, src obj: 1, src ofs: 0x1bb7f, dst obj: 3, dst ofs: 0x3fd4
   1bb83:	b8 9c 16 00 00       	mov    eax,0x169c
   1bb88:	e8 03 eb 04 00       	call   play_wav
   1bb8d:	ba d7 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_52                           ; fixup: num: 3664, src obj: 1, src ofs: 0x1bb8e, dst obj: 3, dst ofs: 0x3fd7
   1bb92:	b8 a1 16 00 00       	mov    eax,0x16a1
   1bb97:	89 cb                	mov    ebx,ecx
   1bb99:	e8 f2 ea 04 00       	call   play_wav
   1bb9e:	e8 2d cc 00 00       	call   NUCLEAR_BUTTON_CLOSEUP
   1bba3:	bb 02 00 00 00       	mov    ebx,0x2
   1bba8:	ba de 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_53                           ; fixup: num: 3663, src obj: 1, src ofs: 0x1bba9, dst obj: 3, dst ofs: 0x3fde
   1bbad:	b8 ad 16 00 00       	mov    eax,0x16ad
   1bbb2:	e8 d9 ea 04 00       	call   play_wav
   1bbb7:	ba e5 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_54                           ; fixup: num: 3662, src obj: 1, src ofs: 0x1bbb8, dst obj: 3, dst ofs: 0x3fe5
   1bbbc:	b8 b6 16 00 00       	mov    eax,0x16b6
   1bbc1:	89 cb                	mov    ebx,ecx
   1bbc3:	e8 c8 ea 04 00       	call   play_wav
   1bbc8:	b8 2b 00 00 00       	mov    eax,0x2b
   1bbcd:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3661, src obj: 1, src ofs: 0x1bbce, dst obj: 3, dst ofs: 0x295c0
   1bbd2:	e8 c9 e5 00 00       	call   GetDlgFileString
   1bbd7:	89 c6                	mov    esi,eax
   1bbd9:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_16:
   1bbda:	8a 06                	mov    al,BYTE PTR [esi]
   1bbdc:	88 07                	mov    BYTE PTR [edi],al
   1bbde:	3c 00                	cmp    al,0x0
   1bbe0:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_17
   1bbe2:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1bbe5:	83 c6 02             	add    esi,0x2
   1bbe8:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1bbeb:	83 c7 02             	add    edi,0x2
   1bbee:	3c 00                	cmp    al,0x0
   1bbf0:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_16
talk_to_COLONEL_BUSTER_MONRO_branch_17:
   1bbf2:	5f                   	pop    edi
   1bbf3:	e9 19 ff ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_18:
   1bbf8:	a1 a0 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_1                 ; fixup: num: 3674, src obj: 1, src ofs: 0x1bbf9, dst obj: 3, dst ofs: 0x22ca0
   1bbfd:	85 c0                	test   eax,eax
   1bbff:	0f 84 3a 01 00 00    	je     talk_to_COLONEL_BUSTER_MONRO_branch_22
   1bc05:	be 01 00 00 00       	mov    esi,0x1
   1bc0a:	bb 02 00 00 00       	mov    ebx,0x2
   1bc0f:	b8 28 18 00 00       	mov    eax,0x1828
   1bc14:	89 15 a0 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_1,edx       ; fixup: num: 3673, src obj: 1, src ofs: 0x1bc16, dst obj: 3, dst ofs: 0x22ca0
   1bc1a:	ba 7a 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_37                           ; fixup: num: 3672, src obj: 1, src ofs: 0x1bc1b, dst obj: 3, dst ofs: 0x3f7a
   1bc1f:	89 35 a8 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_3,esi       ; fixup: num: 3671, src obj: 1, src ofs: 0x1bc21, dst obj: 3, dst ofs: 0x22ca8
   1bc25:	e8 66 ea 04 00       	call   play_wav
   1bc2a:	bb 02 00 00 00       	mov    ebx,0x2
   1bc2f:	ba 81 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_38                           ; fixup: num: 3670, src obj: 1, src ofs: 0x1bc30, dst obj: 3, dst ofs: 0x3f81
   1bc34:	b8 2c 18 00 00       	mov    eax,0x182c
   1bc39:	e8 52 ea 04 00       	call   play_wav
   1bc3e:	bb 02 00 00 00       	mov    ebx,0x2
   1bc43:	ba 84 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_39                           ; fixup: num: 3669, src obj: 1, src ofs: 0x1bc44, dst obj: 3, dst ofs: 0x3f84
   1bc48:	b8 30 18 00 00       	mov    eax,0x1830
   1bc4d:	e8 3e ea 04 00       	call   play_wav
   1bc52:	b8 25 00 00 00       	mov    eax,0x25
   1bc57:	e8 44 e5 00 00       	call   GetDlgFileString
   1bc5c:	e8 af f2 04 00       	call   get_response
   1bc61:	39 f0                	cmp    eax,esi
   1bc63:	75 27                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_19
   1bc65:	bb 02 00 00 00       	mov    ebx,0x2
   1bc6a:	ba 8b 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_40                           ; fixup: num: 3668, src obj: 1, src ofs: 0x1bc6b, dst obj: 3, dst ofs: 0x3f8b
   1bc6f:	b8 3a 18 00 00       	mov    eax,0x183a
   1bc74:	e8 17 ea 04 00       	call   play_wav
   1bc79:	e8 62 cb 00 00       	call   HOLOCAUST_MIDGAME
   1bc7e:	e8 bd 08 05 00       	call   game_over
   1bc83:	31 c0                	xor    eax,eax
   1bc85:	5d                   	pop    ebp
   1bc86:	5f                   	pop    edi
   1bc87:	5e                   	pop    esi
   1bc88:	5a                   	pop    edx
   1bc89:	59                   	pop    ecx
   1bc8a:	5b                   	pop    ebx
   1bc8b:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_19:
   1bc8c:	83 f8 02             	cmp    eax,0x2
   1bc8f:	0f 85 75 fe ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_13
   1bc95:	ba 92 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_41                           ; fixup: num: 3681, src obj: 1, src ofs: 0x1bc96, dst obj: 3, dst ofs: 0x3f92
   1bc9a:	b8 41 18 00 00       	mov    eax,0x1841
   1bc9f:	31 db                	xor    ebx,ebx
   1bca1:	e8 ea e9 04 00       	call   play_wav
   1bca6:	a1 a4 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_2                 ; fixup: num: 3680, src obj: 1, src ofs: 0x1bca7, dst obj: 3, dst ofs: 0x22ca4
   1bcab:	85 c0                	test   eax,eax
   1bcad:	74 67                	je     talk_to_COLONEL_BUSTER_MONRO_branch_21
   1bcaf:	ba 99 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_42                           ; fixup: num: 3679, src obj: 1, src ofs: 0x1bcb0, dst obj: 3, dst ofs: 0x3f99
   1bcb4:	b8 45 18 00 00       	mov    eax,0x1845
   1bcb9:	31 db                	xor    ebx,ebx
   1bcbb:	e8 d0 e9 04 00       	call   play_wav
   1bcc0:	b8 26 00 00 00       	mov    eax,0x26
   1bcc5:	e8 d6 e4 00 00       	call   GetDlgFileString
   1bcca:	e8 41 f2 04 00       	call   get_response
   1bccf:	39 f0                	cmp    eax,esi
   1bcd1:	75 24                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_20
   1bcd3:	ba a0 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_43                           ; fixup: num: 3678, src obj: 1, src ofs: 0x1bcd4, dst obj: 3, dst ofs: 0x3fa0
   1bcd8:	b8 50 18 00 00       	mov    eax,0x1850
   1bcdd:	31 db                	xor    ebx,ebx
   1bcdf:	e8 ac e9 04 00       	call   play_wav
   1bce4:	e8 f7 ca 00 00       	call   HOLOCAUST_MIDGAME
   1bce9:	e8 52 08 05 00       	call   game_over
   1bcee:	31 c0                	xor    eax,eax
   1bcf0:	5d                   	pop    ebp
   1bcf1:	5f                   	pop    edi
   1bcf2:	5e                   	pop    esi
   1bcf3:	5a                   	pop    edx
   1bcf4:	59                   	pop    ecx
   1bcf5:	5b                   	pop    ebx
   1bcf6:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_20:
   1bcf7:	83 f8 02             	cmp    eax,0x2
   1bcfa:	0f 85 0a fe ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_13
   1bd00:	ba a7 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_44                           ; fixup: num: 3677, src obj: 1, src ofs: 0x1bd01, dst obj: 3, dst ofs: 0x3fa7
   1bd05:	b8 58 18 00 00       	mov    eax,0x1858
   1bd0a:	31 db                	xor    ebx,ebx
   1bd0c:	e8 7f e9 04 00       	call   play_wav
   1bd11:	e9 f4 fd ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_13
talk_to_COLONEL_BUSTER_MONRO_branch_21:
   1bd16:	ba ae 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_45                           ; fixup: num: 3676, src obj: 1, src ofs: 0x1bd17, dst obj: 3, dst ofs: 0x3fae
   1bd1b:	b8 5e 18 00 00       	mov    eax,0x185e
   1bd20:	31 db                	xor    ebx,ebx
   1bd22:	e8 69 e9 04 00       	call   play_wav
   1bd27:	89 35 a4 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_2,esi       ; fixup: num: 3675, src obj: 1, src ofs: 0x1bd29, dst obj: 3, dst ofs: 0x22ca4
   1bd2d:	31 c0                	xor    eax,eax
   1bd2f:	89 35 a0 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_1,esi       ; fixup: num: 3689, src obj: 1, src ofs: 0x1bd31, dst obj: 3, dst ofs: 0x22ca0
   1bd35:	a3 a8 2c 02 00       	mov    ds:@obj3:COLONEL_BUSTER_MONRO_variable_3,eax                 ; fixup: num: 3688, src obj: 1, src ofs: 0x1bd36, dst obj: 3, dst ofs: 0x22ca8
   1bd3a:	e9 cb fd ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_13
talk_to_COLONEL_BUSTER_MONRO_branch_22:
   1bd3f:	a1 a8 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_3                 ; fixup: num: 3687, src obj: 1, src ofs: 0x1bd40, dst obj: 3, dst ofs: 0x22ca8
   1bd44:	85 c0                	test   eax,eax
   1bd46:	74 4b                	je     talk_to_COLONEL_BUSTER_MONRO_branch_23
   1bd48:	bb 02 00 00 00       	mov    ebx,0x2
   1bd4d:	b8 c5 18 00 00       	mov    eax,0x18c5
   1bd52:	89 15 a8 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_3,edx       ; fixup: num: 3686, src obj: 1, src ofs: 0x1bd54, dst obj: 3, dst ofs: 0x22ca8
   1bd58:	ba b5 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_46                           ; fixup: num: 3685, src obj: 1, src ofs: 0x1bd59, dst obj: 3, dst ofs: 0x3fb5
   1bd5d:	e8 2e e9 04 00       	call   play_wav
   1bd62:	bb 04 00 00 00       	mov    ebx,0x4
   1bd67:	ba bc 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_47                           ; fixup: num: 3684, src obj: 1, src ofs: 0x1bd68, dst obj: 3, dst ofs: 0x3fbc
   1bd6c:	b8 c9 18 00 00       	mov    eax,0x18c9
   1bd71:	e8 1a e9 04 00       	call   play_wav
   1bd76:	bb 02 00 00 00       	mov    ebx,0x2
   1bd7b:	ba bf 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_48                           ; fixup: num: 3683, src obj: 1, src ofs: 0x1bd7c, dst obj: 3, dst ofs: 0x3fbf
   1bd80:	b8 cd 18 00 00       	mov    eax,0x18cd
   1bd85:	e8 06 e9 04 00       	call   play_wav
   1bd8a:	31 c0                	xor    eax,eax
   1bd8c:	5d                   	pop    ebp
   1bd8d:	5f                   	pop    edi
   1bd8e:	5e                   	pop    esi
   1bd8f:	5a                   	pop    edx
   1bd90:	59                   	pop    ecx
   1bd91:	5b                   	pop    ebx
   1bd92:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_23:
   1bd93:	ba c6 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_49                           ; fixup: num: 3682, src obj: 1, src ofs: 0x1bd94, dst obj: 3, dst ofs: 0x3fc6
   1bd98:	b8 68 18 00 00       	mov    eax,0x1868
   1bd9d:	31 db                	xor    ebx,ebx
   1bd9f:	e8 ec e8 04 00       	call   play_wav
   1bda4:	31 c0                	xor    eax,eax
   1bda6:	5d                   	pop    ebp
   1bda7:	5f                   	pop    edi
   1bda8:	5e                   	pop    esi
   1bda9:	5a                   	pop    edx
   1bdaa:	59                   	pop    ecx
   1bdab:	5b                   	pop    ebx
   1bdac:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_24:
   1bdad:	b8 2c 00 00 00       	mov    eax,0x2c
   1bdb2:	e8 e9 e3 00 00       	call   GetDlgFileString
   1bdb7:	89 c2                	mov    edx,eax
   1bdb9:	89 e8                	mov    eax,ebp
   1bdbb:	e8 9a 56 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bdc0:	85 c0                	test   eax,eax
   1bdc2:	74 1b                	je     talk_to_COLONEL_BUSTER_MONRO_branch_25
   1bdc4:	b8 2d 00 00 00       	mov    eax,0x2d
   1bdc9:	e8 d2 e3 00 00       	call   GetDlgFileString
   1bdce:	89 c2                	mov    edx,eax
   1bdd0:	89 e8                	mov    eax,ebp
   1bdd2:	e8 83 56 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bdd7:	85 c0                	test   eax,eax
   1bdd9:	0f 85 4c 01 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_31
talk_to_COLONEL_BUSTER_MONRO_branch_25:
   1bddf:	ba ec 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_55                           ; fixup: num: 3694, src obj: 1, src ofs: 0x1bde0, dst obj: 3, dst ofs: 0x3fec
   1bde4:	b8 be 16 00 00       	mov    eax,0x16be
   1bde9:	89 cb                	mov    ebx,ecx
   1bdeb:	e8 a0 e8 04 00       	call   play_wav
   1bdf0:	ba f3 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_56                           ; fixup: num: 3693, src obj: 1, src ofs: 0x1bdf1, dst obj: 3, dst ofs: 0x3ff3
   1bdf5:	b8 c5 16 00 00       	mov    eax,0x16c5
   1bdfa:	89 cb                	mov    ebx,ecx
   1bdfc:	e8 8f e8 04 00       	call   play_wav
   1be01:	b8 2e 00 00 00       	mov    eax,0x2e
   1be06:	e8 95 e3 00 00       	call   GetDlgFileString
   1be0b:	e8 00 f1 04 00       	call   get_response
   1be10:	83 f8 01             	cmp    eax,0x1
   1be13:	75 24                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_26
   1be15:	ba fa 3f 00 00       	mov    edx,@obj3:col_bust_cpp_variable_57                           ; fixup: num: 3692, src obj: 1, src ofs: 0x1be16, dst obj: 3, dst ofs: 0x3ffa
   1be1a:	b8 d0 16 00 00       	mov    eax,0x16d0
   1be1f:	31 db                	xor    ebx,ebx
   1be21:	e8 6a e8 04 00       	call   play_wav
   1be26:	e8 b5 c9 00 00       	call   HOLOCAUST_MIDGAME
   1be2b:	e8 10 07 05 00       	call   game_over
   1be30:	31 c0                	xor    eax,eax
   1be32:	5d                   	pop    ebp
   1be33:	5f                   	pop    edi
   1be34:	5e                   	pop    esi
   1be35:	5a                   	pop    edx
   1be36:	59                   	pop    ecx
   1be37:	5b                   	pop    ebx
   1be38:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_26:
   1be39:	83 f8 02             	cmp    eax,0x2
   1be3c:	0f 85 cf fc ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_14
   1be42:	ba 01 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_58                           ; fixup: num: 3691, src obj: 1, src ofs: 0x1be43, dst obj: 3, dst ofs: 0x4001
   1be47:	b8 d6 16 00 00       	mov    eax,0x16d6
   1be4c:	89 cb                	mov    ebx,ecx
   1be4e:	e8 3d e8 04 00       	call   play_wav
   1be53:	b8 2f 00 00 00       	mov    eax,0x2f
   1be58:	e8 43 e3 00 00       	call   GetDlgFileString
   1be5d:	e8 ae f0 04 00       	call   get_response
   1be62:	83 f8 01             	cmp    eax,0x1
   1be65:	0f 85 93 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_30
   1be6b:	ba 08 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_59                           ; fixup: num: 3690, src obj: 1, src ofs: 0x1be6c, dst obj: 3, dst ofs: 0x4008
   1be70:	b8 e2 16 00 00       	mov    eax,0x16e2
   1be75:	89 cb                	mov    ebx,ecx
   1be77:	e8 14 e8 04 00       	call   play_wav
   1be7c:	b8 30 00 00 00       	mov    eax,0x30
   1be81:	e8 1a e3 00 00       	call   GetDlgFileString
   1be86:	e8 85 f0 04 00       	call   get_response
   1be8b:	83 f8 01             	cmp    eax,0x1
   1be8e:	75 24                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_27
   1be90:	ba 0f 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_60                           ; fixup: num: 3698, src obj: 1, src ofs: 0x1be91, dst obj: 3, dst ofs: 0x400f
   1be95:	b8 ef 16 00 00       	mov    eax,0x16ef
   1be9a:	31 db                	xor    ebx,ebx
   1be9c:	e8 ef e7 04 00       	call   play_wav
   1bea1:	e8 3a c9 00 00       	call   HOLOCAUST_MIDGAME
   1bea6:	e8 95 06 05 00       	call   game_over
   1beab:	31 c0                	xor    eax,eax
   1bead:	5d                   	pop    ebp
   1beae:	5f                   	pop    edi
   1beaf:	5e                   	pop    esi
   1beb0:	5a                   	pop    edx
   1beb1:	59                   	pop    ecx
   1beb2:	5b                   	pop    ebx
   1beb3:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_27:
   1beb4:	83 f8 02             	cmp    eax,0x2
   1beb7:	0f 85 54 fc ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_14
   1bebd:	ba 16 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_61                           ; fixup: num: 3697, src obj: 1, src ofs: 0x1bebe, dst obj: 3, dst ofs: 0x4016
   1bec2:	b8 f6 16 00 00       	mov    eax,0x16f6
   1bec7:	89 cb                	mov    ebx,ecx
   1bec9:	e8 c2 e7 04 00       	call   play_wav
   1bece:	b8 31 00 00 00       	mov    eax,0x31
   1bed3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3696, src obj: 1, src ofs: 0x1bed4, dst obj: 3, dst ofs: 0x295c0
   1bed8:	e8 c3 e2 00 00       	call   GetDlgFileString
   1bedd:	89 c6                	mov    esi,eax
   1bedf:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_28:
   1bee0:	8a 06                	mov    al,BYTE PTR [esi]
   1bee2:	88 07                	mov    BYTE PTR [edi],al
   1bee4:	3c 00                	cmp    al,0x0
   1bee6:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_29
   1bee8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1beeb:	83 c6 02             	add    esi,0x2
   1beee:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1bef1:	83 c7 02             	add    edi,0x2
   1bef4:	3c 00                	cmp    al,0x0
   1bef6:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_28
talk_to_COLONEL_BUSTER_MONRO_branch_29:
   1bef8:	5f                   	pop    edi
   1bef9:	e9 13 fc ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_30:
   1befe:	83 f8 02             	cmp    eax,0x2
   1bf01:	0f 85 0a fc ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_14
   1bf07:	ba 1d 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_62                           ; fixup: num: 3695, src obj: 1, src ofs: 0x1bf08, dst obj: 3, dst ofs: 0x401d
   1bf0c:	b8 02 17 00 00       	mov    eax,0x1702
   1bf11:	31 db                	xor    ebx,ebx
   1bf13:	e8 78 e7 04 00       	call   play_wav
   1bf18:	e8 c3 c8 00 00       	call   HOLOCAUST_MIDGAME
   1bf1d:	e8 1e 06 05 00       	call   game_over
   1bf22:	31 c0                	xor    eax,eax
   1bf24:	5d                   	pop    ebp
   1bf25:	5f                   	pop    edi
   1bf26:	5e                   	pop    esi
   1bf27:	5a                   	pop    edx
   1bf28:	59                   	pop    ecx
   1bf29:	5b                   	pop    ebx
   1bf2a:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_31:
   1bf2b:	b8 32 00 00 00       	mov    eax,0x32
   1bf30:	e8 6b e2 00 00       	call   GetDlgFileString
   1bf35:	89 c2                	mov    edx,eax
   1bf37:	89 e8                	mov    eax,ebp
   1bf39:	e8 1c 55 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bf3e:	85 c0                	test   eax,eax
   1bf40:	0f 85 85 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_34
   1bf46:	ba 24 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_63                           ; fixup: num: 3633, src obj: 1, src ofs: 0x1bf47, dst obj: 3, dst ofs: 0x4024
   1bf4b:	b8 0a 17 00 00       	mov    eax,0x170a
   1bf50:	89 cb                	mov    ebx,ecx
   1bf52:	e8 39 e7 04 00       	call   play_wav
   1bf57:	ba 27 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_64                           ; fixup: num: 3703, src obj: 1, src ofs: 0x1bf58, dst obj: 3, dst ofs: 0x4027
   1bf5c:	b8 0f 17 00 00       	mov    eax,0x170f
   1bf61:	89 cb                	mov    ebx,ecx
   1bf63:	e8 28 e7 04 00       	call   play_wav
   1bf68:	ba 2e 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_65                           ; fixup: num: 3702, src obj: 1, src ofs: 0x1bf69, dst obj: 3, dst ofs: 0x402e
   1bf6d:	b8 10 17 00 00       	mov    eax,0x1710
   1bf72:	89 cb                	mov    ebx,ecx
   1bf74:	e8 17 e7 04 00       	call   play_wav
   1bf79:	ba 35 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_66                           ; fixup: num: 3701, src obj: 1, src ofs: 0x1bf7a, dst obj: 3, dst ofs: 0x4035
   1bf7e:	b8 11 17 00 00       	mov    eax,0x1711
   1bf83:	89 cb                	mov    ebx,ecx
   1bf85:	e8 06 e7 04 00       	call   play_wav
   1bf8a:	ba 3c 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_67                           ; fixup: num: 3700, src obj: 1, src ofs: 0x1bf8b, dst obj: 3, dst ofs: 0x403c
   1bf8f:	b8 12 17 00 00       	mov    eax,0x1712
   1bf94:	89 cb                	mov    ebx,ecx
   1bf96:	e8 f5 e6 04 00       	call   play_wav
   1bf9b:	b8 33 00 00 00       	mov    eax,0x33
   1bfa0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3699, src obj: 1, src ofs: 0x1bfa1, dst obj: 3, dst ofs: 0x295c0
   1bfa5:	e8 f6 e1 00 00       	call   GetDlgFileString
   1bfaa:	89 c6                	mov    esi,eax
   1bfac:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_32:
   1bfad:	8a 06                	mov    al,BYTE PTR [esi]
   1bfaf:	88 07                	mov    BYTE PTR [edi],al
   1bfb1:	3c 00                	cmp    al,0x0
   1bfb3:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_33
   1bfb5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1bfb8:	83 c6 02             	add    esi,0x2
   1bfbb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1bfbe:	83 c7 02             	add    edi,0x2
   1bfc1:	3c 00                	cmp    al,0x0
   1bfc3:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_32
talk_to_COLONEL_BUSTER_MONRO_branch_33:
   1bfc5:	5f                   	pop    edi
   1bfc6:	e9 46 fb ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_34:
   1bfcb:	b8 34 00 00 00       	mov    eax,0x34
   1bfd0:	e8 cb e1 00 00       	call   GetDlgFileString
   1bfd5:	89 c2                	mov    edx,eax
   1bfd7:	89 e8                	mov    eax,ebp
   1bfd9:	e8 7c 54 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1bfde:	85 c0                	test   eax,eax
   1bfe0:	0f 85 85 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_37
   1bfe6:	ba 43 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_68                           ; fixup: num: 3635, src obj: 1, src ofs: 0x1bfe7, dst obj: 3, dst ofs: 0x4043
   1bfeb:	b8 27 17 00 00       	mov    eax,0x1727
   1bff0:	89 cb                	mov    ebx,ecx
   1bff2:	e8 99 e6 04 00       	call   play_wav
   1bff7:	ba 4a 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_69                           ; fixup: num: 3634, src obj: 1, src ofs: 0x1bff8, dst obj: 3, dst ofs: 0x404a
   1bffc:	b8 28 17 00 00       	mov    eax,0x1728
   1c001:	89 cb                	mov    ebx,ecx
   1c003:	e8 88 e6 04 00       	call   play_wav
   1c008:	ba 51 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_70                           ; fixup: num: 3973, src obj: 1, src ofs: 0x1c009, dst obj: 3, dst ofs: 0x4051
   1c00d:	b8 29 17 00 00       	mov    eax,0x1729
   1c012:	89 cb                	mov    ebx,ecx
   1c014:	e8 77 e6 04 00       	call   play_wav
   1c019:	ba 58 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_71                           ; fixup: num: 3972, src obj: 1, src ofs: 0x1c01a, dst obj: 3, dst ofs: 0x4058
   1c01e:	b8 2a 17 00 00       	mov    eax,0x172a
   1c023:	89 cb                	mov    ebx,ecx
   1c025:	e8 66 e6 04 00       	call   play_wav
   1c02a:	ba 5f 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_72                           ; fixup: num: 3971, src obj: 1, src ofs: 0x1c02b, dst obj: 3, dst ofs: 0x405f
   1c02f:	b8 2b 17 00 00       	mov    eax,0x172b
   1c034:	89 cb                	mov    ebx,ecx
   1c036:	e8 55 e6 04 00       	call   play_wav
   1c03b:	b8 35 00 00 00       	mov    eax,0x35
   1c040:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3970, src obj: 1, src ofs: 0x1c041, dst obj: 3, dst ofs: 0x295c0
   1c045:	e8 56 e1 00 00       	call   GetDlgFileString
   1c04a:	89 c6                	mov    esi,eax
   1c04c:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_35:
   1c04d:	8a 06                	mov    al,BYTE PTR [esi]
   1c04f:	88 07                	mov    BYTE PTR [edi],al
   1c051:	3c 00                	cmp    al,0x0
   1c053:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_36
   1c055:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c058:	83 c6 02             	add    esi,0x2
   1c05b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c05e:	83 c7 02             	add    edi,0x2
   1c061:	3c 00                	cmp    al,0x0
   1c063:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_35
talk_to_COLONEL_BUSTER_MONRO_branch_36:
   1c065:	5f                   	pop    edi
   1c066:	e9 a6 fa ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_37:
   1c06b:	b8 36 00 00 00       	mov    eax,0x36
   1c070:	e8 2b e1 00 00       	call   GetDlgFileString
   1c075:	89 c2                	mov    edx,eax
   1c077:	89 e8                	mov    eax,ebp
   1c079:	e8 dc 53 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c07e:	85 c0                	test   eax,eax
   1c080:	0f 85 be 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_40
   1c086:	ba 66 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_73                           ; fixup: num: 3969, src obj: 1, src ofs: 0x1c087, dst obj: 3, dst ofs: 0x4066
   1c08b:	b8 3d 17 00 00       	mov    eax,0x173d
   1c090:	89 cb                	mov    ebx,ecx
   1c092:	e8 f9 e5 04 00       	call   play_wav
   1c097:	ba 69 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_74                           ; fixup: num: 3981, src obj: 1, src ofs: 0x1c098, dst obj: 3, dst ofs: 0x4069
   1c09c:	b8 42 17 00 00       	mov    eax,0x1742
   1c0a1:	89 cb                	mov    ebx,ecx
   1c0a3:	e8 e8 e5 04 00       	call   play_wav
   1c0a8:	ba 70 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_75                           ; fixup: num: 3980, src obj: 1, src ofs: 0x1c0a9, dst obj: 3, dst ofs: 0x4070
   1c0ad:	b8 49 17 00 00       	mov    eax,0x1749
   1c0b2:	89 cb                	mov    ebx,ecx
   1c0b4:	e8 d7 e5 04 00       	call   play_wav
   1c0b9:	ba 73 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_76                           ; fixup: num: 3979, src obj: 1, src ofs: 0x1c0ba, dst obj: 3, dst ofs: 0x4073
   1c0be:	b8 4d 17 00 00       	mov    eax,0x174d
   1c0c3:	89 cb                	mov    ebx,ecx
   1c0c5:	e8 c6 e5 04 00       	call   play_wav
   1c0ca:	ba 7a 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_77                           ; fixup: num: 3978, src obj: 1, src ofs: 0x1c0cb, dst obj: 3, dst ofs: 0x407a
   1c0cf:	b8 4e 17 00 00       	mov    eax,0x174e
   1c0d4:	89 cb                	mov    ebx,ecx
   1c0d6:	e8 b5 e5 04 00       	call   play_wav
   1c0db:	ba 81 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_78                           ; fixup: num: 3977, src obj: 1, src ofs: 0x1c0dc, dst obj: 3, dst ofs: 0x4081
   1c0e0:	b8 4f 17 00 00       	mov    eax,0x174f
   1c0e5:	89 cb                	mov    ebx,ecx
   1c0e7:	e8 a4 e5 04 00       	call   play_wav
   1c0ec:	bb 02 00 00 00       	mov    ebx,0x2
   1c0f1:	ba 88 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_79                           ; fixup: num: 3976, src obj: 1, src ofs: 0x1c0f2, dst obj: 3, dst ofs: 0x4088
   1c0f6:	b8 50 17 00 00       	mov    eax,0x1750
   1c0fb:	e8 90 e5 04 00       	call   play_wav
   1c100:	bb 02 00 00 00       	mov    ebx,0x2
   1c105:	ba 8f 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_80                           ; fixup: num: 3975, src obj: 1, src ofs: 0x1c106, dst obj: 3, dst ofs: 0x408f
   1c10a:	b8 62 17 00 00       	mov    eax,0x1762
   1c10f:	e8 7c e5 04 00       	call   play_wav
   1c114:	b8 37 00 00 00       	mov    eax,0x37
   1c119:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3974, src obj: 1, src ofs: 0x1c11a, dst obj: 3, dst ofs: 0x295c0
   1c11e:	e8 7d e0 00 00       	call   GetDlgFileString
   1c123:	89 c6                	mov    esi,eax
   1c125:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_38:
   1c126:	8a 06                	mov    al,BYTE PTR [esi]
   1c128:	88 07                	mov    BYTE PTR [edi],al
   1c12a:	3c 00                	cmp    al,0x0
   1c12c:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_39
   1c12e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c131:	83 c6 02             	add    esi,0x2
   1c134:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c137:	83 c7 02             	add    edi,0x2
   1c13a:	3c 00                	cmp    al,0x0
   1c13c:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_38
talk_to_COLONEL_BUSTER_MONRO_branch_39:
   1c13e:	5f                   	pop    edi
   1c13f:	e9 cd f9 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_40:
   1c144:	b8 38 00 00 00       	mov    eax,0x38
   1c149:	e8 52 e0 00 00       	call   GetDlgFileString
   1c14e:	89 c2                	mov    edx,eax
   1c150:	89 e8                	mov    eax,ebp
   1c152:	e8 03 53 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c157:	85 c0                	test   eax,eax
   1c159:	0f 85 bd 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_45
   1c15f:	ba 96 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_81                           ; fixup: num: 3987, src obj: 1, src ofs: 0x1c160, dst obj: 3, dst ofs: 0x4096
   1c164:	b8 6b 17 00 00       	mov    eax,0x176b
   1c169:	89 cb                	mov    ebx,ecx
   1c16b:	e8 20 e5 04 00       	call   play_wav
   1c170:	e8 8b c6 00 00       	call   CRUDE_STICK_DRAWING_OF_MAN_WITH_A_LONG_SCHLONG
   1c175:	b8 39 00 00 00       	mov    eax,0x39
   1c17a:	e8 21 e0 00 00       	call   GetDlgFileString
   1c17f:	e8 8c ed 04 00       	call   get_response
   1c184:	83 f8 01             	cmp    eax,0x1
   1c187:	75 1a                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_41
   1c189:	ba 9d 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_82                           ; fixup: num: 3986, src obj: 1, src ofs: 0x1c18a, dst obj: 3, dst ofs: 0x409d
   1c18e:	b8 81 17 00 00       	mov    eax,0x1781
   1c193:	31 db                	xor    ebx,ebx
   1c195:	e8 f6 e4 04 00       	call   play_wav
   1c19a:	31 c0                	xor    eax,eax
   1c19c:	5d                   	pop    ebp
   1c19d:	5f                   	pop    edi
   1c19e:	5e                   	pop    esi
   1c19f:	5a                   	pop    edx
   1c1a0:	59                   	pop    ecx
   1c1a1:	5b                   	pop    ebx
   1c1a2:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_41:
   1c1a3:	83 f8 02             	cmp    eax,0x2
   1c1a6:	75 44                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_42
   1c1a8:	ba a4 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_83                           ; fixup: num: 3985, src obj: 1, src ofs: 0x1c1a9, dst obj: 3, dst ofs: 0x40a4
   1c1ad:	b8 87 17 00 00       	mov    eax,0x1787
   1c1b2:	89 cb                	mov    ebx,ecx
   1c1b4:	e8 d7 e4 04 00       	call   play_wav
   1c1b9:	ba ab 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_84                           ; fixup: num: 3984, src obj: 1, src ofs: 0x1c1ba, dst obj: 3, dst ofs: 0x40ab
   1c1be:	b8 91 17 00 00       	mov    eax,0x1791
   1c1c3:	89 cb                	mov    ebx,ecx
   1c1c5:	e8 c6 e4 04 00       	call   play_wav
   1c1ca:	ba b2 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_85                           ; fixup: num: 3983, src obj: 1, src ofs: 0x1c1cb, dst obj: 3, dst ofs: 0x40b2
   1c1cf:	b8 96 17 00 00       	mov    eax,0x1796
   1c1d4:	89 cb                	mov    ebx,ecx
   1c1d6:	e8 b5 e4 04 00       	call   play_wav
   1c1db:	ba b5 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_86                           ; fixup: num: 3982, src obj: 1, src ofs: 0x1c1dc, dst obj: 3, dst ofs: 0x40b5
   1c1e0:	b8 9d 17 00 00       	mov    eax,0x179d
   1c1e5:	89 cb                	mov    ebx,ecx
   1c1e7:	e8 a4 e4 04 00       	call   play_wav
talk_to_COLONEL_BUSTER_MONRO_branch_42:
   1c1ec:	b8 3a 00 00 00       	mov    eax,0x3a
   1c1f1:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3993, src obj: 1, src ofs: 0x1c1f2, dst obj: 3, dst ofs: 0x295c0
   1c1f6:	e8 a5 df 00 00       	call   GetDlgFileString
   1c1fb:	89 c6                	mov    esi,eax
   1c1fd:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_43:
   1c1fe:	8a 06                	mov    al,BYTE PTR [esi]
   1c200:	88 07                	mov    BYTE PTR [edi],al
   1c202:	3c 00                	cmp    al,0x0
   1c204:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_44
   1c206:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c209:	83 c6 02             	add    esi,0x2
   1c20c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c20f:	83 c7 02             	add    edi,0x2
   1c212:	3c 00                	cmp    al,0x0
   1c214:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_43
talk_to_COLONEL_BUSTER_MONRO_branch_44:
   1c216:	5f                   	pop    edi
   1c217:	e9 f5 f8 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_45:
   1c21c:	b8 3b 00 00 00       	mov    eax,0x3b
   1c221:	e8 7a df 00 00       	call   GetDlgFileString
   1c226:	89 c2                	mov    edx,eax
   1c228:	89 e8                	mov    eax,ebp
   1c22a:	e8 2b 52 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c22f:	85 c0                	test   eax,eax
   1c231:	0f 85 99 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_51
   1c237:	ba bc 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_87                           ; fixup: num: 3992, src obj: 1, src ofs: 0x1c238, dst obj: 3, dst ofs: 0x40bc
   1c23c:	b8 a5 17 00 00       	mov    eax,0x17a5
   1c241:	89 cb                	mov    ebx,ecx
   1c243:	e8 48 e4 04 00       	call   play_wav
   1c248:	b8 3c 00 00 00       	mov    eax,0x3c
   1c24d:	e8 4e df 00 00       	call   GetDlgFileString
   1c252:	e8 b9 ec 04 00       	call   get_response
   1c257:	83 f8 01             	cmp    eax,0x1
   1c25a:	75 0c                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_46
   1c25c:	ba c3 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_88                           ; fixup: num: 3991, src obj: 1, src ofs: 0x1c25d, dst obj: 3, dst ofs: 0x40c3
   1c261:	b8 b3 17 00 00       	mov    eax,0x17b3
   1c266:	eb 0f                	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_47
talk_to_COLONEL_BUSTER_MONRO_branch_46:
   1c268:	83 f8 02             	cmp    eax,0x2
   1c26b:	75 11                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_48
   1c26d:	ba ca 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_89                           ; fixup: num: 3990, src obj: 1, src ofs: 0x1c26e, dst obj: 3, dst ofs: 0x40ca
   1c272:	b8 b7 17 00 00       	mov    eax,0x17b7
talk_to_COLONEL_BUSTER_MONRO_branch_47:
   1c277:	89 cb                	mov    ebx,ecx
   1c279:	e8 12 e4 04 00       	call   play_wav
talk_to_COLONEL_BUSTER_MONRO_branch_48:
   1c27e:	ba d1 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_90                           ; fixup: num: 3989, src obj: 1, src ofs: 0x1c27f, dst obj: 3, dst ofs: 0x40d1
   1c283:	b8 bb 17 00 00       	mov    eax,0x17bb
   1c288:	89 cb                	mov    ebx,ecx
   1c28a:	e8 01 e4 04 00       	call   play_wav
   1c28f:	ba d8 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_91                           ; fixup: num: 3988, src obj: 1, src ofs: 0x1c290, dst obj: 3, dst ofs: 0x40d8
   1c294:	b8 c3 17 00 00       	mov    eax,0x17c3
   1c299:	89 cb                	mov    ebx,ecx
   1c29b:	e8 f0 e3 04 00       	call   play_wav
   1c2a0:	b8 3d 00 00 00       	mov    eax,0x3d
   1c2a5:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3999, src obj: 1, src ofs: 0x1c2a6, dst obj: 3, dst ofs: 0x295c0
   1c2aa:	e8 f1 de 00 00       	call   GetDlgFileString
   1c2af:	89 c6                	mov    esi,eax
   1c2b1:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_49:
   1c2b2:	8a 06                	mov    al,BYTE PTR [esi]
   1c2b4:	88 07                	mov    BYTE PTR [edi],al
   1c2b6:	3c 00                	cmp    al,0x0
   1c2b8:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_50
   1c2ba:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c2bd:	83 c6 02             	add    esi,0x2
   1c2c0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c2c3:	83 c7 02             	add    edi,0x2
   1c2c6:	3c 00                	cmp    al,0x0
   1c2c8:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_49
talk_to_COLONEL_BUSTER_MONRO_branch_50:
   1c2ca:	5f                   	pop    edi
   1c2cb:	e9 41 f8 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_51:
   1c2d0:	b8 3e 00 00 00       	mov    eax,0x3e
   1c2d5:	e8 c6 de 00 00       	call   GetDlgFileString
   1c2da:	89 c2                	mov    edx,eax
   1c2dc:	89 e8                	mov    eax,ebp
   1c2de:	e8 77 51 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c2e3:	85 c0                	test   eax,eax
   1c2e5:	75 74                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_54
   1c2e7:	ba df 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_92                           ; fixup: num: 3998, src obj: 1, src ofs: 0x1c2e8, dst obj: 3, dst ofs: 0x40df
   1c2ec:	b8 cc 17 00 00       	mov    eax,0x17cc
   1c2f1:	89 cb                	mov    ebx,ecx
   1c2f3:	e8 98 e3 04 00       	call   play_wav
   1c2f8:	ba e6 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_93                           ; fixup: num: 3997, src obj: 1, src ofs: 0x1c2f9, dst obj: 3, dst ofs: 0x40e6
   1c2fd:	b8 cd 17 00 00       	mov    eax,0x17cd
   1c302:	89 cb                	mov    ebx,ecx
   1c304:	e8 87 e3 04 00       	call   play_wav
   1c309:	ba ed 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_94                           ; fixup: num: 3996, src obj: 1, src ofs: 0x1c30a, dst obj: 3, dst ofs: 0x40ed
   1c30e:	b8 ce 17 00 00       	mov    eax,0x17ce
   1c313:	89 cb                	mov    ebx,ecx
   1c315:	e8 76 e3 04 00       	call   play_wav
   1c31a:	ba f4 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_95                           ; fixup: num: 3995, src obj: 1, src ofs: 0x1c31b, dst obj: 3, dst ofs: 0x40f4
   1c31f:	b8 db 17 00 00       	mov    eax,0x17db
   1c324:	89 cb                	mov    ebx,ecx
   1c326:	e8 65 e3 04 00       	call   play_wav
   1c32b:	b8 3f 00 00 00       	mov    eax,0x3f
   1c330:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3994, src obj: 1, src ofs: 0x1c331, dst obj: 3, dst ofs: 0x295c0
   1c335:	e8 66 de 00 00       	call   GetDlgFileString
   1c33a:	89 c6                	mov    esi,eax
   1c33c:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_52:
   1c33d:	8a 06                	mov    al,BYTE PTR [esi]
   1c33f:	88 07                	mov    BYTE PTR [edi],al
   1c341:	3c 00                	cmp    al,0x0
   1c343:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_53
   1c345:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c348:	83 c6 02             	add    esi,0x2
   1c34b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c34e:	83 c7 02             	add    edi,0x2
   1c351:	3c 00                	cmp    al,0x0
   1c353:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_52
talk_to_COLONEL_BUSTER_MONRO_branch_53:
   1c355:	5f                   	pop    edi
   1c356:	e9 b6 f7 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_54:
   1c35b:	b8 40 00 00 00       	mov    eax,0x40
   1c360:	e8 3b de 00 00       	call   GetDlgFileString
   1c365:	89 c2                	mov    edx,eax
   1c367:	89 e8                	mov    eax,ebp
   1c369:	e8 ec 50 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c36e:	85 c0                	test   eax,eax
   1c370:	74 1b                	je     talk_to_COLONEL_BUSTER_MONRO_branch_55
   1c372:	b8 41 00 00 00       	mov    eax,0x41
   1c377:	e8 24 de 00 00       	call   GetDlgFileString
   1c37c:	89 c2                	mov    edx,eax
   1c37e:	89 e8                	mov    eax,ebp
   1c380:	e8 d5 50 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c385:	85 c0                	test   eax,eax
   1c387:	0f 85 d7 00 00 00    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_59
talk_to_COLONEL_BUSTER_MONRO_branch_55:
   1c38d:	ba fb 40 00 00       	mov    edx,@obj3:col_bust_cpp_variable_96                           ; fixup: num: 4005, src obj: 1, src ofs: 0x1c38e, dst obj: 3, dst ofs: 0x40fb
   1c392:	b8 e4 17 00 00       	mov    eax,0x17e4
   1c397:	89 cb                	mov    ebx,ecx
   1c399:	e8 f2 e2 04 00       	call   play_wav
   1c39e:	ba 02 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_97                           ; fixup: num: 4004, src obj: 1, src ofs: 0x1c39f, dst obj: 3, dst ofs: 0x4102
   1c3a3:	b8 e5 17 00 00       	mov    eax,0x17e5
   1c3a8:	89 cb                	mov    ebx,ecx
   1c3aa:	e8 e1 e2 04 00       	call   play_wav
   1c3af:	ba 09 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_98                           ; fixup: num: 4003, src obj: 1, src ofs: 0x1c3b0, dst obj: 3, dst ofs: 0x4109
   1c3b4:	b8 e6 17 00 00       	mov    eax,0x17e6
   1c3b9:	89 cb                	mov    ebx,ecx
   1c3bb:	e8 d0 e2 04 00       	call   play_wav
   1c3c0:	ba 10 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_99                           ; fixup: num: 4002, src obj: 1, src ofs: 0x1c3c1, dst obj: 3, dst ofs: 0x4110
   1c3c5:	b8 e7 17 00 00       	mov    eax,0x17e7
   1c3ca:	89 cb                	mov    ebx,ecx
   1c3cc:	e8 bf e2 04 00       	call   play_wav
   1c3d1:	ba 17 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_100                          ; fixup: num: 4001, src obj: 1, src ofs: 0x1c3d2, dst obj: 3, dst ofs: 0x4117
   1c3d6:	b8 f7 17 00 00       	mov    eax,0x17f7
   1c3db:	89 cb                	mov    ebx,ecx
   1c3dd:	e8 ae e2 04 00       	call   play_wav
   1c3e2:	b8 42 00 00 00       	mov    eax,0x42
   1c3e7:	e8 b4 dd 00 00       	call   GetDlgFileString
   1c3ec:	e8 1f eb 04 00       	call   get_response
   1c3f1:	83 f8 01             	cmp    eax,0x1
   1c3f4:	75 24                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_56
   1c3f6:	ba 1e 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_101                          ; fixup: num: 4000, src obj: 1, src ofs: 0x1c3f7, dst obj: 3, dst ofs: 0x411e
   1c3fb:	b8 04 18 00 00       	mov    eax,0x1804
   1c400:	31 db                	xor    ebx,ebx
   1c402:	e8 89 e2 04 00       	call   play_wav
   1c407:	e8 d4 c3 00 00       	call   HOLOCAUST_MIDGAME
   1c40c:	e8 2f 01 05 00       	call   game_over
   1c411:	31 c0                	xor    eax,eax
   1c413:	5d                   	pop    ebp
   1c414:	5f                   	pop    edi
   1c415:	5e                   	pop    esi
   1c416:	5a                   	pop    edx
   1c417:	59                   	pop    ecx
   1c418:	5b                   	pop    ebx
   1c419:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_56:
   1c41a:	83 f8 02             	cmp    eax,0x2
   1c41d:	0f 85 ee f6 ff ff    	jne    talk_to_COLONEL_BUSTER_MONRO_branch_14
   1c423:	ba 25 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_102                          ; fixup: num: 4007, src obj: 1, src ofs: 0x1c424, dst obj: 3, dst ofs: 0x4125
   1c428:	b8 0b 18 00 00       	mov    eax,0x180b
   1c42d:	89 cb                	mov    ebx,ecx
   1c42f:	e8 5c e2 04 00       	call   play_wav
   1c434:	b8 43 00 00 00       	mov    eax,0x43
   1c439:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4006, src obj: 1, src ofs: 0x1c43a, dst obj: 3, dst ofs: 0x295c0
   1c43e:	e8 5d dd 00 00       	call   GetDlgFileString
   1c443:	89 c6                	mov    esi,eax
   1c445:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_57:
   1c446:	8a 06                	mov    al,BYTE PTR [esi]
   1c448:	88 07                	mov    BYTE PTR [edi],al
   1c44a:	3c 00                	cmp    al,0x0
   1c44c:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_58
   1c44e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c451:	83 c6 02             	add    esi,0x2
   1c454:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c457:	83 c7 02             	add    edi,0x2
   1c45a:	3c 00                	cmp    al,0x0
   1c45c:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_57
talk_to_COLONEL_BUSTER_MONRO_branch_58:
   1c45e:	5f                   	pop    edi
   1c45f:	e9 ad f6 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_59:
   1c464:	b8 44 00 00 00       	mov    eax,0x44
   1c469:	e8 32 dd 00 00       	call   GetDlgFileString
   1c46e:	89 c2                	mov    edx,eax
   1c470:	89 e8                	mov    eax,ebp
   1c472:	e8 e3 4f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c477:	85 c0                	test   eax,eax
   1c479:	74 2e                	je     talk_to_COLONEL_BUSTER_MONRO_branch_60
   1c47b:	b8 45 00 00 00       	mov    eax,0x45
   1c480:	e8 1b dd 00 00       	call   GetDlgFileString
   1c485:	89 c2                	mov    edx,eax
   1c487:	89 e8                	mov    eax,ebp
   1c489:	e8 cc 4f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c48e:	85 c0                	test   eax,eax
   1c490:	74 17                	je     talk_to_COLONEL_BUSTER_MONRO_branch_60
   1c492:	b8 46 00 00 00       	mov    eax,0x46
   1c497:	e8 04 dd 00 00       	call   GetDlgFileString
   1c49c:	89 c2                	mov    edx,eax
   1c49e:	89 e8                	mov    eax,ebp
   1c4a0:	e8 b5 4f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c4a5:	85 c0                	test   eax,eax
   1c4a7:	75 44                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_63
talk_to_COLONEL_BUSTER_MONRO_branch_60:
   1c4a9:	bb 02 00 00 00       	mov    ebx,0x2
   1c4ae:	ba 2c 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_103                          ; fixup: num: 4011, src obj: 1, src ofs: 0x1c4af, dst obj: 3, dst ofs: 0x412c
   1c4b3:	b8 1e 18 00 00       	mov    eax,0x181e
   1c4b8:	e8 d3 e1 04 00       	call   play_wav
   1c4bd:	b8 47 00 00 00       	mov    eax,0x47
   1c4c2:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4010, src obj: 1, src ofs: 0x1c4c3, dst obj: 3, dst ofs: 0x295c0
   1c4c7:	e8 d4 dc 00 00       	call   GetDlgFileString
   1c4cc:	89 c6                	mov    esi,eax
   1c4ce:	57                   	push   edi
talk_to_COLONEL_BUSTER_MONRO_branch_61:
   1c4cf:	8a 06                	mov    al,BYTE PTR [esi]
   1c4d1:	88 07                	mov    BYTE PTR [edi],al
   1c4d3:	3c 00                	cmp    al,0x0
   1c4d5:	74 10                	je     talk_to_COLONEL_BUSTER_MONRO_branch_62
   1c4d7:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1c4da:	83 c6 02             	add    esi,0x2
   1c4dd:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1c4e0:	83 c7 02             	add    edi,0x2
   1c4e3:	3c 00                	cmp    al,0x0
   1c4e5:	75 e8                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_61
talk_to_COLONEL_BUSTER_MONRO_branch_62:
   1c4e7:	5f                   	pop    edi
   1c4e8:	e9 24 f6 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_63:
   1c4ed:	b8 48 00 00 00       	mov    eax,0x48
   1c4f2:	e8 a9 dc 00 00       	call   GetDlgFileString
   1c4f7:	89 c2                	mov    edx,eax
   1c4f9:	89 e8                	mov    eax,ebp
   1c4fb:	e8 5a 4f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c500:	85 c0                	test   eax,eax
   1c502:	75 27                	jne    talk_to_COLONEL_BUSTER_MONRO_branch_64
   1c504:	bb 02 00 00 00       	mov    ebx,0x2
   1c509:	ba 33 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_104                          ; fixup: num: 4009, src obj: 1, src ofs: 0x1c50a, dst obj: 3, dst ofs: 0x4133
   1c50e:	b8 df 18 00 00       	mov    eax,0x18df
   1c513:	e8 78 e1 04 00       	call   play_wav
   1c518:	e8 c3 c2 00 00       	call   HOLOCAUST_MIDGAME
   1c51d:	e8 1e 00 05 00       	call   game_over
   1c522:	31 c0                	xor    eax,eax
   1c524:	5d                   	pop    ebp
   1c525:	5f                   	pop    edi
   1c526:	5e                   	pop    esi
   1c527:	5a                   	pop    edx
   1c528:	59                   	pop    ecx
   1c529:	5b                   	pop    ebx
   1c52a:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_64:
   1c52b:	b8 49 00 00 00       	mov    eax,0x49
   1c530:	e8 6b dc 00 00       	call   GetDlgFileString
   1c535:	89 c2                	mov    edx,eax
   1c537:	89 e8                	mov    eax,ebp
   1c539:	e8 1c 4f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1c53e:	85 c0                	test   eax,eax
   1c540:	0f 84 cb f5 ff ff    	je     talk_to_COLONEL_BUSTER_MONRO_branch_14
   1c546:	ba 3a 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_105                          ; fixup: num: 4008, src obj: 1, src ofs: 0x1c547, dst obj: 3, dst ofs: 0x413a
   1c54b:	b8 6f 18 00 00       	mov    eax,0x186f
   1c550:	89 cb                	mov    ebx,ecx
   1c552:	e8 39 e1 04 00       	call   play_wav
   1c557:	e9 b5 f5 ff ff       	jmp    talk_to_COLONEL_BUSTER_MONRO_branch_14
talk_to_COLONEL_BUSTER_MONRO_branch_65:
   1c55c:	ba 41 41 00 00       	mov    edx,@obj3:col_bust_cpp_variable_106                          ; fixup: num: 4024, src obj: 1, src ofs: 0x1c55d, dst obj: 3, dst ofs: 0x4141
   1c561:	b8 18 18 00 00       	mov    eax,0x1818
   1c566:	31 db                	xor    ebx,ebx
talk_to_COLONEL_BUSTER_MONRO_branch_66:
   1c568:	e8 23 e1 04 00       	call   play_wav
talk_to_COLONEL_BUSTER_MONRO_branch_67:
   1c56d:	31 c0                	xor    eax,eax
   1c56f:	5d                   	pop    ebp
   1c570:	5f                   	pop    edi
   1c571:	5e                   	pop    esi
   1c572:	5a                   	pop    edx
   1c573:	59                   	pop    ecx
   1c574:	5b                   	pop    ebx
   1c575:	c3                   	ret    
talk_to_COLONEL_BUSTER_MONRO_branch_68:
   1c576:	89 15 9c 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO,edx                  ; fixup: num: 4023, src obj: 1, src ofs: 0x1c578, dst obj: 3, dst ofs: 0x22c9c
   1c57c:	a1 9c 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO                            ; fixup: num: 4022, src obj: 1, src ofs: 0x1c57d, dst obj: 3, dst ofs: 0x22c9c
   1c581:	c3                   	ret    
   1c582:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1c588:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   1c58e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function                                      -
;  'COLONEL_BUSTER_MONRO_FIRST_CONVERSATION'     -
;-------------------------------------------------
COLONEL_BUSTER_MONRO_FIRST_CONVERSATION:
   1c590:	85 c0                	test   eax,eax
   1c592:	74 e2                	je     talk_to_COLONEL_BUSTER_MONRO_branch_68
   1c594:	a1 9c 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO                            ; fixup: num: 4021, src obj: 1, src ofs: 0x1c595, dst obj: 3, dst ofs: 0x22c9c
   1c599:	c3                   	ret    
COLONEL_BUSTER_MONRO_FIRST_CONVERSATION_branch_1:
   1c59a:	89 15 a0 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_1,edx       ; fixup: num: 4020, src obj: 1, src ofs: 0x1c59c, dst obj: 3, dst ofs: 0x22ca0
   1c5a0:	a1 a0 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_1                 ; fixup: num: 4019, src obj: 1, src ofs: 0x1c5a1, dst obj: 3, dst ofs: 0x22ca0
   1c5a5:	c3                   	ret    
   1c5a6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1c5ac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'COLONEL_BUSTER_MONRO_SECOND_CONVERSATION'    -
;-------------------------------------------------
COLONEL_BUSTER_MONRO_SECOND_CONVERSATION:
   1c5b0:	85 c0                	test   eax,eax
   1c5b2:	74 e6                	je     COLONEL_BUSTER_MONRO_FIRST_CONVERSATION_branch_1
   1c5b4:	a1 a0 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_1                 ; fixup: num: 4018, src obj: 1, src ofs: 0x1c5b5, dst obj: 3, dst ofs: 0x22ca0
   1c5b9:	c3                   	ret    
COLONEL_BUSTER_MONRO_SECOND_CONVERSATION_branch_1:
   1c5ba:	89 15 a8 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_3,edx       ; fixup: num: 4017, src obj: 1, src ofs: 0x1c5bc, dst obj: 3, dst ofs: 0x22ca8
   1c5c0:	a1 a8 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_3                 ; fixup: num: 4016, src obj: 1, src ofs: 0x1c5c1, dst obj: 3, dst ofs: 0x22ca8
   1c5c5:	c3                   	ret    
   1c5c6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1c5cc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'COLONEL_BUSTER_MONRO_THIRD_CONVERSATION'     -
;-------------------------------------------------
COLONEL_BUSTER_MONRO_THIRD_CONVERSATION:
   1c5d0:	85 c0                	test   eax,eax
   1c5d2:	74 e6                	je     COLONEL_BUSTER_MONRO_SECOND_CONVERSATION_branch_1
   1c5d4:	a1 a8 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_3                 ; fixup: num: 4015, src obj: 1, src ofs: 0x1c5d5, dst obj: 3, dst ofs: 0x22ca8
   1c5d9:	c3                   	ret    
COLONEL_BUSTER_MONRO_THIRD_CONVERSATION_branch_1:
   1c5da:	89 15 a4 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_2,edx       ; fixup: num: 4014, src obj: 1, src ofs: 0x1c5dc, dst obj: 3, dst ofs: 0x22ca4
   1c5e0:	a1 a4 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_2                 ; fixup: num: 4013, src obj: 1, src ofs: 0x1c5e1, dst obj: 3, dst ofs: 0x22ca4
   1c5e5:	c3                   	ret    
   1c5e6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1c5ec:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'TOLD_PC_TO_CHECK_ON_FIREMEN'        -
;-------------------------------------------------
TOLD_PC_TO_CHECK_ON_FIREMEN:
   1c5f0:	85 c0                	test   eax,eax
   1c5f2:	74 e6                	je     COLONEL_BUSTER_MONRO_THIRD_CONVERSATION_branch_1
   1c5f4:	a1 a4 2c 02 00       	mov    eax,ds:@obj3:COLONEL_BUSTER_MONRO_variable_2                 ; fixup: num: 4012, src obj: 1, src ofs: 0x1c5f5, dst obj: 3, dst ofs: 0x22ca4
   1c5f9:	c3                   	ret    
   1c5fa:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'COLONEL_BUSTER_MONRO_initialize'    -
;-------------------------------------------------
COLONEL_BUSTER_MONRO_initialize:
   1c600:	53                   	push   ebx
   1c601:	52                   	push   edx
   1c602:	ba 01 00 00 00       	mov    edx,0x1
   1c607:	31 db                	xor    ebx,ebx
   1c609:	89 15 9c 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO,edx                  ; fixup: num: 4028, src obj: 1, src ofs: 0x1c60b, dst obj: 3, dst ofs: 0x22c9c
   1c60f:	89 1d a0 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_1,ebx       ; fixup: num: 4027, src obj: 1, src ofs: 0x1c611, dst obj: 3, dst ofs: 0x22ca0
   1c615:	89 1d a8 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_3,ebx       ; fixup: num: 4026, src obj: 1, src ofs: 0x1c617, dst obj: 3, dst ofs: 0x22ca8
   1c61b:	89 1d a4 2c 02 00    	mov    DWORD PTR ds:@obj3:COLONEL_BUSTER_MONRO_variable_2,ebx       ; fixup: num: 4025, src obj: 1, src ofs: 0x1c61d, dst obj: 3, dst ofs: 0x22ca4
   1c621:	5a                   	pop    edx
   1c622:	5b                   	pop    ebx
   1c623:	c3                   	ret    
;-------------------------------------------------
;  Bad code 31 (zero after ret):                 -
;-------------------------------------------------
;  1c622:	5b                   	pop    ebx
;  1c623:	c3                   	ret    
;  1c624:	00 00                	add    BYTE PTR [eax],al
;  1c626:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (12 bytes):                      -
;-------------------------------------------------
   1c624:	00 00 00 00 00 00 .. 	db     12 dup(0x00)
;-------------------------------------------------
;  End of bad code 31                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 34 (D:\SOURCE\col_bust.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 34: D:\SOURCE\col_bust.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
col_bust_cpp_variable_1:
    3e60:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_2:
    3e61:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
col_bust_cpp_variable_3:
    3e79:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_4:
    3e80:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
col_bust_cpp_variable_5:
    3e8d:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
col_bust_cpp_variable_6:
    3e9e:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_7:
    3ea5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3ea6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3ea7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_8:
    3ea8:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_9:
    3eaf:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_10:
    3eb6:	4e 4f 54 45 5f 43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "NOTE_CASKET_PHOTO",0x00
col_bust_cpp_variable_11:
    3ec8:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
col_bust_cpp_variable_12:
    3ed7:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
col_bust_cpp_variable_13:
    3ee1:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
col_bust_cpp_variable_14:
    3ef5:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_15:
    3efc:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_16:
    3f03:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f04:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f05:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_17:
    3f06:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_18:
    3f0d:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_19:
    3f14:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_20:
    3f1b:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_21:
    3f22:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_22:
    3f29:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f2a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f2b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_23:
    3f2c:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_24:
    3f33:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f34:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f35:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_25:
    3f36:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_26:
    3f3d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f3e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f3f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_27:
    3f40:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_28:
    3f47:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f48:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f49:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_29:
    3f4a:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_30:
    3f51:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f52:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f53:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_31:
    3f54:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_32:
    3f5b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f5c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f5d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_33:
    3f5e:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_34:
    3f65:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_35:
    3f6c:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_36:
    3f73:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_37:
    3f7a:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_38:
    3f81:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3f82:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3f83:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_39:
    3f84:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_40:
    3f8b:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_41:
    3f92:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_42:
    3f99:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_43:
    3fa0:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_44:
    3fa7:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_45:
    3fae:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_46:
    3fb5:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_47:
    3fbc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3fbd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3fbe:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_48:
    3fbf:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_49:
    3fc6:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_50:
    3fcd:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_51:
    3fd4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    3fd5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3fd6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_52:
    3fd7:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_53:
    3fde:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_54:
    3fe5:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_55:
    3fec:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_56:
    3ff3:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_57:
    3ffa:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_58:
    4001:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_59:
    4008:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_60:
    400f:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_61:
    4016:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_62:
    401d:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_63:
    4024:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4025:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4026:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_64:
    4027:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_65:
    402e:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_66:
    4035:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_67:
    403c:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_68:
    4043:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_69:
    404a:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_70:
    4051:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_71:
    4058:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_72:
    405f:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_73:
    4066:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4067:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4068:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_74:
    4069:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_75:
    4070:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4071:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4072:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_76:
    4073:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_77:
    407a:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_78:
    4081:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_79:
    4088:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_80:
    408f:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_81:
    4096:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_82:
    409d:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_83:
    40a4:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_84:
    40ab:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_85:
    40b2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    40b3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    40b4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
col_bust_cpp_variable_86:
    40b5:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_87:
    40bc:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_88:
    40c3:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_89:
    40ca:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_90:
    40d1:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_91:
    40d8:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_92:
    40df:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_93:
    40e6:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_94:
    40ed:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_95:
    40f4:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_96:
    40fb:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_97:
    4102:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_98:
    4109:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_99:
    4110:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_100:
    4117:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_101:
    411e:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_102:
    4125:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_103:
    412c:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_104:
    4133:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_105:
    413a:	42 55 53 54 45 52 00 	db     "BUSTER",0x00
col_bust_cpp_variable_106:
    4141:	42 55 53 54 45 52 00 	db     "BUSTER",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 34 (D:\SOURCE\col_bust.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 34: D:\SOURCE\col_bust.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
COLONEL_BUSTER_MONRO:                                                                               ; access size: DWORD
   22c9c:	00 00 00 00          	dd     0x00000000
COLONEL_BUSTER_MONRO_variable_1:                                                                    ; access size: DWORD
   22ca0:	00 00 00 00          	dd     0x00000000
COLONEL_BUSTER_MONRO_variable_2:                                                                    ; access size: DWORD
   22ca4:	00 00 00 00          	dd     0x00000000
COLONEL_BUSTER_MONRO_variable_3:                                                                    ; access size: DWORD
   22ca8:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 34 (D:\SOURCE\col_bust.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------