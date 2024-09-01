;-------------------------------------------------------------------------------
;                                                                              -
;  Module 37: D:\SOURCE\boyle.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_POSTMASTER_BOYLE'           -
;-------------------------------------------------
talk_to_POSTMASTER_BOYLE:
   1cb20:	53                   	push   ebx
   1cb21:	51                   	push   ecx
   1cb22:	52                   	push   edx
   1cb23:	56                   	push   esi
   1cb24:	57                   	push   edi
   1cb25:	55                   	push   ebp
   1cb26:	be 74 43 00 00       	mov    esi,@obj3:boyle_cpp_variable_1                               ; fixup: num: 3842, src obj: 1, src ofs: 0x1cb27, dst obj: 3, dst ofs: 0x4374
   1cb2b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3841, src obj: 1, src ofs: 0x1cb2c, dst obj: 3, dst ofs: 0x295c0
   1cb30:	57                   	push   edi
talk_to_POSTMASTER_BOYLE_branch_1:
   1cb31:	8a 06                	mov    al,BYTE PTR [esi]
   1cb33:	88 07                	mov    BYTE PTR [edi],al
   1cb35:	3c 00                	cmp    al,0x0
   1cb37:	74 10                	je     talk_to_POSTMASTER_BOYLE_branch_2
   1cb39:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1cb3c:	83 c6 02             	add    esi,0x2
   1cb3f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1cb42:	83 c7 02             	add    edi,0x2
   1cb45:	3c 00                	cmp    al,0x0
   1cb47:	75 e8                	jne    talk_to_POSTMASTER_BOYLE_branch_1
talk_to_POSTMASTER_BOYLE_branch_2:
   1cb49:	5f                   	pop    edi
   1cb4a:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3840, src obj: 1, src ofs: 0x1cb4c, dst obj: 3, dst ofs: 0x294bc
   1cb50:	85 d2                	test   edx,edx
   1cb52:	0f 84 9b 04 00 00    	je     talk_to_POSTMASTER_BOYLE_branch_20
   1cb58:	89 d0                	mov    eax,edx
   1cb5a:	ba 75 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_2                               ; fixup: num: 3839, src obj: 1, src ofs: 0x1cb5b, dst obj: 3, dst ofs: 0x4375
   1cb5f:	e8 cc 98 05 00       	call   strcmp_
   1cb64:	85 c0                	test   eax,eax
   1cb66:	0f 85 21 01 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_6
   1cb6c:	bb 01 00 00 00       	mov    ebx,0x1
   1cb71:	ba 83 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_3                               ; fixup: num: 3968, src obj: 1, src ofs: 0x1cb72, dst obj: 3, dst ofs: 0x4383
   1cb76:	b8 55 01 00 00       	mov    eax,0x155
   1cb7b:	e8 10 db 04 00       	call   play_wav
   1cb80:	ba 89 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_4                               ; fixup: num: 3967, src obj: 1, src ofs: 0x1cb81, dst obj: 3, dst ofs: 0x4389
   1cb85:	b8 5a 01 00 00       	mov    eax,0x15a
   1cb8a:	31 db                	xor    ebx,ebx
   1cb8c:	e8 ff da 04 00       	call   play_wav
   1cb91:	bb 02 00 00 00       	mov    ebx,0x2
   1cb96:	ba 8c 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_5                               ; fixup: num: 3966, src obj: 1, src ofs: 0x1cb97, dst obj: 3, dst ofs: 0x438c
   1cb9b:	b8 5f 01 00 00       	mov    eax,0x15f
   1cba0:	e8 eb da 04 00       	call   play_wav
   1cba5:	b8 02 00 00 00       	mov    eax,0x2
   1cbaa:	e8 f1 d5 00 00       	call   GetDlgFileString
   1cbaf:	e8 5c e3 04 00       	call   get_response
   1cbb4:	83 f8 01             	cmp    eax,0x1
   1cbb7:	75 14                	jne    talk_to_POSTMASTER_BOYLE_branch_3
   1cbb9:	bb 02 00 00 00       	mov    ebx,0x2
   1cbbe:	ba 92 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_6                               ; fixup: num: 3965, src obj: 1, src ofs: 0x1cbbf, dst obj: 3, dst ofs: 0x4392
   1cbc3:	b8 6d 01 00 00       	mov    eax,0x16d
   1cbc8:	e9 ab 0c 00 00       	jmp    talk_to_POSTMASTER_BOYLE_branch_69
talk_to_POSTMASTER_BOYLE_branch_3:
   1cbcd:	83 f8 02             	cmp    eax,0x2
   1cbd0:	0f 85 a7 0c 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_70
   1cbd6:	ba 98 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_7                               ; fixup: num: 3851, src obj: 1, src ofs: 0x1cbd7, dst obj: 3, dst ofs: 0x4398
   1cbdb:	b8 74 01 00 00       	mov    eax,0x174
   1cbe0:	31 db                	xor    ebx,ebx
   1cbe2:	e8 a9 da 04 00       	call   play_wav
   1cbe7:	ba 9e 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_8                               ; fixup: num: 3850, src obj: 1, src ofs: 0x1cbe8, dst obj: 3, dst ofs: 0x439e
   1cbec:	b8 79 01 00 00       	mov    eax,0x179
   1cbf1:	31 db                	xor    ebx,ebx
   1cbf3:	e8 98 da 04 00       	call   play_wav
   1cbf8:	ba a1 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_9                               ; fixup: num: 3849, src obj: 1, src ofs: 0x1cbf9, dst obj: 3, dst ofs: 0x43a1
   1cbfd:	b8 7d 01 00 00       	mov    eax,0x17d
   1cc02:	31 db                	xor    ebx,ebx
   1cc04:	e8 87 da 04 00       	call   play_wav
   1cc09:	a1 bc 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE_variable_1                     ; fixup: num: 3848, src obj: 1, src ofs: 0x1cc0a, dst obj: 3, dst ofs: 0x22cbc
   1cc0e:	85 c0                	test   eax,eax
   1cc10:	74 1d                	je     talk_to_POSTMASTER_BOYLE_branch_4
   1cc12:	ba a7 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_10                              ; fixup: num: 3847, src obj: 1, src ofs: 0x1cc13, dst obj: 3, dst ofs: 0x43a7
   1cc17:	b8 86 01 00 00       	mov    eax,0x186
   1cc1c:	31 db                	xor    ebx,ebx
   1cc1e:	e8 6d da 04 00       	call   play_wav
   1cc23:	ba aa 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_11                              ; fixup: num: 3846, src obj: 1, src ofs: 0x1cc24, dst obj: 3, dst ofs: 0x43aa
   1cc28:	b8 8b 01 00 00       	mov    eax,0x18b
   1cc2d:	eb 0a                	jmp    talk_to_POSTMASTER_BOYLE_branch_5
talk_to_POSTMASTER_BOYLE_branch_4:
   1cc2f:	ba b0 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_12                              ; fixup: num: 3845, src obj: 1, src ofs: 0x1cc30, dst obj: 3, dst ofs: 0x43b0
   1cc34:	b8 d2 01 00 00       	mov    eax,0x1d2
talk_to_POSTMASTER_BOYLE_branch_5:
   1cc39:	31 db                	xor    ebx,ebx
   1cc3b:	e8 50 da 04 00       	call   play_wav
   1cc40:	ba b6 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_13                              ; fixup: num: 3844, src obj: 1, src ofs: 0x1cc41, dst obj: 3, dst ofs: 0x43b6
   1cc45:	b8 c4 43 00 00       	mov    eax,@obj3:boyle_cpp_variable_14                              ; fixup: num: 3843, src obj: 1, src ofs: 0x1cc46, dst obj: 3, dst ofs: 0x43c4
   1cc4a:	31 db                	xor    ebx,ebx
   1cc4c:	e8 bf 62 03 00       	call   set_object
   1cc51:	ba 01 00 00 00       	mov    edx,0x1
   1cc56:	31 c0                	xor    eax,eax
   1cc58:	e8 e3 b5 00 00       	call   BOYLE_SPOKE_OF_GAS_CAN
   1cc5d:	ba 01 00 00 00       	mov    edx,0x1
   1cc62:	31 c0                	xor    eax,eax
   1cc64:	e8 c7 b5 00 00       	call   BOYLE_ADMITTED_BURNING_DOWN_THE_NEWSPAPER_BLDG
   1cc69:	ba 01 00 00 00       	mov    edx,0x1
   1cc6e:	31 c0                	xor    eax,eax
   1cc70:	e8 2b b6 00 00       	call   GIVEN_BUTTON_BACK
   1cc75:	ba 01 00 00 00       	mov    edx,0x1
   1cc7a:	b8 ce 43 00 00       	mov    eax,@obj3:boyle_cpp_variable_15                              ; fixup: num: 3862, src obj: 1, src ofs: 0x1cc7b, dst obj: 3, dst ofs: 0x43ce
   1cc7f:	e8 5c fb 04 00       	call   set_script_flag
   1cc84:	31 c0                	xor    eax,eax
   1cc86:	5d                   	pop    ebp
   1cc87:	5f                   	pop    edi
   1cc88:	5e                   	pop    esi
   1cc89:	5a                   	pop    edx
   1cc8a:	59                   	pop    ecx
   1cc8b:	5b                   	pop    ebx
   1cc8c:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_6:
   1cc8d:	ba df 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_16                              ; fixup: num: 3861, src obj: 1, src ofs: 0x1cc8e, dst obj: 3, dst ofs: 0x43df
   1cc92:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3860, src obj: 1, src ofs: 0x1cc93, dst obj: 3, dst ofs: 0x294bc
   1cc97:	e8 94 97 05 00       	call   strcmp_
   1cc9c:	85 c0                	test   eax,eax
   1cc9e:	74 3d                	je     talk_to_POSTMASTER_BOYLE_branch_7
   1cca0:	ba e4 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_17                              ; fixup: num: 3859, src obj: 1, src ofs: 0x1cca1, dst obj: 3, dst ofs: 0x43e4
   1cca5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3858, src obj: 1, src ofs: 0x1cca6, dst obj: 3, dst ofs: 0x294bc
   1ccaa:	e8 81 97 05 00       	call   strcmp_
   1ccaf:	85 c0                	test   eax,eax
   1ccb1:	74 2a                	je     talk_to_POSTMASTER_BOYLE_branch_7
   1ccb3:	ba f3 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_18                              ; fixup: num: 3857, src obj: 1, src ofs: 0x1ccb4, dst obj: 3, dst ofs: 0x43f3
   1ccb8:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3856, src obj: 1, src ofs: 0x1ccb9, dst obj: 3, dst ofs: 0x294bc
   1ccbd:	e8 6e 97 05 00       	call   strcmp_
   1ccc2:	85 c0                	test   eax,eax
   1ccc4:	74 17                	je     talk_to_POSTMASTER_BOYLE_branch_7
   1ccc6:	ba fd 43 00 00       	mov    edx,@obj3:boyle_cpp_variable_19                              ; fixup: num: 3855, src obj: 1, src ofs: 0x1ccc7, dst obj: 3, dst ofs: 0x43fd
   1cccb:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3854, src obj: 1, src ofs: 0x1cccc, dst obj: 3, dst ofs: 0x294bc
   1ccd0:	e8 5b 97 05 00       	call   strcmp_
   1ccd5:	85 c0                	test   eax,eax
   1ccd7:	0f 85 7c 01 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_12
