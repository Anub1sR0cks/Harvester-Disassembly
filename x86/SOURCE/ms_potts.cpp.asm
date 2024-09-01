;-------------------------------------------------------------------------------
;                                                                              -
;  Module 44: D:\SOURCE\ms_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MRS_POTTSDAM'               -
;-------------------------------------------------
talk_to_MRS_POTTSDAM:
   1ee70:	53                   	push   ebx
   1ee71:	51                   	push   ecx
   1ee72:	52                   	push   edx
   1ee73:	56                   	push   esi
   1ee74:	57                   	push   edi
   1ee75:	55                   	push   ebp
   1ee76:	be 78 4d 00 00       	mov    esi,@obj3:ms_potts_cpp_variable_1                            ; fixup: num: 4243, src obj: 1, src ofs: 0x1ee77, dst obj: 3, dst ofs: 0x4d78
   1ee7b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4242, src obj: 1, src ofs: 0x1ee7c, dst obj: 3, dst ofs: 0x295c0
   1ee80:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_1:
   1ee81:	8a 06                	mov    al,BYTE PTR [esi]
   1ee83:	88 07                	mov    BYTE PTR [edi],al
   1ee85:	3c 00                	cmp    al,0x0
   1ee87:	74 10                	je     talk_to_MRS_POTTSDAM_branch_2
   1ee89:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ee8c:	83 c6 02             	add    esi,0x2
   1ee8f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ee92:	83 c7 02             	add    edi,0x2
   1ee95:	3c 00                	cmp    al,0x0
   1ee97:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_1
talk_to_MRS_POTTSDAM_branch_2:
   1ee99:	5f                   	pop    edi
   1ee9a:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4241, src obj: 1, src ofs: 0x1ee9c, dst obj: 3, dst ofs: 0x294bc
   1eea0:	85 d2                	test   edx,edx
   1eea2:	0f 84 56 02 00 00    	je     talk_to_MRS_POTTSDAM_branch_16
   1eea8:	89 d0                	mov    eax,edx
   1eeaa:	ba 79 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_2                            ; fixup: num: 4240, src obj: 1, src ofs: 0x1eeab, dst obj: 3, dst ofs: 0x4d79
   1eeaf:	e8 7c 75 05 00       	call   strcmp_
   1eeb4:	85 c0                	test   eax,eax
   1eeb6:	75 46                	jne    talk_to_MRS_POTTSDAM_branch_3
   1eeb8:	ba 01 00 00 00       	mov    edx,0x1
   1eebd:	bb 01 00 00 00       	mov    ebx,0x1
   1eec2:	e8 a9 94 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1eec7:	ba 91 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_3                            ; fixup: num: 4239, src obj: 1, src ofs: 0x1eec8, dst obj: 3, dst ofs: 0x4d91
   1eecc:	b8 3c 29 00 00       	mov    eax,0x293c
   1eed1:	e8 ba b7 04 00       	call   play_wav
   1eed6:	bb 01 00 00 00       	mov    ebx,0x1
   1eedb:	ba 9b 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_4                            ; fixup: num: 4238, src obj: 1, src ofs: 0x1eedc, dst obj: 3, dst ofs: 0x4d9b
   1eee0:	b8 40 29 00 00       	mov    eax,0x2940
   1eee5:	e8 a6 b7 04 00       	call   play_wav
   1eeea:	bb 01 00 00 00       	mov    ebx,0x1
   1eeef:	ba 9e 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_5                            ; fixup: num: 4237, src obj: 1, src ofs: 0x1eef0, dst obj: 3, dst ofs: 0x4d9e
   1eef4:	b8 45 29 00 00       	mov    eax,0x2945
   1eef9:	e9 f2 01 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_15
talk_to_MRS_POTTSDAM_branch_3:
   1eefe:	ba a8 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_6                            ; fixup: num: 4236, src obj: 1, src ofs: 0x1eeff, dst obj: 3, dst ofs: 0x4da8
   1ef03:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4235, src obj: 1, src ofs: 0x1ef04, dst obj: 3, dst ofs: 0x294bc
   1ef08:	e8 23 75 05 00       	call   strcmp_
   1ef0d:	85 c0                	test   eax,eax
   1ef0f:	74 47                	je     talk_to_MRS_POTTSDAM_branch_5
   1ef11:	ba b5 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_7                            ; fixup: num: 4327, src obj: 1, src ofs: 0x1ef12, dst obj: 3, dst ofs: 0x4db5
   1ef16:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4326, src obj: 1, src ofs: 0x1ef17, dst obj: 3, dst ofs: 0x294bc
   1ef1b:	e8 10 75 05 00       	call   strcmp_
   1ef20:	85 c0                	test   eax,eax
   1ef22:	74 34                	je     talk_to_MRS_POTTSDAM_branch_5
   1ef24:	ba c6 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_8                            ; fixup: num: 4257, src obj: 1, src ofs: 0x1ef25, dst obj: 3, dst ofs: 0x4dc6
   1ef29:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4256, src obj: 1, src ofs: 0x1ef2a, dst obj: 3, dst ofs: 0x294bc
   1ef2e:	e8 fd 74 05 00       	call   strcmp_
   1ef33:	85 c0                	test   eax,eax
   1ef35:	74 13                	je     talk_to_MRS_POTTSDAM_branch_4
   1ef37:	ba cd 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_9                            ; fixup: num: 4255, src obj: 1, src ofs: 0x1ef38, dst obj: 3, dst ofs: 0x4dcd
   1ef3c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4254, src obj: 1, src ofs: 0x1ef3d, dst obj: 3, dst ofs: 0x294bc
   1ef41:	e8 ea 74 05 00       	call   strcmp_
   1ef46:	85 c0                	test   eax,eax
   1ef48:	75 67                	jne    talk_to_MRS_POTTSDAM_branch_9
talk_to_MRS_POTTSDAM_branch_4:
   1ef4a:	b8 d5 4d 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_10                           ; fixup: num: 4253, src obj: 1, src ofs: 0x1ef4b, dst obj: 3, dst ofs: 0x4dd5
   1ef4f:	e8 3c d8 04 00       	call   check_script_flag
   1ef54:	84 c0                	test   al,al
   1ef56:	74 59                	je     talk_to_MRS_POTTSDAM_branch_9
talk_to_MRS_POTTSDAM_branch_5:
   1ef58:	ba e7 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_11                           ; fixup: num: 4252, src obj: 1, src ofs: 0x1ef59, dst obj: 3, dst ofs: 0x4de7
   1ef5d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4251, src obj: 1, src ofs: 0x1ef5e, dst obj: 3, dst ofs: 0x294bc
   1ef62:	e8 c9 74 05 00       	call   strcmp_
   1ef67:	85 c0                	test   eax,eax
   1ef69:	74 13                	je     talk_to_MRS_POTTSDAM_branch_6
   1ef6b:	ba f4 4d 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_12                           ; fixup: num: 4250, src obj: 1, src ofs: 0x1ef6c, dst obj: 3, dst ofs: 0x4df4
   1ef70:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4249, src obj: 1, src ofs: 0x1ef71, dst obj: 3, dst ofs: 0x294bc
   1ef75:	e8 b6 74 05 00       	call   strcmp_
   1ef7a:	85 c0                	test   eax,eax
   1ef7c:	75 0e                	jne    talk_to_MRS_POTTSDAM_branch_7
talk_to_MRS_POTTSDAM_branch_6:
   1ef7e:	ba 01 00 00 00       	mov    edx,0x1
   1ef83:	31 c0                	xor    eax,eax
   1ef85:	e8 d6 93 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1ef8a:	eb 0c                	jmp    talk_to_MRS_POTTSDAM_branch_8
talk_to_MRS_POTTSDAM_branch_7:
   1ef8c:	ba 01 00 00 00       	mov    edx,0x1
   1ef91:	31 c0                	xor    eax,eax
   1ef93:	e8 b8 93 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
talk_to_MRS_POTTSDAM_branch_8:
   1ef98:	bb 03 00 00 00       	mov    ebx,0x3
   1ef9d:	ba 05 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_13                           ; fixup: num: 4248, src obj: 1, src ofs: 0x1ef9e, dst obj: 3, dst ofs: 0x4e05
   1efa2:	b8 4d 29 00 00       	mov    eax,0x294d
   1efa7:	e8 e4 b6 04 00       	call   play_wav
   1efac:	e9 c8 0c 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_80
talk_to_MRS_POTTSDAM_branch_9:
   1efb1:	ba 0f 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_14                           ; fixup: num: 4247, src obj: 1, src ofs: 0x1efb2, dst obj: 3, dst ofs: 0x4e0f
   1efb6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4246, src obj: 1, src ofs: 0x1efb7, dst obj: 3, dst ofs: 0x294bc
   1efbb:	e8 70 74 05 00       	call   strcmp_
   1efc0:	85 c0                	test   eax,eax
   1efc2:	74 39                	je     talk_to_MRS_POTTSDAM_branch_10
   1efc4:	ba 14 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_15                           ; fixup: num: 4245, src obj: 1, src ofs: 0x1efc5, dst obj: 3, dst ofs: 0x4e14
   1efc9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4244, src obj: 1, src ofs: 0x1efca, dst obj: 3, dst ofs: 0x294bc
   1efce:	e8 5d 74 05 00       	call   strcmp_
   1efd3:	85 c0                	test   eax,eax
   1efd5:	74 26                	je     talk_to_MRS_POTTSDAM_branch_10
   1efd7:	ba 23 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_16                           ; fixup: num: 4261, src obj: 1, src ofs: 0x1efd8, dst obj: 3, dst ofs: 0x4e23
   1efdc:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4260, src obj: 1, src ofs: 0x1efdd, dst obj: 3, dst ofs: 0x294bc
   1efe1:	e8 4a 74 05 00       	call   strcmp_
   1efe6:	85 c0                	test   eax,eax
   1efe8:	74 13                	je     talk_to_MRS_POTTSDAM_branch_10
   1efea:	ba 2d 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_17                           ; fixup: num: 4259, src obj: 1, src ofs: 0x1efeb, dst obj: 3, dst ofs: 0x4e2d
   1efef:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4258, src obj: 1, src ofs: 0x1eff0, dst obj: 3, dst ofs: 0x294bc
   1eff4:	e8 37 74 05 00       	call   strcmp_
   1eff9:	85 c0                	test   eax,eax
   1effb:	75 6d                	jne    talk_to_MRS_POTTSDAM_branch_11
