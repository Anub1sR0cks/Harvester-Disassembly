;-------------------------------------------------------------------------------
;                                                                              -
;  Module 54: D:\SOURCE\pta_mom.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_GENERIC_MOMS_AT_PTA'        -
;-------------------------------------------------
talk_to_GENERIC_MOMS_AT_PTA:
   24e30:	53                   	push   ebx
   24e31:	52                   	push   edx
   24e32:	b8 c0 65 00 00       	mov    eax,@obj3:pta_mom_cpp_variable_1                             ; fixup: num: 5533, src obj: 1, src ofs: 0x24e33, dst obj: 3, dst ofs: 0x65c0
   24e37:	e8 54 79 04 00       	call   check_script_flag
   24e3c:	84 c0                	test   al,al
   24e3e:	74 67                	je     talk_to_GENERIC_MOMS_AT_PTA_branch_4
   24e40:	bb 02 00 00 00       	mov    ebx,0x2
   24e45:	ba d2 65 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_2                             ; fixup: num: 5532, src obj: 1, src ofs: 0x24e46, dst obj: 3, dst ofs: 0x65d2
   24e4a:	b8 33 32 00 00       	mov    eax,0x3233
   24e4f:	e8 3c 58 04 00       	call   play_wav
   24e54:	b8 db 65 00 00       	mov    eax,@obj3:pta_mom_cpp_variable_3                             ; fixup: num: 5531, src obj: 1, src ofs: 0x24e55, dst obj: 3, dst ofs: 0x65db
   24e59:	31 d2                	xor    edx,edx
   24e5b:	e8 80 79 04 00       	call   set_script_flag
   24e60:	31 c0                	xor    eax,eax
   24e62:	5a                   	pop    edx
   24e63:	5b                   	pop    ebx
   24e64:	c3                   	ret    
talk_to_GENERIC_MOMS_AT_PTA_branch_1:
   24e65:	bb 01 00 00 00       	mov    ebx,0x1
   24e6a:	ba ed 65 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_4                             ; fixup: num: 5530, src obj: 1, src ofs: 0x24e6b, dst obj: 3, dst ofs: 0x65ed
   24e6f:	b8 ee 31 00 00       	mov    eax,0x31ee
   24e74:	e8 17 58 04 00       	call   play_wav
   24e79:	eb 51                	jmp    talk_to_GENERIC_MOMS_AT_PTA_branch_6
talk_to_GENERIC_MOMS_AT_PTA_branch_2:
   24e7b:	bb 01 00 00 00       	mov    ebx,0x1
   24e80:	ba f6 65 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_5                             ; fixup: num: 5529, src obj: 1, src ofs: 0x24e81, dst obj: 3, dst ofs: 0x65f6
   24e85:	b8 f2 31 00 00       	mov    eax,0x31f2
   24e8a:	e8 01 58 04 00       	call   play_wav
   24e8f:	eb 3b                	jmp    talk_to_GENERIC_MOMS_AT_PTA_branch_6
talk_to_GENERIC_MOMS_AT_PTA_branch_3:
   24e91:	bb 01 00 00 00       	mov    ebx,0x1
   24e96:	ba ff 65 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_6                             ; fixup: num: 5528, src obj: 1, src ofs: 0x24e97, dst obj: 3, dst ofs: 0x65ff
   24e9b:	b8 f6 31 00 00       	mov    eax,0x31f6
   24ea0:	e8 eb 57 04 00       	call   play_wav
   24ea5:	eb 25                	jmp    talk_to_GENERIC_MOMS_AT_PTA_branch_6
talk_to_GENERIC_MOMS_AT_PTA_branch_4:
   24ea7:	e8 2b 16 05 00       	call   rand_
   24eac:	89 c2                	mov    edx,eax
   24eae:	bb 03 00 00 00       	mov    ebx,0x3
   24eb3:	c1 fa 1f             	sar    edx,0x1f
   24eb6:	f7 fb                	idiv   ebx
   24eb8:	89 d0                	mov    eax,edx
   24eba:	83 fa 01             	cmp    edx,0x1
   24ebd:	72 09                	jb     talk_to_GENERIC_MOMS_AT_PTA_branch_5
   24ebf:	76 ba                	jbe    talk_to_GENERIC_MOMS_AT_PTA_branch_2
   24ec1:	83 fa 02             	cmp    edx,0x2
   24ec4:	74 cb                	je     talk_to_GENERIC_MOMS_AT_PTA_branch_3
   24ec6:	eb 04                	jmp    talk_to_GENERIC_MOMS_AT_PTA_branch_6
talk_to_GENERIC_MOMS_AT_PTA_branch_5:
   24ec8:	85 d2                	test   edx,edx
   24eca:	74 99                	je     talk_to_GENERIC_MOMS_AT_PTA_branch_1
talk_to_GENERIC_MOMS_AT_PTA_branch_6:
   24ecc:	b8 97 02 00 00       	mov    eax,0x297
   24ed1:	e8 ca 52 00 00       	call   GetDlgFileString
   24ed6:	e8 35 60 04 00       	call   get_response
   24edb:	83 f8 01             	cmp    eax,0x1
   24ede:	75 20                	jne    talk_to_GENERIC_MOMS_AT_PTA_branch_7
   24ee0:	bb 02 00 00 00       	mov    ebx,0x2
   24ee5:	ba 08 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_7                             ; fixup: num: 5541, src obj: 1, src ofs: 0x24ee6, dst obj: 3, dst ofs: 0x6608
   24eea:	b8 04 32 00 00       	mov    eax,0x3204
   24eef:	e8 9c 57 04 00       	call   play_wav
   24ef4:	ba 11 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_8                             ; fixup: num: 5540, src obj: 1, src ofs: 0x24ef5, dst obj: 3, dst ofs: 0x6611
   24ef9:	b8 0b 32 00 00       	mov    eax,0x320b
   24efe:	eb 6e                	jmp    talk_to_GENERIC_MOMS_AT_PTA_branch_9
