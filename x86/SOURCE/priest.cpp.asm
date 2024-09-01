;-------------------------------------------------------------------------------
;                                                                              -
;  Module 24: D:\SOURCE\priest.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_PRIEST'                     -
;-------------------------------------------------
talk_to_PRIEST:
   19730:	53                   	push   ebx
   19731:	52                   	push   edx
   19732:	b8 7c 32 00 00       	mov    eax,@obj3:priest_cpp_variable_1                              ; fixup: num: 3320, src obj: 1, src ofs: 0x19733, dst obj: 3, dst ofs: 0x327c
   19737:	e8 54 30 05 00       	call   check_script_flag
   1973c:	84 c0                	test   al,al
   1973e:	0f 85 c9 01 00 00    	jne    talk_to_PRIEST_branch_7
   19744:	ba 01 00 00 00       	mov    edx,0x1
   19749:	b8 90 32 00 00       	mov    eax,@obj3:priest_cpp_variable_2                              ; fixup: num: 3319, src obj: 1, src ofs: 0x1974a, dst obj: 3, dst ofs: 0x3290
   1974e:	e8 8d 30 05 00       	call   set_script_flag
   19753:	31 db                	xor    ebx,ebx
   19755:	ba a4 32 00 00       	mov    edx,@obj3:priest_cpp_variable_3                              ; fixup: num: 3318, src obj: 1, src ofs: 0x19756, dst obj: 3, dst ofs: 0x32a4
   1975a:	b8 b2 0c 00 00       	mov    eax,0xcb2
   1975f:	e8 2c 0f 05 00       	call   play_wav
   19764:	b8 7a 02 00 00       	mov    eax,0x27a
   19769:	e8 32 0a 01 00       	call   GetDlgFileString
   1976e:	e8 9d 17 05 00       	call   get_response
   19773:	83 f8 02             	cmp    eax,0x2
   19776:	75 1b                	jne    talk_to_PRIEST_branch_1
   19778:	ba ab 32 00 00       	mov    edx,@obj3:priest_cpp_variable_4                              ; fixup: num: 3317, src obj: 1, src ofs: 0x19779, dst obj: 3, dst ofs: 0x32ab
   1977d:	89 c3                	mov    ebx,eax
   1977f:	b8 c4 0c 00 00       	mov    eax,0xcc4
   19784:	e8 07 0f 05 00       	call   play_wav
   19789:	b8 b2 32 00 00       	mov    eax,@obj3:priest_cpp_variable_5                              ; fixup: num: 3316, src obj: 1, src ofs: 0x1978a, dst obj: 3, dst ofs: 0x32b2
   1978e:	e9 75 01 00 00       	jmp    talk_to_PRIEST_branch_6
talk_to_PRIEST_branch_1:
   19793:	83 f8 01             	cmp    eax,0x1
   19796:	0f 85 71 01 00 00    	jne    talk_to_PRIEST_branch_7
   1979c:	ba c2 32 00 00       	mov    edx,@obj3:priest_cpp_variable_6                              ; fixup: num: 3315, src obj: 1, src ofs: 0x1979d, dst obj: 3, dst ofs: 0x32c2
   197a1:	89 c3                	mov    ebx,eax
   197a3:	b8 bf 0c 00 00       	mov    eax,0xcbf
   197a8:	e8 e3 0e 05 00       	call   play_wav
   197ad:	b8 7b 02 00 00       	mov    eax,0x27b
   197b2:	e8 e9 09 01 00       	call   GetDlgFileString
   197b7:	e8 54 17 05 00       	call   get_response
   197bc:	83 f8 02             	cmp    eax,0x2
   197bf:	75 20                	jne    talk_to_PRIEST_branch_2
   197c1:	ba c9 32 00 00       	mov    edx,@obj3:priest_cpp_variable_7                              ; fixup: num: 3314, src obj: 1, src ofs: 0x197c2, dst obj: 3, dst ofs: 0x32c9
   197c6:	89 c3                	mov    ebx,eax
   197c8:	b8 c4 0c 00 00       	mov    eax,0xcc4
   197cd:	e8 be 0e 05 00       	call   play_wav
   197d2:	b8 d0 32 00 00       	mov    eax,@obj3:priest_cpp_variable_8                              ; fixup: num: 3313, src obj: 1, src ofs: 0x197d3, dst obj: 3, dst ofs: 0x32d0
   197d7:	e8 a4 33 05 00       	call   ExecuteCommand
   197dc:	31 c0                	xor    eax,eax
   197de:	5a                   	pop    edx
   197df:	5b                   	pop    ebx
   197e0:	c3                   	ret    
