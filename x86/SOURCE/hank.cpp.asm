;-------------------------------------------------------------------------------
;                                                                              -
;  Module 51: D:\SOURCE\hank.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_HANK'                       -
;-------------------------------------------------
talk_to_HANK:
   23a30:	53                   	push   ebx
   23a31:	51                   	push   ecx
   23a32:	52                   	push   edx
   23a33:	56                   	push   esi
   23a34:	57                   	push   edi
   23a35:	55                   	push   ebp
   23a36:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5325, src obj: 1, src ofs: 0x23a38, dst obj: 3, dst ofs: 0x294bc
   23a3c:	85 d2                	test   edx,edx
   23a3e:	0f 84 4c 01 00 00    	je     talk_to_HANK_branch_7
   23a44:	89 d0                	mov    eax,edx
   23a46:	ba f8 61 00 00       	mov    edx,@obj3:hank_cpp_variable_1                                ; fixup: num: 5324, src obj: 1, src ofs: 0x23a47, dst obj: 3, dst ofs: 0x61f8
   23a4b:	e8 e0 29 05 00       	call   strcmp_
   23a50:	85 c0                	test   eax,eax
   23a52:	74 13                	je     talk_to_HANK_branch_1
   23a54:	ba 05 62 00 00       	mov    edx,@obj3:hank_cpp_variable_2                                ; fixup: num: 5323, src obj: 1, src ofs: 0x23a55, dst obj: 3, dst ofs: 0x6205
   23a59:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5322, src obj: 1, src ofs: 0x23a5a, dst obj: 3, dst ofs: 0x294bc
   23a5e:	e8 cd 29 05 00       	call   strcmp_
   23a63:	85 c0                	test   eax,eax
   23a65:	75 74                	jne    talk_to_HANK_branch_3
talk_to_HANK_branch_1:
   23a67:	ba 01 00 00 00       	mov    edx,0x1
   23a6c:	31 c0                	xor    eax,eax
   23a6e:	e8 ed 48 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   23a73:	31 db                	xor    ebx,ebx
   23a75:	ba 16 62 00 00       	mov    edx,@obj3:hank_cpp_variable_3                                ; fixup: num: 5321, src obj: 1, src ofs: 0x23a76, dst obj: 3, dst ofs: 0x6216
   23a7a:	b8 3e 0a 00 00       	mov    eax,0xa3e
   23a7f:	e8 0c 6c 04 00       	call   play_wav
   23a84:	b8 c5 00 00 00       	mov    eax,0xc5
   23a89:	e8 12 67 00 00       	call   GetDlgFileString
   23a8e:	e8 7d 74 04 00       	call   get_response
   23a93:	83 f8 01             	cmp    eax,0x1
   23a96:	75 2b                	jne    talk_to_HANK_branch_2
   23a98:	b8 1b 62 00 00       	mov    eax,@obj3:hank_cpp_variable_4                                ; fixup: num: 5320, src obj: 1, src ofs: 0x23a99, dst obj: 3, dst ofs: 0x621b
   23a9d:	e8 0e 8e 04 00       	call   add_inventory
   23aa2:	31 db                	xor    ebx,ebx
   23aa4:	b8 23 62 00 00       	mov    eax,@obj3:hank_cpp_variable_5                                ; fixup: num: 5319, src obj: 1, src ofs: 0x23aa5, dst obj: 3, dst ofs: 0x6223
   23aa9:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5318, src obj: 1, src ofs: 0x23aab, dst obj: 3, dst ofs: 0x294bc
   23aaf:	e8 5c f4 02 00       	call   set_object
   23ab4:	ba 27 62 00 00       	mov    edx,@obj3:hank_cpp_variable_6                                ; fixup: num: 5335, src obj: 1, src ofs: 0x23ab5, dst obj: 3, dst ofs: 0x6227
   23ab9:	b8 5e 0a 00 00       	mov    eax,0xa5e
   23abe:	e9 bd 00 00 00       	jmp    talk_to_HANK_branch_6
talk_to_HANK_branch_2:
   23ac3:	83 f8 02             	cmp    eax,0x2
   23ac6:	0f 85 f7 10 00 00    	jne    talk_to_HANK_branch_87
   23acc:	ba 2c 62 00 00       	mov    edx,@obj3:hank_cpp_variable_7                                ; fixup: num: 5334, src obj: 1, src ofs: 0x23acd, dst obj: 3, dst ofs: 0x622c
   23ad1:	b8 62 0a 00 00       	mov    eax,0xa62
   23ad6:	e9 a5 00 00 00       	jmp    talk_to_HANK_branch_6
talk_to_HANK_branch_3:
   23adb:	ba 31 62 00 00       	mov    edx,@obj3:hank_cpp_variable_8                                ; fixup: num: 5333, src obj: 1, src ofs: 0x23adc, dst obj: 3, dst ofs: 0x6231
   23ae0:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5332, src obj: 1, src ofs: 0x23ae1, dst obj: 3, dst ofs: 0x294bc
   23ae5:	e8 46 29 05 00       	call   strcmp_
   23aea:	85 c0                	test   eax,eax
   23aec:	0f 85 84 00 00 00    	jne    talk_to_HANK_branch_5
   23af2:	ba 01 00 00 00       	mov    edx,0x1
   23af7:	e8 74 48 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   23afc:	31 db                	xor    ebx,ebx
   23afe:	ba 49 62 00 00       	mov    edx,@obj3:hank_cpp_variable_9                                ; fixup: num: 5331, src obj: 1, src ofs: 0x23aff, dst obj: 3, dst ofs: 0x6249
   23b03:	b8 53 0a 00 00       	mov    eax,0xa53
   23b08:	e8 83 6b 04 00       	call   play_wav
   23b0d:	b8 c6 00 00 00       	mov    eax,0xc6
   23b12:	e8 89 66 00 00       	call   GetDlgFileString
   23b17:	e8 f4 73 04 00       	call   get_response
   23b1c:	83 f8 01             	cmp    eax,0x1
   23b1f:	75 32                	jne    talk_to_HANK_branch_4
   23b21:	b8 4e 62 00 00       	mov    eax,@obj3:hank_cpp_variable_10                               ; fixup: num: 5330, src obj: 1, src ofs: 0x23b22, dst obj: 3, dst ofs: 0x624e
   23b26:	e8 85 8d 04 00       	call   add_inventory
   23b2b:	31 db                	xor    ebx,ebx
   23b2d:	b8 54 62 00 00       	mov    eax,@obj3:hank_cpp_variable_11                               ; fixup: num: 5329, src obj: 1, src ofs: 0x23b2e, dst obj: 3, dst ofs: 0x6254
   23b32:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5328, src obj: 1, src ofs: 0x23b34, dst obj: 3, dst ofs: 0x294bc
   23b38:	e8 d3 f3 02 00       	call   set_object
   23b3d:	ba 58 62 00 00       	mov    edx,@obj3:hank_cpp_variable_12                               ; fixup: num: 5327, src obj: 1, src ofs: 0x23b3e, dst obj: 3, dst ofs: 0x6258
   23b42:	b8 5e 0a 00 00       	mov    eax,0xa5e
   23b47:	31 db                	xor    ebx,ebx
   23b49:	e8 42 6b 04 00       	call   play_wav
   23b4e:	e9 70 10 00 00       	jmp    talk_to_HANK_branch_87
talk_to_HANK_branch_4:
   23b53:	83 f8 02             	cmp    eax,0x2
   23b56:	0f 85 67 10 00 00    	jne    talk_to_HANK_branch_87
   23b5c:	ba 5d 62 00 00       	mov    edx,@obj3:hank_cpp_variable_13                               ; fixup: num: 5326, src obj: 1, src ofs: 0x23b5d, dst obj: 3, dst ofs: 0x625d
   23b61:	b8 62 0a 00 00       	mov    eax,0xa62
   23b66:	31 db                	xor    ebx,ebx
   23b68:	e8 23 6b 04 00       	call   play_wav
   23b6d:	31 c0                	xor    eax,eax
   23b6f:	5d                   	pop    ebp
   23b70:	5f                   	pop    edi
   23b71:	5e                   	pop    esi
   23b72:	5a                   	pop    edx
   23b73:	59                   	pop    ecx
   23b74:	5b                   	pop    ebx
   23b75:	c3                   	ret    
talk_to_HANK_branch_5:
   23b76:	ba 62 62 00 00       	mov    edx,@obj3:hank_cpp_variable_14                               ; fixup: num: 5344, src obj: 1, src ofs: 0x23b77, dst obj: 3, dst ofs: 0x6262
   23b7b:	b8 38 0a 00 00       	mov    eax,0xa38
talk_to_HANK_branch_6:
   23b80:	31 db                	xor    ebx,ebx
   23b82:	e8 09 6b 04 00       	call   play_wav
   23b87:	31 c0                	xor    eax,eax
   23b89:	5d                   	pop    ebp
   23b8a:	5f                   	pop    edi
   23b8b:	5e                   	pop    esi
   23b8c:	5a                   	pop    edx
   23b8d:	59                   	pop    ecx
   23b8e:	5b                   	pop    ebx
   23b8f:	c3                   	ret    
talk_to_HANK_branch_7:
   23b90:	a1 e8 2d 02 00       	mov    eax,ds:@obj3:HANK                                            ; fixup: num: 5343, src obj: 1, src ofs: 0x23b91, dst obj: 3, dst ofs: 0x22de8
   23b95:	85 c0                	test   eax,eax
   23b97:	0f 84 16 01 00 00    	je     talk_to_HANK_branch_16
   23b9d:	e8 1e 50 00 00       	call   get_day
   23ba2:	bf 01 00 00 00       	mov    edi,0x1
   23ba7:	a3 f8 2d 02 00       	mov    ds:@obj3:HANK_variable_4,eax                                 ; fixup: num: 5342, src obj: 1, src ofs: 0x23ba8, dst obj: 3, dst ofs: 0x22df8
   23bac:	89 15 e8 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK,edx                                  ; fixup: num: 5341, src obj: 1, src ofs: 0x23bae, dst obj: 3, dst ofs: 0x22de8
   23bb2:	31 db                	xor    ebx,ebx
   23bb4:	ba 67 62 00 00       	mov    edx,@obj3:hank_cpp_variable_15                               ; fixup: num: 5340, src obj: 1, src ofs: 0x23bb5, dst obj: 3, dst ofs: 0x6267
   23bb9:	b8 03 07 00 00       	mov    eax,0x703
   23bbe:	89 3d ec 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_1,edi                       ; fixup: num: 5339, src obj: 1, src ofs: 0x23bc0, dst obj: 3, dst ofs: 0x22dec
   23bc4:	89 3d f4 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_3,edi                       ; fixup: num: 5338, src obj: 1, src ofs: 0x23bc6, dst obj: 3, dst ofs: 0x22df4
   23bca:	e8 c1 6a 04 00       	call   play_wav
   23bcf:	b8 c7 00 00 00       	mov    eax,0xc7
   23bd4:	e8 c7 65 00 00       	call   GetDlgFileString
   23bd9:	e8 32 73 04 00       	call   get_response
   23bde:	39 f8                	cmp    eax,edi
   23be0:	75 41                	jne    talk_to_HANK_branch_10
   23be2:	ba 6c 62 00 00       	mov    edx,@obj3:hank_cpp_variable_16                               ; fixup: num: 5337, src obj: 1, src ofs: 0x23be3, dst obj: 3, dst ofs: 0x626c
   23be7:	b8 0f 07 00 00       	mov    eax,0x70f
   23bec:	31 db                	xor    ebx,ebx
   23bee:	e8 9d 6a 04 00       	call   play_wav
   23bf3:	b8 c8 00 00 00       	mov    eax,0xc8
   23bf8:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5336, src obj: 1, src ofs: 0x23bf9, dst obj: 3, dst ofs: 0x295c0
   23bfd:	e8 9e 65 00 00       	call   GetDlgFileString
   23c02:	89 c6                	mov    esi,eax
   23c04:	57                   	push   edi
talk_to_HANK_branch_8:
   23c05:	8a 06                	mov    al,BYTE PTR [esi]
   23c07:	88 07                	mov    BYTE PTR [edi],al
   23c09:	3c 00                	cmp    al,0x0
   23c0b:	74 10                	je     talk_to_HANK_branch_9
   23c0d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   23c10:	83 c6 02             	add    esi,0x2
   23c13:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   23c16:	83 c7 02             	add    edi,0x2
   23c19:	3c 00                	cmp    al,0x0
   23c1b:	75 e8                	jne    talk_to_HANK_branch_8
talk_to_HANK_branch_9:
   23c1d:	5f                   	pop    edi
   23c1e:	e9 db 05 00 00       	jmp    talk_to_HANK_branch_45
talk_to_HANK_branch_10:
   23c23:	83 f8 02             	cmp    eax,0x2
   23c26:	75 41                	jne    talk_to_HANK_branch_13
   23c28:	ba 71 62 00 00       	mov    edx,@obj3:hank_cpp_variable_17                               ; fixup: num: 5350, src obj: 1, src ofs: 0x23c29, dst obj: 3, dst ofs: 0x6271
   23c2d:	b8 15 07 00 00       	mov    eax,0x715
   23c32:	31 db                	xor    ebx,ebx
   23c34:	e8 57 6a 04 00       	call   play_wav
   23c39:	b8 c9 00 00 00       	mov    eax,0xc9
   23c3e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5349, src obj: 1, src ofs: 0x23c3f, dst obj: 3, dst ofs: 0x295c0
   23c43:	e8 58 65 00 00       	call   GetDlgFileString
   23c48:	89 c6                	mov    esi,eax
   23c4a:	57                   	push   edi
talk_to_HANK_branch_11:
   23c4b:	8a 06                	mov    al,BYTE PTR [esi]
   23c4d:	88 07                	mov    BYTE PTR [edi],al
   23c4f:	3c 00                	cmp    al,0x0
   23c51:	74 10                	je     talk_to_HANK_branch_12
   23c53:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   23c56:	83 c6 02             	add    esi,0x2
   23c59:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   23c5c:	83 c7 02             	add    edi,0x2
   23c5f:	3c 00                	cmp    al,0x0
   23c61:	75 e8                	jne    talk_to_HANK_branch_11
talk_to_HANK_branch_12:
   23c63:	5f                   	pop    edi
   23c64:	e9 95 05 00 00       	jmp    talk_to_HANK_branch_45
talk_to_HANK_branch_13:
   23c69:	83 f8 03             	cmp    eax,0x3
   23c6c:	0f 85 8c 05 00 00    	jne    talk_to_HANK_branch_45
   23c72:	ba 76 62 00 00       	mov    edx,@obj3:hank_cpp_variable_18                               ; fixup: num: 5348, src obj: 1, src ofs: 0x23c73, dst obj: 3, dst ofs: 0x6276
   23c77:	b8 1c 07 00 00       	mov    eax,0x71c
   23c7c:	31 db                	xor    ebx,ebx
   23c7e:	e8 0d 6a 04 00       	call   play_wav
   23c83:	b8 ca 00 00 00       	mov    eax,0xca
   23c88:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5347, src obj: 1, src ofs: 0x23c89, dst obj: 3, dst ofs: 0x295c0
   23c8d:	e8 0e 65 00 00       	call   GetDlgFileString
   23c92:	89 c6                	mov    esi,eax
   23c94:	57                   	push   edi
