;-------------------------------------------------------------------------------
;                                                                              -
;  Module 21: D:\SOURCE\jimmy.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_JIMMY_JAMES'                -
;-------------------------------------------------
talk_to_JIMMY_JAMES:
   18880:	53                   	push   ebx
   18881:	51                   	push   ecx
   18882:	52                   	push   edx
   18883:	56                   	push   esi
   18884:	57                   	push   edi
   18885:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3114, src obj: 1, src ofs: 0x18887, dst obj: 3, dst ofs: 0x294bc
   1888b:	85 d2                	test   edx,edx
   1888d:	0f 84 52 03 00 00    	je     talk_to_JIMMY_JAMES_branch_17
   18893:	89 d0                	mov    eax,edx
   18895:	ba c8 2d 00 00       	mov    edx,@obj3:jimmy_cpp_variable_1                               ; fixup: num: 3113, src obj: 1, src ofs: 0x18896, dst obj: 3, dst ofs: 0x2dc8
   1889a:	e8 91 db 05 00       	call   strcmp_
   1889f:	85 c0                	test   eax,eax
   188a1:	0f 85 d5 00 00 00    	jne    talk_to_JIMMY_JAMES_branch_4
   188a7:	b8 d2 2d 00 00       	mov    eax,@obj3:jimmy_cpp_variable_2                               ; fixup: num: 3112, src obj: 1, src ofs: 0x188a8, dst obj: 3, dst ofs: 0x2dd2
   188ac:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 3111, src obj: 1, src ofs: 0x188ae, dst obj: 3, dst ofs: 0x294bc
   188b2:	31 db                	xor    ebx,ebx
   188b4:	e8 57 a6 03 00       	call   set_object
   188b9:	ba 01 00 00 00       	mov    edx,0x1
   188be:	b8 d6 2d 00 00       	mov    eax,@obj3:jimmy_cpp_variable_3                               ; fixup: num: 3110, src obj: 1, src ofs: 0x188bf, dst obj: 3, dst ofs: 0x2dd6
   188c3:	e8 18 3f 05 00       	call   set_script_flag
   188c8:	b8 e8 2d 00 00       	mov    eax,@obj3:jimmy_cpp_variable_4                               ; fixup: num: 3109, src obj: 1, src ofs: 0x188c9, dst obj: 3, dst ofs: 0x2de8
   188cd:	ba 01 00 00 00       	mov    edx,0x1
   188d2:	e8 a9 42 05 00       	call   ExecuteCommand
   188d7:	b8 f8 2d 00 00       	mov    eax,@obj3:jimmy_cpp_variable_5                               ; fixup: num: 3108, src obj: 1, src ofs: 0x188d8, dst obj: 3, dst ofs: 0x2df8
   188dc:	e8 5f 43 05 00       	call   reset_item_to_initial_settings
   188e1:	a1 24 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES                                     ; fixup: num: 3107, src obj: 1, src ofs: 0x188e2, dst obj: 3, dst ofs: 0x22c24
   188e6:	85 c0                	test   eax,eax
   188e8:	75 2d                	jne    talk_to_JIMMY_JAMES_branch_1
   188ea:	be 01 00 00 00       	mov    esi,0x1
   188ef:	ba 02 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_6                               ; fixup: num: 3124, src obj: 1, src ofs: 0x188f0, dst obj: 3, dst ofs: 0x2e02
   188f4:	b8 4c 4a 00 00       	mov    eax,0x4a4c
   188f9:	89 f3                	mov    ebx,esi
   188fb:	89 35 24 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES,esi                           ; fixup: num: 3123, src obj: 1, src ofs: 0x188fd, dst obj: 3, dst ofs: 0x22c24
   18901:	e8 8a 1d 05 00       	call   play_wav
   18906:	ba 08 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_7                               ; fixup: num: 3122, src obj: 1, src ofs: 0x18907, dst obj: 3, dst ofs: 0x2e08
   1890b:	b8 52 4a 00 00       	mov    eax,0x4a52
   18910:	31 db                	xor    ebx,ebx
   18912:	e8 79 1d 05 00       	call   play_wav
talk_to_JIMMY_JAMES_branch_1:
   18917:	e8 bb db 05 00       	call   rand_
   1891c:	89 c2                	mov    edx,eax
   1891e:	bb 02 00 00 00       	mov    ebx,0x2
   18923:	c1 fa 1f             	sar    edx,0x1f
   18926:	f7 fb                	idiv   ebx
   18928:	85 d2                	test   edx,edx
   1892a:	74 11                	je     talk_to_JIMMY_JAMES_branch_2
   1892c:	bb 01 00 00 00       	mov    ebx,0x1
   18931:	ba 0b 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_8                               ; fixup: num: 3121, src obj: 1, src ofs: 0x18932, dst obj: 3, dst ofs: 0x2e0b
   18936:	b8 4b 4a 00 00       	mov    eax,0x4a4b
   1893b:	eb 0c                	jmp    talk_to_JIMMY_JAMES_branch_3
talk_to_JIMMY_JAMES_branch_2:
   1893d:	ba 11 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_9                               ; fixup: num: 3120, src obj: 1, src ofs: 0x1893e, dst obj: 3, dst ofs: 0x2e11
   18942:	b8 cc 4a 00 00       	mov    eax,0x4acc
   18947:	31 db                	xor    ebx,ebx
