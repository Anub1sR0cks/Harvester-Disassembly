;-------------------------------------------------------------------------------
;                                                                              -
;  Module 20: D:\SOURCE\mr_johns.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_JOHNSON'                 -
;-------------------------------------------------
talk_to_MR_JOHNSON:
   17dd0:	53                   	push   ebx
   17dd1:	51                   	push   ecx
   17dd2:	52                   	push   edx
   17dd3:	56                   	push   esi
   17dd4:	57                   	push   edi
   17dd5:	55                   	push   ebp
   17dd6:	b8 78 2a 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_1                            ; fixup: num: 2805, src obj: 1, src ofs: 0x17dd7, dst obj: 3, dst ofs: 0x2a78
   17ddb:	e8 b0 49 05 00       	call   check_script_flag
   17de0:	84 c0                	test   al,al
   17de2:	74 14                	je     talk_to_MR_JOHNSON_branch_1
   17de4:	bb 02 00 00 00       	mov    ebx,0x2
   17de9:	ba 8b 2a 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_2                            ; fixup: num: 2804, src obj: 1, src ofs: 0x17dea, dst obj: 3, dst ofs: 0x2a8b
   17dee:	b8 e6 0b 00 00       	mov    eax,0xbe6
   17df3:	e9 fd 09 00 00       	jmp    talk_to_MR_JOHNSON_branch_58
talk_to_MR_JOHNSON_branch_1:
   17df8:	b8 93 2a 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_3                            ; fixup: num: 2803, src obj: 1, src ofs: 0x17df9, dst obj: 3, dst ofs: 0x2a93
   17dfd:	e8 8e 49 05 00       	call   check_script_flag
   17e02:	84 c0                	test   al,al
   17e04:	74 2f                	je     talk_to_MR_JOHNSON_branch_2
   17e06:	83 3d f8 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_1,0x0                 ; fixup: num: 2802, src obj: 1, src ofs: 0x17e08, dst obj: 3, dst ofs: 0x22bf8
   17e0d:	75 26                	jne    talk_to_MR_JOHNSON_branch_2
   17e0f:	bb 02 00 00 00       	mov    ebx,0x2
   17e14:	ba a9 2a 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_4                            ; fixup: num: 2801, src obj: 1, src ofs: 0x17e15, dst obj: 3, dst ofs: 0x2aa9
   17e19:	b8 e0 0b 00 00       	mov    eax,0xbe0
   17e1e:	e8 6d 28 05 00       	call   play_wav
   17e23:	bb 01 00 00 00       	mov    ebx,0x1
   17e28:	31 c0                	xor    eax,eax
   17e2a:	89 1d f8 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_1,ebx                 ; fixup: num: 2800, src obj: 1, src ofs: 0x17e2c, dst obj: 3, dst ofs: 0x22bf8
   17e30:	e9 c7 09 00 00       	jmp    talk_to_MR_JOHNSON_branch_60
talk_to_MR_JOHNSON_branch_2:
   17e35:	b8 b1 2a 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_5                            ; fixup: num: 2799, src obj: 1, src ofs: 0x17e36, dst obj: 3, dst ofs: 0x2ab1
   17e3a:	e8 51 49 05 00       	call   check_script_flag
   17e3f:	84 c0                	test   al,al
   17e41:	74 25                	je     talk_to_MR_JOHNSON_branch_3
   17e43:	bb 02 00 00 00       	mov    ebx,0x2
   17e48:	ba c9 2a 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_6                            ; fixup: num: 2798, src obj: 1, src ofs: 0x17e49, dst obj: 3, dst ofs: 0x2ac9
   17e4d:	b8 e0 0b 00 00       	mov    eax,0xbe0
   17e52:	e8 39 28 05 00       	call   play_wav
   17e57:	b8 d1 2a 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_7                            ; fixup: num: 2797, src obj: 1, src ofs: 0x17e58, dst obj: 3, dst ofs: 0x2ad1
   17e5c:	31 d2                	xor    edx,edx
   17e5e:	e8 7d 49 05 00       	call   set_script_flag
   17e63:	e9 92 09 00 00       	jmp    talk_to_MR_JOHNSON_branch_59
talk_to_MR_JOHNSON_branch_3:
   17e68:	8b 0d bc 94 02 00    	mov    ecx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 2796, src obj: 1, src ofs: 0x17e6a, dst obj: 3, dst ofs: 0x294bc
   17e6e:	85 c9                	test   ecx,ecx
   17e70:	0f 84 41 02 00 00    	je     talk_to_MR_JOHNSON_branch_15
   17e76:	ba e9 2a 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_8                            ; fixup: num: 2795, src obj: 1, src ofs: 0x17e77, dst obj: 3, dst ofs: 0x2ae9
   17e7b:	89 c8                	mov    eax,ecx
   17e7d:	e8 ae e5 05 00       	call   strcmp_
   17e82:	85 c0                	test   eax,eax
   17e84:	75 46                	jne    talk_to_MR_JOHNSON_branch_4
   17e86:	ba 01 00 00 00       	mov    edx,0x1
   17e8b:	bb 01 00 00 00       	mov    ebx,0x1
   17e90:	e8 db 04 01 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   17e95:	ba 01 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_9                            ; fixup: num: 2814, src obj: 1, src ofs: 0x17e96, dst obj: 3, dst ofs: 0x2b01
   17e9a:	b8 75 0b 00 00       	mov    eax,0xb75
   17e9f:	e8 ec 27 05 00       	call   play_wav
   17ea4:	bb 01 00 00 00       	mov    ebx,0x1
   17ea9:	ba 09 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_10                           ; fixup: num: 2813, src obj: 1, src ofs: 0x17eaa, dst obj: 3, dst ofs: 0x2b09
   17eae:	b8 7b 0b 00 00       	mov    eax,0xb7b
   17eb3:	e8 d8 27 05 00       	call   play_wav
   17eb8:	bb 01 00 00 00       	mov    ebx,0x1
   17ebd:	ba 0c 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_11                           ; fixup: num: 2812, src obj: 1, src ofs: 0x17ebe, dst obj: 3, dst ofs: 0x2b0c
   17ec2:	b8 80 0b 00 00       	mov    eax,0xb80
   17ec7:	e9 dd 01 00 00       	jmp    talk_to_MR_JOHNSON_branch_14
talk_to_MR_JOHNSON_branch_4:
   17ecc:	ba 14 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_12                           ; fixup: num: 2811, src obj: 1, src ofs: 0x17ecd, dst obj: 3, dst ofs: 0x2b14
   17ed1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2810, src obj: 1, src ofs: 0x17ed2, dst obj: 3, dst ofs: 0x294bc
   17ed6:	e8 55 e5 05 00       	call   strcmp_
   17edb:	85 c0                	test   eax,eax
   17edd:	74 13                	je     talk_to_MR_JOHNSON_branch_5
   17edf:	ba 21 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_13                           ; fixup: num: 2809, src obj: 1, src ofs: 0x17ee0, dst obj: 3, dst ofs: 0x2b21
   17ee4:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2808, src obj: 1, src ofs: 0x17ee5, dst obj: 3, dst ofs: 0x294bc
   17ee9:	e8 42 e5 05 00       	call   strcmp_
   17eee:	85 c0                	test   eax,eax
   17ef0:	75 65                	jne    talk_to_MR_JOHNSON_branch_6
talk_to_MR_JOHNSON_branch_5:
   17ef2:	ba 01 00 00 00       	mov    edx,0x1
   17ef7:	31 c0                	xor    eax,eax
   17ef9:	bb 01 00 00 00       	mov    ebx,0x1
   17efe:	e8 5d 04 01 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   17f03:	ba 32 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_14                           ; fixup: num: 2807, src obj: 1, src ofs: 0x17f04, dst obj: 3, dst ofs: 0x2b32
   17f08:	b8 89 0b 00 00       	mov    eax,0xb89
   17f0d:	e8 7e 27 05 00       	call   play_wav
   17f12:	b8 01 00 00 00       	mov    eax,0x1
   17f17:	31 d2                	xor    edx,edx
   17f19:	e8 b2 03 01 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   17f1e:	85 c0                	test   eax,eax
   17f20:	0f 84 d4 08 00 00    	je     talk_to_MR_JOHNSON_branch_59
   17f26:	ba 3a 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_15                           ; fixup: num: 2806, src obj: 1, src ofs: 0x17f27, dst obj: 3, dst ofs: 0x2b3a
   17f2b:	b8 90 0b 00 00       	mov    eax,0xb90
   17f30:	31 db                	xor    ebx,ebx
   17f32:	e8 59 27 05 00       	call   play_wav
   17f37:	ba 3d 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_16                           ; fixup: num: 2824, src obj: 1, src ofs: 0x17f38, dst obj: 3, dst ofs: 0x2b3d
   17f3c:	b8 94 0b 00 00       	mov    eax,0xb94
   17f41:	31 db                	xor    ebx,ebx
   17f43:	e8 48 27 05 00       	call   play_wav
   17f48:	ba 45 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_17                           ; fixup: num: 2823, src obj: 1, src ofs: 0x17f49, dst obj: 3, dst ofs: 0x2b45
   17f4d:	b8 99 0b 00 00       	mov    eax,0xb99
   17f52:	e9 50 01 00 00       	jmp    talk_to_MR_JOHNSON_branch_13
