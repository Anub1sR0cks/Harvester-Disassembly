;-------------------------------------------------------------------------------
;                                                                              -
;  Module 18: D:\SOURCE\mr_moyna.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_MR_MOYNAHAN'                -
;-------------------------------------------------
talk_to_MR_MOYNAHAN:
   14a20:	53                   	push   ebx
   14a21:	51                   	push   ecx
   14a22:	52                   	push   edx
   14a23:	56                   	push   esi
   14a24:	57                   	push   edi
   14a25:	55                   	push   ebp
   14a26:	be 1c 1a 00 00       	mov    esi,@obj3:mr_moyna_cpp_variable_1                            ; fixup: num: 2148, src obj: 1, src ofs: 0x14a27, dst obj: 3, dst ofs: 0x1a1c
   14a2b:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2147, src obj: 1, src ofs: 0x14a2c, dst obj: 3, dst ofs: 0x295c0
   14a30:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_1:
   14a31:	8a 06                	mov    al,BYTE PTR [esi]
   14a33:	88 07                	mov    BYTE PTR [edi],al
   14a35:	3c 00                	cmp    al,0x0
   14a37:	74 10                	je     talk_to_MR_MOYNAHAN_branch_2
   14a39:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   14a3c:	83 c6 02             	add    esi,0x2
   14a3f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   14a42:	83 c7 02             	add    edi,0x2
   14a45:	3c 00                	cmp    al,0x0
   14a47:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_1
talk_to_MR_MOYNAHAN_branch_2:
   14a49:	5f                   	pop    edi
   14a4a:	b8 1d 1a 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_2                            ; fixup: num: 2146, src obj: 1, src ofs: 0x14a4b, dst obj: 3, dst ofs: 0x1a1d
   14a4f:	e8 3c 7d 05 00       	call   check_script_flag
   14a54:	84 c0                	test   al,al
   14a56:	0f 84 e7 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_4
   14a5c:	bb 02 00 00 00       	mov    ebx,0x2
   14a61:	ba 35 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_3                            ; fixup: num: 2145, src obj: 1, src ofs: 0x14a62, dst obj: 3, dst ofs: 0x1a35
   14a66:	b8 4d 3e 00 00       	mov    eax,0x3e4d
   14a6b:	e8 20 5c 05 00       	call   play_wav
   14a70:	ba 3e 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_4                            ; fixup: num: 2144, src obj: 1, src ofs: 0x14a71, dst obj: 3, dst ofs: 0x1a3e
   14a75:	b8 52 3e 00 00       	mov    eax,0x3e52
   14a7a:	31 db                	xor    ebx,ebx
   14a7c:	e8 0f 5c 05 00       	call   play_wav
   14a81:	ba 41 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_5                            ; fixup: num: 2143, src obj: 1, src ofs: 0x14a82, dst obj: 3, dst ofs: 0x1a41
   14a86:	b8 56 3e 00 00       	mov    eax,0x3e56
   14a8b:	31 db                	xor    ebx,ebx
   14a8d:	e8 fe 5b 05 00       	call   play_wav
   14a92:	b8 4a 1a 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_6                            ; fixup: num: 2142, src obj: 1, src ofs: 0x14a93, dst obj: 3, dst ofs: 0x1a4a
   14a97:	e8 f4 7c 05 00       	call   check_script_flag
   14a9c:	84 c0                	test   al,al
   14a9e:	74 78                	je     talk_to_MR_MOYNAHAN_branch_3
   14aa0:	a1 c4 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_2                          ; fixup: num: 2141, src obj: 1, src ofs: 0x14aa1, dst obj: 3, dst ofs: 0x22ac4
   14aa5:	85 c0                	test   eax,eax
   14aa7:	74 6f                	je     talk_to_MR_MOYNAHAN_branch_3
   14aa9:	ba 69 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_7                            ; fixup: num: 2140, src obj: 1, src ofs: 0x14aaa, dst obj: 3, dst ofs: 0x1a69
   14aae:	b8 5b 3e 00 00       	mov    eax,0x3e5b
   14ab3:	31 db                	xor    ebx,ebx
   14ab5:	e8 d6 5b 05 00       	call   play_wav
   14aba:	ba 6c 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_8                            ; fixup: num: 2139, src obj: 1, src ofs: 0x14abb, dst obj: 3, dst ofs: 0x1a6c
   14abf:	b8 60 3e 00 00       	mov    eax,0x3e60
   14ac4:	31 db                	xor    ebx,ebx
   14ac6:	e8 c5 5b 05 00       	call   play_wav
   14acb:	bb 02 00 00 00       	mov    ebx,0x2
   14ad0:	ba 75 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_9                            ; fixup: num: 2157, src obj: 1, src ofs: 0x14ad1, dst obj: 3, dst ofs: 0x1a75
   14ad5:	b8 64 3e 00 00       	mov    eax,0x3e64
   14ada:	e8 b1 5b 05 00       	call   play_wav
   14adf:	ba 78 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_10                           ; fixup: num: 2156, src obj: 1, src ofs: 0x14ae0, dst obj: 3, dst ofs: 0x1a78
   14ae4:	b8 69 3e 00 00       	mov    eax,0x3e69
   14ae9:	31 db                	xor    ebx,ebx
   14aeb:	e8 a0 5b 05 00       	call   play_wav
   14af0:	bb 02 00 00 00       	mov    ebx,0x2
   14af5:	ba 81 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_11                           ; fixup: num: 2155, src obj: 1, src ofs: 0x14af6, dst obj: 3, dst ofs: 0x1a81
   14afa:	b8 6d 3e 00 00       	mov    eax,0x3e6d
   14aff:	e8 8c 5b 05 00       	call   play_wav
   14b04:	bb 02 00 00 00       	mov    ebx,0x2
   14b09:	ba 84 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_12                           ; fixup: num: 2154, src obj: 1, src ofs: 0x14b0a, dst obj: 3, dst ofs: 0x1a84
   14b0e:	b8 71 3e 00 00       	mov    eax,0x3e71
   14b13:	e9 f9 0a 00 00       	jmp    talk_to_MR_MOYNAHAN_branch_57
talk_to_MR_MOYNAHAN_branch_3:
   14b18:	ba 8d 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_13                           ; fixup: num: 2153, src obj: 1, src ofs: 0x14b19, dst obj: 3, dst ofs: 0x1a8d
   14b1d:	b8 76 3e 00 00       	mov    eax,0x3e76
   14b22:	31 db                	xor    ebx,ebx
   14b24:	e8 67 5b 05 00       	call   play_wav
   14b29:	ba 90 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_14                           ; fixup: num: 2152, src obj: 1, src ofs: 0x14b2a, dst obj: 3, dst ofs: 0x1a90
   14b2e:	b8 7a 3e 00 00       	mov    eax,0x3e7a
   14b33:	31 db                	xor    ebx,ebx
   14b35:	e8 56 5b 05 00       	call   play_wav
   14b3a:	31 c0                	xor    eax,eax
   14b3c:	5d                   	pop    ebp
   14b3d:	5f                   	pop    edi
   14b3e:	5e                   	pop    esi
   14b3f:	5a                   	pop    edx
   14b40:	59                   	pop    ecx
   14b41:	5b                   	pop    ebx
   14b42:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_4:
   14b43:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 2151, src obj: 1, src ofs: 0x14b45, dst obj: 3, dst ofs: 0x294bc
   14b49:	85 d2                	test   edx,edx
   14b4b:	0f 84 30 05 00 00    	je     talk_to_MR_MOYNAHAN_branch_31
   14b51:	89 d0                	mov    eax,edx
   14b53:	ba 99 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_15                           ; fixup: num: 2150, src obj: 1, src ofs: 0x14b54, dst obj: 3, dst ofs: 0x1a99
   14b58:	e8 d3 18 06 00       	call   strcmp_
   14b5d:	85 c0                	test   eax,eax
   14b5f:	75 1b                	jne    talk_to_MR_MOYNAHAN_branch_5
   14b61:	ba 01 00 00 00       	mov    edx,0x1
   14b66:	e8 05 38 01 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   14b6b:	31 db                	xor    ebx,ebx
   14b6d:	ba b1 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_16                           ; fixup: num: 2149, src obj: 1, src ofs: 0x14b6e, dst obj: 3, dst ofs: 0x1ab1
   14b72:	b8 45 3e 00 00       	mov    eax,0x3e45
   14b77:	e9 f7 04 00 00       	jmp    talk_to_MR_MOYNAHAN_branch_30
talk_to_MR_MOYNAHAN_branch_5:
   14b7c:	ba ba 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_17                           ; fixup: num: 2167, src obj: 1, src ofs: 0x14b7d, dst obj: 3, dst ofs: 0x1aba
   14b81:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2166, src obj: 1, src ofs: 0x14b82, dst obj: 3, dst ofs: 0x294bc
   14b86:	e8 a5 18 06 00       	call   strcmp_
   14b8b:	85 c0                	test   eax,eax
   14b8d:	74 17                	je     talk_to_MR_MOYNAHAN_branch_6
   14b8f:	ba c7 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_18                           ; fixup: num: 2165, src obj: 1, src ofs: 0x14b90, dst obj: 3, dst ofs: 0x1ac7
   14b94:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2164, src obj: 1, src ofs: 0x14b95, dst obj: 3, dst ofs: 0x294bc
   14b99:	e8 92 18 06 00       	call   strcmp_
   14b9e:	85 c0                	test   eax,eax
   14ba0:	0f 85 ed 01 00 00    	jne    talk_to_MR_MOYNAHAN_branch_15
talk_to_MR_MOYNAHAN_branch_6:
   14ba6:	ba d8 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_19                           ; fixup: num: 2163, src obj: 1, src ofs: 0x14ba7, dst obj: 3, dst ofs: 0x1ad8
   14bab:	b8 84 3e 00 00       	mov    eax,0x3e84
   14bb0:	31 db                	xor    ebx,ebx
   14bb2:	e8 d9 5a 05 00       	call   play_wav
   14bb7:	ba e1 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_20                           ; fixup: num: 2162, src obj: 1, src ofs: 0x14bb8, dst obj: 3, dst ofs: 0x1ae1
   14bbc:	b8 89 3e 00 00       	mov    eax,0x3e89
   14bc1:	31 db                	xor    ebx,ebx
   14bc3:	e8 c8 5a 05 00       	call   play_wav
   14bc8:	ba e4 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_21                           ; fixup: num: 2161, src obj: 1, src ofs: 0x14bc9, dst obj: 3, dst ofs: 0x1ae4
   14bcd:	b8 8e 3e 00 00       	mov    eax,0x3e8e
   14bd2:	31 db                	xor    ebx,ebx
   14bd4:	e8 b7 5a 05 00       	call   play_wav
   14bd9:	ba ed 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_22                           ; fixup: num: 2160, src obj: 1, src ofs: 0x14bda, dst obj: 3, dst ofs: 0x1aed
   14bde:	b8 93 3e 00 00       	mov    eax,0x3e93
   14be3:	31 db                	xor    ebx,ebx
   14be5:	e8 a6 5a 05 00       	call   play_wav
   14bea:	bb 02 00 00 00       	mov    ebx,0x2
   14bef:	ba f0 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_23                           ; fixup: num: 2159, src obj: 1, src ofs: 0x14bf0, dst obj: 3, dst ofs: 0x1af0
   14bf4:	b8 98 3e 00 00       	mov    eax,0x3e98
   14bf9:	e8 92 5a 05 00       	call   play_wav
   14bfe:	b8 8c 01 00 00       	mov    eax,0x18c
   14c03:	e8 98 55 01 00       	call   GetDlgFileString
   14c08:	e8 03 63 05 00       	call   get_response
   14c0d:	83 f8 01             	cmp    eax,0x1
   14c10:	75 36                	jne    talk_to_MR_MOYNAHAN_branch_7
   14c12:	ba f9 1a 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_24                           ; fixup: num: 2158, src obj: 1, src ofs: 0x14c13, dst obj: 3, dst ofs: 0x1af9
   14c17:	b8 a4 3e 00 00       	mov    eax,0x3ea4
   14c1c:	31 db                	xor    ebx,ebx
   14c1e:	e8 6d 5a 05 00       	call   play_wav
   14c23:	bb 02 00 00 00       	mov    ebx,0x2
   14c28:	ba 02 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_25                           ; fixup: num: 2175, src obj: 1, src ofs: 0x14c29, dst obj: 3, dst ofs: 0x1b02
   14c2d:	b8 a8 3e 00 00       	mov    eax,0x3ea8
   14c32:	e8 59 5a 05 00       	call   play_wav
   14c37:	bb 02 00 00 00       	mov    ebx,0x2
   14c3c:	ba 05 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_26                           ; fixup: num: 2174, src obj: 1, src ofs: 0x14c3d, dst obj: 3, dst ofs: 0x1b05
   14c41:	b8 ad 3e 00 00       	mov    eax,0x3ead
   14c46:	eb 11                	jmp    talk_to_MR_MOYNAHAN_branch_8
talk_to_MR_MOYNAHAN_branch_7:
   14c48:	83 f8 02             	cmp    eax,0x2
   14c4b:	75 11                	jne    talk_to_MR_MOYNAHAN_branch_9
   14c4d:	ba 0e 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_27                           ; fixup: num: 2173, src obj: 1, src ofs: 0x14c4e, dst obj: 3, dst ofs: 0x1b0e
   14c52:	89 c3                	mov    ebx,eax
   14c54:	b8 b1 3e 00 00       	mov    eax,0x3eb1
talk_to_MR_MOYNAHAN_branch_8:
   14c59:	e8 32 5a 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_9:
   14c5e:	bb 02 00 00 00       	mov    ebx,0x2
   14c63:	ba 17 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_28                           ; fixup: num: 2172, src obj: 1, src ofs: 0x14c64, dst obj: 3, dst ofs: 0x1b17
   14c68:	b8 b7 3e 00 00       	mov    eax,0x3eb7
   14c6d:	e8 1e 5a 05 00       	call   play_wav
   14c72:	bb 02 00 00 00       	mov    ebx,0x2
   14c77:	ba 1a 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_29                           ; fixup: num: 2171, src obj: 1, src ofs: 0x14c78, dst obj: 3, dst ofs: 0x1b1a
   14c7c:	b8 bc 3e 00 00       	mov    eax,0x3ebc
   14c81:	e8 0a 5a 05 00       	call   play_wav
   14c86:	a1 c0 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_1                          ; fixup: num: 2170, src obj: 1, src ofs: 0x14c87, dst obj: 3, dst ofs: 0x22ac0
   14c8b:	85 c0                	test   eax,eax
   14c8d:	74 1d                	je     talk_to_MR_MOYNAHAN_branch_10
   14c8f:	bb 02 00 00 00       	mov    ebx,0x2
   14c94:	ba 23 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_30                           ; fixup: num: 2169, src obj: 1, src ofs: 0x14c95, dst obj: 3, dst ofs: 0x1b23
   14c99:	b8 c3 3e 00 00       	mov    eax,0x3ec3
   14c9e:	e8 ed 59 05 00       	call   play_wav
   14ca3:	31 c0                	xor    eax,eax
   14ca5:	5d                   	pop    ebp
   14ca6:	5f                   	pop    edi
   14ca7:	5e                   	pop    esi
   14ca8:	5a                   	pop    edx
   14ca9:	59                   	pop    ecx
   14caa:	5b                   	pop    ebx
   14cab:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_10:
   14cac:	bb 03 00 00 00       	mov    ebx,0x3
   14cb1:	ba 2c 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_31                           ; fixup: num: 2168, src obj: 1, src ofs: 0x14cb2, dst obj: 3, dst ofs: 0x1b2c
   14cb6:	b8 c8 3e 00 00       	mov    eax,0x3ec8
   14cbb:	e8 d0 59 05 00       	call   play_wav
   14cc0:	b8 8d 01 00 00       	mov    eax,0x18d
   14cc5:	e8 d6 54 01 00       	call   GetDlgFileString
   14cca:	e8 41 62 05 00       	call   get_response
   14ccf:	83 f8 01             	cmp    eax,0x1
   14cd2:	0f 85 95 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_14
   14cd8:	bb 02 00 00 00       	mov    ebx,0x2
   14cdd:	ba 35 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_32                           ; fixup: num: 2190, src obj: 1, src ofs: 0x14cde, dst obj: 3, dst ofs: 0x1b35
   14ce2:	b8 d2 3e 00 00       	mov    eax,0x3ed2
   14ce7:	e8 a4 59 05 00       	call   play_wav
   14cec:	ba 3e 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_33                           ; fixup: num: 2189, src obj: 1, src ofs: 0x14ced, dst obj: 3, dst ofs: 0x1b3e
   14cf1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2188, src obj: 1, src ofs: 0x14cf2, dst obj: 3, dst ofs: 0x294bc
   14cf6:	e8 35 17 06 00       	call   strcmp_
   14cfb:	85 c0                	test   eax,eax
   14cfd:	75 0c                	jne    talk_to_MR_MOYNAHAN_branch_11
   14cff:	ba 4b 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_34                           ; fixup: num: 2187, src obj: 1, src ofs: 0x14d00, dst obj: 3, dst ofs: 0x1b4b
   14d04:	b8 58 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_35                           ; fixup: num: 2186, src obj: 1, src ofs: 0x14d05, dst obj: 3, dst ofs: 0x1b58
   14d09:	eb 1d                	jmp    talk_to_MR_MOYNAHAN_branch_12