talk_to_JIMMY_JAMES_branch_3:
   18949:	e8 42 1d 05 00       	call   play_wav
   1894e:	ba 01 00 00 00       	mov    edx,0x1
   18953:	31 ff                	xor    edi,edi
   18955:	b8 17 2e 00 00       	mov    eax,@obj3:jimmy_cpp_variable_10                              ; fixup: num: 3119, src obj: 1, src ofs: 0x18956, dst obj: 3, dst ofs: 0x2e17
   1895a:	89 3d 2c 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_2,edi                ; fixup: num: 3118, src obj: 1, src ofs: 0x1895c, dst obj: 3, dst ofs: 0x22c2c
   18960:	e8 7b 3e 05 00       	call   set_script_flag
   18965:	ba 01 00 00 00       	mov    edx,0x1
   1896a:	b8 23 2e 00 00       	mov    eax,@obj3:jimmy_cpp_variable_11                              ; fixup: num: 3117, src obj: 1, src ofs: 0x1896b, dst obj: 3, dst ofs: 0x2e23
   1896f:	e8 6c 3e 05 00       	call   set_script_flag
   18974:	31 c0                	xor    eax,eax
   18976:	5f                   	pop    edi
   18977:	5e                   	pop    esi
   18978:	5a                   	pop    edx
   18979:	59                   	pop    ecx
   1897a:	5b                   	pop    ebx
   1897b:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_4:
   1897c:	ba 35 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_12                              ; fixup: num: 3116, src obj: 1, src ofs: 0x1897d, dst obj: 3, dst ofs: 0x2e35
   18981:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3115, src obj: 1, src ofs: 0x18982, dst obj: 3, dst ofs: 0x294bc
   18986:	e8 a5 da 05 00       	call   strcmp_
   1898b:	85 c0                	test   eax,eax
   1898d:	75 1e                	jne    talk_to_JIMMY_JAMES_branch_5
   1898f:	ba 01 00 00 00       	mov    edx,0x1
   18994:	bb 01 00 00 00       	mov    ebx,0x1
   18999:	e8 d2 f9 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1899e:	ba 4d 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_13                              ; fixup: num: 3005, src obj: 1, src ofs: 0x1899f, dst obj: 3, dst ofs: 0x2e4d
   189a3:	b8 f8 4a 00 00       	mov    eax,0x4af8
   189a8:	e9 2b 02 00 00       	jmp    talk_to_JIMMY_JAMES_branch_16
talk_to_JIMMY_JAMES_branch_5:
   189ad:	ba 53 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_14                              ; fixup: num: 3004, src obj: 1, src ofs: 0x189ae, dst obj: 3, dst ofs: 0x2e53
   189b2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3003, src obj: 1, src ofs: 0x189b3, dst obj: 3, dst ofs: 0x294bc
   189b7:	e8 74 da 05 00       	call   strcmp_
   189bc:	85 c0                	test   eax,eax
   189be:	74 13                	je     talk_to_JIMMY_JAMES_branch_6
   189c0:	ba 5a 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_15                              ; fixup: num: 3002, src obj: 1, src ofs: 0x189c1, dst obj: 3, dst ofs: 0x2e5a
   189c5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3001, src obj: 1, src ofs: 0x189c6, dst obj: 3, dst ofs: 0x294bc
   189ca:	e8 61 da 05 00       	call   strcmp_
   189cf:	85 c0                	test   eax,eax
   189d1:	75 0e                	jne    talk_to_JIMMY_JAMES_branch_7
talk_to_JIMMY_JAMES_branch_6:
   189d3:	b8 62 2e 00 00       	mov    eax,@obj3:jimmy_cpp_variable_16                              ; fixup: num: 3000, src obj: 1, src ofs: 0x189d4, dst obj: 3, dst ofs: 0x2e62
   189d8:	e8 b3 3d 05 00       	call   check_script_flag
   189dd:	84 c0                	test   al,al
   189df:	75 2a                	jne    talk_to_JIMMY_JAMES_branch_8
talk_to_JIMMY_JAMES_branch_7:
   189e1:	ba 74 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_17                              ; fixup: num: 2999, src obj: 1, src ofs: 0x189e2, dst obj: 3, dst ofs: 0x2e74
   189e6:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2998, src obj: 1, src ofs: 0x189e7, dst obj: 3, dst ofs: 0x294bc
   189eb:	e8 40 da 05 00       	call   strcmp_
   189f0:	85 c0                	test   eax,eax
   189f2:	74 17                	je     talk_to_JIMMY_JAMES_branch_8
   189f4:	ba 81 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_18                              ; fixup: num: 2997, src obj: 1, src ofs: 0x189f5, dst obj: 3, dst ofs: 0x2e81
   189f9:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2996, src obj: 1, src ofs: 0x189fa, dst obj: 3, dst ofs: 0x294bc
   189fe:	e8 2d da 05 00       	call   strcmp_
   18a03:	85 c0                	test   eax,eax
   18a05:	0f 85 bf 00 00 00    	jne    talk_to_JIMMY_JAMES_branch_12
talk_to_JIMMY_JAMES_branch_8:
   18a0b:	ba 92 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_19                              ; fixup: num: 2995, src obj: 1, src ofs: 0x18a0c, dst obj: 3, dst ofs: 0x2e92
   18a10:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 2994, src obj: 1, src ofs: 0x18a11, dst obj: 3, dst ofs: 0x294bc
   18a15:	e8 16 da 05 00       	call   strcmp_
   18a1a:	85 c0                	test   eax,eax
   18a1c:	74 13                	je     talk_to_JIMMY_JAMES_branch_9
   18a1e:	ba 9f 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_20                              ; fixup: num: 2993, src obj: 1, src ofs: 0x18a1f, dst obj: 3, dst ofs: 0x2e9f
   18a23:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3125, src obj: 1, src ofs: 0x18a24, dst obj: 3, dst ofs: 0x294bc
   18a28:	e8 03 da 05 00       	call   strcmp_
   18a2d:	85 c0                	test   eax,eax
   18a2f:	75 0e                	jne    talk_to_JIMMY_JAMES_branch_10
talk_to_JIMMY_JAMES_branch_9:
   18a31:	ba 01 00 00 00       	mov    edx,0x1
   18a36:	31 c0                	xor    eax,eax
   18a38:	e8 23 f9 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   18a3d:	eb 0c                	jmp    talk_to_JIMMY_JAMES_branch_11
talk_to_JIMMY_JAMES_branch_10:
   18a3f:	ba 01 00 00 00       	mov    edx,0x1
   18a44:	31 c0                	xor    eax,eax
   18a46:	e8 05 f9 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