talk_to_MR_JOHNSON_branch_6:
   17f57:	ba 4d 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_18                           ; fixup: num: 2822, src obj: 1, src ofs: 0x17f58, dst obj: 3, dst ofs: 0x2b4d
   17f5c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2821, src obj: 1, src ofs: 0x17f5d, dst obj: 3, dst ofs: 0x294bc
   17f61:	e8 ca e4 05 00       	call   strcmp_
   17f66:	85 c0                	test   eax,eax
   17f68:	74 13                	je     talk_to_MR_JOHNSON_branch_7
   17f6a:	ba 54 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_19                           ; fixup: num: 2820, src obj: 1, src ofs: 0x17f6b, dst obj: 3, dst ofs: 0x2b54
   17f6f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2819, src obj: 1, src ofs: 0x17f70, dst obj: 3, dst ofs: 0x294bc
   17f74:	e8 b7 e4 05 00       	call   strcmp_
   17f79:	85 c0                	test   eax,eax
   17f7b:	75 5c                	jne    talk_to_MR_JOHNSON_branch_8
talk_to_MR_JOHNSON_branch_7:
   17f7d:	b8 5c 2b 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_20                           ; fixup: num: 2818, src obj: 1, src ofs: 0x17f7e, dst obj: 3, dst ofs: 0x2b5c
   17f82:	e8 09 48 05 00       	call   check_script_flag
   17f87:	84 c0                	test   al,al
   17f89:	74 4e                	je     talk_to_MR_JOHNSON_branch_8
   17f8b:	ba 01 00 00 00       	mov    edx,0x1
   17f90:	31 c0                	xor    eax,eax
   17f92:	bb 01 00 00 00       	mov    ebx,0x1
   17f97:	e8 b4 03 01 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   17f9c:	ba 6e 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_21                           ; fixup: num: 2817, src obj: 1, src ofs: 0x17f9d, dst obj: 3, dst ofs: 0x2b6e
   17fa1:	b8 a0 0b 00 00       	mov    eax,0xba0
   17fa6:	e8 e5 26 05 00       	call   play_wav
   17fab:	ba 76 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_22                           ; fixup: num: 2816, src obj: 1, src ofs: 0x17fac, dst obj: 3, dst ofs: 0x2b76
   17fb0:	b8 a4 0b 00 00       	mov    eax,0xba4
   17fb5:	31 db                	xor    ebx,ebx
   17fb7:	e8 d4 26 05 00       	call   play_wav
   17fbc:	bb 01 00 00 00       	mov    ebx,0x1
   17fc1:	ba 79 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_23                           ; fixup: num: 2815, src obj: 1, src ofs: 0x17fc2, dst obj: 3, dst ofs: 0x2b79
   17fc6:	b8 a8 0b 00 00       	mov    eax,0xba8
   17fcb:	e8 c0 26 05 00       	call   play_wav
   17fd0:	31 c0                	xor    eax,eax
   17fd2:	5d                   	pop    ebp
   17fd3:	5f                   	pop    edi
   17fd4:	5e                   	pop    esi
   17fd5:	5a                   	pop    edx
   17fd6:	59                   	pop    ecx
   17fd7:	5b                   	pop    ebx
   17fd8:	c3                   	ret    
talk_to_MR_JOHNSON_branch_8:
   17fd9:	ba 81 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_24                           ; fixup: num: 2760, src obj: 1, src ofs: 0x17fda, dst obj: 3, dst ofs: 0x2b81
   17fde:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2759, src obj: 1, src ofs: 0x17fdf, dst obj: 3, dst ofs: 0x294bc
   17fe3:	e8 48 e4 05 00       	call   strcmp_
   17fe8:	85 c0                	test   eax,eax
   17fea:	74 39                	je     talk_to_MR_JOHNSON_branch_9
   17fec:	ba 86 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_25                           ; fixup: num: 2758, src obj: 1, src ofs: 0x17fed, dst obj: 3, dst ofs: 0x2b86
   17ff1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2757, src obj: 1, src ofs: 0x17ff2, dst obj: 3, dst ofs: 0x294bc
   17ff6:	e8 35 e4 05 00       	call   strcmp_
   17ffb:	85 c0                	test   eax,eax
   17ffd:	74 26                	je     talk_to_MR_JOHNSON_branch_9
   17fff:	ba 95 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_26                           ; fixup: num: 3134, src obj: 1, src ofs: 0x18000, dst obj: 3, dst ofs: 0x2b95
   18004:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3133, src obj: 1, src ofs: 0x18005, dst obj: 3, dst ofs: 0x294bc
   18009:	e8 22 e4 05 00       	call   strcmp_
   1800e:	85 c0                	test   eax,eax
   18010:	74 13                	je     talk_to_MR_JOHNSON_branch_9
   18012:	ba 9f 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_27                           ; fixup: num: 3132, src obj: 1, src ofs: 0x18013, dst obj: 3, dst ofs: 0x2b9f
   18017:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3131, src obj: 1, src ofs: 0x18018, dst obj: 3, dst ofs: 0x294bc
   1801c:	e8 0f e4 05 00       	call   strcmp_
   18021:	85 c0                	test   eax,eax
   18023:	75 29                	jne    talk_to_MR_JOHNSON_branch_10
talk_to_MR_JOHNSON_branch_9:
   18025:	ba 01 00 00 00       	mov    edx,0x1
   1802a:	31 c0                	xor    eax,eax
   1802c:	bb 01 00 00 00       	mov    ebx,0x1
   18031:	e8 fa 02 01 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   18036:	ba b3 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_28                           ; fixup: num: 3130, src obj: 1, src ofs: 0x18037, dst obj: 3, dst ofs: 0x2bb3
   1803b:	b8 b1 0b 00 00       	mov    eax,0xbb1
   18040:	e8 4b 26 05 00       	call   play_wav
   18045:	31 c0                	xor    eax,eax
   18047:	5d                   	pop    ebp
   18048:	5f                   	pop    edi
   18049:	5e                   	pop    esi
   1804a:	5a                   	pop    edx
   1804b:	59                   	pop    ecx
   1804c:	5b                   	pop    ebx
   1804d:	c3                   	ret    
talk_to_MR_JOHNSON_branch_10:
   1804e:	ba bb 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_29                           ; fixup: num: 3129, src obj: 1, src ofs: 0x1804f, dst obj: 3, dst ofs: 0x2bbb
   18053:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3128, src obj: 1, src ofs: 0x18054, dst obj: 3, dst ofs: 0x294bc
   18058:	e8 d3 e3 05 00       	call   strcmp_
   1805d:	85 c0                	test   eax,eax
   1805f:	74 13                	je     talk_to_MR_JOHNSON_branch_11
   18061:	ba c3 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_30                           ; fixup: num: 3127, src obj: 1, src ofs: 0x18062, dst obj: 3, dst ofs: 0x2bc3
   18066:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3126, src obj: 1, src ofs: 0x18067, dst obj: 3, dst ofs: 0x294bc
   1806b:	e8 c0 e3 05 00       	call   strcmp_
   18070:	85 c0                	test   eax,eax
   18072:	75 29                	jne    talk_to_MR_JOHNSON_branch_12
talk_to_MR_JOHNSON_branch_11:
   18074:	ba 01 00 00 00       	mov    edx,0x1
   18079:	31 c0                	xor    eax,eax
   1807b:	bb 01 00 00 00       	mov    ebx,0x1
   18080:	e8 bb 02 01 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   18085:	ba d5 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_31                           ; fixup: num: 3144, src obj: 1, src ofs: 0x18086, dst obj: 3, dst ofs: 0x2bd5
   1808a:	b8 ce 0b 00 00       	mov    eax,0xbce
   1808f:	e8 fc 25 05 00       	call   play_wav
   18094:	31 c0                	xor    eax,eax
   18096:	5d                   	pop    ebp
   18097:	5f                   	pop    edi
   18098:	5e                   	pop    esi
   18099:	5a                   	pop    edx
   1809a:	59                   	pop    ecx
   1809b:	5b                   	pop    ebx
   1809c:	c3                   	ret    