talk_to_GENERIC_MOMS_AT_PTA_branch_7:
   24f00:	83 f8 02             	cmp    eax,0x2
   24f03:	75 27                	jne    talk_to_GENERIC_MOMS_AT_PTA_branch_8
   24f05:	ba 1a 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_9                             ; fixup: num: 5539, src obj: 1, src ofs: 0x24f06, dst obj: 3, dst ofs: 0x661a
   24f0a:	b8 0f 32 00 00       	mov    eax,0x320f
   24f0f:	31 db                	xor    ebx,ebx
   24f11:	e8 7a 57 04 00       	call   play_wav
   24f16:	ba 23 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_10                            ; fixup: num: 5538, src obj: 1, src ofs: 0x24f17, dst obj: 3, dst ofs: 0x6623
   24f1b:	b8 13 32 00 00       	mov    eax,0x3213
   24f20:	31 db                	xor    ebx,ebx
   24f22:	e8 69 57 04 00       	call   play_wav
   24f27:	31 c0                	xor    eax,eax
   24f29:	5a                   	pop    edx
   24f2a:	5b                   	pop    ebx
   24f2b:	c3                   	ret    
talk_to_GENERIC_MOMS_AT_PTA_branch_8:
   24f2c:	83 f8 03             	cmp    eax,0x3
   24f2f:	75 44                	jne    talk_to_GENERIC_MOMS_AT_PTA_branch_10
   24f31:	ba 2c 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_11                            ; fixup: num: 5537, src obj: 1, src ofs: 0x24f32, dst obj: 3, dst ofs: 0x662c
   24f36:	b8 17 32 00 00       	mov    eax,0x3217
   24f3b:	31 db                	xor    ebx,ebx
   24f3d:	e8 4e 57 04 00       	call   play_wav
   24f42:	ba 35 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_12                            ; fixup: num: 5536, src obj: 1, src ofs: 0x24f43, dst obj: 3, dst ofs: 0x6635
   24f47:	b8 1c 32 00 00       	mov    eax,0x321c
   24f4c:	31 db                	xor    ebx,ebx
   24f4e:	e8 3d 57 04 00       	call   play_wav
   24f53:	ba 3e 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_13                            ; fixup: num: 5535, src obj: 1, src ofs: 0x24f54, dst obj: 3, dst ofs: 0x663e
   24f58:	b8 21 32 00 00       	mov    eax,0x3221
   24f5d:	31 db                	xor    ebx,ebx
   24f5f:	e8 2c 57 04 00       	call   play_wav
   24f64:	ba 41 66 00 00       	mov    edx,@obj3:pta_mom_cpp_variable_14                            ; fixup: num: 5534, src obj: 1, src ofs: 0x24f65, dst obj: 3, dst ofs: 0x6641
   24f69:	b8 26 32 00 00       	mov    eax,0x3226
talk_to_GENERIC_MOMS_AT_PTA_branch_9:
   24f6e:	31 db                	xor    ebx,ebx
   24f70:	e8 1b 57 04 00       	call   play_wav
talk_to_GENERIC_MOMS_AT_PTA_branch_10:
   24f75:	31 c0                	xor    eax,eax
   24f77:	5a                   	pop    edx
   24f78:	5b                   	pop    ebx
   24f79:	c3                   	ret    
;-------------------------------------------------
;  Bad code 49 (zero after ret):                 -
;-------------------------------------------------
;  24f78:	5b                   	pop    ebx
;  24f79:	c3                   	ret    
;  24f7a:	00 00                	add    BYTE PTR [eax],al
;  24f7c:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (6 bytes):                       -
;-------------------------------------------------
   24f7a:	00 00 00 00 00 00    	db     6 dup(0x00)
;-------------------------------------------------
;  End of bad code 49                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 54 (D:\SOURCE\pta_mom.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 54: D:\SOURCE\pta_mom.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
pta_mom_cpp_variable_1:
    65c0:	50 54 41 5f 52 45 53 50 4f 4e 44 5f 54 4f 5f 54 56 00 	db     "PTA_RESPOND_TO_TV",0x00
pta_mom_cpp_variable_2:
    65d2:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_3:
    65db:	50 54 41 5f 52 45 53 50 4f 4e 44 5f 54 4f 5f 54 56 00 	db     "PTA_RESPOND_TO_TV",0x00
pta_mom_cpp_variable_4:
    65ed:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_5:
    65f6:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_6:
    65ff:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_7:
    6608:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_8:
    6611:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_9:
    661a:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_10:
    6623:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_11:
    662c:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_12:
    6635:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
pta_mom_cpp_variable_13:
    663e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    663f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6640:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
pta_mom_cpp_variable_14:
    6641:	50 54 41 5f 4d 4f 4d 31 00 	db     "PTA_MOM1",0x00
    664a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 54 (D:\SOURCE\pta_mom.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------