talk_to_JIMMY_JAMES_branch_11:
   18a4b:	ba b0 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_21                              ; fixup: num: 3016, src obj: 1, src ofs: 0x18a4c, dst obj: 3, dst ofs: 0x2eb0
   18a50:	b8 00 4b 00 00       	mov    eax,0x4b00
   18a55:	31 db                	xor    ebx,ebx
   18a57:	e8 34 1c 05 00       	call   play_wav
   18a5c:	ba b6 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_22                              ; fixup: num: 3015, src obj: 1, src ofs: 0x18a5d, dst obj: 3, dst ofs: 0x2eb6
   18a61:	b8 04 4b 00 00       	mov    eax,0x4b04
   18a66:	31 db                	xor    ebx,ebx
   18a68:	e8 23 1c 05 00       	call   play_wav
   18a6d:	ba b9 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_23                              ; fixup: num: 3014, src obj: 1, src ofs: 0x18a6e, dst obj: 3, dst ofs: 0x2eb9
   18a72:	b8 08 4b 00 00       	mov    eax,0x4b08
   18a77:	31 db                	xor    ebx,ebx
   18a79:	e8 12 1c 05 00       	call   play_wav
   18a7e:	ba bf 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_24                              ; fixup: num: 3013, src obj: 1, src ofs: 0x18a7f, dst obj: 3, dst ofs: 0x2ebf
   18a83:	b8 0c 4b 00 00       	mov    eax,0x4b0c
   18a88:	31 db                	xor    ebx,ebx
   18a8a:	e8 01 1c 05 00       	call   play_wav
   18a8f:	ba c2 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_25                              ; fixup: num: 3012, src obj: 1, src ofs: 0x18a90, dst obj: 3, dst ofs: 0x2ec2
   18a94:	b8 10 4b 00 00       	mov    eax,0x4b10
   18a99:	31 db                	xor    ebx,ebx
   18a9b:	e8 f0 1b 05 00       	call   play_wav
   18aa0:	ba c8 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_26                              ; fixup: num: 3011, src obj: 1, src ofs: 0x18aa1, dst obj: 3, dst ofs: 0x2ec8
   18aa5:	b8 15 4b 00 00       	mov    eax,0x4b15
   18aaa:	31 db                	xor    ebx,ebx
   18aac:	e8 df 1b 05 00       	call   play_wav
   18ab1:	ba cb 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_27                              ; fixup: num: 3010, src obj: 1, src ofs: 0x18ab2, dst obj: 3, dst ofs: 0x2ecb
   18ab6:	b8 19 4b 00 00       	mov    eax,0x4b19
   18abb:	31 db                	xor    ebx,ebx
   18abd:	e8 ce 1b 05 00       	call   play_wav
   18ac2:	31 c0                	xor    eax,eax
   18ac4:	5f                   	pop    edi
   18ac5:	5e                   	pop    esi
   18ac6:	5a                   	pop    edx
   18ac7:	59                   	pop    ecx
   18ac8:	5b                   	pop    ebx
   18ac9:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_12:
   18aca:	ba d1 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_28                              ; fixup: num: 3009, src obj: 1, src ofs: 0x18acb, dst obj: 3, dst ofs: 0x2ed1
   18acf:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3008, src obj: 1, src ofs: 0x18ad0, dst obj: 3, dst ofs: 0x294bc
   18ad4:	e8 57 d9 05 00       	call   strcmp_
   18ad9:	85 c0                	test   eax,eax
   18adb:	74 39                	je     talk_to_JIMMY_JAMES_branch_13
   18add:	ba d6 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_29                              ; fixup: num: 3007, src obj: 1, src ofs: 0x18ade, dst obj: 3, dst ofs: 0x2ed6
   18ae2:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3006, src obj: 1, src ofs: 0x18ae3, dst obj: 3, dst ofs: 0x294bc
   18ae7:	e8 44 d9 05 00       	call   strcmp_
   18aec:	85 c0                	test   eax,eax
   18aee:	74 26                	je     talk_to_JIMMY_JAMES_branch_13
   18af0:	ba e5 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_30                              ; fixup: num: 3028, src obj: 1, src ofs: 0x18af1, dst obj: 3, dst ofs: 0x2ee5
   18af5:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3027, src obj: 1, src ofs: 0x18af6, dst obj: 3, dst ofs: 0x294bc
   18afa:	e8 31 d9 05 00       	call   strcmp_
   18aff:	85 c0                	test   eax,eax
   18b01:	74 13                	je     talk_to_JIMMY_JAMES_branch_13
   18b03:	ba ef 2e 00 00       	mov    edx,@obj3:jimmy_cpp_variable_31                              ; fixup: num: 3026, src obj: 1, src ofs: 0x18b04, dst obj: 3, dst ofs: 0x2eef
   18b08:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3025, src obj: 1, src ofs: 0x18b09, dst obj: 3, dst ofs: 0x294bc
   18b0d:	e8 1e d9 05 00       	call   strcmp_
   18b12:	85 c0                	test   eax,eax
   18b14:	75 6c                	jne    talk_to_JIMMY_JAMES_branch_14
talk_to_JIMMY_JAMES_branch_13:
   18b16:	ba 01 00 00 00       	mov    edx,0x1
   18b1b:	31 c0                	xor    eax,eax
   18b1d:	e8 0e f8 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   18b22:	31 db                	xor    ebx,ebx
   18b24:	ba 03 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_32                              ; fixup: num: 3024, src obj: 1, src ofs: 0x18b25, dst obj: 3, dst ofs: 0x2f03
   18b29:	b8 21 4b 00 00       	mov    eax,0x4b21
   18b2e:	e8 5d 1b 05 00       	call   play_wav
   18b33:	ba 09 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_33                              ; fixup: num: 3023, src obj: 1, src ofs: 0x18b34, dst obj: 3, dst ofs: 0x2f09
   18b38:	b8 25 4b 00 00       	mov    eax,0x4b25
   18b3d:	31 db                	xor    ebx,ebx
   18b3f:	e8 4c 1b 05 00       	call   play_wav
   18b44:	ba 0c 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_34                              ; fixup: num: 3022, src obj: 1, src ofs: 0x18b45, dst obj: 3, dst ofs: 0x2f0c
   18b49:	b8 29 4b 00 00       	mov    eax,0x4b29
   18b4e:	31 db                	xor    ebx,ebx
   18b50:	e8 3b 1b 05 00       	call   play_wav
   18b55:	ba 12 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_35                              ; fixup: num: 3021, src obj: 1, src ofs: 0x18b56, dst obj: 3, dst ofs: 0x2f12
   18b5a:	b8 2d 4b 00 00       	mov    eax,0x4b2d
   18b5f:	31 db                	xor    ebx,ebx
   18b61:	e8 2a 1b 05 00       	call   play_wav
   18b66:	bb 01 00 00 00       	mov    ebx,0x1
   18b6b:	ba 15 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_36                              ; fixup: num: 3020, src obj: 1, src ofs: 0x18b6c, dst obj: 3, dst ofs: 0x2f15
   18b70:	b8 31 4b 00 00       	mov    eax,0x4b31
   18b75:	e8 16 1b 05 00       	call   play_wav
   18b7a:	31 c0                	xor    eax,eax
   18b7c:	5f                   	pop    edi
   18b7d:	5e                   	pop    esi
   18b7e:	5a                   	pop    edx
   18b7f:	59                   	pop    ecx
   18b80:	5b                   	pop    ebx
   18b81:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_14:
   18b82:	ba 1b 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_37                              ; fixup: num: 3019, src obj: 1, src ofs: 0x18b83, dst obj: 3, dst ofs: 0x2f1b
   18b87:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 3018, src obj: 1, src ofs: 0x18b88, dst obj: 3, dst ofs: 0x294bc
   18b8c:	e8 9f d8 05 00       	call   strcmp_
   18b91:	85 c0                	test   eax,eax
   18b93:	75 37                	jne    talk_to_JIMMY_JAMES_branch_15
   18b95:	bb 01 00 00 00       	mov    ebx,0x1
   18b9a:	ba 24 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_38                              ; fixup: num: 3017, src obj: 1, src ofs: 0x18b9b, dst obj: 3, dst ofs: 0x2f24
   18b9f:	b8 9e 4a 00 00       	mov    eax,0x4a9e
   18ba4:	e8 e7 1a 05 00       	call   play_wav
   18ba9:	ba 2a 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_39                              ; fixup: num: 3040, src obj: 1, src ofs: 0x18baa, dst obj: 3, dst ofs: 0x2f2a
   18bae:	b8 33 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_40                              ; fixup: num: 3039, src obj: 1, src ofs: 0x18baf, dst obj: 3, dst ofs: 0x2f33
   18bb3:	31 db                	xor    ebx,ebx
   18bb5:	e8 56 a3 03 00       	call   set_object
   18bba:	b8 37 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_41                              ; fixup: num: 3038, src obj: 1, src ofs: 0x18bbb, dst obj: 3, dst ofs: 0x2f37
   18bbf:	e8 ec 3c 05 00       	call   add_inventory
   18bc4:	31 c0                	xor    eax,eax
   18bc6:	5f                   	pop    edi
   18bc7:	5e                   	pop    esi
   18bc8:	5a                   	pop    edx
   18bc9:	59                   	pop    ecx
   18bca:	5b                   	pop    ebx
   18bcb:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_15:
   18bcc:	ba 40 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_42                              ; fixup: num: 3037, src obj: 1, src ofs: 0x18bcd, dst obj: 3, dst ofs: 0x2f40
   18bd1:	b8 f2 4a 00 00       	mov    eax,0x4af2
   18bd6:	31 db                	xor    ebx,ebx