talk_to_HANK_branch_14:
   23c95:	8a 06                	mov    al,BYTE PTR [esi]
   23c97:	88 07                	mov    BYTE PTR [edi],al
   23c99:	3c 00                	cmp    al,0x0
   23c9b:	74 10                	je     talk_to_HANK_branch_15
   23c9d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   23ca0:	83 c6 02             	add    esi,0x2
   23ca3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   23ca6:	83 c7 02             	add    edi,0x2
   23ca9:	3c 00                	cmp    al,0x0
   23cab:	75 e8                	jne    talk_to_HANK_branch_14
talk_to_HANK_branch_15:
   23cad:	5f                   	pop    edi
   23cae:	e9 4b 05 00 00       	jmp    talk_to_HANK_branch_45
talk_to_HANK_branch_16:
   23cb3:	a1 ec 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_1                                 ; fixup: num: 5346, src obj: 1, src ofs: 0x23cb4, dst obj: 3, dst ofs: 0x22dec
   23cb8:	85 c0                	test   eax,eax
   23cba:	74 35                	je     talk_to_HANK_branch_18
   23cbc:	e8 ff 4e 00 00       	call   get_day
   23cc1:	3b 05 f8 2d 02 00    	cmp    eax,DWORD PTR ds:@obj3:HANK_variable_4                       ; fixup: num: 5345, src obj: 1, src ofs: 0x23cc3, dst obj: 3, dst ofs: 0x22df8
   23cc7:	75 28                	jne    talk_to_HANK_branch_18
   23cc9:	c7 05 f4 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:HANK_variable_3,0x1              ; fixup: num: 5360, src obj: 1, src ofs: 0x23ccb, dst obj: 3, dst ofs: 0x22df4
   23cd3:	e8 e8 4e 00 00       	call   get_day
   23cd8:	83 f8 06             	cmp    eax,0x6
   23cdb:	7d 0a                	jge    talk_to_HANK_branch_17
   23cdd:	e8 ce 4e 00 00       	call   HANK_WATCHING_RANGE_RYDER
   23ce2:	e9 17 01 00 00       	jmp    talk_to_HANK_branch_24
talk_to_HANK_branch_17:
   23ce7:	ba 7b 62 00 00       	mov    edx,@obj3:hank_cpp_variable_19                               ; fixup: num: 5359, src obj: 1, src ofs: 0x23ce8, dst obj: 3, dst ofs: 0x627b
   23cec:	e9 01 01 00 00       	jmp    talk_to_HANK_branch_22
talk_to_HANK_branch_18:
   23cf1:	a1 f4 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_3                                 ; fixup: num: 5358, src obj: 1, src ofs: 0x23cf2, dst obj: 3, dst ofs: 0x22df4
   23cf6:	85 c0                	test   eax,eax
   23cf8:	0f 84 d5 00 00 00    	je     talk_to_HANK_branch_20
   23cfe:	e8 bd 4e 00 00       	call   get_day
   23d03:	be 01 00 00 00       	mov    esi,0x1
   23d08:	ba 80 62 00 00       	mov    edx,@obj3:hank_cpp_variable_20                               ; fixup: num: 5357, src obj: 1, src ofs: 0x23d09, dst obj: 3, dst ofs: 0x6280
   23d0d:	a3 f8 2d 02 00       	mov    ds:@obj3:HANK_variable_4,eax                                 ; fixup: num: 5356, src obj: 1, src ofs: 0x23d0e, dst obj: 3, dst ofs: 0x22df8
   23d12:	31 c9                	xor    ecx,ecx
   23d14:	31 db                	xor    ebx,ebx
   23d16:	b8 f5 08 00 00       	mov    eax,0x8f5
   23d1b:	89 0d f4 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_3,ecx                       ; fixup: num: 5355, src obj: 1, src ofs: 0x23d1d, dst obj: 3, dst ofs: 0x22df4
   23d21:	89 35 f0 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_2,esi                       ; fixup: num: 5354, src obj: 1, src ofs: 0x23d23, dst obj: 3, dst ofs: 0x22df0
   23d27:	e8 64 69 04 00       	call   play_wav
   23d2c:	e8 8f 4e 00 00       	call   get_day
   23d31:	83 f8 04             	cmp    eax,0x4
   23d34:	0f 8d c4 00 00 00    	jge    talk_to_HANK_branch_24
   23d3a:	b8 cb 00 00 00       	mov    eax,0xcb
   23d3f:	e8 5c 64 00 00       	call   GetDlgFileString
   23d44:	e8 c7 71 04 00       	call   get_response
   23d49:	39 f0                	cmp    eax,esi
   23d4b:	75 53                	jne    talk_to_HANK_branch_19
   23d4d:	ba 85 62 00 00       	mov    edx,@obj3:hank_cpp_variable_21                               ; fixup: num: 5353, src obj: 1, src ofs: 0x23d4e, dst obj: 3, dst ofs: 0x6285
   23d52:	b8 ff 08 00 00       	mov    eax,0x8ff
   23d57:	31 db                	xor    ebx,ebx
   23d59:	e8 32 69 04 00       	call   play_wav
   23d5e:	ba 8a 62 00 00       	mov    edx,@obj3:hank_cpp_variable_22                               ; fixup: num: 5352, src obj: 1, src ofs: 0x23d5f, dst obj: 3, dst ofs: 0x628a
   23d63:	b8 03 09 00 00       	mov    eax,0x903
   23d68:	31 db                	xor    ebx,ebx
   23d6a:	e8 21 69 04 00       	call   play_wav
   23d6f:	ba 8d 62 00 00       	mov    edx,@obj3:hank_cpp_variable_23                               ; fixup: num: 5351, src obj: 1, src ofs: 0x23d70, dst obj: 3, dst ofs: 0x628d
   23d74:	b8 08 09 00 00       	mov    eax,0x908
   23d79:	31 db                	xor    ebx,ebx
   23d7b:	e8 10 69 04 00       	call   play_wav
   23d80:	bb 04 00 00 00       	mov    ebx,0x4
   23d85:	ba 92 62 00 00       	mov    edx,@obj3:hank_cpp_variable_24                               ; fixup: num: 5279, src obj: 1, src ofs: 0x23d86, dst obj: 3, dst ofs: 0x6292
   23d8a:	b8 0d 09 00 00       	mov    eax,0x90d
   23d8f:	e8 fc 68 04 00       	call   play_wav
   23d94:	ba 95 62 00 00       	mov    edx,@obj3:hank_cpp_variable_25                               ; fixup: num: 5369, src obj: 1, src ofs: 0x23d95, dst obj: 3, dst ofs: 0x6295
   23d99:	b8 11 09 00 00       	mov    eax,0x911
   23d9e:	eb 57                	jmp    talk_to_HANK_branch_23
talk_to_HANK_branch_19:
   23da0:	83 f8 02             	cmp    eax,0x2
   23da3:	75 59                	jne    talk_to_HANK_branch_24
   23da5:	ba 9a 62 00 00       	mov    edx,@obj3:hank_cpp_variable_26                               ; fixup: num: 5368, src obj: 1, src ofs: 0x23da6, dst obj: 3, dst ofs: 0x629a
   23daa:	b8 18 09 00 00       	mov    eax,0x918
   23daf:	31 db                	xor    ebx,ebx
   23db1:	e8 da 68 04 00       	call   play_wav
   23db6:	ba 9f 62 00 00       	mov    edx,@obj3:hank_cpp_variable_27                               ; fixup: num: 5367, src obj: 1, src ofs: 0x23db7, dst obj: 3, dst ofs: 0x629f
   23dbb:	b8 1f 09 00 00       	mov    eax,0x91f
   23dc0:	31 db                	xor    ebx,ebx
   23dc2:	e8 c9 68 04 00       	call   play_wav
   23dc7:	ba a2 62 00 00       	mov    edx,@obj3:hank_cpp_variable_28                               ; fixup: num: 5366, src obj: 1, src ofs: 0x23dc8, dst obj: 3, dst ofs: 0x62a2
   23dcc:	b8 24 09 00 00       	mov    eax,0x924
   23dd1:	eb 24                	jmp    talk_to_HANK_branch_23
talk_to_HANK_branch_20:
   23dd3:	a1 f0 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_2                                 ; fixup: num: 5365, src obj: 1, src ofs: 0x23dd4, dst obj: 3, dst ofs: 0x22df0
   23dd8:	85 c0                	test   eax,eax
   23dda:	74 22                	je     talk_to_HANK_branch_24
   23ddc:	e8 df 4d 00 00       	call   get_day
   23de1:	83 f8 06             	cmp    eax,0x6
   23de4:	7d 07                	jge    talk_to_HANK_branch_21
   23de6:	e8 c5 4d 00 00       	call   HANK_WATCHING_RANGE_RYDER
   23deb:	eb 11                	jmp    talk_to_HANK_branch_24
talk_to_HANK_branch_21:
   23ded:	ba a7 62 00 00       	mov    edx,@obj3:hank_cpp_variable_29                               ; fixup: num: 5364, src obj: 1, src ofs: 0x23dee, dst obj: 3, dst ofs: 0x62a7
talk_to_HANK_branch_22:
   23df2:	b8 e2 08 00 00       	mov    eax,0x8e2
talk_to_HANK_branch_23:
   23df7:	31 db                	xor    ebx,ebx
   23df9:	e8 92 68 04 00       	call   play_wav
talk_to_HANK_branch_24:
   23dfe:	b8 ac 62 00 00       	mov    eax,@obj3:hank_cpp_variable_30                               ; fixup: num: 5363, src obj: 1, src ofs: 0x23dff, dst obj: 3, dst ofs: 0x62ac
   23e03:	e8 88 89 04 00       	call   check_script_flag
   23e08:	84 c0                	test   al,al
   23e0a:	0f 84 04 01 00 00    	je     talk_to_HANK_branch_33
   23e10:	83 3d fc 2d 02 00 00 	cmp    DWORD PTR ds:@obj3:HANK_variable_5,0x0                       ; fixup: num: 5362, src obj: 1, src ofs: 0x23e12, dst obj: 3, dst ofs: 0x22dfc
   23e17:	0f 85 f7 00 00 00    	jne    talk_to_HANK_branch_33
   23e1d:	b8 01 00 00 00       	mov    eax,0x1
   23e22:	ba c1 62 00 00       	mov    edx,@obj3:hank_cpp_variable_31                               ; fixup: num: 5361, src obj: 1, src ofs: 0x23e23, dst obj: 3, dst ofs: 0x62c1
   23e27:	31 db                	xor    ebx,ebx
   23e29:	a3 fc 2d 02 00       	mov    ds:@obj3:HANK_variable_5,eax                                 ; fixup: num: 5287, src obj: 1, src ofs: 0x23e2a, dst obj: 3, dst ofs: 0x22dfc
   23e2e:	b8 2c 09 00 00       	mov    eax,0x92c
   23e33:	e8 58 68 04 00       	call   play_wav
   23e38:	b8 cc 00 00 00       	mov    eax,0xcc
   23e3d:	e8 5e 63 00 00       	call   GetDlgFileString
   23e42:	e8 c9 70 04 00       	call   get_response
   23e47:	83 f8 01             	cmp    eax,0x1
   23e4a:	75 22                	jne    talk_to_HANK_branch_25
   23e4c:	ba c6 62 00 00       	mov    edx,@obj3:hank_cpp_variable_32                               ; fixup: num: 5286, src obj: 1, src ofs: 0x23e4d, dst obj: 3, dst ofs: 0x62c6
   23e51:	b8 39 09 00 00       	mov    eax,0x939
   23e56:	31 db                	xor    ebx,ebx
   23e58:	e8 33 68 04 00       	call   play_wav
   23e5d:	bb 02 00 00 00       	mov    ebx,0x2
   23e62:	ba cb 62 00 00       	mov    edx,@obj3:hank_cpp_variable_33                               ; fixup: num: 5285, src obj: 1, src ofs: 0x23e63, dst obj: 3, dst ofs: 0x62cb
   23e67:	b8 3f 09 00 00       	mov    eax,0x93f
   23e6c:	eb 22                	jmp    talk_to_HANK_branch_28
talk_to_HANK_branch_25:
   23e6e:	83 f8 02             	cmp    eax,0x2
   23e71:	75 0c                	jne    talk_to_HANK_branch_26
   23e73:	ba cf 62 00 00       	mov    edx,@obj3:hank_cpp_variable_34                               ; fixup: num: 5284, src obj: 1, src ofs: 0x23e74, dst obj: 3, dst ofs: 0x62cf
   23e78:	b8 44 09 00 00       	mov    eax,0x944
   23e7d:	eb 0f                	jmp    talk_to_HANK_branch_27
talk_to_HANK_branch_26:
   23e7f:	83 f8 03             	cmp    eax,0x3
   23e82:	75 11                	jne    talk_to_HANK_branch_29
   23e84:	ba d4 62 00 00       	mov    edx,@obj3:hank_cpp_variable_35                               ; fixup: num: 5283, src obj: 1, src ofs: 0x23e85, dst obj: 3, dst ofs: 0x62d4
   23e89:	b8 48 09 00 00       	mov    eax,0x948
talk_to_HANK_branch_27:
   23e8e:	31 db                	xor    ebx,ebx
talk_to_HANK_branch_28:
   23e90:	e8 fb 67 04 00       	call   play_wav
talk_to_HANK_branch_29:
   23e95:	ba d9 62 00 00       	mov    edx,@obj3:hank_cpp_variable_36                               ; fixup: num: 5282, src obj: 1, src ofs: 0x23e96, dst obj: 3, dst ofs: 0x62d9
   23e9a:	b8 4f 09 00 00       	mov    eax,0x94f
   23e9f:	31 db                	xor    ebx,ebx
   23ea1:	e8 ea 67 04 00       	call   play_wav
   23ea6:	b8 cd 00 00 00       	mov    eax,0xcd
   23eab:	e8 f0 62 00 00       	call   GetDlgFileString
   23eb0:	e8 5b 70 04 00       	call   get_response
   23eb5:	83 f8 01             	cmp    eax,0x1
   23eb8:	75 22                	jne    talk_to_HANK_branch_30
   23eba:	ba de 62 00 00       	mov    edx,@obj3:hank_cpp_variable_37                               ; fixup: num: 5281, src obj: 1, src ofs: 0x23ebb, dst obj: 3, dst ofs: 0x62de
   23ebf:	b8 5a 09 00 00       	mov    eax,0x95a
   23ec4:	31 db                	xor    ebx,ebx
   23ec6:	e8 c5 67 04 00       	call   play_wav
   23ecb:	bb 02 00 00 00       	mov    ebx,0x2
   23ed0:	ba e3 62 00 00       	mov    edx,@obj3:hank_cpp_variable_38                               ; fixup: num: 5280, src obj: 1, src ofs: 0x23ed1, dst obj: 3, dst ofs: 0x62e3
   23ed5:	b8 61 09 00 00       	mov    eax,0x961
   23eda:	eb 22                	jmp    talk_to_HANK_branch_31