talk_to_MRS_POTTSDAM_branch_10:
   1effd:	ba 01 00 00 00       	mov    edx,0x1
   1f002:	31 c0                	xor    eax,eax
   1f004:	e8 27 93 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1f009:	31 db                	xor    ebx,ebx
   1f00b:	ba 41 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_18                           ; fixup: num: 4586, src obj: 1, src ofs: 0x1f00c, dst obj: 3, dst ofs: 0x4e41
   1f010:	b8 54 29 00 00       	mov    eax,0x2954
   1f015:	e8 76 b6 04 00       	call   play_wav
   1f01a:	ba 4b 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_19                           ; fixup: num: 4585, src obj: 1, src ofs: 0x1f01b, dst obj: 3, dst ofs: 0x4e4b
   1f01f:	b8 59 29 00 00       	mov    eax,0x2959
   1f024:	31 db                	xor    ebx,ebx
   1f026:	e8 65 b6 04 00       	call   play_wav
   1f02b:	ba 4e 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_20                           ; fixup: num: 4584, src obj: 1, src ofs: 0x1f02c, dst obj: 3, dst ofs: 0x4e4e
   1f030:	b8 5e 29 00 00       	mov    eax,0x295e
   1f035:	31 db                	xor    ebx,ebx
   1f037:	e8 54 b6 04 00       	call   play_wav
   1f03c:	ba 58 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_21                           ; fixup: num: 4583, src obj: 1, src ofs: 0x1f03d, dst obj: 3, dst ofs: 0x4e58
   1f041:	b8 62 29 00 00       	mov    eax,0x2962
   1f046:	31 db                	xor    ebx,ebx
   1f048:	e8 43 b6 04 00       	call   play_wav
   1f04d:	bb 01 00 00 00       	mov    ebx,0x1
   1f052:	ba 5b 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_22                           ; fixup: num: 4582, src obj: 1, src ofs: 0x1f053, dst obj: 3, dst ofs: 0x4e5b
   1f057:	b8 66 29 00 00       	mov    eax,0x2966
   1f05c:	e8 2f b6 04 00       	call   play_wav
   1f061:	31 c0                	xor    eax,eax
   1f063:	5d                   	pop    ebp
   1f064:	5f                   	pop    edi
   1f065:	5e                   	pop    esi
   1f066:	5a                   	pop    edx
   1f067:	59                   	pop    ecx
   1f068:	5b                   	pop    ebx
   1f069:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_11:
   1f06a:	ba 65 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_23                           ; fixup: num: 4581, src obj: 1, src ofs: 0x1f06b, dst obj: 3, dst ofs: 0x4e65
   1f06f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4580, src obj: 1, src ofs: 0x1f070, dst obj: 3, dst ofs: 0x294bc
   1f074:	e8 b7 73 05 00       	call   strcmp_
   1f079:	85 c0                	test   eax,eax
   1f07b:	74 13                	je     talk_to_MRS_POTTSDAM_branch_12
   1f07d:	ba 6d 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_24                           ; fixup: num: 4596, src obj: 1, src ofs: 0x1f07e, dst obj: 3, dst ofs: 0x4e6d
   1f082:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4595, src obj: 1, src ofs: 0x1f083, dst obj: 3, dst ofs: 0x294bc
   1f087:	e8 a4 73 05 00       	call   strcmp_
   1f08c:	85 c0                	test   eax,eax
   1f08e:	75 3d                	jne    talk_to_MRS_POTTSDAM_branch_13
talk_to_MRS_POTTSDAM_branch_12:
   1f090:	ba 01 00 00 00       	mov    edx,0x1
   1f095:	31 c0                	xor    eax,eax
   1f097:	bb 01 00 00 00       	mov    ebx,0x1
   1f09c:	e8 9f 92 00 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   1f0a1:	ba 7f 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_25                           ; fixup: num: 4594, src obj: 1, src ofs: 0x1f0a2, dst obj: 3, dst ofs: 0x4e7f
   1f0a6:	b8 6e 29 00 00       	mov    eax,0x296e
   1f0ab:	e8 e0 b5 04 00       	call   play_wav
   1f0b0:	ba 89 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_26                           ; fixup: num: 4593, src obj: 1, src ofs: 0x1f0b1, dst obj: 3, dst ofs: 0x4e89
   1f0b5:	b8 73 29 00 00       	mov    eax,0x2973
   1f0ba:	31 db                	xor    ebx,ebx
   1f0bc:	e8 cf b5 04 00       	call   play_wav
   1f0c1:	ba 8c 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_27                           ; fixup: num: 4592, src obj: 1, src ofs: 0x1f0c2, dst obj: 3, dst ofs: 0x4e8c
   1f0c6:	b8 77 29 00 00       	mov    eax,0x2977
   1f0cb:	eb 21                	jmp    talk_to_MRS_POTTSDAM_branch_14
talk_to_MRS_POTTSDAM_branch_13:
   1f0cd:	ba 96 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_28                           ; fixup: num: 4591, src obj: 1, src ofs: 0x1f0ce, dst obj: 3, dst ofs: 0x4e96
   1f0d2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4590, src obj: 1, src ofs: 0x1f0d3, dst obj: 3, dst ofs: 0x294bc
   1f0d7:	e8 54 73 05 00       	call   strcmp_
   1f0dc:	85 c0                	test   eax,eax
   1f0de:	0f 84 d1 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_17
   1f0e4:	ba 9e 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_29                           ; fixup: num: 4589, src obj: 1, src ofs: 0x1f0e5, dst obj: 3, dst ofs: 0x4e9e
   1f0e9:	b8 36 29 00 00       	mov    eax,0x2936
talk_to_MRS_POTTSDAM_branch_14:
   1f0ee:	31 db                	xor    ebx,ebx
talk_to_MRS_POTTSDAM_branch_15:
   1f0f0:	e8 9b b5 04 00       	call   play_wav
   1f0f5:	31 c0                	xor    eax,eax
   1f0f7:	5d                   	pop    ebp
   1f0f8:	5f                   	pop    edi
   1f0f9:	5e                   	pop    esi
   1f0fa:	5a                   	pop    edx
   1f0fb:	59                   	pop    ecx
   1f0fc:	5b                   	pop    ebx
   1f0fd:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_16:
   1f0fe:	b8 a8 4e 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_30                           ; fixup: num: 4588, src obj: 1, src ofs: 0x1f0ff, dst obj: 3, dst ofs: 0x4ea8
   1f103:	e8 88 d6 04 00       	call   check_script_flag
   1f108:	84 c0                	test   al,al
   1f10a:	0f 84 93 02 00 00    	je     talk_to_MRS_POTTSDAM_branch_29
   1f110:	b8 01 00 00 00       	mov    eax,0x1
   1f115:	e8 a6 91 00 00       	call   MIDGAME_ONE_PLAYED
   1f11a:	85 c0                	test   eax,eax
   1f11c:	0f 84 19 02 00 00    	je     talk_to_MRS_POTTSDAM_branch_26
   1f122:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 4587, src obj: 1, src ofs: 0x1f123, dst obj: 3, dst ofs: 0x25ac4
   1f127:	ba ba 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_31                           ; fixup: num: 4605, src obj: 1, src ofs: 0x1f128, dst obj: 3, dst ofs: 0x4eba
   1f12c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   1f12f:	e8 26 23 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f134:	85 c0                	test   eax,eax
   1f136:	0f 85 97 01 00 00    	jne    talk_to_MRS_POTTSDAM_branch_24
   1f13c:	b8 c3 4e 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_32                           ; fixup: num: 4604, src obj: 1, src ofs: 0x1f13d, dst obj: 3, dst ofs: 0x4ec3
   1f141:	e8 4a d6 04 00       	call   check_script_flag
   1f146:	84 c0                	test   al,al
   1f148:	0f 84 e0 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_19
   1f14e:	83 3d 40 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_7,0x0               ; fixup: num: 4603, src obj: 1, src ofs: 0x1f150, dst obj: 3, dst ofs: 0x22d40
   1f155:	0f 85 d3 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_19
   1f15b:	be 01 00 00 00       	mov    esi,0x1
   1f160:	bb 02 00 00 00       	mov    ebx,0x2
   1f165:	ba d9 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_33                           ; fixup: num: 4602, src obj: 1, src ofs: 0x1f166, dst obj: 3, dst ofs: 0x4ed9
   1f16a:	b8 9e 28 00 00       	mov    eax,0x289e
   1f16f:	89 35 40 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_7,esi               ; fixup: num: 4601, src obj: 1, src ofs: 0x1f171, dst obj: 3, dst ofs: 0x22d40
   1f175:	e8 16 b5 04 00       	call   play_wav
   1f17a:	bb 02 00 00 00       	mov    ebx,0x2
   1f17f:	ba e3 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_34                           ; fixup: num: 4600, src obj: 1, src ofs: 0x1f180, dst obj: 3, dst ofs: 0x4ee3
   1f184:	b8 a8 28 00 00       	mov    eax,0x28a8
   1f189:	e8 02 b5 04 00       	call   play_wav
   1f18e:	bb 02 00 00 00       	mov    ebx,0x2
   1f193:	ba ed 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_35                           ; fixup: num: 4599, src obj: 1, src ofs: 0x1f194, dst obj: 3, dst ofs: 0x4eed
   1f198:	b8 ad 28 00 00       	mov    eax,0x28ad
   1f19d:	e8 ee b4 04 00       	call   play_wav
   1f1a2:	b8 2d 02 00 00       	mov    eax,0x22d
   1f1a7:	e8 f4 af 00 00       	call   GetDlgFileString
   1f1ac:	e8 5f bd 04 00       	call   get_response
   1f1b1:	39 f0                	cmp    eax,esi
   1f1b3:	75 56                	jne    talk_to_MRS_POTTSDAM_branch_18
talk_to_MRS_POTTSDAM_branch_17:
   1f1b5:	bb 01 00 00 00       	mov    ebx,0x1
   1f1ba:	ba f7 4e 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_36                           ; fixup: num: 4598, src obj: 1, src ofs: 0x1f1bb, dst obj: 3, dst ofs: 0x4ef7
   1f1bf:	b8 b7 28 00 00       	mov    eax,0x28b7
   1f1c4:	e8 c7 b4 04 00       	call   play_wav
   1f1c9:	ba 01 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_37                           ; fixup: num: 4597, src obj: 1, src ofs: 0x1f1ca, dst obj: 3, dst ofs: 0x4f01
   1f1ce:	b8 bd 28 00 00       	mov    eax,0x28bd
   1f1d3:	31 db                	xor    ebx,ebx
   1f1d5:	e8 b6 b4 04 00       	call   play_wav
   1f1da:	bb 01 00 00 00       	mov    ebx,0x1
   1f1df:	ba 04 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_38                           ; fixup: num: 4613, src obj: 1, src ofs: 0x1f1e0, dst obj: 3, dst ofs: 0x4f04
   1f1e4:	b8 c1 28 00 00       	mov    eax,0x28c1
   1f1e9:	e8 a2 b4 04 00       	call   play_wav
   1f1ee:	e8 fd 42 04 00       	call   NoLighting
   1f1f3:	e8 28 97 00 00       	call   MRS_POTTSDAM_RAISING_PHONE_RECEIVER_TO_EAR
   1f1f8:	b8 0e 4f 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_39                           ; fixup: num: 4612, src obj: 1, src ofs: 0x1f1f9, dst obj: 3, dst ofs: 0x4f0e
   1f1fd:	e8 7e d9 04 00       	call   ExecuteCommand
   1f202:	31 c0                	xor    eax,eax
   1f204:	5d                   	pop    ebp
   1f205:	5f                   	pop    edi
   1f206:	5e                   	pop    esi
   1f207:	5a                   	pop    edx
   1f208:	59                   	pop    ecx
   1f209:	5b                   	pop    ebx
   1f20a:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_18:
   1f20b:	83 f8 02             	cmp    eax,0x2
   1f20e:	0f 85 65 0a 00 00    	jne    talk_to_MRS_POTTSDAM_branch_80
   1f214:	ba 1b 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_40                           ; fixup: num: 4611, src obj: 1, src ofs: 0x1f215, dst obj: 3, dst ofs: 0x4f1b
   1f219:	b8 d6 28 00 00       	mov    eax,0x28d6
   1f21e:	89 f3                	mov    ebx,esi
   1f220:	e8 6b b4 04 00       	call   play_wav
   1f225:	31 c0                	xor    eax,eax
   1f227:	5d                   	pop    ebp
   1f228:	5f                   	pop    edi
   1f229:	5e                   	pop    esi
   1f22a:	5a                   	pop    edx
   1f22b:	59                   	pop    ecx
   1f22c:	5b                   	pop    ebx
   1f22d:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_19:
   1f22e:	b8 25 4f 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_41                           ; fixup: num: 4610, src obj: 1, src ofs: 0x1f22f, dst obj: 3, dst ofs: 0x4f25
   1f233:	e8 58 d5 04 00       	call   check_script_flag
   1f238:	84 c0                	test   al,al
   1f23a:	0f 84 76 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_23
   1f240:	83 3d 44 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_8,0x0               ; fixup: num: 4609, src obj: 1, src ofs: 0x1f242, dst obj: 3, dst ofs: 0x22d44
   1f247:	75 6d                	jne    talk_to_MRS_POTTSDAM_branch_23
   1f249:	b9 01 00 00 00       	mov    ecx,0x1
   1f24e:	ba 3e 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_42                           ; fixup: num: 4608, src obj: 1, src ofs: 0x1f24f, dst obj: 3, dst ofs: 0x4f3e
   1f253:	b8 6b 28 00 00       	mov    eax,0x286b
   1f258:	89 cb                	mov    ebx,ecx
   1f25a:	89 0d 44 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_8,ecx               ; fixup: num: 4607, src obj: 1, src ofs: 0x1f25c, dst obj: 3, dst ofs: 0x22d44
   1f260:	e8 2b b4 04 00       	call   play_wav
   1f265:	b8 2e 02 00 00       	mov    eax,0x22e
   1f26a:	e8 31 af 00 00       	call   GetDlgFileString
   1f26f:	e8 9c bc 04 00       	call   get_response
   1f274:	39 c8                	cmp    eax,ecx
   1f276:	75 11                	jne    talk_to_MRS_POTTSDAM_branch_20
   1f278:	bb 03 00 00 00       	mov    ebx,0x3
   1f27d:	ba 48 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_43                           ; fixup: num: 4606, src obj: 1, src ofs: 0x1f27e, dst obj: 3, dst ofs: 0x4f48
   1f282:	b8 76 28 00 00       	mov    eax,0x2876
   1f287:	eb 14                	jmp    talk_to_MRS_POTTSDAM_branch_21
