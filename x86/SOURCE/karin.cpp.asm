;-------------------------------------------------------------------------------
;                                                                              -
;  Module 42: D:\SOURCE\karin.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_KARIN'                      -
;-------------------------------------------------
talk_to_KARIN:
   1ea90:	53                   	push   ebx
   1ea91:	52                   	push   edx
   1ea92:	56                   	push   esi
   1ea93:	57                   	push   edi
   1ea94:	55                   	push   ebp
   1ea95:	b8 2c 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_1                               ; fixup: num: 4276, src obj: 1, src ofs: 0x1ea96, dst obj: 3, dst ofs: 0x4c2c
   1ea9a:	e8 f1 dc 04 00       	call   check_script_flag
   1ea9f:	84 c0                	test   al,al
   1eaa1:	0f 84 cb 00 00 00    	je     talk_to_KARIN_branch_1
   1eaa7:	b8 3e 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_2                               ; fixup: num: 4275, src obj: 1, src ofs: 0x1eaa8, dst obj: 3, dst ofs: 0x4c3e
   1eaac:	e8 df dc 04 00       	call   check_script_flag
   1eab1:	84 c0                	test   al,al
   1eab3:	0f 84 b9 00 00 00    	je     talk_to_KARIN_branch_1
   1eab9:	83 3d 18 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:KARIN_variable_1,0x0                      ; fixup: num: 4274, src obj: 1, src ofs: 0x1eabb, dst obj: 3, dst ofs: 0x22d18
   1eac0:	0f 85 ac 00 00 00    	jne    talk_to_KARIN_branch_1
   1eac6:	b8 01 00 00 00       	mov    eax,0x1
   1eacb:	bb 04 00 00 00       	mov    ebx,0x4
   1ead0:	ba 47 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_3                               ; fixup: num: 4273, src obj: 1, src ofs: 0x1ead1, dst obj: 3, dst ofs: 0x4c47
   1ead5:	a3 18 2d 02 00       	mov    ds:@obj3:KARIN_variable_1,eax                                ; fixup: num: 4272, src obj: 1, src ofs: 0x1ead6, dst obj: 3, dst ofs: 0x22d18
   1eada:	b8 a5 10 00 00       	mov    eax,0x10a5
   1eadf:	e8 ac bb 04 00       	call   play_wav
   1eae4:	bb 03 00 00 00       	mov    ebx,0x3
   1eae9:	ba 4a 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_4                               ; fixup: num: 4271, src obj: 1, src ofs: 0x1eaea, dst obj: 3, dst ofs: 0x4c4a
   1eaee:	b8 a9 10 00 00       	mov    eax,0x10a9
   1eaf3:	e8 98 bb 04 00       	call   play_wav
   1eaf8:	bb 02 00 00 00       	mov    ebx,0x2
   1eafd:	ba 50 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_5                               ; fixup: num: 4270, src obj: 1, src ofs: 0x1eafe, dst obj: 3, dst ofs: 0x4c50
   1eb02:	b8 ae 10 00 00       	mov    eax,0x10ae
   1eb07:	e8 84 bb 04 00       	call   play_wav
   1eb0c:	bb 03 00 00 00       	mov    ebx,0x3
   1eb11:	ba 53 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_6                               ; fixup: num: 4269, src obj: 1, src ofs: 0x1eb12, dst obj: 3, dst ofs: 0x4c53
   1eb16:	b8 b2 10 00 00       	mov    eax,0x10b2
   1eb1b:	e8 70 bb 04 00       	call   play_wav
   1eb20:	ba 59 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_7                               ; fixup: num: 4268, src obj: 1, src ofs: 0x1eb21, dst obj: 3, dst ofs: 0x4c59
   1eb25:	b8 b6 10 00 00       	mov    eax,0x10b6
   1eb2a:	31 db                	xor    ebx,ebx
   1eb2c:	e8 5f bb 04 00       	call   play_wav
   1eb31:	bb 03 00 00 00       	mov    ebx,0x3
   1eb36:	ba 5c 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_8                               ; fixup: num: 4267, src obj: 1, src ofs: 0x1eb37, dst obj: 3, dst ofs: 0x4c5c
   1eb3b:	b8 ba 10 00 00       	mov    eax,0x10ba
   1eb40:	e8 4b bb 04 00       	call   play_wav
   1eb45:	ba 62 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_9                               ; fixup: num: 4288, src obj: 1, src ofs: 0x1eb46, dst obj: 3, dst ofs: 0x4c62
   1eb4a:	b8 bf 10 00 00       	mov    eax,0x10bf
   1eb4f:	31 db                	xor    ebx,ebx
   1eb51:	e8 3a bb 04 00       	call   play_wav
   1eb56:	bb 03 00 00 00       	mov    ebx,0x3
   1eb5b:	ba 65 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_10                              ; fixup: num: 4287, src obj: 1, src ofs: 0x1eb5c, dst obj: 3, dst ofs: 0x4c65
   1eb60:	b8 c3 10 00 00       	mov    eax,0x10c3
   1eb65:	e8 26 bb 04 00       	call   play_wav
   1eb6a:	31 c0                	xor    eax,eax
   1eb6c:	5d                   	pop    ebp
   1eb6d:	5f                   	pop    edi
   1eb6e:	5e                   	pop    esi
   1eb6f:	5a                   	pop    edx
   1eb70:	5b                   	pop    ebx
   1eb71:	c3                   	ret    