talk_to_PRIEST_branch_2:
   197e1:	83 f8 01             	cmp    eax,0x1
   197e4:	0f 85 23 01 00 00    	jne    talk_to_PRIEST_branch_7
   197ea:	ba e0 32 00 00       	mov    edx,@obj3:priest_cpp_variable_9                              ; fixup: num: 3326, src obj: 1, src ofs: 0x197eb, dst obj: 3, dst ofs: 0x32e0
   197ef:	89 c3                	mov    ebx,eax
   197f1:	b8 cf 0c 00 00       	mov    eax,0xccf
   197f6:	e8 95 0e 05 00       	call   play_wav
   197fb:	b8 7c 02 00 00       	mov    eax,0x27c
   19800:	e8 9b 09 01 00       	call   GetDlgFileString
   19805:	e8 06 17 05 00       	call   get_response
   1980a:	83 f8 01             	cmp    eax,0x1
   1980d:	75 23                	jne    talk_to_PRIEST_branch_3
   1980f:	bb 02 00 00 00       	mov    ebx,0x2
   19814:	ba e7 32 00 00       	mov    edx,@obj3:priest_cpp_variable_10                             ; fixup: num: 3325, src obj: 1, src ofs: 0x19815, dst obj: 3, dst ofs: 0x32e7
   19819:	b8 c4 0c 00 00       	mov    eax,0xcc4
   1981e:	e8 6d 0e 05 00       	call   play_wav
   19823:	b8 ee 32 00 00       	mov    eax,@obj3:priest_cpp_variable_11                             ; fixup: num: 3324, src obj: 1, src ofs: 0x19824, dst obj: 3, dst ofs: 0x32ee
   19828:	e8 53 33 05 00       	call   ExecuteCommand
   1982d:	31 c0                	xor    eax,eax
   1982f:	5a                   	pop    edx
   19830:	5b                   	pop    ebx
   19831:	c3                   	ret    
talk_to_PRIEST_branch_3:
   19832:	83 f8 02             	cmp    eax,0x2
   19835:	0f 85 d2 00 00 00    	jne    talk_to_PRIEST_branch_7
   1983b:	bb 01 00 00 00       	mov    ebx,0x1
   19840:	ba fe 32 00 00       	mov    edx,@obj3:priest_cpp_variable_12                             ; fixup: num: 3323, src obj: 1, src ofs: 0x19841, dst obj: 3, dst ofs: 0x32fe
   19845:	b8 e5 0c 00 00       	mov    eax,0xce5
   1984a:	e8 41 0e 05 00       	call   play_wav
   1984f:	b8 7d 02 00 00       	mov    eax,0x27d
   19854:	e8 47 09 01 00       	call   GetDlgFileString
   19859:	e8 b2 16 05 00       	call   get_response
   1985e:	83 f8 02             	cmp    eax,0x2
   19861:	75 20                	jne    talk_to_PRIEST_branch_4
   19863:	ba 05 33 00 00       	mov    edx,@obj3:priest_cpp_variable_13                             ; fixup: num: 3322, src obj: 1, src ofs: 0x19864, dst obj: 3, dst ofs: 0x3305
   19868:	89 c3                	mov    ebx,eax
   1986a:	b8 c4 0c 00 00       	mov    eax,0xcc4
   1986f:	e8 1c 0e 05 00       	call   play_wav
   19874:	b8 0c 33 00 00       	mov    eax,@obj3:priest_cpp_variable_14                             ; fixup: num: 3321, src obj: 1, src ofs: 0x19875, dst obj: 3, dst ofs: 0x330c
   19879:	e8 02 33 05 00       	call   ExecuteCommand
   1987e:	31 c0                	xor    eax,eax
   19880:	5a                   	pop    edx
   19881:	5b                   	pop    ebx
   19882:	c3                   	ret    
talk_to_PRIEST_branch_4:
   19883:	83 f8 01             	cmp    eax,0x1
   19886:	0f 85 81 00 00 00    	jne    talk_to_PRIEST_branch_7
   1988c:	ba 1c 33 00 00       	mov    edx,@obj3:priest_cpp_variable_15                             ; fixup: num: 3333, src obj: 1, src ofs: 0x1988d, dst obj: 3, dst ofs: 0x331c
   19891:	89 c3                	mov    ebx,eax
   19893:	b8 f2 0c 00 00       	mov    eax,0xcf2
   19898:	e8 f3 0d 05 00       	call   play_wav
   1989d:	b8 7e 02 00 00       	mov    eax,0x27e
   198a2:	e8 f9 08 01 00       	call   GetDlgFileString
   198a7:	e8 64 16 05 00       	call   get_response
   198ac:	83 f8 04             	cmp    eax,0x4
   198af:	75 2f                	jne    talk_to_PRIEST_branch_5
   198b1:	bb 01 00 00 00       	mov    ebx,0x1
   198b6:	ba 23 33 00 00       	mov    edx,@obj3:priest_cpp_variable_16                             ; fixup: num: 3332, src obj: 1, src ofs: 0x198b7, dst obj: 3, dst ofs: 0x3323
   198bb:	b8 0e 0d 00 00       	mov    eax,0xd0e
   198c0:	e8 cb 0d 05 00       	call   play_wav
   198c5:	b8 2a 33 00 00       	mov    eax,@obj3:priest_cpp_variable_17                             ; fixup: num: 3331, src obj: 1, src ofs: 0x198c6, dst obj: 3, dst ofs: 0x332a
   198ca:	31 d2                	xor    edx,edx
   198cc:	e8 0f 2f 05 00       	call   set_script_flag
   198d1:	b8 36 33 00 00       	mov    eax,@obj3:priest_cpp_variable_18                             ; fixup: num: 3330, src obj: 1, src ofs: 0x198d2, dst obj: 3, dst ofs: 0x3336
   198d6:	e8 a5 32 05 00       	call   ExecuteCommand
   198db:	31 c0                	xor    eax,eax
   198dd:	5a                   	pop    edx
   198de:	5b                   	pop    ebx
   198df:	c3                   	ret    