talk_to_JIMMY_JAMES_branch_16:
   18bd8:	e8 b3 1a 05 00       	call   play_wav
   18bdd:	31 c0                	xor    eax,eax
   18bdf:	5f                   	pop    edi
   18be0:	5e                   	pop    esi
   18be1:	5a                   	pop    edx
   18be2:	59                   	pop    ecx
   18be3:	5b                   	pop    ebx
   18be4:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_17:
   18be5:	a1 2c 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES_variable_2                          ; fixup: num: 3036, src obj: 1, src ofs: 0x18be6, dst obj: 3, dst ofs: 0x22c2c
   18bea:	85 c0                	test   eax,eax
   18bec:	0f 84 2c 02 00 00    	je     talk_to_JIMMY_JAMES_branch_27
   18bf2:	a1 24 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES                                     ; fixup: num: 3035, src obj: 1, src ofs: 0x18bf3, dst obj: 3, dst ofs: 0x22c24
   18bf7:	89 15 2c 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_2,edx                ; fixup: num: 3034, src obj: 1, src ofs: 0x18bf9, dst obj: 3, dst ofs: 0x22c2c
   18bfd:	85 c0                	test   eax,eax
   18bff:	75 30                	jne    talk_to_JIMMY_JAMES_branch_18
   18c01:	bb 01 00 00 00       	mov    ebx,0x1
   18c06:	ba 46 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_43                              ; fixup: num: 3033, src obj: 1, src ofs: 0x18c07, dst obj: 3, dst ofs: 0x2f46
   18c0b:	b8 4c 4a 00 00       	mov    eax,0x4a4c
   18c10:	e8 7b 1a 05 00       	call   play_wav
   18c15:	ba 4c 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_44                              ; fixup: num: 3032, src obj: 1, src ofs: 0x18c16, dst obj: 3, dst ofs: 0x2f4c
   18c1a:	b8 52 4a 00 00       	mov    eax,0x4a52
   18c1f:	31 db                	xor    ebx,ebx
   18c21:	b9 01 00 00 00       	mov    ecx,0x1
   18c26:	e8 65 1a 05 00       	call   play_wav
   18c2b:	89 0d 24 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES,ecx                           ; fixup: num: 3031, src obj: 1, src ofs: 0x18c2d, dst obj: 3, dst ofs: 0x22c24
talk_to_JIMMY_JAMES_branch_18:
   18c31:	ba 4f 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_45                              ; fixup: num: 3030, src obj: 1, src ofs: 0x18c32, dst obj: 3, dst ofs: 0x2f4f
   18c36:	b8 58 4a 00 00       	mov    eax,0x4a58
   18c3b:	31 db                	xor    ebx,ebx
   18c3d:	e8 4e 1a 05 00       	call   play_wav
   18c42:	ba 01 00 00 00       	mov    edx,0x1
   18c47:	b8 55 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_46                              ; fixup: num: 3029, src obj: 1, src ofs: 0x18c48, dst obj: 3, dst ofs: 0x2f55
   18c4c:	e8 8f 3b 05 00       	call   set_script_flag
   18c51:	ba 01 00 00 00       	mov    edx,0x1
   18c56:	b8 61 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_47                              ; fixup: num: 3048, src obj: 1, src ofs: 0x18c57, dst obj: 3, dst ofs: 0x2f61
   18c5b:	e8 80 3b 05 00       	call   set_script_flag
   18c60:	b8 f5 00 00 00       	mov    eax,0xf5
   18c65:	e8 36 15 01 00       	call   GetDlgFileString
   18c6a:	e8 a1 22 05 00       	call   get_response
   18c6f:	83 f8 01             	cmp    eax,0x1
   18c72:	75 11                	jne    talk_to_JIMMY_JAMES_branch_19
   18c74:	bb 02 00 00 00       	mov    ebx,0x2
   18c79:	ba 73 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_48                              ; fixup: num: 3047, src obj: 1, src ofs: 0x18c7a, dst obj: 3, dst ofs: 0x2f73
   18c7e:	b8 63 4a 00 00       	mov    eax,0x4a63
   18c83:	eb 11                	jmp    talk_to_JIMMY_JAMES_branch_20
