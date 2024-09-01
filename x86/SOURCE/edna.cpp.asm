;-------------------------------------------------------------------------------
;                                                                              -
;  Module 56: D:\SOURCE\edna.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_EDNA_FITZPATRICK'           -
;-------------------------------------------------
talk_to_EDNA_FITZPATRICK:
   258a0:	53                   	push   ebx
   258a1:	51                   	push   ecx
   258a2:	52                   	push   edx
   258a3:	56                   	push   esi
   258a4:	57                   	push   edi
   258a5:	55                   	push   ebp
   258a6:	b8 e8 68 00 00       	mov    eax,@obj3:edna_cpp_variable_1                                ; fixup: num: 5819, src obj: 1, src ofs: 0x258a7, dst obj: 3, dst ofs: 0x68e8
   258ab:	e8 e0 6e 04 00       	call   check_script_flag
   258b0:	84 c0                	test   al,al
   258b2:	74 25                	je     talk_to_EDNA_FITZPATRICK_branch_1
   258b4:	bb 02 00 00 00       	mov    ebx,0x2
   258b9:	ba f6 68 00 00       	mov    edx,@obj3:edna_cpp_variable_2                                ; fixup: num: 5818, src obj: 1, src ofs: 0x258ba, dst obj: 3, dst ofs: 0x68f6
   258be:	b8 df 3c 00 00       	mov    eax,0x3cdf
   258c3:	e8 c8 4d 04 00       	call   play_wav
   258c8:	b8 fb 68 00 00       	mov    eax,@obj3:edna_cpp_variable_3                                ; fixup: num: 5817, src obj: 1, src ofs: 0x258c9, dst obj: 3, dst ofs: 0x68fb
   258cd:	31 d2                	xor    edx,edx
   258cf:	e8 0c 6f 04 00       	call   set_script_flag
   258d4:	e9 9a 0d 00 00       	jmp    talk_to_EDNA_FITZPATRICK_branch_83
talk_to_EDNA_FITZPATRICK_branch_1:
   258d9:	b8 09 69 00 00       	mov    eax,@obj3:edna_cpp_variable_4                                ; fixup: num: 5816, src obj: 1, src ofs: 0x258da, dst obj: 3, dst ofs: 0x6909
   258de:	e8 ad 6e 04 00       	call   check_script_flag
   258e3:	84 c0                	test   al,al
   258e5:	74 36                	je     talk_to_EDNA_FITZPATRICK_branch_3
   258e7:	b8 1c 69 00 00       	mov    eax,@obj3:edna_cpp_variable_5                                ; fixup: num: 5815, src obj: 1, src ofs: 0x258e8, dst obj: 3, dst ofs: 0x691c
   258ec:	31 d2                	xor    edx,edx
   258ee:	e8 ed 6e 04 00       	call   set_script_flag
   258f3:	b8 2f 69 00 00       	mov    eax,@obj3:edna_cpp_variable_6                                ; fixup: num: 5814, src obj: 1, src ofs: 0x258f4, dst obj: 3, dst ofs: 0x692f
   258f8:	e8 93 6e 04 00       	call   check_script_flag
   258fd:	84 c0                	test   al,al
   258ff:	74 0e                	je     talk_to_EDNA_FITZPATRICK_branch_2
   25901:	e8 9a 30 00 00       	call   LOW_ANGLE_OF_EDNA_KARIN_HANGING_FROM_THE_RAFTER_SWAYING
   25906:	31 c0                	xor    eax,eax
   25908:	5d                   	pop    ebp
   25909:	5f                   	pop    edi
   2590a:	5e                   	pop    esi
   2590b:	5a                   	pop    edx
   2590c:	59                   	pop    ecx
   2590d:	5b                   	pop    ebx
   2590e:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_2:
   2590f:	e8 cc 30 00 00       	call   LOW_ANGLE_OF_EDNA_HANGING_FROM_THE_RAFTER_SWAYING
   25914:	31 c0                	xor    eax,eax
   25916:	5d                   	pop    ebp
   25917:	5f                   	pop    edi
   25918:	5e                   	pop    esi
   25919:	5a                   	pop    edx
   2591a:	59                   	pop    ecx
   2591b:	5b                   	pop    ebx
   2591c:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_3:
   2591d:	be 41 69 00 00       	mov    esi,@obj3:edna_cpp_variable_7                                ; fixup: num: 5832, src obj: 1, src ofs: 0x2591e, dst obj: 3, dst ofs: 0x6941
   25922:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5831, src obj: 1, src ofs: 0x25923, dst obj: 3, dst ofs: 0x295c0
   25927:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_4:
   25928:	8a 06                	mov    al,BYTE PTR [esi]
   2592a:	88 07                	mov    BYTE PTR [edi],al
   2592c:	3c 00                	cmp    al,0x0
   2592e:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_5
   25930:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   25933:	83 c6 02             	add    esi,0x2
   25936:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25939:	83 c7 02             	add    edi,0x2
   2593c:	3c 00                	cmp    al,0x0
   2593e:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_4
talk_to_EDNA_FITZPATRICK_branch_5:
   25940:	5f                   	pop    edi
   25941:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 5830, src obj: 1, src ofs: 0x25943, dst obj: 3, dst ofs: 0x294bc
   25947:	85 d2                	test   edx,edx
   25949:	0f 84 05 02 00 00    	je     talk_to_EDNA_FITZPATRICK_branch_17
   2594f:	89 d0                	mov    eax,edx
   25951:	ba 42 69 00 00       	mov    edx,@obj3:edna_cpp_variable_8                                ; fixup: num: 5829, src obj: 1, src ofs: 0x25952, dst obj: 3, dst ofs: 0x6942
   25956:	e8 d5 0a 05 00       	call   strcmp_
   2595b:	85 c0                	test   eax,eax
   2595d:	75 43                	jne    talk_to_EDNA_FITZPATRICK_branch_6
   2595f:	b9 01 00 00 00       	mov    ecx,0x1
   25964:	bb 03 00 00 00       	mov    ebx,0x3
   25969:	ba 4a 69 00 00       	mov    edx,@obj3:edna_cpp_variable_9                                ; fixup: num: 5828, src obj: 1, src ofs: 0x2596a, dst obj: 3, dst ofs: 0x694a
   2596e:	b8 05 3d 00 00       	mov    eax,0x3d05
   25973:	89 0d 28 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_1,ecx           ; fixup: num: 5827, src obj: 1, src ofs: 0x25975, dst obj: 3, dst ofs: 0x22e28
   25979:	e8 12 4d 04 00       	call   play_wav
   2597e:	b8 4f 69 00 00       	mov    eax,@obj3:edna_cpp_variable_10                               ; fixup: num: 5826, src obj: 1, src ofs: 0x2597f, dst obj: 3, dst ofs: 0x694f
   25983:	ba 5c 69 00 00       	mov    edx,@obj3:edna_cpp_variable_11                               ; fixup: num: 5825, src obj: 1, src ofs: 0x25984, dst obj: 3, dst ofs: 0x695c
   25988:	e8 23 6f 04 00       	call   add_inventory
   2598d:	31 db                	xor    ebx,ebx
   2598f:	b8 64 69 00 00       	mov    eax,@obj3:edna_cpp_variable_12                               ; fixup: num: 5824, src obj: 1, src ofs: 0x25990, dst obj: 3, dst ofs: 0x6964
   25994:	e8 77 d5 02 00       	call   set_object
   25999:	31 c0                	xor    eax,eax
   2599b:	5d                   	pop    ebp
   2599c:	5f                   	pop    edi
   2599d:	5e                   	pop    esi
   2599e:	5a                   	pop    edx
   2599f:	59                   	pop    ecx
   259a0:	5b                   	pop    ebx
   259a1:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_6:
   259a2:	ba 68 69 00 00       	mov    edx,@obj3:edna_cpp_variable_13                               ; fixup: num: 5823, src obj: 1, src ofs: 0x259a3, dst obj: 3, dst ofs: 0x6968
   259a7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5822, src obj: 1, src ofs: 0x259a8, dst obj: 3, dst ofs: 0x294bc
   259ac:	e8 7f 0a 05 00       	call   strcmp_
   259b1:	85 c0                	test   eax,eax
   259b3:	74 13                	je     talk_to_EDNA_FITZPATRICK_branch_7
   259b5:	ba 75 69 00 00       	mov    edx,@obj3:edna_cpp_variable_14                               ; fixup: num: 5821, src obj: 1, src ofs: 0x259b6, dst obj: 3, dst ofs: 0x6975
   259ba:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5820, src obj: 1, src ofs: 0x259bb, dst obj: 3, dst ofs: 0x294bc
   259bf:	e8 6c 0a 05 00       	call   strcmp_
   259c4:	85 c0                	test   eax,eax
   259c6:	75 1d                	jne    talk_to_EDNA_FITZPATRICK_branch_8
talk_to_EDNA_FITZPATRICK_branch_7:
   259c8:	ba 01 00 00 00       	mov    edx,0x1
   259cd:	31 c0                	xor    eax,eax
   259cf:	e8 8c 29 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   259d4:	31 db                	xor    ebx,ebx
   259d6:	ba 86 69 00 00       	mov    edx,@obj3:edna_cpp_variable_15                               ; fixup: num: 5709, src obj: 1, src ofs: 0x259d7, dst obj: 3, dst ofs: 0x6986
   259db:	b8 d6 3b 00 00       	mov    eax,0x3bd6
   259e0:	e9 61 01 00 00       	jmp    talk_to_EDNA_FITZPATRICK_branch_16
talk_to_EDNA_FITZPATRICK_branch_8:
   259e5:	ba 8b 69 00 00       	mov    edx,@obj3:edna_cpp_variable_16                               ; fixup: num: 5708, src obj: 1, src ofs: 0x259e6, dst obj: 3, dst ofs: 0x698b
   259ea:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5707, src obj: 1, src ofs: 0x259eb, dst obj: 3, dst ofs: 0x294bc
   259ef:	e8 3c 0a 05 00       	call   strcmp_
   259f4:	85 c0                	test   eax,eax
   259f6:	74 13                	je     talk_to_EDNA_FITZPATRICK_branch_9
   259f8:	ba 92 69 00 00       	mov    edx,@obj3:edna_cpp_variable_17                               ; fixup: num: 5839, src obj: 1, src ofs: 0x259f9, dst obj: 3, dst ofs: 0x6992
   259fd:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5838, src obj: 1, src ofs: 0x259fe, dst obj: 3, dst ofs: 0x294bc
   25a02:	e8 29 0a 05 00       	call   strcmp_
   25a07:	85 c0                	test   eax,eax
   25a09:	75 34                	jne    talk_to_EDNA_FITZPATRICK_branch_10