talk_to_POSTMASTER_BOYLE_branch_7:
   1ccdd:	b8 11 44 00 00       	mov    eax,@obj3:boyle_cpp_variable_20                              ; fixup: num: 3853, src obj: 1, src ofs: 0x1ccde, dst obj: 3, dst ofs: 0x4411
   1cce2:	e8 a9 fa 04 00       	call   check_script_flag
   1cce7:	84 c0                	test   al,al
   1cce9:	0f 85 03 01 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_11
   1ccef:	ba 20 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_21                              ; fixup: num: 3852, src obj: 1, src ofs: 0x1ccf0, dst obj: 3, dst ofs: 0x4420
   1ccf4:	b8 97 01 00 00       	mov    eax,0x197
   1ccf9:	31 db                	xor    ebx,ebx
   1ccfb:	e8 90 d9 04 00       	call   play_wav
   1cd00:	b8 03 00 00 00       	mov    eax,0x3
   1cd05:	e8 96 d4 00 00       	call   GetDlgFileString
   1cd0a:	e8 01 e2 04 00       	call   get_response
   1cd0f:	83 f8 01             	cmp    eax,0x1
   1cd12:	75 79                	jne    talk_to_POSTMASTER_BOYLE_branch_9
   1cd14:	89 c2                	mov    edx,eax
   1cd16:	31 c0                	xor    eax,eax
   1cd18:	bb 02 00 00 00       	mov    ebx,0x2
   1cd1d:	e8 1e b5 00 00       	call   BOYLE_SPOKE_OF_GAS_CAN
   1cd22:	ba 26 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_22                              ; fixup: num: 3871, src obj: 1, src ofs: 0x1cd23, dst obj: 3, dst ofs: 0x4426
   1cd27:	b8 a1 01 00 00       	mov    eax,0x1a1
   1cd2c:	e8 5f d9 04 00       	call   play_wav
   1cd31:	ba 2c 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_23                              ; fixup: num: 3870, src obj: 1, src ofs: 0x1cd32, dst obj: 3, dst ofs: 0x442c
   1cd36:	b8 a9 01 00 00       	mov    eax,0x1a9
   1cd3b:	31 db                	xor    ebx,ebx
   1cd3d:	e8 4e d9 04 00       	call   play_wav
   1cd42:	ba 2f 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_24                              ; fixup: num: 3869, src obj: 1, src ofs: 0x1cd43, dst obj: 3, dst ofs: 0x442f
   1cd47:	b8 ad 01 00 00       	mov    eax,0x1ad
   1cd4c:	31 db                	xor    ebx,ebx
   1cd4e:	e8 3d d9 04 00       	call   play_wav
   1cd53:	a1 bc 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE_variable_1                     ; fixup: num: 3868, src obj: 1, src ofs: 0x1cd54, dst obj: 3, dst ofs: 0x22cbc
   1cd58:	85 c0                	test   eax,eax
   1cd5a:	74 22                	je     talk_to_POSTMASTER_BOYLE_branch_8
   1cd5c:	ba 35 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_25                              ; fixup: num: 3867, src obj: 1, src ofs: 0x1cd5d, dst obj: 3, dst ofs: 0x4435
   1cd61:	b8 86 01 00 00       	mov    eax,0x186
   1cd66:	31 db                	xor    ebx,ebx
   1cd68:	e8 23 d9 04 00       	call   play_wav
   1cd6d:	ba 38 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_26                              ; fixup: num: 3866, src obj: 1, src ofs: 0x1cd6e, dst obj: 3, dst ofs: 0x4438
   1cd72:	b8 b8 01 00 00       	mov    eax,0x1b8
   1cd77:	31 db                	xor    ebx,ebx
   1cd79:	e8 12 d9 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_8:
   1cd7e:	ba 3e 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_27                              ; fixup: num: 3865, src obj: 1, src ofs: 0x1cd7f, dst obj: 3, dst ofs: 0x443e
   1cd83:	b8 d2 01 00 00       	mov    eax,0x1d2
   1cd88:	e9 56 02 00 00       	jmp    talk_to_POSTMASTER_BOYLE_branch_18
talk_to_POSTMASTER_BOYLE_branch_9:
   1cd8d:	83 f8 02             	cmp    eax,0x2
   1cd90:	0f 85 e7 0a 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_70
   1cd96:	bb 01 00 00 00       	mov    ebx,0x1
   1cd9b:	ba 44 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_28                              ; fixup: num: 3864, src obj: 1, src ofs: 0x1cd9c, dst obj: 3, dst ofs: 0x4444
   1cda0:	b8 d9 01 00 00       	mov    eax,0x1d9
   1cda5:	e8 e6 d8 04 00       	call   play_wav
   1cdaa:	b8 04 00 00 00       	mov    eax,0x4
   1cdaf:	e8 ec d3 00 00       	call   GetDlgFileString
   1cdb4:	e8 57 e1 04 00       	call   get_response
   1cdb9:	83 f8 01             	cmp    eax,0x1
   1cdbc:	75 11                	jne    talk_to_POSTMASTER_BOYLE_branch_10
   1cdbe:	ba 4a 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_29                              ; fixup: num: 3863, src obj: 1, src ofs: 0x1cdbf, dst obj: 3, dst ofs: 0x444a
   1cdc3:	89 c3                	mov    ebx,eax
   1cdc5:	b8 e5 01 00 00       	mov    eax,0x1e5
   1cdca:	e9 16 02 00 00       	jmp    talk_to_POSTMASTER_BOYLE_branch_19
talk_to_POSTMASTER_BOYLE_branch_10:
   1cdcf:	83 f8 02             	cmp    eax,0x2
   1cdd2:	0f 85 a5 0a 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_70
   1cdd8:	ba 50 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_30                              ; fixup: num: 3879, src obj: 1, src ofs: 0x1cdd9, dst obj: 3, dst ofs: 0x4450
   1cddd:	89 c3                	mov    ebx,eax
   1cddf:	b8 ea 01 00 00       	mov    eax,0x1ea
   1cde4:	e8 a7 d8 04 00       	call   play_wav
   1cde9:	31 c0                	xor    eax,eax
   1cdeb:	5d                   	pop    ebp
   1cdec:	5f                   	pop    edi
   1cded:	5e                   	pop    esi
   1cdee:	5a                   	pop    edx
   1cdef:	59                   	pop    ecx
   1cdf0:	5b                   	pop    ebx
   1cdf1:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_11:
   1cdf2:	bb 02 00 00 00       	mov    ebx,0x2
   1cdf7:	ba 56 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_31                              ; fixup: num: 3878, src obj: 1, src ofs: 0x1cdf8, dst obj: 3, dst ofs: 0x4456
   1cdfc:	b8 3d 01 00 00       	mov    eax,0x13d
   1ce01:	e8 8a d8 04 00       	call   play_wav
   1ce06:	ba 5c 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_32                              ; fixup: num: 3877, src obj: 1, src ofs: 0x1ce07, dst obj: 3, dst ofs: 0x445c
   1ce0b:	b8 41 01 00 00       	mov    eax,0x141
   1ce10:	31 db                	xor    ebx,ebx
   1ce12:	e8 79 d8 04 00       	call   play_wav
   1ce17:	bb 02 00 00 00       	mov    ebx,0x2
   1ce1c:	ba 5f 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_33                              ; fixup: num: 3876, src obj: 1, src ofs: 0x1ce1d, dst obj: 3, dst ofs: 0x445f
   1ce21:	b8 45 01 00 00       	mov    eax,0x145
   1ce26:	e8 65 d8 04 00       	call   play_wav
   1ce2b:	ba 65 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_34                              ; fixup: num: 3875, src obj: 1, src ofs: 0x1ce2c, dst obj: 3, dst ofs: 0x4465
   1ce30:	b8 4a 01 00 00       	mov    eax,0x14a
   1ce35:	31 db                	xor    ebx,ebx
   1ce37:	e8 54 d8 04 00       	call   play_wav
   1ce3c:	bb 03 00 00 00       	mov    ebx,0x3
   1ce41:	ba 68 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_35                              ; fixup: num: 3874, src obj: 1, src ofs: 0x1ce42, dst obj: 3, dst ofs: 0x4468
   1ce46:	b8 4e 01 00 00       	mov    eax,0x14e
   1ce4b:	e8 40 d8 04 00       	call   play_wav
   1ce50:	31 c0                	xor    eax,eax
   1ce52:	5d                   	pop    ebp
   1ce53:	5f                   	pop    edi
   1ce54:	5e                   	pop    esi
   1ce55:	5a                   	pop    edx
   1ce56:	59                   	pop    ecx
   1ce57:	5b                   	pop    ebx
   1ce58:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_12:
   1ce59:	ba 6e 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_36                              ; fixup: num: 3873, src obj: 1, src ofs: 0x1ce5a, dst obj: 3, dst ofs: 0x446e
   1ce5e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3872, src obj: 1, src ofs: 0x1ce5f, dst obj: 3, dst ofs: 0x294bc
   1ce63:	e8 c8 95 05 00       	call   strcmp_
   1ce68:	85 c0                	test   eax,eax
   1ce6a:	0f 85 ab 00 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_13
   1ce70:	b8 01 00 00 00       	mov    eax,0x1
   1ce75:	31 d2                	xor    edx,edx
   1ce77:	e8 c4 b3 00 00       	call   BOYLE_SPOKE_OF_GAS_CAN
   1ce7c:	85 c0                	test   eax,eax
   1ce7e:	0f 84 97 00 00 00    	je     talk_to_POSTMASTER_BOYLE_branch_13
   1ce84:	bb 03 00 00 00       	mov    ebx,0x3
   1ce89:	ba 75 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_37                              ; fixup: num: 3890, src obj: 1, src ofs: 0x1ce8a, dst obj: 3, dst ofs: 0x4475
   1ce8e:	b8 f2 01 00 00       	mov    eax,0x1f2
   1ce93:	e8 f8 d7 04 00       	call   play_wav
   1ce98:	bb 02 00 00 00       	mov    ebx,0x2
   1ce9d:	ba 7b 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_38                              ; fixup: num: 3889, src obj: 1, src ofs: 0x1ce9e, dst obj: 3, dst ofs: 0x447b
   1cea2:	b8 f6 01 00 00       	mov    eax,0x1f6
   1cea7:	e8 e4 d7 04 00       	call   play_wav
   1ceac:	bb 03 00 00 00       	mov    ebx,0x3
   1ceb1:	ba 7e 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_39                              ; fixup: num: 3888, src obj: 1, src ofs: 0x1ceb2, dst obj: 3, dst ofs: 0x447e
   1ceb6:	b8 fa 01 00 00       	mov    eax,0x1fa
   1cebb:	e8 d0 d7 04 00       	call   play_wav
   1cec0:	bb 02 00 00 00       	mov    ebx,0x2
   1cec5:	ba 84 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_40                              ; fixup: num: 3887, src obj: 1, src ofs: 0x1cec6, dst obj: 3, dst ofs: 0x4484
   1ceca:	b8 02 02 00 00       	mov    eax,0x202
   1cecf:	e8 bc d7 04 00       	call   play_wav
   1ced4:	bb 02 00 00 00       	mov    ebx,0x2
   1ced9:	ba 87 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_41                              ; fixup: num: 3886, src obj: 1, src ofs: 0x1ceda, dst obj: 3, dst ofs: 0x4487
   1cede:	b8 06 02 00 00       	mov    eax,0x206
   1cee3:	e8 a8 d7 04 00       	call   play_wav
   1cee8:	ba 8d 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_42                              ; fixup: num: 3885, src obj: 1, src ofs: 0x1cee9, dst obj: 3, dst ofs: 0x448d
   1ceed:	b8 94 44 00 00       	mov    eax,@obj3:boyle_cpp_variable_43                              ; fixup: num: 3884, src obj: 1, src ofs: 0x1ceee, dst obj: 3, dst ofs: 0x4494
   1cef2:	31 db                	xor    ebx,ebx
   1cef4:	e8 17 60 03 00       	call   set_object
   1cef9:	b8 9e 44 00 00       	mov    eax,@obj3:boyle_cpp_variable_44                              ; fixup: num: 3883, src obj: 1, src ofs: 0x1cefa, dst obj: 3, dst ofs: 0x449e
   1cefe:	ba 01 00 00 00       	mov    edx,0x1
   1cf03:	e8 a8 f9 04 00       	call   add_inventory
   1cf08:	b8 b0 44 00 00       	mov    eax,@obj3:boyle_cpp_variable_45                              ; fixup: num: 3882, src obj: 1, src ofs: 0x1cf09, dst obj: 3, dst ofs: 0x44b0
   1cf0d:	e8 ce f8 04 00       	call   set_script_flag
   1cf12:	31 c0                	xor    eax,eax
   1cf14:	5d                   	pop    ebp
   1cf15:	5f                   	pop    edi
   1cf16:	5e                   	pop    esi
   1cf17:	5a                   	pop    edx
   1cf18:	59                   	pop    ecx
   1cf19:	5b                   	pop    ebx
   1cf1a:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_13:
   1cf1b:	ba bf 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_46                              ; fixup: num: 3881, src obj: 1, src ofs: 0x1cf1c, dst obj: 3, dst ofs: 0x44bf
   1cf20:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3880, src obj: 1, src ofs: 0x1cf21, dst obj: 3, dst ofs: 0x294bc
   1cf25:	e8 06 95 05 00       	call   strcmp_
   1cf2a:	85 c0                	test   eax,eax
   1cf2c:	75 27                	jne    talk_to_POSTMASTER_BOYLE_branch_14
   1cf2e:	ba 01 00 00 00       	mov    edx,0x1
   1cf33:	bb 02 00 00 00       	mov    ebx,0x2
   1cf38:	e8 33 b4 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1cf3d:	ba d7 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_47                              ; fixup: num: 3898, src obj: 1, src ofs: 0x1cf3e, dst obj: 3, dst ofs: 0x44d7
   1cf42:	b8 5f 02 00 00       	mov    eax,0x25f
   1cf47:	e8 44 d7 04 00       	call   play_wav
   1cf4c:	31 c0                	xor    eax,eax
   1cf4e:	5d                   	pop    ebp
   1cf4f:	5f                   	pop    edi
   1cf50:	5e                   	pop    esi
   1cf51:	5a                   	pop    edx
   1cf52:	59                   	pop    ecx
   1cf53:	5b                   	pop    ebx
   1cf54:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_14:
   1cf55:	ba dd 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_48                              ; fixup: num: 3897, src obj: 1, src ofs: 0x1cf56, dst obj: 3, dst ofs: 0x44dd
   1cf5a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3896, src obj: 1, src ofs: 0x1cf5b, dst obj: 3, dst ofs: 0x294bc
   1cf5f:	e8 cc 94 05 00       	call   strcmp_
   1cf64:	85 c0                	test   eax,eax
   1cf66:	74 13                	je     talk_to_POSTMASTER_BOYLE_branch_15
   1cf68:	ba ea 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_49                              ; fixup: num: 3895, src obj: 1, src ofs: 0x1cf69, dst obj: 3, dst ofs: 0x44ea
   1cf6d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3894, src obj: 1, src ofs: 0x1cf6e, dst obj: 3, dst ofs: 0x294bc
   1cf72:	e8 b9 94 05 00       	call   strcmp_
   1cf77:	85 c0                	test   eax,eax
   1cf79:	75 5e                	jne    talk_to_POSTMASTER_BOYLE_branch_17