talk_to_MR_MOYNAHAN_branch_11:
   14d0b:	ba 5c 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_36                           ; fixup: num: 2185, src obj: 1, src ofs: 0x14d0c, dst obj: 3, dst ofs: 0x1b5c
   14d10:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2184, src obj: 1, src ofs: 0x14d11, dst obj: 3, dst ofs: 0x294bc
   14d15:	e8 16 17 06 00       	call   strcmp_
   14d1a:	85 c0                	test   eax,eax
   14d1c:	75 11                	jne    talk_to_MR_MOYNAHAN_branch_13
   14d1e:	ba 6d 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_37                           ; fixup: num: 2183, src obj: 1, src ofs: 0x14d1f, dst obj: 3, dst ofs: 0x1b6d
   14d23:	b8 7e 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_38                           ; fixup: num: 2182, src obj: 1, src ofs: 0x14d24, dst obj: 3, dst ofs: 0x1b7e
talk_to_MR_MOYNAHAN_branch_12:
   14d28:	31 db                	xor    ebx,ebx
   14d2a:	e8 e1 e1 03 00       	call   set_object
talk_to_MR_MOYNAHAN_branch_13:
   14d2f:	ba 82 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_39                           ; fixup: num: 2181, src obj: 1, src ofs: 0x14d30, dst obj: 3, dst ofs: 0x1b82
   14d34:	b8 87 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_40                           ; fixup: num: 2180, src obj: 1, src ofs: 0x14d35, dst obj: 3, dst ofs: 0x1b87
   14d39:	31 db                	xor    ebx,ebx
   14d3b:	e8 d0 e1 03 00       	call   set_object
   14d40:	b8 8b 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_41                           ; fixup: num: 2179, src obj: 1, src ofs: 0x14d41, dst obj: 3, dst ofs: 0x1b8b
   14d45:	ba 01 00 00 00       	mov    edx,0x1
   14d4a:	e8 61 7b 05 00       	call   add_inventory
   14d4f:	b8 90 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_42                           ; fixup: num: 2178, src obj: 1, src ofs: 0x14d50, dst obj: 3, dst ofs: 0x1b90
   14d54:	bf 01 00 00 00       	mov    edi,0x1
   14d59:	e8 82 7a 05 00       	call   set_script_flag
   14d5e:	89 3d c0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_1,edi                ; fixup: num: 2177, src obj: 1, src ofs: 0x14d60, dst obj: 3, dst ofs: 0x22ac0
   14d64:	31 c0                	xor    eax,eax
   14d66:	5d                   	pop    ebp
   14d67:	5f                   	pop    edi
   14d68:	5e                   	pop    esi
   14d69:	5a                   	pop    edx
   14d6a:	59                   	pop    ecx
   14d6b:	5b                   	pop    ebx
   14d6c:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_14:
   14d6d:	83 f8 02             	cmp    eax,0x2
   14d70:	0f 85 c5 11 00 00    	jne    talk_to_MR_MOYNAHAN_branch_105
   14d76:	bb 01 00 00 00       	mov    ebx,0x1
   14d7b:	ba 9e 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_43                           ; fixup: num: 2176, src obj: 1, src ofs: 0x14d7c, dst obj: 3, dst ofs: 0x1b9e
   14d80:	b8 d7 3e 00 00       	mov    eax,0x3ed7
   14d85:	e8 06 59 05 00       	call   play_wav
   14d8a:	31 c0                	xor    eax,eax
   14d8c:	5d                   	pop    ebp
   14d8d:	5f                   	pop    edi
   14d8e:	5e                   	pop    esi
   14d8f:	5a                   	pop    edx
   14d90:	59                   	pop    ecx
   14d91:	5b                   	pop    ebx
   14d92:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_15:
   14d93:	ba a7 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_44                           ; fixup: num: 2202, src obj: 1, src ofs: 0x14d94, dst obj: 3, dst ofs: 0x1ba7
   14d98:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2201, src obj: 1, src ofs: 0x14d99, dst obj: 3, dst ofs: 0x294bc
   14d9d:	e8 8e 16 06 00       	call   strcmp_
   14da2:	85 c0                	test   eax,eax
   14da4:	74 17                	je     talk_to_MR_MOYNAHAN_branch_16
   14da6:	ba ae 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_45                           ; fixup: num: 2200, src obj: 1, src ofs: 0x14da7, dst obj: 3, dst ofs: 0x1bae
   14dab:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2199, src obj: 1, src ofs: 0x14dac, dst obj: 3, dst ofs: 0x294bc
   14db0:	e8 7b 16 06 00       	call   strcmp_
   14db5:	85 c0                	test   eax,eax
   14db7:	0f 85 85 01 00 00    	jne    talk_to_MR_MOYNAHAN_branch_23
talk_to_MR_MOYNAHAN_branch_16:
   14dbd:	b8 b6 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_46                           ; fixup: num: 2198, src obj: 1, src ofs: 0x14dbe, dst obj: 3, dst ofs: 0x1bb6
   14dc2:	e8 c9 79 05 00       	call   check_script_flag
   14dc7:	84 c0                	test   al,al
   14dc9:	0f 84 73 01 00 00    	je     talk_to_MR_MOYNAHAN_branch_23
   14dcf:	b8 01 00 00 00       	mov    eax,0x1
   14dd4:	31 d2                	xor    edx,edx
   14dd6:	e8 75 35 01 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   14ddb:	85 c0                	test   eax,eax
   14ddd:	74 58                	je     talk_to_MR_MOYNAHAN_branch_19
   14ddf:	83 3d d4 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_6,0x0                ; fixup: num: 2197, src obj: 1, src ofs: 0x14de1, dst obj: 3, dst ofs: 0x22ad4
   14de6:	75 4f                	jne    talk_to_MR_MOYNAHAN_branch_19
   14de8:	be 01 00 00 00       	mov    esi,0x1
   14ded:	bb 02 00 00 00       	mov    ebx,0x2
   14df2:	ba c8 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_47                           ; fixup: num: 2196, src obj: 1, src ofs: 0x14df3, dst obj: 3, dst ofs: 0x1bc8
   14df7:	b8 87 3f 00 00       	mov    eax,0x3f87
   14dfc:	89 35 d4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_6,esi                ; fixup: num: 2195, src obj: 1, src ofs: 0x14dfe, dst obj: 3, dst ofs: 0x22ad4
   14e02:	e8 89 58 05 00       	call   play_wav
   14e07:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 2194, src obj: 1, src ofs: 0x14e08, dst obj: 3, dst ofs: 0x25ac4
   14e0c:	ba d1 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_48                           ; fixup: num: 2193, src obj: 1, src ofs: 0x14e0d, dst obj: 3, dst ofs: 0x1bd1
   14e11:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   14e14:	e8 41 c6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   14e19:	85 c0                	test   eax,eax
   14e1b:	75 07                	jne    talk_to_MR_MOYNAHAN_branch_17
   14e1d:	b8 d8 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_49                           ; fixup: num: 2192, src obj: 1, src ofs: 0x14e1e, dst obj: 3, dst ofs: 0x1bd8
   14e22:	eb 05                	jmp    talk_to_MR_MOYNAHAN_branch_18
talk_to_MR_MOYNAHAN_branch_17:
   14e24:	b8 e1 1b 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_50                           ; fixup: num: 2191, src obj: 1, src ofs: 0x14e25, dst obj: 3, dst ofs: 0x1be1
talk_to_MR_MOYNAHAN_branch_18:
   14e29:	e8 62 7c 05 00       	call   MonsterfyNpc
   14e2e:	31 c0                	xor    eax,eax
   14e30:	5d                   	pop    ebp
   14e31:	5f                   	pop    edi
   14e32:	5e                   	pop    esi
   14e33:	5a                   	pop    edx
   14e34:	59                   	pop    ecx
   14e35:	5b                   	pop    ebx
   14e36:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_19:
   14e37:	ba ef 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_51                           ; fixup: num: 2121, src obj: 1, src ofs: 0x14e38, dst obj: 3, dst ofs: 0x1bef
   14e3c:	b8 de 3e 00 00       	mov    eax,0x3ede
   14e41:	31 db                	xor    ebx,ebx
   14e43:	e8 48 58 05 00       	call   play_wav
   14e48:	ba f2 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_52                           ; fixup: num: 2120, src obj: 1, src ofs: 0x14e49, dst obj: 3, dst ofs: 0x1bf2
   14e4d:	b8 e3 3e 00 00       	mov    eax,0x3ee3
   14e52:	31 db                	xor    ebx,ebx
   14e54:	e8 37 58 05 00       	call   play_wav
   14e59:	ba fb 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_53                           ; fixup: num: 2119, src obj: 1, src ofs: 0x14e5a, dst obj: 3, dst ofs: 0x1bfb
   14e5e:	b8 e7 3e 00 00       	mov    eax,0x3ee7
   14e63:	31 db                	xor    ebx,ebx
   14e65:	e8 26 58 05 00       	call   play_wav
   14e6a:	ba fe 1b 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_54                           ; fixup: num: 2118, src obj: 1, src ofs: 0x14e6b, dst obj: 3, dst ofs: 0x1bfe
   14e6f:	b8 ec 3e 00 00       	mov    eax,0x3eec
   14e74:	31 db                	xor    ebx,ebx
   14e76:	e8 15 58 05 00       	call   play_wav
   14e7b:	b8 8e 01 00 00       	mov    eax,0x18e
   14e80:	e8 1b 53 01 00       	call   GetDlgFileString
   14e85:	e8 86 60 05 00       	call   get_response
   14e8a:	83 f8 01             	cmp    eax,0x1
   14e8d:	75 47                	jne    talk_to_MR_MOYNAHAN_branch_20
   14e8f:	ba 07 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_55                           ; fixup: num: 2117, src obj: 1, src ofs: 0x14e90, dst obj: 3, dst ofs: 0x1c07
   14e94:	b8 f7 3e 00 00       	mov    eax,0x3ef7
   14e99:	31 db                	xor    ebx,ebx
   14e9b:	e8 f0 57 05 00       	call   play_wav
   14ea0:	ba 10 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_56                           ; fixup: num: 2206, src obj: 1, src ofs: 0x14ea1, dst obj: 3, dst ofs: 0x1c10
   14ea5:	b8 fb 3e 00 00       	mov    eax,0x3efb
   14eaa:	31 db                	xor    ebx,ebx
   14eac:	e8 df 57 05 00       	call   play_wav
   14eb1:	bb 02 00 00 00       	mov    ebx,0x2
   14eb6:	ba 13 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_57                           ; fixup: num: 2205, src obj: 1, src ofs: 0x14eb7, dst obj: 3, dst ofs: 0x1c13
   14ebb:	b8 ff 3e 00 00       	mov    eax,0x3eff
   14ec0:	e8 cb 57 05 00       	call   play_wav
   14ec5:	bb 02 00 00 00       	mov    ebx,0x2
   14eca:	ba 1c 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_58                           ; fixup: num: 2204, src obj: 1, src ofs: 0x14ecb, dst obj: 3, dst ofs: 0x1c1c
   14ecf:	b8 05 3f 00 00       	mov    eax,0x3f05
   14ed4:	eb 4a                	jmp    talk_to_MR_MOYNAHAN_branch_21
talk_to_MR_MOYNAHAN_branch_20:
   14ed6:	83 f8 02             	cmp    eax,0x2
   14ed9:	75 4a                	jne    talk_to_MR_MOYNAHAN_branch_22
   14edb:	ba 1f 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_59                           ; fixup: num: 2203, src obj: 1, src ofs: 0x14edc, dst obj: 3, dst ofs: 0x1c1f
   14ee0:	b8 09 3f 00 00       	mov    eax,0x3f09
   14ee5:	31 db                	xor    ebx,ebx
   14ee7:	e8 a4 57 05 00       	call   play_wav
   14eec:	bb 02 00 00 00       	mov    ebx,0x2
   14ef1:	ba 28 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_60                           ; fixup: num: 2133, src obj: 1, src ofs: 0x14ef2, dst obj: 3, dst ofs: 0x1c28
   14ef6:	b8 0f 3f 00 00       	mov    eax,0x3f0f
   14efb:	e8 90 57 05 00       	call   play_wav
   14f00:	ba 2b 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_61                           ; fixup: num: 2132, src obj: 1, src ofs: 0x14f01, dst obj: 3, dst ofs: 0x1c2b
   14f05:	b8 13 3f 00 00       	mov    eax,0x3f13
   14f0a:	31 db                	xor    ebx,ebx
   14f0c:	e8 7f 57 05 00       	call   play_wav
   14f11:	bb 02 00 00 00       	mov    ebx,0x2
   14f16:	ba 34 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_62                           ; fixup: num: 2131, src obj: 1, src ofs: 0x14f17, dst obj: 3, dst ofs: 0x1c34
   14f1b:	b8 18 3f 00 00       	mov    eax,0x3f18
talk_to_MR_MOYNAHAN_branch_21:
   14f20:	e8 6b 57 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_22:
   14f25:	bb 01 00 00 00       	mov    ebx,0x1
   14f2a:	ba 37 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_63                           ; fixup: num: 2130, src obj: 1, src ofs: 0x14f2b, dst obj: 3, dst ofs: 0x1c37
   14f2f:	b8 d7 3e 00 00       	mov    eax,0x3ed7
   14f34:	e8 57 57 05 00       	call   play_wav
   14f39:	31 c0                	xor    eax,eax
   14f3b:	5d                   	pop    ebp
   14f3c:	5f                   	pop    edi
   14f3d:	5e                   	pop    esi
   14f3e:	5a                   	pop    edx
   14f3f:	59                   	pop    ecx
   14f40:	5b                   	pop    ebx
   14f41:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_23:
   14f42:	ba 40 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_64                           ; fixup: num: 2129, src obj: 1, src ofs: 0x14f43, dst obj: 3, dst ofs: 0x1c40
   14f47:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2128, src obj: 1, src ofs: 0x14f48, dst obj: 3, dst ofs: 0x294bc
   14f4c:	e8 df 14 06 00       	call   strcmp_
   14f51:	85 c0                	test   eax,eax
   14f53:	74 39                	je     talk_to_MR_MOYNAHAN_branch_24
   14f55:	ba 45 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_65                           ; fixup: num: 2127, src obj: 1, src ofs: 0x14f56, dst obj: 3, dst ofs: 0x1c45
   14f5a:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2126, src obj: 1, src ofs: 0x14f5b, dst obj: 3, dst ofs: 0x294bc
   14f5f:	e8 cc 14 06 00       	call   strcmp_
   14f64:	85 c0                	test   eax,eax
   14f66:	74 26                	je     talk_to_MR_MOYNAHAN_branch_24
   14f68:	ba 54 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_66                           ; fixup: num: 2125, src obj: 1, src ofs: 0x14f69, dst obj: 3, dst ofs: 0x1c54
   14f6d:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2124, src obj: 1, src ofs: 0x14f6e, dst obj: 3, dst ofs: 0x294bc
   14f72:	e8 b9 14 06 00       	call   strcmp_
   14f77:	85 c0                	test   eax,eax
   14f79:	74 13                	je     talk_to_MR_MOYNAHAN_branch_24
   14f7b:	ba 5e 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_67                           ; fixup: num: 2123, src obj: 1, src ofs: 0x14f7c, dst obj: 3, dst ofs: 0x1c5e
   14f80:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2122, src obj: 1, src ofs: 0x14f81, dst obj: 3, dst ofs: 0x294bc
   14f85:	e8 a6 14 06 00       	call   strcmp_
   14f8a:	85 c0                	test   eax,eax
   14f8c:	75 72                	jne    talk_to_MR_MOYNAHAN_branch_28