talk_to_KARIN_branch_1:
   1eb72:	8b 1d bc 94 02 00    	mov    ebx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4286, src obj: 1, src ofs: 0x1eb74, dst obj: 3, dst ofs: 0x294bc
   1eb78:	85 db                	test   ebx,ebx
   1eb7a:	0f 84 5b 01 00 00    	je     talk_to_KARIN_branch_8
   1eb80:	ba 6b 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_11                              ; fixup: num: 4285, src obj: 1, src ofs: 0x1eb81, dst obj: 3, dst ofs: 0x4c6b
   1eb85:	89 d8                	mov    eax,ebx
   1eb87:	e8 a4 78 05 00       	call   strcmp_
   1eb8c:	85 c0                	test   eax,eax
   1eb8e:	74 2a                	je     talk_to_KARIN_branch_2
   1eb90:	ba 78 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_12                              ; fixup: num: 4284, src obj: 1, src ofs: 0x1eb91, dst obj: 3, dst ofs: 0x4c78
   1eb95:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4283, src obj: 1, src ofs: 0x1eb96, dst obj: 3, dst ofs: 0x294bc
   1eb9a:	e8 91 78 05 00       	call   strcmp_
   1eb9f:	85 c0                	test   eax,eax
   1eba1:	74 17                	je     talk_to_KARIN_branch_2
   1eba3:	ba 89 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_13                              ; fixup: num: 4282, src obj: 1, src ofs: 0x1eba4, dst obj: 3, dst ofs: 0x4c89
   1eba8:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4281, src obj: 1, src ofs: 0x1eba9, dst obj: 3, dst ofs: 0x294bc
   1ebad:	e8 7e 78 05 00       	call   strcmp_
   1ebb2:	85 c0                	test   eax,eax
   1ebb4:	0f 85 ac 00 00 00    	jne    talk_to_KARIN_branch_6
