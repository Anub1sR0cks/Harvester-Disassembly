;-------------------------------------------------------------------------------
;                                                                              -
;  Module 57: D:\SOURCE\steph.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_STEPHANIE'                  -
;-------------------------------------------------
talk_to_STEPHANIE:
   26710:	53                   	push   ebx
   26711:	51                   	push   ecx
   26712:	52                   	push   edx
   26713:	56                   	push   esi
   26714:	57                   	push   edi
   26715:	55                   	push   ebp
   26716:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5986, src obj: 1, src ofs: 0x26718, dst obj: 3, dst ofs: 0x294bc
   2671c:	85 d2                	test   edx,edx
   2671e:	0f 84 de 01 00 00    	je     talk_to_STEPHANIE_branch_10
   26724:	89 d0                	mov    eax,edx
   26726:	ba 34 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_1                               ; fixup: num: 5985, src obj: 1, src ofs: 0x26727, dst obj: 3, dst ofs: 0x6d34
   2672b:	e8 00 fd 04 00       	call   strcmp_
   26730:	85 c0                	test   eax,eax
   26732:	74 39                	je     talk_to_STEPHANIE_branch_1
   26734:	ba 39 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_2                               ; fixup: num: 5984, src obj: 1, src ofs: 0x26735, dst obj: 3, dst ofs: 0x6d39
   26739:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5983, src obj: 1, src ofs: 0x2673a, dst obj: 3, dst ofs: 0x294bc
   2673e:	e8 ed fc 04 00       	call   strcmp_
   26743:	85 c0                	test   eax,eax
   26745:	74 26                	je     talk_to_STEPHANIE_branch_1
   26747:	ba 48 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_3                               ; fixup: num: 5982, src obj: 1, src ofs: 0x26748, dst obj: 3, dst ofs: 0x6d48
   2674c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5981, src obj: 1, src ofs: 0x2674d, dst obj: 3, dst ofs: 0x294bc
   26751:	e8 da fc 04 00       	call   strcmp_
   26756:	85 c0                	test   eax,eax
   26758:	74 13                	je     talk_to_STEPHANIE_branch_1
   2675a:	ba 52 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_4                               ; fixup: num: 5980, src obj: 1, src ofs: 0x2675b, dst obj: 3, dst ofs: 0x6d52
   2675f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5979, src obj: 1, src ofs: 0x26760, dst obj: 3, dst ofs: 0x294bc
   26764:	e8 c7 fc 04 00       	call   strcmp_
   26769:	85 c0                	test   eax,eax
   2676b:	75 20                	jne    talk_to_STEPHANIE_branch_2
talk_to_STEPHANIE_branch_1:
   2676d:	ba 01 00 00 00       	mov    edx,0x1
   26772:	31 c0                	xor    eax,eax
   26774:	bb 02 00 00 00       	mov    ebx,0x2
   26779:	e8 b2 1b 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   2677e:	ba 66 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_5                               ; fixup: num: 5978, src obj: 1, src ofs: 0x2677f, dst obj: 3, dst ofs: 0x6d66
   26783:	b8 6a 46 00 00       	mov    eax,0x466a
   26788:	e9 67 01 00 00       	jmp    talk_to_STEPHANIE_branch_9
talk_to_STEPHANIE_branch_2:
   2678d:	ba 70 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_6                               ; fixup: num: 5977, src obj: 1, src ofs: 0x2678e, dst obj: 3, dst ofs: 0x6d70
   26792:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5976, src obj: 1, src ofs: 0x26793, dst obj: 3, dst ofs: 0x294bc
   26797:	e8 94 fc 04 00       	call   strcmp_
   2679c:	85 c0                	test   eax,eax
   2679e:	74 17                	je     talk_to_STEPHANIE_branch_3
   267a0:	ba 7d 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_7                               ; fixup: num: 5975, src obj: 1, src ofs: 0x267a1, dst obj: 3, dst ofs: 0x6d7d
   267a5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5974, src obj: 1, src ofs: 0x267a6, dst obj: 3, dst ofs: 0x294bc
   267aa:	e8 81 fc 04 00       	call   strcmp_
   267af:	85 c0                	test   eax,eax
   267b1:	0f 85 a1 00 00 00    	jne    talk_to_STEPHANIE_branch_6
talk_to_STEPHANIE_branch_3:
   267b7:	ba 01 00 00 00       	mov    edx,0x1
   267bc:	31 c0                	xor    eax,eax
   267be:	bb 04 00 00 00       	mov    ebx,0x4
   267c3:	e8 98 1b 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   267c8:	ba 8e 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_8                               ; fixup: num: 5994, src obj: 1, src ofs: 0x267c9, dst obj: 3, dst ofs: 0x6d8e
   267cd:	b8 71 46 00 00       	mov    eax,0x4671
   267d2:	e8 b9 3e 04 00       	call   play_wav
   267d7:	ba 98 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_9                               ; fixup: num: 5993, src obj: 1, src ofs: 0x267d8, dst obj: 3, dst ofs: 0x6d98
   267dc:	b8 75 46 00 00       	mov    eax,0x4675
   267e1:	31 db                	xor    ebx,ebx
   267e3:	e8 a8 3e 04 00       	call   play_wav
   267e8:	b8 01 00 00 00       	mov    eax,0x1
   267ed:	31 d2                	xor    edx,edx
   267ef:	e8 ec 1a 00 00       	call   MOYNAHAN_SAID_CORPSE_IS_A_HOBO
   267f4:	85 c0                	test   eax,eax
   267f6:	74 11                	je     talk_to_STEPHANIE_branch_4
   267f8:	ba 9b 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_10                              ; fixup: num: 5992, src obj: 1, src ofs: 0x267f9, dst obj: 3, dst ofs: 0x6d9b
   267fd:	b8 7b 46 00 00       	mov    eax,0x467b
   26802:	31 db                	xor    ebx,ebx
   26804:	e8 87 3e 04 00       	call   play_wav
talk_to_STEPHANIE_branch_4:
   26809:	b8 01 00 00 00       	mov    eax,0x1
   2680e:	31 d2                	xor    edx,edx
   26810:	e8 bb 1a 00 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   26815:	85 c0                	test   eax,eax
   26817:	74 11                	je     talk_to_STEPHANIE_branch_5
   26819:	ba 9e 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_11                              ; fixup: num: 5991, src obj: 1, src ofs: 0x2681a, dst obj: 3, dst ofs: 0x6d9e
   2681e:	b8 7f 46 00 00       	mov    eax,0x467f
   26823:	31 db                	xor    ebx,ebx
   26825:	e8 66 3e 04 00       	call   play_wav
talk_to_STEPHANIE_branch_5:
   2682a:	bb 02 00 00 00       	mov    ebx,0x2
   2682f:	ba a1 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_12                              ; fixup: num: 5990, src obj: 1, src ofs: 0x26830, dst obj: 3, dst ofs: 0x6da1
   26834:	b8 84 46 00 00       	mov    eax,0x4684
   26839:	e8 52 3e 04 00       	call   play_wav
   2683e:	ba ab 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_13                              ; fixup: num: 5989, src obj: 1, src ofs: 0x2683f, dst obj: 3, dst ofs: 0x6dab
   26843:	b8 89 46 00 00       	mov    eax,0x4689
   26848:	31 db                	xor    ebx,ebx
   2684a:	e8 41 3e 04 00       	call   play_wav
   2684f:	31 c0                	xor    eax,eax
   26851:	5d                   	pop    ebp
   26852:	5f                   	pop    edi
   26853:	5e                   	pop    esi
   26854:	5a                   	pop    edx
   26855:	59                   	pop    ecx
   26856:	5b                   	pop    ebx
   26857:	c3                   	ret    
talk_to_STEPHANIE_branch_6:
   26858:	ba ae 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_14                              ; fixup: num: 5988, src obj: 1, src ofs: 0x26859, dst obj: 3, dst ofs: 0x6dae
   2685d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5987, src obj: 1, src ofs: 0x2685e, dst obj: 3, dst ofs: 0x294bc
   26862:	e8 c9 fb 04 00       	call   strcmp_
   26867:	85 c0                	test   eax,eax
   26869:	74 13                	je     talk_to_STEPHANIE_branch_7
   2686b:	ba b5 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_15                              ; fixup: num: 6004, src obj: 1, src ofs: 0x2686c, dst obj: 3, dst ofs: 0x6db5
   26870:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6003, src obj: 1, src ofs: 0x26871, dst obj: 3, dst ofs: 0x294bc
   26875:	e8 b6 fb 04 00       	call   strcmp_
   2687a:	85 c0                	test   eax,eax
   2687c:	75 6a                	jne    talk_to_STEPHANIE_branch_8
talk_to_STEPHANIE_branch_7:
   2687e:	b8 bd 6d 00 00       	mov    eax,@obj3:steph_cpp_variable_16                              ; fixup: num: 6002, src obj: 1, src ofs: 0x2687f, dst obj: 3, dst ofs: 0x6dbd
   26883:	e8 08 5f 04 00       	call   check_script_flag
   26888:	84 c0                	test   al,al
   2688a:	74 5c                	je     talk_to_STEPHANIE_branch_8
   2688c:	ba 01 00 00 00       	mov    edx,0x1
   26891:	31 c0                	xor    eax,eax
   26893:	e8 b8 1a 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   26898:	31 db                	xor    ebx,ebx
   2689a:	ba cf 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_17                              ; fixup: num: 6001, src obj: 1, src ofs: 0x2689b, dst obj: 3, dst ofs: 0x6dcf
   2689f:	b8 8f 46 00 00       	mov    eax,0x468f
   268a4:	e8 e7 3d 04 00       	call   play_wav
   268a9:	ba d2 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_18                              ; fixup: num: 6000, src obj: 1, src ofs: 0x268aa, dst obj: 3, dst ofs: 0x6dd2
   268ae:	b8 94 46 00 00       	mov    eax,0x4694
   268b3:	31 db                	xor    ebx,ebx
   268b5:	e8 d6 3d 04 00       	call   play_wav
   268ba:	ba dc 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_19                              ; fixup: num: 5999, src obj: 1, src ofs: 0x268bb, dst obj: 3, dst ofs: 0x6ddc
   268bf:	b8 9a 46 00 00       	mov    eax,0x469a
   268c4:	31 db                	xor    ebx,ebx
   268c6:	e8 c5 3d 04 00       	call   play_wav
   268cb:	bb 02 00 00 00       	mov    ebx,0x2
   268d0:	ba df 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_20                              ; fixup: num: 5998, src obj: 1, src ofs: 0x268d1, dst obj: 3, dst ofs: 0x6ddf
   268d5:	b8 9e 46 00 00       	mov    eax,0x469e
   268da:	e8 b1 3d 04 00       	call   play_wav
   268df:	31 c0                	xor    eax,eax
   268e1:	5d                   	pop    ebp
   268e2:	5f                   	pop    edi
   268e3:	5e                   	pop    esi
   268e4:	5a                   	pop    edx
   268e5:	59                   	pop    ecx
   268e6:	5b                   	pop    ebx
   268e7:	c3                   	ret    
talk_to_STEPHANIE_branch_8:
   268e8:	ba e9 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_21                              ; fixup: num: 5997, src obj: 1, src ofs: 0x268e9, dst obj: 3, dst ofs: 0x6de9
   268ed:	b8 62 46 00 00       	mov    eax,0x4662
   268f2:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_9:
   268f4:	e8 97 3d 04 00       	call   play_wav
   268f9:	31 c0                	xor    eax,eax
   268fb:	5d                   	pop    ebp
   268fc:	5f                   	pop    edi
   268fd:	5e                   	pop    esi
   268fe:	5a                   	pop    edx
   268ff:	59                   	pop    ecx
   26900:	5b                   	pop    ebx
   26901:	c3                   	ret    
talk_to_STEPHANIE_branch_10:
   26902:	a1 4c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE                                       ; fixup: num: 5996, src obj: 1, src ofs: 0x26903, dst obj: 3, dst ofs: 0x22e4c
   26907:	85 c0                	test   eax,eax
   26909:	0f 84 e2 00 00 00    	je     talk_to_STEPHANIE_branch_13
   2690f:	bb 02 00 00 00       	mov    ebx,0x2
   26914:	89 15 4c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE,edx                             ; fixup: num: 5995, src obj: 1, src ofs: 0x26916, dst obj: 3, dst ofs: 0x22e4c
   2691a:	e8 a1 22 00 00       	call   get_day
   2691f:	ba f3 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_22                              ; fixup: num: 6014, src obj: 1, src ofs: 0x26920, dst obj: 3, dst ofs: 0x6df3
   26924:	a3 60 2e 02 00       	mov    ds:@obj3:STEPHANIE_variable_5,eax                            ; fixup: num: 6013, src obj: 1, src ofs: 0x26925, dst obj: 3, dst ofs: 0x22e60
   26929:	b8 db 43 00 00       	mov    eax,0x43db
   2692e:	e8 5d 3d 04 00       	call   play_wav
   26933:	ba fd 6d 00 00       	mov    edx,@obj3:steph_cpp_variable_23                              ; fixup: num: 6012, src obj: 1, src ofs: 0x26934, dst obj: 3, dst ofs: 0x6dfd
   26938:	b8 df 43 00 00       	mov    eax,0x43df
   2693d:	31 db                	xor    ebx,ebx
   2693f:	e8 4c 3d 04 00       	call   play_wav
   26944:	ba 00 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_24                              ; fixup: num: 6011, src obj: 1, src ofs: 0x26945, dst obj: 3, dst ofs: 0x6e00
   26949:	b8 e3 43 00 00       	mov    eax,0x43e3
   2694e:	31 db                	xor    ebx,ebx
   26950:	e8 3b 3d 04 00       	call   play_wav
   26955:	ba 0a 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_25                              ; fixup: num: 6010, src obj: 1, src ofs: 0x26956, dst obj: 3, dst ofs: 0x6e0a
   2695a:	b8 e7 43 00 00       	mov    eax,0x43e7
   2695f:	31 db                	xor    ebx,ebx
   26961:	e8 2a 3d 04 00       	call   play_wav
   26966:	bb 02 00 00 00       	mov    ebx,0x2
   2696b:	ba 0d 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_26                              ; fixup: num: 6009, src obj: 1, src ofs: 0x2696c, dst obj: 3, dst ofs: 0x6e0d
   26970:	b8 eb 43 00 00       	mov    eax,0x43eb
   26975:	e8 16 3d 04 00       	call   play_wav
   2697a:	ba 17 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_27                              ; fixup: num: 6008, src obj: 1, src ofs: 0x2697b, dst obj: 3, dst ofs: 0x6e17
   2697f:	b8 f0 43 00 00       	mov    eax,0x43f0
   26984:	31 db                	xor    ebx,ebx
   26986:	e8 05 3d 04 00       	call   play_wav
   2698b:	bb 03 00 00 00       	mov    ebx,0x3
   26990:	ba 1a 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_28                              ; fixup: num: 6007, src obj: 1, src ofs: 0x26991, dst obj: 3, dst ofs: 0x6e1a
   26995:	b8 f5 43 00 00       	mov    eax,0x43f5
   2699a:	e8 f1 3c 04 00       	call   play_wav
   2699f:	ba 24 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_29                              ; fixup: num: 6006, src obj: 1, src ofs: 0x269a0, dst obj: 3, dst ofs: 0x6e24
   269a4:	b8 f9 43 00 00       	mov    eax,0x43f9
   269a9:	31 db                	xor    ebx,ebx
   269ab:	e8 e0 3c 04 00       	call   play_wav
   269b0:	ba 27 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_30                              ; fixup: num: 6005, src obj: 1, src ofs: 0x269b1, dst obj: 3, dst ofs: 0x6e27
   269b5:	b8 fd 43 00 00       	mov    eax,0x43fd
   269ba:	31 db                	xor    ebx,ebx
   269bc:	e8 cf 3c 04 00       	call   play_wav
   269c1:	b8 cf 02 00 00       	mov    eax,0x2cf
   269c6:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6022, src obj: 1, src ofs: 0x269c7, dst obj: 3, dst ofs: 0x295c0
   269cb:	e8 d0 37 00 00       	call   GetDlgFileString
   269d0:	89 c6                	mov    esi,eax
   269d2:	57                   	push   edi
talk_to_STEPHANIE_branch_11:
   269d3:	8a 06                	mov    al,BYTE PTR [esi]
   269d5:	88 07                	mov    BYTE PTR [edi],al
   269d7:	3c 00                	cmp    al,0x0
   269d9:	74 10                	je     talk_to_STEPHANIE_branch_12
   269db:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   269de:	83 c6 02             	add    esi,0x2
   269e1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   269e4:	83 c7 02             	add    edi,0x2
   269e7:	3c 00                	cmp    al,0x0
   269e9:	75 e8                	jne    talk_to_STEPHANIE_branch_11
talk_to_STEPHANIE_branch_12:
   269eb:	5f                   	pop    edi
   269ec:	e9 e8 02 00 00       	jmp    talk_to_STEPHANIE_branch_28
talk_to_STEPHANIE_branch_13:
   269f1:	e8 ca 21 00 00       	call   get_day
   269f6:	3b 05 60 2e 02 00    	cmp    eax,DWORD PTR ds:@obj3:STEPHANIE_variable_5                  ; fixup: num: 6021, src obj: 1, src ofs: 0x269f8, dst obj: 3, dst ofs: 0x22e60
   269fc:	75 41                	jne    talk_to_STEPHANIE_branch_16
   269fe:	ba 31 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_31                              ; fixup: num: 6020, src obj: 1, src ofs: 0x269ff, dst obj: 3, dst ofs: 0x6e31
   26a03:	b8 9c 45 00 00       	mov    eax,0x459c
   26a08:	31 db                	xor    ebx,ebx
   26a0a:	e8 81 3c 04 00       	call   play_wav
   26a0f:	b8 d0 02 00 00       	mov    eax,0x2d0
   26a14:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6019, src obj: 1, src ofs: 0x26a15, dst obj: 3, dst ofs: 0x295c0
   26a19:	e8 82 37 00 00       	call   GetDlgFileString
   26a1e:	89 c6                	mov    esi,eax
   26a20:	57                   	push   edi
talk_to_STEPHANIE_branch_14:
   26a21:	8a 06                	mov    al,BYTE PTR [esi]
   26a23:	88 07                	mov    BYTE PTR [edi],al
   26a25:	3c 00                	cmp    al,0x0
   26a27:	74 10                	je     talk_to_STEPHANIE_branch_15
   26a29:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26a2c:	83 c6 02             	add    esi,0x2
   26a2f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   26a32:	83 c7 02             	add    edi,0x2
   26a35:	3c 00                	cmp    al,0x0
   26a37:	75 e8                	jne    talk_to_STEPHANIE_branch_14
talk_to_STEPHANIE_branch_15:
   26a39:	5f                   	pop    edi
   26a3a:	e9 9a 02 00 00       	jmp    talk_to_STEPHANIE_branch_28
talk_to_STEPHANIE_branch_16:
   26a3f:	a1 50 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_1                            ; fixup: num: 6018, src obj: 1, src ofs: 0x26a40, dst obj: 3, dst ofs: 0x22e50
   26a44:	85 c0                	test   eax,eax
   26a46:	0f 84 d6 00 00 00    	je     talk_to_STEPHANIE_branch_20
   26a4c:	bb 01 00 00 00       	mov    ebx,0x1
   26a51:	89 15 50 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_1,edx                  ; fixup: num: 6017, src obj: 1, src ofs: 0x26a53, dst obj: 3, dst ofs: 0x22e50
   26a57:	e8 64 21 00 00       	call   get_day
   26a5c:	ba 3b 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_32                              ; fixup: num: 6016, src obj: 1, src ofs: 0x26a5d, dst obj: 3, dst ofs: 0x6e3b
   26a61:	a3 64 2e 02 00       	mov    ds:@obj3:STEPHANIE_variable_6,eax                            ; fixup: num: 6015, src obj: 1, src ofs: 0x26a62, dst obj: 3, dst ofs: 0x22e64
   26a66:	b8 a7 45 00 00       	mov    eax,0x45a7
   26a6b:	e8 20 3c 04 00       	call   play_wav
   26a70:	b8 01 00 00 00       	mov    eax,0x1
   26a75:	31 d2                	xor    edx,edx
   26a77:	e8 74 19 00 00       	call   SPOKE_WITH_THE_SERGEANT_AT_ARMS
   26a7c:	85 c0                	test   eax,eax
   26a7e:	74 11                	je     talk_to_STEPHANIE_branch_17
   26a80:	ba 45 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_33                              ; fixup: num: 6030, src obj: 1, src ofs: 0x26a81, dst obj: 3, dst ofs: 0x6e45
   26a85:	b8 ae 45 00 00       	mov    eax,0x45ae
   26a8a:	31 db                	xor    ebx,ebx
   26a8c:	e8 ff 3b 04 00       	call   play_wav
