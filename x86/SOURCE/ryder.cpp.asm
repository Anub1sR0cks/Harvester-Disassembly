;-------------------------------------------------------------------------------
;                                                                              -
;  Module 61: D:\SOURCE\ryder.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_RANGE_RYDER'                -
;-------------------------------------------------
talk_to_RANGE_RYDER:
   28c80:	53                   	push   ebx
   28c81:	51                   	push   ecx
   28c82:	52                   	push   edx
   28c83:	56                   	push   esi
   28c84:	57                   	push   edi
   28c85:	83 ec 20             	sub    esp,0x20
   28c88:	b8 30 7c 00 00       	mov    eax,@obj3:ryder_cpp_variable_1                               ; fixup: num: 6336, src obj: 1, src ofs: 0x28c89, dst obj: 3, dst ofs: 0x7c30
   28c8d:	e8 fe 3a 04 00       	call   check_script_flag
   28c92:	84 c0                	test   al,al
   28c94:	74 09                	je     talk_to_RANGE_RYDER_branch_1
   28c96:	be 42 7c 00 00       	mov    esi,@obj3:ryder_cpp_variable_2                               ; fixup: num: 6335, src obj: 1, src ofs: 0x28c97, dst obj: 3, dst ofs: 0x7c42
   28c9b:	89 e7                	mov    edi,esp
   28c9d:	eb 0e                	jmp    talk_to_RANGE_RYDER_branch_2
talk_to_RANGE_RYDER_branch_1:
   28c9f:	b8 9c 02 00 00       	mov    eax,0x29c
   28ca4:	89 e7                	mov    edi,esp
   28ca6:	e8 f5 14 00 00       	call   GetDlgFileString
   28cab:	89 c6                	mov    esi,eax
talk_to_RANGE_RYDER_branch_2:
   28cad:	57                   	push   edi
talk_to_RANGE_RYDER_branch_3:
   28cae:	8a 06                	mov    al,BYTE PTR [esi]
   28cb0:	88 07                	mov    BYTE PTR [edi],al
   28cb2:	3c 00                	cmp    al,0x0
   28cb4:	74 10                	je     talk_to_RANGE_RYDER_branch_4
   28cb6:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   28cb9:	83 c6 02             	add    esi,0x2
   28cbc:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   28cbf:	83 c7 02             	add    edi,0x2
   28cc2:	3c 00                	cmp    al,0x0
   28cc4:	75 e8                	jne    talk_to_RANGE_RYDER_branch_3
talk_to_RANGE_RYDER_branch_4:
   28cc6:	5f                   	pop    edi
   28cc7:	b8 4f 7c 00 00       	mov    eax,@obj3:ryder_cpp_variable_3                               ; fixup: num: 6334, src obj: 1, src ofs: 0x28cc8, dst obj: 3, dst ofs: 0x7c4f
   28ccc:	e8 bf 3a 04 00       	call   check_script_flag
   28cd1:	84 c0                	test   al,al
   28cd3:	74 4a                	je     talk_to_RANGE_RYDER_branch_6
   28cd5:	bb 03 00 00 00       	mov    ebx,0x3
   28cda:	ba 61 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_4                               ; fixup: num: 6333, src obj: 1, src ofs: 0x28cdb, dst obj: 3, dst ofs: 0x7c61
   28cdf:	b8 a6 05 00 00       	mov    eax,0x5a6
   28ce4:	e8 a7 19 04 00       	call   play_wav
   28ce9:	b8 6e 7c 00 00       	mov    eax,@obj3:ryder_cpp_variable_5                               ; fixup: num: 6332, src obj: 1, src ofs: 0x28cea, dst obj: 3, dst ofs: 0x7c6e
   28cee:	e8 9d 3a 04 00       	call   check_script_flag
   28cf3:	84 c0                	test   al,al
   28cf5:	75 14                	jne    talk_to_RANGE_RYDER_branch_5
   28cf7:	bb 04 00 00 00       	mov    ebx,0x4
   28cfc:	ba 7e 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_6                               ; fixup: num: 6331, src obj: 1, src ofs: 0x28cfd, dst obj: 3, dst ofs: 0x7c7e
   28d01:	b8 ab 05 00 00       	mov    eax,0x5ab
   28d06:	e8 85 19 04 00       	call   play_wav
talk_to_RANGE_RYDER_branch_5:
   28d0b:	bb 03 00 00 00       	mov    ebx,0x3
   28d10:	ba 81 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_7                               ; fixup: num: 6330, src obj: 1, src ofs: 0x28d11, dst obj: 3, dst ofs: 0x7c81
   28d15:	b8 af 05 00 00       	mov    eax,0x5af
   28d1a:	e9 cc 04 00 00       	jmp    talk_to_RANGE_RYDER_branch_30