talk_to_POSTMASTER_BOYLE_branch_15:
   1cf7b:	ba 01 00 00 00       	mov    edx,0x1
   1cf80:	31 c0                	xor    eax,eax
   1cf82:	bb 02 00 00 00       	mov    ebx,0x2
   1cf87:	e8 d4 b3 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1cf8c:	ba fb 44 00 00       	mov    edx,@obj3:boyle_cpp_variable_50                              ; fixup: num: 3893, src obj: 1, src ofs: 0x1cf8d, dst obj: 3, dst ofs: 0x44fb
   1cf91:	b8 4f 02 00 00       	mov    eax,0x24f
   1cf96:	e8 f5 d6 04 00       	call   play_wav
   1cf9b:	b8 01 00 00 00       	mov    eax,0x1
   1cfa0:	31 d2                	xor    edx,edx
   1cfa2:	e8 29 b3 00 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   1cfa7:	85 c0                	test   eax,eax
   1cfa9:	74 11                	je     talk_to_POSTMASTER_BOYLE_branch_16
   1cfab:	ba 01 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_51                              ; fixup: num: 3892, src obj: 1, src ofs: 0x1cfac, dst obj: 3, dst ofs: 0x4501
   1cfb0:	b8 53 02 00 00       	mov    eax,0x253
   1cfb5:	31 db                	xor    ebx,ebx
   1cfb7:	e8 d4 d6 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_16:
   1cfbc:	bb 02 00 00 00       	mov    ebx,0x2
   1cfc1:	ba 04 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_52                              ; fixup: num: 3891, src obj: 1, src ofs: 0x1cfc2, dst obj: 3, dst ofs: 0x4504
   1cfc6:	b8 58 02 00 00       	mov    eax,0x258
   1cfcb:	e8 c0 d6 04 00       	call   play_wav
   1cfd0:	31 c0                	xor    eax,eax
   1cfd2:	5d                   	pop    ebp
   1cfd3:	5f                   	pop    edi
   1cfd4:	5e                   	pop    esi
   1cfd5:	5a                   	pop    edx
   1cfd6:	59                   	pop    ecx
   1cfd7:	5b                   	pop    ebx
   1cfd8:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_17:
   1cfd9:	ba 0a 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_53                              ; fixup: num: 3900, src obj: 1, src ofs: 0x1cfda, dst obj: 3, dst ofs: 0x450a
   1cfde:	b8 49 02 00 00       	mov    eax,0x249
talk_to_POSTMASTER_BOYLE_branch_18:
   1cfe3:	31 db                	xor    ebx,ebx
talk_to_POSTMASTER_BOYLE_branch_19:
   1cfe5:	e8 a6 d6 04 00       	call   play_wav
   1cfea:	31 c0                	xor    eax,eax
   1cfec:	5d                   	pop    ebp
   1cfed:	5f                   	pop    edi
   1cfee:	5e                   	pop    esi
   1cfef:	5a                   	pop    edx
   1cff0:	59                   	pop    ecx
   1cff1:	5b                   	pop    ebx
   1cff2:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_20:
   1cff3:	a1 b8 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE                                ; fixup: num: 3899, src obj: 1, src ofs: 0x1cff4, dst obj: 3, dst ofs: 0x22cb8
   1cff8:	85 c0                	test   eax,eax
   1cffa:	0f 84 06 02 00 00    	je     talk_to_POSTMASTER_BOYLE_branch_31
   1d000:	b8 07 00 00 00       	mov    eax,0x7
   1d005:	89 15 b8 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE,edx                      ; fixup: num: 4172, src obj: 1, src ofs: 0x1d007, dst obj: 3, dst ofs: 0x22cb8
   1d00b:	31 db                	xor    ebx,ebx
   1d00d:	ba 10 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_54                              ; fixup: num: 4171, src obj: 1, src ofs: 0x1d00e, dst obj: 3, dst ofs: 0x4510
   1d012:	e8 79 d6 04 00       	call   play_wav
   1d017:	ba 16 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_55                              ; fixup: num: 4170, src obj: 1, src ofs: 0x1d018, dst obj: 3, dst ofs: 0x4516
   1d01c:	b8 0b 00 00 00       	mov    eax,0xb
   1d021:	31 db                	xor    ebx,ebx
   1d023:	e8 68 d6 04 00       	call   play_wav
   1d028:	bb 01 00 00 00       	mov    ebx,0x1
   1d02d:	ba 19 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_56                              ; fixup: num: 4169, src obj: 1, src ofs: 0x1d02e, dst obj: 3, dst ofs: 0x4519
   1d032:	b8 0f 00 00 00       	mov    eax,0xf
   1d037:	e8 54 d6 04 00       	call   play_wav
   1d03c:	b8 05 00 00 00       	mov    eax,0x5
   1d041:	e8 5a d1 00 00       	call   GetDlgFileString
   1d046:	e8 c5 de 04 00       	call   get_response
   1d04b:	83 f8 01             	cmp    eax,0x1
   1d04e:	0f 85 ac 00 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_24
   1d054:	ba 1f 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_57                              ; fixup: num: 4168, src obj: 1, src ofs: 0x1d055, dst obj: 3, dst ofs: 0x451f
   1d059:	b8 19 00 00 00       	mov    eax,0x19
   1d05e:	31 db                	xor    ebx,ebx
   1d060:	e8 2b d6 04 00       	call   play_wav
   1d065:	bb 02 00 00 00       	mov    ebx,0x2
   1d06a:	ba 25 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_58                              ; fixup: num: 4167, src obj: 1, src ofs: 0x1d06b, dst obj: 3, dst ofs: 0x4525
   1d06f:	b8 1d 00 00 00       	mov    eax,0x1d
   1d074:	e8 17 d6 04 00       	call   play_wav
   1d079:	bb 01 00 00 00       	mov    ebx,0x1
   1d07e:	ba 28 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_59                              ; fixup: num: 4166, src obj: 1, src ofs: 0x1d07f, dst obj: 3, dst ofs: 0x4528
   1d083:	b8 21 00 00 00       	mov    eax,0x21
   1d088:	e8 03 d6 04 00       	call   play_wav
   1d08d:	b8 06 00 00 00       	mov    eax,0x6
   1d092:	e8 09 d1 00 00       	call   GetDlgFileString
   1d097:	e8 74 de 04 00       	call   get_response
   1d09c:	83 f8 01             	cmp    eax,0x1
   1d09f:	75 0e                	jne    talk_to_POSTMASTER_BOYLE_branch_21
   1d0a1:	ba 2e 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_60                              ; fixup: num: 4178, src obj: 1, src ofs: 0x1d0a2, dst obj: 3, dst ofs: 0x452e
   1d0a6:	b8 2f 00 00 00       	mov    eax,0x2f
   1d0ab:	31 db                	xor    ebx,ebx
   1d0ad:	eb 11                	jmp    talk_to_POSTMASTER_BOYLE_branch_22