talk_to_STEPHANIE_branch_17:
   26a91:	b8 48 6e 00 00       	mov    eax,@obj3:steph_cpp_variable_34                              ; fixup: num: 6029, src obj: 1, src ofs: 0x26a92, dst obj: 3, dst ofs: 0x6e48
   26a96:	e8 f5 5c 04 00       	call   check_script_flag
   26a9b:	84 c0                	test   al,al
   26a9d:	74 16                	je     talk_to_STEPHANIE_branch_18
   26a9f:	e8 1c 21 00 00       	call   get_day
   26aa4:	83 f8 01             	cmp    eax,0x1
   26aa7:	75 0c                	jne    talk_to_STEPHANIE_branch_18
   26aa9:	ba 57 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_35                              ; fixup: num: 6028, src obj: 1, src ofs: 0x26aaa, dst obj: 3, dst ofs: 0x6e57
   26aae:	b8 b4 45 00 00       	mov    eax,0x45b4
   26ab3:	eb 0a                	jmp    talk_to_STEPHANIE_branch_19
talk_to_STEPHANIE_branch_18:
   26ab5:	ba 5a 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_36                              ; fixup: num: 6027, src obj: 1, src ofs: 0x26ab6, dst obj: 3, dst ofs: 0x6e5a
   26aba:	b8 b9 45 00 00       	mov    eax,0x45b9
talk_to_STEPHANIE_branch_19:
   26abf:	31 db                	xor    ebx,ebx
   26ac1:	e8 ca 3b 04 00       	call   play_wav
   26ac6:	bb 03 00 00 00       	mov    ebx,0x3
   26acb:	ba 5d 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_37                              ; fixup: num: 6026, src obj: 1, src ofs: 0x26acc, dst obj: 3, dst ofs: 0x6e5d
   26ad0:	b8 be 45 00 00       	mov    eax,0x45be
   26ad5:	e8 b6 3b 04 00       	call   play_wav
   26ada:	b8 d1 02 00 00       	mov    eax,0x2d1
   26adf:	bb 02 00 00 00       	mov    ebx,0x2
   26ae4:	ba 67 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_38                              ; fixup: num: 6025, src obj: 1, src ofs: 0x26ae5, dst obj: 3, dst ofs: 0x6e67
   26ae9:	e8 b2 36 00 00       	call   GetDlgFileString
   26aee:	e8 1d 44 04 00       	call   get_response
   26af3:	b8 d8 45 00 00       	mov    eax,0x45d8
   26af8:	e8 93 3b 04 00       	call   play_wav
   26afd:	ba 71 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_39                              ; fixup: num: 6024, src obj: 1, src ofs: 0x26afe, dst obj: 3, dst ofs: 0x6e71
   26b02:	b8 de 45 00 00       	mov    eax,0x45de
   26b07:	31 db                	xor    ebx,ebx
   26b09:	e8 82 3b 04 00       	call   play_wav
   26b0e:	bb 03 00 00 00       	mov    ebx,0x3
   26b13:	ba 74 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_40                              ; fixup: num: 6023, src obj: 1, src ofs: 0x26b14, dst obj: 3, dst ofs: 0x6e74
   26b18:	b8 e2 45 00 00       	mov    eax,0x45e2
   26b1d:	e9 b2 01 00 00       	jmp    talk_to_STEPHANIE_branch_27
talk_to_STEPHANIE_branch_20:
   26b22:	e8 99 20 00 00       	call   get_day
   26b27:	3b 05 64 2e 02 00    	cmp    eax,DWORD PTR ds:@obj3:STEPHANIE_variable_6                  ; fixup: num: 5915, src obj: 1, src ofs: 0x26b29, dst obj: 3, dst ofs: 0x22e64
   26b2d:	75 21                	jne    talk_to_STEPHANIE_branch_21
   26b2f:	ba 7e 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_41                              ; fixup: num: 5914, src obj: 1, src ofs: 0x26b30, dst obj: 3, dst ofs: 0x6e7e
   26b34:	b8 54 46 00 00       	mov    eax,0x4654
   26b39:	31 db                	xor    ebx,ebx
   26b3b:	bf 01 00 00 00       	mov    edi,0x1
   26b40:	e8 4b 3b 04 00       	call   play_wav
   26b45:	89 3d 54 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_2,edi                  ; fixup: num: 5913, src obj: 1, src ofs: 0x26b47, dst obj: 3, dst ofs: 0x22e54
   26b4b:	e9 89 01 00 00       	jmp    talk_to_STEPHANIE_branch_28
talk_to_STEPHANIE_branch_21:
   26b50:	a1 54 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_2                            ; fixup: num: 5912, src obj: 1, src ofs: 0x26b51, dst obj: 3, dst ofs: 0x22e54
   26b55:	85 c0                	test   eax,eax
   26b57:	0f 84 6b 01 00 00    	je     talk_to_STEPHANIE_branch_26
   26b5d:	bb 01 00 00 00       	mov    ebx,0x1
   26b62:	89 15 54 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_2,edx                  ; fixup: num: 5911, src obj: 1, src ofs: 0x26b64, dst obj: 3, dst ofs: 0x22e54
   26b68:	e8 53 20 00 00       	call   get_day
   26b6d:	ba 88 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_42                              ; fixup: num: 5910, src obj: 1, src ofs: 0x26b6e, dst obj: 3, dst ofs: 0x6e88
   26b72:	a3 68 2e 02 00       	mov    ds:@obj3:STEPHANIE_variable_7,eax                            ; fixup: num: 5909, src obj: 1, src ofs: 0x26b73, dst obj: 3, dst ofs: 0x22e68
   26b77:	b8 e8 45 00 00       	mov    eax,0x45e8
   26b7c:	e8 0f 3b 04 00       	call   play_wav
   26b81:	ba 92 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_43                              ; fixup: num: 5908, src obj: 1, src ofs: 0x26b82, dst obj: 3, dst ofs: 0x6e92
   26b86:	b8 ed 45 00 00       	mov    eax,0x45ed
   26b8b:	31 db                	xor    ebx,ebx
   26b8d:	e8 fe 3a 04 00       	call   play_wav
   26b92:	ba 95 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_44                              ; fixup: num: 6033, src obj: 1, src ofs: 0x26b93, dst obj: 3, dst ofs: 0x6e95
   26b97:	b8 f2 45 00 00       	mov    eax,0x45f2
   26b9c:	31 db                	xor    ebx,ebx
   26b9e:	e8 ed 3a 04 00       	call   play_wav
   26ba3:	e8 b8 1e 00 00       	call   STEPHANIE_REACHES_OUT_1
   26ba8:	ba 9f 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_45                              ; fixup: num: 6032, src obj: 1, src ofs: 0x26ba9, dst obj: 3, dst ofs: 0x6e9f
   26bad:	b8 fe 45 00 00       	mov    eax,0x45fe
   26bb2:	31 db                	xor    ebx,ebx
   26bb4:	e8 d7 3a 04 00       	call   play_wav
   26bb9:	ba a2 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_46                              ; fixup: num: 6031, src obj: 1, src ofs: 0x26bba, dst obj: 3, dst ofs: 0x6ea2
   26bbe:	b8 02 46 00 00       	mov    eax,0x4602
   26bc3:	31 db                	xor    ebx,ebx
   26bc5:	e8 c6 3a 04 00       	call   play_wav
   26bca:	b8 d3 02 00 00       	mov    eax,0x2d3
   26bcf:	e8 cc 35 00 00       	call   GetDlgFileString
   26bd4:	e8 37 43 04 00       	call   get_response
   26bd9:	83 f8 01             	cmp    eax,0x1
   26bdc:	75 11                	jne    talk_to_STEPHANIE_branch_22
   26bde:	bb 03 00 00 00       	mov    ebx,0x3
   26be3:	ba ac 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_47                              ; fixup: num: 5922, src obj: 1, src ofs: 0x26be4, dst obj: 3, dst ofs: 0x6eac
   26be8:	b8 0e 46 00 00       	mov    eax,0x460e
   26bed:	eb 14                	jmp    talk_to_STEPHANIE_branch_23
talk_to_STEPHANIE_branch_22:
   26bef:	83 f8 02             	cmp    eax,0x2
   26bf2:	75 14                	jne    talk_to_STEPHANIE_branch_24
   26bf4:	bb 03 00 00 00       	mov    ebx,0x3
   26bf9:	ba b6 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_48                              ; fixup: num: 5921, src obj: 1, src ofs: 0x26bfa, dst obj: 3, dst ofs: 0x6eb6
   26bfe:	b8 12 46 00 00       	mov    eax,0x4612
talk_to_STEPHANIE_branch_23:
   26c03:	e8 88 3a 04 00       	call   play_wav
talk_to_STEPHANIE_branch_24:
   26c08:	bb 03 00 00 00       	mov    ebx,0x3
   26c0d:	ba c0 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_49                              ; fixup: num: 5920, src obj: 1, src ofs: 0x26c0e, dst obj: 3, dst ofs: 0x6ec0
   26c12:	b8 16 46 00 00       	mov    eax,0x4616
   26c17:	e8 74 3a 04 00       	call   play_wav
   26c1c:	bb 03 00 00 00       	mov    ebx,0x3
   26c21:	ba ca 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_50                              ; fixup: num: 5919, src obj: 1, src ofs: 0x26c22, dst obj: 3, dst ofs: 0x6eca
   26c26:	b8 1b 46 00 00       	mov    eax,0x461b
   26c2b:	e8 60 3a 04 00       	call   play_wav
   26c30:	ba cd 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_51                              ; fixup: num: 5918, src obj: 1, src ofs: 0x26c31, dst obj: 3, dst ofs: 0x6ecd
   26c35:	b8 1f 46 00 00       	mov    eax,0x461f
   26c3a:	31 db                	xor    ebx,ebx
   26c3c:	e8 4f 3a 04 00       	call   play_wav
   26c41:	ba d7 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_52                              ; fixup: num: 5917, src obj: 1, src ofs: 0x26c42, dst obj: 3, dst ofs: 0x6ed7
   26c46:	b8 25 46 00 00       	mov    eax,0x4625
   26c4b:	31 db                	xor    ebx,ebx
   26c4d:	e8 3e 3a 04 00       	call   play_wav
   26c52:	ba da 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_53                              ; fixup: num: 5916, src obj: 1, src ofs: 0x26c53, dst obj: 3, dst ofs: 0x6eda
   26c57:	b8 29 46 00 00       	mov    eax,0x4629
   26c5c:	31 db                	xor    ebx,ebx
   26c5e:	e8 2d 3a 04 00       	call   play_wav
   26c63:	e8 28 1e 00 00       	call   STEPHANIE_WANTS_TO_GET_BUSY
   26c68:	b8 d5 02 00 00       	mov    eax,0x2d5
   26c6d:	e8 2e 35 00 00       	call   GetDlgFileString
   26c72:	e8 99 42 04 00       	call   get_response
   26c77:	83 f8 01             	cmp    eax,0x1
   26c7a:	75 22                	jne    talk_to_STEPHANIE_branch_25
   26c7c:	e8 6f c8 03 00       	call   NoLighting
   26c81:	e8 ea 1d 00 00       	call   STEPHANIE_DEMANDS_SEX
   26c86:	e8 f5 1d 00 00       	call   MAKING_LOVE_MIDGAME
   26c8b:	b8 e4 6e 00 00       	mov    eax,@obj3:steph_cpp_variable_54                              ; fixup: num: 5931, src obj: 1, src ofs: 0x26c8c, dst obj: 3, dst ofs: 0x6ee4
   26c90:	e8 eb 5e 04 00       	call   ExecuteCommand
   26c95:	31 c0                	xor    eax,eax
   26c97:	5d                   	pop    ebp
   26c98:	5f                   	pop    edi
   26c99:	5e                   	pop    esi
   26c9a:	5a                   	pop    edx
   26c9b:	59                   	pop    ecx
   26c9c:	5b                   	pop    ebx
   26c9d:	c3                   	ret    
talk_to_STEPHANIE_branch_25:
   26c9e:	83 f8 02             	cmp    eax,0x2
   26ca1:	75 36                	jne    talk_to_STEPHANIE_branch_28
   26ca3:	bb 03 00 00 00       	mov    ebx,0x3
   26ca8:	ba fc 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_55                              ; fixup: num: 5930, src obj: 1, src ofs: 0x26ca9, dst obj: 3, dst ofs: 0x6efc
   26cad:	b8 49 46 00 00       	mov    eax,0x4649
   26cb2:	e8 d9 39 04 00       	call   play_wav
   26cb7:	bb 03 00 00 00       	mov    ebx,0x3
   26cbc:	ba ff 6e 00 00       	mov    edx,@obj3:steph_cpp_variable_56                              ; fixup: num: 5929, src obj: 1, src ofs: 0x26cbd, dst obj: 3, dst ofs: 0x6eff
   26cc1:	b8 4e 46 00 00       	mov    eax,0x464e
   26cc6:	eb 0c                	jmp    talk_to_STEPHANIE_branch_27
talk_to_STEPHANIE_branch_26:
   26cc8:	ba 09 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_57                              ; fixup: num: 5928, src obj: 1, src ofs: 0x26cc9, dst obj: 3, dst ofs: 0x6f09
   26ccd:	b8 54 46 00 00       	mov    eax,0x4654
   26cd2:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_27:
   26cd4:	e8 b7 39 04 00       	call   play_wav
talk_to_STEPHANIE_branch_28:
   26cd9:	e8 e2 1e 00 00       	call   get_day
   26cde:	83 f8 05             	cmp    eax,0x5
   26ce1:	0f 85 95 00 00 00    	jne    talk_to_STEPHANIE_branch_29
   26ce7:	83 3d 88 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:STEPHANIE_variable_15,0x0                 ; fixup: num: 5927, src obj: 1, src ofs: 0x26ce9, dst obj: 3, dst ofs: 0x22e88
   26cee:	0f 85 88 00 00 00    	jne    talk_to_STEPHANIE_branch_29
   26cf4:	bb 01 00 00 00       	mov    ebx,0x1
   26cf9:	ba 13 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_58                              ; fixup: num: 5926, src obj: 1, src ofs: 0x26cfa, dst obj: 3, dst ofs: 0x6f13
   26cfe:	b8 aa 46 00 00       	mov    eax,0x46aa
   26d03:	89 1d 88 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_15,ebx                 ; fixup: num: 5925, src obj: 1, src ofs: 0x26d05, dst obj: 3, dst ofs: 0x22e88
   26d09:	31 db                	xor    ebx,ebx
   26d0b:	e8 80 39 04 00       	call   play_wav
   26d10:	ba 1d 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_59                              ; fixup: num: 5924, src obj: 1, src ofs: 0x26d11, dst obj: 3, dst ofs: 0x6f1d
   26d15:	b8 ae 46 00 00       	mov    eax,0x46ae
   26d1a:	31 db                	xor    ebx,ebx
   26d1c:	e8 6f 39 04 00       	call   play_wav
   26d21:	bb 02 00 00 00       	mov    ebx,0x2
   26d26:	ba 20 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_60                              ; fixup: num: 5923, src obj: 1, src ofs: 0x26d27, dst obj: 3, dst ofs: 0x6f20
   26d2b:	b8 b3 46 00 00       	mov    eax,0x46b3
   26d30:	e8 5b 39 04 00       	call   play_wav
   26d35:	ba 2a 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_61                              ; fixup: num: 5941, src obj: 1, src ofs: 0x26d36, dst obj: 3, dst ofs: 0x6f2a
   26d3a:	b8 bf 46 00 00       	mov    eax,0x46bf
   26d3f:	31 db                	xor    ebx,ebx
   26d41:	e8 4a 39 04 00       	call   play_wav
   26d46:	ba 34 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_62                              ; fixup: num: 5940, src obj: 1, src ofs: 0x26d47, dst obj: 3, dst ofs: 0x6f34
   26d4b:	b8 ba 46 00 00       	mov    eax,0x46ba
   26d50:	31 db                	xor    ebx,ebx
   26d52:	e8 39 39 04 00       	call   play_wav
   26d57:	ba 37 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_63                              ; fixup: num: 5939, src obj: 1, src ofs: 0x26d58, dst obj: 3, dst ofs: 0x6f37
   26d5c:	b8 c5 46 00 00       	mov    eax,0x46c5
   26d61:	31 db                	xor    ebx,ebx
   26d63:	e8 28 39 04 00       	call   play_wav
   26d68:	bb 03 00 00 00       	mov    ebx,0x3
   26d6d:	ba 3a 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_64                              ; fixup: num: 5938, src obj: 1, src ofs: 0x26d6e, dst obj: 3, dst ofs: 0x6f3a
   26d72:	b8 c9 46 00 00       	mov    eax,0x46c9
   26d77:	e8 14 39 04 00       	call   play_wav
talk_to_STEPHANIE_branch_29:
   26d7c:	b8 44 6f 00 00       	mov    eax,@obj3:steph_cpp_variable_65                              ; fixup: num: 5937, src obj: 1, src ofs: 0x26d7d, dst obj: 3, dst ofs: 0x6f44
   26d81:	e8 0a 5a 04 00       	call   check_script_flag
   26d86:	84 c0                	test   al,al
   26d88:	0f 84 fe 00 00 00    	je     talk_to_STEPHANIE_branch_31
   26d8e:	a1 7c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_12                           ; fixup: num: 5936, src obj: 1, src ofs: 0x26d8f, dst obj: 3, dst ofs: 0x22e7c
   26d93:	85 c0                	test   eax,eax
   26d95:	0f 85 f1 00 00 00    	jne    talk_to_STEPHANIE_branch_31
   26d9b:	b9 01 00 00 00       	mov    ecx,0x1
   26da0:	bb 03 00 00 00       	mov    ebx,0x3
   26da5:	ba 56 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_66                              ; fixup: num: 5935, src obj: 1, src ofs: 0x26da6, dst obj: 3, dst ofs: 0x6f56
   26daa:	b8 18 49 00 00       	mov    eax,0x4918
   26daf:	89 0d 7c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_12,ecx                 ; fixup: num: 5934, src obj: 1, src ofs: 0x26db1, dst obj: 3, dst ofs: 0x22e7c
   26db5:	e8 d6 38 04 00       	call   play_wav
   26dba:	ba 60 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_67                              ; fixup: num: 5933, src obj: 1, src ofs: 0x26dbb, dst obj: 3, dst ofs: 0x6f60
   26dbf:	b8 1e 49 00 00       	mov    eax,0x491e
   26dc4:	31 db                	xor    ebx,ebx
   26dc6:	e8 c5 38 04 00       	call   play_wav
   26dcb:	bb 03 00 00 00       	mov    ebx,0x3
   26dd0:	ba 63 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_68                              ; fixup: num: 5932, src obj: 1, src ofs: 0x26dd1, dst obj: 3, dst ofs: 0x6f63
   26dd5:	b8 28 49 00 00       	mov    eax,0x4928
   26dda:	e8 b1 38 04 00       	call   play_wav
   26ddf:	bb 03 00 00 00       	mov    ebx,0x3
   26de4:	ba 6d 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_69                              ; fixup: num: 5948, src obj: 1, src ofs: 0x26de5, dst obj: 3, dst ofs: 0x6f6d
   26de9:	b8 2c 49 00 00       	mov    eax,0x492c
   26dee:	e8 9d 38 04 00       	call   play_wav
   26df3:	bb 03 00 00 00       	mov    ebx,0x3
   26df8:	ba 70 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_70                              ; fixup: num: 5947, src obj: 1, src ofs: 0x26df9, dst obj: 3, dst ofs: 0x6f70
   26dfd:	b8 30 49 00 00       	mov    eax,0x4930
   26e02:	e8 89 38 04 00       	call   play_wav
   26e07:	b8 d7 02 00 00       	mov    eax,0x2d7
   26e0c:	e8 8f 33 00 00       	call   GetDlgFileString
   26e11:	e8 fa 40 04 00       	call   get_response
   26e16:	39 c8                	cmp    eax,ecx
   26e18:	75 31                	jne    talk_to_STEPHANIE_branch_30
   26e1a:	bb 03 00 00 00       	mov    ebx,0x3
   26e1f:	ba 7a 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_71                              ; fixup: num: 5946, src obj: 1, src ofs: 0x26e20, dst obj: 3, dst ofs: 0x6f7a
   26e24:	b8 3a 49 00 00       	mov    eax,0x493a
   26e29:	e8 62 38 04 00       	call   play_wav
   26e2e:	e8 bd c6 03 00       	call   NoLighting
   26e33:	e8 48 1c 00 00       	call   MAKING_LOVE_MIDGAME
   26e38:	b8 84 6f 00 00       	mov    eax,@obj3:steph_cpp_variable_72                              ; fixup: num: 5945, src obj: 1, src ofs: 0x26e39, dst obj: 3, dst ofs: 0x6f84
   26e3d:	e8 3e 5d 04 00       	call   ExecuteCommand
   26e42:	31 c0                	xor    eax,eax
   26e44:	5d                   	pop    ebp
   26e45:	5f                   	pop    edi
   26e46:	5e                   	pop    esi
   26e47:	5a                   	pop    edx
   26e48:	59                   	pop    ecx
   26e49:	5b                   	pop    ebx
   26e4a:	c3                   	ret    
