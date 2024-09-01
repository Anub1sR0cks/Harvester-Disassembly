;-------------------------------------------------------------------------------
;                                                                              -
;  Module 46: D:\SOURCE\wasp_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------
;  Function 'talk_to_THE_WASP_WOMAN'             -
;-------------------------------------------------
talk_to_THE_WASP_WOMAN:
   1fde0:	53                   	push   ebx
   1fde1:	51                   	push   ecx
   1fde2:	52                   	push   edx
   1fde3:	56                   	push   esi
   1fde4:	57                   	push   edi
   1fde5:	55                   	push   ebp
   1fde6:	8b 15 bc 94 02 00    	mov    edx,DWORD PTR ds:@obj3:showing_item                          ; fixup: num: 4491, src obj: 1, src ofs: 0x1fde8, dst obj: 3, dst ofs: 0x294bc
   1fdec:	85 d2                	test   edx,edx
   1fdee:	0f 84 2c 01 00 00    	je     talk_to_THE_WASP_WOMAN_branch_8
   1fdf4:	89 d0                	mov    eax,edx
   1fdf6:	ba 94 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_1                             ; fixup: num: 4490, src obj: 1, src ofs: 0x1fdf7, dst obj: 3, dst ofs: 0x5294
   1fdfb:	e8 30 66 05 00       	call   strcmp_
   1fe00:	85 c0                	test   eax,eax
   1fe02:	75 4f                	jne    talk_to_THE_WASP_WOMAN_branch_1
   1fe04:	ba 01 00 00 00       	mov    edx,0x1
   1fe09:	e8 62 85 00 00       	call   SHOWN_PHOTO_OF_WHALEY_HERRILL_AROUND
   1fe0e:	31 db                	xor    ebx,ebx
   1fe10:	ba ac 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_2                             ; fixup: num: 4489, src obj: 1, src ofs: 0x1fe11, dst obj: 3, dst ofs: 0x52ac
   1fe15:	b8 a6 4c 00 00       	mov    eax,0x4ca6
   1fe1a:	e8 71 a8 04 00       	call   play_wav
   1fe1f:	bb 01 00 00 00       	mov    ebx,0x1
   1fe24:	ba b7 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_3                             ; fixup: num: 4488, src obj: 1, src ofs: 0x1fe25, dst obj: 3, dst ofs: 0x52b7
   1fe29:	b8 ae 4c 00 00       	mov    eax,0x4cae
   1fe2e:	e8 5d a8 04 00       	call   play_wav
   1fe33:	ba c2 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_4                             ; fixup: num: 4487, src obj: 1, src ofs: 0x1fe34, dst obj: 3, dst ofs: 0x52c2
   1fe38:	b8 b2 4c 00 00       	mov    eax,0x4cb2
   1fe3d:	31 db                	xor    ebx,ebx
   1fe3f:	e8 4c a8 04 00       	call   play_wav
   1fe44:	ba c5 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_5                             ; fixup: num: 4486, src obj: 1, src ofs: 0x1fe45, dst obj: 3, dst ofs: 0x52c5
   1fe49:	b8 b6 4c 00 00       	mov    eax,0x4cb6
   1fe4e:	e9 bd 00 00 00       	jmp    talk_to_THE_WASP_WOMAN_branch_6
talk_to_THE_WASP_WOMAN_branch_1:
   1fe53:	ba d0 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_6                             ; fixup: num: 4485, src obj: 1, src ofs: 0x1fe54, dst obj: 3, dst ofs: 0x52d0
   1fe58:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4484, src obj: 1, src ofs: 0x1fe59, dst obj: 3, dst ofs: 0x294bc
   1fe5d:	e8 ce 65 05 00       	call   strcmp_
   1fe62:	85 c0                	test   eax,eax
   1fe64:	74 13                	je     talk_to_THE_WASP_WOMAN_branch_2
   1fe66:	ba dd 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_7                             ; fixup: num: 4483, src obj: 1, src ofs: 0x1fe67, dst obj: 3, dst ofs: 0x52dd
   1fe6b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4482, src obj: 1, src ofs: 0x1fe6c, dst obj: 3, dst ofs: 0x294bc
   1fe70:	e8 bb 65 05 00       	call   strcmp_
   1fe75:	85 c0                	test   eax,eax
   1fe77:	75 1d                	jne    talk_to_THE_WASP_WOMAN_branch_3