talk_to_MRS_POTTSDAM_branch_20:
   1f289:	83 f8 02             	cmp    eax,0x2
   1f28c:	75 14                	jne    talk_to_MRS_POTTSDAM_branch_22
   1f28e:	bb 03 00 00 00       	mov    ebx,0x3
   1f293:	ba 52 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_44                           ; fixup: num: 4619, src obj: 1, src ofs: 0x1f294, dst obj: 3, dst ofs: 0x4f52
   1f298:	b8 7a 28 00 00       	mov    eax,0x287a
talk_to_MRS_POTTSDAM_branch_21:
   1f29d:	e8 ee b3 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_22:
   1f2a2:	bb 03 00 00 00       	mov    ebx,0x3
   1f2a7:	ba 5c 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_45                           ; fixup: num: 4618, src obj: 1, src ofs: 0x1f2a8, dst obj: 3, dst ofs: 0x4f5c
   1f2ac:	b8 81 28 00 00       	mov    eax,0x2881
   1f2b1:	e9 df 00 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_28
talk_to_MRS_POTTSDAM_branch_23:
   1f2b6:	bb 01 00 00 00       	mov    ebx,0x1
   1f2bb:	ba 66 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_46                           ; fixup: num: 4617, src obj: 1, src ofs: 0x1f2bc, dst obj: 3, dst ofs: 0x4f66
   1f2c0:	b8 35 28 00 00       	mov    eax,0x2835
   1f2c5:	e8 c6 b3 04 00       	call   play_wav
   1f2ca:	31 c0                	xor    eax,eax
   1f2cc:	5d                   	pop    ebp
   1f2cd:	5f                   	pop    edi
   1f2ce:	5e                   	pop    esi
   1f2cf:	5a                   	pop    edx
   1f2d0:	59                   	pop    ecx
   1f2d1:	5b                   	pop    ebx
   1f2d2:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_24:
   1f2d3:	bb 01 00 00 00       	mov    ebx,0x1
   1f2d8:	ba 70 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_47                           ; fixup: num: 4616, src obj: 1, src ofs: 0x1f2d9, dst obj: 3, dst ofs: 0x4f70
   1f2dd:	b8 54 28 00 00       	mov    eax,0x2854
   1f2e2:	e8 a9 b3 04 00       	call   play_wav
   1f2e7:	b8 2f 02 00 00       	mov    eax,0x22f
   1f2ec:	e8 af ae 00 00       	call   GetDlgFileString
   1f2f1:	e8 1a bc 04 00       	call   get_response
   1f2f6:	83 f8 01             	cmp    eax,0x1
   1f2f9:	75 1d                	jne    talk_to_MRS_POTTSDAM_branch_25
   1f2fb:	bb 03 00 00 00       	mov    ebx,0x3
   1f300:	ba 7a 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_48                           ; fixup: num: 4615, src obj: 1, src ofs: 0x1f301, dst obj: 3, dst ofs: 0x4f7a
   1f305:	b8 5e 28 00 00       	mov    eax,0x285e
   1f30a:	e8 81 b3 04 00       	call   play_wav
   1f30f:	31 c0                	xor    eax,eax
   1f311:	5d                   	pop    ebp
   1f312:	5f                   	pop    edi
   1f313:	5e                   	pop    esi
   1f314:	5a                   	pop    edx
   1f315:	59                   	pop    ecx
   1f316:	5b                   	pop    ebx
   1f317:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_25:
   1f318:	83 f8 02             	cmp    eax,0x2
   1f31b:	0f 85 58 09 00 00    	jne    talk_to_MRS_POTTSDAM_branch_80
   1f321:	ba 84 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_49                           ; fixup: num: 4614, src obj: 1, src ofs: 0x1f322, dst obj: 3, dst ofs: 0x4f84
   1f326:	b8 64 28 00 00       	mov    eax,0x2864
   1f32b:	31 db                	xor    ebx,ebx
   1f32d:	e8 5e b3 04 00       	call   play_wav
   1f332:	31 c0                	xor    eax,eax
   1f334:	5d                   	pop    ebp
   1f335:	5f                   	pop    edi
   1f336:	5e                   	pop    esi
   1f337:	5a                   	pop    edx
   1f338:	59                   	pop    ecx
   1f339:	5b                   	pop    ebx
   1f33a:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_26:
   1f33b:	bb 03 00 00 00       	mov    ebx,0x3
   1f340:	ba 8e 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_50                           ; fixup: num: 4626, src obj: 1, src ofs: 0x1f341, dst obj: 3, dst ofs: 0x4f8e
   1f345:	b8 3b 28 00 00       	mov    eax,0x283b
   1f34a:	e8 41 b3 04 00       	call   play_wav
   1f34f:	b8 30 02 00 00       	mov    eax,0x230
   1f354:	e8 47 ae 00 00       	call   GetDlgFileString
   1f359:	e8 b2 bb 04 00       	call   get_response
   1f35e:	83 f8 01             	cmp    eax,0x1
   1f361:	75 1a                	jne    talk_to_MRS_POTTSDAM_branch_27
   1f363:	ba 98 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_51                           ; fixup: num: 4625, src obj: 1, src ofs: 0x1f364, dst obj: 3, dst ofs: 0x4f98
   1f368:	b8 46 28 00 00       	mov    eax,0x2846
   1f36d:	31 db                	xor    ebx,ebx
   1f36f:	e8 1c b3 04 00       	call   play_wav
   1f374:	31 c0                	xor    eax,eax
   1f376:	5d                   	pop    ebp
   1f377:	5f                   	pop    edi
   1f378:	5e                   	pop    esi
   1f379:	5a                   	pop    edx
   1f37a:	59                   	pop    ecx
   1f37b:	5b                   	pop    ebx
   1f37c:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_27:
   1f37d:	83 f8 02             	cmp    eax,0x2
   1f380:	0f 85 f3 08 00 00    	jne    talk_to_MRS_POTTSDAM_branch_80
   1f386:	bb 03 00 00 00       	mov    ebx,0x3
   1f38b:	ba a2 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_52                           ; fixup: num: 4624, src obj: 1, src ofs: 0x1f38c, dst obj: 3, dst ofs: 0x4fa2
   1f390:	b8 4b 28 00 00       	mov    eax,0x284b
talk_to_MRS_POTTSDAM_branch_28:
   1f395:	e8 f6 b2 04 00       	call   play_wav
   1f39a:	31 c0                	xor    eax,eax
   1f39c:	5d                   	pop    ebp
   1f39d:	5f                   	pop    edi
   1f39e:	5e                   	pop    esi
   1f39f:	5a                   	pop    edx
   1f3a0:	59                   	pop    ecx
   1f3a1:	5b                   	pop    ebx
   1f3a2:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_29:
   1f3a3:	a1 24 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM                                    ; fixup: num: 4623, src obj: 1, src ofs: 0x1f3a4, dst obj: 3, dst ofs: 0x22d24
   1f3a8:	85 c0                	test   eax,eax
   1f3aa:	0f 84 fd 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_35
   1f3b0:	bd 01 00 00 00       	mov    ebp,0x1
   1f3b5:	b8 26 27 00 00       	mov    eax,0x2726
   1f3ba:	89 15 24 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM,edx                          ; fixup: num: 4622, src obj: 1, src ofs: 0x1f3bc, dst obj: 3, dst ofs: 0x22d24
   1f3c0:	ba ac 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_53                           ; fixup: num: 4621, src obj: 1, src ofs: 0x1f3c1, dst obj: 3, dst ofs: 0x4fac
   1f3c5:	89 eb                	mov    ebx,ebp
   1f3c7:	89 2d 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,ebp               ; fixup: num: 4620, src obj: 1, src ofs: 0x1f3c9, dst obj: 3, dst ofs: 0x22d28
   1f3cd:	e8 be b2 04 00       	call   play_wav
   1f3d2:	b8 31 02 00 00       	mov    eax,0x231
   1f3d7:	e8 c4 ad 00 00       	call   GetDlgFileString
   1f3dc:	e8 2f bb 04 00       	call   get_response
   1f3e1:	39 e8                	cmp    eax,ebp
   1f3e3:	75 61                	jne    talk_to_MRS_POTTSDAM_branch_32
   1f3e5:	bb 02 00 00 00       	mov    ebx,0x2
   1f3ea:	ba b6 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_54                           ; fixup: num: 4632, src obj: 1, src ofs: 0x1f3eb, dst obj: 3, dst ofs: 0x4fb6
   1f3ef:	b8 30 27 00 00       	mov    eax,0x2730
   1f3f4:	e8 97 b2 04 00       	call   play_wav
   1f3f9:	ba c0 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_55                           ; fixup: num: 4631, src obj: 1, src ofs: 0x1f3fa, dst obj: 3, dst ofs: 0x4fc0
   1f3fe:	b8 35 27 00 00       	mov    eax,0x2735
   1f403:	31 db                	xor    ebx,ebx
   1f405:	e8 86 b2 04 00       	call   play_wav
   1f40a:	ba c3 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_56                           ; fixup: num: 4630, src obj: 1, src ofs: 0x1f40b, dst obj: 3, dst ofs: 0x4fc3
   1f40f:	b8 3a 27 00 00       	mov    eax,0x273a
   1f414:	31 db                	xor    ebx,ebx
   1f416:	e8 75 b2 04 00       	call   play_wav
   1f41b:	b8 32 02 00 00       	mov    eax,0x232
   1f420:	e8 7b ad 00 00       	call   GetDlgFileString
   1f425:	89 c6                	mov    esi,eax
   1f427:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_30:
   1f428:	8a 06                	mov    al,BYTE PTR [esi]
   1f42a:	88 07                	mov    BYTE PTR [edi],al
   1f42c:	3c 00                	cmp    al,0x0
   1f42e:	74 10                	je     talk_to_MRS_POTTSDAM_branch_31
   1f430:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f433:	83 c6 02             	add    esi,0x2
   1f436:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f439:	83 c7 02             	add    edi,0x2
   1f43c:	3c 00                	cmp    al,0x0
   1f43e:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_30
talk_to_MRS_POTTSDAM_branch_31:
   1f440:	5f                   	pop    edi
   1f441:	e9 92 01 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_41