talk_to_STEPHANIE_branch_30:
   26e4b:	83 f8 02             	cmp    eax,0x2
   26e4e:	75 3c                	jne    talk_to_STEPHANIE_branch_31
   26e50:	bb 03 00 00 00       	mov    ebx,0x3
   26e55:	ba 9c 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_73                              ; fixup: num: 5944, src obj: 1, src ofs: 0x26e56, dst obj: 3, dst ofs: 0x6f9c
   26e5a:	b8 44 49 00 00       	mov    eax,0x4944
   26e5f:	e8 2c 38 04 00       	call   play_wav
   26e64:	bb 03 00 00 00       	mov    ebx,0x3
   26e69:	ba a6 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_74                              ; fixup: num: 5943, src obj: 1, src ofs: 0x26e6a, dst obj: 3, dst ofs: 0x6fa6
   26e6e:	b8 49 49 00 00       	mov    eax,0x4949
   26e73:	e8 18 38 04 00       	call   play_wav
   26e78:	bb 03 00 00 00       	mov    ebx,0x3
   26e7d:	ba a9 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_75                              ; fixup: num: 5942, src obj: 1, src ofs: 0x26e7e, dst obj: 3, dst ofs: 0x6fa9
   26e82:	b8 4d 49 00 00       	mov    eax,0x494d
   26e87:	e8 04 38 04 00       	call   play_wav
talk_to_STEPHANIE_branch_31:
   26e8c:	b8 b3 6f 00 00       	mov    eax,@obj3:steph_cpp_variable_76                              ; fixup: num: 5957, src obj: 1, src ofs: 0x26e8d, dst obj: 3, dst ofs: 0x6fb3
   26e91:	e8 fa 58 04 00       	call   check_script_flag
   26e96:	84 c0                	test   al,al
   26e98:	0f 84 46 01 00 00    	je     talk_to_STEPHANIE_branch_37
   26e9e:	a1 6c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_8                            ; fixup: num: 5956, src obj: 1, src ofs: 0x26e9f, dst obj: 3, dst ofs: 0x22e6c
   26ea3:	85 c0                	test   eax,eax
   26ea5:	0f 85 39 01 00 00    	jne    talk_to_STEPHANIE_branch_37
   26eab:	be 01 00 00 00       	mov    esi,0x1
   26eb0:	ba c4 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_77                              ; fixup: num: 5955, src obj: 1, src ofs: 0x26eb1, dst obj: 3, dst ofs: 0x6fc4
   26eb5:	b8 d2 46 00 00       	mov    eax,0x46d2
   26eba:	31 db                	xor    ebx,ebx
   26ebc:	89 35 6c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_8,esi                  ; fixup: num: 5954, src obj: 1, src ofs: 0x26ebe, dst obj: 3, dst ofs: 0x22e6c
   26ec2:	e8 c9 37 04 00       	call   play_wav
   26ec7:	ba ce 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_78                              ; fixup: num: 5953, src obj: 1, src ofs: 0x26ec8, dst obj: 3, dst ofs: 0x6fce
   26ecc:	b8 db 46 00 00       	mov    eax,0x46db
   26ed1:	31 db                	xor    ebx,ebx
   26ed3:	e8 b8 37 04 00       	call   play_wav
   26ed8:	ba d1 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_79                              ; fixup: num: 5952, src obj: 1, src ofs: 0x26ed9, dst obj: 3, dst ofs: 0x6fd1
   26edd:	b8 e0 46 00 00       	mov    eax,0x46e0
   26ee2:	31 db                	xor    ebx,ebx
   26ee4:	e8 a7 37 04 00       	call   play_wav
   26ee9:	b8 d9 02 00 00       	mov    eax,0x2d9
   26eee:	e8 ad 32 00 00       	call   GetDlgFileString
   26ef3:	e8 18 40 04 00       	call   get_response
   26ef8:	39 f0                	cmp    eax,esi
   26efa:	0f 85 ce 00 00 00    	jne    talk_to_STEPHANIE_branch_35
   26f00:	bb 02 00 00 00       	mov    ebx,0x2
   26f05:	ba db 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_80                              ; fixup: num: 5951, src obj: 1, src ofs: 0x26f06, dst obj: 3, dst ofs: 0x6fdb
   26f0a:	b8 ea 46 00 00       	mov    eax,0x46ea
   26f0f:	e8 7c 37 04 00       	call   play_wav
   26f14:	ba e5 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_81                              ; fixup: num: 5950, src obj: 1, src ofs: 0x26f15, dst obj: 3, dst ofs: 0x6fe5
   26f19:	b8 ee 46 00 00       	mov    eax,0x46ee
   26f1e:	31 db                	xor    ebx,ebx
   26f20:	e8 6b 37 04 00       	call   play_wav
   26f25:	bb 02 00 00 00       	mov    ebx,0x2
   26f2a:	ba e8 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_82                              ; fixup: num: 5949, src obj: 1, src ofs: 0x26f2b, dst obj: 3, dst ofs: 0x6fe8
   26f2f:	b8 f2 46 00 00       	mov    eax,0x46f2
   26f34:	e8 57 37 04 00       	call   play_wav
   26f39:	ba f2 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_83                              ; fixup: num: 5965, src obj: 1, src ofs: 0x26f3a, dst obj: 3, dst ofs: 0x6ff2
   26f3e:	b8 f6 46 00 00       	mov    eax,0x46f6
   26f43:	31 db                	xor    ebx,ebx
   26f45:	e8 46 37 04 00       	call   play_wav
   26f4a:	bb 02 00 00 00       	mov    ebx,0x2
   26f4f:	ba f5 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_84                              ; fixup: num: 5964, src obj: 1, src ofs: 0x26f50, dst obj: 3, dst ofs: 0x6ff5
   26f54:	b8 fb 46 00 00       	mov    eax,0x46fb
   26f59:	e8 32 37 04 00       	call   play_wav
   26f5e:	b8 da 02 00 00       	mov    eax,0x2da
   26f63:	e8 38 32 00 00       	call   GetDlgFileString
   26f68:	e8 a3 3f 04 00       	call   get_response
   26f6d:	39 f0                	cmp    eax,esi
   26f6f:	75 25                	jne    talk_to_STEPHANIE_branch_32
   26f71:	bb 02 00 00 00       	mov    ebx,0x2
   26f76:	ba ff 6f 00 00       	mov    edx,@obj3:steph_cpp_variable_85                              ; fixup: num: 5963, src obj: 1, src ofs: 0x26f77, dst obj: 3, dst ofs: 0x6fff
   26f7b:	b8 05 47 00 00       	mov    eax,0x4705
   26f80:	e8 0b 37 04 00       	call   play_wav
   26f85:	bb 02 00 00 00       	mov    ebx,0x2
   26f8a:	ba 09 70 00 00       	mov    edx,@obj3:steph_cpp_variable_86                              ; fixup: num: 5962, src obj: 1, src ofs: 0x26f8b, dst obj: 3, dst ofs: 0x7009
   26f8f:	b8 09 47 00 00       	mov    eax,0x4709
   26f94:	eb 22                	jmp    talk_to_STEPHANIE_branch_33
talk_to_STEPHANIE_branch_32:
   26f96:	83 f8 02             	cmp    eax,0x2
   26f99:	75 22                	jne    talk_to_STEPHANIE_branch_34
   26f9b:	ba 0c 70 00 00       	mov    edx,@obj3:steph_cpp_variable_87                              ; fixup: num: 5961, src obj: 1, src ofs: 0x26f9c, dst obj: 3, dst ofs: 0x700c
   26fa0:	89 c3                	mov    ebx,eax
   26fa2:	b8 0e 47 00 00       	mov    eax,0x470e
   26fa7:	e8 e4 36 04 00       	call   play_wav
   26fac:	ba 16 70 00 00       	mov    edx,@obj3:steph_cpp_variable_88                              ; fixup: num: 5960, src obj: 1, src ofs: 0x26fad, dst obj: 3, dst ofs: 0x7016
   26fb1:	b8 0f 47 00 00       	mov    eax,0x470f
   26fb6:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_33:
   26fb8:	e8 d3 36 04 00       	call   play_wav
talk_to_STEPHANIE_branch_34:
   26fbd:	bb 03 00 00 00       	mov    ebx,0x3
   26fc2:	ba 19 70 00 00       	mov    edx,@obj3:steph_cpp_variable_89                              ; fixup: num: 5959, src obj: 1, src ofs: 0x26fc3, dst obj: 3, dst ofs: 0x7019
   26fc7:	b8 17 47 00 00       	mov    eax,0x4717
   26fcc:	eb 11                	jmp    talk_to_STEPHANIE_branch_36
talk_to_STEPHANIE_branch_35:
   26fce:	83 f8 02             	cmp    eax,0x2
   26fd1:	75 11                	jne    talk_to_STEPHANIE_branch_37
   26fd3:	ba 23 70 00 00       	mov    edx,@obj3:steph_cpp_variable_90                              ; fixup: num: 5958, src obj: 1, src ofs: 0x26fd4, dst obj: 3, dst ofs: 0x7023
   26fd8:	b8 1e 47 00 00       	mov    eax,0x471e
   26fdd:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_36:
   26fdf:	e8 ac 36 04 00       	call   play_wav
talk_to_STEPHANIE_branch_37:
   26fe4:	b8 2d 70 00 00       	mov    eax,@obj3:steph_cpp_variable_91                              ; fixup: num: 5967, src obj: 1, src ofs: 0x26fe5, dst obj: 3, dst ofs: 0x702d
   26fe9:	e8 a2 57 04 00       	call   check_script_flag
   26fee:	84 c0                	test   al,al
   26ff0:	0f 84 da 00 00 00    	je     talk_to_STEPHANIE_branch_40
   26ff6:	a1 70 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_9                            ; fixup: num: 5966, src obj: 1, src ofs: 0x26ff7, dst obj: 3, dst ofs: 0x22e70
   26ffb:	85 c0                	test   eax,eax
   26ffd:	0f 85 cd 00 00 00    	jne    talk_to_STEPHANIE_branch_40
   27003:	bf 01 00 00 00       	mov    edi,0x1
   27008:	ba 41 70 00 00       	mov    edx,@obj3:steph_cpp_variable_92                              ; fixup: num: 6230, src obj: 1, src ofs: 0x27009, dst obj: 3, dst ofs: 0x7041
   2700d:	b8 24 47 00 00       	mov    eax,0x4724
   27012:	31 db                	xor    ebx,ebx
   27014:	89 3d 70 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_9,edi                  ; fixup: num: 6229, src obj: 1, src ofs: 0x27016, dst obj: 3, dst ofs: 0x22e70
   2701a:	e8 71 36 04 00       	call   play_wav
   2701f:	b8 db 02 00 00       	mov    eax,0x2db
   27024:	e8 77 31 00 00       	call   GetDlgFileString
   27029:	e8 e2 3e 04 00       	call   get_response
   2702e:	39 f8                	cmp    eax,edi
   27030:	75 0f                	jne    talk_to_STEPHANIE_branch_38
   27032:	ba 4b 70 00 00       	mov    edx,@obj3:steph_cpp_variable_93                              ; fixup: num: 6228, src obj: 1, src ofs: 0x27033, dst obj: 3, dst ofs: 0x704b
   27037:	b8 2f 47 00 00       	mov    eax,0x472f
   2703c:	e9 88 00 00 00       	jmp    talk_to_STEPHANIE_branch_39
talk_to_STEPHANIE_branch_38:
   27041:	83 f8 02             	cmp    eax,0x2
   27044:	0f 85 86 00 00 00    	jne    talk_to_STEPHANIE_branch_40
   2704a:	ba 55 70 00 00       	mov    edx,@obj3:steph_cpp_variable_94                              ; fixup: num: 6227, src obj: 1, src ofs: 0x2704b, dst obj: 3, dst ofs: 0x7055
   2704f:	89 c3                	mov    ebx,eax
   27051:	b8 36 47 00 00       	mov    eax,0x4736
   27056:	89 3d 58 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_3,edi                  ; fixup: num: 6226, src obj: 1, src ofs: 0x27058, dst obj: 3, dst ofs: 0x22e58
   2705c:	e8 2f 36 04 00       	call   play_wav
   27061:	ba 5f 70 00 00       	mov    edx,@obj3:steph_cpp_variable_95                              ; fixup: num: 6225, src obj: 1, src ofs: 0x27062, dst obj: 3, dst ofs: 0x705f
   27066:	b8 3b 47 00 00       	mov    eax,0x473b
   2706b:	31 db                	xor    ebx,ebx
   2706d:	e8 1e 36 04 00       	call   play_wav
   27072:	bb 02 00 00 00       	mov    ebx,0x2
   27077:	ba 62 70 00 00       	mov    edx,@obj3:steph_cpp_variable_96                              ; fixup: num: 6224, src obj: 1, src ofs: 0x27078, dst obj: 3, dst ofs: 0x7062
   2707c:	b8 40 47 00 00       	mov    eax,0x4740
   27081:	e8 0a 36 04 00       	call   play_wav
   27086:	ba 6c 70 00 00       	mov    edx,@obj3:steph_cpp_variable_97                              ; fixup: num: 6223, src obj: 1, src ofs: 0x27087, dst obj: 3, dst ofs: 0x706c
   2708b:	b8 44 47 00 00       	mov    eax,0x4744
   27090:	31 db                	xor    ebx,ebx
   27092:	e8 f9 35 04 00       	call   play_wav
   27097:	bb 02 00 00 00       	mov    ebx,0x2
   2709c:	ba 6f 70 00 00       	mov    edx,@obj3:steph_cpp_variable_98                              ; fixup: num: 6239, src obj: 1, src ofs: 0x2709d, dst obj: 3, dst ofs: 0x706f
   270a1:	b8 48 47 00 00       	mov    eax,0x4748
   270a6:	e8 e5 35 04 00       	call   play_wav
   270ab:	bb 04 00 00 00       	mov    ebx,0x4
   270b0:	ba 79 70 00 00       	mov    edx,@obj3:steph_cpp_variable_99                              ; fixup: num: 6238, src obj: 1, src ofs: 0x270b1, dst obj: 3, dst ofs: 0x7079
   270b5:	b8 4d 47 00 00       	mov    eax,0x474d
   270ba:	e8 d1 35 04 00       	call   play_wav
   270bf:	ba 7c 70 00 00       	mov    edx,@obj3:steph_cpp_variable_100                             ; fixup: num: 6237, src obj: 1, src ofs: 0x270c0, dst obj: 3, dst ofs: 0x707c
   270c4:	b8 53 47 00 00       	mov    eax,0x4753
talk_to_STEPHANIE_branch_39:
   270c9:	31 db                	xor    ebx,ebx
   270cb:	e8 c0 35 04 00       	call   play_wav
talk_to_STEPHANIE_branch_40:
   270d0:	b8 86 70 00 00       	mov    eax,@obj3:steph_cpp_variable_101                             ; fixup: num: 6236, src obj: 1, src ofs: 0x270d1, dst obj: 3, dst ofs: 0x7086
   270d5:	e8 b6 56 04 00       	call   check_script_flag
   270da:	84 c0                	test   al,al
   270dc:	0f 84 b5 01 00 00    	je     talk_to_STEPHANIE_branch_43
   270e2:	a1 78 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_11                           ; fixup: num: 6235, src obj: 1, src ofs: 0x270e3, dst obj: 3, dst ofs: 0x22e78
   270e7:	85 c0                	test   eax,eax
   270e9:	0f 85 a8 01 00 00    	jne    talk_to_STEPHANIE_branch_43
   270ef:	b8 01 00 00 00       	mov    eax,0x1
   270f4:	ba 99 70 00 00       	mov    edx,@obj3:steph_cpp_variable_102                             ; fixup: num: 6234, src obj: 1, src ofs: 0x270f5, dst obj: 3, dst ofs: 0x7099
   270f9:	31 db                	xor    ebx,ebx
   270fb:	a3 78 2e 02 00       	mov    ds:@obj3:STEPHANIE_variable_11,eax                           ; fixup: num: 6233, src obj: 1, src ofs: 0x270fc, dst obj: 3, dst ofs: 0x22e78
   27100:	b8 a0 47 00 00       	mov    eax,0x47a0
   27105:	e8 86 35 04 00       	call   play_wav
   2710a:	b8 dd 02 00 00       	mov    eax,0x2dd
   2710f:	e8 8c 30 00 00       	call   GetDlgFileString
   27114:	e8 f7 3d 04 00       	call   get_response
   27119:	83 f8 01             	cmp    eax,0x1
   2711c:	75 31                	jne    talk_to_STEPHANIE_branch_41
   2711e:	ba a3 70 00 00       	mov    edx,@obj3:steph_cpp_variable_103                             ; fixup: num: 6232, src obj: 1, src ofs: 0x2711f, dst obj: 3, dst ofs: 0x70a3
   27123:	b8 af 47 00 00       	mov    eax,0x47af
   27128:	31 db                	xor    ebx,ebx
   2712a:	e8 61 35 04 00       	call   play_wav
   2712f:	ba ad 70 00 00       	mov    edx,@obj3:steph_cpp_variable_104                             ; fixup: num: 6231, src obj: 1, src ofs: 0x27130, dst obj: 3, dst ofs: 0x70ad
   27134:	b8 b4 47 00 00       	mov    eax,0x47b4
   27139:	31 db                	xor    ebx,ebx
   2713b:	e8 50 35 04 00       	call   play_wav
   27140:	ba b0 70 00 00       	mov    edx,@obj3:steph_cpp_variable_105                             ; fixup: num: 6248, src obj: 1, src ofs: 0x27141, dst obj: 3, dst ofs: 0x70b0
   27145:	b8 b8 47 00 00       	mov    eax,0x47b8
   2714a:	e9 41 01 00 00       	jmp    talk_to_STEPHANIE_branch_42