talk_to_RANGE_RYDER_branch_6:
   28d1f:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 6329, src obj: 1, src ofs: 0x28d21, dst obj: 3, dst ofs: 0x294bc
   28d25:	85 d2                	test   edx,edx
   28d27:	0f 84 63 01 00 00    	je     talk_to_RANGE_RYDER_branch_13
   28d2d:	89 d0                	mov    eax,edx
   28d2f:	ba 8e 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_8                               ; fixup: num: 6342, src obj: 1, src ofs: 0x28d30, dst obj: 3, dst ofs: 0x7c8e
   28d34:	e8 f7 d6 04 00       	call   strcmp_
   28d39:	85 c0                	test   eax,eax
   28d3b:	75 5c                	jne    talk_to_RANGE_RYDER_branch_7
   28d3d:	ba 01 00 00 00       	mov    edx,0x1
   28d42:	e8 29 f6 ff ff       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   28d47:	31 db                	xor    ebx,ebx
   28d49:	89 e2                	mov    edx,esp
   28d4b:	b8 2d 05 00 00       	mov    eax,0x52d
   28d50:	e8 3b 19 04 00       	call   play_wav
   28d55:	bb 02 00 00 00       	mov    ebx,0x2
   28d5a:	ba a6 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_9                               ; fixup: num: 6341, src obj: 1, src ofs: 0x28d5b, dst obj: 3, dst ofs: 0x7ca6
   28d5f:	b8 33 05 00 00       	mov    eax,0x533
   28d64:	e8 27 19 04 00       	call   play_wav
   28d69:	89 e2                	mov    edx,esp
   28d6b:	b8 38 05 00 00       	mov    eax,0x538
   28d70:	31 db                	xor    ebx,ebx
   28d72:	e8 19 19 04 00       	call   play_wav
   28d77:	bb 01 00 00 00       	mov    ebx,0x1
   28d7c:	89 e2                	mov    edx,esp
   28d7e:	b8 42 05 00 00       	mov    eax,0x542
   28d83:	e8 08 19 04 00       	call   play_wav
   28d88:	bb 01 00 00 00       	mov    ebx,0x1
   28d8d:	89 e2                	mov    edx,esp
   28d8f:	b8 46 05 00 00       	mov    eax,0x546
   28d94:	e9 e7 00 00 00       	jmp    talk_to_RANGE_RYDER_branch_12
talk_to_RANGE_RYDER_branch_7:
   28d99:	ba a9 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_10                              ; fixup: num: 6340, src obj: 1, src ofs: 0x28d9a, dst obj: 3, dst ofs: 0x7ca9
   28d9e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6339, src obj: 1, src ofs: 0x28d9f, dst obj: 3, dst ofs: 0x294bc
   28da3:	e8 88 d6 04 00       	call   strcmp_
   28da8:	85 c0                	test   eax,eax
   28daa:	74 13                	je     talk_to_RANGE_RYDER_branch_8
   28dac:	ba b6 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_11                              ; fixup: num: 6338, src obj: 1, src ofs: 0x28dad, dst obj: 3, dst ofs: 0x7cb6
   28db1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6337, src obj: 1, src ofs: 0x28db2, dst obj: 3, dst ofs: 0x294bc
   28db6:	e8 75 d6 04 00       	call   strcmp_
   28dbb:	85 c0                	test   eax,eax
   28dbd:	75 22                	jne    talk_to_RANGE_RYDER_branch_9
talk_to_RANGE_RYDER_branch_8:
   28dbf:	ba 01 00 00 00       	mov    edx,0x1
   28dc4:	31 c0                	xor    eax,eax
   28dc6:	bb 01 00 00 00       	mov    ebx,0x1
   28dcb:	e8 90 f5 ff ff       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   28dd0:	89 e2                	mov    edx,esp
   28dd2:	b8 4f 05 00 00       	mov    eax,0x54f
   28dd7:	e8 b4 18 04 00       	call   play_wav
   28ddc:	e9 0f 04 00 00       	jmp    talk_to_RANGE_RYDER_branch_31