talk_to_MR_JOHNSON_branch_12:
   1809d:	ba dd 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_32                           ; fixup: num: 3143, src obj: 1, src ofs: 0x1809e, dst obj: 3, dst ofs: 0x2bdd
   180a2:	b8 6f 0b 00 00       	mov    eax,0xb6f
talk_to_MR_JOHNSON_branch_13:
   180a7:	31 db                	xor    ebx,ebx
talk_to_MR_JOHNSON_branch_14:
   180a9:	e8 e2 25 05 00       	call   play_wav
   180ae:	31 c0                	xor    eax,eax
   180b0:	5d                   	pop    ebp
   180b1:	5f                   	pop    edi
   180b2:	5e                   	pop    esi
   180b3:	5a                   	pop    edx
   180b4:	59                   	pop    ecx
   180b5:	5b                   	pop    ebx
   180b6:	c3                   	ret    
talk_to_MR_JOHNSON_branch_15:
   180b7:	b8 e5 2b 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_33                           ; fixup: num: 3142, src obj: 1, src ofs: 0x180b8, dst obj: 3, dst ofs: 0x2be5
   180bc:	e8 cf 46 05 00       	call   check_script_flag
   180c1:	84 c0                	test   al,al
   180c3:	0f 84 a7 00 00 00    	je     talk_to_MR_JOHNSON_branch_16
   180c9:	83 3d fc 2b 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_2,0x0                 ; fixup: num: 3141, src obj: 1, src ofs: 0x180cb, dst obj: 3, dst ofs: 0x22bfc
   180d0:	0f 85 9a 00 00 00    	jne    talk_to_MR_JOHNSON_branch_16
   180d6:	bd 01 00 00 00       	mov    ebp,0x1
   180db:	bb 02 00 00 00       	mov    ebx,0x2
   180e0:	ba f6 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_34                           ; fixup: num: 3140, src obj: 1, src ofs: 0x180e1, dst obj: 3, dst ofs: 0x2bf6
   180e5:	b8 25 0c 00 00       	mov    eax,0xc25
   180ea:	89 2d fc 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_2,ebp                 ; fixup: num: 3139, src obj: 1, src ofs: 0x180ec, dst obj: 3, dst ofs: 0x22bfc
   180f0:	89 2d f4 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON,ebp                            ; fixup: num: 3138, src obj: 1, src ofs: 0x180f2, dst obj: 3, dst ofs: 0x22bf4
   180f6:	e8 95 25 05 00       	call   play_wav
   180fb:	bb 03 00 00 00       	mov    ebx,0x3
   18100:	ba fe 2b 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_35                           ; fixup: num: 3137, src obj: 1, src ofs: 0x18101, dst obj: 3, dst ofs: 0x2bfe
   18105:	b8 2b 0c 00 00       	mov    eax,0xc2b
   1810a:	e8 81 25 05 00       	call   play_wav
   1810f:	bb 02 00 00 00       	mov    ebx,0x2
   18114:	ba 06 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_36                           ; fixup: num: 3136, src obj: 1, src ofs: 0x18115, dst obj: 3, dst ofs: 0x2c06
   18119:	b8 30 0c 00 00       	mov    eax,0xc30
   1811e:	e8 6d 25 05 00       	call   play_wav
   18123:	b8 0e 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_37                           ; fixup: num: 3135, src obj: 1, src ofs: 0x18124, dst obj: 3, dst ofs: 0x2c0e
   18128:	e8 63 46 05 00       	call   check_script_flag
   1812d:	84 c0                	test   al,al
   1812f:	0f 84 f8 00 00 00    	je     talk_to_MR_JOHNSON_branch_21
   18135:	83 3d 04 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_4,0x0                 ; fixup: num: 3155, src obj: 1, src ofs: 0x18137, dst obj: 3, dst ofs: 0x22c04
   1813c:	0f 85 eb 00 00 00    	jne    talk_to_MR_JOHNSON_branch_21
   18142:	bb 03 00 00 00       	mov    ebx,0x3
   18147:	ba 22 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_38                           ; fixup: num: 3154, src obj: 1, src ofs: 0x18148, dst obj: 3, dst ofs: 0x2c22
   1814c:	b8 5f 0c 00 00       	mov    eax,0xc5f
   18151:	89 2d 04 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_4,ebp                 ; fixup: num: 3153, src obj: 1, src ofs: 0x18153, dst obj: 3, dst ofs: 0x22c04
   18157:	e8 34 25 05 00       	call   play_wav
   1815c:	bb 03 00 00 00       	mov    ebx,0x3
   18161:	ba 2a 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_39                           ; fixup: num: 3152, src obj: 1, src ofs: 0x18162, dst obj: 3, dst ofs: 0x2c2a
   18166:	b8 69 0c 00 00       	mov    eax,0xc69
   1816b:	e9 b8 00 00 00       	jmp    talk_to_MR_JOHNSON_branch_20
talk_to_MR_JOHNSON_branch_16:
   18170:	a1 f4 2b 02 00       	mov    eax,ds:@obj3:MR_JOHNSON                                      ; fixup: num: 3151, src obj: 1, src ofs: 0x18171, dst obj: 3, dst ofs: 0x22bf4
   18175:	85 c0                	test   eax,eax
   18177:	0f 84 9f 00 00 00    	je     talk_to_MR_JOHNSON_branch_19
   1817d:	bb 01 00 00 00       	mov    ebx,0x1
   18182:	ba 32 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_40                           ; fixup: num: 3150, src obj: 1, src ofs: 0x18183, dst obj: 3, dst ofs: 0x2c32
   18187:	31 ff                	xor    edi,edi
   18189:	b8 86 0a 00 00       	mov    eax,0xa86
   1818e:	89 3d f4 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON,edi                            ; fixup: num: 3149, src obj: 1, src ofs: 0x18190, dst obj: 3, dst ofs: 0x22bf4
   18194:	e8 f7 24 05 00       	call   play_wav
   18199:	ba 3a 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_41                           ; fixup: num: 3148, src obj: 1, src ofs: 0x1819a, dst obj: 3, dst ofs: 0x2c3a
   1819e:	b8 8a 0a 00 00       	mov    eax,0xa8a
   181a3:	31 db                	xor    ebx,ebx
   181a5:	e8 e6 24 05 00       	call   play_wav
   181aa:	bb 01 00 00 00       	mov    ebx,0x1
   181af:	ba 3d 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_42                           ; fixup: num: 3147, src obj: 1, src ofs: 0x181b0, dst obj: 3, dst ofs: 0x2c3d
   181b4:	b8 8e 0a 00 00       	mov    eax,0xa8e
   181b9:	e8 d2 24 05 00       	call   play_wav
   181be:	ba 45 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_43                           ; fixup: num: 3146, src obj: 1, src ofs: 0x181bf, dst obj: 3, dst ofs: 0x2c45
   181c3:	b8 97 0a 00 00       	mov    eax,0xa97
   181c8:	31 db                	xor    ebx,ebx
   181ca:	e8 c1 24 05 00       	call   play_wav
   181cf:	ba 48 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_44                           ; fixup: num: 3145, src obj: 1, src ofs: 0x181d0, dst obj: 3, dst ofs: 0x2c48
   181d4:	b8 9b 0a 00 00       	mov    eax,0xa9b
   181d9:	31 db                	xor    ebx,ebx
   181db:	e8 b0 24 05 00       	call   play_wav
   181e0:	ba 01 00 00 00       	mov    edx,0x1
   181e5:	31 c0                	xor    eax,eax
   181e7:	e8 f4 01 01 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   181ec:	b8 76 01 00 00       	mov    eax,0x176
   181f1:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3164, src obj: 1, src ofs: 0x181f2, dst obj: 3, dst ofs: 0x295c0
   181f6:	e8 a5 1f 01 00       	call   GetDlgFileString
   181fb:	89 c6                	mov    esi,eax
   181fd:	57                   	push   edi
talk_to_MR_JOHNSON_branch_17:
   181fe:	8a 06                	mov    al,BYTE PTR [esi]
   18200:	88 07                	mov    BYTE PTR [edi],al
   18202:	3c 00                	cmp    al,0x0
   18204:	74 10                	je     talk_to_MR_JOHNSON_branch_18
   18206:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   18209:	83 c6 02             	add    esi,0x2
   1820c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1820f:	83 c7 02             	add    edi,0x2
   18212:	3c 00                	cmp    al,0x0
   18214:	75 e8                	jne    talk_to_MR_JOHNSON_branch_17