talk_to_POSTMASTER_BOYLE_branch_21:
   1d0af:	83 f8 02             	cmp    eax,0x2
   1d0b2:	75 11                	jne    talk_to_POSTMASTER_BOYLE_branch_23
   1d0b4:	ba 34 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_61                              ; fixup: num: 4177, src obj: 1, src ofs: 0x1d0b5, dst obj: 3, dst ofs: 0x4534
   1d0b9:	89 c3                	mov    ebx,eax
   1d0bb:	b8 34 00 00 00       	mov    eax,0x34
talk_to_POSTMASTER_BOYLE_branch_22:
   1d0c0:	e8 cb d5 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_23:
   1d0c5:	ba 3a 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_62                              ; fixup: num: 4176, src obj: 1, src ofs: 0x1d0c6, dst obj: 3, dst ofs: 0x453a
   1d0ca:	b8 3a 00 00 00       	mov    eax,0x3a
   1d0cf:	31 db                	xor    ebx,ebx
   1d0d1:	e8 ba d5 04 00       	call   play_wav
   1d0d6:	bb 02 00 00 00       	mov    ebx,0x2
   1d0db:	ba 40 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_63                              ; fixup: num: 4175, src obj: 1, src ofs: 0x1d0dc, dst obj: 3, dst ofs: 0x4540
   1d0e0:	b8 41 00 00 00       	mov    eax,0x41
   1d0e5:	e8 a6 d5 04 00       	call   play_wav
   1d0ea:	ba 43 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_64                              ; fixup: num: 4174, src obj: 1, src ofs: 0x1d0eb, dst obj: 3, dst ofs: 0x4543
   1d0ef:	b8 45 00 00 00       	mov    eax,0x45
   1d0f4:	31 db                	xor    ebx,ebx
   1d0f6:	e8 95 d5 04 00       	call   play_wav
   1d0fb:	e9 4b 01 00 00       	jmp    talk_to_POSTMASTER_BOYLE_branch_35
talk_to_POSTMASTER_BOYLE_branch_24:
   1d100:	83 f8 02             	cmp    eax,0x2
   1d103:	0f 85 42 01 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_35
   1d109:	bb 01 00 00 00       	mov    ebx,0x1
   1d10e:	ba 49 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_65                              ; fixup: num: 4173, src obj: 1, src ofs: 0x1d10f, dst obj: 3, dst ofs: 0x4549
   1d113:	b8 4d 00 00 00       	mov    eax,0x4d
   1d118:	e8 73 d5 04 00       	call   play_wav
   1d11d:	b8 07 00 00 00       	mov    eax,0x7
   1d122:	e8 79 d0 00 00       	call   GetDlgFileString
   1d127:	e8 e4 dd 04 00       	call   get_response
   1d12c:	83 f8 01             	cmp    eax,0x1
   1d12f:	75 4c                	jne    talk_to_POSTMASTER_BOYLE_branch_26
   1d131:	bb 02 00 00 00       	mov    ebx,0x2
   1d136:	ba 4f 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_66                              ; fixup: num: 4186, src obj: 1, src ofs: 0x1d137, dst obj: 3, dst ofs: 0x454f
   1d13b:	b8 59 00 00 00       	mov    eax,0x59
   1d140:	e8 4b d5 04 00       	call   play_wav
   1d145:	b8 08 00 00 00       	mov    eax,0x8
   1d14a:	e8 51 d0 00 00       	call   GetDlgFileString
   1d14f:	e8 bc dd 04 00       	call   get_response
   1d154:	83 f8 01             	cmp    eax,0x1
   1d157:	75 11                	jne    talk_to_POSTMASTER_BOYLE_branch_25
   1d159:	bb 02 00 00 00       	mov    ebx,0x2
   1d15e:	ba 55 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_67                              ; fixup: num: 4185, src obj: 1, src ofs: 0x1d15f, dst obj: 3, dst ofs: 0x4555
   1d163:	b8 68 00 00 00       	mov    eax,0x68
   1d168:	eb 43                	jmp    talk_to_POSTMASTER_BOYLE_branch_27
talk_to_POSTMASTER_BOYLE_branch_25:
   1d16a:	83 f8 02             	cmp    eax,0x2
   1d16d:	75 43                	jne    talk_to_POSTMASTER_BOYLE_branch_28
   1d16f:	ba 5b 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_68                              ; fixup: num: 4184, src obj: 1, src ofs: 0x1d170, dst obj: 3, dst ofs: 0x455b
   1d174:	89 c3                	mov    ebx,eax
   1d176:	b8 6c 00 00 00       	mov    eax,0x6c
   1d17b:	eb 30                	jmp    talk_to_POSTMASTER_BOYLE_branch_27
talk_to_POSTMASTER_BOYLE_branch_26:
   1d17d:	83 f8 02             	cmp    eax,0x2
   1d180:	75 30                	jne    talk_to_POSTMASTER_BOYLE_branch_28
   1d182:	b9 01 00 00 00       	mov    ecx,0x1
   1d187:	ba 61 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_69                              ; fixup: num: 4183, src obj: 1, src ofs: 0x1d188, dst obj: 3, dst ofs: 0x4561
   1d18c:	b8 76 00 00 00       	mov    eax,0x76
   1d191:	31 db                	xor    ebx,ebx
   1d193:	89 0d bc 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_1,ecx           ; fixup: num: 4182, src obj: 1, src ofs: 0x1d195, dst obj: 3, dst ofs: 0x22cbc
   1d199:	e8 f2 d4 04 00       	call   play_wav
   1d19e:	bb 02 00 00 00       	mov    ebx,0x2
   1d1a3:	ba 67 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_70                              ; fixup: num: 4181, src obj: 1, src ofs: 0x1d1a4, dst obj: 3, dst ofs: 0x4567
   1d1a8:	b8 77 00 00 00       	mov    eax,0x77
talk_to_POSTMASTER_BOYLE_branch_27:
   1d1ad:	e8 de d4 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_28:
   1d1b2:	bb 02 00 00 00       	mov    ebx,0x2
   1d1b7:	ba 6d 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_71                              ; fixup: num: 4180, src obj: 1, src ofs: 0x1d1b8, dst obj: 3, dst ofs: 0x456d
   1d1bc:	b8 80 00 00 00       	mov    eax,0x80
   1d1c1:	e8 ca d4 04 00       	call   play_wav
   1d1c6:	b8 09 00 00 00       	mov    eax,0x9
   1d1cb:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4179, src obj: 1, src ofs: 0x1d1cc, dst obj: 3, dst ofs: 0x295c0
   1d1d0:	e8 cb cf 00 00       	call   GetDlgFileString
   1d1d5:	89 c6                	mov    esi,eax
   1d1d7:	57                   	push   edi
talk_to_POSTMASTER_BOYLE_branch_29:
   1d1d8:	8a 06                	mov    al,BYTE PTR [esi]
   1d1da:	88 07                	mov    BYTE PTR [edi],al
   1d1dc:	3c 00                	cmp    al,0x0
   1d1de:	74 10                	je     talk_to_POSTMASTER_BOYLE_branch_30
   1d1e0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1d1e3:	83 c6 02             	add    esi,0x2
   1d1e6:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1d1e9:	83 c7 02             	add    edi,0x2
   1d1ec:	3c 00                	cmp    al,0x0
   1d1ee:	75 e8                	jne    talk_to_POSTMASTER_BOYLE_branch_29
talk_to_POSTMASTER_BOYLE_branch_30:
   1d1f0:	5f                   	pop    edi
   1d1f1:	b8 73 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_72                              ; fixup: num: 4192, src obj: 1, src ofs: 0x1d1f2, dst obj: 3, dst ofs: 0x4573
   1d1f6:	e8 75 f6 04 00       	call   check_inventory
   1d1fb:	84 c0                	test   al,al
   1d1fd:	74 4c                	je     talk_to_POSTMASTER_BOYLE_branch_35
   1d1ff:	b8 0a 00 00 00       	mov    eax,0xa
   1d204:	eb 24                	jmp    talk_to_POSTMASTER_BOYLE_branch_32
talk_to_POSTMASTER_BOYLE_branch_31:
   1d206:	ba 81 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_73                              ; fixup: num: 4191, src obj: 1, src ofs: 0x1d207, dst obj: 3, dst ofs: 0x4581
   1d20b:	b8 3c 02 00 00       	mov    eax,0x23c
   1d210:	31 db                	xor    ebx,ebx
   1d212:	e8 79 d4 04 00       	call   play_wav
   1d217:	b8 87 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_74                              ; fixup: num: 4190, src obj: 1, src ofs: 0x1d218, dst obj: 3, dst ofs: 0x4587
   1d21c:	e8 4f f6 04 00       	call   check_inventory
   1d221:	84 c0                	test   al,al
   1d223:	74 26                	je     talk_to_POSTMASTER_BOYLE_branch_35
   1d225:	b8 0b 00 00 00       	mov    eax,0xb
talk_to_POSTMASTER_BOYLE_branch_32:
   1d22a:	e8 71 cf 00 00       	call   GetDlgFileString
   1d22f:	89 c6                	mov    esi,eax
   1d231:	57                   	push   edi
talk_to_POSTMASTER_BOYLE_branch_33:
   1d232:	8a 06                	mov    al,BYTE PTR [esi]
   1d234:	88 07                	mov    BYTE PTR [edi],al
   1d236:	3c 00                	cmp    al,0x0
   1d238:	74 10                	je     talk_to_POSTMASTER_BOYLE_branch_34
   1d23a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1d23d:	83 c6 02             	add    esi,0x2
   1d240:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1d243:	83 c7 02             	add    edi,0x2
   1d246:	3c 00                	cmp    al,0x0
   1d248:	75 e8                	jne    talk_to_POSTMASTER_BOYLE_branch_33
talk_to_POSTMASTER_BOYLE_branch_34:
   1d24a:	5f                   	pop    edi
talk_to_POSTMASTER_BOYLE_branch_35:
   1d24b:	b8 01 00 00 00       	mov    eax,0x1
   1d250:	31 d2                	xor    edx,edx
   1d252:	e8 d9 b0 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1d257:	85 c0                	test   eax,eax
   1d259:	75 14                	jne    talk_to_POSTMASTER_BOYLE_branch_36
   1d25b:	b8 01 00 00 00       	mov    eax,0x1
   1d260:	31 d2                	xor    edx,edx
   1d262:	e8 b9 b0 00 00       	call   SHOWN_BUTTON_AROUND
   1d267:	85 c0                	test   eax,eax
   1d269:	0f 84 03 01 00 00    	je     talk_to_POSTMASTER_BOYLE_branch_45