talk_to_STEPHANIE_branch_41:
   2714f:	83 f8 02             	cmp    eax,0x2
   27152:	0f 85 3f 01 00 00    	jne    talk_to_STEPHANIE_branch_43
   27158:	ba ba 70 00 00       	mov    edx,@obj3:steph_cpp_variable_106                             ; fixup: num: 6247, src obj: 1, src ofs: 0x27159, dst obj: 3, dst ofs: 0x70ba
   2715d:	89 c3                	mov    ebx,eax
   2715f:	b8 be 47 00 00       	mov    eax,0x47be
   27164:	e8 27 35 04 00       	call   play_wav
   27169:	bb 03 00 00 00       	mov    ebx,0x3
   2716e:	ba c4 70 00 00       	mov    edx,@obj3:steph_cpp_variable_107                             ; fixup: num: 6246, src obj: 1, src ofs: 0x2716f, dst obj: 3, dst ofs: 0x70c4
   27173:	b8 c2 47 00 00       	mov    eax,0x47c2
   27178:	e8 13 35 04 00       	call   play_wav
   2717d:	bb 04 00 00 00       	mov    ebx,0x4
   27182:	ba c7 70 00 00       	mov    edx,@obj3:steph_cpp_variable_108                             ; fixup: num: 6245, src obj: 1, src ofs: 0x27183, dst obj: 3, dst ofs: 0x70c7
   27187:	b8 c7 47 00 00       	mov    eax,0x47c7
   2718c:	e8 ff 34 04 00       	call   play_wav
   27191:	bb 02 00 00 00       	mov    ebx,0x2
   27196:	ba d1 70 00 00       	mov    edx,@obj3:steph_cpp_variable_109                             ; fixup: num: 6244, src obj: 1, src ofs: 0x27197, dst obj: 3, dst ofs: 0x70d1
   2719b:	b8 cc 47 00 00       	mov    eax,0x47cc
   271a0:	e8 eb 34 04 00       	call   play_wav
   271a5:	bb 02 00 00 00       	mov    ebx,0x2
   271aa:	ba d4 70 00 00       	mov    edx,@obj3:steph_cpp_variable_110                             ; fixup: num: 6243, src obj: 1, src ofs: 0x271ab, dst obj: 3, dst ofs: 0x70d4
   271af:	b8 d0 47 00 00       	mov    eax,0x47d0
   271b4:	e8 d7 34 04 00       	call   play_wav
   271b9:	bb 02 00 00 00       	mov    ebx,0x2
   271be:	ba de 70 00 00       	mov    edx,@obj3:steph_cpp_variable_111                             ; fixup: num: 6242, src obj: 1, src ofs: 0x271bf, dst obj: 3, dst ofs: 0x70de
   271c3:	b8 d6 47 00 00       	mov    eax,0x47d6
   271c8:	e8 c3 34 04 00       	call   play_wav
   271cd:	ba e1 70 00 00       	mov    edx,@obj3:steph_cpp_variable_112                             ; fixup: num: 6241, src obj: 1, src ofs: 0x271ce, dst obj: 3, dst ofs: 0x70e1
   271d2:	b8 da 47 00 00       	mov    eax,0x47da
   271d7:	31 db                	xor    ebx,ebx
   271d9:	e8 b2 34 04 00       	call   play_wav
   271de:	bb 02 00 00 00       	mov    ebx,0x2
   271e3:	ba eb 70 00 00       	mov    edx,@obj3:steph_cpp_variable_113                             ; fixup: num: 6240, src obj: 1, src ofs: 0x271e4, dst obj: 3, dst ofs: 0x70eb
   271e8:	b8 de 47 00 00       	mov    eax,0x47de
   271ed:	e8 9e 34 04 00       	call   play_wav
   271f2:	ba ee 70 00 00       	mov    edx,@obj3:steph_cpp_variable_114                             ; fixup: num: 6258, src obj: 1, src ofs: 0x271f3, dst obj: 3, dst ofs: 0x70ee
   271f7:	b8 e3 47 00 00       	mov    eax,0x47e3
   271fc:	31 db                	xor    ebx,ebx
   271fe:	e8 8d 34 04 00       	call   play_wav
   27203:	ba f8 70 00 00       	mov    edx,@obj3:steph_cpp_variable_115                             ; fixup: num: 6257, src obj: 1, src ofs: 0x27204, dst obj: 3, dst ofs: 0x70f8
   27208:	b8 eb 47 00 00       	mov    eax,0x47eb
   2720d:	31 db                	xor    ebx,ebx
   2720f:	e8 7c 34 04 00       	call   play_wav
   27214:	bb 02 00 00 00       	mov    ebx,0x2
   27219:	ba fb 70 00 00       	mov    edx,@obj3:steph_cpp_variable_116                             ; fixup: num: 6256, src obj: 1, src ofs: 0x2721a, dst obj: 3, dst ofs: 0x70fb
   2721e:	b8 ef 47 00 00       	mov    eax,0x47ef
   27223:	e8 68 34 04 00       	call   play_wav
   27228:	bb 02 00 00 00       	mov    ebx,0x2
   2722d:	ba 05 71 00 00       	mov    edx,@obj3:steph_cpp_variable_117                             ; fixup: num: 6255, src obj: 1, src ofs: 0x2722e, dst obj: 3, dst ofs: 0x7105
   27232:	b8 2b 48 00 00       	mov    eax,0x482b
   27237:	e8 54 34 04 00       	call   play_wav
   2723c:	bb 04 00 00 00       	mov    ebx,0x4
   27241:	ba 0f 71 00 00       	mov    edx,@obj3:steph_cpp_variable_118                             ; fixup: num: 6254, src obj: 1, src ofs: 0x27242, dst obj: 3, dst ofs: 0x710f
   27246:	b8 30 48 00 00       	mov    eax,0x4830
   2724b:	e8 40 34 04 00       	call   play_wav
   27250:	bb 02 00 00 00       	mov    ebx,0x2
   27255:	ba 12 71 00 00       	mov    edx,@obj3:steph_cpp_variable_119                             ; fixup: num: 6253, src obj: 1, src ofs: 0x27256, dst obj: 3, dst ofs: 0x7112
   2725a:	b8 34 48 00 00       	mov    eax,0x4834
   2725f:	e8 2c 34 04 00       	call   play_wav
   27264:	ba 1c 71 00 00       	mov    edx,@obj3:steph_cpp_variable_120                             ; fixup: num: 6252, src obj: 1, src ofs: 0x27265, dst obj: 3, dst ofs: 0x711c
   27269:	b8 39 48 00 00       	mov    eax,0x4839
   2726e:	31 db                	xor    ebx,ebx
   27270:	e8 1b 34 04 00       	call   play_wav
   27275:	ba 1f 71 00 00       	mov    edx,@obj3:steph_cpp_variable_121                             ; fixup: num: 6251, src obj: 1, src ofs: 0x27276, dst obj: 3, dst ofs: 0x711f
   2727a:	b8 3d 48 00 00       	mov    eax,0x483d
   2727f:	31 db                	xor    ebx,ebx
   27281:	e8 0a 34 04 00       	call   play_wav
   27286:	ba 29 71 00 00       	mov    edx,@obj3:steph_cpp_variable_122                             ; fixup: num: 6250, src obj: 1, src ofs: 0x27287, dst obj: 3, dst ofs: 0x7129
   2728b:	b8 fe 47 00 00       	mov    eax,0x47fe
talk_to_STEPHANIE_branch_42:
   27290:	31 db                	xor    ebx,ebx
   27292:	e8 f9 33 04 00       	call   play_wav
talk_to_STEPHANIE_branch_43:
   27297:	b8 2c 71 00 00       	mov    eax,@obj3:steph_cpp_variable_123                             ; fixup: num: 6249, src obj: 1, src ofs: 0x27298, dst obj: 3, dst ofs: 0x712c
   2729c:	e8 ef 54 04 00       	call   check_script_flag
   272a1:	84 c0                	test   al,al
   272a3:	0f 84 7a 02 00 00    	je     talk_to_STEPHANIE_branch_49
   272a9:	a1 80 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_13                           ; fixup: num: 6266, src obj: 1, src ofs: 0x272aa, dst obj: 3, dst ofs: 0x22e80
   272ae:	85 c0                	test   eax,eax
   272b0:	0f 85 6d 02 00 00    	jne    talk_to_STEPHANIE_branch_49
   272b6:	ba 01 00 00 00       	mov    edx,0x1
   272bb:	bb 03 00 00 00       	mov    ebx,0x3
   272c0:	b8 45 48 00 00       	mov    eax,0x4845
   272c5:	89 15 80 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_13,edx                 ; fixup: num: 6265, src obj: 1, src ofs: 0x272c7, dst obj: 3, dst ofs: 0x22e80
   272cb:	ba 39 71 00 00       	mov    edx,@obj3:steph_cpp_variable_124                             ; fixup: num: 6264, src obj: 1, src ofs: 0x272cc, dst obj: 3, dst ofs: 0x7139
   272d0:	e8 bb 33 04 00       	call   play_wav
   272d5:	ba 43 71 00 00       	mov    edx,@obj3:steph_cpp_variable_125                             ; fixup: num: 6263, src obj: 1, src ofs: 0x272d6, dst obj: 3, dst ofs: 0x7143
   272da:	b8 4a 48 00 00       	mov    eax,0x484a
   272df:	31 db                	xor    ebx,ebx
   272e1:	e8 aa 33 04 00       	call   play_wav
   272e6:	ba 46 71 00 00       	mov    edx,@obj3:steph_cpp_variable_126                             ; fixup: num: 6262, src obj: 1, src ofs: 0x272e7, dst obj: 3, dst ofs: 0x7146
   272eb:	b8 4e 48 00 00       	mov    eax,0x484e
   272f0:	31 db                	xor    ebx,ebx
   272f2:	e8 99 33 04 00       	call   play_wav
   272f7:	b8 df 02 00 00       	mov    eax,0x2df
   272fc:	e8 9f 2e 00 00       	call   GetDlgFileString
   27301:	e8 0a 3c 04 00       	call   get_response
   27306:	83 f8 01             	cmp    eax,0x1
   27309:	0f 85 46 01 00 00    	jne    talk_to_STEPHANIE_branch_47
   2730f:	bb 03 00 00 00       	mov    ebx,0x3
   27314:	ba 50 71 00 00       	mov    edx,@obj3:steph_cpp_variable_127                             ; fixup: num: 6261, src obj: 1, src ofs: 0x27315, dst obj: 3, dst ofs: 0x7150
   27319:	b8 58 48 00 00       	mov    eax,0x4858
   2731e:	e8 6d 33 04 00       	call   play_wav
   27323:	b8 5a 71 00 00       	mov    eax,@obj3:steph_cpp_variable_128                             ; fixup: num: 6260, src obj: 1, src ofs: 0x27324, dst obj: 3, dst ofs: 0x715a
   27328:	e8 63 54 04 00       	call   check_script_flag
   2732d:	84 c0                	test   al,al
   2732f:	74 14                	je     talk_to_STEPHANIE_branch_44
   27331:	bb 03 00 00 00       	mov    ebx,0x3
   27336:	ba 6c 71 00 00       	mov    edx,@obj3:steph_cpp_variable_129                             ; fixup: num: 6259, src obj: 1, src ofs: 0x27337, dst obj: 3, dst ofs: 0x716c
   2733b:	b8 5c 48 00 00       	mov    eax,0x485c
   27340:	e8 4b 33 04 00       	call   play_wav
talk_to_STEPHANIE_branch_44:
   27345:	b8 e0 02 00 00       	mov    eax,0x2e0
   2734a:	e8 51 2e 00 00       	call   GetDlgFileString
   2734f:	e8 bc 3b 04 00       	call   get_response
   27354:	83 f8 01             	cmp    eax,0x1
   27357:	75 3c                	jne    talk_to_STEPHANIE_branch_45
   27359:	bb 02 00 00 00       	mov    ebx,0x2
   2735e:	ba 76 71 00 00       	mov    edx,@obj3:steph_cpp_variable_130                             ; fixup: num: 6273, src obj: 1, src ofs: 0x2735f, dst obj: 3, dst ofs: 0x7176
   27363:	b8 66 48 00 00       	mov    eax,0x4866
   27368:	e8 23 33 04 00       	call   play_wav
   2736d:	bb 04 00 00 00       	mov    ebx,0x4
   27372:	ba 80 71 00 00       	mov    edx,@obj3:steph_cpp_variable_131                             ; fixup: num: 6272, src obj: 1, src ofs: 0x27373, dst obj: 3, dst ofs: 0x7180
   27377:	b8 6b 48 00 00       	mov    eax,0x486b
   2737c:	e8 0f 33 04 00       	call   play_wav
   27381:	bb 02 00 00 00       	mov    ebx,0x2
   27386:	ba 83 71 00 00       	mov    edx,@obj3:steph_cpp_variable_132                             ; fixup: num: 6271, src obj: 1, src ofs: 0x27387, dst obj: 3, dst ofs: 0x7183
   2738b:	b8 70 48 00 00       	mov    eax,0x4870
   27390:	e9 89 01 00 00       	jmp    talk_to_STEPHANIE_branch_48
talk_to_STEPHANIE_branch_45:
   27395:	83 f8 02             	cmp    eax,0x2
   27398:	0f 85 85 01 00 00    	jne    talk_to_STEPHANIE_branch_49
   2739e:	bb 03 00 00 00       	mov    ebx,0x3
   273a3:	ba 8d 71 00 00       	mov    edx,@obj3:steph_cpp_variable_133                             ; fixup: num: 6270, src obj: 1, src ofs: 0x273a4, dst obj: 3, dst ofs: 0x718d
   273a8:	b8 77 48 00 00       	mov    eax,0x4877
   273ad:	e8 de 32 04 00       	call   play_wav
   273b2:	ba 97 71 00 00       	mov    edx,@obj3:steph_cpp_variable_134                             ; fixup: num: 6269, src obj: 1, src ofs: 0x273b3, dst obj: 3, dst ofs: 0x7197
   273b7:	b8 7b 48 00 00       	mov    eax,0x487b
   273bc:	31 db                	xor    ebx,ebx
   273be:	e8 cd 32 04 00       	call   play_wav
   273c3:	ba 9a 71 00 00       	mov    edx,@obj3:steph_cpp_variable_135                             ; fixup: num: 6268, src obj: 1, src ofs: 0x273c4, dst obj: 3, dst ofs: 0x719a
   273c8:	b8 80 48 00 00       	mov    eax,0x4880
   273cd:	31 db                	xor    ebx,ebx
   273cf:	e8 bc 32 04 00       	call   play_wav
   273d4:	b8 e1 02 00 00       	mov    eax,0x2e1
   273d9:	e8 c2 2d 00 00       	call   GetDlgFileString
   273de:	e8 2d 3b 04 00       	call   get_response
   273e3:	83 f8 01             	cmp    eax,0x1
   273e6:	75 14                	jne    talk_to_STEPHANIE_branch_46
   273e8:	bb 02 00 00 00       	mov    ebx,0x2
   273ed:	ba a4 71 00 00       	mov    edx,@obj3:steph_cpp_variable_136                             ; fixup: num: 6267, src obj: 1, src ofs: 0x273ee, dst obj: 3, dst ofs: 0x71a4
   273f2:	b8 8e 48 00 00       	mov    eax,0x488e
   273f7:	e9 22 01 00 00       	jmp    talk_to_STEPHANIE_branch_48
talk_to_STEPHANIE_branch_46:
   273fc:	83 f8 02             	cmp    eax,0x2
   273ff:	0f 85 1e 01 00 00    	jne    talk_to_STEPHANIE_branch_49
   27405:	bb 01 00 00 00       	mov    ebx,0x1
   2740a:	ba ae 71 00 00       	mov    edx,@obj3:steph_cpp_variable_137                             ; fixup: num: 6281, src obj: 1, src ofs: 0x2740b, dst obj: 3, dst ofs: 0x71ae
   2740f:	b8 95 48 00 00       	mov    eax,0x4895
   27414:	e8 77 32 04 00       	call   play_wav
   27419:	bb 03 00 00 00       	mov    ebx,0x3
   2741e:	ba b8 71 00 00       	mov    edx,@obj3:steph_cpp_variable_138                             ; fixup: num: 6280, src obj: 1, src ofs: 0x2741f, dst obj: 3, dst ofs: 0x71b8
   27423:	b8 99 48 00 00       	mov    eax,0x4899
   27428:	e8 63 32 04 00       	call   play_wav
   2742d:	bb 03 00 00 00       	mov    ebx,0x3
   27432:	ba bb 71 00 00       	mov    edx,@obj3:steph_cpp_variable_139                             ; fixup: num: 6279, src obj: 1, src ofs: 0x27433, dst obj: 3, dst ofs: 0x71bb
   27437:	b8 9d 48 00 00       	mov    eax,0x489d
   2743c:	e8 4f 32 04 00       	call   play_wav
   27441:	bb 03 00 00 00       	mov    ebx,0x3
   27446:	ba c5 71 00 00       	mov    edx,@obj3:steph_cpp_variable_140                             ; fixup: num: 6278, src obj: 1, src ofs: 0x27447, dst obj: 3, dst ofs: 0x71c5
   2744b:	b8 1b 46 00 00       	mov    eax,0x461b
   27450:	e9 c9 00 00 00       	jmp    talk_to_STEPHANIE_branch_48
talk_to_STEPHANIE_branch_47:
   27455:	83 f8 02             	cmp    eax,0x2
   27458:	0f 85 c5 00 00 00    	jne    talk_to_STEPHANIE_branch_49
   2745e:	ba c8 71 00 00       	mov    edx,@obj3:steph_cpp_variable_141                             ; fixup: num: 6277, src obj: 1, src ofs: 0x2745f, dst obj: 3, dst ofs: 0x71c8
   27463:	b8 c2 48 00 00       	mov    eax,0x48c2
   27468:	31 db                	xor    ebx,ebx
   2746a:	e8 21 32 04 00       	call   play_wav
   2746f:	ba d2 71 00 00       	mov    edx,@obj3:steph_cpp_variable_142                             ; fixup: num: 6276, src obj: 1, src ofs: 0x27470, dst obj: 3, dst ofs: 0x71d2
   27474:	b8 c6 48 00 00       	mov    eax,0x48c6
   27479:	31 db                	xor    ebx,ebx
   2747b:	e8 10 32 04 00       	call   play_wav
   27480:	ba d5 71 00 00       	mov    edx,@obj3:steph_cpp_variable_143                             ; fixup: num: 6275, src obj: 1, src ofs: 0x27481, dst obj: 3, dst ofs: 0x71d5
   27485:	b8 ca 48 00 00       	mov    eax,0x48ca
   2748a:	31 db                	xor    ebx,ebx
   2748c:	e8 ff 31 04 00       	call   play_wav
   27491:	b8 df 71 00 00       	mov    eax,@obj3:steph_cpp_variable_144                             ; fixup: num: 6274, src obj: 1, src ofs: 0x27492, dst obj: 3, dst ofs: 0x71df
   27496:	e8 f5 52 04 00       	call   check_script_flag
   2749b:	84 c0                	test   al,al
   2749d:	0f 84 80 00 00 00    	je     talk_to_STEPHANIE_branch_49
   274a3:	a1 84 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_14                           ; fixup: num: 6292, src obj: 1, src ofs: 0x274a4, dst obj: 3, dst ofs: 0x22e84
   274a8:	85 c0                	test   eax,eax
   274aa:	75 77                	jne    talk_to_STEPHANIE_branch_49
   274ac:	bb 01 00 00 00       	mov    ebx,0x1
   274b1:	ba f1 71 00 00       	mov    edx,@obj3:steph_cpp_variable_145                             ; fixup: num: 6291, src obj: 1, src ofs: 0x274b2, dst obj: 3, dst ofs: 0x71f1
   274b6:	b8 ce 48 00 00       	mov    eax,0x48ce
   274bb:	89 1d 84 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_14,ebx                 ; fixup: num: 6290, src obj: 1, src ofs: 0x274bd, dst obj: 3, dst ofs: 0x22e84
   274c1:	bb 03 00 00 00       	mov    ebx,0x3
   274c6:	e8 c5 31 04 00       	call   play_wav
   274cb:	bb 03 00 00 00       	mov    ebx,0x3
   274d0:	ba fb 71 00 00       	mov    edx,@obj3:steph_cpp_variable_146                             ; fixup: num: 6289, src obj: 1, src ofs: 0x274d1, dst obj: 3, dst ofs: 0x71fb
   274d5:	b8 d3 48 00 00       	mov    eax,0x48d3
   274da:	e8 b1 31 04 00       	call   play_wav
   274df:	ba 05 72 00 00       	mov    edx,@obj3:steph_cpp_variable_147                             ; fixup: num: 6288, src obj: 1, src ofs: 0x274e0, dst obj: 3, dst ofs: 0x7205
   274e4:	b8 d8 48 00 00       	mov    eax,0x48d8
   274e9:	31 db                	xor    ebx,ebx
   274eb:	e8 a0 31 04 00       	call   play_wav
   274f0:	ba 08 72 00 00       	mov    edx,@obj3:steph_cpp_variable_148                             ; fixup: num: 6287, src obj: 1, src ofs: 0x274f1, dst obj: 3, dst ofs: 0x7208
   274f5:	b8 dc 48 00 00       	mov    eax,0x48dc
   274fa:	31 db                	xor    ebx,ebx
   274fc:	e8 8f 31 04 00       	call   play_wav
   27501:	ba 12 72 00 00       	mov    edx,@obj3:steph_cpp_variable_149                             ; fixup: num: 6286, src obj: 1, src ofs: 0x27502, dst obj: 3, dst ofs: 0x7212
   27506:	b8 e1 48 00 00       	mov    eax,0x48e1
   2750b:	31 db                	xor    ebx,ebx
   2750d:	e8 7e 31 04 00       	call   play_wav
   27512:	ba 15 72 00 00       	mov    edx,@obj3:steph_cpp_variable_150                             ; fixup: num: 6285, src obj: 1, src ofs: 0x27513, dst obj: 3, dst ofs: 0x7215
   27517:	b8 e5 48 00 00       	mov    eax,0x48e5
   2751c:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_48:
   2751e:	e8 6d 31 04 00       	call   play_wav
talk_to_STEPHANIE_branch_49:
   27523:	b8 1f 72 00 00       	mov    eax,@obj3:steph_cpp_variable_151                             ; fixup: num: 6284, src obj: 1, src ofs: 0x27524, dst obj: 3, dst ofs: 0x721f
   27528:	e8 63 52 04 00       	call   check_script_flag
   2752d:	84 c0                	test   al,al
   2752f:	0f 84 7f 00 00 00    	je     talk_to_STEPHANIE_branch_50
   27535:	83 3d 8c 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:STEPHANIE_variable_16,0x0                 ; fixup: num: 6283, src obj: 1, src ofs: 0x27537, dst obj: 3, dst ofs: 0x22e8c
   2753c:	75 76                	jne    talk_to_STEPHANIE_branch_50
   2753e:	be 01 00 00 00       	mov    esi,0x1
   27543:	ba 2f 72 00 00       	mov    edx,@obj3:steph_cpp_variable_152                             ; fixup: num: 6282, src obj: 1, src ofs: 0x27544, dst obj: 3, dst ofs: 0x722f
   27548:	b8 eb 48 00 00       	mov    eax,0x48eb
   2754d:	89 f3                	mov    ebx,esi
   2754f:	89 35 8c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_16,esi                 ; fixup: num: 6161, src obj: 1, src ofs: 0x27551, dst obj: 3, dst ofs: 0x22e8c
   27555:	e8 36 31 04 00       	call   play_wav
   2755a:	b8 e3 02 00 00       	mov    eax,0x2e3
   2755f:	e8 3c 2c 00 00       	call   GetDlgFileString
   27564:	e8 a7 39 04 00       	call   get_response
   27569:	39 f0                	cmp    eax,esi
   2756b:	75 47                	jne    talk_to_STEPHANIE_branch_50
   2756d:	bb 03 00 00 00       	mov    ebx,0x3
   27572:	ba 39 72 00 00       	mov    edx,@obj3:steph_cpp_variable_153                             ; fixup: num: 6160, src obj: 1, src ofs: 0x27573, dst obj: 3, dst ofs: 0x7239
   27577:	b8 f7 48 00 00       	mov    eax,0x48f7
   2757c:	e8 0f 31 04 00       	call   play_wav
   27581:	ba 43 72 00 00       	mov    edx,@obj3:steph_cpp_variable_154                             ; fixup: num: 6159, src obj: 1, src ofs: 0x27582, dst obj: 3, dst ofs: 0x7243
   27586:	b8 08 49 00 00       	mov    eax,0x4908
   2758b:	31 db                	xor    ebx,ebx
   2758d:	e8 fe 30 04 00       	call   play_wav
   27592:	ba 46 72 00 00       	mov    edx,@obj3:steph_cpp_variable_155                             ; fixup: num: 6158, src obj: 1, src ofs: 0x27593, dst obj: 3, dst ofs: 0x7246
   27597:	b8 0d 49 00 00       	mov    eax,0x490d
   2759c:	31 db                	xor    ebx,ebx
   2759e:	e8 ed 30 04 00       	call   play_wav
   275a3:	ba 50 72 00 00       	mov    edx,@obj3:steph_cpp_variable_156                             ; fixup: num: 6157, src obj: 1, src ofs: 0x275a4, dst obj: 3, dst ofs: 0x7250
   275a8:	b8 12 49 00 00       	mov    eax,0x4912
   275ad:	31 db                	xor    ebx,ebx
   275af:	e8 dc 30 04 00       	call   play_wav