talk_to_HANK_branch_30:
   23edc:	83 f8 02             	cmp    eax,0x2
   23edf:	75 22                	jne    talk_to_HANK_branch_32
   23ee1:	ba e6 62 00 00       	mov    edx,@obj3:hank_cpp_variable_39                               ; fixup: num: 5297, src obj: 1, src ofs: 0x23ee2, dst obj: 3, dst ofs: 0x62e6
   23ee6:	b8 65 09 00 00       	mov    eax,0x965
   23eeb:	31 db                	xor    ebx,ebx
   23eed:	e8 9e 67 04 00       	call   play_wav
   23ef2:	ba eb 62 00 00       	mov    edx,@obj3:hank_cpp_variable_40                               ; fixup: num: 5296, src obj: 1, src ofs: 0x23ef3, dst obj: 3, dst ofs: 0x62eb
   23ef7:	b8 6b 09 00 00       	mov    eax,0x96b
   23efc:	31 db                	xor    ebx,ebx
talk_to_HANK_branch_31:
   23efe:	e8 8d 67 04 00       	call   play_wav
talk_to_HANK_branch_32:
   23f03:	ba ee 62 00 00       	mov    edx,@obj3:hank_cpp_variable_41                               ; fixup: num: 5295, src obj: 1, src ofs: 0x23f04, dst obj: 3, dst ofs: 0x62ee
   23f08:	b8 71 09 00 00       	mov    eax,0x971
   23f0d:	31 db                	xor    ebx,ebx
   23f0f:	e8 7c 67 04 00       	call   play_wav
talk_to_HANK_branch_33:
   23f14:	b8 f3 62 00 00       	mov    eax,@obj3:hank_cpp_variable_42                               ; fixup: num: 5294, src obj: 1, src ofs: 0x23f15, dst obj: 3, dst ofs: 0x62f3
   23f19:	e8 72 88 04 00       	call   check_script_flag
   23f1e:	84 c0                	test   al,al
   23f20:	0f 84 a3 00 00 00    	je     talk_to_HANK_branch_34
   23f26:	83 3d 00 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:HANK_variable_6,0x0                       ; fixup: num: 5293, src obj: 1, src ofs: 0x23f28, dst obj: 3, dst ofs: 0x22e00
   23f2d:	0f 85 96 00 00 00    	jne    talk_to_HANK_branch_34
   23f33:	bb 01 00 00 00       	mov    ebx,0x1
   23f38:	ba 05 63 00 00       	mov    edx,@obj3:hank_cpp_variable_43                               ; fixup: num: 5292, src obj: 1, src ofs: 0x23f39, dst obj: 3, dst ofs: 0x6305
   23f3d:	b8 87 09 00 00       	mov    eax,0x987
   23f42:	89 1d 00 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_6,ebx                       ; fixup: num: 5291, src obj: 1, src ofs: 0x23f44, dst obj: 3, dst ofs: 0x22e00
   23f48:	31 db                	xor    ebx,ebx
   23f4a:	e8 41 67 04 00       	call   play_wav
   23f4f:	ba 08 63 00 00       	mov    edx,@obj3:hank_cpp_variable_44                               ; fixup: num: 5290, src obj: 1, src ofs: 0x23f50, dst obj: 3, dst ofs: 0x6308
   23f54:	b8 8b 09 00 00       	mov    eax,0x98b
   23f59:	31 db                	xor    ebx,ebx
   23f5b:	e8 30 67 04 00       	call   play_wav
   23f60:	ba 0d 63 00 00       	mov    edx,@obj3:hank_cpp_variable_45                               ; fixup: num: 5289, src obj: 1, src ofs: 0x23f61, dst obj: 3, dst ofs: 0x630d
   23f65:	b8 8f 09 00 00       	mov    eax,0x98f
   23f6a:	31 db                	xor    ebx,ebx
   23f6c:	e8 1f 67 04 00       	call   play_wav
   23f71:	ba 10 63 00 00       	mov    edx,@obj3:hank_cpp_variable_46                               ; fixup: num: 5288, src obj: 1, src ofs: 0x23f72, dst obj: 3, dst ofs: 0x6310
   23f76:	b8 93 09 00 00       	mov    eax,0x993
   23f7b:	31 db                	xor    ebx,ebx
   23f7d:	e8 0e 67 04 00       	call   play_wav
   23f82:	bb 02 00 00 00       	mov    ebx,0x2
   23f87:	ba 15 63 00 00       	mov    edx,@obj3:hank_cpp_variable_47                               ; fixup: num: 5305, src obj: 1, src ofs: 0x23f88, dst obj: 3, dst ofs: 0x6315
   23f8c:	b8 9a 09 00 00       	mov    eax,0x99a
   23f91:	e8 fa 66 04 00       	call   play_wav
   23f96:	ba 19 63 00 00       	mov    edx,@obj3:hank_cpp_variable_48                               ; fixup: num: 5304, src obj: 1, src ofs: 0x23f97, dst obj: 3, dst ofs: 0x6319
   23f9b:	b8 9f 09 00 00       	mov    eax,0x99f
   23fa0:	31 db                	xor    ebx,ebx
   23fa2:	e8 e9 66 04 00       	call   play_wav
   23fa7:	ba 1e 63 00 00       	mov    edx,@obj3:hank_cpp_variable_49                               ; fixup: num: 5303, src obj: 1, src ofs: 0x23fa8, dst obj: 3, dst ofs: 0x631e
   23fac:	b8 a6 09 00 00       	mov    eax,0x9a6
   23fb1:	31 db                	xor    ebx,ebx
   23fb3:	e8 d8 66 04 00       	call   play_wav
   23fb8:	ba 23 63 00 00       	mov    edx,@obj3:hank_cpp_variable_50                               ; fixup: num: 5302, src obj: 1, src ofs: 0x23fb9, dst obj: 3, dst ofs: 0x6323
   23fbd:	b8 aa 09 00 00       	mov    eax,0x9aa
   23fc2:	31 db                	xor    ebx,ebx
   23fc4:	e8 c7 66 04 00       	call   play_wav
talk_to_HANK_branch_34:
   23fc9:	b8 28 63 00 00       	mov    eax,@obj3:hank_cpp_variable_51                               ; fixup: num: 5301, src obj: 1, src ofs: 0x23fca, dst obj: 3, dst ofs: 0x6328
   23fce:	e8 bd 87 04 00       	call   check_script_flag
   23fd3:	84 c0                	test   al,al
   23fd5:	0f 84 80 00 00 00    	je     talk_to_HANK_branch_37
   23fdb:	83 3d 04 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:HANK_variable_7,0x0                       ; fixup: num: 5300, src obj: 1, src ofs: 0x23fdd, dst obj: 3, dst ofs: 0x22e04
   23fe2:	0f 85 73 00 00 00    	jne    talk_to_HANK_branch_37
   23fe8:	be 01 00 00 00       	mov    esi,0x1
   23fed:	ba 34 63 00 00       	mov    edx,@obj3:hank_cpp_variable_52                               ; fixup: num: 5299, src obj: 1, src ofs: 0x23fee, dst obj: 3, dst ofs: 0x6334
   23ff2:	b8 b1 09 00 00       	mov    eax,0x9b1
   23ff7:	31 db                	xor    ebx,ebx
   23ff9:	89 35 04 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_7,esi                       ; fixup: num: 5298, src obj: 1, src ofs: 0x23ffb, dst obj: 3, dst ofs: 0x22e04
   23fff:	e8 8c 66 04 00       	call   play_wav
   24004:	b8 ce 00 00 00       	mov    eax,0xce
   24009:	e8 92 61 00 00       	call   GetDlgFileString
   2400e:	e8 fd 6e 04 00       	call   get_response
   24013:	39 f0                	cmp    eax,esi
   24015:	75 0c                	jne    talk_to_HANK_branch_35
   24017:	ba 39 63 00 00       	mov    edx,@obj3:hank_cpp_variable_53                               ; fixup: num: 5621, src obj: 1, src ofs: 0x24018, dst obj: 3, dst ofs: 0x6339
   2401c:	b8 bc 09 00 00       	mov    eax,0x9bc
   24021:	eb 31                	jmp    talk_to_HANK_branch_36
talk_to_HANK_branch_35:
   24023:	83 f8 02             	cmp    eax,0x2
   24026:	75 33                	jne    talk_to_HANK_branch_37
   24028:	ba 3e 63 00 00       	mov    edx,@obj3:hank_cpp_variable_54                               ; fixup: num: 5620, src obj: 1, src ofs: 0x24029, dst obj: 3, dst ofs: 0x633e
   2402d:	b8 c1 09 00 00       	mov    eax,0x9c1
   24032:	31 db                	xor    ebx,ebx
   24034:	e8 57 66 04 00       	call   play_wav
   24039:	ba 43 63 00 00       	mov    edx,@obj3:hank_cpp_variable_55                               ; fixup: num: 5631, src obj: 1, src ofs: 0x2403a, dst obj: 3, dst ofs: 0x6343
   2403e:	b8 c5 09 00 00       	mov    eax,0x9c5
   24043:	31 db                	xor    ebx,ebx
   24045:	e8 46 66 04 00       	call   play_wav
   2404a:	ba 46 63 00 00       	mov    edx,@obj3:hank_cpp_variable_56                               ; fixup: num: 5630, src obj: 1, src ofs: 0x2404b, dst obj: 3, dst ofs: 0x6346
   2404f:	b8 c9 09 00 00       	mov    eax,0x9c9
talk_to_HANK_branch_36:
   24054:	31 db                	xor    ebx,ebx
   24056:	e8 35 66 04 00       	call   play_wav
talk_to_HANK_branch_37:
   2405b:	b8 4b 63 00 00       	mov    eax,@obj3:hank_cpp_variable_57                               ; fixup: num: 5629, src obj: 1, src ofs: 0x2405c, dst obj: 3, dst ofs: 0x634b
   24060:	e8 2b 87 04 00       	call   check_script_flag
   24065:	84 c0                	test   al,al
   24067:	0f 84 e6 00 00 00    	je     talk_to_HANK_branch_41
   2406d:	83 3d 08 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:HANK_variable_8,0x0                       ; fixup: num: 5628, src obj: 1, src ofs: 0x2406f, dst obj: 3, dst ofs: 0x22e08
   24074:	0f 85 d9 00 00 00    	jne    talk_to_HANK_branch_41
   2407a:	bd 01 00 00 00       	mov    ebp,0x1
   2407f:	ba 5a 63 00 00       	mov    edx,@obj3:hank_cpp_variable_58                               ; fixup: num: 5627, src obj: 1, src ofs: 0x24080, dst obj: 3, dst ofs: 0x635a
   24084:	b8 d5 09 00 00       	mov    eax,0x9d5
   24089:	31 db                	xor    ebx,ebx
   2408b:	89 2d 08 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_8,ebp                       ; fixup: num: 5626, src obj: 1, src ofs: 0x2408d, dst obj: 3, dst ofs: 0x22e08
   24091:	e8 fa 65 04 00       	call   play_wav
   24096:	89 e8                	mov    eax,ebp
   24098:	31 d2                	xor    edx,edx
   2409a:	e8 b1 41 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   2409f:	85 c0                	test   eax,eax
   240a1:	74 14                	je     talk_to_HANK_branch_38
   240a3:	bb 03 00 00 00       	mov    ebx,0x3
   240a8:	ba 5f 63 00 00       	mov    edx,@obj3:hank_cpp_variable_59                               ; fixup: num: 5625, src obj: 1, src ofs: 0x240a9, dst obj: 3, dst ofs: 0x635f
   240ad:	b8 da 09 00 00       	mov    eax,0x9da
   240b2:	e8 d9 65 04 00       	call   play_wav
talk_to_HANK_branch_38:
   240b7:	ba 62 63 00 00       	mov    edx,@obj3:hank_cpp_variable_60                               ; fixup: num: 5624, src obj: 1, src ofs: 0x240b8, dst obj: 3, dst ofs: 0x6362
   240bc:	b8 de 09 00 00       	mov    eax,0x9de
   240c1:	31 db                	xor    ebx,ebx
   240c3:	e8 c8 65 04 00       	call   play_wav
   240c8:	ba 67 63 00 00       	mov    edx,@obj3:hank_cpp_variable_61                               ; fixup: num: 5623, src obj: 1, src ofs: 0x240c9, dst obj: 3, dst ofs: 0x6367
   240cd:	b8 df 09 00 00       	mov    eax,0x9df
   240d2:	31 db                	xor    ebx,ebx
   240d4:	e8 b7 65 04 00       	call   play_wav
   240d9:	ba 6c 63 00 00       	mov    edx,@obj3:hank_cpp_variable_62                               ; fixup: num: 5622, src obj: 1, src ofs: 0x240da, dst obj: 3, dst ofs: 0x636c
   240de:	b8 e0 09 00 00       	mov    eax,0x9e0
   240e3:	31 db                	xor    ebx,ebx
   240e5:	e8 a6 65 04 00       	call   play_wav
   240ea:	ba 71 63 00 00       	mov    edx,@obj3:hank_cpp_variable_63                               ; fixup: num: 5641, src obj: 1, src ofs: 0x240eb, dst obj: 3, dst ofs: 0x6371
   240ef:	b8 e1 09 00 00       	mov    eax,0x9e1
   240f4:	31 db                	xor    ebx,ebx
   240f6:	e8 95 65 04 00       	call   play_wav
   240fb:	ba 76 63 00 00       	mov    edx,@obj3:hank_cpp_variable_64                               ; fixup: num: 5640, src obj: 1, src ofs: 0x240fc, dst obj: 3, dst ofs: 0x6376
   24100:	b8 e2 09 00 00       	mov    eax,0x9e2
   24105:	31 db                	xor    ebx,ebx
   24107:	e8 84 65 04 00       	call   play_wav
   2410c:	b8 cf 00 00 00       	mov    eax,0xcf
   24111:	e8 8a 60 00 00       	call   GetDlgFileString
   24116:	e8 f5 6d 04 00       	call   get_response
   2411b:	83 f8 01             	cmp    eax,0x1
   2411e:	75 1d                	jne    talk_to_HANK_branch_39
   24120:	ba 7b 63 00 00       	mov    edx,@obj3:hank_cpp_variable_65                               ; fixup: num: 5639, src obj: 1, src ofs: 0x24121, dst obj: 3, dst ofs: 0x637b
   24125:	b8 f4 09 00 00       	mov    eax,0x9f4
   2412a:	31 db                	xor    ebx,ebx
   2412c:	e8 5f 65 04 00       	call   play_wav
   24131:	ba 80 63 00 00       	mov    edx,@obj3:hank_cpp_variable_66                               ; fixup: num: 5638, src obj: 1, src ofs: 0x24132, dst obj: 3, dst ofs: 0x6380
   24136:	b8 fc 09 00 00       	mov    eax,0x9fc
   2413b:	eb 0f                	jmp    talk_to_HANK_branch_40