talk_to_MR_JOHNSON_branch_18:
   18216:	5f                   	pop    edi
   18217:	e9 2f 02 00 00       	jmp    talk_to_MR_JOHNSON_branch_29
talk_to_MR_JOHNSON_branch_19:
   1821c:	ba 50 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_45                           ; fixup: num: 3163, src obj: 1, src ofs: 0x1821d, dst obj: 3, dst ofs: 0x2c50
   18221:	b8 62 0b 00 00       	mov    eax,0xb62
   18226:	31 db                	xor    ebx,ebx
talk_to_MR_JOHNSON_branch_20:
   18228:	e8 63 24 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_21:
   1822d:	b8 58 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_46                           ; fixup: num: 3162, src obj: 1, src ofs: 0x1822e, dst obj: 3, dst ofs: 0x2c58
   18232:	e8 59 45 05 00       	call   check_script_flag
   18237:	84 c0                	test   al,al
   18239:	74 50                	je     talk_to_MR_JOHNSON_branch_22
   1823b:	83 3d 00 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_3,0x0                 ; fixup: num: 3161, src obj: 1, src ofs: 0x1823d, dst obj: 3, dst ofs: 0x22c00
   18242:	75 47                	jne    talk_to_MR_JOHNSON_branch_22
   18244:	be 01 00 00 00       	mov    esi,0x1
   18249:	bb 03 00 00 00       	mov    ebx,0x3
   1824e:	ba 6d 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_47                           ; fixup: num: 3160, src obj: 1, src ofs: 0x1824f, dst obj: 3, dst ofs: 0x2c6d
   18253:	b8 f0 0b 00 00       	mov    eax,0xbf0
   18258:	89 35 00 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_3,esi                 ; fixup: num: 3159, src obj: 1, src ofs: 0x1825a, dst obj: 3, dst ofs: 0x22c00
   1825e:	e8 2d 24 05 00       	call   play_wav
   18263:	bb 03 00 00 00       	mov    ebx,0x3
   18268:	ba 75 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_48                           ; fixup: num: 3158, src obj: 1, src ofs: 0x18269, dst obj: 3, dst ofs: 0x2c75
   1826d:	b8 f1 0b 00 00       	mov    eax,0xbf1
   18272:	e8 19 24 05 00       	call   play_wav
   18277:	bb 03 00 00 00       	mov    ebx,0x3
   1827c:	ba 7d 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_49                           ; fixup: num: 3157, src obj: 1, src ofs: 0x1827d, dst obj: 3, dst ofs: 0x2c7d
   18281:	b8 f2 0b 00 00       	mov    eax,0xbf2
   18286:	e8 05 24 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_22:
   1828b:	b8 85 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_50                           ; fixup: num: 3156, src obj: 1, src ofs: 0x1828c, dst obj: 3, dst ofs: 0x2c85
   18290:	e8 fb 44 05 00       	call   check_script_flag
   18295:	84 c0                	test   al,al
   18297:	74 3f                	je     talk_to_MR_JOHNSON_branch_23
   18299:	83 3d 08 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_5,0x0                 ; fixup: num: 3176, src obj: 1, src ofs: 0x1829b, dst obj: 3, dst ofs: 0x22c08
   182a0:	75 36                	jne    talk_to_MR_JOHNSON_branch_23
   182a2:	bd 01 00 00 00       	mov    ebp,0x1
   182a7:	31 c0                	xor    eax,eax
   182a9:	31 db                	xor    ebx,ebx
   182ab:	89 ea                	mov    edx,ebp
   182ad:	89 2d 08 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_5,ebp                 ; fixup: num: 3175, src obj: 1, src ofs: 0x182af, dst obj: 3, dst ofs: 0x22c08
   182b3:	e8 98 ff 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   182b8:	ba 94 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_51                           ; fixup: num: 3174, src obj: 1, src ofs: 0x182b9, dst obj: 3, dst ofs: 0x2c94
   182bd:	b8 ff 0b 00 00       	mov    eax,0xbff
   182c2:	e8 c9 23 05 00       	call   play_wav
   182c7:	ba 9c 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_52                           ; fixup: num: 3173, src obj: 1, src ofs: 0x182c8, dst obj: 3, dst ofs: 0x2c9c
   182cc:	b8 06 0c 00 00       	mov    eax,0xc06
   182d1:	31 db                	xor    ebx,ebx
   182d3:	e8 b8 23 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_23:
   182d8:	b8 a4 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_53                           ; fixup: num: 3172, src obj: 1, src ofs: 0x182d9, dst obj: 3, dst ofs: 0x2ca4
   182dd:	e8 ae 44 05 00       	call   check_script_flag
   182e2:	84 c0                	test   al,al
   182e4:	74 36                	je     talk_to_MR_JOHNSON_branch_24
   182e6:	83 3d 0c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_6,0x0                 ; fixup: num: 3171, src obj: 1, src ofs: 0x182e8, dst obj: 3, dst ofs: 0x22c0c
   182ed:	75 2d                	jne    talk_to_MR_JOHNSON_branch_24
   182ef:	ba 01 00 00 00       	mov    edx,0x1
   182f4:	b8 13 0c 00 00       	mov    eax,0xc13
   182f9:	89 15 0c 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_6,edx                 ; fixup: num: 3170, src obj: 1, src ofs: 0x182fb, dst obj: 3, dst ofs: 0x22c0c
   182ff:	89 d3                	mov    ebx,edx
   18301:	ba b6 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_54                           ; fixup: num: 3169, src obj: 1, src ofs: 0x18302, dst obj: 3, dst ofs: 0x2cb6
   18306:	e8 85 23 05 00       	call   play_wav
   1830b:	ba be 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_55                           ; fixup: num: 3168, src obj: 1, src ofs: 0x1830c, dst obj: 3, dst ofs: 0x2cbe
   18310:	b8 17 0c 00 00       	mov    eax,0xc17
   18315:	31 db                	xor    ebx,ebx
   18317:	e8 74 23 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_24:
   1831c:	b8 c6 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_56                           ; fixup: num: 3167, src obj: 1, src ofs: 0x1831d, dst obj: 3, dst ofs: 0x2cc6
   18321:	e8 6a 44 05 00       	call   check_script_flag
   18326:	84 c0                	test   al,al
   18328:	74 50                	je     talk_to_MR_JOHNSON_branch_25
   1832a:	83 3d 10 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_7,0x0                 ; fixup: num: 3166, src obj: 1, src ofs: 0x1832c, dst obj: 3, dst ofs: 0x22c10
   18331:	75 47                	jne    talk_to_MR_JOHNSON_branch_25
   18333:	b9 01 00 00 00       	mov    ecx,0x1
   18338:	bb 03 00 00 00       	mov    ebx,0x3
   1833d:	ba d9 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_57                           ; fixup: num: 3165, src obj: 1, src ofs: 0x1833e, dst obj: 3, dst ofs: 0x2cd9
   18342:	b8 46 0c 00 00       	mov    eax,0xc46
   18347:	89 0d 10 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_7,ecx                 ; fixup: num: 3188, src obj: 1, src ofs: 0x18349, dst obj: 3, dst ofs: 0x22c10
   1834d:	e8 3e 23 05 00       	call   play_wav
   18352:	bb 03 00 00 00       	mov    ebx,0x3
   18357:	ba e1 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_58                           ; fixup: num: 3187, src obj: 1, src ofs: 0x18358, dst obj: 3, dst ofs: 0x2ce1
   1835c:	b8 4d 0c 00 00       	mov    eax,0xc4d
   18361:	e8 2a 23 05 00       	call   play_wav
   18366:	bb 03 00 00 00       	mov    ebx,0x3
   1836b:	ba e9 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_59                           ; fixup: num: 3186, src obj: 1, src ofs: 0x1836c, dst obj: 3, dst ofs: 0x2ce9
   18370:	b8 59 0c 00 00       	mov    eax,0xc59
   18375:	e8 16 23 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_25:
   1837a:	b8 f1 2c 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_60                           ; fixup: num: 3185, src obj: 1, src ofs: 0x1837b, dst obj: 3, dst ofs: 0x2cf1
   1837f:	e8 0c 44 05 00       	call   check_script_flag
   18384:	84 c0                	test   al,al
   18386:	74 28                	je     talk_to_MR_JOHNSON_branch_26
   18388:	83 3d 18 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_9,0x0                 ; fixup: num: 3184, src obj: 1, src ofs: 0x1838a, dst obj: 3, dst ofs: 0x22c18
   1838f:	75 1f                	jne    talk_to_MR_JOHNSON_branch_26
   18391:	bf 01 00 00 00       	mov    edi,0x1
   18396:	bb 03 00 00 00       	mov    ebx,0x3
   1839b:	ba fe 2c 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_61                           ; fixup: num: 3183, src obj: 1, src ofs: 0x1839c, dst obj: 3, dst ofs: 0x2cfe
   183a0:	b8 6f 0c 00 00       	mov    eax,0xc6f
   183a5:	89 3d 18 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_9,edi                 ; fixup: num: 3182, src obj: 1, src ofs: 0x183a7, dst obj: 3, dst ofs: 0x22c18
   183ab:	e8 e0 22 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_26:
   183b0:	b8 06 2d 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_62                           ; fixup: num: 3181, src obj: 1, src ofs: 0x183b1, dst obj: 3, dst ofs: 0x2d06
   183b5:	e8 d6 43 05 00       	call   check_script_flag
   183ba:	84 c0                	test   al,al
   183bc:	74 27                	je     talk_to_MR_JOHNSON_branch_27
   183be:	83 3d 1c 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_10,0x0                ; fixup: num: 3180, src obj: 1, src ofs: 0x183c0, dst obj: 3, dst ofs: 0x22c1c
   183c5:	75 1e                	jne    talk_to_MR_JOHNSON_branch_27
   183c7:	b8 01 00 00 00       	mov    eax,0x1
   183cc:	bb 02 00 00 00       	mov    ebx,0x2
   183d1:	ba 16 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_63                           ; fixup: num: 3179, src obj: 1, src ofs: 0x183d2, dst obj: 3, dst ofs: 0x2d16
   183d6:	a3 1c 2c 02 00       	mov    ds:@obj3:MR_JOHNSON_variable_10,eax                          ; fixup: num: 3178, src obj: 1, src ofs: 0x183d7, dst obj: 3, dst ofs: 0x22c1c
   183db:	b8 77 0c 00 00       	mov    eax,0xc77
   183e0:	e8 ab 22 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_27:
   183e5:	b8 1e 2d 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_64                           ; fixup: num: 3177, src obj: 1, src ofs: 0x183e6, dst obj: 3, dst ofs: 0x2d1e
   183ea:	e8 a1 43 05 00       	call   check_script_flag
   183ef:	84 c0                	test   al,al
   183f1:	74 25                	je     talk_to_MR_JOHNSON_branch_28
   183f3:	83 3d 20 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_11,0x0                ; fixup: num: 3069, src obj: 1, src ofs: 0x183f5, dst obj: 3, dst ofs: 0x22c20
   183fa:	75 1c                	jne    talk_to_MR_JOHNSON_branch_28
   183fc:	bb 01 00 00 00       	mov    ebx,0x1
   18401:	ba 34 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_65                           ; fixup: num: 3068, src obj: 1, src ofs: 0x18402, dst obj: 3, dst ofs: 0x2d34
   18406:	b8 7f 0c 00 00       	mov    eax,0xc7f
   1840b:	89 1d 20 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_11,ebx                ; fixup: num: 3067, src obj: 1, src ofs: 0x1840d, dst obj: 3, dst ofs: 0x22c20
   18411:	31 db                	xor    ebx,ebx
   18413:	e8 78 22 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_28:
   18418:	b8 3c 2d 00 00       	mov    eax,@obj3:mr_johns_cpp_variable_66                           ; fixup: num: 3066, src obj: 1, src ofs: 0x18419, dst obj: 3, dst ofs: 0x2d3c
   1841d:	e8 6e 43 05 00       	call   check_script_flag
   18422:	84 c0                	test   al,al
   18424:	74 25                	je     talk_to_MR_JOHNSON_branch_29
   18426:	83 3d 14 2c 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_JOHNSON_variable_8,0x0                 ; fixup: num: 3065, src obj: 1, src ofs: 0x18428, dst obj: 3, dst ofs: 0x22c14
   1842d:	75 1c                	jne    talk_to_MR_JOHNSON_branch_29
   1842f:	be 01 00 00 00       	mov    esi,0x1
   18434:	ba 4e 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_67                           ; fixup: num: 3064, src obj: 1, src ofs: 0x18435, dst obj: 3, dst ofs: 0x2d4e
   18439:	b8 8f 0c 00 00       	mov    eax,0xc8f
   1843e:	31 db                	xor    ebx,ebx
   18440:	89 35 14 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_8,esi                 ; fixup: num: 3063, src obj: 1, src ofs: 0x18442, dst obj: 3, dst ofs: 0x22c14
   18446:	e8 45 22 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_29:
   1844b:	be 56 2d 00 00       	mov    esi,@obj3:mr_johns_cpp_variable_68                           ; fixup: num: 3062, src obj: 1, src ofs: 0x1844c, dst obj: 3, dst ofs: 0x2d56
   18450:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 3190, src obj: 1, src ofs: 0x18451, dst obj: 3, dst ofs: 0x294c0
   18455:	57                   	push   edi