talk_to_THE_WASP_WOMAN_branch_2:
   1fe79:	ba 01 00 00 00       	mov    edx,0x1
   1fe7e:	31 c0                	xor    eax,eax
   1fe80:	e8 db 84 00 00       	call   SHOWN_PHOTO_OF_CORPSE_AROUND
   1fe85:	31 db                	xor    ebx,ebx
   1fe87:	ba ee 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_8                             ; fixup: num: 4481, src obj: 1, src ofs: 0x1fe88, dst obj: 3, dst ofs: 0x52ee
   1fe8c:	b8 bd 4c 00 00       	mov    eax,0x4cbd
   1fe91:	e9 7c 00 00 00       	jmp    talk_to_THE_WASP_WOMAN_branch_7
talk_to_THE_WASP_WOMAN_branch_3:
   1fe96:	ba f9 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_9                             ; fixup: num: 4503, src obj: 1, src ofs: 0x1fe97, dst obj: 3, dst ofs: 0x52f9
   1fe9b:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4502, src obj: 1, src ofs: 0x1fe9c, dst obj: 3, dst ofs: 0x294bc
   1fea0:	e8 8b 65 05 00       	call   strcmp_
   1fea5:	85 c0                	test   eax,eax
   1fea7:	74 39                	je     talk_to_THE_WASP_WOMAN_branch_4
   1fea9:	ba fe 52 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_10                            ; fixup: num: 4501, src obj: 1, src ofs: 0x1feaa, dst obj: 3, dst ofs: 0x52fe
   1feae:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4500, src obj: 1, src ofs: 0x1feaf, dst obj: 3, dst ofs: 0x294bc
   1feb3:	e8 78 65 05 00       	call   strcmp_
   1feb8:	85 c0                	test   eax,eax
   1feba:	74 26                	je     talk_to_THE_WASP_WOMAN_branch_4
   1febc:	ba 0d 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_11                            ; fixup: num: 4499, src obj: 1, src ofs: 0x1febd, dst obj: 3, dst ofs: 0x530d
   1fec1:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4498, src obj: 1, src ofs: 0x1fec2, dst obj: 3, dst ofs: 0x294bc
   1fec6:	e8 65 65 05 00       	call   strcmp_
   1fecb:	85 c0                	test   eax,eax
   1fecd:	74 13                	je     talk_to_THE_WASP_WOMAN_branch_4
   1fecf:	ba 17 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_12                            ; fixup: num: 4497, src obj: 1, src ofs: 0x1fed0, dst obj: 3, dst ofs: 0x5317
   1fed4:	a1 bc 94 02 00       	mov    eax,ds:@obj3:showing_item                                    ; fixup: num: 4496, src obj: 1, src ofs: 0x1fed5, dst obj: 3, dst ofs: 0x294bc
   1fed9:	e8 52 65 05 00       	call   strcmp_
   1fede:	85 c0                	test   eax,eax
   1fee0:	75 24                	jne    talk_to_THE_WASP_WOMAN_branch_5
talk_to_THE_WASP_WOMAN_branch_4:
   1fee2:	ba 01 00 00 00       	mov    edx,0x1
   1fee7:	31 c0                	xor    eax,eax
   1fee9:	e8 42 84 00 00       	call   SHOWN_EVIDENCE_OF_BLACKMAIL_AROUND
   1feee:	31 db                	xor    ebx,ebx
   1fef0:	ba 2b 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_13                            ; fixup: num: 4495, src obj: 1, src ofs: 0x1fef1, dst obj: 3, dst ofs: 0x532b
   1fef5:	b8 c3 4c 00 00       	mov    eax,0x4cc3
   1fefa:	e8 91 a7 04 00       	call   play_wav
   1feff:	31 c0                	xor    eax,eax
   1ff01:	e9 ff 03 00 00       	jmp    talk_to_THE_WASP_WOMAN_branch_31
talk_to_THE_WASP_WOMAN_branch_5:
   1ff06:	ba 36 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_14                            ; fixup: num: 4494, src obj: 1, src ofs: 0x1ff07, dst obj: 3, dst ofs: 0x5336
   1ff0b:	b8 a0 4c 00 00       	mov    eax,0x4ca0
talk_to_THE_WASP_WOMAN_branch_6:
   1ff10:	31 db                	xor    ebx,ebx
talk_to_THE_WASP_WOMAN_branch_7:
   1ff12:	e8 79 a7 04 00       	call   play_wav
   1ff17:	31 c0                	xor    eax,eax
   1ff19:	5d                   	pop    ebp
   1ff1a:	5f                   	pop    edi
   1ff1b:	5e                   	pop    esi
   1ff1c:	5a                   	pop    edx
   1ff1d:	59                   	pop    ecx
   1ff1e:	5b                   	pop    ebx
   1ff1f:	c3                   	ret    