talk_to_EDNA_FITZPATRICK_branch_9:
   25a0b:	b8 9a 69 00 00       	mov    eax,@obj3:edna_cpp_variable_18                               ; fixup: num: 5837, src obj: 1, src ofs: 0x25a0c, dst obj: 3, dst ofs: 0x699a
   25a10:	e8 7b 6d 04 00       	call   check_script_flag
   25a15:	84 c0                	test   al,al
   25a17:	74 26                	je     talk_to_EDNA_FITZPATRICK_branch_10
   25a19:	ba 01 00 00 00       	mov    edx,0x1
   25a1e:	31 c0                	xor    eax,eax
   25a20:	e8 2b 29 00 00       	call   SHOWN_LEDGERS_TO_ANYONE_OTHER_THAN_SHERIFF
   25a25:	31 db                	xor    ebx,ebx
   25a27:	ba ac 69 00 00       	mov    edx,@obj3:edna_cpp_variable_19                               ; fixup: num: 5836, src obj: 1, src ofs: 0x25a28, dst obj: 3, dst ofs: 0x69ac
   25a2c:	b8 d6 3b 00 00       	mov    eax,0x3bd6
   25a31:	e8 5a 4c 04 00       	call   play_wav
   25a36:	31 c0                	xor    eax,eax
   25a38:	5d                   	pop    ebp
   25a39:	5f                   	pop    edi
   25a3a:	5e                   	pop    esi
   25a3b:	5a                   	pop    edx
   25a3c:	59                   	pop    ecx
   25a3d:	5b                   	pop    ebx
   25a3e:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_10:
   25a3f:	ba b1 69 00 00       	mov    edx,@obj3:edna_cpp_variable_20                               ; fixup: num: 5835, src obj: 1, src ofs: 0x25a40, dst obj: 3, dst ofs: 0x69b1
   25a44:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5834, src obj: 1, src ofs: 0x25a45, dst obj: 3, dst ofs: 0x294bc
   25a49:	e8 e2 09 05 00       	call   strcmp_
   25a4e:	85 c0                	test   eax,eax
   25a50:	75 27                	jne    talk_to_EDNA_FITZPATRICK_branch_11
   25a52:	ba 01 00 00 00       	mov    edx,0x1
   25a57:	bb 02 00 00 00       	mov    ebx,0x2
   25a5c:	e8 0f 29 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   25a61:	ba c9 69 00 00       	mov    edx,@obj3:edna_cpp_variable_21                               ; fixup: num: 5833, src obj: 1, src ofs: 0x25a62, dst obj: 3, dst ofs: 0x69c9
   25a66:	b8 de 3b 00 00       	mov    eax,0x3bde
   25a6b:	e8 20 4c 04 00       	call   play_wav
   25a70:	31 c0                	xor    eax,eax
   25a72:	5d                   	pop    ebp
   25a73:	5f                   	pop    edi
   25a74:	5e                   	pop    esi
   25a75:	5a                   	pop    edx
   25a76:	59                   	pop    ecx
   25a77:	5b                   	pop    ebx
   25a78:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_11:
   25a79:	ba ce 69 00 00       	mov    edx,@obj3:edna_cpp_variable_22                               ; fixup: num: 5722, src obj: 1, src ofs: 0x25a7a, dst obj: 3, dst ofs: 0x69ce
   25a7e:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5721, src obj: 1, src ofs: 0x25a7f, dst obj: 3, dst ofs: 0x294bc
   25a83:	e8 a8 09 05 00       	call   strcmp_
   25a88:	85 c0                	test   eax,eax
   25a8a:	74 39                	je     talk_to_EDNA_FITZPATRICK_branch_12
   25a8c:	ba d3 69 00 00       	mov    edx,@obj3:edna_cpp_variable_23                               ; fixup: num: 5720, src obj: 1, src ofs: 0x25a8d, dst obj: 3, dst ofs: 0x69d3
   25a91:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5719, src obj: 1, src ofs: 0x25a92, dst obj: 3, dst ofs: 0x294bc
   25a96:	e8 95 09 05 00       	call   strcmp_
   25a9b:	85 c0                	test   eax,eax
   25a9d:	74 26                	je     talk_to_EDNA_FITZPATRICK_branch_12
   25a9f:	ba e2 69 00 00       	mov    edx,@obj3:edna_cpp_variable_24                               ; fixup: num: 5718, src obj: 1, src ofs: 0x25aa0, dst obj: 3, dst ofs: 0x69e2
   25aa4:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5717, src obj: 1, src ofs: 0x25aa5, dst obj: 3, dst ofs: 0x294bc
   25aa9:	e8 82 09 05 00       	call   strcmp_
   25aae:	85 c0                	test   eax,eax
   25ab0:	74 13                	je     talk_to_EDNA_FITZPATRICK_branch_12
   25ab2:	ba ec 69 00 00       	mov    edx,@obj3:edna_cpp_variable_25                               ; fixup: num: 5716, src obj: 1, src ofs: 0x25ab3, dst obj: 3, dst ofs: 0x69ec
   25ab7:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5715, src obj: 1, src ofs: 0x25ab8, dst obj: 3, dst ofs: 0x294bc
   25abc:	e8 6f 09 05 00       	call   strcmp_
   25ac1:	85 c0                	test   eax,eax
   25ac3:	75 29                	jne    talk_to_EDNA_FITZPATRICK_branch_13
talk_to_EDNA_FITZPATRICK_branch_12:
   25ac5:	ba 01 00 00 00       	mov    edx,0x1
   25aca:	31 c0                	xor    eax,eax
   25acc:	bb 02 00 00 00       	mov    ebx,0x2
   25ad1:	e8 5a 28 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   25ad6:	ba 00 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_26                               ; fixup: num: 5714, src obj: 1, src ofs: 0x25ad7, dst obj: 3, dst ofs: 0x6a00
   25adb:	b8 e5 3b 00 00       	mov    eax,0x3be5
   25ae0:	e8 ab 4b 04 00       	call   play_wav
   25ae5:	31 c0                	xor    eax,eax
   25ae7:	5d                   	pop    ebp
   25ae8:	5f                   	pop    edi
   25ae9:	5e                   	pop    esi
   25aea:	5a                   	pop    edx
   25aeb:	59                   	pop    ecx
   25aec:	5b                   	pop    ebx
   25aed:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_13:
   25aee:	ba 05 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_27                               ; fixup: num: 5713, src obj: 1, src ofs: 0x25aef, dst obj: 3, dst ofs: 0x6a05
   25af3:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5712, src obj: 1, src ofs: 0x25af4, dst obj: 3, dst ofs: 0x294bc
   25af8:	e8 33 09 05 00       	call   strcmp_
   25afd:	85 c0                	test   eax,eax
   25aff:	74 13                	je     talk_to_EDNA_FITZPATRICK_branch_14
   25b01:	ba 0d 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_28                               ; fixup: num: 5711, src obj: 1, src ofs: 0x25b02, dst obj: 3, dst ofs: 0x6a0d
   25b06:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 5710, src obj: 1, src ofs: 0x25b07, dst obj: 3, dst ofs: 0x294bc
   25b0b:	e8 20 09 05 00       	call   strcmp_
   25b10:	85 c0                	test   eax,eax
   25b12:	75 26                	jne    talk_to_EDNA_FITZPATRICK_branch_15
talk_to_EDNA_FITZPATRICK_branch_14:
   25b14:	ba 01 00 00 00       	mov    edx,0x1
   25b19:	31 c0                	xor    eax,eax
   25b1b:	e8 20 28 00 00       	call   SHOWN_EVIDENCE_SHERIFF_OWNS_TV_STATION_AROUND
   25b20:	31 db                	xor    ebx,ebx
   25b22:	ba 1f 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_29                               ; fixup: num: 5731, src obj: 1, src ofs: 0x25b23, dst obj: 3, dst ofs: 0x6a1f
   25b27:	b8 ee 3b 00 00       	mov    eax,0x3bee
   25b2c:	e8 5f 4b 04 00       	call   play_wav
   25b31:	31 c0                	xor    eax,eax
   25b33:	5d                   	pop    ebp
   25b34:	5f                   	pop    edi
   25b35:	5e                   	pop    esi
   25b36:	5a                   	pop    edx
   25b37:	59                   	pop    ecx
   25b38:	5b                   	pop    ebx
   25b39:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_15:
   25b3a:	ba 24 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_30                               ; fixup: num: 5730, src obj: 1, src ofs: 0x25b3b, dst obj: 3, dst ofs: 0x6a24
   25b3f:	b8 cf 3b 00 00       	mov    eax,0x3bcf
   25b44:	31 db                	xor    ebx,ebx
talk_to_EDNA_FITZPATRICK_branch_16:
   25b46:	e8 45 4b 04 00       	call   play_wav
   25b4b:	31 c0                	xor    eax,eax
   25b4d:	5d                   	pop    ebp
   25b4e:	5f                   	pop    edi
   25b4f:	5e                   	pop    esi
   25b50:	5a                   	pop    edx
   25b51:	59                   	pop    ecx
   25b52:	5b                   	pop    ebx
   25b53:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_17:
   25b54:	b8 29 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_31                               ; fixup: num: 5729, src obj: 1, src ofs: 0x25b55, dst obj: 3, dst ofs: 0x6a29
   25b59:	e8 32 6c 04 00       	call   check_script_flag
   25b5e:	84 c0                	test   al,al
   25b60:	74 58                	je     talk_to_EDNA_FITZPATRICK_branch_18
   25b62:	bb 02 00 00 00       	mov    ebx,0x2
   25b67:	ba 40 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_32                               ; fixup: num: 5728, src obj: 1, src ofs: 0x25b68, dst obj: 3, dst ofs: 0x6a40
   25b6c:	b8 ce 3c 00 00       	mov    eax,0x3cce
   25b71:	e8 1a 4b 04 00       	call   play_wav
   25b76:	ba 45 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_33                               ; fixup: num: 5727, src obj: 1, src ofs: 0x25b77, dst obj: 3, dst ofs: 0x6a45
   25b7b:	b8 d2 3c 00 00       	mov    eax,0x3cd2
   25b80:	31 db                	xor    ebx,ebx
   25b82:	e8 09 4b 04 00       	call   play_wav
   25b87:	bb 01 00 00 00       	mov    ebx,0x1
   25b8c:	ba 48 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_34                               ; fixup: num: 5726, src obj: 1, src ofs: 0x25b8d, dst obj: 3, dst ofs: 0x6a48
   25b91:	b8 d7 3c 00 00       	mov    eax,0x3cd7
   25b96:	e8 f5 4a 04 00       	call   play_wav
   25b9b:	b8 4d 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_35                               ; fixup: num: 5725, src obj: 1, src ofs: 0x25b9c, dst obj: 3, dst ofs: 0x6a4d
   25ba0:	e8 0b 6d 04 00       	call   add_inventory
   25ba5:	31 d2                	xor    edx,edx
   25ba7:	b8 5a 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_36                               ; fixup: num: 5724, src obj: 1, src ofs: 0x25ba8, dst obj: 3, dst ofs: 0x6a5a
   25bac:	e8 2f 6c 04 00       	call   set_script_flag
   25bb1:	31 c0                	xor    eax,eax
   25bb3:	5d                   	pop    ebp
   25bb4:	5f                   	pop    edi
   25bb5:	5e                   	pop    esi
   25bb6:	5a                   	pop    edx
   25bb7:	59                   	pop    ecx
   25bb8:	5b                   	pop    ebx
   25bb9:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_18:
   25bba:	a1 24 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK                                ; fixup: num: 5723, src obj: 1, src ofs: 0x25bbb, dst obj: 3, dst ofs: 0x22e24
   25bbf:	85 c0                	test   eax,eax
   25bc1:	0f 84 27 01 00 00    	je     talk_to_EDNA_FITZPATRICK_branch_24
   25bc7:	b8 95 3a 00 00       	mov    eax,0x3a95
   25bcc:	89 15 24 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK,edx                      ; fixup: num: 5741, src obj: 1, src ofs: 0x25bce, dst obj: 3, dst ofs: 0x22e24
   25bd2:	31 db                	xor    ebx,ebx
   25bd4:	ba 71 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_37                               ; fixup: num: 5740, src obj: 1, src ofs: 0x25bd5, dst obj: 3, dst ofs: 0x6a71
   25bd9:	e8 b2 4a 04 00       	call   play_wav
   25bde:	b8 9f 00 00 00       	mov    eax,0x9f
   25be3:	e8 b8 45 00 00       	call   GetDlgFileString
   25be8:	e8 23 53 04 00       	call   get_response
   25bed:	83 f8 01             	cmp    eax,0x1
   25bf0:	75 4d                	jne    talk_to_EDNA_FITZPATRICK_branch_19
   25bf2:	ba 76 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_38                               ; fixup: num: 5739, src obj: 1, src ofs: 0x25bf3, dst obj: 3, dst ofs: 0x6a76
   25bf7:	89 c3                	mov    ebx,eax
   25bf9:	b8 a1 3a 00 00       	mov    eax,0x3aa1
   25bfe:	e8 8d 4a 04 00       	call   play_wav
   25c03:	ba 7b 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_39                               ; fixup: num: 5738, src obj: 1, src ofs: 0x25c04, dst obj: 3, dst ofs: 0x6a7b
   25c08:	b8 a6 3a 00 00       	mov    eax,0x3aa6
   25c0d:	31 db                	xor    ebx,ebx
   25c0f:	e8 7c 4a 04 00       	call   play_wav
   25c14:	ba 7e 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_40                               ; fixup: num: 5737, src obj: 1, src ofs: 0x25c15, dst obj: 3, dst ofs: 0x6a7e
   25c19:	b8 aa 3a 00 00       	mov    eax,0x3aaa
   25c1e:	31 db                	xor    ebx,ebx
   25c20:	e8 6b 4a 04 00       	call   play_wav
   25c25:	ba 01 00 00 00       	mov    edx,0x1
   25c2a:	31 c0                	xor    eax,eax
   25c2c:	e8 af 27 00 00       	call   IF_SOMEONE_ELSE_HAS_SAID_THAT
   25c31:	31 db                	xor    ebx,ebx
   25c33:	ba 83 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_41                               ; fixup: num: 5736, src obj: 1, src ofs: 0x25c34, dst obj: 3, dst ofs: 0x6a83
   25c38:	b8 ae 3a 00 00       	mov    eax,0x3aae
   25c3d:	eb 44                	jmp    talk_to_EDNA_FITZPATRICK_branch_20