talk_to_PRIEST_branch_5:
   198e0:	bb 03 00 00 00       	mov    ebx,0x3
   198e5:	ba 44 33 00 00       	mov    edx,@obj3:priest_cpp_variable_19                             ; fixup: num: 3329, src obj: 1, src ofs: 0x198e6, dst obj: 3, dst ofs: 0x3344
   198ea:	b8 13 0d 00 00       	mov    eax,0xd13
   198ef:	e8 9c 0d 05 00       	call   play_wav
   198f4:	ba 01 00 00 00       	mov    edx,0x1
   198f9:	b8 4b 33 00 00       	mov    eax,@obj3:priest_cpp_variable_20                             ; fixup: num: 3328, src obj: 1, src ofs: 0x198fa, dst obj: 3, dst ofs: 0x334b
   198fe:	e8 dd 2e 05 00       	call   set_script_flag
   19903:	b8 57 33 00 00       	mov    eax,@obj3:priest_cpp_variable_21                             ; fixup: num: 3327, src obj: 1, src ofs: 0x19904, dst obj: 3, dst ofs: 0x3357
talk_to_PRIEST_branch_6:
   19908:	e8 73 32 05 00       	call   ExecuteCommand
talk_to_PRIEST_branch_7:
   1990d:	31 c0                	xor    eax,eax
   1990f:	5a                   	pop    edx
   19910:	5b                   	pop    ebx
   19911:	c3                   	ret    
;-------------------------------------------------
;  Bad code 22 (zero after ret):                 -
;-------------------------------------------------
;  19910:	5b                   	pop    ebx
;  19911:	c3                   	ret    
;  19912:	00 00                	add    BYTE PTR [eax],al
;  19914:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (14 bytes):                      -
;-------------------------------------------------
   19912:	00 00 00 00 00 00 .. 	db     14 dup(0x00)
;-------------------------------------------------
;  End of bad code 22                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 24 (D:\SOURCE\priest.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 24: D:\SOURCE\priest.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
priest_cpp_variable_1:
    327c:	50 43 5f 54 41 4c 4b 45 44 5f 54 4f 5f 50 52 49 45 53 54 00 	db     "PC_TALKED_TO_PRIEST",0x00
priest_cpp_variable_2:
    3290:	50 43 5f 54 41 4c 4b 45 44 5f 54 4f 5f 50 52 49 45 53 54 00 	db     "PC_TALKED_TO_PRIEST",0x00
priest_cpp_variable_3:
    32a4:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_4:
    32ab:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_5:
    32b2:	46 4f 4c 4f 57 52 5f 4d 4e 53 54 46 59 5f 41 00 	db     "FOLOWR_MNSTFY_A",0x00
priest_cpp_variable_6:
    32c2:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_7:
    32c9:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_8:
    32d0:	46 4f 4c 4f 57 52 5f 4d 4e 53 54 46 59 5f 41 00 	db     "FOLOWR_MNSTFY_A",0x00
priest_cpp_variable_9:
    32e0:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_10:
    32e7:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_11:
    32ee:	46 4f 4c 4f 57 52 5f 4d 4e 53 54 46 59 5f 41 00 	db     "FOLOWR_MNSTFY_A",0x00
priest_cpp_variable_12:
    32fe:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_13:
    3305:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_14:
    330c:	46 4f 4c 4f 57 52 5f 4d 4e 53 54 46 59 5f 41 00 	db     "FOLOWR_MNSTFY_A",0x00
priest_cpp_variable_15:
    331c:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_16:
    3323:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_17:
    332a:	50 52 49 45 53 54 5f 46 4c 41 47 00 	db     "PRIEST_FLAG",0x00
priest_cpp_variable_18:
    3336:	52 45 4c 49 47 5f 45 58 49 54 53 5f 41 00 	db     "RELIG_EXITS_A",0x00
priest_cpp_variable_19:
    3344:	50 52 49 45 53 54 00 	db     "PRIEST",0x00
priest_cpp_variable_20:
    334b:	50 52 49 45 53 54 5f 46 4c 41 47 00 	db     "PRIEST_FLAG",0x00
priest_cpp_variable_21:
    3357:	46 4f 4c 4f 57 52 5f 4d 4e 53 54 46 59 5f 41 00 	db     "FOLOWR_MNSTFY_A",0x00
    3367:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 24 (D:\SOURCE\priest.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------