talk_to_HANK_branch_39:
   2413d:	83 f8 02             	cmp    eax,0x2
   24140:	75 11                	jne    talk_to_HANK_branch_41
   24142:	ba 85 63 00 00       	mov    edx,@obj3:hank_cpp_variable_67                               ; fixup: num: 5637, src obj: 1, src ofs: 0x24143, dst obj: 3, dst ofs: 0x6385
   24147:	b8 01 0a 00 00       	mov    eax,0xa01
talk_to_HANK_branch_40:
   2414c:	31 db                	xor    ebx,ebx
   2414e:	e8 3d 65 04 00       	call   play_wav
talk_to_HANK_branch_41:
   24153:	b8 8a 63 00 00       	mov    eax,@obj3:hank_cpp_variable_68                               ; fixup: num: 5636, src obj: 1, src ofs: 0x24154, dst obj: 3, dst ofs: 0x638a
   24158:	e8 33 86 04 00       	call   check_script_flag
   2415d:	84 c0                	test   al,al
   2415f:	74 25                	je     talk_to_HANK_branch_42
   24161:	83 3d 0c 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:HANK_variable_9,0x0                       ; fixup: num: 5635, src obj: 1, src ofs: 0x24163, dst obj: 3, dst ofs: 0x22e0c
   24168:	75 1c                	jne    talk_to_HANK_branch_42
   2416a:	ba 01 00 00 00       	mov    edx,0x1
   2416f:	b8 0b 0a 00 00       	mov    eax,0xa0b
   24174:	31 db                	xor    ebx,ebx
   24176:	89 15 0c 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_9,edx                       ; fixup: num: 5634, src obj: 1, src ofs: 0x24178, dst obj: 3, dst ofs: 0x22e0c
   2417c:	ba 9c 63 00 00       	mov    edx,@obj3:hank_cpp_variable_69                               ; fixup: num: 5633, src obj: 1, src ofs: 0x2417d, dst obj: 3, dst ofs: 0x639c
   24181:	e8 0a 65 04 00       	call   play_wav
talk_to_HANK_branch_42:
   24186:	b8 a1 63 00 00       	mov    eax,@obj3:hank_cpp_variable_70                               ; fixup: num: 5632, src obj: 1, src ofs: 0x24187, dst obj: 3, dst ofs: 0x63a1
   2418b:	e8 00 86 04 00       	call   check_script_flag
   24190:	84 c0                	test   al,al
   24192:	74 6a                	je     talk_to_HANK_branch_45
   24194:	8b 1d 10 2e 02 00    	mov    ebx,DWORD PTR ds:@obj3:HANK_variable_10                      ; fixup: num: 5650, src obj: 1, src ofs: 0x24196, dst obj: 3, dst ofs: 0x22e10
   2419a:	85 db                	test   ebx,ebx
   2419c:	75 60                	jne    talk_to_HANK_branch_45
   2419e:	b9 01 00 00 00       	mov    ecx,0x1
   241a3:	ba b2 63 00 00       	mov    edx,@obj3:hank_cpp_variable_71                               ; fixup: num: 5649, src obj: 1, src ofs: 0x241a4, dst obj: 3, dst ofs: 0x63b2
   241a8:	b8 15 0a 00 00       	mov    eax,0xa15
   241ad:	89 0d 10 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_10,ecx                      ; fixup: num: 5648, src obj: 1, src ofs: 0x241af, dst obj: 3, dst ofs: 0x22e10
   241b3:	e8 d8 64 04 00       	call   play_wav
   241b8:	b8 d0 00 00 00       	mov    eax,0xd0
   241bd:	e8 de 5f 00 00       	call   GetDlgFileString
   241c2:	e8 49 6d 04 00       	call   get_response
   241c7:	39 c8                	cmp    eax,ecx
   241c9:	75 0c                	jne    talk_to_HANK_branch_43
   241cb:	ba b7 63 00 00       	mov    edx,@obj3:hank_cpp_variable_72                               ; fixup: num: 5647, src obj: 1, src ofs: 0x241cc, dst obj: 3, dst ofs: 0x63b7
   241d0:	b8 20 0a 00 00       	mov    eax,0xa20
   241d5:	eb 20                	jmp    talk_to_HANK_branch_44
talk_to_HANK_branch_43:
   241d7:	83 f8 02             	cmp    eax,0x2
   241da:	75 22                	jne    talk_to_HANK_branch_45
   241dc:	ba bc 63 00 00       	mov    edx,@obj3:hank_cpp_variable_73                               ; fixup: num: 5646, src obj: 1, src ofs: 0x241dd, dst obj: 3, dst ofs: 0x63bc
   241e1:	b8 26 0a 00 00       	mov    eax,0xa26
   241e6:	31 db                	xor    ebx,ebx
   241e8:	e8 a3 64 04 00       	call   play_wav
   241ed:	ba c1 63 00 00       	mov    edx,@obj3:hank_cpp_variable_74                               ; fixup: num: 5645, src obj: 1, src ofs: 0x241ee, dst obj: 3, dst ofs: 0x63c1
   241f2:	b8 2b 0a 00 00       	mov    eax,0xa2b
talk_to_HANK_branch_44:
   241f7:	31 db                	xor    ebx,ebx
   241f9:	e8 92 64 04 00       	call   play_wav
talk_to_HANK_branch_45:
   241fe:	be c6 63 00 00       	mov    esi,@obj3:hank_cpp_variable_75                               ; fixup: num: 5644, src obj: 1, src ofs: 0x241ff, dst obj: 3, dst ofs: 0x63c6
   24203:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 5643, src obj: 1, src ofs: 0x24204, dst obj: 3, dst ofs: 0x294c0
   24208:	57                   	push   edi
talk_to_HANK_branch_46:
   24209:	8a 06                	mov    al,BYTE PTR [esi]
   2420b:	88 07                	mov    BYTE PTR [edi],al
   2420d:	3c 00                	cmp    al,0x0
   2420f:	74 10                	je     talk_to_HANK_branch_47
   24211:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24214:	83 c6 02             	add    esi,0x2
   24217:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2421a:	83 c7 02             	add    edi,0x2
   2421d:	3c 00                	cmp    al,0x0
   2421f:	75 e8                	jne    talk_to_HANK_branch_46
talk_to_HANK_branch_47:
   24221:	5f                   	pop    edi
   24222:	89 fd                	mov    ebp,edi
   24224:	31 c9                	xor    ecx,ecx
talk_to_HANK_branch_48:
   24226:	8b 15 30 24 03 00    	mov    edx,DWORD PTR ds:@obj3:bye_str                               ; fixup: num: 5642, src obj: 1, src ofs: 0x24228, dst obj: 3, dst ofs: 0x32430
   2422c:	89 e8                	mov    eax,ebp
   2422e:	e8 27 d2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24233:	85 c0                	test   eax,eax
   24235:	0f 84 77 09 00 00    	je     talk_to_HANK_branch_86
   2423b:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 5659, src obj: 1, src ofs: 0x2423c, dst obj: 3, dst ofs: 0x295c0
   24240:	e8 fb 77 04 00       	call   show_keywords
   24245:	b8 d2 00 00 00       	mov    eax,0xd2
   2424a:	e8 51 5f 00 00       	call   GetDlgFileString
   2424f:	89 c2                	mov    edx,eax
   24251:	89 e8                	mov    eax,ebp
   24253:	e8 02 d2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24258:	85 c0                	test   eax,eax
   2425a:	0f 85 c7 00 00 00    	jne    talk_to_HANK_branch_51
   24260:	ba c7 63 00 00       	mov    edx,@obj3:hank_cpp_variable_76                               ; fixup: num: 5658, src obj: 1, src ofs: 0x24261, dst obj: 3, dst ofs: 0x63c7
   24265:	b8 25 07 00 00       	mov    eax,0x725
   2426a:	89 cb                	mov    ebx,ecx
   2426c:	e8 1f 64 04 00       	call   play_wav
   24271:	ba cc 63 00 00       	mov    edx,@obj3:hank_cpp_variable_77                               ; fixup: num: 5657, src obj: 1, src ofs: 0x24272, dst obj: 3, dst ofs: 0x63cc
   24276:	b8 29 07 00 00       	mov    eax,0x729
   2427b:	89 cb                	mov    ebx,ecx
   2427d:	e8 0e 64 04 00       	call   play_wav
   24282:	ba cf 63 00 00       	mov    edx,@obj3:hank_cpp_variable_78                               ; fixup: num: 5656, src obj: 1, src ofs: 0x24283, dst obj: 3, dst ofs: 0x63cf
   24287:	b8 2d 07 00 00       	mov    eax,0x72d
   2428c:	89 cb                	mov    ebx,ecx
   2428e:	e8 fd 63 04 00       	call   play_wav
   24293:	ba d4 63 00 00       	mov    edx,@obj3:hank_cpp_variable_79                               ; fixup: num: 5655, src obj: 1, src ofs: 0x24294, dst obj: 3, dst ofs: 0x63d4
   24298:	b8 33 07 00 00       	mov    eax,0x733
   2429d:	89 cb                	mov    ebx,ecx
   2429f:	e8 ec 63 04 00       	call   play_wav
   242a4:	ba d7 63 00 00       	mov    edx,@obj3:hank_cpp_variable_80                               ; fixup: num: 5654, src obj: 1, src ofs: 0x242a5, dst obj: 3, dst ofs: 0x63d7
   242a9:	b8 37 07 00 00       	mov    eax,0x737
   242ae:	89 cb                	mov    ebx,ecx
   242b0:	e8 db 63 04 00       	call   play_wav
   242b5:	ba dc 63 00 00       	mov    edx,@obj3:hank_cpp_variable_81                               ; fixup: num: 5653, src obj: 1, src ofs: 0x242b6, dst obj: 3, dst ofs: 0x63dc
   242ba:	b8 3b 07 00 00       	mov    eax,0x73b
   242bf:	89 cb                	mov    ebx,ecx
   242c1:	e8 ca 63 04 00       	call   play_wav
   242c6:	ba df 63 00 00       	mov    edx,@obj3:hank_cpp_variable_82                               ; fixup: num: 5652, src obj: 1, src ofs: 0x242c7, dst obj: 3, dst ofs: 0x63df
   242cb:	b8 41 07 00 00       	mov    eax,0x741
   242d0:	89 cb                	mov    ebx,ecx
   242d2:	e8 b9 63 04 00       	call   play_wav
   242d7:	bb 02 00 00 00       	mov    ebx,0x2
   242dc:	ba e4 63 00 00       	mov    edx,@obj3:hank_cpp_variable_83                               ; fixup: num: 5651, src obj: 1, src ofs: 0x242dd, dst obj: 3, dst ofs: 0x63e4
   242e1:	b8 47 07 00 00       	mov    eax,0x747
   242e6:	e8 a5 63 04 00       	call   play_wav
   242eb:	b8 e8 63 00 00       	mov    eax,@obj3:hank_cpp_variable_84                               ; fixup: num: 5666, src obj: 1, src ofs: 0x242ec, dst obj: 3, dst ofs: 0x63e8
   242f0:	89 ca                	mov    edx,ecx
   242f2:	e8 29 5a 04 00       	call   Load_head
   242f7:	b8 d5 00 00 00       	mov    eax,0xd5
   242fc:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5665, src obj: 1, src ofs: 0x242fd, dst obj: 3, dst ofs: 0x295c0
   24301:	e8 9a 5e 00 00       	call   GetDlgFileString
   24306:	89 c6                	mov    esi,eax
   24308:	57                   	push   edi
talk_to_HANK_branch_49:
   24309:	8a 06                	mov    al,BYTE PTR [esi]
   2430b:	88 07                	mov    BYTE PTR [edi],al
   2430d:	3c 00                	cmp    al,0x0
   2430f:	74 10                	je     talk_to_HANK_branch_50
   24311:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24314:	83 c6 02             	add    esi,0x2
   24317:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2431a:	83 c7 02             	add    edi,0x2
   2431d:	3c 00                	cmp    al,0x0
   2431f:	75 e8                	jne    talk_to_HANK_branch_49
talk_to_HANK_branch_50:
   24321:	5f                   	pop    edi
   24322:	e9 ff fe ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_51:
   24327:	b8 d6 00 00 00       	mov    eax,0xd6
   2432c:	e8 6f 5e 00 00       	call   GetDlgFileString
   24331:	89 c2                	mov    edx,eax
   24333:	89 e8                	mov    eax,ebp
   24335:	e8 20 d1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2433a:	85 c0                	test   eax,eax
   2433c:	0f 85 9c 00 00 00    	jne    talk_to_HANK_branch_54
   24342:	ba ed 63 00 00       	mov    edx,@obj3:hank_cpp_variable_85                               ; fixup: num: 5664, src obj: 1, src ofs: 0x24343, dst obj: 3, dst ofs: 0x63ed
   24347:	b8 4f 07 00 00       	mov    eax,0x74f
   2434c:	89 cb                	mov    ebx,ecx
   2434e:	e8 3d 63 04 00       	call   play_wav
   24353:	ba f0 63 00 00       	mov    edx,@obj3:hank_cpp_variable_86                               ; fixup: num: 5663, src obj: 1, src ofs: 0x24354, dst obj: 3, dst ofs: 0x63f0
   24358:	b8 53 07 00 00       	mov    eax,0x753
   2435d:	89 cb                	mov    ebx,ecx
   2435f:	e8 2c 63 04 00       	call   play_wav
   24364:	bb 02 00 00 00       	mov    ebx,0x2
   24369:	ba f5 63 00 00       	mov    edx,@obj3:hank_cpp_variable_87                               ; fixup: num: 5662, src obj: 1, src ofs: 0x2436a, dst obj: 3, dst ofs: 0x63f5
   2436e:	b8 58 07 00 00       	mov    eax,0x758
   24373:	e8 18 63 04 00       	call   play_wav
   24378:	ba f8 63 00 00       	mov    edx,@obj3:hank_cpp_variable_88                               ; fixup: num: 5661, src obj: 1, src ofs: 0x24379, dst obj: 3, dst ofs: 0x63f8
   2437d:	b8 5d 07 00 00       	mov    eax,0x75d
   24382:	89 cb                	mov    ebx,ecx
   24384:	e8 07 63 04 00       	call   play_wav
   24389:	bb 02 00 00 00       	mov    ebx,0x2
   2438e:	ba fd 63 00 00       	mov    edx,@obj3:hank_cpp_variable_89                               ; fixup: num: 5660, src obj: 1, src ofs: 0x2438f, dst obj: 3, dst ofs: 0x63fd
   24393:	b8 61 07 00 00       	mov    eax,0x761
   24398:	e8 f3 62 04 00       	call   play_wav
   2439d:	ba 00 64 00 00       	mov    edx,@obj3:hank_cpp_variable_90                               ; fixup: num: 5671, src obj: 1, src ofs: 0x2439e, dst obj: 3, dst ofs: 0x6400
   243a2:	b8 65 07 00 00       	mov    eax,0x765
   243a7:	89 cb                	mov    ebx,ecx
   243a9:	e8 e2 62 04 00       	call   play_wav
   243ae:	b8 d7 00 00 00       	mov    eax,0xd7
   243b3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5670, src obj: 1, src ofs: 0x243b4, dst obj: 3, dst ofs: 0x295c0
   243b8:	e8 e3 5d 00 00       	call   GetDlgFileString
   243bd:	89 c6                	mov    esi,eax
   243bf:	57                   	push   edi