talk_to_EDNA_FITZPATRICK_branch_19:
   25c3f:	83 f8 02             	cmp    eax,0x2
   25c42:	75 44                	jne    talk_to_EDNA_FITZPATRICK_branch_21
   25c44:	ba 86 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_42                               ; fixup: num: 5735, src obj: 1, src ofs: 0x25c45, dst obj: 3, dst ofs: 0x6a86
   25c49:	b8 b2 3a 00 00       	mov    eax,0x3ab2
   25c4e:	31 db                	xor    ebx,ebx
   25c50:	e8 3b 4a 04 00       	call   play_wav
   25c55:	ba 8b 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_43                               ; fixup: num: 5734, src obj: 1, src ofs: 0x25c56, dst obj: 3, dst ofs: 0x6a8b
   25c5a:	b8 b7 3a 00 00       	mov    eax,0x3ab7
   25c5f:	31 db                	xor    ebx,ebx
   25c61:	e8 2a 4a 04 00       	call   play_wav
   25c66:	ba 8e 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_44                               ; fixup: num: 5733, src obj: 1, src ofs: 0x25c67, dst obj: 3, dst ofs: 0x6a8e
   25c6b:	b8 bb 3a 00 00       	mov    eax,0x3abb
   25c70:	31 db                	xor    ebx,ebx
   25c72:	e8 19 4a 04 00       	call   play_wav
   25c77:	ba 93 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_45                               ; fixup: num: 5732, src obj: 1, src ofs: 0x25c78, dst obj: 3, dst ofs: 0x6a93
   25c7c:	b8 c2 3a 00 00       	mov    eax,0x3ac2
   25c81:	31 db                	xor    ebx,ebx
talk_to_EDNA_FITZPATRICK_branch_20:
   25c83:	e8 08 4a 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_21:
   25c88:	bb 02 00 00 00       	mov    ebx,0x2
   25c8d:	ba 96 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_46                               ; fixup: num: 5748, src obj: 1, src ofs: 0x25c8e, dst obj: 3, dst ofs: 0x6a96
   25c92:	b8 c6 3a 00 00       	mov    eax,0x3ac6
   25c97:	e8 f4 49 04 00       	call   play_wav
   25c9c:	ba 9b 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_47                               ; fixup: num: 5747, src obj: 1, src ofs: 0x25c9d, dst obj: 3, dst ofs: 0x6a9b
   25ca1:	b8 ca 3a 00 00       	mov    eax,0x3aca
   25ca6:	31 db                	xor    ebx,ebx
   25ca8:	e8 e3 49 04 00       	call   play_wav
   25cad:	ba a0 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_48                               ; fixup: num: 5746, src obj: 1, src ofs: 0x25cae, dst obj: 3, dst ofs: 0x6aa0
   25cb2:	b8 cf 3a 00 00       	mov    eax,0x3acf
   25cb7:	31 db                	xor    ebx,ebx
   25cb9:	e8 d2 49 04 00       	call   play_wav
   25cbe:	b8 a0 00 00 00       	mov    eax,0xa0
   25cc3:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 5745, src obj: 1, src ofs: 0x25cc4, dst obj: 3, dst ofs: 0x295c0
   25cc8:	e8 d3 44 00 00       	call   GetDlgFileString
   25ccd:	89 c6                	mov    esi,eax
   25ccf:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_22:
   25cd0:	8a 06                	mov    al,BYTE PTR [esi]
   25cd2:	88 07                	mov    BYTE PTR [edi],al
   25cd4:	3c 00                	cmp    al,0x0
   25cd6:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_23
   25cd8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   25cdb:	83 c6 02             	add    esi,0x2
   25cde:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   25ce1:	83 c7 02             	add    edi,0x2
   25ce4:	3c 00                	cmp    al,0x0
   25ce6:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_22
talk_to_EDNA_FITZPATRICK_branch_23:
   25ce8:	5f                   	pop    edi
   25ce9:	e9 64 03 00 00       	jmp    talk_to_EDNA_FITZPATRICK_branch_43
talk_to_EDNA_FITZPATRICK_branch_24:
   25cee:	b8 a5 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_49                               ; fixup: num: 5744, src obj: 1, src ofs: 0x25cef, dst obj: 3, dst ofs: 0x6aa5
   25cf3:	e8 98 6a 04 00       	call   check_script_flag
   25cf8:	84 c0                	test   al,al
   25cfa:	75 13                	jne    talk_to_EDNA_FITZPATRICK_branch_25
   25cfc:	ba b4 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_50                               ; fixup: num: 5743, src obj: 1, src ofs: 0x25cfd, dst obj: 3, dst ofs: 0x6ab4
   25d01:	b8 f8 3b 00 00       	mov    eax,0x3bf8
   25d06:	31 db                	xor    ebx,ebx
   25d08:	e8 83 49 04 00       	call   play_wav
   25d0d:	eb 1d                	jmp    talk_to_EDNA_FITZPATRICK_branch_26
talk_to_EDNA_FITZPATRICK_branch_25:
   25d0f:	ba b9 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_51                               ; fixup: num: 5742, src obj: 1, src ofs: 0x25d10, dst obj: 3, dst ofs: 0x6ab9
   25d14:	b8 ff 3b 00 00       	mov    eax,0x3bff
   25d19:	31 db                	xor    ebx,ebx
   25d1b:	e8 70 49 04 00       	call   play_wav
   25d20:	ba 01 00 00 00       	mov    edx,0x1
   25d25:	31 c0                	xor    eax,eax
   25d27:	e8 24 25 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
talk_to_EDNA_FITZPATRICK_branch_26:
   25d2c:	b8 be 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_52                               ; fixup: num: 5758, src obj: 1, src ofs: 0x25d2d, dst obj: 3, dst ofs: 0x6abe
   25d31:	e8 5a 6a 04 00       	call   check_script_flag
   25d36:	84 c0                	test   al,al
   25d38:	0f 84 b1 00 00 00    	je     talk_to_EDNA_FITZPATRICK_branch_30
   25d3e:	8b 1d 30 2e 02 00    	mov    ebx,DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_3           ; fixup: num: 5757, src obj: 1, src ofs: 0x25d40, dst obj: 3, dst ofs: 0x22e30
   25d44:	85 db                	test   ebx,ebx
   25d46:	0f 85 a3 00 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_30
   25d4c:	b9 01 00 00 00       	mov    ecx,0x1
   25d51:	b8 c4 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_53                               ; fixup: num: 5756, src obj: 1, src ofs: 0x25d52, dst obj: 3, dst ofs: 0x6ac4
   25d56:	89 0d 30 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_3,ecx           ; fixup: num: 5755, src obj: 1, src ofs: 0x25d58, dst obj: 3, dst ofs: 0x22e30
   25d5c:	e8 2f 6a 04 00       	call   check_script_flag
   25d61:	84 c0                	test   al,al
   25d63:	74 68                	je     talk_to_EDNA_FITZPATRICK_branch_28
   25d65:	ba d6 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_54                               ; fixup: num: 5754, src obj: 1, src ofs: 0x25d66, dst obj: 3, dst ofs: 0x6ad6
   25d6a:	b8 17 3c 00 00       	mov    eax,0x3c17
   25d6f:	e8 1c 49 04 00       	call   play_wav
   25d74:	b8 a1 00 00 00       	mov    eax,0xa1
   25d79:	e8 22 44 00 00       	call   GetDlgFileString
   25d7e:	e8 8d 51 04 00       	call   get_response
   25d83:	39 c8                	cmp    eax,ecx
   25d85:	75 33                	jne    talk_to_EDNA_FITZPATRICK_branch_27
   25d87:	ba db 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_55                               ; fixup: num: 5753, src obj: 1, src ofs: 0x25d88, dst obj: 3, dst ofs: 0x6adb
   25d8c:	b8 23 3c 00 00       	mov    eax,0x3c23
   25d91:	31 db                	xor    ebx,ebx
   25d93:	e8 f8 48 04 00       	call   play_wav
   25d98:	ba e0 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_56                               ; fixup: num: 5752, src obj: 1, src ofs: 0x25d99, dst obj: 3, dst ofs: 0x6ae0
   25d9d:	b8 29 3c 00 00       	mov    eax,0x3c29
   25da2:	31 db                	xor    ebx,ebx
   25da4:	e8 e7 48 04 00       	call   play_wav
   25da9:	bb 03 00 00 00       	mov    ebx,0x3
   25dae:	ba e3 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_57                               ; fixup: num: 5751, src obj: 1, src ofs: 0x25daf, dst obj: 3, dst ofs: 0x6ae3
   25db3:	b8 2e 3c 00 00       	mov    eax,0x3c2e
   25db8:	eb 30                	jmp    talk_to_EDNA_FITZPATRICK_branch_29
talk_to_EDNA_FITZPATRICK_branch_27:
   25dba:	83 f8 02             	cmp    eax,0x2
   25dbd:	75 30                	jne    talk_to_EDNA_FITZPATRICK_branch_30
   25dbf:	ba e8 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_58                               ; fixup: num: 5750, src obj: 1, src ofs: 0x25dc0, dst obj: 3, dst ofs: 0x6ae8
   25dc4:	b8 33 3c 00 00       	mov    eax,0x3c33
   25dc9:	31 db                	xor    ebx,ebx
   25dcb:	eb 1d                	jmp    talk_to_EDNA_FITZPATRICK_branch_29
talk_to_EDNA_FITZPATRICK_branch_28:
   25dcd:	b8 ed 6a 00 00       	mov    eax,@obj3:edna_cpp_variable_59                               ; fixup: num: 5749, src obj: 1, src ofs: 0x25dce, dst obj: 3, dst ofs: 0x6aed
   25dd2:	e8 b9 69 04 00       	call   check_script_flag
   25dd7:	84 c0                	test   al,al
   25dd9:	74 14                	je     talk_to_EDNA_FITZPATRICK_branch_30
   25ddb:	bb 03 00 00 00       	mov    ebx,0x3
   25de0:	ba fe 6a 00 00       	mov    edx,@obj3:edna_cpp_variable_60                               ; fixup: num: 5770, src obj: 1, src ofs: 0x25de1, dst obj: 3, dst ofs: 0x6afe
   25de5:	b8 3a 3c 00 00       	mov    eax,0x3c3a