talk_to_MR_JOHNSON_branch_30:
   18456:	8a 06                	mov    al,BYTE PTR [esi]
   18458:	88 07                	mov    BYTE PTR [edi],al
   1845a:	3c 00                	cmp    al,0x0
   1845c:	74 10                	je     talk_to_MR_JOHNSON_branch_31
   1845e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   18461:	83 c6 02             	add    esi,0x2
   18464:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   18467:	83 c7 02             	add    edi,0x2
   1846a:	3c 00                	cmp    al,0x0
   1846c:	75 e8                	jne    talk_to_MR_JOHNSON_branch_30
talk_to_MR_JOHNSON_branch_31:
   1846e:	5f                   	pop    edi
   1846f:	89 fd                	mov    ebp,edi
   18471:	31 c9                	xor    ecx,ecx
talk_to_MR_JOHNSON_branch_32:
   18473:	b8 77 01 00 00       	mov    eax,0x177
   18478:	e8 23 1d 01 00       	call   GetDlgFileString
   1847d:	89 c2                	mov    edx,eax
   1847f:	89 e8                	mov    eax,ebp
   18481:	e8 d4 8f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   18486:	85 c0                	test   eax,eax
   18488:	0f 84 58 03 00 00    	je     talk_to_MR_JOHNSON_branch_57
   1848e:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 3189, src obj: 1, src ofs: 0x1848f, dst obj: 3, dst ofs: 0x295c0
   18493:	e8 a8 35 05 00       	call   show_keywords
   18498:	b8 78 01 00 00       	mov    eax,0x178
   1849d:	e8 fe 1c 01 00       	call   GetDlgFileString
   184a2:	89 c2                	mov    edx,eax
   184a4:	89 e8                	mov    eax,ebp
   184a6:	e8 af 8f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   184ab:	85 c0                	test   eax,eax
   184ad:	74 1b                	je     talk_to_MR_JOHNSON_branch_33
   184af:	b8 79 01 00 00       	mov    eax,0x179
   184b4:	e8 e7 1c 01 00       	call   GetDlgFileString
   184b9:	89 c2                	mov    edx,eax
   184bb:	89 e8                	mov    eax,ebp
   184bd:	e8 98 8f 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   184c2:	85 c0                	test   eax,eax
   184c4:	0f 85 b2 00 00 00    	jne    talk_to_MR_JOHNSON_branch_39
talk_to_MR_JOHNSON_branch_33:
   184ca:	ba 57 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_69                           ; fixup: num: 3075, src obj: 1, src ofs: 0x184cb, dst obj: 3, dst ofs: 0x2d57
   184cf:	b8 a6 0a 00 00       	mov    eax,0xaa6
   184d4:	89 cb                	mov    ebx,ecx
   184d6:	e8 b5 21 05 00       	call   play_wav
   184db:	b8 7a 01 00 00       	mov    eax,0x17a
   184e0:	e8 bb 1c 01 00       	call   GetDlgFileString
   184e5:	e8 26 2a 05 00       	call   get_response
   184ea:	83 f8 01             	cmp    eax,0x1
   184ed:	75 11                	jne    talk_to_MR_JOHNSON_branch_34
   184ef:	bb 02 00 00 00       	mov    ebx,0x2
   184f4:	ba 5f 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_70                           ; fixup: num: 3074, src obj: 1, src ofs: 0x184f5, dst obj: 3, dst ofs: 0x2d5f
   184f9:	b8 b4 0a 00 00       	mov    eax,0xab4
   184fe:	eb 11                	jmp    talk_to_MR_JOHNSON_branch_35
talk_to_MR_JOHNSON_branch_34:
   18500:	83 f8 02             	cmp    eax,0x2
   18503:	75 11                	jne    talk_to_MR_JOHNSON_branch_36
   18505:	ba 67 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_71                           ; fixup: num: 3073, src obj: 1, src ofs: 0x18506, dst obj: 3, dst ofs: 0x2d67
   1850a:	b8 b9 0a 00 00       	mov    eax,0xab9
   1850f:	89 cb                	mov    ebx,ecx