talk_to_KARIN_branch_2:
   1ebba:	8b 3d 14 2d 02 00    	mov    edi,DWORD PTR ds:@obj3:KARIN                                 ; fixup: num: 4280, src obj: 1, src ofs: 0x1ebbc, dst obj: 3, dst ofs: 0x22d14
   1ebc0:	83 ff 01             	cmp    edi,0x1
   1ebc3:	75 2f                	jne    talk_to_KARIN_branch_3
   1ebc5:	bb 04 00 00 00       	mov    ebx,0x4
   1ebca:	ba a1 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_14                              ; fixup: num: 4279, src obj: 1, src ofs: 0x1ebcb, dst obj: 3, dst ofs: 0x4ca1
   1ebcf:	b8 e3 10 00 00       	mov    eax,0x10e3
   1ebd4:	e8 b7 ba 04 00       	call   play_wav
   1ebd9:	b8 a7 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_15                              ; fixup: num: 4278, src obj: 1, src ofs: 0x1ebda, dst obj: 3, dst ofs: 0x4ca7
   1ebde:	89 fa                	mov    edx,edi
   1ebe0:	e8 fb db 04 00       	call   set_script_flag
   1ebe5:	b8 b6 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_16                              ; fixup: num: 4277, src obj: 1, src ofs: 0x1ebe6, dst obj: 3, dst ofs: 0x4cb6
   1ebea:	e8 91 df 04 00       	call   ExecuteCommand
   1ebef:	e9 84 01 00 00       	jmp    talk_to_KARIN_branch_10
talk_to_KARIN_branch_3:
   1ebf4:	ba c2 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_17                              ; fixup: num: 4298, src obj: 1, src ofs: 0x1ebf5, dst obj: 3, dst ofs: 0x4cc2
   1ebf9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4297, src obj: 1, src ofs: 0x1ebfa, dst obj: 3, dst ofs: 0x294bc
   1ebfe:	e8 2d 78 05 00       	call   strcmp_
   1ec03:	85 c0                	test   eax,eax
   1ec05:	75 0c                	jne    talk_to_KARIN_branch_4
   1ec07:	ba 01 00 00 00       	mov    edx,0x1
   1ec0c:	e8 5f 97 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1ec11:	eb 0c                	jmp    talk_to_KARIN_branch_5
talk_to_KARIN_branch_4:
   1ec13:	ba 01 00 00 00       	mov    edx,0x1
   1ec18:	31 c0                	xor    eax,eax
   1ec1a:	e8 41 97 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
talk_to_KARIN_branch_5:
   1ec1f:	bb 04 00 00 00       	mov    ebx,0x4
   1ec24:	ba da 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_18                              ; fixup: num: 4296, src obj: 1, src ofs: 0x1ec25, dst obj: 3, dst ofs: 0x4cda
   1ec29:	b8 e3 10 00 00       	mov    eax,0x10e3
   1ec2e:	e8 5d ba 04 00       	call   play_wav
   1ec33:	bb 02 00 00 00       	mov    ebx,0x2
   1ec38:	ba e0 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_19                              ; fixup: num: 4295, src obj: 1, src ofs: 0x1ec39, dst obj: 3, dst ofs: 0x4ce0
   1ec3d:	b8 e7 10 00 00       	mov    eax,0x10e7
   1ec42:	e8 49 ba 04 00       	call   play_wav
   1ec47:	b8 e5 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_20                              ; fixup: num: 4294, src obj: 1, src ofs: 0x1ec48, dst obj: 3, dst ofs: 0x4ce5
   1ec4c:	31 d2                	xor    edx,edx
   1ec4e:	bd 01 00 00 00       	mov    ebp,0x1
   1ec53:	e8 c8 b0 04 00       	call   Load_head
   1ec58:	89 2d 14 2d 02 00    	mov    DWORD PTR ds:@obj3:KARIN,ebp                                 ; fixup: num: 4293, src obj: 1, src ofs: 0x1ec5a, dst obj: 3, dst ofs: 0x22d14
   1ec5e:	31 c0                	xor    eax,eax
   1ec60:	5d                   	pop    ebp
   1ec61:	5f                   	pop    edi
   1ec62:	5e                   	pop    esi
   1ec63:	5a                   	pop    edx
   1ec64:	5b                   	pop    ebx
   1ec65:	c3                   	ret    
