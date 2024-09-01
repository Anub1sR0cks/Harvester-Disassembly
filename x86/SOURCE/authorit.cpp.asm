;-------------------------------------------------------------------------------
;                                                                              -
;  Module 33: D:\SOURCE\authorit.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_AUTHORITY_FIGURE'           -
;-------------------------------------------------
talk_to_AUTHORITY_FIGURE:
   1b730:	53                   	push   ebx
   1b731:	52                   	push   edx
   1b732:	b8 b8 3d 00 00       	mov    eax,@obj3:authorit_cpp_variable_1                            ; fixup: num: 3747, src obj: 1, src ofs: 0x1b733, dst obj: 3, dst ofs: 0x3db8
   1b737:	e8 54 10 05 00       	call   check_script_flag
   1b73c:	84 c0                	test   al,al
   1b73e:	75 6e                	jne    talk_to_AUTHORITY_FIGURE_branch_4
   1b740:	b8 c9 3d 00 00       	mov    eax,@obj3:authorit_cpp_variable_2                            ; fixup: num: 3746, src obj: 1, src ofs: 0x1b741, dst obj: 3, dst ofs: 0x3dc9
   1b745:	e8 46 10 05 00       	call   check_script_flag
   1b74a:	84 c0                	test   al,al
   1b74c:	74 35                	je     talk_to_AUTHORITY_FIGURE_branch_1
   1b74e:	ba df 3d 00 00       	mov    edx,@obj3:authorit_cpp_variable_3                            ; fixup: num: 3745, src obj: 1, src ofs: 0x1b74f, dst obj: 3, dst ofs: 0x3ddf
   1b753:	b8 92 39 00 00       	mov    eax,0x3992
   1b758:	31 db                	xor    ebx,ebx
   1b75a:	e8 31 ef 04 00       	call   play_wav
   1b75f:	b8 e9 3d 00 00       	mov    eax,@obj3:authorit_cpp_variable_4                            ; fixup: num: 3744, src obj: 1, src ofs: 0x1b760, dst obj: 3, dst ofs: 0x3de9
   1b764:	e8 27 10 05 00       	call   check_script_flag
   1b769:	84 c0                	test   al,al
   1b76b:	74 41                	je     talk_to_AUTHORITY_FIGURE_branch_4
   1b76d:	ba 14 3e 00 00       	mov    edx,@obj3:authorit_cpp_variable_5                            ; fixup: num: 3743, src obj: 1, src ofs: 0x1b76e, dst obj: 3, dst ofs: 0x3e14
   1b772:	b8 9b 39 00 00       	mov    eax,0x399b
   1b777:	31 db                	xor    ebx,ebx
   1b779:	e8 12 ef 04 00       	call   play_wav
   1b77e:	31 c0                	xor    eax,eax
   1b780:	5a                   	pop    edx
   1b781:	5b                   	pop    ebx
   1b782:	c3                   	ret    
talk_to_AUTHORITY_FIGURE_branch_1:
   1b783:	b8 1e 3e 00 00       	mov    eax,@obj3:authorit_cpp_variable_6                            ; fixup: num: 3742, src obj: 1, src ofs: 0x1b784, dst obj: 3, dst ofs: 0x3e1e
   1b788:	e8 03 10 05 00       	call   check_script_flag
   1b78d:	84 c0                	test   al,al
   1b78f:	74 0c                	je     talk_to_AUTHORITY_FIGURE_branch_2
   1b791:	ba 49 3e 00 00       	mov    edx,@obj3:authorit_cpp_variable_7                            ; fixup: num: 3741, src obj: 1, src ofs: 0x1b792, dst obj: 3, dst ofs: 0x3e49
   1b796:	b8 9b 39 00 00       	mov    eax,0x399b
   1b79b:	eb 0a                	jmp    talk_to_AUTHORITY_FIGURE_branch_3
talk_to_AUTHORITY_FIGURE_branch_2:
   1b79d:	ba 53 3e 00 00       	mov    edx,@obj3:authorit_cpp_variable_8                            ; fixup: num: 3740, src obj: 1, src ofs: 0x1b79e, dst obj: 3, dst ofs: 0x3e53
   1b7a2:	b8 8a 39 00 00       	mov    eax,0x398a
talk_to_AUTHORITY_FIGURE_branch_3:
   1b7a7:	31 db                	xor    ebx,ebx
   1b7a9:	e8 e2 ee 04 00       	call   play_wav
talk_to_AUTHORITY_FIGURE_branch_4:
   1b7ae:	31 c0                	xor    eax,eax
   1b7b0:	5a                   	pop    edx
   1b7b1:	5b                   	pop    ebx
   1b7b2:	c3                   	ret    
;-------------------------------------------------
;  Bad code 30 (zero after ret):                 -
;-------------------------------------------------
;  1b7b1:	5b                   	pop    ebx
;  1b7b2:	c3                   	ret    
;  1b7b3:	00 00                	add    BYTE PTR [eax],al
;  1b7b5:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
   1b7b3:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 30                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 33 (D:\SOURCE\authorit.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 33: D:\SOURCE\authorit.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
authorit_cpp_variable_1:
    3db8:	53 54 4f 50 5f 41 55 54 48 4f 52 5f 54 41 4c 4b 00 	db     "STOP_AUTHOR_TALK",0x00
authorit_cpp_variable_2:
    3dc9:	49 46 5f 44 4f 4e 5f 54 5f 45 41 54 5f 54 48 45 5f 46 4f 4f 44 00 	db     "IF_DON_T_EAT_THE_FOOD",0x00
authorit_cpp_variable_3:
    3ddf:	41 55 54 48 4f 52 49 54 59 00 	db     "AUTHORITY",0x00
authorit_cpp_variable_4:
    3de9:	49 46 5f 59 4f 55 5f 45 41 54 5f 54 48 45 5f 46 4f 4f 44 5f 41 4e 44 5f 44 45 46 45 41 54 5f 54 48 45 5f 45 4e 45 4d 49 45 53 00 	db     "IF_YOU_EAT_THE_FOOD_AND_DEFEAT_THE_ENEMIES",0x00
authorit_cpp_variable_5:
    3e14:	41 55 54 48 4f 52 49 54 59 00 	db     "AUTHORITY",0x00
authorit_cpp_variable_6:
    3e1e:	49 46 5f 59 4f 55 5f 45 41 54 5f 54 48 45 5f 46 4f 4f 44 5f 41 4e 44 5f 44 45 46 45 41 54 5f 54 48 45 5f 45 4e 45 4d 49 45 53 00 	db     "IF_YOU_EAT_THE_FOOD_AND_DEFEAT_THE_ENEMIES",0x00
authorit_cpp_variable_7:
    3e49:	41 55 54 48 4f 52 49 54 59 00 	db     "AUTHORITY",0x00
authorit_cpp_variable_8:
    3e53:	41 55 54 48 4f 52 49 54 59 00 	db     "AUTHORITY",0x00
    3e5d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 33 (D:\SOURCE\authorit.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------