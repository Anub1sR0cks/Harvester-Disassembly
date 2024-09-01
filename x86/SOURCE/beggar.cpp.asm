;-------------------------------------------------------------------------------
;                                                                              -
;  Module 53: D:\SOURCE\beggar.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_BEGGAR'                     -
;-------------------------------------------------
talk_to_BEGGAR:
   24d40:	53                   	push   ebx
   24d41:	52                   	push   edx
   24d42:	b8 54 65 00 00       	mov    eax,@obj3:beggar_cpp_variable_1                              ; fixup: num: 5524, src obj: 1, src ofs: 0x24d43, dst obj: 3, dst ofs: 0x6554
   24d47:	e8 44 7a 04 00       	call   check_script_flag
   24d4c:	84 c0                	test   al,al
   24d4e:	0f 84 d1 00 00 00    	je     talk_to_BEGGAR_branch_6
   24d54:	b8 72 65 00 00       	mov    eax,@obj3:beggar_cpp_variable_2                              ; fixup: num: 5523, src obj: 1, src ofs: 0x24d55, dst obj: 3, dst ofs: 0x6572
   24d59:	bb 01 00 00 00       	mov    ebx,0x1
   24d5e:	ba 82 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_3                              ; fixup: num: 5522, src obj: 1, src ofs: 0x24d5f, dst obj: 3, dst ofs: 0x6582
   24d63:	e8 18 7e 04 00       	call   ExecuteCommand
   24d68:	b8 76 12 00 00       	mov    eax,0x1276
   24d6d:	e8 1e 59 04 00       	call   play_wav
   24d72:	bb 02 00 00 00       	mov    ebx,0x2
   24d77:	ba 89 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_4                              ; fixup: num: 5521, src obj: 1, src ofs: 0x24d78, dst obj: 3, dst ofs: 0x6589
   24d7c:	b8 7a 12 00 00       	mov    eax,0x127a
   24d81:	e8 0a 59 04 00       	call   play_wav
   24d86:	ba 8c 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_5                              ; fixup: num: 5520, src obj: 1, src ofs: 0x24d87, dst obj: 3, dst ofs: 0x658c
   24d8b:	b8 7e 12 00 00       	mov    eax,0x127e
   24d90:	31 db                	xor    ebx,ebx
   24d92:	e8 f9 58 04 00       	call   play_wav
   24d97:	31 c0                	xor    eax,eax
   24d99:	e8 02 54 00 00       	call   GetDlgFileString
   24d9e:	e8 6d 61 04 00       	call   get_response
   24da3:	83 f8 01             	cmp    eax,0x1
   24da6:	75 0e                	jne    talk_to_BEGGAR_branch_1
   24da8:	ba 93 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_6                              ; fixup: num: 5519, src obj: 1, src ofs: 0x24da9, dst obj: 3, dst ofs: 0x6593
   24dad:	89 c3                	mov    ebx,eax
   24daf:	b8 8d 12 00 00       	mov    eax,0x128d
   24db4:	eb 14                	jmp    talk_to_BEGGAR_branch_2
talk_to_BEGGAR_branch_1:
   24db6:	83 f8 02             	cmp    eax,0x2
   24db9:	75 60                	jne    talk_to_BEGGAR_branch_5
   24dbb:	bb 03 00 00 00       	mov    ebx,0x3
   24dc0:	ba 9a 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_7                              ; fixup: num: 5518, src obj: 1, src ofs: 0x24dc1, dst obj: 3, dst ofs: 0x659a
   24dc5:	b8 91 12 00 00       	mov    eax,0x1291
talk_to_BEGGAR_branch_2:
   24dca:	e8 c1 58 04 00       	call   play_wav
   24dcf:	ba a1 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_8                              ; fixup: num: 5517, src obj: 1, src ofs: 0x24dd0, dst obj: 3, dst ofs: 0x65a1
   24dd4:	b8 95 12 00 00       	mov    eax,0x1295
   24dd9:	31 db                	xor    ebx,ebx
   24ddb:	e8 b0 58 04 00       	call   play_wav
   24de0:	b8 01 00 00 00       	mov    eax,0x1
   24de5:	e8 b6 53 00 00       	call   GetDlgFileString
   24dea:	e8 21 61 04 00       	call   get_response
   24def:	83 f8 01             	cmp    eax,0x1
   24df2:	75 11                	jne    talk_to_BEGGAR_branch_3
   24df4:	bb 02 00 00 00       	mov    ebx,0x2
   24df9:	ba a8 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_9                              ; fixup: num: 5527, src obj: 1, src ofs: 0x24dfa, dst obj: 3, dst ofs: 0x65a8
   24dfe:	b8 ab 12 00 00       	mov    eax,0x12ab
   24e03:	eb 11                	jmp    talk_to_BEGGAR_branch_4
talk_to_BEGGAR_branch_3:
   24e05:	83 f8 02             	cmp    eax,0x2
   24e08:	75 11                	jne    talk_to_BEGGAR_branch_5
   24e0a:	ba af 65 00 00       	mov    edx,@obj3:beggar_cpp_variable_10                             ; fixup: num: 5526, src obj: 1, src ofs: 0x24e0b, dst obj: 3, dst ofs: 0x65af
   24e0f:	89 c3                	mov    ebx,eax
   24e11:	b8 a5 12 00 00       	mov    eax,0x12a5
talk_to_BEGGAR_branch_4:
   24e16:	e8 75 58 04 00       	call   play_wav
talk_to_BEGGAR_branch_5:
   24e1b:	b8 b6 65 00 00       	mov    eax,@obj3:beggar_cpp_variable_11                             ; fixup: num: 5525, src obj: 1, src ofs: 0x24e1c, dst obj: 3, dst ofs: 0x65b6
   24e20:	e8 6b 7c 04 00       	call   MonsterfyNpc
talk_to_BEGGAR_branch_6:
   24e25:	31 c0                	xor    eax,eax
   24e27:	5a                   	pop    edx
   24e28:	5b                   	pop    ebx
   24e29:	c3                   	ret    
;-------------------------------------------------
;  Bad code 48 (zero after ret):                 -
;-------------------------------------------------
;  24e28:	5b                   	pop    ebx
;  24e29:	c3                   	ret    
;  24e2a:	00 00                	add    BYTE PTR [eax],al
;  24e2c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
   24e2a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 48                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 53 (D:\SOURCE\beggar.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 53: D:\SOURCE\beggar.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
beggar_cpp_variable_1:
    6554:	42 45 47 47 41 52 5f 49 4e 54 45 52 52 55 50 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "BEGGAR_INTERRUPT_CONVERSATION",0x00
beggar_cpp_variable_2:
    6572:	42 45 47 47 41 52 5f 44 49 41 4c 4f 47 5f 33 00 	db     "BEGGAR_DIALOG_3",0x00
beggar_cpp_variable_3:
    6582:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_4:
    6589:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    658a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    658b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
beggar_cpp_variable_5:
    658c:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_6:
    6593:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_7:
    659a:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_8:
    65a1:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_9:
    65a8:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_10:
    65af:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
beggar_cpp_variable_11:
    65b6:	42 45 47 47 41 52 00 	db     "BEGGAR",0x00
    65bd:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 53 (D:\SOURCE\beggar.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------