talk_to_MR_MOYNAHAN_branch_24:
   14f8e:	ba 01 00 00 00       	mov    edx,0x1
   14f93:	31 c0                	xor    eax,eax
   14f95:	e8 96 33 01 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   14f9a:	31 db                	xor    ebx,ebx
   14f9c:	ba 72 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_68                           ; fixup: num: 2137, src obj: 1, src ofs: 0x14f9d, dst obj: 3, dst ofs: 0x1c72
   14fa1:	b8 3e 3f 00 00       	mov    eax,0x3f3e
   14fa6:	e8 e5 56 05 00       	call   play_wav
   14fab:	b8 90 01 00 00       	mov    eax,0x190
   14fb0:	e8 eb 51 01 00       	call   GetDlgFileString
   14fb5:	e8 56 5f 05 00       	call   get_response
   14fba:	83 f8 01             	cmp    eax,0x1
   14fbd:	75 0e                	jne    talk_to_MR_MOYNAHAN_branch_25
   14fbf:	ba 7b 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_69                           ; fixup: num: 2136, src obj: 1, src ofs: 0x14fc0, dst obj: 3, dst ofs: 0x1c7b
   14fc4:	b8 4a 3f 00 00       	mov    eax,0x3f4a
   14fc9:	31 db                	xor    ebx,ebx
   14fcb:	eb 11                	jmp    talk_to_MR_MOYNAHAN_branch_26
talk_to_MR_MOYNAHAN_branch_25:
   14fcd:	83 f8 02             	cmp    eax,0x2
   14fd0:	75 11                	jne    talk_to_MR_MOYNAHAN_branch_27
   14fd2:	ba 84 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_70                           ; fixup: num: 2135, src obj: 1, src ofs: 0x14fd3, dst obj: 3, dst ofs: 0x1c84
   14fd7:	89 c3                	mov    ebx,eax
   14fd9:	b8 4f 3f 00 00       	mov    eax,0x3f4f
talk_to_MR_MOYNAHAN_branch_26:
   14fde:	e8 ad 56 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_27:
   14fe3:	bb 02 00 00 00       	mov    ebx,0x2
   14fe8:	ba 8d 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_71                           ; fixup: num: 2134, src obj: 1, src ofs: 0x14fe9, dst obj: 3, dst ofs: 0x1c8d
   14fed:	b8 54 3f 00 00       	mov    eax,0x3f54
   14ff2:	e8 99 56 05 00       	call   play_wav
   14ff7:	31 c0                	xor    eax,eax
   14ff9:	5d                   	pop    ebp
   14ffa:	5f                   	pop    edi
   14ffb:	5e                   	pop    esi
   14ffc:	5a                   	pop    edx
   14ffd:	59                   	pop    ecx
   14ffe:	5b                   	pop    ebx
   14fff:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_28:
   15000:	ba 96 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_72                           ; fixup: num: 2475, src obj: 1, src ofs: 0x15001, dst obj: 3, dst ofs: 0x1c96
   15005:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2474, src obj: 1, src ofs: 0x15006, dst obj: 3, dst ofs: 0x294bc
   1500a:	e8 21 14 06 00       	call   strcmp_
   1500f:	85 c0                	test   eax,eax
   15011:	75 51                	jne    talk_to_MR_MOYNAHAN_branch_29
   15013:	ba a2 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_73                           ; fixup: num: 2473, src obj: 1, src ofs: 0x15014, dst obj: 3, dst ofs: 0x1ca2
   15018:	b8 49 40 00 00       	mov    eax,0x4049
   1501d:	31 db                	xor    ebx,ebx
   1501f:	e8 6c 56 05 00       	call   play_wav
   15024:	ba a5 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_74                           ; fixup: num: 2472, src obj: 1, src ofs: 0x15025, dst obj: 3, dst ofs: 0x1ca5
   15029:	b8 4d 40 00 00       	mov    eax,0x404d
   1502e:	31 db                	xor    ebx,ebx
   15030:	e8 5b 56 05 00       	call   play_wav
   15035:	b8 ae 1c 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_75                           ; fixup: num: 2471, src obj: 1, src ofs: 0x15036, dst obj: 3, dst ofs: 0x1cae
   1503a:	e8 51 77 05 00       	call   check_script_flag
   1503f:	84 c0                	test   al,al
   15041:	0f 84 f4 0e 00 00    	je     talk_to_MR_MOYNAHAN_branch_105
   15047:	bb 03 00 00 00       	mov    ebx,0x3
   1504c:	ba c3 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_76                           ; fixup: num: 2484, src obj: 1, src ofs: 0x1504d, dst obj: 3, dst ofs: 0x1cc3
   15051:	b8 54 40 00 00       	mov    eax,0x4054
   15056:	e8 35 56 05 00       	call   play_wav
   1505b:	31 c0                	xor    eax,eax
   1505d:	5d                   	pop    ebp
   1505e:	5f                   	pop    edi
   1505f:	5e                   	pop    esi
   15060:	5a                   	pop    edx
   15061:	59                   	pop    ecx
   15062:	5b                   	pop    ebx
   15063:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_29:
   15064:	bb 02 00 00 00       	mov    ebx,0x2
   15069:	ba cc 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_77                           ; fixup: num: 2483, src obj: 1, src ofs: 0x1506a, dst obj: 3, dst ofs: 0x1ccc
   1506e:	b8 3f 3e 00 00       	mov    eax,0x3e3f
talk_to_MR_MOYNAHAN_branch_30:
   15073:	e8 18 56 05 00       	call   play_wav
   15078:	31 c0                	xor    eax,eax
   1507a:	5d                   	pop    ebp
   1507b:	5f                   	pop    edi
   1507c:	5e                   	pop    esi
   1507d:	5a                   	pop    edx
   1507e:	59                   	pop    ecx
   1507f:	5b                   	pop    ebx
   15080:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_31:
   15081:	a1 b8 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN                                     ; fixup: num: 2482, src obj: 1, src ofs: 0x15082, dst obj: 3, dst ofs: 0x22ab8
   15086:	85 c0                	test   eax,eax
   15088:	0f 84 fe 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_36
   1508e:	b8 33 3d 00 00       	mov    eax,0x3d33
   15093:	89 15 b8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN,edx                           ; fixup: num: 2481, src obj: 1, src ofs: 0x15095, dst obj: 3, dst ofs: 0x22ab8
   15099:	31 db                	xor    ebx,ebx
   1509b:	ba d5 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_78                           ; fixup: num: 2480, src obj: 1, src ofs: 0x1509c, dst obj: 3, dst ofs: 0x1cd5
   150a0:	e8 eb 55 05 00       	call   play_wav
   150a5:	ba de 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_79                           ; fixup: num: 2479, src obj: 1, src ofs: 0x150a6, dst obj: 3, dst ofs: 0x1cde
   150aa:	b8 37 3d 00 00       	mov    eax,0x3d37
   150af:	31 db                	xor    ebx,ebx
   150b1:	e8 da 55 05 00       	call   play_wav
   150b6:	ba e1 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_80                           ; fixup: num: 2478, src obj: 1, src ofs: 0x150b7, dst obj: 3, dst ofs: 0x1ce1
   150bb:	b8 3b 3d 00 00       	mov    eax,0x3d3b
   150c0:	31 db                	xor    ebx,ebx
   150c2:	e8 c9 55 05 00       	call   play_wav
   150c7:	ba ea 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_81                           ; fixup: num: 2477, src obj: 1, src ofs: 0x150c8, dst obj: 3, dst ofs: 0x1cea
   150cc:	b8 40 3d 00 00       	mov    eax,0x3d40
   150d1:	31 db                	xor    ebx,ebx
   150d3:	e8 b8 55 05 00       	call   play_wav
   150d8:	ba ed 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_82                           ; fixup: num: 2476, src obj: 1, src ofs: 0x150d9, dst obj: 3, dst ofs: 0x1ced
   150dd:	b8 45 3d 00 00       	mov    eax,0x3d45
   150e2:	31 db                	xor    ebx,ebx
   150e4:	e8 a7 55 05 00       	call   play_wav
   150e9:	ba f6 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_83                           ; fixup: num: 2490, src obj: 1, src ofs: 0x150ea, dst obj: 3, dst ofs: 0x1cf6
   150ee:	b8 47 3d 00 00       	mov    eax,0x3d47
   150f3:	31 db                	xor    ebx,ebx
   150f5:	e8 96 55 05 00       	call   play_wav
   150fa:	ba 01 00 00 00       	mov    edx,0x1
   150ff:	31 c0                	xor    eax,eax
   15101:	e8 da 32 01 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   15106:	31 db                	xor    ebx,ebx
   15108:	ba ff 1c 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_84                           ; fixup: num: 2489, src obj: 1, src ofs: 0x15109, dst obj: 3, dst ofs: 0x1cff
   1510d:	b8 50 3d 00 00       	mov    eax,0x3d50
   15112:	e8 79 55 05 00       	call   play_wav
   15117:	ba 02 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_85                           ; fixup: num: 2488, src obj: 1, src ofs: 0x15118, dst obj: 3, dst ofs: 0x1d02
   1511c:	b8 54 3d 00 00       	mov    eax,0x3d54
   15121:	31 db                	xor    ebx,ebx
   15123:	e8 68 55 05 00       	call   play_wav
   15128:	b8 92 01 00 00       	mov    eax,0x192
   1512d:	e8 6e 50 01 00       	call   GetDlgFileString
   15132:	89 c6                	mov    esi,eax
   15134:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_32:
   15135:	8a 06                	mov    al,BYTE PTR [esi]
   15137:	88 07                	mov    BYTE PTR [edi],al
   15139:	3c 00                	cmp    al,0x0
   1513b:	74 10                	je     talk_to_MR_MOYNAHAN_branch_33
   1513d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15140:	83 c6 02             	add    esi,0x2
   15143:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15146:	83 c7 02             	add    edi,0x2
   15149:	3c 00                	cmp    al,0x0
   1514b:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_32
talk_to_MR_MOYNAHAN_branch_33:
   1514d:	5f                   	pop    edi
   1514e:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 2487, src obj: 1, src ofs: 0x1514f, dst obj: 3, dst ofs: 0x25ac4
   15153:	ba 0b 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_86                           ; fixup: num: 2486, src obj: 1, src ofs: 0x15154, dst obj: 3, dst ofs: 0x1d0b
   15158:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   1515b:	e8 fa c2 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15160:	85 c0                	test   eax,eax
   15162:	75 39                	jne    talk_to_MR_MOYNAHAN_branch_37
   15164:	b8 93 01 00 00       	mov    eax,0x193
   15169:	e8 32 50 01 00       	call   GetDlgFileString
   1516e:	89 c6                	mov    esi,eax
   15170:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_34:
   15171:	8a 06                	mov    al,BYTE PTR [esi]
   15173:	88 07                	mov    BYTE PTR [edi],al
   15175:	3c 00                	cmp    al,0x0
   15177:	74 10                	je     talk_to_MR_MOYNAHAN_branch_35
   15179:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1517c:	83 c6 02             	add    esi,0x2
   1517f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15182:	83 c7 02             	add    edi,0x2
   15185:	3c 00                	cmp    al,0x0
   15187:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_34
talk_to_MR_MOYNAHAN_branch_35:
   15189:	5f                   	pop    edi
   1518a:	eb 11                	jmp    talk_to_MR_MOYNAHAN_branch_37
talk_to_MR_MOYNAHAN_branch_36:
   1518c:	ba 10 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_87                           ; fixup: num: 2485, src obj: 1, src ofs: 0x1518d, dst obj: 3, dst ofs: 0x1d10
   15191:	b8 d1 3f 00 00       	mov    eax,0x3fd1
   15196:	31 db                	xor    ebx,ebx
   15198:	e8 f3 54 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_37:
   1519d:	b8 19 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_88                           ; fixup: num: 2499, src obj: 1, src ofs: 0x1519e, dst obj: 3, dst ofs: 0x1d19
   151a2:	e8 e9 75 05 00       	call   check_script_flag
   151a7:	84 c0                	test   al,al
   151a9:	0f 84 d9 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_43
   151af:	83 3d cc 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_4,0x0                ; fixup: num: 2498, src obj: 1, src ofs: 0x151b1, dst obj: 3, dst ofs: 0x22acc
   151b6:	0f 85 cc 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_43
   151bc:	bb 03 00 00 00       	mov    ebx,0x3
   151c1:	ba 38 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_89                           ; fixup: num: 2497, src obj: 1, src ofs: 0x151c2, dst obj: 3, dst ofs: 0x1d38
   151c6:	b8 a0 3d 00 00       	mov    eax,0x3da0
   151cb:	e8 c0 54 05 00       	call   play_wav
   151d0:	bb 03 00 00 00       	mov    ebx,0x3
   151d5:	ba 41 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_90                           ; fixup: num: 2496, src obj: 1, src ofs: 0x151d6, dst obj: 3, dst ofs: 0x1d41
   151da:	b8 a1 3d 00 00       	mov    eax,0x3da1
   151df:	e8 ac 54 05 00       	call   play_wav
   151e4:	bb 02 00 00 00       	mov    ebx,0x2
   151e9:	ba 4a 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_91                           ; fixup: num: 2495, src obj: 1, src ofs: 0x151ea, dst obj: 3, dst ofs: 0x1d4a
   151ee:	b8 a2 3d 00 00       	mov    eax,0x3da2
   151f3:	be 01 00 00 00       	mov    esi,0x1
   151f8:	e8 93 54 05 00       	call   play_wav
   151fd:	ba 01 00 00 00       	mov    edx,0x1
   15202:	31 c0                	xor    eax,eax
   15204:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2494, src obj: 1, src ofs: 0x15205, dst obj: 3, dst ofs: 0x295c0
   15209:	e8 f2 30 01 00       	call   MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY
   1520e:	89 35 c4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_2,esi                ; fixup: num: 2493, src obj: 1, src ofs: 0x15210, dst obj: 3, dst ofs: 0x22ac4
   15214:	89 35 cc 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_4,esi                ; fixup: num: 2492, src obj: 1, src ofs: 0x15216, dst obj: 3, dst ofs: 0x22acc
   1521a:	29 c9                	sub    ecx,ecx
   1521c:	49                   	dec    ecx
   1521d:	31 c0                	xor    eax,eax
   1521f:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   15221:	f7 d1                	not    ecx
   15223:	49                   	dec    ecx
   15224:	85 c9                	test   ecx,ecx
   15226:	75 2d                	jne    talk_to_MR_MOYNAHAN_branch_40
   15228:	b8 94 01 00 00       	mov    eax,0x194
   1522d:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2491, src obj: 1, src ofs: 0x1522e, dst obj: 3, dst ofs: 0x295c0
   15232:	e8 69 4f 01 00       	call   GetDlgFileString
   15237:	89 c6                	mov    esi,eax
   15239:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_38:
   1523a:	8a 06                	mov    al,BYTE PTR [esi]
   1523c:	88 07                	mov    BYTE PTR [edi],al
   1523e:	3c 00                	cmp    al,0x0
   15240:	74 10                	je     talk_to_MR_MOYNAHAN_branch_39
   15242:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15245:	83 c6 02             	add    esi,0x2
   15248:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1524b:	83 c7 02             	add    edi,0x2
   1524e:	3c 00                	cmp    al,0x0
   15250:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_38
talk_to_MR_MOYNAHAN_branch_39:
   15252:	5f                   	pop    edi
   15253:	eb 33                	jmp    talk_to_MR_MOYNAHAN_branch_43
talk_to_MR_MOYNAHAN_branch_40:
   15255:	b8 95 01 00 00       	mov    eax,0x195
   1525a:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2507, src obj: 1, src ofs: 0x1525b, dst obj: 3, dst ofs: 0x295c0
   1525f:	e8 3c 4f 01 00       	call   GetDlgFileString
   15264:	89 c6                	mov    esi,eax
   15266:	57                   	push   edi
   15267:	2b c9                	sub    ecx,ecx
   15269:	49                   	dec    ecx
   1526a:	b0 00                	mov    al,0x0
   1526c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   1526e:	4f                   	dec    edi
talk_to_MR_MOYNAHAN_branch_41:
   1526f:	8a 06                	mov    al,BYTE PTR [esi]
   15271:	88 07                	mov    BYTE PTR [edi],al
   15273:	3c 00                	cmp    al,0x0
   15275:	74 10                	je     talk_to_MR_MOYNAHAN_branch_42
   15277:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1527a:	83 c6 02             	add    esi,0x2
   1527d:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15280:	83 c7 02             	add    edi,0x2
   15283:	3c 00                	cmp    al,0x0
   15285:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_41
talk_to_MR_MOYNAHAN_branch_42:
   15287:	5f                   	pop    edi