talk_to_HANK_branch_52:
   243c0:	8a 06                	mov    al,BYTE PTR [esi]
   243c2:	88 07                	mov    BYTE PTR [edi],al
   243c4:	3c 00                	cmp    al,0x0
   243c6:	74 10                	je     talk_to_HANK_branch_53
   243c8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   243cb:	83 c6 02             	add    esi,0x2
   243ce:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   243d1:	83 c7 02             	add    edi,0x2
   243d4:	3c 00                	cmp    al,0x0
   243d6:	75 e8                	jne    talk_to_HANK_branch_52
talk_to_HANK_branch_53:
   243d8:	5f                   	pop    edi
   243d9:	e9 48 fe ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_54:
   243de:	b8 d8 00 00 00       	mov    eax,0xd8
   243e3:	e8 b8 5d 00 00       	call   GetDlgFileString
   243e8:	89 c2                	mov    edx,eax
   243ea:	89 e8                	mov    eax,ebp
   243ec:	e8 69 d0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   243f1:	85 c0                	test   eax,eax
   243f3:	74 17                	je     talk_to_HANK_branch_55
   243f5:	b8 d9 00 00 00       	mov    eax,0xd9
   243fa:	e8 a1 5d 00 00       	call   GetDlgFileString
   243ff:	89 c2                	mov    edx,eax
   24401:	89 e8                	mov    eax,ebp
   24403:	e8 52 d0 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24408:	85 c0                	test   eax,eax
   2440a:	75 52                	jne    talk_to_HANK_branch_58
talk_to_HANK_branch_55:
   2440c:	ba 05 64 00 00       	mov    edx,@obj3:hank_cpp_variable_91                               ; fixup: num: 5669, src obj: 1, src ofs: 0x2440d, dst obj: 3, dst ofs: 0x6405
   24411:	b8 6d 07 00 00       	mov    eax,0x76d
   24416:	89 cb                	mov    ebx,ecx
   24418:	e8 73 62 04 00       	call   play_wav
   2441d:	ba 08 64 00 00       	mov    edx,@obj3:hank_cpp_variable_92                               ; fixup: num: 5668, src obj: 1, src ofs: 0x2441e, dst obj: 3, dst ofs: 0x6408
   24422:	b8 71 07 00 00       	mov    eax,0x771
   24427:	89 cb                	mov    ebx,ecx
   24429:	e8 62 62 04 00       	call   play_wav
   2442e:	b8 da 00 00 00       	mov    eax,0xda
   24433:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5667, src obj: 1, src ofs: 0x24434, dst obj: 3, dst ofs: 0x295c0
   24438:	e8 63 5d 00 00       	call   GetDlgFileString
   2443d:	89 c6                	mov    esi,eax
   2443f:	57                   	push   edi
talk_to_HANK_branch_56:
   24440:	8a 06                	mov    al,BYTE PTR [esi]
   24442:	88 07                	mov    BYTE PTR [edi],al
   24444:	3c 00                	cmp    al,0x0
   24446:	74 10                	je     talk_to_HANK_branch_57
   24448:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2444b:	83 c6 02             	add    esi,0x2
   2444e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   24451:	83 c7 02             	add    edi,0x2
   24454:	3c 00                	cmp    al,0x0
   24456:	75 e8                	jne    talk_to_HANK_branch_56
talk_to_HANK_branch_57:
   24458:	5f                   	pop    edi
   24459:	e9 c8 fd ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_58:
   2445e:	b8 db 00 00 00       	mov    eax,0xdb
   24463:	e8 38 5d 00 00       	call   GetDlgFileString
   24468:	89 c2                	mov    edx,eax
   2446a:	89 e8                	mov    eax,ebp
   2446c:	e8 e9 cf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24471:	85 c0                	test   eax,eax
   24473:	74 1b                	je     talk_to_HANK_branch_59
   24475:	b8 dc 00 00 00       	mov    eax,0xdc
   2447a:	e8 21 5d 00 00       	call   GetDlgFileString
   2447f:	89 c2                	mov    edx,eax
   24481:	89 e8                	mov    eax,ebp
   24483:	e8 d2 cf 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24488:	85 c0                	test   eax,eax
   2448a:	0f 85 0b 01 00 00    	jne    talk_to_HANK_branch_65
talk_to_HANK_branch_59:
   24490:	ba 0d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_93                               ; fixup: num: 5677, src obj: 1, src ofs: 0x24491, dst obj: 3, dst ofs: 0x640d
   24495:	b8 7b 07 00 00       	mov    eax,0x77b
   2449a:	89 cb                	mov    ebx,ecx
   2449c:	e8 ef 61 04 00       	call   play_wav
   244a1:	ba 10 64 00 00       	mov    edx,@obj3:hank_cpp_variable_94                               ; fixup: num: 5676, src obj: 1, src ofs: 0x244a2, dst obj: 3, dst ofs: 0x6410
   244a6:	b8 7f 07 00 00       	mov    eax,0x77f
   244ab:	89 cb                	mov    ebx,ecx
   244ad:	e8 de 61 04 00       	call   play_wav
   244b2:	bb 02 00 00 00       	mov    ebx,0x2
   244b7:	ba 15 64 00 00       	mov    edx,@obj3:hank_cpp_variable_95                               ; fixup: num: 5675, src obj: 1, src ofs: 0x244b8, dst obj: 3, dst ofs: 0x6415
   244bc:	b8 84 07 00 00       	mov    eax,0x784
   244c1:	e8 ca 61 04 00       	call   play_wav
   244c6:	ba 18 64 00 00       	mov    edx,@obj3:hank_cpp_variable_96                               ; fixup: num: 5674, src obj: 1, src ofs: 0x244c7, dst obj: 3, dst ofs: 0x6418
   244cb:	b8 88 07 00 00       	mov    eax,0x788
   244d0:	89 cb                	mov    ebx,ecx
   244d2:	e8 b9 61 04 00       	call   play_wav
   244d7:	bb 02 00 00 00       	mov    ebx,0x2
   244dc:	ba 1d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_97                               ; fixup: num: 5673, src obj: 1, src ofs: 0x244dd, dst obj: 3, dst ofs: 0x641d
   244e1:	b8 8e 07 00 00       	mov    eax,0x78e
   244e6:	e8 a5 61 04 00       	call   play_wav
   244eb:	ba 21 64 00 00       	mov    edx,@obj3:hank_cpp_variable_98                               ; fixup: num: 5672, src obj: 1, src ofs: 0x244ec, dst obj: 3, dst ofs: 0x6421
   244f0:	b8 93 07 00 00       	mov    eax,0x793
   244f5:	89 cb                	mov    ebx,ecx
   244f7:	e8 94 61 04 00       	call   play_wav
   244fc:	b8 dd 00 00 00       	mov    eax,0xdd
   24501:	e8 9a 5c 00 00       	call   GetDlgFileString
   24506:	e8 05 6a 04 00       	call   get_response
   2450b:	83 f8 01             	cmp    eax,0x1
   2450e:	75 41                	jne    talk_to_HANK_branch_62
   24510:	ba 26 64 00 00       	mov    edx,@obj3:hank_cpp_variable_99                               ; fixup: num: 5681, src obj: 1, src ofs: 0x24511, dst obj: 3, dst ofs: 0x6426
   24515:	b8 9d 07 00 00       	mov    eax,0x79d
   2451a:	89 cb                	mov    ebx,ecx
   2451c:	e8 6f 61 04 00       	call   play_wav
   24521:	b8 de 00 00 00       	mov    eax,0xde
   24526:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5680, src obj: 1, src ofs: 0x24527, dst obj: 3, dst ofs: 0x295c0
   2452b:	e8 70 5c 00 00       	call   GetDlgFileString
   24530:	89 c6                	mov    esi,eax
   24532:	57                   	push   edi
talk_to_HANK_branch_60:
   24533:	8a 06                	mov    al,BYTE PTR [esi]
   24535:	88 07                	mov    BYTE PTR [edi],al
   24537:	3c 00                	cmp    al,0x0
   24539:	74 10                	je     talk_to_HANK_branch_61
   2453b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2453e:	83 c6 02             	add    esi,0x2
   24541:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   24544:	83 c7 02             	add    edi,0x2
   24547:	3c 00                	cmp    al,0x0
   24549:	75 e8                	jne    talk_to_HANK_branch_60
talk_to_HANK_branch_61:
   2454b:	5f                   	pop    edi
   2454c:	e9 d5 fc ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_62:
   24551:	83 f8 02             	cmp    eax,0x2
   24554:	0f 85 cc fc ff ff    	jne    talk_to_HANK_branch_48
   2455a:	ba 2b 64 00 00       	mov    edx,@obj3:hank_cpp_variable_100                              ; fixup: num: 5679, src obj: 1, src ofs: 0x2455b, dst obj: 3, dst ofs: 0x642b
   2455f:	b8 a4 07 00 00       	mov    eax,0x7a4
   24564:	89 cb                	mov    ebx,ecx
   24566:	e8 25 61 04 00       	call   play_wav
   2456b:	b8 df 00 00 00       	mov    eax,0xdf
   24570:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5678, src obj: 1, src ofs: 0x24571, dst obj: 3, dst ofs: 0x295c0
   24575:	e8 26 5c 00 00       	call   GetDlgFileString
   2457a:	89 c6                	mov    esi,eax
   2457c:	57                   	push   edi
talk_to_HANK_branch_63:
   2457d:	8a 06                	mov    al,BYTE PTR [esi]
   2457f:	88 07                	mov    BYTE PTR [edi],al
   24581:	3c 00                	cmp    al,0x0
   24583:	74 10                	je     talk_to_HANK_branch_64
   24585:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24588:	83 c6 02             	add    esi,0x2
   2458b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2458e:	83 c7 02             	add    edi,0x2
   24591:	3c 00                	cmp    al,0x0
   24593:	75 e8                	jne    talk_to_HANK_branch_63
talk_to_HANK_branch_64:
   24595:	5f                   	pop    edi
   24596:	e9 8b fc ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_65:
   2459b:	b8 e0 00 00 00       	mov    eax,0xe0
   245a0:	e8 fb 5b 00 00       	call   GetDlgFileString
   245a5:	89 c2                	mov    edx,eax
   245a7:	89 e8                	mov    eax,ebp
   245a9:	e8 ac ce 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   245ae:	85 c0                	test   eax,eax
   245b0:	75 16                	jne    talk_to_HANK_branch_66
   245b2:	ba 30 64 00 00       	mov    edx,@obj3:hank_cpp_variable_101                              ; fixup: num: 5553, src obj: 1, src ofs: 0x245b3, dst obj: 3, dst ofs: 0x6430
   245b7:	b8 ad 07 00 00       	mov    eax,0x7ad
   245bc:	89 cb                	mov    ebx,ecx
   245be:	e8 cd 60 04 00       	call   play_wav
   245c3:	e9 5e fc ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_66:
   245c8:	b8 e1 00 00 00       	mov    eax,0xe1
   245cd:	e8 ce 5b 00 00       	call   GetDlgFileString
   245d2:	89 c2                	mov    edx,eax
   245d4:	89 e8                	mov    eax,ebp
   245d6:	e8 7f ce 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   245db:	85 c0                	test   eax,eax
   245dd:	0f 85 96 00 00 00    	jne    talk_to_HANK_branch_69
   245e3:	ba 35 64 00 00       	mov    edx,@obj3:hank_cpp_variable_102                              ; fixup: num: 5552, src obj: 1, src ofs: 0x245e4, dst obj: 3, dst ofs: 0x6435
   245e8:	b8 b7 07 00 00       	mov    eax,0x7b7
   245ed:	89 cb                	mov    ebx,ecx
   245ef:	e8 9c 60 04 00       	call   play_wav
   245f4:	ba 38 64 00 00       	mov    edx,@obj3:hank_cpp_variable_103                              ; fixup: num: 5687, src obj: 1, src ofs: 0x245f5, dst obj: 3, dst ofs: 0x6438
   245f9:	b8 bb 07 00 00       	mov    eax,0x7bb
   245fe:	89 cb                	mov    ebx,ecx
   24600:	e8 8b 60 04 00       	call   play_wav
   24605:	ba 3d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_104                              ; fixup: num: 5686, src obj: 1, src ofs: 0x24606, dst obj: 3, dst ofs: 0x643d
   2460a:	b8 c0 07 00 00       	mov    eax,0x7c0
   2460f:	89 cb                	mov    ebx,ecx
   24611:	e8 7a 60 04 00       	call   play_wav
   24616:	ba 40 64 00 00       	mov    edx,@obj3:hank_cpp_variable_105                              ; fixup: num: 5685, src obj: 1, src ofs: 0x24617, dst obj: 3, dst ofs: 0x6440
   2461b:	b8 c4 07 00 00       	mov    eax,0x7c4
   24620:	89 cb                	mov    ebx,ecx
   24622:	e8 69 60 04 00       	call   play_wav
   24627:	ba 45 64 00 00       	mov    edx,@obj3:hank_cpp_variable_106                              ; fixup: num: 5684, src obj: 1, src ofs: 0x24628, dst obj: 3, dst ofs: 0x6445
   2462c:	b8 ca 07 00 00       	mov    eax,0x7ca
   24631:	89 cb                	mov    ebx,ecx
   24633:	e8 58 60 04 00       	call   play_wav
   24638:	ba 48 64 00 00       	mov    edx,@obj3:hank_cpp_variable_107                              ; fixup: num: 5683, src obj: 1, src ofs: 0x24639, dst obj: 3, dst ofs: 0x6448
   2463d:	b8 ce 07 00 00       	mov    eax,0x7ce
   24642:	89 cb                	mov    ebx,ecx
   24644:	e8 47 60 04 00       	call   play_wav
   24649:	b8 e2 00 00 00       	mov    eax,0xe2
   2464e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5682, src obj: 1, src ofs: 0x2464f, dst obj: 3, dst ofs: 0x295c0
   24653:	e8 48 5b 00 00       	call   GetDlgFileString
   24658:	89 c6                	mov    esi,eax
   2465a:	57                   	push   edi