talk_to_MRS_POTTSDAM_branch_32:
   1f446:	83 f8 02             	cmp    eax,0x2
   1f449:	0f 85 89 01 00 00    	jne    talk_to_MRS_POTTSDAM_branch_41
   1f44f:	ba cd 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_57                           ; fixup: num: 4629, src obj: 1, src ofs: 0x1f450, dst obj: 3, dst ofs: 0x4fcd
   1f454:	b8 44 27 00 00       	mov    eax,0x2744
   1f459:	31 db                	xor    ebx,ebx
   1f45b:	e8 30 b2 04 00       	call   play_wav
   1f460:	ba d7 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_58                           ; fixup: num: 4628, src obj: 1, src ofs: 0x1f461, dst obj: 3, dst ofs: 0x4fd7
   1f465:	b8 48 27 00 00       	mov    eax,0x2748
   1f46a:	31 db                	xor    ebx,ebx
   1f46c:	e8 1f b2 04 00       	call   play_wav
   1f471:	ba da 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_59                           ; fixup: num: 4627, src obj: 1, src ofs: 0x1f472, dst obj: 3, dst ofs: 0x4fda
   1f476:	b8 4c 27 00 00       	mov    eax,0x274c
   1f47b:	31 db                	xor    ebx,ebx
   1f47d:	e8 0e b2 04 00       	call   play_wav
   1f482:	b8 33 02 00 00       	mov    eax,0x233
   1f487:	e8 14 ad 00 00       	call   GetDlgFileString
   1f48c:	89 c6                	mov    esi,eax
   1f48e:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_33:
   1f48f:	8a 06                	mov    al,BYTE PTR [esi]
   1f491:	88 07                	mov    BYTE PTR [edi],al
   1f493:	3c 00                	cmp    al,0x0
   1f495:	74 10                	je     talk_to_MRS_POTTSDAM_branch_34
   1f497:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f49a:	83 c6 02             	add    esi,0x2
   1f49d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f4a0:	83 c7 02             	add    edi,0x2
   1f4a3:	3c 00                	cmp    al,0x0
   1f4a5:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_33
talk_to_MRS_POTTSDAM_branch_34:
   1f4a7:	5f                   	pop    edi
   1f4a8:	e9 2b 01 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_41
talk_to_MRS_POTTSDAM_branch_35:
   1f4ad:	a1 28 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM_variable_1                         ; fixup: num: 4639, src obj: 1, src ofs: 0x1f4ae, dst obj: 3, dst ofs: 0x22d28
   1f4b2:	85 c0                	test   eax,eax
   1f4b4:	74 77                	je     talk_to_MRS_POTTSDAM_branch_37
   1f4b6:	bb 01 00 00 00       	mov    ebx,0x1
   1f4bb:	b8 00 28 00 00       	mov    eax,0x2800
   1f4c0:	89 15 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,edx               ; fixup: num: 4638, src obj: 1, src ofs: 0x1f4c2, dst obj: 3, dst ofs: 0x22d28
   1f4c6:	ba e4 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_60                           ; fixup: num: 4637, src obj: 1, src ofs: 0x1f4c7, dst obj: 3, dst ofs: 0x4fe4
   1f4cb:	e8 c0 b1 04 00       	call   play_wav
   1f4d0:	b8 34 02 00 00       	mov    eax,0x234
   1f4d5:	e8 c6 ac 00 00       	call   GetDlgFileString
   1f4da:	e8 31 ba 04 00       	call   get_response
   1f4df:	83 f8 01             	cmp    eax,0x1
   1f4e2:	75 2a                	jne    talk_to_MRS_POTTSDAM_branch_36
   1f4e4:	ba ee 4f 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_61                           ; fixup: num: 4636, src obj: 1, src ofs: 0x1f4e5, dst obj: 3, dst ofs: 0x4fee
   1f4e9:	89 c3                	mov    ebx,eax
   1f4eb:	b8 0a 28 00 00       	mov    eax,0x280a
   1f4f0:	e8 9b b1 04 00       	call   play_wav
   1f4f5:	ba 01 00 00 00       	mov    edx,0x1
   1f4fa:	b8 f8 4f 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_62                           ; fixup: num: 4635, src obj: 1, src ofs: 0x1f4fb, dst obj: 3, dst ofs: 0x4ff8
   1f4ff:	e8 dc d2 04 00       	call   set_script_flag
   1f504:	b8 14 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_63                           ; fixup: num: 4634, src obj: 1, src ofs: 0x1f505, dst obj: 3, dst ofs: 0x5014
   1f509:	e9 c5 00 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_40
talk_to_MRS_POTTSDAM_branch_36:
   1f50e:	83 f8 02             	cmp    eax,0x2
   1f511:	0f 85 c1 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_41
   1f517:	ba 23 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_64                           ; fixup: num: 4633, src obj: 1, src ofs: 0x1f518, dst obj: 3, dst ofs: 0x5023
   1f51c:	b8 11 28 00 00       	mov    eax,0x2811
   1f521:	31 db                	xor    ebx,ebx
   1f523:	e8 68 b1 04 00       	call   play_wav
   1f528:	e9 ab 00 00 00       	jmp    talk_to_MRS_POTTSDAM_branch_41
talk_to_MRS_POTTSDAM_branch_37:
   1f52d:	e8 8e 96 00 00       	call   get_day
   1f532:	83 f8 02             	cmp    eax,0x2
   1f535:	7c 60                	jl     talk_to_MRS_POTTSDAM_branch_39
   1f537:	e8 84 96 00 00       	call   get_day
   1f53c:	83 f8 05             	cmp    eax,0x5
   1f53f:	7f 56                	jg     talk_to_MRS_POTTSDAM_branch_39
   1f541:	b9 01 00 00 00       	mov    ecx,0x1
   1f546:	bb 03 00 00 00       	mov    ebx,0x3
   1f54b:	ba 2d 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_65                           ; fixup: num: 4515, src obj: 1, src ofs: 0x1f54c, dst obj: 3, dst ofs: 0x502d
   1f550:	b8 1b 28 00 00       	mov    eax,0x281b
   1f555:	89 0d 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,ecx               ; fixup: num: 4514, src obj: 1, src ofs: 0x1f557, dst obj: 3, dst ofs: 0x22d28
   1f55b:	e8 30 b1 04 00       	call   play_wav
   1f560:	b8 37 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_66                           ; fixup: num: 4513, src obj: 1, src ofs: 0x1f561, dst obj: 3, dst ofs: 0x5037
   1f565:	e8 26 d2 04 00       	call   check_script_flag
   1f56a:	84 c0                	test   al,al
   1f56c:	75 16                	jne    talk_to_MRS_POTTSDAM_branch_38
   1f56e:	bb 03 00 00 00       	mov    ebx,0x3
   1f573:	ba 4c 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_67                           ; fixup: num: 4647, src obj: 1, src ofs: 0x1f574, dst obj: 3, dst ofs: 0x504c
   1f578:	b8 20 28 00 00       	mov    eax,0x2820
   1f57d:	e8 0e b1 04 00       	call   play_wav
   1f582:	eb 54                	jmp    talk_to_MRS_POTTSDAM_branch_41
talk_to_MRS_POTTSDAM_branch_38:
   1f584:	ba 56 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_68                           ; fixup: num: 4646, src obj: 1, src ofs: 0x1f585, dst obj: 3, dst ofs: 0x5056
   1f589:	b8 25 28 00 00       	mov    eax,0x2825
   1f58e:	31 db                	xor    ebx,ebx
   1f590:	e8 fb b0 04 00       	call   play_wav
   1f595:	eb 41                	jmp    talk_to_MRS_POTTSDAM_branch_41
talk_to_MRS_POTTSDAM_branch_39:
   1f597:	b8 60 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_69                           ; fixup: num: 4645, src obj: 1, src ofs: 0x1f598, dst obj: 3, dst ofs: 0x5060
   1f59c:	e8 ef d1 04 00       	call   check_script_flag
   1f5a1:	84 c0                	test   al,al
   1f5a3:	75 33                	jne    talk_to_MRS_POTTSDAM_branch_41
   1f5a5:	bb 01 00 00 00       	mov    ebx,0x1
   1f5aa:	ba 72 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_70                           ; fixup: num: 4644, src obj: 1, src ofs: 0x1f5ab, dst obj: 3, dst ofs: 0x5072
   1f5af:	b8 2d 28 00 00       	mov    eax,0x282d
   1f5b4:	89 1d 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,ebx               ; fixup: num: 4643, src obj: 1, src ofs: 0x1f5b6, dst obj: 3, dst ofs: 0x22d28
   1f5ba:	e8 d1 b0 04 00       	call   play_wav
   1f5bf:	ba 01 00 00 00       	mov    edx,0x1
   1f5c4:	b8 7c 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_71                           ; fixup: num: 4642, src obj: 1, src ofs: 0x1f5c5, dst obj: 3, dst ofs: 0x507c
   1f5c9:	e8 12 d2 04 00       	call   set_script_flag
   1f5ce:	b8 98 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_72                           ; fixup: num: 4641, src obj: 1, src ofs: 0x1f5cf, dst obj: 3, dst ofs: 0x5098
talk_to_MRS_POTTSDAM_branch_40:
   1f5d3:	e8 a8 d5 04 00       	call   ExecuteCommand