talk_to_MR_MOYNAHAN_branch_43:
   15288:	b8 01 00 00 00       	mov    eax,0x1
   1528d:	31 d2                	xor    edx,edx
   1528f:	e8 cc 30 01 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   15294:	85 c0                	test   eax,eax
   15296:	74 27                	je     talk_to_MR_MOYNAHAN_branch_44
   15298:	83 3d d0 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_5,0x0                ; fixup: num: 2506, src obj: 1, src ofs: 0x1529a, dst obj: 3, dst ofs: 0x22ad0
   1529f:	75 1e                	jne    talk_to_MR_MOYNAHAN_branch_44
   152a1:	b8 01 00 00 00       	mov    eax,0x1
   152a6:	bb 02 00 00 00       	mov    ebx,0x2
   152ab:	ba 53 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_92                           ; fixup: num: 2505, src obj: 1, src ofs: 0x152ac, dst obj: 3, dst ofs: 0x1d53
   152b0:	a3 d0 2a 02 00       	mov    ds:@obj3:MR_MOYNAHAN_variable_5,eax                          ; fixup: num: 2504, src obj: 1, src ofs: 0x152b1, dst obj: 3, dst ofs: 0x22ad0
   152b5:	b8 5b 3f 00 00       	mov    eax,0x3f5b
   152ba:	e8 d1 53 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_44:
   152bf:	b8 5c 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_93                           ; fixup: num: 2503, src obj: 1, src ofs: 0x152c0, dst obj: 3, dst ofs: 0x1d5c
   152c4:	e8 c7 74 05 00       	call   check_script_flag
   152c9:	84 c0                	test   al,al
   152cb:	0f 84 b9 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_47
   152d1:	83 3d c8 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_3,0x0                ; fixup: num: 2502, src obj: 1, src ofs: 0x152d3, dst obj: 3, dst ofs: 0x22ac8
   152d8:	0f 85 ac 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_47
   152de:	bb 01 00 00 00       	mov    ebx,0x1
   152e3:	ba 6e 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_94                           ; fixup: num: 2501, src obj: 1, src ofs: 0x152e4, dst obj: 3, dst ofs: 0x1d6e
   152e8:	b8 65 3f 00 00       	mov    eax,0x3f65
   152ed:	89 1d c8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_3,ebx                ; fixup: num: 2500, src obj: 1, src ofs: 0x152ef, dst obj: 3, dst ofs: 0x22ac8
   152f3:	31 db                	xor    ebx,ebx
   152f5:	e8 96 53 05 00       	call   play_wav
   152fa:	b8 96 01 00 00       	mov    eax,0x196
   152ff:	e8 9c 4e 01 00       	call   GetDlgFileString
   15304:	e8 07 5c 05 00       	call   get_response
   15309:	83 f8 01             	cmp    eax,0x1
   1530c:	75 2b                	jne    talk_to_MR_MOYNAHAN_branch_45
   1530e:	ba 77 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_95                           ; fixup: num: 2516, src obj: 1, src ofs: 0x1530f, dst obj: 3, dst ofs: 0x1d77
   15313:	b8 70 3f 00 00       	mov    eax,0x3f70
   15318:	31 db                	xor    ebx,ebx
   1531a:	e8 71 53 05 00       	call   play_wav
   1531f:	b8 80 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_96                           ; fixup: num: 2515, src obj: 1, src ofs: 0x15320, dst obj: 3, dst ofs: 0x1d80
   15324:	31 d2                	xor    edx,edx
   15326:	e8 15 79 05 00       	call   reset_item_to_initial_settings
   1532b:	b8 87 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_97                           ; fixup: num: 2514, src obj: 1, src ofs: 0x1532c, dst obj: 3, dst ofs: 0x1d87
   15330:	31 d2                	xor    edx,edx
   15332:	e8 09 79 05 00       	call   reset_item_to_initial_settings
   15337:	eb 51                	jmp    talk_to_MR_MOYNAHAN_branch_47
talk_to_MR_MOYNAHAN_branch_45:
   15339:	83 f8 02             	cmp    eax,0x2
   1533c:	75 4c                	jne    talk_to_MR_MOYNAHAN_branch_47
   1533e:	ba 8f 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_98                           ; fixup: num: 2513, src obj: 1, src ofs: 0x1533f, dst obj: 3, dst ofs: 0x1d8f
   15343:	b8 76 3f 00 00       	mov    eax,0x3f76
   15348:	31 db                	xor    ebx,ebx
   1534a:	e8 41 53 05 00       	call   play_wav
   1534f:	e8 6c 38 01 00       	call   get_day
   15354:	83 f8 02             	cmp    eax,0x2
   15357:	7e 1d                	jle    talk_to_MR_MOYNAHAN_branch_46
   15359:	ba 01 00 00 00       	mov    edx,0x1
   1535e:	31 c0                	xor    eax,eax
   15360:	e8 8b 2f 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
   15365:	31 db                	xor    ebx,ebx
   15367:	ba 98 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_99                           ; fixup: num: 2512, src obj: 1, src ofs: 0x15368, dst obj: 3, dst ofs: 0x1d98
   1536c:	b8 7a 3f 00 00       	mov    eax,0x3f7a
   15371:	e8 1a 53 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_46:
   15376:	bb 03 00 00 00       	mov    ebx,0x3
   1537b:	ba a1 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_100                          ; fixup: num: 2511, src obj: 1, src ofs: 0x1537c, dst obj: 3, dst ofs: 0x1da1
   15380:	b8 7e 3f 00 00       	mov    eax,0x3f7e
   15385:	e8 06 53 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_47:
   1538a:	b8 aa 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_101                          ; fixup: num: 2510, src obj: 1, src ofs: 0x1538b, dst obj: 3, dst ofs: 0x1daa
   1538f:	e8 fc 73 05 00       	call   check_script_flag
   15394:	84 c0                	test   al,al
   15396:	74 25                	je     talk_to_MR_MOYNAHAN_branch_48
   15398:	83 3d d8 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_7,0x0                ; fixup: num: 2509, src obj: 1, src ofs: 0x1539a, dst obj: 3, dst ofs: 0x22ad8
   1539f:	75 1c                	jne    talk_to_MR_MOYNAHAN_branch_48
   153a1:	be 01 00 00 00       	mov    esi,0x1
   153a6:	ba bf 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_102                          ; fixup: num: 2508, src obj: 1, src ofs: 0x153a7, dst obj: 3, dst ofs: 0x1dbf
   153ab:	b8 d9 3f 00 00       	mov    eax,0x3fd9
   153b0:	31 db                	xor    ebx,ebx
   153b2:	89 35 d8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_7,esi                ; fixup: num: 2527, src obj: 1, src ofs: 0x153b4, dst obj: 3, dst ofs: 0x22ad8
   153b8:	e8 d3 52 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_48:
   153bd:	e8 fe 37 01 00       	call   get_day
   153c2:	83 f8 05             	cmp    eax,0x5
   153c5:	75 6c                	jne    talk_to_MR_MOYNAHAN_branch_49
   153c7:	83 3d dc 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_8,0x0                ; fixup: num: 2526, src obj: 1, src ofs: 0x153c9, dst obj: 3, dst ofs: 0x22adc
   153ce:	75 63                	jne    talk_to_MR_MOYNAHAN_branch_49
   153d0:	bd 01 00 00 00       	mov    ebp,0x1
   153d5:	ba c8 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_103                          ; fixup: num: 2525, src obj: 1, src ofs: 0x153d6, dst obj: 3, dst ofs: 0x1dc8
   153da:	b8 e5 3f 00 00       	mov    eax,0x3fe5
   153df:	89 eb                	mov    ebx,ebp
   153e1:	89 2d dc 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_8,ebp                ; fixup: num: 2524, src obj: 1, src ofs: 0x153e3, dst obj: 3, dst ofs: 0x22adc
   153e7:	e8 a4 52 05 00       	call   play_wav
   153ec:	ba d1 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_104                          ; fixup: num: 2523, src obj: 1, src ofs: 0x153ed, dst obj: 3, dst ofs: 0x1dd1
   153f1:	b8 ea 3f 00 00       	mov    eax,0x3fea
   153f6:	31 db                	xor    ebx,ebx
   153f8:	e8 93 52 05 00       	call   play_wav
   153fd:	bb 02 00 00 00       	mov    ebx,0x2
   15402:	ba d4 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_105                          ; fixup: num: 2522, src obj: 1, src ofs: 0x15403, dst obj: 3, dst ofs: 0x1dd4
   15407:	b8 ee 3f 00 00       	mov    eax,0x3fee
   1540c:	e8 7f 52 05 00       	call   play_wav
   15411:	ba dd 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_106                          ; fixup: num: 2521, src obj: 1, src ofs: 0x15412, dst obj: 3, dst ofs: 0x1ddd
   15416:	b8 f3 3f 00 00       	mov    eax,0x3ff3
   1541b:	31 db                	xor    ebx,ebx
   1541d:	e8 6e 52 05 00       	call   play_wav
   15422:	ba e0 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_107                          ; fixup: num: 2520, src obj: 1, src ofs: 0x15423, dst obj: 3, dst ofs: 0x1de0
   15427:	b8 f7 3f 00 00       	mov    eax,0x3ff7
   1542c:	31 db                	xor    ebx,ebx
   1542e:	e8 5d 52 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_49:
   15433:	b8 e9 1d 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_108                          ; fixup: num: 2519, src obj: 1, src ofs: 0x15434, dst obj: 3, dst ofs: 0x1de9
   15438:	e8 53 73 05 00       	call   check_script_flag
   1543d:	84 c0                	test   al,al
   1543f:	74 25                	je     talk_to_MR_MOYNAHAN_branch_50
   15441:	83 3d e0 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_9,0x0                ; fixup: num: 2518, src obj: 1, src ofs: 0x15443, dst obj: 3, dst ofs: 0x22ae0
   15448:	75 1c                	jne    talk_to_MR_MOYNAHAN_branch_50
   1544a:	ba 01 00 00 00       	mov    edx,0x1
   1544f:	b8 fe 3f 00 00       	mov    eax,0x3ffe
   15454:	31 db                	xor    ebx,ebx
   15456:	89 15 e0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_9,edx                ; fixup: num: 2517, src obj: 1, src ofs: 0x15458, dst obj: 3, dst ofs: 0x22ae0
   1545c:	ba fb 1d 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_109                          ; fixup: num: 2406, src obj: 1, src ofs: 0x1545d, dst obj: 3, dst ofs: 0x1dfb
   15461:	e8 2a 52 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_50:
   15466:	b8 04 1e 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_110                          ; fixup: num: 2536, src obj: 1, src ofs: 0x15467, dst obj: 3, dst ofs: 0x1e04
   1546b:	e8 20 73 05 00       	call   check_script_flag
   15470:	84 c0                	test   al,al
   15472:	0f 84 00 01 00 00    	je     talk_to_MR_MOYNAHAN_branch_54
   15478:	8b 1d e4 2a 02 00    	mov    ebx,DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_10               ; fixup: num: 2535, src obj: 1, src ofs: 0x1547a, dst obj: 3, dst ofs: 0x22ae4
   1547e:	85 db                	test   ebx,ebx
   15480:	0f 85 f2 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_54
   15486:	b9 01 00 00 00       	mov    ecx,0x1
   1548b:	ba 13 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_111                          ; fixup: num: 2534, src obj: 1, src ofs: 0x1548c, dst obj: 3, dst ofs: 0x1e13
   15490:	b8 07 40 00 00       	mov    eax,0x4007
   15495:	89 0d e4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_10,ecx               ; fixup: num: 2533, src obj: 1, src ofs: 0x15497, dst obj: 3, dst ofs: 0x22ae4
   1549b:	e8 f0 51 05 00       	call   play_wav
   154a0:	b8 97 01 00 00       	mov    eax,0x197
   154a5:	e8 f6 4c 01 00       	call   GetDlgFileString
   154aa:	e8 61 5a 05 00       	call   get_response
   154af:	39 c8                	cmp    eax,ecx
   154b1:	75 0c                	jne    talk_to_MR_MOYNAHAN_branch_51
   154b3:	ba 1c 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_112                          ; fixup: num: 2532, src obj: 1, src ofs: 0x154b4, dst obj: 3, dst ofs: 0x1e1c
   154b8:	b8 12 40 00 00       	mov    eax,0x4012
   154bd:	eb 20                	jmp    talk_to_MR_MOYNAHAN_branch_52
talk_to_MR_MOYNAHAN_branch_51:
   154bf:	83 f8 02             	cmp    eax,0x2
   154c2:	75 22                	jne    talk_to_MR_MOYNAHAN_branch_53
   154c4:	ba 25 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_113                          ; fixup: num: 2531, src obj: 1, src ofs: 0x154c5, dst obj: 3, dst ofs: 0x1e25
   154c9:	b8 17 40 00 00       	mov    eax,0x4017
   154ce:	31 db                	xor    ebx,ebx
   154d0:	e8 bb 51 05 00       	call   play_wav
   154d5:	ba 2e 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_114                          ; fixup: num: 2530, src obj: 1, src ofs: 0x154d6, dst obj: 3, dst ofs: 0x1e2e
   154da:	b8 1c 40 00 00       	mov    eax,0x401c
talk_to_MR_MOYNAHAN_branch_52:
   154df:	31 db                	xor    ebx,ebx
   154e1:	e8 aa 51 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_53:
   154e6:	ba 31 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_115                          ; fixup: num: 2529, src obj: 1, src ofs: 0x154e7, dst obj: 3, dst ofs: 0x1e31
   154eb:	b8 20 40 00 00       	mov    eax,0x4020
   154f0:	31 db                	xor    ebx,ebx
   154f2:	e8 99 51 05 00       	call   play_wav
   154f7:	ba 3a 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_116                          ; fixup: num: 2528, src obj: 1, src ofs: 0x154f8, dst obj: 3, dst ofs: 0x1e3a
   154fc:	b8 26 40 00 00       	mov    eax,0x4026
   15501:	31 db                	xor    ebx,ebx
   15503:	e8 88 51 05 00       	call   play_wav
   15508:	ba 3d 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_117                          ; fixup: num: 2416, src obj: 1, src ofs: 0x15509, dst obj: 3, dst ofs: 0x1e3d
   1550d:	b8 2a 40 00 00       	mov    eax,0x402a
   15512:	31 db                	xor    ebx,ebx
   15514:	e8 77 51 05 00       	call   play_wav
   15519:	ba 46 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_118                          ; fixup: num: 2415, src obj: 1, src ofs: 0x1551a, dst obj: 3, dst ofs: 0x1e46
   1551e:	b8 34 40 00 00       	mov    eax,0x4034
   15523:	31 db                	xor    ebx,ebx
   15525:	e8 66 51 05 00       	call   play_wav
   1552a:	ba 49 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_119                          ; fixup: num: 2414, src obj: 1, src ofs: 0x1552b, dst obj: 3, dst ofs: 0x1e49
   1552f:	b8 38 40 00 00       	mov    eax,0x4038
   15534:	31 db                	xor    ebx,ebx
   15536:	e8 55 51 05 00       	call   play_wav
   1553b:	ba 52 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_120                          ; fixup: num: 2413, src obj: 1, src ofs: 0x1553c, dst obj: 3, dst ofs: 0x1e52
   15540:	b8 3d 40 00 00       	mov    eax,0x403d
   15545:	31 db                	xor    ebx,ebx
   15547:	e8 44 51 05 00       	call   play_wav
   1554c:	bb 01 00 00 00       	mov    ebx,0x1
   15551:	ba 55 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_121                          ; fixup: num: 2412, src obj: 1, src ofs: 0x15552, dst obj: 3, dst ofs: 0x1e55
   15556:	b8 41 40 00 00       	mov    eax,0x4041
   1555b:	e8 30 51 05 00       	call   play_wav
   15560:	ba 01 00 00 00       	mov    edx,0x1
   15565:	31 c0                	xor    eax,eax
   15567:	e8 e4 2c 01 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   1556c:	ba 01 00 00 00       	mov    edx,0x1
   15571:	31 c0                	xor    eax,eax
   15573:	e8 78 2d 01 00       	call   MOYNAHAN_SAID_HE_SAW_POTTSDAM_AT_CEMETARY
