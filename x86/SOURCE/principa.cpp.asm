;-------------------------------------------------------------------------------
;                                                                              -
;  Module 41: D:\SOURCE\principa.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_PRINCIPAL_HERRILL'          -
;-------------------------------------------------
talk_to_PRINCIPAL_HERRILL:
   1dc00:	53                   	push   ebx
   1dc01:	51                   	push   ecx
   1dc02:	52                   	push   edx
   1dc03:	56                   	push   esi
   1dc04:	57                   	push   edi
   1dc05:	55                   	push   ebp
   1dc06:	b8 f0 47 00 00       	mov    eax,@obj3:principa_cpp_variable_1                            ; fixup: num: 4043, src obj: 1, src ofs: 0x1dc07, dst obj: 3, dst ofs: 0x47f0
   1dc0b:	e8 80 eb 04 00       	call   check_script_flag
   1dc10:	84 c0                	test   al,al
   1dc12:	0f 84 ca 00 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_2
   1dc18:	b8 01 48 00 00       	mov    eax,@obj3:principa_cpp_variable_2                            ; fixup: num: 4042, src obj: 1, src ofs: 0x1dc19, dst obj: 3, dst ofs: 0x4801
   1dc1d:	e8 6e eb 04 00       	call   check_script_flag
   1dc22:	84 c0                	test   al,al
   1dc24:	0f 85 55 0d 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_75
   1dc2a:	bb 01 00 00 00       	mov    ebx,0x1
   1dc2f:	ba 16 48 00 00       	mov    edx,@obj3:principa_cpp_variable_3                            ; fixup: num: 4041, src obj: 1, src ofs: 0x1dc30, dst obj: 3, dst ofs: 0x4816
   1dc34:	b8 ca 31 00 00       	mov    eax,0x31ca
   1dc39:	e8 52 ca 04 00       	call   play_wav
   1dc3e:	bb 04 00 00 00       	mov    ebx,0x4
   1dc43:	ba 22 48 00 00       	mov    edx,@obj3:principa_cpp_variable_4                            ; fixup: num: 4040, src obj: 1, src ofs: 0x1dc44, dst obj: 3, dst ofs: 0x4822
   1dc48:	b8 ce 31 00 00       	mov    eax,0x31ce
   1dc4d:	e8 3e ca 04 00       	call   play_wav
   1dc52:	ba 25 48 00 00       	mov    edx,@obj3:principa_cpp_variable_5                            ; fixup: num: 4039, src obj: 1, src ofs: 0x1dc53, dst obj: 3, dst ofs: 0x4825
   1dc57:	b8 d2 31 00 00       	mov    eax,0x31d2
   1dc5c:	31 db                	xor    ebx,ebx
   1dc5e:	e8 2d ca 04 00       	call   play_wav
   1dc63:	ba 31 48 00 00       	mov    edx,@obj3:principa_cpp_variable_6                            ; fixup: num: 4038, src obj: 1, src ofs: 0x1dc64, dst obj: 3, dst ofs: 0x4831
   1dc68:	b8 da 31 00 00       	mov    eax,0x31da
   1dc6d:	31 db                	xor    ebx,ebx
   1dc6f:	e8 1c ca 04 00       	call   play_wav
   1dc74:	bb 02 00 00 00       	mov    ebx,0x2
   1dc79:	ba 34 48 00 00       	mov    edx,@obj3:principa_cpp_variable_7                            ; fixup: num: 4037, src obj: 1, src ofs: 0x1dc7a, dst obj: 3, dst ofs: 0x4834
   1dc7e:	b8 de 31 00 00       	mov    eax,0x31de
   1dc83:	e8 08 ca 04 00       	call   play_wav
   1dc88:	b8 01 00 00 00       	mov    eax,0x1
   1dc8d:	31 d2                	xor    edx,edx
   1dc8f:	e8 dc a6 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1dc94:	85 c0                	test   eax,eax
   1dc96:	74 28                	je     talk_to_PRINCIPAL_HERRILL_branch_1
   1dc98:	bb 02 00 00 00       	mov    ebx,0x2
   1dc9d:	ba 3f 48 00 00       	mov    edx,@obj3:principa_cpp_variable_8                            ; fixup: num: 4036, src obj: 1, src ofs: 0x1dc9e, dst obj: 3, dst ofs: 0x483f
   1dca2:	b8 e0 31 00 00       	mov    eax,0x31e0
   1dca7:	e8 e4 c9 04 00       	call   play_wav
   1dcac:	bb 02 00 00 00       	mov    ebx,0x2
   1dcb1:	ba 4a 48 00 00       	mov    edx,@obj3:principa_cpp_variable_9                            ; fixup: num: 4056, src obj: 1, src ofs: 0x1dcb2, dst obj: 3, dst ofs: 0x484a
   1dcb6:	b8 e2 31 00 00       	mov    eax,0x31e2
   1dcbb:	e8 d0 c9 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_1:
   1dcc0:	b8 56 48 00 00       	mov    eax,@obj3:principa_cpp_variable_10                           ; fixup: num: 4055, src obj: 1, src ofs: 0x1dcc1, dst obj: 3, dst ofs: 0x4856
   1dcc5:	ba 01 00 00 00       	mov    edx,0x1
   1dcca:	e8 c1 ed 04 00       	call   MonsterfyNpc
   1dccf:	b8 61 48 00 00       	mov    eax,@obj3:principa_cpp_variable_11                           ; fixup: num: 4054, src obj: 1, src ofs: 0x1dcd0, dst obj: 3, dst ofs: 0x4861
   1dcd4:	e8 07 eb 04 00       	call   set_script_flag
   1dcd9:	31 c0                	xor    eax,eax
   1dcdb:	5d                   	pop    ebp
   1dcdc:	5f                   	pop    edi
   1dcdd:	5e                   	pop    esi
   1dcde:	5a                   	pop    edx
   1dcdf:	59                   	pop    ecx
   1dce0:	5b                   	pop    ebx
   1dce1:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_2:
   1dce2:	a1 e8 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_3                    ; fixup: num: 4053, src obj: 1, src ofs: 0x1dce3, dst obj: 3, dst ofs: 0x22ce8
   1dce7:	85 c0                	test   eax,eax
   1dce9:	0f 85 90 0c 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_75
   1dcef:	a1 ec 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_4                    ; fixup: num: 4052, src obj: 1, src ofs: 0x1dcf0, dst obj: 3, dst ofs: 0x22cec
   1dcf4:	85 c0                	test   eax,eax
   1dcf6:	74 58                	je     talk_to_PRINCIPAL_HERRILL_branch_3
   1dcf8:	b8 76 48 00 00       	mov    eax,@obj3:principa_cpp_variable_12                           ; fixup: num: 4051, src obj: 1, src ofs: 0x1dcf9, dst obj: 3, dst ofs: 0x4876
   1dcfd:	e8 6e eb 04 00       	call   check_inventory
   1dd02:	84 c0                	test   al,al
   1dd04:	75 4a                	jne    talk_to_PRINCIPAL_HERRILL_branch_3
   1dd06:	b8 80 48 00 00       	mov    eax,@obj3:principa_cpp_variable_13                           ; fixup: num: 4050, src obj: 1, src ofs: 0x1dd07, dst obj: 3, dst ofs: 0x4880
   1dd0b:	e8 60 eb 04 00       	call   check_inventory
   1dd10:	84 c0                	test   al,al
   1dd12:	75 3c                	jne    talk_to_PRINCIPAL_HERRILL_branch_3
   1dd14:	b8 94 48 00 00       	mov    eax,@obj3:principa_cpp_variable_14                           ; fixup: num: 4049, src obj: 1, src ofs: 0x1dd15, dst obj: 3, dst ofs: 0x4894
   1dd19:	e8 52 eb 04 00       	call   check_inventory
   1dd1e:	84 c0                	test   al,al
   1dd20:	75 2e                	jne    talk_to_PRINCIPAL_HERRILL_branch_3
   1dd22:	b8 99 48 00 00       	mov    eax,@obj3:principa_cpp_variable_15                           ; fixup: num: 4048, src obj: 1, src ofs: 0x1dd23, dst obj: 3, dst ofs: 0x4899
   1dd27:	e8 44 eb 04 00       	call   check_inventory
   1dd2c:	84 c0                	test   al,al
   1dd2e:	75 20                	jne    talk_to_PRINCIPAL_HERRILL_branch_3
   1dd30:	b8 a8 48 00 00       	mov    eax,@obj3:principa_cpp_variable_16                           ; fixup: num: 4047, src obj: 1, src ofs: 0x1dd31, dst obj: 3, dst ofs: 0x48a8
   1dd35:	e8 36 eb 04 00       	call   check_inventory
   1dd3a:	84 c0                	test   al,al
   1dd3c:	75 12                	jne    talk_to_PRINCIPAL_HERRILL_branch_3
   1dd3e:	b8 b0 48 00 00       	mov    eax,@obj3:principa_cpp_variable_17                           ; fixup: num: 4046, src obj: 1, src ofs: 0x1dd3f, dst obj: 3, dst ofs: 0x48b0
   1dd43:	e8 28 eb 04 00       	call   check_inventory
   1dd48:	84 c0                	test   al,al
   1dd4a:	0f 84 2f 0c 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_75
talk_to_PRINCIPAL_HERRILL_branch_3:
   1dd50:	be c2 48 00 00       	mov    esi,@obj3:principa_cpp_variable_18                           ; fixup: num: 4045, src obj: 1, src ofs: 0x1dd51, dst obj: 3, dst ofs: 0x48c2
   1dd55:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4044, src obj: 1, src ofs: 0x1dd56, dst obj: 3, dst ofs: 0x295c0
   1dd5a:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_4:
   1dd5b:	8a 06                	mov    al,BYTE PTR [esi]
   1dd5d:	88 07                	mov    BYTE PTR [edi],al
   1dd5f:	3c 00                	cmp    al,0x0
   1dd61:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_5
   1dd63:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1dd66:	83 c6 02             	add    esi,0x2
   1dd69:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1dd6c:	83 c7 02             	add    edi,0x2
   1dd6f:	3c 00                	cmp    al,0x0
   1dd71:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_4
talk_to_PRINCIPAL_HERRILL_branch_5:
   1dd73:	5f                   	pop    edi
   1dd74:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4068, src obj: 1, src ofs: 0x1dd76, dst obj: 3, dst ofs: 0x294bc
   1dd7a:	85 d2                	test   edx,edx
   1dd7c:	0f 84 5a 04 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_28
   1dd82:	89 d0                	mov    eax,edx
   1dd84:	ba c3 48 00 00       	mov    edx,@obj3:principa_cpp_variable_19                           ; fixup: num: 4067, src obj: 1, src ofs: 0x1dd85, dst obj: 3, dst ofs: 0x48c3
   1dd89:	e8 a2 86 05 00       	call   strcmp_
   1dd8e:	85 c0                	test   eax,eax
   1dd90:	75 14                	jne    talk_to_PRINCIPAL_HERRILL_branch_6
   1dd92:	bb 02 00 00 00       	mov    ebx,0x2
   1dd97:	ba db 48 00 00       	mov    edx,@obj3:principa_cpp_variable_20                           ; fixup: num: 4066, src obj: 1, src ofs: 0x1dd98, dst obj: 3, dst ofs: 0x48db
   1dd9c:	b8 9f 30 00 00       	mov    eax,0x309f
   1dda1:	e9 d4 0b 00 00       	jmp    talk_to_PRINCIPAL_HERRILL_branch_74