talk_to_THE_WASP_WOMAN_branch_8:
   1ff20:	a1 48 2d 02 00       	mov    eax,ds:@obj3:THE_WASP_WOMAN                                  ; fixup: num: 4493, src obj: 1, src ofs: 0x1ff21, dst obj: 3, dst ofs: 0x22d48
   1ff25:	85 c0                	test   eax,eax
   1ff27:	0f 84 9b 00 00 00    	je     talk_to_THE_WASP_WOMAN_branch_12
   1ff2d:	bb 01 00 00 00       	mov    ebx,0x1
   1ff32:	b8 ee 4b 00 00       	mov    eax,0x4bee
   1ff37:	89 15 48 2d 02 00    	mov    DWORD PTR ds:@obj3:THE_WASP_WOMAN,edx                        ; fixup: num: 4492, src obj: 1, src ofs: 0x1ff39, dst obj: 3, dst ofs: 0x22d48
   1ff3d:	ba 41 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_15                            ; fixup: num: 4512, src obj: 1, src ofs: 0x1ff3e, dst obj: 3, dst ofs: 0x5341
   1ff42:	e8 49 a7 04 00       	call   play_wav
   1ff47:	b8 01 00 00 00       	mov    eax,0x1
   1ff4c:	31 d2                	xor    edx,edx
   1ff4e:	e8 cd 84 00 00       	call   IF_MOM_ASKED_YOU_TO_VISIT_WASP_WOMAN
   1ff53:	85 c0                	test   eax,eax
   1ff55:	74 11                	je     talk_to_THE_WASP_WOMAN_branch_9
   1ff57:	ba 4c 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_16                            ; fixup: num: 4511, src obj: 1, src ofs: 0x1ff58, dst obj: 3, dst ofs: 0x534c
   1ff5c:	b8 f2 4b 00 00       	mov    eax,0x4bf2
   1ff61:	31 db                	xor    ebx,ebx
   1ff63:	e8 28 a7 04 00       	call   play_wav
talk_to_THE_WASP_WOMAN_branch_9:
   1ff68:	ba 4f 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_17                            ; fixup: num: 4510, src obj: 1, src ofs: 0x1ff69, dst obj: 3, dst ofs: 0x534f
   1ff6d:	b8 f6 4b 00 00       	mov    eax,0x4bf6
   1ff72:	31 db                	xor    ebx,ebx
   1ff74:	e8 17 a7 04 00       	call   play_wav
   1ff79:	ba 5a 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_18                            ; fixup: num: 4509, src obj: 1, src ofs: 0x1ff7a, dst obj: 3, dst ofs: 0x535a
   1ff7e:	b8 fc 4b 00 00       	mov    eax,0x4bfc
   1ff83:	31 db                	xor    ebx,ebx
   1ff85:	e8 06 a7 04 00       	call   play_wav
   1ff8a:	ba 5d 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_19                            ; fixup: num: 4508, src obj: 1, src ofs: 0x1ff8b, dst obj: 3, dst ofs: 0x535d
   1ff8f:	b8 00 4c 00 00       	mov    eax,0x4c00
   1ff94:	31 db                	xor    ebx,ebx
   1ff96:	e8 f5 a6 04 00       	call   play_wav
   1ff9b:	b8 00 03 00 00       	mov    eax,0x300
   1ffa0:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4507, src obj: 1, src ofs: 0x1ffa1, dst obj: 3, dst ofs: 0x295c0
   1ffa5:	e8 f6 a1 00 00       	call   GetDlgFileString
   1ffaa:	89 c6                	mov    esi,eax
   1ffac:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_10:
   1ffad:	8a 06                	mov    al,BYTE PTR [esi]
   1ffaf:	88 07                	mov    BYTE PTR [edi],al
   1ffb1:	3c 00                	cmp    al,0x0
   1ffb3:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_11
   1ffb5:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ffb8:	83 c6 02             	add    esi,0x2
   1ffbb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1ffbe:	83 c7 02             	add    edi,0x2
   1ffc1:	3c 00                	cmp    al,0x0
   1ffc3:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_10
talk_to_THE_WASP_WOMAN_branch_11:
   1ffc5:	5f                   	pop    edi
   1ffc6:	eb 11                	jmp    talk_to_THE_WASP_WOMAN_branch_13
talk_to_THE_WASP_WOMAN_branch_12:
   1ffc8:	ba 68 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_20                            ; fixup: num: 4506, src obj: 1, src ofs: 0x1ffc9, dst obj: 3, dst ofs: 0x5368
   1ffcd:	b8 ee 4b 00 00       	mov    eax,0x4bee
   1ffd2:	31 db                	xor    ebx,ebx
   1ffd4:	e8 b7 a6 04 00       	call   play_wav