talk_to_HANK_branch_67:
   2465b:	8a 06                	mov    al,BYTE PTR [esi]
   2465d:	88 07                	mov    BYTE PTR [edi],al
   2465f:	3c 00                	cmp    al,0x0
   24661:	74 10                	je     talk_to_HANK_branch_68
   24663:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24666:	83 c6 02             	add    esi,0x2
   24669:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2466c:	83 c7 02             	add    edi,0x2
   2466f:	3c 00                	cmp    al,0x0
   24671:	75 e8                	jne    talk_to_HANK_branch_67
talk_to_HANK_branch_68:
   24673:	5f                   	pop    edi
   24674:	e9 ad fb ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_69:
   24679:	b8 e3 00 00 00       	mov    eax,0xe3
   2467e:	e8 1d 5b 00 00       	call   GetDlgFileString
   24683:	89 c2                	mov    edx,eax
   24685:	89 e8                	mov    eax,ebp
   24687:	e8 ce cd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2468c:	85 c0                	test   eax,eax
   2468e:	0f 85 99 00 00 00    	jne    talk_to_HANK_branch_72
   24694:	ba 4d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_108                              ; fixup: num: 5560, src obj: 1, src ofs: 0x24695, dst obj: 3, dst ofs: 0x644d
   24699:	b8 d6 07 00 00       	mov    eax,0x7d6
   2469e:	89 cb                	mov    ebx,ecx
   246a0:	e8 eb 5f 04 00       	call   play_wav
   246a5:	ba 50 64 00 00       	mov    edx,@obj3:hank_cpp_variable_109                              ; fixup: num: 5559, src obj: 1, src ofs: 0x246a6, dst obj: 3, dst ofs: 0x6450
   246aa:	b8 da 07 00 00       	mov    eax,0x7da
   246af:	89 cb                	mov    ebx,ecx
   246b1:	e8 da 5f 04 00       	call   play_wav
   246b6:	ba 55 64 00 00       	mov    edx,@obj3:hank_cpp_variable_110                              ; fixup: num: 5558, src obj: 1, src ofs: 0x246b7, dst obj: 3, dst ofs: 0x6455
   246bb:	b8 df 07 00 00       	mov    eax,0x7df
   246c0:	89 cb                	mov    ebx,ecx
   246c2:	e8 c9 5f 04 00       	call   play_wav
   246c7:	ba 58 64 00 00       	mov    edx,@obj3:hank_cpp_variable_111                              ; fixup: num: 5557, src obj: 1, src ofs: 0x246c8, dst obj: 3, dst ofs: 0x6458
   246cc:	b8 e3 07 00 00       	mov    eax,0x7e3
   246d1:	89 cb                	mov    ebx,ecx
   246d3:	e8 b8 5f 04 00       	call   play_wav
   246d8:	bb 04 00 00 00       	mov    ebx,0x4
   246dd:	ba 5d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_112                              ; fixup: num: 5556, src obj: 1, src ofs: 0x246de, dst obj: 3, dst ofs: 0x645d
   246e2:	b8 e8 07 00 00       	mov    eax,0x7e8
   246e7:	e8 a4 5f 04 00       	call   play_wav
   246ec:	ba 60 64 00 00       	mov    edx,@obj3:hank_cpp_variable_113                              ; fixup: num: 5555, src obj: 1, src ofs: 0x246ed, dst obj: 3, dst ofs: 0x6460
   246f1:	b8 ec 07 00 00       	mov    eax,0x7ec
   246f6:	89 cb                	mov    ebx,ecx
   246f8:	e8 93 5f 04 00       	call   play_wav
   246fd:	b8 e4 00 00 00       	mov    eax,0xe4
   24702:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5554, src obj: 1, src ofs: 0x24703, dst obj: 3, dst ofs: 0x295c0
   24707:	e8 94 5a 00 00       	call   GetDlgFileString
   2470c:	89 c6                	mov    esi,eax
   2470e:	57                   	push   edi
talk_to_HANK_branch_70:
   2470f:	8a 06                	mov    al,BYTE PTR [esi]
   24711:	88 07                	mov    BYTE PTR [edi],al
   24713:	3c 00                	cmp    al,0x0
   24715:	74 10                	je     talk_to_HANK_branch_71
   24717:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2471a:	83 c6 02             	add    esi,0x2
   2471d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   24720:	83 c7 02             	add    edi,0x2
   24723:	3c 00                	cmp    al,0x0
   24725:	75 e8                	jne    talk_to_HANK_branch_70
talk_to_HANK_branch_71:
   24727:	5f                   	pop    edi
   24728:	e9 f9 fa ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_72:
   2472d:	b8 e5 00 00 00       	mov    eax,0xe5
   24732:	e8 69 5a 00 00       	call   GetDlgFileString
   24737:	89 c2                	mov    edx,eax
   24739:	89 e8                	mov    eax,ebp
   2473b:	e8 1a cd 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24740:	85 c0                	test   eax,eax
   24742:	75 16                	jne    talk_to_HANK_branch_73
   24744:	ba 65 64 00 00       	mov    edx,@obj3:hank_cpp_variable_114                              ; fixup: num: 5565, src obj: 1, src ofs: 0x24745, dst obj: 3, dst ofs: 0x6465
   24749:	b8 f4 07 00 00       	mov    eax,0x7f4
   2474e:	89 cb                	mov    ebx,ecx
   24750:	e8 3b 5f 04 00       	call   play_wav
   24755:	e9 cc fa ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_73:
   2475a:	b8 e6 00 00 00       	mov    eax,0xe6
   2475f:	e8 3c 5a 00 00       	call   GetDlgFileString
   24764:	89 c2                	mov    edx,eax
   24766:	89 e8                	mov    eax,ebp
   24768:	e8 ed cc 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2476d:	85 c0                	test   eax,eax
   2476f:	0f 85 ce 00 00 00    	jne    talk_to_HANK_branch_76
   24775:	ba 6a 64 00 00       	mov    edx,@obj3:hank_cpp_variable_115                              ; fixup: num: 5564, src obj: 1, src ofs: 0x24776, dst obj: 3, dst ofs: 0x646a
   2477a:	b8 fc 07 00 00       	mov    eax,0x7fc
   2477f:	89 cb                	mov    ebx,ecx
   24781:	e8 0a 5f 04 00       	call   play_wav
   24786:	ba 6d 64 00 00       	mov    edx,@obj3:hank_cpp_variable_116                              ; fixup: num: 5563, src obj: 1, src ofs: 0x24787, dst obj: 3, dst ofs: 0x646d
   2478b:	b8 01 08 00 00       	mov    eax,0x801
   24790:	89 cb                	mov    ebx,ecx
   24792:	e8 f9 5e 04 00       	call   play_wav
   24797:	ba 72 64 00 00       	mov    edx,@obj3:hank_cpp_variable_117                              ; fixup: num: 5562, src obj: 1, src ofs: 0x24798, dst obj: 3, dst ofs: 0x6472
   2479c:	b8 05 08 00 00       	mov    eax,0x805
   247a1:	89 cb                	mov    ebx,ecx
   247a3:	e8 e8 5e 04 00       	call   play_wav
   247a8:	ba 75 64 00 00       	mov    edx,@obj3:hank_cpp_variable_118                              ; fixup: num: 5561, src obj: 1, src ofs: 0x247a9, dst obj: 3, dst ofs: 0x6475
   247ad:	b8 09 08 00 00       	mov    eax,0x809
   247b2:	89 cb                	mov    ebx,ecx
   247b4:	e8 d7 5e 04 00       	call   play_wav
   247b9:	e8 52 3f 00 00       	call   PAN_OF_TELEVISION
   247be:	ba 7a 64 00 00       	mov    edx,@obj3:hank_cpp_variable_119                              ; fixup: num: 5572, src obj: 1, src ofs: 0x247bf, dst obj: 3, dst ofs: 0x647a
   247c3:	b8 12 08 00 00       	mov    eax,0x812
   247c8:	89 cb                	mov    ebx,ecx
   247ca:	e8 c1 5e 04 00       	call   play_wav
   247cf:	ba 7f 64 00 00       	mov    edx,@obj3:hank_cpp_variable_120                              ; fixup: num: 5571, src obj: 1, src ofs: 0x247d0, dst obj: 3, dst ofs: 0x647f
   247d4:	b8 16 08 00 00       	mov    eax,0x816
   247d9:	89 cb                	mov    ebx,ecx
   247db:	e8 b0 5e 04 00       	call   play_wav
   247e0:	ba 82 64 00 00       	mov    edx,@obj3:hank_cpp_variable_121                              ; fixup: num: 5570, src obj: 1, src ofs: 0x247e1, dst obj: 3, dst ofs: 0x6482
   247e5:	b8 1a 08 00 00       	mov    eax,0x81a
   247ea:	89 cb                	mov    ebx,ecx
   247ec:	e8 9f 5e 04 00       	call   play_wav
   247f1:	ba 87 64 00 00       	mov    edx,@obj3:hank_cpp_variable_122                              ; fixup: num: 5569, src obj: 1, src ofs: 0x247f2, dst obj: 3, dst ofs: 0x6487
   247f6:	b8 1e 08 00 00       	mov    eax,0x81e
   247fb:	89 cb                	mov    ebx,ecx
   247fd:	e8 8e 5e 04 00       	call   play_wav
   24802:	ba 8a 64 00 00       	mov    edx,@obj3:hank_cpp_variable_123                              ; fixup: num: 5568, src obj: 1, src ofs: 0x24803, dst obj: 3, dst ofs: 0x648a
   24807:	b8 24 08 00 00       	mov    eax,0x824
   2480c:	89 cb                	mov    ebx,ecx
   2480e:	e8 7d 5e 04 00       	call   play_wav
   24813:	b8 e8 00 00 00       	mov    eax,0xe8
   24818:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5567, src obj: 1, src ofs: 0x24819, dst obj: 3, dst ofs: 0x295c0
   2481d:	e8 7e 59 00 00       	call   GetDlgFileString
   24822:	89 c6                	mov    esi,eax
   24824:	57                   	push   edi
talk_to_HANK_branch_74:
   24825:	8a 06                	mov    al,BYTE PTR [esi]
   24827:	88 07                	mov    BYTE PTR [edi],al
   24829:	3c 00                	cmp    al,0x0
   2482b:	74 10                	je     talk_to_HANK_branch_75
   2482d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   24830:	83 c6 02             	add    esi,0x2
   24833:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   24836:	83 c7 02             	add    edi,0x2
   24839:	3c 00                	cmp    al,0x0
   2483b:	75 e8                	jne    talk_to_HANK_branch_74
talk_to_HANK_branch_75:
   2483d:	5f                   	pop    edi
   2483e:	e9 e3 f9 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_76:
   24843:	b8 e9 00 00 00       	mov    eax,0xe9
   24848:	e8 53 59 00 00       	call   GetDlgFileString
   2484d:	89 c2                	mov    edx,eax
   2484f:	89 e8                	mov    eax,ebp
   24851:	e8 04 cc 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24856:	85 c0                	test   eax,eax
   24858:	0f 85 d4 00 00 00    	jne    talk_to_HANK_branch_78
   2485e:	ba 8f 64 00 00       	mov    edx,@obj3:hank_cpp_variable_124                              ; fixup: num: 5566, src obj: 1, src ofs: 0x2485f, dst obj: 3, dst ofs: 0x648f
   24863:	b8 2d 08 00 00       	mov    eax,0x82d
   24868:	89 cb                	mov    ebx,ecx
   2486a:	e8 21 5e 04 00       	call   play_wav
   2486f:	ba 92 64 00 00       	mov    edx,@obj3:hank_cpp_variable_125                              ; fixup: num: 5580, src obj: 1, src ofs: 0x24870, dst obj: 3, dst ofs: 0x6492
   24874:	b8 31 08 00 00       	mov    eax,0x831
   24879:	89 cb                	mov    ebx,ecx
   2487b:	e8 10 5e 04 00       	call   play_wav
   24880:	ba 97 64 00 00       	mov    edx,@obj3:hank_cpp_variable_126                              ; fixup: num: 5579, src obj: 1, src ofs: 0x24881, dst obj: 3, dst ofs: 0x6497
   24885:	b8 35 08 00 00       	mov    eax,0x835
   2488a:	89 cb                	mov    ebx,ecx
   2488c:	e8 ff 5d 04 00       	call   play_wav
   24891:	ba 9a 64 00 00       	mov    edx,@obj3:hank_cpp_variable_127                              ; fixup: num: 5578, src obj: 1, src ofs: 0x24892, dst obj: 3, dst ofs: 0x649a
   24896:	b8 39 08 00 00       	mov    eax,0x839
   2489b:	89 cb                	mov    ebx,ecx
   2489d:	e8 ee 5d 04 00       	call   play_wav
   248a2:	bb 04 00 00 00       	mov    ebx,0x4
   248a7:	ba 9f 64 00 00       	mov    edx,@obj3:hank_cpp_variable_128                              ; fixup: num: 5577, src obj: 1, src ofs: 0x248a8, dst obj: 3, dst ofs: 0x649f
   248ac:	b8 3d 08 00 00       	mov    eax,0x83d
   248b1:	e8 da 5d 04 00       	call   play_wav
   248b6:	ba a2 64 00 00       	mov    edx,@obj3:hank_cpp_variable_129                              ; fixup: num: 5576, src obj: 1, src ofs: 0x248b7, dst obj: 3, dst ofs: 0x64a2
   248bb:	b8 42 08 00 00       	mov    eax,0x842
   248c0:	89 cb                	mov    ebx,ecx
   248c2:	e8 c9 5d 04 00       	call   play_wav
   248c7:	ba a7 64 00 00       	mov    edx,@obj3:hank_cpp_variable_130                              ; fixup: num: 5575, src obj: 1, src ofs: 0x248c8, dst obj: 3, dst ofs: 0x64a7
   248cc:	b8 48 08 00 00       	mov    eax,0x848
   248d1:	89 cb                	mov    ebx,ecx
   248d3:	e8 b8 5d 04 00       	call   play_wav
   248d8:	ba ac 64 00 00       	mov    edx,@obj3:hank_cpp_variable_131                              ; fixup: num: 5574, src obj: 1, src ofs: 0x248d9, dst obj: 3, dst ofs: 0x64ac
   248dd:	b8 4c 08 00 00       	mov    eax,0x84c
   248e2:	89 cb                	mov    ebx,ecx
   248e4:	e8 a7 5d 04 00       	call   play_wav
   248e9:	b8 ea 00 00 00       	mov    eax,0xea
   248ee:	e8 ad 58 00 00       	call   GetDlgFileString
   248f3:	e8 18 66 04 00       	call   get_response
   248f8:	83 f8 01             	cmp    eax,0x1
   248fb:	75 16                	jne    talk_to_HANK_branch_77
   248fd:	ba b1 64 00 00       	mov    edx,@obj3:hank_cpp_variable_132                              ; fixup: num: 5573, src obj: 1, src ofs: 0x248fe, dst obj: 3, dst ofs: 0x64b1
   24902:	b8 56 08 00 00       	mov    eax,0x856
   24907:	89 cb                	mov    ebx,ecx
   24909:	e8 82 5d 04 00       	call   play_wav
   2490e:	e9 13 f9 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_77:
   24913:	83 f8 02             	cmp    eax,0x2
   24916:	0f 85 0a f9 ff ff    	jne    talk_to_HANK_branch_48
   2491c:	ba b6 64 00 00       	mov    edx,@obj3:hank_cpp_variable_133                              ; fixup: num: 5588, src obj: 1, src ofs: 0x2491d, dst obj: 3, dst ofs: 0x64b6
   24921:	b8 5a 08 00 00       	mov    eax,0x85a
   24926:	89 cb                	mov    ebx,ecx
   24928:	e8 63 5d 04 00       	call   play_wav
   2492d:	e9 f4 f8 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_78:
   24932:	b8 eb 00 00 00       	mov    eax,0xeb
   24937:	e8 64 58 00 00       	call   GetDlgFileString
   2493c:	89 c2                	mov    edx,eax
   2493e:	89 e8                	mov    eax,ebp
   24940:	e8 15 cb 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24945:	85 c0                	test   eax,eax
   24947:	0f 85 96 00 00 00    	jne    talk_to_HANK_branch_81
   2494d:	ba bb 64 00 00       	mov    edx,@obj3:hank_cpp_variable_134                              ; fixup: num: 5587, src obj: 1, src ofs: 0x2494e, dst obj: 3, dst ofs: 0x64bb
   24952:	b8 63 08 00 00       	mov    eax,0x863
   24957:	89 cb                	mov    ebx,ecx
   24959:	e8 32 5d 04 00       	call   play_wav
   2495e:	ba be 64 00 00       	mov    edx,@obj3:hank_cpp_variable_135                              ; fixup: num: 5586, src obj: 1, src ofs: 0x2495f, dst obj: 3, dst ofs: 0x64be
   24963:	b8 67 08 00 00       	mov    eax,0x867
   24968:	89 cb                	mov    ebx,ecx
   2496a:	e8 21 5d 04 00       	call   play_wav
   2496f:	ba c3 64 00 00       	mov    edx,@obj3:hank_cpp_variable_136                              ; fixup: num: 5585, src obj: 1, src ofs: 0x24970, dst obj: 3, dst ofs: 0x64c3
   24974:	b8 6b 08 00 00       	mov    eax,0x86b
   24979:	89 cb                	mov    ebx,ecx
   2497b:	e8 10 5d 04 00       	call   play_wav
   24980:	ba c6 64 00 00       	mov    edx,@obj3:hank_cpp_variable_137                              ; fixup: num: 5584, src obj: 1, src ofs: 0x24981, dst obj: 3, dst ofs: 0x64c6
   24985:	b8 6f 08 00 00       	mov    eax,0x86f
   2498a:	89 cb                	mov    ebx,ecx
   2498c:	e8 ff 5c 04 00       	call   play_wav
   24991:	ba cb 64 00 00       	mov    edx,@obj3:hank_cpp_variable_138                              ; fixup: num: 5583, src obj: 1, src ofs: 0x24992, dst obj: 3, dst ofs: 0x64cb
   24996:	b8 73 08 00 00       	mov    eax,0x873
   2499b:	89 cb                	mov    ebx,ecx
   2499d:	e8 ee 5c 04 00       	call   play_wav
   249a2:	ba ce 64 00 00       	mov    edx,@obj3:hank_cpp_variable_139                              ; fixup: num: 5582, src obj: 1, src ofs: 0x249a3, dst obj: 3, dst ofs: 0x64ce
   249a7:	b8 77 08 00 00       	mov    eax,0x877
   249ac:	89 cb                	mov    ebx,ecx
   249ae:	e8 dd 5c 04 00       	call   play_wav
   249b3:	b8 ec 00 00 00       	mov    eax,0xec
   249b8:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5581, src obj: 1, src ofs: 0x249b9, dst obj: 3, dst ofs: 0x295c0
   249bd:	e8 de 57 00 00       	call   GetDlgFileString
   249c2:	89 c6                	mov    esi,eax
   249c4:	57                   	push   edi