talk_to_POSTMASTER_BOYLE_branch_36:
   1d26f:	83 3d c0 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_2,0x0           ; fixup: num: 4189, src obj: 1, src ofs: 0x1d271, dst obj: 3, dst ofs: 0x22cc0
   1d276:	0f 85 f6 00 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_45
   1d27c:	bf 01 00 00 00       	mov    edi,0x1
   1d281:	bb 02 00 00 00       	mov    ebx,0x2
   1d286:	ba 95 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_75                              ; fixup: num: 4188, src obj: 1, src ofs: 0x1d287, dst obj: 3, dst ofs: 0x4595
   1d28b:	b8 10 02 00 00       	mov    eax,0x210
   1d290:	89 3d c0 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_2,edi           ; fixup: num: 4187, src obj: 1, src ofs: 0x1d292, dst obj: 3, dst ofs: 0x22cc0
   1d296:	e8 f5 d3 04 00       	call   play_wav
   1d29b:	89 f8                	mov    eax,edi
   1d29d:	31 d2                	xor    edx,edx
   1d29f:	e8 8c b0 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1d2a4:	85 c0                	test   eax,eax
   1d2a6:	74 14                	je     talk_to_POSTMASTER_BOYLE_branch_37
   1d2a8:	bb 02 00 00 00       	mov    ebx,0x2
   1d2ad:	ba 9b 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_76                              ; fixup: num: 4199, src obj: 1, src ofs: 0x1d2ae, dst obj: 3, dst ofs: 0x459b
   1d2b2:	b8 1a 02 00 00       	mov    eax,0x21a
   1d2b7:	e8 d4 d3 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_37:
   1d2bc:	b8 01 00 00 00       	mov    eax,0x1
   1d2c1:	31 d2                	xor    edx,edx
   1d2c3:	e8 58 b0 00 00       	call   SHOWN_BUTTON_AROUND
   1d2c8:	85 c0                	test   eax,eax
   1d2ca:	74 14                	je     talk_to_POSTMASTER_BOYLE_branch_38
   1d2cc:	bb 02 00 00 00       	mov    ebx,0x2
   1d2d1:	ba a1 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_77                              ; fixup: num: 4198, src obj: 1, src ofs: 0x1d2d2, dst obj: 3, dst ofs: 0x45a1
   1d2d6:	b8 15 02 00 00       	mov    eax,0x215
   1d2db:	e8 b0 d3 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_38:
   1d2e0:	b8 a7 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_78                              ; fixup: num: 4197, src obj: 1, src ofs: 0x1d2e1, dst obj: 3, dst ofs: 0x45a7
   1d2e5:	e8 a6 f4 04 00       	call   check_script_flag
   1d2ea:	84 c0                	test   al,al
   1d2ec:	75 4c                	jne    talk_to_POSTMASTER_BOYLE_branch_40
   1d2ee:	bb 02 00 00 00       	mov    ebx,0x2
   1d2f3:	ba b6 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_79                              ; fixup: num: 4196, src obj: 1, src ofs: 0x1d2f4, dst obj: 3, dst ofs: 0x45b6
   1d2f8:	b8 1f 02 00 00       	mov    eax,0x21f
   1d2fd:	e8 8e d3 04 00       	call   play_wav
   1d302:	b8 0c 00 00 00       	mov    eax,0xc
   1d307:	e8 94 ce 00 00       	call   GetDlgFileString
   1d30c:	e8 ff db 04 00       	call   get_response
   1d311:	83 f8 01             	cmp    eax,0x1
   1d314:	75 11                	jne    talk_to_POSTMASTER_BOYLE_branch_39
   1d316:	bb 02 00 00 00       	mov    ebx,0x2
   1d31b:	ba bc 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_80                              ; fixup: num: 4195, src obj: 1, src ofs: 0x1d31c, dst obj: 3, dst ofs: 0x45bc
   1d320:	b8 2a 02 00 00       	mov    eax,0x22a
   1d325:	eb 22                	jmp    talk_to_POSTMASTER_BOYLE_branch_41
talk_to_POSTMASTER_BOYLE_branch_39:
   1d327:	83 f8 02             	cmp    eax,0x2
   1d32a:	75 22                	jne    talk_to_POSTMASTER_BOYLE_branch_42
   1d32c:	ba c2 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_81                              ; fixup: num: 4194, src obj: 1, src ofs: 0x1d32d, dst obj: 3, dst ofs: 0x45c2
   1d331:	89 c3                	mov    ebx,eax
   1d333:	b8 2e 02 00 00       	mov    eax,0x22e
   1d338:	eb 0f                	jmp    talk_to_POSTMASTER_BOYLE_branch_41
talk_to_POSTMASTER_BOYLE_branch_40:
   1d33a:	bb 02 00 00 00       	mov    ebx,0x2
   1d33f:	ba c8 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_82                              ; fixup: num: 4193, src obj: 1, src ofs: 0x1d340, dst obj: 3, dst ofs: 0x45c8
   1d344:	b8 33 02 00 00       	mov    eax,0x233
talk_to_POSTMASTER_BOYLE_branch_41:
   1d349:	e8 42 d3 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_42:
   1d34e:	be ce 45 00 00       	mov    esi,@obj3:boyle_cpp_variable_83                              ; fixup: num: 4211, src obj: 1, src ofs: 0x1d34f, dst obj: 3, dst ofs: 0x45ce
   1d353:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4210, src obj: 1, src ofs: 0x1d354, dst obj: 3, dst ofs: 0x295c0
   1d358:	57                   	push   edi
talk_to_POSTMASTER_BOYLE_branch_43:
   1d359:	8a 06                	mov    al,BYTE PTR [esi]
   1d35b:	88 07                	mov    BYTE PTR [edi],al
   1d35d:	3c 00                	cmp    al,0x0
   1d35f:	74 10                	je     talk_to_POSTMASTER_BOYLE_branch_44
   1d361:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1d364:	83 c6 02             	add    esi,0x2
   1d367:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1d36a:	83 c7 02             	add    edi,0x2
   1d36d:	3c 00                	cmp    al,0x0
   1d36f:	75 e8                	jne    talk_to_POSTMASTER_BOYLE_branch_43
talk_to_POSTMASTER_BOYLE_branch_44:
   1d371:	5f                   	pop    edi
talk_to_POSTMASTER_BOYLE_branch_45:
   1d372:	b8 cf 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_84                              ; fixup: num: 4209, src obj: 1, src ofs: 0x1d373, dst obj: 3, dst ofs: 0x45cf
   1d377:	e8 14 f4 04 00       	call   check_script_flag
   1d37c:	84 c0                	test   al,al
   1d37e:	74 24                	je     talk_to_POSTMASTER_BOYLE_branch_46
   1d380:	83 3d c4 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_3,0x0           ; fixup: num: 4208, src obj: 1, src ofs: 0x1d382, dst obj: 3, dst ofs: 0x22cc4
   1d387:	75 1b                	jne    talk_to_POSTMASTER_BOYLE_branch_46
   1d389:	b8 01 00 00 00       	mov    eax,0x1
   1d38e:	ba e4 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_85                              ; fixup: num: 4207, src obj: 1, src ofs: 0x1d38f, dst obj: 3, dst ofs: 0x45e4
   1d393:	31 db                	xor    ebx,ebx
   1d395:	a3 c4 2c 02 00       	mov    ds:@obj3:POSTMASTER_BOYLE_variable_3,eax                     ; fixup: num: 4206, src obj: 1, src ofs: 0x1d396, dst obj: 3, dst ofs: 0x22cc4
   1d39a:	b8 67 02 00 00       	mov    eax,0x267
   1d39f:	e8 ec d2 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_46:
   1d3a4:	b8 ea 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_86                              ; fixup: num: 4205, src obj: 1, src ofs: 0x1d3a5, dst obj: 3, dst ofs: 0x45ea
   1d3a9:	e8 e2 f3 04 00       	call   check_script_flag
   1d3ae:	84 c0                	test   al,al
   1d3b0:	74 23                	je     talk_to_POSTMASTER_BOYLE_branch_47
   1d3b2:	83 3d c8 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_4,0x0           ; fixup: num: 4204, src obj: 1, src ofs: 0x1d3b4, dst obj: 3, dst ofs: 0x22cc8
   1d3b9:	75 1a                	jne    talk_to_POSTMASTER_BOYLE_branch_47
   1d3bb:	bb 01 00 00 00       	mov    ebx,0x1
   1d3c0:	ba f0 45 00 00       	mov    edx,@obj3:boyle_cpp_variable_87                              ; fixup: num: 4203, src obj: 1, src ofs: 0x1d3c1, dst obj: 3, dst ofs: 0x45f0
   1d3c5:	b8 6e 02 00 00       	mov    eax,0x26e
   1d3ca:	89 1d c8 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_4,ebx           ; fixup: num: 4202, src obj: 1, src ofs: 0x1d3cc, dst obj: 3, dst ofs: 0x22cc8
   1d3d0:	e8 bb d2 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_47:
   1d3d5:	b8 f6 45 00 00       	mov    eax,@obj3:boyle_cpp_variable_88                              ; fixup: num: 4201, src obj: 1, src ofs: 0x1d3d6, dst obj: 3, dst ofs: 0x45f6
   1d3da:	e8 b1 f3 04 00       	call   check_script_flag
   1d3df:	84 c0                	test   al,al
   1d3e1:	74 47                	je     talk_to_POSTMASTER_BOYLE_branch_48
   1d3e3:	83 3d cc 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_5,0x0           ; fixup: num: 4200, src obj: 1, src ofs: 0x1d3e5, dst obj: 3, dst ofs: 0x22ccc
   1d3ea:	75 3e                	jne    talk_to_POSTMASTER_BOYLE_branch_48
   1d3ec:	be 01 00 00 00       	mov    esi,0x1
   1d3f1:	ba 08 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_89                              ; fixup: num: 4219, src obj: 1, src ofs: 0x1d3f2, dst obj: 3, dst ofs: 0x4608
   1d3f6:	b8 8a 02 00 00       	mov    eax,0x28a
   1d3fb:	89 f3                	mov    ebx,esi
   1d3fd:	89 35 cc 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_5,esi           ; fixup: num: 4218, src obj: 1, src ofs: 0x1d3ff, dst obj: 3, dst ofs: 0x22ccc
   1d403:	e8 88 d2 04 00       	call   play_wav
   1d408:	ba 0e 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_90                              ; fixup: num: 4217, src obj: 1, src ofs: 0x1d409, dst obj: 3, dst ofs: 0x460e
   1d40d:	b8 8e 02 00 00       	mov    eax,0x28e
   1d412:	31 db                	xor    ebx,ebx
   1d414:	e8 77 d2 04 00       	call   play_wav
   1d419:	ba 11 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_91                              ; fixup: num: 4216, src obj: 1, src ofs: 0x1d41a, dst obj: 3, dst ofs: 0x4611
   1d41e:	b8 92 02 00 00       	mov    eax,0x292
   1d423:	89 f3                	mov    ebx,esi
   1d425:	e8 66 d2 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_48:
   1d42a:	be 17 46 00 00       	mov    esi,@obj3:boyle_cpp_variable_92                              ; fixup: num: 4215, src obj: 1, src ofs: 0x1d42b, dst obj: 3, dst ofs: 0x4617
   1d42f:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 4214, src obj: 1, src ofs: 0x1d430, dst obj: 3, dst ofs: 0x294c0
   1d434:	57                   	push   edi