talk_to_THE_WASP_WOMAN_branch_13:
   1ffd9:	be 73 53 00 00       	mov    esi,@obj3:wasp_wo_cpp_variable_21                            ; fixup: num: 4505, src obj: 1, src ofs: 0x1ffda, dst obj: 3, dst ofs: 0x5373
   1ffde:	bf c0 94 02 00       	mov    edi,@obj3:keyword                                            ; fixup: num: 4504, src obj: 1, src ofs: 0x1ffdf, dst obj: 3, dst ofs: 0x294c0
   1ffe3:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_14:
   1ffe4:	8a 06                	mov    al,BYTE PTR [esi]
   1ffe6:	88 07                	mov    BYTE PTR [edi],al
   1ffe8:	3c 00                	cmp    al,0x0
   1ffea:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_15
   1ffec:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   1ffef:	83 c6 02             	add    esi,0x2
   1fff2:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   1fff5:	83 c7 02             	add    edi,0x2
   1fff8:	3c 00                	cmp    al,0x0
   1fffa:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_14
talk_to_THE_WASP_WOMAN_branch_15:
   1fffc:	5f                   	pop    edi
   1fffd:	bd 01 00 00 00       	mov    ebp,0x1
   20002:	31 c9                	xor    ecx,ecx
talk_to_THE_WASP_WOMAN_branch_16:
   20004:	b8 01 03 00 00       	mov    eax,0x301
   20009:	e8 92 a1 00 00       	call   GetDlgFileString
   2000e:	89 c2                	mov    edx,eax
   20010:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4827, src obj: 1, src ofs: 0x20011, dst obj: 3, dst ofs: 0x294c0
   20015:	e8 40 14 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   2001a:	85 c0                	test   eax,eax
   2001c:	0f 84 e3 02 00 00    	je     talk_to_THE_WASP_WOMAN_branch_31
   20022:	b8 c0 95 02 00       	mov    eax,@obj3:keystring                                          ; fixup: num: 4826, src obj: 1, src ofs: 0x20023, dst obj: 3, dst ofs: 0x295c0
   20027:	e8 14 ba 04 00       	call   show_keywords
   2002c:	b8 02 03 00 00       	mov    eax,0x302
   20031:	e8 6a a1 00 00       	call   GetDlgFileString
   20036:	89 c2                	mov    edx,eax
   20038:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4825, src obj: 1, src ofs: 0x20039, dst obj: 3, dst ofs: 0x294c0
   2003d:	e8 18 14 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   20042:	85 c0                	test   eax,eax
   20044:	0f 85 8d 00 00 00    	jne    talk_to_THE_WASP_WOMAN_branch_19
   2004a:	ba 74 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_22                            ; fixup: num: 4824, src obj: 1, src ofs: 0x2004b, dst obj: 3, dst ofs: 0x5374
   2004f:	b8 0a 4c 00 00       	mov    eax,0x4c0a
   20054:	89 cb                	mov    ebx,ecx
   20056:	e8 35 a6 04 00       	call   play_wav
   2005b:	ba 7f 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_23                            ; fixup: num: 4823, src obj: 1, src ofs: 0x2005c, dst obj: 3, dst ofs: 0x537f
   20060:	b8 13 4c 00 00       	mov    eax,0x4c13
   20065:	89 cb                	mov    ebx,ecx
   20067:	e8 24 a6 04 00       	call   play_wav
   2006c:	bb 02 00 00 00       	mov    ebx,0x2
   20071:	ba 82 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_24                            ; fixup: num: 4822, src obj: 1, src ofs: 0x20072, dst obj: 3, dst ofs: 0x5382
   20076:	b8 17 4c 00 00       	mov    eax,0x4c17
   2007b:	e8 10 a6 04 00       	call   play_wav
   20080:	e8 6b 8a 00 00       	call   HARVESTER_WASP_1
   20085:	ba 8d 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_25                            ; fixup: num: 4821, src obj: 1, src ofs: 0x20086, dst obj: 3, dst ofs: 0x538d
   2008a:	b8 25 4c 00 00       	mov    eax,0x4c25
   2008f:	89 eb                	mov    ebx,ebp
   20091:	e8 fa a5 04 00       	call   play_wav
   20096:	ba 98 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_26                            ; fixup: num: 4820, src obj: 1, src ofs: 0x20097, dst obj: 3, dst ofs: 0x5398
   2009b:	b8 29 4c 00 00       	mov    eax,0x4c29
   200a0:	89 eb                	mov    ebx,ebp
   200a2:	e8 e9 a5 04 00       	call   play_wav
   200a7:	b8 04 03 00 00       	mov    eax,0x304
   200ac:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4832, src obj: 1, src ofs: 0x200ad, dst obj: 3, dst ofs: 0x295c0
   200b1:	e8 ea a0 00 00       	call   GetDlgFileString
   200b6:	89 c6                	mov    esi,eax
   200b8:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_17:
   200b9:	8a 06                	mov    al,BYTE PTR [esi]
   200bb:	88 07                	mov    BYTE PTR [edi],al
   200bd:	3c 00                	cmp    al,0x0
   200bf:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_18
   200c1:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   200c4:	83 c6 02             	add    esi,0x2
   200c7:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   200ca:	83 c7 02             	add    edi,0x2
   200cd:	3c 00                	cmp    al,0x0
   200cf:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_17