talk_to_MRS_POTTSDAM_branch_41:
   1f5d8:	e8 e3 95 00 00       	call   get_day
   1f5dd:	83 f8 05             	cmp    eax,0x5
   1f5e0:	75 25                	jne    talk_to_MRS_POTTSDAM_branch_42
   1f5e2:	83 3d 30 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_3,0x0               ; fixup: num: 4640, src obj: 1, src ofs: 0x1f5e4, dst obj: 3, dst ofs: 0x22d30
   1f5e9:	75 1c                	jne    talk_to_MRS_POTTSDAM_branch_42
   1f5eb:	ba 01 00 00 00       	mov    edx,0x1
   1f5f0:	b8 89 28 00 00       	mov    eax,0x2889
   1f5f5:	89 15 30 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_3,edx               ; fixup: num: 4526, src obj: 1, src ofs: 0x1f5f7, dst obj: 3, dst ofs: 0x22d30
   1f5fb:	89 d3                	mov    ebx,edx
   1f5fd:	ba a7 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_73                           ; fixup: num: 4525, src obj: 1, src ofs: 0x1f5fe, dst obj: 3, dst ofs: 0x50a7
   1f602:	e8 89 b0 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_42:
   1f607:	b8 b1 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_74                           ; fixup: num: 4524, src obj: 1, src ofs: 0x1f608, dst obj: 3, dst ofs: 0x50b1
   1f60c:	e8 7f d1 04 00       	call   check_script_flag
   1f611:	84 c0                	test   al,al
   1f613:	74 28                	je     talk_to_MRS_POTTSDAM_branch_43
   1f615:	83 3d 34 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_4,0x0               ; fixup: num: 4523, src obj: 1, src ofs: 0x1f617, dst obj: 3, dst ofs: 0x22d34
   1f61c:	75 1f                	jne    talk_to_MRS_POTTSDAM_branch_43
   1f61e:	b9 01 00 00 00       	mov    ecx,0x1
   1f623:	bb 03 00 00 00       	mov    ebx,0x3
   1f628:	ba c3 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_75                           ; fixup: num: 4522, src obj: 1, src ofs: 0x1f629, dst obj: 3, dst ofs: 0x50c3
   1f62d:	b8 91 28 00 00       	mov    eax,0x2891
   1f632:	89 0d 34 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_4,ecx               ; fixup: num: 4521, src obj: 1, src ofs: 0x1f634, dst obj: 3, dst ofs: 0x22d34
   1f638:	e8 53 b0 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_43:
   1f63d:	b8 cd 50 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_76                           ; fixup: num: 4520, src obj: 1, src ofs: 0x1f63e, dst obj: 3, dst ofs: 0x50cd
   1f642:	e8 49 d1 04 00       	call   check_script_flag
   1f647:	84 c0                	test   al,al
   1f649:	0f 84 c4 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_45
   1f64f:	83 3d 38 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_5,0x0               ; fixup: num: 4519, src obj: 1, src ofs: 0x1f651, dst obj: 3, dst ofs: 0x22d38
   1f656:	0f 85 b7 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_45
   1f65c:	bf 01 00 00 00       	mov    edi,0x1
   1f661:	ba dc 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_77                           ; fixup: num: 4518, src obj: 1, src ofs: 0x1f662, dst obj: 3, dst ofs: 0x50dc
   1f666:	b8 dc 28 00 00       	mov    eax,0x28dc
   1f66b:	31 db                	xor    ebx,ebx
   1f66d:	89 3d 38 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_5,edi               ; fixup: num: 4517, src obj: 1, src ofs: 0x1f66f, dst obj: 3, dst ofs: 0x22d38
   1f673:	e8 18 b0 04 00       	call   play_wav
   1f678:	89 fa                	mov    edx,edi
   1f67a:	31 c0                	xor    eax,eax
   1f67c:	e8 cf 8b 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   1f681:	b8 35 02 00 00       	mov    eax,0x235
   1f686:	e8 15 ab 00 00       	call   GetDlgFileString
   1f68b:	e8 80 b8 04 00       	call   get_response
   1f690:	39 f8                	cmp    eax,edi
   1f692:	75 41                	jne    talk_to_MRS_POTTSDAM_branch_44
   1f694:	ba e6 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_78                           ; fixup: num: 4516, src obj: 1, src ofs: 0x1f695, dst obj: 3, dst ofs: 0x50e6
   1f699:	b8 e8 28 00 00       	mov    eax,0x28e8
   1f69e:	31 db                	xor    ebx,ebx
   1f6a0:	e8 eb af 04 00       	call   play_wav
   1f6a5:	ba f0 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_79                           ; fixup: num: 4535, src obj: 1, src ofs: 0x1f6a6, dst obj: 3, dst ofs: 0x50f0
   1f6aa:	b8 ee 28 00 00       	mov    eax,0x28ee
   1f6af:	31 db                	xor    ebx,ebx
   1f6b1:	e8 da af 04 00       	call   play_wav
   1f6b6:	bb 02 00 00 00       	mov    ebx,0x2
   1f6bb:	ba f3 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_80                           ; fixup: num: 4534, src obj: 1, src ofs: 0x1f6bc, dst obj: 3, dst ofs: 0x50f3
   1f6c0:	b8 f2 28 00 00       	mov    eax,0x28f2
   1f6c5:	e8 c6 af 04 00       	call   play_wav
   1f6ca:	89 fa                	mov    edx,edi
   1f6cc:	31 c0                	xor    eax,eax
   1f6ce:	e8 8d 8d 00 00       	call   MRS_POTTSDAM_CLAIMED_HE_WAS_HOME
   1f6d3:	eb 3e                	jmp    talk_to_MRS_POTTSDAM_branch_45
talk_to_MRS_POTTSDAM_branch_44:
   1f6d5:	83 f8 02             	cmp    eax,0x2
   1f6d8:	75 39                	jne    talk_to_MRS_POTTSDAM_branch_45
   1f6da:	bb 03 00 00 00       	mov    ebx,0x3
   1f6df:	ba fd 50 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_81                           ; fixup: num: 4533, src obj: 1, src ofs: 0x1f6e0, dst obj: 3, dst ofs: 0x50fd
   1f6e4:	b8 fb 28 00 00       	mov    eax,0x28fb
   1f6e9:	e8 a2 af 04 00       	call   play_wav
   1f6ee:	ba 07 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_82                           ; fixup: num: 4532, src obj: 1, src ofs: 0x1f6ef, dst obj: 3, dst ofs: 0x5107
   1f6f3:	b8 03 29 00 00       	mov    eax,0x2903
   1f6f8:	31 db                	xor    ebx,ebx
   1f6fa:	e8 91 af 04 00       	call   play_wav
   1f6ff:	bb 02 00 00 00       	mov    ebx,0x2
   1f704:	ba 0a 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_83                           ; fixup: num: 4531, src obj: 1, src ofs: 0x1f705, dst obj: 3, dst ofs: 0x510a
   1f709:	b8 07 29 00 00       	mov    eax,0x2907
   1f70e:	e8 7d af 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_45:
   1f713:	b8 14 51 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_84                           ; fixup: num: 4530, src obj: 1, src ofs: 0x1f714, dst obj: 3, dst ofs: 0x5114
   1f718:	e8 73 d0 04 00       	call   check_script_flag
   1f71d:	84 c0                	test   al,al
   1f71f:	0f 84 8b 00 00 00    	je     talk_to_MRS_POTTSDAM_branch_48
   1f725:	83 3d 3c 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_6,0x0               ; fixup: num: 4529, src obj: 1, src ofs: 0x1f727, dst obj: 3, dst ofs: 0x22d3c
   1f72c:	0f 85 7e 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_48
   1f732:	b8 01 00 00 00       	mov    eax,0x1
   1f737:	ba 21 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_85                           ; fixup: num: 4528, src obj: 1, src ofs: 0x1f738, dst obj: 3, dst ofs: 0x5121
   1f73c:	a3 3c 2d 02 00       	mov    ds:@obj3:MRS_POTTSDAM_variable_6,eax                         ; fixup: num: 4527, src obj: 1, src ofs: 0x1f73d, dst obj: 3, dst ofs: 0x22d3c
   1f741:	89 c3                	mov    ebx,eax
   1f743:	b8 0e 29 00 00       	mov    eax,0x290e
   1f748:	e8 43 af 04 00       	call   play_wav
   1f74d:	b8 2b 51 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_86                           ; fixup: num: 4542, src obj: 1, src ofs: 0x1f74e, dst obj: 3, dst ofs: 0x512b
   1f752:	e8 39 d0 04 00       	call   check_script_flag
   1f757:	84 c0                	test   al,al
   1f759:	74 14                	je     talk_to_MRS_POTTSDAM_branch_46
   1f75b:	bb 01 00 00 00       	mov    ebx,0x1
   1f760:	ba 36 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_87                           ; fixup: num: 4541, src obj: 1, src ofs: 0x1f761, dst obj: 3, dst ofs: 0x5136
   1f765:	b8 14 29 00 00       	mov    eax,0x2914
   1f76a:	e8 21 af 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_46:
   1f76f:	ba 40 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_88                           ; fixup: num: 4540, src obj: 1, src ofs: 0x1f770, dst obj: 3, dst ofs: 0x5140
   1f774:	b8 18 29 00 00       	mov    eax,0x2918
   1f779:	31 db                	xor    ebx,ebx
   1f77b:	e8 10 af 04 00       	call   play_wav
   1f780:	b8 36 02 00 00       	mov    eax,0x236
   1f785:	e8 16 aa 00 00       	call   GetDlgFileString
   1f78a:	e8 81 b7 04 00       	call   get_response
   1f78f:	83 f8 01             	cmp    eax,0x1
   1f792:	75 13                	jne    talk_to_MRS_POTTSDAM_branch_47
   1f794:	ba 4a 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_89                           ; fixup: num: 4539, src obj: 1, src ofs: 0x1f795, dst obj: 3, dst ofs: 0x514a
   1f799:	b8 26 29 00 00       	mov    eax,0x2926
   1f79e:	31 db                	xor    ebx,ebx
   1f7a0:	e8 eb ae 04 00       	call   play_wav
   1f7a5:	eb 09                	jmp    talk_to_MRS_POTTSDAM_branch_48
talk_to_MRS_POTTSDAM_branch_47:
   1f7a7:	83 f8 02             	cmp    eax,0x2
   1f7aa:	0f 84 05 fa ff ff    	je     talk_to_MRS_POTTSDAM_branch_17
talk_to_MRS_POTTSDAM_branch_48:
   1f7b0:	be 54 51 00 00       	mov    esi,@obj3:ms_potts_cpp_variable_90                           ; fixup: num: 4538, src obj: 1, src ofs: 0x1f7b1, dst obj: 3, dst ofs: 0x5154
   1f7b5:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 4537, src obj: 1, src ofs: 0x1f7b6, dst obj: 3, dst ofs: 0x294c0
   1f7ba:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_49:
   1f7bb:	8a 06                	mov    al,BYTE PTR [esi]
   1f7bd:	88 07                	mov    BYTE PTR [edi],al
   1f7bf:	3c 00                	cmp    al,0x0
   1f7c1:	74 10                	je     talk_to_MRS_POTTSDAM_branch_50
   1f7c3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f7c6:	83 c6 02             	add    esi,0x2
   1f7c9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f7cc:	83 c7 02             	add    edi,0x2
   1f7cf:	3c 00                	cmp    al,0x0
   1f7d1:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_49
talk_to_MRS_POTTSDAM_branch_50:
   1f7d3:	5f                   	pop    edi
   1f7d4:	89 fd                	mov    ebp,edi
   1f7d6:	31 c9                	xor    ecx,ecx
talk_to_MRS_POTTSDAM_branch_51:
   1f7d8:	b8 37 02 00 00       	mov    eax,0x237
   1f7dd:	e8 be a9 00 00       	call   GetDlgFileString
   1f7e2:	89 c2                	mov    edx,eax
   1f7e4:	89 e8                	mov    eax,ebp
   1f7e6:	e8 6f 1c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f7eb:	85 c0                	test   eax,eax
   1f7ed:	0f 84 75 04 00 00    	je     talk_to_MRS_POTTSDAM_branch_79
   1f7f3:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 4536, src obj: 1, src ofs: 0x1f7f4, dst obj: 3, dst ofs: 0x295c0
   1f7f8:	e8 43 c2 04 00       	call   show_keywords
   1f7fd:	b8 38 02 00 00       	mov    eax,0x238
   1f802:	e8 99 a9 00 00       	call   GetDlgFileString
   1f807:	89 c2                	mov    edx,eax
   1f809:	89 e8                	mov    eax,ebp
   1f80b:	e8 4a 1c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f810:	85 c0                	test   eax,eax
   1f812:	0f 85 85 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_54
   1f818:	ba 55 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_91                           ; fixup: num: 4548, src obj: 1, src ofs: 0x1f819, dst obj: 3, dst ofs: 0x5155
   1f81d:	b8 56 27 00 00       	mov    eax,0x2756
   1f822:	89 cb                	mov    ebx,ecx
   1f824:	e8 67 ae 04 00       	call   play_wav
   1f829:	ba 5f 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_92                           ; fixup: num: 4547, src obj: 1, src ofs: 0x1f82a, dst obj: 3, dst ofs: 0x515f
   1f82e:	b8 5d 27 00 00       	mov    eax,0x275d
   1f833:	89 cb                	mov    ebx,ecx
   1f835:	e8 56 ae 04 00       	call   play_wav
   1f83a:	ba 62 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_93                           ; fixup: num: 4546, src obj: 1, src ofs: 0x1f83b, dst obj: 3, dst ofs: 0x5162
   1f83f:	b8 62 27 00 00       	mov    eax,0x2762
   1f844:	89 cb                	mov    ebx,ecx
   1f846:	e8 45 ae 04 00       	call   play_wav
   1f84b:	ba 6c 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_94                           ; fixup: num: 4545, src obj: 1, src ofs: 0x1f84c, dst obj: 3, dst ofs: 0x516c
   1f850:	b8 66 27 00 00       	mov    eax,0x2766
   1f855:	89 cb                	mov    ebx,ecx
   1f857:	e8 34 ae 04 00       	call   play_wav
   1f85c:	ba 6f 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_95                           ; fixup: num: 4544, src obj: 1, src ofs: 0x1f85d, dst obj: 3, dst ofs: 0x516f
   1f861:	b8 6b 27 00 00       	mov    eax,0x276b
   1f866:	89 cb                	mov    ebx,ecx
   1f868:	e8 23 ae 04 00       	call   play_wav
   1f86d:	b8 39 02 00 00       	mov    eax,0x239
   1f872:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4543, src obj: 1, src ofs: 0x1f873, dst obj: 3, dst ofs: 0x295c0
   1f877:	e8 24 a9 00 00       	call   GetDlgFileString
   1f87c:	89 c6                	mov    esi,eax
   1f87e:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_52:
   1f87f:	8a 06                	mov    al,BYTE PTR [esi]
   1f881:	88 07                	mov    BYTE PTR [edi],al
   1f883:	3c 00                	cmp    al,0x0
   1f885:	74 10                	je     talk_to_MRS_POTTSDAM_branch_53
   1f887:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f88a:	83 c6 02             	add    esi,0x2
   1f88d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f890:	83 c7 02             	add    edi,0x2
   1f893:	3c 00                	cmp    al,0x0
   1f895:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_52