talk_to_HANK_branch_79:
   249c5:	8a 06                	mov    al,BYTE PTR [esi]
   249c7:	88 07                	mov    BYTE PTR [edi],al
   249c9:	3c 00                	cmp    al,0x0
   249cb:	74 10                	je     talk_to_HANK_branch_80
   249cd:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   249d0:	83 c6 02             	add    esi,0x2
   249d3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   249d6:	83 c7 02             	add    edi,0x2
   249d9:	3c 00                	cmp    al,0x0
   249db:	75 e8                	jne    talk_to_HANK_branch_79
talk_to_HANK_branch_80:
   249dd:	5f                   	pop    edi
   249de:	e9 43 f8 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_81:
   249e3:	b8 ed 00 00 00       	mov    eax,0xed
   249e8:	e8 b3 57 00 00       	call   GetDlgFileString
   249ed:	89 c2                	mov    edx,eax
   249ef:	89 e8                	mov    eax,ebp
   249f1:	e8 64 ca 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   249f6:	85 c0                	test   eax,eax
   249f8:	75 6b                	jne    talk_to_HANK_branch_82
   249fa:	ba d3 64 00 00       	mov    edx,@obj3:hank_cpp_variable_140                              ; fixup: num: 5594, src obj: 1, src ofs: 0x249fb, dst obj: 3, dst ofs: 0x64d3
   249ff:	b8 81 08 00 00       	mov    eax,0x881
   24a04:	89 cb                	mov    ebx,ecx
   24a06:	e8 85 5c 04 00       	call   play_wav
   24a0b:	ba d6 64 00 00       	mov    edx,@obj3:hank_cpp_variable_141                              ; fixup: num: 5593, src obj: 1, src ofs: 0x24a0c, dst obj: 3, dst ofs: 0x64d6
   24a10:	b8 85 08 00 00       	mov    eax,0x885
   24a15:	89 cb                	mov    ebx,ecx
   24a17:	e8 74 5c 04 00       	call   play_wav
   24a1c:	ba db 64 00 00       	mov    edx,@obj3:hank_cpp_variable_142                              ; fixup: num: 5592, src obj: 1, src ofs: 0x24a1d, dst obj: 3, dst ofs: 0x64db
   24a21:	b8 8a 08 00 00       	mov    eax,0x88a
   24a26:	89 cb                	mov    ebx,ecx
   24a28:	e8 63 5c 04 00       	call   play_wav
   24a2d:	ba de 64 00 00       	mov    edx,@obj3:hank_cpp_variable_143                              ; fixup: num: 5591, src obj: 1, src ofs: 0x24a2e, dst obj: 3, dst ofs: 0x64de
   24a32:	b8 8f 08 00 00       	mov    eax,0x88f
   24a37:	89 cb                	mov    ebx,ecx
   24a39:	e8 52 5c 04 00       	call   play_wav
   24a3e:	ba e3 64 00 00       	mov    edx,@obj3:hank_cpp_variable_144                              ; fixup: num: 5590, src obj: 1, src ofs: 0x24a3f, dst obj: 3, dst ofs: 0x64e3
   24a43:	b8 94 08 00 00       	mov    eax,0x894
   24a48:	89 cb                	mov    ebx,ecx
   24a4a:	e8 41 5c 04 00       	call   play_wav
   24a4f:	ba e6 64 00 00       	mov    edx,@obj3:hank_cpp_variable_145                              ; fixup: num: 5589, src obj: 1, src ofs: 0x24a50, dst obj: 3, dst ofs: 0x64e6
   24a54:	b8 98 08 00 00       	mov    eax,0x898
   24a59:	89 cb                	mov    ebx,ecx
   24a5b:	e8 30 5c 04 00       	call   play_wav
   24a60:	e9 c1 f7 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_82:
   24a65:	b8 ee 00 00 00       	mov    eax,0xee
   24a6a:	e8 31 57 00 00       	call   GetDlgFileString
   24a6f:	89 c2                	mov    edx,eax
   24a71:	89 e8                	mov    eax,ebp
   24a73:	e8 e2 c9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24a78:	85 c0                	test   eax,eax
   24a7a:	74 2e                	je     talk_to_HANK_branch_83
   24a7c:	b8 ef 00 00 00       	mov    eax,0xef
   24a81:	e8 1a 57 00 00       	call   GetDlgFileString
   24a86:	89 c2                	mov    edx,eax
   24a88:	89 e8                	mov    eax,ebp
   24a8a:	e8 cb c9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24a8f:	85 c0                	test   eax,eax
   24a91:	74 17                	je     talk_to_HANK_branch_83
   24a93:	b8 f0 00 00 00       	mov    eax,0xf0
   24a98:	e8 03 57 00 00       	call   GetDlgFileString
   24a9d:	89 c2                	mov    edx,eax
   24a9f:	89 e8                	mov    eax,ebp
   24aa1:	e8 b4 c9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24aa6:	85 c0                	test   eax,eax
   24aa8:	75 5a                	jne    talk_to_HANK_branch_84
talk_to_HANK_branch_83:
   24aaa:	ba eb 64 00 00       	mov    edx,@obj3:hank_cpp_variable_146                              ; fixup: num: 5599, src obj: 1, src ofs: 0x24aab, dst obj: 3, dst ofs: 0x64eb
   24aaf:	b8 a0 08 00 00       	mov    eax,0x8a0
   24ab4:	89 cb                	mov    ebx,ecx
   24ab6:	e8 d5 5b 04 00       	call   play_wav
   24abb:	ba f0 64 00 00       	mov    edx,@obj3:hank_cpp_variable_147                              ; fixup: num: 5598, src obj: 1, src ofs: 0x24abc, dst obj: 3, dst ofs: 0x64f0
   24ac0:	b8 a5 08 00 00       	mov    eax,0x8a5
   24ac5:	89 cb                	mov    ebx,ecx
   24ac7:	e8 c4 5b 04 00       	call   play_wav
   24acc:	ba f3 64 00 00       	mov    edx,@obj3:hank_cpp_variable_148                              ; fixup: num: 5597, src obj: 1, src ofs: 0x24acd, dst obj: 3, dst ofs: 0x64f3
   24ad1:	b8 a9 08 00 00       	mov    eax,0x8a9
   24ad6:	89 cb                	mov    ebx,ecx
   24ad8:	e8 b3 5b 04 00       	call   play_wav
   24add:	ba f8 64 00 00       	mov    edx,@obj3:hank_cpp_variable_149                              ; fixup: num: 5596, src obj: 1, src ofs: 0x24ade, dst obj: 3, dst ofs: 0x64f8
   24ae2:	b8 af 08 00 00       	mov    eax,0x8af
   24ae7:	89 cb                	mov    ebx,ecx
   24ae9:	e8 a2 5b 04 00       	call   play_wav
   24aee:	ba fb 64 00 00       	mov    edx,@obj3:hank_cpp_variable_150                              ; fixup: num: 5595, src obj: 1, src ofs: 0x24aef, dst obj: 3, dst ofs: 0x64fb
   24af3:	b8 b3 08 00 00       	mov    eax,0x8b3
   24af8:	89 cb                	mov    ebx,ecx
   24afa:	e8 91 5b 04 00       	call   play_wav
   24aff:	e9 22 f7 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_84:
   24b04:	b8 f1 00 00 00       	mov    eax,0xf1
   24b09:	e8 92 56 00 00       	call   GetDlgFileString
   24b0e:	89 c2                	mov    edx,eax
   24b10:	89 e8                	mov    eax,ebp
   24b12:	e8 43 c9 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24b17:	85 c0                	test   eax,eax
   24b19:	75 66                	jne    talk_to_HANK_branch_85
   24b1b:	ba 01 00 00 00       	mov    edx,0x1
   24b20:	89 c8                	mov    eax,ecx
   24b22:	e8 99 39 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   24b27:	89 cb                	mov    ebx,ecx
   24b29:	ba 00 65 00 00       	mov    edx,@obj3:hank_cpp_variable_151                              ; fixup: num: 5606, src obj: 1, src ofs: 0x24b2a, dst obj: 3, dst ofs: 0x6500
   24b2e:	b8 bf 08 00 00       	mov    eax,0x8bf
   24b33:	e8 58 5b 04 00       	call   play_wav
   24b38:	ba 05 65 00 00       	mov    edx,@obj3:hank_cpp_variable_152                              ; fixup: num: 5605, src obj: 1, src ofs: 0x24b39, dst obj: 3, dst ofs: 0x6505
   24b3d:	b8 c5 08 00 00       	mov    eax,0x8c5
   24b42:	89 cb                	mov    ebx,ecx
   24b44:	e8 47 5b 04 00       	call   play_wav
   24b49:	ba 08 65 00 00       	mov    edx,@obj3:hank_cpp_variable_153                              ; fixup: num: 5604, src obj: 1, src ofs: 0x24b4a, dst obj: 3, dst ofs: 0x6508
   24b4e:	b8 c9 08 00 00       	mov    eax,0x8c9
   24b53:	89 cb                	mov    ebx,ecx
   24b55:	e8 36 5b 04 00       	call   play_wav
   24b5a:	ba 0d 65 00 00       	mov    edx,@obj3:hank_cpp_variable_154                              ; fixup: num: 5603, src obj: 1, src ofs: 0x24b5b, dst obj: 3, dst ofs: 0x650d
   24b5f:	b8 cf 08 00 00       	mov    eax,0x8cf
   24b64:	89 cb                	mov    ebx,ecx
   24b66:	e8 25 5b 04 00       	call   play_wav
   24b6b:	ba 10 65 00 00       	mov    edx,@obj3:hank_cpp_variable_155                              ; fixup: num: 5602, src obj: 1, src ofs: 0x24b6c, dst obj: 3, dst ofs: 0x6510
   24b70:	b8 d3 08 00 00       	mov    eax,0x8d3
   24b75:	89 cb                	mov    ebx,ecx
   24b77:	e8 14 5b 04 00       	call   play_wav
   24b7c:	e9 a5 f6 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_85:
   24b81:	b8 f2 00 00 00       	mov    eax,0xf2
   24b86:	e8 15 56 00 00       	call   GetDlgFileString
   24b8b:	89 c2                	mov    edx,eax
   24b8d:	89 e8                	mov    eax,ebp
   24b8f:	e8 c6 c8 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   24b94:	85 c0                	test   eax,eax
   24b96:	0f 84 8a f6 ff ff    	je     talk_to_HANK_branch_48
   24b9c:	ba 15 65 00 00       	mov    edx,@obj3:hank_cpp_variable_156                              ; fixup: num: 5601, src obj: 1, src ofs: 0x24b9d, dst obj: 3, dst ofs: 0x6515
   24ba1:	b8 32 0a 00 00       	mov    eax,0xa32
   24ba6:	89 cb                	mov    ebx,ecx
   24ba8:	e8 e3 5a 04 00       	call   play_wav
   24bad:	e9 74 f6 ff ff       	jmp    talk_to_HANK_branch_48