talk_to_STEPHANIE_branch_50:
   275b4:	b8 53 72 00 00       	mov    eax,@obj3:steph_cpp_variable_157                             ; fixup: num: 6156, src obj: 1, src ofs: 0x275b5, dst obj: 3, dst ofs: 0x7253
   275b9:	e8 d2 51 04 00       	call   check_script_flag
   275be:	84 c0                	test   al,al
   275c0:	0f 84 13 01 00 00    	je     talk_to_STEPHANIE_branch_53
   275c6:	83 3d 90 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:STEPHANIE_variable_17,0x0                 ; fixup: num: 6155, src obj: 1, src ofs: 0x275c8, dst obj: 3, dst ofs: 0x22e90
   275cd:	0f 85 06 01 00 00    	jne    talk_to_STEPHANIE_branch_53
   275d3:	b8 01 00 00 00       	mov    eax,0x1
   275d8:	31 d2                	xor    edx,edx
   275da:	e8 71 0c 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   275df:	85 c0                	test   eax,eax
   275e1:	0f 84 f2 00 00 00    	je     talk_to_STEPHANIE_branch_53
   275e7:	bd 01 00 00 00       	mov    ebp,0x1
   275ec:	ba 62 72 00 00       	mov    edx,@obj3:steph_cpp_variable_158                             ; fixup: num: 6154, src obj: 1, src ofs: 0x275ed, dst obj: 3, dst ofs: 0x7262
   275f1:	b8 57 49 00 00       	mov    eax,0x4957
   275f6:	31 db                	xor    ebx,ebx
   275f8:	89 2d 90 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_17,ebp                 ; fixup: num: 6153, src obj: 1, src ofs: 0x275fa, dst obj: 3, dst ofs: 0x22e90
   275fe:	e8 8d 30 04 00       	call   play_wav
   27603:	ba 6c 72 00 00       	mov    edx,@obj3:steph_cpp_variable_159                             ; fixup: num: 6170, src obj: 1, src ofs: 0x27604, dst obj: 3, dst ofs: 0x726c
   27608:	b8 5b 49 00 00       	mov    eax,0x495b
   2760d:	31 db                	xor    ebx,ebx
   2760f:	e8 7c 30 04 00       	call   play_wav
   27614:	ba 6f 72 00 00       	mov    edx,@obj3:steph_cpp_variable_160                             ; fixup: num: 6169, src obj: 1, src ofs: 0x27615, dst obj: 3, dst ofs: 0x726f
   27619:	b8 60 49 00 00       	mov    eax,0x4960
   2761e:	31 db                	xor    ebx,ebx
   27620:	e8 6b 30 04 00       	call   play_wav
   27625:	ba 79 72 00 00       	mov    edx,@obj3:steph_cpp_variable_161                             ; fixup: num: 6168, src obj: 1, src ofs: 0x27626, dst obj: 3, dst ofs: 0x7279
   2762a:	b8 65 49 00 00       	mov    eax,0x4965
   2762f:	31 db                	xor    ebx,ebx
   27631:	e8 5a 30 04 00       	call   play_wav
   27636:	ba 7c 72 00 00       	mov    edx,@obj3:steph_cpp_variable_162                             ; fixup: num: 6167, src obj: 1, src ofs: 0x27637, dst obj: 3, dst ofs: 0x727c
   2763b:	b8 69 49 00 00       	mov    eax,0x4969
   27640:	31 db                	xor    ebx,ebx
   27642:	e8 49 30 04 00       	call   play_wav
   27647:	a1 5c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_4                            ; fixup: num: 6166, src obj: 1, src ofs: 0x27648, dst obj: 3, dst ofs: 0x22e5c
   2764c:	85 c0                	test   eax,eax
   2764e:	74 11                	je     talk_to_STEPHANIE_branch_51
   27650:	ba 86 72 00 00       	mov    edx,@obj3:steph_cpp_variable_163                             ; fixup: num: 6165, src obj: 1, src ofs: 0x27651, dst obj: 3, dst ofs: 0x7286
   27655:	b8 70 49 00 00       	mov    eax,0x4970
   2765a:	31 db                	xor    ebx,ebx
   2765c:	e8 2f 30 04 00       	call   play_wav
talk_to_STEPHANIE_branch_51:
   27661:	ba 90 72 00 00       	mov    edx,@obj3:steph_cpp_variable_164                             ; fixup: num: 6164, src obj: 1, src ofs: 0x27662, dst obj: 3, dst ofs: 0x7290
   27666:	b8 75 49 00 00       	mov    eax,0x4975
   2766b:	31 db                	xor    ebx,ebx
   2766d:	e8 1e 30 04 00       	call   play_wav
   27672:	b8 01 00 00 00       	mov    eax,0x1
   27677:	31 d2                	xor    edx,edx
   27679:	e8 c2 0d 00 00       	call   POTTSDAM_CLAIMED_HE_WAS_HOME
   2767e:	85 c0                	test   eax,eax
   27680:	74 14                	je     talk_to_STEPHANIE_branch_52
   27682:	bb 02 00 00 00       	mov    ebx,0x2
   27687:	ba 9a 72 00 00       	mov    edx,@obj3:steph_cpp_variable_165                             ; fixup: num: 6163, src obj: 1, src ofs: 0x27688, dst obj: 3, dst ofs: 0x729a
   2768c:	b8 80 49 00 00       	mov    eax,0x4980
   27691:	e8 fa 2f 04 00       	call   play_wav
talk_to_STEPHANIE_branch_52:
   27696:	b8 01 00 00 00       	mov    eax,0x1
   2769b:	31 d2                	xor    edx,edx
   2769d:	e8 be 0d 00 00       	call   MRS_POTTSDAM_CLAIMED_HE_WAS_HOME
   276a2:	85 c0                	test   eax,eax
   276a4:	74 33                	je     talk_to_STEPHANIE_branch_53
   276a6:	ba 9d 72 00 00       	mov    edx,@obj3:steph_cpp_variable_166                             ; fixup: num: 6162, src obj: 1, src ofs: 0x276a7, dst obj: 3, dst ofs: 0x729d
   276ab:	b8 84 49 00 00       	mov    eax,0x4984
   276b0:	31 db                	xor    ebx,ebx
   276b2:	e8 d9 2f 04 00       	call   play_wav
   276b7:	ba a0 72 00 00       	mov    edx,@obj3:steph_cpp_variable_167                             ; fixup: num: 6180, src obj: 1, src ofs: 0x276b8, dst obj: 3, dst ofs: 0x72a0
   276bc:	b8 89 49 00 00       	mov    eax,0x4989
   276c1:	31 db                	xor    ebx,ebx
   276c3:	e8 c8 2f 04 00       	call   play_wav
   276c8:	ba aa 72 00 00       	mov    edx,@obj3:steph_cpp_variable_168                             ; fixup: num: 6179, src obj: 1, src ofs: 0x276c9, dst obj: 3, dst ofs: 0x72aa
   276cd:	b8 8f 49 00 00       	mov    eax,0x498f
   276d2:	31 db                	xor    ebx,ebx
   276d4:	e8 b7 2f 04 00       	call   play_wav
talk_to_STEPHANIE_branch_53:
   276d9:	b8 b4 72 00 00       	mov    eax,@obj3:steph_cpp_variable_169                             ; fixup: num: 6178, src obj: 1, src ofs: 0x276da, dst obj: 3, dst ofs: 0x72b4
   276de:	e8 ad 50 04 00       	call   check_script_flag
   276e3:	84 c0                	test   al,al
   276e5:	75 12                	jne    talk_to_STEPHANIE_branch_54
   276e7:	b8 c6 72 00 00       	mov    eax,@obj3:steph_cpp_variable_170                             ; fixup: num: 6177, src obj: 1, src ofs: 0x276e8, dst obj: 3, dst ofs: 0x72c6
   276ec:	e8 9f 50 04 00       	call   check_script_flag
   276f1:	84 c0                	test   al,al
   276f3:	0f 84 2c 01 00 00    	je     talk_to_STEPHANIE_branch_57
talk_to_STEPHANIE_branch_54:
   276f9:	83 3d 94 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:STEPHANIE_variable_18,0x0                 ; fixup: num: 6176, src obj: 1, src ofs: 0x276fb, dst obj: 3, dst ofs: 0x22e94
   27700:	0f 85 1f 01 00 00    	jne    talk_to_STEPHANIE_branch_57
   27706:	ba 01 00 00 00       	mov    edx,0x1
   2770b:	b8 96 49 00 00       	mov    eax,0x4996
   27710:	89 15 94 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_18,edx                 ; fixup: num: 6175, src obj: 1, src ofs: 0x27712, dst obj: 3, dst ofs: 0x22e94
   27716:	89 d3                	mov    ebx,edx
   27718:	ba d7 72 00 00       	mov    edx,@obj3:steph_cpp_variable_171                             ; fixup: num: 6174, src obj: 1, src ofs: 0x27719, dst obj: 3, dst ofs: 0x72d7
   2771d:	e8 6e 2f 04 00       	call   play_wav
   27722:	b8 e1 72 00 00       	mov    eax,@obj3:steph_cpp_variable_172                             ; fixup: num: 6173, src obj: 1, src ofs: 0x27723, dst obj: 3, dst ofs: 0x72e1
   27727:	e8 64 50 04 00       	call   check_script_flag
   2772c:	84 c0                	test   al,al
   2772e:	0f 84 8d 00 00 00    	je     talk_to_STEPHANIE_branch_55
   27734:	bb 02 00 00 00       	mov    ebx,0x2
   27739:	ba f3 72 00 00       	mov    edx,@obj3:steph_cpp_variable_173                             ; fixup: num: 6172, src obj: 1, src ofs: 0x2773a, dst obj: 3, dst ofs: 0x72f3
   2773e:	b8 9a 49 00 00       	mov    eax,0x499a
   27743:	e8 48 2f 04 00       	call   play_wav
   27748:	bb 02 00 00 00       	mov    ebx,0x2
   2774d:	ba f6 72 00 00       	mov    edx,@obj3:steph_cpp_variable_174                             ; fixup: num: 6171, src obj: 1, src ofs: 0x2774e, dst obj: 3, dst ofs: 0x72f6
   27752:	b8 a1 49 00 00       	mov    eax,0x49a1
   27757:	e8 34 2f 04 00       	call   play_wav
   2775c:	ba 00 73 00 00       	mov    edx,@obj3:steph_cpp_variable_175                             ; fixup: num: 6189, src obj: 1, src ofs: 0x2775d, dst obj: 3, dst ofs: 0x7300
   27761:	b8 ad 49 00 00       	mov    eax,0x49ad
   27766:	31 db                	xor    ebx,ebx
   27768:	e8 23 2f 04 00       	call   play_wav
   2776d:	bb 04 00 00 00       	mov    ebx,0x4
   27772:	ba 03 73 00 00       	mov    edx,@obj3:steph_cpp_variable_176                             ; fixup: num: 6188, src obj: 1, src ofs: 0x27773, dst obj: 3, dst ofs: 0x7303
   27777:	b8 b1 49 00 00       	mov    eax,0x49b1
   2777c:	e8 0f 2f 04 00       	call   play_wav
   27781:	ba 0d 73 00 00       	mov    edx,@obj3:steph_cpp_variable_177                             ; fixup: num: 6187, src obj: 1, src ofs: 0x27782, dst obj: 3, dst ofs: 0x730d
   27786:	b8 b6 49 00 00       	mov    eax,0x49b6
   2778b:	31 db                	xor    ebx,ebx
   2778d:	e8 fe 2e 04 00       	call   play_wav
   27792:	ba 10 73 00 00       	mov    edx,@obj3:steph_cpp_variable_178                             ; fixup: num: 6186, src obj: 1, src ofs: 0x27793, dst obj: 3, dst ofs: 0x7310
   27797:	b8 ba 49 00 00       	mov    eax,0x49ba
   2779c:	31 db                	xor    ebx,ebx
   2779e:	e8 ed 2e 04 00       	call   play_wav
   277a3:	b8 01 00 00 00       	mov    eax,0x1
   277a8:	31 d2                	xor    edx,edx
   277aa:	e8 d1 0c 00 00       	call   SHERIFF_ALREADY_TOLD_PC_HE_DIDN_T_BELIEVE_KARIN
   277af:	85 c0                	test   eax,eax
   277b1:	74 72                	je     talk_to_STEPHANIE_branch_57
   277b3:	ba 1a 73 00 00       	mov    edx,@obj3:steph_cpp_variable_179                             ; fixup: num: 6185, src obj: 1, src ofs: 0x277b4, dst obj: 3, dst ofs: 0x731a
   277b8:	b8 c1 49 00 00       	mov    eax,0x49c1
   277bd:	31 db                	xor    ebx,ebx
   277bf:	eb 37                	jmp    talk_to_STEPHANIE_branch_56
talk_to_STEPHANIE_branch_55:
   277c1:	bb 03 00 00 00       	mov    ebx,0x3
   277c6:	ba 24 73 00 00       	mov    edx,@obj3:steph_cpp_variable_180                             ; fixup: num: 6184, src obj: 1, src ofs: 0x277c7, dst obj: 3, dst ofs: 0x7324
   277cb:	b8 da 49 00 00       	mov    eax,0x49da
   277d0:	e8 bb 2e 04 00       	call   play_wav
   277d5:	bb 03 00 00 00       	mov    ebx,0x3
   277da:	ba 27 73 00 00       	mov    edx,@obj3:steph_cpp_variable_181                             ; fixup: num: 6183, src obj: 1, src ofs: 0x277db, dst obj: 3, dst ofs: 0x7327
   277df:	b8 e0 49 00 00       	mov    eax,0x49e0
   277e4:	e8 a7 2e 04 00       	call   play_wav
   277e9:	bb 03 00 00 00       	mov    ebx,0x3
   277ee:	ba 31 73 00 00       	mov    edx,@obj3:steph_cpp_variable_182                             ; fixup: num: 6182, src obj: 1, src ofs: 0x277ef, dst obj: 3, dst ofs: 0x7331
   277f3:	b8 e4 49 00 00       	mov    eax,0x49e4
talk_to_STEPHANIE_branch_56:
   277f8:	e8 93 2e 04 00       	call   play_wav
   277fd:	bb 02 00 00 00       	mov    ebx,0x2
   27802:	ba 34 73 00 00       	mov    edx,@obj3:steph_cpp_variable_183                             ; fixup: num: 6181, src obj: 1, src ofs: 0x27803, dst obj: 3, dst ofs: 0x7334
   27807:	b8 ea 49 00 00       	mov    eax,0x49ea
   2780c:	e8 7f 2e 04 00       	call   play_wav
   27811:	bb 02 00 00 00       	mov    ebx,0x2
   27816:	ba 3e 73 00 00       	mov    edx,@obj3:steph_cpp_variable_184                             ; fixup: num: 6194, src obj: 1, src ofs: 0x27817, dst obj: 3, dst ofs: 0x733e
   2781b:	b8 ef 49 00 00       	mov    eax,0x49ef
   27820:	e9 2b 07 00 00       	jmp    talk_to_STEPHANIE_branch_101
talk_to_STEPHANIE_branch_57:
   27825:	be 41 73 00 00       	mov    esi,@obj3:steph_cpp_variable_185                             ; fixup: num: 6193, src obj: 1, src ofs: 0x27826, dst obj: 3, dst ofs: 0x7341
   2782a:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 6192, src obj: 1, src ofs: 0x2782b, dst obj: 3, dst ofs: 0x294c0
   2782f:	57                   	push   edi
talk_to_STEPHANIE_branch_58:
   27830:	8a 06                	mov    al,BYTE PTR [esi]
   27832:	88 07                	mov    BYTE PTR [edi],al
   27834:	3c 00                	cmp    al,0x0
   27836:	74 10                	je     talk_to_STEPHANIE_branch_59
   27838:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2783b:	83 c6 02             	add    esi,0x2
   2783e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   27841:	83 c7 02             	add    edi,0x2
   27844:	3c 00                	cmp    al,0x0
   27846:	75 e8                	jne    talk_to_STEPHANIE_branch_58
talk_to_STEPHANIE_branch_59:
   27848:	5f                   	pop    edi
   27849:	89 fd                	mov    ebp,edi
   2784b:	31 c9                	xor    ecx,ecx
talk_to_STEPHANIE_branch_60:
   2784d:	b8 e4 02 00 00       	mov    eax,0x2e4
   27852:	e8 49 29 00 00       	call   GetDlgFileString
   27857:	89 c2                	mov    edx,eax
   27859:	89 e8                	mov    eax,ebp
   2785b:	e8 fa 9b 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27860:	85 c0                	test   eax,eax
   27862:	0f 84 dc 06 00 00    	je     talk_to_STEPHANIE_branch_100
   27868:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 6191, src obj: 1, src ofs: 0x27869, dst obj: 3, dst ofs: 0x295c0
   2786d:	e8 ce 41 04 00       	call   show_keywords
   27872:	b8 e5 02 00 00       	mov    eax,0x2e5
   27877:	e8 24 29 00 00       	call   GetDlgFileString
   2787c:	89 c2                	mov    edx,eax
   2787e:	89 e8                	mov    eax,ebp
   27880:	e8 d5 9b 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27885:	85 c0                	test   eax,eax
   27887:	74 1b                	je     talk_to_STEPHANIE_branch_61
   27889:	b8 e6 02 00 00       	mov    eax,0x2e6
   2788e:	e8 0d 29 00 00       	call   GetDlgFileString
   27893:	89 c2                	mov    edx,eax
   27895:	89 e8                	mov    eax,ebp
   27897:	e8 be 9b 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2789c:	85 c0                	test   eax,eax
   2789e:	0f 85 17 01 00 00    	jne    talk_to_STEPHANIE_branch_70
talk_to_STEPHANIE_branch_61:
   278a4:	ba 42 73 00 00       	mov    edx,@obj3:steph_cpp_variable_186                             ; fixup: num: 6190, src obj: 1, src ofs: 0x278a5, dst obj: 3, dst ofs: 0x7342
   278a9:	b8 06 44 00 00       	mov    eax,0x4406
   278ae:	89 cb                	mov    ebx,ecx
   278b0:	e8 db 2d 04 00       	call   play_wav
   278b5:	b8 e7 02 00 00       	mov    eax,0x2e7
   278ba:	e8 e1 28 00 00       	call   GetDlgFileString
   278bf:	e8 4c 36 04 00       	call   get_response
   278c4:	83 f8 01             	cmp    eax,0x1
   278c7:	0f 85 75 00 00 00    	jne    talk_to_STEPHANIE_branch_65
   278cd:	ba 4c 73 00 00       	mov    edx,@obj3:steph_cpp_variable_187                             ; fixup: num: 6202, src obj: 1, src ofs: 0x278ce, dst obj: 3, dst ofs: 0x734c
   278d2:	b8 12 44 00 00       	mov    eax,0x4412
   278d7:	89 cb                	mov    ebx,ecx
   278d9:	e8 b2 2d 04 00       	call   play_wav
   278de:	ba 56 73 00 00       	mov    edx,@obj3:steph_cpp_variable_188                             ; fixup: num: 6201, src obj: 1, src ofs: 0x278df, dst obj: 3, dst ofs: 0x7356
   278e3:	b8 16 44 00 00       	mov    eax,0x4416
   278e8:	89 cb                	mov    ebx,ecx
   278ea:	e8 a1 2d 04 00       	call   play_wav
   278ef:	ba 59 73 00 00       	mov    edx,@obj3:steph_cpp_variable_189                             ; fixup: num: 6200, src obj: 1, src ofs: 0x278f0, dst obj: 3, dst ofs: 0x7359
   278f4:	b8 1a 44 00 00       	mov    eax,0x441a
   278f9:	89 cb                	mov    ebx,ecx
   278fb:	e8 90 2d 04 00       	call   play_wav
   27900:	b8 e8 02 00 00       	mov    eax,0x2e8
   27905:	e8 96 28 00 00       	call   GetDlgFileString
   2790a:	e8 01 36 04 00       	call   get_response
   2790f:	83 f8 01             	cmp    eax,0x1
   27912:	75 0c                	jne    talk_to_STEPHANIE_branch_62
   27914:	ba 63 73 00 00       	mov    edx,@obj3:steph_cpp_variable_190                             ; fixup: num: 6199, src obj: 1, src ofs: 0x27915, dst obj: 3, dst ofs: 0x7363
   27919:	b8 27 44 00 00       	mov    eax,0x4427
   2791e:	eb 0f                	jmp    talk_to_STEPHANIE_branch_63
