;-------------------------------------------------------------------------------
;                                                                              -
;  Module 63: D:\SOURCE\mem_dir.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MEMBERSHIP_DIRECTOR'        -
;-------------------------------------------------
talk_to_MEMBERSHIP_DIRECTOR:
   296d0:	53                   	push   ebx
   296d1:	52                   	push   edx
   296d2:	b8 28 7e 00 00       	mov    eax,@obj3:mem_dir_cpp_variable_1                             ; fixup: num: 6680, src obj: 1, src ofs: 0x296d3, dst obj: 3, dst ofs: 0x7e28
   296d7:	e8 b4 30 04 00       	call   check_script_flag
   296dc:	84 c0                	test   al,al
   296de:	75 45                	jne    talk_to_MEMBERSHIP_DIRECTOR_branch_2
   296e0:	bb 01 00 00 00       	mov    ebx,0x1
   296e5:	ba 39 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_2                             ; fixup: num: 6679, src obj: 1, src ofs: 0x296e6, dst obj: 3, dst ofs: 0x7e39
   296ea:	b8 b7 02 00 00       	mov    eax,0x2b7
   296ef:	e8 9c 0f 04 00       	call   play_wav
   296f4:	b8 fe 00 00 00       	mov    eax,0xfe
   296f9:	e8 a2 0a 00 00       	call   GetDlgFileString
   296fe:	e8 0d 18 04 00       	call   get_response
   29703:	83 f8 01             	cmp    eax,0x1
   29706:	75 0c                	jne    talk_to_MEMBERSHIP_DIRECTOR_branch_1
   29708:	ba 42 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_3                             ; fixup: num: 6678, src obj: 1, src ofs: 0x29709, dst obj: 3, dst ofs: 0x7e42
   2970d:	b8 c2 02 00 00       	mov    eax,0x2c2
   29712:	eb 62                	jmp    talk_to_MEMBERSHIP_DIRECTOR_branch_4
talk_to_MEMBERSHIP_DIRECTOR_branch_1:
   29714:	83 f8 02             	cmp    eax,0x2
   29717:	75 64                	jne    talk_to_MEMBERSHIP_DIRECTOR_branch_5
   29719:	ba 4b 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_4                             ; fixup: num: 6677, src obj: 1, src ofs: 0x2971a, dst obj: 3, dst ofs: 0x7e4b
   2971e:	b8 cb 02 00 00       	mov    eax,0x2cb
   29723:	eb 51                	jmp    talk_to_MEMBERSHIP_DIRECTOR_branch_4
talk_to_MEMBERSHIP_DIRECTOR_branch_2:
   29725:	83 3d 64 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:MEMBERSHIP_DIRECTOR_variable_1,0x0        ; fixup: num: 6676, src obj: 1, src ofs: 0x29727, dst obj: 3, dst ofs: 0x22f64
   2972c:	75 4f                	jne    talk_to_MEMBERSHIP_DIRECTOR_branch_5
   2972e:	bb 01 00 00 00       	mov    ebx,0x1
   29733:	ba 54 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_5                             ; fixup: num: 6675, src obj: 1, src ofs: 0x29734, dst obj: 3, dst ofs: 0x7e54
   29738:	b8 d5 02 00 00       	mov    eax,0x2d5
   2973d:	89 1d 64 2f 02 00    	mov    DWORD PTR ds:@obj3:MEMBERSHIP_DIRECTOR_variable_1,ebx        ; fixup: num: 6674, src obj: 1, src ofs: 0x2973f, dst obj: 3, dst ofs: 0x22f64
   29743:	e8 48 0f 04 00       	call   play_wav
   29748:	b8 5d 7e 00 00       	mov    eax,@obj3:mem_dir_cpp_variable_6                             ; fixup: num: 6673, src obj: 1, src ofs: 0x29749, dst obj: 3, dst ofs: 0x7e5d
   2974d:	e8 3e 30 04 00       	call   check_script_flag
   29752:	84 c0                	test   al,al
   29754:	74 16                	je     talk_to_MEMBERSHIP_DIRECTOR_branch_3
   29756:	ba 6b 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_7                             ; fixup: num: 6672, src obj: 1, src ofs: 0x29757, dst obj: 3, dst ofs: 0x7e6b
   2975b:	b8 e3 02 00 00       	mov    eax,0x2e3
   29760:	31 db                	xor    ebx,ebx
   29762:	e8 29 0f 04 00       	call   play_wav
   29767:	31 c0                	xor    eax,eax
   29769:	5a                   	pop    edx
   2976a:	5b                   	pop    ebx
   2976b:	c3                   	ret    
talk_to_MEMBERSHIP_DIRECTOR_branch_3:
   2976c:	ba 74 7e 00 00       	mov    edx,@obj3:mem_dir_cpp_variable_8                             ; fixup: num: 6671, src obj: 1, src ofs: 0x2976d, dst obj: 3, dst ofs: 0x7e74
   29771:	b8 ea 02 00 00       	mov    eax,0x2ea