talk_to_PRINCIPAL_HERRILL_branch_6:
   1dda6:	ba e3 48 00 00       	mov    edx,@obj3:principa_cpp_variable_21                           ; fixup: num: 4065, src obj: 1, src ofs: 0x1dda7, dst obj: 3, dst ofs: 0x48e3
   1ddab:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4064, src obj: 1, src ofs: 0x1ddac, dst obj: 3, dst ofs: 0x294bc
   1ddb0:	e8 7b 86 05 00       	call   strcmp_
   1ddb5:	85 c0                	test   eax,eax
   1ddb7:	74 4f                	je     talk_to_PRINCIPAL_HERRILL_branch_8
   1ddb9:	ba f0 48 00 00       	mov    edx,@obj3:principa_cpp_variable_22                           ; fixup: num: 4063, src obj: 1, src ofs: 0x1ddba, dst obj: 3, dst ofs: 0x48f0
   1ddbe:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4062, src obj: 1, src ofs: 0x1ddbf, dst obj: 3, dst ofs: 0x294bc
   1ddc3:	e8 68 86 05 00       	call   strcmp_
   1ddc8:	85 c0                	test   eax,eax
   1ddca:	74 3c                	je     talk_to_PRINCIPAL_HERRILL_branch_8
   1ddcc:	ba 01 49 00 00       	mov    edx,@obj3:principa_cpp_variable_23                           ; fixup: num: 4061, src obj: 1, src ofs: 0x1ddcd, dst obj: 3, dst ofs: 0x4901
   1ddd1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4060, src obj: 1, src ofs: 0x1ddd2, dst obj: 3, dst ofs: 0x294bc
   1ddd6:	e8 55 86 05 00       	call   strcmp_
   1dddb:	85 c0                	test   eax,eax
   1dddd:	74 17                	je     talk_to_PRINCIPAL_HERRILL_branch_7
   1dddf:	ba 08 49 00 00       	mov    edx,@obj3:principa_cpp_variable_24                           ; fixup: num: 4059, src obj: 1, src ofs: 0x1dde0, dst obj: 3, dst ofs: 0x4908
   1dde4:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4058, src obj: 1, src ofs: 0x1dde5, dst obj: 3, dst ofs: 0x294bc
   1dde9:	e8 42 86 05 00       	call   strcmp_
   1ddee:	85 c0                	test   eax,eax
   1ddf0:	0f 85 ab 00 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_14
talk_to_PRINCIPAL_HERRILL_branch_7:
   1ddf6:	b8 10 49 00 00       	mov    eax,@obj3:principa_cpp_variable_25                           ; fixup: num: 4057, src obj: 1, src ofs: 0x1ddf7, dst obj: 3, dst ofs: 0x4910
   1ddfb:	e8 90 e9 04 00       	call   check_script_flag
   1de00:	84 c0                	test   al,al
   1de02:	0f 84 99 00 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_14
talk_to_PRINCIPAL_HERRILL_branch_8:
   1de08:	ba 22 49 00 00       	mov    edx,@obj3:principa_cpp_variable_26                           ; fixup: num: 4077, src obj: 1, src ofs: 0x1de09, dst obj: 3, dst ofs: 0x4922
   1de0d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4076, src obj: 1, src ofs: 0x1de0e, dst obj: 3, dst ofs: 0x294bc
   1de12:	e8 19 86 05 00       	call   strcmp_
   1de17:	85 c0                	test   eax,eax
   1de19:	74 13                	je     talk_to_PRINCIPAL_HERRILL_branch_9
   1de1b:	ba 2f 49 00 00       	mov    edx,@obj3:principa_cpp_variable_27                           ; fixup: num: 4075, src obj: 1, src ofs: 0x1de1c, dst obj: 3, dst ofs: 0x492f
   1de20:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4074, src obj: 1, src ofs: 0x1de21, dst obj: 3, dst ofs: 0x294bc
   1de25:	e8 06 86 05 00       	call   strcmp_
   1de2a:	85 c0                	test   eax,eax
   1de2c:	75 0e                	jne    talk_to_PRINCIPAL_HERRILL_branch_10
talk_to_PRINCIPAL_HERRILL_branch_9:
   1de2e:	ba 01 00 00 00       	mov    edx,0x1
   1de33:	31 c0                	xor    eax,eax
   1de35:	e8 26 a5 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1de3a:	eb 0c                	jmp    talk_to_PRINCIPAL_HERRILL_branch_11
talk_to_PRINCIPAL_HERRILL_branch_10:
   1de3c:	ba 01 00 00 00       	mov    edx,0x1
   1de41:	31 c0                	xor    eax,eax
   1de43:	e8 08 a5 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
talk_to_PRINCIPAL_HERRILL_branch_11:
   1de48:	ba 40 49 00 00       	mov    edx,@obj3:principa_cpp_variable_28                           ; fixup: num: 4073, src obj: 1, src ofs: 0x1de49, dst obj: 3, dst ofs: 0x4940
   1de4d:	b8 a6 30 00 00       	mov    eax,0x30a6
   1de52:	31 db                	xor    ebx,ebx
   1de54:	e8 37 c8 04 00       	call   play_wav
   1de59:	b8 7f 02 00 00       	mov    eax,0x27f
   1de5e:	e8 3d c3 00 00       	call   GetDlgFileString
   1de63:	e8 a8 d0 04 00       	call   get_response
   1de68:	83 f8 01             	cmp    eax,0x1
   1de6b:	75 11                	jne    talk_to_PRINCIPAL_HERRILL_branch_12
   1de6d:	bb 02 00 00 00       	mov    ebx,0x2
   1de72:	ba 48 49 00 00       	mov    edx,@obj3:principa_cpp_variable_29                           ; fixup: num: 4072, src obj: 1, src ofs: 0x1de73, dst obj: 3, dst ofs: 0x4948
   1de77:	b8 b1 30 00 00       	mov    eax,0x30b1
   1de7c:	eb 15                	jmp    talk_to_PRINCIPAL_HERRILL_branch_13
talk_to_PRINCIPAL_HERRILL_branch_12:
   1de7e:	83 f8 02             	cmp    eax,0x2
   1de81:	0f 85 f8 0a 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_75
   1de87:	ba 50 49 00 00       	mov    edx,@obj3:principa_cpp_variable_30                           ; fixup: num: 4071, src obj: 1, src ofs: 0x1de88, dst obj: 3, dst ofs: 0x4950
   1de8c:	89 c3                	mov    ebx,eax
   1de8e:	b8 b6 30 00 00       	mov    eax,0x30b6
talk_to_PRINCIPAL_HERRILL_branch_13:
   1de93:	e8 f8 c7 04 00       	call   play_wav
   1de98:	31 c0                	xor    eax,eax
   1de9a:	5d                   	pop    ebp
   1de9b:	5f                   	pop    edi
   1de9c:	5e                   	pop    esi
   1de9d:	5a                   	pop    edx
   1de9e:	59                   	pop    ecx
   1de9f:	5b                   	pop    ebx
   1dea0:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_14:
   1dea1:	ba 58 49 00 00       	mov    edx,@obj3:principa_cpp_variable_31                           ; fixup: num: 4070, src obj: 1, src ofs: 0x1dea2, dst obj: 3, dst ofs: 0x4958
   1dea6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4069, src obj: 1, src ofs: 0x1dea7, dst obj: 3, dst ofs: 0x294bc
   1deab:	e8 80 85 05 00       	call   strcmp_
   1deb0:	85 c0                	test   eax,eax
   1deb2:	75 0f                	jne    talk_to_PRINCIPAL_HERRILL_branch_15
   1deb4:	c7 05 e0 2c 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_1,0x1 ; fixup: num: 4087, src obj: 1, src ofs: 0x1deb6, dst obj: 3, dst ofs: 0x22ce0
   1debe:	e9 45 01 00 00       	jmp    talk_to_PRINCIPAL_HERRILL_branch_19
talk_to_PRINCIPAL_HERRILL_branch_15:
   1dec3:	ba 5f 49 00 00       	mov    edx,@obj3:principa_cpp_variable_32                           ; fixup: num: 4086, src obj: 1, src ofs: 0x1dec4, dst obj: 3, dst ofs: 0x495f
   1dec8:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4085, src obj: 1, src ofs: 0x1dec9, dst obj: 3, dst ofs: 0x294bc
   1decd:	e8 5e 85 05 00       	call   strcmp_
   1ded2:	85 c0                	test   eax,eax
   1ded4:	74 17                	je     talk_to_PRINCIPAL_HERRILL_branch_16
   1ded6:	ba 67 49 00 00       	mov    edx,@obj3:principa_cpp_variable_33                           ; fixup: num: 4084, src obj: 1, src ofs: 0x1ded7, dst obj: 3, dst ofs: 0x4967
   1dedb:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4083, src obj: 1, src ofs: 0x1dedc, dst obj: 3, dst ofs: 0x294bc
   1dee0:	e8 4b 85 05 00       	call   strcmp_
   1dee5:	85 c0                	test   eax,eax
   1dee7:	0f 85 8c 00 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_17
talk_to_PRINCIPAL_HERRILL_branch_16:
   1deed:	ba 01 00 00 00       	mov    edx,0x1
   1def2:	31 c0                	xor    eax,eax
   1def4:	e8 47 a4 00 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   1def9:	31 db                	xor    ebx,ebx
   1defb:	ba 79 49 00 00       	mov    edx,@obj3:principa_cpp_variable_34                           ; fixup: num: 4082, src obj: 1, src ofs: 0x1defc, dst obj: 3, dst ofs: 0x4979
   1df00:	b8 88 31 00 00       	mov    eax,0x3188
   1df05:	e8 86 c7 04 00       	call   play_wav
   1df0a:	ba 81 49 00 00       	mov    edx,@obj3:principa_cpp_variable_35                           ; fixup: num: 4081, src obj: 1, src ofs: 0x1df0b, dst obj: 3, dst ofs: 0x4981
   1df0f:	b8 8c 31 00 00       	mov    eax,0x318c
   1df14:	31 db                	xor    ebx,ebx
   1df16:	e8 75 c7 04 00       	call   play_wav
   1df1b:	bb 02 00 00 00       	mov    ebx,0x2
   1df20:	ba 84 49 00 00       	mov    edx,@obj3:principa_cpp_variable_36                           ; fixup: num: 4080, src obj: 1, src ofs: 0x1df21, dst obj: 3, dst ofs: 0x4984
   1df25:	b8 91 31 00 00       	mov    eax,0x3191
   1df2a:	e8 61 c7 04 00       	call   play_wav
   1df2f:	ba 01 00 00 00       	mov    edx,0x1
   1df34:	31 c0                	xor    eax,eax
   1df36:	e8 45 a4 00 00       	call   SHOW_EVIDENCE_SHERIFF_OWNS_TV_STATION
   1df3b:	a1 e4 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_2                    ; fixup: num: 4079, src obj: 1, src ofs: 0x1df3c, dst obj: 3, dst ofs: 0x22ce4
   1df40:	85 c0                	test   eax,eax
   1df42:	0f 84 37 0a 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_75
   1df48:	bb 02 00 00 00       	mov    ebx,0x2
   1df4d:	ba 8c 49 00 00       	mov    edx,@obj3:principa_cpp_variable_37                           ; fixup: num: 4078, src obj: 1, src ofs: 0x1df4e, dst obj: 3, dst ofs: 0x498c
   1df52:	b8 98 31 00 00       	mov    eax,0x3198
   1df57:	e8 34 c7 04 00       	call   play_wav
   1df5c:	bb 02 00 00 00       	mov    ebx,0x2
   1df61:	ba 94 49 00 00       	mov    edx,@obj3:principa_cpp_variable_38                           ; fixup: num: 4099, src obj: 1, src ofs: 0x1df62, dst obj: 3, dst ofs: 0x4994
   1df66:	b8 9d 31 00 00       	mov    eax,0x319d
   1df6b:	e8 20 c7 04 00       	call   play_wav
   1df70:	31 c0                	xor    eax,eax
   1df72:	5d                   	pop    ebp
   1df73:	5f                   	pop    edi
   1df74:	5e                   	pop    esi
   1df75:	5a                   	pop    edx
   1df76:	59                   	pop    ecx
   1df77:	5b                   	pop    ebx
   1df78:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_17:
   1df79:	ba 9c 49 00 00       	mov    edx,@obj3:principa_cpp_variable_39                           ; fixup: num: 4098, src obj: 1, src ofs: 0x1df7a, dst obj: 3, dst ofs: 0x499c
   1df7e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4097, src obj: 1, src ofs: 0x1df7f, dst obj: 3, dst ofs: 0x294bc
   1df83:	e8 a8 84 05 00       	call   strcmp_
   1df88:	85 c0                	test   eax,eax
   1df8a:	74 3d                	je     talk_to_PRINCIPAL_HERRILL_branch_18
   1df8c:	ba a1 49 00 00       	mov    edx,@obj3:principa_cpp_variable_40                           ; fixup: num: 4096, src obj: 1, src ofs: 0x1df8d, dst obj: 3, dst ofs: 0x49a1
   1df91:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4095, src obj: 1, src ofs: 0x1df92, dst obj: 3, dst ofs: 0x294bc
   1df96:	e8 95 84 05 00       	call   strcmp_
   1df9b:	85 c0                	test   eax,eax
   1df9d:	74 2a                	je     talk_to_PRINCIPAL_HERRILL_branch_18
   1df9f:	ba b0 49 00 00       	mov    edx,@obj3:principa_cpp_variable_41                           ; fixup: num: 4094, src obj: 1, src ofs: 0x1dfa0, dst obj: 3, dst ofs: 0x49b0
   1dfa4:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4093, src obj: 1, src ofs: 0x1dfa5, dst obj: 3, dst ofs: 0x294bc
   1dfa9:	e8 82 84 05 00       	call   strcmp_
   1dfae:	85 c0                	test   eax,eax
   1dfb0:	74 17                	je     talk_to_PRINCIPAL_HERRILL_branch_18
   1dfb2:	ba ba 49 00 00       	mov    edx,@obj3:principa_cpp_variable_42                           ; fixup: num: 4092, src obj: 1, src ofs: 0x1dfb3, dst obj: 3, dst ofs: 0x49ba
   1dfb7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4091, src obj: 1, src ofs: 0x1dfb8, dst obj: 3, dst ofs: 0x294bc
   1dfbc:	e8 6f 84 05 00       	call   strcmp_
   1dfc1:	85 c0                	test   eax,eax
   1dfc3:	0f 85 f9 01 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_27