talk_to_MR_MOYNAHAN_branch_54:
   15578:	b8 5e 1e 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_122                          ; fixup: num: 2411, src obj: 1, src ofs: 0x15579, dst obj: 3, dst ofs: 0x1e5e
   1557d:	e8 be 72 05 00       	call   npc_alive
   15582:	84 c0                	test   al,al
   15584:	75 28                	jne    talk_to_MR_MOYNAHAN_branch_55
   15586:	83 3d e8 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_11,0x0               ; fixup: num: 2410, src obj: 1, src ofs: 0x15588, dst obj: 3, dst ofs: 0x22ae8
   1558d:	75 1f                	jne    talk_to_MR_MOYNAHAN_branch_55
   1558f:	bf 01 00 00 00       	mov    edi,0x1
   15594:	bb 03 00 00 00       	mov    ebx,0x3
   15599:	ba 66 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_123                          ; fixup: num: 2409, src obj: 1, src ofs: 0x1559a, dst obj: 3, dst ofs: 0x1e66
   1559e:	b8 bb 40 00 00       	mov    eax,0x40bb
   155a3:	89 3d e8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_11,edi               ; fixup: num: 2408, src obj: 1, src ofs: 0x155a5, dst obj: 3, dst ofs: 0x22ae8
   155a9:	e8 e2 50 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_55:
   155ae:	b8 6f 1e 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_124                          ; fixup: num: 2407, src obj: 1, src ofs: 0x155af, dst obj: 3, dst ofs: 0x1e6f
   155b3:	e8 88 72 05 00       	call   npc_alive
   155b8:	84 c0                	test   al,al
   155ba:	75 24                	jne    talk_to_MR_MOYNAHAN_branch_56
   155bc:	83 3d ec 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_12,0x0               ; fixup: num: 2427, src obj: 1, src ofs: 0x155be, dst obj: 3, dst ofs: 0x22aec
   155c3:	75 1b                	jne    talk_to_MR_MOYNAHAN_branch_56
   155c5:	b8 01 00 00 00       	mov    eax,0x1
   155ca:	ba 75 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_125                          ; fixup: num: 2426, src obj: 1, src ofs: 0x155cb, dst obj: 3, dst ofs: 0x1e75
   155cf:	a3 ec 2a 02 00       	mov    ds:@obj3:MR_MOYNAHAN_variable_12,eax                         ; fixup: num: 2425, src obj: 1, src ofs: 0x155d0, dst obj: 3, dst ofs: 0x22aec
   155d4:	89 c3                	mov    ebx,eax
   155d6:	b8 cd 40 00 00       	mov    eax,0x40cd
   155db:	e8 b0 50 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_56:
   155e0:	b8 7e 1e 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_126                          ; fixup: num: 2424, src obj: 1, src ofs: 0x155e1, dst obj: 3, dst ofs: 0x1e7e
   155e5:	e8 a6 71 05 00       	call   check_script_flag
   155ea:	84 c0                	test   al,al
   155ec:	74 28                	je     talk_to_MR_MOYNAHAN_branch_58
   155ee:	83 3d f0 2a 02 00 00 	cmp    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_13,0x0               ; fixup: num: 2423, src obj: 1, src ofs: 0x155f0, dst obj: 3, dst ofs: 0x22af0
   155f5:	75 1f                	jne    talk_to_MR_MOYNAHAN_branch_58
   155f7:	bb 01 00 00 00       	mov    ebx,0x1
   155fc:	ba 8f 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_127                          ; fixup: num: 2422, src obj: 1, src ofs: 0x155fd, dst obj: 3, dst ofs: 0x1e8f
   15601:	b8 d4 40 00 00       	mov    eax,0x40d4
   15606:	89 1d f0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_13,ebx               ; fixup: num: 2421, src obj: 1, src ofs: 0x15608, dst obj: 3, dst ofs: 0x22af0
   1560c:	bb 03 00 00 00       	mov    ebx,0x3
talk_to_MR_MOYNAHAN_branch_57:
   15611:	e8 7a 50 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_58:
   15616:	be 98 1e 00 00       	mov    esi,@obj3:mr_moyna_cpp_variable_128                          ; fixup: num: 2420, src obj: 1, src ofs: 0x15617, dst obj: 3, dst ofs: 0x1e98
   1561b:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 2419, src obj: 1, src ofs: 0x1561c, dst obj: 3, dst ofs: 0x294c0
   15620:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_59:
   15621:	8a 06                	mov    al,BYTE PTR [esi]
   15623:	88 07                	mov    BYTE PTR [edi],al
   15625:	3c 00                	cmp    al,0x0
   15627:	74 10                	je     talk_to_MR_MOYNAHAN_branch_60
   15629:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1562c:	83 c6 02             	add    esi,0x2
   1562f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15632:	83 c7 02             	add    edi,0x2
   15635:	3c 00                	cmp    al,0x0
   15637:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_59
talk_to_MR_MOYNAHAN_branch_60:
   15639:	5f                   	pop    edi
   1563a:	31 ed                	xor    ebp,ebp
talk_to_MR_MOYNAHAN_branch_61:
   1563c:	b8 99 01 00 00       	mov    eax,0x199
   15641:	e8 5a 4b 01 00       	call   GetDlgFileString
   15646:	89 c2                	mov    edx,eax
   15648:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2418, src obj: 1, src ofs: 0x15649, dst obj: 3, dst ofs: 0x294c0
   1564d:	e8 08 be 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15652:	85 c0                	test   eax,eax
   15654:	0f 84 cd 08 00 00    	je     talk_to_MR_MOYNAHAN_branch_104
   1565a:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 2417, src obj: 1, src ofs: 0x1565b, dst obj: 3, dst ofs: 0x295c0
   1565f:	e8 dc 63 05 00       	call   show_keywords
   15664:	b8 9a 01 00 00       	mov    eax,0x19a
   15669:	e8 32 4b 01 00       	call   GetDlgFileString
   1566e:	89 c2                	mov    edx,eax
   15670:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2433, src obj: 1, src ofs: 0x15671, dst obj: 3, dst ofs: 0x294c0
   15675:	e8 e0 bd 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1567a:	85 c0                	test   eax,eax
   1567c:	74 1a                	je     talk_to_MR_MOYNAHAN_branch_62
   1567e:	b8 9b 01 00 00       	mov    eax,0x19b
   15683:	e8 18 4b 01 00       	call   GetDlgFileString
   15688:	89 c2                	mov    edx,eax
   1568a:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2432, src obj: 1, src ofs: 0x1568b, dst obj: 3, dst ofs: 0x294c0
   1568f:	e8 c6 bd 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15694:	85 c0                	test   eax,eax
   15696:	75 6f                	jne    talk_to_MR_MOYNAHAN_branch_65
talk_to_MR_MOYNAHAN_branch_62:
   15698:	ba 01 00 00 00       	mov    edx,0x1
   1569d:	89 e8                	mov    eax,ebp
   1569f:	e8 1c 2d 01 00       	call   TALKED_TO_MR_MOYNAHAN_ABOUT_BAKE_SALE
   156a4:	89 eb                	mov    ebx,ebp
   156a6:	ba 99 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_129                          ; fixup: num: 2431, src obj: 1, src ofs: 0x156a7, dst obj: 3, dst ofs: 0x1e99
   156ab:	b8 5f 3d 00 00       	mov    eax,0x3d5f
   156b0:	e8 db 4f 05 00       	call   play_wav
   156b5:	ba a2 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_130                          ; fixup: num: 2430, src obj: 1, src ofs: 0x156b6, dst obj: 3, dst ofs: 0x1ea2
   156ba:	b8 66 3d 00 00       	mov    eax,0x3d66
   156bf:	89 eb                	mov    ebx,ebp
   156c1:	e8 ca 4f 05 00       	call   play_wav
   156c6:	ba a5 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_131                          ; fixup: num: 2429, src obj: 1, src ofs: 0x156c7, dst obj: 3, dst ofs: 0x1ea5
   156cb:	b8 6a 3d 00 00       	mov    eax,0x3d6a
   156d0:	89 eb                	mov    ebx,ebp
   156d2:	e8 b9 4f 05 00       	call   play_wav
   156d7:	b8 9c 01 00 00       	mov    eax,0x19c
   156dc:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2428, src obj: 1, src ofs: 0x156dd, dst obj: 3, dst ofs: 0x295c0
   156e1:	e8 ba 4a 01 00       	call   GetDlgFileString
   156e6:	89 c6                	mov    esi,eax
   156e8:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_63:
   156e9:	8a 06                	mov    al,BYTE PTR [esi]
   156eb:	88 07                	mov    BYTE PTR [edi],al
   156ed:	3c 00                	cmp    al,0x0
   156ef:	74 10                	je     talk_to_MR_MOYNAHAN_branch_64
   156f1:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   156f4:	83 c6 02             	add    esi,0x2
   156f7:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   156fa:	83 c7 02             	add    edi,0x2
   156fd:	3c 00                	cmp    al,0x0
   156ff:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_63
talk_to_MR_MOYNAHAN_branch_64:
   15701:	5f                   	pop    edi
   15702:	e9 35 ff ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_65:
   15707:	b8 9d 01 00 00       	mov    eax,0x19d
   1570c:	e8 8f 4a 01 00       	call   GetDlgFileString
   15711:	89 c2                	mov    edx,eax
   15713:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2442, src obj: 1, src ofs: 0x15714, dst obj: 3, dst ofs: 0x294c0
   15718:	e8 3d bd 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1571d:	85 c0                	test   eax,eax
   1571f:	74 52                	je     talk_to_MR_MOYNAHAN_branch_66
   15721:	b8 9e 01 00 00       	mov    eax,0x19e
   15726:	e8 75 4a 01 00       	call   GetDlgFileString
   1572b:	89 c2                	mov    edx,eax
   1572d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2441, src obj: 1, src ofs: 0x1572e, dst obj: 3, dst ofs: 0x294c0
   15732:	e8 23 bd 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15737:	85 c0                	test   eax,eax
   15739:	74 38                	je     talk_to_MR_MOYNAHAN_branch_66
   1573b:	b8 9f 01 00 00       	mov    eax,0x19f
   15740:	e8 5b 4a 01 00       	call   GetDlgFileString
   15745:	89 c2                	mov    edx,eax
   15747:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2440, src obj: 1, src ofs: 0x15748, dst obj: 3, dst ofs: 0x294c0
   1574c:	e8 09 bd 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15751:	85 c0                	test   eax,eax
   15753:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_66
   15755:	b8 a0 01 00 00       	mov    eax,0x1a0
   1575a:	e8 41 4a 01 00       	call   GetDlgFileString
   1575f:	89 c2                	mov    edx,eax
   15761:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2439, src obj: 1, src ofs: 0x15762, dst obj: 3, dst ofs: 0x294c0
   15766:	e8 ef bc 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1576b:	85 c0                	test   eax,eax
   1576d:	0f 85 a7 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_69
talk_to_MR_MOYNAHAN_branch_66:
   15773:	ba ae 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_132                          ; fixup: num: 2438, src obj: 1, src ofs: 0x15774, dst obj: 3, dst ofs: 0x1eae
   15778:	b8 76 3d 00 00       	mov    eax,0x3d76
   1577d:	89 eb                	mov    ebx,ebp
   1577f:	e8 0c 4f 05 00       	call   play_wav
   15784:	ba b7 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_133                          ; fixup: num: 2437, src obj: 1, src ofs: 0x15785, dst obj: 3, dst ofs: 0x1eb7
   15789:	b8 7d 3d 00 00       	mov    eax,0x3d7d
   1578e:	89 eb                	mov    ebx,ebp
   15790:	e8 fb 4e 05 00       	call   play_wav
   15795:	ba ba 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_134                          ; fixup: num: 2436, src obj: 1, src ofs: 0x15796, dst obj: 3, dst ofs: 0x1eba
   1579a:	b8 81 3d 00 00       	mov    eax,0x3d81
   1579f:	89 eb                	mov    ebx,ebp
   157a1:	e8 ea 4e 05 00       	call   play_wav
   157a6:	ba c3 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_135                          ; fixup: num: 2435, src obj: 1, src ofs: 0x157a7, dst obj: 3, dst ofs: 0x1ec3
   157ab:	b8 88 3d 00 00       	mov    eax,0x3d88
   157b0:	89 eb                	mov    ebx,ebp
   157b2:	e8 d9 4e 05 00       	call   play_wav
   157b7:	ba c6 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_136                          ; fixup: num: 2434, src obj: 1, src ofs: 0x157b8, dst obj: 3, dst ofs: 0x1ec6
   157bc:	b8 8c 3d 00 00       	mov    eax,0x3d8c
   157c1:	89 eb                	mov    ebx,ebp
   157c3:	e8 c8 4e 05 00       	call   play_wav
   157c8:	ba cf 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_137                          ; fixup: num: 2448, src obj: 1, src ofs: 0x157c9, dst obj: 3, dst ofs: 0x1ecf
   157cd:	b8 92 3d 00 00       	mov    eax,0x3d92
   157d2:	89 eb                	mov    ebx,ebp
   157d4:	e8 b7 4e 05 00       	call   play_wav
   157d9:	ba d2 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_138                          ; fixup: num: 2447, src obj: 1, src ofs: 0x157da, dst obj: 3, dst ofs: 0x1ed2
   157de:	b8 96 3d 00 00       	mov    eax,0x3d96
   157e3:	89 eb                	mov    ebx,ebp
   157e5:	e8 a6 4e 05 00       	call   play_wav
   157ea:	b8 a1 01 00 00       	mov    eax,0x1a1
   157ef:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2446, src obj: 1, src ofs: 0x157f0, dst obj: 3, dst ofs: 0x295c0
   157f4:	e8 a7 49 01 00       	call   GetDlgFileString
   157f9:	89 c6                	mov    esi,eax
   157fb:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_67:
   157fc:	8a 06                	mov    al,BYTE PTR [esi]
   157fe:	88 07                	mov    BYTE PTR [edi],al
   15800:	3c 00                	cmp    al,0x0
   15802:	74 10                	je     talk_to_MR_MOYNAHAN_branch_68
   15804:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15807:	83 c6 02             	add    esi,0x2
   1580a:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1580d:	83 c7 02             	add    edi,0x2
   15810:	3c 00                	cmp    al,0x0
   15812:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_67
talk_to_MR_MOYNAHAN_branch_68:
   15814:	5f                   	pop    edi
   15815:	e9 22 fe ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_69:
   1581a:	b8 a2 01 00 00       	mov    eax,0x1a2
   1581f:	e8 7c 49 01 00       	call   GetDlgFileString
   15824:	89 c2                	mov    edx,eax
   15826:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2445, src obj: 1, src ofs: 0x15827, dst obj: 3, dst ofs: 0x294c0
   1582b:	e8 2a bc 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15830:	85 c0                	test   eax,eax
   15832:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_70
   15834:	b8 a3 01 00 00       	mov    eax,0x1a3
   15839:	e8 62 49 01 00       	call   GetDlgFileString
   1583e:	89 c2                	mov    edx,eax
   15840:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2444, src obj: 1, src ofs: 0x15841, dst obj: 3, dst ofs: 0x294c0
   15845:	e8 10 bc 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   1584a:	85 c0                	test   eax,eax
   1584c:	0f 85 11 01 00 00    	jne    talk_to_MR_MOYNAHAN_branch_79
talk_to_MR_MOYNAHAN_branch_70:
   15852:	bb 03 00 00 00       	mov    ebx,0x3
   15857:	ba db 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_139                          ; fixup: num: 2443, src obj: 1, src ofs: 0x15858, dst obj: 3, dst ofs: 0x1edb
   1585c:	b8 a0 3d 00 00       	mov    eax,0x3da0
   15861:	e8 2a 4e 05 00       	call   play_wav
   15866:	e8 55 33 01 00       	call   get_day
   1586b:	83 f8 05             	cmp    eax,0x5
   1586e:	7c 2a                	jl     talk_to_MR_MOYNAHAN_branch_71
   15870:	bb 03 00 00 00       	mov    ebx,0x3
   15875:	ba e4 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_140                          ; fixup: num: 2454, src obj: 1, src ofs: 0x15876, dst obj: 3, dst ofs: 0x1ee4
   1587a:	b8 a1 3d 00 00       	mov    eax,0x3da1
   1587f:	e8 0c 4e 05 00       	call   play_wav
   15884:	ba 01 00 00 00       	mov    edx,0x1
   15889:	89 e8                	mov    eax,ebp
   1588b:	e8 70 2a 01 00       	call   MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY
   15890:	c7 05 c4 2a 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_2,0x1       ; fixup: num: 2453, src obj: 1, src ofs: 0x15892, dst obj: 3, dst ofs: 0x22ac4
talk_to_MR_MOYNAHAN_branch_71:
   1589a:	bb 02 00 00 00       	mov    ebx,0x2
   1589f:	ba ed 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_141                          ; fixup: num: 2452, src obj: 1, src ofs: 0x158a0, dst obj: 3, dst ofs: 0x1eed
   158a4:	b8 a2 3d 00 00       	mov    eax,0x3da2
   158a9:	e8 e2 4d 05 00       	call   play_wav
   158ae:	b8 a6 01 00 00       	mov    eax,0x1a6
   158b3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2451, src obj: 1, src ofs: 0x158b4, dst obj: 3, dst ofs: 0x295c0
   158b8:	e8 e3 48 01 00       	call   GetDlgFileString
   158bd:	89 c6                	mov    esi,eax
   158bf:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_72:
   158c0:	8a 06                	mov    al,BYTE PTR [esi]
   158c2:	88 07                	mov    BYTE PTR [edi],al
   158c4:	3c 00                	cmp    al,0x0
   158c6:	74 10                	je     talk_to_MR_MOYNAHAN_branch_73
   158c8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   158cb:	83 c6 02             	add    esi,0x2
   158ce:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   158d1:	83 c7 02             	add    edi,0x2
   158d4:	3c 00                	cmp    al,0x0
   158d6:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_72