talk_to_EDNA_FITZPATRICK_branch_29:
   25dea:	e8 a1 48 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_30:
   25def:	b8 03 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_61                               ; fixup: num: 5769, src obj: 1, src ofs: 0x25df0, dst obj: 3, dst ofs: 0x6b03
   25df4:	e8 97 69 04 00       	call   check_script_flag
   25df9:	84 c0                	test   al,al
   25dfb:	74 25                	je     talk_to_EDNA_FITZPATRICK_branch_31
   25dfd:	83 3d 34 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_4,0x0           ; fixup: num: 5768, src obj: 1, src ofs: 0x25dff, dst obj: 3, dst ofs: 0x22e34
   25e04:	75 1c                	jne    talk_to_EDNA_FITZPATRICK_branch_31
   25e06:	bf 01 00 00 00       	mov    edi,0x1
   25e0b:	ba 14 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_62                               ; fixup: num: 5767, src obj: 1, src ofs: 0x25e0c, dst obj: 3, dst ofs: 0x6b14
   25e10:	b8 45 3c 00 00       	mov    eax,0x3c45
   25e15:	31 db                	xor    ebx,ebx
   25e17:	89 3d 34 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_4,edi           ; fixup: num: 5766, src obj: 1, src ofs: 0x25e19, dst obj: 3, dst ofs: 0x22e34
   25e1d:	e8 6e 48 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_31:
   25e22:	b8 19 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_63                               ; fixup: num: 5765, src obj: 1, src ofs: 0x25e23, dst obj: 3, dst ofs: 0x6b19
   25e27:	e8 64 69 04 00       	call   check_script_flag
   25e2c:	84 c0                	test   al,al
   25e2e:	74 4c                	je     talk_to_EDNA_FITZPATRICK_branch_32
   25e30:	83 3d 38 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_5,0x0           ; fixup: num: 5764, src obj: 1, src ofs: 0x25e32, dst obj: 3, dst ofs: 0x22e38
   25e37:	75 43                	jne    talk_to_EDNA_FITZPATRICK_branch_32
   25e39:	b8 01 00 00 00       	mov    eax,0x1
   25e3e:	bb 03 00 00 00       	mov    ebx,0x3
   25e43:	ba 2c 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_64                               ; fixup: num: 5763, src obj: 1, src ofs: 0x25e44, dst obj: 3, dst ofs: 0x6b2c
   25e48:	a3 38 2e 02 00       	mov    ds:@obj3:EDNA_FITZPATRICK_variable_5,eax                     ; fixup: num: 5762, src obj: 1, src ofs: 0x25e49, dst obj: 3, dst ofs: 0x22e38
   25e4d:	b8 4e 3c 00 00       	mov    eax,0x3c4e
   25e52:	e8 39 48 04 00       	call   play_wav
   25e57:	ba 31 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_65                               ; fixup: num: 5761, src obj: 1, src ofs: 0x25e58, dst obj: 3, dst ofs: 0x6b31
   25e5c:	b8 54 3c 00 00       	mov    eax,0x3c54
   25e61:	31 db                	xor    ebx,ebx
   25e63:	e8 28 48 04 00       	call   play_wav
   25e68:	bb 02 00 00 00       	mov    ebx,0x2
   25e6d:	ba 34 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_66                               ; fixup: num: 5760, src obj: 1, src ofs: 0x25e6e, dst obj: 3, dst ofs: 0x6b34
   25e72:	b8 5a 3c 00 00       	mov    eax,0x3c5a
   25e77:	e8 14 48 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_32:
   25e7c:	b8 39 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_67                               ; fixup: num: 5759, src obj: 1, src ofs: 0x25e7d, dst obj: 3, dst ofs: 0x6b39
   25e81:	e8 0a 69 04 00       	call   check_script_flag
   25e86:	84 c0                	test   al,al
   25e88:	74 25                	je     talk_to_EDNA_FITZPATRICK_branch_33
   25e8a:	83 3d 3c 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_6,0x0           ; fixup: num: 5696, src obj: 1, src ofs: 0x25e8c, dst obj: 3, dst ofs: 0x22e3c
   25e91:	75 1c                	jne    talk_to_EDNA_FITZPATRICK_branch_33
   25e93:	bb 01 00 00 00       	mov    ebx,0x1
   25e98:	ba 4d 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_68                               ; fixup: num: 5695, src obj: 1, src ofs: 0x25e99, dst obj: 3, dst ofs: 0x6b4d
   25e9d:	b8 62 3c 00 00       	mov    eax,0x3c62
   25ea2:	89 1d 3c 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_6,ebx           ; fixup: num: 5694, src obj: 1, src ofs: 0x25ea4, dst obj: 3, dst ofs: 0x22e3c
   25ea8:	31 db                	xor    ebx,ebx
   25eaa:	e8 e1 47 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_33:
   25eaf:	b8 52 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_69                               ; fixup: num: 5693, src obj: 1, src ofs: 0x25eb0, dst obj: 3, dst ofs: 0x6b52
   25eb4:	e8 d7 68 04 00       	call   check_script_flag
   25eb9:	84 c0                	test   al,al
   25ebb:	74 28                	je     talk_to_EDNA_FITZPATRICK_branch_34
   25ebd:	83 3d 40 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_7,0x0           ; fixup: num: 5692, src obj: 1, src ofs: 0x25ebf, dst obj: 3, dst ofs: 0x22e40
   25ec4:	75 1f                	jne    talk_to_EDNA_FITZPATRICK_branch_34
   25ec6:	be 01 00 00 00       	mov    esi,0x1
   25ecb:	bb 03 00 00 00       	mov    ebx,0x3
   25ed0:	ba 62 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_70                               ; fixup: num: 5691, src obj: 1, src ofs: 0x25ed1, dst obj: 3, dst ofs: 0x6b62
   25ed5:	b8 92 3c 00 00       	mov    eax,0x3c92
   25eda:	89 35 40 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_7,esi           ; fixup: num: 5690, src obj: 1, src ofs: 0x25edc, dst obj: 3, dst ofs: 0x22e40
   25ee0:	e8 ab 47 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_34:
   25ee5:	b8 67 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_71                               ; fixup: num: 5689, src obj: 1, src ofs: 0x25ee6, dst obj: 3, dst ofs: 0x6b67
   25eea:	e8 a1 68 04 00       	call   check_script_flag
   25eef:	84 c0                	test   al,al
   25ef1:	74 28                	je     talk_to_EDNA_FITZPATRICK_branch_35
   25ef3:	83 3d 44 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_8,0x0           ; fixup: num: 5688, src obj: 1, src ofs: 0x25ef5, dst obj: 3, dst ofs: 0x22e44
   25efa:	75 1f                	jne    talk_to_EDNA_FITZPATRICK_branch_35
   25efc:	bd 01 00 00 00       	mov    ebp,0x1
   25f01:	bb 03 00 00 00       	mov    ebx,0x3
   25f06:	ba 79 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_72                               ; fixup: num: 5774, src obj: 1, src ofs: 0x25f07, dst obj: 3, dst ofs: 0x6b79
   25f0b:	b8 a2 3c 00 00       	mov    eax,0x3ca2
   25f10:	89 2d 44 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_8,ebp           ; fixup: num: 5773, src obj: 1, src ofs: 0x25f12, dst obj: 3, dst ofs: 0x22e44
   25f16:	e8 75 47 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_35:
   25f1b:	b8 7e 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_73                               ; fixup: num: 5772, src obj: 1, src ofs: 0x25f1c, dst obj: 3, dst ofs: 0x6b7e
   25f20:	e8 6b 68 04 00       	call   check_script_flag
   25f25:	84 c0                	test   al,al
   25f27:	0f 84 25 01 00 00    	je     talk_to_EDNA_FITZPATRICK_branch_43
   25f2d:	83 3d 48 2e 02 00 00 	cmp    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_9,0x0           ; fixup: num: 5771, src obj: 1, src ofs: 0x25f2f, dst obj: 3, dst ofs: 0x22e48
   25f34:	0f 85 18 01 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_43
   25f3a:	ba 01 00 00 00       	mov    edx,0x1
   25f3f:	bb 03 00 00 00       	mov    ebx,0x3
   25f44:	b8 e5 3c 00 00       	mov    eax,0x3ce5
   25f49:	89 15 48 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_9,edx           ; fixup: num: 5704, src obj: 1, src ofs: 0x25f4b, dst obj: 3, dst ofs: 0x22e48
   25f4f:	ba 8f 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_74                               ; fixup: num: 5703, src obj: 1, src ofs: 0x25f50, dst obj: 3, dst ofs: 0x6b8f
   25f54:	e8 37 47 04 00       	call   play_wav
   25f59:	b8 a2 00 00 00       	mov    eax,0xa2
   25f5e:	e8 3d 42 00 00       	call   GetDlgFileString
   25f63:	e8 a8 4f 04 00       	call   get_response
   25f68:	83 f8 01             	cmp    eax,0x1
   25f6b:	0f 85 c8 00 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_41
   25f71:	bb 02 00 00 00       	mov    ebx,0x2
   25f76:	ba 94 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_75                               ; fixup: num: 5702, src obj: 1, src ofs: 0x25f77, dst obj: 3, dst ofs: 0x6b94
   25f7b:	b8 f0 3c 00 00       	mov    eax,0x3cf0
   25f80:	e8 0b 47 04 00       	call   play_wav
   25f85:	ba 99 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_76                               ; fixup: num: 5701, src obj: 1, src ofs: 0x25f86, dst obj: 3, dst ofs: 0x6b99
   25f8a:	b8 f5 3c 00 00       	mov    eax,0x3cf5
   25f8f:	31 db                	xor    ebx,ebx
   25f91:	e8 fa 46 04 00       	call   play_wav
   25f96:	bb 02 00 00 00       	mov    ebx,0x2
   25f9b:	ba 9c 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_77                               ; fixup: num: 5700, src obj: 1, src ofs: 0x25f9c, dst obj: 3, dst ofs: 0x6b9c
   25fa0:	b8 f9 3c 00 00       	mov    eax,0x3cf9
   25fa5:	e8 e6 46 04 00       	call   play_wav
   25faa:	a1 28 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK_variable_1                     ; fixup: num: 5699, src obj: 1, src ofs: 0x25fab, dst obj: 3, dst ofs: 0x22e28
   25faf:	85 c0                	test   eax,eax
   25fb1:	75 0e                	jne    talk_to_EDNA_FITZPATRICK_branch_36
   25fb3:	b8 a1 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_78                               ; fixup: num: 5698, src obj: 1, src ofs: 0x25fb4, dst obj: 3, dst ofs: 0x6ba1
   25fb8:	e8 b3 68 04 00       	call   check_inventory
   25fbd:	84 c0                	test   al,al
   25fbf:	74 07                	je     talk_to_EDNA_FITZPATRICK_branch_37
talk_to_EDNA_FITZPATRICK_branch_36:
   25fc1:	b8 a3 00 00 00       	mov    eax,0xa3
   25fc6:	eb 05                	jmp    talk_to_EDNA_FITZPATRICK_branch_38
talk_to_EDNA_FITZPATRICK_branch_37:
   25fc8:	b8 a4 00 00 00       	mov    eax,0xa4
talk_to_EDNA_FITZPATRICK_branch_38:
   25fcd:	e8 ce 41 00 00       	call   GetDlgFileString
   25fd2:	e8 39 4f 04 00       	call   get_response
   25fd7:	89 c2                	mov    edx,eax
   25fd9:	83 fa 01             	cmp    edx,0x1
   25fdc:	75 48                	jne    talk_to_EDNA_FITZPATRICK_branch_40
   25fde:	a1 28 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK_variable_1                     ; fixup: num: 5697, src obj: 1, src ofs: 0x25fdf, dst obj: 3, dst ofs: 0x22e28
   25fe3:	85 c0                	test   eax,eax
   25fe5:	75 0e                	jne    talk_to_EDNA_FITZPATRICK_branch_39
   25fe7:	b8 a9 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_79                               ; fixup: num: 5706, src obj: 1, src ofs: 0x25fe8, dst obj: 3, dst ofs: 0x6ba9
   25fec:	e8 7f 68 04 00       	call   check_inventory
   25ff1:	84 c0                	test   al,al
   25ff3:	74 31                	je     talk_to_EDNA_FITZPATRICK_branch_40
talk_to_EDNA_FITZPATRICK_branch_39:
   25ff5:	bb 03 00 00 00       	mov    ebx,0x3
   25ffa:	ba b1 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_80                               ; fixup: num: 5705, src obj: 1, src ofs: 0x25ffb, dst obj: 3, dst ofs: 0x6bb1
   25fff:	b8 05 3d 00 00       	mov    eax,0x3d05
   26004:	e8 87 46 04 00       	call   play_wav
   26009:	b8 b6 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_81                               ; fixup: num: 6040, src obj: 1, src ofs: 0x2600a, dst obj: 3, dst ofs: 0x6bb6
   2600e:	ba c3 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_82                               ; fixup: num: 6039, src obj: 1, src ofs: 0x2600f, dst obj: 3, dst ofs: 0x6bc3
   26013:	e8 98 68 04 00       	call   add_inventory
   26018:	31 db                	xor    ebx,ebx
   2601a:	b8 cb 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_83                               ; fixup: num: 6038, src obj: 1, src ofs: 0x2601b, dst obj: 3, dst ofs: 0x6bcb
   2601f:	e8 ec ce 02 00       	call   set_object
   26024:	eb 2c                	jmp    talk_to_EDNA_FITZPATRICK_branch_43