talk_to_MR_JOHNSON_branch_35:
   18511:	e8 7a 21 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_36:
   18516:	ba 6f 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_72                           ; fixup: num: 3072, src obj: 1, src ofs: 0x18517, dst obj: 3, dst ofs: 0x2d6f
   1851b:	b8 bd 0a 00 00       	mov    eax,0xabd
   18520:	89 cb                	mov    ebx,ecx
   18522:	e8 69 21 05 00       	call   play_wav
   18527:	ba 77 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_73                           ; fixup: num: 3071, src obj: 1, src ofs: 0x18528, dst obj: 3, dst ofs: 0x2d77
   1852c:	b8 c3 0a 00 00       	mov    eax,0xac3
   18531:	89 cb                	mov    ebx,ecx
   18533:	e8 58 21 05 00       	call   play_wav
   18538:	bb 02 00 00 00       	mov    ebx,0x2
   1853d:	ba 7a 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_74                           ; fixup: num: 3070, src obj: 1, src ofs: 0x1853e, dst obj: 3, dst ofs: 0x2d7a
   18542:	b8 c7 0a 00 00       	mov    eax,0xac7
   18547:	e8 44 21 05 00       	call   play_wav
   1854c:	b8 7b 01 00 00       	mov    eax,0x17b
   18551:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3080, src obj: 1, src ofs: 0x18552, dst obj: 3, dst ofs: 0x295c0
   18556:	e8 45 1c 01 00       	call   GetDlgFileString
   1855b:	89 c6                	mov    esi,eax
   1855d:	57                   	push   edi
talk_to_MR_JOHNSON_branch_37:
   1855e:	8a 06                	mov    al,BYTE PTR [esi]
   18560:	88 07                	mov    BYTE PTR [edi],al
   18562:	3c 00                	cmp    al,0x0
   18564:	74 10                	je     talk_to_MR_JOHNSON_branch_38
   18566:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   18569:	83 c6 02             	add    esi,0x2
   1856c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1856f:	83 c7 02             	add    edi,0x2
   18572:	3c 00                	cmp    al,0x0
   18574:	75 e8                	jne    talk_to_MR_JOHNSON_branch_37
talk_to_MR_JOHNSON_branch_38:
   18576:	5f                   	pop    edi
   18577:	e9 f7 fe ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_39:
   1857c:	b8 7c 01 00 00       	mov    eax,0x17c
   18581:	e8 1a 1c 01 00       	call   GetDlgFileString
   18586:	89 c2                	mov    edx,eax
   18588:	89 e8                	mov    eax,ebp
   1858a:	e8 cb 8e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1858f:	85 c0                	test   eax,eax
   18591:	75 66                	jne    talk_to_MR_JOHNSON_branch_42
   18593:	ba 82 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_75                           ; fixup: num: 3079, src obj: 1, src ofs: 0x18594, dst obj: 3, dst ofs: 0x2d82
   18598:	b8 17 0b 00 00       	mov    eax,0xb17
   1859d:	89 cb                	mov    ebx,ecx
   1859f:	e8 ec 20 05 00       	call   play_wav
   185a4:	ba 8a 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_76                           ; fixup: num: 3078, src obj: 1, src ofs: 0x185a5, dst obj: 3, dst ofs: 0x2d8a
   185a9:	b8 1c 0b 00 00       	mov    eax,0xb1c
   185ae:	89 cb                	mov    ebx,ecx
   185b0:	e8 db 20 05 00       	call   play_wav
   185b5:	bb 01 00 00 00       	mov    ebx,0x1
   185ba:	ba 8d 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_77                           ; fixup: num: 3077, src obj: 1, src ofs: 0x185bb, dst obj: 3, dst ofs: 0x2d8d
   185bf:	b8 20 0b 00 00       	mov    eax,0xb20
   185c4:	e8 c7 20 05 00       	call   play_wav
   185c9:	b8 7d 01 00 00       	mov    eax,0x17d
   185ce:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3076, src obj: 1, src ofs: 0x185cf, dst obj: 3, dst ofs: 0x295c0
   185d3:	e8 c8 1b 01 00       	call   GetDlgFileString
   185d8:	89 c6                	mov    esi,eax
   185da:	57                   	push   edi
talk_to_MR_JOHNSON_branch_40:
   185db:	8a 06                	mov    al,BYTE PTR [esi]
   185dd:	88 07                	mov    BYTE PTR [edi],al
   185df:	3c 00                	cmp    al,0x0
   185e1:	74 10                	je     talk_to_MR_JOHNSON_branch_41
   185e3:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   185e6:	83 c6 02             	add    esi,0x2
   185e9:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   185ec:	83 c7 02             	add    edi,0x2
   185ef:	3c 00                	cmp    al,0x0
   185f1:	75 e8                	jne    talk_to_MR_JOHNSON_branch_40
talk_to_MR_JOHNSON_branch_41:
   185f3:	5f                   	pop    edi
   185f4:	e9 7a fe ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_42:
   185f9:	b8 7e 01 00 00       	mov    eax,0x17e
   185fe:	e8 9d 1b 01 00       	call   GetDlgFileString
   18603:	89 c2                	mov    edx,eax
   18605:	89 e8                	mov    eax,ebp
   18607:	e8 4e 8e 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1860c:	85 c0                	test   eax,eax
   1860e:	75 44                	jne    talk_to_MR_JOHNSON_branch_45
   18610:	bb 02 00 00 00       	mov    ebx,0x2
   18615:	ba 95 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_78                           ; fixup: num: 3083, src obj: 1, src ofs: 0x18616, dst obj: 3, dst ofs: 0x2d95
   1861a:	b8 2d 0b 00 00       	mov    eax,0xb2d
   1861f:	e8 6c 20 05 00       	call   play_wav
   18624:	b8 7f 01 00 00       	mov    eax,0x17f
   18629:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3082, src obj: 1, src ofs: 0x1862a, dst obj: 3, dst ofs: 0x295c0
   1862e:	e8 6d 1b 01 00       	call   GetDlgFileString
   18633:	89 c6                	mov    esi,eax
   18635:	57                   	push   edi
talk_to_MR_JOHNSON_branch_43:
   18636:	8a 06                	mov    al,BYTE PTR [esi]
   18638:	88 07                	mov    BYTE PTR [edi],al
   1863a:	3c 00                	cmp    al,0x0
   1863c:	74 10                	je     talk_to_MR_JOHNSON_branch_44
   1863e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   18641:	83 c6 02             	add    esi,0x2
   18644:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   18647:	83 c7 02             	add    edi,0x2
   1864a:	3c 00                	cmp    al,0x0
   1864c:	75 e8                	jne    talk_to_MR_JOHNSON_branch_43
talk_to_MR_JOHNSON_branch_44:
   1864e:	5f                   	pop    edi
   1864f:	e9 1f fe ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_45:
   18654:	b8 80 01 00 00       	mov    eax,0x180
   18659:	e8 42 1b 01 00       	call   GetDlgFileString
   1865e:	89 c2                	mov    edx,eax
   18660:	89 e8                	mov    eax,ebp
   18662:	e8 f3 8d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   18667:	85 c0                	test   eax,eax
   18669:	74 2e                	je     talk_to_MR_JOHNSON_branch_46
   1866b:	b8 81 01 00 00       	mov    eax,0x181
   18670:	e8 2b 1b 01 00       	call   GetDlgFileString
   18675:	89 c2                	mov    edx,eax
   18677:	89 e8                	mov    eax,ebp
   18679:	e8 dc 8d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1867e:	85 c0                	test   eax,eax
   18680:	74 17                	je     talk_to_MR_JOHNSON_branch_46
   18682:	b8 82 01 00 00       	mov    eax,0x182
   18687:	e8 14 1b 01 00       	call   GetDlgFileString
   1868c:	89 c2                	mov    edx,eax
   1868e:	89 e8                	mov    eax,ebp
   18690:	e8 c5 8d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   18695:	85 c0                	test   eax,eax
   18697:	75 41                	jne    talk_to_MR_JOHNSON_branch_49
talk_to_MR_JOHNSON_branch_46:
   18699:	ba 9d 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_79                           ; fixup: num: 3081, src obj: 1, src ofs: 0x1869a, dst obj: 3, dst ofs: 0x2d9d
   1869e:	b8 3a 0b 00 00       	mov    eax,0xb3a
   186a3:	89 cb                	mov    ebx,ecx
   186a5:	e8 e6 1f 05 00       	call   play_wav
   186aa:	b8 83 01 00 00       	mov    eax,0x183
   186af:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3086, src obj: 1, src ofs: 0x186b0, dst obj: 3, dst ofs: 0x295c0
   186b4:	e8 e7 1a 01 00       	call   GetDlgFileString
   186b9:	89 c6                	mov    esi,eax
   186bb:	57                   	push   edi
