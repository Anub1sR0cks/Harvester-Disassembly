;-------------------------------------------------------------------------------
;                                                                              -
;  Module 39: D:\SOURCE\nudeman.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_NUDE_MAN'                   -
;-------------------------------------------------
talk_to_NUDE_MAN:
   1d9b0:	53                   	push   ebx
   1d9b1:	52                   	push   edx
   1d9b2:	b8 3c 47 00 00       	mov    eax,@obj3:nudeman_cpp_variable_1                             ; fixup: num: 4143, src obj: 1, src ofs: 0x1d9b3, dst obj: 3, dst ofs: 0x473c
   1d9b7:	e8 d4 ed 04 00       	call   check_script_flag
   1d9bc:	84 c0                	test   al,al
   1d9be:	74 0f                	je     talk_to_NUDE_MAN_branch_1
   1d9c0:	ba 45 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_2                             ; fixup: num: 4142, src obj: 1, src ofs: 0x1d9c1, dst obj: 3, dst ofs: 0x4745
   1d9c5:	b8 5c 06 00 00       	mov    eax,0x65c
   1d9ca:	e9 64 01 00 00       	jmp    talk_to_NUDE_MAN_branch_5
talk_to_NUDE_MAN_branch_1:
   1d9cf:	a1 d0 2c 02 00       	mov    eax,ds:@obj3:NUDE_MAN                                        ; fixup: num: 4141, src obj: 1, src ofs: 0x1d9d0, dst obj: 3, dst ofs: 0x22cd0
   1d9d4:	85 c0                	test   eax,eax
   1d9d6:	0f 84 1a 01 00 00    	je     talk_to_NUDE_MAN_branch_4
   1d9dc:	bb 04 00 00 00       	mov    ebx,0x4
   1d9e1:	31 d2                	xor    edx,edx
   1d9e3:	b8 06 06 00 00       	mov    eax,0x606
   1d9e8:	89 15 d0 2c 02 00    	mov    DWORD PTR ds:@obj3:NUDE_MAN,edx                              ; fixup: num: 4140, src obj: 1, src ofs: 0x1d9ea, dst obj: 3, dst ofs: 0x22cd0
   1d9ee:	ba 4e 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_3                             ; fixup: num: 4139, src obj: 1, src ofs: 0x1d9ef, dst obj: 3, dst ofs: 0x474e
   1d9f3:	e8 98 cc 04 00       	call   play_wav
   1d9f8:	ba 51 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_4                             ; fixup: num: 4138, src obj: 1, src ofs: 0x1d9f9, dst obj: 3, dst ofs: 0x4751
   1d9fd:	b8 0a 06 00 00       	mov    eax,0x60a
   1da02:	31 db                	xor    ebx,ebx
   1da04:	e8 87 cc 04 00       	call   play_wav
   1da09:	ba 5a 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_5                             ; fixup: num: 4137, src obj: 1, src ofs: 0x1da0a, dst obj: 3, dst ofs: 0x475a
   1da0e:	b8 0e 06 00 00       	mov    eax,0x60e
   1da13:	31 db                	xor    ebx,ebx
   1da15:	e8 76 cc 04 00       	call   play_wav
   1da1a:	ba 5d 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_6                             ; fixup: num: 4136, src obj: 1, src ofs: 0x1da1b, dst obj: 3, dst ofs: 0x475d
   1da1f:	b8 12 06 00 00       	mov    eax,0x612
   1da24:	31 db                	xor    ebx,ebx
   1da26:	e8 65 cc 04 00       	call   play_wav
   1da2b:	ba 66 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_7                             ; fixup: num: 4135, src obj: 1, src ofs: 0x1da2c, dst obj: 3, dst ofs: 0x4766
   1da30:	b8 18 06 00 00       	mov    eax,0x618
   1da35:	31 db                	xor    ebx,ebx
   1da37:	e8 54 cc 04 00       	call   play_wav
   1da3c:	ba 69 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_8                             ; fixup: num: 4134, src obj: 1, src ofs: 0x1da3d, dst obj: 3, dst ofs: 0x4769
   1da41:	b8 1c 06 00 00       	mov    eax,0x61c
   1da46:	31 db                	xor    ebx,ebx
   1da48:	e8 43 cc 04 00       	call   play_wav
   1da4d:	b8 5d 02 00 00       	mov    eax,0x25d
   1da52:	e8 49 c7 00 00       	call   GetDlgFileString
   1da57:	e8 b4 d4 04 00       	call   get_response
   1da5c:	83 f8 01             	cmp    eax,0x1
   1da5f:	0f 85 7b 00 00 00    	jne    talk_to_NUDE_MAN_branch_3
   1da65:	ba 72 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_9                             ; fixup: num: 4150, src obj: 1, src ofs: 0x1da66, dst obj: 3, dst ofs: 0x4772
   1da6a:	89 c3                	mov    ebx,eax
   1da6c:	b8 28 06 00 00       	mov    eax,0x628
   1da71:	e8 1a cc 04 00       	call   play_wav
   1da76:	b8 01 00 00 00       	mov    eax,0x1
   1da7b:	31 d2                	xor    edx,edx
   1da7d:	e8 5e aa 00 00       	call   IF_HAS_BEEN_TASKED_WITH_STEALING_BOLT
   1da82:	85 c0                	test   eax,eax
   1da84:	0f 84 b0 00 00 00    	je     talk_to_NUDE_MAN_branch_7
   1da8a:	ba 7b 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_10                            ; fixup: num: 4149, src obj: 1, src ofs: 0x1da8b, dst obj: 3, dst ofs: 0x477b
   1da8f:	b8 2c 06 00 00       	mov    eax,0x62c
   1da94:	31 db                	xor    ebx,ebx
   1da96:	e8 f5 cb 04 00       	call   play_wav
   1da9b:	b8 5e 02 00 00       	mov    eax,0x25e
   1daa0:	e8 fb c6 00 00       	call   GetDlgFileString
   1daa5:	e8 66 d4 04 00       	call   get_response
   1daaa:	83 f8 01             	cmp    eax,0x1
   1daad:	75 16                	jne    talk_to_NUDE_MAN_branch_2
   1daaf:	ba 84 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_11                            ; fixup: num: 4148, src obj: 1, src ofs: 0x1dab0, dst obj: 3, dst ofs: 0x4784
   1dab4:	b8 36 06 00 00       	mov    eax,0x636
   1dab9:	31 db                	xor    ebx,ebx
   1dabb:	e8 d0 cb 04 00       	call   play_wav
   1dac0:	31 c0                	xor    eax,eax
   1dac2:	5a                   	pop    edx
   1dac3:	5b                   	pop    ebx
   1dac4:	c3                   	ret    