talk_to_MR_MOYNAHAN_branch_73:
   158d8:	5f                   	pop    edi
   158d9:	e8 e2 32 01 00       	call   get_day
   158de:	83 f8 05             	cmp    eax,0x5
   158e1:	7c 2e                	jl     talk_to_MR_MOYNAHAN_branch_76
   158e3:	b8 a7 01 00 00       	mov    eax,0x1a7
   158e8:	e8 b3 48 01 00       	call   GetDlgFileString
   158ed:	89 c6                	mov    esi,eax
   158ef:	57                   	push   edi
   158f0:	2b c9                	sub    ecx,ecx
   158f2:	49                   	dec    ecx
   158f3:	b0 00                	mov    al,0x0
   158f5:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   158f7:	4f                   	dec    edi
talk_to_MR_MOYNAHAN_branch_74:
   158f8:	8a 06                	mov    al,BYTE PTR [esi]
   158fa:	88 07                	mov    BYTE PTR [edi],al
   158fc:	3c 00                	cmp    al,0x0
   158fe:	74 10                	je     talk_to_MR_MOYNAHAN_branch_75
   15900:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15903:	83 c6 02             	add    esi,0x2
   15906:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15909:	83 c7 02             	add    edi,0x2
   1590c:	3c 00                	cmp    al,0x0
   1590e:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_74
talk_to_MR_MOYNAHAN_branch_75:
   15910:	5f                   	pop    edi
talk_to_MR_MOYNAHAN_branch_76:
   15911:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 2450, src obj: 1, src ofs: 0x15912, dst obj: 3, dst ofs: 0x25ac4
   15916:	ba f6 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_142                          ; fixup: num: 2449, src obj: 1, src ofs: 0x15917, dst obj: 3, dst ofs: 0x1ef6
   1591b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   1591e:	e8 37 bb 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15923:	85 c0                	test   eax,eax
   15925:	0f 85 11 fd ff ff    	jne    talk_to_MR_MOYNAHAN_branch_61
   1592b:	b8 a8 01 00 00       	mov    eax,0x1a8
   15930:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2459, src obj: 1, src ofs: 0x15931, dst obj: 3, dst ofs: 0x295c0
   15935:	e8 66 48 01 00       	call   GetDlgFileString
   1593a:	89 c6                	mov    esi,eax
   1593c:	57                   	push   edi
   1593d:	2b c9                	sub    ecx,ecx
   1593f:	49                   	dec    ecx
   15940:	b0 00                	mov    al,0x0
   15942:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   15944:	4f                   	dec    edi
talk_to_MR_MOYNAHAN_branch_77:
   15945:	8a 06                	mov    al,BYTE PTR [esi]
   15947:	88 07                	mov    BYTE PTR [edi],al
   15949:	3c 00                	cmp    al,0x0
   1594b:	74 10                	je     talk_to_MR_MOYNAHAN_branch_78
   1594d:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15950:	83 c6 02             	add    esi,0x2
   15953:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15956:	83 c7 02             	add    edi,0x2
   15959:	3c 00                	cmp    al,0x0
   1595b:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_77
talk_to_MR_MOYNAHAN_branch_78:
   1595d:	5f                   	pop    edi
   1595e:	e9 d9 fc ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_79:
   15963:	b8 a9 01 00 00       	mov    eax,0x1a9
   15968:	e8 33 48 01 00       	call   GetDlgFileString
   1596d:	89 c2                	mov    edx,eax
   1596f:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2458, src obj: 1, src ofs: 0x15970, dst obj: 3, dst ofs: 0x294c0
   15974:	e8 e1 ba 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15979:	85 c0                	test   eax,eax
   1597b:	74 38                	je     talk_to_MR_MOYNAHAN_branch_80
   1597d:	b8 aa 01 00 00       	mov    eax,0x1aa
   15982:	e8 19 48 01 00       	call   GetDlgFileString
   15987:	89 c2                	mov    edx,eax
   15989:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2457, src obj: 1, src ofs: 0x1598a, dst obj: 3, dst ofs: 0x294c0
   1598e:	e8 c7 ba 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15993:	85 c0                	test   eax,eax
   15995:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_80
   15997:	b8 ab 01 00 00       	mov    eax,0x1ab
   1599c:	e8 ff 47 01 00       	call   GetDlgFileString
   159a1:	89 c2                	mov    edx,eax
   159a3:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2456, src obj: 1, src ofs: 0x159a4, dst obj: 3, dst ofs: 0x294c0
   159a8:	e8 ad ba 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   159ad:	85 c0                	test   eax,eax
   159af:	0f 85 82 01 00 00    	jne    talk_to_MR_MOYNAHAN_branch_89
talk_to_MR_MOYNAHAN_branch_80:
   159b5:	ba fb 1e 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_143                          ; fixup: num: 2455, src obj: 1, src ofs: 0x159b6, dst obj: 3, dst ofs: 0x1efb
   159ba:	b8 b1 3d 00 00       	mov    eax,0x3db1
   159bf:	89 eb                	mov    ebx,ebp
   159c1:	e8 ca 4c 05 00       	call   play_wav
   159c6:	b8 ac 01 00 00       	mov    eax,0x1ac
   159cb:	e8 d0 47 01 00       	call   GetDlgFileString
   159d0:	e8 3b 55 05 00       	call   get_response
   159d5:	83 f8 01             	cmp    eax,0x1
   159d8:	75 66                	jne    talk_to_MR_MOYNAHAN_branch_83
   159da:	ba 04 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_144                          ; fixup: num: 2466, src obj: 1, src ofs: 0x159db, dst obj: 3, dst ofs: 0x1f04
   159df:	89 c3                	mov    ebx,eax
   159e1:	b8 be 3d 00 00       	mov    eax,0x3dbe
   159e6:	e8 a5 4c 05 00       	call   play_wav
   159eb:	ba 0d 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_145                          ; fixup: num: 2465, src obj: 1, src ofs: 0x159ec, dst obj: 3, dst ofs: 0x1f0d
   159f0:	b8 c4 3d 00 00       	mov    eax,0x3dc4
   159f5:	89 eb                	mov    ebx,ebp
   159f7:	e8 94 4c 05 00       	call   play_wav
   159fc:	bb 02 00 00 00       	mov    ebx,0x2
   15a01:	ba 10 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_146                          ; fixup: num: 2464, src obj: 1, src ofs: 0x15a02, dst obj: 3, dst ofs: 0x1f10
   15a06:	b8 c8 3d 00 00       	mov    eax,0x3dc8
   15a0b:	e8 80 4c 05 00       	call   play_wav
   15a10:	b8 ad 01 00 00       	mov    eax,0x1ad
   15a15:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2463, src obj: 1, src ofs: 0x15a16, dst obj: 3, dst ofs: 0x295c0
   15a1a:	e8 81 47 01 00       	call   GetDlgFileString
   15a1f:	89 c6                	mov    esi,eax
   15a21:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_81:
   15a22:	8a 06                	mov    al,BYTE PTR [esi]
   15a24:	88 07                	mov    BYTE PTR [edi],al
   15a26:	3c 00                	cmp    al,0x0
   15a28:	74 10                	je     talk_to_MR_MOYNAHAN_branch_82
   15a2a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15a2d:	83 c6 02             	add    esi,0x2
   15a30:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15a33:	83 c7 02             	add    edi,0x2
   15a36:	3c 00                	cmp    al,0x0
   15a38:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_81
talk_to_MR_MOYNAHAN_branch_82:
   15a3a:	5f                   	pop    edi
   15a3b:	e9 fc fb ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_83:
   15a40:	83 f8 02             	cmp    eax,0x2
   15a43:	0f 85 f3 fb ff ff    	jne    talk_to_MR_MOYNAHAN_branch_61
   15a49:	ba 19 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_147                          ; fixup: num: 2462, src obj: 1, src ofs: 0x15a4a, dst obj: 3, dst ofs: 0x1f19
   15a4e:	b8 cf 3d 00 00       	mov    eax,0x3dcf
   15a53:	89 eb                	mov    ebx,ebp
   15a55:	e8 36 4c 05 00       	call   play_wav
   15a5a:	ba 22 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_148                          ; fixup: num: 2461, src obj: 1, src ofs: 0x15a5b, dst obj: 3, dst ofs: 0x1f22
   15a5f:	b8 d4 3d 00 00       	mov    eax,0x3dd4
   15a64:	89 eb                	mov    ebx,ebp
   15a66:	e8 25 4c 05 00       	call   play_wav
   15a6b:	bb 01 00 00 00       	mov    ebx,0x1
   15a70:	ba 25 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_149                          ; fixup: num: 2460, src obj: 1, src ofs: 0x15a71, dst obj: 3, dst ofs: 0x1f25
   15a75:	b8 d8 3d 00 00       	mov    eax,0x3dd8
   15a7a:	e8 11 4c 05 00       	call   play_wav
   15a7f:	ba 2e 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_150                          ; fixup: num: 2470, src obj: 1, src ofs: 0x15a80, dst obj: 3, dst ofs: 0x1f2e
   15a84:	b8 dd 3d 00 00       	mov    eax,0x3ddd
   15a89:	89 eb                	mov    ebx,ebp
   15a8b:	e8 00 4c 05 00       	call   play_wav
   15a90:	bb 02 00 00 00       	mov    ebx,0x2
   15a95:	ba 31 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_151                          ; fixup: num: 2469, src obj: 1, src ofs: 0x15a96, dst obj: 3, dst ofs: 0x1f31
   15a9a:	b8 e2 3d 00 00       	mov    eax,0x3de2
   15a9f:	e8 ec 4b 05 00       	call   play_wav
   15aa4:	e8 17 31 01 00       	call   get_day
   15aa9:	83 f8 05             	cmp    eax,0x5
   15aac:	7c 1d                	jl     talk_to_MR_MOYNAHAN_branch_84
   15aae:	ba 3a 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_152                          ; fixup: num: 2468, src obj: 1, src ofs: 0x15aaf, dst obj: 3, dst ofs: 0x1f3a
   15ab3:	b8 eb 3d 00 00       	mov    eax,0x3deb
   15ab8:	89 eb                	mov    ebx,ebp
   15aba:	e8 d1 4b 05 00       	call   play_wav
   15abf:	ba 01 00 00 00       	mov    edx,0x1
   15ac4:	89 e8                	mov    eax,ebp
   15ac6:	e8 35 28 01 00       	call   MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY
talk_to_MR_MOYNAHAN_branch_84:
   15acb:	b8 b0 01 00 00       	mov    eax,0x1b0
   15ad0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2467, src obj: 1, src ofs: 0x15ad1, dst obj: 3, dst ofs: 0x295c0
   15ad5:	e8 c6 46 01 00       	call   GetDlgFileString
   15ada:	89 c6                	mov    esi,eax
   15adc:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_85:
   15add:	8a 06                	mov    al,BYTE PTR [esi]
   15adf:	88 07                	mov    BYTE PTR [edi],al
   15ae1:	3c 00                	cmp    al,0x0
   15ae3:	74 10                	je     talk_to_MR_MOYNAHAN_branch_86
   15ae5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15ae8:	83 c6 02             	add    esi,0x2
   15aeb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15aee:	83 c7 02             	add    edi,0x2
   15af1:	3c 00                	cmp    al,0x0
   15af3:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_85
talk_to_MR_MOYNAHAN_branch_86:
   15af5:	5f                   	pop    edi
   15af6:	e8 c5 30 01 00       	call   get_day
   15afb:	83 f8 05             	cmp    eax,0x5
   15afe:	0f 8c 38 fb ff ff    	jl     talk_to_MR_MOYNAHAN_branch_61
   15b04:	b8 b1 01 00 00       	mov    eax,0x1b1
   15b09:	e8 92 46 01 00       	call   GetDlgFileString
   15b0e:	89 c6                	mov    esi,eax
   15b10:	57                   	push   edi
   15b11:	2b c9                	sub    ecx,ecx
   15b13:	49                   	dec    ecx
   15b14:	b0 00                	mov    al,0x0
   15b16:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
   15b18:	4f                   	dec    edi
talk_to_MR_MOYNAHAN_branch_87:
   15b19:	8a 06                	mov    al,BYTE PTR [esi]
   15b1b:	88 07                	mov    BYTE PTR [edi],al
   15b1d:	3c 00                	cmp    al,0x0
   15b1f:	74 10                	je     talk_to_MR_MOYNAHAN_branch_88
   15b21:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15b24:	83 c6 02             	add    esi,0x2
   15b27:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15b2a:	83 c7 02             	add    edi,0x2
   15b2d:	3c 00                	cmp    al,0x0
   15b2f:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_87
talk_to_MR_MOYNAHAN_branch_88:
   15b31:	5f                   	pop    edi
   15b32:	e9 05 fb ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_89:
   15b37:	b8 b2 01 00 00       	mov    eax,0x1b2
   15b3c:	e8 5f 46 01 00       	call   GetDlgFileString
   15b41:	89 c2                	mov    edx,eax
   15b43:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2350, src obj: 1, src ofs: 0x15b44, dst obj: 3, dst ofs: 0x294c0
   15b48:	e8 0d b9 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15b4d:	85 c0                	test   eax,eax
   15b4f:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_90
   15b51:	b8 b3 01 00 00       	mov    eax,0x1b3
   15b56:	e8 45 46 01 00       	call   GetDlgFileString
   15b5b:	89 c2                	mov    edx,eax
   15b5d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2349, src obj: 1, src ofs: 0x15b5e, dst obj: 3, dst ofs: 0x294c0
   15b62:	e8 f3 b8 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15b67:	85 c0                	test   eax,eax
   15b69:	0f 85 bd 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_93
talk_to_MR_MOYNAHAN_branch_90:
   15b6f:	e8 4c 30 01 00       	call   get_day
   15b74:	83 f8 05             	cmp    eax,0x5
   15b77:	0f 8c af 00 00 00    	jl     talk_to_MR_MOYNAHAN_branch_93
   15b7d:	ba 01 00 00 00       	mov    edx,0x1
   15b82:	89 e8                	mov    eax,ebp
   15b84:	e8 77 27 01 00       	call   MOYNAHAN_TOLD_YOU_ABOUT_CORPSE_IN_MORTUARY
   15b89:	ba 01 00 00 00       	mov    edx,0x1
   15b8e:	89 e8                	mov    eax,ebp
   15b90:	e8 3b 27 01 00       	call   MOYNAHAN_SAID_CORPSE_DIED_OF_NATURAL_CAUSES
   15b95:	ba 01 00 00 00       	mov    edx,0x1
   15b9a:	89 e8                	mov    eax,ebp
   15b9c:	bb 03 00 00 00       	mov    ebx,0x3
   15ba1:	e8 3a 27 01 00       	call   MOYNAHAN_SAID_CORPSE_IS_A_HOBO
   15ba6:	ba 43 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_153                          ; fixup: num: 2348, src obj: 1, src ofs: 0x15ba7, dst obj: 3, dst ofs: 0x1f43
   15bab:	b8 f5 3d 00 00       	mov    eax,0x3df5
   15bb0:	e8 db 4a 05 00       	call   play_wav
   15bb5:	ba 4c 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_154                          ; fixup: num: 2347, src obj: 1, src ofs: 0x15bb6, dst obj: 3, dst ofs: 0x1f4c
   15bba:	b8 fc 3d 00 00       	mov    eax,0x3dfc
   15bbf:	89 eb                	mov    ebx,ebp
   15bc1:	e8 ca 4a 05 00       	call   play_wav
   15bc6:	ba 4f 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_155                          ; fixup: num: 2346, src obj: 1, src ofs: 0x15bc7, dst obj: 3, dst ofs: 0x1f4f
   15bcb:	b8 00 3e 00 00       	mov    eax,0x3e00
   15bd0:	89 eb                	mov    ebx,ebp
   15bd2:	e8 b9 4a 05 00       	call   play_wav
   15bd7:	ba 58 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_156                          ; fixup: num: 2345, src obj: 1, src ofs: 0x15bd8, dst obj: 3, dst ofs: 0x1f58
   15bdc:	b8 05 3e 00 00       	mov    eax,0x3e05
   15be1:	89 eb                	mov    ebx,ebp
   15be3:	e8 a8 4a 05 00       	call   play_wav
   15be8:	ba 5b 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_157                          ; fixup: num: 2360, src obj: 1, src ofs: 0x15be9, dst obj: 3, dst ofs: 0x1f5b
   15bed:	b8 0a 3e 00 00       	mov    eax,0x3e0a
   15bf2:	89 eb                	mov    ebx,ebp
   15bf4:	be 64 1f 00 00       	mov    esi,@obj3:mr_moyna_cpp_variable_158                          ; fixup: num: 2359, src obj: 1, src ofs: 0x15bf5, dst obj: 3, dst ofs: 0x1f64
   15bf9:	e8 92 4a 05 00       	call   play_wav
   15bfe:	b8 01 00 00 00       	mov    eax,0x1
   15c03:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2358, src obj: 1, src ofs: 0x15c04, dst obj: 3, dst ofs: 0x295c0
   15c08:	a3 c4 2a 02 00       	mov    ds:@obj3:MR_MOYNAHAN_variable_2,eax                          ; fixup: num: 2357, src obj: 1, src ofs: 0x15c09, dst obj: 3, dst ofs: 0x22ac4
   15c0d:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_91:
   15c0e:	8a 06                	mov    al,BYTE PTR [esi]
   15c10:	88 07                	mov    BYTE PTR [edi],al
   15c12:	3c 00                	cmp    al,0x0
   15c14:	74 10                	je     talk_to_MR_MOYNAHAN_branch_92
   15c16:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15c19:	83 c6 02             	add    esi,0x2
   15c1c:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15c1f:	83 c7 02             	add    edi,0x2
   15c22:	3c 00                	cmp    al,0x0
   15c24:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_91