talk_to_THE_WASP_WOMAN_branch_18:
   200d1:	5f                   	pop    edi
   200d2:	e9 2d ff ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_19:
   200d7:	b8 05 03 00 00       	mov    eax,0x305
   200dc:	e8 bf a0 00 00       	call   GetDlgFileString
   200e1:	89 c2                	mov    edx,eax
   200e3:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4831, src obj: 1, src ofs: 0x200e4, dst obj: 3, dst ofs: 0x294c0
   200e8:	e8 6d 13 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   200ed:	85 c0                	test   eax,eax
   200ef:	0f 85 95 00 00 00    	jne    talk_to_THE_WASP_WOMAN_branch_21
   200f5:	ba a3 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_27                            ; fixup: num: 4830, src obj: 1, src ofs: 0x200f6, dst obj: 3, dst ofs: 0x53a3
   200fa:	b8 31 4c 00 00       	mov    eax,0x4c31
   200ff:	89 cb                	mov    ebx,ecx
   20101:	e8 8a a5 04 00       	call   play_wav
   20106:	e8 f5 89 00 00       	call   HARVESTER_WASP_2
   2010b:	89 ca                	mov    edx,ecx
   2010d:	89 e8                	mov    eax,ebp
   2010f:	e8 0c 83 00 00       	call   IF_MOM_ASKED_YOU_TO_VISIT_WASP_WOMAN
   20114:	85 c0                	test   eax,eax
   20116:	0f 84 e8 fe ff ff    	je     talk_to_THE_WASP_WOMAN_branch_16
   2011c:	b8 07 03 00 00       	mov    eax,0x307
   20121:	e8 7a a0 00 00       	call   GetDlgFileString
   20126:	e8 e5 ad 04 00       	call   get_response
   2012b:	83 f8 01             	cmp    eax,0x1
   2012e:	75 3b                	jne    talk_to_THE_WASP_WOMAN_branch_20
   20130:	ba ae 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_28                            ; fixup: num: 4829, src obj: 1, src ofs: 0x20131, dst obj: 3, dst ofs: 0x53ae
   20135:	b8 4d 4c 00 00       	mov    eax,0x4c4d
   2013a:	89 eb                	mov    ebx,ebp
   2013c:	e8 4f a5 04 00       	call   play_wav
   20141:	ba b9 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_29                            ; fixup: num: 4828, src obj: 1, src ofs: 0x20142, dst obj: 3, dst ofs: 0x53b9
   20146:	b8 53 4c 00 00       	mov    eax,0x4c53
   2014b:	89 eb                	mov    ebx,ebp
   2014d:	e8 3e a5 04 00       	call   play_wav
   20152:	bb 02 00 00 00       	mov    ebx,0x2
   20157:	ba c4 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_30                            ; fixup: num: 4839, src obj: 1, src ofs: 0x20158, dst obj: 3, dst ofs: 0x53c4
   2015c:	b8 57 4c 00 00       	mov    eax,0x4c57
   20161:	e8 2a a5 04 00       	call   play_wav
   20166:	e9 99 fe ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_20:
   2016b:	83 f8 02             	cmp    eax,0x2
   2016e:	0f 85 90 fe ff ff    	jne    talk_to_THE_WASP_WOMAN_branch_16
   20174:	ba cf 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_31                            ; fixup: num: 4838, src obj: 1, src ofs: 0x20175, dst obj: 3, dst ofs: 0x53cf
   20179:	89 c3                	mov    ebx,eax
   2017b:	b8 5e 4c 00 00       	mov    eax,0x4c5e
   20180:	e8 0b a5 04 00       	call   play_wav
   20185:	e9 7a fe ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_21:
   2018a:	b8 08 03 00 00       	mov    eax,0x308
   2018f:	e8 0c a0 00 00       	call   GetDlgFileString
   20194:	89 c2                	mov    edx,eax
   20196:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4837, src obj: 1, src ofs: 0x20197, dst obj: 3, dst ofs: 0x294c0
   2019b:	e8 ba 12 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   201a0:	85 c0                	test   eax,eax
   201a2:	75 41                	jne    talk_to_THE_WASP_WOMAN_branch_24
   201a4:	ba da 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_32                            ; fixup: num: 4836, src obj: 1, src ofs: 0x201a5, dst obj: 3, dst ofs: 0x53da
   201a9:	b8 67 4c 00 00       	mov    eax,0x4c67
   201ae:	89 cb                	mov    ebx,ecx
   201b0:	e8 db a4 04 00       	call   play_wav
   201b5:	b8 09 03 00 00       	mov    eax,0x309
   201ba:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4835, src obj: 1, src ofs: 0x201bb, dst obj: 3, dst ofs: 0x295c0
   201bf:	e8 dc 9f 00 00       	call   GetDlgFileString
   201c4:	89 c6                	mov    esi,eax
   201c6:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_22:
   201c7:	8a 06                	mov    al,BYTE PTR [esi]
   201c9:	88 07                	mov    BYTE PTR [edi],al
   201cb:	3c 00                	cmp    al,0x0
   201cd:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_23
   201cf:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   201d2:	83 c6 02             	add    esi,0x2
   201d5:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   201d8:	83 c7 02             	add    edi,0x2
   201db:	3c 00                	cmp    al,0x0
   201dd:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_22