talk_to_JIMMY_JAMES_branch_19:
   18c85:	83 f8 02             	cmp    eax,0x2
   18c88:	75 11                	jne    talk_to_JIMMY_JAMES_branch_21
   18c8a:	ba 79 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_49                              ; fixup: num: 3046, src obj: 1, src ofs: 0x18c8b, dst obj: 3, dst ofs: 0x2f79
   18c8f:	89 c3                	mov    ebx,eax
   18c91:	b8 67 4a 00 00       	mov    eax,0x4a67
talk_to_JIMMY_JAMES_branch_20:
   18c96:	e8 f5 19 05 00       	call   play_wav
talk_to_JIMMY_JAMES_branch_21:
   18c9b:	ba 7f 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_50                              ; fixup: num: 3045, src obj: 1, src ofs: 0x18c9c, dst obj: 3, dst ofs: 0x2f7f
   18ca0:	b8 6b 4a 00 00       	mov    eax,0x4a6b
   18ca5:	31 db                	xor    ebx,ebx
   18ca7:	e8 e4 19 05 00       	call   play_wav
   18cac:	ba 85 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_51                              ; fixup: num: 3044, src obj: 1, src ofs: 0x18cad, dst obj: 3, dst ofs: 0x2f85
   18cb1:	b8 70 4a 00 00       	mov    eax,0x4a70
   18cb6:	31 db                	xor    ebx,ebx
   18cb8:	e8 d3 19 05 00       	call   play_wav
   18cbd:	ba 88 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_52                              ; fixup: num: 3043, src obj: 1, src ofs: 0x18cbe, dst obj: 3, dst ofs: 0x2f88
   18cc2:	b8 74 4a 00 00       	mov    eax,0x4a74
   18cc7:	31 db                	xor    ebx,ebx
   18cc9:	e8 c2 19 05 00       	call   play_wav
   18cce:	ba 8e 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_53                              ; fixup: num: 3042, src obj: 1, src ofs: 0x18ccf, dst obj: 3, dst ofs: 0x2f8e
   18cd3:	b8 7a 4a 00 00       	mov    eax,0x4a7a
   18cd8:	31 db                	xor    ebx,ebx
   18cda:	e8 b1 19 05 00       	call   play_wav
   18cdf:	b8 f6 00 00 00       	mov    eax,0xf6
talk_to_JIMMY_JAMES_branch_22:
   18ce4:	e8 b7 14 01 00       	call   GetDlgFileString
   18ce9:	e8 22 22 05 00       	call   get_response
   18cee:	83 f8 01             	cmp    eax,0x1
   18cf1:	0f 85 0f 01 00 00    	jne    talk_to_JIMMY_JAMES_branch_26
   18cf7:	ba 94 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_54                              ; fixup: num: 3041, src obj: 1, src ofs: 0x18cf8, dst obj: 3, dst ofs: 0x2f94
   18cfc:	89 c3                	mov    ebx,eax
   18cfe:	b8 86 4a 00 00       	mov    eax,0x4a86
   18d03:	e8 88 19 05 00       	call   play_wav
   18d08:	ba 9a 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_55                              ; fixup: num: 3057, src obj: 1, src ofs: 0x18d09, dst obj: 3, dst ofs: 0x2f9a
   18d0d:	b8 8a 4a 00 00       	mov    eax,0x4a8a
   18d12:	31 db                	xor    ebx,ebx
   18d14:	e8 77 19 05 00       	call   play_wav
   18d19:	bb 01 00 00 00       	mov    ebx,0x1
   18d1e:	ba 9d 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_56                              ; fixup: num: 3056, src obj: 1, src ofs: 0x18d1f, dst obj: 3, dst ofs: 0x2f9d
   18d23:	b8 8e 4a 00 00       	mov    eax,0x4a8e
   18d28:	e8 63 19 05 00       	call   play_wav
   18d2d:	b8 f7 00 00 00       	mov    eax,0xf7
   18d32:	e8 69 14 01 00       	call   GetDlgFileString
   18d37:	e8 d4 21 05 00       	call   get_response
   18d3c:	83 f8 01             	cmp    eax,0x1
   18d3f:	0f 85 a6 00 00 00    	jne    talk_to_JIMMY_JAMES_branch_25
   18d45:	b8 a3 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_57                              ; fixup: num: 3055, src obj: 1, src ofs: 0x18d46, dst obj: 3, dst ofs: 0x2fa3
   18d4a:	e8 21 3b 05 00       	call   check_inventory
   18d4f:	84 c0                	test   al,al
   18d51:	74 34                	je     talk_to_JIMMY_JAMES_branch_23
   18d53:	bb 01 00 00 00       	mov    ebx,0x1
   18d58:	ba ac 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_58                              ; fixup: num: 3054, src obj: 1, src ofs: 0x18d59, dst obj: 3, dst ofs: 0x2fac
   18d5d:	b8 9e 4a 00 00       	mov    eax,0x4a9e
   18d62:	e8 29 19 05 00       	call   play_wav
   18d67:	ba b2 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_59                              ; fixup: num: 3053, src obj: 1, src ofs: 0x18d68, dst obj: 3, dst ofs: 0x2fb2
   18d6c:	b8 bb 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_60                              ; fixup: num: 3052, src obj: 1, src ofs: 0x18d6d, dst obj: 3, dst ofs: 0x2fbb
   18d71:	31 db                	xor    ebx,ebx
   18d73:	e8 98 a1 03 00       	call   set_object
   18d78:	b8 bf 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_61                              ; fixup: num: 3051, src obj: 1, src ofs: 0x18d79, dst obj: 3, dst ofs: 0x2fbf
   18d7d:	e8 2e 3b 05 00       	call   add_inventory
   18d82:	e9 36 00 00 00       	jmp    talk_to_JIMMY_JAMES_branch_24
talk_to_JIMMY_JAMES_branch_23:
   18d87:	ba c8 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_62                              ; fixup: num: 3050, src obj: 1, src ofs: 0x18d88, dst obj: 3, dst ofs: 0x2fc8
   18d8c:	b8 a6 4a 00 00       	mov    eax,0x4aa6
   18d91:	31 db                	xor    ebx,ebx
   18d93:	e8 f8 18 05 00       	call   play_wav
   18d98:	ba ce 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_63                              ; fixup: num: 3049, src obj: 1, src ofs: 0x18d99, dst obj: 3, dst ofs: 0x2fce
   18d9d:	b8 aa 4a 00 00       	mov    eax,0x4aaa
   18da2:	31 db                	xor    ebx,ebx
   18da4:	e8 e7 18 05 00       	call   play_wav
   18da9:	bb 02 00 00 00       	mov    ebx,0x2
   18dae:	ba d1 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_64                              ; fixup: num: 2962, src obj: 1, src ofs: 0x18daf, dst obj: 3, dst ofs: 0x2fd1
   18db3:	b8 ae 4a 00 00       	mov    eax,0x4aae
   18db8:	e8 d3 18 05 00       	call   play_wav
