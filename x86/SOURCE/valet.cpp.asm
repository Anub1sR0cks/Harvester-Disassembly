;-------------------------------------------------------------------------------
;                                                                              -
;  Module 43: D:\SOURCE\valet.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_VALET'                      -
;-------------------------------------------------
talk_to_VALET:
   1eda0:	53                   	push   ebx
   1eda1:	52                   	push   edx
   1eda2:	bb 01 00 00 00       	mov    ebx,0x1
   1eda7:	ba 54 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_1                               ; fixup: num: 4323, src obj: 1, src ofs: 0x1eda8, dst obj: 3, dst ofs: 0x4d54
   1edac:	b8 2c 0f 00 00       	mov    eax,0xf2c
   1edb1:	e8 da b8 04 00       	call   play_wav
   1edb6:	ba 5a 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_2                               ; fixup: num: 4322, src obj: 1, src ofs: 0x1edb7, dst obj: 3, dst ofs: 0x4d5a
   1edbb:	b8 31 0f 00 00       	mov    eax,0xf31
   1edc0:	31 db                	xor    ebx,ebx
   1edc2:	e8 c9 b8 04 00       	call   play_wav
   1edc7:	ba 5d 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_3                               ; fixup: num: 4321, src obj: 1, src ofs: 0x1edc8, dst obj: 3, dst ofs: 0x4d5d
   1edcc:	b8 35 0f 00 00       	mov    eax,0xf35
   1edd1:	31 db                	xor    ebx,ebx
   1edd3:	e8 b8 b8 04 00       	call   play_wav
   1edd8:	ba 63 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_4                               ; fixup: num: 4320, src obj: 1, src ofs: 0x1edd9, dst obj: 3, dst ofs: 0x4d63
   1eddd:	b8 39 0f 00 00       	mov    eax,0xf39
   1ede2:	31 db                	xor    ebx,ebx
   1ede4:	e8 a7 b8 04 00       	call   play_wav
   1ede9:	e8 42 9d 00 00       	call   VALET_WIDE_ANGLE
   1edee:	b8 fe 02 00 00       	mov    eax,0x2fe
   1edf3:	e8 a8 b3 00 00       	call   GetDlgFileString
   1edf8:	e8 13 c1 04 00       	call   get_response
   1edfd:	83 f8 01             	cmp    eax,0x1
   1ee00:	75 0e                	jne    talk_to_VALET_branch_1
   1ee02:	ba 66 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_5                               ; fixup: num: 4319, src obj: 1, src ofs: 0x1ee03, dst obj: 3, dst ofs: 0x4d66
   1ee07:	b8 4a 0f 00 00       	mov    eax,0xf4a
   1ee0c:	31 db                	xor    ebx,ebx
   1ee0e:	eb 11                	jmp    talk_to_VALET_branch_2
talk_to_VALET_branch_1:
   1ee10:	83 f8 02             	cmp    eax,0x2
   1ee13:	75 11                	jne    talk_to_VALET_branch_3
   1ee15:	ba 6c 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_6                               ; fixup: num: 4318, src obj: 1, src ofs: 0x1ee16, dst obj: 3, dst ofs: 0x4d6c
   1ee1a:	89 c3                	mov    ebx,eax
   1ee1c:	b8 50 0f 00 00       	mov    eax,0xf50
talk_to_VALET_branch_2:
   1ee21:	e8 6a b8 04 00       	call   play_wav
talk_to_VALET_branch_3:
   1ee26:	ba 72 4d 00 00       	mov    edx,@obj3:valet_cpp_variable_7                               ; fixup: num: 4317, src obj: 1, src ofs: 0x1ee27, dst obj: 3, dst ofs: 0x4d72
   1ee2b:	b8 56 0f 00 00       	mov    eax,0xf56
   1ee30:	31 db                	xor    ebx,ebx
   1ee32:	e8 59 b8 04 00       	call   play_wav
   1ee37:	31 c0                	xor    eax,eax
   1ee39:	5a                   	pop    edx
   1ee3a:	5b                   	pop    ebx
   1ee3b:	c3                   	ret    
talk_to_VALET_branch_4:
   1ee3c:	89 15 20 2d 02 00    	mov    DWORD PTR ds:@obj3:VALET,edx                                 ; fixup: num: 4316, src obj: 1, src ofs: 0x1ee3e, dst obj: 3, dst ofs: 0x22d20
   1ee42:	a1 20 2d 02 00       	mov    eax,ds:@obj3:VALET                                           ; fixup: num: 4315, src obj: 1, src ofs: 0x1ee43, dst obj: 3, dst ofs: 0x22d20
   1ee47:	c3                   	ret    
   1ee48:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1ee4e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'VALET_FIRST_CONVERSATION'           -
;-------------------------------------------------
VALET_FIRST_CONVERSATION:
   1ee50:	85 c0                	test   eax,eax
   1ee52:	74 e8                	je     talk_to_VALET_branch_4
   1ee54:	a1 20 2d 02 00       	mov    eax,ds:@obj3:VALET                                           ; fixup: num: 4325, src obj: 1, src ofs: 0x1ee55, dst obj: 3, dst ofs: 0x22d20
   1ee59:	c3                   	ret    
   1ee5a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'VALET_initialize'                   -
;-------------------------------------------------
VALET_initialize:
   1ee60:	c7 05 20 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:VALET,0x1                        ; fixup: num: 4324, src obj: 1, src ofs: 0x1ee62, dst obj: 3, dst ofs: 0x22d20
   1ee6a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 38 (zero after ret):                 -
;-------------------------------------------------
;  1ee60:	c7 05 20 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22d20,0x1
;  1ee6a:	c3                   	ret    
;  1ee6b:	00 00                	add    BYTE PTR [eax],al
;  1ee6d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1ee6b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 38                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 43 (D:\SOURCE\valet.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 43: D:\SOURCE\valet.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
valet_cpp_variable_1:
    4d54:	56 41 4c 45 54 00    	db     "VALET",0x00
valet_cpp_variable_2:
    4d5a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d5b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d5c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
valet_cpp_variable_3:
    4d5d:	56 41 4c 45 54 00    	db     "VALET",0x00
valet_cpp_variable_4:
    4d63:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d64:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d65:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
valet_cpp_variable_5:
    4d66:	56 41 4c 45 54 00    	db     "VALET",0x00
valet_cpp_variable_6:
    4d6c:	56 41 4c 45 54 00    	db     "VALET",0x00
valet_cpp_variable_7:
    4d72:	56 41 4c 45 54 00    	db     "VALET",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 43 (D:\SOURCE\valet.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 43: D:\SOURCE\valet.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
VALET:                                                                                              ; access size: DWORD
   22d20:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 43 (D:\SOURCE\valet.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------