talk_to_MEMBERSHIP_DIRECTOR_branch_4:
   29776:	31 db                	xor    ebx,ebx
   29778:	e8 13 0f 04 00       	call   play_wav
talk_to_MEMBERSHIP_DIRECTOR_branch_5:
   2977d:	31 c0                	xor    eax,eax
   2977f:	5a                   	pop    edx
   29780:	5b                   	pop    ebx
   29781:	c3                   	ret    
talk_to_MEMBERSHIP_DIRECTOR_branch_6:
   29782:	89 15 60 2f 02 00    	mov    DWORD PTR ds:@obj3:MEMBERSHIP_DIRECTOR,edx                   ; fixup: num: 6685, src obj: 1, src ofs: 0x29784, dst obj: 3, dst ofs: 0x22f60
   29788:	a1 60 2f 02 00       	mov    eax,ds:@obj3:MEMBERSHIP_DIRECTOR                             ; fixup: num: 6684, src obj: 1, src ofs: 0x29789, dst obj: 3, dst ofs: 0x22f60
   2978d:	c3                   	ret    
   2978e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function                                      -
;  'MEMBERSHIP_DIRECTOR_FIRST_CONVERSATION'      -
;-------------------------------------------------
MEMBERSHIP_DIRECTOR_FIRST_CONVERSATION:
   29790:	85 c0                	test   eax,eax
   29792:	74 ee                	je     talk_to_MEMBERSHIP_DIRECTOR_branch_6
   29794:	a1 60 2f 02 00       	mov    eax,ds:@obj3:MEMBERSHIP_DIRECTOR                             ; fixup: num: 6683, src obj: 1, src ofs: 0x29795, dst obj: 3, dst ofs: 0x22f60
   29799:	c3                   	ret    
   2979a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MEMBERSHIP_DIRECTOR_initialize'     -
;-------------------------------------------------
MEMBERSHIP_DIRECTOR_initialize:
   297a0:	53                   	push   ebx
   297a1:	52                   	push   edx
   297a2:	ba 01 00 00 00       	mov    edx,0x1
   297a7:	31 db                	xor    ebx,ebx
   297a9:	89 15 60 2f 02 00    	mov    DWORD PTR ds:@obj3:MEMBERSHIP_DIRECTOR,edx                   ; fixup: num: 6682, src obj: 1, src ofs: 0x297ab, dst obj: 3, dst ofs: 0x22f60
   297af:	89 1d 64 2f 02 00    	mov    DWORD PTR ds:@obj3:MEMBERSHIP_DIRECTOR_variable_1,ebx        ; fixup: num: 6681, src obj: 1, src ofs: 0x297b1, dst obj: 3, dst ofs: 0x22f64
   297b5:	5a                   	pop    edx
   297b6:	5b                   	pop    ebx
   297b7:	c3                   	ret    
;-------------------------------------------------
;  Bad code 58 (zero after ret):                 -
;-------------------------------------------------
;  297b6:	5b                   	pop    ebx
;  297b7:	c3                   	ret    
;  297b8:	00 00                	add    BYTE PTR [eax],al
;  297ba:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (8 bytes):                       -
;-------------------------------------------------
   297b8:	00 00 00 00 00 00 .. 	db     8 dup(0x00)
;-------------------------------------------------
;  End of bad code 58                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 63 (D:\SOURCE\mem_dir.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 63: D:\SOURCE\mem_dir.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
mem_dir_cpp_variable_1:
    7e28:	50 43 5f 4b 49 4c 4c 45 44 5f 4b 45 57 50 49 45 00 	db     "PC_KILLED_KEWPIE",0x00
mem_dir_cpp_variable_2:
    7e39:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
mem_dir_cpp_variable_3:
    7e42:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
mem_dir_cpp_variable_4:
    7e4b:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
mem_dir_cpp_variable_5:
    7e54:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
mem_dir_cpp_variable_6:
    7e5d:	54 4f 4f 4b 5f 54 48 45 5f 44 4f 4c 4c 00 	db     "TOOK_THE_DOLL",0x00
mem_dir_cpp_variable_7:
    7e6b:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
mem_dir_cpp_variable_8:
    7e74:	4d 45 4d 42 5f 44 49 52 00 	db     "MEMB_DIR",0x00
    7e7d:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 63 (D:\SOURCE\mem_dir.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 63: D:\SOURCE\mem_dir.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
MEMBERSHIP_DIRECTOR:                                                                                ; access size: DWORD
   22f60:	00 00 00 00          	dd     0x00000000
MEMBERSHIP_DIRECTOR_variable_1:                                                                     ; access size: DWORD
   22f64:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 63 (D:\SOURCE\mem_dir.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------