talk_to_KARIN_branch_6:
   1ec66:	ba eb 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_21                              ; fixup: num: 4292, src obj: 1, src ofs: 0x1ec67, dst obj: 3, dst ofs: 0x4ceb
   1ec6b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4291, src obj: 1, src ofs: 0x1ec6c, dst obj: 3, dst ofs: 0x294bc
   1ec70:	e8 bb 77 05 00       	call   strcmp_
   1ec75:	85 c0                	test   eax,eax
   1ec77:	75 46                	jne    talk_to_KARIN_branch_7
   1ec79:	ba f3 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_22                              ; fixup: num: 4290, src obj: 1, src ofs: 0x1ec7a, dst obj: 3, dst ofs: 0x4cf3
   1ec7e:	b8 ee 10 00 00       	mov    eax,0x10ee
   1ec83:	31 db                	xor    ebx,ebx
   1ec85:	e8 06 ba 04 00       	call   play_wav
   1ec8a:	bb 02 00 00 00       	mov    ebx,0x2
   1ec8f:	ba f9 4c 00 00       	mov    edx,@obj3:karin_cpp_variable_23                              ; fixup: num: 4289, src obj: 1, src ofs: 0x1ec90, dst obj: 3, dst ofs: 0x4cf9
   1ec94:	b8 f2 10 00 00       	mov    eax,0x10f2
   1ec99:	e8 f2 b9 04 00       	call   play_wav
   1ec9e:	ba 01 00 00 00       	mov    edx,0x1
   1eca3:	b8 fe 4c 00 00       	mov    eax,@obj3:karin_cpp_variable_24                              ; fixup: num: 4309, src obj: 1, src ofs: 0x1eca4, dst obj: 3, dst ofs: 0x4cfe
   1eca8:	e8 33 db 04 00       	call   set_script_flag
   1ecad:	b8 0d 4d 00 00       	mov    eax,@obj3:karin_cpp_variable_25                              ; fixup: num: 4308, src obj: 1, src ofs: 0x1ecae, dst obj: 3, dst ofs: 0x4d0d
   1ecb2:	e8 c9 de 04 00       	call   ExecuteCommand
   1ecb7:	31 c0                	xor    eax,eax
   1ecb9:	5d                   	pop    ebp
   1ecba:	5f                   	pop    edi
   1ecbb:	5e                   	pop    esi
   1ecbc:	5a                   	pop    edx
   1ecbd:	5b                   	pop    ebx
   1ecbe:	c3                   	ret    
talk_to_KARIN_branch_7:
   1ecbf:	bb 01 00 00 00       	mov    ebx,0x1
   1ecc4:	ba 19 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_26                              ; fixup: num: 4307, src obj: 1, src ofs: 0x1ecc5, dst obj: 3, dst ofs: 0x4d19
   1ecc9:	b8 d6 10 00 00       	mov    eax,0x10d6
   1ecce:	e8 bd b9 04 00       	call   play_wav
   1ecd3:	31 c0                	xor    eax,eax
   1ecd5:	5d                   	pop    ebp
   1ecd6:	5f                   	pop    edi
   1ecd7:	5e                   	pop    esi
   1ecd8:	5a                   	pop    edx
   1ecd9:	5b                   	pop    ebx
   1ecda:	c3                   	ret    
