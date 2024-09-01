;-------------------------------------------------------------------------------
;                                                                              -
;  Module 29: D:\SOURCE\inquisit.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_INQUISITOR'                 -
;-------------------------------------------------
talk_to_INQUISITOR:
   1af70:	53                   	push   ebx
   1af71:	52                   	push   edx
   1af72:	b8 d4 3a 00 00       	mov    eax,@obj3:inquisit_cpp_variable_1                            ; fixup: num: 3434, src obj: 1, src ofs: 0x1af73, dst obj: 3, dst ofs: 0x3ad4
   1af77:	e8 14 18 05 00       	call   check_script_flag
   1af7c:	84 c0                	test   al,al
   1af7e:	75 64                	jne    talk_to_INQUISITOR_branch_1
   1af80:	a1 90 2c 02 00       	mov    eax,ds:@obj3:INQUISITOR                                      ; fixup: num: 3433, src obj: 1, src ofs: 0x1af81, dst obj: 3, dst ofs: 0x22c90
   1af85:	85 c0                	test   eax,eax
   1af87:	74 5b                	je     talk_to_INQUISITOR_branch_1
   1af89:	b8 e7 18 00 00       	mov    eax,0x18e7
   1af8e:	31 d2                	xor    edx,edx
   1af90:	31 db                	xor    ebx,ebx
   1af92:	89 15 90 2c 02 00    	mov    DWORD PTR ds:@obj3:INQUISITOR,edx                            ; fixup: num: 3432, src obj: 1, src ofs: 0x1af94, dst obj: 3, dst ofs: 0x22c90
   1af98:	ba e0 3a 00 00       	mov    edx,@obj3:inquisit_cpp_variable_2                            ; fixup: num: 3431, src obj: 1, src ofs: 0x1af99, dst obj: 3, dst ofs: 0x3ae0
   1af9d:	e8 ee f6 04 00       	call   play_wav
   1afa2:	ba eb 3a 00 00       	mov    edx,@obj3:inquisit_cpp_variable_3                            ; fixup: num: 3430, src obj: 1, src ofs: 0x1afa3, dst obj: 3, dst ofs: 0x3aeb
   1afa7:	b8 e8 18 00 00       	mov    eax,0x18e8
   1afac:	31 db                	xor    ebx,ebx
   1afae:	e8 dd f6 04 00       	call   play_wav
   1afb3:	ba f6 3a 00 00       	mov    edx,@obj3:inquisit_cpp_variable_4                            ; fixup: num: 3429, src obj: 1, src ofs: 0x1afb4, dst obj: 3, dst ofs: 0x3af6
   1afb8:	b8 e9 18 00 00       	mov    eax,0x18e9
   1afbd:	31 db                	xor    ebx,ebx
   1afbf:	e8 cc f6 04 00       	call   play_wav
   1afc4:	e8 47 d8 00 00       	call   MAN_SCREAMING_IN_PAIN_WHILE_BEING_TORTURED
   1afc9:	ba 01 3b 00 00       	mov    edx,@obj3:inquisit_cpp_variable_5                            ; fixup: num: 3428, src obj: 1, src ofs: 0x1afca, dst obj: 3, dst ofs: 0x3b01
   1afce:	b8 f8 18 00 00       	mov    eax,0x18f8
   1afd3:	31 db                	xor    ebx,ebx
   1afd5:	e8 b6 f6 04 00       	call   play_wav
   1afda:	b8 0c 3b 00 00       	mov    eax,@obj3:inquisit_cpp_variable_6                            ; fixup: num: 3427, src obj: 1, src ofs: 0x1afdb, dst obj: 3, dst ofs: 0x3b0c
   1afdf:	e8 9c 1b 05 00       	call   ExecuteCommand
talk_to_INQUISITOR_branch_1:
   1afe4:	31 c0                	xor    eax,eax
   1afe6:	5a                   	pop    edx
   1afe7:	5b                   	pop    ebx
   1afe8:	c3                   	ret    
talk_to_INQUISITOR_branch_2:
   1afe9:	89 15 90 2c 02 00    	mov    DWORD PTR ds:@obj3:INQUISITOR,edx                            ; fixup: num: 3426, src obj: 1, src ofs: 0x1afeb, dst obj: 3, dst ofs: 0x22c90
   1afef:	a1 90 2c 02 00       	mov    eax,ds:@obj3:INQUISITOR                                      ; fixup: num: 3425, src obj: 1, src ofs: 0x1aff0, dst obj: 3, dst ofs: 0x22c90
   1aff4:	c3                   	ret    
   1aff5:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1affb:	8d 52 00             	lea    edx,[edx+0x0]
   1affe:	8b db                	mov    ebx,ebx

;-------------------------------------------------
;  Function 'INQUISITOR_FIRST_CONVERSATION'      -
;-------------------------------------------------
INQUISITOR_FIRST_CONVERSATION:
   1b000:	85 c0                	test   eax,eax
   1b002:	74 e5                	je     talk_to_INQUISITOR_branch_2
   1b004:	a1 90 2c 02 00       	mov    eax,ds:@obj3:INQUISITOR                                      ; fixup: num: 3772, src obj: 1, src ofs: 0x1b005, dst obj: 3, dst ofs: 0x22c90
   1b009:	c3                   	ret    
   1b00a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'INQUISITOR_initialize'              -
;-------------------------------------------------
INQUISITOR_initialize:
   1b010:	c7 05 90 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:INQUISITOR,0x1                   ; fixup: num: 3771, src obj: 1, src ofs: 0x1b012, dst obj: 3, dst ofs: 0x22c90
   1b01a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 26 (zero after ret):                 -
;-------------------------------------------------
;  1b010:	c7 05 90 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22c90,0x1
;  1b01a:	c3                   	ret    
;  1b01b:	00 00                	add    BYTE PTR [eax],al
;  1b01d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1b01b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 26                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 29 (D:\SOURCE\inquisit.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 29: D:\SOURCE\inquisit.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
inquisit_cpp_variable_1:
    3ad4:	50 41 49 4e 5f 53 4f 4c 56 45 44 00 	db     "PAIN_SOLVED",0x00
inquisit_cpp_variable_2:
    3ae0:	49 4e 51 55 49 53 49 54 4f 52 00 	db     "INQUISITOR",0x00
inquisit_cpp_variable_3:
    3aeb:	49 4e 51 55 49 53 49 54 4f 52 00 	db     "INQUISITOR",0x00
inquisit_cpp_variable_4:
    3af6:	49 4e 51 55 49 53 49 54 4f 52 00 	db     "INQUISITOR",0x00
inquisit_cpp_variable_5:
    3b01:	49 4e 51 55 49 53 49 54 4f 52 00 	db     "INQUISITOR",0x00
inquisit_cpp_variable_6:
    3b0c:	53 54 41 52 54 5f 49 4e 51 5f 54 49 4d 00 	db     "START_INQ_TIM",0x00
    3b1a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 29 (D:\SOURCE\inquisit.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 29: D:\SOURCE\inquisit.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
INQUISITOR:                                                                                         ; access size: DWORD
   22c90:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 29 (D:\SOURCE\inquisit.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------