talk_to_MR_JOHNSON_branch_47:
   186bc:	8a 06                	mov    al,BYTE PTR [esi]
   186be:	88 07                	mov    BYTE PTR [edi],al
   186c0:	3c 00                	cmp    al,0x0
   186c2:	74 10                	je     talk_to_MR_JOHNSON_branch_48
   186c4:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   186c7:	83 c6 02             	add    esi,0x2
   186ca:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   186cd:	83 c7 02             	add    edi,0x2
   186d0:	3c 00                	cmp    al,0x0
   186d2:	75 e8                	jne    talk_to_MR_JOHNSON_branch_47
talk_to_MR_JOHNSON_branch_48:
   186d4:	5f                   	pop    edi
   186d5:	e9 99 fd ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_49:
   186da:	b8 84 01 00 00       	mov    eax,0x184
   186df:	e8 bc 1a 01 00       	call   GetDlgFileString
   186e4:	89 c2                	mov    edx,eax
   186e6:	89 e8                	mov    eax,ebp
   186e8:	e8 6d 8d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   186ed:	85 c0                	test   eax,eax
   186ef:	74 17                	je     talk_to_MR_JOHNSON_branch_50
   186f1:	b8 85 01 00 00       	mov    eax,0x185
   186f6:	e8 a5 1a 01 00       	call   GetDlgFileString
   186fb:	89 c2                	mov    edx,eax
   186fd:	89 e8                	mov    eax,ebp
   186ff:	e8 56 8d 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   18704:	85 c0                	test   eax,eax
   18706:	75 41                	jne    talk_to_MR_JOHNSON_branch_53
talk_to_MR_JOHNSON_branch_50:
   18708:	ba a5 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_80                           ; fixup: num: 3085, src obj: 1, src ofs: 0x18709, dst obj: 3, dst ofs: 0x2da5
   1870d:	b8 46 0b 00 00       	mov    eax,0xb46
   18712:	89 cb                	mov    ebx,ecx
   18714:	e8 77 1f 05 00       	call   play_wav
   18719:	b8 86 01 00 00       	mov    eax,0x186
   1871e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3084, src obj: 1, src ofs: 0x1871f, dst obj: 3, dst ofs: 0x295c0
   18723:	e8 78 1a 01 00       	call   GetDlgFileString
   18728:	89 c6                	mov    esi,eax
   1872a:	57                   	push   edi
talk_to_MR_JOHNSON_branch_51:
   1872b:	8a 06                	mov    al,BYTE PTR [esi]
   1872d:	88 07                	mov    BYTE PTR [edi],al
   1872f:	3c 00                	cmp    al,0x0
   18731:	74 10                	je     talk_to_MR_JOHNSON_branch_52
   18733:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   18736:	83 c6 02             	add    esi,0x2
   18739:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1873c:	83 c7 02             	add    edi,0x2
   1873f:	3c 00                	cmp    al,0x0
   18741:	75 e8                	jne    talk_to_MR_JOHNSON_branch_51
talk_to_MR_JOHNSON_branch_52:
   18743:	5f                   	pop    edi
   18744:	e9 2a fd ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_53:
   18749:	b8 87 01 00 00       	mov    eax,0x187
   1874e:	e8 4d 1a 01 00       	call   GetDlgFileString
   18753:	89 c2                	mov    edx,eax
   18755:	89 e8                	mov    eax,ebp
   18757:	e8 fe 8c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1875c:	85 c0                	test   eax,eax
   1875e:	75 55                	jne    talk_to_MR_JOHNSON_branch_56
   18760:	ba ad 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_81                           ; fixup: num: 3091, src obj: 1, src ofs: 0x18761, dst obj: 3, dst ofs: 0x2dad
   18765:	b8 52 0b 00 00       	mov    eax,0xb52
   1876a:	89 cb                	mov    ebx,ecx
   1876c:	e8 1f 1f 05 00       	call   play_wav
   18771:	bb 02 00 00 00       	mov    ebx,0x2
   18776:	ba b0 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_82                           ; fixup: num: 3090, src obj: 1, src ofs: 0x18777, dst obj: 3, dst ofs: 0x2db0
   1877b:	b8 56 0b 00 00       	mov    eax,0xb56
   18780:	e8 0b 1f 05 00       	call   play_wav
   18785:	b8 88 01 00 00       	mov    eax,0x188
   1878a:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 3089, src obj: 1, src ofs: 0x1878b, dst obj: 3, dst ofs: 0x295c0
   1878f:	e8 0c 1a 01 00       	call   GetDlgFileString
   18794:	89 c6                	mov    esi,eax
   18796:	57                   	push   edi
talk_to_MR_JOHNSON_branch_54:
   18797:	8a 06                	mov    al,BYTE PTR [esi]
   18799:	88 07                	mov    BYTE PTR [edi],al
   1879b:	3c 00                	cmp    al,0x0
   1879d:	74 10                	je     talk_to_MR_JOHNSON_branch_55
   1879f:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   187a2:	83 c6 02             	add    esi,0x2
   187a5:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   187a8:	83 c7 02             	add    edi,0x2
   187ab:	3c 00                	cmp    al,0x0
   187ad:	75 e8                	jne    talk_to_MR_JOHNSON_branch_54
talk_to_MR_JOHNSON_branch_55:
   187af:	5f                   	pop    edi
   187b0:	e9 be fc ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_56:
   187b5:	b8 89 01 00 00       	mov    eax,0x189
   187ba:	e8 e1 19 01 00       	call   GetDlgFileString
   187bf:	89 c2                	mov    edx,eax
   187c1:	89 e8                	mov    eax,ebp
   187c3:	e8 92 8c 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   187c8:	85 c0                	test   eax,eax
   187ca:	0f 84 a3 fc ff ff    	je     talk_to_MR_JOHNSON_branch_32
   187d0:	ba b8 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_83                           ; fixup: num: 3088, src obj: 1, src ofs: 0x187d1, dst obj: 3, dst ofs: 0x2db8
   187d5:	b8 69 0b 00 00       	mov    eax,0xb69
   187da:	89 cb                	mov    ebx,ecx
   187dc:	e8 af 1e 05 00       	call   play_wav
   187e1:	e9 8d fc ff ff       	jmp    talk_to_MR_JOHNSON_branch_32
talk_to_MR_JOHNSON_branch_57:
   187e6:	bb 01 00 00 00       	mov    ebx,0x1
   187eb:	ba c0 2d 00 00       	mov    edx,@obj3:mr_johns_cpp_variable_84                           ; fixup: num: 3087, src obj: 1, src ofs: 0x187ec, dst obj: 3, dst ofs: 0x2dc0
   187f0:	b8 da 0b 00 00       	mov    eax,0xbda
talk_to_MR_JOHNSON_branch_58:
   187f5:	e8 96 1e 05 00       	call   play_wav
talk_to_MR_JOHNSON_branch_59:
   187fa:	31 c0                	xor    eax,eax
talk_to_MR_JOHNSON_branch_60:
   187fc:	5d                   	pop    ebp
   187fd:	5f                   	pop    edi
   187fe:	5e                   	pop    esi
   187ff:	5a                   	pop    edx
   18800:	59                   	pop    ecx
   18801:	5b                   	pop    ebx
   18802:	c3                   	ret    
talk_to_MR_JOHNSON_branch_61:
   18803:	89 15 f4 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON,edx                            ; fixup: num: 3106, src obj: 1, src ofs: 0x18805, dst obj: 3, dst ofs: 0x22bf4
   18809:	a1 f4 2b 02 00       	mov    eax,ds:@obj3:MR_JOHNSON                                      ; fixup: num: 3105, src obj: 1, src ofs: 0x1880a, dst obj: 3, dst ofs: 0x22bf4
   1880e:	c3                   	ret    
   1880f:	90                   	nop

;-------------------------------------------------
;  Function 'MR_JOHNSON_FIRST_CONVERSATION'      -
;-------------------------------------------------
MR_JOHNSON_FIRST_CONVERSATION:
   18810:	85 c0                	test   eax,eax
   18812:	74 ef                	je     talk_to_MR_JOHNSON_branch_61
   18814:	a1 f4 2b 02 00       	mov    eax,ds:@obj3:MR_JOHNSON                                      ; fixup: num: 3104, src obj: 1, src ofs: 0x18815, dst obj: 3, dst ofs: 0x22bf4
   18819:	c3                   	ret    
   1881a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_JOHNSON_initialize'              -