talk_to_JIMMY_JAMES_branch_24:
   18dbd:	b8 fb 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_70                              ; fixup: num: 2961, src obj: 1, src ofs: 0x18dbe, dst obj: 3, dst ofs: 0x2ffb
   18dc2:	e8 c9 39 05 00       	call   check_script_flag
   18dc7:	84 c0                	test   al,al
   18dc9:	0f 84 86 00 00 00    	je     talk_to_JIMMY_JAMES_branch_28
   18dcf:	bb 02 00 00 00       	mov    ebx,0x2
   18dd4:	ba 07 30 00 00       	mov    edx,@obj3:jimmy_cpp_variable_71                              ; fixup: num: 2960, src obj: 1, src ofs: 0x18dd5, dst obj: 3, dst ofs: 0x3007
   18dd9:	b8 e2 4a 00 00       	mov    eax,0x4ae2
   18dde:	e8 ad 18 05 00       	call   play_wav
   18de3:	31 c0                	xor    eax,eax
   18de5:	5f                   	pop    edi
   18de6:	5e                   	pop    esi
   18de7:	5a                   	pop    edx
   18de8:	59                   	pop    ecx
   18de9:	5b                   	pop    ebx
   18dea:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_25:
   18deb:	83 f8 02             	cmp    eax,0x2
   18dee:	75 cd                	jne    talk_to_JIMMY_JAMES_branch_24
   18df0:	bb 01 00 00 00       	mov    ebx,0x1
   18df5:	ba d7 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_65                              ; fixup: num: 2959, src obj: 1, src ofs: 0x18df6, dst obj: 3, dst ofs: 0x2fd7
   18dfa:	b8 b4 4a 00 00       	mov    eax,0x4ab4
   18dff:	e8 8c 18 05 00       	call   play_wav
   18e04:	eb b7                	jmp    talk_to_JIMMY_JAMES_branch_24
talk_to_JIMMY_JAMES_branch_26:
   18e06:	83 f8 02             	cmp    eax,0x2
   18e09:	75 b2                	jne    talk_to_JIMMY_JAMES_branch_24
   18e0b:	ba dd 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_66                              ; fixup: num: 3061, src obj: 1, src ofs: 0x18e0c, dst obj: 3, dst ofs: 0x2fdd
   18e10:	b8 bc 4a 00 00       	mov    eax,0x4abc
   18e15:	31 db                	xor    ebx,ebx
   18e17:	e8 74 18 05 00       	call   play_wav
   18e1c:	eb 9f                	jmp    talk_to_JIMMY_JAMES_branch_24
talk_to_JIMMY_JAMES_branch_27:
   18e1e:	b8 e3 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_67                              ; fixup: num: 3060, src obj: 1, src ofs: 0x18e1f, dst obj: 3, dst ofs: 0x2fe3
   18e23:	e8 48 3a 05 00       	call   check_inventory
   18e28:	84 c0                	test   al,al
   18e2a:	74 91                	je     talk_to_JIMMY_JAMES_branch_24
   18e2c:	b8 ec 2f 00 00       	mov    eax,@obj3:jimmy_cpp_variable_68                              ; fixup: num: 3059, src obj: 1, src ofs: 0x18e2d, dst obj: 3, dst ofs: 0x2fec
   18e31:	e8 3a 3a 05 00       	call   check_inventory
   18e36:	84 c0                	test   al,al
   18e38:	75 83                	jne    talk_to_JIMMY_JAMES_branch_24
   18e3a:	ba f5 2f 00 00       	mov    edx,@obj3:jimmy_cpp_variable_69                              ; fixup: num: 3058, src obj: 1, src ofs: 0x18e3b, dst obj: 3, dst ofs: 0x2ff5
   18e3f:	b8 c3 4a 00 00       	mov    eax,0x4ac3
   18e44:	31 db                	xor    ebx,ebx
   18e46:	e8 45 18 05 00       	call   play_wav
   18e4b:	b8 f8 00 00 00       	mov    eax,0xf8
   18e50:	e9 8f fe ff ff       	jmp    talk_to_JIMMY_JAMES_branch_22
talk_to_JIMMY_JAMES_branch_28:
   18e55:	b8 0d 30 00 00       	mov    eax,@obj3:jimmy_cpp_variable_72                              ; fixup: num: 2975, src obj: 1, src ofs: 0x18e56, dst obj: 3, dst ofs: 0x300d
   18e5a:	e8 31 39 05 00       	call   check_script_flag
   18e5f:	84 c0                	test   al,al
   18e61:	74 1c                	je     talk_to_JIMMY_JAMES_branch_29
   18e63:	bb 02 00 00 00       	mov    ebx,0x2
   18e68:	ba 19 30 00 00       	mov    edx,@obj3:jimmy_cpp_variable_73                              ; fixup: num: 2974, src obj: 1, src ofs: 0x18e69, dst obj: 3, dst ofs: 0x3019
   18e6d:	b8 db 4a 00 00       	mov    eax,0x4adb
   18e72:	e8 19 18 05 00       	call   play_wav
   18e77:	31 c0                	xor    eax,eax
   18e79:	5f                   	pop    edi
   18e7a:	5e                   	pop    esi
   18e7b:	5a                   	pop    edx
   18e7c:	59                   	pop    ecx
   18e7d:	5b                   	pop    ebx
   18e7e:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_29:
   18e7f:	b8 1f 30 00 00       	mov    eax,@obj3:jimmy_cpp_variable_74                              ; fixup: num: 2973, src obj: 1, src ofs: 0x18e80, dst obj: 3, dst ofs: 0x301f
   18e84:	e8 07 39 05 00       	call   check_script_flag
   18e89:	84 c0                	test   al,al
   18e8b:	74 1c                	je     talk_to_JIMMY_JAMES_branch_30
   18e8d:	bb 02 00 00 00       	mov    ebx,0x2
   18e92:	ba 2b 30 00 00       	mov    edx,@obj3:jimmy_cpp_variable_75                              ; fixup: num: 2972, src obj: 1, src ofs: 0x18e93, dst obj: 3, dst ofs: 0x302b
   18e97:	b8 d4 4a 00 00       	mov    eax,0x4ad4
   18e9c:	e8 ef 17 05 00       	call   play_wav
   18ea1:	31 c0                	xor    eax,eax
   18ea3:	5f                   	pop    edi
   18ea4:	5e                   	pop    esi
   18ea5:	5a                   	pop    edx
   18ea6:	59                   	pop    ecx
   18ea7:	5b                   	pop    ebx
   18ea8:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_30:
   18ea9:	ba 31 30 00 00       	mov    edx,@obj3:jimmy_cpp_variable_76                              ; fixup: num: 2971, src obj: 1, src ofs: 0x18eaa, dst obj: 3, dst ofs: 0x3031
   18eae:	b8 38 4b 00 00       	mov    eax,0x4b38
   18eb3:	31 db                	xor    ebx,ebx
   18eb5:	e8 d6 17 05 00       	call   play_wav
   18eba:	31 c0                	xor    eax,eax
   18ebc:	5f                   	pop    edi
   18ebd:	5e                   	pop    esi
   18ebe:	5a                   	pop    edx
   18ebf:	59                   	pop    ecx
   18ec0:	5b                   	pop    ebx
   18ec1:	c3                   	ret    
