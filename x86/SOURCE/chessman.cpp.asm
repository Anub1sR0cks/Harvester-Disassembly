;-------------------------------------------------------------------------------
;                                                                              -
;  Module 38: D:\SOURCE\chessman.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_CHESSMASTER'                -
;-------------------------------------------------
talk_to_CHESSMASTER:
   1d900:	53                   	push   ebx
   1d901:	51                   	push   ecx
   1d902:	52                   	push   edx
   1d903:	56                   	push   esi
   1d904:	ba b4 46 00 00       	mov    edx,@obj3:chessman_cpp_variable_1                            ; fixup: num: 4133, src obj: 1, src ofs: 0x1d905, dst obj: 3, dst ofs: 0x46b4
   1d909:	b8 15 41 00 00       	mov    eax,0x4115
   1d90e:	31 db                	xor    ebx,ebx
   1d910:	e8 7b cd 04 00       	call   play_wav
   1d915:	b8 22 00 00 00       	mov    eax,0x22
   1d91a:	30 c9                	xor    cl,cl
   1d91c:	e8 7f c8 00 00       	call   GetDlgFileString
   1d921:	e8 ea d5 04 00       	call   get_response
   1d926:	89 c6                	mov    esi,eax
   1d928:	83 f8 01             	cmp    eax,0x1
   1d92b:	75 18                	jne    talk_to_CHESSMASTER_branch_1
   1d92d:	ba c0 46 00 00       	mov    edx,@obj3:chessman_cpp_variable_2                            ; fixup: num: 4132, src obj: 1, src ofs: 0x1d92e, dst obj: 3, dst ofs: 0x46c0
   1d932:	89 c3                	mov    ebx,eax
   1d934:	b8 22 41 00 00       	mov    eax,0x4122
   1d939:	e8 52 cd 04 00       	call   play_wav
   1d93e:	e8 0d cc 02 00       	call   chessgame
   1d943:	88 c1                	mov    cl,al
talk_to_CHESSMASTER_branch_1:
   1d945:	83 fe 02             	cmp    esi,0x2
   1d948:	74 04                	je     talk_to_CHESSMASTER_branch_2
   1d94a:	84 c9                	test   cl,cl
   1d94c:	75 2c                	jne    talk_to_CHESSMASTER_branch_3
talk_to_CHESSMASTER_branch_2:
   1d94e:	bb 02 00 00 00       	mov    ebx,0x2
   1d953:	ba cc 46 00 00       	mov    edx,@obj3:chessman_cpp_variable_3                            ; fixup: num: 4131, src obj: 1, src ofs: 0x1d954, dst obj: 3, dst ofs: 0x46cc
   1d958:	b8 26 41 00 00       	mov    eax,0x4126
   1d95d:	e8 2e cd 04 00       	call   play_wav
   1d962:	b8 d8 46 00 00       	mov    eax,@obj3:chessman_cpp_variable_4                            ; fixup: num: 4130, src obj: 1, src ofs: 0x1d963, dst obj: 3, dst ofs: 0x46d8
   1d967:	e8 74 35 03 00       	call   execute_command
   1d96c:	31 d2                	xor    edx,edx
   1d96e:	b8 ef 46 00 00       	mov    eax,@obj3:chessman_cpp_variable_5                            ; fixup: num: 4129, src obj: 1, src ofs: 0x1d96f, dst obj: 3, dst ofs: 0x46ef
   1d973:	e8 d8 4b 04 00       	call   play_fvi
   1d978:	eb 2c                	jmp    talk_to_CHESSMASTER_branch_4
talk_to_CHESSMASTER_branch_3:
   1d97a:	74 2a                	je     talk_to_CHESSMASTER_branch_4
   1d97c:	ba 01 00 00 00       	mov    edx,0x1
   1d981:	b8 08 47 00 00       	mov    eax,@obj3:chessman_cpp_variable_6                            ; fixup: num: 4128, src obj: 1, src ofs: 0x1d982, dst obj: 3, dst ofs: 0x4708
   1d986:	e8 55 ee 04 00       	call   set_script_flag
   1d98b:	b8 15 47 00 00       	mov    eax,@obj3:chessman_cpp_variable_7                            ; fixup: num: 4127, src obj: 1, src ofs: 0x1d98c, dst obj: 3, dst ofs: 0x4715
   1d990:	31 d2                	xor    edx,edx
   1d992:	e8 b9 4b 04 00       	call   play_fvi
   1d997:	ba 2a 47 00 00       	mov    edx,@obj3:chessman_cpp_variable_8                            ; fixup: num: 4126, src obj: 1, src ofs: 0x1d998, dst obj: 3, dst ofs: 0x472a
   1d99c:	b8 30 47 00 00       	mov    eax,@obj3:chessman_cpp_variable_9                            ; fixup: num: 4125, src obj: 1, src ofs: 0x1d99d, dst obj: 3, dst ofs: 0x4730
   1d9a1:	e8 9a ef 04 00       	call   KillNpc
talk_to_CHESSMASTER_branch_4:
   1d9a6:	31 c0                	xor    eax,eax
   1d9a8:	5e                   	pop    esi
   1d9a9:	5a                   	pop    edx
   1d9aa:	59                   	pop    ecx
   1d9ab:	5b                   	pop    ebx
   1d9ac:	c3                   	ret    
;-------------------------------------------------
;  Bad code 34 (zero after ret):                 -
;-------------------------------------------------
;  1d9ab:	5b                   	pop    ebx
;  1d9ac:	c3                   	ret    
;  1d9ad:	00 00                	add    BYTE PTR [eax],al
;  1d9af:	00               	add    BYTE PTR [ebx+0x52],dl
;-------------------------------------------------
;  Padding data (3 bytes):                       -
;-------------------------------------------------
   1d9ad:	00 00 00             	db     3 dup(0x00)
;-------------------------------------------------
;  End of bad code 34                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 38 (D:\SOURCE\chessman.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 38: D:\SOURCE\chessman.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
chessman_cpp_variable_1:
    46b4:	43 48 45 53 53 4d 41 53 54 45 52 00 	db     "CHESSMASTER",0x00
chessman_cpp_variable_2:
    46c0:	43 48 45 53 53 4d 41 53 54 45 52 00 	db     "CHESSMASTER",0x00
chessman_cpp_variable_3:
    46cc:	43 48 45 53 53 4d 41 53 54 45 52 00 	db     "CHESSMASTER",0x00
chessman_cpp_variable_4:
    46d8:	41 44 44 5f 43 48 45 53 53 5f 4b 49 4e 47 5f 4d 4f 4e 53 54 45 52 00 	db     "ADD_CHESS_KING_MONSTER",0x00
chessman_cpp_variable_5:
    46ef:	67 72 61 70 68 69 63 5c 66 73 74 5c 6b 69 6e 67 67 72 6f 77 2e 66 73 74 00 	db     "graphic\fst\kinggrow.fst",0x00
chessman_cpp_variable_6:
    4708:	43 48 45 53 53 5f 53 4f 4c 56 45 44 00 	db     "CHESS_SOLVED",0x00
chessman_cpp_variable_7:
    4715:	67 72 61 70 68 69 63 5c 66 73 74 5c 63 31 32 35 2e 66 73 74 00 	db     "graphic\fst\c125.fst",0x00
chessman_cpp_variable_8:
    472a:	53 4c 41 53 48 00    	db     "SLASH",0x00
chessman_cpp_variable_9:
    4730:	43 48 45 53 53 4d 41 53 54 45 52 00 	db     "CHESSMASTER",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 38 (D:\SOURCE\chessman.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------