talk_to_KARIN_branch_8:
   1ecdb:	b8 1f 4d 00 00       	mov    eax,@obj3:karin_cpp_variable_27                              ; fixup: num: 4306, src obj: 1, src ofs: 0x1ecdc, dst obj: 3, dst ofs: 0x4d1f
   1ece0:	e8 ab da 04 00       	call   check_script_flag
   1ece5:	84 c0                	test   al,al
   1ece7:	0f 85 7a 00 00 00    	jne    talk_to_KARIN_branch_9
   1eced:	83 3d 1c 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:KARIN_variable_2,0x0                      ; fixup: num: 4305, src obj: 1, src ofs: 0x1ecef, dst obj: 3, dst ofs: 0x22d1c
   1ecf4:	75 71                	jne    talk_to_KARIN_branch_9
   1ecf6:	be 01 00 00 00       	mov    esi,0x1
   1ecfb:	ba 31 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_28                              ; fixup: num: 4304, src obj: 1, src ofs: 0x1ecfc, dst obj: 3, dst ofs: 0x4d31
   1ed00:	b8 76 10 00 00       	mov    eax,0x1076
   1ed05:	89 f3                	mov    ebx,esi
   1ed07:	89 35 1c 2d 02 00    	mov    DWORD PTR ds:@obj3:KARIN_variable_2,esi                      ; fixup: num: 4303, src obj: 1, src ofs: 0x1ed09, dst obj: 3, dst ofs: 0x22d1c
   1ed0d:	e8 7e b9 04 00       	call   play_wav
   1ed12:	ba 34 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_29                              ; fixup: num: 4302, src obj: 1, src ofs: 0x1ed13, dst obj: 3, dst ofs: 0x4d34
   1ed17:	b8 7a 10 00 00       	mov    eax,0x107a
   1ed1c:	89 f3                	mov    ebx,esi
   1ed1e:	e8 6d b9 04 00       	call   play_wav
   1ed23:	ba 3a 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_30                              ; fixup: num: 4301, src obj: 1, src ofs: 0x1ed24, dst obj: 3, dst ofs: 0x4d3a
   1ed28:	b8 7e 10 00 00       	mov    eax,0x107e
   1ed2d:	89 f3                	mov    ebx,esi
   1ed2f:	e8 5c b9 04 00       	call   play_wav
   1ed34:	ba 3d 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_31                              ; fixup: num: 4300, src obj: 1, src ofs: 0x1ed35, dst obj: 3, dst ofs: 0x4d3d
   1ed39:	b8 82 10 00 00       	mov    eax,0x1082
   1ed3e:	89 f3                	mov    ebx,esi
   1ed40:	e8 4b b9 04 00       	call   play_wav
   1ed45:	ba 43 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_32                              ; fixup: num: 4299, src obj: 1, src ofs: 0x1ed46, dst obj: 3, dst ofs: 0x4d43
   1ed4a:	b8 87 10 00 00       	mov    eax,0x1087
   1ed4f:	31 db                	xor    ebx,ebx
   1ed51:	e8 3a b9 04 00       	call   play_wav
   1ed56:	ba 46 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_33                              ; fixup: num: 4314, src obj: 1, src ofs: 0x1ed57, dst obj: 3, dst ofs: 0x4d46
   1ed5b:	b8 8b 10 00 00       	mov    eax,0x108b
   1ed60:	89 f3                	mov    ebx,esi
   1ed62:	e8 29 b9 04 00       	call   play_wav
talk_to_KARIN_branch_9:
   1ed67:	ba 4c 4d 00 00       	mov    edx,@obj3:karin_cpp_variable_34                              ; fixup: num: 4313, src obj: 1, src ofs: 0x1ed68, dst obj: 3, dst ofs: 0x4d4c
   1ed6c:	b8 dc 10 00 00       	mov    eax,0x10dc
   1ed71:	31 db                	xor    ebx,ebx
   1ed73:	e8 18 b9 04 00       	call   play_wav
talk_to_KARIN_branch_10:
   1ed78:	31 c0                	xor    eax,eax
   1ed7a:	5d                   	pop    ebp
   1ed7b:	5f                   	pop    edi
   1ed7c:	5e                   	pop    esi
   1ed7d:	5a                   	pop    edx
   1ed7e:	5b                   	pop    ebx
   1ed7f:	c3                   	ret    

;-------------------------------------------------
;  Function 'KARIN_initialize'                   -
;-------------------------------------------------
KARIN_initialize:
   1ed80:	52                   	push   edx
   1ed81:	31 d2                	xor    edx,edx
   1ed83:	89 15 14 2d 02 00    	mov    DWORD PTR ds:@obj3:KARIN,edx                                 ; fixup: num: 4312, src obj: 1, src ofs: 0x1ed85, dst obj: 3, dst ofs: 0x22d14
   1ed89:	89 15 18 2d 02 00    	mov    DWORD PTR ds:@obj3:KARIN_variable_1,edx                      ; fixup: num: 4311, src obj: 1, src ofs: 0x1ed8b, dst obj: 3, dst ofs: 0x22d18
   1ed8f:	89 15 1c 2d 02 00    	mov    DWORD PTR ds:@obj3:KARIN_variable_2,edx                      ; fixup: num: 4310, src obj: 1, src ofs: 0x1ed91, dst obj: 3, dst ofs: 0x22d1c
   1ed95:	5a                   	pop    edx
   1ed96:	c3                   	ret    