talk_to_STEPHANIE_branch_62:
   27920:	83 f8 02             	cmp    eax,0x2
   27923:	75 11                	jne    talk_to_STEPHANIE_branch_64
   27925:	ba 6d 73 00 00       	mov    edx,@obj3:steph_cpp_variable_191                             ; fixup: num: 6198, src obj: 1, src ofs: 0x27926, dst obj: 3, dst ofs: 0x736d
   2792a:	b8 2c 44 00 00       	mov    eax,0x442c
talk_to_STEPHANIE_branch_63:
   2792f:	89 cb                	mov    ebx,ecx
   27931:	e8 5a 2d 04 00       	call   play_wav
talk_to_STEPHANIE_branch_64:
   27936:	ba 77 73 00 00       	mov    edx,@obj3:steph_cpp_variable_192                             ; fixup: num: 6197, src obj: 1, src ofs: 0x27937, dst obj: 3, dst ofs: 0x7377
   2793b:	b8 30 44 00 00       	mov    eax,0x4430
   27940:	eb 31                	jmp    talk_to_STEPHANIE_branch_66
talk_to_STEPHANIE_branch_65:
   27942:	83 f8 02             	cmp    eax,0x2
   27945:	75 33                	jne    talk_to_STEPHANIE_branch_67
   27947:	ba 7a 73 00 00       	mov    edx,@obj3:steph_cpp_variable_193                             ; fixup: num: 6196, src obj: 1, src ofs: 0x27948, dst obj: 3, dst ofs: 0x737a
   2794c:	b8 34 44 00 00       	mov    eax,0x4434
   27951:	89 cb                	mov    ebx,ecx
   27953:	e8 38 2d 04 00       	call   play_wav
   27958:	ba 84 73 00 00       	mov    edx,@obj3:steph_cpp_variable_194                             ; fixup: num: 6195, src obj: 1, src ofs: 0x27959, dst obj: 3, dst ofs: 0x7384
   2795d:	b8 39 44 00 00       	mov    eax,0x4439
   27962:	89 cb                	mov    ebx,ecx
   27964:	e8 27 2d 04 00       	call   play_wav
   27969:	ba 87 73 00 00       	mov    edx,@obj3:steph_cpp_variable_195                             ; fixup: num: 6208, src obj: 1, src ofs: 0x2796a, dst obj: 3, dst ofs: 0x7387
   2796e:	b8 3d 44 00 00       	mov    eax,0x443d
talk_to_STEPHANIE_branch_66:
   27973:	89 cb                	mov    ebx,ecx
   27975:	e8 16 2d 04 00       	call   play_wav
talk_to_STEPHANIE_branch_67:
   2797a:	ba 91 73 00 00       	mov    edx,@obj3:steph_cpp_variable_196                             ; fixup: num: 6207, src obj: 1, src ofs: 0x2797b, dst obj: 3, dst ofs: 0x7391
   2797f:	b8 41 44 00 00       	mov    eax,0x4441
   27984:	89 cb                	mov    ebx,ecx
   27986:	e8 05 2d 04 00       	call   play_wav
   2798b:	b8 e9 02 00 00       	mov    eax,0x2e9
   27990:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6206, src obj: 1, src ofs: 0x27991, dst obj: 3, dst ofs: 0x295c0
   27995:	e8 06 28 00 00       	call   GetDlgFileString
   2799a:	89 c6                	mov    esi,eax
   2799c:	57                   	push   edi
talk_to_STEPHANIE_branch_68:
   2799d:	8a 06                	mov    al,BYTE PTR [esi]
   2799f:	88 07                	mov    BYTE PTR [edi],al
   279a1:	3c 00                	cmp    al,0x0
   279a3:	74 10                	je     talk_to_STEPHANIE_branch_69
   279a5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   279a8:	83 c6 02             	add    esi,0x2
   279ab:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   279ae:	83 c7 02             	add    edi,0x2
   279b1:	3c 00                	cmp    al,0x0
   279b3:	75 e8                	jne    talk_to_STEPHANIE_branch_68
talk_to_STEPHANIE_branch_69:
   279b5:	5f                   	pop    edi
   279b6:	e9 92 fe ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_70:
   279bb:	b8 ea 02 00 00       	mov    eax,0x2ea
   279c0:	e8 db 27 00 00       	call   GetDlgFileString
   279c5:	89 c2                	mov    edx,eax
   279c7:	89 e8                	mov    eax,ebp
   279c9:	e8 8c 9a 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   279ce:	85 c0                	test   eax,eax
   279d0:	0f 85 dd 00 00 00    	jne    talk_to_STEPHANIE_branch_76
   279d6:	ba 9b 73 00 00       	mov    edx,@obj3:steph_cpp_variable_197                             ; fixup: num: 6205, src obj: 1, src ofs: 0x279d7, dst obj: 3, dst ofs: 0x739b
   279db:	b8 4b 44 00 00       	mov    eax,0x444b
   279e0:	89 cb                	mov    ebx,ecx
   279e2:	e8 a9 2c 04 00       	call   play_wav
   279e7:	ba a5 73 00 00       	mov    edx,@obj3:steph_cpp_variable_198                             ; fixup: num: 6204, src obj: 1, src ofs: 0x279e8, dst obj: 3, dst ofs: 0x73a5
   279ec:	b8 51 44 00 00       	mov    eax,0x4451
   279f1:	89 cb                	mov    ebx,ecx
   279f3:	e8 98 2c 04 00       	call   play_wav
   279f8:	ba a8 73 00 00       	mov    edx,@obj3:steph_cpp_variable_199                             ; fixup: num: 6203, src obj: 1, src ofs: 0x279f9, dst obj: 3, dst ofs: 0x73a8
   279fd:	b8 55 44 00 00       	mov    eax,0x4455
   27a02:	89 cb                	mov    ebx,ecx
   27a04:	e8 87 2c 04 00       	call   play_wav
   27a09:	b8 eb 02 00 00       	mov    eax,0x2eb
   27a0e:	e8 8d 27 00 00       	call   GetDlgFileString
   27a13:	e8 f8 34 04 00       	call   get_response
   27a18:	83 f8 01             	cmp    eax,0x1
   27a1b:	75 50                	jne    talk_to_STEPHANIE_branch_71
   27a1d:	ba b2 73 00 00       	mov    edx,@obj3:steph_cpp_variable_200                             ; fixup: num: 6215, src obj: 1, src ofs: 0x27a1e, dst obj: 3, dst ofs: 0x73b2
   27a22:	b8 63 44 00 00       	mov    eax,0x4463
   27a27:	89 cb                	mov    ebx,ecx
   27a29:	e8 62 2c 04 00       	call   play_wav
   27a2e:	ba bc 73 00 00       	mov    edx,@obj3:steph_cpp_variable_201                             ; fixup: num: 6214, src obj: 1, src ofs: 0x27a2f, dst obj: 3, dst ofs: 0x73bc
   27a33:	b8 6b 44 00 00       	mov    eax,0x446b
   27a38:	89 cb                	mov    ebx,ecx
   27a3a:	e8 51 2c 04 00       	call   play_wav
   27a3f:	ba bf 73 00 00       	mov    edx,@obj3:steph_cpp_variable_202                             ; fixup: num: 6213, src obj: 1, src ofs: 0x27a40, dst obj: 3, dst ofs: 0x73bf
   27a44:	b8 6f 44 00 00       	mov    eax,0x446f
   27a49:	89 cb                	mov    ebx,ecx
   27a4b:	e8 40 2c 04 00       	call   play_wav
   27a50:	ba c9 73 00 00       	mov    edx,@obj3:steph_cpp_variable_203                             ; fixup: num: 6212, src obj: 1, src ofs: 0x27a51, dst obj: 3, dst ofs: 0x73c9
   27a55:	b8 77 44 00 00       	mov    eax,0x4477
   27a5a:	89 cb                	mov    ebx,ecx
   27a5c:	e8 2f 2c 04 00       	call   play_wav
   27a61:	ba cc 73 00 00       	mov    edx,@obj3:steph_cpp_variable_204                             ; fixup: num: 6211, src obj: 1, src ofs: 0x27a62, dst obj: 3, dst ofs: 0x73cc
   27a66:	b8 7b 44 00 00       	mov    eax,0x447b
   27a6b:	eb 0f                	jmp    talk_to_STEPHANIE_branch_72
talk_to_STEPHANIE_branch_71:
   27a6d:	83 f8 02             	cmp    eax,0x2
   27a70:	75 11                	jne    talk_to_STEPHANIE_branch_73
   27a72:	ba d6 73 00 00       	mov    edx,@obj3:steph_cpp_variable_205                             ; fixup: num: 6210, src obj: 1, src ofs: 0x27a73, dst obj: 3, dst ofs: 0x73d6
   27a77:	b8 80 44 00 00       	mov    eax,0x4480
talk_to_STEPHANIE_branch_72:
   27a7c:	89 cb                	mov    ebx,ecx
   27a7e:	e8 0d 2c 04 00       	call   play_wav
talk_to_STEPHANIE_branch_73:
   27a83:	b8 ec 02 00 00       	mov    eax,0x2ec
   27a88:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6209, src obj: 1, src ofs: 0x27a89, dst obj: 3, dst ofs: 0x295c0
   27a8d:	e8 0e 27 00 00       	call   GetDlgFileString
   27a92:	89 c6                	mov    esi,eax
   27a94:	57                   	push   edi
talk_to_STEPHANIE_branch_74:
   27a95:	8a 06                	mov    al,BYTE PTR [esi]
   27a97:	88 07                	mov    BYTE PTR [edi],al
   27a99:	3c 00                	cmp    al,0x0
   27a9b:	74 10                	je     talk_to_STEPHANIE_branch_75
   27a9d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   27aa0:	83 c6 02             	add    esi,0x2
   27aa3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   27aa6:	83 c7 02             	add    edi,0x2
   27aa9:	3c 00                	cmp    al,0x0
   27aab:	75 e8                	jne    talk_to_STEPHANIE_branch_74
talk_to_STEPHANIE_branch_75:
   27aad:	5f                   	pop    edi
   27aae:	e9 9a fd ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_76:
   27ab3:	b8 ed 02 00 00       	mov    eax,0x2ed
   27ab8:	e8 e3 26 00 00       	call   GetDlgFileString
   27abd:	89 c2                	mov    edx,eax
   27abf:	89 e8                	mov    eax,ebp
   27ac1:	e8 94 99 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27ac6:	85 c0                	test   eax,eax
   27ac8:	0f 85 d1 00 00 00    	jne    talk_to_STEPHANIE_branch_82
   27ace:	ba e0 73 00 00       	mov    edx,@obj3:steph_cpp_variable_206                             ; fixup: num: 6101, src obj: 1, src ofs: 0x27acf, dst obj: 3, dst ofs: 0x73e0
   27ad3:	b8 8a 44 00 00       	mov    eax,0x448a
   27ad8:	89 cb                	mov    ebx,ecx
   27ada:	e8 b1 2b 04 00       	call   play_wav
   27adf:	b8 ee 02 00 00       	mov    eax,0x2ee
   27ae4:	e8 b7 26 00 00       	call   GetDlgFileString
   27ae9:	e8 22 34 04 00       	call   get_response
   27aee:	83 f8 01             	cmp    eax,0x1
   27af1:	75 11                	jne    talk_to_STEPHANIE_branch_77
   27af3:	bb 02 00 00 00       	mov    ebx,0x2
   27af8:	ba ea 73 00 00       	mov    edx,@obj3:steph_cpp_variable_207                             ; fixup: num: 6222, src obj: 1, src ofs: 0x27af9, dst obj: 3, dst ofs: 0x73ea
   27afd:	b8 95 44 00 00       	mov    eax,0x4495
   27b02:	eb 22                	jmp    talk_to_STEPHANIE_branch_78
talk_to_STEPHANIE_branch_77:
   27b04:	83 f8 02             	cmp    eax,0x2
   27b07:	75 22                	jne    talk_to_STEPHANIE_branch_79
   27b09:	ba f4 73 00 00       	mov    edx,@obj3:steph_cpp_variable_208                             ; fixup: num: 6221, src obj: 1, src ofs: 0x27b0a, dst obj: 3, dst ofs: 0x73f4
   27b0e:	b8 99 44 00 00       	mov    eax,0x4499
   27b13:	89 cb                	mov    ebx,ecx
   27b15:	e8 76 2b 04 00       	call   play_wav
   27b1a:	ba fe 73 00 00       	mov    edx,@obj3:steph_cpp_variable_209                             ; fixup: num: 6220, src obj: 1, src ofs: 0x27b1b, dst obj: 3, dst ofs: 0x73fe
   27b1f:	b8 9e 44 00 00       	mov    eax,0x449e
   27b24:	89 cb                	mov    ebx,ecx
talk_to_STEPHANIE_branch_78:
   27b26:	e8 65 2b 04 00       	call   play_wav
talk_to_STEPHANIE_branch_79:
   27b2b:	ba 01 74 00 00       	mov    edx,@obj3:steph_cpp_variable_210                             ; fixup: num: 6219, src obj: 1, src ofs: 0x27b2c, dst obj: 3, dst ofs: 0x7401
   27b30:	b8 a2 44 00 00       	mov    eax,0x44a2
   27b35:	89 cb                	mov    ebx,ecx
   27b37:	e8 54 2b 04 00       	call   play_wav
   27b3c:	ba 04 74 00 00       	mov    edx,@obj3:steph_cpp_variable_211                             ; fixup: num: 6218, src obj: 1, src ofs: 0x27b3d, dst obj: 3, dst ofs: 0x7404
   27b41:	b8 a6 44 00 00       	mov    eax,0x44a6
   27b46:	89 cb                	mov    ebx,ecx
   27b48:	e8 43 2b 04 00       	call   play_wav
   27b4d:	ba 0e 74 00 00       	mov    edx,@obj3:steph_cpp_variable_212                             ; fixup: num: 6217, src obj: 1, src ofs: 0x27b4e, dst obj: 3, dst ofs: 0x740e
   27b52:	b8 ab 44 00 00       	mov    eax,0x44ab
   27b57:	89 cb                	mov    ebx,ecx
   27b59:	e8 32 2b 04 00       	call   play_wav
   27b5e:	ba 11 74 00 00       	mov    edx,@obj3:steph_cpp_variable_213                             ; fixup: num: 6216, src obj: 1, src ofs: 0x27b5f, dst obj: 3, dst ofs: 0x7411
   27b63:	b8 af 44 00 00       	mov    eax,0x44af
   27b68:	89 cb                	mov    ebx,ecx
   27b6a:	e8 21 2b 04 00       	call   play_wav
   27b6f:	b8 ef 02 00 00       	mov    eax,0x2ef
   27b74:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6108, src obj: 1, src ofs: 0x27b75, dst obj: 3, dst ofs: 0x295c0
   27b79:	e8 22 26 00 00       	call   GetDlgFileString
   27b7e:	89 c6                	mov    esi,eax
   27b80:	57                   	push   edi
talk_to_STEPHANIE_branch_80:
   27b81:	8a 06                	mov    al,BYTE PTR [esi]
   27b83:	88 07                	mov    BYTE PTR [edi],al
   27b85:	3c 00                	cmp    al,0x0
   27b87:	74 10                	je     talk_to_STEPHANIE_branch_81
   27b89:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   27b8c:	83 c6 02             	add    esi,0x2
   27b8f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   27b92:	83 c7 02             	add    edi,0x2
   27b95:	3c 00                	cmp    al,0x0
   27b97:	75 e8                	jne    talk_to_STEPHANIE_branch_80
talk_to_STEPHANIE_branch_81:
   27b99:	5f                   	pop    edi
   27b9a:	e9 ae fc ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_82:
   27b9f:	b8 f0 02 00 00       	mov    eax,0x2f0
   27ba4:	e8 f7 25 00 00       	call   GetDlgFileString
   27ba9:	89 c2                	mov    edx,eax
   27bab:	89 e8                	mov    eax,ebp
   27bad:	e8 a8 98 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27bb2:	85 c0                	test   eax,eax
   27bb4:	0f 85 aa 00 00 00    	jne    talk_to_STEPHANIE_branch_85
   27bba:	ba 1b 74 00 00       	mov    edx,@obj3:steph_cpp_variable_214                             ; fixup: num: 6107, src obj: 1, src ofs: 0x27bbb, dst obj: 3, dst ofs: 0x741b
   27bbf:	b8 ba 44 00 00       	mov    eax,0x44ba
   27bc4:	89 cb                	mov    ebx,ecx
   27bc6:	e8 c5 2a 04 00       	call   play_wav
   27bcb:	ba 25 74 00 00       	mov    edx,@obj3:steph_cpp_variable_215                             ; fixup: num: 6106, src obj: 1, src ofs: 0x27bcc, dst obj: 3, dst ofs: 0x7425
   27bd0:	b8 bf 44 00 00       	mov    eax,0x44bf
   27bd5:	89 cb                	mov    ebx,ecx
   27bd7:	e8 b4 2a 04 00       	call   play_wav
   27bdc:	bb 01 00 00 00       	mov    ebx,0x1
   27be1:	ba 28 74 00 00       	mov    edx,@obj3:steph_cpp_variable_216                             ; fixup: num: 6105, src obj: 1, src ofs: 0x27be2, dst obj: 3, dst ofs: 0x7428
   27be6:	b8 c4 44 00 00       	mov    eax,0x44c4
   27beb:	e8 a0 2a 04 00       	call   play_wav
   27bf0:	ba 32 74 00 00       	mov    edx,@obj3:steph_cpp_variable_217                             ; fixup: num: 6104, src obj: 1, src ofs: 0x27bf1, dst obj: 3, dst ofs: 0x7432
   27bf5:	b8 c9 44 00 00       	mov    eax,0x44c9
   27bfa:	89 cb                	mov    ebx,ecx
   27bfc:	e8 8f 2a 04 00       	call   play_wav
   27c01:	ba 35 74 00 00       	mov    edx,@obj3:steph_cpp_variable_218                             ; fixup: num: 6103, src obj: 1, src ofs: 0x27c02, dst obj: 3, dst ofs: 0x7435
   27c06:	b8 ce 44 00 00       	mov    eax,0x44ce
   27c0b:	89 cb                	mov    ebx,ecx
   27c0d:	e8 7e 2a 04 00       	call   play_wav
   27c12:	ba 3f 74 00 00       	mov    edx,@obj3:steph_cpp_variable_219                             ; fixup: num: 6102, src obj: 1, src ofs: 0x27c13, dst obj: 3, dst ofs: 0x743f
   27c17:	b8 dd 44 00 00       	mov    eax,0x44dd
   27c1c:	89 cb                	mov    ebx,ecx
   27c1e:	e8 6d 2a 04 00       	call   play_wav
   27c23:	ba 42 74 00 00       	mov    edx,@obj3:steph_cpp_variable_220                             ; fixup: num: 6113, src obj: 1, src ofs: 0x27c24, dst obj: 3, dst ofs: 0x7442
   27c28:	b8 e9 44 00 00       	mov    eax,0x44e9
   27c2d:	89 cb                	mov    ebx,ecx
   27c2f:	e8 5c 2a 04 00       	call   play_wav
   27c34:	b8 f2 02 00 00       	mov    eax,0x2f2
   27c39:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6112, src obj: 1, src ofs: 0x27c3a, dst obj: 3, dst ofs: 0x295c0
   27c3e:	e8 5d 25 00 00       	call   GetDlgFileString
   27c43:	89 c6                	mov    esi,eax
   27c45:	57                   	push   edi
talk_to_STEPHANIE_branch_83:
   27c46:	8a 06                	mov    al,BYTE PTR [esi]
   27c48:	88 07                	mov    BYTE PTR [edi],al
   27c4a:	3c 00                	cmp    al,0x0
   27c4c:	74 10                	je     talk_to_STEPHANIE_branch_84
   27c4e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   27c51:	83 c6 02             	add    esi,0x2
   27c54:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   27c57:	83 c7 02             	add    edi,0x2
   27c5a:	3c 00                	cmp    al,0x0
   27c5c:	75 e8                	jne    talk_to_STEPHANIE_branch_83
