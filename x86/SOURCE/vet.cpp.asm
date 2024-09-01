;-------------------------------------------------------------------------------
;                                                                              -
;  Module 45: D:\SOURCE\vet.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_WAR_VETERAN'                -
;-------------------------------------------------
talk_to_WAR_VETERAN:
   1fd20:	53                   	push   ebx
   1fd21:	52                   	push   edx
   1fd22:	b8 50 52 00 00       	mov    eax,@obj3:vet_cpp_variable_1                                 ; fixup: num: 4480, src obj: 1, src ofs: 0x1fd23, dst obj: 3, dst ofs: 0x5250
   1fd27:	e8 64 ca 04 00       	call   check_script_flag
   1fd2c:	84 c0                	test   al,al
   1fd2e:	0f 84 9d 00 00 00    	je     talk_to_WAR_VETERAN_branch_4
   1fd34:	b8 5e 52 00 00       	mov    eax,@obj3:vet_cpp_variable_2                                 ; fixup: num: 4479, src obj: 1, src ofs: 0x1fd35, dst obj: 3, dst ofs: 0x525e
   1fd39:	31 d2                	xor    edx,edx
   1fd3b:	e8 a0 ca 04 00       	call   set_script_flag
   1fd40:	31 db                	xor    ebx,ebx
   1fd42:	ba 6c 52 00 00       	mov    edx,@obj3:vet_cpp_variable_3                                 ; fixup: num: 4478, src obj: 1, src ofs: 0x1fd43, dst obj: 3, dst ofs: 0x526c
   1fd47:	b8 d9 06 00 00       	mov    eax,0x6d9
   1fd4c:	e8 3f a9 04 00       	call   play_wav
   1fd51:	ba 70 52 00 00       	mov    edx,@obj3:vet_cpp_variable_4                                 ; fixup: num: 4477, src obj: 1, src ofs: 0x1fd52, dst obj: 3, dst ofs: 0x5270
   1fd56:	b8 47 04 00 00       	mov    eax,0x447
   1fd5b:	31 db                	xor    ebx,ebx
   1fd5d:	e8 2e a9 04 00       	call   play_wav
   1fd62:	bb 02 00 00 00       	mov    ebx,0x2
   1fd67:	ba 73 52 00 00       	mov    edx,@obj3:vet_cpp_variable_5                                 ; fixup: num: 4476, src obj: 1, src ofs: 0x1fd68, dst obj: 3, dst ofs: 0x5273
   1fd6c:	b8 e1 06 00 00       	mov    eax,0x6e1
   1fd71:	e8 1a a9 04 00       	call   play_wav
   1fd76:	b8 ff 02 00 00       	mov    eax,0x2ff
   1fd7b:	e8 20 a4 00 00       	call   GetDlgFileString
   1fd80:	e8 8b b1 04 00       	call   get_response
   1fd85:	83 f8 01             	cmp    eax,0x1
   1fd88:	75 11                	jne    talk_to_WAR_VETERAN_branch_1
   1fd8a:	bb 02 00 00 00       	mov    ebx,0x2
   1fd8f:	ba 77 52 00 00       	mov    edx,@obj3:vet_cpp_variable_6                                 ; fixup: num: 4475, src obj: 1, src ofs: 0x1fd90, dst obj: 3, dst ofs: 0x5277
   1fd94:	b8 ec 06 00 00       	mov    eax,0x6ec
   1fd99:	eb 11                	jmp    talk_to_WAR_VETERAN_branch_2
talk_to_WAR_VETERAN_branch_1:
   1fd9b:	83 f8 02             	cmp    eax,0x2
   1fd9e:	75 11                	jne    talk_to_WAR_VETERAN_branch_3
   1fda0:	ba 7b 52 00 00       	mov    edx,@obj3:vet_cpp_variable_7                                 ; fixup: num: 4474, src obj: 1, src ofs: 0x1fda1, dst obj: 3, dst ofs: 0x527b
   1fda5:	b8 f0 06 00 00       	mov    eax,0x6f0
   1fdaa:	31 db                	xor    ebx,ebx
talk_to_WAR_VETERAN_branch_2:
   1fdac:	e8 df a8 04 00       	call   play_wav
talk_to_WAR_VETERAN_branch_3:
   1fdb1:	bb 02 00 00 00       	mov    ebx,0x2
   1fdb6:	ba 7f 52 00 00       	mov    edx,@obj3:vet_cpp_variable_8                                 ; fixup: num: 4473, src obj: 1, src ofs: 0x1fdb7, dst obj: 3, dst ofs: 0x527f
   1fdbb:	b8 f4 06 00 00       	mov    eax,0x6f4
   1fdc0:	e8 cb a8 04 00       	call   play_wav
   1fdc5:	b8 83 52 00 00       	mov    eax,@obj3:vet_cpp_variable_9                                 ; fixup: num: 4472, src obj: 1, src ofs: 0x1fdc6, dst obj: 3, dst ofs: 0x5283
   1fdca:	31 d2                	xor    edx,edx
   1fdcc:	e8 0f ca 04 00       	call   set_script_flag
talk_to_WAR_VETERAN_branch_4:
   1fdd1:	31 c0                	xor    eax,eax
   1fdd3:	5a                   	pop    edx
   1fdd4:	5b                   	pop    ebx
   1fdd5:	c3                   	ret    
;-------------------------------------------------
;  Bad code 40 (zero after ret):                 -
;-------------------------------------------------
;  1fdd4:	5b                   	pop    ebx
;  1fdd5:	c3                   	ret    
;  1fdd6:	00 00                	add    BYTE PTR [eax],al
;  1fdd8:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   1fdd6:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 40                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 45 (D:\SOURCE\vet.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 45: D:\SOURCE\vet.cpp                                                -
;                                                                              -
;-------------------------------------------------------------------------------
vet_cpp_variable_1:
    5250:	56 45 54 5f 49 4e 54 45 52 52 55 50 54 00 	db     "VET_INTERRUPT",0x00
vet_cpp_variable_2:
    525e:	56 45 54 5f 49 4e 54 45 52 52 55 50 54 00 	db     "VET_INTERRUPT",0x00
vet_cpp_variable_3:
    526c:	56 45 54 00          	db     "VET",0x00
vet_cpp_variable_4:
    5270:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5271:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5272:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
vet_cpp_variable_5:
    5273:	56 45 54 00          	db     "VET",0x00
vet_cpp_variable_6:
    5277:	56 45 54 00          	db     "VET",0x00
vet_cpp_variable_7:
    527b:	56 45 54 00          	db     "VET",0x00
vet_cpp_variable_8:
    527f:	56 45 54 00          	db     "VET",0x00
vet_cpp_variable_9:
    5283:	56 45 54 5f 49 4e 54 45 52 52 55 50 54 00 	db     "VET_INTERRUPT",0x00
    5291:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 45 (D:\SOURCE\vet.cpp)                                        -
;                                                                              -
;-------------------------------------------------------------------------------