;-------------------------------------------------------------------------------
;                                                                              -
;  Module 59: D:\SOURCE\chef.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_LODGE_CHEF'                 -
;-------------------------------------------------
talk_to_LODGE_CHEF:
   28170:	53                   	push   ebx
   28171:	52                   	push   edx
   28172:	bb 02 00 00 00       	mov    ebx,0x2
   28177:	ba 00 75 00 00       	mov    edx,@obj3:chef_cpp_variable_1                                ; fixup: num: 6588, src obj: 1, src ofs: 0x28178, dst obj: 3, dst ofs: 0x7500
   2817c:	b8 10 1b 00 00       	mov    eax,0x1b10
   28181:	e8 0a 25 04 00       	call   play_wav
   28186:	ba 0b 75 00 00       	mov    edx,@obj3:chef_cpp_variable_2                                ; fixup: num: 6587, src obj: 1, src ofs: 0x28187, dst obj: 3, dst ofs: 0x750b
   2818b:	b8 19 1b 00 00       	mov    eax,0x1b19
   28190:	31 db                	xor    ebx,ebx
   28192:	e8 f9 24 04 00       	call   play_wav
   28197:	bb 03 00 00 00       	mov    ebx,0x3
   2819c:	ba 16 75 00 00       	mov    edx,@obj3:chef_cpp_variable_3                                ; fixup: num: 6586, src obj: 1, src ofs: 0x2819d, dst obj: 3, dst ofs: 0x7516
   281a1:	b8 1a 1b 00 00       	mov    eax,0x1b1a
   281a6:	e8 e5 24 04 00       	call   play_wav
   281ab:	ba 21 75 00 00       	mov    edx,@obj3:chef_cpp_variable_4                                ; fixup: num: 6585, src obj: 1, src ofs: 0x281ac, dst obj: 3, dst ofs: 0x7521
   281b0:	b8 1b 1b 00 00       	mov    eax,0x1b1b
   281b5:	31 db                	xor    ebx,ebx
   281b7:	e8 d4 24 04 00       	call   play_wav
   281bc:	b8 21 00 00 00       	mov    eax,0x21
   281c1:	e8 da 1f 00 00       	call   GetDlgFileString
   281c6:	e8 45 2d 04 00       	call   get_response
   281cb:	83 f8 01             	cmp    eax,0x1
   281ce:	75 11                	jne    talk_to_LODGE_CHEF_branch_1
   281d0:	bb 03 00 00 00       	mov    ebx,0x3
   281d5:	ba 2c 75 00 00       	mov    edx,@obj3:chef_cpp_variable_5                                ; fixup: num: 6584, src obj: 1, src ofs: 0x281d6, dst obj: 3, dst ofs: 0x752c
   281da:	b8 2c 1b 00 00       	mov    eax,0x1b2c
   281df:	eb 11                	jmp    talk_to_LODGE_CHEF_branch_2
talk_to_LODGE_CHEF_branch_1:
   281e1:	83 f8 02             	cmp    eax,0x2
   281e4:	75 11                	jne    talk_to_LODGE_CHEF_branch_3
   281e6:	ba 37 75 00 00       	mov    edx,@obj3:chef_cpp_variable_6                                ; fixup: num: 6583, src obj: 1, src ofs: 0x281e7, dst obj: 3, dst ofs: 0x7537
   281eb:	b8 31 1b 00 00       	mov    eax,0x1b31
   281f0:	31 db                	xor    ebx,ebx
talk_to_LODGE_CHEF_branch_2:
   281f2:	e8 99 24 04 00       	call   play_wav
talk_to_LODGE_CHEF_branch_3:
   281f7:	ba 42 75 00 00       	mov    edx,@obj3:chef_cpp_variable_7                                ; fixup: num: 6582, src obj: 1, src ofs: 0x281f8, dst obj: 3, dst ofs: 0x7542
   281fc:	b8 36 1b 00 00       	mov    eax,0x1b36
   28201:	31 db                	xor    ebx,ebx
   28203:	e8 88 24 04 00       	call   play_wav
   28208:	bb 03 00 00 00       	mov    ebx,0x3
   2820d:	ba 45 75 00 00       	mov    edx,@obj3:chef_cpp_variable_8                                ; fixup: num: 6581, src obj: 1, src ofs: 0x2820e, dst obj: 3, dst ofs: 0x7545
   28212:	b8 3a 1b 00 00       	mov    eax,0x1b3a
   28217:	e8 74 24 04 00       	call   play_wav
   2821c:	31 c0                	xor    eax,eax
   2821e:	5a                   	pop    edx
   2821f:	5b                   	pop    ebx
   28220:	c3                   	ret    
;-------------------------------------------------
;  Bad code 54 (zero after ret):                 -
;-------------------------------------------------
;  2821f:	5b                   	pop    ebx
;  28220:	c3                   	ret    
;  28221:	00 00                	add    BYTE PTR [eax],al
;  28223:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (15 bytes):                      -
;-------------------------------------------------
   28221:	00 00 00 00 00 00 .. 	db     15 dup(0x00)
;-------------------------------------------------
;  End of bad code 54                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 59 (D:\SOURCE\chef.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 59: D:\SOURCE\chef.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
chef_cpp_variable_1:
    7500:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_2:
    750b:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_3:
    7516:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_4:
    7521:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_5:
    752c:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_6:
    7537:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00
chef_cpp_variable_7:
    7542:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7543:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7544:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
chef_cpp_variable_8:
    7545:	4c 4f 44 47 45 5f 43 48 45 46 00 	db     "LODGE_CHEF",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 59 (D:\SOURCE\chef.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------