talk_to_NUDE_MAN_branch_2:
   1dac5:	83 f8 02             	cmp    eax,0x2
   1dac8:	75 70                	jne    talk_to_NUDE_MAN_branch_7
   1daca:	ba 8d 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_12                            ; fixup: num: 4147, src obj: 1, src ofs: 0x1dacb, dst obj: 3, dst ofs: 0x478d
   1dacf:	b8 3f 06 00 00       	mov    eax,0x63f
   1dad4:	31 db                	xor    ebx,ebx
   1dad6:	e8 b5 cb 04 00       	call   play_wav
   1dadb:	31 c0                	xor    eax,eax
   1dadd:	5a                   	pop    edx
   1dade:	5b                   	pop    ebx
   1dadf:	c3                   	ret    
talk_to_NUDE_MAN_branch_3:
   1dae0:	83 f8 02             	cmp    eax,0x2
   1dae3:	75 55                	jne    talk_to_NUDE_MAN_branch_7
   1dae5:	bb 01 00 00 00       	mov    ebx,0x1
   1daea:	ba 96 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_13                            ; fixup: num: 4146, src obj: 1, src ofs: 0x1daeb, dst obj: 3, dst ofs: 0x4796
   1daef:	b8 48 06 00 00       	mov    eax,0x648
   1daf4:	eb 3f                	jmp    talk_to_NUDE_MAN_branch_6
talk_to_NUDE_MAN_branch_4:
   1daf6:	ba 9f 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_14                            ; fixup: num: 4145, src obj: 1, src ofs: 0x1daf7, dst obj: 3, dst ofs: 0x479f
   1dafb:	b8 51 06 00 00       	mov    eax,0x651
   1db00:	31 db                	xor    ebx,ebx
   1db02:	e8 89 cb 04 00       	call   play_wav
   1db07:	ba a2 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_15                            ; fixup: num: 4144, src obj: 1, src ofs: 0x1db08, dst obj: 3, dst ofs: 0x47a2
   1db0c:	b8 55 06 00 00       	mov    eax,0x655
   1db11:	31 db                	xor    ebx,ebx
   1db13:	e8 78 cb 04 00       	call   play_wav
   1db18:	ba ab 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_16                            ; fixup: num: 4157, src obj: 1, src ofs: 0x1db19, dst obj: 3, dst ofs: 0x47ab
   1db1d:	b8 63 30 00 00       	mov    eax,0x3063
   1db22:	31 db                	xor    ebx,ebx
   1db24:	e8 67 cb 04 00       	call   play_wav
   1db29:	ba ae 47 00 00       	mov    edx,@obj3:nudeman_cpp_variable_17                            ; fixup: num: 4156, src obj: 1, src ofs: 0x1db2a, dst obj: 3, dst ofs: 0x47ae
   1db2e:	b8 28 06 00 00       	mov    eax,0x628