talk_to_PRINCIPAL_HERRILL_branch_18:
   1dfc9:	ba 01 00 00 00       	mov    edx,0x1
   1dfce:	31 c0                	xor    eax,eax
   1dfd0:	e8 5b a3 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1dfd5:	31 db                	xor    ebx,ebx
   1dfd7:	ba ce 49 00 00       	mov    edx,@obj3:principa_cpp_variable_43                           ; fixup: num: 4090, src obj: 1, src ofs: 0x1dfd8, dst obj: 3, dst ofs: 0x49ce
   1dfdc:	b8 bf 30 00 00       	mov    eax,0x30bf
   1dfe1:	e8 aa c6 04 00       	call   play_wav
   1dfe6:	ba d6 49 00 00       	mov    edx,@obj3:principa_cpp_variable_44                           ; fixup: num: 4089, src obj: 1, src ofs: 0x1dfe7, dst obj: 3, dst ofs: 0x49d6
   1dfeb:	b8 c4 30 00 00       	mov    eax,0x30c4
   1dff0:	31 db                	xor    ebx,ebx
   1dff2:	e8 99 c6 04 00       	call   play_wav
   1dff7:	ba d9 49 00 00       	mov    edx,@obj3:principa_cpp_variable_45                           ; fixup: num: 4088, src obj: 1, src ofs: 0x1dff8, dst obj: 3, dst ofs: 0x49d9
   1dffc:	b8 c8 30 00 00       	mov    eax,0x30c8
   1e001:	31 db                	xor    ebx,ebx
   1e003:	e8 88 c6 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_19:
   1e008:	a1 e0 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_1                    ; fixup: num: 4390, src obj: 1, src ofs: 0x1e009, dst obj: 3, dst ofs: 0x22ce0
   1e00d:	85 c0                	test   eax,eax
   1e00f:	74 3e                	je     talk_to_PRINCIPAL_HERRILL_branch_20
   1e011:	bb 01 00 00 00       	mov    ebx,0x1
   1e016:	ba e1 49 00 00       	mov    edx,@obj3:principa_cpp_variable_46                           ; fixup: num: 4397, src obj: 1, src ofs: 0x1e017, dst obj: 3, dst ofs: 0x49e1
   1e01b:	b8 cf 30 00 00       	mov    eax,0x30cf
   1e020:	e8 6b c6 04 00       	call   play_wav
   1e025:	ba e9 49 00 00       	mov    edx,@obj3:principa_cpp_variable_47                           ; fixup: num: 4396, src obj: 1, src ofs: 0x1e026, dst obj: 3, dst ofs: 0x49e9
   1e02a:	b8 d3 30 00 00       	mov    eax,0x30d3
   1e02f:	31 db                	xor    ebx,ebx
   1e031:	e8 5a c6 04 00       	call   play_wav
   1e036:	ba ec 49 00 00       	mov    edx,@obj3:principa_cpp_variable_48                           ; fixup: num: 4395, src obj: 1, src ofs: 0x1e037, dst obj: 3, dst ofs: 0x49ec
   1e03b:	b8 d8 30 00 00       	mov    eax,0x30d8
   1e040:	31 db                	xor    ebx,ebx
   1e042:	31 c9                	xor    ecx,ecx
   1e044:	e8 47 c6 04 00       	call   play_wav
   1e049:	89 0d e0 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_1,ecx          ; fixup: num: 4394, src obj: 1, src ofs: 0x1e04b, dst obj: 3, dst ofs: 0x22ce0
talk_to_PRINCIPAL_HERRILL_branch_20:
   1e04f:	b8 01 00 00 00       	mov    eax,0x1
   1e054:	31 d2                	xor    edx,edx
   1e056:	e8 d5 a1 00 00       	call   BOYLE_ADMITTED_BURNING_DOWN_THE_NEWSPAPER_BLDG
   1e05b:	85 c0                	test   eax,eax
   1e05d:	0f 84 45 01 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_26
   1e063:	be 01 00 00 00       	mov    esi,0x1
   1e068:	b8 80 02 00 00       	mov    eax,0x280
   1e06d:	89 35 e4 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_2,esi          ; fixup: num: 4393, src obj: 1, src ofs: 0x1e06f, dst obj: 3, dst ofs: 0x22ce4
   1e073:	e8 28 c1 00 00       	call   GetDlgFileString
   1e078:	e8 93 ce 04 00       	call   get_response
   1e07d:	39 f0                	cmp    eax,esi
   1e07f:	0f 85 00 01 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_25
   1e085:	ba f4 49 00 00       	mov    edx,@obj3:principa_cpp_variable_49                           ; fixup: num: 4392, src obj: 1, src ofs: 0x1e086, dst obj: 3, dst ofs: 0x49f4
   1e08a:	b8 e7 30 00 00       	mov    eax,0x30e7
   1e08f:	31 db                	xor    ebx,ebx
   1e091:	e8 fa c5 04 00       	call   play_wav
   1e096:	89 f0                	mov    eax,esi
   1e098:	31 d2                	xor    edx,edx
   1e09a:	e8 01 a2 00 00       	call   GIVEN_BUTTON_BACK
   1e09f:	85 c0                	test   eax,eax
   1e0a1:	74 11                	je     talk_to_PRINCIPAL_HERRILL_branch_21
   1e0a3:	ba fc 49 00 00       	mov    edx,@obj3:principa_cpp_variable_50                           ; fixup: num: 4391, src obj: 1, src ofs: 0x1e0a4, dst obj: 3, dst ofs: 0x49fc
   1e0a8:	b8 eb 30 00 00       	mov    eax,0x30eb
   1e0ad:	31 db                	xor    ebx,ebx
   1e0af:	e8 dc c5 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_21:
   1e0b4:	b8 01 00 00 00       	mov    eax,0x1
   1e0b9:	31 d2                	xor    edx,edx
   1e0bb:	e8 80 a1 00 00       	call   BOYLE_SPOKE_OF_GAS_CAN
   1e0c0:	85 c0                	test   eax,eax
   1e0c2:	74 11                	je     talk_to_PRINCIPAL_HERRILL_branch_22
   1e0c4:	ba ff 49 00 00       	mov    edx,@obj3:principa_cpp_variable_51                           ; fixup: num: 4405, src obj: 1, src ofs: 0x1e0c5, dst obj: 3, dst ofs: 0x49ff
   1e0c9:	b8 f4 30 00 00       	mov    eax,0x30f4
   1e0ce:	31 db                	xor    ebx,ebx
   1e0d0:	e8 bb c5 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_22:
   1e0d5:	b8 07 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_52                           ; fixup: num: 4404, src obj: 1, src ofs: 0x1e0d6, dst obj: 3, dst ofs: 0x4a07
   1e0da:	e8 b1 e6 04 00       	call   check_script_flag
   1e0df:	84 c0                	test   al,al
   1e0e1:	74 63                	je     talk_to_PRINCIPAL_HERRILL_branch_24
   1e0e3:	ba 16 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_53                           ; fixup: num: 4403, src obj: 1, src ofs: 0x1e0e4, dst obj: 3, dst ofs: 0x4a16
   1e0e8:	b8 fa 30 00 00       	mov    eax,0x30fa
   1e0ed:	31 db                	xor    ebx,ebx
   1e0ef:	e8 9c c5 04 00       	call   play_wav
   1e0f4:	bb 02 00 00 00       	mov    ebx,0x2
   1e0f9:	ba 19 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_54                           ; fixup: num: 4402, src obj: 1, src ofs: 0x1e0fa, dst obj: 3, dst ofs: 0x4a19
   1e0fe:	b8 ff 30 00 00       	mov    eax,0x30ff
   1e103:	e8 88 c5 04 00       	call   play_wav
   1e108:	b8 01 00 00 00       	mov    eax,0x1
   1e10d:	31 d2                	xor    edx,edx
   1e10f:	e8 6c a2 00 00       	call   SHOW_EVIDENCE_SHERIFF_OWNS_TV_STATION
   1e114:	85 c0                	test   eax,eax
   1e116:	74 11                	je     talk_to_PRINCIPAL_HERRILL_branch_23
   1e118:	ba 21 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_55                           ; fixup: num: 4401, src obj: 1, src ofs: 0x1e119, dst obj: 3, dst ofs: 0x4a21
   1e11d:	b8 04 31 00 00       	mov    eax,0x3104
   1e122:	31 db                	xor    ebx,ebx
   1e124:	e8 67 c5 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_23:
   1e129:	bb 02 00 00 00       	mov    ebx,0x2
   1e12e:	ba 29 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_56                           ; fixup: num: 4400, src obj: 1, src ofs: 0x1e12f, dst obj: 3, dst ofs: 0x4a29
   1e133:	b8 09 31 00 00       	mov    eax,0x3109
   1e138:	e8 53 c5 04 00       	call   play_wav
   1e13d:	31 c0                	xor    eax,eax
   1e13f:	5d                   	pop    ebp
   1e140:	5f                   	pop    edi
   1e141:	5e                   	pop    esi
   1e142:	5a                   	pop    edx
   1e143:	59                   	pop    ecx
   1e144:	5b                   	pop    ebx
   1e145:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_24:
   1e146:	ba 31 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_57                           ; fixup: num: 4399, src obj: 1, src ofs: 0x1e147, dst obj: 3, dst ofs: 0x4a31
   1e14b:	b8 f0 30 00 00       	mov    eax,0x30f0
   1e150:	31 db                	xor    ebx,ebx
   1e152:	e8 39 c5 04 00       	call   play_wav
   1e157:	ba 39 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_58                           ; fixup: num: 4398, src obj: 1, src ofs: 0x1e158, dst obj: 3, dst ofs: 0x4a39
   1e15c:	b8 10 31 00 00       	mov    eax,0x3110
   1e161:	31 db                	xor    ebx,ebx
   1e163:	e8 28 c5 04 00       	call   play_wav
   1e168:	bb 03 00 00 00       	mov    ebx,0x3
   1e16d:	ba 3c 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_59                           ; fixup: num: 4413, src obj: 1, src ofs: 0x1e16e, dst obj: 3, dst ofs: 0x4a3c
   1e172:	b8 14 31 00 00       	mov    eax,0x3114
   1e177:	e8 14 c5 04 00       	call   play_wav
   1e17c:	31 c0                	xor    eax,eax
   1e17e:	5d                   	pop    ebp
   1e17f:	5f                   	pop    edi
   1e180:	5e                   	pop    esi
   1e181:	5a                   	pop    edx
   1e182:	59                   	pop    ecx
   1e183:	5b                   	pop    ebx
   1e184:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_25:
   1e185:	83 f8 02             	cmp    eax,0x2
   1e188:	0f 85 f1 07 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_75
   1e18e:	ba 44 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_60                           ; fixup: num: 4412, src obj: 1, src ofs: 0x1e18f, dst obj: 3, dst ofs: 0x4a44
   1e193:	b8 1b 31 00 00       	mov    eax,0x311b
   1e198:	89 f3                	mov    ebx,esi
   1e19a:	e8 f1 c4 04 00       	call   play_wav
   1e19f:	31 c0                	xor    eax,eax
   1e1a1:	5d                   	pop    ebp
   1e1a2:	5f                   	pop    edi
   1e1a3:	5e                   	pop    esi
   1e1a4:	5a                   	pop    edx
   1e1a5:	59                   	pop    ecx
   1e1a6:	5b                   	pop    ebx
   1e1a7:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_26:
   1e1a8:	ba 4c 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_61                           ; fixup: num: 4411, src obj: 1, src ofs: 0x1e1a9, dst obj: 3, dst ofs: 0x4a4c
   1e1ad:	b8 23 31 00 00       	mov    eax,0x3123
   1e1b2:	31 db                	xor    ebx,ebx
   1e1b4:	e8 d7 c4 04 00       	call   play_wav
   1e1b9:	31 c0                	xor    eax,eax
   1e1bb:	5d                   	pop    ebp
   1e1bc:	5f                   	pop    edi
   1e1bd:	5e                   	pop    esi
   1e1be:	5a                   	pop    edx
   1e1bf:	59                   	pop    ecx
   1e1c0:	5b                   	pop    ebx
   1e1c1:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_27:
   1e1c2:	ba 4f 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_62                           ; fixup: num: 4410, src obj: 1, src ofs: 0x1e1c3, dst obj: 3, dst ofs: 0x4a4f
   1e1c7:	b8 99 30 00 00       	mov    eax,0x3099
   1e1cc:	31 db                	xor    ebx,ebx
   1e1ce:	e8 bd c4 04 00       	call   play_wav
   1e1d3:	31 c0                	xor    eax,eax
   1e1d5:	5d                   	pop    ebp
   1e1d6:	5f                   	pop    edi
   1e1d7:	5e                   	pop    esi
   1e1d8:	5a                   	pop    edx
   1e1d9:	59                   	pop    ecx
   1e1da:	5b                   	pop    ebx
   1e1db:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_28:
   1e1dc:	a1 dc 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL                               ; fixup: num: 4409, src obj: 1, src ofs: 0x1e1dd, dst obj: 3, dst ofs: 0x22cdc
   1e1e1:	85 c0                	test   eax,eax
   1e1e3:	0f 84 89 00 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_31
   1e1e9:	bb 01 00 00 00       	mov    ebx,0x1
   1e1ee:	b8 59 2f 00 00       	mov    eax,0x2f59
   1e1f3:	89 15 dc 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL,edx                     ; fixup: num: 4408, src obj: 1, src ofs: 0x1e1f5, dst obj: 3, dst ofs: 0x22cdc
   1e1f9:	ba 57 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_63                           ; fixup: num: 4407, src obj: 1, src ofs: 0x1e1fa, dst obj: 3, dst ofs: 0x4a57
   1e1fe:	e8 8d c4 04 00       	call   play_wav
   1e203:	ba 5f 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_64                           ; fixup: num: 4406, src obj: 1, src ofs: 0x1e204, dst obj: 3, dst ofs: 0x4a5f
   1e208:	b8 5e 2f 00 00       	mov    eax,0x2f5e
   1e20d:	31 db                	xor    ebx,ebx
   1e20f:	e8 7c c4 04 00       	call   play_wav
   1e214:	bb 01 00 00 00       	mov    ebx,0x1
   1e219:	ba 62 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_65                           ; fixup: num: 4421, src obj: 1, src ofs: 0x1e21a, dst obj: 3, dst ofs: 0x4a62
   1e21e:	b8 62 2f 00 00       	mov    eax,0x2f62
   1e223:	e8 68 c4 04 00       	call   play_wav
   1e228:	ba 6a 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_66                           ; fixup: num: 4420, src obj: 1, src ofs: 0x1e229, dst obj: 3, dst ofs: 0x4a6a
   1e22d:	b8 54 16 00 00       	mov    eax,0x1654
   1e232:	31 db                	xor    ebx,ebx
   1e234:	e8 57 c4 04 00       	call   play_wav
   1e239:	ba 6d 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_67                           ; fixup: num: 4419, src obj: 1, src ofs: 0x1e23a, dst obj: 3, dst ofs: 0x4a6d
   1e23e:	b8 6e 2f 00 00       	mov    eax,0x2f6e
   1e243:	31 db                	xor    ebx,ebx
   1e245:	e8 46 c4 04 00       	call   play_wav
   1e24a:	b8 81 02 00 00       	mov    eax,0x281
   1e24f:	e8 4c bf 00 00       	call   GetDlgFileString
   1e254:	89 c6                	mov    esi,eax
   1e256:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_29:
   1e257:	8a 06                	mov    al,BYTE PTR [esi]
   1e259:	88 07                	mov    BYTE PTR [edi],al
   1e25b:	3c 00                	cmp    al,0x0
   1e25d:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_30
   1e25f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e262:	83 c6 02             	add    esi,0x2
   1e265:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e268:	83 c7 02             	add    edi,0x2
   1e26b:	3c 00                	cmp    al,0x0
   1e26d:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_29