talk_to_MRS_POTTSDAM_branch_53:
   1f897:	5f                   	pop    edi
   1f898:	e9 3b ff ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_54:
   1f89d:	b8 3a 02 00 00       	mov    eax,0x23a
   1f8a2:	e8 f9 a8 00 00       	call   GetDlgFileString
   1f8a7:	89 c2                	mov    edx,eax
   1f8a9:	89 e8                	mov    eax,ebp
   1f8ab:	e8 aa 1b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f8b0:	85 c0                	test   eax,eax
   1f8b2:	75 77                	jne    talk_to_MRS_POTTSDAM_branch_57
   1f8b4:	ba 79 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_96                           ; fixup: num: 4554, src obj: 1, src ofs: 0x1f8b5, dst obj: 3, dst ofs: 0x5179
   1f8b9:	b8 75 27 00 00       	mov    eax,0x2775
   1f8be:	89 cb                	mov    ebx,ecx
   1f8c0:	e8 cb ad 04 00       	call   play_wav
   1f8c5:	bb 03 00 00 00       	mov    ebx,0x3
   1f8ca:	ba 7c 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_97                           ; fixup: num: 4553, src obj: 1, src ofs: 0x1f8cb, dst obj: 3, dst ofs: 0x517c
   1f8cf:	b8 79 27 00 00       	mov    eax,0x2779
   1f8d4:	e8 b7 ad 04 00       	call   play_wav
   1f8d9:	ba 86 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_98                           ; fixup: num: 4552, src obj: 1, src ofs: 0x1f8da, dst obj: 3, dst ofs: 0x5186
   1f8de:	b8 7f 27 00 00       	mov    eax,0x277f
   1f8e3:	89 cb                	mov    ebx,ecx
   1f8e5:	e8 a6 ad 04 00       	call   play_wav
   1f8ea:	ba 89 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_99                           ; fixup: num: 4551, src obj: 1, src ofs: 0x1f8eb, dst obj: 3, dst ofs: 0x5189
   1f8ef:	b8 83 27 00 00       	mov    eax,0x2783
   1f8f4:	89 cb                	mov    ebx,ecx
   1f8f6:	e8 95 ad 04 00       	call   play_wav
   1f8fb:	b8 3b 02 00 00       	mov    eax,0x23b
   1f900:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4550, src obj: 1, src ofs: 0x1f901, dst obj: 3, dst ofs: 0x295c0
   1f905:	e8 96 a8 00 00       	call   GetDlgFileString
   1f90a:	89 c6                	mov    esi,eax
   1f90c:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_55:
   1f90d:	8a 06                	mov    al,BYTE PTR [esi]
   1f90f:	88 07                	mov    BYTE PTR [edi],al
   1f911:	3c 00                	cmp    al,0x0
   1f913:	74 10                	je     talk_to_MRS_POTTSDAM_branch_56
   1f915:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f918:	83 c6 02             	add    esi,0x2
   1f91b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f91e:	83 c7 02             	add    edi,0x2
   1f921:	3c 00                	cmp    al,0x0
   1f923:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_55
talk_to_MRS_POTTSDAM_branch_56:
   1f925:	5f                   	pop    edi
   1f926:	e9 ad fe ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_57:
   1f92b:	b8 3c 02 00 00       	mov    eax,0x23c
   1f930:	e8 6b a8 00 00       	call   GetDlgFileString
   1f935:	89 c2                	mov    edx,eax
   1f937:	89 e8                	mov    eax,ebp
   1f939:	e8 1c 1b 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f93e:	85 c0                	test   eax,eax
   1f940:	75 74                	jne    talk_to_MRS_POTTSDAM_branch_60
   1f942:	ba 93 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_100                          ; fixup: num: 4549, src obj: 1, src ofs: 0x1f943, dst obj: 3, dst ofs: 0x5193
   1f947:	b8 8c 27 00 00       	mov    eax,0x278c
   1f94c:	89 cb                	mov    ebx,ecx
   1f94e:	e8 3d ad 04 00       	call   play_wav
   1f953:	ba 96 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_101                          ; fixup: num: 4561, src obj: 1, src ofs: 0x1f954, dst obj: 3, dst ofs: 0x5196
   1f958:	b8 90 27 00 00       	mov    eax,0x2790
   1f95d:	89 cb                	mov    ebx,ecx
   1f95f:	e8 2c ad 04 00       	call   play_wav
   1f964:	ba a0 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_102                          ; fixup: num: 4560, src obj: 1, src ofs: 0x1f965, dst obj: 3, dst ofs: 0x51a0
   1f969:	b8 95 27 00 00       	mov    eax,0x2795
   1f96e:	89 cb                	mov    ebx,ecx
   1f970:	e8 1b ad 04 00       	call   play_wav
   1f975:	ba a3 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_103                          ; fixup: num: 4559, src obj: 1, src ofs: 0x1f976, dst obj: 3, dst ofs: 0x51a3
   1f97a:	b8 99 27 00 00       	mov    eax,0x2799
   1f97f:	89 cb                	mov    ebx,ecx
   1f981:	e8 0a ad 04 00       	call   play_wav
   1f986:	b8 3d 02 00 00       	mov    eax,0x23d
   1f98b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4558, src obj: 1, src ofs: 0x1f98c, dst obj: 3, dst ofs: 0x295c0
   1f990:	e8 0b a8 00 00       	call   GetDlgFileString
   1f995:	89 c6                	mov    esi,eax
   1f997:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_58:
   1f998:	8a 06                	mov    al,BYTE PTR [esi]
   1f99a:	88 07                	mov    BYTE PTR [edi],al
   1f99c:	3c 00                	cmp    al,0x0
   1f99e:	74 10                	je     talk_to_MRS_POTTSDAM_branch_59
   1f9a0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1f9a3:	83 c6 02             	add    esi,0x2
   1f9a6:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1f9a9:	83 c7 02             	add    edi,0x2
   1f9ac:	3c 00                	cmp    al,0x0
   1f9ae:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_58
talk_to_MRS_POTTSDAM_branch_59:
   1f9b0:	5f                   	pop    edi
   1f9b1:	e9 22 fe ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_60:
   1f9b6:	b8 3e 02 00 00       	mov    eax,0x23e
   1f9bb:	e8 e0 a7 00 00       	call   GetDlgFileString
   1f9c0:	89 c2                	mov    edx,eax
   1f9c2:	89 e8                	mov    eax,ebp
   1f9c4:	e8 91 1a 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1f9c9:	85 c0                	test   eax,eax
   1f9cb:	0f 85 f6 00 00 00    	jne    talk_to_MRS_POTTSDAM_branch_66
   1f9d1:	bb 03 00 00 00       	mov    ebx,0x3
   1f9d6:	ba ad 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_104                          ; fixup: num: 4557, src obj: 1, src ofs: 0x1f9d7, dst obj: 3, dst ofs: 0x51ad
   1f9db:	b8 a3 27 00 00       	mov    eax,0x27a3
   1f9e0:	e8 ab ac 04 00       	call   play_wav
   1f9e5:	ba b7 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_105                          ; fixup: num: 4556, src obj: 1, src ofs: 0x1f9e6, dst obj: 3, dst ofs: 0x51b7
   1f9ea:	b8 a8 27 00 00       	mov    eax,0x27a8
   1f9ef:	89 cb                	mov    ebx,ecx
   1f9f1:	e8 9a ac 04 00       	call   play_wav
   1f9f6:	bb 02 00 00 00       	mov    ebx,0x2
   1f9fb:	ba ba 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_106                          ; fixup: num: 4555, src obj: 1, src ofs: 0x1f9fc, dst obj: 3, dst ofs: 0x51ba
   1fa00:	b8 ac 27 00 00       	mov    eax,0x27ac
   1fa05:	e8 86 ac 04 00       	call   play_wav
   1fa0a:	bb 02 00 00 00       	mov    ebx,0x2
   1fa0f:	ba c4 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_107                          ; fixup: num: 4569, src obj: 1, src ofs: 0x1fa10, dst obj: 3, dst ofs: 0x51c4
   1fa14:	b8 b0 27 00 00       	mov    eax,0x27b0
   1fa19:	e8 72 ac 04 00       	call   play_wav
   1fa1e:	bb 02 00 00 00       	mov    ebx,0x2
   1fa23:	ba c7 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_108                          ; fixup: num: 4568, src obj: 1, src ofs: 0x1fa24, dst obj: 3, dst ofs: 0x51c7
   1fa28:	b8 b5 27 00 00       	mov    eax,0x27b5
   1fa2d:	e8 5e ac 04 00       	call   play_wav
   1fa32:	b8 3f 02 00 00       	mov    eax,0x23f
   1fa37:	e8 64 a7 00 00       	call   GetDlgFileString
   1fa3c:	e8 cf b4 04 00       	call   get_response
   1fa41:	83 f8 01             	cmp    eax,0x1
   1fa44:	75 0e                	jne    talk_to_MRS_POTTSDAM_branch_61
   1fa46:	ba d1 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_109                          ; fixup: num: 4567, src obj: 1, src ofs: 0x1fa47, dst obj: 3, dst ofs: 0x51d1
   1fa4b:	89 c3                	mov    ebx,eax
   1fa4d:	b8 c3 27 00 00       	mov    eax,0x27c3
   1fa52:	eb 25                	jmp    talk_to_MRS_POTTSDAM_branch_62
talk_to_MRS_POTTSDAM_branch_61:
   1fa54:	83 f8 02             	cmp    eax,0x2
   1fa57:	75 25                	jne    talk_to_MRS_POTTSDAM_branch_63
   1fa59:	ba db 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_110                          ; fixup: num: 4566, src obj: 1, src ofs: 0x1fa5a, dst obj: 3, dst ofs: 0x51db
   1fa5e:	89 c3                	mov    ebx,eax
   1fa60:	b8 c7 27 00 00       	mov    eax,0x27c7
   1fa65:	e8 26 ac 04 00       	call   play_wav
   1fa6a:	bb 01 00 00 00       	mov    ebx,0x1
   1fa6f:	ba e5 51 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_111                          ; fixup: num: 4565, src obj: 1, src ofs: 0x1fa70, dst obj: 3, dst ofs: 0x51e5
   1fa74:	b8 cc 27 00 00       	mov    eax,0x27cc