talk_to_RANGE_RYDER_branch_9:
   28de1:	ba c7 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_12                              ; fixup: num: 6350, src obj: 1, src ofs: 0x28de2, dst obj: 3, dst ofs: 0x7cc7
   28de6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6349, src obj: 1, src ofs: 0x28de7, dst obj: 3, dst ofs: 0x294bc
   28deb:	e8 40 d6 04 00       	call   strcmp_
   28df0:	85 c0                	test   eax,eax
   28df2:	74 39                	je     talk_to_RANGE_RYDER_branch_10
   28df4:	ba cc 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_13                              ; fixup: num: 6348, src obj: 1, src ofs: 0x28df5, dst obj: 3, dst ofs: 0x7ccc
   28df9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6347, src obj: 1, src ofs: 0x28dfa, dst obj: 3, dst ofs: 0x294bc
   28dfe:	e8 2d d6 04 00       	call   strcmp_
   28e03:	85 c0                	test   eax,eax
   28e05:	74 26                	je     talk_to_RANGE_RYDER_branch_10
   28e07:	ba db 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_14                              ; fixup: num: 6346, src obj: 1, src ofs: 0x28e08, dst obj: 3, dst ofs: 0x7cdb
   28e0c:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6345, src obj: 1, src ofs: 0x28e0d, dst obj: 3, dst ofs: 0x294bc
   28e11:	e8 1a d6 04 00       	call   strcmp_
   28e16:	85 c0                	test   eax,eax
   28e18:	74 13                	je     talk_to_RANGE_RYDER_branch_10
   28e1a:	ba e5 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_15                              ; fixup: num: 6344, src obj: 1, src ofs: 0x28e1b, dst obj: 3, dst ofs: 0x7ce5
   28e1f:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 6343, src obj: 1, src ofs: 0x28e20, dst obj: 3, dst ofs: 0x294bc
   28e24:	e8 07 d6 04 00       	call   strcmp_
   28e29:	85 c0                	test   eax,eax
   28e2b:	75 47                	jne    talk_to_RANGE_RYDER_branch_11
talk_to_RANGE_RYDER_branch_10:
   28e2d:	ba 01 00 00 00       	mov    edx,0x1
   28e32:	31 c0                	xor    eax,eax
   28e34:	e8 f7 f4 ff ff       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   28e39:	31 db                	xor    ebx,ebx
   28e3b:	89 e2                	mov    edx,esp
   28e3d:	b8 56 05 00 00       	mov    eax,0x556
   28e42:	e8 49 18 04 00       	call   play_wav
   28e47:	bb 01 00 00 00       	mov    ebx,0x1
   28e4c:	89 e2                	mov    edx,esp
   28e4e:	b8 60 05 00 00       	mov    eax,0x560
   28e53:	e8 38 18 04 00       	call   play_wav
   28e58:	bb 01 00 00 00       	mov    ebx,0x1
   28e5d:	89 e2                	mov    edx,esp
   28e5f:	b8 64 05 00 00       	mov    eax,0x564
   28e64:	e8 27 18 04 00       	call   play_wav
   28e69:	31 c0                	xor    eax,eax
   28e6b:	83 c4 20             	add    esp,0x20
   28e6e:	5f                   	pop    edi
   28e6f:	5e                   	pop    esi
   28e70:	5a                   	pop    edx
   28e71:	59                   	pop    ecx
   28e72:	5b                   	pop    ebx
   28e73:	c3                   	ret    
talk_to_RANGE_RYDER_branch_11:
   28e74:	bb 01 00 00 00       	mov    ebx,0x1
   28e79:	89 e2                	mov    edx,esp
   28e7b:	b8 db 04 00 00       	mov    eax,0x4db
talk_to_RANGE_RYDER_branch_12:
   28e80:	e8 0b 18 04 00       	call   play_wav
   28e85:	31 c0                	xor    eax,eax
   28e87:	83 c4 20             	add    esp,0x20
   28e8a:	5f                   	pop    edi
   28e8b:	5e                   	pop    esi
   28e8c:	5a                   	pop    edx
   28e8d:	59                   	pop    ecx
   28e8e:	5b                   	pop    ebx
   28e8f:	c3                   	ret    