talk_to_PRINCIPAL_HERRILL_branch_30:
   1e26f:	5f                   	pop    edi
   1e270:	eb 11                	jmp    talk_to_PRINCIPAL_HERRILL_branch_32
talk_to_PRINCIPAL_HERRILL_branch_31:
   1e272:	ba 75 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_68                           ; fixup: num: 4418, src obj: 1, src ofs: 0x1e273, dst obj: 3, dst ofs: 0x4a75
   1e277:	b8 fb 2f 00 00       	mov    eax,0x2ffb
   1e27c:	31 db                	xor    ebx,ebx
   1e27e:	e8 0d c4 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_32:
   1e283:	b8 7d 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_69                           ; fixup: num: 4417, src obj: 1, src ofs: 0x1e284, dst obj: 3, dst ofs: 0x4a7d
   1e288:	e8 03 e5 04 00       	call   check_script_flag
   1e28d:	84 c0                	test   al,al
   1e28f:	74 28                	je     talk_to_PRINCIPAL_HERRILL_branch_33
   1e291:	83 3d f0 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_5,0x0          ; fixup: num: 4416, src obj: 1, src ofs: 0x1e293, dst obj: 3, dst ofs: 0x22cf0
   1e298:	75 1f                	jne    talk_to_PRINCIPAL_HERRILL_branch_33
   1e29a:	be 01 00 00 00       	mov    esi,0x1
   1e29f:	bb 03 00 00 00       	mov    ebx,0x3
   1e2a4:	ba 92 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_70                           ; fixup: num: 4415, src obj: 1, src ofs: 0x1e2a5, dst obj: 3, dst ofs: 0x4a92
   1e2a9:	b8 04 30 00 00       	mov    eax,0x3004
   1e2ae:	89 35 f0 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_5,esi          ; fixup: num: 4414, src obj: 1, src ofs: 0x1e2b0, dst obj: 3, dst ofs: 0x22cf0
   1e2b4:	e8 d7 c3 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_33:
   1e2b9:	e8 02 a9 00 00       	call   get_day
   1e2be:	83 f8 05             	cmp    eax,0x5
   1e2c1:	75 25                	jne    talk_to_PRINCIPAL_HERRILL_branch_34
   1e2c3:	83 3d f4 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_6,0x0          ; fixup: num: 4434, src obj: 1, src ofs: 0x1e2c5, dst obj: 3, dst ofs: 0x22cf4
   1e2ca:	75 1c                	jne    talk_to_PRINCIPAL_HERRILL_branch_34
   1e2cc:	bd 01 00 00 00       	mov    ebp,0x1
   1e2d1:	ba 9a 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_71                           ; fixup: num: 4433, src obj: 1, src ofs: 0x1e2d2, dst obj: 3, dst ofs: 0x4a9a
   1e2d6:	b8 0d 30 00 00       	mov    eax,0x300d
   1e2db:	89 eb                	mov    ebx,ebp
   1e2dd:	89 2d f4 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_6,ebp          ; fixup: num: 4432, src obj: 1, src ofs: 0x1e2df, dst obj: 3, dst ofs: 0x22cf4
   1e2e3:	e8 a8 c3 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_34:
   1e2e8:	b8 a2 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_72                           ; fixup: num: 4431, src obj: 1, src ofs: 0x1e2e9, dst obj: 3, dst ofs: 0x4aa2
   1e2ed:	e8 9e e4 04 00       	call   check_script_flag
   1e2f2:	84 c0                	test   al,al
   1e2f4:	74 3c                	je     talk_to_PRINCIPAL_HERRILL_branch_35
   1e2f6:	83 3d f8 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_7,0x0          ; fixup: num: 4430, src obj: 1, src ofs: 0x1e2f8, dst obj: 3, dst ofs: 0x22cf8
   1e2fd:	75 33                	jne    talk_to_PRINCIPAL_HERRILL_branch_35
   1e2ff:	ba 01 00 00 00       	mov    edx,0x1
   1e304:	bb 02 00 00 00       	mov    ebx,0x2
   1e309:	b8 19 30 00 00       	mov    eax,0x3019
   1e30e:	89 15 f8 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_7,edx          ; fixup: num: 4429, src obj: 1, src ofs: 0x1e310, dst obj: 3, dst ofs: 0x22cf8
   1e314:	ba b3 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_73                           ; fixup: num: 4428, src obj: 1, src ofs: 0x1e315, dst obj: 3, dst ofs: 0x4ab3
   1e319:	e8 72 c3 04 00       	call   play_wav
   1e31e:	bb 01 00 00 00       	mov    ebx,0x1
   1e323:	ba bb 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_74                           ; fixup: num: 4427, src obj: 1, src ofs: 0x1e324, dst obj: 3, dst ofs: 0x4abb
   1e328:	b8 22 30 00 00       	mov    eax,0x3022
   1e32d:	e8 5e c3 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_35:
   1e332:	b8 c3 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_75                           ; fixup: num: 4426, src obj: 1, src ofs: 0x1e333, dst obj: 3, dst ofs: 0x4ac3
   1e337:	e8 54 e4 04 00       	call   check_script_flag
   1e33c:	84 c0                	test   al,al
   1e33e:	74 38                	je     talk_to_PRINCIPAL_HERRILL_branch_36
   1e340:	8b 1d fc 2c 02 00    	mov    ebx,DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_8          ; fixup: num: 4425, src obj: 1, src ofs: 0x1e342, dst obj: 3, dst ofs: 0x22cfc
   1e346:	85 db                	test   ebx,ebx
   1e348:	75 2e                	jne    talk_to_PRINCIPAL_HERRILL_branch_36
   1e34a:	b9 01 00 00 00       	mov    ecx,0x1
   1e34f:	ba d6 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_76                           ; fixup: num: 4424, src obj: 1, src ofs: 0x1e350, dst obj: 3, dst ofs: 0x4ad6
   1e354:	b8 29 30 00 00       	mov    eax,0x3029
   1e359:	89 0d fc 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_8,ecx          ; fixup: num: 4423, src obj: 1, src ofs: 0x1e35b, dst obj: 3, dst ofs: 0x22cfc
   1e35f:	e8 2c c3 04 00       	call   play_wav
   1e364:	bb 03 00 00 00       	mov    ebx,0x3
   1e369:	ba de 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_77                           ; fixup: num: 4422, src obj: 1, src ofs: 0x1e36a, dst obj: 3, dst ofs: 0x4ade
   1e36e:	b8 2f 30 00 00       	mov    eax,0x302f
   1e373:	e8 18 c3 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_36:
   1e378:	b8 e6 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_78                           ; fixup: num: 4444, src obj: 1, src ofs: 0x1e379, dst obj: 3, dst ofs: 0x4ae6
   1e37d:	e8 0e e4 04 00       	call   check_script_flag
   1e382:	84 c0                	test   al,al
   1e384:	74 2e                	je     talk_to_PRINCIPAL_HERRILL_branch_37
   1e386:	83 3d 00 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_9,0x0          ; fixup: num: 4443, src obj: 1, src ofs: 0x1e388, dst obj: 3, dst ofs: 0x22d00
   1e38d:	75 25                	jne    talk_to_PRINCIPAL_HERRILL_branch_37
   1e38f:	bf 01 00 00 00       	mov    edi,0x1
   1e394:	31 c0                	xor    eax,eax
   1e396:	31 db                	xor    ebx,ebx
   1e398:	89 fa                	mov    edx,edi
   1e39a:	89 3d 00 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_9,edi          ; fixup: num: 4442, src obj: 1, src ofs: 0x1e39c, dst obj: 3, dst ofs: 0x22d00
   1e3a0:	e8 ab 9e 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   1e3a5:	ba f5 4a 00 00       	mov    edx,@obj3:principa_cpp_variable_79                           ; fixup: num: 4441, src obj: 1, src ofs: 0x1e3a6, dst obj: 3, dst ofs: 0x4af5
   1e3aa:	b8 41 30 00 00       	mov    eax,0x3041
   1e3af:	e8 dc c2 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_37:
   1e3b4:	b8 fd 4a 00 00       	mov    eax,@obj3:principa_cpp_variable_80                           ; fixup: num: 4440, src obj: 1, src ofs: 0x1e3b5, dst obj: 3, dst ofs: 0x4afd
   1e3b9:	e8 d2 e3 04 00       	call   check_script_flag
   1e3be:	84 c0                	test   al,al
   1e3c0:	74 59                	je     talk_to_PRINCIPAL_HERRILL_branch_40
   1e3c2:	83 3d 04 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_10,0x0         ; fixup: num: 4439, src obj: 1, src ofs: 0x1e3c4, dst obj: 3, dst ofs: 0x22d04
   1e3c9:	75 50                	jne    talk_to_PRINCIPAL_HERRILL_branch_40
   1e3cb:	b8 01 00 00 00       	mov    eax,0x1
   1e3d0:	ba 0f 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_81                           ; fixup: num: 4438, src obj: 1, src ofs: 0x1e3d1, dst obj: 3, dst ofs: 0x4b0f
   1e3d5:	a3 04 2d 02 00       	mov    ds:@obj3:PRINCIPAL_HERRILL_variable_10,eax                   ; fixup: num: 4437, src obj: 1, src ofs: 0x1e3d6, dst obj: 3, dst ofs: 0x22d04
   1e3da:	89 c3                	mov    ebx,eax
   1e3dc:	b8 4c 30 00 00       	mov    eax,0x304c
   1e3e1:	e8 aa c2 04 00       	call   play_wav
   1e3e6:	b8 01 00 00 00       	mov    eax,0x1
   1e3eb:	31 d2                	xor    edx,edx
   1e3ed:	e8 7e 9f 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1e3f2:	85 c0                	test   eax,eax
   1e3f4:	74 11                	je     talk_to_PRINCIPAL_HERRILL_branch_38
   1e3f6:	bb 02 00 00 00       	mov    ebx,0x2
   1e3fb:	ba 17 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_82                           ; fixup: num: 4436, src obj: 1, src ofs: 0x1e3fc, dst obj: 3, dst ofs: 0x4b17
   1e400:	b8 50 30 00 00       	mov    eax,0x3050
   1e405:	eb 0f                	jmp    talk_to_PRINCIPAL_HERRILL_branch_39