talk_to_THE_WASP_WOMAN_branch_23:
   201df:	5f                   	pop    edi
   201e0:	e9 1f fe ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_24:
   201e5:	b8 0a 03 00 00       	mov    eax,0x30a
   201ea:	e8 b1 9f 00 00       	call   GetDlgFileString
   201ef:	89 c2                	mov    edx,eax
   201f1:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4834, src obj: 1, src ofs: 0x201f2, dst obj: 3, dst ofs: 0x294c0
   201f6:	e8 5f 12 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   201fb:	85 c0                	test   eax,eax
   201fd:	75 52                	jne    talk_to_THE_WASP_WOMAN_branch_27
   201ff:	ba e5 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_33                            ; fixup: num: 4833, src obj: 1, src ofs: 0x20200, dst obj: 3, dst ofs: 0x53e5
   20204:	b8 74 4c 00 00       	mov    eax,0x4c74
   20209:	89 eb                	mov    ebx,ebp
   2020b:	e8 80 a4 04 00       	call   play_wav
   20210:	ba f0 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_34                            ; fixup: num: 4846, src obj: 1, src ofs: 0x20211, dst obj: 3, dst ofs: 0x53f0
   20215:	b8 7f 4c 00 00       	mov    eax,0x4c7f
   2021a:	89 eb                	mov    ebx,ebp
   2021c:	e8 6f a4 04 00       	call   play_wav
   20221:	b8 0b 03 00 00       	mov    eax,0x30b
   20226:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4845, src obj: 1, src ofs: 0x20227, dst obj: 3, dst ofs: 0x295c0
   2022b:	e8 70 9f 00 00       	call   GetDlgFileString
   20230:	89 c6                	mov    esi,eax
   20232:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_25:
   20233:	8a 06                	mov    al,BYTE PTR [esi]
   20235:	88 07                	mov    BYTE PTR [edi],al
   20237:	3c 00                	cmp    al,0x0
   20239:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_26
   2023b:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   2023e:	83 c6 02             	add    esi,0x2
   20241:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   20244:	83 c7 02             	add    edi,0x2
   20247:	3c 00                	cmp    al,0x0
   20249:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_25