talk_to_EDNA_FITZPATRICK_branch_40:
   26026:	83 fa 02             	cmp    edx,0x2
   26029:	75 27                	jne    talk_to_EDNA_FITZPATRICK_branch_43
   2602b:	b8 0a 3d 00 00       	mov    eax,0x3d0a
   26030:	89 d3                	mov    ebx,edx
   26032:	ba cf 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_84                               ; fixup: num: 6037, src obj: 1, src ofs: 0x26033, dst obj: 3, dst ofs: 0x6bcf
   26037:	eb 14                	jmp    talk_to_EDNA_FITZPATRICK_branch_42
talk_to_EDNA_FITZPATRICK_branch_41:
   26039:	83 f8 02             	cmp    eax,0x2
   2603c:	75 14                	jne    talk_to_EDNA_FITZPATRICK_branch_43
   2603e:	bb 03 00 00 00       	mov    ebx,0x3
   26043:	ba d4 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_85                               ; fixup: num: 6036, src obj: 1, src ofs: 0x26044, dst obj: 3, dst ofs: 0x6bd4
   26048:	b8 0e 3d 00 00       	mov    eax,0x3d0e
talk_to_EDNA_FITZPATRICK_branch_42:
   2604d:	e8 3e 46 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_43:
   26052:	be d9 6b 00 00       	mov    esi,@obj3:edna_cpp_variable_86                               ; fixup: num: 6035, src obj: 1, src ofs: 0x26053, dst obj: 3, dst ofs: 0x6bd9
   26057:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 6034, src obj: 1, src ofs: 0x26058, dst obj: 3, dst ofs: 0x294c0
   2605c:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_44:
   2605d:	8a 06                	mov    al,BYTE PTR [esi]
   2605f:	88 07                	mov    BYTE PTR [edi],al
   26061:	3c 00                	cmp    al,0x0
   26063:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_45
   26065:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26068:	83 c6 02             	add    esi,0x2
   2606b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2606e:	83 c7 02             	add    edi,0x2
   26071:	3c 00                	cmp    al,0x0
   26073:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_44
talk_to_EDNA_FITZPATRICK_branch_45:
   26075:	5f                   	pop    edi
   26076:	89 fd                	mov    ebp,edi
   26078:	31 c9                	xor    ecx,ecx
talk_to_EDNA_FITZPATRICK_branch_46:
   2607a:	b8 a5 00 00 00       	mov    eax,0xa5
   2607f:	e8 1c 41 00 00       	call   GetDlgFileString
   26084:	89 c2                	mov    edx,eax
   26086:	89 e8                	mov    eax,ebp
   26088:	e8 cd b3 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2608d:	85 c0                	test   eax,eax
   2608f:	0f 84 a0 05 00 00    	je     talk_to_EDNA_FITZPATRICK_branch_82
   26095:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 6048, src obj: 1, src ofs: 0x26096, dst obj: 3, dst ofs: 0x295c0
   2609a:	e8 a1 59 04 00       	call   show_keywords
   2609f:	b8 a6 00 00 00       	mov    eax,0xa6
   260a4:	e8 f7 40 00 00       	call   GetDlgFileString
   260a9:	89 c2                	mov    edx,eax
   260ab:	89 e8                	mov    eax,ebp
   260ad:	e8 a8 b3 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   260b2:	85 c0                	test   eax,eax
   260b4:	0f 85 df 00 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_53
   260ba:	b8 da 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_87                               ; fixup: num: 6047, src obj: 1, src ofs: 0x260bb, dst obj: 3, dst ofs: 0x6bda
   260bf:	e8 cc 66 04 00       	call   check_script_flag
   260c4:	84 c0                	test   al,al
   260c6:	75 29                	jne    talk_to_EDNA_FITZPATRICK_branch_47
   260c8:	b8 e9 6b 00 00       	mov    eax,@obj3:edna_cpp_variable_88                               ; fixup: num: 6046, src obj: 1, src ofs: 0x260c9, dst obj: 3, dst ofs: 0x6be9
   260cd:	e8 be 66 04 00       	call   check_script_flag
   260d2:	84 c0                	test   al,al
   260d4:	75 1b                	jne    talk_to_EDNA_FITZPATRICK_branch_47
   260d6:	bb 01 00 00 00       	mov    ebx,0x1
   260db:	ba fa 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_89                               ; fixup: num: 6045, src obj: 1, src ofs: 0x260dc, dst obj: 3, dst ofs: 0x6bfa
   260e0:	b8 d9 3a 00 00       	mov    eax,0x3ad9
   260e5:	e8 a6 45 04 00       	call   play_wav
   260ea:	e8 a1 28 00 00       	call   KARIN_PLAYING_ON_THE_FLOOR
   260ef:	eb 89                	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_47:
   260f1:	bb 03 00 00 00       	mov    ebx,0x3
   260f6:	ba ff 6b 00 00       	mov    edx,@obj3:edna_cpp_variable_90                               ; fixup: num: 6044, src obj: 1, src ofs: 0x260f7, dst obj: 3, dst ofs: 0x6bff
   260fb:	b8 e3 3a 00 00       	mov    eax,0x3ae3
   26100:	e8 8b 45 04 00       	call   play_wav
   26105:	b8 04 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_91                               ; fixup: num: 6043, src obj: 1, src ofs: 0x26106, dst obj: 3, dst ofs: 0x6c04
   2610a:	e8 81 66 04 00       	call   check_script_flag
   2610f:	84 c0                	test   al,al
   26111:	0f 85 63 ff ff ff    	jne    talk_to_EDNA_FITZPATRICK_branch_46
   26117:	bb 03 00 00 00       	mov    ebx,0x3
   2611c:	ba 15 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_92                               ; fixup: num: 6042, src obj: 1, src ofs: 0x2611d, dst obj: 3, dst ofs: 0x6c15
   26121:	b8 e9 3a 00 00       	mov    eax,0x3ae9
   26126:	e8 65 45 04 00       	call   play_wav
   2612b:	b8 1a 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_93                               ; fixup: num: 6041, src obj: 1, src ofs: 0x2612c, dst obj: 3, dst ofs: 0x6c1a
   26130:	e8 5b 66 04 00       	call   check_script_flag
   26135:	84 c0                	test   al,al
   26137:	75 30                	jne    talk_to_EDNA_FITZPATRICK_branch_50
   26139:	b8 aa 00 00 00       	mov    eax,0xaa
   2613e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6052, src obj: 1, src ofs: 0x2613f, dst obj: 3, dst ofs: 0x295c0
   26143:	e8 58 40 00 00       	call   GetDlgFileString
   26148:	89 c6                	mov    esi,eax
   2614a:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_48:
   2614b:	8a 06                	mov    al,BYTE PTR [esi]
   2614d:	88 07                	mov    BYTE PTR [edi],al
   2614f:	3c 00                	cmp    al,0x0
   26151:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_49
   26153:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26156:	83 c6 02             	add    esi,0x2
   26159:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2615c:	83 c7 02             	add    edi,0x2
   2615f:	3c 00                	cmp    al,0x0
   26161:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_48
talk_to_EDNA_FITZPATRICK_branch_49:
   26163:	5f                   	pop    edi
   26164:	e9 11 ff ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_50:
   26169:	b8 ab 00 00 00       	mov    eax,0xab
   2616e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6051, src obj: 1, src ofs: 0x2616f, dst obj: 3, dst ofs: 0x295c0
   26173:	e8 28 40 00 00       	call   GetDlgFileString
   26178:	89 c6                	mov    esi,eax
   2617a:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_51:
   2617b:	8a 06                	mov    al,BYTE PTR [esi]
   2617d:	88 07                	mov    BYTE PTR [edi],al
   2617f:	3c 00                	cmp    al,0x0
   26181:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_52
   26183:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26186:	83 c6 02             	add    esi,0x2
   26189:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2618c:	83 c7 02             	add    edi,0x2
   2618f:	3c 00                	cmp    al,0x0
   26191:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_51
talk_to_EDNA_FITZPATRICK_branch_52:
   26193:	5f                   	pop    edi
   26194:	e9 e1 fe ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_53:
   26199:	b8 ac 00 00 00       	mov    eax,0xac
   2619e:	e8 fd 3f 00 00       	call   GetDlgFileString
   261a3:	89 c2                	mov    edx,eax
   261a5:	89 e8                	mov    eax,ebp
   261a7:	e8 ae b2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   261ac:	85 c0                	test   eax,eax
   261ae:	74 1b                	je     talk_to_EDNA_FITZPATRICK_branch_54
   261b0:	b8 ad 00 00 00       	mov    eax,0xad
   261b5:	e8 e6 3f 00 00       	call   GetDlgFileString
   261ba:	89 c2                	mov    edx,eax
   261bc:	89 e8                	mov    eax,ebp
   261be:	e8 97 b2 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   261c3:	85 c0                	test   eax,eax
   261c5:	0f 85 90 00 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_60
talk_to_EDNA_FITZPATRICK_branch_54:
   261cb:	ba 2b 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_94                               ; fixup: num: 6050, src obj: 1, src ofs: 0x261cc, dst obj: 3, dst ofs: 0x6c2b
   261d0:	b8 f6 3a 00 00       	mov    eax,0x3af6
   261d5:	89 cb                	mov    ebx,ecx
   261d7:	e8 b4 44 04 00       	call   play_wav
   261dc:	ba 30 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_95                               ; fixup: num: 6049, src obj: 1, src ofs: 0x261dd, dst obj: 3, dst ofs: 0x6c30
   261e1:	b8 f8 3a 00 00       	mov    eax,0x3af8
   261e6:	89 cb                	mov    ebx,ecx
   261e8:	e8 a3 44 04 00       	call   play_wav
   261ed:	b8 35 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_96                               ; fixup: num: 6058, src obj: 1, src ofs: 0x261ee, dst obj: 3, dst ofs: 0x6c35
   261f2:	e8 99 65 04 00       	call   check_script_flag
   261f7:	84 c0                	test   al,al
   261f9:	75 30                	jne    talk_to_EDNA_FITZPATRICK_branch_57
   261fb:	b8 ae 00 00 00       	mov    eax,0xae
   26200:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6057, src obj: 1, src ofs: 0x26201, dst obj: 3, dst ofs: 0x295c0
   26205:	e8 96 3f 00 00       	call   GetDlgFileString
   2620a:	89 c6                	mov    esi,eax
   2620c:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_55:
   2620d:	8a 06                	mov    al,BYTE PTR [esi]
   2620f:	88 07                	mov    BYTE PTR [edi],al
   26211:	3c 00                	cmp    al,0x0
   26213:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_56
   26215:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26218:	83 c6 02             	add    esi,0x2
   2621b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2621e:	83 c7 02             	add    edi,0x2
   26221:	3c 00                	cmp    al,0x0
   26223:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_55
talk_to_EDNA_FITZPATRICK_branch_56:
   26225:	5f                   	pop    edi
   26226:	e9 4f fe ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_57:
   2622b:	b8 af 00 00 00       	mov    eax,0xaf
   26230:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6056, src obj: 1, src ofs: 0x26231, dst obj: 3, dst ofs: 0x295c0
   26235:	e8 66 3f 00 00       	call   GetDlgFileString
   2623a:	89 c6                	mov    esi,eax
   2623c:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_58:
   2623d:	8a 06                	mov    al,BYTE PTR [esi]
   2623f:	88 07                	mov    BYTE PTR [edi],al
   26241:	3c 00                	cmp    al,0x0
   26243:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_59
   26245:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26248:	83 c6 02             	add    esi,0x2
   2624b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2624e:	83 c7 02             	add    edi,0x2
   26251:	3c 00                	cmp    al,0x0
   26253:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_58