talk_to_MRS_POTTSDAM_branch_62:
   1fa79:	e8 12 ac 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_63:
   1fa7e:	ba 01 00 00 00       	mov    edx,0x1
   1fa83:	b8 ef 51 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_112                          ; fixup: num: 4564, src obj: 1, src ofs: 0x1fa84, dst obj: 3, dst ofs: 0x51ef
   1fa88:	e8 53 cd 04 00       	call   set_script_flag
   1fa8d:	b8 0b 52 00 00       	mov    eax,@obj3:ms_potts_cpp_variable_113                          ; fixup: num: 4563, src obj: 1, src ofs: 0x1fa8e, dst obj: 3, dst ofs: 0x520b
   1fa92:	e8 e9 d0 04 00       	call   ExecuteCommand
   1fa97:	b8 40 02 00 00       	mov    eax,0x240
   1fa9c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4562, src obj: 1, src ofs: 0x1fa9d, dst obj: 3, dst ofs: 0x295c0
   1faa1:	e8 fa a6 00 00       	call   GetDlgFileString
   1faa6:	89 c6                	mov    esi,eax
   1faa8:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_64:
   1faa9:	8a 06                	mov    al,BYTE PTR [esi]
   1faab:	88 07                	mov    BYTE PTR [edi],al
   1faad:	3c 00                	cmp    al,0x0
   1faaf:	74 10                	je     talk_to_MRS_POTTSDAM_branch_65
   1fab1:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1fab4:	83 c6 02             	add    esi,0x2
   1fab7:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1faba:	83 c7 02             	add    edi,0x2
   1fabd:	3c 00                	cmp    al,0x0
   1fabf:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_64
talk_to_MRS_POTTSDAM_branch_65:
   1fac1:	5f                   	pop    edi
   1fac2:	e9 11 fd ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_66:
   1fac7:	b8 41 02 00 00       	mov    eax,0x241
   1facc:	e8 cf a6 00 00       	call   GetDlgFileString
   1fad1:	89 c2                	mov    edx,eax
   1fad3:	89 e8                	mov    eax,ebp
   1fad5:	e8 80 19 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fada:	85 c0                	test   eax,eax
   1fadc:	74 17                	je     talk_to_MRS_POTTSDAM_branch_67
   1fade:	b8 42 02 00 00       	mov    eax,0x242
   1fae3:	e8 b8 a6 00 00       	call   GetDlgFileString
   1fae8:	89 c2                	mov    edx,eax
   1faea:	89 e8                	mov    eax,ebp
   1faec:	e8 69 19 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1faf1:	85 c0                	test   eax,eax
   1faf3:	75 44                	jne    talk_to_MRS_POTTSDAM_branch_70
talk_to_MRS_POTTSDAM_branch_67:
   1faf5:	bb 03 00 00 00       	mov    ebx,0x3
   1fafa:	ba 1a 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_114                          ; fixup: num: 4571, src obj: 1, src ofs: 0x1fafb, dst obj: 3, dst ofs: 0x521a
   1faff:	b8 d6 27 00 00       	mov    eax,0x27d6
   1fb04:	e8 87 ab 04 00       	call   play_wav
   1fb09:	b8 43 02 00 00       	mov    eax,0x243
   1fb0e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4570, src obj: 1, src ofs: 0x1fb0f, dst obj: 3, dst ofs: 0x295c0
   1fb13:	e8 88 a6 00 00       	call   GetDlgFileString
   1fb18:	89 c6                	mov    esi,eax
   1fb1a:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_68:
   1fb1b:	8a 06                	mov    al,BYTE PTR [esi]
   1fb1d:	88 07                	mov    BYTE PTR [edi],al
   1fb1f:	3c 00                	cmp    al,0x0
   1fb21:	74 10                	je     talk_to_MRS_POTTSDAM_branch_69
   1fb23:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1fb26:	83 c6 02             	add    esi,0x2
   1fb29:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1fb2c:	83 c7 02             	add    edi,0x2
   1fb2f:	3c 00                	cmp    al,0x0
   1fb31:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_68
talk_to_MRS_POTTSDAM_branch_69:
   1fb33:	5f                   	pop    edi
   1fb34:	e9 9f fc ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_70:
   1fb39:	b8 44 02 00 00       	mov    eax,0x244
   1fb3e:	e8 5d a6 00 00       	call   GetDlgFileString
   1fb43:	89 c2                	mov    edx,eax
   1fb45:	89 e8                	mov    eax,ebp
   1fb47:	e8 0e 19 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fb4c:	85 c0                	test   eax,eax
   1fb4e:	74 17                	je     talk_to_MRS_POTTSDAM_branch_71
   1fb50:	b8 45 02 00 00       	mov    eax,0x245
   1fb55:	e8 46 a6 00 00       	call   GetDlgFileString
   1fb5a:	89 c2                	mov    edx,eax
   1fb5c:	89 e8                	mov    eax,ebp
   1fb5e:	e8 f7 18 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fb63:	85 c0                	test   eax,eax
   1fb65:	75 41                	jne    talk_to_MRS_POTTSDAM_branch_74
talk_to_MRS_POTTSDAM_branch_71:
   1fb67:	ba 24 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_115                          ; fixup: num: 4576, src obj: 1, src ofs: 0x1fb68, dst obj: 3, dst ofs: 0x5224
   1fb6c:	b8 e3 27 00 00       	mov    eax,0x27e3
   1fb71:	89 cb                	mov    ebx,ecx
   1fb73:	e8 18 ab 04 00       	call   play_wav
   1fb78:	b8 46 02 00 00       	mov    eax,0x246
   1fb7d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4575, src obj: 1, src ofs: 0x1fb7e, dst obj: 3, dst ofs: 0x295c0
   1fb82:	e8 19 a6 00 00       	call   GetDlgFileString
   1fb87:	89 c6                	mov    esi,eax
   1fb89:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_72:
   1fb8a:	8a 06                	mov    al,BYTE PTR [esi]
   1fb8c:	88 07                	mov    BYTE PTR [edi],al
   1fb8e:	3c 00                	cmp    al,0x0
   1fb90:	74 10                	je     talk_to_MRS_POTTSDAM_branch_73
   1fb92:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1fb95:	83 c6 02             	add    esi,0x2
   1fb98:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1fb9b:	83 c7 02             	add    edi,0x2
   1fb9e:	3c 00                	cmp    al,0x0
   1fba0:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_72
talk_to_MRS_POTTSDAM_branch_73:
   1fba2:	5f                   	pop    edi
   1fba3:	e9 30 fc ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_74:
   1fba8:	b8 47 02 00 00       	mov    eax,0x247
   1fbad:	e8 ee a5 00 00       	call   GetDlgFileString
   1fbb2:	89 c2                	mov    edx,eax
   1fbb4:	89 e8                	mov    eax,ebp
   1fbb6:	e8 9f 18 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fbbb:	85 c0                	test   eax,eax
   1fbbd:	74 17                	je     talk_to_MRS_POTTSDAM_branch_75
   1fbbf:	b8 48 02 00 00       	mov    eax,0x248
   1fbc4:	e8 d7 a5 00 00       	call   GetDlgFileString
   1fbc9:	89 c2                	mov    edx,eax
   1fbcb:	89 e8                	mov    eax,ebp
   1fbcd:	e8 88 18 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fbd2:	85 c0                	test   eax,eax
   1fbd4:	75 61                	jne    talk_to_MRS_POTTSDAM_branch_78
talk_to_MRS_POTTSDAM_branch_75:
   1fbd6:	ba 01 00 00 00       	mov    edx,0x1
   1fbdb:	89 c8                	mov    eax,ecx
   1fbdd:	e8 de 88 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   1fbe2:	89 cb                	mov    ebx,ecx
   1fbe4:	ba 2e 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_116                          ; fixup: num: 4574, src obj: 1, src ofs: 0x1fbe5, dst obj: 3, dst ofs: 0x522e
   1fbe9:	b8 ef 27 00 00       	mov    eax,0x27ef
   1fbee:	e8 9d aa 04 00       	call   play_wav
   1fbf3:	bb 01 00 00 00       	mov    ebx,0x1
   1fbf8:	ba 31 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_117                          ; fixup: num: 4573, src obj: 1, src ofs: 0x1fbf9, dst obj: 3, dst ofs: 0x5231
   1fbfd:	b8 f3 27 00 00       	mov    eax,0x27f3
   1fc02:	e8 89 aa 04 00       	call   play_wav
   1fc07:	b8 49 02 00 00       	mov    eax,0x249
   1fc0c:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4572, src obj: 1, src ofs: 0x1fc0d, dst obj: 3, dst ofs: 0x295c0
   1fc11:	e8 8a a5 00 00       	call   GetDlgFileString
   1fc16:	89 c6                	mov    esi,eax
   1fc18:	57                   	push   edi
talk_to_MRS_POTTSDAM_branch_76:
   1fc19:	8a 06                	mov    al,BYTE PTR [esi]
   1fc1b:	88 07                	mov    BYTE PTR [edi],al
   1fc1d:	3c 00                	cmp    al,0x0
   1fc1f:	74 10                	je     talk_to_MRS_POTTSDAM_branch_77
   1fc21:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1fc24:	83 c6 02             	add    esi,0x2
   1fc27:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1fc2a:	83 c7 02             	add    edi,0x2
   1fc2d:	3c 00                	cmp    al,0x0
   1fc2f:	75 e8                	jne    talk_to_MRS_POTTSDAM_branch_76
talk_to_MRS_POTTSDAM_branch_77:
   1fc31:	5f                   	pop    edi
   1fc32:	e9 a1 fb ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_78:
   1fc37:	b8 4a 02 00 00       	mov    eax,0x24a
   1fc3c:	e8 5f a5 00 00       	call   GetDlgFileString
   1fc41:	89 c2                	mov    edx,eax
   1fc43:	89 e8                	mov    eax,ebp
   1fc45:	e8 10 18 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1fc4a:	85 c0                	test   eax,eax
   1fc4c:	0f 84 86 fb ff ff    	je     talk_to_MRS_POTTSDAM_branch_51
   1fc52:	ba 3b 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_118                          ; fixup: num: 4463, src obj: 1, src ofs: 0x1fc53, dst obj: 3, dst ofs: 0x523b
   1fc57:	b8 30 29 00 00       	mov    eax,0x2930
   1fc5c:	89 cb                	mov    ebx,ecx
   1fc5e:	e8 2d aa 04 00       	call   play_wav
   1fc63:	e9 70 fb ff ff       	jmp    talk_to_MRS_POTTSDAM_branch_51
talk_to_MRS_POTTSDAM_branch_79:
   1fc68:	ba 45 52 00 00       	mov    edx,@obj3:ms_potts_cpp_variable_119                          ; fixup: num: 4462, src obj: 1, src ofs: 0x1fc69, dst obj: 3, dst ofs: 0x5245
   1fc6d:	b8 7e 29 00 00       	mov    eax,0x297e
   1fc72:	31 db                	xor    ebx,ebx
   1fc74:	e8 17 aa 04 00       	call   play_wav
talk_to_MRS_POTTSDAM_branch_80:
   1fc79:	31 c0                	xor    eax,eax
   1fc7b:	5d                   	pop    ebp
   1fc7c:	5f                   	pop    edi
   1fc7d:	5e                   	pop    esi
   1fc7e:	5a                   	pop    edx
   1fc7f:	59                   	pop    ecx
   1fc80:	5b                   	pop    ebx
   1fc81:	c3                   	ret    
talk_to_MRS_POTTSDAM_branch_81:
   1fc82:	89 15 24 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM,edx                          ; fixup: num: 4461, src obj: 1, src ofs: 0x1fc84, dst obj: 3, dst ofs: 0x22d24
   1fc88:	a1 24 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM                                    ; fixup: num: 4460, src obj: 1, src ofs: 0x1fc89, dst obj: 3, dst ofs: 0x22d24
   1fc8d:	c3                   	ret    
   1fc8e:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'MRS_POTTSDAM_FIRST_CONVERSATION'    -
;-------------------------------------------------
MRS_POTTSDAM_FIRST_CONVERSATION:
   1fc90:	85 c0                	test   eax,eax
   1fc92:	74 ee                	je     talk_to_MRS_POTTSDAM_branch_81
   1fc94:	a1 24 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM                                    ; fixup: num: 4459, src obj: 1, src ofs: 0x1fc95, dst obj: 3, dst ofs: 0x22d24
   1fc99:	c3                   	ret    