talk_to_JIMMY_JAMES_branch_31:
   18ec2:	89 15 28 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_1,edx                ; fixup: num: 2970, src obj: 1, src ofs: 0x18ec4, dst obj: 3, dst ofs: 0x22c28
   18ec8:	a1 28 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES_variable_1                          ; fixup: num: 2969, src obj: 1, src ofs: 0x18ec9, dst obj: 3, dst ofs: 0x22c28
   18ecd:	c3                   	ret    
   18ece:	8b c0                	mov    eax,eax

;-------------------------------------------------
;  Function 'FIRST_CONVERSATION_IF_YOU_VE_PUT_O  -
;  UT_THE_PAPER'                                 -
;-------------------------------------------------
FIRST_CONVERSATION_IF_YOU_VE_PUT_OUT_THE_PAPER:
   18ed0:	85 c0                	test   eax,eax
   18ed2:	74 ee                	je     talk_to_JIMMY_JAMES_branch_31
   18ed4:	a1 28 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES_variable_1                          ; fixup: num: 2968, src obj: 1, src ofs: 0x18ed5, dst obj: 3, dst ofs: 0x22c28
   18ed9:	c3                   	ret    
FIRST_CONVERSATION_IF_YOU_VE_PUT_OUT_THE_PAPER_branch_1:
   18eda:	89 15 2c 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_2,edx                ; fixup: num: 2967, src obj: 1, src ofs: 0x18edc, dst obj: 3, dst ofs: 0x22c2c
   18ee0:	a1 2c 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES_variable_2                          ; fixup: num: 2966, src obj: 1, src ofs: 0x18ee1, dst obj: 3, dst ofs: 0x22c2c
   18ee5:	c3                   	ret    
   18ee6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   18eec:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'FIRST_CONVERSATION_IF_YOU_HAVEN_T_  -
;  PUT_OUT_THE_PAPER'                            -
;-------------------------------------------------
FIRST_CONVERSATION_IF_YOU_HAVEN_T_PUT_OUT_THE_PAPER:
   18ef0:	85 c0                	test   eax,eax
   18ef2:	74 e6                	je     FIRST_CONVERSATION_IF_YOU_VE_PUT_OUT_THE_PAPER_branch_1
   18ef4:	a1 2c 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES_variable_2                          ; fixup: num: 2965, src obj: 1, src ofs: 0x18ef5, dst obj: 3, dst ofs: 0x22c2c
   18ef9:	c3                   	ret    
FIRST_CONVERSATION_IF_YOU_HAVEN_T_PUT_OUT_THE_PAPER_branch_1:
   18efa:	89 15 24 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES,edx                           ; fixup: num: 2964, src obj: 1, src ofs: 0x18efc, dst obj: 3, dst ofs: 0x22c24
   18f00:	a1 24 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES                                     ; fixup: num: 2963, src obj: 1, src ofs: 0x18f01, dst obj: 3, dst ofs: 0x22c24
   18f05:	c3                   	ret    
   18f06:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   18f0c:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'INTRODUCED_TO_JIMMY'                -
;-------------------------------------------------
INTRODUCED_TO_JIMMY:
   18f10:	85 c0                	test   eax,eax
   18f12:	74 e6                	je     FIRST_CONVERSATION_IF_YOU_HAVEN_T_PUT_OUT_THE_PAPER_branch_1
   18f14:	a1 24 2c 02 00       	mov    eax,ds:@obj3:JIMMY_JAMES                                     ; fixup: num: 2979, src obj: 1, src ofs: 0x18f15, dst obj: 3, dst ofs: 0x22c24
   18f19:	c3                   	ret    
   18f1a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'JIMMY_JAMES_initialize'             -
;-------------------------------------------------
JIMMY_JAMES_initialize:
   18f20:	51                   	push   ecx
   18f21:	52                   	push   edx
   18f22:	31 d2                	xor    edx,edx
   18f24:	b9 01 00 00 00       	mov    ecx,0x1
   18f29:	89 15 24 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES,edx                           ; fixup: num: 2978, src obj: 1, src ofs: 0x18f2b, dst obj: 3, dst ofs: 0x22c24
   18f2f:	89 15 28 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_1,edx                ; fixup: num: 2977, src obj: 1, src ofs: 0x18f31, dst obj: 3, dst ofs: 0x22c28
   18f35:	89 0d 2c 2c 02 00    	mov    DWORD PTR ds:@obj3:JIMMY_JAMES_variable_2,ecx                ; fixup: num: 2976, src obj: 1, src ofs: 0x18f37, dst obj: 3, dst ofs: 0x22c2c
   18f3b:	5a                   	pop    edx
   18f3c:	59                   	pop    ecx
   18f3d:	c3                   	ret    
;-------------------------------------------------
;  Bad code 20 (zero after ret):                 -
;-------------------------------------------------
;  18f3c:	59                   	pop    ecx
;  18f3d:	c3                   	ret    
;  18f3e:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (2 bytes):                       -
;-------------------------------------------------
   18f3e:	00 00                	db     2 dup(0x00)