talk_to_PRINCIPAL_HERRILL_branch_38:
   1e407:	bb 01 00 00 00       	mov    ebx,0x1
   1e40c:	ba 1f 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_83                           ; fixup: num: 4435, src obj: 1, src ofs: 0x1e40d, dst obj: 3, dst ofs: 0x4b1f
   1e411:	b8 57 30 00 00       	mov    eax,0x3057
talk_to_PRINCIPAL_HERRILL_branch_39:
   1e416:	e8 75 c2 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_40:
   1e41b:	b8 27 4b 00 00       	mov    eax,@obj3:principa_cpp_variable_84                           ; fixup: num: 4454, src obj: 1, src ofs: 0x1e41c, dst obj: 3, dst ofs: 0x4b27
   1e420:	e8 6b e3 04 00       	call   check_script_flag
   1e425:	84 c0                	test   al,al
   1e427:	0f 84 94 00 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_44
   1e42d:	83 3d 08 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_11,0x0         ; fixup: num: 4453, src obj: 1, src ofs: 0x1e42f, dst obj: 3, dst ofs: 0x22d08
   1e434:	0f 85 87 00 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_44
   1e43a:	bb 01 00 00 00       	mov    ebx,0x1
   1e43f:	ba 38 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_85                           ; fixup: num: 4452, src obj: 1, src ofs: 0x1e440, dst obj: 3, dst ofs: 0x4b38
   1e444:	b8 5e 30 00 00       	mov    eax,0x305e
   1e449:	89 1d 08 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_11,ebx         ; fixup: num: 4451, src obj: 1, src ofs: 0x1e44b, dst obj: 3, dst ofs: 0x22d08
   1e44f:	31 db                	xor    ebx,ebx
   1e451:	e8 3a c2 04 00       	call   play_wav
   1e456:	bb 03 00 00 00       	mov    ebx,0x3
   1e45b:	ba 40 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_86                           ; fixup: num: 4450, src obj: 1, src ofs: 0x1e45c, dst obj: 3, dst ofs: 0x4b40
   1e460:	b8 1b 46 00 00       	mov    eax,0x461b
   1e465:	e8 26 c2 04 00       	call   play_wav
   1e46a:	b8 43 4b 00 00       	mov    eax,@obj3:principa_cpp_variable_87                           ; fixup: num: 4449, src obj: 1, src ofs: 0x1e46b, dst obj: 3, dst ofs: 0x4b43
   1e46f:	e8 1c e3 04 00       	call   check_script_flag
   1e474:	84 c0                	test   al,al
   1e476:	74 14                	je     talk_to_PRINCIPAL_HERRILL_branch_41
   1e478:	bb 03 00 00 00       	mov    ebx,0x3
   1e47d:	ba 58 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_88                           ; fixup: num: 4448, src obj: 1, src ofs: 0x1e47e, dst obj: 3, dst ofs: 0x4b58
   1e482:	b8 67 30 00 00       	mov    eax,0x3067
   1e487:	e8 04 c2 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_41:
   1e48c:	b8 01 00 00 00       	mov    eax,0x1
   1e491:	31 d2                	xor    edx,edx
   1e493:	e8 d8 9e 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1e498:	85 c0                	test   eax,eax
   1e49a:	74 11                	je     talk_to_PRINCIPAL_HERRILL_branch_42
   1e49c:	bb 02 00 00 00       	mov    ebx,0x2
   1e4a1:	ba 60 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_89                           ; fixup: num: 4447, src obj: 1, src ofs: 0x1e4a2, dst obj: 3, dst ofs: 0x4b60
   1e4a6:	b8 6b 30 00 00       	mov    eax,0x306b
   1e4ab:	eb 0f                	jmp    talk_to_PRINCIPAL_HERRILL_branch_43
talk_to_PRINCIPAL_HERRILL_branch_42:
   1e4ad:	bb 03 00 00 00       	mov    ebx,0x3
   1e4b2:	ba 68 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_90                           ; fixup: num: 4446, src obj: 1, src ofs: 0x1e4b3, dst obj: 3, dst ofs: 0x4b68
   1e4b7:	b8 73 30 00 00       	mov    eax,0x3073
talk_to_PRINCIPAL_HERRILL_branch_43:
   1e4bc:	e8 cf c1 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_44:
   1e4c1:	b8 70 4b 00 00       	mov    eax,@obj3:principa_cpp_variable_91                           ; fixup: num: 4445, src obj: 1, src ofs: 0x1e4c2, dst obj: 3, dst ofs: 0x4b70
   1e4c6:	e8 c5 e2 04 00       	call   check_script_flag
   1e4cb:	84 c0                	test   al,al
   1e4cd:	74 28                	je     talk_to_PRINCIPAL_HERRILL_branch_45
   1e4cf:	83 3d 0c 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_12,0x0         ; fixup: num: 4334, src obj: 1, src ofs: 0x1e4d1, dst obj: 3, dst ofs: 0x22d0c
   1e4d6:	75 1f                	jne    talk_to_PRINCIPAL_HERRILL_branch_45
   1e4d8:	be 01 00 00 00       	mov    esi,0x1
   1e4dd:	bb 03 00 00 00       	mov    ebx,0x3
   1e4e2:	ba 7d 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_92                           ; fixup: num: 4333, src obj: 1, src ofs: 0x1e4e3, dst obj: 3, dst ofs: 0x4b7d
   1e4e7:	b8 7d 30 00 00       	mov    eax,0x307d
   1e4ec:	89 35 0c 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_12,esi         ; fixup: num: 4332, src obj: 1, src ofs: 0x1e4ee, dst obj: 3, dst ofs: 0x22d0c
   1e4f2:	e8 99 c1 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_45:
   1e4f7:	b8 01 00 00 00       	mov    eax,0x1
   1e4fc:	31 d2                	xor    edx,edx
   1e4fe:	e8 6d 9e 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1e503:	85 c0                	test   eax,eax
   1e505:	0f 84 87 00 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_47
   1e50b:	83 3d 10 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_13,0x0         ; fixup: num: 4331, src obj: 1, src ofs: 0x1e50d, dst obj: 3, dst ofs: 0x22d10
   1e512:	0f 85 7a 00 00 00    	jne    talk_to_PRINCIPAL_HERRILL_branch_47
   1e518:	bd 01 00 00 00       	mov    ebp,0x1
   1e51d:	bb 02 00 00 00       	mov    ebx,0x2
   1e522:	ba 85 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_93                           ; fixup: num: 4330, src obj: 1, src ofs: 0x1e523, dst obj: 3, dst ofs: 0x4b85
   1e527:	b8 a6 31 00 00       	mov    eax,0x31a6
   1e52c:	89 2d 10 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_13,ebp         ; fixup: num: 4329, src obj: 1, src ofs: 0x1e52e, dst obj: 3, dst ofs: 0x22d10
   1e532:	e8 59 c1 04 00       	call   play_wav
   1e537:	b8 82 02 00 00       	mov    eax,0x282
   1e53c:	e8 5f bc 00 00       	call   GetDlgFileString
   1e541:	e8 ca c9 04 00       	call   get_response
   1e546:	39 e8                	cmp    eax,ebp
   1e548:	75 23                	jne    talk_to_PRINCIPAL_HERRILL_branch_46
   1e54a:	bb 02 00 00 00       	mov    ebx,0x2
   1e54f:	ba 8d 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_94                           ; fixup: num: 4328, src obj: 1, src ofs: 0x1e550, dst obj: 3, dst ofs: 0x4b8d
   1e554:	b8 b1 31 00 00       	mov    eax,0x31b1
   1e559:	e8 32 c1 04 00       	call   play_wav
   1e55e:	89 2d e8 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_3,ebp          ; fixup: num: 4456, src obj: 1, src ofs: 0x1e560, dst obj: 3, dst ofs: 0x22ce8
   1e564:	31 c0                	xor    eax,eax
   1e566:	5d                   	pop    ebp
   1e567:	5f                   	pop    edi
   1e568:	5e                   	pop    esi
   1e569:	5a                   	pop    edx
   1e56a:	59                   	pop    ecx
   1e56b:	5b                   	pop    ebx
   1e56c:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_46:
   1e56d:	83 f8 02             	cmp    eax,0x2
   1e570:	75 20                	jne    talk_to_PRINCIPAL_HERRILL_branch_47
   1e572:	ba 95 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_95                           ; fixup: num: 4455, src obj: 1, src ofs: 0x1e573, dst obj: 3, dst ofs: 0x4b95
   1e577:	89 c3                	mov    ebx,eax
   1e579:	b8 b9 31 00 00       	mov    eax,0x31b9
   1e57e:	e8 0d c1 04 00       	call   play_wav
   1e583:	89 e8                	mov    eax,ebp
   1e585:	89 2d ec 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_4,ebp          ; fixup: num: 4341, src obj: 1, src ofs: 0x1e587, dst obj: 3, dst ofs: 0x22cec
   1e58b:	31 e8                	xor    eax,ebp
   1e58d:	e9 ef 03 00 00       	jmp    talk_to_PRINCIPAL_HERRILL_branch_76
talk_to_PRINCIPAL_HERRILL_branch_47:
   1e592:	be 9d 4b 00 00       	mov    esi,@obj3:principa_cpp_variable_96                           ; fixup: num: 4340, src obj: 1, src ofs: 0x1e593, dst obj: 3, dst ofs: 0x4b9d
   1e597:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 4339, src obj: 1, src ofs: 0x1e598, dst obj: 3, dst ofs: 0x294c0
   1e59c:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_48:
   1e59d:	8a 06                	mov    al,BYTE PTR [esi]
   1e59f:	88 07                	mov    BYTE PTR [edi],al
   1e5a1:	3c 00                	cmp    al,0x0
   1e5a3:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_49
   1e5a5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e5a8:	83 c6 02             	add    esi,0x2
   1e5ab:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e5ae:	83 c7 02             	add    edi,0x2
   1e5b1:	3c 00                	cmp    al,0x0
   1e5b3:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_48