talk_to_RANGE_RYDER_branch_13:
   28e90:	a1 34 2f 02 00       	mov    eax,ds:@obj3:RANGE_RYDER                                     ; fixup: num: 6354, src obj: 1, src ofs: 0x28e91, dst obj: 3, dst ofs: 0x22f34
   28e95:	85 c0                	test   eax,eax
   28e97:	0f 84 af 00 00 00    	je     talk_to_RANGE_RYDER_branch_15
   28e9d:	bb 01 00 00 00       	mov    ebx,0x1
   28ea2:	b8 77 04 00 00       	mov    eax,0x477
   28ea7:	89 15 34 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER,edx                           ; fixup: num: 6353, src obj: 1, src ofs: 0x28ea9, dst obj: 3, dst ofs: 0x22f34
   28ead:	89 e2                	mov    edx,esp
   28eaf:	e8 dc 17 04 00       	call   play_wav
   28eb4:	bb 01 00 00 00       	mov    ebx,0x1
   28eb9:	31 c0                	xor    eax,eax
   28ebb:	89 e2                	mov    edx,esp
   28ebd:	e8 ee f7 ff ff       	call   CUE_CARD_MAN
   28ec2:	b8 85 04 00 00       	mov    eax,0x485
   28ec7:	e8 c4 17 04 00       	call   play_wav
   28ecc:	ba f9 7c 00 00       	mov    edx,@obj3:ryder_cpp_variable_16                              ; fixup: num: 6352, src obj: 1, src ofs: 0x28ecd, dst obj: 3, dst ofs: 0x7cf9
   28ed1:	b8 89 04 00 00       	mov    eax,0x489
   28ed6:	31 db                	xor    ebx,ebx
   28ed8:	e8 b3 17 04 00       	call   play_wav
   28edd:	b8 01 00 00 00       	mov    eax,0x1
   28ee2:	bb 01 00 00 00       	mov    ebx,0x1
   28ee7:	89 e2                	mov    edx,esp
   28ee9:	e8 c2 f7 ff ff       	call   CUE_CARD_MAN
   28eee:	b8 9b 04 00 00       	mov    eax,0x49b
   28ef3:	e8 98 17 04 00       	call   play_wav
   28ef8:	b8 a1 02 00 00       	mov    eax,0x2a1
   28efd:	e8 9e 12 00 00       	call   GetDlgFileString
   28f02:	e8 09 20 04 00       	call   get_response
   28f07:	83 f8 01             	cmp    eax,0x1
   28f0a:	75 1d                	jne    talk_to_RANGE_RYDER_branch_14
   28f0c:	b8 fc 7c 00 00       	mov    eax,@obj3:ryder_cpp_variable_17                              ; fixup: num: 6351, src obj: 1, src ofs: 0x28f0d, dst obj: 3, dst ofs: 0x7cfc
   28f11:	bb 01 00 00 00       	mov    ebx,0x1
   28f16:	89 e2                	mov    edx,esp
   28f18:	e8 93 39 04 00       	call   add_inventory
   28f1d:	b8 a5 04 00 00       	mov    eax,0x4a5
   28f22:	e8 69 17 04 00       	call   play_wav
   28f27:	eb 43                	jmp    talk_to_RANGE_RYDER_branch_16
talk_to_RANGE_RYDER_branch_14:
   28f29:	83 f8 02             	cmp    eax,0x2
   28f2c:	75 3e                	jne    talk_to_RANGE_RYDER_branch_16
   28f2e:	89 e2                	mov    edx,esp
   28f30:	b8 a9 04 00 00       	mov    eax,0x4a9
   28f35:	31 db                	xor    ebx,ebx
   28f37:	e8 54 17 04 00       	call   play_wav
   28f3c:	89 e2                	mov    edx,esp
   28f3e:	b8 ae 04 00 00       	mov    eax,0x4ae
   28f43:	31 db                	xor    ebx,ebx
   28f45:	e8 46 17 04 00       	call   play_wav
   28f4a:	eb 20                	jmp    talk_to_RANGE_RYDER_branch_16
talk_to_RANGE_RYDER_branch_15:
   28f4c:	89 e2                	mov    edx,esp
   28f4e:	b8 cf 04 00 00       	mov    eax,0x4cf
   28f53:	31 db                	xor    ebx,ebx
   28f55:	e8 36 17 04 00       	call   play_wav
   28f5a:	b8 06 7d 00 00       	mov    eax,@obj3:ryder_cpp_variable_18                              ; fixup: num: 6358, src obj: 1, src ofs: 0x28f5b, dst obj: 3, dst ofs: 0x7d06
   28f5f:	e8 2c 38 04 00       	call   check_script_flag
   28f64:	84 c0                	test   al,al
   28f66:	0f 85 84 02 00 00    	jne    talk_to_RANGE_RYDER_branch_31