talk_to_STEPHANIE_branch_84:
   27c5e:	5f                   	pop    edi
   27c5f:	e9 e9 fb ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_85:
   27c64:	b8 f3 02 00 00       	mov    eax,0x2f3
   27c69:	e8 32 25 00 00       	call   GetDlgFileString
   27c6e:	89 c2                	mov    edx,eax
   27c70:	89 e8                	mov    eax,ebp
   27c72:	e8 e3 97 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27c77:	85 c0                	test   eax,eax
   27c79:	0f 85 ee 00 00 00    	jne    talk_to_STEPHANIE_branch_89
   27c7f:	bb 02 00 00 00       	mov    ebx,0x2
   27c84:	ba 4c 74 00 00       	mov    edx,@obj3:steph_cpp_variable_221                             ; fixup: num: 6111, src obj: 1, src ofs: 0x27c85, dst obj: 3, dst ofs: 0x744c
   27c89:	b8 f1 44 00 00       	mov    eax,0x44f1
   27c8e:	e8 fd 29 04 00       	call   play_wav
   27c93:	e8 a8 0d 00 00       	call   STEPHANIE_LOOKS_OUT_WINDOW_1
   27c98:	b8 01 00 00 00       	mov    eax,0x1
   27c9d:	89 ca                	mov    edx,ecx
   27c9f:	e8 1c 08 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   27ca4:	85 c0                	test   eax,eax
   27ca6:	74 0c                	je     talk_to_STEPHANIE_branch_86
   27ca8:	ba 56 74 00 00       	mov    edx,@obj3:steph_cpp_variable_222                             ; fixup: num: 6110, src obj: 1, src ofs: 0x27ca9, dst obj: 3, dst ofs: 0x7456
   27cad:	b8 05 45 00 00       	mov    eax,0x4505
   27cb2:	eb 0a                	jmp    talk_to_STEPHANIE_branch_87
talk_to_STEPHANIE_branch_86:
   27cb4:	ba 59 74 00 00       	mov    edx,@obj3:steph_cpp_variable_223                             ; fixup: num: 6109, src obj: 1, src ofs: 0x27cb5, dst obj: 3, dst ofs: 0x7459
   27cb9:	b8 0a 45 00 00       	mov    eax,0x450a
talk_to_STEPHANIE_branch_87:
   27cbe:	89 cb                	mov    ebx,ecx
   27cc0:	e8 cb 29 04 00       	call   play_wav
   27cc5:	b8 01 00 00 00       	mov    eax,0x1
   27cca:	89 ca                	mov    edx,ecx
   27ccc:	e8 ff 06 00 00       	call   TURNED_IN_APPLICATION
   27cd1:	85 c0                	test   eax,eax
   27cd3:	74 11                	je     talk_to_STEPHANIE_branch_88
   27cd5:	ba 5c 74 00 00       	mov    edx,@obj3:steph_cpp_variable_224                             ; fixup: num: 6121, src obj: 1, src ofs: 0x27cd6, dst obj: 3, dst ofs: 0x745c
   27cda:	b8 0f 45 00 00       	mov    eax,0x450f
   27cdf:	89 cb                	mov    ebx,ecx
   27ce1:	e8 aa 29 04 00       	call   play_wav
talk_to_STEPHANIE_branch_88:
   27ce6:	bb 02 00 00 00       	mov    ebx,0x2
   27ceb:	ba 5f 74 00 00       	mov    edx,@obj3:steph_cpp_variable_225                             ; fixup: num: 6120, src obj: 1, src ofs: 0x27cec, dst obj: 3, dst ofs: 0x745f
   27cf0:	b8 13 45 00 00       	mov    eax,0x4513
   27cf5:	e8 96 29 04 00       	call   play_wav
   27cfa:	ba 69 74 00 00       	mov    edx,@obj3:steph_cpp_variable_226                             ; fixup: num: 6119, src obj: 1, src ofs: 0x27cfb, dst obj: 3, dst ofs: 0x7469
   27cff:	b8 17 45 00 00       	mov    eax,0x4517
   27d04:	89 cb                	mov    ebx,ecx
   27d06:	e8 85 29 04 00       	call   play_wav
   27d0b:	bb 02 00 00 00       	mov    ebx,0x2
   27d10:	ba 6c 74 00 00       	mov    edx,@obj3:steph_cpp_variable_227                             ; fixup: num: 6118, src obj: 1, src ofs: 0x27d11, dst obj: 3, dst ofs: 0x746c
   27d15:	b8 1b 45 00 00       	mov    eax,0x451b
   27d1a:	e8 71 29 04 00       	call   play_wav
   27d1f:	ba 76 74 00 00       	mov    edx,@obj3:steph_cpp_variable_228                             ; fixup: num: 6117, src obj: 1, src ofs: 0x27d20, dst obj: 3, dst ofs: 0x7476
   27d24:	b8 1f 45 00 00       	mov    eax,0x451f
   27d29:	89 cb                	mov    ebx,ecx
   27d2b:	e8 60 29 04 00       	call   play_wav
   27d30:	ba 79 74 00 00       	mov    edx,@obj3:steph_cpp_variable_229                             ; fixup: num: 6116, src obj: 1, src ofs: 0x27d31, dst obj: 3, dst ofs: 0x7479
   27d35:	b8 23 45 00 00       	mov    eax,0x4523
   27d3a:	89 cb                	mov    ebx,ecx
   27d3c:	e8 4f 29 04 00       	call   play_wav
   27d41:	ba 83 74 00 00       	mov    edx,@obj3:steph_cpp_variable_230                             ; fixup: num: 6115, src obj: 1, src ofs: 0x27d42, dst obj: 3, dst ofs: 0x7483
   27d46:	b8 2a 45 00 00       	mov    eax,0x452a
   27d4b:	89 cb                	mov    ebx,ecx
   27d4d:	e8 3e 29 04 00       	call   play_wav
   27d52:	ba 86 74 00 00       	mov    edx,@obj3:steph_cpp_variable_231                             ; fixup: num: 6114, src obj: 1, src ofs: 0x27d53, dst obj: 3, dst ofs: 0x7486
   27d57:	b8 2e 45 00 00       	mov    eax,0x452e
   27d5c:	89 cb                	mov    ebx,ecx
   27d5e:	e8 2d 29 04 00       	call   play_wav
   27d63:	e8 e8 0c 00 00       	call   STEPHANIE_LOOKS_OUT_WINDOW_2
   27d68:	e9 e0 fa ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_89:
   27d6d:	b8 f6 02 00 00       	mov    eax,0x2f6
   27d72:	e8 29 24 00 00       	call   GetDlgFileString
   27d77:	89 c2                	mov    edx,eax
   27d79:	89 e8                	mov    eax,ebp
   27d7b:	e8 da 96 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27d80:	85 c0                	test   eax,eax
   27d82:	0f 85 90 00 00 00    	jne    talk_to_STEPHANIE_branch_95
   27d88:	ba 90 74 00 00       	mov    edx,@obj3:steph_cpp_variable_232                             ; fixup: num: 6126, src obj: 1, src ofs: 0x27d89, dst obj: 3, dst ofs: 0x7490
   27d8d:	b8 3d 45 00 00       	mov    eax,0x453d
   27d92:	89 cb                	mov    ebx,ecx
   27d94:	e8 f7 28 04 00       	call   play_wav
   27d99:	bb 02 00 00 00       	mov    ebx,0x2
   27d9e:	ba 93 74 00 00       	mov    edx,@obj3:steph_cpp_variable_233                             ; fixup: num: 6125, src obj: 1, src ofs: 0x27d9f, dst obj: 3, dst ofs: 0x7493
   27da3:	b8 41 45 00 00       	mov    eax,0x4541
   27da8:	e8 e3 28 04 00       	call   play_wav
   27dad:	b8 f7 02 00 00       	mov    eax,0x2f7
   27db2:	e8 e9 23 00 00       	call   GetDlgFileString
   27db7:	e8 54 31 04 00       	call   get_response
   27dbc:	83 f8 01             	cmp    eax,0x1
   27dbf:	75 11                	jne    talk_to_STEPHANIE_branch_90
   27dc1:	bb 02 00 00 00       	mov    ebx,0x2
   27dc6:	ba 9d 74 00 00       	mov    edx,@obj3:steph_cpp_variable_234                             ; fixup: num: 6124, src obj: 1, src ofs: 0x27dc7, dst obj: 3, dst ofs: 0x749d
   27dcb:	b8 4b 45 00 00       	mov    eax,0x454b
   27dd0:	eb 11                	jmp    talk_to_STEPHANIE_branch_91
talk_to_STEPHANIE_branch_90:
   27dd2:	83 f8 02             	cmp    eax,0x2
   27dd5:	75 11                	jne    talk_to_STEPHANIE_branch_92
   27dd7:	ba a7 74 00 00       	mov    edx,@obj3:steph_cpp_variable_235                             ; fixup: num: 6123, src obj: 1, src ofs: 0x27dd8, dst obj: 3, dst ofs: 0x74a7
   27ddc:	89 c3                	mov    ebx,eax
   27dde:	b8 4f 45 00 00       	mov    eax,0x454f
talk_to_STEPHANIE_branch_91:
   27de3:	e8 a8 28 04 00       	call   play_wav
talk_to_STEPHANIE_branch_92:
   27de8:	b8 f8 02 00 00       	mov    eax,0x2f8
   27ded:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6122, src obj: 1, src ofs: 0x27dee, dst obj: 3, dst ofs: 0x295c0
   27df2:	e8 a9 23 00 00       	call   GetDlgFileString
   27df7:	89 c6                	mov    esi,eax
   27df9:	57                   	push   edi
talk_to_STEPHANIE_branch_93:
   27dfa:	8a 06                	mov    al,BYTE PTR [esi]
   27dfc:	88 07                	mov    BYTE PTR [edi],al
   27dfe:	3c 00                	cmp    al,0x0
   27e00:	74 10                	je     talk_to_STEPHANIE_branch_94
   27e02:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   27e05:	83 c6 02             	add    esi,0x2
   27e08:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   27e0b:	83 c7 02             	add    edi,0x2
   27e0e:	3c 00                	cmp    al,0x0
   27e10:	75 e8                	jne    talk_to_STEPHANIE_branch_93
talk_to_STEPHANIE_branch_94:
   27e12:	5f                   	pop    edi
   27e13:	e9 35 fa ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_95:
   27e18:	b8 f9 02 00 00       	mov    eax,0x2f9
   27e1d:	e8 7e 23 00 00       	call   GetDlgFileString
   27e22:	89 c2                	mov    edx,eax
   27e24:	89 e8                	mov    eax,ebp
   27e26:	e8 2f 96 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27e2b:	85 c0                	test   eax,eax
   27e2d:	74 49                	je     talk_to_STEPHANIE_branch_96
   27e2f:	b8 fa 02 00 00       	mov    eax,0x2fa
   27e34:	e8 67 23 00 00       	call   GetDlgFileString
   27e39:	89 c2                	mov    edx,eax
   27e3b:	89 e8                	mov    eax,ebp
   27e3d:	e8 18 96 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27e42:	85 c0                	test   eax,eax
   27e44:	74 32                	je     talk_to_STEPHANIE_branch_96
   27e46:	b8 fb 02 00 00       	mov    eax,0x2fb
   27e4b:	e8 50 23 00 00       	call   GetDlgFileString
   27e50:	89 c2                	mov    edx,eax
   27e52:	89 e8                	mov    eax,ebp
   27e54:	e8 01 96 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27e59:	85 c0                	test   eax,eax
   27e5b:	74 1b                	je     talk_to_STEPHANIE_branch_96
   27e5d:	b8 fc 02 00 00       	mov    eax,0x2fc
   27e62:	e8 39 23 00 00       	call   GetDlgFileString
   27e67:	89 c2                	mov    edx,eax
   27e69:	89 e8                	mov    eax,ebp
   27e6b:	e8 ea 95 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27e70:	85 c0                	test   eax,eax
   27e72:	0f 85 9b 00 00 00    	jne    talk_to_STEPHANIE_branch_99
talk_to_STEPHANIE_branch_96:
   27e78:	bb 01 00 00 00       	mov    ebx,0x1
   27e7d:	ba b1 74 00 00       	mov    edx,@obj3:steph_cpp_variable_236                             ; fixup: num: 6131, src obj: 1, src ofs: 0x27e7e, dst obj: 3, dst ofs: 0x74b1
   27e82:	b8 05 4a 00 00       	mov    eax,0x4a05
   27e87:	89 1d 5c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_4,ebx                  ; fixup: num: 6130, src obj: 1, src ofs: 0x27e89, dst obj: 3, dst ofs: 0x22e5c
   27e8d:	89 cb                	mov    ebx,ecx
   27e8f:	e8 fc 27 04 00       	call   play_wav
   27e94:	bb 04 00 00 00       	mov    ebx,0x4
   27e99:	ba b4 74 00 00       	mov    edx,@obj3:steph_cpp_variable_237                             ; fixup: num: 6129, src obj: 1, src ofs: 0x27e9a, dst obj: 3, dst ofs: 0x74b4
   27e9e:	b8 0a 4a 00 00       	mov    eax,0x4a0a
   27ea3:	e8 e8 27 04 00       	call   play_wav
   27ea8:	ba be 74 00 00       	mov    edx,@obj3:steph_cpp_variable_238                             ; fixup: num: 6128, src obj: 1, src ofs: 0x27ea9, dst obj: 3, dst ofs: 0x74be
   27ead:	b8 0e 4a 00 00       	mov    eax,0x4a0e
   27eb2:	89 cb                	mov    ebx,ecx
   27eb4:	e8 d7 27 04 00       	call   play_wav
   27eb9:	bb 02 00 00 00       	mov    ebx,0x2
   27ebe:	ba c1 74 00 00       	mov    edx,@obj3:steph_cpp_variable_239                             ; fixup: num: 6127, src obj: 1, src ofs: 0x27ebf, dst obj: 3, dst ofs: 0x74c1
   27ec3:	b8 12 4a 00 00       	mov    eax,0x4a12
   27ec8:	e8 c3 27 04 00       	call   play_wav
   27ecd:	b8 01 00 00 00       	mov    eax,0x1
   27ed2:	89 ca                	mov    edx,ecx
   27ed4:	e8 c7 05 00 00       	call   TOLD_POTTSDAM_TO_FIX_THE_HOLE
   27ed9:	85 c0                	test   eax,eax
   27edb:	74 0c                	je     talk_to_STEPHANIE_branch_97
   27edd:	ba cb 74 00 00       	mov    edx,@obj3:steph_cpp_variable_240                             ; fixup: num: 6140, src obj: 1, src ofs: 0x27ede, dst obj: 3, dst ofs: 0x74cb
   27ee2:	b8 19 4a 00 00       	mov    eax,0x4a19
   27ee7:	eb 0a                	jmp    talk_to_STEPHANIE_branch_98
talk_to_STEPHANIE_branch_97:
   27ee9:	ba ce 74 00 00       	mov    edx,@obj3:steph_cpp_variable_241                             ; fixup: num: 6139, src obj: 1, src ofs: 0x27eea, dst obj: 3, dst ofs: 0x74ce
   27eee:	b8 1e 4a 00 00       	mov    eax,0x4a1e
talk_to_STEPHANIE_branch_98:
   27ef3:	89 cb                	mov    ebx,ecx
   27ef5:	e8 96 27 04 00       	call   play_wav
   27efa:	bb 01 00 00 00       	mov    ebx,0x1
   27eff:	ba d1 74 00 00       	mov    edx,@obj3:steph_cpp_variable_242                             ; fixup: num: 6138, src obj: 1, src ofs: 0x27f00, dst obj: 3, dst ofs: 0x74d1
   27f04:	b8 23 4a 00 00       	mov    eax,0x4a23
   27f09:	e8 82 27 04 00       	call   play_wav
   27f0e:	e9 3a f9 ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_99:
   27f13:	b8 fd 02 00 00       	mov    eax,0x2fd
   27f18:	e8 83 22 00 00       	call   GetDlgFileString
   27f1d:	89 c2                	mov    edx,eax
   27f1f:	89 e8                	mov    eax,ebp
   27f21:	e8 34 95 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   27f26:	85 c0                	test   eax,eax
   27f28:	0f 84 1f f9 ff ff    	je     talk_to_STEPHANIE_branch_60
   27f2e:	ba db 74 00 00       	mov    edx,@obj3:steph_cpp_variable_243                             ; fixup: num: 6137, src obj: 1, src ofs: 0x27f2f, dst obj: 3, dst ofs: 0x74db
   27f33:	b8 5c 46 00 00       	mov    eax,0x465c
   27f38:	89 cb                	mov    ebx,ecx
   27f3a:	e8 51 27 04 00       	call   play_wav
   27f3f:	e9 09 f9 ff ff       	jmp    talk_to_STEPHANIE_branch_60
talk_to_STEPHANIE_branch_100:
   27f44:	ba e5 74 00 00       	mov    edx,@obj3:steph_cpp_variable_244                             ; fixup: num: 6136, src obj: 1, src ofs: 0x27f45, dst obj: 3, dst ofs: 0x74e5
   27f49:	b8 a4 46 00 00       	mov    eax,0x46a4
   27f4e:	31 db                	xor    ebx,ebx
talk_to_STEPHANIE_branch_101:
   27f50:	e8 3b 27 04 00       	call   play_wav
   27f55:	31 c0                	xor    eax,eax
   27f57:	5d                   	pop    ebp
   27f58:	5f                   	pop    edi
   27f59:	5e                   	pop    esi
   27f5a:	5a                   	pop    edx
   27f5b:	59                   	pop    ecx
   27f5c:	5b                   	pop    ebx
   27f5d:	c3                   	ret    
talk_to_STEPHANIE_branch_102:
   27f5e:	89 15 4c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE,edx                             ; fixup: num: 6135, src obj: 1, src ofs: 0x27f60, dst obj: 3, dst ofs: 0x22e4c
   27f64:	a1 4c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE                                       ; fixup: num: 6134, src obj: 1, src ofs: 0x27f65, dst obj: 3, dst ofs: 0x22e4c
   27f69:	c3                   	ret    
   27f6a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'STEPHANIE_FIRST_CONVERSATION'       -
;-------------------------------------------------
STEPHANIE_FIRST_CONVERSATION:
   27f70:	85 c0                	test   eax,eax
   27f72:	74 ea                	je     talk_to_STEPHANIE_branch_102
   27f74:	a1 4c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE                                       ; fixup: num: 6133, src obj: 1, src ofs: 0x27f75, dst obj: 3, dst ofs: 0x22e4c
   27f79:	c3                   	ret    
STEPHANIE_FIRST_CONVERSATION_branch_1:
   27f7a:	89 15 50 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_1,edx                  ; fixup: num: 6132, src obj: 1, src ofs: 0x27f7c, dst obj: 3, dst ofs: 0x22e50
   27f80:	a1 50 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_1                            ; fixup: num: 6152, src obj: 1, src ofs: 0x27f81, dst obj: 3, dst ofs: 0x22e50
   27f85:	c3                   	ret    
   27f86:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   27f8c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPHANIE_SECOND_CONVERSATION'      -
;-------------------------------------------------
STEPHANIE_SECOND_CONVERSATION:
   27f90:	85 c0                	test   eax,eax
   27f92:	74 e6                	je     STEPHANIE_FIRST_CONVERSATION_branch_1
   27f94:	a1 50 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_1                            ; fixup: num: 6151, src obj: 1, src ofs: 0x27f95, dst obj: 3, dst ofs: 0x22e50
   27f99:	c3                   	ret    
STEPHANIE_SECOND_CONVERSATION_branch_1:
   27f9a:	89 15 54 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_2,edx                  ; fixup: num: 6150, src obj: 1, src ofs: 0x27f9c, dst obj: 3, dst ofs: 0x22e54
   27fa0:	a1 54 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_2                            ; fixup: num: 6149, src obj: 1, src ofs: 0x27fa1, dst obj: 3, dst ofs: 0x22e54
   27fa5:	c3                   	ret    
   27fa6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   27fac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPHANIE_THIRD_CONVERSATION'       -
;-------------------------------------------------
STEPHANIE_THIRD_CONVERSATION:
   27fb0:	85 c0                	test   eax,eax
   27fb2:	74 e6                	je     STEPHANIE_SECOND_CONVERSATION_branch_1
   27fb4:	a1 54 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_2                            ; fixup: num: 6148, src obj: 1, src ofs: 0x27fb5, dst obj: 3, dst ofs: 0x22e54
   27fb9:	c3                   	ret    
STEPHANIE_THIRD_CONVERSATION_branch_1:
   27fba:	89 15 58 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_3,edx                  ; fixup: num: 6147, src obj: 1, src ofs: 0x27fbc, dst obj: 3, dst ofs: 0x22e58
   27fc0:	a1 58 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_3                            ; fixup: num: 6146, src obj: 1, src ofs: 0x27fc1, dst obj: 3, dst ofs: 0x22e58
   27fc5:	c3                   	ret    
   27fc6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   27fcc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'YOU_PREVIOUSLY_CONFESSED_TO_TAKING  -
;  _THE_CLOTH'                                   -
;-------------------------------------------------
YOU_PREVIOUSLY_CONFESSED_TO_TAKING_THE_CLOTH:
   27fd0:	85 c0                	test   eax,eax
   27fd2:	74 e6                	je     STEPHANIE_THIRD_CONVERSATION_branch_1
   27fd4:	a1 58 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_3                            ; fixup: num: 6145, src obj: 1, src ofs: 0x27fd5, dst obj: 3, dst ofs: 0x22e58
   27fd9:	c3                   	ret    