talk_to_HANK_branch_86:
   24bb2:	ba 1a 65 00 00       	mov    edx,@obj3:hank_cpp_variable_157                              ; fixup: num: 5600, src obj: 1, src ofs: 0x24bb3, dst obj: 3, dst ofs: 0x651a
   24bb7:	b8 dc 08 00 00       	mov    eax,0x8dc
   24bbc:	31 db                	xor    ebx,ebx
   24bbe:	e8 cd 5a 04 00       	call   play_wav
talk_to_HANK_branch_87:
   24bc3:	31 c0                	xor    eax,eax
   24bc5:	5d                   	pop    ebp
   24bc6:	5f                   	pop    edi
   24bc7:	5e                   	pop    esi
   24bc8:	5a                   	pop    edx
   24bc9:	59                   	pop    ecx
   24bca:	5b                   	pop    ebx
   24bcb:	c3                   	ret    
talk_to_HANK_branch_88:
   24bcc:	89 15 e8 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK,edx                                  ; fixup: num: 5503, src obj: 1, src ofs: 0x24bce, dst obj: 3, dst ofs: 0x22de8
   24bd2:	a1 e8 2d 02 00       	mov    eax,ds:@obj3:HANK                                            ; fixup: num: 5502, src obj: 1, src ofs: 0x24bd3, dst obj: 3, dst ofs: 0x22de8
   24bd7:	c3                   	ret    
   24bd8:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   24bde:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'HANK_FIRST_CONVERSATION'            -
;-------------------------------------------------
HANK_FIRST_CONVERSATION:
   24be0:	85 c0                	test   eax,eax
   24be2:	74 e8                	je     talk_to_HANK_branch_88
   24be4:	a1 e8 2d 02 00       	mov    eax,ds:@obj3:HANK                                            ; fixup: num: 5501, src obj: 1, src ofs: 0x24be5, dst obj: 3, dst ofs: 0x22de8
   24be9:	c3                   	ret    
HANK_FIRST_CONVERSATION_branch_1:
   24bea:	89 15 ec 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_1,edx                       ; fixup: num: 5500, src obj: 1, src ofs: 0x24bec, dst obj: 3, dst ofs: 0x22dec
   24bf0:	a1 ec 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_1                                 ; fixup: num: 5619, src obj: 1, src ofs: 0x24bf1, dst obj: 3, dst ofs: 0x22dec
   24bf5:	c3                   	ret    
   24bf6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   24bfc:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'HANK_SAME_DAY_ALTERNATE_GREETING'   -
;-------------------------------------------------
HANK_SAME_DAY_ALTERNATE_GREETING:
   24c00:	85 c0                	test   eax,eax
   24c02:	74 e6                	je     HANK_FIRST_CONVERSATION_branch_1
   24c04:	a1 ec 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_1                                 ; fixup: num: 5618, src obj: 1, src ofs: 0x24c05, dst obj: 3, dst ofs: 0x22dec
   24c09:	c3                   	ret    
HANK_SAME_DAY_ALTERNATE_GREETING_branch_1:
   24c0a:	89 15 f0 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_2,edx                       ; fixup: num: 5617, src obj: 1, src ofs: 0x24c0c, dst obj: 3, dst ofs: 0x22df0
   24c10:	a1 f0 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_2                                 ; fixup: num: 5616, src obj: 1, src ofs: 0x24c11, dst obj: 3, dst ofs: 0x22df0
   24c15:	c3                   	ret    
   24c16:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   24c1c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'HANK_DEFAULT_CONVERSATION'          -
;-------------------------------------------------
HANK_DEFAULT_CONVERSATION:
   24c20:	85 c0                	test   eax,eax
   24c22:	74 e6                	je     HANK_SAME_DAY_ALTERNATE_GREETING_branch_1
   24c24:	a1 f0 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_2                                 ; fixup: num: 5615, src obj: 1, src ofs: 0x24c25, dst obj: 3, dst ofs: 0x22df0
   24c29:	c3                   	ret    
HANK_DEFAULT_CONVERSATION_branch_1:
   24c2a:	89 15 f4 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_3,edx                       ; fixup: num: 5614, src obj: 1, src ofs: 0x24c2c, dst obj: 3, dst ofs: 0x22df4
   24c30:	a1 f4 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_3                                 ; fixup: num: 5613, src obj: 1, src ofs: 0x24c31, dst obj: 3, dst ofs: 0x22df4
   24c35:	c3                   	ret    
   24c36:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   24c3c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'FOLLOW_UP_CONVERSATIONS'            -
;-------------------------------------------------
FOLLOW_UP_CONVERSATIONS:
   24c40:	85 c0                	test   eax,eax
   24c42:	74 e6                	je     HANK_DEFAULT_CONVERSATION_branch_1
   24c44:	a1 f4 2d 02 00       	mov    eax,ds:@obj3:HANK_variable_3                                 ; fixup: num: 5612, src obj: 1, src ofs: 0x24c45, dst obj: 3, dst ofs: 0x22df4
   24c49:	c3                   	ret    
   24c4a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'HANK_initialize'                    -
;-------------------------------------------------
HANK_initialize:
   24c50:	53                   	push   ebx
   24c51:	52                   	push   edx
   24c52:	ba 01 00 00 00       	mov    edx,0x1
   24c57:	31 db                	xor    ebx,ebx
   24c59:	89 15 e8 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK,edx                                  ; fixup: num: 5611, src obj: 1, src ofs: 0x24c5b, dst obj: 3, dst ofs: 0x22de8
   24c5f:	89 1d ec 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_1,ebx                       ; fixup: num: 5610, src obj: 1, src ofs: 0x24c61, dst obj: 3, dst ofs: 0x22dec
   24c65:	89 1d f0 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_2,ebx                       ; fixup: num: 5609, src obj: 1, src ofs: 0x24c67, dst obj: 3, dst ofs: 0x22df0
   24c6b:	89 1d f4 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_3,ebx                       ; fixup: num: 5608, src obj: 1, src ofs: 0x24c6d, dst obj: 3, dst ofs: 0x22df4
   24c71:	89 1d f8 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_4,ebx                       ; fixup: num: 5607, src obj: 1, src ofs: 0x24c73, dst obj: 3, dst ofs: 0x22df8
   24c77:	89 1d fc 2d 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_5,ebx                       ; fixup: num: 5509, src obj: 1, src ofs: 0x24c79, dst obj: 3, dst ofs: 0x22dfc
   24c7d:	89 1d 00 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_6,ebx                       ; fixup: num: 5508, src obj: 1, src ofs: 0x24c7f, dst obj: 3, dst ofs: 0x22e00
   24c83:	89 1d 04 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_7,ebx                       ; fixup: num: 5507, src obj: 1, src ofs: 0x24c85, dst obj: 3, dst ofs: 0x22e04
   24c89:	89 1d 08 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_8,ebx                       ; fixup: num: 5506, src obj: 1, src ofs: 0x24c8b, dst obj: 3, dst ofs: 0x22e08
   24c8f:	89 1d 0c 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_9,ebx                       ; fixup: num: 5505, src obj: 1, src ofs: 0x24c91, dst obj: 3, dst ofs: 0x22e0c
   24c95:	89 1d 10 2e 02 00    	mov    DWORD PTR ds:@obj3:HANK_variable_10,ebx                      ; fixup: num: 5504, src obj: 1, src ofs: 0x24c97, dst obj: 3, dst ofs: 0x22e10
   24c9b:	5a                   	pop    edx
   24c9c:	5b                   	pop    ebx
   24c9d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 46 (zero after ret):                 -
;-------------------------------------------------
;  24c9c:	5b                   	pop    ebx
;  24c9d:	c3                   	ret    
;  24c9e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   24c9e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 46                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 51 (D:\SOURCE\hank.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 51: D:\SOURCE\hank.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
hank_cpp_variable_1:
    61f8:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
hank_cpp_variable_2:
    6205:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
hank_cpp_variable_3:
    6216:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_4:
    621b:	47 49 4c 4c 4d 41 4e 00 	db     "GILLMAN",0x00
hank_cpp_variable_5:
    6223:	52 41 48 00          	db     "RAH",0x00
hank_cpp_variable_6:
    6227:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_7:
    622c:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_8:
    6231:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
hank_cpp_variable_9:
    6249:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_10:
    624e:	52 4f 42 4f 54 00    	db     "ROBOT",0x00
hank_cpp_variable_11:
    6254:	52 41 48 00          	db     "RAH",0x00
hank_cpp_variable_12:
    6258:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_13:
    625d:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_14:
    6262:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_15:
    6267:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_16:
    626c:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_17:
    6271:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_18:
    6276:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_19:
    627b:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_20:
    6280:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_21:
    6285:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_22:
    628a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    628b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    628c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_23:
    628d:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_24:
    6292:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6293:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6294:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_25:
    6295:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_26:
    629a:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_27:
    629f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    62a0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    62a1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_28:
    62a2:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_29:
    62a7:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_30:
    62ac:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
hank_cpp_variable_31:
    62c1:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_32:
    62c6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_33:
    62cb:	4d 4f 4d 00          	db     "MOM",0x00
hank_cpp_variable_34:
    62cf:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_35:
    62d4:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_36:
    62d9:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_37:
    62de:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_38:
    62e3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    62e4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    62e5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_39:
    62e6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_40:
    62eb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    62ec:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    62ed:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_41:
    62ee:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_42:
    62f3:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
hank_cpp_variable_43:
    6305:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6306:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6307:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_44:
    6308:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_45:
    630d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    630e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    630f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_46:
    6310:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_47:
    6315:	4d 4f 4d 00          	db     "MOM",0x00
hank_cpp_variable_48:
    6319:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_49:
    631e:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_50:
    6323:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_51:
    6328:	42 55 53 54 45 44 5f 4f 4e 43 45 00 	db     "BUSTED_ONCE",0x00
hank_cpp_variable_52:
    6334:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_53:
    6339:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_54:
    633e:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_55:
    6343:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6344:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6345:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_56:
    6346:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_57:
    634b:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
hank_cpp_variable_58:
    635a:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_59:
    635f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6360:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6361:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_60:
    6362:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_61:
    6367:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_62:
    636c:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_63:
    6371:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_64:
    6376:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_65:
    637b:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_66:
    6380:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_67:
    6385:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_68:
    638a:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
hank_cpp_variable_69:
    639c:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_70:
    63a1:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
hank_cpp_variable_71:
    63b2:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_72:
    63b7:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_73:
    63bc:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_74:
    63c1:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_75:
    63c6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_76:
    63c7:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_77:
    63cc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63cd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63ce:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_78:
    63cf:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_79:
    63d4:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63d5:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63d6:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_80:
    63d7:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_81:
    63dc:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63dd:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63de:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_82:
    63df:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_83:
    63e4:	4d 4f 4d 00          	db     "MOM",0x00
hank_cpp_variable_84:
    63e8:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_85:
    63ed:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63ee:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63ef:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_86:
    63f0:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_87:
    63f5:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63f6:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63f7:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_88:
    63f8:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_89:
    63fd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    63fe:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    63ff:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_90:
    6400:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_91:
    6405:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6406:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6407:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_92:
    6408:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_93:
    640d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    640e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    640f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_94:
    6410:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_95:
    6415:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6416:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6417:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_96:
    6418:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_97:
    641d:	4d 4f 4d 00          	db     "MOM",0x00
hank_cpp_variable_98:
    6421:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_99:
    6426:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_100:
    642b:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_101:
    6430:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_102:
    6435:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6436:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6437:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_103:
    6438:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_104:
    643d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    643e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    643f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_105:
    6440:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_106:
    6445:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6446:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6447:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_107:
    6448:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_108:
    644d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    644e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    644f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_109:
    6450:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_110:
    6455:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6456:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6457:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_111:
    6458:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_112:
    645d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    645e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    645f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_113:
    6460:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_114:
    6465:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_115:
    646a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    646b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    646c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_116:
    646d:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_117:
    6472:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6473:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6474:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_118:
    6475:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_119:
    647a:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_120:
    647f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6480:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6481:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_121:
    6482:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_122:
    6487:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6488:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6489:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_123:
    648a:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_124:
    648f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6490:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6491:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_125:
    6492:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_126:
    6497:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6498:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6499:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_127:
    649a:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_128:
    649f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64a0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64a1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_129:
    64a2:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_130:
    64a7:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_131:
    64ac:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_132:
    64b1:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_133:
    64b6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_134:
    64bb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64bc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64bd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_135:
    64be:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_136:
    64c3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64c4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64c5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_137:
    64c6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_138:
    64cb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64cc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64cd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_139:
    64ce:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_140:
    64d3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64d4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64d5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_141:
    64d6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_142:
    64db:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64dc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64dd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_143:
    64de:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_144:
    64e3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64e4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64e5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_145:
    64e6:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_146:
    64eb:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_147:
    64f0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64f1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64f2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_148:
    64f3:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_149:
    64f8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    64f9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    64fa:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_150:
    64fb:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_151:
    6500:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_152:
    6505:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6506:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6507:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_153:
    6508:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_154:
    650d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    650e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    650f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
hank_cpp_variable_155:
    6510:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_156:
    6515:	48 41 4e 4b 00       	db     "HANK",0x00
hank_cpp_variable_157:
    651a:	48 41 4e 4b 00       	db     "HANK",0x00
    651f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 51 (D:\SOURCE\hank.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 51: D:\SOURCE\hank.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
HANK:                                                                                               ; access size: DWORD
   22de8:	00 00 00 00          	dd     0x00000000
HANK_variable_1:                                                                                    ; access size: DWORD
   22dec:	00 00 00 00          	dd     0x00000000
HANK_variable_2:                                                                                    ; access size: DWORD
   22df0:	00 00 00 00          	dd     0x00000000
HANK_variable_3:                                                                                    ; access size: DWORD
   22df4:	00 00 00 00          	dd     0x00000000
HANK_variable_4:                                                                                    ; access size: DWORD
   22df8:	00 00 00 00          	dd     0x00000000
HANK_variable_5:                                                                                    ; access size: DWORD
   22dfc:	00 00 00 00          	dd     0x00000000
HANK_variable_6:                                                                                    ; access size: DWORD
   22e00:	00 00 00 00          	dd     0x00000000
HANK_variable_7:                                                                                    ; access size: DWORD
   22e04:	00 00 00 00          	dd     0x00000000
HANK_variable_8:                                                                                    ; access size: DWORD
   22e08:	00 00 00 00          	dd     0x00000000
HANK_variable_9:                                                                                    ; access size: DWORD
   22e0c:	00 00 00 00          	dd     0x00000000
HANK_variable_10:                                                                                   ; access size: DWORD
   22e10:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 51 (D:\SOURCE\hank.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------