talk_to_MR_MOYNAHAN_branch_92:
   15c26:	5f                   	pop    edi
   15c27:	e9 10 fa ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_93:
   15c2c:	b8 b4 01 00 00       	mov    eax,0x1b4
   15c31:	e8 6a 45 01 00       	call   GetDlgFileString
   15c36:	89 c2                	mov    edx,eax
   15c38:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2356, src obj: 1, src ofs: 0x15c39, dst obj: 3, dst ofs: 0x294c0
   15c3d:	e8 18 b8 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15c42:	85 c0                	test   eax,eax
   15c44:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_94
   15c46:	b8 b5 01 00 00       	mov    eax,0x1b5
   15c4b:	e8 50 45 01 00       	call   GetDlgFileString
   15c50:	89 c2                	mov    edx,eax
   15c52:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2355, src obj: 1, src ofs: 0x15c53, dst obj: 3, dst ofs: 0x294c0
   15c57:	e8 fe b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15c5c:	85 c0                	test   eax,eax
   15c5e:	0f 85 7c 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_97
talk_to_MR_MOYNAHAN_branch_94:
   15c64:	a1 c4 5a 02 00       	mov    eax,ds:@obj3:current_room                                    ; fixup: num: 2354, src obj: 1, src ofs: 0x15c65, dst obj: 3, dst ofs: 0x25ac4
   15c69:	ba 65 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_159                          ; fixup: num: 2353, src obj: 1, src ofs: 0x15c6a, dst obj: 3, dst ofs: 0x1f65
   15c6e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
   15c71:	e8 e4 b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15c76:	85 c0                	test   eax,eax
   15c78:	75 66                	jne    talk_to_MR_MOYNAHAN_branch_97
   15c7a:	ba 6a 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_160                          ; fixup: num: 2352, src obj: 1, src ofs: 0x15c7b, dst obj: 3, dst ofs: 0x1f6a
   15c7f:	b8 18 3e 00 00       	mov    eax,0x3e18
   15c84:	89 eb                	mov    ebx,ebp
   15c86:	e8 05 4a 05 00       	call   play_wav
   15c8b:	ba 73 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_161                          ; fixup: num: 2351, src obj: 1, src ofs: 0x15c8c, dst obj: 3, dst ofs: 0x1f73
   15c90:	b8 22 3e 00 00       	mov    eax,0x3e22
   15c95:	89 eb                	mov    ebx,ebp
   15c97:	e8 f4 49 05 00       	call   play_wav
   15c9c:	bb 02 00 00 00       	mov    ebx,0x2
   15ca1:	ba 76 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_162                          ; fixup: num: 2365, src obj: 1, src ofs: 0x15ca2, dst obj: 3, dst ofs: 0x1f76
   15ca6:	b8 26 3e 00 00       	mov    eax,0x3e26
   15cab:	e8 e0 49 05 00       	call   play_wav
   15cb0:	b8 b6 01 00 00       	mov    eax,0x1b6
   15cb5:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 2364, src obj: 1, src ofs: 0x15cb6, dst obj: 3, dst ofs: 0x295c0
   15cba:	e8 e1 44 01 00       	call   GetDlgFileString
   15cbf:	89 c6                	mov    esi,eax
   15cc1:	57                   	push   edi
talk_to_MR_MOYNAHAN_branch_95:
   15cc2:	8a 06                	mov    al,BYTE PTR [esi]
   15cc4:	88 07                	mov    BYTE PTR [edi],al
   15cc6:	3c 00                	cmp    al,0x0
   15cc8:	74 10                	je     talk_to_MR_MOYNAHAN_branch_96
   15cca:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   15ccd:	83 c6 02             	add    esi,0x2
   15cd0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   15cd3:	83 c7 02             	add    edi,0x2
   15cd6:	3c 00                	cmp    al,0x0
   15cd8:	75 e8                	jne    talk_to_MR_MOYNAHAN_branch_95
talk_to_MR_MOYNAHAN_branch_96:
   15cda:	5f                   	pop    edi
   15cdb:	e9 5c f9 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_97:
   15ce0:	b8 b8 01 00 00       	mov    eax,0x1b8
   15ce5:	e8 b6 44 01 00       	call   GetDlgFileString
   15cea:	89 c2                	mov    edx,eax
   15cec:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2363, src obj: 1, src ofs: 0x15ced, dst obj: 3, dst ofs: 0x294c0
   15cf1:	e8 64 b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15cf6:	85 c0                	test   eax,eax
   15cf8:	0f 84 a0 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_98
   15cfe:	b8 b9 01 00 00       	mov    eax,0x1b9
   15d03:	e8 98 44 01 00       	call   GetDlgFileString
   15d08:	89 c2                	mov    edx,eax
   15d0a:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2362, src obj: 1, src ofs: 0x15d0b, dst obj: 3, dst ofs: 0x294c0
   15d0f:	e8 46 b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d14:	85 c0                	test   eax,eax
   15d16:	0f 84 82 00 00 00    	je     talk_to_MR_MOYNAHAN_branch_98
   15d1c:	b8 ba 01 00 00       	mov    eax,0x1ba
   15d21:	e8 7a 44 01 00       	call   GetDlgFileString
   15d26:	89 c2                	mov    edx,eax
   15d28:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2361, src obj: 1, src ofs: 0x15d29, dst obj: 3, dst ofs: 0x294c0
   15d2d:	e8 28 b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d32:	85 c0                	test   eax,eax
   15d34:	74 68                	je     talk_to_MR_MOYNAHAN_branch_98
   15d36:	b8 bb 01 00 00       	mov    eax,0x1bb
   15d3b:	e8 60 44 01 00       	call   GetDlgFileString
   15d40:	89 c2                	mov    edx,eax
   15d42:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2371, src obj: 1, src ofs: 0x15d43, dst obj: 3, dst ofs: 0x294c0
   15d47:	e8 0e b7 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d4c:	85 c0                	test   eax,eax
   15d4e:	74 4e                	je     talk_to_MR_MOYNAHAN_branch_98
   15d50:	b8 bc 01 00 00       	mov    eax,0x1bc
   15d55:	e8 46 44 01 00       	call   GetDlgFileString
   15d5a:	89 c2                	mov    edx,eax
   15d5c:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2370, src obj: 1, src ofs: 0x15d5d, dst obj: 3, dst ofs: 0x294c0
   15d61:	e8 f4 b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d66:	85 c0                	test   eax,eax
   15d68:	74 34                	je     talk_to_MR_MOYNAHAN_branch_98
   15d6a:	b8 bd 01 00 00       	mov    eax,0x1bd
   15d6f:	e8 2c 44 01 00       	call   GetDlgFileString
   15d74:	89 c2                	mov    edx,eax
   15d76:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2369, src obj: 1, src ofs: 0x15d77, dst obj: 3, dst ofs: 0x294c0
   15d7b:	e8 da b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d80:	85 c0                	test   eax,eax
   15d82:	74 1a                	je     talk_to_MR_MOYNAHAN_branch_98
   15d84:	b8 be 01 00 00       	mov    eax,0x1be
   15d89:	e8 12 44 01 00       	call   GetDlgFileString
   15d8e:	89 c2                	mov    edx,eax
   15d90:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2368, src obj: 1, src ofs: 0x15d91, dst obj: 3, dst ofs: 0x294c0
   15d95:	e8 c0 b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15d9a:	85 c0                	test   eax,eax
   15d9c:	75 2e                	jne    talk_to_MR_MOYNAHAN_branch_99
talk_to_MR_MOYNAHAN_branch_98:
   15d9e:	e8 1d 2e 01 00       	call   get_day
   15da3:	83 f8 05             	cmp    eax,0x5
   15da6:	7c 24                	jl     talk_to_MR_MOYNAHAN_branch_99
   15da8:	e8 13 2e 01 00       	call   get_day
   15dad:	83 f8 05             	cmp    eax,0x5
   15db0:	0f 8c 86 f8 ff ff    	jl     talk_to_MR_MOYNAHAN_branch_61
   15db6:	ba 7f 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_163                          ; fixup: num: 2367, src obj: 1, src ofs: 0x15db7, dst obj: 3, dst ofs: 0x1f7f
   15dbb:	b8 f5 40 00 00       	mov    eax,0x40f5
   15dc0:	89 eb                	mov    ebx,ebp
   15dc2:	e8 c9 48 05 00       	call   play_wav
   15dc7:	e9 70 f8 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_99:
   15dcc:	b8 bf 01 00 00       	mov    eax,0x1bf
   15dd1:	e8 ca 43 01 00       	call   GetDlgFileString
   15dd6:	89 c2                	mov    edx,eax
   15dd8:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2366, src obj: 1, src ofs: 0x15dd9, dst obj: 3, dst ofs: 0x294c0
   15ddd:	e8 78 b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15de2:	85 c0                	test   eax,eax
   15de4:	74 52                	je     talk_to_MR_MOYNAHAN_branch_100
   15de6:	b8 c0 01 00 00       	mov    eax,0x1c0
   15deb:	e8 b0 43 01 00       	call   GetDlgFileString
   15df0:	89 c2                	mov    edx,eax
   15df2:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2379, src obj: 1, src ofs: 0x15df3, dst obj: 3, dst ofs: 0x294c0
   15df7:	e8 5e b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15dfc:	85 c0                	test   eax,eax
   15dfe:	74 38                	je     talk_to_MR_MOYNAHAN_branch_100
   15e00:	b8 c1 01 00 00       	mov    eax,0x1c1
   15e05:	e8 96 43 01 00       	call   GetDlgFileString
   15e0a:	89 c2                	mov    edx,eax
   15e0c:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2378, src obj: 1, src ofs: 0x15e0d, dst obj: 3, dst ofs: 0x294c0
   15e11:	e8 44 b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15e16:	85 c0                	test   eax,eax
   15e18:	74 1e                	je     talk_to_MR_MOYNAHAN_branch_100
   15e1a:	b8 c2 01 00 00       	mov    eax,0x1c2
   15e1f:	e8 7c 43 01 00       	call   GetDlgFileString
   15e24:	89 c2                	mov    edx,eax
   15e26:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2377, src obj: 1, src ofs: 0x15e27, dst obj: 3, dst ofs: 0x294c0
   15e2b:	e8 2a b6 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15e30:	85 c0                	test   eax,eax
   15e32:	0f 85 bb 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_103
talk_to_MR_MOYNAHAN_branch_100:
   15e38:	e8 83 2d 01 00       	call   get_day
   15e3d:	83 f8 05             	cmp    eax,0x5
   15e40:	0f 8c ad 00 00 00    	jl     talk_to_MR_MOYNAHAN_branch_103
   15e46:	a1 c0 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_1                          ; fixup: num: 2376, src obj: 1, src ofs: 0x15e47, dst obj: 3, dst ofs: 0x22ac0
   15e4b:	85 c0                	test   eax,eax
   15e4d:	0f 85 87 00 00 00    	jne    talk_to_MR_MOYNAHAN_branch_102
   15e53:	ba 88 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_164                          ; fixup: num: 2375, src obj: 1, src ofs: 0x15e54, dst obj: 3, dst ofs: 0x1f88
   15e58:	b8 fb 40 00 00       	mov    eax,0x40fb
   15e5d:	89 eb                	mov    ebx,ebp
   15e5f:	e8 2c 48 05 00       	call   play_wav
   15e64:	b8 c3 01 00 00       	mov    eax,0x1c3
   15e69:	e8 32 43 01 00       	call   GetDlgFileString
   15e6e:	e8 9d 50 05 00       	call   get_response
   15e73:	83 f8 01             	cmp    eax,0x1
   15e76:	75 43                	jne    talk_to_MR_MOYNAHAN_branch_101
   15e78:	bb 02 00 00 00       	mov    ebx,0x2
   15e7d:	ba 91 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_165                          ; fixup: num: 2374, src obj: 1, src ofs: 0x15e7e, dst obj: 3, dst ofs: 0x1f91
   15e82:	b8 08 41 00 00       	mov    eax,0x4108
   15e87:	e8 04 48 05 00       	call   play_wav
   15e8c:	ba 9a 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_166                          ; fixup: num: 2373, src obj: 1, src ofs: 0x15e8d, dst obj: 3, dst ofs: 0x1f9a
   15e91:	b8 9f 1f 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_167                          ; fixup: num: 2372, src obj: 1, src ofs: 0x15e92, dst obj: 3, dst ofs: 0x1f9f
   15e96:	89 eb                	mov    ebx,ebp
   15e98:	e8 73 d0 03 00       	call   set_object
   15e9d:	b8 a3 1f 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_168                          ; fixup: num: 2387, src obj: 1, src ofs: 0x15e9e, dst obj: 3, dst ofs: 0x1fa3
   15ea2:	ba 01 00 00 00       	mov    edx,0x1
   15ea7:	e8 04 6a 05 00       	call   add_inventory
   15eac:	b8 a8 1f 00 00       	mov    eax,@obj3:mr_moyna_cpp_variable_169                          ; fixup: num: 2386, src obj: 1, src ofs: 0x15ead, dst obj: 3, dst ofs: 0x1fa8
   15eb1:	e8 2a 69 05 00       	call   set_script_flag
   15eb6:	e9 81 f7 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_101:
   15ebb:	83 f8 02             	cmp    eax,0x2
   15ebe:	0f 85 78 f7 ff ff    	jne    talk_to_MR_MOYNAHAN_branch_61
   15ec4:	ba b6 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_170                          ; fixup: num: 2385, src obj: 1, src ofs: 0x15ec5, dst obj: 3, dst ofs: 0x1fb6
   15ec9:	89 c3                	mov    ebx,eax
   15ecb:	b8 0d 41 00 00       	mov    eax,0x410d
   15ed0:	e8 bb 47 05 00       	call   play_wav
   15ed5:	e9 62 f7 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_102:
   15eda:	bb 02 00 00 00       	mov    ebx,0x2
   15edf:	ba bf 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_171                          ; fixup: num: 2384, src obj: 1, src ofs: 0x15ee0, dst obj: 3, dst ofs: 0x1fbf
   15ee4:	b8 0d 41 00 00       	mov    eax,0x410d
   15ee9:	e8 a2 47 05 00       	call   play_wav
   15eee:	e9 49 f7 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_103:
   15ef3:	b8 c4 01 00 00       	mov    eax,0x1c4
   15ef8:	e8 a3 42 01 00       	call   GetDlgFileString
   15efd:	89 c2                	mov    edx,eax
   15eff:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 2383, src obj: 1, src ofs: 0x15f00, dst obj: 3, dst ofs: 0x294c0
   15f04:	e8 51 b5 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   15f09:	85 c0                	test   eax,eax
   15f0b:	0f 84 2b f7 ff ff    	je     talk_to_MR_MOYNAHAN_branch_61
   15f11:	ba c8 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_172                          ; fixup: num: 2382, src obj: 1, src ofs: 0x15f12, dst obj: 3, dst ofs: 0x1fc8
   15f16:	b8 39 3e 00 00       	mov    eax,0x3e39
   15f1b:	89 eb                	mov    ebx,ebp
   15f1d:	e8 6e 47 05 00       	call   play_wav
   15f22:	e9 15 f7 ff ff       	jmp    talk_to_MR_MOYNAHAN_branch_61
talk_to_MR_MOYNAHAN_branch_104:
   15f27:	bb 03 00 00 00       	mov    ebx,0x3
   15f2c:	ba d1 1f 00 00       	mov    edx,@obj3:mr_moyna_cpp_variable_173                          ; fixup: num: 2381, src obj: 1, src ofs: 0x15f2d, dst obj: 3, dst ofs: 0x1fd1
   15f31:	b8 32 3e 00 00       	mov    eax,0x3e32
   15f36:	e8 55 47 05 00       	call   play_wav
talk_to_MR_MOYNAHAN_branch_105:
   15f3b:	31 c0                	xor    eax,eax
   15f3d:	5d                   	pop    ebp
   15f3e:	5f                   	pop    edi
   15f3f:	5e                   	pop    esi
   15f40:	5a                   	pop    edx
   15f41:	59                   	pop    ecx
   15f42:	5b                   	pop    ebx
   15f43:	c3                   	ret    