talk_to_POSTMASTER_BOYLE_branch_49:
   1d435:	8a 06                	mov    al,BYTE PTR [esi]
   1d437:	88 07                	mov    BYTE PTR [edi],al
   1d439:	3c 00                	cmp    al,0x0
   1d43b:	74 10                	je     talk_to_POSTMASTER_BOYLE_branch_50
   1d43d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1d440:	83 c6 02             	add    esi,0x2
   1d443:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1d446:	83 c7 02             	add    edi,0x2
   1d449:	3c 00                	cmp    al,0x0
   1d44b:	75 e8                	jne    talk_to_POSTMASTER_BOYLE_branch_49
talk_to_POSTMASTER_BOYLE_branch_50:
   1d44d:	5f                   	pop    edi
   1d44e:	89 fe                	mov    esi,edi
   1d450:	bf 02 00 00 00       	mov    edi,0x2
   1d455:	bd 01 00 00 00       	mov    ebp,0x1
   1d45a:	31 c9                	xor    ecx,ecx
talk_to_POSTMASTER_BOYLE_branch_51:
   1d45c:	b8 0d 00 00 00       	mov    eax,0xd
   1d461:	e8 3a cd 00 00       	call   GetDlgFileString
   1d466:	89 c2                	mov    edx,eax
   1d468:	89 f0                	mov    eax,esi
   1d46a:	e8 eb 3f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d46f:	85 c0                	test   eax,eax
   1d471:	0f 84 f2 03 00 00    	je     talk_to_POSTMASTER_BOYLE_branch_68
   1d477:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 4213, src obj: 1, src ofs: 0x1d478, dst obj: 3, dst ofs: 0x295c0
   1d47c:	e8 bf e5 04 00       	call   show_keywords
   1d481:	b8 0e 00 00 00       	mov    eax,0xe
   1d486:	e8 15 cd 00 00       	call   GetDlgFileString
   1d48b:	89 c2                	mov    edx,eax
   1d48d:	89 f0                	mov    eax,esi
   1d48f:	e8 c6 3f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d494:	85 c0                	test   eax,eax
   1d496:	75 6b                	jne    talk_to_POSTMASTER_BOYLE_branch_52
   1d498:	ba 18 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_93                              ; fixup: num: 4212, src obj: 1, src ofs: 0x1d499, dst obj: 3, dst ofs: 0x4618
   1d49d:	b8 8c 00 00 00       	mov    eax,0x8c
   1d4a2:	89 cb                	mov    ebx,ecx
   1d4a4:	e8 e7 d1 04 00       	call   play_wav
   1d4a9:	ba 1b 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_94                              ; fixup: num: 4224, src obj: 1, src ofs: 0x1d4aa, dst obj: 3, dst ofs: 0x461b
   1d4ae:	b8 90 00 00 00       	mov    eax,0x90
   1d4b3:	89 cb                	mov    ebx,ecx
   1d4b5:	e8 d6 d1 04 00       	call   play_wav
   1d4ba:	ba 21 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_95                              ; fixup: num: 4223, src obj: 1, src ofs: 0x1d4bb, dst obj: 3, dst ofs: 0x4621
   1d4bf:	b8 94 00 00 00       	mov    eax,0x94
   1d4c4:	89 cb                	mov    ebx,ecx
   1d4c6:	e8 c5 d1 04 00       	call   play_wav
   1d4cb:	ba 24 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_96                              ; fixup: num: 4222, src obj: 1, src ofs: 0x1d4cc, dst obj: 3, dst ofs: 0x4624
   1d4d0:	b8 98 00 00 00       	mov    eax,0x98
   1d4d5:	89 cb                	mov    ebx,ecx
   1d4d7:	e8 b4 d1 04 00       	call   play_wav
   1d4dc:	ba 2a 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_97                              ; fixup: num: 4221, src obj: 1, src ofs: 0x1d4dd, dst obj: 3, dst ofs: 0x462a
   1d4e1:	b8 9d 00 00 00       	mov    eax,0x9d
   1d4e6:	89 cb                	mov    ebx,ecx
   1d4e8:	e8 a3 d1 04 00       	call   play_wav
   1d4ed:	ba 2d 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_98                              ; fixup: num: 4220, src obj: 1, src ofs: 0x1d4ee, dst obj: 3, dst ofs: 0x462d
   1d4f2:	b8 a1 00 00 00       	mov    eax,0xa1
   1d4f7:	89 eb                	mov    ebx,ebp
   1d4f9:	e8 92 d1 04 00       	call   play_wav
   1d4fe:	e9 59 ff ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_52:
   1d503:	b8 0f 00 00 00       	mov    eax,0xf
   1d508:	e8 93 cc 00 00       	call   GetDlgFileString
   1d50d:	89 c2                	mov    edx,eax
   1d50f:	89 f0                	mov    eax,esi
   1d511:	e8 44 3f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d516:	85 c0                	test   eax,eax
   1d518:	74 45                	je     talk_to_POSTMASTER_BOYLE_branch_53
   1d51a:	b8 10 00 00 00       	mov    eax,0x10
   1d51f:	e8 7c cc 00 00       	call   GetDlgFileString
   1d524:	89 c2                	mov    edx,eax
   1d526:	89 f0                	mov    eax,esi
   1d528:	e8 2d 3f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d52d:	85 c0                	test   eax,eax
   1d52f:	74 2e                	je     talk_to_POSTMASTER_BOYLE_branch_53
   1d531:	b8 11 00 00 00       	mov    eax,0x11
   1d536:	e8 65 cc 00 00       	call   GetDlgFileString
   1d53b:	89 c2                	mov    edx,eax
   1d53d:	89 f0                	mov    eax,esi
   1d53f:	e8 16 3f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d544:	85 c0                	test   eax,eax
   1d546:	74 17                	je     talk_to_POSTMASTER_BOYLE_branch_53
   1d548:	b8 12 00 00 00       	mov    eax,0x12
   1d54d:	e8 4e cc 00 00       	call   GetDlgFileString
   1d552:	89 c2                	mov    edx,eax
   1d554:	89 f0                	mov    eax,esi
   1d556:	e8 ff 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d55b:	85 c0                	test   eax,eax
   1d55d:	75 16                	jne    talk_to_POSTMASTER_BOYLE_branch_54
talk_to_POSTMASTER_BOYLE_branch_53:
   1d55f:	ba 33 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_99                              ; fixup: num: 4227, src obj: 1, src ofs: 0x1d560, dst obj: 3, dst ofs: 0x4633
   1d564:	b8 ab 00 00 00       	mov    eax,0xab
   1d569:	89 cb                	mov    ebx,ecx
   1d56b:	e8 20 d1 04 00       	call   play_wav
   1d570:	e9 e7 fe ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_54:
   1d575:	b8 13 00 00 00       	mov    eax,0x13
   1d57a:	e8 21 cc 00 00       	call   GetDlgFileString
   1d57f:	89 c2                	mov    edx,eax
   1d581:	89 f0                	mov    eax,esi
   1d583:	e8 d2 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d588:	85 c0                	test   eax,eax
   1d58a:	74 17                	je     talk_to_POSTMASTER_BOYLE_branch_55
   1d58c:	b8 14 00 00 00       	mov    eax,0x14
   1d591:	e8 0a cc 00 00       	call   GetDlgFileString
   1d596:	89 c2                	mov    edx,eax
   1d598:	89 f0                	mov    eax,esi
   1d59a:	e8 bb 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d59f:	85 c0                	test   eax,eax
   1d5a1:	75 19                	jne    talk_to_POSTMASTER_BOYLE_branch_56
talk_to_POSTMASTER_BOYLE_branch_55:
   1d5a3:	bb 03 00 00 00       	mov    ebx,0x3
   1d5a8:	ba 39 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_100                             ; fixup: num: 4226, src obj: 1, src ofs: 0x1d5a9, dst obj: 3, dst ofs: 0x4639
   1d5ad:	b8 b6 00 00 00       	mov    eax,0xb6
   1d5b2:	e8 d9 d0 04 00       	call   play_wav
   1d5b7:	e9 a0 fe ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_56:
   1d5bc:	b8 15 00 00 00       	mov    eax,0x15
   1d5c1:	e8 da cb 00 00       	call   GetDlgFileString
   1d5c6:	89 c2                	mov    edx,eax
   1d5c8:	89 f0                	mov    eax,esi
   1d5ca:	e8 8b 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d5cf:	85 c0                	test   eax,eax
   1d5d1:	74 17                	je     talk_to_POSTMASTER_BOYLE_branch_57
   1d5d3:	b8 16 00 00 00       	mov    eax,0x16
   1d5d8:	e8 c3 cb 00 00       	call   GetDlgFileString
   1d5dd:	89 c2                	mov    edx,eax
   1d5df:	89 f0                	mov    eax,esi
   1d5e1:	e8 74 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d5e6:	85 c0                	test   eax,eax
   1d5e8:	75 36                	jne    talk_to_POSTMASTER_BOYLE_branch_59