talk_to_EDNA_FITZPATRICK_branch_59:
   26255:	5f                   	pop    edi
   26256:	e9 1f fe ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_60:
   2625b:	b8 b0 00 00 00       	mov    eax,0xb0
   26260:	e8 3b 3f 00 00       	call   GetDlgFileString
   26265:	89 c2                	mov    edx,eax
   26267:	89 e8                	mov    eax,ebp
   26269:	e8 ec b1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2626e:	85 c0                	test   eax,eax
   26270:	75 60                	jne    talk_to_EDNA_FITZPATRICK_branch_63
   26272:	b8 46 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_97                               ; fixup: num: 6055, src obj: 1, src ofs: 0x26273, dst obj: 3, dst ofs: 0x6c46
   26277:	e8 14 65 04 00       	call   check_script_flag
   2627c:	84 c0                	test   al,al
   2627e:	75 52                	jne    talk_to_EDNA_FITZPATRICK_branch_63
   26280:	ba 57 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_98                               ; fixup: num: 6054, src obj: 1, src ofs: 0x26281, dst obj: 3, dst ofs: 0x6c57
   26285:	b8 03 3b 00 00       	mov    eax,0x3b03
   2628a:	89 cb                	mov    ebx,ecx
   2628c:	e8 ff 43 04 00       	call   play_wav
   26291:	ba 5c 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_99                               ; fixup: num: 6053, src obj: 1, src ofs: 0x26292, dst obj: 3, dst ofs: 0x6c5c
   26296:	b8 07 3b 00 00       	mov    eax,0x3b07
   2629b:	89 cb                	mov    ebx,ecx
   2629d:	e8 ee 43 04 00       	call   play_wav
   262a2:	b8 b1 00 00 00       	mov    eax,0xb1
   262a7:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6062, src obj: 1, src ofs: 0x262a8, dst obj: 3, dst ofs: 0x295c0
   262ac:	e8 ef 3e 00 00       	call   GetDlgFileString
   262b1:	89 c6                	mov    esi,eax
   262b3:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_61:
   262b4:	8a 06                	mov    al,BYTE PTR [esi]
   262b6:	88 07                	mov    BYTE PTR [edi],al
   262b8:	3c 00                	cmp    al,0x0
   262ba:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_62
   262bc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   262bf:	83 c6 02             	add    esi,0x2
   262c2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   262c5:	83 c7 02             	add    edi,0x2
   262c8:	3c 00                	cmp    al,0x0
   262ca:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_61
talk_to_EDNA_FITZPATRICK_branch_62:
   262cc:	5f                   	pop    edi
   262cd:	e9 a8 fd ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_63:
   262d2:	b8 b2 00 00 00       	mov    eax,0xb2
   262d7:	e8 c4 3e 00 00       	call   GetDlgFileString
   262dc:	89 c2                	mov    edx,eax
   262de:	89 e8                	mov    eax,ebp
   262e0:	e8 75 b1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   262e5:	85 c0                	test   eax,eax
   262e7:	75 3b                	jne    talk_to_EDNA_FITZPATRICK_branch_64
   262e9:	bb 01 00 00 00       	mov    ebx,0x1
   262ee:	ba 61 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_100                              ; fixup: num: 6061, src obj: 1, src ofs: 0x262ef, dst obj: 3, dst ofs: 0x6c61
   262f3:	b8 15 3b 00 00       	mov    eax,0x3b15
   262f8:	e8 93 43 04 00       	call   play_wav
   262fd:	ba 66 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_101                              ; fixup: num: 6060, src obj: 1, src ofs: 0x262fe, dst obj: 3, dst ofs: 0x6c66
   26302:	b8 1a 3b 00 00       	mov    eax,0x3b1a
   26307:	89 cb                	mov    ebx,ecx
   26309:	e8 82 43 04 00       	call   play_wav
   2630e:	ba 69 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_102                              ; fixup: num: 6059, src obj: 1, src ofs: 0x2630f, dst obj: 3, dst ofs: 0x6c69
   26313:	b8 1e 3b 00 00       	mov    eax,0x3b1e
   26318:	89 cb                	mov    ebx,ecx
   2631a:	e8 71 43 04 00       	call   play_wav
   2631f:	e9 56 fd ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_64:
   26324:	b8 b6 00 00 00       	mov    eax,0xb6
   26329:	e8 72 3e 00 00       	call   GetDlgFileString
   2632e:	89 c2                	mov    edx,eax
   26330:	89 e8                	mov    eax,ebp
   26332:	e8 23 b1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   26337:	85 c0                	test   eax,eax
   26339:	74 1b                	je     talk_to_EDNA_FITZPATRICK_branch_65
   2633b:	b8 b7 00 00 00       	mov    eax,0xb7
   26340:	e8 5b 3e 00 00       	call   GetDlgFileString
   26345:	89 c2                	mov    edx,eax
   26347:	89 e8                	mov    eax,ebp
   26349:	e8 0c b1 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2634e:	85 c0                	test   eax,eax
   26350:	0f 85 13 01 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_71
talk_to_EDNA_FITZPATRICK_branch_65:
   26356:	ba 01 00 00 00       	mov    edx,0x1
   2635b:	89 c8                	mov    eax,ecx
   2635d:	e8 5e 21 00 00       	call   ANYONE_ELSE_HAS_SPOKEN_TO_PC_ABOUT_LODGE
   26362:	89 cb                	mov    ebx,ecx
   26364:	ba 6e 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_103                              ; fixup: num: 6071, src obj: 1, src ofs: 0x26365, dst obj: 3, dst ofs: 0x6c6e
   26369:	b8 57 3b 00 00       	mov    eax,0x3b57
   2636e:	e8 1d 43 04 00       	call   play_wav
   26373:	ba 73 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_104                              ; fixup: num: 6070, src obj: 1, src ofs: 0x26374, dst obj: 3, dst ofs: 0x6c73
   26378:	b8 5d 3b 00 00       	mov    eax,0x3b5d
   2637d:	89 cb                	mov    ebx,ecx
   2637f:	e8 0c 43 04 00       	call   play_wav
   26384:	ba 76 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_105                              ; fixup: num: 6069, src obj: 1, src ofs: 0x26385, dst obj: 3, dst ofs: 0x6c76
   26389:	b8 61 3b 00 00       	mov    eax,0x3b61
   2638e:	89 cb                	mov    ebx,ecx
   26390:	e8 fb 42 04 00       	call   play_wav
   26395:	ba 7b 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_106                              ; fixup: num: 6068, src obj: 1, src ofs: 0x26396, dst obj: 3, dst ofs: 0x6c7b
   2639a:	b8 62 3b 00 00       	mov    eax,0x3b62
   2639f:	89 cb                	mov    ebx,ecx
   263a1:	e8 ea 42 04 00       	call   play_wav
   263a6:	ba 80 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_107                              ; fixup: num: 6067, src obj: 1, src ofs: 0x263a7, dst obj: 3, dst ofs: 0x6c80
   263ab:	b8 63 3b 00 00       	mov    eax,0x3b63
   263b0:	89 cb                	mov    ebx,ecx
   263b2:	e8 d9 42 04 00       	call   play_wav
   263b7:	ba 85 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_108                              ; fixup: num: 6066, src obj: 1, src ofs: 0x263b8, dst obj: 3, dst ofs: 0x6c85
   263bc:	b8 6c 3b 00 00       	mov    eax,0x3b6c
   263c1:	89 cb                	mov    ebx,ecx
   263c3:	e8 c8 42 04 00       	call   play_wav
   263c8:	ba 88 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_109                              ; fixup: num: 6065, src obj: 1, src ofs: 0x263c9, dst obj: 3, dst ofs: 0x6c88
   263cd:	b8 70 3b 00 00       	mov    eax,0x3b70
   263d2:	89 cb                	mov    ebx,ecx
   263d4:	e8 b7 42 04 00       	call   play_wav
   263d9:	ba 8d 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_110                              ; fixup: num: 6064, src obj: 1, src ofs: 0x263da, dst obj: 3, dst ofs: 0x6c8d
   263de:	b8 75 3b 00 00       	mov    eax,0x3b75
   263e3:	89 cb                	mov    ebx,ecx
   263e5:	e8 a6 42 04 00       	call   play_wav
   263ea:	ba 90 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_111                              ; fixup: num: 6063, src obj: 1, src ofs: 0x263eb, dst obj: 3, dst ofs: 0x6c90
   263ef:	b8 79 3b 00 00       	mov    eax,0x3b79
   263f4:	89 cb                	mov    ebx,ecx
   263f6:	e8 95 42 04 00       	call   play_wav
   263fb:	b8 95 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_112                              ; fixup: num: 6076, src obj: 1, src ofs: 0x263fc, dst obj: 3, dst ofs: 0x6c95
   26400:	e8 8b 63 04 00       	call   check_script_flag
   26405:	84 c0                	test   al,al
   26407:	75 30                	jne    talk_to_EDNA_FITZPATRICK_branch_68
   26409:	b8 b8 00 00 00       	mov    eax,0xb8
   2640e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6075, src obj: 1, src ofs: 0x2640f, dst obj: 3, dst ofs: 0x295c0
   26413:	e8 88 3d 00 00       	call   GetDlgFileString
   26418:	89 c6                	mov    esi,eax
   2641a:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_66:
   2641b:	8a 06                	mov    al,BYTE PTR [esi]
   2641d:	88 07                	mov    BYTE PTR [edi],al
   2641f:	3c 00                	cmp    al,0x0
   26421:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_67
   26423:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26426:	83 c6 02             	add    esi,0x2
   26429:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2642c:	83 c7 02             	add    edi,0x2
   2642f:	3c 00                	cmp    al,0x0
   26431:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_66
talk_to_EDNA_FITZPATRICK_branch_67:
   26433:	5f                   	pop    edi
   26434:	e9 41 fc ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_68:
   26439:	b8 b9 00 00 00       	mov    eax,0xb9
   2643e:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6074, src obj: 1, src ofs: 0x2643f, dst obj: 3, dst ofs: 0x295c0
   26443:	e8 58 3d 00 00       	call   GetDlgFileString
   26448:	89 c6                	mov    esi,eax
   2644a:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_69:
   2644b:	8a 06                	mov    al,BYTE PTR [esi]
   2644d:	88 07                	mov    BYTE PTR [edi],al
   2644f:	3c 00                	cmp    al,0x0
   26451:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_70
   26453:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26456:	83 c6 02             	add    esi,0x2
   26459:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   2645c:	83 c7 02             	add    edi,0x2
   2645f:	3c 00                	cmp    al,0x0
   26461:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_69
talk_to_EDNA_FITZPATRICK_branch_70:
   26463:	5f                   	pop    edi
   26464:	e9 11 fc ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_71:
   26469:	b8 ba 00 00 00       	mov    eax,0xba
   2646e:	e8 2d 3d 00 00       	call   GetDlgFileString
   26473:	89 c2                	mov    edx,eax
   26475:	89 e8                	mov    eax,ebp
   26477:	e8 de af 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2647c:	85 c0                	test   eax,eax
   2647e:	75 4f                	jne    talk_to_EDNA_FITZPATRICK_branch_74
   26480:	b8 a6 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_113                              ; fixup: num: 6073, src obj: 1, src ofs: 0x26481, dst obj: 3, dst ofs: 0x6ca6
   26485:	e8 06 63 04 00       	call   check_script_flag
   2648a:	84 c0                	test   al,al
   2648c:	75 41                	jne    talk_to_EDNA_FITZPATRICK_branch_74
   2648e:	ba b7 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_114                              ; fixup: num: 6072, src obj: 1, src ofs: 0x2648f, dst obj: 3, dst ofs: 0x6cb7
   26493:	b8 82 3b 00 00       	mov    eax,0x3b82
   26498:	89 cb                	mov    ebx,ecx
   2649a:	e8 f1 41 04 00       	call   play_wav
   2649f:	b8 bb 00 00 00       	mov    eax,0xbb
   264a4:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6081, src obj: 1, src ofs: 0x264a5, dst obj: 3, dst ofs: 0x295c0
   264a9:	e8 f2 3c 00 00       	call   GetDlgFileString
   264ae:	89 c6                	mov    esi,eax
   264b0:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_72:
   264b1:	8a 06                	mov    al,BYTE PTR [esi]
   264b3:	88 07                	mov    BYTE PTR [edi],al
   264b5:	3c 00                	cmp    al,0x0
   264b7:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_73
   264b9:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   264bc:	83 c6 02             	add    esi,0x2
   264bf:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   264c2:	83 c7 02             	add    edi,0x2
   264c5:	3c 00                	cmp    al,0x0
   264c7:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_72