talk_to_RANGE_RYDER_branch_16:
   28f6c:	b8 18 7d 00 00       	mov    eax,@obj3:ryder_cpp_variable_19                              ; fixup: num: 6357, src obj: 1, src ofs: 0x28f6d, dst obj: 3, dst ofs: 0x7d18
   28f71:	e8 1a 38 04 00       	call   check_script_flag
   28f76:	84 c0                	test   al,al
   28f78:	0f 84 b0 00 00 00    	je     talk_to_RANGE_RYDER_branch_18
   28f7e:	83 3d 3c 2f 02 00 00 	cmp    DWORD PTR ds:@obj3:RANGE_RYDER_variable_2,0x0                ; fixup: num: 6356, src obj: 1, src ofs: 0x28f80, dst obj: 3, dst ofs: 0x22f3c
   28f85:	0f 85 a3 00 00 00    	jne    talk_to_RANGE_RYDER_branch_18
   28f8b:	be 01 00 00 00       	mov    esi,0x1
   28f90:	bb 03 00 00 00       	mov    ebx,0x3
   28f95:	89 e2                	mov    edx,esp
   28f97:	b8 6d 05 00 00       	mov    eax,0x56d
   28f9c:	89 35 3c 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER_variable_2,esi                ; fixup: num: 6355, src obj: 1, src ofs: 0x28f9e, dst obj: 3, dst ofs: 0x22f3c
   28fa2:	e8 e9 16 04 00       	call   play_wav
   28fa7:	89 f2                	mov    edx,esi
   28fa9:	31 c0                	xor    eax,eax
   28fab:	e8 a0 f2 ff ff       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   28fb0:	31 db                	xor    ebx,ebx
   28fb2:	b8 02 00 00 00       	mov    eax,0x2
   28fb7:	89 e2                	mov    edx,esp
   28fb9:	e8 f2 f6 ff ff       	call   CUE_CARD_MAN
   28fbe:	b8 7f 05 00 00       	mov    eax,0x57f
   28fc3:	e8 c8 16 04 00       	call   play_wav
   28fc8:	b8 a3 02 00 00       	mov    eax,0x2a3
   28fcd:	e8 ce 11 00 00       	call   GetDlgFileString
   28fd2:	e8 39 1f 04 00       	call   get_response
   28fd7:	39 f0                	cmp    eax,esi
   28fd9:	75 28                	jne    talk_to_RANGE_RYDER_branch_17
   28fdb:	89 e2                	mov    edx,esp
   28fdd:	b8 89 05 00 00       	mov    eax,0x589
   28fe2:	31 db                	xor    ebx,ebx
   28fe4:	e8 a7 16 04 00       	call   play_wav
   28fe9:	89 e2                	mov    edx,esp
   28feb:	b8 92 05 00 00       	mov    eax,0x592
   28ff0:	31 db                	xor    ebx,ebx
   28ff2:	e8 99 16 04 00       	call   play_wav
   28ff7:	b8 03 00 00 00       	mov    eax,0x3
   28ffc:	e8 af f6 ff ff       	call   CUE_CARD_MAN
   29001:	eb 2b                	jmp    talk_to_RANGE_RYDER_branch_18
talk_to_RANGE_RYDER_branch_17:
   29003:	83 f8 02             	cmp    eax,0x2
   29006:	75 26                	jne    talk_to_RANGE_RYDER_branch_18
   29008:	89 e2                	mov    edx,esp
   2900a:	b8 8e 05 00 00       	mov    eax,0x58e
   2900f:	89 f3                	mov    ebx,esi
   29011:	e8 7a 16 04 00       	call   play_wav
   29016:	89 e2                	mov    edx,esp
   29018:	b8 a5 04 00 00       	mov    eax,0x4a5
   2901d:	89 f3                	mov    ebx,esi
   2901f:	e8 6c 16 04 00       	call   play_wav
   29024:	b8 27 7d 00 00       	mov    eax,@obj3:ryder_cpp_variable_20                              ; fixup: num: 6735, src obj: 1, src ofs: 0x29025, dst obj: 3, dst ofs: 0x7d27
   29029:	e8 82 38 04 00       	call   add_inventory
talk_to_RANGE_RYDER_branch_18:
   2902e:	b8 a5 02 00 00       	mov    eax,0x2a5
   29033:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6734, src obj: 1, src ofs: 0x29034, dst obj: 3, dst ofs: 0x295c0
   29038:	e8 63 11 00 00       	call   GetDlgFileString
   2903d:	89 c6                	mov    esi,eax
   2903f:	57                   	push   edi
talk_to_RANGE_RYDER_branch_19:
   29040:	8a 06                	mov    al,BYTE PTR [esi]
   29042:	88 07                	mov    BYTE PTR [edi],al
   29044:	3c 00                	cmp    al,0x0
   29046:	74 10                	je     talk_to_RANGE_RYDER_branch_20
   29048:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2904b:	83 c6 02             	add    esi,0x2
   2904e:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29051:	83 c7 02             	add    edi,0x2
   29054:	3c 00                	cmp    al,0x0
   29056:	75 e8                	jne    talk_to_RANGE_RYDER_branch_19
