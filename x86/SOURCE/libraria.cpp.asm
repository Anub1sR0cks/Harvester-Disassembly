;-------------------------------------------------------------------------------
;                                                                              -
;  Module 22: D:\SOURCE\libraria.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_LIBRARIAN'                  -
;-------------------------------------------------
talk_to_LIBRARIAN:
   18f40:	53                   	push   ebx
   18f41:	52                   	push   edx
   18f42:	b8 38 30 00 00       	mov    eax,@obj3:libraria_cpp_variable_1                            ; fixup: num: 2991, src obj: 1, src ofs: 0x18f43, dst obj: 3, dst ofs: 0x3038
   18f47:	e8 24 39 05 00       	call   check_inventory
   18f4c:	84 c0                	test   al,al
   18f4e:	75 0e                	jne    talk_to_LIBRARIAN_branch_1
   18f50:	b8 3d 30 00 00       	mov    eax,@obj3:libraria_cpp_variable_2                            ; fixup: num: 2990, src obj: 1, src ofs: 0x18f51, dst obj: 3, dst ofs: 0x303d
   18f55:	e8 16 39 05 00       	call   check_inventory
   18f5a:	84 c0                	test   al,al
   18f5c:	75 1e                	jne    talk_to_LIBRARIAN_branch_2
talk_to_LIBRARIAN_branch_1:
   18f5e:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 2989, src obj: 1, src ofs: 0x18f60, dst obj: 3, dst ofs: 0x294bc
   18f64:	85 d2                	test   edx,edx
   18f66:	0f 84 a1 00 00 00    	je     talk_to_LIBRARIAN_branch_4
   18f6c:	89 d0                	mov    eax,edx
   18f6e:	ba 46 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_3                            ; fixup: num: 2988, src obj: 1, src ofs: 0x18f6f, dst obj: 3, dst ofs: 0x3046
   18f73:	e8 b8 d4 05 00       	call   strcmp_
   18f78:	85 c0                	test   eax,eax
   18f7a:	75 7b                	jne    talk_to_LIBRARIAN_branch_3
talk_to_LIBRARIAN_branch_2:
   18f7c:	b8 4f 30 00 00       	mov    eax,@obj3:libraria_cpp_variable_4                            ; fixup: num: 2987, src obj: 1, src ofs: 0x18f7d, dst obj: 3, dst ofs: 0x304f
   18f81:	bb 01 00 00 00       	mov    ebx,0x1
   18f86:	ba 54 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_5                            ; fixup: num: 2986, src obj: 1, src ofs: 0x18f87, dst obj: 3, dst ofs: 0x3054
   18f8b:	e8 20 39 05 00       	call   add_inventory
   18f90:	b8 b1 1d 00 00       	mov    eax,0x1db1
   18f95:	e8 f6 16 05 00       	call   play_wav
   18f9a:	ba 5e 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_6                            ; fixup: num: 2985, src obj: 1, src ofs: 0x18f9b, dst obj: 3, dst ofs: 0x305e
   18f9f:	b8 b7 1d 00 00       	mov    eax,0x1db7
   18fa4:	31 db                	xor    ebx,ebx
   18fa6:	e8 e5 16 05 00       	call   play_wav
   18fab:	ba 61 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_7                            ; fixup: num: 2984, src obj: 1, src ofs: 0x18fac, dst obj: 3, dst ofs: 0x3061
   18fb0:	b8 bb 1d 00 00       	mov    eax,0x1dbb
   18fb5:	31 db                	xor    ebx,ebx
   18fb7:	e8 d4 16 05 00       	call   play_wav
   18fbc:	bb 04 00 00 00       	mov    ebx,0x4
   18fc1:	ba 6b 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_8                            ; fixup: num: 2983, src obj: 1, src ofs: 0x18fc2, dst obj: 3, dst ofs: 0x306b
   18fc6:	b8 c2 1d 00 00       	mov    eax,0x1dc2
   18fcb:	e8 c0 16 05 00       	call   play_wav
   18fd0:	ba 6e 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_9                            ; fixup: num: 2982, src obj: 1, src ofs: 0x18fd1, dst obj: 3, dst ofs: 0x306e
   18fd5:	b8 c6 1d 00 00       	mov    eax,0x1dc6
   18fda:	31 db                	xor    ebx,ebx
   18fdc:	e8 af 16 05 00       	call   play_wav
   18fe1:	ba 78 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_10                           ; fixup: num: 2981, src obj: 1, src ofs: 0x18fe2, dst obj: 3, dst ofs: 0x3078
   18fe6:	b8 81 30 00 00       	mov    eax,@obj3:libraria_cpp_variable_11                           ; fixup: num: 2980, src obj: 1, src ofs: 0x18fe7, dst obj: 3, dst ofs: 0x3081
   18feb:	31 db                	xor    ebx,ebx
   18fed:	e8 1e 9f 03 00       	call   set_object
   18ff2:	31 c0                	xor    eax,eax
   18ff4:	5a                   	pop    edx
   18ff5:	5b                   	pop    ebx
   18ff6:	c3                   	ret    