talk_to_EDNA_FITZPATRICK_branch_73:
   264c9:	5f                   	pop    edi
   264ca:	e9 ab fb ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_74:
   264cf:	b8 bc 00 00 00       	mov    eax,0xbc
   264d4:	e8 c7 3c 00 00       	call   GetDlgFileString
   264d9:	89 c2                	mov    edx,eax
   264db:	89 e8                	mov    eax,ebp
   264dd:	e8 78 af 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   264e2:	85 c0                	test   eax,eax
   264e4:	74 2e                	je     talk_to_EDNA_FITZPATRICK_branch_75
   264e6:	b8 bd 00 00 00       	mov    eax,0xbd
   264eb:	e8 b0 3c 00 00       	call   GetDlgFileString
   264f0:	89 c2                	mov    edx,eax
   264f2:	89 e8                	mov    eax,ebp
   264f4:	e8 61 af 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   264f9:	85 c0                	test   eax,eax
   264fb:	74 17                	je     talk_to_EDNA_FITZPATRICK_branch_75
   264fd:	b8 be 00 00 00       	mov    eax,0xbe
   26502:	e8 99 3c 00 00       	call   GetDlgFileString
   26507:	89 c2                	mov    edx,eax
   26509:	89 e8                	mov    eax,ebp
   2650b:	e8 4a af 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   26510:	85 c0                	test   eax,eax
   26512:	75 60                	jne    talk_to_EDNA_FITZPATRICK_branch_78
talk_to_EDNA_FITZPATRICK_branch_75:
   26514:	b8 bc 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_115                              ; fixup: num: 6080, src obj: 1, src ofs: 0x26515, dst obj: 3, dst ofs: 0x6cbc
   26519:	e8 72 62 04 00       	call   check_script_flag
   2651e:	84 c0                	test   al,al
   26520:	75 52                	jne    talk_to_EDNA_FITZPATRICK_branch_78
   26522:	ba cd 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_116                              ; fixup: num: 6079, src obj: 1, src ofs: 0x26523, dst obj: 3, dst ofs: 0x6ccd
   26527:	b8 8e 3b 00 00       	mov    eax,0x3b8e
   2652c:	89 cb                	mov    ebx,ecx
   2652e:	e8 5d 41 04 00       	call   play_wav
   26533:	ba d2 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_117                              ; fixup: num: 6078, src obj: 1, src ofs: 0x26534, dst obj: 3, dst ofs: 0x6cd2
   26538:	b8 8f 3b 00 00       	mov    eax,0x3b8f
   2653d:	89 cb                	mov    ebx,ecx
   2653f:	e8 4c 41 04 00       	call   play_wav
   26544:	b8 bf 00 00 00       	mov    eax,0xbf
   26549:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 6077, src obj: 1, src ofs: 0x2654a, dst obj: 3, dst ofs: 0x295c0
   2654e:	e8 4d 3c 00 00       	call   GetDlgFileString
   26553:	89 c6                	mov    esi,eax
   26555:	57                   	push   edi
talk_to_EDNA_FITZPATRICK_branch_76:
   26556:	8a 06                	mov    al,BYTE PTR [esi]
   26558:	88 07                	mov    BYTE PTR [edi],al
   2655a:	3c 00                	cmp    al,0x0
   2655c:	74 10                	je     talk_to_EDNA_FITZPATRICK_branch_77
   2655e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   26561:	83 c6 02             	add    esi,0x2
   26564:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   26567:	83 c7 02             	add    edi,0x2
   2656a:	3c 00                	cmp    al,0x0
   2656c:	75 e8                	jne    talk_to_EDNA_FITZPATRICK_branch_76
talk_to_EDNA_FITZPATRICK_branch_77:
   2656e:	5f                   	pop    edi
   2656f:	e9 06 fb ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_78:
   26574:	b8 c0 00 00 00       	mov    eax,0xc0
   26579:	e8 22 3c 00 00       	call   GetDlgFileString
   2657e:	89 c2                	mov    edx,eax
   26580:	89 e8                	mov    eax,ebp
   26582:	e8 d3 ae 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   26587:	85 c0                	test   eax,eax
   26589:	0f 85 75 00 00 00    	jne    talk_to_EDNA_FITZPATRICK_branch_81
   2658f:	b8 d7 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_118                              ; fixup: num: 6085, src obj: 1, src ofs: 0x26590, dst obj: 3, dst ofs: 0x6cd7
   26594:	e8 f7 61 04 00       	call   check_script_flag
   26599:	84 c0                	test   al,al
   2659b:	74 67                	je     talk_to_EDNA_FITZPATRICK_branch_81
   2659d:	bb 02 00 00 00       	mov    ebx,0x2
   265a2:	ba e6 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_119                              ; fixup: num: 6084, src obj: 1, src ofs: 0x265a3, dst obj: 3, dst ofs: 0x6ce6
   265a7:	b8 9e 3b 00 00       	mov    eax,0x3b9e
   265ac:	e8 df 40 04 00       	call   play_wav
   265b1:	ba 01 00 00 00       	mov    edx,0x1
   265b6:	31 c0                	xor    eax,eax
   265b8:	e8 93 1c 00 00       	call   PC_HEARD_OF_KARINS_KIDNAPPING
   265bd:	b8 c1 00 00 00       	mov    eax,0xc1
   265c2:	e8 d9 3b 00 00       	call   GetDlgFileString
   265c7:	e8 44 49 04 00       	call   get_response
   265cc:	83 f8 01             	cmp    eax,0x1
   265cf:	75 11                	jne    talk_to_EDNA_FITZPATRICK_branch_79
   265d1:	bb 03 00 00 00       	mov    ebx,0x3
   265d6:	ba eb 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_120                              ; fixup: num: 6083, src obj: 1, src ofs: 0x265d7, dst obj: 3, dst ofs: 0x6ceb
   265db:	b8 ad 3b 00 00       	mov    eax,0x3bad
   265e0:	eb 0f                	jmp    talk_to_EDNA_FITZPATRICK_branch_80
talk_to_EDNA_FITZPATRICK_branch_79:
   265e2:	bb 03 00 00 00       	mov    ebx,0x3
   265e7:	ba f0 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_121                              ; fixup: num: 6082, src obj: 1, src ofs: 0x265e8, dst obj: 3, dst ofs: 0x6cf0
   265ec:	b8 b3 3b 00 00       	mov    eax,0x3bb3
talk_to_EDNA_FITZPATRICK_branch_80:
   265f1:	e8 9a 40 04 00       	call   play_wav
   265f6:	e8 a5 25 00 00       	call   MISSING_KARIN_POSTER_IN_DINER
   265fb:	31 c0                	xor    eax,eax
   265fd:	5d                   	pop    ebp
   265fe:	5f                   	pop    edi
   265ff:	5e                   	pop    esi
   26600:	5a                   	pop    edx
   26601:	59                   	pop    ecx
   26602:	5b                   	pop    ebx
   26603:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_81:
   26604:	b8 c2 00 00 00       	mov    eax,0xc2
   26609:	e8 92 3b 00 00       	call   GetDlgFileString
   2660e:	89 c2                	mov    edx,eax
   26610:	89 e8                	mov    eax,ebp
   26612:	e8 43 ae 04 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   26617:	85 c0                	test   eax,eax
   26619:	0f 84 5b fa ff ff    	je     talk_to_EDNA_FITZPATRICK_branch_46
   2661f:	ba f5 6c 00 00       	mov    edx,@obj3:edna_cpp_variable_122                              ; fixup: num: 6095, src obj: 1, src ofs: 0x26620, dst obj: 3, dst ofs: 0x6cf5
   26624:	b8 c9 3b 00 00       	mov    eax,0x3bc9
   26629:	89 cb                	mov    ebx,ecx
   2662b:	e8 60 40 04 00       	call   play_wav
   26630:	e9 45 fa ff ff       	jmp    talk_to_EDNA_FITZPATRICK_branch_46
talk_to_EDNA_FITZPATRICK_branch_82:
   26635:	b8 fa 6c 00 00       	mov    eax,@obj3:edna_cpp_variable_123                              ; fixup: num: 6094, src obj: 1, src ofs: 0x26636, dst obj: 3, dst ofs: 0x6cfa
   2663a:	e8 51 61 04 00       	call   check_script_flag
   2663f:	84 c0                	test   al,al
   26641:	75 30                	jne    talk_to_EDNA_FITZPATRICK_branch_83
   26643:	b8 09 6d 00 00       	mov    eax,@obj3:edna_cpp_variable_124                              ; fixup: num: 6093, src obj: 1, src ofs: 0x26644, dst obj: 3, dst ofs: 0x6d09
   26648:	e8 43 61 04 00       	call   check_script_flag
   2664d:	84 c0                	test   al,al
   2664f:	75 22                	jne    talk_to_EDNA_FITZPATRICK_branch_83
   26651:	b8 1a 6d 00 00       	mov    eax,@obj3:edna_cpp_variable_125                              ; fixup: num: 6092, src obj: 1, src ofs: 0x26652, dst obj: 3, dst ofs: 0x6d1a
   26656:	e8 35 61 04 00       	call   check_script_flag
   2665b:	84 c0                	test   al,al
   2665d:	75 14                	jne    talk_to_EDNA_FITZPATRICK_branch_83
   2665f:	bb 01 00 00 00       	mov    ebx,0x1
   26664:	ba 2c 6d 00 00       	mov    edx,@obj3:edna_cpp_variable_126                              ; fixup: num: 6091, src obj: 1, src ofs: 0x26665, dst obj: 3, dst ofs: 0x6d2c
   26669:	b8 c3 3b 00 00       	mov    eax,0x3bc3
   2666e:	e8 1d 40 04 00       	call   play_wav
talk_to_EDNA_FITZPATRICK_branch_83:
   26673:	31 c0                	xor    eax,eax
   26675:	5d                   	pop    ebp
   26676:	5f                   	pop    edi
   26677:	5e                   	pop    esi
   26678:	5a                   	pop    edx
   26679:	59                   	pop    ecx
   2667a:	5b                   	pop    ebx
   2667b:	c3                   	ret    
talk_to_EDNA_FITZPATRICK_branch_84:
   2667c:	89 15 24 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK,edx                      ; fixup: num: 6090, src obj: 1, src ofs: 0x2667e, dst obj: 3, dst ofs: 0x22e24
   26682:	a1 24 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK                                ; fixup: num: 6089, src obj: 1, src ofs: 0x26683, dst obj: 3, dst ofs: 0x22e24
   26687:	c3                   	ret    
   26688:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2668e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function                                      -
;  'EDNA_FITZPATRICK_FIRST_CONVERSATION'         -
;-------------------------------------------------
EDNA_FITZPATRICK_FIRST_CONVERSATION:
   26690:	85 c0                	test   eax,eax
   26692:	74 e8                	je     talk_to_EDNA_FITZPATRICK_branch_84
   26694:	a1 24 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK                                ; fixup: num: 6088, src obj: 1, src ofs: 0x26695, dst obj: 3, dst ofs: 0x22e24
   26699:	c3                   	ret    
EDNA_FITZPATRICK_FIRST_CONVERSATION_branch_1:
   2669a:	89 15 28 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_1,edx           ; fixup: num: 6087, src obj: 1, src ofs: 0x2669c, dst obj: 3, dst ofs: 0x22e28
   266a0:	a1 28 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK_variable_1                     ; fixup: num: 6086, src obj: 1, src ofs: 0x266a1, dst obj: 3, dst ofs: 0x22e28
   266a5:	c3                   	ret    
   266a6:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   266ac:	8d 54 22 00          	lea    edx,[edx+eiz*1+0x0]

;-------------------------------------------------
;  Function 'SHOWED_EDNA_PURSE'                  -
;-------------------------------------------------
SHOWED_EDNA_PURSE:
   266b0:	85 c0                	test   eax,eax
   266b2:	74 e6                	je     EDNA_FITZPATRICK_FIRST_CONVERSATION_branch_1
   266b4:	a1 28 2e 02 00       	mov    eax,ds:@obj3:EDNA_FITZPATRICK_variable_1                     ; fixup: num: 5973, src obj: 1, src ofs: 0x266b5, dst obj: 3, dst ofs: 0x22e28
   266b9:	c3                   	ret    
   266ba:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'EDNA_FITZPATRICK_initialize'        -