talk_to_THE_WASP_WOMAN_branch_26:
   2024b:	5f                   	pop    edi
   2024c:	e9 b3 fd ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_27:
   20251:	b8 0c 03 00 00       	mov    eax,0x30c
   20256:	e8 45 9f 00 00       	call   GetDlgFileString
   2025b:	89 c2                	mov    edx,eax
   2025d:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4844, src obj: 1, src ofs: 0x2025e, dst obj: 3, dst ofs: 0x294c0
   20262:	e8 f3 11 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   20267:	85 c0                	test   eax,eax
   20269:	75 66                	jne    talk_to_THE_WASP_WOMAN_branch_30
   2026b:	ba fb 53 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_35                            ; fixup: num: 4843, src obj: 1, src ofs: 0x2026c, dst obj: 3, dst ofs: 0x53fb
   20270:	b8 85 4c 00 00       	mov    eax,0x4c85
   20275:	89 cb                	mov    ebx,ecx
   20277:	e8 14 a4 04 00       	call   play_wav
   2027c:	ba 06 54 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_36                            ; fixup: num: 4842, src obj: 1, src ofs: 0x2027d, dst obj: 3, dst ofs: 0x5406
   20281:	b8 8b 4c 00 00       	mov    eax,0x4c8b
   20286:	89 eb                	mov    ebx,ebp
   20288:	e8 03 a4 04 00       	call   play_wav
   2028d:	bb 02 00 00 00       	mov    ebx,0x2
   20292:	ba 11 54 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_37                            ; fixup: num: 4841, src obj: 1, src ofs: 0x20293, dst obj: 3, dst ofs: 0x5411
   20297:	b8 8f 4c 00 00       	mov    eax,0x4c8f
   2029c:	e8 ef a3 04 00       	call   play_wav
   202a1:	b8 0d 03 00 00       	mov    eax,0x30d
   202a6:	bf c0 95 02 00       	mov    edi,@obj3:keystring                                          ; fixup: num: 4840, src obj: 1, src ofs: 0x202a7, dst obj: 3, dst ofs: 0x295c0
   202ab:	e8 f0 9e 00 00       	call   GetDlgFileString
   202b0:	89 c6                	mov    esi,eax
   202b2:	57                   	push   edi
talk_to_THE_WASP_WOMAN_branch_28:
   202b3:	8a 06                	mov    al,BYTE PTR [esi]
   202b5:	88 07                	mov    BYTE PTR [edi],al
   202b7:	3c 00                	cmp    al,0x0
   202b9:	74 10                	je     talk_to_THE_WASP_WOMAN_branch_29
   202bb:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
   202be:	83 c6 02             	add    esi,0x2
   202c1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
   202c4:	83 c7 02             	add    edi,0x2
   202c7:	3c 00                	cmp    al,0x0
   202c9:	75 e8                	jne    talk_to_THE_WASP_WOMAN_branch_28
talk_to_THE_WASP_WOMAN_branch_29:
   202cb:	5f                   	pop    edi
   202cc:	e9 33 fd ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_30:
   202d1:	b8 0e 03 00 00       	mov    eax,0x30e
   202d6:	e8 c5 9e 00 00       	call   GetDlgFileString
   202db:	89 c2                	mov    edx,eax
   202dd:	b8 c0 94 02 00       	mov    eax,@obj3:keyword                                            ; fixup: num: 4852, src obj: 1, src ofs: 0x202de, dst obj: 3, dst ofs: 0x294c0
   202e2:	e8 73 11 05 00       	call   stricmp_                                                     ; aliases: stricmp_, _stricmp_, strcmpi_
   202e7:	85 c0                	test   eax,eax
   202e9:	0f 84 15 fd ff ff    	je     talk_to_THE_WASP_WOMAN_branch_16
   202ef:	ba 1c 54 00 00       	mov    edx,@obj3:wasp_wo_cpp_variable_38                            ; fixup: num: 4851, src obj: 1, src ofs: 0x202f0, dst obj: 3, dst ofs: 0x541c
   202f4:	b8 9a 4c 00 00       	mov    eax,0x4c9a
   202f9:	89 cb                	mov    ebx,ecx
   202fb:	e8 90 a3 04 00       	call   play_wav
   20300:	e9 ff fc ff ff       	jmp    talk_to_THE_WASP_WOMAN_branch_16
talk_to_THE_WASP_WOMAN_branch_31:
   20305:	5d                   	pop    ebp
   20306:	5f                   	pop    edi
   20307:	5e                   	pop    esi
   20308:	5a                   	pop    edx
   20309:	59                   	pop    ecx
   2030a:	5b                   	pop    ebx
   2030b:	c3                   	ret    
talk_to_THE_WASP_WOMAN_branch_32:
   2030c:	89 15 48 2d 02 00    	mov    DWORD PTR ds:@obj3:THE_WASP_WOMAN,edx                        ; fixup: num: 4850, src obj: 1, src ofs: 0x2030e, dst obj: 3, dst ofs: 0x22d48
   20312:	a1 48 2d 02 00       	mov    eax,ds:@obj3:THE_WASP_WOMAN                                  ; fixup: num: 4849, src obj: 1, src ofs: 0x20313, dst obj: 3, dst ofs: 0x22d48
   20317:	c3                   	ret    
   20318:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]
   2031e:	8b d2                	mov    edx,edx

;-------------------------------------------------
;  Function 'THE_WASP_WOMAN_FIRST_CONVERSATION'  -
;-------------------------------------------------
THE_WASP_WOMAN_FIRST_CONVERSATION:
   20320:	85 c0                	test   eax,eax
   20322:	74 e8                	je     talk_to_THE_WASP_WOMAN_branch_32
   20324:	a1 48 2d 02 00       	mov    eax,ds:@obj3:THE_WASP_WOMAN                                  ; fixup: num: 4848, src obj: 1, src ofs: 0x20325, dst obj: 3, dst ofs: 0x22d48
   20329:	c3                   	ret    
   2032a:	8d 80 00 00 00 00    	lea    eax,[eax+0x0]