talk_to_LIBRARIAN_branch_3:
   18ff7:	ba 85 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_12                           ; fixup: num: 2992, src obj: 1, src ofs: 0x18ff8, dst obj: 3, dst ofs: 0x3085
   18ffc:	b8 5b 1d 00 00       	mov    eax,0x1d5b
   19001:	31 db                	xor    ebx,ebx
   19003:	e8 88 16 05 00       	call   play_wav
   19008:	31 c0                	xor    eax,eax
   1900a:	5a                   	pop    edx
   1900b:	5b                   	pop    ebx
   1900c:	c3                   	ret    
talk_to_LIBRARIAN_branch_4:
   1900d:	ba 8f 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_13                           ; fixup: num: 3358, src obj: 1, src ofs: 0x1900e, dst obj: 3, dst ofs: 0x308f
   19012:	b8 5b 1d 00 00       	mov    eax,0x1d5b
   19017:	31 db                	xor    ebx,ebx
   19019:	e8 72 16 05 00       	call   play_wav
   1901e:	ba 99 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_14                           ; fixup: num: 3357, src obj: 1, src ofs: 0x1901f, dst obj: 3, dst ofs: 0x3099
   19023:	b8 5f 1d 00 00       	mov    eax,0x1d5f
   19028:	31 db                	xor    ebx,ebx
   1902a:	e8 61 16 05 00       	call   play_wav
   1902f:	bb 02 00 00 00       	mov    ebx,0x2
   19034:	ba 9c 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_15                           ; fixup: num: 3356, src obj: 1, src ofs: 0x19035, dst obj: 3, dst ofs: 0x309c
   19039:	b8 63 1d 00 00       	mov    eax,0x1d63
   1903e:	e8 4d 16 05 00       	call   play_wav
   19043:	ba a6 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_16                           ; fixup: num: 3355, src obj: 1, src ofs: 0x19044, dst obj: 3, dst ofs: 0x30a6
   19048:	b8 67 1d 00 00       	mov    eax,0x1d67
   1904d:	31 db                	xor    ebx,ebx
   1904f:	e8 3c 16 05 00       	call   play_wav
   19054:	ba a9 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_17                           ; fixup: num: 3354, src obj: 1, src ofs: 0x19055, dst obj: 3, dst ofs: 0x30a9
   19059:	b8 6c 1d 00 00       	mov    eax,0x1d6c
   1905e:	31 db                	xor    ebx,ebx
   19060:	e8 2b 16 05 00       	call   play_wav
   19065:	ba b3 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_18                           ; fixup: num: 3353, src obj: 1, src ofs: 0x19066, dst obj: 3, dst ofs: 0x30b3
   1906a:	b8 77 1d 00 00       	mov    eax,0x1d77
   1906f:	31 db                	xor    ebx,ebx
   19071:	e8 1a 16 05 00       	call   play_wav
   19076:	b8 fa 00 00 00       	mov    eax,0xfa
   1907b:	e8 20 11 01 00       	call   GetDlgFileString
   19080:	e8 8b 1e 05 00       	call   get_response
   19085:	83 f8 01             	cmp    eax,0x1
   19088:	75 0e                	jne    talk_to_LIBRARIAN_branch_5
   1908a:	ba bd 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_19                           ; fixup: num: 3352, src obj: 1, src ofs: 0x1908b, dst obj: 3, dst ofs: 0x30bd
   1908f:	b8 85 1d 00 00       	mov    eax,0x1d85
   19094:	31 db                	xor    ebx,ebx
   19096:	eb 14                	jmp    talk_to_LIBRARIAN_branch_6
