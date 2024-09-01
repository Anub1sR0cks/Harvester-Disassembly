;-------------------------------------------------------------------------------
;                                                                              -
;  Module 32: D:\SOURCE\maint_ma.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MAINTENANCE_MAN'            -
;-------------------------------------------------
talk_to_MAINTENANCE_MAN:
   1b6a0:	53                   	push   ebx
   1b6a1:	52                   	push   edx
   1b6a2:	b8 24 3d 00 00       	mov    eax,@obj3:maint_ma_cpp_variable_1                            ; fixup: num: 3739, src obj: 1, src ofs: 0x1b6a3, dst obj: 3, dst ofs: 0x3d24
   1b6a7:	e8 e4 10 05 00       	call   check_script_flag
   1b6ac:	84 c0                	test   al,al
   1b6ae:	74 11                	je     talk_to_MAINTENANCE_MAN_branch_1
   1b6b0:	bb 01 00 00 00       	mov    ebx,0x1
   1b6b5:	ba 47 3d 00 00       	mov    edx,@obj3:maint_ma_cpp_variable_2                            ; fixup: num: 3738, src obj: 1, src ofs: 0x1b6b6, dst obj: 3, dst ofs: 0x3d47
   1b6ba:	b8 af 0d 00 00       	mov    eax,0xdaf
   1b6bf:	eb 5a                	jmp    talk_to_MAINTENANCE_MAN_branch_4
talk_to_MAINTENANCE_MAN_branch_1:
   1b6c1:	b8 51 3d 00 00       	mov    eax,@obj3:maint_ma_cpp_variable_3                            ; fixup: num: 3737, src obj: 1, src ofs: 0x1b6c2, dst obj: 3, dst ofs: 0x3d51
   1b6c6:	e8 c5 10 05 00       	call   check_script_flag
   1b6cb:	84 c0                	test   al,al
   1b6cd:	74 19                	je     talk_to_MAINTENANCE_MAN_branch_2
   1b6cf:	bb 02 00 00 00       	mov    ebx,0x2
   1b6d4:	ba 74 3d 00 00       	mov    edx,@obj3:maint_ma_cpp_variable_4                            ; fixup: num: 3736, src obj: 1, src ofs: 0x1b6d5, dst obj: 3, dst ofs: 0x3d74
   1b6d9:	b8 bc 0d 00 00       	mov    eax,0xdbc
   1b6de:	e8 ad ef 04 00       	call   play_wav
   1b6e3:	31 c0                	xor    eax,eax
   1b6e5:	5a                   	pop    edx
   1b6e6:	5b                   	pop    ebx
   1b6e7:	c3                   	ret    
talk_to_MAINTENANCE_MAN_branch_2:
   1b6e8:	b8 7e 3d 00 00       	mov    eax,@obj3:maint_ma_cpp_variable_5                            ; fixup: num: 3735, src obj: 1, src ofs: 0x1b6e9, dst obj: 3, dst ofs: 0x3d7e
   1b6ed:	e8 9e 10 05 00       	call   check_script_flag
   1b6f2:	84 c0                	test   al,al
   1b6f4:	74 19                	je     talk_to_MAINTENANCE_MAN_branch_3
   1b6f6:	bb 02 00 00 00       	mov    ebx,0x2
   1b6fb:	ba a2 3d 00 00       	mov    edx,@obj3:maint_ma_cpp_variable_6                            ; fixup: num: 3734, src obj: 1, src ofs: 0x1b6fc, dst obj: 3, dst ofs: 0x3da2
   1b700:	b8 c4 0d 00 00       	mov    eax,0xdc4
   1b705:	e8 86 ef 04 00       	call   play_wav
   1b70a:	31 c0                	xor    eax,eax
   1b70c:	5a                   	pop    edx
   1b70d:	5b                   	pop    ebx
   1b70e:	c3                   	ret    
talk_to_MAINTENANCE_MAN_branch_3:
   1b70f:	ba ac 3d 00 00       	mov    edx,@obj3:maint_ma_cpp_variable_7                            ; fixup: num: 3733, src obj: 1, src ofs: 0x1b710, dst obj: 3, dst ofs: 0x3dac
   1b714:	b8 b6 0d 00 00       	mov    eax,0xdb6
   1b719:	31 db                	xor    ebx,ebx
talk_to_MAINTENANCE_MAN_branch_4:
   1b71b:	e8 70 ef 04 00       	call   play_wav
   1b720:	31 c0                	xor    eax,eax
   1b722:	5a                   	pop    edx
   1b723:	5b                   	pop    ebx
   1b724:	c3                   	ret    
;-------------------------------------------------
;  Bad code 29 (zero after ret):                 -
;-------------------------------------------------
;  1b723:	5b                   	pop    ebx
;  1b724:	c3                   	ret    
;  1b725:	00 00                	add    BYTE PTR [eax],al
;  1b727:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (11 bytes):                      -
;-------------------------------------------------
   1b725:	00 00 00 00 00 00 .. 	db     11 dup(0x00)
;-------------------------------------------------
;  End of bad code 29                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 32 (D:\SOURCE\maint_ma.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 32: D:\SOURCE\maint_ma.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
maint_ma_cpp_variable_1:
    3d24:	4d 41 49 4e 54 45 4e 41 4e 43 45 5f 4d 41 4e 5f 46 49 52 53 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "MAINTENANCE_MAN_FIRST_CONVERSATION",0x00
maint_ma_cpp_variable_2:
    3d47:	4d 41 49 4e 54 5f 4d 41 4e 00 	db     "MAINT_MAN",0x00
maint_ma_cpp_variable_3:
    3d51:	4d 41 49 4e 54 45 4e 41 4e 43 45 5f 4d 41 4e 5f 54 48 49 52 44 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "MAINTENANCE_MAN_THIRD_CONVERSATION",0x00
maint_ma_cpp_variable_4:
    3d74:	4d 41 49 4e 54 5f 4d 41 4e 00 	db     "MAINT_MAN",0x00
maint_ma_cpp_variable_5:
    3d7e:	4d 41 49 4e 54 45 4e 41 4e 43 45 5f 4d 41 4e 5f 46 4f 55 52 54 48 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "MAINTENANCE_MAN_FOURTH_CONVERSATION",0x00
maint_ma_cpp_variable_6:
    3da2:	4d 41 49 4e 54 5f 4d 41 4e 00 	db     "MAINT_MAN",0x00
maint_ma_cpp_variable_7:
    3dac:	4d 41 49 4e 54 5f 4d 41 4e 00 	db     "MAINT_MAN",0x00
    3db6:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 32 (D:\SOURCE\maint_ma.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------