;-------------------------------------------------
;  Function 'THE_WASP_WOMAN_initialize'          -
;-------------------------------------------------
THE_WASP_WOMAN_initialize:
   20330:	c7 05 48 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:@obj3:THE_WASP_WOMAN,0x1               ; fixup: num: 4847, src obj: 1, src ofs: 0x20332, dst obj: 3, dst ofs: 0x22d48
   2033a:	c3                   	ret    
;-------------------------------------------------
;  Bad code 41 (zero after ret):                 -
;-------------------------------------------------
;  20330:	c7 05 48 2d 02 00 01 00 00 00 	mov    DWORD PTR ds:0x22d48,0x1
;  2033a:	c3                   	ret    
;  2033b:	00 00                	add    BYTE PTR [eax],al
;  2033d:	00 00                	add    BYTE PTR [eax],al
;-------------------------------------------------
;  Padding data (5 bytes):                       -
;-------------------------------------------------
   2033b:	00 00 00 00 00       	db     5 dup(0x00)
;-------------------------------------------------
;  End of bad code 41                            -
;-------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 46 (D:\SOURCE\wasp_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 46: D:\SOURCE\wasp_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
wasp_wo_cpp_variable_1:
    5294:	50 48 4f 54 4f 5f 4f 46 5f 57 48 41 4c 45 59 5f 48 45 52 52 49 4c 4c 00 	db     "PHOTO_OF_WHALEY_HERRILL",0x00
wasp_wo_cpp_variable_2:
    52ac:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_3:
    52b7:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_4:
    52c2:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    52c3:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    52c4:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
wasp_wo_cpp_variable_5:
    52c5:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_6:
    52d0:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 00 	db     "CASKET_PHOTO",0x00
wasp_wo_cpp_variable_7:
    52dd:	43 41 53 4b 45 54 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CASKET_PHOTOCOPY",0x00
wasp_wo_cpp_variable_8:
    52ee:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_9:
    52f9:	4e 4f 54 45 00       	db     "NOTE",0x00
wasp_wo_cpp_variable_10:
    52fe:	4e 4f 54 45 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "NOTE_PHOTOCOPY",0x00
wasp_wo_cpp_variable_11:
    530d:	43 48 45 43 4b 42 4f 4f 4b 00 	db     "CHECKBOOK",0x00
wasp_wo_cpp_variable_12:
    5317:	43 48 45 43 4b 42 4f 4f 4b 5f 50 48 4f 54 4f 43 4f 50 59 00 	db     "CHECKBOOK_PHOTOCOPY",0x00
wasp_wo_cpp_variable_13:
    532b:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_14:
    5336:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_15:
    5341:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_16:
    534c:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    534d:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    534e:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
wasp_wo_cpp_variable_17:
    534f:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_18:
    535a:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    535b:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    535c:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
wasp_wo_cpp_variable_19:
    535d:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_20:
    5368:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_21:
    5373:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
wasp_wo_cpp_variable_22:
    5374:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_23:
    537f:	50                   	db     0x50                                                         ; dec:  80, chr: 'P'
    5380:	43                   	db     0x43                                                         ; dec:  67, chr: 'C'
    5381:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'
wasp_wo_cpp_variable_24:
    5382:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_25:
    538d:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_26:
    5398:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_27:
    53a3:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_28:
    53ae:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_29:
    53b9:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_30:
    53c4:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_31:
    53cf:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_32:
    53da:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_33:
    53e5:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_34:
    53f0:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_35:
    53fb:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_36:
    5406:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_37:
    5411:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
wasp_wo_cpp_variable_38:
    541c:	57 41 53 50 5f 57 4f 4d 41 4e 00 	db     "WASP_WOMAN",0x00
    5427:	00                   	db     0x00                                                         ; dec:   0, chr: '\0'

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 46 (D:\SOURCE\wasp_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;                                                                              -
;  Module 46: D:\SOURCE\wasp_wo.cpp                                            -
;                                                                              -
;-------------------------------------------------------------------------------
THE_WASP_WOMAN:                                                                                     ; access size: DWORD
   22d48:	00 00 00 00          	dd     0x00000000

;-------------------------------------------------------------------------------
;                                                                              -
;  End of module 46 (D:\SOURCE\wasp_wo.cpp)                                    -
;                                                                              -
;-------------------------------------------------------------------------------