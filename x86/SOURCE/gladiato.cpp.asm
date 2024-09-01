;-------------------------------------------------------------------------------
;                                                                              -
;  Module 35: D:\SOURCE\gladiato.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_GLADIATOR'                  -
;-------------------------------------------------
talk_to_GLADIATOR:
   1c630:	53                   	push   ebx
   1c631:	52                   	push   edx
   1c632:	b8 48 41 00 00       	mov    eax,@obj3:gladiato_cpp_variable_1                            ; fixup: num: 3902, src obj: 1, src ofs: 0x1c633, dst obj: 3, dst ofs: 0x4148
   1c637:	e8 54 01 05 00       	call   check_script_flag
   1c63c:	84 c0                	test   al,al
   1c63e:	0f 84 1a 01 00 00    	je     talk_to_GLADIATOR_branch_3
   1c644:	b8 69 41 00 00       	mov    eax,@obj3:gladiato_cpp_variable_2                            ; fixup: num: 3901, src obj: 1, src ofs: 0x1c645, dst obj: 3, dst ofs: 0x4169
   1c649:	31 d2                	xor    edx,edx
   1c64b:	bb 01 00 00 00       	mov    ebx,0x1
   1c650:	e8 8b 01 05 00       	call   set_script_flag
   1c655:	ba 8a 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_3                            ; fixup: num: 4034, src obj: 1, src ofs: 0x1c656, dst obj: 3, dst ofs: 0x418a
   1c65a:	b8 9c 06 00 00       	mov    eax,0x69c
   1c65f:	e8 2c e0 04 00       	call   play_wav
   1c664:	ba 94 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_4                            ; fixup: num: 4033, src obj: 1, src ofs: 0x1c665, dst obj: 3, dst ofs: 0x4194
   1c669:	b8 a3 06 00 00       	mov    eax,0x6a3
   1c66e:	31 db                	xor    ebx,ebx
   1c670:	e8 1b e0 04 00       	call   play_wav
   1c675:	b8 c3 00 00 00       	mov    eax,0xc3
   1c67a:	e8 21 db 00 00       	call   GetDlgFileString
   1c67f:	e8 8c e8 04 00       	call   get_response
   1c684:	83 f8 01             	cmp    eax,0x1
   1c687:	75 37                	jne    talk_to_GLADIATOR_branch_1
   1c689:	bb 02 00 00 00       	mov    ebx,0x2
   1c68e:	ba 9e 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_5                            ; fixup: num: 4032, src obj: 1, src ofs: 0x1c68f, dst obj: 3, dst ofs: 0x419e
   1c693:	b8 af 06 00 00       	mov    eax,0x6af
   1c698:	e8 f3 df 04 00       	call   play_wav
   1c69d:	bb 02 00 00 00       	mov    ebx,0x2
   1c6a2:	ba a8 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_6                            ; fixup: num: 4031, src obj: 1, src ofs: 0x1c6a3, dst obj: 3, dst ofs: 0x41a8
   1c6a7:	b8 cd 06 00 00       	mov    eax,0x6cd
   1c6ac:	e8 df df 04 00       	call   play_wav
   1c6b1:	b8 b2 41 00 00       	mov    eax,@obj3:gladiato_cpp_variable_7                            ; fixup: num: 4030, src obj: 1, src ofs: 0x1c6b2, dst obj: 3, dst ofs: 0x41b2
   1c6b6:	e8 d5 03 05 00       	call   MonsterfyNpc
   1c6bb:	31 c0                	xor    eax,eax
   1c6bd:	5a                   	pop    edx
   1c6be:	5b                   	pop    ebx
   1c6bf:	c3                   	ret    
