;-------------------------------------------------------------------------------
;                                                                              -
;  Module 31: D:\SOURCE\mother.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MOTHER'                     -
;-------------------------------------------------
talk_to_MOTHER:
   1b5b0:	53                   	push   ebx
   1b5b1:	52                   	push   edx
   1b5b2:	a1 98 2c 02 00       	mov    eax,ds:@obj3:MOTHER                                          ; fixup: num: 3725, src obj: 1, src ofs: 0x1b5b3, dst obj: 3, dst ofs: 0x22c98
   1b5b7:	85 c0                	test   eax,eax
   1b5b9:	0f 84 ac 00 00 00    	je     talk_to_MOTHER_branch_2
   1b5bf:	bb 03 00 00 00       	mov    ebx,0x3
   1b5c4:	31 d2                	xor    edx,edx
   1b5c6:	b8 d6 26 00 00       	mov    eax,0x26d6
   1b5cb:	89 15 98 2c 02 00    	mov    DWORD PTR ds:@obj3:MOTHER,edx                                ; fixup: num: 3724, src obj: 1, src ofs: 0x1b5cd, dst obj: 3, dst ofs: 0x22c98
   1b5d1:	ba f8 3c 00 00       	mov    edx,@obj3:mother_cpp_variable_1                              ; fixup: num: 3723, src obj: 1, src ofs: 0x1b5d2, dst obj: 3, dst ofs: 0x3cf8
   1b5d6:	e8 b5 f0 04 00       	call   play_wav
   1b5db:	e8 00 d5 00 00       	call   CHILDREN_LOOK_UP_FROM_HER_PARTIALLY_DEVOURED_BODY
   1b5e0:	ba ff 3c 00 00       	mov    edx,@obj3:mother_cpp_variable_2                              ; fixup: num: 3722, src obj: 1, src ofs: 0x1b5e1, dst obj: 3, dst ofs: 0x3cff
   1b5e5:	b8 e9 26 00 00       	mov    eax,0x26e9
   1b5ea:	31 db                	xor    ebx,ebx
   1b5ec:	e8 9f f0 04 00       	call   play_wav
   1b5f1:	b8 73 01 00 00       	mov    eax,0x173
   1b5f6:	e8 a5 eb 00 00       	call   GetDlgFileString
   1b5fb:	e8 10 f9 04 00       	call   get_response
   1b600:	83 f8 01             	cmp    eax,0x1
   1b603:	75 1e                	jne    talk_to_MOTHER_branch_1
   1b605:	bb 03 00 00 00       	mov    ebx,0x3
   1b60a:	ba 06 3d 00 00       	mov    edx,@obj3:mother_cpp_variable_3                              ; fixup: num: 3721, src obj: 1, src ofs: 0x1b60b, dst obj: 3, dst ofs: 0x3d06
   1b60f:	b8 f5 26 00 00       	mov    eax,0x26f5
   1b614:	e8 77 f0 04 00       	call   play_wav
   1b619:	e8 f2 d2 00 00       	call   CU_OF_CHILD_BITING_A_CHUNK_OUT_OF_HER_LEG
   1b61e:	31 c0                	xor    eax,eax
   1b620:	5a                   	pop    edx
   1b621:	5b                   	pop    ebx
   1b622:	c3                   	ret    