talk_to_POSTMASTER_BOYLE_branch_57:
   1d5ea:	e8 d1 b5 00 00       	call   get_day
   1d5ef:	83 f8 03             	cmp    eax,0x3
   1d5f2:	7c 16                	jl     talk_to_POSTMASTER_BOYLE_branch_58
   1d5f4:	ba 3f 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_101                             ; fixup: num: 4225, src obj: 1, src ofs: 0x1d5f5, dst obj: 3, dst ofs: 0x463f
   1d5f9:	b8 c6 00 00 00       	mov    eax,0xc6
   1d5fe:	89 cb                	mov    ebx,ecx
   1d600:	e8 8b d0 04 00       	call   play_wav
   1d605:	e9 52 fe ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_58:
   1d60a:	ba 45 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_102                             ; fixup: num: 4232, src obj: 1, src ofs: 0x1d60b, dst obj: 3, dst ofs: 0x4645
   1d60f:	b8 43 02 00 00       	mov    eax,0x243
   1d614:	89 cb                	mov    ebx,ecx
   1d616:	e8 75 d0 04 00       	call   play_wav
   1d61b:	e9 3c fe ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_59:
   1d620:	b8 17 00 00 00       	mov    eax,0x17
   1d625:	e8 76 cb 00 00       	call   GetDlgFileString
   1d62a:	89 c2                	mov    edx,eax
   1d62c:	89 f0                	mov    eax,esi
   1d62e:	e8 27 3e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d633:	85 c0                	test   eax,eax
   1d635:	75 4c                	jne    talk_to_POSTMASTER_BOYLE_branch_60
   1d637:	ba 4b 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_103                             ; fixup: num: 4231, src obj: 1, src ofs: 0x1d638, dst obj: 3, dst ofs: 0x464b
   1d63c:	b8 ee 00 00 00       	mov    eax,0xee
   1d641:	89 cb                	mov    ebx,ecx
   1d643:	e8 48 d0 04 00       	call   play_wav
   1d648:	ba 4e 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_104                             ; fixup: num: 4230, src obj: 1, src ofs: 0x1d649, dst obj: 3, dst ofs: 0x464e
   1d64d:	b8 f2 00 00 00       	mov    eax,0xf2
   1d652:	89 fb                	mov    ebx,edi
   1d654:	e8 37 d0 04 00       	call   play_wav
   1d659:	bb 04 00 00 00       	mov    ebx,0x4
   1d65e:	ba 54 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_105                             ; fixup: num: 4229, src obj: 1, src ofs: 0x1d65f, dst obj: 3, dst ofs: 0x4654
   1d663:	b8 f6 00 00 00       	mov    eax,0xf6
   1d668:	e8 23 d0 04 00       	call   play_wav
   1d66d:	ba 57 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_106                             ; fixup: num: 4228, src obj: 1, src ofs: 0x1d66e, dst obj: 3, dst ofs: 0x4657
   1d672:	b8 fa 00 00 00       	mov    eax,0xfa
   1d677:	89 cb                	mov    ebx,ecx
   1d679:	e8 12 d0 04 00       	call   play_wav
   1d67e:	e9 d9 fd ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_60:
   1d683:	b8 18 00 00 00       	mov    eax,0x18
   1d688:	e8 13 cb 00 00       	call   GetDlgFileString
   1d68d:	89 c2                	mov    edx,eax
   1d68f:	89 f0                	mov    eax,esi
   1d691:	e8 c4 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d696:	85 c0                	test   eax,eax
   1d698:	74 45                	je     talk_to_POSTMASTER_BOYLE_branch_61
   1d69a:	b8 19 00 00 00       	mov    eax,0x19
   1d69f:	e8 fc ca 00 00       	call   GetDlgFileString
   1d6a4:	89 c2                	mov    edx,eax
   1d6a6:	89 f0                	mov    eax,esi
   1d6a8:	e8 ad 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d6ad:	85 c0                	test   eax,eax
   1d6af:	74 2e                	je     talk_to_POSTMASTER_BOYLE_branch_61
   1d6b1:	b8 1a 00 00 00       	mov    eax,0x1a
   1d6b6:	e8 e5 ca 00 00       	call   GetDlgFileString
   1d6bb:	89 c2                	mov    edx,eax
   1d6bd:	89 f0                	mov    eax,esi
   1d6bf:	e8 96 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d6c4:	85 c0                	test   eax,eax
   1d6c6:	74 17                	je     talk_to_POSTMASTER_BOYLE_branch_61
   1d6c8:	b8 1b 00 00 00       	mov    eax,0x1b
   1d6cd:	e8 ce ca 00 00       	call   GetDlgFileString
   1d6d2:	89 c2                	mov    edx,eax
   1d6d4:	89 f0                	mov    eax,esi
   1d6d6:	e8 7f 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d6db:	85 c0                	test   eax,eax
   1d6dd:	75 3e                	jne    talk_to_POSTMASTER_BOYLE_branch_63
talk_to_POSTMASTER_BOYLE_branch_61:
   1d6df:	89 ca                	mov    edx,ecx
   1d6e1:	89 e8                	mov    eax,ebp
   1d6e3:	e8 b8 ab 00 00       	call   GIVEN_BUTTON_BACK
   1d6e8:	85 c0                	test   eax,eax
   1d6ea:	75 1b                	jne    talk_to_POSTMASTER_BOYLE_branch_62
   1d6ec:	e8 2f af 00 00       	call   CU_OF_EPAULET_MISSING_DISTINCTIVE_POSTAL_BUTTON
   1d6f1:	ba 5d 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_107                             ; fixup: num: 4101, src obj: 1, src ofs: 0x1d6f2, dst obj: 3, dst ofs: 0x465d
   1d6f6:	b8 0e 01 00 00       	mov    eax,0x10e
   1d6fb:	89 cb                	mov    ebx,ecx
   1d6fd:	e8 8e cf 04 00       	call   play_wav
   1d702:	e9 55 fd ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_62:
   1d707:	ba 63 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_108                             ; fixup: num: 4100, src obj: 1, src ofs: 0x1d708, dst obj: 3, dst ofs: 0x4663
   1d70c:	b8 15 01 00 00       	mov    eax,0x115
   1d711:	89 eb                	mov    ebx,ebp
   1d713:	e8 78 cf 04 00       	call   play_wav
   1d718:	e9 3f fd ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_63:
   1d71d:	b8 1d 00 00 00       	mov    eax,0x1d
   1d722:	e8 79 ca 00 00       	call   GetDlgFileString
   1d727:	89 c2                	mov    edx,eax
   1d729:	89 f0                	mov    eax,esi
   1d72b:	e8 2a 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d730:	85 c0                	test   eax,eax
   1d732:	74 14                	je     talk_to_POSTMASTER_BOYLE_branch_64
   1d734:	ba 69 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_109                             ; fixup: num: 4234, src obj: 1, src ofs: 0x1d735, dst obj: 3, dst ofs: 0x4669
   1d739:	89 f0                	mov    eax,esi
   1d73b:	e8 1a 3d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d740:	85 c0                	test   eax,eax
   1d742:	0f 85 7c 00 00 00    	jne    talk_to_POSTMASTER_BOYLE_branch_66
talk_to_POSTMASTER_BOYLE_branch_64:
   1d748:	ba 72 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_110                             ; fixup: num: 4233, src obj: 1, src ofs: 0x1d749, dst obj: 3, dst ofs: 0x4672
   1d74d:	b8 1c 01 00 00       	mov    eax,0x11c
   1d752:	89 cb                	mov    ebx,ecx
   1d754:	e8 37 cf 04 00       	call   play_wav
   1d759:	b8 1e 00 00 00       	mov    eax,0x1e
   1d75e:	e8 3d ca 00 00       	call   GetDlgFileString
   1d763:	e8 a8 d7 04 00       	call   get_response
   1d768:	83 f8 01             	cmp    eax,0x1
   1d76b:	75 38                	jne    talk_to_POSTMASTER_BOYLE_branch_65
   1d76d:	ba 78 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_111                             ; fixup: num: 4108, src obj: 1, src ofs: 0x1d76e, dst obj: 3, dst ofs: 0x4678
   1d772:	b8 26 01 00 00       	mov    eax,0x126
   1d777:	89 cb                	mov    ebx,ecx
   1d779:	e8 12 cf 04 00       	call   play_wav
   1d77e:	ba 7e 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_112                             ; fixup: num: 4107, src obj: 1, src ofs: 0x1d77f, dst obj: 3, dst ofs: 0x467e
   1d783:	b8 2c 01 00 00       	mov    eax,0x12c
   1d788:	89 cb                	mov    ebx,ecx
   1d78a:	e8 01 cf 04 00       	call   play_wav
   1d78f:	ba 81 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_113                             ; fixup: num: 4106, src obj: 1, src ofs: 0x1d790, dst obj: 3, dst ofs: 0x4681
   1d794:	b8 30 01 00 00       	mov    eax,0x130
   1d799:	89 fb                	mov    ebx,edi
   1d79b:	e8 f0 ce 04 00       	call   play_wav
   1d7a0:	e9 b7 fc ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_65:
   1d7a5:	83 f8 02             	cmp    eax,0x2
   1d7a8:	0f 85 ae fc ff ff    	jne    talk_to_POSTMASTER_BOYLE_branch_51
   1d7ae:	ba 87 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_114                             ; fixup: num: 4105, src obj: 1, src ofs: 0x1d7af, dst obj: 3, dst ofs: 0x4687
   1d7b3:	b8 35 01 00 00       	mov    eax,0x135
   1d7b8:	89 cb                	mov    ebx,ecx
   1d7ba:	e8 d1 ce 04 00       	call   play_wav
   1d7bf:	e9 98 fc ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_66:
   1d7c4:	b8 1f 00 00 00       	mov    eax,0x1f
   1d7c9:	e8 d2 c9 00 00       	call   GetDlgFileString
   1d7ce:	89 c2                	mov    edx,eax
   1d7d0:	89 f0                	mov    eax,esi
   1d7d2:	e8 83 3c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d7d7:	85 c0                	test   eax,eax
   1d7d9:	75 5d                	jne    talk_to_POSTMASTER_BOYLE_branch_67
   1d7db:	ba 8d 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_115                             ; fixup: num: 4104, src obj: 1, src ofs: 0x1d7dc, dst obj: 3, dst ofs: 0x468d
   1d7e0:	b8 3d 01 00 00       	mov    eax,0x13d
   1d7e5:	89 fb                	mov    ebx,edi
   1d7e7:	e8 a4 ce 04 00       	call   play_wav
   1d7ec:	ba 93 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_116                             ; fixup: num: 4103, src obj: 1, src ofs: 0x1d7ed, dst obj: 3, dst ofs: 0x4693
   1d7f1:	b8 41 01 00 00       	mov    eax,0x141
   1d7f6:	89 cb                	mov    ebx,ecx
   1d7f8:	e8 93 ce 04 00       	call   play_wav
   1d7fd:	ba 96 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_117                             ; fixup: num: 4102, src obj: 1, src ofs: 0x1d7fe, dst obj: 3, dst ofs: 0x4696
   1d802:	b8 45 01 00 00       	mov    eax,0x145
   1d807:	89 fb                	mov    ebx,edi
   1d809:	e8 82 ce 04 00       	call   play_wav
   1d80e:	ba 9c 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_118                             ; fixup: num: 4116, src obj: 1, src ofs: 0x1d80f, dst obj: 3, dst ofs: 0x469c
   1d813:	b8 4a 01 00 00       	mov    eax,0x14a
   1d818:	89 cb                	mov    ebx,ecx
   1d81a:	e8 71 ce 04 00       	call   play_wav
   1d81f:	bb 03 00 00 00       	mov    ebx,0x3
   1d824:	ba 9f 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_119                             ; fixup: num: 4115, src obj: 1, src ofs: 0x1d825, dst obj: 3, dst ofs: 0x469f
   1d829:	b8 4e 01 00 00       	mov    eax,0x14e
   1d82e:	e8 5d ce 04 00       	call   play_wav
   1d833:	e9 24 fc ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_67:
   1d838:	b8 20 00 00 00       	mov    eax,0x20
   1d83d:	e8 5e c9 00 00       	call   GetDlgFileString
   1d842:	89 c2                	mov    edx,eax
   1d844:	89 f0                	mov    eax,esi
   1d846:	e8 0f 3c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1d84b:	85 c0                	test   eax,eax
   1d84d:	0f 84 09 fc ff ff    	je     talk_to_POSTMASTER_BOYLE_branch_51
   1d853:	ba a5 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_120                             ; fixup: num: 4114, src obj: 1, src ofs: 0x1d854, dst obj: 3, dst ofs: 0x46a5
   1d858:	b8 43 02 00 00       	mov    eax,0x243
   1d85d:	89 cb                	mov    ebx,ecx
   1d85f:	e8 2c ce 04 00       	call   play_wav
   1d864:	e9 f3 fb ff ff       	jmp    talk_to_POSTMASTER_BOYLE_branch_51