talk_to_PRINCIPAL_HERRILL_branch_49:
   1e5b5:	5f                   	pop    edi
   1e5b6:	89 fd                	mov    ebp,edi
   1e5b8:	31 c9                	xor    ecx,ecx
talk_to_PRINCIPAL_HERRILL_branch_50:
   1e5ba:	b8 83 02 00 00       	mov    eax,0x283
   1e5bf:	e8 dc bb 00 00       	call   GetDlgFileString
   1e5c4:	89 c2                	mov    edx,eax
   1e5c6:	89 e8                	mov    eax,ebp
   1e5c8:	e8 8d 2e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e5cd:	85 c0                	test   eax,eax
   1e5cf:	0f 84 99 03 00 00    	je     talk_to_PRINCIPAL_HERRILL_branch_73
   1e5d5:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 4338, src obj: 1, src ofs: 0x1e5d6, dst obj: 3, dst ofs: 0x295c0
   1e5da:	e8 61 d4 04 00       	call   show_keywords
   1e5df:	b8 84 02 00 00       	mov    eax,0x284
   1e5e4:	e8 b7 bb 00 00       	call   GetDlgFileString
   1e5e9:	89 c2                	mov    edx,eax
   1e5eb:	89 e8                	mov    eax,ebp
   1e5ed:	e8 68 2e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e5f2:	85 c0                	test   eax,eax
   1e5f4:	75 77                	jne    talk_to_PRINCIPAL_HERRILL_branch_53
   1e5f6:	bb 02 00 00 00       	mov    ebx,0x2
   1e5fb:	ba 9e 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_97                           ; fixup: num: 4337, src obj: 1, src ofs: 0x1e5fc, dst obj: 3, dst ofs: 0x4b9e
   1e600:	b8 7b 2f 00 00       	mov    eax,0x2f7b
   1e605:	e8 86 c0 04 00       	call   play_wav
   1e60a:	ba a1 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_98                           ; fixup: num: 4336, src obj: 1, src ofs: 0x1e60b, dst obj: 3, dst ofs: 0x4ba1
   1e60f:	b8 7f 2f 00 00       	mov    eax,0x2f7f
   1e614:	89 cb                	mov    ebx,ecx
   1e616:	e8 75 c0 04 00       	call   play_wav
   1e61b:	ba a9 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_99                           ; fixup: num: 4335, src obj: 1, src ofs: 0x1e61c, dst obj: 3, dst ofs: 0x4ba9
   1e620:	b8 80 2f 00 00       	mov    eax,0x2f80
   1e625:	89 cb                	mov    ebx,ecx
   1e627:	e8 64 c0 04 00       	call   play_wav
   1e62c:	ba b1 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_100                          ; fixup: num: 4347, src obj: 1, src ofs: 0x1e62d, dst obj: 3, dst ofs: 0x4bb1
   1e631:	b8 81 2f 00 00       	mov    eax,0x2f81
   1e636:	89 cb                	mov    ebx,ecx
   1e638:	e8 53 c0 04 00       	call   play_wav
   1e63d:	b8 85 02 00 00       	mov    eax,0x285
   1e642:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4346, src obj: 1, src ofs: 0x1e643, dst obj: 3, dst ofs: 0x295c0
   1e647:	e8 54 bb 00 00       	call   GetDlgFileString
   1e64c:	89 c6                	mov    esi,eax
   1e64e:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_51:
   1e64f:	8a 06                	mov    al,BYTE PTR [esi]
   1e651:	88 07                	mov    BYTE PTR [edi],al
   1e653:	3c 00                	cmp    al,0x0
   1e655:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_52
   1e657:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e65a:	83 c6 02             	add    esi,0x2
   1e65d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e660:	83 c7 02             	add    edi,0x2
   1e663:	3c 00                	cmp    al,0x0
   1e665:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_51
talk_to_PRINCIPAL_HERRILL_branch_52:
   1e667:	5f                   	pop    edi
   1e668:	e9 4d ff ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_53:
   1e66d:	b8 86 02 00 00       	mov    eax,0x286
   1e672:	e8 29 bb 00 00       	call   GetDlgFileString
   1e677:	89 c2                	mov    edx,eax
   1e679:	89 e8                	mov    eax,ebp
   1e67b:	e8 da 2d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e680:	85 c0                	test   eax,eax
   1e682:	75 66                	jne    talk_to_PRINCIPAL_HERRILL_branch_56
   1e684:	ba b9 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_101                          ; fixup: num: 4345, src obj: 1, src ofs: 0x1e685, dst obj: 3, dst ofs: 0x4bb9
   1e689:	b8 8f 2f 00 00       	mov    eax,0x2f8f
   1e68e:	89 cb                	mov    ebx,ecx
   1e690:	e8 fb bf 04 00       	call   play_wav
   1e695:	ba c1 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_102                          ; fixup: num: 4344, src obj: 1, src ofs: 0x1e696, dst obj: 3, dst ofs: 0x4bc1
   1e69a:	b8 90 2f 00 00       	mov    eax,0x2f90
   1e69f:	89 cb                	mov    ebx,ecx
   1e6a1:	e8 ea bf 04 00       	call   play_wav
   1e6a6:	bb 01 00 00 00       	mov    ebx,0x1
   1e6ab:	ba c9 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_103                          ; fixup: num: 4343, src obj: 1, src ofs: 0x1e6ac, dst obj: 3, dst ofs: 0x4bc9
   1e6b0:	b8 91 2f 00 00       	mov    eax,0x2f91
   1e6b5:	e8 d6 bf 04 00       	call   play_wav
   1e6ba:	b8 87 02 00 00       	mov    eax,0x287
   1e6bf:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4342, src obj: 1, src ofs: 0x1e6c0, dst obj: 3, dst ofs: 0x295c0
   1e6c4:	e8 d7 ba 00 00       	call   GetDlgFileString
   1e6c9:	89 c6                	mov    esi,eax
   1e6cb:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_54:
   1e6cc:	8a 06                	mov    al,BYTE PTR [esi]
   1e6ce:	88 07                	mov    BYTE PTR [edi],al
   1e6d0:	3c 00                	cmp    al,0x0
   1e6d2:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_55
   1e6d4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e6d7:	83 c6 02             	add    esi,0x2
   1e6da:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e6dd:	83 c7 02             	add    edi,0x2
   1e6e0:	3c 00                	cmp    al,0x0
   1e6e2:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_54
talk_to_PRINCIPAL_HERRILL_branch_55:
   1e6e4:	5f                   	pop    edi
   1e6e5:	e9 d0 fe ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_56:
   1e6ea:	b8 88 02 00 00       	mov    eax,0x288
   1e6ef:	e8 ac ba 00 00       	call   GetDlgFileString
   1e6f4:	89 c2                	mov    edx,eax
   1e6f6:	89 e8                	mov    eax,ebp
   1e6f8:	e8 5d 2d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e6fd:	85 c0                	test   eax,eax
   1e6ff:	75 6c                	jne    talk_to_PRINCIPAL_HERRILL_branch_59
   1e701:	bb 01 00 00 00       	mov    ebx,0x1
   1e706:	ba d1 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_104                          ; fixup: num: 4352, src obj: 1, src ofs: 0x1e707, dst obj: 3, dst ofs: 0x4bd1
   1e70b:	b8 9e 2f 00 00       	mov    eax,0x2f9e
   1e710:	e8 7b bf 04 00       	call   play_wav
   1e715:	bb 02 00 00 00       	mov    ebx,0x2
   1e71a:	ba d9 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_105                          ; fixup: num: 4351, src obj: 1, src ofs: 0x1e71b, dst obj: 3, dst ofs: 0x4bd9
   1e71f:	b8 a3 2f 00 00       	mov    eax,0x2fa3
   1e724:	e8 67 bf 04 00       	call   play_wav
   1e729:	bb 01 00 00 00       	mov    ebx,0x1
   1e72e:	ba dc 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_106                          ; fixup: num: 4350, src obj: 1, src ofs: 0x1e72f, dst obj: 3, dst ofs: 0x4bdc
   1e733:	b8 a7 2f 00 00       	mov    eax,0x2fa7
   1e738:	e8 53 bf 04 00       	call   play_wav
   1e73d:	b8 89 02 00 00       	mov    eax,0x289
   1e742:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4349, src obj: 1, src ofs: 0x1e743, dst obj: 3, dst ofs: 0x295c0
   1e747:	e8 54 ba 00 00       	call   GetDlgFileString
   1e74c:	89 c6                	mov    esi,eax
   1e74e:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_57:
   1e74f:	8a 06                	mov    al,BYTE PTR [esi]
   1e751:	88 07                	mov    BYTE PTR [edi],al
   1e753:	3c 00                	cmp    al,0x0
   1e755:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_58
   1e757:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e75a:	83 c6 02             	add    esi,0x2
   1e75d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e760:	83 c7 02             	add    edi,0x2
   1e763:	3c 00                	cmp    al,0x0
   1e765:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_57
talk_to_PRINCIPAL_HERRILL_branch_58:
   1e767:	5f                   	pop    edi
   1e768:	e9 4d fe ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_59:
   1e76d:	b8 8a 02 00 00       	mov    eax,0x28a
   1e772:	e8 29 ba 00 00       	call   GetDlgFileString
   1e777:	89 c2                	mov    edx,eax
   1e779:	89 e8                	mov    eax,ebp
   1e77b:	e8 da 2c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e780:	85 c0                	test   eax,eax
   1e782:	75 7a                	jne    talk_to_PRINCIPAL_HERRILL_branch_62
   1e784:	ba e4 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_107                          ; fixup: num: 4348, src obj: 1, src ofs: 0x1e785, dst obj: 3, dst ofs: 0x4be4
   1e789:	b8 b2 2f 00 00       	mov    eax,0x2fb2
   1e78e:	89 cb                	mov    ebx,ecx
   1e790:	e8 fb be 04 00       	call   play_wav
   1e795:	ba e7 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_108                          ; fixup: num: 4358, src obj: 1, src ofs: 0x1e796, dst obj: 3, dst ofs: 0x4be7
   1e79a:	b8 b6 2f 00 00       	mov    eax,0x2fb6
   1e79f:	89 cb                	mov    ebx,ecx
   1e7a1:	e8 ea be 04 00       	call   play_wav
   1e7a6:	bb 01 00 00 00       	mov    ebx,0x1
   1e7ab:	ba ef 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_109                          ; fixup: num: 4357, src obj: 1, src ofs: 0x1e7ac, dst obj: 3, dst ofs: 0x4bef
   1e7b0:	b8 be 2f 00 00       	mov    eax,0x2fbe
   1e7b5:	e8 d6 be 04 00       	call   play_wav
   1e7ba:	bb 01 00 00 00       	mov    ebx,0x1
   1e7bf:	ba f7 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_110                          ; fixup: num: 4356, src obj: 1, src ofs: 0x1e7c0, dst obj: 3, dst ofs: 0x4bf7
   1e7c4:	b8 c2 2f 00 00       	mov    eax,0x2fc2
   1e7c9:	e8 c2 be 04 00       	call   play_wav
   1e7ce:	b8 8b 02 00 00       	mov    eax,0x28b
   1e7d3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4355, src obj: 1, src ofs: 0x1e7d4, dst obj: 3, dst ofs: 0x295c0
   1e7d8:	e8 c3 b9 00 00       	call   GetDlgFileString
   1e7dd:	89 c6                	mov    esi,eax
   1e7df:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_60:
   1e7e0:	8a 06                	mov    al,BYTE PTR [esi]
   1e7e2:	88 07                	mov    BYTE PTR [edi],al
   1e7e4:	3c 00                	cmp    al,0x0
   1e7e6:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_61
   1e7e8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e7eb:	83 c6 02             	add    esi,0x2
   1e7ee:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e7f1:	83 c7 02             	add    edi,0x2
   1e7f4:	3c 00                	cmp    al,0x0
   1e7f6:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_60