talk_to_RANGE_RYDER_branch_20:
   29058:	5f                   	pop    edi
   29059:	be 31 7d 00 00       	mov    esi,@obj3:ryder_cpp_variable_21                              ; fixup: num: 6733, src obj: 1, src ofs: 0x2905a, dst obj: 3, dst ofs: 0x7d31
   2905e:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 6732, src obj: 1, src ofs: 0x2905f, dst obj: 3, dst ofs: 0x294c0
   29063:	57                   	push   edi
talk_to_RANGE_RYDER_branch_21:
   29064:	8a 06                	mov    al,BYTE PTR [esi]
   29066:	88 07                	mov    BYTE PTR [edi],al
   29068:	3c 00                	cmp    al,0x0
   2906a:	74 10                	je     talk_to_RANGE_RYDER_branch_22
   2906c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2906f:	83 c6 02             	add    esi,0x2
   29072:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   29075:	83 c7 02             	add    edi,0x2
   29078:	3c 00                	cmp    al,0x0
   2907a:	75 e8                	jne    talk_to_RANGE_RYDER_branch_21
talk_to_RANGE_RYDER_branch_22:
   2907c:	5f                   	pop    edi
   2907d:	31 c9                	xor    ecx,ecx
talk_to_RANGE_RYDER_branch_23:
   2907f:	b8 a6 02 00 00       	mov    eax,0x2a6
   29084:	e8 17 11 00 00       	call   GetDlgFileString
   29089:	89 c2                	mov    edx,eax
   2908b:	89 f8                	mov    eax,edi
   2908d:	e8 c8 83 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   29092:	85 c0                	test   eax,eax
   29094:	0f 84 45 01 00 00    	je     talk_to_RANGE_RYDER_branch_29
   2909a:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 6737, src obj: 1, src ofs: 0x2909b, dst obj: 3, dst ofs: 0x295c0
   2909f:	e8 9c 29 04 00       	call   show_keywords
   290a4:	b8 a7 02 00 00       	mov    eax,0x2a7
   290a9:	e8 f2 10 00 00       	call   GetDlgFileString
   290ae:	89 c2                	mov    edx,eax
   290b0:	89 f8                	mov    eax,edi
   290b2:	e8 a3 83 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   290b7:	85 c0                	test   eax,eax
   290b9:	74 1b                	je     talk_to_RANGE_RYDER_branch_24
   290bb:	b8 a8 02 00 00       	mov    eax,0x2a8
   290c0:	e8 db 10 00 00       	call   GetDlgFileString
   290c5:	89 c2                	mov    edx,eax
   290c7:	89 f8                	mov    eax,edi
   290c9:	e8 8c 83 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   290ce:	85 c0                	test   eax,eax
   290d0:	0f 85 db 00 00 00    	jne    talk_to_RANGE_RYDER_branch_28
talk_to_RANGE_RYDER_branch_24:
   290d6:	bb 02 00 00 00       	mov    ebx,0x2
   290db:	89 e2                	mov    edx,esp
   290dd:	b8 e7 04 00 00       	mov    eax,0x4e7
   290e2:	e8 a9 15 04 00       	call   play_wav
   290e7:	b8 a9 02 00 00       	mov    eax,0x2a9
   290ec:	e8 af 10 00 00       	call   GetDlgFileString
   290f1:	e8 1a 1e 04 00       	call   get_response
   290f6:	83 f8 01             	cmp    eax,0x1
   290f9:	75 65                	jne    talk_to_RANGE_RYDER_branch_25
   290fb:	89 e2                	mov    edx,esp
   290fd:	b8 f2 04 00 00       	mov    eax,0x4f2
   29102:	31 db                	xor    ebx,ebx
   29104:	e8 87 15 04 00       	call   play_wav
   29109:	ba 32 7d 00 00       	mov    edx,@obj3:ryder_cpp_variable_22                              ; fixup: num: 6736, src obj: 1, src ofs: 0x2910a, dst obj: 3, dst ofs: 0x7d32
   2910e:	b8 f9 04 00 00       	mov    eax,0x4f9
   29113:	31 db                	xor    ebx,ebx
   29115:	e8 76 15 04 00       	call   play_wav
   2911a:	bb 02 00 00 00       	mov    ebx,0x2
   2911f:	89 e2                	mov    edx,esp
   29121:	b8 fe 04 00 00       	mov    eax,0x4fe
   29126:	e8 65 15 04 00       	call   play_wav
   2912b:	e8 d0 f5 ff ff       	call   MEDIUM_SHOT_RANGE_RYDER_LIFTING_HIS_BOOT_IMPALED
   29130:	bb 02 00 00 00       	mov    ebx,0x2
   29135:	89 e2                	mov    edx,esp
   29137:	b8 ff 04 00 00       	mov    eax,0x4ff
   2913c:	e8 4f 15 04 00       	call   play_wav
   29141:	ba 35 7d 00 00       	mov    edx,@obj3:ryder_cpp_variable_23                              ; fixup: num: 6739, src obj: 1, src ofs: 0x29142, dst obj: 3, dst ofs: 0x7d35
   29146:	b8 0c 05 00 00       	mov    eax,0x50c
   2914b:	31 db                	xor    ebx,ebx
   2914d:	e8 3e 15 04 00       	call   play_wav
   29152:	bb 01 00 00 00       	mov    ebx,0x1
   29157:	89 e2                	mov    edx,esp
   29159:	b8 11 05 00 00       	mov    eax,0x511
   2915e:	eb 33                	jmp    talk_to_RANGE_RYDER_branch_26