YOU_PREVIOUSLY_CONFESSED_TO_TAKING_THE_CLOTH_branch_1:
   27fda:	89 15 5c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_4,edx                  ; fixup: num: 6144, src obj: 1, src ofs: 0x27fdc, dst obj: 3, dst ofs: 0x22e5c
   27fe0:	a1 5c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_4                            ; fixup: num: 6143, src obj: 1, src ofs: 0x27fe1, dst obj: 3, dst ofs: 0x22e5c
   27fe5:	c3                   	ret    
   27fe6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   27fec:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SHE_KNOWS_ABOUT_THE_PEEPHOLE'       -
;-------------------------------------------------
SHE_KNOWS_ABOUT_THE_PEEPHOLE:
   27ff0:	85 c0                	test   eax,eax
   27ff2:	74 e6                	je     YOU_PREVIOUSLY_CONFESSED_TO_TAKING_THE_CLOTH_branch_1
   27ff4:	a1 5c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_4                            ; fixup: num: 6142, src obj: 1, src ofs: 0x27ff5, dst obj: 3, dst ofs: 0x22e5c
   27ff9:	c3                   	ret    
SHE_KNOWS_ABOUT_THE_PEEPHOLE_branch_1:
   27ffa:	89 15 6c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_8,edx                  ; fixup: num: 6141, src obj: 1, src ofs: 0x27ffc, dst obj: 3, dst ofs: 0x22e6c
   28000:	a1 6c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_8                            ; fixup: num: 6544, src obj: 1, src ofs: 0x28001, dst obj: 3, dst ofs: 0x22e6c
   28005:	c3                   	ret    
   28006:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2800c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_1'                       -
;-------------------------------------------------
STEPH_TALK_1:
   28010:	85 c0                	test   eax,eax
   28012:	74 e6                	je     SHE_KNOWS_ABOUT_THE_PEEPHOLE_branch_1
   28014:	a1 6c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_8                            ; fixup: num: 6543, src obj: 1, src ofs: 0x28015, dst obj: 3, dst ofs: 0x22e6c
   28019:	c3                   	ret    
STEPH_TALK_1_branch_1:
   2801a:	89 15 70 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_9,edx                  ; fixup: num: 6542, src obj: 1, src ofs: 0x2801c, dst obj: 3, dst ofs: 0x22e70
   28020:	a1 70 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_9                            ; fixup: num: 6541, src obj: 1, src ofs: 0x28021, dst obj: 3, dst ofs: 0x22e70
   28025:	c3                   	ret    
   28026:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2802c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_2'                       -
;-------------------------------------------------
STEPH_TALK_2:
   28030:	85 c0                	test   eax,eax
   28032:	74 e6                	je     STEPH_TALK_1_branch_1
   28034:	a1 70 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_9                            ; fixup: num: 6560, src obj: 1, src ofs: 0x28035, dst obj: 3, dst ofs: 0x22e70
   28039:	c3                   	ret    
STEPH_TALK_2_branch_1:
   2803a:	89 15 74 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_10,edx                 ; fixup: num: 6559, src obj: 1, src ofs: 0x2803c, dst obj: 3, dst ofs: 0x22e74
   28040:	a1 74 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_10                           ; fixup: num: 6558, src obj: 1, src ofs: 0x28041, dst obj: 3, dst ofs: 0x22e74
   28045:	c3                   	ret    
   28046:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2804c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_3'                       -
;-------------------------------------------------
STEPH_TALK_3:
   28050:	85 c0                	test   eax,eax
   28052:	74 e6                	je     STEPH_TALK_2_branch_1
   28054:	a1 74 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_10                           ; fixup: num: 6557, src obj: 1, src ofs: 0x28055, dst obj: 3, dst ofs: 0x22e74
   28059:	c3                   	ret    
STEPH_TALK_3_branch_1:
   2805a:	89 15 78 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_11,edx                 ; fixup: num: 6556, src obj: 1, src ofs: 0x2805c, dst obj: 3, dst ofs: 0x22e78
   28060:	a1 78 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_11                           ; fixup: num: 6555, src obj: 1, src ofs: 0x28061, dst obj: 3, dst ofs: 0x22e78
   28065:	c3                   	ret    
   28066:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2806c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_4'                       -
;-------------------------------------------------
STEPH_TALK_4:
   28070:	85 c0                	test   eax,eax
   28072:	74 e6                	je     STEPH_TALK_3_branch_1
   28074:	a1 78 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_11                           ; fixup: num: 6554, src obj: 1, src ofs: 0x28075, dst obj: 3, dst ofs: 0x22e78
   28079:	c3                   	ret    
STEPH_TALK_4_branch_1:
   2807a:	89 15 7c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_12,edx                 ; fixup: num: 6553, src obj: 1, src ofs: 0x2807c, dst obj: 3, dst ofs: 0x22e7c
   28080:	a1 7c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_12                           ; fixup: num: 6552, src obj: 1, src ofs: 0x28081, dst obj: 3, dst ofs: 0x22e7c
   28085:	c3                   	ret    
   28086:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2808c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_5'                       -
;-------------------------------------------------
STEPH_TALK_5:
   28090:	85 c0                	test   eax,eax
   28092:	74 e6                	je     STEPH_TALK_4_branch_1
   28094:	a1 7c 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_12                           ; fixup: num: 6551, src obj: 1, src ofs: 0x28095, dst obj: 3, dst ofs: 0x22e7c
   28099:	c3                   	ret    
STEPH_TALK_5_branch_1:
   2809a:	89 15 80 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_13,edx                 ; fixup: num: 6550, src obj: 1, src ofs: 0x2809c, dst obj: 3, dst ofs: 0x22e80
   280a0:	a1 80 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_13                           ; fixup: num: 6549, src obj: 1, src ofs: 0x280a1, dst obj: 3, dst ofs: 0x22e80
   280a5:	c3                   	ret    
   280a6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   280ac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_6'                       -
;-------------------------------------------------
STEPH_TALK_6:
   280b0:	85 c0                	test   eax,eax
   280b2:	74 e6                	je     STEPH_TALK_5_branch_1
   280b4:	a1 80 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_13                           ; fixup: num: 6548, src obj: 1, src ofs: 0x280b5, dst obj: 3, dst ofs: 0x22e80
   280b9:	c3                   	ret    
STEPH_TALK_6_branch_1:
   280ba:	89 15 84 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_14,edx                 ; fixup: num: 6547, src obj: 1, src ofs: 0x280bc, dst obj: 3, dst ofs: 0x22e84
   280c0:	a1 84 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_14                           ; fixup: num: 6546, src obj: 1, src ofs: 0x280c1, dst obj: 3, dst ofs: 0x22e84
   280c5:	c3                   	ret    
   280c6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   280cc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'STEPH_TALK_7'                       -
;-------------------------------------------------
STEPH_TALK_7:
   280d0:	85 c0                	test   eax,eax
   280d2:	74 e6                	je     STEPH_TALK_6_branch_1
   280d4:	a1 84 2e 02 00       	mov    eax,ds:@obj3:STEPHANIE_variable_14                           ; fixup: num: 6545, src obj: 1, src ofs: 0x280d5, dst obj: 3, dst ofs: 0x22e84
   280d9:	c3                   	ret    
   280da:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'STEPHANIE_initialize'               -
;-------------------------------------------------
STEPHANIE_initialize:
   280e0:	52                   	push   edx
   280e1:	56                   	push   esi
   280e2:	ba 01 00 00 00       	mov    edx,0x1
   280e7:	31 f6                	xor    esi,esi
   280e9:	89 15 4c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE,edx                             ; fixup: num: 6579, src obj: 1, src ofs: 0x280eb, dst obj: 3, dst ofs: 0x22e4c
   280ef:	89 15 50 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_1,edx                  ; fixup: num: 6578, src obj: 1, src ofs: 0x280f1, dst obj: 3, dst ofs: 0x22e50
   280f5:	89 15 54 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_2,edx                  ; fixup: num: 6577, src obj: 1, src ofs: 0x280f7, dst obj: 3, dst ofs: 0x22e54
   280fb:	89 35 58 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_3,esi                  ; fixup: num: 6576, src obj: 1, src ofs: 0x280fd, dst obj: 3, dst ofs: 0x22e58
   28101:	89 35 5c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_4,esi                  ; fixup: num: 6575, src obj: 1, src ofs: 0x28103, dst obj: 3, dst ofs: 0x22e5c
   28107:	89 35 60 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_5,esi                  ; fixup: num: 6574, src obj: 1, src ofs: 0x28109, dst obj: 3, dst ofs: 0x22e60
   2810d:	89 35 64 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_6,esi                  ; fixup: num: 6573, src obj: 1, src ofs: 0x2810f, dst obj: 3, dst ofs: 0x22e64
   28113:	89 35 68 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_7,esi                  ; fixup: num: 6572, src obj: 1, src ofs: 0x28115, dst obj: 3, dst ofs: 0x22e68
   28119:	89 35 6c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_8,esi                  ; fixup: num: 6571, src obj: 1, src ofs: 0x2811b, dst obj: 3, dst ofs: 0x22e6c
   2811f:	89 35 70 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_9,esi                  ; fixup: num: 6570, src obj: 1, src ofs: 0x28121, dst obj: 3, dst ofs: 0x22e70
   28125:	89 35 74 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_10,esi                 ; fixup: num: 6569, src obj: 1, src ofs: 0x28127, dst obj: 3, dst ofs: 0x22e74
   2812b:	89 35 78 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_11,esi                 ; fixup: num: 6568, src obj: 1, src ofs: 0x2812d, dst obj: 3, dst ofs: 0x22e78
   28131:	89 35 7c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_12,esi                 ; fixup: num: 6567, src obj: 1, src ofs: 0x28133, dst obj: 3, dst ofs: 0x22e7c
   28137:	89 35 80 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_13,esi                 ; fixup: num: 6566, src obj: 1, src ofs: 0x28139, dst obj: 3, dst ofs: 0x22e80
   2813d:	89 35 84 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_14,esi                 ; fixup: num: 6565, src obj: 1, src ofs: 0x2813f, dst obj: 3, dst ofs: 0x22e84
   28143:	89 35 88 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_15,esi                 ; fixup: num: 6564, src obj: 1, src ofs: 0x28145, dst obj: 3, dst ofs: 0x22e88
   28149:	89 35 8c 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_16,esi                 ; fixup: num: 6563, src obj: 1, src ofs: 0x2814b, dst obj: 3, dst ofs: 0x22e8c
   2814f:	89 35 90 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_17,esi                 ; fixup: num: 6562, src obj: 1, src ofs: 0x28151, dst obj: 3, dst ofs: 0x22e90
   28155:	89 35 94 2e 02 00    	mov    DWORD PTR ds:@obj3:STEPHANIE_variable_18,esi                 ; fixup: num: 6561, src obj: 1, src ofs: 0x28157, dst obj: 3, dst ofs: 0x22e94
   2815b:	5e                   	pop    esi
   2815c:	5a                   	pop    edx
   2815d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 52 (zero after ret):                 -
;-------------------------------------------------
;  2815c:	5a                   	pop    edx
;  2815d:	c3                   	ret    
;  2815e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   2815e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 52                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 57 (D:\SOURCE\steph.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 57: D:\SOURCE\steph.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
steph_cpp_variable_1:
    6d34:	4e 4f 54 45 00       	db     "NOTE",0x00
steph_cpp_variable_2:
    6d39:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
steph_cpp_variable_3:
    6d48:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
steph_cpp_variable_4:
    6d52:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
steph_cpp_variable_5:
    6d66:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_6:
    6d70:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
steph_cpp_variable_7:
    6d7d:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
steph_cpp_variable_8:
    6d8e:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_9:
    6d98:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6d99:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6d9a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_10:
    6d9b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6d9c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6d9d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_11:
    6d9e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6d9f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6da0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_12:
    6da1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_13:
    6dab:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6dac:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6dad:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_14:
    6dae:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
steph_cpp_variable_15:
    6db5:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
steph_cpp_variable_16:
    6dbd:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
steph_cpp_variable_17:
    6dcf:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6dd0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6dd1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_18:
    6dd2:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_19:
    6ddc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ddd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6dde:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_20:
    6ddf:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_21:
    6de9:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_22:
    6df3:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_23:
    6dfd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6dfe:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6dff:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_24:
    6e00:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_25:
    6e0a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e0b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e0c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_26:
    6e0d:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_27:
    6e17:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e18:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e19:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_28:
    6e1a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_29:
    6e24:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e25:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e26:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_30:
    6e27:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_31:
    6e31:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_32:
    6e3b:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_33:
    6e45:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e46:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e47:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_34:
    6e48:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
steph_cpp_variable_35:
    6e57:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e58:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e59:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_36:
    6e5a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e5b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e5c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_37:
    6e5d:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_38:
    6e67:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_39:
    6e71:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e72:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e73:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_40:
    6e74:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_41:
    6e7e:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_42:
    6e88:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_43:
    6e92:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6e93:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6e94:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_44:
    6e95:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_45:
    6e9f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ea0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6ea1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_46:
    6ea2:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_47:
    6eac:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_48:
    6eb6:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_49:
    6ec0:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_50:
    6eca:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ecb:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6ecc:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_51:
    6ecd:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_52:
    6ed7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ed8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6ed9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_53:
    6eda:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_54:
    6ee4:	4c 45 41 56 45 5f 53 54 45 50 48 5f 41 46 54 45 52 5f 4e 41 53 54 59 00 	db     "LEAVE_STEPH_AFTER_NASTY",0x00
steph_cpp_variable_55:
    6efc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6efd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6efe:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_56:
    6eff:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_57:
    6f09:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_58:
    6f13:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_59:
    6f1d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6f1e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6f1f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_60:
    6f20:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_61:
    6f2a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_62:
    6f34:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6f35:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6f36:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_63:
    6f37:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6f38:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6f39:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_64:
    6f3a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_65:
    6f44:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
steph_cpp_variable_66:
    6f56:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_67:
    6f60:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6f61:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6f62:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_68:
    6f63:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_69:
    6f6d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6f6e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6f6f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_70:
    6f70:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_71:
    6f7a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_72:
    6f84:	4c 45 41 56 45 5f 53 54 45 50 48 5f 41 46 54 45 52 5f 4e 41 53 54 59 00 	db     "LEAVE_STEPH_AFTER_NASTY",0x00
steph_cpp_variable_73:
    6f9c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_74:
    6fa6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6fa7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6fa8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_75:
    6fa9:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_76:
    6fb3:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
steph_cpp_variable_77:
    6fc4:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_78:
    6fce:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6fcf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6fd0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_79:
    6fd1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_80:
    6fdb:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_81:
    6fe5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6fe6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6fe7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_82:
    6fe8:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_83:
    6ff2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ff3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6ff4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_84:
    6ff5:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_85:
    6fff:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_86:
    7009:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    700a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    700b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_87:
    700c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_88:
    7016:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7017:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7018:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_89:
    7019:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_90:
    7023:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_91:
    702d:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
steph_cpp_variable_92:
    7041:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_93:
    704b:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_94:
    7055:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_95:
    705f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7060:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7061:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_96:
    7062:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_97:
    706c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    706d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    706e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_98:
    706f:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_99:
    7079:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    707a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    707b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_100:
    707c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_101:
    7086:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
steph_cpp_variable_102:
    7099:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_103:
    70a3:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_104:
    70ad:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70ae:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70af:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_105:
    70b0:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_106:
    70ba:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_107:
    70c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_108:
    70c7:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_109:
    70d1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70d2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70d3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_110:
    70d4:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_111:
    70de:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70df:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70e0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_112:
    70e1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_113:
    70eb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70ec:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70ed:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_114:
    70ee:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_115:
    70f8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    70f9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    70fa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_116:
    70fb:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_117:
    7105:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_118:
    710f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7110:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7111:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_119:
    7112:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_120:
    711c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    711d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    711e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_121:
    711f:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_122:
    7129:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    712a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    712b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_123:
    712c:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
steph_cpp_variable_124:
    7139:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_125:
    7143:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7144:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7145:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_126:
    7146:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_127:
    7150:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_128:
    715a:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
steph_cpp_variable_129:
    716c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_130:
    7176:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_131:
    7180:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7181:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7182:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_132:
    7183:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_133:
    718d:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_134:
    7197:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7198:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7199:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_135:
    719a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_136:
    71a4:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_137:
    71ae:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_138:
    71b8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    71b9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    71ba:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_139:
    71bb:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_140:
    71c5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    71c6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    71c7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_141:
    71c8:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_142:
    71d2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    71d3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    71d4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_143:
    71d5:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_144:
    71df:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
steph_cpp_variable_145:
    71f1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_146:
    71fb:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_147:
    7205:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7206:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7207:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_148:
    7208:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_149:
    7212:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7213:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7214:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_150:
    7215:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_151:
    721f:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
steph_cpp_variable_152:
    722f:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_153:
    7239:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_154:
    7243:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7244:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7245:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_155:
    7246:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_156:
    7250:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7251:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7252:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_157:
    7253:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
steph_cpp_variable_158:
    7262:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_159:
    726c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    726d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    726e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_160:
    726f:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_161:
    7279:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    727a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    727b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_162:
    727c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_163:
    7286:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_164:
    7290:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_165:
    729a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    729b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    729c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_166:
    729d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    729e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    729f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_167:
    72a0:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_168:
    72aa:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_169:
    72b4:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
steph_cpp_variable_170:
    72c6:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
steph_cpp_variable_171:
    72d7:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_172:
    72e1:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
steph_cpp_variable_173:
    72f3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    72f4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    72f5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_174:
    72f6:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_175:
    7300:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7301:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7302:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_176:
    7303:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_177:
    730d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    730e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    730f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_178:
    7310:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_179:
    731a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_180:
    7324:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7325:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7326:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_181:
    7327:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_182:
    7331:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7332:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7333:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_183:
    7334:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_184:
    733e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    733f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7340:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_185:
    7341:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_186:
    7342:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_187:
    734c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_188:
    7356:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7357:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7358:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_189:
    7359:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_190:
    7363:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_191:
    736d:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_192:
    7377:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7378:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7379:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_193:
    737a:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_194:
    7384:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7385:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7386:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_195:
    7387:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_196:
    7391:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_197:
    739b:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_198:
    73a5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    73a6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    73a7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_199:
    73a8:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_200:
    73b2:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_201:
    73bc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    73bd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    73be:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_202:
    73bf:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_203:
    73c9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    73ca:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    73cb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_204:
    73cc:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_205:
    73d6:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_206:
    73e0:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_207:
    73ea:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_208:
    73f4:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_209:
    73fe:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    73ff:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7400:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_210:
    7401:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7402:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7403:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_211:
    7404:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_212:
    740e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    740f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7410:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_213:
    7411:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_214:
    741b:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_215:
    7425:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7426:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7427:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_216:
    7428:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_217:
    7432:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7433:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7434:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_218:
    7435:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_219:
    743f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7440:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7441:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_220:
    7442:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_221:
    744c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_222:
    7456:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7457:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7458:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_223:
    7459:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    745a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    745b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_224:
    745c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    745d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    745e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_225:
    745f:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_226:
    7469:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    746a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    746b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_227:
    746c:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_228:
    7476:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7477:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7478:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_229:
    7479:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_230:
    7483:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7484:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7485:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_231:
    7486:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_232:
    7490:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7491:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7492:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_233:
    7493:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_234:
    749d:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_235:
    74a7:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_236:
    74b1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    74b2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    74b3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_237:
    74b4:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_238:
    74be:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    74bf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    74c0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_239:
    74c1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_240:
    74cb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    74cc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    74cd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_241:
    74ce:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    74cf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    74d0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
steph_cpp_variable_242:
    74d1:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_243:
    74db:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
steph_cpp_variable_244:
    74e5:	53 54 45 50 48 41 4e 49 45 00 	db     "STEPHANIE",0x00
    74ef:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 57 (D:\SOURCE\steph.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 57: D:\SOURCE\steph.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
STEPHANIE:                                                                                          ; access size: DWORD
   22e4c:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_1:                                                                               ; access size: DWORD
   22e50:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_2:                                                                               ; access size: DWORD
   22e54:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_3:                                                                               ; access size: DWORD
   22e58:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_4:                                                                               ; access size: DWORD
   22e5c:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_5:                                                                               ; access size: DWORD
   22e60:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_6:                                                                               ; access size: DWORD
   22e64:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_7:                                                                               ; access size: DWORD
   22e68:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_8:                                                                               ; access size: DWORD
   22e6c:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_9:                                                                               ; access size: DWORD
   22e70:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_10:                                                                              ; access size: DWORD
   22e74:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_11:                                                                              ; access size: DWORD
   22e78:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_12:                                                                              ; access size: DWORD
   22e7c:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_13:                                                                              ; access size: DWORD
   22e80:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_14:                                                                              ; access size: DWORD
   22e84:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_15:                                                                              ; access size: DWORD
   22e88:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_16:                                                                              ; access size: DWORD
   22e8c:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_17:                                                                              ; access size: DWORD
   22e90:	00 00 00 00          	dd     0x00000000
STEPHANIE_variable_18:                                                                              ; access size: DWORD
   22e94:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 57 (D:\SOURCE\steph.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------