;-------------------------------------------------
EDNA_FITZPATRICK_initialize:
   266c0:	53                   	push   ebx
   266c1:	52                   	push   edx
   266c2:	ba 01 00 00 00       	mov    edx,0x1
   266c7:	31 db                	xor    ebx,ebx
   266c9:	89 15 24 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK,edx                      ; fixup: num: 5972, src obj: 1, src ofs: 0x266cb, dst obj: 3, dst ofs: 0x22e24
   266cf:	89 1d 28 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_1,ebx           ; fixup: num: 5971, src obj: 1, src ofs: 0x266d1, dst obj: 3, dst ofs: 0x22e28
   266d5:	89 1d 2c 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_2,ebx           ; fixup: num: 5970, src obj: 1, src ofs: 0x266d7, dst obj: 3, dst ofs: 0x22e2c
   266db:	89 1d 30 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_3,ebx           ; fixup: num: 5969, src obj: 1, src ofs: 0x266dd, dst obj: 3, dst ofs: 0x22e30
   266e1:	89 1d 34 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_4,ebx           ; fixup: num: 5968, src obj: 1, src ofs: 0x266e3, dst obj: 3, dst ofs: 0x22e34
   266e7:	89 1d 38 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_5,ebx           ; fixup: num: 6100, src obj: 1, src ofs: 0x266e9, dst obj: 3, dst ofs: 0x22e38
   266ed:	89 1d 3c 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_6,ebx           ; fixup: num: 6099, src obj: 1, src ofs: 0x266ef, dst obj: 3, dst ofs: 0x22e3c
   266f3:	89 1d 40 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_7,ebx           ; fixup: num: 6098, src obj: 1, src ofs: 0x266f5, dst obj: 3, dst ofs: 0x22e40
   266f9:	89 1d 44 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_8,ebx           ; fixup: num: 6097, src obj: 1, src ofs: 0x266fb, dst obj: 3, dst ofs: 0x22e44
   266ff:	89 1d 48 2e 02 00    	mov    DWORD PTR ds:@obj3:EDNA_FITZPATRICK_variable_9,ebx           ; fixup: num: 6096, src obj: 1, src ofs: 0x26701, dst obj: 3, dst ofs: 0x22e48
   26705:	5a                   	pop    edx
   26706:	5b                   	pop    ebx
   26707:	c3                   	ret    
;-------------------------------------------------
;  Bad code 51 (zero after ret):                 -
;-------------------------------------------------
;  26706:	5b                   	pop    ebx
;  26707:	c3                   	ret    
;  26708:	00 00                	add    BYTE PTR [eax],al
;  2670a:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (8 bytes):                       -
;-------------------------------------------------
   26708:	00 00 00 00 00 00 .. 	db     8 dup(0x00)
;-------------------------------------------------
;  End of bad code 51                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 56 (D:\SOURCE\edna.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 56: D:\SOURCE\edna.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
edna_cpp_variable_1:
    68e8:	4b 49 4c 4c 45 44 5f 4b 41 52 49 4e 31 00 	db     "KILLED_KARIN1",0x00
edna_cpp_variable_2:
    68f6:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_3:
    68fb:	4b 49 4c 4c 45 44 5f 4b 41 52 49 4e 31 00 	db     "KILLED_KARIN1",0x00
edna_cpp_variable_4:
    6909:	44 4e 41 5f 53 5f 53 55 49 43 49 44 45 5f 4e 4f 54 45 00 	db     "DNA_S_SUICIDE_NOTE",0x00
edna_cpp_variable_5:
    691c:	44 4e 41 5f 53 5f 53 55 49 43 49 44 45 5f 4e 4f 54 45 00 	db     "DNA_S_SUICIDE_NOTE",0x00
edna_cpp_variable_6:
    692f:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
edna_cpp_variable_7:
    6941:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_8:
    6942:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
edna_cpp_variable_9:
    694a:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_10:
    694f:	52 45 57 41 52 44 5f 4d 4f 4e 45 59 00 	db     "REWARD_MONEY",0x00
edna_cpp_variable_11:
    695c:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
edna_cpp_variable_12:
    6964:	52 41 48 00          	db     "RAH",0x00
edna_cpp_variable_13:
    6968:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
edna_cpp_variable_14:
    6975:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
edna_cpp_variable_15:
    6986:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_16:
    698b:	4c 45 44 47 45 52 00 	db     "LEDGER",0x00
edna_cpp_variable_17:
    6992:	4c 45 44 47 45 52 32 00 	db     "LEDGER2",0x00
edna_cpp_variable_18:
    699a:	48 41 56 45 5f 42 4f 54 48 5f 4c 45 44 47 45 52 53 00 	db     "HAVE_BOTH_LEDGERS",0x00
edna_cpp_variable_19:
    69ac:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_20:
    69b1:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
edna_cpp_variable_21:
    69c9:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_22:
    69ce:	4e 4f 54 45 00       	db     "NOTE",0x00
edna_cpp_variable_23:
    69d3:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
edna_cpp_variable_24:
    69e2:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
edna_cpp_variable_25:
    69ec:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
edna_cpp_variable_26:
    6a00:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_27:
    6a05:	54 56 5f 44 45 45 44 00 	db     "TV_DEED",0x00
edna_cpp_variable_28:
    6a0d:	54 56 5f 44 45 45 44 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "TV_DEED_PHOTOCOPY",0x00
edna_cpp_variable_29:
    6a1f:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_30:
    6a24:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_31:
    6a29:	42 52 49 4e 47 5f 4b 41 52 49 4e 5f 54 4f 5f 53 48 45 52 49 46 46 00 	db     "BRING_KARIN_TO_SHERIFF",0x00
edna_cpp_variable_32:
    6a40:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_33:
    6a45:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6a46:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6a47:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_34:
    6a48:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_35:
    6a4d:	52 45 57 41 52 44 5f 4d 4f 4e 45 59 00 	db     "REWARD_MONEY",0x00
edna_cpp_variable_36:
    6a5a:	42 52 49 4e 47 5f 4b 41 52 49 4e 5f 54 4f 5f 53 48 45 52 49 46 46 00 	db     "BRING_KARIN_TO_SHERIFF",0x00
edna_cpp_variable_37:
    6a71:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_38:
    6a76:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_39:
    6a7b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6a7c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6a7d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_40:
    6a7e:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_41:
    6a83:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6a84:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6a85:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_42:
    6a86:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_43:
    6a8b:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6a8c:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6a8d:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_44:
    6a8e:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_45:
    6a93:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6a94:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6a95:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_46:
    6a96:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_47:
    6a9b:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_48:
    6aa0:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_49:
    6aa5:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
edna_cpp_variable_50:
    6ab4:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_51:
    6ab9:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_52:
    6abe:	44 41 59 5f 35 00    	db     "DAY_5",0x00
edna_cpp_variable_53:
    6ac4:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
edna_cpp_variable_54:
    6ad6:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_55:
    6adb:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_56:
    6ae0:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6ae1:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6ae2:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_57:
    6ae3:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_58:
    6ae8:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_59:
    6aed:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
edna_cpp_variable_60:
    6afe:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_61:
    6b03:	53 43 52 41 54 43 48 45 44 5f 54 55 43 4b 45 52 00 	db     "SCRATCHED_TUCKER",0x00
edna_cpp_variable_62:
    6b14:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_63:
    6b19:	42 41 52 42 45 52 5f 50 4f 4c 45 5f 53 54 4f 4c 45 4e 00 	db     "BARBER_POLE_STOLEN",0x00
edna_cpp_variable_64:
    6b2c:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_65:
    6b31:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6b32:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6b33:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_66:
    6b34:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_67:
    6b39:	42 4f 4c 54 5f 4f 46 5f 43 4c 4f 54 48 5f 54 41 4b 45 4e 00 	db     "BOLT_OF_CLOTH_TAKEN",0x00
edna_cpp_variable_68:
    6b4d:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_69:
    6b52:	50 43 5f 45 53 43 41 50 45 44 5f 4a 41 49 4c 00 	db     "PC_ESCAPED_JAIL",0x00
edna_cpp_variable_70:
    6b62:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_71:
    6b67:	42 55 52 4e 45 44 5f 54 56 5f 53 54 41 54 49 4f 4e 00 	db     "BURNED_TV_STATION",0x00
edna_cpp_variable_72:
    6b79:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_73:
    6b7e:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
edna_cpp_variable_74:
    6b8f:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_75:
    6b94:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_76:
    6b99:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6b9a:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6b9b:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_77:
    6b9c:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_78:
    6ba1:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
edna_cpp_variable_79:
    6ba9:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
edna_cpp_variable_80:
    6bb1:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_81:
    6bb6:	52 45 57 41 52 44 5f 4d 4f 4e 45 59 00 	db     "REWARD_MONEY",0x00
edna_cpp_variable_82:
    6bc3:	4b 5f 50 55 52 53 45 00 	db     "K_PURSE",0x00
edna_cpp_variable_83:
    6bcb:	52 41 48 00          	db     "RAH",0x00
edna_cpp_variable_84:
    6bcf:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_85:
    6bd4:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_86:
    6bd9:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_87:
    6bda:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
edna_cpp_variable_88:
    6be9:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
edna_cpp_variable_89:
    6bfa:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_90:
    6bff:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_91:
    6c04:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
edna_cpp_variable_92:
    6c15:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_93:
    6c1a:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_94:
    6c2b:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_95:
    6c30:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_96:
    6c35:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_97:
    6c46:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_98:
    6c57:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_99:
    6c5c:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_100:
    6c61:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_101:
    6c66:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6c67:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6c68:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_102:
    6c69:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_103:
    6c6e:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_104:
    6c73:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6c74:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6c75:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_105:
    6c76:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_106:
    6c7b:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_107:
    6c80:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_108:
    6c85:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6c86:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6c87:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_109:
    6c88:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_110:
    6c8d:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    6c8e:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    6c8f:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
edna_cpp_variable_111:
    6c90:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_112:
    6c95:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_113:
    6ca6:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_114:
    6cb7:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_115:
    6cbc:	53 48 45 52 49 46 46 5f 49 4e 5f 44 49 4e 45 52 00 	db     "SHERIFF_IN_DINER",0x00
edna_cpp_variable_116:
    6ccd:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_117:
    6cd2:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_118:
    6cd7:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
edna_cpp_variable_119:
    6ce6:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_120:
    6ceb:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_121:
    6cf0:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_122:
    6cf5:	45 44 4e 41 00       	db     "EDNA",0x00
edna_cpp_variable_123:
    6cfa:	4b 41 52 49 4e 5f 4b 49 44 4e 41 50 45 44 00 	db     "KARIN_KIDNAPED",0x00
edna_cpp_variable_124:
    6d09:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 44 45 41 44 00 	db     "KARIN_FOUND_DEAD",0x00
edna_cpp_variable_125:
    6d1a:	4b 41 52 49 4e 5f 46 4f 55 4e 44 5f 41 4c 49 56 45 00 	db     "KARIN_FOUND_ALIVE",0x00
edna_cpp_variable_126:
    6d2c:	45 44 4e 41 00       	db     "EDNA",0x00
    6d31:	00 00 00             	db     3 dup(0x00)                                                  ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 56 (D:\SOURCE\edna.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 56: D:\SOURCE\edna.cpp                                               -
;                                                                              -
;-------------------------------------------------------------------------------
EDNA_FITZPATRICK:                                                                                   ; access size: DWORD
   22e24:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_1:                                                                        ; access size: DWORD
   22e28:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_2:                                                                        ; access size: DWORD
   22e2c:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_3:                                                                        ; access size: DWORD
   22e30:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_4:                                                                        ; access size: DWORD
   22e34:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_5:                                                                        ; access size: DWORD
   22e38:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_6:                                                                        ; access size: DWORD
   22e3c:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_7:                                                                        ; access size: DWORD
   22e40:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_8:                                                                        ; access size: DWORD
   22e44:	00 00 00 00          	dd     0x00000000
EDNA_FITZPATRICK_variable_9:                                                                        ; access size: DWORD
   22e48:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 56 (D:\SOURCE\edna.cpp)                                       -
;                                                                              -
;-------------------------------------------------------------------------------