;-------------------------------------------------
;  End of bad code 20                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 21 (D:\SOURCE\jimmy.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 21: D:\SOURCE\jimmy.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
jimmy_cpp_variable_1:
    2dc8:	4e 45 57 53 50 41 50 45 52 00 	db     "NEWSPAPER",0x00
jimmy_cpp_variable_2:
    2dd2:	52 41 48 00          	db     "RAH",0x00
jimmy_cpp_variable_3:
    2dd6:	47 49 56 45 4e 5f 50 41 50 45 52 5f 54 4f 44 41 59 00 	db     "GIVEN_PAPER_TODAY",0x00
jimmy_cpp_variable_4:
    2de8:	41 43 54 56 5f 48 4f 55 53 45 5f 45 58 49 54 00 	db     "ACTV_HOUSE_EXIT",0x00
jimmy_cpp_variable_5:
    2df8:	4e 45 57 53 50 41 50 45 52 00 	db     "NEWSPAPER",0x00
jimmy_cpp_variable_6:
    2e02:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_7:
    2e08:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2e09:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2e0a:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_8:
    2e0b:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_9:
    2e11:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_10:
    2e17:	50 41 50 45 52 5f 43 48 4b 5f 31 00 	db     "PAPER_CHK_1",0x00
jimmy_cpp_variable_11:
    2e23:	47 49 56 45 4e 5f 50 41 50 45 52 5f 54 4f 44 41 59 00 	db     "GIVEN_PAPER_TODAY",0x00
jimmy_cpp_variable_12:
    2e35:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
jimmy_cpp_variable_13:
    2e4d:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_14:
    2e53:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
jimmy_cpp_variable_15:
    2e5a:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
jimmy_cpp_variable_16:
    2e62:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
jimmy_cpp_variable_17:
    2e74:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
jimmy_cpp_variable_18:
    2e81:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
jimmy_cpp_variable_19:
    2e92:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
jimmy_cpp_variable_20:
    2e9f:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
jimmy_cpp_variable_21:
    2eb0:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_22:
    2eb6:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2eb7:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2eb8:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_23:
    2eb9:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_24:
    2ebf:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2ec0:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2ec1:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_25:
    2ec2:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_26:
    2ec8:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2ec9:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2eca:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_27:
    2ecb:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_28:
    2ed1:	4e 4f 54 45 00       	db     "NOTE",0x00
jimmy_cpp_variable_29:
    2ed6:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
jimmy_cpp_variable_30:
    2ee5:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
jimmy_cpp_variable_31:
    2eef:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
jimmy_cpp_variable_32:
    2f03:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_33:
    2f09:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2f0a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2f0b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_34:
    2f0c:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_35:
    2f12:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2f13:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2f14:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_36:
    2f15:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_37:
    2f1b:	53 4e 45 41 4b 45 52 53 00 	db     "SNEAKERS",0x00
jimmy_cpp_variable_38:
    2f24:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_39:
    2f2a:	53 4e 45 41 4b 45 52 53 00 	db     "SNEAKERS",0x00
jimmy_cpp_variable_40:
    2f33:	52 61 48 00          	db     "RaH",0x00
jimmy_cpp_variable_41:
    2f37:	42 52 4f 4f 4d 4b 45 59 00 	db     "BROOMKEY",0x00
jimmy_cpp_variable_42:
    2f40:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_43:
    2f46:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_44:
    2f4c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2f4d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2f4e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_45:
    2f4f:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_46:
    2f55:	50 41 50 45 52 5f 43 48 4b 5f 31 00 	db     "PAPER_CHK_1",0x00
jimmy_cpp_variable_47:
    2f61:	47 49 56 45 4e 5f 50 41 50 45 52 5f 54 4f 44 41 59 00 	db     "GIVEN_PAPER_TODAY",0x00
jimmy_cpp_variable_48:
    2f73:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_49:
    2f79:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_50:
    2f7f:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_51:
    2f85:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2f86:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2f87:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_52:
    2f88:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_53:
    2f8e:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_54:
    2f94:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_55:
    2f9a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2f9b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2f9c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_56:
    2f9d:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_57:
    2fa3:	53 4e 45 41 4b 45 52 53 00 	db     "SNEAKERS",0x00
jimmy_cpp_variable_58:
    2fac:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_59:
    2fb2:	53 4e 45 41 4b 45 52 53 00 	db     "SNEAKERS",0x00
jimmy_cpp_variable_60:
    2fbb:	52 61 48 00          	db     "RaH",0x00
jimmy_cpp_variable_61:
    2fbf:	42 52 4f 4f 4d 4b 45 59 00 	db     "BROOMKEY",0x00
jimmy_cpp_variable_62:
    2fc8:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_63:
    2fce:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    2fcf:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    2fd0:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
jimmy_cpp_variable_64:
    2fd1:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_65:
    2fd7:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_66:
    2fdd:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_67:
    2fe3:	53 4e 45 41 4b 45 52 53 00 	db     "SNEAKERS",0x00
jimmy_cpp_variable_68:
    2fec:	42 52 4f 4f 4d 4b 45 59 00 	db     "BROOMKEY",0x00
jimmy_cpp_variable_69:
    2ff5:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_70:
    2ffb:	50 41 50 45 52 5f 43 48 4b 5f 34 00 	db     "PAPER_CHK_4",0x00
jimmy_cpp_variable_71:
    3007:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_72:
    300d:	50 41 50 45 52 5f 43 48 4b 5f 33 00 	db     "PAPER_CHK_3",0x00
jimmy_cpp_variable_73:
    3019:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_74:
    301f:	50 41 50 45 52 5f 43 48 4b 5f 32 00 	db     "PAPER_CHK_2",0x00
jimmy_cpp_variable_75:
    302b:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
jimmy_cpp_variable_76:
    3031:	4a 49 4d 4d 59 00    	db     "JIMMY",0x00
    3037:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 21 (D:\SOURCE\jimmy.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 21: D:\SOURCE\jimmy.cpp                                              -
;                                                                              -
;-------------------------------------------------------------------------------
JIMMY_JAMES:                                                                                        ; access size: DWORD
   22c24:	00 00 00 00          	dd     0x00000000
JIMMY_JAMES_variable_1:                                                                             ; access size: DWORD
   22c28:	00 00 00 00          	dd     0x00000000
JIMMY_JAMES_variable_2:                                                                             ; access size: DWORD
   22c2c:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 21 (D:\SOURCE\jimmy.cpp)                                      -
;                                                                              -
;-------------------------------------------------------------------------------