talk_to_GLADIATOR_branch_1:
   1c6c0:	83 f8 02             	cmp    eax,0x2
   1c6c3:	0f 85 95 00 00 00    	jne    talk_to_GLADIATOR_branch_3
   1c6c9:	ba bc 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_8                            ; fixup: num: 4029, src obj: 1, src ofs: 0x1c6ca, dst obj: 3, dst ofs: 0x41bc
   1c6ce:	b8 b3 06 00 00       	mov    eax,0x6b3
   1c6d3:	31 db                	xor    ebx,ebx
   1c6d5:	e8 b6 df 04 00       	call   play_wav
   1c6da:	e8 41 c0 00 00       	call   ELDERLY_COUPLE_HUDDLED_TOGETHER
   1c6df:	b8 c4 00 00 00       	mov    eax,0xc4
   1c6e4:	e8 b7 da 00 00       	call   GetDlgFileString
   1c6e9:	e8 22 e8 04 00       	call   get_response
   1c6ee:	83 f8 01             	cmp    eax,0x1
   1c6f1:	75 37                	jne    talk_to_GLADIATOR_branch_2
   1c6f3:	bb 02 00 00 00       	mov    ebx,0x2
   1c6f8:	ba c6 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_9                            ; fixup: num: 3908, src obj: 1, src ofs: 0x1c6f9, dst obj: 3, dst ofs: 0x41c6
   1c6fd:	b8 c3 06 00 00       	mov    eax,0x6c3
   1c702:	e8 89 df 04 00       	call   play_wav
   1c707:	bb 02 00 00 00       	mov    ebx,0x2
   1c70c:	ba d0 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_10                           ; fixup: num: 3907, src obj: 1, src ofs: 0x1c70d, dst obj: 3, dst ofs: 0x41d0
   1c711:	b8 cd 06 00 00       	mov    eax,0x6cd
   1c716:	e8 75 df 04 00       	call   play_wav
   1c71b:	b8 da 41 00 00       	mov    eax,@obj3:gladiato_cpp_variable_11                           ; fixup: num: 3906, src obj: 1, src ofs: 0x1c71c, dst obj: 3, dst ofs: 0x41da
   1c720:	e8 6b 03 05 00       	call   MonsterfyNpc
   1c725:	31 c0                	xor    eax,eax
   1c727:	5a                   	pop    edx
   1c728:	5b                   	pop    ebx
   1c729:	c3                   	ret    
talk_to_GLADIATOR_branch_2:
   1c72a:	83 f8 02             	cmp    eax,0x2
   1c72d:	75 2f                	jne    talk_to_GLADIATOR_branch_3
   1c72f:	bb 01 00 00 00       	mov    ebx,0x1
   1c734:	ba e4 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_12                           ; fixup: num: 3905, src obj: 1, src ofs: 0x1c735, dst obj: 3, dst ofs: 0x41e4
   1c739:	b8 c7 06 00 00       	mov    eax,0x6c7
   1c73e:	e8 4d df 04 00       	call   play_wav
   1c743:	ba ee 41 00 00       	mov    edx,@obj3:gladiato_cpp_variable_13                           ; fixup: num: 3904, src obj: 1, src ofs: 0x1c744, dst obj: 3, dst ofs: 0x41ee
   1c748:	b8 cd 06 00 00       	mov    eax,0x6cd
   1c74d:	31 db                	xor    ebx,ebx
   1c74f:	e8 3c df 04 00       	call   play_wav
   1c754:	b8 f8 41 00 00       	mov    eax,@obj3:gladiato_cpp_variable_14                           ; fixup: num: 3903, src obj: 1, src ofs: 0x1c755, dst obj: 3, dst ofs: 0x41f8
   1c759:	e8 22 04 05 00       	call   ExecuteCommand
talk_to_GLADIATOR_branch_3:
   1c75e:	31 c0                	xor    eax,eax
   1c760:	5a                   	pop    edx
   1c761:	5b                   	pop    ebx
   1c762:	c3                   	ret    
;-------------------------------------------------
;  Bad code 32 (zero after ret):                 -
;-------------------------------------------------
;  1c761:	5b                   	pop    ebx
;  1c762:	c3                   	ret    
;  1c763:	00 00                	add    BYTE PTR [eax],al
;  1c765:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (13 bytes):                      -
;-------------------------------------------------
   1c763:	00 00 00 00 00 00 .. 	db     13 dup(0x00)
;-------------------------------------------------
;  End of bad code 32                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 35 (D:\SOURCE\gladiato.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 35: D:\SOURCE\gladiato.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
gladiato_cpp_variable_1:
    4148:	47 4c 41 44 49 41 54 4f 52 5f 49 4e 54 45 52 52 55 50 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "GLADIATOR_INTERRUPT_CONVERSATION",0x00
gladiato_cpp_variable_2:
    4169:	47 4c 41 44 49 41 54 4f 52 5f 49 4e 54 45 52 52 55 50 54 5f 43 4f 4e 56 45 52 53 41 54 49 4f 4e 00 	db     "GLADIATOR_INTERRUPT_CONVERSATION",0x00
gladiato_cpp_variable_3:
    418a:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_4:
    4194:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_5:
    419e:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_6:
    41a8:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_7:
    41b2:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_8:
    41bc:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_9:
    41c6:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_10:
    41d0:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_11:
    41da:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_12:
    41e4:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_13:
    41ee:	47 4c 41 44 49 41 54 4f 52 00 	db     "GLADIATOR",0x00
gladiato_cpp_variable_14:
    41f8:	53 54 41 52 54 5f 4d 45 52 43 59 5f 54 49 4d 52 00 	db     "START_MERCY_TIMR",0x00
    4209:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 35 (D:\SOURCE\gladiato.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------