talk_to_NUDE_MAN_branch_5:
   1db33:	31 db                	xor    ebx,ebx
talk_to_NUDE_MAN_branch_6:
   1db35:	e8 56 cb 04 00       	call   play_wav
talk_to_NUDE_MAN_branch_7:
   1db3a:	31 c0                	xor    eax,eax
   1db3c:	5a                   	pop    edx
   1db3d:	5b                   	pop    ebx
   1db3e:	c3                   	ret    
talk_to_NUDE_MAN_branch_8:
   1db3f:	89 15 d0 2c 02 00    	mov    DWORD PTR ds:@obj3:NUDE_MAN,edx                              ; fixup: num: 4155, src obj: 1, src ofs: 0x1db41, dst obj: 3, dst ofs: 0x22cd0
   1db45:	a1 d0 2c 02 00       	mov    eax,ds:@obj3:NUDE_MAN                                        ; fixup: num: 4154, src obj: 1, src ofs: 0x1db46, dst obj: 3, dst ofs: 0x22cd0
   1db4a:	c3                   	ret    
   1db4b:	8d 40 00             	lea    eax,[eax+0x0]
   1db4e:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'FIRST_CONVERSATION_AT_NIGHT'        -
;-------------------------------------------------
FIRST_CONVERSATION_AT_NIGHT:
   1db50:	85 c0                	test   eax,eax
   1db52:	74 eb                	je     talk_to_NUDE_MAN_branch_8
   1db54:	a1 d0 2c 02 00       	mov    eax,ds:@obj3:NUDE_MAN                                        ; fixup: num: 4153, src obj: 1, src ofs: 0x1db55, dst obj: 3, dst ofs: 0x22cd0
   1db59:	c3                   	ret    
   1db5a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'NUDE_MAN_initialize'                -
;-------------------------------------------------
NUDE_MAN_initialize:
   1db60:	53                   	push   ebx
   1db61:	52                   	push   edx
   1db62:	ba 01 00 00 00       	mov    edx,0x1
   1db67:	31 db                	xor    ebx,ebx
   1db69:	89 15 d0 2c 02 00    	mov    DWORD PTR ds:@obj3:NUDE_MAN,edx                              ; fixup: num: 4152, src obj: 1, src ofs: 0x1db6b, dst obj: 3, dst ofs: 0x22cd0
   1db6f:	89 1d d4 2c 02 00    	mov    DWORD PTR ds:@obj3:NUDE_MAN_variable_1,ebx                   ; fixup: num: 4151, src obj: 1, src ofs: 0x1db71, dst obj: 3, dst ofs: 0x22cd4
   1db75:	5a                   	pop    edx
   1db76:	5b                   	pop    ebx
   1db77:	c3                   	ret    
;-------------------------------------------------
;  Bad code 35 (zero after ret):                 -
;-------------------------------------------------
;  1db76:	5b                   	pop    ebx
;  1db77:	c3                   	ret    
;  1db78:	00 00                	add    BYTE PTR [eax],al
;  1db7a:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (8 bytes):                       -
;-------------------------------------------------
   1db78:	00 00 00 00 00 00 .. 	db     8 dup(0x00)
;-------------------------------------------------
;  End of bad code 35                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 39 (D:\SOURCE\nudeman.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 39: D:\SOURCE\nudeman.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
nudeman_cpp_variable_1:
    473c:	44 41 59 5f 46 4c 41 47 00 	db     "DAY_FLAG",0x00
nudeman_cpp_variable_2:
    4745:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_3:
    474e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    474f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4750:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
nudeman_cpp_variable_4:
    4751:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_5:
    475a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    475b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    475c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
nudeman_cpp_variable_6:
    475d:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_7:
    4766:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4767:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4768:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
nudeman_cpp_variable_8:
    4769:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_9:
    4772:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_10:
    477b:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_11:
    4784:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_12:
    478d:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_13:
    4796:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_14:
    479f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    47a0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    47a1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
nudeman_cpp_variable_15:
    47a2:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
nudeman_cpp_variable_16:
    47ab:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    47ac:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    47ad:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
nudeman_cpp_variable_17:
    47ae:	4e 55 44 45 5f 4d 41 4e 00 	db     "NUDE_MAN",0x00
    47b7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 39 (D:\SOURCE\nudeman.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 39: D:\SOURCE\nudeman.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
NUDE_MAN:                                                                                           ; access size: DWORD
   22cd0:	00 00 00 00          	dd     0x00000000
NUDE_MAN_variable_1:                                                                                ; access size: DWORD
   22cd4:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 39 (D:\SOURCE\nudeman.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------