talk_to_MR_MOYNAHAN_branch_106:
   15f44:	89 15 b8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN,edx                           ; fixup: num: 2380, src obj: 1, src ofs: 0x15f46, dst obj: 3, dst ofs: 0x22ab8
   15f4a:	a1 b8 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN                                     ; fixup: num: 2343, src obj: 1, src ofs: 0x15f4b, dst obj: 3, dst ofs: 0x22ab8
   15f4f:	c3                   	ret    

;-------------------------------------------------
;  Function 'MR_MOYNAHAN_FIRST_CONVERSATION'     -
;-------------------------------------------------
MR_MOYNAHAN_FIRST_CONVERSATION:
   15f50:	85 c0                	test   eax,eax
   15f52:	74 f0                	je     talk_to_MR_MOYNAHAN_branch_106
   15f54:	a1 b8 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN                                     ; fixup: num: 2342, src obj: 1, src ofs: 0x15f55, dst obj: 3, dst ofs: 0x22ab8
   15f59:	c3                   	ret    
MR_MOYNAHAN_FIRST_CONVERSATION_branch_1:
   15f5a:	89 15 c0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_1,edx                ; fixup: num: 2341, src obj: 1, src ofs: 0x15f5c, dst obj: 3, dst ofs: 0x22ac0
   15f60:	a1 c0 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_1                          ; fixup: num: 2405, src obj: 1, src ofs: 0x15f61, dst obj: 3, dst ofs: 0x22ac0
   15f65:	c3                   	ret    
   15f66:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   15f6c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'IF_ALREADY_GAVE_UP_GLUE'            -
;-------------------------------------------------
IF_ALREADY_GAVE_UP_GLUE:
   15f70:	85 c0                	test   eax,eax
   15f72:	74 e6                	je     MR_MOYNAHAN_FIRST_CONVERSATION_branch_1
   15f74:	a1 c0 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_1                          ; fixup: num: 2404, src obj: 1, src ofs: 0x15f75, dst obj: 3, dst ofs: 0x22ac0
   15f79:	c3                   	ret    
IF_ALREADY_GAVE_UP_GLUE_branch_1:
   15f7a:	89 15 c4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_2,edx                ; fixup: num: 2403, src obj: 1, src ofs: 0x15f7c, dst obj: 3, dst ofs: 0x22ac4
   15f80:	a1 c4 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_2                          ; fixup: num: 2402, src obj: 1, src ofs: 0x15f81, dst obj: 3, dst ofs: 0x22ac4
   15f85:	c3                   	ret    
   15f86:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   15f8c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'TALKED_ABOUT_BODY'                  -
;-------------------------------------------------
TALKED_ABOUT_BODY:
   15f90:	85 c0                	test   eax,eax
   15f92:	74 e6                	je     IF_ALREADY_GAVE_UP_GLUE_branch_1
   15f94:	a1 c4 2a 02 00       	mov    eax,ds:@obj3:MR_MOYNAHAN_variable_2                          ; fixup: num: 2401, src obj: 1, src ofs: 0x15f95, dst obj: 3, dst ofs: 0x22ac4
   15f99:	c3                   	ret    
   15f9a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'MR_MOYNAHAN_initialize'             -
;-------------------------------------------------
MR_MOYNAHAN_initialize:
   15fa0:	53                   	push   ebx
   15fa1:	52                   	push   edx
   15fa2:	ba 01 00 00 00       	mov    edx,0x1
   15fa7:	31 db                	xor    ebx,ebx
   15fa9:	89 15 b8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN,edx                           ; fixup: num: 2400, src obj: 1, src ofs: 0x15fab, dst obj: 3, dst ofs: 0x22ab8
   15faf:	89 1d c0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_1,ebx                ; fixup: num: 2399, src obj: 1, src ofs: 0x15fb1, dst obj: 3, dst ofs: 0x22ac0
   15fb5:	89 1d c4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_2,ebx                ; fixup: num: 2398, src obj: 1, src ofs: 0x15fb7, dst obj: 3, dst ofs: 0x22ac4
   15fbb:	89 1d c8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_3,ebx                ; fixup: num: 2397, src obj: 1, src ofs: 0x15fbd, dst obj: 3, dst ofs: 0x22ac8
   15fc1:	89 1d cc 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_4,ebx                ; fixup: num: 2396, src obj: 1, src ofs: 0x15fc3, dst obj: 3, dst ofs: 0x22acc
   15fc7:	89 1d d0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_5,ebx                ; fixup: num: 2395, src obj: 1, src ofs: 0x15fc9, dst obj: 3, dst ofs: 0x22ad0
   15fcd:	89 1d d4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_6,ebx                ; fixup: num: 2394, src obj: 1, src ofs: 0x15fcf, dst obj: 3, dst ofs: 0x22ad4
   15fd3:	89 1d d8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_7,ebx                ; fixup: num: 2393, src obj: 1, src ofs: 0x15fd5, dst obj: 3, dst ofs: 0x22ad8
   15fd9:	89 1d dc 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_8,ebx                ; fixup: num: 2392, src obj: 1, src ofs: 0x15fdb, dst obj: 3, dst ofs: 0x22adc
   15fdf:	89 1d e0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_9,ebx                ; fixup: num: 2391, src obj: 1, src ofs: 0x15fe1, dst obj: 3, dst ofs: 0x22ae0
   15fe5:	89 1d e4 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_10,ebx               ; fixup: num: 2390, src obj: 1, src ofs: 0x15fe7, dst obj: 3, dst ofs: 0x22ae4
   15feb:	89 1d e8 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_11,ebx               ; fixup: num: 2389, src obj: 1, src ofs: 0x15fed, dst obj: 3, dst ofs: 0x22ae8
   15ff1:	89 1d ec 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_12,ebx               ; fixup: num: 2388, src obj: 1, src ofs: 0x15ff3, dst obj: 3, dst ofs: 0x22aec
   15ff7:	89 1d f0 2a 02 00    	mov    DWORD PTR ds:@obj3:MR_MOYNAHAN_variable_13,ebx               ; fixup: num: 2344, src obj: 1, src ofs: 0x15ff9, dst obj: 3, dst ofs: 0x22af0
   15ffd:	5a                   	pop    edx
   15ffe:	5b                   	pop    ebx
   15fff:	c3                   	ret    

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 18 (D:\SOURCE\mr_moyna.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 18: D:\SOURCE\mr_moyna.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
mr_moyna_cpp_variable_1:
    1a1c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_2:
    1a1d:	49 46 5f 54 52 59 5f 54 4f 5f 54 41 4b 45 5f 54 48 45 5f 47 4c 55 45 00 	db     "IF_TRY_TO_TAKE_THE_GLUE",0x00
mr_moyna_cpp_variable_3:
    1a35:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_4:
    1a3e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1a3f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1a40:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_5:
    1a41:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_6:
    1a4a:	49 46 5f 53 41 57 5f 54 48 45 5f 53 4c 41 53 48 45 53 5f 4f 4e 5f 54 48 45 5f 42 4f 44 59 00 	db     "IF_SAW_THE_SLASHES_ON_THE_BODY",0x00
mr_moyna_cpp_variable_7:
    1a69:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1a6a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1a6b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_8:
    1a6c:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_9:
    1a75:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1a76:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1a77:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_10:
    1a78:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_11:
    1a81:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1a82:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1a83:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_12:
    1a84:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_13:
    1a8d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1a8e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1a8f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_14:
    1a90:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_15:
    1a99:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
mr_moyna_cpp_variable_16:
    1ab1:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_17:
    1aba:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_moyna_cpp_variable_18:
    1ac7:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_moyna_cpp_variable_19:
    1ad8:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_20:
    1ae1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ae2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ae3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_21:
    1ae4:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_22:
    1aed:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1aee:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1aef:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_23:
    1af0:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_24:
    1af9:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_25:
    1b02:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1b03:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1b04:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_26:
    1b05:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_27:
    1b0e:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_28:
    1b17:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1b18:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1b19:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_29:
    1b1a:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_30:
    1b23:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_31:
    1b2c:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_32:
    1b35:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_33:
    1b3e:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_moyna_cpp_variable_34:
    1b4b:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
mr_moyna_cpp_variable_35:
    1b58:	52 61 48 00          	db     "RaH",0x00
mr_moyna_cpp_variable_36:
    1b5c:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_moyna_cpp_variable_37:
    1b6d:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
mr_moyna_cpp_variable_38:
    1b7e:	52 61 48 00          	db     "RaH",0x00
mr_moyna_cpp_variable_39:
    1b82:	47 4c 55 45 00       	db     "GLUE",0x00
mr_moyna_cpp_variable_40:
    1b87:	52 61 48 00          	db     "RaH",0x00
mr_moyna_cpp_variable_41:
    1b8b:	47 4c 55 45 00       	db     "GLUE",0x00
mr_moyna_cpp_variable_42:
    1b90:	4a 55 53 54 5f 47 4f 54 5f 47 4c 55 45 00 	db     "JUST_GOT_GLUE",0x00
mr_moyna_cpp_variable_43:
    1b9e:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_44:
    1ba7:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_moyna_cpp_variable_45:
    1bae:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_moyna_cpp_variable_46:
    1bb6:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_moyna_cpp_variable_47:
    1bc8:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_48:
    1bd1:	48 54 4c 2d 52 54 00 	db     "HTL-RT",0x00
mr_moyna_cpp_variable_49:
    1bd8:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_50:
    1be1:	4d 4f 59 4e 41 48 41 4e 5f 4d 42 4c 4d 00 	db     "MOYNAHAN_MBLM",0x00
mr_moyna_cpp_variable_51:
    1bef:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1bf0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1bf1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_52:
    1bf2:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_53:
    1bfb:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1bfc:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1bfd:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_54:
    1bfe:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_55:
    1c07:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_56:
    1c10:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1c11:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1c12:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_57:
    1c13:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_58:
    1c1c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1c1d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1c1e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_59:
    1c1f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_60:
    1c28:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1c29:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1c2a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_61:
    1c2b:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_62:
    1c34:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1c35:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1c36:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_63:
    1c37:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_64:
    1c40:	4e 4f 54 45 00       	db     "NOTE",0x00
mr_moyna_cpp_variable_65:
    1c45:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
mr_moyna_cpp_variable_66:
    1c54:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
mr_moyna_cpp_variable_67:
    1c5e:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
mr_moyna_cpp_variable_68:
    1c72:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_69:
    1c7b:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_70:
    1c84:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_71:
    1c8d:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_72:
    1c96:	57 45 44 5f 4d 41 54 43 48 45 53 00 	db     "WED_MATCHES",0x00
mr_moyna_cpp_variable_73:
    1ca2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ca3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ca4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_74:
    1ca5:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_75:
    1cae:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_moyna_cpp_variable_76:
    1cc3:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_77:
    1ccc:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_78:
    1cd5:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_79:
    1cde:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1cdf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ce0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_80:
    1ce1:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_81:
    1cea:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ceb:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1cec:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_82:
    1ced:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_83:
    1cf6:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_84:
    1cff:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1d00:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1d01:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_85:
    1d02:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_86:
    1d0b:	4d 42 4c 4d 00       	db     "MBLM",0x00
mr_moyna_cpp_variable_87:
    1d10:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_88:
    1d19:	49 46 5f 53 41 57 5f 54 48 45 5f 53 4c 41 53 48 45 53 5f 4f 4e 5f 54 48 45 5f 42 4f 44 59 00 	db     "IF_SAW_THE_SLASHES_ON_THE_BODY",0x00
mr_moyna_cpp_variable_89:
    1d38:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_90:
    1d41:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_91:
    1d4a:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_92:
    1d53:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_93:
    1d5c:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
mr_moyna_cpp_variable_94:
    1d6e:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_95:
    1d77:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_96:
    1d80:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
mr_moyna_cpp_variable_97:
    1d87:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
mr_moyna_cpp_variable_98:
    1d8f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_99:
    1d98:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_100:
    1da1:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_101:
    1daa:	53 54 45 50 48 5f 4d 49 44 47 41 4d 45 5f 50 4c 41 59 45 44 00 	db     "STEPH_MIDGAME_PLAYED",0x00
mr_moyna_cpp_variable_102:
    1dbf:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_103:
    1dc8:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_104:
    1dd1:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1dd2:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1dd3:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_105:
    1dd4:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_106:
    1ddd:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1dde:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ddf:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_107:
    1de0:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_108:
    1de9:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
mr_moyna_cpp_variable_109:
    1dfb:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_110:
    1e04:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
mr_moyna_cpp_variable_111:
    1e13:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_112:
    1e1c:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_113:
    1e25:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_114:
    1e2e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1e2f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1e30:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_115:
    1e31:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_116:
    1e3a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1e3b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1e3c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_117:
    1e3d:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_118:
    1e46:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1e47:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1e48:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_119:
    1e49:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_120:
    1e52:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1e53:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1e54:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_121:
    1e55:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_122:
    1e5e:	42 55 54 43 48 45 52 00 	db     "BUTCHER",0x00
mr_moyna_cpp_variable_123:
    1e66:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_124:
    1e6f:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
mr_moyna_cpp_variable_125:
    1e75:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_126:
    1e7e:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
mr_moyna_cpp_variable_127:
    1e8f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_128:
    1e98:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_129:
    1e99:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_130:
    1ea2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ea3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ea4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_131:
    1ea5:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_132:
    1eae:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_133:
    1eb7:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1eb8:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1eb9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_134:
    1eba:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_135:
    1ec3:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ec4:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ec5:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_136:
    1ec6:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_137:
    1ecf:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1ed0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1ed1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_138:
    1ed2:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_139:
    1edb:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_140:
    1ee4:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_141:
    1eed:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_142:
    1ef6:	4d 42 4c 4d 00       	db     "MBLM",0x00
mr_moyna_cpp_variable_143:
    1efb:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_144:
    1f04:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_145:
    1f0d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f0e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f0f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_146:
    1f10:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_147:
    1f19:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_148:
    1f22:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f23:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f24:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_149:
    1f25:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_150:
    1f2e:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f2f:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f30:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_151:
    1f31:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_152:
    1f3a:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_153:
    1f43:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_154:
    1f4c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f4d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f4e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_155:
    1f4f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_156:
    1f58:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f59:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f5a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_157:
    1f5b:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_158:
    1f64:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_159:
    1f65:	4d 42 4c 4d 00       	db     "MBLM",0x00
mr_moyna_cpp_variable_160:
    1f6a:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_161:
    1f73:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    1f74:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    1f75:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
mr_moyna_cpp_variable_162:
    1f76:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_163:
    1f7f:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_164:
    1f88:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_165:
    1f91:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_166:
    1f9a:	47 4c 55 45 00       	db     "GLUE",0x00
mr_moyna_cpp_variable_167:
    1f9f:	52 61 48 00          	db     "RaH",0x00
mr_moyna_cpp_variable_168:
    1fa3:	47 4c 55 45 00       	db     "GLUE",0x00
mr_moyna_cpp_variable_169:
    1fa8:	4a 55 53 54 5f 47 4f 54 5f 47 4c 55 45 00 	db     "JUST_GOT_GLUE",0x00
mr_moyna_cpp_variable_170:
    1fb6:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_171:
    1fbf:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_172:
    1fc8:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
mr_moyna_cpp_variable_173:
    1fd1:	4d 4f 59 4e 41 48 41 4e 00 	db     "MOYNAHAN",0x00
    1fda:	00 00                	db     2 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 18 (D:\SOURCE\mr_moyna.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 18: D:\SOURCE\mr_moyna.cpp                                           -
;                                                                              -
;-------------------------------------------------------------------------------
MR_MOYNAHAN:                                                                                        ; access size: DWORD
   22ab8:	00 00 00 00 00 00 .. 	dd     2 dup(0x00000000)
MR_MOYNAHAN_variable_1:                                                                             ; access size: DWORD
   22ac0:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_2:                                                                             ; access size: DWORD
   22ac4:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_3:                                                                             ; access size: DWORD
   22ac8:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_4:                                                                             ; access size: DWORD
   22acc:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_5:                                                                             ; access size: DWORD
   22ad0:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_6:                                                                             ; access size: DWORD
   22ad4:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_7:                                                                             ; access size: DWORD
   22ad8:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_8:                                                                             ; access size: DWORD
   22adc:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_9:                                                                             ; access size: DWORD
   22ae0:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_10:                                                                            ; access size: DWORD
   22ae4:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_11:                                                                            ; access size: DWORD
   22ae8:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_12:                                                                            ; access size: DWORD
   22aec:	00 00 00 00          	dd     0x00000000
MR_MOYNAHAN_variable_13:                                                                            ; access size: DWORD
   22af0:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 18 (D:\SOURCE\mr_moyna.cpp)                                   -
;                                                                              -
;-------------------------------------------------------------------------------