talk_to_MOTHER_branch_1:
   1b623:	83 f8 02             	cmp    eax,0x2
   1b626:	75 43                	jne    talk_to_MOTHER_branch_2
   1b628:	e8 e3 d2 00 00       	call   CU_OF_CHILD_BITING_A_CHUNK_OUT_OF_HER_LEG
   1b62d:	bb 03 00 00 00       	mov    ebx,0x3
   1b632:	ba 0d 3d 00 00       	mov    edx,@obj3:mother_cpp_variable_4                              ; fixup: num: 3732, src obj: 1, src ofs: 0x1b633, dst obj: 3, dst ofs: 0x3d0d
   1b637:	b8 09 27 00 00       	mov    eax,0x2709
   1b63c:	e8 4f f0 04 00       	call   play_wav
   1b641:	e8 9a d4 00 00       	call   CHILDREN_LOOK_UP_FROM_HER_PARTIALLY_DEVOURED_BODY
   1b646:	ba 14 3d 00 00       	mov    edx,@obj3:mother_cpp_variable_5                              ; fixup: num: 3731, src obj: 1, src ofs: 0x1b647, dst obj: 3, dst ofs: 0x3d14
   1b64b:	b8 14 27 00 00       	mov    eax,0x2714
   1b650:	31 db                	xor    ebx,ebx
   1b652:	e8 39 f0 04 00       	call   play_wav
   1b657:	bb 03 00 00 00       	mov    ebx,0x3
   1b65c:	ba 1b 3d 00 00       	mov    edx,@obj3:mother_cpp_variable_6                              ; fixup: num: 3730, src obj: 1, src ofs: 0x1b65d, dst obj: 3, dst ofs: 0x3d1b
   1b661:	b8 19 27 00 00       	mov    eax,0x2719
   1b666:	e8 25 f0 04 00       	call   play_wav
talk_to_MOTHER_branch_2:
   1b66b:	31 c0                	xor    eax,eax
   1b66d:	5a                   	pop    edx
   1b66e:	5b                   	pop    ebx
   1b66f:	c3                   	ret    
talk_to_MOTHER_branch_3:
   1b670:	89 15 98 2c 02 00    	mov    DWORD PTR ds:@obj3:MOTHER,edx                                ; fixup: num: 3729, src obj: 1, src ofs: 0x1b672, dst obj: 3, dst ofs: 0x22c98
   1b676:	a1 98 2c 02 00       	mov    eax,ds:@obj3:MOTHER                                          ; fixup: num: 3728, src obj: 1, src ofs: 0x1b677, dst obj: 3, dst ofs: 0x22c98
   1b67b:	c3                   	ret    
   1b67c:	8d 44 20 00          	lea    eax,[eax+eiz*1+0x0]

;-------------------------------------------------
;  Function 'MOTHER_FIRST_CONVERSATION'          -
;-------------------------------------------------
MOTHER_FIRST_CONVERSATION:
   1b680:	85 c0                	test   eax,eax
   1b682:	74 ec                	je     talk_to_MOTHER_branch_3
   1b684:	a1 98 2c 02 00       	mov    eax,ds:@obj3:MOTHER                                          ; fixup: num: 3727, src obj: 1, src ofs: 0x1b685, dst obj: 3, dst ofs: 0x22c98
   1b689:	c3                   	ret    
   1b68a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MOTHER_initialize'                  -
;-------------------------------------------------
MOTHER_initialize:
   1b690:	c7 05 98 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:MOTHER,0x1                       ; fixup: num: 3726, src obj: 1, src ofs: 0x1b692, dst obj: 3, dst ofs: 0x22c98
   1b69a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 28 (zero after ret):                 -
;-------------------------------------------------
;  1b690:	c7 05 98 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22c98,0x1
;  1b69a:	c3                   	ret    
;  1b69b:	00 00                	add    BYTE PTR [eax],al
;  1b69d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1b69b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 28                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 31 (D:\SOURCE\mother.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 31: D:\SOURCE\mother.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
mother_cpp_variable_1:
    3cf8:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
mother_cpp_variable_2:
    3cff:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
mother_cpp_variable_3:
    3d06:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
mother_cpp_variable_4:
    3d0d:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
mother_cpp_variable_5:
    3d14:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
mother_cpp_variable_6:
    3d1b:	4d 4f 54 48 45 52 00 	db     "MOTHER",0x00
    3d22:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 31 (D:\SOURCE\mother.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 31: D:\SOURCE\mother.cpp                                             -
;                                                                              -
;-------------------------------------------------------------------------------
MOTHER:                                                                                             ; access size: DWORD
   22c98:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 31 (D:\SOURCE\mother.cpp)                                     -
;                                                                              -
;-------------------------------------------------------------------------------