talk_to_LIBRARIAN_branch_5:
   19098:	83 f8 02             	cmp    eax,0x2
   1909b:	75 14                	jne    talk_to_LIBRARIAN_branch_7
   1909d:	bb 04 00 00 00       	mov    ebx,0x4
   190a2:	ba c7 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_20                           ; fixup: num: 3364, src obj: 1, src ofs: 0x190a3, dst obj: 3, dst ofs: 0x30c7
   190a7:	b8 8b 1d 00 00       	mov    eax,0x1d8b
talk_to_LIBRARIAN_branch_6:
   190ac:	e8 df 15 05 00       	call   play_wav
talk_to_LIBRARIAN_branch_7:
   190b1:	ba d1 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_21                           ; fixup: num: 3363, src obj: 1, src ofs: 0x190b2, dst obj: 3, dst ofs: 0x30d1
   190b6:	b8 8f 1d 00 00       	mov    eax,0x1d8f
   190bb:	31 db                	xor    ebx,ebx
   190bd:	e8 ce 15 05 00       	call   play_wav
   190c2:	ba db 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_22                           ; fixup: num: 3362, src obj: 1, src ofs: 0x190c3, dst obj: 3, dst ofs: 0x30db
   190c7:	b8 94 1d 00 00       	mov    eax,0x1d94
   190cc:	31 db                	xor    ebx,ebx
   190ce:	e8 bd 15 05 00       	call   play_wav
   190d3:	ba de 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_23                           ; fixup: num: 3361, src obj: 1, src ofs: 0x190d4, dst obj: 3, dst ofs: 0x30de
   190d8:	b8 98 1d 00 00       	mov    eax,0x1d98
   190dd:	31 db                	xor    ebx,ebx
   190df:	e8 ac 15 05 00       	call   play_wav
   190e4:	ba e8 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_24                           ; fixup: num: 3360, src obj: 1, src ofs: 0x190e5, dst obj: 3, dst ofs: 0x30e8
   190e9:	b8 a1 1d 00 00       	mov    eax,0x1da1
   190ee:	31 db                	xor    ebx,ebx
   190f0:	e8 9b 15 05 00       	call   play_wav
   190f5:	ba eb 30 00 00       	mov    edx,@obj3:libraria_cpp_variable_25                           ; fixup: num: 3359, src obj: 1, src ofs: 0x190f6, dst obj: 3, dst ofs: 0x30eb
   190fa:	b8 a5 1d 00 00       	mov    eax,0x1da5
   190ff:	31 db                	xor    ebx,ebx
   19101:	e8 8a 15 05 00       	call   play_wav
   19106:	31 c0                	xor    eax,eax
   19108:	5a                   	pop    edx
   19109:	5b                   	pop    ebx
   1910a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 21 (zero after ret):                 -
;-------------------------------------------------
;  19109:	5b                   	pop    ebx
;  1910a:	c3                   	ret    
;  1910b:	00 00                	add    BYTE PTR [eax],al
;  1910d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1910b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 21                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 22 (D:\SOURCE\libraria.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 22: D:\SOURCE\libraria.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
libraria_cpp_variable_1:
    3038:	43 4c 55 45 00       	db     "CLUE",0x00
libraria_cpp_variable_2:
    303d:	43 41 49 4e 42 4f 4f 4b 00 	db     "CAINBOOK",0x00
libraria_cpp_variable_3:
    3046:	43 41 49 4e 42 4f 4f 4b 00 	db     "CAINBOOK",0x00
libraria_cpp_variable_4:
    304f:	43 4c 55 45 00       	db     "CLUE",0x00
libraria_cpp_variable_5:
    3054:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_6:
    305e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    305f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    3060:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_7:
    3061:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_8:
    306b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    306c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    306d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_9:
    306e:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_10:
    3078:	43 41 49 4e 42 4f 4f 4b 00 	db     "CAINBOOK",0x00
libraria_cpp_variable_11:
    3081:	52 41 48 00          	db     "RAH",0x00
libraria_cpp_variable_12:
    3085:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_13:
    308f:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_14:
    3099:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    309a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    309b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_15:
    309c:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_16:
    30a6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    30a7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    30a8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_17:
    30a9:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_18:
    30b3:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_19:
    30bd:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_20:
    30c7:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_21:
    30d1:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_22:
    30db:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    30dc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    30dd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_23:
    30de:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
libraria_cpp_variable_24:
    30e8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    30e9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    30ea:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
libraria_cpp_variable_25:
    30eb:	4c 49 42 52 41 52 49 41 4e 00 	db     "LIBRARIAN",0x00
    30f5:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 22 (D:\SOURCE\libraria.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------