talk_to_POSTMASTER_BOYLE_branch_68:
   1d869:	bb 01 00 00 00       	mov    ebx,0x1
   1d86e:	ba ab 46 00 00       	mov    edx,@obj3:boyle_cpp_variable_121                             ; fixup: num: 4113, src obj: 1, src ofs: 0x1d86f, dst obj: 3, dst ofs: 0x46ab
   1d873:	b8 00 01 00 00       	mov    eax,0x100
talk_to_POSTMASTER_BOYLE_branch_69:
   1d878:	e8 13 ce 04 00       	call   play_wav
talk_to_POSTMASTER_BOYLE_branch_70:
   1d87d:	31 c0                	xor    eax,eax
   1d87f:	5d                   	pop    ebp
   1d880:	5f                   	pop    edi
   1d881:	5e                   	pop    esi
   1d882:	5a                   	pop    edx
   1d883:	59                   	pop    ecx
   1d884:	5b                   	pop    ebx
   1d885:	c3                   	ret    
talk_to_POSTMASTER_BOYLE_branch_71:
   1d886:	89 15 b8 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE,edx                      ; fixup: num: 4112, src obj: 1, src ofs: 0x1d888, dst obj: 3, dst ofs: 0x22cb8
   1d88c:	a1 b8 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE                                ; fixup: num: 4111, src obj: 1, src ofs: 0x1d88d, dst obj: 3, dst ofs: 0x22cb8
   1d891:	c3                   	ret    
   1d892:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1d898:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]
   1d89e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function                                      -
;  'POSTMASTER_BOYLE_FIRST_CONVERSATION'         -
;-------------------------------------------------
POSTMASTER_BOYLE_FIRST_CONVERSATION:
   1d8a0:	85 c0                	test   eax,eax
   1d8a2:	74 e2                	je     talk_to_POSTMASTER_BOYLE_branch_71
   1d8a4:	a1 b8 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE                                ; fixup: num: 4110, src obj: 1, src ofs: 0x1d8a5, dst obj: 3, dst ofs: 0x22cb8
   1d8a9:	c3                   	ret    
POSTMASTER_BOYLE_FIRST_CONVERSATION_branch_1:
   1d8aa:	89 15 bc 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_1,edx           ; fixup: num: 4109, src obj: 1, src ofs: 0x1d8ac, dst obj: 3, dst ofs: 0x22cbc
   1d8b0:	a1 bc 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE_variable_1                     ; fixup: num: 4124, src obj: 1, src ofs: 0x1d8b1, dst obj: 3, dst ofs: 0x22cbc
   1d8b5:	c3                   	ret    
   1d8b6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1d8bc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'POSTMASTER_BOYLE_NEWSPAPER_IS_GLUE'          -
;-------------------------------------------------
POSTMASTER_BOYLE_NEWSPAPER_IS_GLUE:
   1d8c0:	85 c0                	test   eax,eax
   1d8c2:	74 e6                	je     POSTMASTER_BOYLE_FIRST_CONVERSATION_branch_1
   1d8c4:	a1 bc 2c 02 00       	mov    eax,ds:@obj3:POSTMASTER_BOYLE_variable_1                     ; fixup: num: 4123, src obj: 1, src ofs: 0x1d8c5, dst obj: 3, dst ofs: 0x22cbc
   1d8c9:	c3                   	ret    
   1d8ca:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'POSTMASTER_BOYLE_initialize'        -
;-------------------------------------------------
POSTMASTER_BOYLE_initialize:
   1d8d0:	53                   	push   ebx
   1d8d1:	52                   	push   edx
   1d8d2:	ba 01 00 00 00       	mov    edx,0x1
   1d8d7:	31 db                	xor    ebx,ebx
   1d8d9:	89 15 b8 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE,edx                      ; fixup: num: 4122, src obj: 1, src ofs: 0x1d8db, dst obj: 3, dst ofs: 0x22cb8
   1d8df:	89 1d bc 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_1,ebx           ; fixup: num: 4121, src obj: 1, src ofs: 0x1d8e1, dst obj: 3, dst ofs: 0x22cbc
   1d8e5:	89 1d c0 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_2,ebx           ; fixup: num: 4120, src obj: 1, src ofs: 0x1d8e7, dst obj: 3, dst ofs: 0x22cc0
   1d8eb:	89 1d c4 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_3,ebx           ; fixup: num: 4119, src obj: 1, src ofs: 0x1d8ed, dst obj: 3, dst ofs: 0x22cc4
   1d8f1:	89 1d c8 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_4,ebx           ; fixup: num: 4118, src obj: 1, src ofs: 0x1d8f3, dst obj: 3, dst ofs: 0x22cc8
   1d8f7:	89 1d cc 2c 02 00    	mov    DWORD PTR ds:@obj3:POSTMASTER_BOYLE_variable_5,ebx           ; fixup: num: 4117, src obj: 1, src ofs: 0x1d8f9, dst obj: 3, dst ofs: 0x22ccc
   1d8fd:	5a                   	pop    edx
   1d8fe:	5b                   	pop    ebx
   1d8ff:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 37 (D:\SOURCE\boyle.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 37: D:\SOURCE\boyle.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
boyle_cpp_variable_1:
    4374:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_2:
    4375:	42 4f 59 4c 45 53 5f 42 55 54 54 4f 4e 00 	db     "BOYLES_BUTTON",0x00
boyle_cpp_variable_3:
    4383:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_4:
    4389:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    438a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    438b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_5:
    438c:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_6:
    4392:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_7:
    4398:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_8:
    439e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    439f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    43a0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_9:
    43a1:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_10:
    43a7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    43a8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    43a9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_11:
    43aa:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_12:
    43b0:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_13:
    43b6:	42 4f 59 4c 45 53 5f 42 55 54 54 4f 4e 00 	db     "BOYLES_BUTTON",0x00
boyle_cpp_variable_14:
    43c4:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
boyle_cpp_variable_15:
    43ce:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
boyle_cpp_variable_16:
    43df:	4e 4f 54 45 00       	db     "NOTE",0x00
boyle_cpp_variable_17:
    43e4:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
boyle_cpp_variable_18:
    43f3:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
boyle_cpp_variable_19:
    43fd:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
boyle_cpp_variable_20:
    4411:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
boyle_cpp_variable_21:
    4420:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_22:
    4426:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_23:
    442c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    442d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    442e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_24:
    442f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_25:
    4435:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4436:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4437:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_26:
    4438:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_27:
    443e:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_28:
    4444:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_29:
    444a:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_30:
    4450:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_31:
    4456:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_32:
    445c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    445d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    445e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_33:
    445f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_34:
    4465:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4466:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4467:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_35:
    4468:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_36:
    446e:	47 41 53 43 41 4e 00 	db     "GASCAN",0x00
boyle_cpp_variable_37:
    4475:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_38:
    447b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    447c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    447d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_39:
    447e:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_40:
    4484:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4485:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4486:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_41:
    4487:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_42:
    448d:	47 41 53 43 41 4e 00 	db     "GASCAN",0x00
boyle_cpp_variable_43:
    4494:	49 4e 56 45 4e 54 4f 52 59 00 	db     "INVENTORY",0x00
boyle_cpp_variable_44:
    449e:	4c 4f 44 47 45 5f 41 50 50 4c 49 43 41 54 49 4f 4e 00 	db     "LODGE_APPLICATION",0x00
boyle_cpp_variable_45:
    44b0:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
boyle_cpp_variable_46:
    44bf:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
boyle_cpp_variable_47:
    44d7:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_48:
    44dd:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
boyle_cpp_variable_49:
    44ea:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
boyle_cpp_variable_50:
    44fb:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_51:
    4501:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4502:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4503:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_52:
    4504:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_53:
    450a:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_54:
    4510:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_55:
    4516:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4517:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4518:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_56:
    4519:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_57:
    451f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_58:
    4525:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4526:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4527:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_59:
    4528:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_60:
    452e:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_61:
    4534:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_62:
    453a:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_63:
    4540:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4541:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4542:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_64:
    4543:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_65:
    4549:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_66:
    454f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_67:
    4555:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_68:
    455b:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_69:
    4561:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_70:
    4567:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_71:
    456d:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_72:
    4573:	42 4f 59 4c 45 53 5f 42 55 54 54 4f 4e 00 	db     "BOYLES_BUTTON",0x00
boyle_cpp_variable_73:
    4581:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_74:
    4587:	42 4f 59 4c 45 53 5f 42 55 54 54 4f 4e 00 	db     "BOYLES_BUTTON",0x00
boyle_cpp_variable_75:
    4595:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_76:
    459b:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_77:
    45a1:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_78:
    45a7:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
boyle_cpp_variable_79:
    45b6:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_80:
    45bc:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_81:
    45c2:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_82:
    45c8:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_83:
    45ce:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_84:
    45cf:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
boyle_cpp_variable_85:
    45e4:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_86:
    45ea:	44 41 59 5f 35 00    	db     "DAY_5",0x00
boyle_cpp_variable_87:
    45f0:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_88:
    45f6:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
boyle_cpp_variable_89:
    4608:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_90:
    460e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    460f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4610:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_91:
    4611:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_92:
    4617:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_93:
    4618:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4619:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    461a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_94:
    461b:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_95:
    4621:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4622:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4623:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_96:
    4624:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_97:
    462a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    462b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    462c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_98:
    462d:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_99:
    4633:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_100:
    4639:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_101:
    463f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_102:
    4645:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_103:
    464b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    464c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    464d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_104:
    464e:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_105:
    4654:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4655:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4656:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_106:
    4657:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_107:
    465d:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_108:
    4663:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_109:
    4669:	41 72 73 6f 6e 69 73 74 00 	db     "Arsonist",0x00
boyle_cpp_variable_110:
    4672:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_111:
    4678:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_112:
    467e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    467f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4680:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_113:
    4681:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_114:
    4687:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_115:
    468d:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_116:
    4693:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4694:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4695:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_117:
    4696:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_118:
    469c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    469d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    469e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
boyle_cpp_variable_119:
    469f:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_120:
    46a5:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
boyle_cpp_variable_121:
    46ab:	42 4f 59 4c 45 00    	db     "BOYLE",0x00
    46b1:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 37 (D:\SOURCE\boyle.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 37: D:\SOURCE\boyle.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
POSTMASTER_BOYLE:                                                                                   ; access size: DWORD
   22cb8:	00 00 00 00          	dd     0x00000000
POSTMASTER_BOYLE_variable_1:                                                                        ; access size: DWORD
   22cbc:	00 00 00 00          	dd     0x00000000
POSTMASTER_BOYLE_variable_2:                                                                        ; access size: DWORD
   22cc0:	00 00 00 00          	dd     0x00000000
POSTMASTER_BOYLE_variable_3:                                                                        ; access size: DWORD
   22cc4:	00 00 00 00          	dd     0x00000000
POSTMASTER_BOYLE_variable_4:                                                                        ; access size: DWORD
   22cc8:	00 00 00 00          	dd     0x00000000
POSTMASTER_BOYLE_variable_5:                                                                        ; access size: DWORD
   22ccc:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 37 (D:\SOURCE\boyle.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------