talk_to_RANGE_RYDER_branch_25:
   29160:	83 f8 02             	cmp    eax,0x2
   29163:	75 33                	jne    talk_to_RANGE_RYDER_branch_27
   29165:	bb 01 00 00 00       	mov    ebx,0x1
   2916a:	89 e2                	mov    edx,esp
   2916c:	b8 17 05 00 00       	mov    eax,0x517
   29171:	e8 1a 15 04 00       	call   play_wav
   29176:	ba 38 7d 00 00       	mov    edx,@obj3:ryder_cpp_variable_24                              ; fixup: num: 6738, src obj: 1, src ofs: 0x29177, dst obj: 3, dst ofs: 0x7d38
   2917b:	b8 1c 05 00 00       	mov    eax,0x51c
   29180:	31 db                	xor    ebx,ebx
   29182:	e8 09 15 04 00       	call   play_wav
   29187:	bb 01 00 00 00       	mov    ebx,0x1
   2918c:	89 e2                	mov    edx,esp
   2918e:	b8 21 05 00 00       	mov    eax,0x521
talk_to_RANGE_RYDER_branch_26:
   29193:	e8 f8 14 04 00       	call   play_wav
talk_to_RANGE_RYDER_branch_27:
   29198:	89 e2                	mov    edx,esp
   2919a:	b8 27 05 00 00       	mov    eax,0x527
   2919f:	31 db                	xor    ebx,ebx
   291a1:	e8 ea 14 04 00       	call   play_wav
   291a6:	31 c0                	xor    eax,eax
   291a8:	83 c4 20             	add    esp,0x20
   291ab:	5f                   	pop    edi
   291ac:	5e                   	pop    esi
   291ad:	5a                   	pop    edx
   291ae:	59                   	pop    ecx
   291af:	5b                   	pop    ebx
   291b0:	c3                   	ret    
talk_to_RANGE_RYDER_branch_28:
   291b1:	b8 aa 02 00 00       	mov    eax,0x2aa
   291b6:	e8 e5 0f 00 00       	call   GetDlgFileString
   291bb:	89 c2                	mov    edx,eax
   291bd:	89 f8                	mov    eax,edi
   291bf:	e8 96 82 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   291c4:	85 c0                	test   eax,eax
   291c6:	0f 84 b3 fe ff ff    	je     talk_to_RANGE_RYDER_branch_23
   291cc:	89 e2                	mov    edx,esp
   291ce:	b8 d5 04 00 00       	mov    eax,0x4d5
   291d3:	89 cb                	mov    ebx,ecx
   291d5:	e8 b6 14 04 00       	call   play_wav
   291da:	e9 a0 fe ff ff       	jmp    talk_to_RANGE_RYDER_branch_23
talk_to_RANGE_RYDER_branch_29:
   291df:	bb 01 00 00 00       	mov    ebx,0x1
   291e4:	89 e2                	mov    edx,esp
   291e6:	b8 e1 04 00 00       	mov    eax,0x4e1
talk_to_RANGE_RYDER_branch_30:
   291eb:	e8 a0 14 04 00       	call   play_wav
talk_to_RANGE_RYDER_branch_31:
   291f0:	31 c0                	xor    eax,eax
   291f2:	83 c4 20             	add    esp,0x20
   291f5:	5f                   	pop    edi
   291f6:	5e                   	pop    esi
   291f7:	5a                   	pop    edx
   291f8:	59                   	pop    ecx
   291f9:	5b                   	pop    ebx
   291fa:	c3                   	ret    
talk_to_RANGE_RYDER_branch_32:
   291fb:	89 15 34 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER,edx                           ; fixup: num: 6745, src obj: 1, src ofs: 0x291fd, dst obj: 3, dst ofs: 0x22f34
   29201:	a1 34 2f 02 00       	mov    eax,ds:@obj3:RANGE_RYDER                                     ; fixup: num: 6744, src obj: 1, src ofs: 0x29202, dst obj: 3, dst ofs: 0x22f34
   29206:	c3                   	ret    
   29207:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2920d:	8d 52 00             	lea    edx,[edx+0x0]