;-------------------------------------------------
MR_JOHNSON_initialize:
   18820:	53                   	push   ebx
   18821:	52                   	push   edx
   18822:	ba 01 00 00 00       	mov    edx,0x1
   18827:	31 db                	xor    ebx,ebx
   18829:	89 15 f4 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON,edx                            ; fixup: num: 3103, src obj: 1, src ofs: 0x1882b, dst obj: 3, dst ofs: 0x22bf4
   1882f:	89 1d fc 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_2,ebx                 ; fixup: num: 3102, src obj: 1, src ofs: 0x18831, dst obj: 3, dst ofs: 0x22bfc
   18835:	89 1d 00 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_3,ebx                 ; fixup: num: 3101, src obj: 1, src ofs: 0x18837, dst obj: 3, dst ofs: 0x22c00
   1883b:	89 1d 04 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_4,ebx                 ; fixup: num: 3100, src obj: 1, src ofs: 0x1883d, dst obj: 3, dst ofs: 0x22c04
   18841:	89 1d 08 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_5,ebx                 ; fixup: num: 3099, src obj: 1, src ofs: 0x18843, dst obj: 3, dst ofs: 0x22c08
   18847:	89 1d 0c 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_6,ebx                 ; fixup: num: 3098, src obj: 1, src ofs: 0x18849, dst obj: 3, dst ofs: 0x22c0c
   1884d:	89 1d 10 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_7,ebx                 ; fixup: num: 3097, src obj: 1, src ofs: 0x1884f, dst obj: 3, dst ofs: 0x22c10
   18853:	89 1d 14 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_8,ebx                 ; fixup: num: 3096, src obj: 1, src ofs: 0x18855, dst obj: 3, dst ofs: 0x22c14
   18859:	89 1d 18 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_9,ebx                 ; fixup: num: 3095, src obj: 1, src ofs: 0x1885b, dst obj: 3, dst ofs: 0x22c18
   1885f:	89 1d 1c 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_10,ebx                ; fixup: num: 3094, src obj: 1, src ofs: 0x18861, dst obj: 3, dst ofs: 0x22c1c
   18865:	89 1d 20 2c 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_11,ebx                ; fixup: num: 3093, src obj: 1, src ofs: 0x18867, dst obj: 3, dst ofs: 0x22c20
   1886b:	89 1d f8 2b 02 00    	mov    DWORD PTR ds:@obj3:MR_JOHNSON_variable_1,ebx                 ; fixup: num: 3092, src obj: 1, src ofs: 0x1886d, dst obj: 3, dst ofs: 0x22bf8
   18871:	5a                   	pop    edx
   18872:	5b                   	pop    ebx
   18873:	c3                   	ret    
;-------------------------------------------------
;  Bad code 19 (zero after ret):                 -
;-------------------------------------------------
;  18872:	5b                   	pop    ebx
;  18873:	c3                   	ret    
;  18874:	00 00                	add    BYTE PTR [eax],al
;  18876:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (12 bytes):                      -
;-------------------------------------------------
   18874:	00 00 00 00 00 00 .. 	db     12 dup(0x00)
;-------------------------------------------------
;  End of bad code 19                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 20 (D:\SOURCE\mr_johns.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 20: D:\SOURCE\mr_johns.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_johns_cpp_variable_1:
    2a78:	32 4e 44 5f 53 43 52 41 54 43 48 5f 54 55 43 4b 45 52 00 	db     "2ND_SCRATCH_TUCKER",0x00
mr_johns_cpp_variable_2:
    2a8b:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_3:
    2a93:	54 52 59 5f 54 4f 5f 53 43 52 41 54 43 48 5f 54 55 43 4b 45 52 00 	db     "TRY_TO_SCRATCH_TUCKER",0x00
mr_johns_cpp_variable_4:
    2aa9:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_5:
    2ab1:	4f 50 45 4e 49 4e 47 5f 4d 41 4e 48 4f 4c 45 5f 44 41 59 54 49 4d 45 00 	db     "OPENING_MANHOLE_DAYTIME",0x00
mr_johns_cpp_variable_6:
    2ac9:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_7:
    2ad1:	4f 50 45 4e 49 4e 47 5f 4d 41 4e 48 4f 4c 45 5f 44 41 59 54 49 4d 45 00 	db     "OPENING_MANHOLE_DAYTIME",0x00
mr_johns_cpp_variable_8:
    2ae9:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_johns_cpp_variable_9:
    2b01:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_10:
    2b09:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2b0a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2b0b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_11:
    2b0c:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_12:
    2b14:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_johns_cpp_variable_13:
    2b21:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_johns_cpp_variable_14:
    2b32:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_15:
    2b3a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2b3b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2b3c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_16:
    2b3d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_17:
    2b45:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_18:
    2b4d:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_johns_cpp_variable_19:
    2b54:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_johns_cpp_variable_20:
    2b5c:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_johns_cpp_variable_21:
    2b6e:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_22:
    2b76:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2b77:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2b78:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_23:
    2b79:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_24:
    2b81:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_johns_cpp_variable_25:
    2b86:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_johns_cpp_variable_26:
    2b95:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_johns_cpp_variable_27:
    2b9f:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_johns_cpp_variable_28:
    2bb3:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_29:
    2bbb:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
mr_johns_cpp_variable_30:
    2bc3:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
mr_johns_cpp_variable_31:
    2bd5:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_32:
    2bdd:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_33:
    2be5:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
mr_johns_cpp_variable_34:
    2bf6:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_35:
    2bfe:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_36:
    2c06:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_37:
    2c0e:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
mr_johns_cpp_variable_38:
    2c22:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_39:
    2c2a:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_40:
    2c32:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_41:
    2c3a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2c3b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2c3c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_42:
    2c3d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_43:
    2c45:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2c46:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2c47:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_44:
    2c48:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_45:
    2c50:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_46:
    2c58:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_johns_cpp_variable_47:
    2c6d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_48:
    2c75:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_49:
    2c7d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_50:
    2c85:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_johns_cpp_variable_51:
    2c94:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_52:
    2c9c:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_53:
    2ca4:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
mr_johns_cpp_variable_54:
    2cb6:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_55:
    2cbe:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_56:
    2cc6:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
mr_johns_cpp_variable_57:
    2cd9:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_58:
    2ce1:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_59:
    2ce9:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_60:
    2cf1:	44 49 4e 45 52 5f 42 55 52 4e 45 44 00 	db     "DINER_BURNED",0x00
mr_johns_cpp_variable_61:
    2cfe:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_62:
    2d06:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
mr_johns_cpp_variable_63:
    2d16:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_64:
    2d1e:	47 4f 54 5f 52 45 4d 41 49 4e 53 5f 46 4f 52 5f 4c 4f 44 47 45 00 	db     "GOT_REMAINS_FOR_LODGE",0x00
mr_johns_cpp_variable_65:
    2d34:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_66:
    2d3c:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
mr_johns_cpp_variable_67:
    2d4e:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_68:
    2d56:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_69:
    2d57:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_70:
    2d5f:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_71:
    2d67:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_72:
    2d6f:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_73:
    2d77:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2d78:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2d79:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_74:
    2d7a:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_75:
    2d82:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_76:
    2d8a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2d8b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2d8c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_77:
    2d8d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_78:
    2d95:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_79:
    2d9d:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_80:
    2da5:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_81:
    2dad:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2dae:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2daf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_johns_cpp_variable_82:
    2db0:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_83:
    2db8:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00
mr_johns_cpp_variable_84:
    2dc0:	4a 4f 48 4e 53 4f 4e 00 	db     "JOHNSON",0x00

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 20 (D:\SOURCE\mr_johns.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 20: D:\SOURCE\mr_johns.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_JOHNSON:                                                                                         ; access size: DWORD
   22bf4:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_1:                                                                              ; access size: DWORD
   22bf8:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_2:                                                                              ; access size: DWORD
   22bfc:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_3:                                                                              ; access size: DWORD
   22c00:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_4:                                                                              ; access size: DWORD
   22c04:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_5:                                                                              ; access size: DWORD
   22c08:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_6:                                                                              ; access size: DWORD
   22c0c:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_7:                                                                              ; access size: DWORD
   22c10:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_8:                                                                              ; access size: DWORD
   22c14:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_9:                                                                              ; access size: DWORD
   22c18:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_10:                                                                             ; access size: DWORD
   22c1c:	00 00 00 00          	dd     0x00000000
MR_JOHNSON_variable_11:                                                                             ; access size: DWORD
   22c20:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 20 (D:\SOURCE\mr_johns.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------