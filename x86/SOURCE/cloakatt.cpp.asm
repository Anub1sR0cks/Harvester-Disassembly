;-------------------------------------------------------------------------------
;                                                                              -
;  Module 40: D:\SOURCE\cloakatt.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_CLOAK_ROOM_ATTENDANT'       -
;-------------------------------------------------
talk_to_CLOAK_ROOM_ATTENDANT:
   1db80:	53                   	push   ebx
   1db81:	52                   	push   edx
   1db82:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4035, src obj: 1, src ofs: 0x1db84, dst obj: 3, dst ofs: 0x294bc
   1db88:	85 d2                	test   edx,edx
   1db8a:	74 1f                	je     talk_to_CLOAK_ROOM_ATTENDANT_branch_1
   1db8c:	89 d0                	mov    eax,edx
   1db8e:	ba b8 47 00 00       	mov    edx,@obj3:cloakatt_cpp_variable_1                            ; fixup: num: 4165, src obj: 1, src ofs: 0x1db8f, dst obj: 3, dst ofs: 0x47b8
   1db93:	e8 98 88 05 00       	call   strcmp_
   1db98:	85 c0                	test   eax,eax
   1db9a:	75 2e                	jne    talk_to_CLOAK_ROOM_ATTENDANT_branch_2
   1db9c:	b8 c4 47 00 00       	mov    eax,@obj3:cloakatt_cpp_variable_2                            ; fixup: num: 4164, src obj: 1, src ofs: 0x1db9d, dst obj: 3, dst ofs: 0x47c4
   1dba1:	e8 da ef 04 00       	call   ExecuteCommand
   1dba6:	31 c0                	xor    eax,eax
   1dba8:	5a                   	pop    edx
   1dba9:	5b                   	pop    ebx
   1dbaa:	c3                   	ret    
talk_to_CLOAK_ROOM_ATTENDANT_branch_1:
   1dbab:	b8 d2 47 00 00       	mov    eax,@obj3:cloakatt_cpp_variable_3                            ; fixup: num: 4163, src obj: 1, src ofs: 0x1dbac, dst obj: 3, dst ofs: 0x47d2
   1dbb0:	e8 db eb 04 00       	call   check_script_flag
   1dbb5:	84 c0                	test   al,al
   1dbb7:	75 11                	jne    talk_to_CLOAK_ROOM_ATTENDANT_branch_2
   1dbb9:	ba e2 47 00 00       	mov    edx,@obj3:cloakatt_cpp_variable_4                            ; fixup: num: 4162, src obj: 1, src ofs: 0x1dbba, dst obj: 3, dst ofs: 0x47e2
   1dbbe:	b8 66 10 00 00       	mov    eax,0x1066
   1dbc3:	31 db                	xor    ebx,ebx
   1dbc5:	e8 c6 ca 04 00       	call   play_wav
talk_to_CLOAK_ROOM_ATTENDANT_branch_2:
   1dbca:	31 c0                	xor    eax,eax
   1dbcc:	5a                   	pop    edx
   1dbcd:	5b                   	pop    ebx
   1dbce:	c3                   	ret    
talk_to_CLOAK_ROOM_ATTENDANT_branch_3:
   1dbcf:	89 15 d8 2c 02 00    	mov    DWORD PTR ds:@obj3:CLOAK_ATTENDANT,edx                       ; fixup: num: 4161, src obj: 1, src ofs: 0x1dbd1, dst obj: 3, dst ofs: 0x22cd8
   1dbd5:	a1 d8 2c 02 00       	mov    eax,ds:@obj3:CLOAK_ATTENDANT                                 ; fixup: num: 4160, src obj: 1, src ofs: 0x1dbd6, dst obj: 3, dst ofs: 0x22cd8
   1dbda:	c3                   	ret    
   1dbdb:	8d 40 00             	lea    eax,[eax+0x0]
   1dbde:	8b c9                	mov    ecx,ecx

;-------------------------------------------------
;  Function 'FIRST_TIME'                         -
;-------------------------------------------------
FIRST_TIME:
   1dbe0:	85 c0                	test   eax,eax
   1dbe2:	74 eb                	je     talk_to_CLOAK_ROOM_ATTENDANT_branch_3
   1dbe4:	a1 d8 2c 02 00       	mov    eax,ds:@obj3:CLOAK_ATTENDANT                                 ; fixup: num: 4159, src obj: 1, src ofs: 0x1dbe5, dst obj: 3, dst ofs: 0x22cd8
   1dbe9:	c3                   	ret    
   1dbea:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'CLOAK_ROOM_ATTENDANT_initialize'    -
;-------------------------------------------------
CLOAK_ROOM_ATTENDANT_initialize:
   1dbf0:	c7 05 d8 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:CLOAK_ATTENDANT,0x1              ; fixup: num: 4158, src obj: 1, src ofs: 0x1dbf2, dst obj: 3, dst ofs: 0x22cd8
   1dbfa:	c3                   	ret    
;-------------------------------------------------
;  Bad code 36 (zero after ret):                 -
;-------------------------------------------------
;  1dbf0:	c7 05 d8 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22cd8,0x1
;  1dbfa:	c3                   	ret    
;  1dbfb:	00 00                	add    BYTE PTR [eax],al
;  1dbfd:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   1dbfb:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 36                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 40 (D:\SOURCE\cloakatt.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 40: D:\SOURCE\cloakatt.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
cloakatt_cpp_variable_1:
    47b8:	42 41 52 43 41 53 48 46 49 56 45 00 	db     "BARCASHFIVE",0x00
cloakatt_cpp_variable_2:
    47c4:	43 4c 45 41 4e 5f 43 4c 4f 54 48 45 53 00 	db     "CLEAN_CLOTHES",0x00
cloakatt_cpp_variable_3:
    47d2:	43 4c 45 41 4e 45 44 5f 43 4c 4f 54 48 45 53 00 	db     "CLEANED_CLOTHES",0x00
cloakatt_cpp_variable_4:
    47e2:	43 4c 4f 41 4b 5f 41 54 4e 44 00 	db     "CLOAK_ATND",0x00
    47ed:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 40 (D:\SOURCE\cloakatt.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 40: D:\SOURCE\cloakatt.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
CLOAK_ATTENDANT:                                                                                    ; access size: DWORD
   22cd8:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 40 (D:\SOURCE\cloakatt.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------