MRS_POTTSDAM_FIRST_CONVERSATION_branch_1:
   1fc9a:	89 15 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,edx               ; fixup: num: 4458, src obj: 1, src ofs: 0x1fc9c, dst obj: 3, dst ofs: 0x22d28
   1fca0:	a1 28 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM_variable_1                         ; fixup: num: 4457, src obj: 1, src ofs: 0x1fca1, dst obj: 3, dst ofs: 0x22d28
   1fca5:	c3                   	ret    
   1fca6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1fcac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'MRS_POTTSDAM_SAME_DAY_ALTERNATE_GREETING'    -
;-------------------------------------------------
MRS_POTTSDAM_SAME_DAY_ALTERNATE_GREETING:
   1fcb0:	85 c0                	test   eax,eax
   1fcb2:	74 e6                	je     MRS_POTTSDAM_FIRST_CONVERSATION_branch_1
   1fcb4:	a1 28 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM_variable_1                         ; fixup: num: 4579, src obj: 1, src ofs: 0x1fcb5, dst obj: 3, dst ofs: 0x22d28
   1fcb9:	c3                   	ret    
MRS_POTTSDAM_SAME_DAY_ALTERNATE_GREETING_branch_1:
   1fcba:	89 15 2c 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_2,edx               ; fixup: num: 4578, src obj: 1, src ofs: 0x1fcbc, dst obj: 3, dst ofs: 0x22d2c
   1fcc0:	a1 2c 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM_variable_2                         ; fixup: num: 4577, src obj: 1, src ofs: 0x1fcc1, dst obj: 3, dst ofs: 0x22d2c
   1fcc5:	c3                   	ret    
   1fcc6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   1fccc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function                                      -
;  'FOLLOWUP_CONVERSATION_IF_BETWEEN_DAYS_AND'   -
;-------------------------------------------------
FOLLOWUP_CONVERSATION_IF_BETWEEN_DAYS_AND:
   1fcd0:	85 c0                	test   eax,eax
   1fcd2:	74 e6                	je     MRS_POTTSDAM_SAME_DAY_ALTERNATE_GREETING_branch_1
   1fcd4:	a1 2c 2d 02 00       	mov    eax,ds:@obj3:MRS_POTTSDAM_variable_2                         ; fixup: num: 4471, src obj: 1, src ofs: 0x1fcd5, dst obj: 3, dst ofs: 0x22d2c
   1fcd9:	c3                   	ret    
   1fcda:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MRS_POTTSDAM_initialize'            -
;-------------------------------------------------
MRS_POTTSDAM_initialize:
   1fce0:	53                   	push   ebx
   1fce1:	52                   	push   edx
   1fce2:	ba 01 00 00 00       	mov    edx,0x1
   1fce7:	31 db                	xor    ebx,ebx
   1fce9:	89 15 24 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM,edx                          ; fixup: num: 4470, src obj: 1, src ofs: 0x1fceb, dst obj: 3, dst ofs: 0x22d24
   1fcef:	89 1d 28 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_1,ebx               ; fixup: num: 4469, src obj: 1, src ofs: 0x1fcf1, dst obj: 3, dst ofs: 0x22d28
   1fcf5:	89 1d 2c 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_2,ebx               ; fixup: num: 4468, src obj: 1, src ofs: 0x1fcf7, dst obj: 3, dst ofs: 0x22d2c
   1fcfb:	89 1d 30 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_3,ebx               ; fixup: num: 4467, src obj: 1, src ofs: 0x1fcfd, dst obj: 3, dst ofs: 0x22d30
   1fd01:	89 1d 34 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_4,ebx               ; fixup: num: 4466, src obj: 1, src ofs: 0x1fd03, dst obj: 3, dst ofs: 0x22d34
   1fd07:	89 1d 38 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_5,ebx               ; fixup: num: 4465, src obj: 1, src ofs: 0x1fd09, dst obj: 3, dst ofs: 0x22d38
   1fd0d:	89 1d 3c 2d 02 00    	mov    DWORD PTR ds:@obj3:MRS_POTTSDAM_variable_6,ebx               ; fixup: num: 4464, src obj: 1, src ofs: 0x1fd0f, dst obj: 3, dst ofs: 0x22d3c
   1fd13:	5a                   	pop    edx
   1fd14:	5b                   	pop    ebx
   1fd15:	c3                   	ret    
;-------------------------------------------------
;  Bad code 39 (zero after ret):                 -
;-------------------------------------------------
;  1fd14:	5b                   	pop    ebx
;  1fd15:	c3                   	ret    
;  1fd16:	00 00                	add    BYTE PTR [eax],al
;  1fd18:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (10 bytes):                      -
;-------------------------------------------------
   1fd16:	00 00 00 00 00 00 .. 	db     10 dup(0x00)
;-------------------------------------------------
;  End of bad code 39                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 44 (D:\SOURCE\ms_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 44: D:\SOURCE\ms_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
ms_potts_cpp_variable_1:
    4d78:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_2:
    4d79:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ms_potts_cpp_variable_3:
    4d91:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_4:
    4d9b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d9c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d9d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_5:
    4d9e:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_6:
    4da8:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
ms_potts_cpp_variable_7:
    4db5:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
ms_potts_cpp_variable_8:
    4dc6:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
ms_potts_cpp_variable_9:
    4dcd:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
ms_potts_cpp_variable_10:
    4dd5:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
ms_potts_cpp_variable_11:
    4de7:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
ms_potts_cpp_variable_12:
    4df4:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
ms_potts_cpp_variable_13:
    4e05:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_14:
    4e0f:	4e 4f 54 45 00       	db     "NOTE",0x00
ms_potts_cpp_variable_15:
    4e14:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
ms_potts_cpp_variable_16:
    4e23:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
ms_potts_cpp_variable_17:
    4e2d:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
ms_potts_cpp_variable_18:
    4e41:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_19:
    4e4b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4e4c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4e4d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_20:
    4e4e:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_21:
    4e58:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4e59:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4e5a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_22:
    4e5b:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_23:
    4e65:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
ms_potts_cpp_variable_24:
    4e6d:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
ms_potts_cpp_variable_25:
    4e7f:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_26:
    4e89:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4e8a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4e8b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_27:
    4e8c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_28:
    4e96:	52 45 4d 41 49 4e 53 00 	db     "REMAINS",0x00
ms_potts_cpp_variable_29:
    4e9e:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_30:
    4ea8:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
ms_potts_cpp_variable_31:
    4eba:	53 54 4b 49 54 43 48 4e 00 	db     "STKITCHN",0x00
ms_potts_cpp_variable_32:
    4ec3:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
ms_potts_cpp_variable_33:
    4ed9:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_34:
    4ee3:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_35:
    4eed:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_36:
    4ef7:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_37:
    4f01:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4f02:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4f03:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_38:
    4f04:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_39:
    4f0e:	44 49 45 5f 49 4e 5f 43 48 41 49 52 00 	db     "DIE_IN_CHAIR",0x00
ms_potts_cpp_variable_40:
    4f1b:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_41:
    4f25:	54 41 4b 45 4e 5f 49 4e 56 49 54 45 5f 54 4f 5f 53 45 52 47 45 41 4e 54 00 	db     "TAKEN_INVITE_TO_SERGEANT",0x00
ms_potts_cpp_variable_42:
    4f3e:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_43:
    4f48:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_44:
    4f52:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_45:
    4f5c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_46:
    4f66:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_47:
    4f70:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_48:
    4f7a:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_49:
    4f84:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_50:
    4f8e:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_51:
    4f98:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_52:
    4fa2:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_53:
    4fac:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_54:
    4fb6:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_55:
    4fc0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4fc1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4fc2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_56:
    4fc3:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_57:
    4fcd:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_58:
    4fd7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4fd8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4fd9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_59:
    4fda:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_60:
    4fe4:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_61:
    4fee:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_62:
    4ff8:	50 45 52 4d 49 53 53 49 4f 4e 5f 54 4f 5f 53 45 45 5f 53 54 45 50 48 41 4e 49 45 00 	db     "PERMISSION_TO_SEE_STEPHANIE",0x00
ms_potts_cpp_variable_63:
    5014:	53 54 45 46 5f 48 41 4c 4c 5f 45 58 49 54 00 	db     "STEF_HALL_EXIT",0x00
ms_potts_cpp_variable_64:
    5023:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_65:
    502d:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_66:
    5037:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
ms_potts_cpp_variable_67:
    504c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_68:
    5056:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_69:
    5060:	53 54 45 50 48 41 4e 49 45 5f 49 53 5f 44 45 41 44 00 	db     "STEPHANIE_IS_DEAD",0x00
ms_potts_cpp_variable_70:
    5072:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_71:
    507c:	50 45 52 4d 49 53 53 49 4f 4e 5f 54 4f 5f 53 45 45 5f 53 54 45 50 48 41 4e 49 45 00 	db     "PERMISSION_TO_SEE_STEPHANIE",0x00
ms_potts_cpp_variable_72:
    5098:	53 54 45 46 5f 48 41 4c 4c 5f 45 58 49 54 00 	db     "STEF_HALL_EXIT",0x00
ms_potts_cpp_variable_73:
    50a7:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_74:
    50b1:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ms_potts_cpp_variable_75:
    50c3:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_76:
    50cd:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
ms_potts_cpp_variable_77:
    50dc:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_78:
    50e6:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_79:
    50f0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    50f1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    50f2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_80:
    50f3:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_81:
    50fd:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_82:
    5107:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5108:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5109:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_83:
    510a:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_84:
    5114:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
ms_potts_cpp_variable_85:
    5121:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_86:
    512b:	4b 41 52 49 4e 5f 48 55 4e 47 00 	db     "KARIN_HUNG",0x00
ms_potts_cpp_variable_87:
    5136:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_88:
    5140:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_89:
    514a:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_90:
    5154:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_91:
    5155:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_92:
    515f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5160:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5161:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_93:
    5162:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_94:
    516c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    516d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    516e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_95:
    516f:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_96:
    5179:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    517a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    517b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_97:
    517c:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_98:
    5186:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5187:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5188:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_99:
    5189:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_100:
    5193:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5194:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5195:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_101:
    5196:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_102:
    51a0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    51a1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    51a2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_103:
    51a3:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_104:
    51ad:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_105:
    51b7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    51b8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    51b9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_106:
    51ba:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_107:
    51c4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    51c5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    51c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_108:
    51c7:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_109:
    51d1:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_110:
    51db:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_111:
    51e5:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_112:
    51ef:	50 45 52 4d 49 53 53 49 4f 4e 5f 54 4f 5f 53 45 45 5f 53 54 45 50 48 41 4e 49 45 00 	db     "PERMISSION_TO_SEE_STEPHANIE",0x00
ms_potts_cpp_variable_113:
    520b:	53 54 45 46 5f 48 41 4c 4c 5f 45 58 49 54 00 	db     "STEF_HALL_EXIT",0x00
ms_potts_cpp_variable_114:
    521a:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_115:
    5224:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_116:
    522e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    522f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5230:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ms_potts_cpp_variable_117:
    5231:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_118:
    523b:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
ms_potts_cpp_variable_119:
    5245:	4d 52 53 5f 50 4f 54 54 53 00 	db     "MRS_POTTS",0x00
    524f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 44 (D:\SOURCE\ms_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 44: D:\SOURCE\ms_potts.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MRS_POTTSDAM:                                                                                       ; access size: DWORD
   22d24:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_1:                                                                            ; access size: DWORD
   22d28:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_2:                                                                            ; access size: DWORD
   22d2c:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_3:                                                                            ; access size: DWORD
   22d30:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_4:                                                                            ; access size: DWORD
   22d34:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_5:                                                                            ; access size: DWORD
   22d38:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_6:                                                                            ; access size: DWORD
   22d3c:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_7:                                                                            ; access size: DWORD
   22d40:	00 00 00 00          	dd     0x00000000
MRS_POTTSDAM_variable_8:                                                                            ; access size: DWORD
   22d44:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 44 (D:\SOURCE\ms_potts.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------