talk_to_PRINCIPAL_HERRILL_branch_61:
   1e7f8:	5f                   	pop    edi
   1e7f9:	e9 bc fd ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_62:
   1e7fe:	b8 8c 02 00 00       	mov    eax,0x28c
   1e803:	e8 98 b9 00 00       	call   GetDlgFileString
   1e808:	89 c2                	mov    edx,eax
   1e80a:	89 e8                	mov    eax,ebp
   1e80c:	e8 49 2c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e811:	85 c0                	test   eax,eax
   1e813:	75 52                	jne    talk_to_PRINCIPAL_HERRILL_branch_65
   1e815:	ba ff 4b 00 00       	mov    edx,@obj3:principa_cpp_variable_111                          ; fixup: num: 4354, src obj: 1, src ofs: 0x1e816, dst obj: 3, dst ofs: 0x4bff
   1e81a:	b8 cd 2f 00 00       	mov    eax,0x2fcd
   1e81f:	89 cb                	mov    ebx,ecx
   1e821:	e8 6a be 04 00       	call   play_wav
   1e826:	ba 02 4c 00 00       	mov    edx,@obj3:principa_cpp_variable_112                          ; fixup: num: 4353, src obj: 1, src ofs: 0x1e827, dst obj: 3, dst ofs: 0x4c02
   1e82b:	b8 d2 2f 00 00       	mov    eax,0x2fd2
   1e830:	89 cb                	mov    ebx,ecx
   1e832:	e8 59 be 04 00       	call   play_wav
   1e837:	b8 8d 02 00 00       	mov    eax,0x28d
   1e83c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4361, src obj: 1, src ofs: 0x1e83d, dst obj: 3, dst ofs: 0x295c0
   1e841:	e8 5a b9 00 00       	call   GetDlgFileString
   1e846:	89 c6                	mov    esi,eax
   1e848:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_63:
   1e849:	8a 06                	mov    al,BYTE PTR [esi]
   1e84b:	88 07                	mov    BYTE PTR [edi],al
   1e84d:	3c 00                	cmp    al,0x0
   1e84f:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_64
   1e851:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e854:	83 c6 02             	add    esi,0x2
   1e857:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e85a:	83 c7 02             	add    edi,0x2
   1e85d:	3c 00                	cmp    al,0x0
   1e85f:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_63
talk_to_PRINCIPAL_HERRILL_branch_64:
   1e861:	5f                   	pop    edi
   1e862:	e9 53 fd ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_65:
   1e867:	b8 8e 02 00 00       	mov    eax,0x28e
   1e86c:	e8 2f b9 00 00       	call   GetDlgFileString
   1e871:	89 c2                	mov    edx,eax
   1e873:	89 e8                	mov    eax,ebp
   1e875:	e8 e0 2b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e87a:	85 c0                	test   eax,eax
   1e87c:	74 17                	je     talk_to_PRINCIPAL_HERRILL_branch_66
   1e87e:	b8 8f 02 00 00       	mov    eax,0x28f
   1e883:	e8 18 b9 00 00       	call   GetDlgFileString
   1e888:	89 c2                	mov    edx,eax
   1e88a:	89 e8                	mov    eax,ebp
   1e88c:	e8 c9 2b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e891:	85 c0                	test   eax,eax
   1e893:	75 4d                	jne    talk_to_PRINCIPAL_HERRILL_branch_69
talk_to_PRINCIPAL_HERRILL_branch_66:
   1e895:	ba 01 00 00 00       	mov    edx,0x1
   1e89a:	89 c8                	mov    eax,ecx
   1e89c:	e8 1f 9c 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   1e8a1:	89 cb                	mov    ebx,ecx
   1e8a3:	ba 0a 4c 00 00       	mov    edx,@obj3:principa_cpp_variable_113                          ; fixup: num: 4360, src obj: 1, src ofs: 0x1e8a4, dst obj: 3, dst ofs: 0x4c0a
   1e8a8:	b8 dd 2f 00 00       	mov    eax,0x2fdd
   1e8ad:	e8 de bd 04 00       	call   play_wav
   1e8b2:	b8 90 02 00 00       	mov    eax,0x290
   1e8b7:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4359, src obj: 1, src ofs: 0x1e8b8, dst obj: 3, dst ofs: 0x295c0
   1e8bc:	e8 df b8 00 00       	call   GetDlgFileString
   1e8c1:	89 c6                	mov    esi,eax
   1e8c3:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_67:
   1e8c4:	8a 06                	mov    al,BYTE PTR [esi]
   1e8c6:	88 07                	mov    BYTE PTR [edi],al
   1e8c8:	3c 00                	cmp    al,0x0
   1e8ca:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_68
   1e8cc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e8cf:	83 c6 02             	add    esi,0x2
   1e8d2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e8d5:	83 c7 02             	add    edi,0x2
   1e8d8:	3c 00                	cmp    al,0x0
   1e8da:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_67
talk_to_PRINCIPAL_HERRILL_branch_68:
   1e8dc:	5f                   	pop    edi
   1e8dd:	e9 d8 fc ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_69:
   1e8e2:	b8 91 02 00 00       	mov    eax,0x291
   1e8e7:	e8 b4 b8 00 00       	call   GetDlgFileString
   1e8ec:	89 c2                	mov    edx,eax
   1e8ee:	89 e8                	mov    eax,ebp
   1e8f0:	e8 65 2b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e8f5:	85 c0                	test   eax,eax
   1e8f7:	75 44                	jne    talk_to_PRINCIPAL_HERRILL_branch_72
   1e8f9:	bb 01 00 00 00       	mov    ebx,0x1
   1e8fe:	ba 12 4c 00 00       	mov    edx,@obj3:principa_cpp_variable_114                          ; fixup: num: 4367, src obj: 1, src ofs: 0x1e8ff, dst obj: 3, dst ofs: 0x4c12
   1e903:	b8 e9 2f 00 00       	mov    eax,0x2fe9
   1e908:	e8 83 bd 04 00       	call   play_wav
   1e90d:	b8 92 02 00 00       	mov    eax,0x292
   1e912:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4366, src obj: 1, src ofs: 0x1e913, dst obj: 3, dst ofs: 0x295c0
   1e917:	e8 84 b8 00 00       	call   GetDlgFileString
   1e91c:	89 c6                	mov    esi,eax
   1e91e:	57                   	push   edi
talk_to_PRINCIPAL_HERRILL_branch_70:
   1e91f:	8a 06                	mov    al,BYTE PTR [esi]
   1e921:	88 07                	mov    BYTE PTR [edi],al
   1e923:	3c 00                	cmp    al,0x0
   1e925:	74 10                	je     talk_to_PRINCIPAL_HERRILL_branch_71
   1e927:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1e92a:	83 c6 02             	add    esi,0x2
   1e92d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1e930:	83 c7 02             	add    edi,0x2
   1e933:	3c 00                	cmp    al,0x0
   1e935:	75 e8                	jne    talk_to_PRINCIPAL_HERRILL_branch_70
talk_to_PRINCIPAL_HERRILL_branch_71:
   1e937:	5f                   	pop    edi
   1e938:	e9 7d fc ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_72:
   1e93d:	b8 93 02 00 00       	mov    eax,0x293
   1e942:	e8 59 b8 00 00       	call   GetDlgFileString
   1e947:	89 c2                	mov    edx,eax
   1e949:	89 e8                	mov    eax,ebp
   1e94b:	e8 0a 2b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1e950:	85 c0                	test   eax,eax
   1e952:	0f 84 62 fc ff ff    	je     talk_to_PRINCIPAL_HERRILL_branch_50
   1e958:	ba 1a 4c 00 00       	mov    edx,@obj3:principa_cpp_variable_115                          ; fixup: num: 4365, src obj: 1, src ofs: 0x1e959, dst obj: 3, dst ofs: 0x4c1a
   1e95d:	b8 99 30 00 00       	mov    eax,0x3099
   1e962:	89 cb                	mov    ebx,ecx
   1e964:	e8 27 bd 04 00       	call   play_wav
   1e969:	e9 4c fc ff ff       	jmp    talk_to_PRINCIPAL_HERRILL_branch_50
talk_to_PRINCIPAL_HERRILL_branch_73:
   1e96e:	ba 22 4c 00 00       	mov    edx,@obj3:principa_cpp_variable_116                          ; fixup: num: 4364, src obj: 1, src ofs: 0x1e96f, dst obj: 3, dst ofs: 0x4c22
   1e973:	b8 f4 2f 00 00       	mov    eax,0x2ff4
   1e978:	31 db                	xor    ebx,ebx
talk_to_PRINCIPAL_HERRILL_branch_74:
   1e97a:	e8 11 bd 04 00       	call   play_wav
talk_to_PRINCIPAL_HERRILL_branch_75:
   1e97f:	31 c0                	xor    eax,eax
talk_to_PRINCIPAL_HERRILL_branch_76:
   1e981:	5d                   	pop    ebp
   1e982:	5f                   	pop    edi
   1e983:	5e                   	pop    esi
   1e984:	5a                   	pop    edx
   1e985:	59                   	pop    ecx
   1e986:	5b                   	pop    ebx
   1e987:	c3                   	ret    
talk_to_PRINCIPAL_HERRILL_branch_77:
   1e988:	89 15 dc 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL,edx                     ; fixup: num: 4363, src obj: 1, src ofs: 0x1e98a, dst obj: 3, dst ofs: 0x22cdc
   1e98e:	a1 dc 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL                               ; fixup: num: 4362, src obj: 1, src ofs: 0x1e98f, dst obj: 3, dst ofs: 0x22cdc
   1e993:	c3                   	ret    
   1e994:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1e99a:	8d 92 00 00 00 00    	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function                                      -
;  'PRINCIPAL_HERRILL_FIRST_CONVERSATION'        -
;-------------------------------------------------
PRINCIPAL_HERRILL_FIRST_CONVERSATION:
   1e9a0:	85 c0                	test   eax,eax
   1e9a2:	74 e4                	je     talk_to_PRINCIPAL_HERRILL_branch_77
   1e9a4:	a1 dc 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL                               ; fixup: num: 4384, src obj: 1, src ofs: 0x1e9a5, dst obj: 3, dst ofs: 0x22cdc
   1e9a9:	c3                   	ret    
PRINCIPAL_HERRILL_FIRST_CONVERSATION_branch_1:
   1e9aa:	89 15 e0 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_1,edx          ; fixup: num: 4383, src obj: 1, src ofs: 0x1e9ac, dst obj: 3, dst ofs: 0x22ce0
   1e9b0:	a1 e0 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_1                    ; fixup: num: 4382, src obj: 1, src ofs: 0x1e9b1, dst obj: 3, dst ofs: 0x22ce0
   1e9b5:	c3                   	ret    
   1e9b6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1e9bc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SHOWED_THE_GAS_CAN_TO_HERRILL'      -
;-------------------------------------------------
SHOWED_THE_GAS_CAN_TO_HERRILL:
   1e9c0:	85 c0                	test   eax,eax
   1e9c2:	74 e6                	je     PRINCIPAL_HERRILL_FIRST_CONVERSATION_branch_1
   1e9c4:	a1 e0 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_1                    ; fixup: num: 4381, src obj: 1, src ofs: 0x1e9c5, dst obj: 3, dst ofs: 0x22ce0
   1e9c9:	c3                   	ret    
SHOWED_THE_GAS_CAN_TO_HERRILL_branch_1:
   1e9ca:	89 15 e4 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_2,edx          ; fixup: num: 4380, src obj: 1, src ofs: 0x1e9cc, dst obj: 3, dst ofs: 0x22ce4
   1e9d0:	a1 e4 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_2                    ; fixup: num: 4379, src obj: 1, src ofs: 0x1e9d1, dst obj: 3, dst ofs: 0x22ce4
   1e9d5:	c3                   	ret    
   1e9d6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1e9dc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'IF_PC_HAD_PREVIOUSLY_PROVEN_TO_HER  -
;  RILL_THAT_BOYLE'                              -
;-------------------------------------------------
IF_PC_HAD_PREVIOUSLY_PROVEN_TO_HERRILL_THAT_BOYLE:
   1e9e0:	85 c0                	test   eax,eax
   1e9e2:	74 e6                	je     SHOWED_THE_GAS_CAN_TO_HERRILL_branch_1
   1e9e4:	a1 e4 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_2                    ; fixup: num: 4378, src obj: 1, src ofs: 0x1e9e5, dst obj: 3, dst ofs: 0x22ce4
   1e9e9:	c3                   	ret    