;-------------------------------------------------
;  Bad code 37 (zero after ret):                 -
;-------------------------------------------------
;  1ed95:	5a                   	pop    edx
;  1ed96:	c3                   	ret    
;  1ed97:	00 00                	add    BYTE PTR [eax],al
;  1ed99:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (9 bytes):                       -
;-------------------------------------------------
   1ed97:	00 00 00 00 00 00 .. 	db     9 dup(0x00)
;-------------------------------------------------
;  End of bad code 37                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 42 (D:\SOURCE\karin.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 42: D:\SOURCE\karin.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
karin_cpp_variable_1:
    4c2c:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
karin_cpp_variable_2:
    4c3e:	49 4e 5f 43 45 4d 31 30 00 	db     "IN_CEM10",0x00
karin_cpp_variable_3:
    4c47:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4c48:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4c49:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_4:
    4c4a:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_5:
    4c50:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4c51:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4c52:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_6:
    4c53:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_7:
    4c59:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4c5a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4c5b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_8:
    4c5c:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_9:
    4c62:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4c63:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4c64:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_10:
    4c65:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_11:
    4c6b:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
karin_cpp_variable_12:
    4c78:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
karin_cpp_variable_13:
    4c89:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
karin_cpp_variable_14:
    4ca1:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_15:
    4ca7:	44 4e 41 4c 46 54 5f 50 45 52 56 45 52 54 00 	db     "DNALFT_PERVERT",0x00
karin_cpp_variable_16:
    4cb6:	43 41 4c 4c 5f 50 4f 4c 49 43 45 00 	db     "CALL_POLICE",0x00
karin_cpp_variable_17:
    4cc2:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
karin_cpp_variable_18:
    4cda:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_19:
    4ce0:	45 44 4e 41 00       	db     "EDNA",0x00
karin_cpp_variable_20:
    4ce5:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_21:
    4ceb:	49 4e 56 5f 4d 41 47 00 	db     "INV_MAG",0x00
karin_cpp_variable_22:
    4cf3:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_23:
    4cf9:	45 44 4e 41 00       	db     "EDNA",0x00
karin_cpp_variable_24:
    4cfe:	44 4e 41 4c 46 54 5f 50 45 52 56 45 52 54 00 	db     "DNALFT_PERVERT",0x00
karin_cpp_variable_25:
    4d0d:	43 41 4c 4c 5f 50 4f 4c 49 43 45 00 	db     "CALL_POLICE",0x00
karin_cpp_variable_26:
    4d19:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_27:
    4d1f:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
karin_cpp_variable_28:
    4d31:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d32:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d33:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_29:
    4d34:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_30:
    4d3a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d3b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d3c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_31:
    4d3d:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_32:
    4d43:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    4d44:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    4d45:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
karin_cpp_variable_33:
    4d46:	4b 41 52 49 4e 00    	db     "KARIN",0x00
karin_cpp_variable_34:
    4d4c:	4b 41 52 49 4e 00    	db     "KARIN",0x00
    4d52:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 42 (D:\SOURCE\karin.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 42: D:\SOURCE\karin.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
KARIN:                                                                                              ; access size: DWORD
   22d14:	00 00 00 00          	dd     0x00000000
KARIN_variable_1:                                                                                   ; access size: DWORD
   22d18:	00 00 00 00          	dd     0x00000000
KARIN_variable_2:                                                                                   ; access size: DWORD
   22d1c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 42 (D:\SOURCE\karin.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------