;-------------------------------------------------
;  Function 'RANGE_RYDER_FIRST_CONVERSATION'     -
;-------------------------------------------------
RANGE_RYDER_FIRST_CONVERSATION:
   29210:	85 c0                	test   eax,eax
   29212:	74 e7                	je     talk_to_RANGE_RYDER_branch_32
   29214:	a1 34 2f 02 00       	mov    eax,ds:@obj3:RANGE_RYDER                                     ; fixup: num: 6743, src obj: 1, src ofs: 0x29215, dst obj: 3, dst ofs: 0x22f34
   29219:	c3                   	ret    
   2921a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'RANGE_RYDER_initialize'             -
;-------------------------------------------------
RANGE_RYDER_initialize:
   29220:	53                   	push   ebx
   29221:	52                   	push   edx
   29222:	ba 01 00 00 00       	mov    edx,0x1
   29227:	31 db                	xor    ebx,ebx
   29229:	89 15 34 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER,edx                           ; fixup: num: 6742, src obj: 1, src ofs: 0x2922b, dst obj: 3, dst ofs: 0x22f34
   2922f:	89 1d 38 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER_variable_1,ebx                ; fixup: num: 6741, src obj: 1, src ofs: 0x29231, dst obj: 3, dst ofs: 0x22f38
   29235:	89 1d 3c 2f 02 00    	mov    DWORD PTR ds:@obj3:RANGE_RYDER_variable_2,ebx                ; fixup: num: 6740, src obj: 1, src ofs: 0x29237, dst obj: 3, dst ofs: 0x22f3c
   2923b:	5a                   	pop    edx
   2923c:	5b                   	pop    ebx
   2923d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 56 (zero after ret):                 -
;-------------------------------------------------
;  2923c:	5b                   	pop    ebx
;  2923d:	c3                   	ret    
;  2923e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   2923e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 56                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 61 (D:\SOURCE\ryder.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 61: D:\SOURCE\ryder.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
ryder_cpp_variable_1:
    7c30:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ryder_cpp_variable_2:
    7c42:	52 59 44 45 52 5f 54 56 5f 4f 55 54 00 	db     "RYDER_TV_OUT",0x00
ryder_cpp_variable_3:
    7c4f:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ryder_cpp_variable_4:
    7c61:	52 59 44 45 52 5f 54 56 5f 4f 55 54 00 	db     "RYDER_TV_OUT",0x00
ryder_cpp_variable_5:
    7c6e:	42 4f 59 4c 45 5f 42 55 52 4e 45 44 5f 54 56 00 	db     "BOYLE_BURNED_TV",0x00
ryder_cpp_variable_6:
    7c7e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7c7f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7c80:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_7:
    7c81:	52 59 44 45 52 5f 54 56 5f 4f 55 54 00 	db     "RYDER_TV_OUT",0x00
ryder_cpp_variable_8:
    7c8e:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
ryder_cpp_variable_9:
    7ca6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7ca7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7ca8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_10:
    7ca9:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
ryder_cpp_variable_11:
    7cb6:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
ryder_cpp_variable_12:
    7cc7:	4e 4f 54 45 00       	db     "NOTE",0x00
ryder_cpp_variable_13:
    7ccc:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
ryder_cpp_variable_14:
    7cdb:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
ryder_cpp_variable_15:
    7ce5:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
ryder_cpp_variable_16:
    7cf9:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7cfa:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7cfb:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_17:
    7cfc:	41 55 54 4f 47 52 41 50 48 00 	db     "AUTOGRAPH",0x00
ryder_cpp_variable_18:
    7d06:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
ryder_cpp_variable_19:
    7d18:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
ryder_cpp_variable_20:
    7d27:	41 55 54 4f 47 52 41 50 48 00 	db     "AUTOGRAPH",0x00
ryder_cpp_variable_21:
    7d31:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_22:
    7d32:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7d33:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7d34:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_23:
    7d35:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7d36:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7d37:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
ryder_cpp_variable_24:
    7d38:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    7d39:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    7d3a:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 61 (D:\SOURCE\ryder.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 61: D:\SOURCE\ryder.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
RANGE_RYDER:                                                                                        ; access size: DWORD
   22f34:	00 00 00 00          	dd     0x00000000
RANGE_RYDER_variable_1:                                                                             ; access size: DWORD
   22f38:	00 00 00 00          	dd     0x00000000
RANGE_RYDER_variable_2:                                                                             ; access size: DWORD
   22f3c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 61 (D:\SOURCE\ryder.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------