IF_PC_HAD_PREVIOUSLY_PROVEN_TO_HERRILL_THAT_BOYLE_branch_1:
   1e9ea:	89 15 e8 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_3,edx          ; fixup: num: 4377, src obj: 1, src ofs: 0x1e9ec, dst obj: 3, dst ofs: 0x22ce8
   1e9f0:	a1 e8 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_3                    ; fixup: num: 4376, src obj: 1, src ofs: 0x1e9f1, dst obj: 3, dst ofs: 0x22ce8
   1e9f5:	c3                   	ret    
   1e9f6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1e9fc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'IGNORE_1'                           -
;-------------------------------------------------
IGNORE_1:
   1ea00:	85 c0                	test   eax,eax
   1ea02:	74 e6                	je     IF_PC_HAD_PREVIOUSLY_PROVEN_TO_HERRILL_THAT_BOYLE_branch_1
   1ea04:	a1 e8 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_3                    ; fixup: num: 4375, src obj: 1, src ofs: 0x1ea05, dst obj: 3, dst ofs: 0x22ce8
   1ea09:	c3                   	ret    
IGNORE_1_branch_1:
   1ea0a:	89 15 ec 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_4,edx          ; fixup: num: 4374, src obj: 1, src ofs: 0x1ea0c, dst obj: 3, dst ofs: 0x22cec
   1ea10:	a1 ec 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_4                    ; fixup: num: 4373, src obj: 1, src ofs: 0x1ea11, dst obj: 3, dst ofs: 0x22cec
   1ea15:	c3                   	ret    
   1ea16:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1ea1c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'IGNORE_2'                           -
;-------------------------------------------------
IGNORE_2:
   1ea20:	85 c0                	test   eax,eax
   1ea22:	74 e6                	je     IGNORE_1_branch_1
   1ea24:	a1 ec 2c 02 00       	mov    eax,ds:@obj3:PRINCIPAL_HERRILL_variable_4                    ; fixup: num: 4372, src obj: 1, src ofs: 0x1ea25, dst obj: 3, dst ofs: 0x22cec
   1ea29:	c3                   	ret    
   1ea2a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'PRINCIPAL_HERRILL_initialize'       -
;-------------------------------------------------
PRINCIPAL_HERRILL_initialize:
   1ea30:	53                   	push   ebx
   1ea31:	52                   	push   edx
   1ea32:	ba 01 00 00 00       	mov    edx,0x1
   1ea37:	31 db                	xor    ebx,ebx
   1ea39:	89 15 dc 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL,edx                     ; fixup: num: 4371, src obj: 1, src ofs: 0x1ea3b, dst obj: 3, dst ofs: 0x22cdc
   1ea3f:	89 1d e0 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_1,ebx          ; fixup: num: 4370, src obj: 1, src ofs: 0x1ea41, dst obj: 3, dst ofs: 0x22ce0
   1ea45:	89 1d e4 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_2,ebx          ; fixup: num: 4369, src obj: 1, src ofs: 0x1ea47, dst obj: 3, dst ofs: 0x22ce4
   1ea4b:	89 1d e8 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_3,ebx          ; fixup: num: 4368, src obj: 1, src ofs: 0x1ea4d, dst obj: 3, dst ofs: 0x22ce8
   1ea51:	89 1d ec 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_4,ebx          ; fixup: num: 4266, src obj: 1, src ofs: 0x1ea53, dst obj: 3, dst ofs: 0x22cec
   1ea57:	89 1d f0 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_5,ebx          ; fixup: num: 4265, src obj: 1, src ofs: 0x1ea59, dst obj: 3, dst ofs: 0x22cf0
   1ea5d:	89 1d f4 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_6,ebx          ; fixup: num: 4264, src obj: 1, src ofs: 0x1ea5f, dst obj: 3, dst ofs: 0x22cf4
   1ea63:	89 1d f8 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_7,ebx          ; fixup: num: 4263, src obj: 1, src ofs: 0x1ea65, dst obj: 3, dst ofs: 0x22cf8
   1ea69:	89 1d fc 2c 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_8,ebx          ; fixup: num: 4262, src obj: 1, src ofs: 0x1ea6b, dst obj: 3, dst ofs: 0x22cfc
   1ea6f:	89 1d 00 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_9,ebx          ; fixup: num: 4389, src obj: 1, src ofs: 0x1ea71, dst obj: 3, dst ofs: 0x22d00
   1ea75:	89 1d 04 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_10,ebx         ; fixup: num: 4388, src obj: 1, src ofs: 0x1ea77, dst obj: 3, dst ofs: 0x22d04
   1ea7b:	89 1d 08 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_11,ebx         ; fixup: num: 4387, src obj: 1, src ofs: 0x1ea7d, dst obj: 3, dst ofs: 0x22d08
   1ea81:	89 1d 0c 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_12,ebx         ; fixup: num: 4386, src obj: 1, src ofs: 0x1ea83, dst obj: 3, dst ofs: 0x22d0c
   1ea87:	89 1d 10 2d 02 00    	mov    DWORD PTR ds:@obj3:PRINCIPAL_HERRILL_variable_13,ebx         ; fixup: num: 4385, src obj: 1, src ofs: 0x1ea89, dst obj: 3, dst ofs: 0x22d10
   1ea8d:	5a                   	pop    edx
   1ea8e:	5b                   	pop    ebx
   1ea8f:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 41 (D:\SOURCE\principa.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 41: D:\SOURCE\principa.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
principa_cpp_variable_1:
    47f0:	48 45 52 52 49 4c 4c 5f 49 4e 5f 4c 4f 44 47 45 00 	db     "HERRILL_IN_LODGE",0x00
principa_cpp_variable_2:
    4801:	50 43 5f 54 41 4c 4b 45 44 5f 54 4f 5f 48 45 52 52 49 4c 4c 00 	db     "PC_TALKED_TO_HERRILL",0x00
principa_cpp_variable_3:
    4816:	48 45 52 52 49 4c 4c 5f 4c 4f 47 00 	db     "HERRILL_LOG",0x00
principa_cpp_variable_4:
    4822:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4823:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4824:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_5:
    4825:	48 45 52 52 49 4c 4c 5f 4c 4f 47 00 	db     "HERRILL_LOG",0x00
principa_cpp_variable_6:
    4831:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4832:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4833:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_7:
    4834:	47 52 41 4e 44 5f 4d 55 43 4b 00 	db     "GRAND_MUCK",0x00
principa_cpp_variable_8:
    483f:	47 52 41 4e 44 5f 4d 55 43 4b 00 	db     "GRAND_MUCK",0x00
principa_cpp_variable_9:
    484a:	48 45 52 52 49 4c 4c 5f 4c 4f 47 00 	db     "HERRILL_LOG",0x00
principa_cpp_variable_10:
    4856:	47 52 41 4e 44 5f 4d 55 43 4b 00 	db     "GRAND_MUCK",0x00
principa_cpp_variable_11:
    4861:	50 43 5f 54 41 4c 4b 45 44 5f 54 4f 5f 48 45 52 52 49 4c 4c 00 	db     "PC_TALKED_TO_HERRILL",0x00
principa_cpp_variable_12:
    4876:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
principa_cpp_variable_13:
    4880:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
principa_cpp_variable_14:
    4894:	4e 4f 54 45 00       	db     "NOTE",0x00
principa_cpp_variable_15:
    4899:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
principa_cpp_variable_16:
    48a8:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
principa_cpp_variable_17:
    48b0:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
principa_cpp_variable_18:
    48c2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_19:
    48c3:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
principa_cpp_variable_20:
    48db:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_21:
    48e3:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
principa_cpp_variable_22:
    48f0:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
principa_cpp_variable_23:
    4901:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
principa_cpp_variable_24:
    4908:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
principa_cpp_variable_25:
    4910:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
principa_cpp_variable_26:
    4922:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
principa_cpp_variable_27:
    492f:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
principa_cpp_variable_28:
    4940:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_29:
    4948:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_30:
    4950:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_31:
    4958:	47 41 53 43 41 4e 00 	db     "GASCAN",0x00
principa_cpp_variable_32:
    495f:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
principa_cpp_variable_33:
    4967:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
principa_cpp_variable_34:
    4979:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_35:
    4981:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4982:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4983:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_36:
    4984:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_37:
    498c:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_38:
    4994:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_39:
    499c:	4e 4f 54 45 00       	db     "NOTE",0x00
principa_cpp_variable_40:
    49a1:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
principa_cpp_variable_41:
    49b0:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
principa_cpp_variable_42:
    49ba:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
principa_cpp_variable_43:
    49ce:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_44:
    49d6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    49d7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    49d8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_45:
    49d9:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_46:
    49e1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_47:
    49e9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    49ea:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    49eb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_48:
    49ec:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_49:
    49f4:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_50:
    49fc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    49fd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    49fe:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_51:
    49ff:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_52:
    4a07:	48 41 56 45 5f 4c 4f 44 47 45 5f 41 50 50 00 	db     "HAVE_LODGE_APP",0x00
principa_cpp_variable_53:
    4a16:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4a17:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4a18:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_54:
    4a19:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_55:
    4a21:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_56:
    4a29:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_57:
    4a31:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_58:
    4a39:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4a3a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4a3b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_59:
    4a3c:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_60:
    4a44:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_61:
    4a4c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4a4d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4a4e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_62:
    4a4f:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_63:
    4a57:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_64:
    4a5f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4a60:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4a61:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_65:
    4a62:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_66:
    4a6a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4a6b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4a6c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_67:
    4a6d:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_68:
    4a75:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_69:
    4a7d:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
principa_cpp_variable_70:
    4a92:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_71:
    4a9a:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_72:
    4aa2:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
principa_cpp_variable_73:
    4ab3:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_74:
    4abb:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_75:
    4ac3:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
principa_cpp_variable_76:
    4ad6:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_77:
    4ade:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_78:
    4ae6:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
principa_cpp_variable_79:
    4af5:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_80:
    4afd:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
principa_cpp_variable_81:
    4b0f:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_82:
    4b17:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_83:
    4b1f:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_84:
    4b27:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
principa_cpp_variable_85:
    4b38:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_86:
    4b40:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4b41:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4b42:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_87:
    4b43:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
principa_cpp_variable_88:
    4b58:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_89:
    4b60:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_90:
    4b68:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_91:
    4b70:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
principa_cpp_variable_92:
    4b7d:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_93:
    4b85:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_94:
    4b8d:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_95:
    4b95:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_96:
    4b9d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_97:
    4b9e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4b9f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4ba0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_98:
    4ba1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_99:
    4ba9:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_100:
    4bb1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_101:
    4bb9:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_102:
    4bc1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_103:
    4bc9:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_104:
    4bd1:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_105:
    4bd9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4bda:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4bdb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_106:
    4bdc:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_107:
    4be4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4be5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4be6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_108:
    4be7:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_109:
    4bef:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_110:
    4bf7:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_111:
    4bff:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4c00:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4c01:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
principa_cpp_variable_112:
    4c02:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_113:
    4c0a:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_114:
    4c12:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_115:
    4c1a:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
principa_cpp_variable_116:
    4c22:	48 45 52 52 49 4c 4c 00 	db     "HERRILL",0x00
    4c2a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 41 (D:\SOURCE\principa.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 41: D:\SOURCE\principa.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
PRINCIPAL_HERRILL:                                                                                  ; access size: DWORD
   22cdc:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_1:                                                                       ; access size: DWORD
   22ce0:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_2:                                                                       ; access size: DWORD
   22ce4:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_3:                                                                       ; access size: DWORD
   22ce8:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_4:                                                                       ; access size: DWORD
   22cec:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_5:                                                                       ; access size: DWORD
   22cf0:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_6:                                                                       ; access size: DWORD
   22cf4:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_7:                                                                       ; access size: DWORD
   22cf8:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_8:                                                                       ; access size: DWORD
   22cfc:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_9:                                                                       ; access size: DWORD
   22d00:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_10:                                                                      ; access size: DWORD
   22d04:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_11:                                                                      ; access size: DWORD
   22d08:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_12:                                                                      ; access size: DWORD
   22d0c:	00 00 00 00          	dd     0x00000000
PRINCIPAL_HERRILL_variable_13:                                                                      ; access size: DWORD
   22d10:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 41 (D:\SOURCE\principa.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------